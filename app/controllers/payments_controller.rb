# Pricing page and Cashfree checkout for the paid plans (Plan::PLANS: 3 months, 6 months, 1 year).
# Flow: the pricing page asks for a phone number → #create makes a Cashfree order → Cashfree's checkout page
# → Cashfree sends the learner back to #finish and also calls #webhook. Both ask Cashfree for the order's
# real status before giving access, so a faked return link cannot unlock anything.
class PaymentsController < ApplicationController
  before_action :authenticate_user!, only: %i[create finish]
  skip_forgery_protection only: :webhook

  def pricing
    @plans = Plan::PLANS
    @payments = user_signed_in? ? current_user.payments.order(created_at: :desc).limit(10) : []
  end

  def create
    plan = Plan.find(params[:plan])
    return render json: { error: "Choose a plan." }, status: :unprocessable_entity unless plan
    phone = params[:phone].to_s.gsub(/[\s-]/, "").sub(/\A(\+91|0)/, "")
    return render json: { error: "Enter a 10-digit mobile number." }, status: :unprocessable_entity unless phone.match?(/\A[6-9]\d{9}\z/)
    unless Cashfree.enabled?
      return render json: { error: "Payments aren't switched on yet. Please try again later." }, status: :service_unavailable
    end

    payment = current_user.payments.create!(order_id: Payment.new_order_id, plan: plan.key, amount: plan.price, phone: phone)
    order = Cashfree.new.create_order(
      order_id: payment.order_id, amount: plan.price, customer_id: "user_#{current_user.id}",
      email: current_user.email, phone: phone, note: "CoffeeBean AI #{plan.name}",
      return_url: payments_return_url(order_id: payment.order_id), notify_url: payments_webhook_url
    )
    payment.update!(cf_order_id: order["cf_order_id"].to_s.presence)
    render json: { payment_session_id: order.fetch("payment_session_id"), order_id: payment.order_id }
  rescue Cashfree::Error, KeyError => e
    payment&.update(status: "FAILED")
    render json: { error: "Couldn't start the payment: #{e.message}" }, status: :bad_gateway
  end

  # Cashfree sends the learner here after checkout.
  def finish
    payment = current_user.payments.find_by(order_id: params[:order_id].to_s)
    return redirect_to(pricing_path, alert: "We couldn't find that payment.") unless payment
    return redirect_to(dashboard_path, notice: paid_notice) if payment.paid?

    case confirm(payment)
    when :paid then redirect_to dashboard_path, notice: paid_notice
    when :failed then redirect_to pricing_path, alert: "The payment did not go through. You have not been charged for this order. Please try again."
    else redirect_to pricing_path, alert: "Your payment is not finished yet. If money left your account, access will start within a few minutes. If not, please write to #{COMPANY[:email]}."
    end
  rescue Cashfree::Error
    redirect_to pricing_path, alert: "We couldn't check your payment just now. Please refresh in a minute."
  end

  # Server-to-server message from Cashfree. Checked with its signature, then confirmed with Cashfree.
  def webhook
    raw = request.raw_post
    unless Cashfree.valid_webhook?(raw, request.headers["x-webhook-timestamp"], request.headers["x-webhook-signature"])
      return head :unauthorized
    end
    order_id = (JSON.parse(raw).dig("data", "order", "order_id") rescue nil)
    payment = Payment.find_by(order_id: order_id.to_s)
    confirm(payment) if payment && !payment.paid?
    head :ok
  rescue Cashfree::Error
    head :service_unavailable   # Cashfree retries later
  end

  private

  # Asks Cashfree for the order and gives access only if it is PAID for the right amount.
  def confirm(payment)
    order = Cashfree.new.fetch_order(payment.order_id)
    status = order["order_status"].to_s
    if status == "PAID" && order["order_amount"].to_f == payment.amount.to_f && order["order_currency"].to_s.upcase == payment.currency
      payment.fulfil!(cf_order_id: order["cf_order_id"].to_s.presence)
      :paid
    elsif %w[EXPIRED TERMINATED].include?(status)
      payment.update!(status: "FAILED")
      :failed
    else
      :pending
    end
  end

  def paid_notice
    "Payment received. Thank you! Your plan is active until #{current_user.reload.access_until.strftime('%-d %B %Y')}."
  end
end

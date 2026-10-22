# Pricing page and PayU checkout for the paid plans (Plan::PLANS: 3 months, 6 months, 1 year).
# Flow: the pricing page asks for a phone number → #create makes a PENDING payment and signs the PayU form →
# the browser posts it to PayU's payment page → PayU posts the result to #payu_return (and to #webhook) →
# we ask PayU's verify API for the real status before giving access, so a faked result cannot unlock anything.
class PaymentsController < ApplicationController
  before_action :authenticate_user!, only: %i[create finish]
  # PayU posts back from its own site: there is no CSRF token, and the login cookie is not sent on a
  # cross-site POST. These actions only read the order number and confirm it with PayU's API.
  skip_forgery_protection only: %i[payu_return webhook]

  FAILED = %w[failure failed usercancelled user_cancelled cancelled dropped bounced].freeze

  def pricing
    @plans = Plan::PLANS
    @payments = user_signed_in? ? current_user.payments.order(created_at: :desc).limit(10) : []
  end

  # Returns the PayU payment page address and the signed form fields; the browser posts them there.
  def create
    plan = Plan.find(params[:plan])
    return render json: { error: "Choose a plan." }, status: :unprocessable_entity unless plan
    phone = params[:phone].to_s.gsub(/[\s-]/, "").sub(/\A(\+91|0)/, "")
    return render json: { error: "Enter a 10-digit mobile number." }, status: :unprocessable_entity unless phone.match?(/\A[6-9]\d{9}\z/)
    unless Payu.enabled?
      return render json: { error: "Payments aren't switched on yet. Please try again later." }, status: :service_unavailable
    end

    payment = current_user.payments.create!(order_id: Payment.new_order_id, plan: plan.key, amount: plan.price, phone: phone)
    fields = Payu.checkout_fields(
      txnid: payment.order_id, amount: plan.price, productinfo: "CoffeeBean AI #{plan.name}",
      firstname: current_user.email.split("@").first, email: current_user.email, phone: phone,
      surl: payments_payu_return_url, furl: payments_payu_return_url, udf1: "user_#{current_user.id}"
    )
    render json: { action: Payu.payment_url, fields: fields, order_id: payment.order_id }
  end

  # PayU posts here after the payment page (success or failure). The answer is checked with PayU, then the
  # learner goes to #finish, a normal page where they are signed in again.
  def payu_return
    payment = Payment.find_by(order_id: params[:txnid].to_s)
    return redirect_to(pricing_path, alert: "We couldn't find that payment.") unless payment
    confirm(payment) if Payu.valid_response?(params.permit!) && !payment.paid?
    redirect_to payments_return_path(order_id: payment.order_id)
  rescue Payu::Error
    redirect_to payments_return_path(order_id: payment.order_id)
  end

  def finish
    payment = current_user.payments.find_by(order_id: params[:order_id].to_s)
    return redirect_to(pricing_path, alert: "We couldn't find that payment.") unless payment
    return redirect_to(dashboard_path, notice: paid_notice) if payment.paid?
    return redirect_to(pricing_path, alert: failed_alert) if payment.status == "FAILED"

    case confirm(payment)
    when :paid then redirect_to dashboard_path, notice: paid_notice
    when :failed then redirect_to pricing_path, alert: failed_alert
    else redirect_to pricing_path, alert: "Your payment is not finished yet. If money left your account, access will start within a few minutes. If not, please write to #{COMPANY[:email]}."
    end
  rescue Payu::Error
    redirect_to pricing_path, alert: "We couldn't check your payment just now. Please refresh in a minute."
  end

  # Server-to-server message from PayU (set in PayU › Developer › Webhooks). Checked with its hash, then confirmed with PayU.
  def webhook
    return head :unauthorized unless Payu.valid_response?(params.permit!)
    payment = Payment.find_by(order_id: params[:txnid].to_s)
    confirm(payment) if payment && !payment.paid?
    head :ok
  rescue Payu::Error
    head :service_unavailable   # PayU retries later
  end

  private

  # Asks PayU for the transaction and gives access only if it succeeded for the right amount.
  def confirm(payment)
    result = Payu.new.verify(payment.order_id)
    if result[:status] == "success" && result[:amount] == payment.amount.to_f
      payment.fulfil!(gateway_payment_id: result[:mihpayid])
      :paid
    elsif FAILED.include?(result[:status])
      payment.update!(status: "FAILED")
      :failed
    else
      :pending
    end
  end

  def failed_alert = "The payment did not go through. You have not been charged for this order. Please try again."

  def paid_notice
    "Payment received. Thank you! Your plan is active until #{current_user.reload.access_until.strftime('%-d %B %Y')}."
  end
end

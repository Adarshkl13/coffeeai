require "test_helper"

# The paid plan: the paywall, Cashfree checkout, the return page and the webhook. Cashfree is replaced by a fake.
class PaymentsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # Stands in for Cashfree: remembers orders and answers fetch_order with whatever status a test sets.
  class FakeCashfree
    attr_reader :created
    attr_accessor :status, :amount

    def initialize = (@created = []; @status = "ACTIVE"; @amount = nil)

    def create_order(**args)
      @created << args
      { "payment_session_id" => "session_#{args[:order_id]}", "cf_order_id" => 555 }
    end

    def fetch_order(order_id)
      p = Payment.find_by!(order_id: order_id)
      { "order_id" => order_id, "order_status" => status, "order_amount" => amount || p.amount, "order_currency" => "INR", "cf_order_id" => 555 }
    end
  end

  setup do
    @user = users(:two)
    @course = Course.create!(title: "Paid Course", slug: "paid-course", published: true, position: 98,
                             color: "#123456", icon: "📘", description: "A course for paywall tests.")
    @first = @course.course_lessons.create!(title: "First", position: 1, description: "d")
    @second = @course.course_lessons.create!(title: "Second", position: 2, description: "d")
    @fake = FakeCashfree.new
    @originals = { new: Cashfree.method(:new), enabled: Cashfree.method(:enabled?), secret: Cashfree.method(:secret_key) }
    fake = @fake
    Cashfree.define_singleton_method(:new) { |*| fake }
    Cashfree.define_singleton_method(:enabled?) { true }
    Cashfree.define_singleton_method(:secret_key) { "test_secret" }
  end

  teardown do
    Cashfree.define_singleton_method(:new, @originals[:new])
    Cashfree.define_singleton_method(:enabled?, @originals[:enabled])
    Cashfree.define_singleton_method(:secret_key, @originals[:secret])
  end

  def unlock_second_lesson
    CourseProgress.create!(user: @user, course_lesson: @first, status: :completed, completed_at: Time.current)
  end

  def buy(phone: "9876543210", plan: "3m")
    post payments_path, params: { phone: phone, plan: plan }, as: :json
    Payment.find_by(order_id: response.parsed_body["order_id"])
  end

  test "the pricing page shows three plans and no free plan" do
    get pricing_path
    assert_response :success
    assert_equal ["₹1,999", "₹3,499", "₹5,000"], css_select(".price-amount span").map(&:text)
    assert_select ".price-card h2", text: "Free", count: 0
    assert_select ".price-card a[href=?]", new_user_registration_path, 3
    sign_in @user
    get pricing_path
    assert_select "[data-controller=checkout] input[type=tel]"
    assert_select "button[data-plan]", 3
  end

  test "without a plan only the first lesson opens; the Editor needs no plan" do
    sign_in @user
    unlock_second_lesson
    get course_lesson_path(course_slug: @course.slug, id: @first.id)   # lesson 1 is free
    assert_response :success
    get lesson_path(1)
    assert_response :success
    get lesson_path(2)
    assert_redirected_to pricing_path
    get editor_path                     # the Editor does not need a plan
    assert_response :success
    get course_lesson_path(course_slug: @course.slug, id: @second.id)
    assert_redirected_to pricing_path

    @user.update!(access_until: 2.days.from_now)
    get course_lesson_path(course_slug: @course.slug, id: @second.id)
    assert_response :success

    @user.update!(access_until: 1.day.ago)   # plan ended
    get course_lesson_path(course_slug: @course.slug, id: @second.id)
    assert_redirected_to pricing_path
  end

  test "course page without a plan: lesson 1 open, the rest and the podcast locked" do
    sign_in @user
    get course_path(@course)
    assert_select ".lesson-row", minimum: 2
    assert_select ".lesson-row:not(.locked) .lr-btn", 1
    assert_select ".lesson-row.locked a.lr-unlock[href=?]", pricing_path
    assert_select ".plan-hint a[href=?]", pricing_path
    assert_select ".lesson-row.locked .lr-title .pro-blur", minimum: 1
    assert_select ".lesson-row:not(.locked) .pro-blur", 0
    assert_not_includes response.body, ">#{@second.title}<"   # the real title is not in the page

    @user.update!(access_until: 2.days.from_now)
    get course_path(@course)
    assert_select "a.lr-unlock", 0
    assert_select ".pro-blur", 0
    assert_select ".plan-hint", 0
  end

  test "AI lab tools need the plan" do
    sign_in @user
    post prompt_lab_try_path, params: { prompt: "Hi" }, as: :json
    assert_response :payment_required
  end

  test "checkout creates a Cashfree order and access starts only when Cashfree says PAID" do
    sign_in @user
    payment = buy(phone: "+91 98765-43210")
    assert_response :success
    assert_equal "session_#{payment.order_id}", response.parsed_body["payment_session_id"]
    assert_equal ["9876543210", 1999, "user_#{@user.id}"], @fake.created.last.values_at(:phone, :amount, :customer_id)
    assert_match %r{/payments/return\?order_id=#{payment.order_id}\z}, @fake.created.last[:return_url]
    assert_equal "PENDING", payment.status

    # Coming back before paying (or with a faked link) does not unlock anything.
    get payments_return_path(order_id: payment.order_id)
    assert_redirected_to pricing_path
    assert_not @user.reload.member?

    @fake.status = "PAID"
    travel_to Time.zone.local(2026, 10, 4, 12) do
      get payments_return_path(order_id: payment.order_id)
      assert_redirected_to dashboard_path
      assert @user.reload.member?
      assert_equal Time.zone.local(2027, 1, 4, 12), @user.access_until   # 3 months
      assert_equal "PAID", payment.reload.status

      # Visiting the return page again does not add more months.
      get payments_return_path(order_id: payment.order_id)
      assert_equal Time.zone.local(2027, 1, 4, 12), @user.reload.access_until

      # Buying a year adds 12 months to the end of the current plan, at the yearly price.
      second = buy(plan: "12m")
      assert_equal 5000, second.amount
      get payments_return_path(order_id: second.order_id)
      assert_equal Time.zone.local(2028, 1, 4, 12), @user.reload.access_until
    end
  end

  test "a wrong amount or a failed order never gives access" do
    sign_in @user
    payment = buy
    @fake.status = "PAID"
    @fake.amount = 1
    get payments_return_path(order_id: payment.order_id)
    assert_not @user.reload.member?

    @fake.status = "EXPIRED"
    @fake.amount = nil
    get payments_return_path(order_id: payment.order_id)
    assert_equal "FAILED", payment.reload.status
    assert_not @user.reload.member?
  end

  test "checkout checks the phone number and other people's orders" do
    sign_in @user
    post payments_path, params: { phone: "12345", plan: "6m" }, as: :json
    assert_response :unprocessable_entity
    post payments_path, params: { phone: "9876543210", plan: "free" }, as: :json
    assert_response :unprocessable_entity
    other = users(:one).payments.create!(order_id: "CBOTHER1", plan: "6m", amount: 3499)
    @fake.status = "PAID"
    get payments_return_path(order_id: other.order_id)
    assert_redirected_to pricing_path
    assert_not users(:one).reload.member?
  end

  test "the webhook needs a valid signature, then confirms with Cashfree" do
    payment = @user.payments.create!(order_id: "CBHOOK1", plan: "6m", amount: 3499)
    body = { type: "PAYMENT_SUCCESS_WEBHOOK", data: { order: { order_id: payment.order_id } } }.to_json
    ts = Time.current.to_i.to_s
    good = Base64.strict_encode64(OpenSSL::HMAC.digest("SHA256", "test_secret", "#{ts}#{body}"))
    headers = { "CONTENT_TYPE" => "application/json", "x-webhook-timestamp" => ts }

    post payments_webhook_path, params: body, headers: headers.merge("x-webhook-signature" => "bad")
    assert_response :unauthorized

    @fake.status = "PAID"
    post payments_webhook_path, params: body, headers: headers.merge("x-webhook-signature" => good)
    assert_response :ok
    assert payment.reload.paid?
    assert @user.reload.member?
    assert_in_delta 6.months.from_now, @user.access_until, 5
  end
end

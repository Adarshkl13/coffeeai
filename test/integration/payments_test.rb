require "test_helper"

# The paid plan: the paywall, PayU checkout, the PayU return, the return page and the webhook. PayU is replaced by a fake.
class PaymentsTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # Stands in for PayU's verify_payment API: answers with whatever status and amount a test sets.
  class FakePayu
    attr_accessor :status, :amount
    attr_reader :checked

    def initialize = (@status = "pending"; @amount = nil; @checked = [])

    def verify(txnid)
      @checked << txnid
      p = Payment.find_by!(order_id: txnid)
      { status: status, amount: (amount || p.amount).to_f, mihpayid: "403993715#{p.id}" }
    end
  end

  KEY, SALT = "testkey", "testsalt"

  setup do
    @user = users(:two)
    @course = Course.create!(title: "Paid Course", slug: "paid-course", published: true, position: 98,
                             color: "#123456", icon: "📘", description: "A course for paywall tests.")
    @first = @course.course_lessons.create!(title: "First", position: 1, description: "d")
    @second = @course.course_lessons.create!(title: "Second", position: 2, description: "d")
    @fake = FakePayu.new
    @originals = %i[new key salt mode].to_h { |m| [m, Payu.method(m)] }
    fake = @fake
    Payu.define_singleton_method(:new) { |*| fake }
    Payu.define_singleton_method(:key) { KEY }
    Payu.define_singleton_method(:salt) { SALT }
    Payu.define_singleton_method(:mode) { "test" }
  end

  teardown do
    @originals.each { |m, orig| Payu.define_singleton_method(m, orig) }
  end

  # What PayU posts back, with a correct (or a given) reverse hash.
  def payu_post(payment, status:, amount: nil, hash: nil)
    amount = Payu.format_amount(amount || payment.amount)
    p = { key: KEY, txnid: payment.order_id, amount: amount, productinfo: "CoffeeBean AI plan", firstname: "two",
          email: @user.email, udf1: "user_#{@user.id}", status: status, mihpayid: "403993715" }
    p[:hash] = hash || Payu.sha512(SALT, status, "", "", "", "", "", "", "", "", "", p[:udf1], p[:email], p[:firstname],
                                   p[:productinfo], amount, p[:txnid], KEY)
    p
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

  test "without a plan only the first lesson (Module 1 in Beginner AI) opens; the Editor needs no plan" do
    sign_in @user
    unlock_second_lesson
    get course_lesson_path(course_slug: @course.slug, id: @first.id)   # lesson 1 is free
    assert_response :success
    get lesson_path(1)
    assert_response :success
    # Beginner AI with Python: all of Module 1 (lessons 1 to 5) is free, Module 2 needs a plan
    (1..5).each { |id| LessonProgress.find_or_initialize_by(user: @user, lesson_id: id).update!(status: :completed, completed_at: Time.current) }
    get lesson_path(5)
    assert_response :success
    assert_select ".lesson-link.locked", LessonsController::LESSONS.count { |l| l[:module_id] > 1 }
    get lesson_path(6)
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

  test "with a plan every lesson opens in any order; without a plan they open one after another" do
    sign_in @user
    @third = @course.course_lessons.create!(title: "Third", position: 3, description: "d")
    @user.update!(access_until: 1.month.from_now)
    get course_lesson_path(course_slug: @course.slug, id: @third.id)   # nothing finished yet
    assert_response :success
    assert_select ".lesson-link.locked", 0
    get lesson_path(4)                                               # Beginner AI, lesson 1.4, lessons 1-3 not done
    assert_response :success
    get lesson_path(12)                                              # a Module 3 lesson
    assert_response :success
    assert_not CourseProgress.exists?(user: @user, course_lesson: @third, status: :completed), "opening is not finishing"

    @user.update!(access_until: nil)                                 # no plan: Module 1 still opens in order
    get lesson_path(3)
    assert_redirected_to lesson_path(1)
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

  test "checkout signs a PayU form and access starts only when PayU says success" do
    sign_in @user
    payment = buy(phone: "+91 98765-43210")
    assert_response :success
    body = response.parsed_body
    assert_equal "https://test.payu.in/_payment", body["action"]
    f = body["fields"]
    assert_equal [KEY, payment.order_id, "1999.00", "9876543210", @user.email], f.values_at("key", "txnid", "amount", "phone", "email")
    assert_equal payments_payu_return_url, f["surl"]
    expected = Payu.sha512(KEY, f["txnid"], f["amount"], f["productinfo"], f["firstname"], f["email"], f["udf1"],
                           "", "", "", "", "", "", "", "", "", SALT)
    assert_equal expected, f["hash"]
    assert_equal "PENDING", payment.status

    # Coming back before paying (or with a faked link) does not unlock anything.
    get payments_return_path(order_id: payment.order_id)
    assert_redirected_to pricing_path
    assert_not @user.reload.member?

    @fake.status = "success"
    travel_to Time.zone.local(2026, 10, 4, 12) do
      # PayU posts the result (no login cookie on this cross-site POST); we confirm with PayU, then send them on.
      sign_out @user
      post payments_payu_return_path, params: payu_post(payment, status: "success")
      assert_redirected_to payments_return_path(order_id: payment.order_id)
      assert @user.reload.member?
      assert_equal Time.zone.local(2027, 1, 4, 12), @user.access_until   # 3 months
      assert_equal "PAID", payment.reload.status
      assert_equal "403993715#{payment.id}", payment.gateway_payment_id

      sign_in @user
      get payments_return_path(order_id: payment.order_id)
      assert_redirected_to dashboard_path

      # Posting the result again does not add more months.
      post payments_payu_return_path, params: payu_post(payment, status: "success")
      assert_equal Time.zone.local(2027, 1, 4, 12), @user.reload.access_until

      # Buying a year adds 12 months to the end of the current plan, at the yearly price.
      second = buy(plan: "12m")
      assert_equal 5000, second.amount
      post payments_payu_return_path, params: payu_post(second, status: "success")
      assert_equal Time.zone.local(2028, 1, 4, 12), @user.reload.access_until
    end
  end

  test "a faked success, a wrong amount or a failed payment never gives access" do
    sign_in @user
    payment = buy

    # A forged "success" with a bad hash is not trusted; PayU still says pending.
    post payments_payu_return_path, params: payu_post(payment, status: "success", hash: "0" * 128)
    assert_redirected_to payments_return_path(order_id: payment.order_id)
    assert_not @user.reload.member?
    assert_empty @fake.checked   # a bad hash is not even sent on to PayU

    @fake.status = "success"
    @fake.amount = 1
    post payments_payu_return_path, params: payu_post(payment, status: "success")
    assert_not @user.reload.member?

    @fake.status = "failure"
    @fake.amount = nil
    post payments_payu_return_path, params: payu_post(payment, status: "failure")
    assert_equal "FAILED", payment.reload.status
    get payments_return_path(order_id: payment.order_id)
    assert_redirected_to pricing_path
    assert_not @user.reload.member?
  end

  test "checkout checks the phone number, the plan and other people's orders" do
    sign_in @user
    post payments_path, params: { phone: "12345", plan: "6m" }, as: :json
    assert_response :unprocessable_entity
    post payments_path, params: { phone: "9876543210", plan: "free" }, as: :json
    assert_response :unprocessable_entity
    other = users(:one).payments.create!(order_id: "CBOTHER1", plan: "6m", amount: 3499)
    @fake.status = "success"
    get payments_return_path(order_id: other.order_id)
    assert_redirected_to pricing_path
    assert_not users(:one).reload.member?
  end

  test "test mode is never used in production" do
    env = Rails.env
    env.define_singleton_method(:production?) { true }
    assert_not Payu.enabled?
    Payu.define_singleton_method(:mode) { "live" }
    assert Payu.enabled?
  ensure
    env.singleton_class.send(:remove_method, :production?)
  end

  test "the webhook needs a valid hash, then confirms with PayU" do
    payment = @user.payments.create!(order_id: "CBHOOK1", plan: "6m", amount: 3499)
    post payments_webhook_path, params: payu_post(payment, status: "success", hash: "bad")
    assert_response :unauthorized

    @fake.status = "success"
    post payments_webhook_path, params: payu_post(payment, status: "success")
    assert_response :ok
    assert payment.reload.paid?
    assert @user.reload.member?
    assert_in_delta 6.months.from_now, @user.access_until, 5
  end
end

require "test_helper"

# "Continue with Google" (Users::OmniauthCallbacksController, User.from_omniauth). OmniAuth's test mode
# stands in for Google, so no request leaves the test.
class SocialLoginTest < ActionDispatch::IntegrationTest
  KEYS = %w[GOOGLE_CLIENT_ID GOOGLE_CLIENT_SECRET].freeze

  setup do
    @saved_env = KEYS.to_h { |k| [k, ENV[k]] }
    KEYS.each { |k| ENV[k] = "test-#{k.downcase}" }
    OmniAuth.config.test_mode = true
  end

  teardown do
    @saved_env.each { |k, v| v.nil? ? ENV.delete(k) : ENV[k] = v }
    OmniAuth.config.mock_auth[:google_oauth2] = nil
    OmniAuth.config.test_mode = false
  end

  def mock_google(uid:, email:, name: "Asha Rao", verified: true)
    OmniAuth.config.mock_auth[:google_oauth2] = OmniAuth::AuthHash.new(
      provider: "google_oauth2", uid: uid, info: { email: email, name: name }, extra: { raw_info: { "email_verified" => verified } }
    )
  end

  def continue_with_google
    post "/auth/google_oauth2"
    follow_redirect!   # OmniAuth test mode sends the browser straight to /auth/google_oauth2/callback
  end

  test "the Google button shows on log in and sign up, and there is no Facebook button" do
    get new_user_session_path
    assert_select "form[action='/auth/google_oauth2'][method=post] button", /Continue with Google/
    assert_select "form[action='/auth/facebook']", 0
    assert_no_match(/Facebook/, response.body)
    get new_user_registration_path
    assert_select "form[action='/auth/google_oauth2'][method=post]"
  end

  test "the button shows even before the keys are added" do
    KEYS.each { |k| ENV.delete(k) }
    get new_user_session_path
    assert_select "form[action='/auth/google_oauth2']"
  end

  test "Google creates a new account and signs in" do
    mock_google(uid: "g-123", email: "New.Learner@Example.com", name: "New Learner")
    assert_difference -> { User.count }, 1 do
      continue_with_google
    end
    user = User.find_by(email: "new.learner@example.com")
    assert_equal "g-123", user.google_uid
    assert_equal "New Learner", user.name
    assert_redirected_to dashboard_path
    follow_redirect!
    assert_response :success
    assert_select "h1", /Welcome back, .*New/m
  end

  test "an existing email logs into that account instead of creating a new one" do
    existing = users(:one)
    mock_google(uid: "g-9", email: existing.email.upcase)
    assert_no_difference -> { User.count } do
      continue_with_google
    end
    assert_redirected_to dashboard_path
    assert_equal "g-9", existing.reload.google_uid

    # Next time the Google id alone finds the account, even if the Gmail address changed.
    delete destroy_user_session_path
    mock_google(uid: "g-9", email: "someone-else@example.com")
    assert_no_difference -> { User.count } do
      continue_with_google
    end
    assert_redirected_to dashboard_path
  end

  test "an unverified or missing Google email does not sign in" do
    mock_google(uid: "g-x", email: users(:one).email, verified: false)
    assert_no_difference -> { User.count } do
      continue_with_google
    end
    assert_redirected_to new_user_registration_path
    assert_nil users(:one).reload.google_uid

    mock_google(uid: "g-y", email: nil)
    continue_with_google
    assert_redirected_to new_user_registration_path
    follow_redirect!
    assert_match "didn&#39;t share your email", response.body
  end

  test "a blocked user cannot sign in with Google" do
    user = users(:one).tap { |u| u.update!(blocked_at: Time.current) }
    mock_google(uid: "g-blocked", email: user.email)
    continue_with_google
    assert_redirected_to new_user_session_path
    get dashboard_path
    assert_redirected_to new_user_session_path
  end

  test "cancelling at Google comes back to the log in page with a message" do
    OmniAuth.config.mock_auth[:google_oauth2] = :access_denied
    continue_with_google
    follow_redirect! while response.redirect? && !response.location.include?("/users/sign_in")
    assert_redirected_to new_user_session_path
    follow_redirect!
    assert_match "didn&#39;t finish", response.body
  end

  test "Facebook sign-in is not available" do
    post "/auth/facebook"
    assert_response :not_found
  end

  test "the request phase only accepts POST" do
    get "/auth/google_oauth2"
    assert_response :not_found
  end
end

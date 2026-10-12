require "test_helper"

# Admin › AI provider switches the AI for the whole app; Admin › Users can block and unblock learners.
class AdminAiProviderTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @admin = users(:one).tap { |u| u.update!(admin: true) }
    @learner = users(:two)
  end

  test "only admins can open the AI provider page" do
    sign_in @learner
    get admin_ai_provider_path
    assert_redirected_to root_path
  end

  test "admin switches provider and model; the whole app follows" do
    sign_in @admin
    get admin_ai_provider_path
    assert_select "input[type=radio][name=provider]", 3
    patch admin_ai_provider_path, params: { provider: "openai", models: { openai: "gpt-6-luna", gemini: "gemini-3.5-flash" } }
    assert_redirected_to admin_ai_provider_path
    assert_equal :openai, AiProvider.current
    assert_equal "gpt-6-luna", AiProvider.model
    assert_equal OpenaiChat, AiProvider.chat_class
    assert_not AiProvider.web_search?
  end

  test "bad provider or model names are refused" do
    sign_in @admin
    patch admin_ai_provider_path, params: { provider: "skynet" }
    assert_equal :gemini, AiProvider.current
    patch admin_ai_provider_path, params: { provider: "openai", models: { openai: "gpt <script>" } }
    assert_equal :gemini, AiProvider.current
  end

  test "Ask AI hides the Web switch when the provider has no web search" do
    AppSetting.set("ai_provider", "anthropic")
    get ask_path
    assert_select "label.ask-web[hidden]"
  end

  test "admin blocks a learner, who is signed out and cannot sign in; unblock restores access" do
    sign_in @admin
    get admin_users_path
    assert_select "button", text: "Block"
    patch block_admin_user_path(@learner)
    assert @learner.reload.blocked?

    sign_out @admin
    post user_session_path, params: { user: { email: @learner.email, password: "password123" } }
    assert_match(/blocked/, flash[:alert])
    get dashboard_path
    assert_redirected_to new_user_session_path

    sign_in @admin
    patch unblock_admin_user_path(@learner)
    assert_not @learner.reload.blocked?
  end

  test "admins cannot be blocked, and the list can be searched" do
    sign_in @admin
    patch block_admin_user_path(@admin)
    assert_not @admin.reload.blocked?
    get admin_users_path, params: { q: @learner.email }
    assert_select "td b", text: @learner.email
  end
end

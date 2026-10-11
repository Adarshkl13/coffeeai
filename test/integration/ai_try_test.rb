require "test_helper"

# The "Try it with AI" box in non-coding lessons. Claude is replaced by a fake runner.
class AiTryTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  FakeRunner = Struct.new(:calls) do
    def run(system_prompt, user_message)
      calls << [system_prompt, user_message]
      PromptRunner::Result.new(output: "Here are 3 ideas.", model: "claude-opus-5", stop_reason: "end_turn")
    end
  end

  setup do
    @user = users(:two).tap { |u| u.update!(access_until: 1.month.from_now) }   # has the paid plan
    sign_in @user
    @enabled = PromptRunner.method(:enabled?)
    PromptRunner.define_singleton_method(:enabled?) { true }
  end

  teardown { PromptRunner.define_singleton_method(:enabled?, @enabled) }

  def with_runner(runner)
    original = PromptRunner.method(:new)
    PromptRunner.define_singleton_method(:new) { |*| runner }
    yield
  ensure
    PromptRunner.define_singleton_method(:new, original)
  end

  test "sends the prompt with the course system prompt and counts one try" do
    fake = FakeRunner.new([])
    with_runner(fake) { post prompt_lab_try_path, as: :json, params: { prompt: "Write 3 ad headlines for [my bakery]." } }
    assert_response :success
    assert_equal "Here are 3 ideas.", response.parsed_body["output"]
    assert_equal "Write 3 ad headlines for [my bakery].", fake.calls.first.last
    assert_match(/not personal advice/, fake.calls.first.first)
    assert_equal 1, response.parsed_body.dig("usage", "used")
  end

  test "validation and daily limit" do
    post prompt_lab_try_path, as: :json, params: { prompt: "  " }
    assert_response :unprocessable_entity
    post prompt_lab_try_path, as: :json, params: { prompt: "x" * 4001 }
    assert_response :unprocessable_entity
    LabUsage.create!(user: @user, kind: "ai_try", day: Date.current, count: LabUsage.limit_for("ai_try"))
    with_runner(FakeRunner.new([])) { post prompt_lab_try_path, as: :json, params: { prompt: "Hi" } }
    assert_response :too_many_requests
  end

  test "without an API key it asks the learner to copy the prompt" do
    PromptRunner.define_singleton_method(:enabled?) { false }
    post prompt_lab_try_path, as: :json, params: { prompt: "Hi" }
    assert response.parsed_body["dry_run"]
    assert_equal 0, LabUsage.used(@user, "ai_try")
  end

  test "needs sign in" do
    sign_out @user
    post prompt_lab_try_path, as: :json, params: { prompt: "Hi" }
    assert_response :unauthorized
  end
end

require "test_helper"

# Claude is replaced by a fake runner, so no API key or network is needed.
class PromptLabTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  FakeRunner = Struct.new(:answers, :calls) do
    def run(system_prompt, user_message)
      calls << [system_prompt, user_message]
      PromptRunner::Result.new(output: answers.shift || "", model: "claude-opus-5", stop_reason: "end_turn",
                               input_tokens: 50, output_tokens: 5)
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

  def run_lab(**params)
    post prompt_lab_run_path, as: :json, params: {
      system_prompt: "Reply with one label.", template: "Ticket: {{input}}",
      cases: [{ input: "I was charged twice", check: "equals", value: "billing" },
              { input: "Editor is blank", check: "equals", value: "technical" }]
    }.merge(params)
  end

  test "grader checks" do
    g = ->(out, type, val) { PromptGrader.grade(out, type, val).pass }
    assert g.("The label is Billing.", "contains", "billing")
    refute g.("In summary, yes", "not_contains", "in summary")
    assert g.("  billing \n", "equals", "Billing")
    assert g.("Order ORD-1234", "regex", "ORD-\\d{4}")
    assert g.(%(```json\n{"name": "Priya", "email": null}\n```), "json_keys", "name, email")
    refute g.(%({"name": "Priya"}), "json_keys", "name, email")
    refute g.("not json", "json_keys", "name")
    assert g.("one two three", "max_words", "3")
    refute g.("one two three four", "max_words", "3")
    assert_match(/not valid/, PromptGrader.invalid("regex", "("))
    assert_nil PromptGrader.invalid("contains", "x")
  end

  test "runs every case and grades the answers" do
    fake = FakeRunner.new(["billing", "account"], [])
    with_runner(fake) { run_lab }
    assert_response :success
    body = response.parsed_body
    assert_equal [true, false], body["results"].map { |r| r["pass"] }
    assert_equal [1, 2], [body["passed"], body["total"]]
    assert_equal "Ticket: I was charged twice", fake.calls.first.last
    assert_equal [1, 2], [body.dig("usage", "runs", "used"), body.dig("usage", "calls", "used")]
  end

  test "validation" do
    run_lab(template: "No placeholder here")
    assert_response :unprocessable_entity
    run_lab(cases: [{ input: "x", check: "regex", value: "(" }])
    assert_response :unprocessable_entity
    run_lab(cases: Array.new(7) { { input: "x", check: "contains", value: "y" } })
    assert_response :unprocessable_entity
    run_lab(cases: [{ input: "x", check: "shell", value: "ls" }])
    assert_response :unprocessable_entity
  end

  test "without an API key it shows a dry run" do
    PromptRunner.define_singleton_method(:enabled?) { false }
    run_lab
    body = response.parsed_body
    assert body["dry_run"]
    assert_equal "Ticket: Editor is blank", body["results"].last["prompt"]
    assert_equal 0, LabUsage.used(@user, "prompt_run")
  end

  test "the daily model-call limit stops remaining cases" do
    LabUsage.create!(user: @user, kind: "prompt_llm", day: Date.current, count: LabUsage.limit_for("prompt_llm") - 1)
    fake = FakeRunner.new(["billing", "technical"], [])
    with_runner(fake) { run_lab }
    body = response.parsed_body
    assert_equal 1, fake.calls.size
    assert_match(/Daily limit/, body["results"].last["error"])
  end
end

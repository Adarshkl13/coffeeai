require "test_helper"

# The RAG, Prompt and Agent labs run on Gemini by default. GeminiApi is replaced by a scripted fake.
class GeminiLabsTest < ActiveSupport::TestCase
  class FakeGemini
    attr_reader :requests
    def initialize(*replies) = (@replies, @requests = replies, [])
    def generate(**kw)
      @requests << kw
      r = @replies.shift
      raise r if r.is_a?(Exception)
      r
    end
  end

  def reply(*parts, finish: "STOP") = { "candidates" => [{ "content" => { "role" => "model", "parts" => parts }, "finishReason" => finish }],
                                        "usageMetadata" => { "promptTokenCount" => 50, "candidatesTokenCount" => 10 }, "modelVersion" => "gemini-test" }

  test "Gemini is the default provider" do
    assert_equal :gemini, AiProvider.current
  end

  test "RAG answer comes from Gemini with the grounded prompt" do
    fake = FakeGemini.new(reply({ "text" => "Within 5 days [1]." }))
    r = RagAnswerer.new(gemini: fake).answer("Refunds?", [{ document: "a.md", text: "Refunds take 5 days." }])
    assert_equal "Within 5 days [1].", r.answer
    assert_equal "gemini-test", r.model
    assert_match(/<source id="1"/, fake.requests.first[:contents].first[:parts].first[:text])
    assert_equal RagAnswerer::SYSTEM_PROMPT, fake.requests.first[:system]
  end

  test "Gemini errors and blocked answers become friendly results" do
    r = RagAnswerer.new(gemini: FakeGemini.new(GeminiApi::Error.new("busy"))).answer("q", [])
    assert_equal "busy", r.error
    blocked = { "promptFeedback" => { "blockReason" => "SAFETY" } }
    assert_equal "refusal", PromptRunner.new(gemini: FakeGemini.new(blocked)).run("", "x").stop_reason
  end

  test "Prompt Lab returns the text and skips thought summaries" do
    fake = FakeGemini.new(reply({ "text" => "thinking…", "thought" => true }, { "text" => "Blue" }))
    r = PromptRunner.new(gemini: fake).run("One word.", "Sky colour?")
    assert_equal "Blue", r.output
    assert_equal [50, 10], [r.input_tokens, r.output_tokens]
  end

  test "Agent loop: Gemini calls a tool, gets the result back, then answers" do
    fake = FakeGemini.new(
      reply({ "functionCall" => { "name" => "calculator", "args" => { "expression" => "2+3" } }, "thoughtSignature" => "sig1" }),
      reply({ "text" => "The answer is 5." })
    )
    r = AgentRunner.new(gemini: fake).run(system_prompt: "Be exact.", task: "2+3?", tools: AgentTools.select(%w[calculator]), max_steps: 4)
    assert_equal "end_turn", r.stop_reason
    assert_equal [2, 1], [r.llm_calls, r.tool_calls]
    assert_equal "The answer is 5.", r.timeline.last[:text]
    second = fake.requests.last[:contents]
    assert_equal "sig1", second[1][:parts].first["thoughtSignature"], "the model turn is replayed unchanged"
    fr = second[2][:parts].first[:functionResponse]
    assert_equal "calculator", fr[:name]
    assert_kind_of Hash, fr[:response]
  end

  test "Agent loop refuses tools that are not enabled" do
    fake = FakeGemini.new(reply({ "functionCall" => { "name" => "lookup_order", "args" => {} } }), reply({ "text" => "ok" }))
    r = AgentRunner.new(gemini: fake).run(system_prompt: "", task: "t", tools: AgentTools.select(%w[calculator]), max_steps: 3)
    assert_equal 0, r.tool_calls
    assert(r.timeline.any? { |e| e[:error] && e[:text].include?("not enabled") })
  end

  test "Agent loop stops at the step limit" do
    loop_reply = reply({ "functionCall" => { "name" => "calculator", "args" => { "expression" => "1+1" } } })
    fake = FakeGemini.new(*Array.new(5) { loop_reply })
    r = AgentRunner.new(gemini: fake).run(system_prompt: "", task: "t", tools: AgentTools.select(%w[calculator]), max_steps: 2)
    assert_equal "max_steps", r.stop_reason
    assert_equal 2, r.llm_calls
  end
end

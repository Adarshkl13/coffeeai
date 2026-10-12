require "test_helper"

# OpenAI (Responses API) paths for Ask AI and the labs. OpenaiApi is replaced by a scripted fake.
class OpenaiLabsTest < ActiveSupport::TestCase
  class FakeOpenai
    attr_reader :requests
    def initialize(*replies) = (@replies, @requests = replies, [])
    def generate(**kw) = (@requests << kw; @replies.shift)
    def stream(**kw)
      @requests << kw
      ["Hello ", "there."].each { |t| yield t }
      { "status" => "completed", "output" => [] }
    end
  end

  def out_msg(text) = { "type" => "message", "content" => [{ "type" => "output_text", "text" => text }] }
  def reply(*output) = { "model" => "gpt-test", "status" => "completed", "output" => output, "usage" => { "input_tokens" => 40, "output_tokens" => 8 } }

  test "RAG and Prompt labs read OpenAI output text" do
    r = RagAnswerer.new(openai: FakeOpenai.new(reply(out_msg("5 days [1].")))).answer("q", [{ document: "a", text: "5 days" }])
    assert_equal "5 days [1].", r.answer
    assert_equal "gpt-test", r.model
    p = PromptRunner.new(openai: FakeOpenai.new(reply(out_msg("Blue")))).run("One word.", "Sky?")
    assert_equal ["Blue", 40, 8], [p.output, p.input_tokens, p.output_tokens]
  end

  test "Agent loop on OpenAI sends function_call_output back with the call id" do
    call = { "type" => "function_call", "call_id" => "c1", "name" => "calculator", "arguments" => '{"expression":"2+3"}' }
    fake = FakeOpenai.new(reply(call), reply(out_msg("It is 5.")))
    r = AgentRunner.new(openai: fake).run(system_prompt: "Be exact.", task: "2+3?", tools: AgentTools.select(%w[calculator]), max_steps: 4)
    assert_equal ["end_turn", 2, 1], [r.stop_reason, r.llm_calls, r.tool_calls]
    sent = fake.requests.last[:input]
    assert_equal call, sent[1], "the model's output items are sent back"
    assert_equal "function_call_output", sent[2][:type]
    assert_equal "c1", sent[2][:call_id]
    assert_equal "calculator", fake.requests.first[:tools].first[:name]
  end

  test "Ask AI streams OpenAI text and maps history roles" do
    fake = FakeOpenai.new
    pieces = []
    r = OpenaiChat.new(api: fake).stream([{ role: "user", text: "Hi" }, { role: "model", text: "Hello" }, { role: "user", text: "Explain AI" }]) { |t| pieces << t }
    assert_equal "Hello there.", r.text
    assert_equal ["Hello ", "there."], pieces
    input = fake.requests.first[:input]
    assert_equal %w[user assistant user], input.map { |m| m[:role] }
    assert_equal "input_text", input.last[:content].last[:type]
  end

  test "an image attachment becomes an input_image" do
    msg = OpenaiApi.user_message("What is this?", { mime_type: "image/png", data: "PNG", name: "a.png" })
    assert_equal "input_image", msg[:content].first[:type]
    assert msg[:content].first[:image_url].start_with?("data:image/png;base64,")
  end
end

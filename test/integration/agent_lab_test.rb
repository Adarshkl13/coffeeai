require "test_helper"

# Claude is replaced by a scripted fake client, so no API key or network is needed.
class AgentLabTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  Block = Struct.new(:type, :text, :thinking, :signature, :id, :name, :input, keyword_init: true)
  Usage = Struct.new(:input_tokens, :output_tokens)
  Message = Struct.new(:content, :stop_reason, :model, :usage)

  # Plays back scripted replies and records every request it receives.
  class FakeClient
    attr_reader :requests
    def initialize(replies) = (@replies, @requests = replies, [])
    def beta = self
    def messages = self
    def create(**params)
      @requests << params
      @replies.shift || @last
    end
    def repeat_forever(reply) = (@last = reply; self)
  end

  setup do
    @user = users(:two).tap { |u| u.update!(access_until: 1.month.from_now) }   # has the paid plan
    sign_in @user
    @enabled = AgentRunner.method(:enabled?)
    AgentRunner.define_singleton_method(:enabled?) { true }
  end

  teardown do
    AgentRunner.define_singleton_method(:enabled?, @enabled)
  end

  def msg(stop, *blocks) = Message.new(blocks, stop, "claude-opus-5", Usage.new(100, 20))
  def tool(id, name, input) = Block.new(type: :tool_use, id: id, name: name, input: input)
  def text(t) = Block.new(type: :text, text: t)

  # Makes AgentRunner.new use the fake client while keeping the controller's before_call.
  def with_client(client)
    original = AgentRunner.method(:new)
    AgentRunner.define_singleton_method(:new) { |**kw| original.call(client: client, **kw) }
    yield
  ensure
    AgentRunner.define_singleton_method(:new, original)
  end

  def run_agent(**params)
    post agent_lab_run_path, as: :json, params: {
      system_prompt: "You are a support agent.", task: "Refund for ORD-1002?",
      tools: %w[lookup_order search_help_center], max_steps: 5
    }.merge(params)
  end

  test "show lists the safe tools and usage" do
    get agent_lab_path, as: :json
    body = response.parsed_body
    assert_equal AgentTools::NAMES, body["tools"].map { |t| t["name"] }
    assert_equal 0, body.dig("usage", "run", "used")
  end

  test "a run records thought, tool calls, results and the answer" do
    client = FakeClient.new([
      msg(:tool_use, Block.new(type: :thinking, thinking: "Need the order.", signature: "s"), tool("t1", "lookup_order", { order_id: "ORD-1002" })),
      msg(:end_turn, text("Not refundable: 12 days > 7 (HC-01)."))
    ])
    with_client(client) { run_agent }
    assert_response :success
    body = response.parsed_body
    assert_equal %w[user thought tool result answer], body["timeline"].map { |e| e["kind"] }
    assert_match(/"days_since_payment": 12/, body["timeline"][3]["text"])
    assert_equal ["end_turn", 2, 1], [body["stop_reason"], body["llm_calls"], body["tool_calls"]]
    assert_equal [1, 2], [body.dig("usage", "run", "used"), body.dig("usage", "llm", "used")]

    second = client.requests.last
    assert_equal %w[search_help_center lookup_order], second[:tools].map { |t| t[:name] }
    assert_equal({ type: "thinking", thinking: "Need the order.", signature: "s" }, second[:messages][1][:content][0])
    assert_equal "t1", second[:messages][2][:content][0][:tool_use_id]
  end

  test "tools that weren't selected are refused, even if the model asks" do
    client = FakeClient.new([msg(:tool_use, tool("t1", "calculator", { expression: "1+1" })), msg(:end_turn, text("ok"))])
    with_client(client) { run_agent(tools: ["lookup_order"]) }
    result = response.parsed_body["timeline"].find { |e| e["kind"] == "result" }
    assert result["error"]
    assert_match(/not enabled/, result["text"])
    assert_equal true, client.requests.last[:messages][2][:content][0][:is_error]
  end

  test "names outside the safe list are rejected before any model call" do
    client = FakeClient.new([])
    with_client(client) { run_agent(tools: %w[lookup_order run_shell]) }
    assert_response :unprocessable_entity
    assert_empty client.requests
  end

  test "the step limit stops a model that never finishes" do
    client = FakeClient.new([]).repeat_forever(msg(:tool_use, tool("t", "search_help_center", { query: "refund" })))
    with_client(client) { run_agent(max_steps: 3) }
    body = response.parsed_body
    assert_equal ["max_steps", 3], [body["stop_reason"], body["llm_calls"]]
    assert_equal 3, client.requests.size
  end

  test "max_tokens mid tool call does not run the tool" do
    client = FakeClient.new([msg(:max_tokens, tool("t1", "lookup_order", { order_id: "ORD-10" }))])
    with_client(client) { run_agent }
    body = response.parsed_body
    assert_equal "max_tokens", body["stop_reason"]
    assert_equal 0, body["tool_calls"]
  end

  test "the daily model-call limit stops a run part-way" do
    LabUsage.create!(user: @user, kind: "agent_llm", day: Date.current, count: LabUsage.limit_for("agent_llm") - 1)
    client = FakeClient.new([]).repeat_forever(msg(:tool_use, tool("t", "search_help_center", { query: "refund" })))
    with_client(client) { run_agent(max_steps: 5) }
    body = response.parsed_body
    assert_equal ["daily_limit", 1], [body["stop_reason"], client.requests.size]
  end

  test "the daily run limit returns 429" do
    LabUsage.create!(user: @user, kind: "agent_run", day: Date.current, count: LabUsage.limit_for("agent_run"))
    with_client(FakeClient.new([])) { run_agent }
    assert_response :too_many_requests
  end

  test "without an API key no run happens" do
    AgentRunner.define_singleton_method(:enabled?) { false }
    run_agent
    assert_match(/aren't switched on/, response.parsed_body["notice"])
    assert_equal 0, LabUsage.used(@user, "agent_run")
  end

  test "tools can be tested by hand" do
    post agent_lab_tool_path, as: :json, params: { name: "calculator", input: '{"expression": "2^10 - 24"}' }
    assert_equal 1000, response.parsed_body.dig("result", "result")
    post agent_lab_tool_path, as: :json, params: { name: "calculator", input: '{"expression": "system(1)"}' }
    assert response.parsed_body["error"]
    post agent_lab_tool_path, as: :json, params: { name: "eval", input: "{}" }
    assert_response :unprocessable_entity
  end
end

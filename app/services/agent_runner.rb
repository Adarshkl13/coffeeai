require "anthropic"

# Runs one Agent Lab agent: a manual tool-use loop over Claude and the fixed AgentTools list,
# recording every step (thought → tool call → result → answer) for the learner's timeline.
#
# The loop is written out by hand, the same shape learners build in Python in the course, so that
# every model call can be counted against the learner's daily limit before it is made.
# Configure with ANTHROPIC_API_KEY; the model can be changed with AGENT_LAB_MODEL.
class AgentRunner
  MODEL = ENV.fetch("AGENT_LAB_MODEL", "claude-opus-5")
  MAX_TOKENS = 4_096       # per model call; caps the cost of a single step
  MAX_STEPS = 8            # hard ceiling on model calls per run, whatever the learner picks
  MAX_TOOL_CALLS = 16      # hard ceiling on tool executions per run
  MAX_TEXT = 4_000         # longest text kept per timeline entry

  Result = Struct.new(:timeline, :stop_reason, :model, :llm_calls, :tool_calls, :input_tokens, :output_tokens, keyword_init: true)

  def self.enabled? = ENV["ANTHROPIC_API_KEY"].present?

  # before_call runs before every model call (the controller uses it to take one unit of the
  # learner's daily allowance); if it raises LabUsage::LimitReached the run stops cleanly.
  def initialize(client: nil, before_call: -> {})
    @client = client
    @before_call = before_call
  end

  def run(system_prompt:, task:, tools:, max_steps:)
    max_steps = max_steps.to_i.clamp(1, MAX_STEPS)
    tools = Array(tools)
    allowed = tools.map(&:name)
    messages = [{ role: "user", content: task }]
    @timeline = [entry("user", "Task", task)]
    @tokens = { input: 0, output: 0 }
    llm_calls = tool_calls = 0
    model = MODEL

    stop = catch(:stop) do
      loop do
        throw :stop, stop!("max_steps", "Stopped: the agent used all #{max_steps} steps without finishing. Raise the step limit, simplify the task, or improve the prompt.") if llm_calls >= max_steps

        begin
          @before_call.call
        rescue LabUsage::LimitReached => e
          throw :stop, stop!("daily_limit", e.message)
        end
        llm_calls += 1

        message = call_model(system_prompt, tools, messages)
        throw :stop, "api_error" unless message
        model = message.model.to_s
        @tokens[:input] += message.usage.input_tokens.to_i
        @tokens[:output] += message.usage.output_tokens.to_i

        if message.stop_reason == :refusal
          throw :stop, stop!("refusal", "The model declined to continue this task.")
        end

        tool_uses = message.content.select { |b| b.type == :tool_use }
        message.content.each do |b|
          case b.type
          when :thinking
            @timeline << entry("thought", "Thinking (summary) · step #{llm_calls}", b.thinking) if b.thinking.present?
          when :text
            next if b.text.blank?
            @timeline << (tool_uses.any? ? entry("thought", "Says · step #{llm_calls}", b.text) : entry("answer", "Final answer · step #{llm_calls}", b.text))
          end
        end

        if message.stop_reason == :max_tokens
          throw :stop, stop!("max_tokens", "Stopped: the model hit its output limit mid-step, so any half-written tool call was not run.")
        end
        throw :stop, "end_turn" if tool_uses.empty?

        messages << { role: "assistant", content: message.content.filter_map { |b| replay_block(b) } }
        results = tool_uses.map do |tu|
          input = tu.input.is_a?(Hash) ? tu.input : {}
          @timeline << entry("tool", "Tool call · #{tu.name}", JSON.pretty_generate(input))
          if tool_calls >= MAX_TOOL_CALLS
            text, error = { error: "Tool budget for this run is used up. Answer with what you have." }.to_json, true
          elsif !allowed.include?(tu.name)
            text, error = { error: "Tool '#{tu.name}' is not enabled for this agent." }.to_json, true
          else
            tool_calls += 1
            text, error = AgentTools.call(tu.name, input)
          end
          @timeline << entry("result", "#{error ? 'Tool error' : 'Result'} · #{tu.name}", pretty(text), error: error)
          { type: "tool_result", tool_use_id: tu.id, content: text, is_error: error }
        end
        messages << { role: "user", content: results }
      end
    end

    Result.new(timeline: @timeline, stop_reason: stop, model: model, llm_calls: llm_calls, tool_calls: tool_calls,
               input_tokens: @tokens[:input], output_tokens: @tokens[:output])
  end

  private

  def call_model(system_prompt, tools, messages)
    params = {
      model: MODEL,
      max_tokens: MAX_TOKENS,
      system_: system_prompt,
      messages: messages,
      thinking: { type: "adaptive", display: "summarized" },   # summaries become "thought" steps in the timeline
      output_config: { effort: "low" },                        # small tool tasks; keeps each step quick and cheap
      fallbacks: :default,
      betas: [:"server-side-fallback-2026-07-01"]
    }
    params[:tools] = tools.map(&:definition) if tools.any?   # an agent with no tools can only answer from memory
    client.beta.messages.create(**params)
  rescue Anthropic::Errors::RateLimitError
    api_error("The AI service is busy right now. Please try again in a minute.")
  rescue Anthropic::Errors::AuthenticationError, Anthropic::Errors::PermissionDeniedError
    api_error("The AI service isn't configured correctly (check ANTHROPIC_API_KEY).")
  rescue Anthropic::Errors::APIConnectionError
    api_error("Couldn't reach the AI service. Please try again.")
  rescue Anthropic::Errors::APIStatusError => e
    Rails.logger.warn("[AgentLab] Claude API error #{e.status}: #{e.message}")
    api_error("The AI service returned an error (#{e.status}).")
  end

  def api_error(message)
    @timeline << entry("warn", "Error", message)
    nil
  end

  # The assistant turn is sent back unchanged (thinking blocks included, with their signatures),
  # built as plain hashes so only request-side fields go over the wire.
  def replay_block(b)
    case b.type
    when :thinking then { type: "thinking", thinking: b.thinking, signature: b.signature }
    when :redacted_thinking then { type: "redacted_thinking", data: b.data }
    when :text then { type: "text", text: b.text }
    when :tool_use then { type: "tool_use", id: b.id, name: b.name, input: b.input.is_a?(Hash) ? b.input : {} }
    end
  end

  def stop!(reason, message)
    @timeline << entry("warn", "Stopped", message)
    reason
  end

  def entry(kind, label, text, error: false)
    { kind: kind, label: label, text: text.to_s.truncate(MAX_TEXT), error: error }
  end

  def pretty(json)
    JSON.pretty_generate(JSON.parse(json))
  rescue JSON::ParserError
    json
  end

  def client
    @client ||= Anthropic::Client.new(max_retries: 2, timeout: 60)
  end
end

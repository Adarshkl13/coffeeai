require "anthropic"

# Runs one Agent Lab agent: a manual tool-use loop over Gemini (default) or Claude and the fixed AgentTools list,
# recording every step (thought → tool call → result → answer) for the learner's timeline.
#
# The loop is written out by hand, the same shape learners build in Python in the course, so that
# every model call can be counted against the learner's daily limit before it is made.
# The provider (Gemini, Claude or OpenAI) and model are chosen on Admin › AI provider (AiProvider).
class AgentRunner
  MAX_TOKENS = 4_096       # per model call; caps the cost of a single step
  MAX_STEPS = 8            # hard ceiling on model calls per run, whatever the learner picks
  MAX_TOOL_CALLS = 16      # hard ceiling on tool executions per run
  MAX_TEXT = 4_000         # longest text kept per timeline entry

  Result = Struct.new(:timeline, :stop_reason, :model, :llm_calls, :tool_calls, :input_tokens, :output_tokens, keyword_init: true)

  # The provider and model are chosen on Admin › AI provider (AiProvider).
  def self.enabled? = AiProvider.configured?
  def self.model = AiProvider.model

  # before_call runs before every model call (the controller uses it to take one unit of the
  # learner's daily allowance); if it raises LabUsage::LimitReached the run stops cleanly.
  # Tests pass a fake: client (Anthropic), gemini (GeminiApi) or openai (OpenaiApi).
  def initialize(client: nil, gemini: nil, openai: nil, before_call: -> {})
    @client = client
    @gemini = gemini
    @openai = openai
    @before_call = before_call
  end

  def provider
    return :anthropic if @client
    return :gemini if @gemini
    return :openai if @openai
    AiProvider.current
  end

  def run(system_prompt:, task:, tools:, max_steps:)
    args = { system_prompt: system_prompt, task: task, tools: tools, max_steps: max_steps }
    return run_with_gemini(**args) if provider == :gemini
    return run_with_openai(**args) if provider == :openai

    max_steps = max_steps.to_i.clamp(1, MAX_STEPS)
    tools = Array(tools)
    allowed = tools.map(&:name)
    messages = [{ role: "user", content: task }]
    @timeline = [entry("user", "Task", task)]
    @tokens = { input: 0, output: 0 }
    llm_calls = tool_calls = 0
    model = AiProvider.model(:anthropic)

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

  # The same hand-written loop for Gemini: functionCall parts are tool calls, functionResponse parts send
  # the results back, and the model's turn is replayed unchanged (it carries Gemini's thought signatures).
  def run_with_gemini(system_prompt:, task:, tools:, max_steps:)
    max_steps = max_steps.to_i.clamp(1, MAX_STEPS)
    tools = Array(tools)
    allowed = tools.map(&:name)
    gemini = @gemini || GeminiApi.new
    contents = [{ role: "user", parts: [{ text: task }] }]
    @timeline = [entry("user", "Task", task)]
    @tokens = { input: 0, output: 0 }
    llm_calls = tool_calls = 0
    model = GeminiApi.model

    stop = catch(:stop) do
      loop do
        throw :stop, stop!("max_steps", "Stopped: the agent used all #{max_steps} steps without finishing. Raise the step limit, simplify the task, or improve the prompt.") if llm_calls >= max_steps

        begin
          @before_call.call
        rescue LabUsage::LimitReached => e
          throw :stop, stop!("daily_limit", e.message)
        end
        llm_calls += 1

        begin
          res = gemini.generate(system: system_prompt.presence, contents: contents, max_tokens: MAX_TOKENS,
                                tools: tools.map(&:definition).presence, thinking: "low", thoughts: true)
        rescue GeminiApi::Error => e
          api_error(e.message)
          throw :stop, "api_error"
        end
        model = res["modelVersion"].presence || model
        input, output = GeminiApi.usage(res)
        @tokens[:input] += input
        @tokens[:output] += output
        throw :stop, stop!("refusal", "The model declined to continue this task.") if GeminiApi.blocked?(res)

        parts = GeminiApi.parts(res)
        calls = parts.filter_map { |p| p["functionCall"] }
        parts.each do |p|
          next if p["text"].blank?
          if p["thought"]
            @timeline << entry("thought", "Thinking (summary) · step #{llm_calls}", p["text"])
          else
            @timeline << (calls.any? ? entry("thought", "Says · step #{llm_calls}", p["text"]) : entry("answer", "Final answer · step #{llm_calls}", p["text"]))
          end
        end

        if GeminiApi.finish_reason(res) == "MAX_TOKENS" && calls.empty?
          throw :stop, stop!("max_tokens", "Stopped: the model hit its output limit mid-step, so any half-written tool call was not run.")
        end
        throw :stop, "end_turn" if calls.empty?

        contents << { role: "model", parts: parts }
        responses = calls.map do |call|
          name = call["name"].to_s
          input = call["args"].is_a?(Hash) ? call["args"] : {}
          @timeline << entry("tool", "Tool call · #{name}", JSON.pretty_generate(input))
          if tool_calls >= MAX_TOOL_CALLS
            text, error = { error: "Tool budget for this run is used up. Answer with what you have." }.to_json, true
          elsif !allowed.include?(name)
            text, error = { error: "Tool '#{name}' is not enabled for this agent." }.to_json, true
          else
            tool_calls += 1
            text, error = AgentTools.call(name, input)
          end
          @timeline << entry("result", "#{error ? 'Tool error' : 'Result'} · #{name}", pretty(text), error: error)
          response = { name: name, response: tool_response(text) }
          response[:id] = call["id"] if call["id"]
          { functionResponse: response }
        end
        contents << { role: "user", parts: responses }
      end
    end

    Result.new(timeline: @timeline, stop_reason: stop, model: model, llm_calls: llm_calls, tool_calls: tool_calls,
               input_tokens: @tokens[:input], output_tokens: @tokens[:output])
  end

  # The same loop for OpenAI's Responses API: function_call output items are tool calls; every output item
  # (reasoning included) is sent back, followed by one function_call_output per call.
  def run_with_openai(system_prompt:, task:, tools:, max_steps:)
    max_steps = max_steps.to_i.clamp(1, MAX_STEPS)
    tools = Array(tools)
    allowed = tools.map(&:name)
    api = @openai || OpenaiApi.new
    input = [{ role: "user", content: task }]
    @timeline = [entry("user", "Task", task)]
    @tokens = { input: 0, output: 0 }
    llm_calls = tool_calls = 0
    model = OpenaiApi.model

    stop = catch(:stop) do
      loop do
        throw :stop, stop!("max_steps", "Stopped: the agent used all #{max_steps} steps without finishing. Raise the step limit, simplify the task, or improve the prompt.") if llm_calls >= max_steps

        begin
          @before_call.call
        rescue LabUsage::LimitReached => e
          throw :stop, stop!("daily_limit", e.message)
        end
        llm_calls += 1

        begin
          res = api.generate(system: system_prompt.presence, input: input, max_tokens: MAX_TOKENS,
                             tools: tools.map(&:definition).presence)
        rescue OpenaiApi::Error => e
          api_error(e.message)
          throw :stop, "api_error"
        end
        model = res["model"].presence || model
        used_in, used_out = OpenaiApi.usage(res)
        @tokens[:input] += used_in
        @tokens[:output] += used_out

        calls = OpenaiApi.function_calls(res)
        text = OpenaiApi.text(res)
        throw :stop, stop!("refusal", "The model declined to continue this task.") if calls.empty? && text.blank? && OpenaiApi.refused?(res)
        if text.present?
          @timeline << (calls.any? ? entry("thought", "Says · step #{llm_calls}", text) : entry("answer", "Final answer · step #{llm_calls}", text))
        end
        if OpenaiApi.cut_off?(res) && calls.empty?
          throw :stop, stop!("max_tokens", "Stopped: the model hit its output limit mid-step, so any half-written tool call was not run.")
        end
        throw :stop, "end_turn" if calls.empty?

        input.concat(OpenaiApi.output(res))
        calls.each do |call|
          name = call["name"].to_s
          args = (JSON.parse(call["arguments"].to_s) rescue nil)
          args = {} unless args.is_a?(Hash)
          @timeline << entry("tool", "Tool call · #{name}", JSON.pretty_generate(args))
          if tool_calls >= MAX_TOOL_CALLS
            out, error = { error: "Tool budget for this run is used up. Answer with what you have." }.to_json, true
          elsif !allowed.include?(name)
            out, error = { error: "Tool '#{name}' is not enabled for this agent." }.to_json, true
          else
            tool_calls += 1
            out, error = AgentTools.call(name, args)
          end
          @timeline << entry("result", "#{error ? 'Tool error' : 'Result'} · #{name}", pretty(out), error: error)
          input << { type: "function_call_output", call_id: call["call_id"], output: out }
        end
      end
    end

    Result.new(timeline: @timeline, stop_reason: stop, model: model, llm_calls: llm_calls, tool_calls: tool_calls,
               input_tokens: @tokens[:input], output_tokens: @tokens[:output])
  end

  private

  # Gemini wants each tool result as a JSON object.
  def tool_response(text)
    data = JSON.parse(text)
    data.is_a?(Hash) ? data : { result: data }
  rescue JSON::ParserError
    { result: text }
  end

  def call_model(system_prompt, tools, messages)
    params = {
      model: AiProvider.model(:anthropic),
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
    @client ||= Anthropic::Client.new(api_key: AiProvider.api_key(:anthropic), max_retries: 2, timeout: 60)
  end
end

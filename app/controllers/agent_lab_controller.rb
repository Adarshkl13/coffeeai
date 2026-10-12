# JSON API behind the Agent Lab widget (app/javascript/controllers/agent_lab_controller.js).
# Learners write a system prompt, choose tools from the fixed AgentTools safe list, and run an
# agent; the response is the step-by-step timeline. Runs, model calls and tool tests are all
# capped per learner per day (LabUsage). Tools run server-side as pure Ruby over demo data;
# no learner code ever runs on the server.
class AgentLabController < ApplicationController
  before_action :authenticate_user!
  before_action :require_plan_json, only: %i[run]

  MAX_SYSTEM_PROMPT = 3_000
  MAX_TASK = 1_000
  MAX_TOOL_INPUT = 2_000

  rescue_from LabUsage::LimitReached do |e|
    render json: { error: e.message, usage: usage }, status: :too_many_requests
  end

  def show
    render json: {
      tools: AgentTools::LIST.map(&:summary),
      generation: { enabled: AgentRunner.enabled?, model: AgentRunner.model },
      usage: usage,
      limits: { max_steps: AgentRunner::MAX_STEPS, max_tool_calls: AgentRunner::MAX_TOOL_CALLS,
                system_prompt: MAX_SYSTEM_PROMPT, task: MAX_TASK }
    }
  end

  def run
    system_prompt = params[:system_prompt].to_s.strip
    task = params[:task].to_s.strip
    names = Array(request.request_parameters["tools"]).map(&:to_s)
    tools = AgentTools.select(names)

    return error("Write a system prompt first.") if system_prompt.empty?
    return error("Keep the system prompt under #{MAX_SYSTEM_PROMPT} characters.") if system_prompt.length > MAX_SYSTEM_PROMPT
    return error("Give the agent a task.") if task.empty?
    return error("Keep the task under #{MAX_TASK} characters.") if task.length > MAX_TASK
    unknown = names - AgentTools::NAMES
    return error("Only tools from the lab's safe list can be used (not: #{unknown.join(', ').truncate(80)}).") if unknown.any?

    unless AgentRunner.enabled?
      return render json: { notice: "AI runs aren't switched on for this site yet. You can still test each tool by hand below, and step through a recorded sample run.", usage: usage }
    end

    LabUsage.consume!(current_user, "agent_run")
    runner = AgentRunner.new(before_call: -> { LabUsage.consume!(current_user, "agent_llm") })
    result = runner.run(system_prompt: system_prompt, task: task, tools: tools, max_steps: params[:max_steps])
    render json: {
      timeline: result.timeline, stop_reason: result.stop_reason, model: result.model,
      llm_calls: result.llm_calls, tool_calls: result.tool_calls,
      tokens: { input: result.input_tokens, output: result.output_tokens },
      tools: tools.map(&:name), usage: usage
    }
  end

  # Lets learners call a tool directly, exactly as the agent would, without any model call.
  def tool
    name = params[:name].to_s
    return error("Pick a tool from the list.") unless AgentTools::NAMES.include?(name)
    raw = params[:input].to_s
    return error("Keep the input under #{MAX_TOOL_INPUT} characters.") if raw.length > MAX_TOOL_INPUT
    input = begin
      JSON.parse(raw)
    rescue JSON::ParserError
      return error("The input isn't valid JSON. Use double quotes, like {\"city\": \"Boston\"}.")
    end

    LabUsage.consume!(current_user, "agent_tool")
    text, failed = AgentTools.call(name, input)
    render json: { name: name, input: input, result: JSON.parse(text), error: failed, usage: usage }
  end

  private

  def error(message) = render(json: { error: message }, status: :unprocessable_entity)

  def usage
    %w[agent_run agent_llm agent_tool].to_h do |kind|
      [kind.delete_prefix("agent_"), { used: LabUsage.used(current_user, kind), limit: LabUsage.limit_for(kind) }]
    end
  end
end

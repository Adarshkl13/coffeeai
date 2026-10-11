# JSON API behind the Prompt Lab widget (app/javascript/controllers/prompt_lab_controller.js).
# Learners write a system prompt and a template with {{input}}, add test cases with checks, and run
# them all through Claude. Each answer is graded by PromptGrader (plain Ruby). Runs and model calls
# are capped per learner per day (LabUsage).
class PromptLabController < ApplicationController
  before_action :authenticate_user!
  before_action :require_plan_json, only: %i[run try]

  MAX_PROMPT = 4_000
  MAX_INPUT = 2_000
  MAX_CASES = 6

  # System prompt for the "Try it with AI" box in non-coding lessons (marketing, finance, ...).
  TRY_SYSTEM = <<~TEXT.freeze
    You are helping a learner practise using AI on an online course about using AI at work (for example marketing and finance).
    Answer the learner's prompt helpfully in simple, clear English. Keep the answer under about 300 words unless the prompt asks for a longer piece.
    If the prompt has placeholders like [your product], invent sensible example details and say that you did.
    For money, tax, investing, insurance or legal topics, give general education only, not personal advice, and suggest checking real decisions with a qualified professional.
  TEXT

  rescue_from LabUsage::LimitReached do |e|
    render json: { error: e.message, usage: usage }, status: :too_many_requests
  end

  def show
    render json: {
      generation: { enabled: PromptRunner.enabled?, model: PromptRunner::MODEL },
      checks: PromptGrader::CHECKS,
      usage: usage,
      limits: { cases: MAX_CASES, prompt: MAX_PROMPT, input: MAX_INPUT }
    }
  end

  def run
    system_prompt = params[:system_prompt].to_s.strip
    template = params[:template].to_s
    cases = Array(request.request_parameters["cases"]).first(MAX_CASES + 1)

    return error("Write a user message template.") if template.strip.empty?
    return error("The template must contain {{input}}, where each test input goes.") unless template.include?("{{input}}")
    return error("Keep the system prompt and template under #{MAX_PROMPT} characters each.") if [system_prompt, template].any? { |t| t.length > MAX_PROMPT }
    return error("Add at least one test case.") if cases.empty?
    return error("Use at most #{MAX_CASES} test cases.") if cases.size > MAX_CASES

    cases = cases.map.with_index(1) do |c, i|
      c = c.is_a?(Hash) ? c : {}
      input, type, value = c["input"].to_s, c["check"].to_s, c["value"].to_s
      return error("Test case #{i}: write an input.") if input.strip.empty?
      return error("Test case #{i}: keep the input under #{MAX_INPUT} characters.") if input.length > MAX_INPUT
      if (msg = PromptGrader.invalid(type, value))
        return error("Test case #{i}: #{msg}")
      end
      { input: input, check: type, value: value }
    end

    unless PromptRunner.enabled?
      return render json: {
        dry_run: true, usage: usage,
        notice: "AI runs aren't switched on for this site yet. Below is exactly what would be sent for each test case.",
        results: cases.map { |c| c.merge(prompt: PromptRunner.fill(template, c[:input])) }
      }
    end

    LabUsage.consume!(current_user, "prompt_run")
    runner = PromptRunner.new
    tokens = { input: 0, output: 0 }
    model = nil
    results = cases.map do |c|
      filled = PromptRunner.fill(template, c[:input])
      begin
        LabUsage.consume!(current_user, "prompt_llm")
      rescue LabUsage::LimitReached => e
        next c.merge(prompt: filled, pass: false, error: e.message)
      end
      r = runner.run(system_prompt, filled)
      model ||= r.model.presence
      tokens[:input] += r.input_tokens.to_i
      tokens[:output] += r.output_tokens.to_i
      next c.merge(prompt: filled, pass: false, error: r.error) if r.error
      grade = PromptGrader.grade(r.output, c[:check], c[:value])
      c.merge(prompt: filled, output: r.output, pass: grade.pass, reason: grade.reason)
    end

    render json: { results: results, passed: results.count { |r| r[:pass] }, total: results.size,
                   model: model || PromptRunner::MODEL, tokens: tokens, usage: usage }
  end

  # One free-form prompt from a lesson's "Try it with AI" box (ai_try_controller.js). One model call.
  def try
    prompt = params[:prompt].to_s.strip
    return error("Write a prompt first.") if prompt.empty?
    return error("Keep the prompt under #{MAX_PROMPT} characters.") if prompt.length > MAX_PROMPT

    unless PromptRunner.enabled?
      return render json: { dry_run: true, usage: try_usage,
                            notice: "AI answers aren't switched on for this site yet. Copy the prompt and paste it into any AI assistant, such as Claude." }
    end

    LabUsage.consume!(current_user, "ai_try")
    r = PromptRunner.new.run(TRY_SYSTEM, prompt)
    return render(json: { error: r.error, usage: try_usage }, status: :bad_gateway) if r.error

    render json: { output: r.output, model: r.model, usage: try_usage }
  end

  private

  def try_usage = { used: LabUsage.used(current_user, "ai_try"), limit: LabUsage.limit_for("ai_try") }

  def error(message) = render(json: { error: message }, status: :unprocessable_entity)

  def usage
    { runs: { used: LabUsage.used(current_user, "prompt_run"), limit: LabUsage.limit_for("prompt_run") },
      calls: { used: LabUsage.used(current_user, "prompt_llm"), limit: LabUsage.limit_for("prompt_llm") } }
  end
end

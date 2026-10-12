require "anthropic"

# Runs one Prompt Lab prompt (system prompt + filled template) through the AI provider chosen on
# Admin › AI provider (Gemini, Claude or OpenAI; see AiProvider).
class PromptRunner
  MAX_TOKENS = 1_024   # lab answers are short; this also caps cost per test case

  Result = Struct.new(:output, :model, :stop_reason, :input_tokens, :output_tokens, :error, keyword_init: true)

  # The provider and model are chosen on Admin › AI provider (AiProvider).
  def self.enabled? = AiProvider.configured?
  def self.model = AiProvider.model

  # The user message for one test case: the template with {{input}} replaced.
  def self.fill(template, input) = template.gsub("{{input}}") { input }

  # Tests pass a fake: client (Anthropic), gemini (GeminiApi) or openai (OpenaiApi).
  def initialize(client: nil, gemini: nil, openai: nil)
    @client = client
    @gemini = gemini
    @openai = openai
  end

  def provider
    return :anthropic if @client
    return :gemini if @gemini
    return :openai if @openai
    AiProvider.current
  end

  def run(system_prompt, user_message)
    return run_with_gemini(system_prompt, user_message) if provider == :gemini
    return run_with_openai(system_prompt, user_message) if provider == :openai

    params = {
      model: AiProvider.model(:anthropic),
      max_tokens: MAX_TOKENS,
      messages: [{ role: "user", content: user_message }],
      output_config: { effort: "low" },   # short, well-defined tasks
      fallbacks: :default,
      betas: [:"server-side-fallback-2026-07-01"]
    }
    params[:system_] = system_prompt if system_prompt.present?
    message = client.beta.messages.create(**params)

    if message.stop_reason == :refusal
      return Result.new(error: "The model declined this test case.", model: message.model.to_s, stop_reason: "refusal")
    end

    text = message.content.select { |b| b.type == :text }.map(&:text).join.strip
    Result.new(output: text, model: message.model.to_s, stop_reason: message.stop_reason.to_s,
               input_tokens: message.usage.input_tokens, output_tokens: message.usage.output_tokens)
  rescue Anthropic::Errors::RateLimitError
    Result.new(error: "The AI service is busy right now. Please try again in a minute.")
  rescue Anthropic::Errors::AuthenticationError, Anthropic::Errors::PermissionDeniedError
    Result.new(error: "The AI service isn't configured correctly (check ANTHROPIC_API_KEY).")
  rescue Anthropic::Errors::APIConnectionError
    Result.new(error: "Couldn't reach the AI service. Please try again.")
  rescue Anthropic::Errors::APIStatusError => e
    Rails.logger.warn("[PromptLab] Claude API error #{e.status}: #{e.message}")
    Result.new(error: "The AI service returned an error (#{e.status}).")
  end

  private

  def run_with_gemini(system_prompt, user_message)
    gemini = @gemini || GeminiApi.new
    res = gemini.generate(system: system_prompt.presence, max_tokens: MAX_TOKENS, thinking: "low",
                          contents: [{ role: "user", parts: [{ text: user_message }] }])
    return Result.new(error: "The model declined this test case.", model: GeminiApi.model, stop_reason: "refusal") if GeminiApi.blocked?(res)
    input, output = GeminiApi.usage(res)
    Result.new(output: GeminiApi.text(res), model: res["modelVersion"].presence || GeminiApi.model,
               stop_reason: GeminiApi.finish_reason(res).downcase, input_tokens: input, output_tokens: output)
  rescue GeminiApi::Error => e
    Result.new(error: e.message)
  end

  def run_with_openai(system_prompt, user_message)
    api = @openai || OpenaiApi.new
    res = api.generate(system: system_prompt.presence, max_tokens: 2_048, input: [{ role: "user", content: user_message }])
    text = OpenaiApi.text(res)
    return Result.new(error: "The model declined this test case.", model: OpenaiApi.model, stop_reason: "refusal") if text.blank? && OpenaiApi.refused?(res)
    input, output = OpenaiApi.usage(res)
    Result.new(output: text, model: res["model"].presence || OpenaiApi.model, stop_reason: res["status"].to_s,
               input_tokens: input, output_tokens: output)
  rescue OpenaiApi::Error => e
    Result.new(error: e.message)
  end

  def client
    @client ||= Anthropic::Client.new(api_key: AiProvider.api_key(:anthropic), max_retries: 2, timeout: 60)
  end
end

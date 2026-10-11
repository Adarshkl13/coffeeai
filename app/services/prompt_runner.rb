require "anthropic"

# Runs one Prompt Lab prompt (system prompt + filled template) through Claude.
# Configure with ANTHROPIC_API_KEY; the model can be changed with PROMPT_LAB_MODEL.
class PromptRunner
  MODEL = ENV.fetch("PROMPT_LAB_MODEL", "claude-opus-5")
  MAX_TOKENS = 1_024   # lab answers are short; this also caps cost per test case

  Result = Struct.new(:output, :model, :stop_reason, :input_tokens, :output_tokens, :error, keyword_init: true)

  def self.enabled? = ENV["ANTHROPIC_API_KEY"].present?

  # The user message for one test case: the template with {{input}} replaced.
  def self.fill(template, input) = template.gsub("{{input}}") { input }

  def initialize(client: nil)
    @client = client
  end

  def run(system_prompt, user_message)
    params = {
      model: MODEL,
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

  def client
    @client ||= Anthropic::Client.new(max_retries: 2, timeout: 60)
  end
end

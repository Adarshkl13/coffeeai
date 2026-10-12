require "anthropic"
require "base64"

# Ask AI answers from Anthropic's Claude, streamed (used when the admin picks Anthropic on Admin › AI provider).
# Same interface as GeminiChat: stream(history, attachment:, web:) { |text| } returns a Result.
# Key: ANTHROPIC_API_KEY or credentials anthropic.api_key. Model: AiProvider.model(:anthropic).
class AnthropicChat
  MAX_TOKENS = 1_024   # the system prompt asks for 2-4 short sentences; this is a safety cap

  class Error < AiProvider::Error; end
  Result = GeminiChat::Result

  def self.enabled? = AiProvider.configured?(:anthropic)

  def initialize(client: nil)
    @client = client
  end

  # history: [{ role: "user" | "model", text: }], ending with the new question. Web search is Gemini-only.
  def stream(history, attachment: nil, web: false)
    messages = history.map { |m| { role: m[:role] == "model" ? "assistant" : "user", content: m[:text].to_s } }
    messages.last[:content] = [*attachment_blocks(attachment), { type: "text", text: messages.last[:content] }] if attachment && messages.any?
    stream = client.messages.stream(
      model: AiProvider.model(:anthropic), max_tokens: MAX_TOKENS, system_: GeminiChat::SYSTEM_PROMPT,
      messages: messages, output_config: { effort: "low" }
    )
    text = +""
    stream.text.each do |piece|
      text << piece
      yield piece if block_given?
    end
    message = stream.accumulated_message
    raise Error, "Sorry, I couldn't answer that safely. Please ask it in a different way." if message.stop_reason == :refusal && text.blank?
    raise Error, "The AI didn't send an answer. Please try again." if text.blank?
    Result.new(text: text, sources: [], suggestions: nil, finish_reason: message.stop_reason == :max_tokens ? "MAX_TOKENS" : "STOP")
  rescue Anthropic::Errors::RateLimitError
    raise Error, "The AI is busy right now. Please try again in a minute."
  rescue Anthropic::Errors::AuthenticationError, Anthropic::Errors::PermissionDeniedError
    raise Error, "The AI isn't set up correctly (check ANTHROPIC_API_KEY)."
  rescue Anthropic::Errors::APIConnectionError
    raise Error, "Couldn't reach the AI service. Please try again."
  rescue Anthropic::Errors::APIStatusError => e
    Rails.logger.warn("[AskAI] Claude API error #{e.status}: #{e.message}")
    raise Error, "The AI service returned an error (#{e.status})."
  end

  private

  def attachment_blocks(a)
    data = Base64.strict_encode64(a[:data])
    if a[:mime_type].start_with?("image/")
      [{ type: "image", source: { type: "base64", media_type: a[:mime_type], data: data } }]
    elsif a[:mime_type] == "application/pdf"
      [{ type: "document", source: { type: "base64", media_type: "application/pdf", data: data } }]
    else
      [{ type: "text", text: "File #{a[:name]}:\n#{a[:data].to_s.dup.force_encoding('UTF-8').scrub}" }]
    end
  end

  def client
    @client ||= Anthropic::Client.new(api_key: AiProvider.api_key(:anthropic), max_retries: 2, timeout: 60)
  end
end

# Ask AI answers from OpenAI, streamed (used when the admin picks OpenAI on Admin › AI provider).
# Same interface as GeminiChat: stream(history, attachment:, web:) { |text| } returns a Result.
class OpenaiChat
  MAX_TOKENS = 2_048   # OpenAI counts reasoning inside this limit; the system prompt keeps answers short

  Error = OpenaiApi::Error
  Result = GeminiChat::Result

  def self.enabled? = AiProvider.configured?(:openai)

  def initialize(api: nil)
    @api = api || OpenaiApi.new
  end

  # history: [{ role: "user" | "model", text: }], ending with the new question. Web search is Gemini-only.
  def stream(history, attachment: nil, web: false, &block)
    input = history.each_with_index.map do |m, i|
      if m[:role] == "model" then { role: "assistant", content: m[:text].to_s }
      elsif i == history.size - 1 then OpenaiApi.user_message(m[:text].to_s, attachment)
      else { role: "user", content: m[:text].to_s }
      end
    end
    text = +""
    response = @api.stream(input: input, system: GeminiChat::SYSTEM_PROMPT, max_tokens: MAX_TOKENS) do |piece|
      text << piece
      block&.call(piece)
    end
    raise Error, "Sorry, I couldn't answer that safely. Please ask it in a different way." if text.blank? && OpenaiApi.refused?(response)
    raise Error, "The AI didn't send an answer. Please try again." if text.blank?
    Result.new(text: text, sources: [], suggestions: nil, finish_reason: OpenaiApi.cut_off?(response) ? "MAX_TOKENS" : "STOP")
  end
end

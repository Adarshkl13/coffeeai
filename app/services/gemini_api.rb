require "net/http"
require "json"

# One non-streaming call to Google's Gemini API (generateContent), used by the RAG, Prompt and Agent labs.
# Key and model come from AiProvider (Admin › AI provider).
class GeminiApi
  def self.model = AiProvider.model(:gemini)
  ENDPOINT = "#{GeminiChat::API_BASE}/v1beta/models/%s:generateContent"

  class Error < AiProvider::Error; end

  def self.enabled? = GeminiChat.enabled?

  # contents: Gemini "contents" (role user/model, parts). tools: [{ name:, description:, input_schema: }].
  # Returns the parsed response Hash. Raises Error with a learner-friendly message.
  def generate(contents:, system: nil, tools: nil, max_tokens: 1_024, temperature: nil, thinking: "low", thoughts: false)
    config = { maxOutputTokens: max_tokens, thinkingConfig: thinking_config(thinking, thoughts) }
    config[:temperature] = temperature if temperature
    body = { contents: contents, generationConfig: config }
    body[:system_instruction] = { parts: [{ text: system }] } if system.present?
    if tools.present?
      body[:tools] = [{ functionDeclarations: tools.map { |t| { name: t[:name], description: t[:description], parameters: t[:input_schema] } } }]
    end
    post(body)
  end

  # Text of the first candidate, without thought summaries.
  def self.text(response) = parts(response).reject { |p| p["thought"] }.filter_map { |p| p["text"] }.join.strip
  def self.parts(response) = Array(response.dig("candidates", 0, "content", "parts"))
  def self.finish_reason(response) = response.dig("candidates", 0, "finishReason").to_s
  def self.blocked?(response)
    response.dig("promptFeedback", "blockReason").present? || finish_reason(response).in?(%w[SAFETY PROHIBITED_CONTENT BLOCKLIST SPII])
  end
  def self.usage(response)
    u = response["usageMetadata"] || {}
    [u["promptTokenCount"].to_i, u["candidatesTokenCount"].to_i + u["thoughtsTokenCount"].to_i]
  end

  private

  # Gemini 3 models take thinkingLevel; Gemini 2.5 models take thinkingBudget.
  def thinking_config(level, thoughts)
    base = self.class.model.match?(/gemini-2\./) ? { thinkingBudget: (level == "minimal" ? 0 : 1_024) } : { thinkingLevel: level }
    thoughts ? base.merge(includeThoughts: true) : base
  end

  def post(body)
    uri = URI(format(ENDPOINT, self.class.model))
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == "https"
    http.open_timeout = 10
    http.read_timeout = 90
    req = Net::HTTP::Post.new(uri)
    req["Content-Type"] = "application/json"
    req["x-goog-api-key"] = GeminiChat.api_key   # header, so the key never appears in URLs or logs
    req.body = JSON.generate(body)
    res = http.request(req)
    raise Error, error_message(res) unless res.is_a?(Net::HTTPSuccess)
    JSON.parse(res.body)
  rescue Net::OpenTimeout, Net::ReadTimeout, SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET, OpenSSL::SSL::SSLError
    raise Error, "Couldn't reach the AI service. Please try again."
  rescue JSON::ParserError
    raise Error, "The AI service sent an answer we couldn't read. Please try again."
  end

  def error_message(res)
    detail = (JSON.parse(res.body.to_s).dig("error", "message") rescue nil).to_s
    Rails.logger.warn("[Labs] Gemini API error #{res.code}: #{detail.truncate(300)}")
    case res.code.to_i
    when 429 then "The AI is busy or the daily limit is used up. Please try again later."
    when 400 then detail.match?(/api key/i) ? "The AI service isn't configured correctly (check GEMINI_API_KEY)." : "The AI couldn't read this request (#{detail.truncate(120)})."
    when 401, 403 then "The AI service isn't configured correctly (check GEMINI_API_KEY)."
    when 404 then "The AI model #{self.class.model} wasn't found. Check the model name on Admin › AI provider."
    else "The AI service returned an error (#{res.code})."
    end
  end
end

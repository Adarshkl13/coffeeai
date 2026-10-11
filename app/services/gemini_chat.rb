require "net/http"
require "json"
require "base64"

# Streams answers from Google's Gemini API for the "Ask CoffeeBean AI" study assistant (AskMessagesController).
# Configure the key with GEMINI_API_KEY (or `gemini: { api_key: ... }` in Rails credentials).
# The model can be changed with GEMINI_MODEL, for example gemini-3.5-flash-lite for higher free-tier limits.
class GeminiChat
  MODEL = ENV.fetch("GEMINI_MODEL", "gemini-3.5-flash")
  API_BASE = ENV.fetch("GEMINI_API_BASE", "https://generativelanguage.googleapis.com")   # change only for a proxy or a local test server
  ENDPOINT = "#{API_BASE}/v1beta/models/%s:streamGenerateContent?alt=sse"
  MAX_OUTPUT_TOKENS = 8_192   # Gemini counts its thinking inside this limit, so keep room for a full answer

  SYSTEM_PROMPT = <<~TEXT.freeze
    You are a helpful AI study assistant.
    Your purpose is only to help users learn, study, practice, and understand educational topics.
    You can help with:
    - Explaining school, college, and professional topics
    - Programming and coding questions
    - Math and science
    - English and language learning
    - Business, finance, marketing, and technology concepts
    - Summarizing educational content
    - Creating quizzes and practice questions
    - Helping users understand documents, images, notes, and lessons
    - Giving examples and step-by-step explanations
    Rules:
    - Answer clearly and in simple language.
    - Prefer teaching and explaining instead of only giving the final answer.
    - Give examples when they make the topic easier to understand.
    - If the user does not understand, explain it in an easier way.
    - If you are unsure about something, clearly say you are unsure.
    - Do not invent facts or pretend to know information you do not have.
    - Stay focused on education and study-related requests.
    - Politely refuse requests that are unrelated to learning or education.
    - For medical, legal, or financial topics, provide educational information only and avoid pretending to be a professional.
    Formatting: use short paragraphs, **bold** for key words, "-" bullet lists, numbered steps, and fenced ``` code blocks for code.
  TEXT

  class Error < StandardError; end
  Result = Struct.new(:text, :sources, :suggestions, :finish_reason, keyword_init: true)

  def self.api_key = ENV["GEMINI_API_KEY"].presence || Rails.application.credentials.dig(:gemini, :api_key).presence
  def self.enabled? = api_key.present?

  # history: [{ role: "user" | "model", text: "..." }, ...], ending with the new question.
  # attachment: { mime_type:, data: (raw bytes) } sent with the new question, or nil.
  # Yields each new piece of answer text as it arrives. Returns a Result.
  def stream(history, attachment: nil, web: false)
    text = +""
    sources = []
    suggestions = nil
    finish = nil
    buffer = +""

    @web = web
    request_stream(body(history, attachment, web)) do |chunk|
      buffer << chunk
      while (i = buffer.index("\n"))
        line = buffer.slice!(0..i).strip
        next unless line.start_with?("data:")
        data = JSON.parse(line.delete_prefix("data:").strip) rescue next
        if (reason = data.dig("promptFeedback", "blockReason"))
          raise Error, "Sorry, I can't help with that request (#{reason.downcase})."
        end
        candidate = Array(data["candidates"]).first || {}
        Array(candidate.dig("content", "parts")).each do |part|
          next if part["thought"] || part["text"].blank?
          text << part["text"]
          yield part["text"] if block_given?
        end
        finish = candidate["finishReason"] if candidate["finishReason"]
        if (meta = candidate["groundingMetadata"])
          sources = Array(meta["groundingChunks"]).filter_map { |c| c["web"]&.slice("title", "uri") }.uniq { |s| s["uri"] }
          suggestions = meta.dig("searchEntryPoint", "renderedContent").presence || suggestions
        end
      end
    end

    raise Error, "Sorry, I couldn't answer that safely. Please ask it in a different way." if text.blank? && finish.in?(%w[SAFETY PROHIBITED_CONTENT BLOCKLIST SPII])
    raise Error, "The AI didn't send an answer. Please try again." if text.blank?
    Result.new(text: text, sources: sources, suggestions: suggestions, finish_reason: finish)
  end

  private

  def body(history, attachment, web)
    contents = history.map { |m| { role: m[:role], parts: [{ text: m[:text] }] } }
    if attachment && contents.last
      contents.last[:parts].unshift({ inline_data: { mime_type: attachment[:mime_type], data: Base64.strict_encode64(attachment[:data]) } })
    end
    b = {
      system_instruction: { parts: [{ text: SYSTEM_PROMPT }] },
      contents: contents,
      generationConfig: { maxOutputTokens: MAX_OUTPUT_TOKENS }
    }
    b[:tools] = [{ google_search: {} }] if web
    b
  end

  def request_stream(payload)
    uri = URI(format(ENDPOINT, MODEL))
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = uri.scheme == "https"
    http.open_timeout = 10
    http.read_timeout = 120
    req = Net::HTTP::Post.new(uri)
    req["Content-Type"] = "application/json"
    req["x-goog-api-key"] = self.class.api_key   # header, so the key never appears in URLs or logs
    req.body = JSON.generate(payload)

    http.request(req) do |res|
      raise Error, error_message(res) unless res.is_a?(Net::HTTPSuccess)
      res.read_body { |chunk| yield chunk }
    end
  rescue Net::OpenTimeout, Net::ReadTimeout, SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET, OpenSSL::SSL::SSLError
    raise Error, "Couldn't reach the AI service. Please try again."
  end

  def error_message(res)
    detail = (JSON.parse(res.body.to_s).dig("error", "message") rescue nil).to_s
    Rails.logger.warn("[AskAI] Gemini API error #{res.code}: #{detail.truncate(300)}")
    case res.code.to_i
    when 429
      if @web && detail.match?(/quota/i)
        "Web search isn't available on this AI plan right now. Turn off \"Web\" and ask again."
      else
        "The AI is busy or the free daily limit is used up. Please try again in a minute."
      end
    when 400
      detail.match?(/api key/i) ? "The AI isn't set up correctly (check GEMINI_API_KEY)." : "The AI couldn't read that request. If you attached a file, try a smaller or different file."
    when 401, 403 then "The AI isn't set up correctly (check GEMINI_API_KEY)."
    when 404 then "The AI model #{MODEL} wasn't found (check GEMINI_MODEL)."
    else "The AI service returned an error (#{res.code}). Please try again."
    end
  end
end

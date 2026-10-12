require "net/http"
require "json"
require "base64"

# OpenAI's Responses API (POST /v1/responses), used when the admin picks OpenAI on Admin › AI provider.
# Key: OPENAI_API_KEY or credentials openai.api_key. Model: AiProvider.model(:openai).
#   generate(...)  one request, returns the parsed response Hash (labs)
#   stream(...)    yields text deltas, returns the final response Hash (Ask AI)
# Responses are not stored at OpenAI (store: false).
class OpenaiApi
  API_BASE = ENV.fetch("OPENAI_API_BASE", "https://api.openai.com")
  ENDPOINT = "#{API_BASE}/v1/responses"

  class Error < AiProvider::Error; end

  def self.model = AiProvider.model(:openai)
  def self.enabled? = AiProvider.configured?(:openai)

  # input: Responses API input items. tools: [{ name:, description:, input_schema: }].
  def generate(input:, system: nil, tools: nil, max_tokens: 2_048)
    body = request_body(input, system, tools, max_tokens)
    body[:include] = ["reasoning.encrypted_content"]   # lets reasoning items be sent back in an agent loop
    res = http.request(build_request(body))
    raise Error, error_message(res.code.to_i, res.body) unless res.is_a?(Net::HTTPSuccess)
    JSON.parse(res.body)
  rescue Net::OpenTimeout, Net::ReadTimeout, SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET, OpenSSL::SSL::SSLError
    raise Error, "Couldn't reach the AI service. Please try again."
  rescue JSON::ParserError
    raise Error, "The AI service sent an answer we couldn't read. Please try again."
  end

  def stream(input:, system: nil, max_tokens: 2_048)
    body = request_body(input, system, nil, max_tokens).merge(stream: true)
    final = nil
    buffer = +""
    http.request(build_request(body)) do |res|
      raise Error, error_message(res.code.to_i, res.read_body) unless res.is_a?(Net::HTTPSuccess)
      res.read_body do |chunk|
        buffer << chunk
        while (i = buffer.index("\n"))
          line = buffer.slice!(0..i).strip
          next unless line.start_with?("data:")
          data = JSON.parse(line.delete_prefix("data:").strip) rescue next
          case data["type"]
          when "response.output_text.delta" then yield data["delta"].to_s if block_given?
          when "response.completed", "response.incomplete" then final = data["response"]
          when "response.failed" then raise Error, "The AI couldn't finish this answer. Please try again."
          when "error" then raise Error, "The AI service returned an error: #{data.dig('message') || data.dig('error', 'message')}".truncate(200)
          end
        end
      end
    end
    final || {}
  rescue Net::OpenTimeout, Net::ReadTimeout, SocketError, Errno::ECONNREFUSED, Errno::ECONNRESET, OpenSSL::SSL::SSLError
    raise Error, "Couldn't reach the AI service. Please try again."
  end

  # ── Reading a response ──
  def self.output(response) = Array(response["output"])
  def self.text(response)
    output(response).select { |o| o["type"] == "message" }
                    .flat_map { |o| Array(o["content"]) }
                    .select { |c| c["type"] == "output_text" }.map { |c| c["text"] }.join.strip
  end
  def self.function_calls(response) = output(response).select { |o| o["type"] == "function_call" }
  def self.refused?(response)
    output(response).any? { |o| Array(o["content"]).any? { |c| c["type"] == "refusal" } }
  end
  def self.cut_off?(response) = response["status"] == "incomplete"
  def self.usage(response)
    u = response["usage"] || {}
    [u["input_tokens"].to_i, u["output_tokens"].to_i]
  end

  # One user message, with an optional attachment { mime_type:, data:, name: }.
  def self.user_message(text, attachment = nil)
    parts = []
    if attachment
      encoded = "data:#{attachment[:mime_type]};base64,#{Base64.strict_encode64(attachment[:data])}"
      parts << if attachment[:mime_type].start_with?("image/")
                 { type: "input_image", image_url: encoded }
               elsif attachment[:mime_type] == "application/pdf"
                 { type: "input_file", filename: attachment[:name].presence || "file.pdf", file_data: encoded }
               else
                 { type: "input_text", text: "File #{attachment[:name]}:\n#{attachment[:data].to_s.force_encoding('UTF-8').scrub}" }
               end
    end
    parts << { type: "input_text", text: text }
    { role: "user", content: parts }
  end

  private

  def request_body(input, system, tools, max_tokens)
    body = { model: self.class.model, input: input, max_output_tokens: max_tokens, store: false }
    body[:instructions] = system if system.present?
    if tools.present?
      body[:tools] = tools.map { |t| { type: "function", name: t[:name], description: t[:description], parameters: t[:input_schema] } }
    end
    body
  end

  def http
    uri = URI(ENDPOINT)
    Net::HTTP.new(uri.host, uri.port).tap do |h|
      h.use_ssl = uri.scheme == "https"
      h.open_timeout = 10
      h.read_timeout = 120
    end
  end

  def build_request(body)
    req = Net::HTTP::Post.new(URI(ENDPOINT))
    req["Content-Type"] = "application/json"
    req["Authorization"] = "Bearer #{AiProvider.api_key(:openai)}"   # header only, never in URLs or logs
    req.body = JSON.generate(body)
    req
  end

  def error_message(code, body)
    detail = (JSON.parse(body.to_s).dig("error", "message") rescue nil).to_s
    Rails.logger.warn("[AI] OpenAI API error #{code}: #{detail.truncate(300)}")
    case code
    when 429 then "The AI is busy or the usage limit is reached. Please try again later."
    when 401, 403 then "The AI service isn't configured correctly (check OPENAI_API_KEY)."
    when 404 then "The AI model #{self.class.model} wasn't found. Check the model name on Admin › AI provider."
    when 400 then "The AI couldn't read this request (#{detail.truncate(120)})."
    else "The AI service returned an error (#{code})."
    end
  end
end

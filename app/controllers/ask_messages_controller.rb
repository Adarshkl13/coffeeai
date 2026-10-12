# Streams one answer from the study assistant as Server-Sent Events:
#   chat   { id, title, url }   the chat this question belongs to (signed-in users)
#   guest  { left }             questions a guest can still ask without an account
#   delta  { text }             the next piece of the answer
#   done   { sources, suggestions, cut_off }
#   error  { message }
# Signed-in users (no plan needed): questions and answers are saved in StudyChat / StudyMessage.
# Guests can ask GUEST_QUESTIONS questions; nothing is saved and the page sends the earlier messages itself.
# Files are sent to the AI provider chosen on Admin › AI provider (AiProvider) but never kept.
class AskMessagesController < ApplicationController
  include ActionController::Live

  MAX_TEXT = 8_000
  MAX_FILE = 7.megabytes
  HISTORY = 20   # earlier messages sent with each question, so follow-ups make sense
  GUEST_QUESTIONS = 3                                       # per browser, before logging in
  GUEST_IP_DAILY = ENV.fetch("ASK_AI_GUEST_IP_DAILY", 10).to_i  # per network per day, so clearing cookies doesn't give endless questions
  FILE_TYPES = {
    "image/png" => %w[.png], "image/jpeg" => %w[.jpg .jpeg], "image/webp" => %w[.webp],
    "application/pdf" => %w[.pdf], "text/plain" => %w[.txt], "text/markdown" => %w[.md], "text/csv" => %w[.csv]
  }.freeze

  def create
    text = params[:text].to_s.strip
    file = params[:file].presence
    web = ActiveModel::Type::Boolean.new.cast(params[:web]) || false

    return error("Type a question first.") if text.empty? && !file
    return error("Keep your question under #{MAX_TEXT} characters.") if text.length > MAX_TEXT
    attachment = nil
    if file
      return error("That file isn't supported.") unless file.respond_to?(:read)
      mime = mime_for(file)
      return error("You can attach images (PNG, JPG, WebP), PDFs or text files (TXT, MD, CSV).") unless mime
      return error("Files must be under #{MAX_FILE / 1.megabyte} MB.") if file.size > MAX_FILE
      attachment = { mime_type: mime, data: file.read, name: File.basename(file.original_filename.to_s).truncate(80) }
      text = "Please help me understand this file." if text.empty?
    end
    unless AiProvider.chat_class.enabled?
      key = AiProvider::PROVIDERS.dig(AiProvider.current, :env)
      return render json: { error: "The AI assistant isn't switched on yet. The site owner needs to add #{key}." }, status: :service_unavailable
    end
    web &&= AiProvider.web_search?   # web search is only available with Google Gemini

    return guest_answer(text, attachment, web) unless user_signed_in?

    chat = params[:chat_id].present? ? current_user.study_chats.find(params[:chat_id]) : nil
    LabUsage.consume!(current_user, "ask_ai")
    chat ||= current_user.study_chats.create!(title: StudyChat.title_from(text))
    chat.messages.create!(role: "user", content: text, attachment_name: attachment&.dig(:name), web: web)

    history = chat.messages.last(HISTORY).map do |m|
      note = m.attachment_name && m != chat.messages.last ? "[I attached a file earlier: #{m.attachment_name}]\n" : ""
      { role: m.role, text: note + m.content }
    end
    history.shift while history.first && history.first[:role] != "user"

    stream_answer(chat, history, attachment, web)
  rescue LabUsage::LimitReached
    render json: { error: "You have reached today's question limit. It resets tomorrow." }, status: :too_many_requests
  end

  private

  # A guest's question: counted, answered, not saved. The 4th question asks them to log in.
  def guest_answer(text, attachment, web)
    used = session[:ask_guest_questions].to_i
    ip_key = "ask-guest:#{request.remote_ip}:#{Date.current}"
    if used >= GUEST_QUESTIONS || Rails.cache.read(ip_key).to_i >= GUEST_IP_DAILY
      store_location_for(:user, ask_path)
      return render json: { error: "You have asked #{GUEST_QUESTIONS} questions as a guest. Log in or sign up to keep asking. It does not need a plan.", login: true },
                    status: :unauthorized
    end
    session[:ask_guest_questions] = used + 1
    Rails.cache.write(ip_key, Rails.cache.read(ip_key).to_i + 1, expires_in: 1.day)

    history = guest_history + [{ role: "user", text: text }]
    start_stream
    send_event("guest", left: GUEST_QUESTIONS - used - 1)
    stream_reply(history, attachment, web)
  end

  # Earlier guest messages, sent back by the page as JSON: [{ role: "user" | "model", text: "..." }].
  def guest_history
    list = JSON.parse(params[:history].to_s) rescue []
    list = Array(list).last(HISTORY).filter_map do |m|
      next unless m.is_a?(Hash) && StudyMessage::ROLES.include?(m["role"])
      { role: m["role"], text: m["text"].to_s.first(MAX_TEXT) }
    end
    list.shift while list.first && list.first[:role] != "user"
    list
  end

  def start_stream
    response.headers["Content-Type"] = "text/event-stream"
    response.headers["Cache-Control"] = "no-cache"
    response.headers["X-Accel-Buffering"] = "no"
    response.headers["Last-Modified"] = Time.now.httpdate   # stops Rack::ETag from buffering the stream
  end

  # Streams a guest answer (nothing is saved).
  def stream_reply(history, attachment, web)
    result = AiProvider.chat_class.new.stream(history, attachment: attachment, web: web) { |piece| send_event("delta", text: piece) }
    send_event("done", sources: result.sources, suggestions: result.suggestions, cut_off: result.finish_reason == "MAX_TOKENS")
  rescue AiProvider::Error => e
    send_event("error", message: e.message)
  rescue ActionController::Live::ClientDisconnected, IOError
    nil
  ensure
    response.stream.close
  end

  def stream_answer(chat, history, attachment, web)
    start_stream
    send_event("chat", id: chat.id, title: chat.title, url: ask_chat_path(chat))
    answer = +""
    begin
      result = AiProvider.chat_class.new.stream(history, attachment: attachment, web: web) do |piece|
        answer << piece
        send_event("delta", text: piece)
      end
      chat.messages.create!(role: "model", content: result.text, web: web, sources: result.sources.presence,
                            search_suggestions: result.suggestions)
      send_event("done", sources: result.sources, suggestions: result.suggestions,
                         cut_off: result.finish_reason == "MAX_TOKENS")
    rescue AiProvider::Error => e
      chat.messages.create!(role: "model", content: answer) if answer.present?
      send_event("error", message: e.message)
    end
  rescue ActionController::Live::ClientDisconnected, IOError
    chat.messages.create!(role: "model", content: answer) if answer.present? && chat.messages.last&.role == "user"
  ensure
    response.stream.close
  end

  def send_event(name, data)
    response.stream.write("event: #{name}\ndata: #{data.to_json}\n\n")
  end

  def mime_for(file)
    ext = File.extname(file.original_filename.to_s).downcase
    type = file.content_type.to_s
    return type if FILE_TYPES[type]&.include?(ext)
    FILE_TYPES.find { |_, exts| exts.include?(ext) }&.first
  end

  def error(message)
    render json: { error: message }, status: :unprocessable_entity
  end
end

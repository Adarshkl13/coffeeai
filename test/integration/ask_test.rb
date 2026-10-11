require "test_helper"

# Ask CoffeeBean AI: the study assistant page and its streamed answers. Gemini is replaced by fakes.
class AskTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  # Stands in for GeminiChat: records what it was asked and streams a fixed answer in two pieces.
  class FakeGemini
    attr_reader :calls

    def initialize(error: nil) = (@calls = []; @error = error)

    def stream(history, attachment: nil, web: false)
      @calls << { history: history, attachment: attachment, web: web }
      raise GeminiChat::Error, @error if @error
      yield "Machine learning is "
      yield "**learning from data**."
      GeminiChat::Result.new(text: "Machine learning is **learning from data**.", finish_reason: "STOP",
                             sources: web ? [{ "title" => "example.com", "uri" => "https://example.com" }] : [], suggestions: nil)
    end
  end

  setup do
    @user = users(:two).tap { |u| u.update!(access_until: 1.month.from_now) }   # has the paid plan
    @enabled = GeminiChat.method(:enabled?)
    GeminiChat.define_singleton_method(:enabled?) { true }
  end

  teardown { GeminiChat.define_singleton_method(:enabled?, @enabled) }

  def with_gemini(fake)
    original = GeminiChat.method(:new)
    GeminiChat.define_singleton_method(:new) { |*| fake }
    yield
  ensure
    GeminiChat.define_singleton_method(:new, original)
  end

  def events(body)
    body.split("\n\n").filter_map do |block|
      name = block[/^event: (.+)$/, 1]
      [name, JSON.parse(block[/^data: (.+)$/, 1])] if name
    end
  end

  test "the page is open to everyone and linked from the navbar" do
    get ask_path
    assert_response :success
    assert_select "h1", "CoffeeBean AI"
    assert_select ".ask-topic", 5
    assert_select ".site-nav a[href=?]", ask_path, text: "Ask AI"
    assert_select ".ask-side-empty a", "Log in"
  end

  test "signed-in users without a plan can ask" do
    no_plan = users(:one)
    assert_not no_plan.member?
    sign_in no_plan
    with_gemini(FakeGemini.new) { post ask_messages_path, params: { text: "Hi" } }
    assert_response :success
    assert_equal %w[chat delta delta done], events(response.body).map(&:first)
    assert_equal 1, no_plan.study_chats.count
  end

  test "guests get 3 questions, then must log in; nothing is saved" do
    fake = FakeGemini.new
    get ask_path
    assert_select ".ask-guest", /3 questions without an account/
    history = [{ role: "user", text: "What is AI?" }, { role: "model", text: "AI is..." }].to_json
    3.times do |i|
      with_gemini(fake) { post ask_messages_path, params: { text: "Question #{i + 1}", history: history } }
      assert_response :success
      ev = events(response.body)
      assert_equal %w[guest delta delta done], ev.map(&:first)
      assert_equal 2 - i, ev.first.last["left"]
    end
    assert_equal %w[user model user], fake.calls.last[:history].map { |m| m[:role] }
    assert_equal "Question 3", fake.calls.last[:history].last[:text]

    with_gemini(fake) { post ask_messages_path, params: { text: "Question 4" } }
    assert_response :unauthorized
    assert response.parsed_body["login"]
    assert_equal 3, fake.calls.size
    assert_equal 0, StudyChat.count
    get ask_path
    assert_select ".ask-guest a", "sign up"

    # After logging in they come back to Ask AI and can keep asking, with no plan.
    post user_session_path, params: { user: { email: "one@example.com", password: "password123" } }
    assert_redirected_to ask_path
    with_gemini(fake) { post ask_messages_path, params: { text: "Question 4" } }
    assert_response :success
  end

  test "streams an answer, saves the chat and counts one question" do
    sign_in @user
    fake = FakeGemini.new
    with_gemini(fake) { post ask_messages_path, params: { text: "What is machine learning?" } }
    assert_response :success
    assert_equal "text/event-stream", response.media_type

    ev = events(response.body)
    assert_equal %w[chat delta delta done], ev.map(&:first)
    chat = @user.study_chats.last
    assert_equal({ "id" => chat.id, "title" => "What is machine learning?", "url" => ask_chat_path(chat) }, ev.first.last)
    assert_equal 1, LabUsage.used(@user, "ask_ai")
    assert_equal [%w[user What\ is\ machine\ learning?], ["model", "Machine learning is **learning from data**."]],
                 chat.messages.map { |m| [m.role, m.content] }
    assert_equal [{ role: "user", text: "What is machine learning?" }], fake.calls.first[:history]

    # A follow-up in the same chat sends the earlier messages too, and can use the web.
    with_gemini(fake) { post ask_messages_path, params: { text: "Give an example", chat_id: chat.id, web: "1" } }
    assert_equal %w[user model user], fake.calls.last[:history].map { |m| m[:role] }
    assert fake.calls.last[:web]
    assert_equal [{ "title" => "example.com", "uri" => "https://example.com" }], chat.messages.reload.last.sources

    get ask_chat_path(chat)
    assert_response :success
    assert_select ".ask-chat.is-active .ask-chat-title", "What is machine learning?"
    assert_select ".ask-msg-user", 2
    assert_select ".ask-md[data-md]", 2
  end

  test "sends an attached file to Gemini but only keeps its name" do
    sign_in @user
    fake = FakeGemini.new
    file = Rack::Test::UploadedFile.new(StringIO.new("Photosynthesis makes food from light."), "text/plain", original_filename: "notes.txt")
    with_gemini(fake) { post ask_messages_path, params: { file: file } }
    assert_response :success
    sent = fake.calls.first
    assert_equal "text/plain", sent[:attachment][:mime_type]
    assert_equal "Photosynthesis makes food from light.", sent[:attachment][:data]
    assert_equal "notes.txt", @user.study_chats.last.messages.first.attachment_name

    bad = Rack::Test::UploadedFile.new(StringIO.new("MZ"), "application/octet-stream", original_filename: "tool.exe")
    post ask_messages_path, params: { file: bad }
    assert_response :unprocessable_entity
  end

  test "errors are sent as events, and other people's chats are private" do
    sign_in @user
    with_gemini(FakeGemini.new(error: "The AI is busy.")) { post ask_messages_path, params: { text: "Hi" } }
    assert_equal ["chat", "error"], events(response.body).map(&:first)
    assert_equal "The AI is busy.", events(response.body).last.last["message"]

    other = users(:one).study_chats.create!(title: "Secret")
    get ask_chat_path(other)
    assert_response :not_found
    post ask_messages_path, params: { text: "Hi", chat_id: other.id }
    assert_response :not_found
  end

  test "validation, missing key and the daily limit" do
    sign_in @user
    post ask_messages_path, params: { text: "  " }
    assert_response :unprocessable_entity
    post ask_messages_path, params: { text: "x" * 8001 }
    assert_response :unprocessable_entity

    GeminiChat.define_singleton_method(:enabled?) { false }
    post ask_messages_path, params: { text: "Hi" }
    assert_response :service_unavailable
    assert_match(/GEMINI_API_KEY/, response.parsed_body["error"])
    GeminiChat.define_singleton_method(:enabled?) { true }

    LabUsage.create!(user: @user, kind: "ask_ai", day: Date.current, count: LabUsage.limit_for("ask_ai"))
    with_gemini(FakeGemini.new) { post ask_messages_path, params: { text: "Hi" } }
    assert_response :too_many_requests
    assert_equal 0, @user.study_chats.count
  end

  test "rename and delete a chat" do
    sign_in @user
    chat = @user.study_chats.create!(title: "Old")
    patch "/ask/#{chat.id}", params: { title: "  Python loops  " }, as: :json
    assert_equal "Python loops", response.parsed_body["title"]
    delete "/ask/#{chat.id}", as: :json
    assert_response :no_content
    assert_not StudyChat.exists?(chat.id)
  end
end

# GeminiChat's own streaming parser, fed with Server-Sent Events cut at awkward places.
class GeminiChatTest < ActiveSupport::TestCase
  class Canned < GeminiChat
    attr_reader :payload

    def initialize(chunks) = (@chunks = chunks)

    private

    def request_stream(payload)
      @payload = payload
      @chunks.each { |c| yield c }
    end
  end

  def sse(obj) = "data: #{obj.to_json}\r\n\r\n"

  test "joins streamed text, skips thoughts and reads web sources" do
    stream = sse(candidates: [{ content: { parts: [{ text: "plan", thought: true }, { text: "Hello " }] } }]) +
             sse(candidates: [{ content: { parts: [{ text: "world" }] }, finishReason: "STOP",
                                groundingMetadata: { groundingChunks: [{ web: { uri: "https://a.example", title: "a.example" } }],
                                                     searchEntryPoint: { renderedContent: "<div>chips</div>" } } }])
    gemini = Canned.new(stream.scan(/.{1,7}/m))   # tiny pieces, so lines arrive split
    pieces = []
    result = gemini.stream([{ role: "user", text: "Hi" }], web: true) { |t| pieces << t }

    assert_equal ["Hello ", "world"], pieces
    assert_equal "Hello world", result.text
    assert_equal [{ "uri" => "https://a.example", "title" => "a.example" }], result.sources
    assert_equal "<div>chips</div>", result.suggestions
    assert_equal [{ google_search: {} }], gemini.payload[:tools]
    assert_match(/helpful AI study assistant/, gemini.payload.dig(:system_instruction, :parts, 0, :text))
  end

  test "puts an attachment before the question and reports blocked prompts" do
    gemini = Canned.new([sse(candidates: [{ content: { parts: [{ text: "ok" }] } }])])
    gemini.stream([{ role: "user", text: "Explain" }], attachment: { mime_type: "image/png", data: "PNG" })
    parts = gemini.payload[:contents].last[:parts]
    assert_equal({ inline_data: { mime_type: "image/png", data: Base64.strict_encode64("PNG") } }, parts.first)
    assert_equal({ text: "Explain" }, parts.last)
    assert_nil gemini.payload[:tools]

    blocked = Canned.new([sse(promptFeedback: { blockReason: "SAFETY" })])
    assert_raises(GeminiChat::Error) { blocked.stream([{ role: "user", text: "x" }]) }
  end
end

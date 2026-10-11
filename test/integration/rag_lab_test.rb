require "test_helper"

# Runs against a real Qdrant (QDRANT_URL, default localhost:6333); skipped when none is reachable.
# Claude is stubbed, so no API key is needed.
class RagLabTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @qdrant = QdrantClient.new
    begin
      @qdrant.list_collections
    rescue QdrantClient::Unavailable
      skip "Qdrant is not running"
    end
    @user = users(:two).tap { |u| u.update!(access_until: 1.month.from_now) }   # has the paid plan
    sign_in @user
    post rag_lab_reset_path, as: :json
  end

  teardown do
    post rag_lab_reset_path, as: :json if @qdrant && @user
  end

  # Temporarily replace a class method (minitest/mock isn't bundled with this Minitest version)
  def stub_class_method(klass, name, value)
    original = klass.method(name)
    klass.define_singleton_method(name) { |*| value.respond_to?(:call) && !value.is_a?(Struct) ? value.call : value }
    yield
  ensure
    klass.define_singleton_method(name, original)
  end

  def vec(seed)
    rng = Random.new(seed)
    Array.new(384) { rng.rand - 0.5 }
  end

  def add_doc(name, texts, seeds)
    post rag_lab_documents_path, as: :json, params: {
      name: name, chunk_size: 300, chunk_overlap: 50,
      chunks: texts.zip(seeds).map { |t, s| { text: t, vector: vec(s) } }
    }
  end

  FakeAnswerer = Struct.new(:calls) do
    def answer(question, chunks)
      calls << [question, chunks]
      RagAnswerer::Result.new(answer: "Refunds are allowed within 7 days [1].", model: "claude-opus-5",
                              stop_reason: "end_turn", input_tokens: 120, output_tokens: 12)
    end
  end

  test "documents are stored as chunks in a collection named after the user" do
    add_doc("policy.md", ["Refunds within 7 days.", "Certificates after every lesson."], [1, 2])
    assert_response :success
    doc = response.parsed_body["documents"].first
    assert_equal ["policy.md", 2], [doc["name"], doc["chunks_count"]]
    assert_equal 2, @qdrant.count("#{RagLabCollection.prefix}#{@user.id}")
  end

  test "ask retrieves chunks and returns a cited answer" do
    add_doc("policy.md", ["Refunds within 7 days.", "Certificates after every lesson."], [1, 2])
    fake = FakeAnswerer.new([])
    stub_class_method(RagAnswerer, :enabled?, true) do
      stub_class_method(RagAnswerer, :new, fake) do
        post rag_lab_ask_path, as: :json, params: { question: "refund?", vector: vec(1), top_k: 2, threshold: 0.2 }
      end
    end
    assert_response :success
    body = response.parsed_body
    assert_equal "Refunds within 7 days.", body["chunks"].first["text"]
    assert_in_delta 1.0, body["chunks"].first["score"], 1e-3
    assert_equal 1, body["used"], "only the chunk above the threshold is sent to the model"
    assert_includes body["prompt"], %(<source id="1" document="policy.md">)
    assert_equal "Refunds are allowed within 7 days [1].", body["answer"]
    assert_equal 1, fake.calls.first.last.size
    assert_equal 1, body.dig("usage", "answers", "used")
  end

  test "without an API key only retrieval is shown" do
    add_doc("policy.md", ["Refunds within 7 days."], [1])
    stub_class_method(RagAnswerer, :enabled?, false) do
      post rag_lab_ask_path, as: :json, params: { question: "refund?", vector: vec(1), top_k: 3, threshold: 0 }
    end
    body = response.parsed_body
    assert_nil body["answer"]
    assert_match(/aren't switched on/, body["notice"])
    assert_equal 1, body["chunks"].size
  end

  test "nothing above the threshold means no model call" do
    add_doc("policy.md", ["Refunds within 7 days."], [1])
    stub_class_method(RagAnswerer, :enabled?, true) do
      stub_class_method(RagAnswerer, :new, -> { flunk "model must not be called" }) do
        post rag_lab_ask_path, as: :json, params: { question: "x", vector: vec(99), top_k: 3, threshold: 0.99 }
      end
    end
    assert response.parsed_body["skipped_model"]
  end

  test "the daily answer limit still returns retrieval" do
    add_doc("policy.md", ["Refunds within 7 days."], [1])
    LabUsage.create!(user: @user, kind: "rag_answer", day: Date.current, count: LabUsage.limit_for("rag_answer"))
    stub_class_method(RagAnswerer, :enabled?, true) do
      post rag_lab_ask_path, as: :json, params: { question: "refund?", vector: vec(1), top_k: 1, threshold: 0 }
    end
    assert_response :success
    assert_match(/AI answers reached/, response.parsed_body["notice"])
    assert_equal 1, response.parsed_body["chunks"].size
  end

  test "deleting a document removes its chunks" do
    add_doc("a.md", ["one", "two"], [1, 2])
    add_doc("b.md", ["three"], [3])
    id = response.parsed_body["documents"].find { |d| d["name"] == "a.md" }["id"]
    delete rag_lab_document_path(id), as: :json
    assert_equal ["b.md"], response.parsed_body["documents"].map { |d| d["name"] }
    assert_equal 1, @qdrant.count("#{RagLabCollection.prefix}#{@user.id}")
  end

  test "limits and validation" do
    add_doc("", ["x"], [1])
    assert_response :unprocessable_entity
    post rag_lab_documents_path, as: :json, params: { name: "bad", chunk_size: 300, chunk_overlap: 50, chunks: [{ text: "x", vector: [1, 2] }] }
    assert_response :unprocessable_entity
    5.times { |i| add_doc("d#{i}", ["t#{i}"], [i]) }
    add_doc("sixth", ["t"], [9])
    assert_response :unprocessable_entity
  end

  test "cleanup job removes stale RAG labs" do
    add_doc("a.md", ["one"], [1])
    RagLabCollection.update_all(last_used_at: 31.days.ago)
    LabCleanupJob.perform_now
    refute @qdrant.collection_exists?("#{RagLabCollection.prefix}#{@user.id}")
    assert_nil RagLabCollection.find_by(user: @user)
  end
end

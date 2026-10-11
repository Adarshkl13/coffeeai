require "test_helper"

# Runs against a real Qdrant (QDRANT_URL, default localhost:6333); skipped when none is reachable.
class VectorLabTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @qdrant = QdrantClient.new
    begin
      @qdrant.list_collections
    rescue QdrantClient::Unavailable
      skip "Qdrant is not running"
    end
    @user = users(:one)
    sign_in @user
    post vector_lab_reset_path, as: :json
  end

  teardown do
    post vector_lab_reset_path, as: :json if @qdrant && @user
  end

  def vec(seed, scale: 1.0)
    rng = Random.new(seed)
    Array.new(384) { (rng.rand - 0.5) * scale }
  end

  test "collections are prefixed with the user id and texts go into every collection" do
    post vector_lab_collections_path, params: { metric: "cosine" }, as: :json
    post vector_lab_collections_path, params: { metric: "dot" }, as: :json
    assert_response :success
    names = response.parsed_body["collections"].map { |c| c["name"] }
    assert_equal ["#{VectorLabCollection.prefix}#{@user.id}_cosine", "#{VectorLabCollection.prefix}#{@user.id}_dot"], names

    post vector_lab_points_path, params: { text: "cats purr", vector: vec(1, scale: 4) }, as: :json
    assert_response :success
    body = response.parsed_body
    assert_equal [1, 1], body["collections"].map { |c| c["count"] }
    assert_in_delta 1.0, body.dig("added", "cosine", "norm"), 0.001, "Qdrant normalises Cosine vectors"
    assert_operator body.dig("added", "dot", "norm"), :>, 2, "Dot keeps the raw vector"
  end

  test "a collection created later receives the existing texts with their raw vectors" do
    post vector_lab_collections_path, params: { metric: "cosine" }, as: :json
    post vector_lab_points_path, params: { text: "hello", vector: vec(2, scale: 4) }, as: :json
    post vector_lab_collections_path, params: { metric: "euclid" }, as: :json
    euclid = response.parsed_body["collections"].find { |c| c["metric"] == "euclid" }
    assert_equal 1, euclid["count"]
    id = response.parsed_body["points"].first["id"]
    get vector_lab_point_path(id), as: :json
    assert_operator response.parsed_body.dig("point", "euclid", "norm"), :>, 2
  end

  test "search returns results per metric" do
    post vector_lab_collections_path, params: { metric: "cosine" }, as: :json
    post vector_lab_collections_path, params: { metric: "euclid" }, as: :json
    post vector_lab_points_path, params: { text: "near", vector: vec(3) }, as: :json
    post vector_lab_points_path, params: { text: "far", vector: vec(4) }, as: :json
    post vector_lab_search_path, params: { vector: vec(3), limit: 2 }, as: :json
    assert_response :success
    results = response.parsed_body["results"]
    assert_equal "near", results["cosine"].first["text"]
    assert_equal "near", results["euclid"].first["text"]
    assert_in_delta 0.0, results["euclid"].first["score"], 1e-4
  end

  test "bad input is rejected" do
    post vector_lab_points_path, params: { text: "no collection", vector: vec(5) }, as: :json
    assert_response :unprocessable_entity
    post vector_lab_collections_path, params: { metric: "manhattan" }, as: :json
    assert_response :unprocessable_entity
    post vector_lab_collections_path, params: { metric: "cosine" }, as: :json
    post vector_lab_points_path, params: { text: "short", vector: [1, 2, 3] }, as: :json
    assert_response :unprocessable_entity
    post vector_lab_points_path, params: { text: "x" * 301, vector: vec(6) }, as: :json
    assert_response :unprocessable_entity
  end

  test "daily limit is enforced" do
    LabUsage.create!(user: @user, kind: "vector", day: Date.current, count: LabUsage.limit_for("vector"))
    post vector_lab_collections_path, params: { metric: "cosine" }, as: :json
    assert_response :too_many_requests
  end

  test "reset removes every collection for the user" do
    post vector_lab_collections_path, params: { metric: "cosine" }, as: :json
    post vector_lab_reset_path, as: :json
    assert_empty response.parsed_body["collections"]
    refute @qdrant.collection_exists?("#{VectorLabCollection.prefix}#{@user.id}_cosine")
  end

  test "cleanup job removes stale and orphaned collections" do
    post vector_lab_collections_path, params: { metric: "cosine" }, as: :json
    VectorLabCollection.update_all(last_used_at: 31.days.ago)
    @qdrant.create_collection("#{VectorLabCollection.prefix}#{@user.id}_orphan", size: 4, distance: "Dot")
    @qdrant.create_collection("development_lab_u#{@user.id}_keep", size: 4, distance: "Dot")
    result = LabCleanupJob.perform_now
    assert_equal 1, result[:stale]
    refute @qdrant.collection_exists?("#{VectorLabCollection.prefix}#{@user.id}_cosine")
    refute @qdrant.collection_exists?("#{VectorLabCollection.prefix}#{@user.id}_orphan")
    assert @qdrant.collection_exists?("development_lab_u#{@user.id}_keep"), "other environments are left alone"
    @qdrant.delete_collection("development_lab_u#{@user.id}_keep")
  end

  test "requires sign in" do
    sign_out @user
    get vector_lab_path, as: :json
    assert_response :unauthorized
  end
end

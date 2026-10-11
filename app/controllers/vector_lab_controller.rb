# JSON API behind the Vector Lab widget (app/javascript/controllers/vector_lab_controller.js).
# Embeddings are computed in the learner's browser; this controller only stores and searches them
# in the learner's own Qdrant collections, with per-day usage limits.
class VectorLabController < ApplicationController
  before_action :authenticate_user!

  rescue_from QdrantClient::Error do |e|
    render json: { error: "Vector database error: #{e.message}" }, status: :bad_gateway
  end
  # Declared after Error on purpose: Rails tries the last matching rescue_from first.
  rescue_from QdrantClient::Unavailable do
    render json: { error: "The Vector Lab is offline right now (the vector database can't be reached). Please try again later." }, status: :service_unavailable
  end
  rescue_from LabUsage::LimitReached do |e|
    render json: { error: e.message }, status: :too_many_requests
  end

  def show
    qdrant.list_collections   # so the widget only says "Connected" when Qdrant really answers
    render json: state
  end

  def create_collection
    metric = params[:metric].to_s
    return error("Choose cosine, dot or euclid.") unless VectorLabCollection::METRICS.key?(metric)
    return render(json: state) if collections.exists?(metric: metric)

    LabUsage.consume!(current_user, "vector")
    source = collections.first
    name = VectorLabCollection.name_for(current_user, metric)
    qdrant.delete_collection(name) if qdrant.collection_exists?(name)  # leftover from an interrupted reset
    qdrant.create_collection(name, size: VectorLabCollection::DIMENSIONS,
                                   distance: VectorLabCollection::METRICS[metric])
    collections.create!(metric: metric, name: name, last_used_at: Time.current)

    # Copy existing texts, using the raw (un-normalised) vectors kept in each point's payload
    if source
      points = qdrant.scroll(source.name, limit: VectorLabCollection::MAX_POINTS, with_payload: true)
      if points.any?
        qdrant.upsert(name, points.map { |p| { id: p["id"], vector: p.dig("payload", "raw"), payload: p["payload"] } })
      end
    end
    touch_collections
    render json: state
  end

  def destroy_collection
    collections.find_by!(metric: params[:metric]).destroy!
    render json: state
  end

  def add_point
    text = params[:text].to_s.strip
    return error("Type some text first.") if text.empty?
    return error("Keep each text under #{VectorLabCollection::MAX_TEXT_LENGTH} characters.") if text.length > VectorLabCollection::MAX_TEXT_LENGTH
    vector = valid_vector or return error("The embedding must be #{VectorLabCollection::DIMENSIONS} finite numbers.")
    return error("Create a collection first.") if collections.none?
    if qdrant.count(collections.first.name) >= VectorLabCollection::MAX_POINTS
      return error("Your lab holds up to #{VectorLabCollection::MAX_POINTS} texts. Delete some or reset the lab.")
    end

    LabUsage.consume!(current_user, "vector")
    id = SecureRandom.uuid
    collections.each do |c|
      qdrant.upsert(c.name, [{ id: id, vector: vector, payload: { text: text, raw: vector } }])
    end
    touch_collections
    render json: state.merge(added: stored_vectors(id))
  end

  def inspect_point
    render json: { point: stored_vectors(params[:id].to_s) }
  end

  def delete_point
    LabUsage.consume!(current_user, "vector")
    collections.each { |c| qdrant.delete_points(c.name, [params[:id].to_s]) }
    touch_collections
    render json: state
  end

  def search
    vector = valid_vector or return error("The query embedding must be #{VectorLabCollection::DIMENSIONS} finite numbers.")
    limit = params[:limit].to_i.clamp(1, 10)
    return error("Create a collection first.") if collections.none?

    LabUsage.consume!(current_user, "vector")
    results = collections.to_h do |c|
      hits = qdrant.query(c.name, vector: vector, limit: limit, with_payload: { include: ["text"] })
      [c.metric, hits.map { |h| { id: h["id"], text: h.dig("payload", "text"), score: h["score"] } }]
    end
    touch_collections
    render json: { results: results, usage: usage }
  end

  def reset
    collections.destroy_all
    prefix = VectorLabCollection.name_for(current_user, "")
    qdrant.list_collections.select { |n| n.start_with?(prefix) }.each { |n| qdrant.delete_collection(n) }
    render json: state
  end

  private

  def collections = current_user.vector_lab_collections.order(:metric)

  def qdrant = @qdrant ||= QdrantClient.new

  def touch_collections = collections.update_all(last_used_at: Time.current)

  def error(message) = render(json: { error: message }, status: :unprocessable_entity)

  def usage = { used: LabUsage.used(current_user, "vector"), limit: LabUsage.limit_for("vector") }

  def valid_vector
    v = request.request_parameters["vector"]
    return nil unless v.is_a?(Array) && v.size == VectorLabCollection::DIMENSIONS
    return nil unless v.all? { |x| x.is_a?(Numeric) && x.to_f.finite? && x.abs <= 100 }
    v.map(&:to_f)
  end

  # How each collection actually stored a point: Qdrant normalises vectors in Cosine collections.
  def stored_vectors(id)
    collections.to_h do |c|
      point = qdrant.retrieve(c.name, [id], with_vector: true, with_payload: ["text"]).first
      vec = point&.dig("vector") || []
      [c.metric, { text: point&.dig("payload", "text"), norm: Math.sqrt(vec.sum { |x| x * x }).round(4),
                   head: vec.first(8).map { |x| x.round(4) }, vector: vec.map { |x| x.round(4) } }]
    end
  end

  def state
    # Forget collections that vanished from Qdrant (for example after the database was wiped)
    cols = collections.to_a
    missing = cols.reject { |c| qdrant.collection_exists?(c.name) }
    missing.each(&:delete)
    cols -= missing
    points = cols.any? ? qdrant.scroll(cols.first.name, limit: VectorLabCollection::MAX_POINTS, with_payload: ["text"]) : []
    {
      collections: cols.map { |c| { metric: c.metric, name: c.name, distance: c.qdrant_distance, count: qdrant.count(c.name), last_used_at: c.last_used_at } },
      points: points.map { |p| { id: p["id"], text: p.dig("payload", "text") } },
      usage: usage,
      limits: { points: VectorLabCollection::MAX_POINTS, text: VectorLabCollection::MAX_TEXT_LENGTH,
                dimensions: VectorLabCollection::DIMENSIONS, stale_days: VectorLabCollection::STALE_AFTER.in_days.to_i }
    }
  end
end

# JSON API behind the RAG Lab widget (app/javascript/controllers/rag_lab_controller.js).
# The browser chunks and embeds documents; this controller stores chunks in the learner's own
# Qdrant collection, retrieves them for a question, and asks the AI model (Gemini by default) for a cited answer.
class RagLabController < ApplicationController
  before_action :authenticate_user!
  before_action :require_plan_json, only: %i[ask]

  rescue_from QdrantClient::Error do |e|
    render json: { error: "Vector database error: #{e.message}" }, status: :bad_gateway
  end
  # Declared after Error on purpose: Rails tries the last matching rescue_from first.
  rescue_from QdrantClient::Unavailable do
    render json: { error: "The RAG Lab is offline right now (the vector database can't be reached). Please try again later." }, status: :service_unavailable
  end
  rescue_from LabUsage::LimitReached do |e|
    render json: { error: e.message }, status: :too_many_requests
  end

  def show
    qdrant.list_collections   # so the widget only says "Connected" when Qdrant really answers
    render json: state
  end

  def add_document
    name = params[:name].to_s.strip
    chunks = request.request_parameters["chunks"]
    size, overlap = params[:chunk_size].to_i, params[:chunk_overlap].to_i

    return error("Give the document a name.") if name.empty?
    return error("Keep the name under #{RagLabCollection::MAX_NAME_LENGTH} characters.") if name.length > RagLabCollection::MAX_NAME_LENGTH
    return error("The document has no chunks.") unless chunks.is_a?(Array) && chunks.any?
    return error("Too many chunks (max #{RagLabCollection::MAX_CHUNKS_PER_DOCUMENT} per document). Use a bigger chunk size or a shorter document.") if chunks.size > RagLabCollection::MAX_CHUNKS_PER_DOCUMENT
    return error("Invalid chunk settings.") unless size.between?(50, 4_000) && overlap.between?(0, size - 1)
    return error("You can store up to #{RagLabCollection::MAX_DOCUMENTS} documents. Delete one or reset the lab.") if collection&.documents&.count.to_i >= RagLabCollection::MAX_DOCUMENTS

    points = []
    chunks.each_with_index do |c, i|
      text = c.is_a?(Hash) ? c["text"].to_s : ""
      vector = valid_vector(c.is_a?(Hash) ? c["vector"] : nil)
      return error("Chunk #{i + 1} is empty or longer than #{RagLabCollection::MAX_CHUNK_CHARS} characters.") if text.strip.empty? || text.length > RagLabCollection::MAX_CHUNK_CHARS
      return error("Chunk #{i + 1} has an invalid embedding (need #{RagLabCollection::DIMENSIONS} numbers).") unless vector
      points << { text: text, vector: vector }
    end

    LabUsage.consume!(current_user, "rag")
    col = ensure_collection!
    doc = col.documents.create!(name: name, chars: points.sum { |p| p[:text].length }, chunks_count: points.size,
                                chunk_size: size, chunk_overlap: overlap)
    points.each_with_index.each_slice(64) do |slice|
      qdrant.upsert(col.name, slice.map do |p, i|
        { id: SecureRandom.uuid, vector: p[:vector], payload: { doc_id: doc.id, document: name, chunk: i, text: p[:text] } }
      end)
    end
    touch!
    render json: state
  end

  def delete_document
    col = collection or return error("Nothing to delete.")
    doc = col.documents.find(params[:id])
    LabUsage.consume!(current_user, "rag")
    qdrant.delete_points_by_filter(col.name, { must: [{ key: "doc_id", match: { value: doc.id } }] })
    doc.destroy!
    touch!
    render json: state
  end

  def ask
    question = params[:question].to_s.strip
    return error("Type a question first.") if question.empty?
    return error("Keep questions under 500 characters.") if question.length > 500
    vector = valid_vector(request.request_parameters["vector"]) or return error("The question embedding is invalid.")
    col = collection
    return error("Add a document first.") unless col&.documents&.exists?

    top_k = params[:top_k].to_i.clamp(1, 10)
    threshold = params[:threshold].to_f.clamp(0.0, 1.0)

    LabUsage.consume!(current_user, "rag")
    hits = qdrant.query(col.name, vector: vector, limit: top_k, with_payload: true)
    chunks = hits.map do |h|
      { document: h.dig("payload", "document"), chunk: h.dig("payload", "chunk"), text: h.dig("payload", "text"), score: h["score"].round(4) }
    end
    used = chunks.select { |c| c[:score] >= threshold }
    touch!

    response = { question: question, chunks: chunks, used: used.size, threshold: threshold,
                 prompt: RagAnswerer.build_prompt(question, used), system_prompt: RagAnswerer::SYSTEM_PROMPT }

    if used.empty?
      response[:answer] = "No chunk scored above the threshold (#{threshold}), so there is nothing to answer from. Try a lower threshold or add a document that covers this."
      response[:skipped_model] = true
    elsif !RagAnswerer.enabled?
      response[:notice] = "AI answers aren't switched on for this site yet, so only retrieval is shown. The prompt below is exactly what the model would receive."
    else
      begin
        LabUsage.consume!(current_user, "rag_answer")
        result = RagAnswerer.new.answer(question, used)
        response.merge!(answer: result.answer, error: result.error, model: result.model,
                        tokens: { input: result.input_tokens, output: result.output_tokens })
      rescue LabUsage::LimitReached => e
        response[:notice] = "#{e.message} Retrieval still works: the chunks below are what the model would have read."
      end
    end
    render json: response.merge(usage: usage)
  end

  def reset
    collection&.destroy!
    prefix = RagLabCollection.name_for(current_user)
    qdrant.delete_collection(prefix) if qdrant.collection_exists?(prefix)
    render json: state
  end

  private

  def collection = @collection ||= current_user.rag_lab_collection

  def qdrant = @qdrant ||= QdrantClient.new

  def ensure_collection!
    return collection if collection && qdrant.collection_exists?(collection.name)

    name = RagLabCollection.name_for(current_user)
    collection&.destroy!   # its Qdrant collection vanished; start clean
    qdrant.delete_collection(name) if qdrant.collection_exists?(name)
    qdrant.create_collection(name, size: RagLabCollection::DIMENSIONS, distance: "Cosine")
    qdrant.create_payload_index(name, "doc_id", "integer")
    @collection = current_user.create_rag_lab_collection!(name: name, last_used_at: Time.current)
  end

  def touch! = collection&.update_column(:last_used_at, Time.current)

  def error(message) = render(json: { error: message }, status: :unprocessable_entity)

  def usage
    {
      actions: { used: LabUsage.used(current_user, "rag"), limit: LabUsage.limit_for("rag") },
      answers: { used: LabUsage.used(current_user, "rag_answer"), limit: LabUsage.limit_for("rag_answer") }
    }
  end

  def valid_vector(v)
    return nil unless v.is_a?(Array) && v.size == RagLabCollection::DIMENSIONS
    return nil unless v.all? { |x| x.is_a?(Numeric) && x.to_f.finite? && x.abs <= 100 }
    v.map(&:to_f)
  end

  def state
    col = collection
    if col && !qdrant.collection_exists?(col.name)
      col.delete
      col = @collection = nil
    end
    {
      documents: col ? col.documents.order(:created_at).map { |d| d.slice(:id, :name, :chars, :chunks_count, :chunk_size, :chunk_overlap) } : [],
      generation: { enabled: RagAnswerer.enabled?, model: RagAnswerer.model },
      usage: usage,
      limits: { documents: RagLabCollection::MAX_DOCUMENTS, chunks_per_document: RagLabCollection::MAX_CHUNKS_PER_DOCUMENT,
                chunk_chars: RagLabCollection::MAX_CHUNK_CHARS, stale_days: RagLabCollection::STALE_AFTER.in_days.to_i }
    }
  end
end

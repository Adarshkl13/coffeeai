# Deletes hands-on lab collections (Vector Lab and RAG Lab) nobody has used for 30 days, plus any
# lab collection left in Qdrant without a database record. Scheduled daily in config/recurring.yml.
class LabCleanupJob < ApplicationJob
  queue_as :default

  LABS = [VectorLabCollection, RagLabCollection].freeze

  def perform
    stale = LABS.sum { |model| model.stale.destroy_all.size }

    qdrant = QdrantClient.new
    known = LABS.flat_map { |model| model.pluck(:name) }.to_set
    orphans = qdrant.list_collections.select do |n|
      LABS.any? { |model| model.lab_collection_name?(n) } && !known.include?(n)
    end
    orphans.each { |n| qdrant.delete_collection(n) }

    Rails.logger.info("[Labs] cleanup removed #{stale} stale and #{orphans.size} orphaned collections")
    { stale: stale, orphans: orphans.size }
  rescue QdrantClient::Unavailable => e
    Rails.logger.warn("[Labs] cleanup skipped: #{e.message}")
    nil
  end
end

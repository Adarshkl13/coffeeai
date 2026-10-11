# A learner's RAG Lab: one Qdrant collection holding the chunks of their uploaded documents,
# named "rag_u<user id>" (with an environment prefix outside production, like the Vector Lab).
class RagLabCollection < ApplicationRecord
  DIMENSIONS = 384            # all-MiniLM-L6-v2, embedded in the learner's browser
  MAX_DOCUMENTS = 5
  MAX_CHUNKS_PER_DOCUMENT = 200
  MAX_CHUNK_CHARS = 2_000
  MAX_NAME_LENGTH = 100
  STALE_AFTER = 30.days

  belongs_to :user
  has_many :documents, class_name: "RagLabDocument", dependent: :delete_all

  validates :name, presence: true, uniqueness: true

  scope :stale, -> { where(last_used_at: ...STALE_AFTER.ago) }

  after_destroy_commit :drop_qdrant_collection

  def self.prefix = "#{QdrantClient.env_prefix}rag_u"

  def self.name_for(user) = "#{prefix}#{user.id}"

  def self.lab_collection_name?(name) = name.match?(/\A#{Regexp.escape(prefix)}\d+\z/)

  private

  def drop_qdrant_collection
    QdrantClient.new.delete_collection(name)
  rescue QdrantClient::Error => e
    Rails.logger.warn("[RagLab] could not delete #{name}: #{e.message}")
  end
end

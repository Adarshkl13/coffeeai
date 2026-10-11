# One Qdrant collection in a learner's Vector Lab. Each learner may have one per distance metric,
# named "lab_u<user id>_<metric>" so collections are always prefixed with their owner's id.
class VectorLabCollection < ApplicationRecord
  METRICS = { "cosine" => "Cosine", "dot" => "Dot", "euclid" => "Euclid" }.freeze
  DIMENSIONS = 384          # all-MiniLM-L6-v2, computed in the learner's browser
  MAX_POINTS = 100
  MAX_TEXT_LENGTH = 300
  STALE_AFTER = 30.days

  belongs_to :user

  validates :metric, inclusion: { in: METRICS.keys }
  validates :name, presence: true, uniqueness: true

  scope :stale, -> { where(last_used_at: ...STALE_AFTER.ago) }

  after_destroy_commit :drop_qdrant_collection

  # Non-production environments get their own prefix so a shared Qdrant never mixes them up
  # (the cleanup job deletes lab collections it doesn't recognise).
  def self.prefix = "#{QdrantClient.env_prefix}lab_u"

  def self.name_for(user, metric) = "#{prefix}#{user.id}_#{metric}"

  def self.lab_collection_name?(name) = name.match?(/\A#{Regexp.escape(prefix)}\d+_/)

  def qdrant_distance = METRICS.fetch(metric)

  private

  # Best effort: the nightly cleanup also removes orphaned lab collections.
  def drop_qdrant_collection
    QdrantClient.new.delete_collection(name)
  rescue QdrantClient::Error => e
    Rails.logger.warn("[VectorLab] could not delete #{name}: #{e.message}")
  end
end

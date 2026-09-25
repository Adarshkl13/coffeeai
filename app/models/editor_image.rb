class EditorImage < ApplicationRecord
  belongs_to :user

  validates :original_filename, :stored_filename, :content_type, :byte_size, :url, presence: true

  scope :recent, -> { order(created_at: :desc) }
end

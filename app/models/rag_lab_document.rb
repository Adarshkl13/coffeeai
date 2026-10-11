class RagLabDocument < ApplicationRecord
  belongs_to :rag_lab_collection

  validates :name, presence: true, length: { maximum: RagLabCollection::MAX_NAME_LENGTH }
end

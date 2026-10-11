# One question ("user") or answer ("model") in a StudyChat.
class StudyMessage < ApplicationRecord
  ROLES = %w[user model].freeze

  belongs_to :study_chat, touch: true
  validates :role, inclusion: { in: ROLES }
end

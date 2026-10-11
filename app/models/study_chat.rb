# One conversation with the "Ask CoffeeBean AI" study assistant (AskController).
class StudyChat < ApplicationRecord
  belongs_to :user
  has_many :messages, -> { order(:id) }, class_name: "StudyMessage", dependent: :delete_all

  scope :recent, -> { order(updated_at: :desc) }

  # A short title from the first question, e.g. "Explain prompt engineering".
  def self.title_from(text)
    t = text.to_s.squish
    t = "New chat" if t.empty?
    t.length > 60 ? "#{t[0, 57].rstrip}..." : t
  end
end

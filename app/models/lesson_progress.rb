class LessonProgress < ApplicationRecord
  belongs_to :user

  enum :status, { not_started: 0, in_progress: 1, completed: 2, skipped: 3 }

  validates :lesson_id, presence: true, uniqueness: { scope: :user_id }

  def done?
    completed? || skipped?
  end
end

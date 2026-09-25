class CourseProgress < ApplicationRecord
  belongs_to :user
  belongs_to :course_lesson

  enum :status, { not_started: 0, in_progress: 1, completed: 2, skipped: 3 }

  validates :course_lesson_id, uniqueness: { scope: :user_id }

  def done?
    completed? || skipped?
  end
end

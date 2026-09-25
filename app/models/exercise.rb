class Exercise < ApplicationRecord
  belongs_to :course_lesson
  has_many   :exercise_attempts, dependent: :destroy

  serialize :options, coder: JSON

  validates :question, :correct_answer, :exercise_type, presence: true
  validates :exercise_type, inclusion: { in: %w[multiple_choice true_false] }

  def multiple_choice?
    exercise_type == "multiple_choice"
  end

  def true_false?
    exercise_type == "true_false"
  end
end

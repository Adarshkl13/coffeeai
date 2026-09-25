class CourseLesson < ApplicationRecord
  belongs_to :course
  has_one    :exercise, dependent: :destroy
  has_many   :course_progresses, dependent: :destroy

  validates :title, :position, presence: true
  validates :position, uniqueness: { scope: :course_id }

  scope :ordered, -> { order(:position) }

  def next_lesson
    course.course_lessons.where("position > ?", position).order(:position).first
  end

  def prev_lesson
    course.course_lessons.where("position < ?", position).order(:position).last
  end

  def accessible_by?(user)
    return true if position == 1
    prev = prev_lesson
    return true unless prev
    prog = user.course_progresses.find_by(course_lesson_id: prev.id)
    prog&.done?
  end

  def lesson_number
    "#{course.position}.#{position}"
  end
end

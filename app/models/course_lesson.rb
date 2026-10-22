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

  # Lock state for a whole ordered list in memory (no query per lesson). progress: { course_lesson_id => CourseProgress }.
  # Same rule as accessible_by?: lesson 1 is open; any other lesson opens when the one before it is done.
  # Which lessons can be opened: all of them with a plan (all_open), otherwise one after another.
  def self.open_states(ordered_lessons, progress, all_open: false)
    ordered_lessons.each_with_index.to_h { |l, i| [l.id, all_open || i.zero? || l.position == 1 || progress[ordered_lessons[i - 1].id]&.done?] }
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

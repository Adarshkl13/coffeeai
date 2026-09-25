class Course < ApplicationRecord
  has_many :course_lessons, -> { order(:position) }, dependent: :destroy

  validates :title, :slug, presence: true
  validates :slug, uniqueness: true

  scope :published, -> { where(published: true) }
  scope :ordered,   -> { order(:position) }

  before_validation :set_slug

  def completion_percentage(user)
    total = course_lessons.count
    return 0 if total.zero?
    done = user.course_progresses
               .where(course_lesson_id: course_lessons.pluck(:id))
               .where(status: [ CourseProgress.statuses[:completed], CourseProgress.statuses[:skipped] ])
               .count
    (done.to_f / total * 100).round
  end

  def completed_lessons_count(user)
    user.course_progresses
        .where(course_lesson_id: course_lessons.pluck(:id))
        .where(status: [ CourseProgress.statuses[:completed], CourseProgress.statuses[:skipped] ])
        .count
  end

  private

  def set_slug
    self.slug ||= title&.parameterize
  end
end

# A certificate of completion, earned when every lesson of a course is completed (skipped lessons do not count).
# Each has a public code, so anyone can check it at /certificates/:code.
class Certificate < ApplicationRecord
  ORIGINAL_KEY = "beginner-ai-python"
  ORIGINAL_TITLE = "Beginner AI with Python"
  CODE_CHARS = "ABCDEFGHJKMNPQRSTUVWXYZ23456789".chars.freeze   # no 0/O, 1/I/L

  belongs_to :user
  belongs_to :course, optional: true
  validates :code, :course_key, :course_title, presence: true

  before_validation(on: :create) do
    self.code ||= self.class.new_code
    self.issued_at ||= Time.current
  end

  def self.new_code
    loop do
      c = "CB-#{Array.new(4) { CODE_CHARS.sample }.join}-#{Array.new(4) { CODE_CHARS.sample }.join}"
      return c unless exists?(code: c)
    end
  end

  # Gives the certificate for a finished course (once); returns it, or nil if the course is not finished.
  def self.award(user, course)
    existing = user.certificates.find_by(course_key: course.slug)
    return existing if existing
    total = course.course_lessons.count
    return nil if total.zero? || course.fully_completed_count(user) < total
    user.certificates.create!(course: course, course_key: course.slug, course_title: course.title, lesson_count: total)
  rescue ActiveRecord::RecordNotUnique
    user.certificates.find_by(course_key: course.slug)
  end

  # The same for the original course (LessonsController::LESSONS), which is not a Course record.
  def self.award_original(user, total:)
    existing = user.certificates.find_by(course_key: ORIGINAL_KEY)
    return existing if existing
    done = user.lesson_progresses.where(status: LessonProgress.statuses[:completed]).count
    return nil if total.zero? || done < total
    user.certificates.create!(course_key: ORIGINAL_KEY, course_title: ORIGINAL_TITLE, lesson_count: total)
  rescue ActiveRecord::RecordNotUnique
    user.certificates.find_by(course_key: ORIGINAL_KEY)
  end

  def holder_name = user.display_name
  def to_param = code
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lesson_progresses,   dependent: :destroy
  has_many :course_progresses,   dependent: :destroy
  has_many :exercise_attempts,   dependent: :destroy
  has_many :editor_images,       dependent: :destroy
  has_many :published_pages,     dependent: :destroy

  def admin?
    admin
  end

  def progress_for(lesson_id)
    lesson_progresses.find_by(lesson_id: lesson_id)
  end

  def course_progress_for(course_lesson_id)
    course_progresses.find_by(course_lesson_id: course_lesson_id)
  end

  def total_score
    exercise_attempts.where(correct: true).count
  end
end

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
  has_many :vector_lab_collections, dependent: :destroy
  has_one  :rag_lab_collection,   dependent: :destroy
  has_many :lab_usages,          dependent: :delete_all
  has_many :study_chats,         dependent: :destroy
  has_many :payments,            dependent: :destroy
  has_many :certificates,        dependent: :destroy

  validates :name, length: { maximum: 80 }

  def admin?
    admin
  end

  # The name on certificates: the full name if set, otherwise a tidy version of the email name.
  def display_name
    name.presence || email.split("@").first.tr("._-", " ").split.map(&:capitalize).join(" ")
  end

  # Has the paid plan (admins always do).
  def member?
    admin? || (access_until.present? && access_until.future?)
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

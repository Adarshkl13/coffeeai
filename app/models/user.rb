class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[google_oauth2]

  UID_COLUMNS = { "google_oauth2" => :google_uid }.freeze

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

  # Blocked by an admin (Admin › Users). Devise then refuses sign-in and signs the user out on their next request.
  def blocked? = blocked_at.present?
  def active_for_authentication? = super && !blocked?
  def inactive_message = blocked? ? :blocked : super

  # "Continue with Google". Returns the user to sign in, or nil with a reason.
  # 1. The same Google account signed in before: that user.
  # 2. Otherwise an account with the same (verified) email: link it and sign in to it, so no duplicate account is made.
  # 3. Otherwise a new account with a random password (they can set their own with "Forgot password").
  def self.from_omniauth(auth)
    column = UID_COLUMNS[auth.provider.to_s] or return [nil, :unknown_provider]
    uid = auth.uid.to_s.presence or return [nil, :no_uid]
    if (user = find_by(column => uid))
      return [user, :existing]
    end

    email = auth.info&.email.to_s.strip.downcase
    return [nil, :no_email] if email.blank?
    return [nil, :unverified_email] unless email_verified?(auth)

    if (user = find_by(email: email))
      user.update!(column => uid, name: user.name.presence || auth.info&.name.to_s.strip.first(80).presence)
      return [user, :linked]
    end

    password = Devise.friendly_token(32)
    user = create!(email: email, password: password, password_confirmation: password,
                   name: auth.info&.name.to_s.strip.first(80).presence, column => uid)
    [user, :created]
  end

  # Google says whether the address is verified; only a verified address may open an existing account.
  def self.email_verified?(auth)
    flag = auth.extra&.raw_info&.dig("email_verified")
    flag.nil? ? auth.info&.email_verified != false : ActiveModel::Type::Boolean.new.cast(flag)
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

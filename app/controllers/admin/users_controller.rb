module Admin
  class UsersController < BaseController
    def index
      @total = User.count
      users = User.order(created_at: :desc)
      if (q = params[:q].to_s.strip).present?
        like = "%#{User.sanitize_sql_like(q.downcase)}%"
        users = users.where("LOWER(email) LIKE ? OR LOWER(COALESCE(name, '')) LIKE ?", like, like)
      end
      users = case params[:status]
              when "plan" then users.where("access_until > ?", Time.current)
              when "free" then users.where(admin: false).where("access_until IS NULL OR access_until <= ?", Time.current)
              when "blocked" then users.where.not(blocked_at: nil)
              when "admin" then users.where(admin: true)
              else users
              end
      @users = users.limit(500)
    end

    # Blocked users are signed out on their next request and cannot sign in (User#active_for_authentication?).
    def block
      user = User.find(params[:id])
      if user.admin? || user == current_user
        return redirect_back_or_to(admin_users_path, alert: "Admins cannot be blocked here.")
      end
      user.update!(blocked_at: Time.current)
      redirect_to admin_users_path(q: params[:q], status: params[:status]), notice: "#{user.email} is blocked."
    end

    def unblock
      user = User.find(params[:id])
      user.update!(blocked_at: nil)
      redirect_to admin_users_path(q: params[:q], status: params[:status]), notice: "#{user.email} is unblocked."
    end

    def show
      @user   = User.find(params[:id])
      @courses = Course.published.ordered

      @course_stats = @courses.map do |course|
        lesson_ids = course.course_lessons.pluck(:id)
        progresses = @user.course_progresses.where(course_lesson_id: lesson_ids)
        attempts   = @user.exercise_attempts
                          .joins(exercise: :course_lesson)
                          .where(course_lessons: { course_id: course.id })
        {
          course: course,
          completed: progresses.where(status: :completed).count,
          skipped:   progresses.where(status: :skipped).count,
          in_progress: progresses.where(status: :in_progress).count,
          total: course.course_lessons.count,
          pct: course.completion_percentage(@user),
          correct: attempts.where(correct: true).count,
          wrong: attempts.where(correct: false).count
        }
      end
    end
  end
end

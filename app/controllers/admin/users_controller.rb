module Admin
  class UsersController < BaseController
    def index
      @users = User.order(created_at: :desc)
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

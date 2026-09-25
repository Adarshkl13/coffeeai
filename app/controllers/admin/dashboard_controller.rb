module Admin
  class DashboardController < BaseController
    def index
      @total_users    = User.count
      @total_courses  = Course.count
      @total_lessons  = CourseLesson.count
      @total_exercises = Exercise.count
      @total_attempts = ExerciseAttempt.count
      @correct_attempts = ExerciseAttempt.where(correct: true).count

      @users = User.order(created_at: :desc).limit(20)

      @course_stats = Course.published.ordered.map do |course|
        lesson_ids = course.course_lessons.pluck(:id)
        {
          course: course,
          completions: CourseProgress.where(course_lesson_id: lesson_ids, status: :completed).count,
          skips: CourseProgress.where(course_lesson_id: lesson_ids, status: :skipped).count,
          in_progress: CourseProgress.where(course_lesson_id: lesson_ids, status: :in_progress).count
        }
      end

      @recent_attempts = ExerciseAttempt.includes(:user, exercise: { course_lesson: :course })
                                        .order(created_at: :desc).limit(30)
    end
  end
end

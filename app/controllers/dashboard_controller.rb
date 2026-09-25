class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.published.ordered
    @courses_with_progress = @courses.map do |course|
      {
        course: course,
        pct: course.completion_percentage(current_user),
        done: course.completed_lessons_count(current_user),
        total: course.course_lessons.count
      }
    end

    # AI Academy static course progress
    ai_done  = current_user.lesson_progresses.where(status: [ LessonProgress.statuses[:completed], LessonProgress.statuses[:skipped] ]).count
    @ai_progress = { done: ai_done, total: 28, pct: (ai_done.to_f / 28 * 100).round }

    @total_correct = current_user.exercise_attempts.where(correct: true).count
    @total_attempts = current_user.exercise_attempts.count
  end
end

class DashboardController < ApplicationController
  before_action :authenticate_user!

  AI_COURSE_LESSONS = 28   # the original "Beginner AI with Python" course (LessonsController)

  def index
    @courses = Course.published.ordered.includes(:course_lessons)
    @progress = Course.progress_for(current_user, @courses)

    # Courses the learner has started but not finished, most recently used first.
    last_used = current_user.course_progresses.joins(:course_lesson)
                            .group("course_lessons.course_id").maximum(:updated_at)
    @in_progress = @courses.select { |c| @progress[c.id][:done].positive? && @progress[c.id][:pct] < 100 }
                           .sort_by { |c| last_used[c.id] || Time.at(0) }.reverse.first(3)

    ai_done = current_user.lesson_progresses.where(status: [LessonProgress.statuses[:completed], LessonProgress.statuses[:skipped]]).count
    @ai_progress = { done: ai_done, total: AI_COURSE_LESSONS, pct: (ai_done * 100.0 / AI_COURSE_LESSONS).round }

    @stats = {
      started: @progress.count { |_, p| p[:done].positive? },
      lessons: @progress.sum { |_, p| p[:done] } + ai_done,
      correct: current_user.exercise_attempts.where(correct: true).count,
      finished: @progress.count { |_, p| p[:total].positive? && p[:pct] == 100 }
    }

    # Certificates: give any that are due (finished courses), then list them all.
    # (only courses without a certificate yet are checked, so this stays a few queries however many courses are done)
    have = current_user.certificates.pluck(:course_key).to_set
    @courses.each do |c|
      next if have.include?(c.slug)
      p = @progress[c.id]
      Certificate.award(current_user, c) if p[:total].positive? && p[:completed] == p[:total]
    end
    Certificate.award_original(current_user, total: AI_COURSE_LESSONS) if ai_done >= AI_COURSE_LESSONS
    @certificates = current_user.certificates.order(issued_at: :desc)
  end
end

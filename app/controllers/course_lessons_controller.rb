class CourseLessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course_and_lesson
  before_action :require_plan, only: %i[show complete skip], unless: -> { @lesson.position == 1 }
  before_action :ensure_accessible, only: [:show]

  def show
    progress = CourseProgress.find_or_create_by!(user: current_user, course_lesson: @lesson)
    progress.in_progress! unless progress.done?

    @exercise = @lesson.exercise
    all_progresses = current_user.course_progresses
                                 .where(course_lesson_id: @course.course_lessons.pluck(:id))
                                 .index_by(&:course_lesson_id)

    ordered = @course.course_lessons.ordered.to_a
    open    = CourseLesson.open_states(ordered, all_progresses, all_open: full_access?)
    @lessons_with_status = ordered.map do |l|
      prog   = all_progresses[l.id]
      pro    = !full_access? && l.position > 1
      locked = pro || !open[l.id]
      { lesson: l, progress: prog, locked: locked, pro: pro }
    end

    @current_progress = all_progresses[@lesson.id] || progress
    @completion_pct   = @course.completion_percentage(current_user)
    @certificate      = Certificate.award(current_user, @course) if @completion_pct == 100
    @completed_only   = @course.fully_completed_count(current_user)
  end

  def complete
    progress = CourseProgress.find_or_create_by!(user: current_user, course_lesson: @lesson)
    progress.update!(status: :completed, completed_at: Time.current)

    next_l = @lesson.next_lesson
    if next_l
      redirect_to course_lesson_path(course_slug: @course.slug, id: next_l.id),
                  notice: "Lesson complete! Keep it up 🎉"
    else
      redirect_to course_path(@course),
                  notice: "🎓 You finished #{@course.title}! Your certificate is ready."
    end
  end

  def skip
    progress = CourseProgress.find_or_create_by!(user: current_user, course_lesson: @lesson)
    progress.update!(status: :skipped, skipped_at: Time.current)

    next_l = @lesson.next_lesson
    if next_l
      redirect_to course_lesson_path(course_slug: @course.slug, id: next_l.id),
                  notice: "Lesson skipped."
    else
      redirect_to course_path(@course), notice: "You've reached the end of the course."
    end
  end

  private

  def set_course_and_lesson
    @course = Course.published.find_by!(slug: params[:course_slug])
    @lesson = @course.course_lessons.find(params[:id])
    @prev_lesson = @lesson.prev_lesson
    @next_lesson = @lesson.next_lesson
  end

  def ensure_accessible
    return if full_access? || @lesson.accessible_by?(current_user)   # with a plan, any lesson opens

    available = @course.course_lessons.ordered.find { |l| l.accessible_by?(current_user) }
    available ||= @course.course_lessons.ordered.first
    redirect_to course_lesson_path(course_slug: @course.slug, id: available.id),
                alert: "Complete the current lesson first to unlock this one."
  end
end

class CourseLessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_course_and_lesson
  before_action :ensure_accessible, only: [:show]

  def show
    progress = CourseProgress.find_or_create_by!(user: current_user, course_lesson: @lesson)
    progress.in_progress! unless progress.done?

    @exercise = @lesson.exercise
    all_progresses = current_user.course_progresses
                                 .where(course_lesson_id: @course.course_lessons.pluck(:id))
                                 .index_by(&:course_lesson_id)

    @lessons_with_status = @course.course_lessons.ordered.map do |l|
      prog   = all_progresses[l.id]
      locked = !l.accessible_by?(current_user)
      { lesson: l, progress: prog, locked: locked }
    end

    @current_progress = all_progresses[@lesson.id] || progress
    @completion_pct   = @course.completion_percentage(current_user)
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
                  notice: "🎓 You finished #{@course.title}!"
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
    return if @lesson.accessible_by?(current_user)

    available = @course.course_lessons.ordered.find { |l| l.accessible_by?(current_user) }
    available ||= @course.course_lessons.ordered.first
    redirect_to course_lesson_path(course_slug: @course.slug, id: available.id),
                alert: "Complete the current lesson first to unlock this one."
  end
end

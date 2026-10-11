class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.published.ordered.includes(:course_lessons)
    @progress = Course.progress_for(current_user, @courses)
    @categories = Course.category_counts(@courses)
  end

  def show
    @course  = Course.published.find_by!(slug: params[:slug])
    @lessons = @course.course_lessons.ordered
    all_progresses = current_user.course_progresses
                                 .where(course_lesson_id: @lessons.pluck(:id))
                                 .index_by(&:course_lesson_id)

    open = CourseLesson.open_states(@lessons.to_a, all_progresses)
    @lessons_with_status = @lessons.map do |lesson|
      prog   = all_progresses[lesson.id]
      pro    = !full_access? && lesson.position > 1
      locked = pro || !open[lesson.id]
      { lesson: lesson, progress: prog, locked: locked, pro: pro }
    end

    @completion_pct = @course.completion_percentage(current_user)
    @done_count     = @course.completed_lessons_count(current_user)
    @certificate    = Certificate.award(current_user, @course) if @completion_pct == 100
    @podcast        = CoursePodcast.for(@course)
    @completed_only = @course.fully_completed_count(current_user)

    # Find first not-done lesson to offer as "Continue" target
    @continue_lesson = @lessons.find { |l| !all_progresses[l.id]&.done? } || @lessons.first
    # Without a plan only lesson 1 opens, so once it is done the button points to the plans
    @continue_lesson = nil if !full_access? && @continue_lesson.position > 1
  end
end

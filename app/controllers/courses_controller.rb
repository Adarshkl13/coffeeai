class CoursesController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.published.ordered
  end

  def show
    @course  = Course.published.find_by!(slug: params[:slug])
    @lessons = @course.course_lessons.ordered
    all_progresses = current_user.course_progresses
                                 .where(course_lesson_id: @lessons.pluck(:id))
                                 .index_by(&:course_lesson_id)

    @lessons_with_status = @lessons.map do |lesson|
      prog   = all_progresses[lesson.id]
      locked = !lesson.accessible_by?(current_user)
      { lesson: lesson, progress: prog, locked: locked }
    end

    @completion_pct = @course.completion_percentage(current_user)
    @done_count     = @course.completed_lessons_count(current_user)

    # Find first not-done lesson to offer as "Continue" target
    @continue_lesson = @lessons.find { |l| !all_progresses[l.id]&.done? } || @lessons.first
  end
end

module Admin
  class CoursesController < BaseController
    def index
      @courses = Course.ordered
    end

    def show
      @course  = Course.find_by!(slug: params[:id])
      @lessons = @course.course_lessons.ordered.includes(:exercise, :course_progresses)
    end
  end
end

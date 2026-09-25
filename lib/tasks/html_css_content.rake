require_relative "../html_css_content"

namespace :content do
  desc "Populate body and starter_code for HTML & CSS course lessons"
  task html_css: :environment do
    course = Course.find_by(slug: "html-css")
    abort "HTML & CSS course not found" unless course

    HtmlCssContent::LESSONS.each do |position, data|
      lesson = course.course_lessons.find_by(position: position)
      next puts "  Lesson #{position} not found" unless lesson
      lesson.update!(body: data[:body], starter_code: data[:starter_code])
      puts "  ✓ Lesson #{position}: #{lesson.title}"
    end
    puts "Done!"
  end
end

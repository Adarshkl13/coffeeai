require_relative "../javascript_content"
require_relative "../python_content"

namespace :content do
  desc "Populate body and starter_code for JavaScript course lessons"
  task javascript: :environment do
    course = Course.find_by(slug: "javascript")
    abort "JavaScript course not found" unless course

    JavaScriptContent::LESSONS.each do |position, data|
      lesson = course.course_lessons.find_by(position: position)
      next puts "  Lesson #{position} not found" unless lesson
      lesson.update!(body: data[:body], starter_code: data[:starter_code])
      puts "  ✓ #{position}. #{lesson.title}"
    end
    puts "Done! #{JavaScriptContent::LESSONS.size} lessons updated."
  end

  desc "Populate body and starter_code for Python course lessons"
  task python: :environment do
    course = Course.find_by(slug: "python")
    abort "Python course not found" unless course

    PythonContent::LESSONS.each do |position, data|
      lesson = course.course_lessons.find_by(position: position)
      next puts "  Lesson #{position} not found" unless lesson
      lesson.update!(body: data[:body], starter_code: data[:starter_code])
      puts "  ✓ #{position}. #{lesson.title}"
    end
    puts "Done! #{PythonContent::LESSONS.size} lessons updated."
  end

  desc "Populate all course content"
  task all: %i[html_css javascript python]
end

namespace :content do
  desc "Load every course: seeds-based content plus all dedicated course tasks"
  task everything: %i[
    all machine_learning artificial_intelligence data_science ruby java php sql mysql
    postgresql bootstrap django react pandas numpy typescript practical_ai deep_learning
    nodejs git github
  ]
end

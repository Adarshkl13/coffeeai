require_relative "../ruby_content"

namespace :content do
  desc "Create Ruby course and populate all 20 lessons"
  task ruby: :environment do
    # Create course if it doesn't exist
    course = Course.find_or_create_by!(slug: "ruby") do |c|
      c.title       = "Ruby"
      c.description = "Ruby is an elegant, expressive language built for developer happiness. Learn the language behind Ruby on Rails — covering OOP, blocks, Enumerable, and more."
      c.color       = "#dc2626"
      c.icon        = "💎"
      c.position    = 7
      c.published   = true
    end
    puts "Course: #{course.title} (#{course.slug})"

    # Seed lessons from content file
    RubyContent::LESSONS.each do |position, data|
      lesson_title = data[:body].scan(/<h1[^>]*>([^<]+)<\/h1>/).flatten.first ||
                     "Lesson #{position}"

      # Extract title from the body content or use a default
      titles = {
        1  => "Introduction to Ruby",        2  => "Variables and Data Types",
        3  => "Working with Strings",         4  => "Numbers and Math",
        5  => "Arrays",                        6  => "Hashes",
        7  => "Symbols and Ranges",           8  => "Conditional Statements",
        9  => "Loops and Iterators",          10 => "Methods",
        11 => "Blocks, Procs, and Lambdas",  12 => "Enumerable Methods",
        13 => "Classes and Objects",          14 => "Attr Accessors",
        15 => "Inheritance",                  16 => "Modules and Mixins",
        17 => "Exception Handling",           18 => "File I/O",
        19 => "Ruby Standard Library",        20 => "Ruby Review"
      }

      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position] || "Lesson #{position}"
        l.description = data[:body].gsub(/<[^>]+>/, "").strip.split(".").first(2).join(".")
      end

      lesson.update!(
        title:        titles[position] || lesson.title,
        body:         data[:body],
        starter_code: data[:starter_code]
      )

      # Create exercise (MCQ / T-F)
      exercises = {
        1 => { type: "multiple_choice", q: "Which method outputs text with a newline in Ruby?", opts: ["A) print", "B) puts", "C) echo"], ans: "B" },
        2 => { type: "true_false", q: "In Ruby, instance variables start with the @ symbol.", opts: ["True", "False"], ans: "True" },
        3 => { type: "multiple_choice", q: "Which syntax enables string interpolation in Ruby?", opts: ["A) Double quotes \"...\#{}\"", "B) Single quotes '...'", "C) Backticks"], ans: "A" },
        4 => { type: "true_false", q: "In Ruby, 7 / 2 returns 3.5.", opts: ["True", "False"], ans: "False" },
        5 => { type: "multiple_choice", q: "What is the most idiomatic way to append an item to an array in Ruby?", opts: ["A) arr.append_item(item)", "B) arr + item", "C) arr << item"], ans: "C" },
        6 => { type: "true_false", q: "Given person = { name: \"Alice\" }, you read the value with person[\"name\"].", opts: ["True", "False"], ans: "False" },
        7 => { type: "multiple_choice", q: "What does (1...5).to_a return?", opts: ["A) [1, 2, 3, 4, 5]", "B) [1, 2, 3, 4]", "C) [0, 1, 2, 3, 4]"], ans: "B" },
        8 => { type: "true_false", q: "In Ruby, unless x is equivalent to if !x.", opts: ["True", "False"], ans: "True" },
        9 => { type: "multiple_choice", q: "Which is the most idiomatic Ruby way to iterate over an array?", opts: ["A) arr.each { |item| }", "B) for item in arr", "C) while i < arr.length"], ans: "A" },
        10 => { type: "true_false", q: "In Ruby, the last expression in a method is automatically returned.", opts: ["True", "False"], ans: "True" },
        11 => { type: "multiple_choice", q: "What is a key difference between a lambda and a Proc in Ruby?", opts: ["A) A Proc strictly checks the number of arguments; a lambda is lenient", "B) There is no difference; lambda is just another name for Proc.new", "C) A lambda strictly checks the number of arguments; a Proc is lenient"], ans: "C" },
        12 => { type: "multiple_choice", q: "Which Enumerable method transforms every element?", opts: ["A) select", "B) reject", "C) map"], ans: "C" },
        13 => { type: "true_false", q: "An instance variable like @name can only be used inside the method where it was first assigned.", opts: ["True", "False"], ans: "False" },
        14 => { type: "multiple_choice", q: "Which macro creates both getter and setter methods?", opts: ["A) attr_accessor", "B) attr_reader", "C) attr_writer"], ans: "A" },
        15 => { type: "true_false", q: "Ruby supports multiple inheritance, so a class can inherit directly from two parent classes.", opts: ["True", "False"], ans: "False" },
        16 => { type: "multiple_choice", q: "What keyword includes a module's methods as instance methods?", opts: ["A) extend", "B) include", "C) prepend"], ans: "B" },
        17 => { type: "multiple_choice", q: "Which block always runs in Ruby exception handling?", opts: ["A) ensure", "B) rescue", "C) raise"], ans: "A" },
        18 => { type: "true_false", q: "Using File.open with a block automatically closes the file.", opts: ["True", "False"], ans: "True" },
        19 => { type: "true_false", q: "Standard library modules such as JSON and Date must be installed as gems before you can use them.", opts: ["True", "False"], ans: "False" },
        20 => { type: "multiple_choice", q: "Which is a key feature that makes Ruby unique?", opts: ["A) Static typing", "B) Everything is an object", "C) Compiled execution"], ans: "B" }
      }

      ex_data = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type  = ex_data[:type]
        e.question       = ex_data[:q]
        e.options        = ex_data[:opts]
        e.correct_answer = ex_data[:ans]
      end.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "\nDone! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

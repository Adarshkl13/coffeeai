require_relative "../ruby_content"

namespace :content do
  desc "Create Ruby course and populate all 22 lessons"
  task ruby: :environment do
    course = Course.find_or_create_by!(slug: "ruby") do |c|
      c.title       = "Ruby"
      c.description = "Ruby is a clean, easy-to-read language made to keep developers happy. Learn modern Ruby: blocks, Enumerable, classes, modules, pattern matching, Data objects and testing. Finish with a final project."
      c.color       = "#dc2626"
      c.icon        = "💎"
      c.position    = 7
      c.published   = true
    end
    course.update!(description: "Ruby is a clean, easy-to-read language made to keep developers happy. Learn modern Ruby: blocks, Enumerable, classes, modules, pattern matching, Data objects and testing. Finish with a final project.")
    puts "Course: #{course.title} (#{course.slug})"

    titles = {
      1  => "Introduction to Ruby",               2  => "Variables, Numbers and nil",
      3  => "Working with Strings",               4  => "Conditionals and case",
      5  => "Loops, Ranges and Iterators",        6  => "Arrays",
      7  => "Hashes and Symbols",                 8  => "Methods and Keyword Arguments",
      9  => "Blocks, Procs and Lambdas",          10 => "Enumerable in Depth",
      11 => "Regular Expressions",                12 => "Classes and Objects",
      13 => "Inheritance and Polymorphism",       14 => "Modules and Mixins",
      15 => "Comparable and Enumerable Mixins",   16 => "Metaprogramming Basics",
      17 => "Exception Handling",                 18 => "Struct and Data",
      19 => "Pattern Matching",                   20 => "JSON, Files and the Standard Library",
      21 => "Testing with Minitest",              22 => "Capstone Project: Library Manager"
    }

    descriptions = {
      1  => "Meet Ruby and print output with puts, print and p. See why everything in Ruby is an object.",
      2  => "Store values in variables and learn Integer, Float and Rational maths. Convert types safely, and learn how nil and truthiness work.",
      3  => "Use interpolation, common string methods, formatting and heredocs. Learn the difference between strings you can change and frozen strings.",
      4  => "Make decisions with if, unless, the ternary operator and case/when. Write cleaner code with guard clauses and safe navigation.",
      5  => "Repeat work with ranges, times, each, while and loop. Control loops with next and break.",
      6  => "Create, read, change and combine arrays. Learn which methods return a new array and which change the original.",
      7  => "Store key-value data in hashes and use symbols as keys. Count, change and dig into nested data.",
      8  => "Write methods you can reuse, with default, keyword, splat and double-splat parameters. Use implicit returns and endless definitions.",
      9  => "Pass blocks with yield, and store behaviour in procs and lambdas. Learn how closures work and how procs and lambdas differ.",
      10 => "Replace hand-written loops with map, select, reduce, group_by, partition, tally, each_slice, lazy and other Enumerable methods.",
      11 => "Match, check, pull out and replace text with Regexp literals, match?, match, scan, gsub and named captures. Avoid the ^/$ trap when you check input.",
      12 => "Define classes with initialize, instance variables, attribute macros, custom setters, class methods and private methods.",
      13 => "Reuse and extend classes with inheritance and super. Write flexible code with polymorphism and duck typing.",
      14 => "Organise code with module namespaces. Share behaviour with include, extend and prepend, and limit monkey patches with refinements.",
      15 => "Define <=> to make objects Comparable and each to make them Enumerable. Then you get dozens of methods for free.",
      16 => "Look inside objects while the program runs. Call methods by name with public_send, create methods with define_method, and use method_missing safely.",
      17 => "Handle errors with begin, rescue, else, ensure and retry. Raise exceptions, and design your own error classes.",
      18 => "Build small value objects with Data.define and records you can change with Struct. Learn when to use them and when to use hashes.",
      19 => "Match the shape of arrays, hashes and Data objects with case/in. Bind variables, and use guards, pins and one-line patterns.",
      20 => "Convert data to and from JSON and CSV. Work with dates, sets and digests, and read and write files on your own computer.",
      21 => "Write automated tests with Minitest assertions. Read failure output, and follow the red-green-refactor cycle.",
      22 => "Combine Data, Enumerable, exceptions, pattern matching and JSON to build a full library manager. Then add more features to it.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which line prints \"hello\" WITH the quotation marks shown?",
              opts: ["A) puts \"hello\"", "B) print \"hello\"", "C) p \"hello\""], ans: "C" },
      2  => { type: "true_false",      q: "In Ruby, the body of `if 0 ... end` runs, because 0 is truthy.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: 'What is printed? a = String.new("Hi"); b = a; b << "!"; puts a',
              opts: ["A) Hi!", "B) Hi", "C) A FrozenError is raised"], ans: "A" },
      4  => { type: "multiple_choice", q: 'What does this return? case 15 when 1..9 then "small" when Integer then "number" else "other" end',
              opts: ["A) \"small\"", "B) \"number\"", "C) \"other\""], ans: "B" },
      5  => { type: "true_false",      q: "(1...5).to_a includes the number 5.",
              opts: ["True", "False"], ans: "False" },
      6  => { type: "multiple_choice", q: "What does this print? grid = Array.new(3, []); grid[0] << 1; p grid",
              opts: ["A) [[1], [], []]", "B) [[1], [1], [1]]", "C) It raises an error"], ans: "B" },
      7  => { type: "true_false",      q: 'Given student = { name: "Asha" }, the expression student["name"] returns "Asha".',
              opts: ["True", "False"], ans: "False" },
      8  => { type: "multiple_choice", q: "A method is defined as def emi(principal:, rate:, months: 12). Which call raises an ArgumentError?",
              opts: ["A) emi(rate: 9, principal: 50_000)", "B) emi(principal: 50_000, rate: 9, months: 6)", "C) emi(50_000, 9)"], ans: "C" },
      9  => { type: "multiple_choice", q: "What happens when you run: add = ->(a, b) { a + b }; add.call(1)",
              opts: ["A) It raises ArgumentError", "B) It returns 1", "C) It returns nil"], ans: "A" },
      10 => { type: "multiple_choice", q: "Which call on [1, 2, 3, 4] returns [[2, 4], [1, 3]]?",
              opts: ["A) group_by(&:even?)", "B) partition(&:even?)", "C) each_slice(2).to_a"], ans: "B" },
      11 => { type: "multiple_choice", q: "Which pattern checks that the WHOLE string is a 6-digit PIN code, even when the input has a newline?",
              opts: ["A) /^\\d{6}$/", "B) /\\d{6}/", "C) /\\A\\d{6}\\z/"], ans: "C" },
      12 => { type: "true_false",      q: "Inside an instance method, writing marks = 50 (without self.) calls the marks= setter method.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Manager < Employee. Manager#initialize(name, salary, bonus) must pass only name and salary to Employee#initialize(name, salary). Which call is correct?",
              opts: ["A) super", "B) super(name, salary)", "C) super()"], ans: "B" },
      14 => { type: "true_false",      q: "After class Student includes the module Greetable, Student.ancestors lists Greetable right after Student.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "You want your Version objects to support <, >, between? and sort. What is the usual Ruby way?",
              opts: ["A) Define <=> and include Comparable", "B) Define each and include Enumerable", "C) Define <, > and == separately in every class"], ans: "A" },
      16 => { type: "true_false",      q: "obj.send(:secret) can call a private method named secret. obj.public_send(:secret) raises NoMethodError.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "true_false",      q: "rescue Exception => e is the recommended way to catch all normal errors in an app.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "Point = Data.define(:x, :y) and pt = Point.new(x: 1, y: 2). How do you get a point with y = 5?",
              opts: ["A) pt.y = 5", "B) pt.update(y: 5)", "C) pt.with(y: 5)"], ans: "C" },
      19 => { type: "multiple_choice", q: "What does the expression { status: 200, extra: 1 } in { status: 200 } return?",
              opts: ["A) true", "B) false", "C) It raises NoMatchingPatternError"], ans: "A" },
      20 => { type: "true_false",      q: "JSON.parse(text, symbolize_names: true) returns hashes whose keys are symbols such as :name.",
              opts: ["True", "False"], ans: "True" },
      21 => { type: "multiple_choice", q: "Which Minitest assertion is written the right way to check that the cart total is 280?",
              opts: ["A) assert_equal @cart.total, 280", "B) assert 280, @cart.total", "C) assert_equal 280, @cart.total"], ans: "C" },
      22 => { type: "true_false",      q: 'A hash pattern such as in { action: "lend" } does NOT match the string-keyed hash { "action" => "lend" }.',
              opts: ["True", "False"], ans: "True" }
    }

    RubyContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title:        titles[position],
        description:  descriptions[position],
        body:         data[:body],
        starter_code: data[:starter_code]
      )

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type  = ex[:type]
        e.question       = ex[:q]
        e.options        = ex[:opts]
        e.correct_answer = ex[:ans]
      end.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "\nDone! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

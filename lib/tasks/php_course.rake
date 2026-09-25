require_relative "../php_content"

namespace :content do
  desc "Create PHP course and populate all 20 lessons"
  task php: :environment do
    course = Course.find_or_create_by!(slug: "php") do |c|
      c.title       = "PHP"
      c.description = "PHP powers over 77% of the web. Learn server-side scripting, OOP, array functions, and MySQL database integration — the foundation of Laravel and WordPress development."
      c.color       = "#a855f7"
      c.icon        = "🐘"
      c.position    = 9
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to PHP",         2  => "Variables and Data Types",
      3  => "Working with Strings",         4  => "Numbers and Math",
      5  => "Arrays",                        6  => "Associative Arrays",
      7  => "Conditional Statements",        8  => "Loops",
      9  => "Functions",                    10 => "Array Functions",
      11 => "String Functions",             12 => "PHP and HTML",
      13 => "Date and Time",               14 => "File Handling",
      15 => "Classes and Objects",          16 => "Encapsulation",
      17 => "Inheritance and Traits",       18 => "Exception Handling",
      19 => "PHP and MySQL / PDO",          20 => "PHP Review"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "What is the correct tag to start PHP code?",
              opts: ["A) <php>", "B) <script php>", "C) <?php"], ans: "C" },
      2  => { type: "true_false",      q: "A constant created with define('PI', 3.14159) is referenced as $PI.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "Which operator is used for string concatenation in PHP?",
              opts: ["A) .", "B) +", "C) &"], ans: "A" },
      4  => { type: "true_false",      q: "In PHP, 7 / 2 evaluates to 3.5 (float), not 3 (integer).",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "How do you append an item to a PHP array using shorthand?",
              opts: ["A) $arr[] = val", "B) $arr.push(val)", "C) $arr.add(val)"], ans: "A" },
      6  => { type: "true_false",      q: "Reading $person['email'] when that key does not exist silently returns null without any warning.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "Which comparison operator checks both value AND type in PHP?",
              opts: ["A) ==", "B) =", "C) ==="], ans: "C" },
      8  => { type: "true_false",      q: "By default, changing $value inside foreach ($arr as $value) also changes the original array.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "How do you define a function in PHP?",
              opts: ["A) def name() {}", "B) function name() {}", "C) func name() {}"], ans: "B" },
      10 => { type: "true_false",      q: "array_filter() re-indexes its result, so the kept elements always have keys 0, 1, 2, and so on.",
              opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "Which PHP function splits a string into an array?",
              opts: ["A) split()", "B) str_split_by()", "C) explode()"], ans: "C" },
      12 => { type: "true_false",      q: "The <?= shorthand in PHP is equivalent to <?php echo.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "What does echo date(\"Y-m-d\"); output?",
              opts: ["A) Only the current year, for example 2024", "B) Today's date, for example 2024-01-15", "C) A Unix timestamp such as 1705312245"], ans: "B" },
      14 => { type: "true_false",      q: "file_put_contents() in PHP creates the file if it doesn't exist.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "What is the name of the constructor method in a PHP class?",
              opts: ["A) __construct()", "B) __init__()", "C) A method with the same name as the class"], ans: "A" },
      16 => { type: "true_false",      q: "In PHP, private properties are accessible only within the class they are defined in.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "How is a trait different from an interface in PHP?",
              opts: ["A) A trait provides actual method implementations; an interface only declares method signatures", "B) An interface provides method implementations; a trait only declares signatures", "C) They are the same thing with different keywords"], ans: "A" },
      18 => { type: "true_false",      q: "The finally block in PHP executes regardless of whether an exception was thrown.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Why should you use PDO prepared statements instead of string concatenation for SQL?",
              opts: ["A) They always run faster than ordinary queries", "B) They send user input separately, preventing SQL injection", "C) They use less memory on the database server"], ans: "B" },
      20 => { type: "true_false",      q: "In PHP, the loose comparison \"1\" == 1 evaluates to false.",
              opts: ["True", "False"], ans: "False" }
    }

    PhpContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]
        l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type  = ex[:type]
        e.question       = ex[:q]
        e.options        = ex[:opts]
        e.correct_answer = ex[:ans]
      end.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

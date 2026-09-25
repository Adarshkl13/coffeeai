require_relative "../java_content"

namespace :content do
  desc "Create Java course and populate all 20 lessons"
  task java: :environment do
    course = Course.find_or_create_by!(slug: "java") do |c|
      c.title       = "Java"
      c.description = "Java is one of the world's most popular languages — powering Android, enterprise systems, and big data. Learn OOP, collections, generics, and more."
      c.color       = "#f97316"
      c.icon        = "☕"
      c.position    = 8
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Java",       2  => "Variables and Data Types",
      3  => "Working with Strings",        4  => "Numbers and Math",
      5  => "Arrays",                       6  => "Conditional Statements",
      7  => "Loops",                        8  => "Methods",
      9  => "Classes and Objects",         10 => "Constructors and this",
      11 => "Encapsulation",               12 => "Inheritance",
      13 => "Polymorphism",                14 => "Abstract Classes",
      15 => "Interfaces",                  16 => "Exception Handling",
      17 => "ArrayList and HashMap",       18 => "Generics",
      19 => "Java Standard Library",       20 => "Java Review"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which method prints text with a newline in Java?",
              opts: ["A) System.print()", "B) System.out.println()", "C) console.log()"], ans: "B" },
      2  => { type: "true_false",      q: "In Java, every variable must be declared with its data type.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "How do you compare two String values for equality in Java?",
              opts: ["A) str1 == str2", "B) str1.equals(str2)", "C) str1.compare(str2)"], ans: "B" },
      4  => { type: "true_false",      q: "In Java, 7 / 2 evaluates to 3 (integer division).",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "How do you get the number of elements in a Java array?",
              opts: ["A) array.size()", "B) array.length()", "C) array.length"], ans: "C" },
      6  => { type: "true_false",      q: "In Java, forgetting a break in a switch case causes fall-through to the next case.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "Which Java loop guarantees at least one execution?",
              opts: ["A) for loop", "B) while loop", "C) do-while loop"], ans: "C" },
      8  => { type: "true_false",      q: "A Java method declared with void returns no value.",
              opts: ["True", "False"], ans: "True" },
      9  => { type: "multiple_choice", q: "Which keyword creates a new object instance in Java?",
              opts: ["A) create", "B) new", "C) instance"], ans: "B" },
      10 => { type: "true_false",      q: "In Java, 'this' refers to the current object instance.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Which access modifier makes a field accessible only within its class?",
              opts: ["A) public", "B) protected", "C) private"], ans: "C" },
      12 => { type: "true_false",      q: "In Java, a child class uses 'extends' to inherit from a parent class.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "What allows a parent class reference to hold a child class object?",
              opts: ["A) Encapsulation", "B) Polymorphism", "C) Abstraction"], ans: "B" },
      14 => { type: "true_false",      q: "An abstract class in Java cannot be instantiated directly.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "How many interfaces can a Java class implement?",
              opts: ["A) Only one", "B) Exactly two", "C) Multiple"], ans: "C" },
      16 => { type: "true_false",      q: "The finally block in Java always executes, regardless of whether an exception occurred.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "Which Java collection automatically grows in size as you add elements?",
              opts: ["A) int[]", "B) ArrayList", "C) Neither"], ans: "B" },
      18 => { type: "true_false",      q: "Generics in Java allow you to write type-safe code that works with any data type.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Which Java package is automatically imported in every program?",
              opts: ["A) java.util", "B) java.io", "C) java.lang"], ans: "C" },
      20 => { type: "true_false",      q: "Java follows the 'Write Once, Run Anywhere' principle through its JVM bytecode.",
              opts: ["True", "False"], ans: "True" }
    }

    JavaContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title       = titles[position]
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

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
      1  => { type: "multiple_choice", q: "What does the Java compiler produce from a .java source file?",
              opts: ["A) .class bytecode that runs on any JVM", "B) A native executable that only runs on the OS it was compiled on", "C) An interpreted script that must be recompiled every run"], ans: "A" },
      2  => { type: "true_false",      q: "In Java, int x = (int) 3.99; stores 4, because the cast rounds to the nearest integer.",
              opts: ["True", "False"], ans: "False" },
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
      8  => { type: "true_false",      q: "Two Java methods can be overloaded just by giving them different return types, even if their parameter lists are identical.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "A public Java class is named BankAccount. What must its source file be called?",
              opts: ["A) BankAccount.java", "B) bankaccount.java", "C) Main.java"], ans: "A" },
      10 => { type: "true_false",      q: "Inside a constructor whose parameter is also called name, writing name = name; (without this) assigns the parameter to the field.",
              opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "Which access modifier makes a field accessible only within its class?",
              opts: ["A) private", "B) public", "C) protected"], ans: "A" },
      12 => { type: "true_false",      q: "A Java class can extend two parent classes at once, for example class C extends A, B.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Animal a = new Dog(\"Rex\"); a.speak(); — Dog overrides speak(). Which version runs?",
              opts: ["A) Animal's speak(), because the variable type is Animal", "B) Dog's speak(), chosen at runtime (dynamic dispatch)", "C) Neither; the code does not compile"], ans: "B" },
      14 => { type: "true_false",      q: "An abstract class in Java cannot be instantiated directly.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "How many interfaces can a Java class implement?",
              opts: ["A) Only one", "B) Multiple", "C) Exactly two"], ans: "B" },
      16 => { type: "true_false",      q: "When using several catch blocks, you should catch the general Exception before more specific ones like ArithmeticException.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "Which HashMap method checks whether a key is present?",
              opts: ["A) hasKey()", "B) exists()", "C) containsKey()"], ans: "C" },
      18 => { type: "true_false",      q: "Generics in Java allow you to write type-safe code that works with any data type.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Which Java package is automatically imported in every program?",
              opts: ["A) java.lang", "B) java.util", "C) java.io"], ans: "A" },
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

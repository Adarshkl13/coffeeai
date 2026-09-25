require_relative "../java_content"

namespace :content do
  desc "Create Java course and populate all 20 lessons"
  task java: :environment do
    course = Course.find_or_create_by!(slug: "java") do |c|
      c.title       = "Java"
      c.description = "Learn modern Java (17+) from your first program to records, sealed types, collections, streams, java.time and JUnit testing — then build a complete library management project."
      c.color       = "#f97316"
      c.icon        = "☕"
      c.position    = 8
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Java",                    2  => "Variables and Data Types",
      3  => "Operators and Math",                      4  => "Strings and Text Blocks",
      5  => "Conditionals and Switch Expressions",     6  => "Loops",
      7  => "Arrays",                                  8  => "Methods",
      9  => "Classes and Objects",                     10 => "Encapsulation, Immutability and Records",
      11 => "Inheritance",                             12 => "Polymorphism and Abstract Classes",
      13 => "Interfaces and Sealed Types",             14 => "Exceptions and Error Handling",
      15 => "Generics",                                16 => "Collections: List, Set and Map",
      17 => "Lambdas and Streams",                     18 => "Optional and the java.time API",
      19 => "Unit Testing with JUnit",                 20 => "Capstone Project: Library Management System"
    }

    descriptions = {
      1  => "See how Java source becomes bytecode that runs on the JVM, meet the current Java versions, and write your first program.",
      2  => "Learn all eight primitive types, var, final constants, and how casting and overflow really behave.",
      3  => "Use arithmetic, logical operators and the Math class correctly, and learn why money needs BigDecimal.",
      4  => "Work with immutable Strings, compare them with equals, build text with StringBuilder and write text blocks.",
      5  => "Make decisions with if/else, the ternary operator, enums and modern switch expressions.",
      6  => "Repeat work with for, while, do-while and for-each loops, and control them with break and continue.",
      7  => "Store fixed-size data in arrays, use the Arrays helpers, and understand that arrays are references.",
      8  => "Write reusable methods with parameters and return values, overloading, varargs and recursion.",
      9  => "Model real things with classes, constructors, this, static members and object references.",
      10 => "Protect data with private fields, design immutable objects and create data classes in one line with records.",
      11 => "Reuse and extend classes with extends, super and @Override, and know when to prefer composition.",
      12 => "Let one variable type run many behaviours with dynamic dispatch, abstract classes and instanceof patterns.",
      13 => "Define contracts with interfaces and default methods, and model closed sets of types with sealed interfaces.",
      14 => "Handle errors with try/catch/finally, understand checked vs unchecked exceptions and use try-with-resources.",
      15 => "Write type-safe classes and methods with generics, bounded types and wildcards.",
      16 => "Choose the right collection — ArrayList, HashSet, TreeSet, HashMap, TreeMap or ArrayDeque — for each job.",
      17 => "Pass behaviour as lambdas and method references, and process collections with stream pipelines and collectors.",
      18 => "Replace null with Optional return values and handle dates, times and durations with java.time.",
      19 => "Write automated tests with JUnit: @Test, assertions, assertThrows and parameterised tests.",
      20 => "Combine records, enums, collections, Optional, java.time, exceptions and streams in a working library system."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "You save the code public class Main { ... } in a file named main.java and run javac main.java. What happens?",
              opts: ["A) It compiles, because javac ignores the capitalisation of file names", "B) A compile error, because a public class must be in a file with exactly the same name", "C) It compiles, but the JVM refuses to run the resulting .class file"], ans: "B" },
      2  => { type: "true_false",      q: "After var count = 10; the statement count = \"ten\"; compiles, because var makes a variable dynamically typed.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "What does System.out.println(7 / 2 + 7 % 2); print?",
              opts: ["A) 4.5", "B) 3", "C) 4"], ans: "C" },
      4  => { type: "true_false",      q: "\"java\" == new String(\"java\") is false, while \"java\".equals(new String(\"java\")) is true.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "int day = 6; String r = switch (day) { case 6, 7 -> \"Weekend\"; default -> \"Weekday\"; }; What is r?",
              opts: ["A) \"Weekend\"", "B) \"Weekday\", because the arrow form falls through to default", "C) Nothing: a switch cannot produce a value, so this does not compile"], ans: "A" },
      6  => { type: "true_false",      q: "A do-while loop runs its body at least once, even if its condition is false from the start.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "int[] a = {1, 2, 3}; int[] b = a; b[0] = 9; What is the value of a[0] now?",
              opts: ["A) 9, because a and b refer to the same array", "B) 1, because b = a makes a copy of the array", "C) The code does not compile"], ans: "A" },
      8  => { type: "true_false",      q: "Two Java methods can be overloaded if they have identical parameter lists and differ only in their return type.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "A class has a field String name and the constructor Student(String name) { name = name; }. What is the field's value after new Student(\"Anu\")?",
              opts: ["A) \"Anu\", because the constructor received it", "B) \"name\", the name of the parameter", "C) null"], ans: "C" },
      10 => { type: "multiple_choice", q: "Given record Point(int x, int y) { } and Point p = new Point(3, 4); how do you read the x value?",
              opts: ["A) p.getX()", "B) p.x()", "C) Point.x(p)"], ans: "B" },
      11 => { type: "true_false",      q: "Every Java class, directly or indirectly, extends java.lang.Object.",
              opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "Shape s = new Circle(2); Circle overrides the abstract method area(). Which area() runs when you call s.area()?",
              opts: ["A) Shape's version, because the variable's type is Shape", "B) Circle's version, chosen at runtime by dynamic dispatch", "C) Neither: calling a method through an abstract type is a compile error"], ans: "B" },
      13 => { type: "multiple_choice", q: "sealed interface Payment permits Upi, Card, Cash { } — what happens if you add class Crypto implements Payment { }?",
              opts: ["A) It compiles, because permits is only documentation", "B) It compiles, but throws an exception when a Crypto object is created", "C) A compile error, because Crypto is not in the permits list"], ans: "C" },
      14 => { type: "true_false",      q: "Unchecked exceptions such as NullPointerException must be declared with throws in the method signature, or the code will not compile.",
              opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "Which method can be called with both a List<Integer> and a List<Double> to add up their values?",
              opts: ["A) double sum(List<? extends Number> nums)", "B) double sum(List<Number> nums)", "C) double sum(List<? super Number> nums)"], ans: "A" },
      16 => { type: "multiple_choice", q: "An app must check very often whether a username is already taken, and each username may appear only once. Which collection fits best?",
              opts: ["A) ArrayList<String>", "B) TreeMap<String, String>", "C) HashSet<String>"], ans: "C" },
      17 => { type: "true_false",      q: "names.stream().filter(n -> n.startsWith(\"A\")).map(String::toUpperCase); processes every element even though no terminal operation such as toList() is called.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "LocalDate d = LocalDate.of(2026, 9, 25); d.plusDays(10); System.out.println(d); — what is printed?",
              opts: ["A) 2026-10-05", "B) 2026-09-25", "C) Nothing: plusDays does not compile without an assignment"], ans: "B" },
      19 => { type: "true_false",      q: "In JUnit, assertThrows(IllegalArgumentException.class, () -> calc.withGst(-1)) fails if withGst(-1) returns normally without throwing.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "In the capstone, why does borrow() take LocalDate today as a parameter instead of calling LocalDate.now() inside the method?",
              opts: ["A) So the results are deterministic and the method is easy to test", "B) Because LocalDate.now() was removed in Java 17", "C) Because a method that throws a checked exception cannot call static methods"], ans: "A" }
    }

    JavaContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
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

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

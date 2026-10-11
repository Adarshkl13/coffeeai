require_relative "../java_content"

namespace :content do
  desc "Create Java course and populate all 21 lessons"
  task java: :environment do
    course = Course.find_or_create_by!(slug: "java") do |c|
      c.title       = "Java"
      c.description = "Learn modern Java (17+), from your first program to records, enums, sealed types, collections, streams, java.time, files, basic concurrency, packages, build tools and JUnit testing. Then build a full library management project."
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
      9  => "Classes and Objects",                     10 => "Encapsulation, Records and Enums",
      11 => "Inheritance and Polymorphism",            12 => "Interfaces and Sealed Types",
      13 => "Exceptions and Error Handling",           14 => "Generics",
      15 => "Collections: List, Set and Map",          16 => "Lambdas and Streams",
      17 => "Optional and the java.time API",          18 => "Files and Basic Concurrency",
      19 => "Packages, Modules and Build Tools",       20 => "Unit Testing with JUnit",
      21 => "Capstone Project: Library Management System"
    }

    descriptions = {
      1  => "See how Java source code becomes bytecode that runs on the JVM. Learn about the current Java versions and write your first program.",
      2  => "Learn all eight primitive types, var and final constants. See how casting and overflow really work.",
      3  => "Use arithmetic, logical operators and the Math class correctly. Learn why money needs BigDecimal.",
      4  => "Work with Strings, which cannot change, and compare them with equals. Build text with StringBuilder and write text blocks.",
      5  => "Make decisions with if/else, the ternary operator, enums and modern switch expressions.",
      6  => "Repeat work with for, while, do-while and for-each loops. Control them with break and continue.",
      7  => "Store fixed-size data in arrays and use the Arrays helpers. Learn that arrays are references.",
      8  => "Write methods you can reuse, with parameters, return values, overloading, varargs and recursion.",
      9  => "Model real things with classes, constructors, this, static members and object references.",
      10 => "Protect data with private fields and make objects that cannot change. Create data classes in one line with records. Give enums fields, constructors and methods, and use EnumMap for enum keys.",
      11 => "Reuse and extend classes with extends, super and @Override. Let one variable type do many things with abstract classes, dynamic dispatch and instanceof patterns.",
      12 => "Set rules for classes with interfaces and default methods. Model closed sets of types with sealed interfaces.",
      13 => "Handle errors with try/catch/finally. Learn checked vs unchecked exceptions and use try-with-resources.",
      14 => "Write type-safe classes and methods with generics, bounded types and wildcards.",
      15 => "Pick the right collection for each job: ArrayList, HashSet, TreeSet, HashMap, TreeMap or ArrayDeque.",
      16 => "Pass behaviour as lambdas and method references. Process collections with stream pipelines and collectors.",
      17 => "Return Optional values instead of null. Handle dates, times and durations with java.time.",
      18 => "Read and write files with java.nio.file Files and Path. Run tasks at the same time with an ExecutorService, Future and CompletableFuture, without sharing unsafe state.",
      19 => "Put code into packages and imports, and see what modules add. Build, test and package real projects with Maven or Gradle.",
      20 => "Write automated tests with JUnit: @Test, assertions, assertThrows and parameterised tests.",
      21 => "Use records, enums, collections, Optional, java.time, exceptions and streams together in a working library system.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "You save the code public class Main { ... } in a file named main.java and run javac main.java. What happens?",
              opts: ["A) It compiles, because javac ignores upper and lower case in file names", "B) A compile error, because a public class must be in a file with exactly the same name", "C) It compiles, but the JVM will not run the .class file it makes"], ans: "B" },
      2  => { type: "true_false",      q: "After var count = 10; the line count = \"ten\"; compiles, because var makes a variable dynamically typed.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "What does System.out.println(7 / 2 + 7 % 2); print?",
              opts: ["A) 4.5", "B) 3", "C) 4"], ans: "C" },
      4  => { type: "true_false",      q: "\"java\" == new String(\"java\") is false, while \"java\".equals(new String(\"java\")) is true.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "int day = 6; String r = switch (day) { case 6, 7 -> \"Weekend\"; default -> \"Weekday\"; }; What is r?",
              opts: ["A) \"Weekend\"", "B) \"Weekday\", because the arrow form falls through to default", "C) Nothing: a switch cannot return a value, so this does not compile"], ans: "A" },
      6  => { type: "true_false",      q: "A do-while loop runs its body at least once, even if its condition is false at the start.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "int[] a = {1, 2, 3}; int[] b = a; b[0] = 9; What is the value of a[0] now?",
              opts: ["A) 9, because a and b refer to the same array", "B) 1, because b = a makes a copy of the array", "C) The code does not compile"], ans: "A" },
      8  => { type: "true_false",      q: "Two Java methods can be overloaded if they have the same parameter lists and differ only in their return type.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "A class has a field String name and the constructor Student(String name) { name = name; }. What is the field's value after new Student(\"Anu\")?",
              opts: ["A) \"Anu\", because the constructor got it", "B) \"name\", the name of the parameter", "C) null"], ans: "C" },
      10 => { type: "multiple_choice", q: "You have record Point(int x, int y) { } and Point p = new Point(3, 4); How do you read the x value?",
              opts: ["A) p.getX()", "B) p.x()", "C) Point.x(p)"], ans: "B" },
      11 => { type: "multiple_choice", q: "Shape s = new Circle(2); Circle overrides the abstract method area(). Which area() runs when you call s.area()?",
              opts: ["A) Shape's version, because the variable's type is Shape", "B) Circle's version, picked at runtime by dynamic dispatch", "C) Neither: calling a method through an abstract type is a compile error"], ans: "B" },
      12 => { type: "multiple_choice", q: "You have sealed interface Payment permits Upi, Card, Cash { }. What happens if you add class Crypto implements Payment { }?",
              opts: ["A) It compiles, because permits is only a comment for people", "B) It compiles, but throws an exception when a Crypto object is created", "C) A compile error, because Crypto is not in the permits list"], ans: "C" },
      13 => { type: "true_false",      q: "You must declare unchecked exceptions like NullPointerException with throws in the method signature. If not, the code will not compile.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Which method can you call with both a List<Integer> and a List<Double> to add up their values?",
              opts: ["A) double sum(List<? extends Number> nums)", "B) double sum(List<Number> nums)", "C) double sum(List<? super Number> nums)"], ans: "A" },
      15 => { type: "multiple_choice", q: "An app checks very often if a username is already taken. Each username can appear only once. Which collection fits best?",
              opts: ["A) ArrayList<String>", "B) TreeMap<String, String>", "C) HashSet<String>"], ans: "C" },
      16 => { type: "true_false",      q: "names.stream().filter(n -> n.startsWith(\"A\")).map(String::toUpperCase); processes every element, even with no terminal operation like toList().",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "LocalDate d = LocalDate.of(2026, 9, 25); d.plusDays(10); System.out.println(d); What is printed?",
              opts: ["A) 2026-10-05", "B) 2026-09-25", "C) Nothing: plusDays does not compile without an assignment"], ans: "B" },
      18 => { type: "true_false",      q: "A program sends tasks to an ExecutorService from Executors.newFixedThreadPool(3) but never calls shutdown(). The JVM may keep running after main() returns, because the pool's worker threads are still alive.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Book.java starts with package in.academy.library.model; and has static String secret() with no access modifier. Main, in package in.academy.library.app, calls Book.secret(). What happens?",
              opts: ["A) It compiles, because both packages start with in.academy.library", "B) A compile error: secret() is not visible outside its package", "C) It compiles, but throws an exception when secret() is called"], ans: "B" },
      20 => { type: "true_false",      q: "In JUnit, assertThrows(IllegalArgumentException.class, () -> calc.withGst(-1)) fails if withGst(-1) returns normally and throws nothing.",
              opts: ["True", "False"], ans: "True" },
      21 => { type: "multiple_choice", q: "In the capstone, why does borrow() take LocalDate today as a parameter, and not call LocalDate.now() inside the method?",
              opts: ["A) So the results are always the same and the method is easy to test", "B) Because LocalDate.now() was removed in Java 17", "C) Because a method that throws a checked exception cannot call static methods"], ans: "A" }
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

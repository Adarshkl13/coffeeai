require_relative "../typescript_content"

namespace :content do
  desc "Create TypeScript course and populate all 20 lessons"
  task typescript: :environment do
    course = Course.find_or_create_by!(slug: "typescript") do |c|
      c.title       = "TypeScript"
      c.description = "TypeScript adds static types to JavaScript. Master type annotations, interfaces, generics, union types, utility types, classes, enums, async patterns, and build safer, more maintainable applications."
      c.color       = "#3178c6"
      c.icon        = "🔷"
      c.position    = 17
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to TypeScript",           2  => "Primitive Types",
      3  => "Arrays and Tuples",                    4  => "Object Types and Type Aliases",
      5  => "Interfaces",                           6  => "Functions with Types",
      7  => "Union and Intersection Types",         8  => "Type Narrowing",
      9  => "Generics",                             10 => "Classes and Access Modifiers",
      11 => "Inheritance and Abstract Classes",     12 => "Enums",
      13 => "Utility Types",                        14 => "Mapped Types and Conditional Types",
      15 => "Async TypeScript",                     16 => "Declaration Files and Modules",
      17 => "Advanced Type Patterns",               18 => "TypeScript with React",
      19 => "TypeScript Configuration and Strict Mode", 20 => "TypeScript Review — Full Application"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "TypeScript adds what to JavaScript?",
              opts: ["A) New runtime features", "B) Static types", "C) A new module system"], ans: "B" },
      2  => { type: "multiple_choice", q: "Which TypeScript type is like 'any' but requires a type check before use?",
              opts: ["A) never", "B) void", "C) unknown"], ans: "C" },
      3  => { type: "multiple_choice", q: "Which syntax defines a typed tuple with a string and a number?",
              opts: ["A) [string, number]", "B) (string, number)", "C) string | number"], ans: "A" },
      4  => { type: "multiple_choice", q: "Which keyword makes an object property unchangeable after construction?",
              opts: ["A) const", "B) readonly", "C) final"], ans: "B" },
      5  => { type: "true_false",      q: "A class that 'implements' an interface must provide all methods defined in that interface.",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "What is the return type of a function that returns nothing?",
              opts: ["A) null", "B) undefined", "C) void"], ans: "C" },
      7  => { type: "multiple_choice", q: "Which type allows a value to be either a string OR a number?",
              opts: ["A) string & number", "B) string | number", "C) string + number"], ans: "B" },
      8  => { type: "true_false",      q: "TypeScript automatically narrows types inside conditional blocks using typeof/instanceof checks.",
              opts: ["True", "False"], ans: "True" },
      9  => { type: "multiple_choice", q: "In function<T>(arg: T): T, what does T represent?",
              opts: ["A) A type named T", "B) A generic type parameter filled in at call time", "C) The string 'T'"], ans: "B" },
      10 => { type: "multiple_choice", q: "Which access modifier makes a property accessible only within the class itself?",
              opts: ["A) protected", "B) internal", "C) private"], ans: "C" },
      11 => { type: "multiple_choice", q: "An abstract class can:",
              opts: ["A) Be instantiated directly with new", "B) Define abstract methods that subclasses must implement", "C) Not have any concrete methods"], ans: "B" },
      12 => { type: "true_false",      q: "String enums (enum Color { Red = 'RED' }) are preferred over numeric enums for debuggability.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "Which utility type makes all properties of T optional?",
              opts: ["A) Optional<T>", "B) Partial<T>", "C) Maybe<T>"], ans: "B" },
      14 => { type: "multiple_choice", q: "What does { [K in keyof T]: string } produce?",
              opts: ["A) A union of T's keys", "B) A type with all T's keys mapped to string values", "C) A string version of T"], ans: "B" },
      15 => { type: "multiple_choice", q: "What is the return type annotation for an async function that resolves to a User object?",
              opts: ["A) async User", "B) Future<User>", "C) Promise<User>"], ans: "C" },
      16 => { type: "true_false",      q: "TypeScript's @types/ packages (from DefinitelyTyped) provide type definitions for JavaScript libraries.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "The 'as const' assertion does what?",
              opts: ["A) Casts to any type", "B) Makes values mutable", "C) Infers literal types and makes values readonly"], ans: "C" },
      18 => { type: "multiple_choice", q: "In React with TypeScript, how do you type a component's props?",
              opts: ["A) props: any", "B) Define a Props type/interface and annotate the parameter", "C) Use PropTypes from React"], ans: "B" },
      19 => { type: "multiple_choice", q: "Which tsconfig option enables all strict type checks at once?",
              opts: ["A) \"noImplicitAny\": true", "B) \"strict\": true", "C) \"checkAll\": true"], ans: "B" },
      20 => { type: "multiple_choice", q: "What does Omit<T, 'id'> produce?",
              opts: ["A) T with only the id property", "B) T without the id property", "C) T where id is optional"], ans: "B" }
    }

    TypescriptContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_create_by!(course_lesson: lesson) do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

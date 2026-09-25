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
      1  => { type: "multiple_choice", q: "When does TypeScript report type errors?",
              opts: ["A) Only at runtime, when the faulty line executes", "B) Only after the code is deployed to production", "C) At compile time, before the code runs"], ans: "C" },
      2  => { type: "multiple_choice", q: "Which TypeScript type is like 'any' but requires a type check before use?",
              opts: ["A) never", "B) void", "C) unknown"], ans: "C" },
      3  => { type: "multiple_choice", q: "Which syntax defines a typed tuple with a string and a number?",
              opts: ["A) [string, number]", "B) (string, number)", "C) string | number"], ans: "A" },
      4  => { type: "multiple_choice", q: "Which keyword makes an object property unchangeable after construction?",
              opts: ["A) const", "B) readonly", "C) final"], ans: "B" },
      5  => { type: "true_false",      q: "A class that 'implements' an interface must provide all methods defined in that interface.",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "In function log(message: string, level?: string), what does the ? after level mean?",
              opts: ["A) level is optional and can be left out when calling log", "B) level can only ever be set to null", "C) level must be a string literal type such as \"INFO\""], ans: "A" },
      7  => { type: "multiple_choice", q: "Which type allows a value to be either a string OR a number?",
              opts: ["A) string & number", "B) string + number", "C) string | number"], ans: "C" },
      8  => { type: "true_false",      q: "Inside an if (typeof x === \"string\") block, you still have to cast x with 'as string' before calling string methods on it.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "In function<T>(arg: T): T, what does T represent?",
              opts: ["A) A concrete type that must be declared with the name T", "B) A generic type parameter filled in at call time", "C) The literal string 'T', checked at runtime"], ans: "B" },
      10 => { type: "multiple_choice", q: "Which access modifier makes a property accessible only within the class itself?",
              opts: ["A) private", "B) protected", "C) internal"], ans: "A" },
      11 => { type: "multiple_choice", q: "What can an abstract class do?",
              opts: ["A) Be instantiated directly with the new keyword", "B) Define abstract methods that subclasses must implement", "C) Contain only abstract methods, never concrete ones"], ans: "B" },
      12 => { type: "true_false",      q: "In the numeric enum enum Direction { Up, Down, Left, Right }, Direction.Up equals 1.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Which utility type makes all properties of T optional?",
              opts: ["A) Optional<T>", "B) Maybe<T>", "C) Partial<T>"], ans: "C" },
      14 => { type: "multiple_choice", q: "What does { [K in keyof T]: string } produce?",
              opts: ["A) A union type made up of T's key names", "B) A type with all of T's keys mapped to string values", "C) A single string that describes the type T"], ans: "B" },
      15 => { type: "multiple_choice", q: "What is the return type annotation for an async function that resolves to a User object?",
              opts: ["A) Promise<User>", "B) async User", "C) Future<User>"], ans: "A" },
      16 => { type: "true_false",      q: "TypeScript's @types/ packages (from DefinitelyTyped) provide type definitions for JavaScript libraries.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "What does the 'as const' assertion do?",
              opts: ["A) Infers literal types and makes the values readonly", "B) Casts the value to the any type", "C) Makes every property of the value mutable"], ans: "A" },
      18 => { type: "multiple_choice", q: "In React with TypeScript, how do you type a component's props?",
              opts: ["A) Annotate the parameter as props: any to stay flexible", "B) Rely on PropTypes checks instead of TypeScript types", "C) Define a Props type or interface and annotate the parameter"], ans: "C" },
      19 => { type: "multiple_choice", q: "Which tsconfig option enables all strict type checks at once?",
              opts: ["A) \"noImplicitAny\": true", "B) \"strict\": true", "C) \"checkAll\": true"], ans: "B" },
      20 => { type: "multiple_choice", q: "What does Omit<T, 'id'> produce?",
              opts: ["A) T without the id property", "B) T with only the id property", "C) T where id is optional"], ans: "A" }
    }

    TypescriptContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

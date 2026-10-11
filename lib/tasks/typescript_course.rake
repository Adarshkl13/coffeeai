require_relative "../typescript_content"

namespace :content do
  desc "Create TypeScript course and populate all 21 lessons"
  task typescript: :environment do
    course = Course.find_or_create_by!(slug: "typescript") do |c|
      c.title       = "TypeScript"
      c.description = "TypeScript adds static types to JavaScript. Learn types, inference, unions and narrowing, generics, utility types, classes, safe JSON handling, tsconfig, the DOM and React with TypeScript 7. Then build a fully typed project."
      c.color       = "#3178c6"
      c.icon        = "🔷"
      c.position    = 17
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to TypeScript",
      2  => "Primitive Types and Type Inference",
      3  => "Arrays and Tuples",
      4  => "Object Types and Type Aliases",
      5  => "Interfaces",
      6  => "Functions with Types",
      7  => "Union and Literal Types",
      8  => "Type Narrowing",
      9  => "Discriminated Unions and Exhaustiveness",
      10 => "Generics",
      11 => "Generic Constraints and keyof",
      12 => "Classes and Access Modifiers",
      13 => "Enums vs Union Types",
      14 => "Utility Types",
      15 => "Mapped, Conditional and Template Literal Types",
      16 => "The satisfies Operator and Type Assertions",
      17 => "Async TypeScript and Safe JSON",
      18 => "Modules, Declaration Files and tsconfig",
      19 => "TypeScript and the DOM",
      20 => "TypeScript with React",
      21 => "Capstone Project: Typed Expense Tracker"
    }

    descriptions = {
      1  => "Learn what TypeScript is. See how the compiler checks types and then removes them, and set up a TypeScript 7 project.",
      2  => "Learn the primitive types. See when to write types and when to let TypeScript infer them, and why unknown is safer than any.",
      3  => "Use typed arrays, readonly arrays and fixed-length tuples, including labeled and optional tuple elements.",
      4  => "Describe the shape of objects with type aliases, optional and readonly properties and Record. Learn how structural typing works.",
      5  => "Use interfaces, extends, intersections, declaration merging and implements. Learn when to choose interface or type.",
      6  => "Type parameters and return values. Use optional, default and rest parameters, function types, never and overloads.",
      7  => "Model a fixed set of choices with union and literal types. Build them from real values with as const.",
      8  => "Narrow unions with typeof, in, instanceof, type predicates and assertion functions.",
      9  => "Use tagged unions and check that a switch handles every case with never. Model UI state and use the Result pattern.",
      10 => "Write generic functions, types and classes you can reuse, and keep full type safety.",
      11 => "Use generic constraints, keyof, indexed access types, const type parameters and NoInfer.",
      12 => "Use access modifiers, private and #private, parameter properties, abstract classes and override.",
      13 => "Learn how enums work and what they cost. See why literal unions or as const objects are the modern default.",
      14 => "Make new types from old ones with Partial, Pick, Omit, Record, Exclude, ReturnType, Awaited and more.",
      15 => "Build your own type changes with mapped types, conditional types, infer and template literal types.",
      16 => "Compare annotations, as and satisfies. Check values without losing exact types, and avoid unsafe assertions.",
      17 => "Type async code. Turn JSON you cannot trust into safely typed data with unknown and type guards.",
      18 => "Learn import type, declaration files, @types packages, the strict settings and the TypeScript 6/7 tsconfig defaults.",
      19 => "Type querySelector results and narrow elements with instanceof. Use typed events and FormData without any or unsafe assertions.",
      20 => "Start a project with Vite. Type React props, children, state, refs, events and reducers.",
      21 => "Build a typed expense tracker that uses every main feature of the course."
    }

    exercises = {
      1  => { type: "true_false",      q: "TypeScript checks type annotations while the program runs in the browser. So wrong data from a server is rejected automatically.",
              opts: ["True", "False"], ans: "False" },
      2  => { type: "multiple_choice", q: "const value: unknown = \"hello\"; What happens with value.toUpperCase() under strict mode?",
              opts: ["A) A compile error: value must be narrowed first", "B) It compiles, because unknown works like any", "C) It compiles, but only because the value is a string"], ans: "A" },
      3  => { type: "multiple_choice", q: "Which type describes exactly two items: a name followed by an age?",
              opts: ["A) (string | number)[]", "B) Array<string, number>", "C) [name: string, age: number]"], ans: "C" },
      4  => { type: "true_false",      q: "You assign the object literal { id: 1, name: \"Pen\", colour: \"red\" } directly to a variable of type { id: number; name: string }. This is a compile error.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "Which of these can an interface do that a type alias cannot?",
              opts: ["A) Describe a union such as \"on\" | \"off\"", "B) Merge with another declaration of the same name", "C) Be implemented by a class using implements"], ans: "B" },
      6  => { type: "multiple_choice", q: "type Discount = (price: number) => number; Which assignment is a type error?",
              opts: ["A) const a: Discount = (p) => p * 0.9;", "B) const b: Discount = (p) => Math.max(0, p - 100);", "C) const c: Discount = (p) => (p / 2).toFixed(2);"], ans: "C" },
      7  => { type: "true_false",      q: "You write const ROLES = [\"admin\", \"viewer\"] without as const. The type (typeof ROLES)[number] is \"admin\" | \"viewer\".",
              opts: ["True", "False"], ans: "False" },
      8  => { type: "multiple_choice", q: "What does the return type value is Product on function isProduct(value: unknown) do?",
              opts: ["A) Narrows value to Product wherever the function returns true", "B) Turns value into a Product object at runtime", "C) Makes TypeScript check the value's shape at runtime by itself"], ans: "A" },
      9  => { type: "multiple_choice", q: "Inside a switch over shape.kind, a default branch has const unhandled: never = shape; What is it for?",
              opts: ["A) It makes the switch statement faster at runtime", "B) It gives a compile error if a union member is not handled", "C) It turns shape into the never type for every other case"], ans: "B" },
      10 => { type: "true_false",      q: "With function first<T>(items: T[]): T | undefined, you call first([72, 85]). TypeScript infers T as number, so you do not need to write <number>.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "function getProperty<T, K extends keyof T>(obj: T, key: K): T[K]. With s: { name: string; marks: number }, what is the type of getProperty(s, \"marks\")?",
              opts: ["A) string | number", "B) keyof typeof s", "C) number"], ans: "C" },
      12 => { type: "multiple_choice", q: "What is the main difference between a TypeScript private field and a JavaScript #private field?",
              opts: ["A) private is only checked at compile time. #private is also enforced at runtime", "B) private is enforced at runtime. #private is only checked by the compiler", "C) There is no difference. # is just a shorter way to write private"], ans: "A" },
      13 => { type: "true_false",      q: "A TypeScript enum is fully removed, like type aliases and interfaces, and makes no JavaScript code.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Which type describes a User without its id field, for a create-user form?",
              opts: ["A) Partial<User>", "B) Omit<User, \"id\">", "C) Exclude<User, \"id\">"], ans: "B" },
      15 => { type: "multiple_choice", q: "What does type Unwrap<T> = T extends Promise<infer V> ? V : T; produce for Unwrap<Promise<string>>?",
              opts: ["A) Promise<string>", "B) never", "C) string"], ans: "C" },
      16 => { type: "true_false",      q: "const palette = { green: \"#138808\" } satisfies Record<string, string | number[]>; lets you call palette.green.toUpperCase() without an error.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "What is the safest way to handle the result of await response.json() for a User?",
              opts: ["A) Store it as unknown and check it with a type guard before you use it", "B) Write (await response.json()) as User to tell the compiler its shape", "C) Return it directly from a function declared as Promise<User>"], ans: "A" },
      18 => { type: "true_false",      q: "Since TypeScript 6.0, every @types package in node_modules is still included automatically. So you never need a \"types\" setting in tsconfig.json.",
              opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "Under strict mode, what is the type of box in const box = document.getElementById(\"total\");?",
              opts: ["A) HTMLDivElement | null", "B) HTMLElement | null", "C) HTMLElement"], ans: "B" },
      20 => { type: "multiple_choice", q: "How does the lesson suggest you start a new React + TypeScript project today?",
              opts: ["A) npx create-react-app my-app --template typescript", "B) npm create vite@latest my-app -- --template react-ts", "C) Write JSX in .js files and add TypeScript to the project later"], ans: "B" },
      21 => { type: "true_false",      q: "In the final project, you filter imported rows with the type predicate isNewExpense. This gives a NewExpense[] without any as assertion.",
              opts: ["True", "False"], ans: "True" }
    }

    TypescriptContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

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

require_relative "../typescript_content"

namespace :content do
  desc "Create TypeScript course and populate all 20 lessons"
  task typescript: :environment do
    course = Course.find_or_create_by!(slug: "typescript") do |c|
      c.title       = "TypeScript"
      c.description = "TypeScript adds a static type system to JavaScript. Learn types, inference, unions and narrowing, generics, utility types, classes, safe JSON handling, tsconfig and React with TypeScript 7, then build a fully typed project."
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
      19 => "TypeScript with React",
      20 => "Capstone Project: Typed Expense Tracker"
    }

    descriptions = {
      1  => "What TypeScript is, how the compiler checks and then erases types, and how to set up a TypeScript 7 project.",
      2  => "The primitive types, when to annotate and when to rely on inference, and why unknown is safer than any.",
      3  => "Typed arrays, readonly arrays and fixed-length tuples, including labeled and optional tuple elements.",
      4  => "Describe object shapes with type aliases, optional and readonly properties, Record, and structural typing.",
      5  => "Interfaces, extends, intersections, declaration merging, implements, and when to choose interface or type.",
      6  => "Typed parameters and return values, optional/default/rest parameters, function types, never and overloads.",
      7  => "Model fixed choices with union and literal types, and derive them from real values with as const.",
      8  => "Narrow unions with typeof, in, instanceof, type predicates and assertion functions.",
      9  => "Tagged unions, exhaustive switch checks with never, UI state modelling and the Result pattern.",
      10 => "Reusable generic functions, types and classes that keep full type safety.",
      11 => "Generic constraints, keyof, indexed access types, const type parameters and NoInfer.",
      12 => "Access modifiers, private vs #private, parameter properties, abstract classes and override.",
      13 => "How enums work and what they cost, and why literal unions or as const objects are the modern default.",
      14 => "Derive new types with Partial, Pick, Omit, Record, Exclude, ReturnType, Awaited and friends.",
      15 => "Build your own type transformations with mapped types, conditional types, infer and template literal types.",
      16 => "Annotations vs as vs satisfies: check values without losing precise types, and avoid unsafe assertions.",
      17 => "Type async code and turn untrusted JSON into safely typed data with unknown and type guards.",
      18 => "import type, declaration files, @types packages, the strict family and the TypeScript 6/7 tsconfig defaults.",
      19 => "Start with Vite and type React props, children, state, refs, events and reducers.",
      20 => "Build a typed expense tracker that brings together every major feature of the course."
    }

    exercises = {
      1  => { type: "true_false",      q: "TypeScript's type annotations are checked while the program runs in the browser, so wrong data from a server is rejected automatically.",
              opts: ["True", "False"], ans: "False" },
      2  => { type: "multiple_choice", q: "const value: unknown = \"hello\"; What happens with value.toUpperCase() under strict mode?",
              opts: ["A) A compile error: value must be narrowed first", "B) It compiles, because unknown works like any", "C) It compiles, but only because the value is a string"], ans: "A" },
      3  => { type: "multiple_choice", q: "Which type describes exactly two items: a name followed by an age?",
              opts: ["A) (string | number)[]", "B) Array<string, number>", "C) [name: string, age: number]"], ans: "C" },
      4  => { type: "true_false",      q: "Assigning the object literal { id: 1, name: \"Pen\", colour: \"red\" } directly to a variable of type { id: number; name: string } is a compile error.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "Which of these can an interface do that a type alias cannot?",
              opts: ["A) Describe a union such as \"on\" | \"off\"", "B) Merge with another declaration of the same name", "C) Be implemented by a class using implements"], ans: "B" },
      6  => { type: "multiple_choice", q: "type Discount = (price: number) => number; Which assignment is a type error?",
              opts: ["A) const a: Discount = (p) => p * 0.9;", "B) const b: Discount = (p) => Math.max(0, p - 100);", "C) const c: Discount = (p) => (p / 2).toFixed(2);"], ans: "C" },
      7  => { type: "true_false",      q: "Given const ROLES = [\"admin\", \"viewer\"] (without as const), the type (typeof ROLES)[number] is \"admin\" | \"viewer\".",
              opts: ["True", "False"], ans: "False" },
      8  => { type: "multiple_choice", q: "What does the return type value is Product on function isProduct(value: unknown) do?",
              opts: ["A) Narrows value to Product wherever the function returns true", "B) Converts value into a Product object at runtime", "C) Makes TypeScript check the value's shape at runtime by itself"], ans: "A" },
      9  => { type: "multiple_choice", q: "Inside a switch over shape.kind, a default branch contains const unhandled: never = shape; What is it for?",
              opts: ["A) It speeds up the switch statement at runtime", "B) It gives a compile error if a union member is not handled", "C) It turns shape into the never type for every other case"], ans: "B" },
      10 => { type: "true_false",      q: "With function first<T>(items: T[]): T | undefined, calling first([72, 85]) lets TypeScript infer T as number without writing <number>.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "function getProperty<T, K extends keyof T>(obj: T, key: K): T[K]. With s: { name: string; marks: number }, what is the type of getProperty(s, \"marks\")?",
              opts: ["A) string | number", "B) keyof typeof s", "C) number"], ans: "C" },
      12 => { type: "multiple_choice", q: "What is the key difference between a TypeScript private field and a JavaScript #private field?",
              opts: ["A) private is only checked at compile time; #private is also enforced at runtime", "B) private is enforced at runtime; #private is checked only by the compiler", "C) There is no difference; # is only a shorter way of writing private"], ans: "A" },
      13 => { type: "true_false",      q: "Like type aliases and interfaces, a TypeScript enum is completely erased and produces no JavaScript code.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Which type describes a User without its id field, for a create-user form?",
              opts: ["A) Partial<User>", "B) Omit<User, \"id\">", "C) Exclude<User, \"id\">"], ans: "B" },
      15 => { type: "multiple_choice", q: "What does type Unwrap<T> = T extends Promise<infer V> ? V : T; produce for Unwrap<Promise<string>>?",
              opts: ["A) Promise<string>", "B) never", "C) string"], ans: "C" },
      16 => { type: "true_false",      q: "const palette = { green: \"#138808\" } satisfies Record<string, string | number[]>; lets you call palette.green.toUpperCase() without an error.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "What is the safest way to handle the result of await response.json() for a User?",
              opts: ["A) Store it as unknown and check it with a type guard before use", "B) Write (await response.json()) as User to tell the compiler its shape", "C) Return it directly from a function declared as Promise<User>"], ans: "A" },
      18 => { type: "true_false",      q: "Since TypeScript 6.0, every @types package in node_modules is still included automatically, so you never need a \"types\" setting in tsconfig.json.",
              opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "How does the lesson recommend starting a new React + TypeScript project today?",
              opts: ["A) npx create-react-app my-app --template typescript", "B) npm create vite@latest my-app -- --template react-ts", "C) Write JSX in .js files and add TypeScript to the project later"], ans: "B" },
      20 => { type: "true_false",      q: "In the capstone, filtering imported rows with the type predicate isNewExpense gives a NewExpense[] without needing any as assertion.",
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

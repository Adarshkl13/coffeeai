require_relative "../react_content"

namespace :content do
  desc "Create React course and populate all 20 lessons"
  task react: :environment do
    description = "Learn modern React 19: JSX, components, props, state and events, effects, safe data fetching, context, reducers, " \
                  "custom hooks, TypeScript, performance, form Actions, Suspense, routing and frameworks, and testing, " \
                  "then build a full task manager app."
    course = Course.find_or_create_by!(slug: "react") do |c|
      c.title       = "React"
      c.description = description
      c.color       = "#61dafb"
      c.icon        = "⚛️"
      c.position    = 14
      c.published   = true
    end
    course.update!(description: description)
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to React and JSX",               2  => "Components, Modules and Vite",
      3  => "Props and children",                          4  => "State and Events",
      5  => "Conditional Rendering and Lists",             6  => "Forms and Controlled Inputs",
      7  => "Lifting State Up",                            8  => "useEffect and Side Effects",
      9  => "Fetching Data Safely",                        10 => "useRef and the DOM",
      11 => "Sharing Data with Context",                   12 => "useReducer for Complex State",
      13 => "Custom Hooks",                                14 => "React with TypeScript",
      15 => "Performance: memo, useMemo and useCallback",  16 => "Forms and Actions in React 19",
      17 => "Suspense, use and Error Boundaries",          18 => "Routing and Frameworks",
      19 => "Testing React Components",                    20 => "Capstone: Task Manager App"
    }

    descriptions = {
      1  => "Learn what React is, how JSX compiles to JavaScript, and how createRoot renders your UI into the page.",
      2  => "Write function components, compose them into a tree, split them into modules, and start a real project with Vite.",
      3  => "Pass data from parent to child with props, use default values and the children prop, and keep props read-only.",
      4  => "Give components memory with useState, handle clicks and key presses, use the updater form, and update objects and arrays without mutating them.",
      5  => "Show or hide UI with if, ternaries and &&, render arrays with map(), and choose stable keys.",
      6  => "Build controlled inputs for text, checkboxes and selects, handle submit, and validate from state.",
      7  => "Share state between components by moving it to their closest common parent and passing callbacks down.",
      8  => "Synchronise with timers and browser APIs using useEffect, dependencies and cleanup, including StrictMode's double run.",
      9  => "Fetch data with res.ok checks, AbortController cleanup and loading/error states, and meet TanStack Query.",
      10 => "Use useRef to reach DOM elements and store values that should not re-render, and pass ref as a prop in React 19.",
      11 => "Avoid prop drilling with createContext and useContext, and wrap context in a provider and custom hook.",
      12 => "Move complex update logic into a pure reducer function and change state by dispatching actions.",
      13 => "Extract reusable stateful logic into custom hooks such as useToggle and useDebouncedValue.",
      14 => "Type props, children, useState, events and ref props with TypeScript, and see how the compiler catches bugs before the app runs.",
      15 => "Understand why components re-render and when memo, useMemo, useCallback and the React Compiler help.",
      16 => "Handle forms with React 19 Actions using useActionState, useFormStatus and useOptimistic.",
      17 => "Declare loading and error UI with Suspense, the use() API, lazy() code splitting and error boundaries.",
      18 => "Map URLs to screens with React Router v8, then meet frameworks: Next.js App Router, Server and Client Components, and \"use client\".",
      19 => "Test components the way users use them with Vitest and React Testing Library, and see how act() works.",
      20 => "Combine reducers, context, custom hooks, lists and form actions into a complete task manager app."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which of these is valid JSX for a component's return statement?",
              opts: ["A) return <h1>Hi</h1><p>There</p>;", "B) return <><h1>Hi</h1><p>There</p></>;", "C) return <div class=\"box\"><img src=\"logo.png\"></div>;"], ans: "B" },
      2  => { type: "true_false",      q: "In a Vite project, `npm run dev` creates the optimised production files in the dist folder.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "Given function Price({ amount = 0 }) { return <p>₹{amount}</p>; }, what does <Price /> render?",
              opts: ["A) ₹0", "B) ₹undefined", "C) Nothing — React throws an error because a prop is missing"], ans: "A" },
      4  => { type: "multiple_choice", q: "count starts at 0. A click handler calls setCount(count + 1) three times in a row. What does the screen show after one click?",
              opts: ["A) 3", "B) 0, because state never updates inside an event handler", "C) 1"], ans: "C" },
      5  => { type: "multiple_choice", q: "const count = 0; What does <p>{count && <span>New!</span>}</p> render?",
              opts: ["A) An empty paragraph", "B) A paragraph containing 0", "C) A paragraph containing \"New!\""], ans: "B" },
      6  => { type: "true_false",      q: "If an input has value={name} but no onChange handler, React warns and the user cannot type in it.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "SearchBar and ResultsList both need the current search text. Where should that state live?",
              opts: ["A) In their closest common parent, passed down as props", "B) In SearchBar, with ResultsList keeping its own copy in sync via useEffect", "C) In a global variable outside React"], ans: "A" },
      8  => { type: "multiple_choice", q: "In development with <StrictMode>, what happens on mount to useEffect(() => { connect(); return () => disconnect(); }, [])?",
              opts: ["A) connect runs once", "B) Nothing runs until a dependency changes, because the array is empty", "C) connect, disconnect, then connect again"], ans: "C" },
      9  => { type: "multiple_choice", q: "fetch() receives a 404 response from the server. What happens?",
              opts: ["A) The fetch promise rejects straight away, so your .catch() block handles it automatically", "B) It resolves; res.ok is false, so you must check it and throw", "C) React shows the nearest error boundary"], ans: "B" },
      10 => { type: "true_false",      q: "In React 19, a function component can receive ref as a normal prop without using forwardRef.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "A component calls useContext(ThemeContext), but there is no ThemeContext provider above it. What does it get?",
              opts: ["A) The default value passed to createContext", "B) undefined, and React logs a warning about the missing provider", "C) An error is thrown and the app crashes"], ans: "A" },
      12 => { type: "multiple_choice", q: "Which reducer case correctly adds an item?",
              opts: ["A) state.items.push(action.item); return state;", "B) state.items = [...state.items, action.item]; return state;", "C) return { ...state, items: [...state.items, action.item] };"], ans: "C" },
      13 => { type: "true_false",      q: "Two components that call the same custom hook, such as useToggle(), share one piece of state.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "true_false",      q: "If a component's props are typed as { count: number } and the app passes count=\"3\", the browser throws a TypeError when that component renders.",
              opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "A child is wrapped in memo, but the parent passes onSelect={() => pick(id)}. When the parent re-renders, the child:",
              opts: ["A) Skips rendering, because memo always ignores function props when comparing", "B) Re-renders, because a new function is created every time", "C) Skips rendering only in development mode"], ans: "B" },
      16 => { type: "multiple_choice", q: "What does useActionState(action, initialState) return?",
              opts: ["A) [state, formAction, isPending]", "B) [value, setValue]", "C) { data, error, isLoading, refetch }"], ans: "A" },
      17 => { type: "true_false",      q: "While a child component is waiting on use(promise), the nearest <Suspense> boundary shows its fallback.",
              opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "In a Next.js App Router project, which component is allowed to call useState?",
              opts: ["A) An async Server Component that awaits a database query", "B) Any component inside the app folder, because components are Client Components by default", "C) A component in a file whose first line is \"use client\""], ans: "C" },
      19 => { type: "multiple_choice", q: "In React Testing Library, which query is the best first choice for finding a Save button?",
              opts: ["A) container.querySelector('.btn.btn-primary.save-button')", "B) screen.getByRole('button', { name: /save/i })", "C) screen.getByTestId('save-button')"], ans: "B" },
      20 => { type: "multiple_choice", q: "In the capstone, doneCount is calculated with tasks.filter(t => t.done).length on every render. Why not keep it in state?",
              opts: ["A) It is derived from tasks, so a stored copy could get out of sync", "B) useState cannot hold numbers", "C) Components that use useReducer are not allowed to call useState as well"], ans: "A" }
    }

    ReactContent::LESSONS.each do |position, data|
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

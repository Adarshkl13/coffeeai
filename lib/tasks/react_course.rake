require_relative "../react_content"

namespace :content do
  desc "Create React course and populate all 21 lessons"
  task react: :environment do
    description = "Learn modern React 19: JSX, components, props, state and events, rendering and purity, effects, safe data fetching, context, reducers, " \
                  "custom hooks, TypeScript, performance, form Actions, Suspense, routing and frameworks, and testing. " \
                  "Then build a full task manager app."
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
      7  => "Lifting State Up",                            8  => "Rendering, Purity and Preserving State",
      9  => "useEffect and Side Effects",                  10 => "Fetching Data Safely",
      11 => "useRef and the DOM",                          12 => "Sharing Data with Context",
      13 => "useReducer for Complex State",                14 => "Custom Hooks",
      15 => "React with TypeScript",                       16 => "Performance: memo, useMemo and useCallback",
      17 => "Forms and Actions in React 19",               18 => "Suspense, use and Error Boundaries",
      19 => "Routing and Frameworks",                      20 => "Testing React Components",
      21 => "Capstone: Task Manager App"
    }

    descriptions = {
      1  => "Learn what React is and how JSX turns into JavaScript. See how createRoot shows your UI on the page.",
      2  => "Write function components and put them together in a tree. Split them into modules, and start a real project with Vite.",
      3  => "Pass data from parent to child with props. Use default values and the children prop, and never change props.",
      4  => "Give components memory with useState, and handle clicks and key presses. Use the updater form, and update objects and arrays without changing them in place.",
      5  => "Show or hide UI with if, ternaries and &&. Show arrays with map(), and choose stable keys.",
      6  => "Build controlled inputs for text, checkboxes and selects. Handle submit, and check input from state.",
      7  => "Share state between components. Move it to their closest common parent and pass callbacks down.",
      8  => "See how React renders and commits, and why components must be pure. Learn how position in the tree and key keep or reset state.",
      9  => "Stay in sync with timers and browser APIs using useEffect, dependencies and cleanup. Learn why StrictMode runs effects twice.",
      10 => "Fetch data with res.ok checks, AbortController cleanup and loading and error states. Meet TanStack Query.",
      11 => "Use useRef to reach DOM elements and to store values that should not cause a re-render. Pass ref as a prop in React 19.",
      12 => "Stop passing props through many levels with createContext and useContext. Wrap context in a provider and a custom hook.",
      13 => "Move complex update logic into a pure reducer function. Change state by dispatching actions.",
      14 => "Move stateful logic you want to reuse into custom hooks such as useToggle and useDebouncedValue.",
      15 => "Add TypeScript types to props, children, useState, events and ref props. See how the compiler finds bugs before the app runs.",
      16 => "Learn why components re-render. See when memo, useMemo, useCallback and the React Compiler help.",
      17 => "Handle forms with React 19 Actions using useActionState, useFormStatus and useOptimistic.",
      18 => "Set up loading and error UI with Suspense, the use() API, lazy() code splitting and error boundaries.",
      19 => "Connect URLs to screens with React Router. Then meet frameworks: Next.js App Router, Server and Client Components, and \"use client\".",
      20 => "Test components the way users use them, with Vitest and React Testing Library. See how act() works.",
      21 => "Combine reducers, context, custom hooks, lists and form actions into a full task manager app."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which of these is valid JSX for a component's return statement?",
              opts: ["A) return <h1>Hi</h1><p>There</p>;", "B) return <><h1>Hi</h1><p>There</p></>;", "C) return <div class=\"box\"><img src=\"logo.png\"></div>;"], ans: "B" },
      2  => { type: "true_false",      q: "In a Vite project, `npm run dev` builds the optimised production files in the dist folder.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "Given function Price({ amount = 0 }) { return <p>₹{amount}</p>; }, what does <Price /> render?",
              opts: ["A) ₹0", "B) ₹undefined", "C) Nothing. React throws an error because a prop is missing"], ans: "A" },
      4  => { type: "multiple_choice", q: "count starts at 0. A click handler calls setCount(count + 1) three times in a row. What does the screen show after one click?",
              opts: ["A) 3", "B) 0, because state never updates inside an event handler", "C) 1"], ans: "C" },
      5  => { type: "multiple_choice", q: "const count = 0; What does <p>{count && <span>New!</span>}</p> render?",
              opts: ["A) An empty paragraph", "B) A paragraph containing 0", "C) A paragraph containing \"New!\""], ans: "B" },
      6  => { type: "true_false",      q: "An input has value={name} but no onChange handler. React shows a warning, and the user cannot type in it.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "SearchBar and ResultsList both need the current search text. Where should that state live?",
              opts: ["A) In their closest common parent, passed down as props", "B) In SearchBar, with ResultsList keeping its own copy in sync using useEffect", "C) In a global variable outside React"], ans: "A" },
      8  => { type: "multiple_choice", q: "Chat keeps a draft in useState. The parent renders <Chat contact={to} />. The user switches from Asha to Ravi. What happens?",
              opts: ["A) The draft resets by itself, because the contact prop changed", "B) The draft stays, because it is the same component in the same position. Add key={to.id} to reset it", "C) The draft stays. Only a useEffect that calls setDraft(\"\") on every contact change can reset it"], ans: "B" },
      9  => { type: "multiple_choice", q: "In development with <StrictMode>, what happens on mount to useEffect(() => { connect(); return () => disconnect(); }, [])?",
              opts: ["A) connect runs once", "B) Nothing runs until a dependency changes, because the array is empty", "C) connect, disconnect, then connect again"], ans: "C" },
      10 => { type: "multiple_choice", q: "fetch() gets a 404 response from the server. What happens?",
              opts: ["A) It resolves. res.ok is false, so you must check it and throw", "B) The fetch promise rejects at once, so your .catch() block handles it", "C) React shows the nearest error boundary"], ans: "A" },
      11 => { type: "true_false",      q: "In React 19, a function component can receive ref as a normal prop without using forwardRef.",
              opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "A component calls useContext(ThemeContext). There is no ThemeContext provider above it. What does it get?",
              opts: ["A) undefined, and React logs a warning about the missing provider", "B) An error is thrown and the app crashes", "C) The default value passed to createContext"], ans: "C" },
      13 => { type: "multiple_choice", q: "Which reducer case adds an item the right way?",
              opts: ["A) return { ...state, items: [...state.items, action.item] };", "B) state.items.push(action.item); return state;", "C) state.items = [...state.items, action.item]; return state;"], ans: "A" },
      14 => { type: "true_false",      q: "Two components call the same custom hook, such as useToggle(). They share one piece of state.",
              opts: ["True", "False"], ans: "False" },
      15 => { type: "true_false",      q: "A component's props are typed as { count: number }, and the app passes count=\"3\". The browser throws a TypeError when that component renders.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "A child is wrapped in memo, but the parent passes onSelect={() => pick(id)}. When the parent re-renders, what does the child do?",
              opts: ["A) Skips rendering, because memo always ignores function props when it compares", "B) Skips rendering only in development mode", "C) Re-renders, because a new function is made every time"], ans: "C" },
      17 => { type: "multiple_choice", q: "What does useActionState(action, initialState) return?",
              opts: ["A) [value, setValue]", "B) [state, formAction, isPending]", "C) { data, error, isLoading, refetch }"], ans: "B" },
      18 => { type: "true_false",      q: "While a child component waits on use(promise), the nearest <Suspense> boundary shows its fallback.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "In a Next.js App Router project, which component can call useState?",
              opts: ["A) A component in a file whose first line is \"use client\"", "B) An async Server Component that awaits a database query", "C) Any component inside the app folder, because components are Client Components by default"], ans: "A" },
      20 => { type: "multiple_choice", q: "In React Testing Library, which query is the best first choice to find a Save button?",
              opts: ["A) container.querySelector('.btn.btn-primary.save-button')", "B) screen.getByTestId('save-button')", "C) screen.getByRole('button', { name: /save/i })"], ans: "C" },
      21 => { type: "multiple_choice", q: "In the final project, doneCount is worked out with tasks.filter(t => t.done).length on every render. Why not keep it in state?",
              opts: ["A) useState cannot hold numbers", "B) It comes from tasks, so a stored copy could get out of sync", "C) Components that use useReducer cannot also call useState"], ans: "B" }
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

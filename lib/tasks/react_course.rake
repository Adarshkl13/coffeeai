require_relative "../react_content"

namespace :content do
  desc "Create React course and populate all 20 lessons"
  task react: :environment do
    course = Course.find_or_create_by!(slug: "react") do |c|
      c.title       = "React"
      c.description = "React is the world's most popular UI library. Learn JSX, components, props, useState, useEffect, useContext, custom hooks, performance optimisation, and build real interactive applications."
      c.color       = "#61dafb"
      c.icon        = "⚛️"
      c.position    = 14
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to React",            2  => "Functional Components",
      3  => "Props",                             4  => "State with useState",
      5  => "Event Handling",                    6  => "Lists and Keys",
      7  => "Conditional Rendering",             8  => "useEffect Hook",
      9  => "Forms and Controlled Components",   10 => "Lifting State Up",
      11 => "useContext — Avoid Prop Drilling",  12 => "useRef Hook",
      13 => "Custom Hooks",                      14 => "useMemo and useCallback",
      15 => "useReducer Hook",                   16 => "Fetching Data with useEffect",
      17 => "React with Bootstrap",              18 => "React Router (Simulated)",
      19 => "Performance and Best Practices",    20 => "React Review — Full Application"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "What does Babel compile JSX into behind the scenes?",
              opts: ["A) HTML strings inserted with innerHTML", "B) React.createElement() calls", "C) Separate .html template files"], ans: "B" },
      2  => { type: "true_false",      q: "React component names must start with a capital letter.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "Props in React are:",
              opts: ["A) Read-only data passed from parent to child", "B) Mutable data owned by the component", "C) Global state"], ans: "A" },
      4  => { type: "multiple_choice", q: "With const [user, setUser] = useState({ name: '', age: 0 }), which call updates name while keeping age?",
              opts: ["A) user.name = 'Alice'", "B) setUser(prev => ({ ...prev, name: 'Alice' }))", "C) setUser({ name: 'Alice' })"], ans: "B" },
      5  => { type: "true_false",      q: "onClick={handleClick()} is the correct way to attach a click handler in React.",
              opts: ["True", "False"], ans: "False" },
      6  => { type: "multiple_choice", q: "Why does React need a key prop when rendering lists?",
              opts: ["A) To apply a unique CSS style to each list item", "B) To help React identify which items changed, were added, or removed", "C) To keep the list sorted in the order of the keys"], ans: "B" },
      7  => { type: "multiple_choice", q: "Which operator renders nothing when the condition is false?",
              opts: ["A) Logical AND &&", "B) Ternary ? :", "C) Nullish ??"], ans: "A" },
      8  => { type: "multiple_choice", q: "When does useEffect with an empty dependency array [] run?",
              opts: ["A) After every render of the component", "B) Once, when the component mounts", "C) Never, because there is nothing to watch"], ans: "B" },
      9  => { type: "true_false",      q: "In a React controlled input, the input value is driven by state.",
              opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "Lifting state up means:",
              opts: ["A) Moving state to a child component", "B) Using global state", "C) Moving state to the closest common ancestor"], ans: "C" },
      11 => { type: "multiple_choice", q: "What is useContext used for?",
              opts: ["A) Managing local state inside a single component", "B) Consuming shared data without prop drilling", "C) Fetching data from an API when a component mounts"], ans: "B" },
      12 => { type: "true_false",      q: "Changing ref.current triggers a re-render, just like calling a useState setter.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Custom hook names must start with:",
              opts: ["A) 'use'", "B) 'hook'", "C) 'custom'"], ans: "A" },
      14 => { type: "multiple_choice", q: "useMemo is used to:",
              opts: ["A) Memoize a function reference", "B) Memoize a component", "C) Memoize a computed value"], ans: "C" },
      15 => { type: "multiple_choice", q: "In useReducer, how do you trigger a state change?",
              opts: ["A) setState(newValue)", "B) reducer(state, action)", "C) dispatch({ type: 'action' })"], ans: "C" },
      16 => { type: "true_false",      q: "In a data-fetching effect, the cleanup function can set a cancelled flag so the component does not update state after it has unmounted.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "In JSX, which attribute replaces HTML's 'class'?",
              opts: ["A) className", "B) cssClass", "C) styleClass"], ans: "A" },
      18 => { type: "multiple_choice", q: "Which React Router hook reads the :id value from a route such as /users/:id?",
              opts: ["A) useNavigate()", "B) useLocation()", "C) useParams()"], ans: "C" },
      19 => { type: "multiple_choice", q: "React.memo lets a component skip re-rendering when:",
              opts: ["A) Its props haven't changed", "B) Its own internal state changes", "C) A context value it reads changes"], ans: "A" },
      20 => { type: "multiple_choice", q: "In React, data flows:",
              opts: ["A) Both ways (two-way binding)", "B) Up only (child to parent)", "C) Down via props, up via callbacks"], ans: "C" }
    }

    ReactContent::LESSONS.each do |position, data|
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

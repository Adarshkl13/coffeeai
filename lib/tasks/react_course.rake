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
      1  => { type: "multiple_choice", q: "What does JSX stand for?",
              opts: ["A) JavaScript XML", "B) Java Syntax Extension", "C) JSON XML"], ans: "A" },
      2  => { type: "true_false",      q: "React component names must start with a capital letter.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "Props in React are:",
              opts: ["A) Mutable data owned by the component", "B) Read-only data passed from parent to child", "C) Global state"], ans: "B" },
      4  => { type: "multiple_choice", q: "What does useState return?",
              opts: ["A) The state value only", "B) An array with [value, setter]", "C) An object with {get, set}"], ans: "B" },
      5  => { type: "true_false",      q: "In React, event handler props use camelCase (onClick, onChange).",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "Why does React require a 'key' prop when rendering lists?",
              opts: ["A) For styling purposes", "B) To help React efficiently identify changed items", "C) To sort the list"], ans: "B" },
      7  => { type: "multiple_choice", q: "Which operator renders nothing when the condition is false?",
              opts: ["A) Ternary ? :", "B) Logical AND &&", "C) Nullish ??"], ans: "B" },
      8  => { type: "multiple_choice", q: "useEffect with an empty dependency array [] runs:",
              opts: ["A) After every render", "B) Never", "C) Once when the component mounts"], ans: "C" },
      9  => { type: "true_false",      q: "In a React controlled input, the input value is driven by state.",
              opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "Lifting state up means:",
              opts: ["A) Moving state to a child component", "B) Moving state to the closest common ancestor", "C) Using global state"], ans: "B" },
      11 => { type: "multiple_choice", q: "useContext is used to:",
              opts: ["A) Manage local component state", "B) Consume shared data without prop drilling", "C) Fetch data from an API"], ans: "B" },
      12 => { type: "true_false",      q: "Updating a useRef value does NOT trigger a component re-render.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "Custom hook names must start with:",
              opts: ["A) 'hook'", "B) 'use'", "C) 'custom'"], ans: "B" },
      14 => { type: "multiple_choice", q: "useMemo is used to:",
              opts: ["A) Memoize a function reference", "B) Memoize a computed value", "C) Memoize a component"], ans: "B" },
      15 => { type: "multiple_choice", q: "In useReducer, how do you trigger a state change?",
              opts: ["A) setState(newValue)", "B) reducer(state, action)", "C) dispatch({ type: 'action' })"], ans: "C" },
      16 => { type: "true_false",      q: "You should always handle loading and error states when fetching data in React.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "In JSX, which attribute replaces HTML's 'class'?",
              opts: ["A) cssClass", "B) className", "C) styleClass"], ans: "B" },
      18 => { type: "multiple_choice", q: "In React Router, which component is used for navigation links?",
              opts: ["A) <a href>", "B) <NavItem>", "C) <Link>"], ans: "C" },
      19 => { type: "multiple_choice", q: "React.memo prevents a component from re-rendering when:",
              opts: ["A) State changes", "B) Its props haven't changed", "C) Context changes"], ans: "B" },
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

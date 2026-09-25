require_relative "../nodejs_content"

namespace :content do
  desc "Create Node.js course and populate all 20 lessons"
  task nodejs: :environment do
    course = Course.find_or_create_by!(slug: "nodejs") do |c|
      c.title = "Node.js"
      c.description = "Learn Node.js from runtime fundamentals to Express, APIs, async workflows, databases, authentication, and production backend skills."
      c.color = "#22c55e"
      c.icon = "🟢"
      c.position = 20
      c.published = true
    end
    puts "Course: #{course.title}"

    titles = {
      1 => "Introduction to Node.js",
      2 => "Node.js Runtime and Event Loop",
      3 => "Modules and require / import",
      4 => "npm and package.json",
      5 => "Built-in Modules",
      6 => "File System Basics",
      7 => "Path and OS Modules",
      8 => "Creating a Simple Server",
      9 => "HTTP Requests and Responses",
      10 => "Routing Basics",
      11 => "Express.js Introduction",
      12 => "Middleware",
      13 => "REST APIs with Express",
      14 => "JSON and Body Parsing",
      15 => "Async JavaScript in Node.js",
      16 => "Working with Databases",
      17 => "Environment Variables",
      18 => "Authentication Basics",
      19 => "Error Handling and Logging",
      20 => "Node.js Final Review"
    }

    descriptions = {
      1 => "Understand what Node.js is and why JavaScript moved to the backend.",
      2 => "Learn how the event loop keeps Node.js responsive.",
      3 => "Organize backend code with modules and imports.",
      4 => "Use npm and package.json to manage Node projects.",
      5 => "Explore the core modules bundled with Node.js.",
      6 => "Read and write files with backend-friendly patterns.",
      7 => "Build safer paths and inspect system details.",
      8 => "See how a Node server handles incoming requests.",
      9 => "Understand HTTP methods, status codes, and responses.",
      10 => "Route different URLs to the right backend logic.",
      11 => "Start using Express to simplify server development.",
      12 => "Use middleware for shared request processing.",
      13 => "Design REST-style APIs with clean endpoints.",
      14 => "Parse JSON request bodies safely.",
      15 => "Master promises and async/await in Node.js.",
      16 => "Connect backend logic to stored data.",
      17 => "Keep secrets and config outside source code.",
      18 => "Protect routes with authentication basics.",
      19 => "Handle failures clearly and log them well.",
      20 => "Review the full Node.js backend journey."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What is Node.js mainly used for?", opts: ["A) Styling HTML", "B) Running JavaScript on the server", "C) Replacing databases"], ans: "B" },
      2 => { type: "true_false", q: "Node.js uses an event-driven, non-blocking model for many I/O tasks.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "Why do developers use modules?", opts: ["A) To organize and reuse code", "B) To remove JavaScript syntax", "C) To disable routing"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which file usually stores project scripts and dependencies?", opts: ["A) package.json", "B) server.lock", "C) config.js only"], ans: "A" },
      5 => { type: "true_false", q: "Node.js includes built-in modules like fs and path.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "Which Node.js module is commonly used for file operations?", opts: ["A) http", "B) fs", "C) os"], ans: "B" },
      7 => { type: "multiple_choice", q: "What is the main benefit of the path module?", opts: ["A) It joins paths safely", "B) It creates databases", "C) It encrypts passwords"], ans: "A" },
      8 => { type: "true_false", q: "A Node.js server usually listens on a port and sends responses to clients.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "Which HTTP method is commonly used to create new data?", opts: ["A) GET", "B) POST", "C) DELETE"], ans: "B" },
      10 => { type: "multiple_choice", q: "Routing decides:", opts: ["A) Which handler runs for a request", "B) Which CPU is used", "C) Which CSS file loads"], ans: "A" },
      11 => { type: "true_false", q: "Express is a framework built on top of Node.js.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "Middleware is useful for:", opts: ["A) Shared request processing", "B) Replacing JavaScript", "C) Removing APIs"], ans: "A" },
      13 => { type: "multiple_choice", q: "A REST API usually returns data in which common format?", opts: ["A) JSON", "B) Only XML", "C) CSS"], ans: "A" },
      14 => { type: "true_false", q: "Parsing JSON means turning text into a usable JavaScript object.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Which modern syntax makes async code easier to read?", opts: ["A) async/await", "B) switch/case", "C) var only"], ans: "A" },
      16 => { type: "multiple_choice", q: "Why do most backend apps use databases?", opts: ["A) To persist data", "B) To replace routes", "C) To avoid APIs"], ans: "A" },
      17 => { type: "true_false", q: "Environment variables are a safer place for secrets than hardcoding them.", opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "Authentication is about:", opts: ["A) Proving who the user is", "B) Styling the dashboard", "C) Joining file paths"], ans: "A" },
      19 => { type: "multiple_choice", q: "Good logging helps you:", opts: ["A) Debug backend problems", "B) Disable middleware", "C) Eliminate routes"], ans: "A" },
      20 => { type: "true_false", q: "Node.js is commonly used to build APIs, servers, and backend tools.", opts: ["True", "False"], ans: "True" }
    }

    NodejsContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]
        l.description = descriptions[position]
      end

      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

      ex = exercises[position]
      exercise = Exercise.find_by(course_lesson: lesson) || lesson.build_exercise
      exercise.assign_attributes(
        exercise_type: ex[:type],
        question: ex[:q],
        options: ex[:opts],
        correct_answer: ex[:ans]
      )
      exercise.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    total_lessons = CourseLesson.where(course: course).count
    total_exercises = Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count
    puts "Done! #{total_lessons} lessons, #{total_exercises} exercises."
  end
end

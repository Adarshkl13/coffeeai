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
      1 => "What Node.js Is & the Event Loop",
      2 => "Running Scripts, the REPL & node --watch",
      3 => "Modules: ES Modules vs CommonJS",
      4 => "npm & package.json",
      5 => "Working with Files: fs/promises",
      6 => "path, os & URLs",
      7 => "Events & EventEmitter",
      8 => "Streams & Pipelines",
      9 => "Building a Server with node:http",
      10 => "Express Basics",
      11 => "Routing, Params & Query Strings",
      12 => "Middleware",
      13 => "Building a REST API",
      14 => "Validation & Error Handling",
      15 => "Async Patterns & the Event Loop in Depth",
      16 => "Working with Databases",
      17 => "Environment Variables & Config",
      18 => "Authentication: Passwords, Sessions & JWT",
      19 => "Testing with node:test",
      20 => "Deployment & Final Project"
    }

    descriptions = {
      1 => "Learn what the Node.js runtime adds to JavaScript and why a single-threaded event loop handles I/O so well.",
      2 => "Run files, explore the REPL, parse command-line arguments, and reload automatically with node --watch.",
      3 => "Split code into ES modules with import/export and read older CommonJS code with require.",
      4 => "Create a project with npm, understand package.json scripts, semver ranges, and the lock file.",
      5 => "Read, write, and organise files with async fs/promises and handle errors by their code.",
      6 => "Build cross-platform paths, resolve files relative to a module, block path traversal, and inspect the OS.",
      7 => "Emit and listen for events with EventEmitter, including once, off, and the special error event.",
      8 => "Process large data chunk by chunk with readable, writable, and transform streams joined by pipeline.",
      9 => "Write an HTTP server with node:http that routes requests, reads JSON bodies, and calls APIs with fetch.",
      10 => "Build your first Express 5 app with routes, res.json, and automatic async error handling.",
      11 => "Match URLs with route params and query strings, and organise endpoints with express.Router.",
      12 => "Write and order middleware for logging, authentication checks, and security headers.",
      13 => "Design and build a complete CRUD notes API with correct methods, status codes, and URLs.",
      14 => "Validate input with zod and send every failure through one central error-handling middleware.",
      15 => "Predict microtask and timer order, and run async work in parallel, with timeouts and concurrency limits.",
      16 => "Store data in SQLite or PostgreSQL using parameterised queries, transactions, and a connection pool.",
      17 => "Load configuration with --env-file and validate it at start-up so secrets stay out of source code.",
      18 => "Hash passwords with argon2 or bcrypt, then protect routes with cookie sessions or JWTs.",
      19 => "Write unit and API tests with the built-in node:test runner, assertions, and mocks.",
      20 => "Prepare an app for production with health checks and graceful shutdown, deploy it, and build the final project."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A route handler runs a synchronous loop that keeps the CPU busy for 5 seconds. What happens to other requests arriving during that time?", opts: ["A) Node handles them in parallel on other JavaScript threads", "B) They wait, because the single JavaScript thread is blocked", "C) Node automatically moves the loop to a worker thread"], ans: "B" },
      2 => { type: "true_false", q: "`node --watch app.js` only restarts the program when you type `rs` in the terminal.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "package.json contains \"type\": \"module\". What happens when app.js runs `const fs = require(\"node:fs\")`?", opts: ["A) It works exactly like an import statement", "B) It works but prints a deprecation warning", "C) It throws because require is not defined in ES module scope"], ans: "C" },
      4 => { type: "multiple_choice", q: "package.json lists \"express\": \"^5.1.0\". Which version could npm install?", opts: ["A) 5.2.3", "B) 6.0.0", "C) 4.21.0"], ans: "A" },
      5 => { type: "true_false", q: "`await readFile(\"data.json\", \"utf8\")` from node:fs/promises returns a string, so you still need JSON.parse to get an object.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "In an ES module, how do you reliably get the folder that contains the current file?", opts: ["A) Use __dirname, exactly as in CommonJS", "B) Use import.meta.dirname, or path.dirname(fileURLToPath(import.meta.url))", "C) Use process.cwd(), which always equals the file's folder"], ans: "B" },
      7 => { type: "multiple_choice", q: "An EventEmitter emits an \"error\" event and no \"error\" listener is attached. What happens?", opts: ["A) The event is silently ignored", "B) The event is queued until a listener is added", "C) The error is thrown, crashing the process if nothing catches it"], ans: "C" },
      8 => { type: "true_false", q: "Reading a 4 GB log file with readFile uses about the same memory as processing it with createReadStream.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "In a node:http server, one code path never calls res.end(). What does the client experience on that path?", opts: ["A) The request hangs until it times out", "B) Node automatically sends an empty 200 response", "C) Node automatically sends a 500 error"], ans: "A" },
      10 => { type: "true_false", q: "In Express 5, if an async route handler throws or its promise rejects, the error is passed to error-handling middleware automatically.", opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Routes are registered in this order: app.get(\"/users/:id\", showUser) then app.get(\"/users/me\", showMe). What handles GET /users/me?", opts: ["A) showMe, because Express prefers the more specific path", "B) Neither; Express responds with 404", "C) showUser, with req.params.id equal to \"me\""], ans: "C" },
      12 => { type: "multiple_choice", q: "A middleware logs the request but never calls next() and never sends a response. What happens?", opts: ["A) Express skips it after a short delay and runs the route", "B) The request hangs with no response", "C) Express throws ERR_HTTP_HEADERS_SENT"], ans: "B" },
      13 => { type: "true_false", q: "In a REST API, a successful POST that creates a resource should return 200, because 201 is reserved for PUT.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "How does Express recognise a function as error-handling middleware?", opts: ["A) It declares four parameters: (err, req, res, next)", "B) It is named errorHandler", "C) It is registered with app.error()"], ans: "A" },
      15 => { type: "multiple_choice", q: "What does this print? setTimeout(() => console.log(\"timeout\"), 0); Promise.resolve().then(() => console.log(\"promise\")); console.log(\"sync\");", opts: ["A) timeout, promise, sync", "B) sync, timeout, promise", "C) sync, promise, timeout"], ans: "C" },
      16 => { type: "true_false", q: "Parameterised queries (like $1 placeholders in pg) prevent SQL injection because the values are sent separately from the SQL text.", opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "What does `node --env-file=.env server.js` do?", opts: ["A) Encrypts the .env file before the server starts", "B) Loads the variables in .env into process.env without needing the dotenv package", "C) Checks that every variable in .env is used somewhere in the code"], ans: "B" },
      18 => { type: "true_false", q: "Storing passwords as unsalted SHA-256 hashes is as safe as using bcrypt or argon2.", opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "Why does assert.strictEqual({ id: 1 }, { id: 1 }) fail while assert.deepStrictEqual({ id: 1 }, { id: 1 }) passes?", opts: ["A) strictEqual compares object references; deepStrictEqual compares structure and values", "B) strictEqual only works on strings and numbers and throws for any object", "C) deepStrictEqual ignores property values and only compares keys"], ans: "A" },
      20 => { type: "true_false", q: "A production Node server should listen on process.env.PORT and handle SIGTERM by finishing in-flight requests before exiting.", opts: ["True", "False"], ans: "True" }
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
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]
        e.question = ex[:q]
        e.options = ex[:opts]
        e.correct_answer = ex[:ans]
      end.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    total_lessons = CourseLesson.where(course: course).count
    total_exercises = Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count
    puts "Done! #{total_lessons} lessons, #{total_exercises} exercises."
  end
end

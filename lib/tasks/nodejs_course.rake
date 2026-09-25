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
      2 => "Run files, explore the REPL, parse command-line arguments, reload automatically with node --watch, and run TypeScript files directly with type stripping.",
      3 => "Split code into ES modules with import/export and read older CommonJS code with require.",
      4 => "Create a project with npm, understand package.json scripts, semver ranges, and the lock file.",
      5 => "Read, write, and organise files with async fs/promises and handle errors by their code.",
      6 => "Build cross-platform paths, resolve files relative to a module, block path traversal, and inspect the OS.",
      7 => "Emit and listen for events with EventEmitter, including once, off, and the special error event.",
      8 => "Process large data chunk by chunk with readable, writable, and transform streams joined by pipeline.",
      9 => "Write an HTTP server with node:http that routes requests, reads JSON bodies safely, and calls APIs with fetch.",
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
      1 => { type: "multiple_choice", q: "A route handler runs a synchronous loop that keeps the CPU busy for 5 seconds. What happens to other requests arriving during that time?", opts: ["A) Node handles them in parallel on other JavaScript threads automatically", "B) Node moves the busy loop to a worker thread so the others can run", "C) They wait, because the single JavaScript thread is blocked"], ans: "C" },
      2 => { type: "true_false", q: "With util.parseArgs, an option declared as { type: \"string\" } such as --times 2 arrives as the string \"2\", so you must convert it to a number yourself.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "package.json contains \"type\": \"module\". What happens when app.js runs const fs = require(\"node:fs\")?", opts: ["A) It works exactly like an import statement, with no difference at all", "B) It works but prints a deprecation warning the first time", "C) It throws, because require is not defined in ES module scope"], ans: "C" },
      4 => { type: "multiple_choice", q: "package.json lists \"express\": \"^5.1.0\". The registry has 4.21.2, 5.1.0, 5.2.1 and 6.0.0. Which version does a fresh npm install choose?", opts: ["A) 6.0.0, because npm always installs the newest version available", "B) 5.2.1", "C) 5.1.0, because the caret means exactly this version"], ans: "B" },
      5 => { type: "true_false", q: "await readFile(\"notes.json\") with no encoding argument returns a Buffer of raw bytes; passing \"utf8\" as the second argument makes it return a string instead.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "Why does a safe upload check use full.startsWith(UPLOADS + path.sep) instead of full.startsWith(UPLOADS)?", opts: ["A) Without the separator, a sibling folder such as /app/uploads-evil would also pass", "B) Because startsWith is case-sensitive on Windows but not on Linux, so the separator normalises the comparison", "C) Because path.sep makes the check run faster on large folders"], ans: "A" },
      7 => { type: "multiple_choice", q: "An EventEmitter emits an \"error\" event and no \"error\" listener is attached. What happens?", opts: ["A) The error is thrown, crashing the process if nothing catches it", "B) The event is silently ignored, because emit only calls the listeners that exist at that moment", "C) The event is queued until a listener is added later on"], ans: "A" },
      8 => { type: "true_false", q: "If the source file in await pipeline(createReadStream(src), createGzip(), createWriteStream(dest)) does not exist, pipeline leaves the gzip and write streams open, so you must destroy them yourself in the catch block.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "In a node:http server, one code path never calls res.end(). What does the client experience on that path?", opts: ["A) The request hangs until it times out", "B) Node automatically sends an empty 200 response when the handler returns", "C) Node automatically sends a 500 error to the client"], ans: "A" },
      10 => { type: "multiple_choice", q: "In Express 5, an async route handler awaits a database call that rejects. What happens?", opts: ["A) The request hangs forever, exactly as it did in Express 4", "B) The whole Node process crashes with an unhandled rejection", "C) Express passes the error to the error-handling middleware"], ans: "C" },
      11 => { type: "true_false", q: "If app.get(\"/users/:id\", showUser) is registered before app.get(\"/users/me\", showMe), Express still sends GET /users/me to showMe because it prefers the more specific path.", opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "A middleware logs the request but never calls next() and never sends a response. What happens?", opts: ["A) Express skips it after a short delay and runs the route", "B) The request hangs with no response", "C) Express throws ERR_HTTP_HEADERS_SENT and responds with a 500"], ans: "B" },
      13 => { type: "multiple_choice", q: "A client sends DELETE /api/notes/7 twice. The first call returns 204. What should the second call return, and why?", opts: ["A) 204 again, because DELETE must always return the same status", "B) 404, because the note no longer exists; the server state is unchanged, so DELETE is still idempotent", "C) 500, because trying to delete something that is already gone is an unexpected failure on the server side"], ans: "B" },
      14 => { type: "true_false", q: "Express treats a function as error-handling middleware only if it declares four parameters: (err, req, res, next).", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "What does this print? setTimeout(() => console.log(\"timeout\"), 0); Promise.resolve().then(() => console.log(\"promise\")); console.log(\"sync\");", opts: ["A) timeout, promise, sync", "B) sync, timeout, promise", "C) sync, promise, timeout"], ans: "C" },
      16 => { type: "multiple_choice", q: "Why must a PostgreSQL transaction use one client from pool.connect() rather than separate pool.query() calls?", opts: ["A) pool.query() cannot run BEGIN or COMMIT at all, and throws an error if you try to send either of those statements", "B) Transactions only work on the first connection the pool ever opened", "C) Each pool.query() may run on a different connection, so BEGIN and COMMIT would not apply to the same session"], ans: "C" },
      17 => { type: "true_false", q: "When you run node --env-file=.env server.js, values in .env always overwrite variables that are already set in the real environment.", opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "Which statement about a signed JWT is correct?", opts: ["A) Its payload is encrypted, so it is a safe place to store a user's password", "B) Anyone can read its payload, but changing it breaks the signature", "C) It can be revoked instantly on the server, exactly like deleting a session"], ans: "B" },
      19 => { type: "multiple_choice", q: "Using node:assert/strict, why does assert.equal({ id: 1 }, { id: 1 }) fail?", opts: ["A) equal compares objects by reference; use deepEqual to compare structure and values", "B) In strict mode, equal refuses to compare objects and throws a TypeError before it even looks at their properties", "C) Strict mode forbids comparing objects in tests at all"], ans: "A" },
      20 => { type: "multiple_choice", q: "The platform sends SIGTERM while a request is still running. What should a well-written Node server do?", opts: ["A) Stop accepting new connections, let in-flight requests finish, then exit", "B) Exit immediately with code 0 so the new version can start sooner", "C) Ignore the signal and keep serving new requests until the platform gives up and kills the process"], ans: "A" }
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

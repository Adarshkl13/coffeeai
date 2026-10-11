require_relative "../nodejs_content"

namespace :content do
  desc "Create Node.js course and populate all 21 lessons"
  task nodejs: :environment do
    course = Course.find_or_create_by!(slug: "nodejs") do |c|
      c.title = "Node.js"
      c.description = "Learn Node.js step by step. Start with the basics, then build servers and APIs with Express. Work with async code, databases, login and real backend apps."
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
      19 => "Real-Time Apps with WebSockets",
      20 => "Testing with node:test",
      21 => "Deployment & Final Project"
    }

    descriptions = {
      1 => "Learn what Node.js adds to JavaScript. See why one thread with an event loop handles I/O so well.",
      2 => "Run files and try the REPL. Read command-line arguments, reload with node --watch, and run TypeScript files directly.",
      3 => "Split code into ES modules with import and export. Learn to read older CommonJS code that uses require.",
      4 => "Create a project with npm. Learn package.json scripts, version ranges and the lock file.",
      5 => "Read, write and organise files with async fs/promises. Handle errors by their error code.",
      6 => "Build file paths that work on every system. Find files next to a module, block unsafe paths and read OS details.",
      7 => "Send and listen for events with EventEmitter. Learn once, off and the special error event.",
      8 => "Handle large data in small chunks. Use readable, writable and transform streams, joined with pipeline.",
      9 => "Write an HTTP server with node:http. Route requests, read JSON bodies safely and call APIs with fetch.",
      10 => "Build your first Express 5 app. Add routes, send JSON with res.json and let Express catch async errors.",
      11 => "Match URLs with route params and query strings. Group endpoints with express.Router.",
      12 => "Write middleware for logging, login checks and security headers. Learn why the order matters.",
      13 => "Build a full CRUD notes API. Use the right methods, status codes and URLs.",
      14 => "Check input with zod. Send every error to one central error handler.",
      15 => "Learn the order in which microtasks and timers run. Run async work in parallel, with timeouts and limits.",
      16 => "Store data in SQLite or PostgreSQL. Use parameterised queries, transactions and a connection pool.",
      17 => "Load settings with --env-file and check them at start-up. Keep secrets out of your source code.",
      18 => "Hash passwords with argon2 or bcrypt. Then protect routes with cookie sessions or JWTs.",
      19 => "Send live updates with WebSockets and Server-Sent Events. Check who connects, check messages and find dead connections.",
      20 => "Write unit tests and API tests with the built-in node:test runner, assertions and mocks.",
      21 => "Get an app ready for production with health checks and a clean shutdown. Deploy it and build the final project."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A route handler runs a synchronous loop. It keeps the CPU busy for 5 seconds. What happens to other requests that arrive during that time?", opts: ["A) Node runs them in parallel on other JavaScript threads by itself", "B) Node moves the busy loop to a worker thread so the others can run", "C) They wait, because the single JavaScript thread is blocked"], ans: "C" },
      2 => { type: "true_false", q: "With util.parseArgs, an option set as { type: \"string\" } such as --times 2 comes in as the string \"2\". You must turn it into a number yourself.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "package.json has \"type\": \"module\". What happens when app.js runs const fs = require(\"node:fs\")?", opts: ["A) It works just like an import statement, with no difference", "B) It works but shows a deprecation warning the first time", "C) It throws an error, because require is not defined in ES module scope"], ans: "C" },
      4 => { type: "multiple_choice", q: "package.json lists \"express\": \"^5.1.0\". The registry has 4.21.2, 5.1.0, 5.2.1 and 6.0.0. Which version does a fresh npm install pick?", opts: ["A) 6.0.0, because npm always installs the newest version", "B) 5.2.1", "C) 5.1.0, because the caret means exactly this version"], ans: "B" },
      5 => { type: "true_false", q: "await readFile(\"notes.json\") with no encoding returns a Buffer of raw bytes. If you pass \"utf8\" as the second argument, it returns a string.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "Why does a safe upload check use full.startsWith(UPLOADS + path.sep) and not full.startsWith(UPLOADS)?", opts: ["A) Without the separator, a folder next to it, such as /app/uploads-evil, would also pass", "B) Because startsWith is case-sensitive on Windows but not on Linux, and the separator fixes this", "C) Because path.sep makes the check faster on large folders"], ans: "A" },
      7 => { type: "multiple_choice", q: "An EventEmitter emits an \"error\" event, but there is no \"error\" listener. What happens?", opts: ["A) The error is thrown. The process crashes if nothing catches it", "B) The event is ignored, because emit only calls the listeners that exist right now", "C) The event waits in a queue until a listener is added later"], ans: "A" },
      8 => { type: "true_false", q: "You run await pipeline(createReadStream(src), createGzip(), createWriteStream(dest)) and the source file does not exist. pipeline leaves the gzip and write streams open, so you must close them yourself in the catch block.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "In a node:http server, one code path never calls res.end(). What does the client see on that path?", opts: ["A) The request hangs until it times out", "B) Node sends an empty 200 response when the handler returns", "C) Node sends a 500 error to the client"], ans: "A" },
      10 => { type: "multiple_choice", q: "In Express 5, an async route handler awaits a database call, and the call rejects. What happens?", opts: ["A) Express ignores the error and sends an empty 200 response", "B) The whole Node process crashes with an unhandled rejection", "C) Express passes the error to the error-handling middleware"], ans: "C" },
      11 => { type: "true_false", q: "app.get(\"/users/:id\", showUser) is added before app.get(\"/users/me\", showMe). Express still sends GET /users/me to showMe, because it prefers the more exact path.", opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "A middleware logs the request. It never calls next() and never sends a response. What happens?", opts: ["A) Express skips it after a short wait and runs the route", "B) The request hangs with no response", "C) Express throws ERR_HTTP_HEADERS_SENT and sends a 500"], ans: "B" },
      13 => { type: "multiple_choice", q: "A client sends DELETE /api/notes/7 two times. The first call returns 204. What should the second call return, and why?", opts: ["A) 204 again, because DELETE must always return the same status", "B) 404, because the note is gone. The server state does not change, so DELETE is still idempotent", "C) 500, because deleting something that is already gone is an unexpected server error"], ans: "B" },
      14 => { type: "true_false", q: "Express treats a function as error-handling middleware only if it has four parameters: (err, req, res, next).", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "What does this print? setTimeout(() => console.log(\"timeout\"), 0); Promise.resolve().then(() => console.log(\"promise\")); console.log(\"sync\");", opts: ["A) timeout, promise, sync", "B) sync, timeout, promise", "C) sync, promise, timeout"], ans: "C" },
      16 => { type: "multiple_choice", q: "Why must a PostgreSQL transaction use one client from pool.connect() and not separate pool.query() calls?", opts: ["A) pool.query() cannot run BEGIN or COMMIT at all. It throws an error if you try", "B) Transactions only work on the first connection the pool ever opened", "C) Each pool.query() may use a different connection, so BEGIN and COMMIT would not run in the same session"], ans: "C" },
      17 => { type: "true_false", q: "When you run node --env-file=.env server.js, values in .env always replace variables that are already set in the real environment.", opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "Which statement about a signed JWT is correct?", opts: ["A) Its payload is encrypted, so it is a safe place to store a user's password", "B) Anyone can read its payload, but changing it breaks the signature", "C) The server can cancel it at once, just like deleting a session"], ans: "B" },
      19 => { type: "multiple_choice", q: "A chat server keeps its connected sockets in wss.clients. You now run two copies behind a load balancer. Asha is on copy 1 and sends a message. Who gets it?", opts: ["A) Everyone on both copies, because the load balancer copies WebSocket messages to every server", "B) Only users on copy 1, unless the copies share events through pub/sub such as Redis", "C) Nobody, because the ws package will not start when more than one copy is running"], ans: "B" },
      20 => { type: "multiple_choice", q: "With node:assert/strict, why does assert.equal({ id: 1 }, { id: 1 }) fail?", opts: ["A) equal compares objects by reference. Use deepEqual to compare their structure and values", "B) In strict mode, equal will not compare objects. It throws a TypeError before it looks at their properties", "C) Strict mode does not allow comparing objects in tests at all"], ans: "A" },
      21 => { type: "multiple_choice", q: "The platform sends SIGTERM while a request is still running. What should a well-written Node server do?", opts: ["A) Stop taking new connections, let running requests finish, then exit", "B) Exit at once with code 0 so the new version can start sooner", "C) Ignore the signal and keep serving new requests until the platform kills the process"], ans: "A" }
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

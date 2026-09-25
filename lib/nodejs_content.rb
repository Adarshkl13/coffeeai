module NodejsContent
  def self.list(items)
    <<~HTML
      <ul class="lc-list">
        #{items.map { |item| "<li>#{item}</li>" }.join}
      </ul>
    HTML
  end

  def self.flow(steps)
    chunks = steps.each_with_index.map do |step, index|
      card = "<div class='lc-flow-step'>#{step[:title]}<small>#{step[:note]}</small></div>"
      index == steps.length - 1 ? card : "#{card}<div class='lc-flow-arrow'>→</div>"
    end
    "<div class='lc-flow'>#{chunks.join}</div>"
  end

  def self.lesson_body(section:, title:, lead:, concept:, bullets:, flow_steps: nil, tip:)
    parts = []
    parts << <<~HTML
      <div class="lc-header">
        <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
        <h1 class="lc-title">#{title}</h1>
      </div>
      <p class="lc-lead">#{lead}</p>
      <p class="lc-lesson-section">Section: #{section}</p>
      <div class="lc-section">
        <h2>Core Concept</h2>
        <p>#{concept}</p>
      </div>
      <div class="lc-section">
        <h2>Key Points</h2>
        #{list(bullets)}
      </div>
    HTML

    if flow_steps
      parts << <<~HTML
        <div class="lc-section">
          <h2>Quick Flow</h2>
          #{flow(flow_steps)}
        </div>
      HTML
    end

    parts << <<~HTML
      <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>#{tip}</p></div>
    HTML

    parts.join
  end

  LESSONS = {
    1 => {
      body: lesson_body(
        section: "Foundations",
        title: "Introduction to Node.js",
        lead: "Node.js lets you run JavaScript outside the browser, making it possible to build servers, APIs, CLIs, and backend tools with one language.",
        concept: "Node.js is a JavaScript runtime built on Chrome's V8 engine. Instead of manipulating the browser DOM, Node programs usually work with files, servers, databases, and background jobs.",
        bullets: [
          "Node.js is used mainly for backend and tooling work.",
          "It gives JavaScript access to the filesystem and network.",
          "It is popular for APIs, full-stack apps, and real-time systems."
        ],
        flow_steps: [
          { title: "Write JS", note: "use JavaScript syntax" },
          { title: "Run in Node", note: "outside the browser" },
          { title: "Build Backends", note: "servers and tools" }
        ],
        tip: "Think of Node.js as JavaScript with server-side powers."
      ),
      starter_code: <<~'JS'
        // Introduction to Node.js
        const runtimeFacts = {
          language: "JavaScript",
          environment: "Server-side runtime",
          commonUses: ["APIs", "CLI tools", "Real-time apps"]
        };

        console.log("What is Node.js?");
        console.log(runtimeFacts);
        console.log("Popular use:", runtimeFacts.commonUses[0]);
      JS
    },
    2 => {
      body: lesson_body(
        section: "Foundations",
        title: "Node.js Runtime and Event Loop",
        lead: "Node.js is famous for being non-blocking and event-driven, which helps it handle many connections efficiently.",
        concept: "The event loop watches for completed tasks like timers, file reads, and network responses. Instead of waiting on one task at a time, Node keeps moving and reacts when work finishes.",
        bullets: [
          "Node.js uses a single main thread for JavaScript execution.",
          "Long tasks are delegated and completed asynchronously.",
          "Callbacks, promises, and async/await all fit into this model."
        ],
        flow_steps: [
          { title: "Task Starts", note: "timer or request begins" },
          { title: "Node Continues", note: "main thread stays free" },
          { title: "Callback Runs", note: "when work completes" }
        ],
        tip: "Non-blocking means your server can stay responsive while waiting on I/O."
      ),
      starter_code: <<~'JS'
        // Event loop idea
        console.log("1. Start");

        setTimeout(() => {
          console.log("3. Timer callback runs later");
        }, 0);

        console.log("2. End of current code");
      JS
    },
    3 => {
      body: lesson_body(
        section: "Foundations",
        title: "Modules and require / import",
        lead: "Node.js organizes code into modules so you can split large apps into smaller reusable files.",
        concept: "A module exports values or functions, and another file imports them. Older Node.js code often uses CommonJS with require, while modern projects may use ES modules with import/export.",
        bullets: [
          "Modules keep code maintainable and reusable.",
          "CommonJS uses require() and module.exports.",
          "ES modules use import and export."
        ],
        flow_steps: [
          { title: "Write Module", note: "create reusable logic" },
          { title: "Export", note: "share values or functions" },
          { title: "Import", note: "use them elsewhere" }
        ],
        tip: "If you understand modules, you understand how larger Node.js apps stay organized."
      ),
      starter_code: <<~'JS'
        // Simulating module export/import concepts
        const mathModule = {
          add(a, b) {
            return a + b;
          }
        };

        console.log("Imported result:", mathModule.add(5, 7));
      JS
    },
    4 => {
      body: lesson_body(
        section: "Foundations",
        title: "npm and package.json",
        lead: "npm is the package manager for Node.js, and package.json is the file that describes your project and its dependencies.",
        concept: "When you install packages, npm records them in package.json so your project can be recreated later. Scripts inside package.json also make it easy to run common commands like start and test.",
        bullets: [
          "npm installs libraries and tools.",
          "package.json stores metadata, scripts, and dependencies.",
          "node_modules contains installed packages."
        ],
        flow_steps: [
          { title: "Install Package", note: "npm add dependency" },
          { title: "Record in package.json", note: "save project config" },
          { title: "Run Scripts", note: "start, test, build" }
        ],
        tip: "package.json is the control center of a Node.js project."
      ),
      starter_code: <<~'JS'
        // package.json concepts in plain JavaScript
        const packageJson = {
          name: "node-course-demo",
          version: "1.0.0",
          scripts: {
            start: "node index.js",
            test: "node test.js"
          }
        };

        console.log("Project name:", packageJson.name);
        console.log("Start script:", packageJson.scripts.start);
      JS
    },
    5 => {
      body: lesson_body(
        section: "Foundations",
        title: "Built-in Modules",
        lead: "Node.js ships with powerful built-in modules, so many common tasks need no extra package installation.",
        concept: "Modules like fs, path, os, and http solve common backend tasks. Learning these core tools helps you understand how Node apps work under the hood.",
        bullets: [
          "fs works with files.",
          "path helps build safe file paths.",
          "http creates web servers."
        ],
        flow_steps: [
          { title: "Need Capability", note: "files, paths, network" },
          { title: "Choose Core Module", note: "fs, path, http..." },
          { title: "Use API", note: "solve backend task" }
        ],
        tip: "Start with built-in modules before reaching for extra packages."
      ),
      starter_code: <<~'JS'
        // Simulating Node core modules as plain objects
        const builtInModules = ["fs", "path", "os", "http"];

        console.log("Node.js built-in modules:");
        builtInModules.forEach((moduleName, index) => {
          console.log(`${index + 1}. ${moduleName}`);
        });
      JS
    },
    6 => {
      body: lesson_body(
        section: "Core APIs",
        title: "File System Basics",
        lead: "Working with files is one of Node.js's most common backend tasks.",
        concept: "The fs module reads, writes, updates, and deletes files. In real Node.js apps, you usually prefer async file methods so the event loop stays free.",
        bullets: [
          "File reads and writes are often asynchronous.",
          "Node can process text, JSON, and binary data.",
          "Good file handling is useful for configs, logs, and uploads."
        ],
        flow_steps: [
          { title: "Open File", note: "read or write request" },
          { title: "Node Processes", note: "async operation" },
          { title: "Use Result", note: "handle data or errors" }
        ],
        tip: "Async file work is usually better for production servers than blocking sync code."
      ),
      starter_code: <<~'JS'
        // Simulating a file read
        const fakeFile = '{"course":"Node.js","lessons":20}';
        const parsed = JSON.parse(fakeFile);

        console.log("Course loaded from file:");
        console.log(parsed);
      JS
    },
    7 => {
      body: lesson_body(
        section: "Core APIs",
        title: "Path and OS Modules",
        lead: "Path and OS helpers make backend code more reliable across different operating systems.",
        concept: "The path module helps join and normalize file paths safely, while the os module exposes system information like platform, CPU count, and memory.",
        bullets: [
          "Avoid hardcoding slashes in paths.",
          "Use path helpers for portability.",
          "OS details are useful for diagnostics and tooling."
        ],
        flow_steps: [
          { title: "Get Parts", note: "folder + filename" },
          { title: "Build Path", note: "join safely" },
          { title: "Use System Info", note: "inspect runtime environment" }
        ],
        tip: "The more portable your paths are, the fewer deployment surprises you get."
      ),
      starter_code: <<~'JS'
        // Path concepts with plain strings
        const folder = "src";
        const file = "server.js";
        const safePath = `${folder}/${file}`;

        console.log("Joined path:", safePath);
        console.log("Platform example:", "darwin / linux / win32");
      JS
    },
    8 => {
      body: lesson_body(
        section: "Servers",
        title: "Creating a Simple Server",
        lead: "A Node.js server listens for requests and sends responses back to clients like browsers or mobile apps.",
        concept: "At the lowest level, a Node HTTP server takes a request object and a response object. You inspect the request, then decide what to return.",
        bullets: [
          "Servers listen on a port.",
          "Each request gets handled by your code.",
          "Responses can be HTML, JSON, or plain text."
        ],
        flow_steps: [
          { title: "Request Arrives", note: "browser calls your server" },
          { title: "Handler Runs", note: "server decides response" },
          { title: "Response Sent", note: "client receives result" }
        ],
        tip: "A server is just a program waiting for incoming requests and replying to them."
      ),
      starter_code: <<~'JS'
        // Simulating a basic server response
        const request = { url: "/", method: "GET" };
        const response = { status: 200, body: "Hello from Node.js!" };

        console.log("Incoming request:", request);
        console.log("Server response:", response);
      JS
    },
    9 => {
      body: lesson_body(
        section: "Servers",
        title: "HTTP Requests and Responses",
        lead: "HTTP is the language of the web. Node.js servers receive HTTP requests and send HTTP responses.",
        concept: "A request usually contains a method, URL, headers, and sometimes a body. A response contains a status code, headers, and a body with the result.",
        bullets: [
          "GET usually fetches data.",
          "POST usually creates data.",
          "Status codes communicate the result."
        ],
        flow_steps: [
          { title: "Method + URL", note: "client asks for resource" },
          { title: "Server Logic", note: "process request" },
          { title: "Status + Data", note: "send response" }
        ],
        tip: "If you understand HTTP well, backend development becomes much easier."
      ),
      starter_code: <<~'JS'
        const request = { method: "POST", url: "/users", body: { name: "Ada" } };
        const response = { status: 201, message: "User created" };

        console.log("Request method:", request.method);
        console.log("Request URL:", request.url);
        console.log("Response status:", response.status);
        console.log("Response message:", response.message);
      JS
    },
    10 => {
      body: lesson_body(
        section: "Servers",
        title: "Routing Basics",
        lead: "Routing decides which code should run for a specific URL and HTTP method.",
        concept: "As your backend grows, you need to map paths like /users or /products to the right handlers. Routing keeps request logic organized.",
        bullets: [
          "Routes connect URLs to handlers.",
          "Method and path usually both matter.",
          "Good routing keeps apps readable."
        ],
        flow_steps: [
          { title: "Request Comes In", note: "method + path detected" },
          { title: "Match Route", note: "find correct handler" },
          { title: "Run Logic", note: "send result" }
        ],
        tip: "Think of a router as traffic control for your app."
      ),
      starter_code: <<~'JS'
        const routes = {
          "GET /": "homeHandler",
          "GET /users": "listUsers",
          "POST /users": "createUser"
        };

        const currentRequest = "GET /users";
        console.log("Matched handler:", routes[currentRequest]);
      JS
    },
    11 => {
      body: lesson_body(
        section: "Express",
        title: "Express.js Introduction",
        lead: "Express is the most popular Node.js web framework because it makes server code simpler and more productive.",
        concept: "Instead of building everything directly on the low-level HTTP module, Express gives you cleaner routing, middleware, and request helpers.",
        bullets: [
          "Express reduces boilerplate.",
          "It is widely used for APIs and web backends.",
          "It builds on top of Node's core HTTP model."
        ],
        flow_steps: [
          { title: "Create App", note: "initialize Express" },
          { title: "Register Routes", note: "define endpoints" },
          { title: "Listen", note: "start server" }
        ],
        tip: "Node.js is the runtime; Express is a framework built on top of it."
      ),
      starter_code: <<~'JS'
        // Express-style ideas in plain JS
        const app = {
          routes: [],
          get(path, handlerName) {
            this.routes.push({ method: "GET", path, handlerName });
          }
        };

        app.get("/", "homeController");
        app.get("/courses", "coursesController");

        console.log(app.routes);
      JS
    },
    12 => {
      body: lesson_body(
        section: "Express",
        title: "Middleware",
        lead: "Middleware is one of Express's most important ideas. It lets you run logic before the final route handler.",
        concept: "Logging, authentication, JSON parsing, and validation often live in middleware. Each middleware function can inspect or change the request and then pass control onward.",
        bullets: [
          "Middleware runs in sequence.",
          "It can stop or continue the request lifecycle.",
          "It keeps cross-cutting concerns reusable."
        ],
        flow_steps: [
          { title: "Request", note: "arrives at app" },
          { title: "Middleware", note: "log, validate, auth" },
          { title: "Route Handler", note: "business logic runs" }
        ],
        tip: "Middleware helps you avoid repeating the same setup logic in every route."
      ),
      starter_code: <<~'JS'
        const request = { user: null, url: "/dashboard" };

        function authMiddleware(req) {
          req.user = { name: "Ada", role: "admin" };
          return req;
        }

        const updatedRequest = authMiddleware(request);
        console.log(updatedRequest);
      JS
    },
    13 => {
      body: lesson_body(
        section: "Express",
        title: "REST APIs with Express",
        lead: "REST APIs expose structured endpoints so frontends, mobile apps, and other services can work with your data.",
        concept: "A REST API usually models resources like users, posts, or orders. Each endpoint uses HTTP methods to create, read, update, or delete those resources.",
        bullets: [
          "GET reads data.",
          "POST creates data.",
          "PUT/PATCH updates data and DELETE removes it."
        ],
        flow_steps: [
          { title: "Resource", note: "users, products, posts" },
          { title: "Endpoint", note: "define URL + method" },
          { title: "JSON Response", note: "return structured data" }
        ],
        tip: "The cleaner your resource design is, the easier your API is to use."
      ),
      starter_code: <<~'JS'
        const users = [
          { id: 1, name: "Ada" },
          { id: 2, name: "Grace" }
        ];

        console.log("GET /users");
        console.log(JSON.stringify(users, null, 2));
      JS
    },
    14 => {
      body: lesson_body(
        section: "Express",
        title: "JSON and Body Parsing",
        lead: "Many Node.js APIs accept and return JSON, so parsing request bodies is a core backend skill.",
        concept: "When a client sends JSON, the server has to parse it into a JavaScript object before using it. In Express, middleware usually does this for you.",
        bullets: [
          "JSON is the standard language for APIs.",
          "Parsed request bodies become normal JS objects.",
          "Validation is still important after parsing."
        ],
        flow_steps: [
          { title: "Client Sends JSON", note: "body payload arrives" },
          { title: "Parser Runs", note: "string becomes object" },
          { title: "Server Uses Data", note: "validate and save" }
        ],
        tip: "Parsing alone is not enough; always validate incoming data too."
      ),
      starter_code: <<~'JS'
        const rawBody = '{"name":"Node Course","level":"Beginner"}';
        const parsedBody = JSON.parse(rawBody);

        console.log("Parsed request body:");
        console.log(parsedBody);
        console.log("Course name:", parsedBody.name);
      JS
    },
    15 => {
      body: lesson_body(
        section: "Async Patterns",
        title: "Async JavaScript in Node.js",
        lead: "Async programming is central to Node.js because so much backend work depends on I/O like files, APIs, and databases.",
        concept: "Node.js apps use callbacks, promises, and async/await to deal with work that finishes later. Async/await is usually the easiest modern style to read.",
        bullets: [
          "Promises represent future results.",
          "async/await makes async flows cleaner.",
          "Error handling still matters in async code."
        ],
        flow_steps: [
          { title: "Start Task", note: "request or DB call" },
          { title: "Wait Asynchronously", note: "do not block app" },
          { title: "Use Result", note: "handle success or error" }
        ],
        tip: "If you can read promises and async/await confidently, you can build much stronger Node apps."
      ),
      starter_code: <<~'JS'
        function fakeApiCall() {
          return new Promise((resolve) => {
            setTimeout(() => resolve("Data loaded"), 300);
          });
        }

        async function run() {
          const result = await fakeApiCall();
          console.log(result);
        }

        run();
      JS
    },
    16 => {
      body: lesson_body(
        section: "Production Skills",
        title: "Working with Databases",
        lead: "Most real Node.js apps store data in a database rather than only in memory.",
        concept: "Node.js can connect to SQL or NoSQL databases. Your app usually sends queries or commands, receives results, and then returns clean responses to the client.",
        bullets: [
          "Databases persist data across restarts.",
          "Apps often separate routes, models, and database logic.",
          "Validation and error handling are critical."
        ],
        flow_steps: [
          { title: "Receive Request", note: "client asks for data" },
          { title: "Query Database", note: "fetch or update records" },
          { title: "Return Result", note: "send API response" }
        ],
        tip: "Good backend code keeps database logic organized instead of scattering queries everywhere."
      ),
      starter_code: <<~'JS'
        const fakeUsersTable = [
          { id: 1, name: "Ada" },
          { id: 2, name: "Linus" }
        ];

        const foundUser = fakeUsersTable.find((user) => user.id === 2);
        console.log("Database result:", foundUser);
      JS
    },
    17 => {
      body: lesson_body(
        section: "Production Skills",
        title: "Environment Variables",
        lead: "Environment variables help keep secrets and environment-specific settings out of your source code.",
        concept: "Instead of hardcoding API keys, ports, and database URLs, you load them from the environment. This makes your app safer and easier to deploy across dev, staging, and production.",
        bullets: [
          "Secrets should not be committed to Git.",
          "Different environments often need different values.",
          "dotenv is common for local development."
        ],
        flow_steps: [
          { title: "Set Variable", note: "PORT, DB_URL, API_KEY" },
          { title: "Read in App", note: "use process.env" },
          { title: "Configure Behavior", note: "adapt by environment" }
        ],
        tip: "If a value changes between machines, it probably belongs in an environment variable."
      ),
      starter_code: <<~'JS'
        const env = {
          PORT: "3000",
          NODE_ENV: "development",
          APP_NAME: "AI Academy"
        };

        console.log("Running app:", env.APP_NAME);
        console.log("Port:", env.PORT);
        console.log("Mode:", env.NODE_ENV);
      JS
    },
    18 => {
      body: lesson_body(
        section: "Production Skills",
        title: "Authentication Basics",
        lead: "Authentication confirms who a user is, and it is one of the most important backend concerns in real applications.",
        concept: "A Node.js app may use sessions, cookies, or tokens to remember signed-in users. The key idea is that protected routes should only respond when identity is verified.",
        bullets: [
          "Authentication proves identity.",
          "Authorization decides what a user may do.",
          "Protected routes should reject unauthenticated requests."
        ],
        flow_steps: [
          { title: "User Signs In", note: "credentials verified" },
          { title: "App Issues Session/Token", note: "identity is remembered" },
          { title: "Protected Route Checks", note: "allow or deny access" }
        ],
        tip: "Authentication and authorization are related, but they solve different problems."
      ),
      starter_code: <<~'JS'
        const currentUser = { name: "Ada", authenticated: true };

        if (currentUser.authenticated) {
          console.log("Access granted to dashboard");
        } else {
          console.log("Access denied");
        }
      JS
    },
    19 => {
      body: lesson_body(
        section: "Production Skills",
        title: "Error Handling and Logging",
        lead: "Production-ready Node.js apps need clear error handling and useful logs so problems can be diagnosed quickly.",
        concept: "Good error handling prevents crashes from turning into silent failures. Good logging captures enough context to understand what happened and where.",
        bullets: [
          "Catch and report errors clearly.",
          "Log meaningful context, not just vague messages.",
          "Centralized error handling improves reliability."
        ],
        flow_steps: [
          { title: "Something Fails", note: "unexpected problem happens" },
          { title: "Handle Error", note: "respond safely" },
          { title: "Log Context", note: "make debugging easier" }
        ],
        tip: "A backend without logging is much harder to support once real users arrive."
      ),
      starter_code: <<~'JS'
        function divide(a, b) {
          if (b === 0) {
            throw new Error("Cannot divide by zero");
          }
          return a / b;
        }

        try {
          console.log(divide(10, 2));
          console.log(divide(10, 0));
        } catch (error) {
          console.error("Handled error:", error.message);
        }
      JS
    },
    20 => {
      body: lesson_body(
        section: "Final Review",
        title: "Node.js Final Review",
        lead: "You now have a strong Node.js foundation: runtime basics, modules, servers, Express, async patterns, and production backend concepts.",
        concept: "The biggest takeaway is that Node.js combines JavaScript with server-side tools, letting you build full applications with one core language across frontend and backend workflows.",
        bullets: [
          "Node.js is a JavaScript runtime for backend and tooling work.",
          "Express makes building APIs and servers much faster.",
          "Async thinking is essential for real Node.js development."
        ],
        flow_steps: [
          { title: "Runtime", note: "Node executes JavaScript" },
          { title: "Framework", note: "Express structures the backend" },
          { title: "Deployment", note: "apps serve real users" }
        ],
        tip: "The best next step after this course is to build a small API project with routes, middleware, and a database."
      ),
      starter_code: <<~'JS'
        const summary = {
          runtime: "Node.js",
          framework: "Express",
          asyncStyle: "async/await",
          nextGoal: "Build an API project"
        };

        console.log("Node.js course summary");
        console.log(summary);
      JS
    }
  }.freeze
end

module NodejsContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">What Node.js Is &amp; the Event Loop</h1>
        </div>
        <p class="lc-lead">Node.js is a <strong>JavaScript runtime</strong>: Google's V8 engine plus a C library called <strong>libuv</strong> that gives JavaScript access to files, sockets, timers and processes. It runs your code on a single main thread and stays fast by never waiting around for I/O.</p>
        <div class="lc-card">
          <h3>Browser JavaScript vs Node.js</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Browser</th><th>Node.js</th></tr></thead>
            <tbody>
              <tr><td>Global object</td><td><code>window</code></td><td><code>globalThis</code> (and <code>process</code>)</td></tr>
              <tr><td>DOM</td><td>Yes (<code>document</code>)</td><td>No DOM at all</td></tr>
              <tr><td>File system</td><td>Sandboxed / none</td><td>Full access via <code>node:fs</code></td></tr>
              <tr><td>Network</td><td><code>fetch</code>, WebSocket</td><td><code>fetch</code> plus raw TCP/HTTP servers</td></tr>
              <tr><td>Modules</td><td><code>&lt;script type="module"&gt;</code></td><td>ES modules and CommonJS</td></tr>
              <tr><td>Typical job</td><td>UI and interaction</td><td>APIs, CLIs, build tools, workers</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Your First Node Program</h3>
          <p>Save this as <code>hello.mjs</code> and run <code>node hello.mjs</code>. It uses things a browser cannot: the process object and the file system.</p>
          <div class="lc-code">// hello.mjs<br>import { readFile } from "node:fs/promises";<br>import os from "node:os";<br><br>console.log(`Node ${process.version} on ${os.platform()}`);<br>console.log("Arguments:", process.argv.slice(2));<br><br>const text = await readFile(new URL(import.meta.url), "utf8");<br>console.log(`This file is ${text.length} characters long`);</div>
        </div>
        <div class="lc-card">
          <h3>Non-blocking I/O</h3>
          <p>When your code asks for a file or a network response, Node hands the work to the operating system (or libuv's thread pool) and immediately moves on. When the result is ready, a <strong>callback</strong> is queued and the <strong>event loop</strong> runs it.</p>
          <div class="lc-code">import { readFile } from "node:fs/promises";<br><br>console.log("1. asking for the file");<br>readFile("big.csv", "utf8").then((data) =&gt; {<br>  console.log("3. file arrived:", data.length, "chars");<br>});<br>console.log("2. still running - nothing was blocked");</div>
        </div>
        <div class="lc-card">
          <h3>The Event Loop Phases (simplified)</h3>
          <table class="lc-table">
            <thead><tr><th>Phase</th><th>What runs there</th></tr></thead>
            <tbody>
              <tr><td>timers</td><td><code>setTimeout</code> / <code>setInterval</code> callbacks whose time is up</td></tr>
              <tr><td>poll</td><td>I/O callbacks: finished file reads, incoming sockets</td></tr>
              <tr><td>check</td><td><code>setImmediate</code> callbacks</td></tr>
              <tr><td>close</td><td>close events such as <code>socket.on("close")</code></td></tr>
              <tr><td>between every callback</td><td>microtasks: <code>process.nextTick</code>, then resolved promises</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The One Rule: Don't Block the Loop</h3>
          <p>There is only one JavaScript thread. A long synchronous loop freezes <em>every</em> request on the server until it finishes:</p>
          <div class="lc-code">import http from "node:http";<br><br>http.createServer((req, res) =&gt; {<br>  if (req.url === "/slow") {<br>    const end = Date.now() + 5000;<br>    while (Date.now() &lt; end) {} // BAD: blocks all users for 5 s<br>  }<br>  res.end("ok");<br>}).listen(3000);</div>
          <ul class="lc-list">
            <li>I/O-heavy work (databases, HTTP calls, files) is where Node shines.</li>
            <li>CPU-heavy work (image resizing, big crypto loops) belongs in <code>node:worker_threads</code> or a separate service.</li>
            <li><code>fs.readFileSync</code> and friends are fine in start-up scripts, never inside request handlers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>What People Build with Node</h3>
          <table class="lc-table">
            <thead><tr><th>Kind of project</th><th>Typical tools</th></tr></thead>
            <tbody>
              <tr><td>REST / GraphQL APIs</td><td>Express, Fastify, NestJS</td></tr>
              <tr><td>Real-time apps (chat, live dashboards)</td><td>WebSockets, Socket.IO</td></tr>
              <tr><td>Command-line tools</td><td><code>npx</code> scripts, <code>util.parseArgs</code></td></tr>
              <tr><td>Front-end build tooling</td><td>Vite, ESLint, TypeScript compiler</td></tr>
              <tr><td>Full-stack web frameworks</td><td>Next.js, Remix, Nuxt</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: watch the event loop</h3>
          <p>Save as <code>loop.mjs</code> and run <code>node loop.mjs</code> (Node 24):</p>
          <div class="lc-code">import { readFile } from "node:fs/promises";<br><br>console.log("1. asking for this file");<br>readFile(import.meta.filename, "utf8").then((text) =&gt; {<br>  console.log(`5. file arrived: ${text.split("\n").length} lines`);<br>});<br>setTimeout(() =&gt; console.log("3. 0 ms timer"), 0);<br>console.log("2. still running - nothing was blocked");<br><br>// Blocking the loop: a timer cannot fire while a synchronous loop runs<br>const t0 = Date.now();<br>setTimeout(() =&gt; {<br>  console.log(`4. second timer asked for 0 ms, waited at least 200 ms: ${Date.now() - t0 &gt;= 200}`);<br>}, 0);<br>while (Date.now() - t0 &lt; 200) {} // busy loop: blocks everything for 200 ms</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">1. asking for this file<br>2. still running - nothing was blocked<br>3. 0 ms timer<br>4. second timer asked for 0 ms, waited at least 200 ms: true<br>5. file arrived: 16 lines</div>
          <ul class="lc-list">
            <li>Lines 1 and 2 are synchronous, so they always print first, even though the file read was requested before line 2.</li>
            <li>The second timer asked for 0 ms but had to wait for the 200 ms busy loop: <strong>a timer's delay is a minimum, not a promise</strong>. Every other callback, including every other user's request on a server, waits the same way.</li>
            <li>The file arrives last: reading it takes several trips to libuv's thread pool, and each result is handled on a later turn of the loop.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Which Node version?</h3>
          <table class="lc-table">
            <thead><tr><th>Release line</th><th>Status in September 2026</th><th>Use it for</th></tr></thead>
            <tbody>
              <tr><td>Node 24</td><td>Active LTS (long-term support)</td><td>New projects and production (this course)</td></tr>
              <tr><td>Node 22</td><td>Maintenance LTS, security fixes until April 2027</td><td>Existing apps; plan the upgrade</td></tr>
              <tr><td>Node 26</td><td>"Current" release; becomes LTS in October 2026</td><td>Trying new features</td></tr>
              <tr><td>Node 20 and older</td><td>End of life (no more security fixes)</td><td>Nothing: upgrade</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Doing CPU-heavy work in a request handler.</strong> Hashing thousands of passwords or resizing images in a loop blocks every user. Move it to <code>node:worker_threads</code>, a queue, or another service.</li>
            <li><strong>Using <code>readFileSync</code> inside a server route.</strong> Sync APIs pause the whole process while the disk works.</li>
            <li><strong>Expecting <code>setTimeout(fn, 0)</code> to run immediately.</strong> It runs only after the current synchronous code finishes, and possibly later.</li>
            <li><strong>Looking for <code>window</code> or <code>document</code>.</strong> They don't exist in Node; use <code>globalThis</code>, <code>process</code> and Node modules instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change request 1's delay from <code>300</code> to <code>1000</code>. It now finishes last, and the whole batch takes about 1 second: the waits still overlap.</li>
            <li>Add <code>handleRequest(4, 50)</code> to the <code>all</code> array. Predict the order of the "done" lines before you run it.</li>
            <li>Put <code>const end = Date.now() + 500; while (Date.now() &lt; end) {}</code> just before <code>console.log("server: all three started without waiting")</code>. Nothing else can run during that half second, so every request finishes later.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use an LTS release for real projects: even-numbered lines (22, 24, 26...) become LTS. Check yours with <code>node --version</code>, and install or switch versions with <code>nvm</code>, <code>fnm</code> or the official installer from nodejs.org.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // Simulating non-blocking I/O: three "requests" each wait on slow work.
        function fakeQuery(name, ms) {
          return new Promise((resolve) => setTimeout(() => resolve(`${name} done`), ms));
        }

        function handleRequest(id, ms) {
          console.log(`request ${id}: started (needs ${ms} ms of I/O)`);
          return fakeQuery(`query ${id}`, ms).then((result) => {
            console.log(`request ${id}: ${result}`);
          });
        }

        console.log("server: accepting requests");
        const all = [
          handleRequest(1, 300),
          handleRequest(2, 100),
          handleRequest(3, 200)
        ];
        console.log("server: all three started without waiting");

        Promise.all(all).then(() => {
          console.log("server: every request finished");
          console.log("Total time is about 300 ms, not 600 ms, because the waits overlap.");
        });
      JS
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Running Scripts, the REPL &amp; node --watch</h1>
        </div>
        <p class="lc-lead">The <code>node</code> command is your main tool. It runs files, opens an interactive REPL, reloads on change, and gives your program access to its arguments, environment and exit code through the global <code>process</code> object.</p>
        <div class="lc-card">
          <h3>Everyday Commands</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>node</code></td><td>Opens the REPL (Read-Eval-Print Loop)</td></tr>
              <tr><td><code>node app.js</code></td><td>Runs a file once</td></tr>
              <tr><td><code>node --watch app.js</code></td><td>Re-runs whenever the file or its imports change (built in since Node 18.11)</td></tr>
              <tr><td><code>node -e "console.log(1 + 1)"</code></td><td>Evaluates a one-liner</td></tr>
              <tr><td><code>node --inspect app.js</code></td><td>Opens the debugger for Chrome DevTools / VS Code</td></tr>
              <tr><td><code>node --env-file=.env app.js</code></td><td>Loads environment variables from a file (Node 20.6+)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The REPL</h3>
          <p>Type <code>node</code> with no file to experiment. Top-level <code>await</code> works, <code>_</code> holds the last result, and dot-commands control the session.</p>
          <div class="lc-code">$ node<br>&gt; 2 ** 10<br>1024<br>&gt; _ + 1<br>1025<br>&gt; const res = await fetch("https://api.github.com/zen")<br>&gt; await res.text()<br>'Keep it logically awesome.'<br>&gt; .help    // list commands<br>&gt; .exit    // or press Ctrl+D</div>
        </div>
        <div class="lc-card">
          <h3>Reading Command-Line Arguments</h3>
          <p><code>process.argv</code> is an array: the node binary, the script path, then your arguments. <code>util.parseArgs</code> turns them into options for you.</p>
          <div class="lc-code">// greet.mjs  -&gt;  node greet.mjs Ada --shout --times 2<br>import { parseArgs } from "node:util";<br><br>const { values, positionals } = parseArgs({<br>  allowPositionals: true,<br>  options: {<br>    shout: { type: "boolean", default: false },<br>    times: { type: "string", default: "1" },<br>  },<br>});<br><br>const name = positionals[0] ?? "world";<br>let msg = `Hello, ${name}!`;<br>if (values.shout) msg = msg.toUpperCase();<br>for (let i = 0; i &lt; Number(values.times); i++) console.log(msg);</div>
        </div>
        <div class="lc-card">
          <h3>Exit Codes and Output Streams</h3>
          <p>Shells and CI systems read your exit code: <code>0</code> means success, anything else means failure. Send errors to <code>stderr</code> so they can be separated from normal output.</p>
          <div class="lc-code">if (!process.argv[2]) {<br>  console.error("usage: node greet.mjs &lt;name&gt;"); // goes to stderr<br>  process.exitCode = 1;  // lets pending work finish, then exits with 1<br>} else {<br>  process.stdout.write(`Hi ${process.argv[2]}\n`);<br>}</div>
          <ul class="lc-list">
            <li>Prefer <code>process.exitCode = 1</code> over <code>process.exit(1)</code>, which kills the process immediately and can cut off logs.</li>
            <li>A shebang line <code>#!/usr/bin/env node</code> plus <code>chmod +x</code> turns a script into a command.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Development Loop with --watch</h3>
          <div class="lc-code">// package.json<br>{<br>  "scripts": {<br>    "dev": "node --watch --env-file=.env server.js",<br>    "start": "node server.js"<br>  }<br>}</div>
          <p>Before <code>--watch</code> existed, everyone installed <code>nodemon</code>. For most projects the built-in flag is now enough.</p>
        </div>
        <div class="lc-card">
          <h3>Reading Input from stdin</h3>
          <p>Scripts often read from a pipe: <code>cat data.txt | node count.mjs</code>. <code>process.stdin</code> is a stream you can loop over:</p>
          <div class="lc-code">// count.mjs<br>let text = "";<br>for await (const chunk of process.stdin) text += chunk;<br>const words = text.split(/\s+/).filter(Boolean);<br>console.log(`${words.length} words`);</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: parseArgs, including a bad flag</h3>
          <p>You can pass an explicit <code>args</code> array to <code>parseArgs</code>, which is handy for trying it out (and for tests):</p>
          <div class="lc-code">// greet.mjs - run as: node greet.mjs Ada --shout --times 2<br>import { parseArgs } from "node:util";<br><br>const { values, positionals } = parseArgs({<br>  args: ["Ada", "--shout", "--times", "2"],   // omit `args` to read process.argv<br>  allowPositionals: true,<br>  options: {<br>    shout: { type: "boolean", default: false },<br>    times: { type: "string", default: "1" },<br>  },<br>});<br>console.log(values, positionals);<br><br>let msg = `Hello, ${positionals[0] ?? "world"}!`;<br>if (values.shout) msg = msg.toUpperCase();<br>for (let i = 0; i &lt; Number(values.times); i++) console.log(msg);<br><br>try {<br>  parseArgs({ args: ["--colour", "red"], options: {} });<br>} catch (err) {<br>  console.log("error:", err.code);   // a real CLI: console.error + process.exitCode = 1<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">[Object: null prototype] { shout: true, times: '2' } [ 'Ada' ]<br>HELLO, ADA!<br>HELLO, ADA!<br>error: ERR_PARSE_ARGS_UNKNOWN_OPTION</div>
          <p>Note that <code>--times</code> arrives as the <em>string</em> <code>'2'</code>: <code>parseArgs</code> only knows the types <code>"string"</code> and <code>"boolean"</code>, so convert numbers yourself. Unknown options throw an error with a stable <code>code</code> (strict mode is on by default).</p>
        </div>
        <div class="lc-card">
          <h3>The process object at a glance</h3>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Example value</th></tr></thead>
            <tbody>
              <tr><td><code>process.argv</code></td><td><code>['/usr/local/bin/node', '/app/greet.mjs', 'Ada']</code></td></tr>
              <tr><td><code>process.env.PORT</code></td><td><code>'3000'</code> (always a string, or <code>undefined</code>)</td></tr>
              <tr><td><code>process.cwd()</code></td><td>The folder you ran <code>node</code> from</td></tr>
              <tr><td><code>process.version</code></td><td><code>'v24.x.y'</code></td></tr>
              <tr><td><code>process.exitCode</code></td><td>The code the process will exit with (default 0)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reading <code>process.argv[0]</code> as the first argument.</strong> Index 0 is the node binary and 1 is the script; your arguments start at 2. Use <code>process.argv.slice(2)</code> or <code>parseArgs</code>.</li>
            <li><strong>Forgetting that values are strings.</strong> <code>"2" + 1</code> is <code>"21"</code>. Convert with <code>Number()</code> and check for <code>NaN</code>.</li>
            <li><strong>Calling <code>process.exit()</code> too early.</strong> Pending writes and logs can be lost. Set <code>process.exitCode</code> and let the program finish.</li>
            <li><strong>Printing errors with <code>console.log</code>.</strong> In a real CLI errors belong on stderr (<code>console.error</code>) so that <code>node app.js &gt; out.txt</code> still shows them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter remove <code>"--shout"</code> from the fake <code>argv</code> array. The greeting is printed in normal case.</li>
            <li>Change <code>"--times=2"</code> to <code>"--times=3"</code>: three lines appear.</li>
            <li>Delete <code>"Ada"</code> from the array. The name falls back to "world" and the last line says the exit code would be 1.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Files ending in <code>.mjs</code> are always ES modules and <code>.cjs</code> are always CommonJS. Plain <code>.js</code> follows the <code>"type"</code> field in the nearest package.json, which you will meet in the next lesson.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // A tiny version of util.parseArgs working on a fake process.argv.
        const argv = ["/usr/bin/node", "/app/greet.mjs", "Ada", "--shout", "--times=2"];

        function parseArgs(args) {
          const values = {};
          const positionals = [];
          for (const arg of args) {
            if (arg.startsWith("--")) {
              const [key, raw] = arg.slice(2).split("=");
              values[key] = raw === undefined ? true : raw;
            } else {
              positionals.push(arg);
            }
          }
          return { values, positionals };
        }

        const { values, positionals } = parseArgs(argv.slice(2));
        console.log("script:", argv[1]);
        console.log("values:", JSON.stringify(values));
        console.log("positionals:", JSON.stringify(positionals));

        const name = positionals[0] ?? "world";
        let message = `Hello, ${name}!`;
        if (values.shout) message = message.toUpperCase();
        const times = Number(values.times ?? 1);
        for (let i = 0; i < times; i++) console.log(message);

        const exitCode = positionals.length > 0 ? 0 : 1;
        console.log("exit code would be:", exitCode);
      JS
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Modules: ES Modules vs CommonJS</h1>
        </div>
        <p class="lc-lead">Every Node file is a <strong>module</strong> with its own scope. Node supports two systems: the modern standard <strong>ES modules</strong> (<code>import</code>/<code>export</code>) and the older <strong>CommonJS</strong> (<code>require</code>/<code>module.exports</code>). New projects should use ESM.</p>
        <div class="lc-card">
          <h3>Side by Side</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>ES modules (ESM)</th><th>CommonJS (CJS)</th></tr></thead>
            <tbody>
              <tr><td>Import</td><td><code>import fs from "node:fs"</code></td><td><code>const fs = require("node:fs")</code></td></tr>
              <tr><td>Export</td><td><code>export function add() {}</code></td><td><code>module.exports = { add }</code></td></tr>
              <tr><td>Loading</td><td>Asynchronous, analysed before running</td><td>Synchronous, at the moment <code>require</code> runs</td></tr>
              <tr><td>Top-level await</td><td>Yes</td><td>No</td></tr>
              <tr><td>File location</td><td><code>import.meta.dirname</code>, <code>import.meta.url</code></td><td><code>__dirname</code>, <code>__filename</code></td></tr>
              <tr><td>Enabled by</td><td><code>"type": "module"</code> or <code>.mjs</code></td><td>default for <code>.js</code>, or <code>.cjs</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>ES Modules in Practice</h3>
          <div class="lc-code">// package.json<br>{ "name": "shop", "type": "module" }<br><br>// src/math.js<br>export const TAX_RATE = 0.2;<br>export function withTax(price) {<br>  return Math.round(price * (1 + TAX_RATE) * 100) / 100;<br>}<br>export default function formatPrice(n) {<br>  return `$${n.toFixed(2)}`;<br>}<br><br>// src/index.js<br>import formatPrice, { withTax, TAX_RATE } from "./math.js"; // extension is required<br>import { readFile } from "node:fs/promises";<br><br>console.log(formatPrice(withTax(10)), `(tax ${TAX_RATE * 100}%)`);</div>
          <ul class="lc-list">
            <li>Relative imports need the full file name, including <code>.js</code>.</li>
            <li>Built-ins use the <code>node:</code> prefix so they can never be confused with an npm package.</li>
            <li>Named exports are checked when the module loads: a typo in <code>{ withTaxx }</code> fails immediately.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Same Module in CommonJS</h3>
          <p>You will read lots of CommonJS in older tutorials and packages:</p>
          <div class="lc-code">// math.cjs<br>const TAX_RATE = 0.2;<br>function withTax(price) { return price * (1 + TAX_RATE); }<br>module.exports = { TAX_RATE, withTax };<br><br>// index.cjs<br>const { withTax } = require("./math.cjs");<br>const path = require("node:path");<br>console.log(withTax(10), path.basename(__filename));</div>
        </div>
        <div class="lc-card">
          <h3>Module Caching and Dynamic Import</h3>
          <p>A module's top-level code runs <strong>once</strong>. Every later import receives the same cached instance, which is why a module is a natural place for a shared database pool or config object.</p>
          <div class="lc-code">// Load a module only when needed (works in ESM and CJS)<br>if (process.env.NODE_ENV !== "production") {<br>  const { default: morgan } = await import("morgan");<br>  app.use(morgan("dev"));<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Mixing the Two</h3>
          <ul class="lc-list">
            <li>ESM can <code>import</code> a CommonJS package; its <code>module.exports</code> becomes the default export.</li>
            <li>Inside ESM, <code>require</code> is not defined. If you truly need it, use <code>createRequire(import.meta.url)</code> from <code>node:module</code>.</li>
            <li>Recent Node versions (22.12+) can also <code>require()</code> an ES module that has no top-level await.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: ESM features you can check yourself</h3>
          <p>Put this file next to a <code>package.json</code> that contains <code>"type": "module"</code> and run it with Node 24:</p>
          <div class="lc-code">import path from "node:path";<br>import { createRequire } from "node:module";<br><br>console.log("typeof require :", typeof require);          // not defined in ESM<br>console.log("this file      :", path.basename(import.meta.filename));<br>console.log("__dirname equiv:", import.meta.dirname === path.dirname(import.meta.filename));<br><br>const req = createRequire(import.meta.url);               // escape hatch for CJS-only code<br>const pkg = req("./package.json");<br>console.log("package type   :", pkg.type);<br><br>const { default: os } = await import("node:os");          // dynamic import + top-level await<br>console.log("dynamic import :", typeof os.platform);<br><br>const a = await import("./package.json", { with: { type: "json" } });<br>const b = await import("./package.json", { with: { type: "json" } });<br>console.log("same cached module both times:", a === b);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">typeof require : undefined<br>this file      : l3_esm.mjs<br>__dirname equiv: true<br>package type   : module<br>dynamic import : function<br>same cached module both times: true</div>
          <ul class="lc-list">
            <li><code>require</code> really is undefined in an ES module; <code>createRequire</code> gives you one when an old CommonJS-only package needs it.</li>
            <li><code>import.meta.filename</code> and <code>import.meta.dirname</code> replace CommonJS's <code>__filename</code> and <code>__dirname</code>.</li>
            <li>JSON files are imported with an import attribute: <code>with { type: "json" }</code>.</li>
            <li>Importing the same module twice returns the <em>same</em> cached object.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Named vs default exports</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Named export</th><th>Default export</th></tr></thead>
            <tbody>
              <tr><td>Write</td><td><code>export function withTax() {}</code></td><td><code>export default function formatPrice() {}</code></td></tr>
              <tr><td>Import</td><td><code>import { withTax } from "./math.js"</code> (exact name)</td><td><code>import anyName from "./math.js"</code></td></tr>
              <tr><td>How many per file</td><td>As many as you like</td><td>At most one</td></tr>
              <tr><td>Typos</td><td>Caught when the module loads</td><td>Not caught: any name works</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Leaving out the file extension.</strong> <code>import "./math"</code> fails with <code>ERR_MODULE_NOT_FOUND</code> in ESM; write <code>"./math.js"</code>.</li>
            <li><strong>Using <code>require</code> in a <code>"type": "module"</code> project.</strong> It throws <code>ReferenceError: require is not defined in ES module scope</code>. Use <code>import</code>.</li>
            <li><strong>Mixing up default and named imports.</strong> <code>import withTax from "./math.js"</code> gets the <em>default</em> export, not the named <code>withTax</code>.</li>
            <li><strong>Circular imports.</strong> If a.js imports b.js and b.js imports a.js, one of them sees the other half-initialised. Move shared code into a third module.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add a second <code>load("./index.js");</code> at the end. No new "evaluating" line appears: the module ran once and was cached.</li>
            <li>Change <code>exports.TAX_RATE = 0.2</code> to <code>0.18</code> (India's common GST slab). The printed tax line updates, but <code>withTax</code> still multiplies by 1.2. Fix <code>withTax</code> to use <code>exports.TAX_RATE</code>.</li>
            <li>Call <code>a.next()</code> a third time. Because <code>a</code> and <code>b</code> are the same cached module, it prints 3.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Set <code>"type": "module"</code> in every new package.json. You get the same syntax as the browser, top-level <code>await</code>, and stricter, earlier errors.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // A miniature module system: modules are defined once, evaluated once, then cached.
        const definitions = {};
        const cache = {};

        function define(name, factory) {
          definitions[name] = factory;
        }

        function load(name) {
          if (cache[name]) return cache[name];
          console.log(`[loader] evaluating ${name}`);
          const exports = {};
          definitions[name](exports, load);
          cache[name] = exports;
          return exports;
        }

        define("./math.js", (exports) => {
          exports.TAX_RATE = 0.2;
          exports.withTax = (price) => Math.round(price * 1.2 * 100) / 100;
        });

        define("./counter.js", (exports) => {
          let count = 0;
          exports.next = () => ++count;
        });

        define("./index.js", (exports, load) => {
          const { withTax, TAX_RATE } = load("./math.js");
          console.log(`10 with ${TAX_RATE * 100}% tax =`, withTax(10));
        });

        load("./index.js");
        load("./math.js"); // cached: no "evaluating" line printed

        const a = load("./counter.js");
        const b = load("./counter.js");
        console.log("a.next():", a.next(), "b.next():", b.next());
        console.log("Same instance?", a === b);
      JS
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">npm &amp; package.json</h1>
        </div>
        <p class="lc-lead"><strong>npm</strong> installs packages from the npm registry and runs your project's scripts. <code>package.json</code> describes the project; <code>package-lock.json</code> records the exact versions that were installed so every machine gets the same tree.</p>
        <div class="lc-card">
          <h3>Starting a Project</h3>
          <div class="lc-code">$ mkdir notes-api &amp;&amp; cd notes-api<br>$ npm init -y                 # creates package.json<br>$ npm pkg set type=module     # use ES modules<br>$ npm install express         # runtime dependency<br>$ npm install -D eslint       # dev-only dependency<br>$ npm run dev                 # run a script</div>
        </div>
        <div class="lc-card">
          <h3>A Realistic package.json</h3>
          <div class="lc-code">{<br>  "name": "notes-api",<br>  "version": "1.0.0",<br>  "type": "module",<br>  "main": "src/server.js",<br>  "engines": { "node": "&gt;=24" },<br>  "scripts": {<br>    "dev": "node --watch --env-file=.env src/server.js",<br>    "start": "node src/server.js",<br>    "test": "node --test",<br>    "lint": "eslint src"<br>  },<br>  "dependencies": {<br>    "express": "^5.2.1",<br>    "zod": "^4.1.0"<br>  },<br>  "devDependencies": {<br>    "eslint": "^10.0.0"<br>  }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Semantic Versioning</h3>
          <p>Versions are <code>MAJOR.MINOR.PATCH</code>. A major bump may break your code; minor adds features; patch fixes bugs.</p>
          <table class="lc-table">
            <thead><tr><th>Range</th><th>Allows</th><th>Example matches for 5.1.0</th></tr></thead>
            <tbody>
              <tr><td><code>^5.1.0</code></td><td>Same major</td><td>5.1.4, 5.9.0 &mdash; not 6.0.0</td></tr>
              <tr><td><code>~5.1.0</code></td><td>Same major and minor</td><td>5.1.9 &mdash; not 5.2.0</td></tr>
              <tr><td><code>5.1.0</code></td><td>Exactly this version</td><td>5.1.0 only</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Key Commands</h3>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td><code>npm install</code></td><td>Install everything in package.json (updates the lock file if needed)</td></tr>
              <tr><td><code>npm ci</code></td><td>Clean install exactly from the lock file &mdash; use in CI and Docker</td></tr>
              <tr><td><code>npm outdated</code></td><td>Show which packages have newer versions</td></tr>
              <tr><td><code>npm audit</code></td><td>Report known vulnerabilities</td></tr>
              <tr><td><code>npx eslint .</code></td><td>Run a package's binary without a global install</td></tr>
              <tr><td><code>npm uninstall zod</code></td><td>Remove a dependency</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What to Commit</h3>
          <ul class="lc-list">
            <li><strong>Commit</strong> <code>package.json</code> and <code>package-lock.json</code>.</li>
            <li><strong>Never commit</strong> <code>node_modules/</code> or <code>.env</code> &mdash; add both to <code>.gitignore</code>.</li>
            <li>Scripts can call each other: <code>"check": "npm run lint &amp;&amp; npm test"</code>.</li>
            <li>Every dependency is code you run with full access to your machine: prefer popular, maintained packages and check what you install.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Using an Installed Package</h3>
          <p>After <code>npm install</code>, the package lives in <code>node_modules/</code> and you import it by name &mdash; no path needed:</p>
          <div class="lc-code">// src/slug.js<br>import slugify from "slugify";       // npm package (from node_modules)<br>import { randomUUID } from "node:crypto"; // built-in module<br><br>export function makeSlug(title) {<br>  return `${slugify(title, { lower: true, strict: true })}-${randomUUID().slice(0, 8)}`;<br>}<br><br>console.log(makeSlug("Hello Node World!")); // e.g. hello-node-world-3f9a1c2e (the suffix is random)</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: test ranges with the real semver library</h3>
          <p>npm uses the <code>semver</code> package to decide which versions a range allows. You can use it directly to check your understanding:</p>
          <div class="lc-code">// npm install semver   (the same library npm itself uses)<br>import semver from "semver";<br><br>const published = ["4.21.2", "5.0.1", "5.1.0", "5.2.1", "6.0.0-beta.1", "6.0.0"];<br>for (const range of ["^5.1.0", "~5.1.0", "5.x", "&gt;=5.1.0 &lt;5.2.0"]) {<br>  const ok = published.filter((v) =&gt; semver.satisfies(v, range));<br>  console.log(`${range.padEnd(15)} -&gt; ${ok.join(", ").padEnd(20)} newest: ${semver.maxSatisfying(published, range)}`);<br>}<br>console.log("^0.3.1 allows 0.4.0?", semver.satisfies("0.4.0", "^0.3.1"));<br>console.log("is 6.0.0 a breaking change from 5.2.1?", semver.major("6.0.0") &gt; semver.major("5.2.1"));</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">^5.1.0          -&gt; 5.1.0, 5.2.1         newest: 5.2.1<br>~5.1.0          -&gt; 5.1.0                newest: 5.1.0<br>5.x             -&gt; 5.0.1, 5.1.0, 5.2.1  newest: 5.2.1<br>&gt;=5.1.0 &lt;5.2.0  -&gt; 5.1.0                newest: 5.1.0<br>^0.3.1 allows 0.4.0? false<br>is 6.0.0 a breaking change from 5.2.1? true</div>
          <ul class="lc-list">
            <li>Pre-releases such as <code>6.0.0-beta.1</code> are never picked by a normal range.</li>
            <li>For <strong>0.x</strong> versions the caret is stricter: <code>^0.3.1</code> allows 0.3.9 but not 0.4.0, because before 1.0 every minor bump may break things.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>dependencies vs devDependencies</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>dependencies</th><th>devDependencies</th></tr></thead>
            <tbody>
              <tr><td>Install with</td><td><code>npm install express</code></td><td><code>npm install -D eslint</code></td></tr>
              <tr><td>Needed</td><td>When the app runs in production</td><td>Only while developing, testing or building</td></tr>
              <tr><td>Installed by <code>npm ci --omit=dev</code>?</td><td>Yes</td><td>No</td></tr>
              <tr><td>Examples</td><td>express, zod, pg</td><td>eslint, prettier, typescript</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Deleting package-lock.json "to fix things".</strong> You lose the exact versions that worked. Use <code>npm ci</code> to reinstall exactly, or update one package deliberately.</li>
            <li><strong>Installing tools globally</strong> (<code>npm install -g eslint</code>). Teammates get different versions. Install as a devDependency and run with <code>npx</code> or an npm script.</li>
            <li><strong>Putting build or test tools in <code>dependencies</code>.</strong> They get shipped to production and make the image bigger.</li>
            <li><strong>Committing <code>node_modules/</code>.</strong> It is huge and platform-specific; the lock file is enough to recreate it.</li>
            <li><strong>Installing a look-alike package name.</strong> Typo-squatting is real (<code>expres</code>, <code>cross-env.js</code>). Check the name, weekly downloads and repository first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add <code>"5.9.1"</code> to the <code>published</code> list (keep it sorted, before <code>"6.0.0"</code>). <code>^5.1.0</code> now picks 5.9.1, but <code>~5.1.0</code> still picks 5.1.3.</li>
            <li>Add the range <code>"~5.2.0"</code> to the loop. Which versions match?</li>
            <li>Add <code>"6.0.0"</code> as a range (an exact version) and confirm only 6.0.0 matches.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before adding a package, check whether Node already does it: <code>fetch</code>, <code>crypto.randomUUID()</code>, <code>util.parseArgs</code>, <code>node --watch</code>, <code>--env-file</code> and <code>node:test</code> replace several once-standard dependencies.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // How npm decides which versions satisfy a range like "^5.1.0" or "~5.1.0".
        function parse(version) {
          return version.split(".").map(Number);
        }

        function compare(a, b) {
          for (let i = 0; i < 3; i++) {
            if (a[i] !== b[i]) return a[i] - b[i];
          }
          return 0;
        }

        function satisfies(version, range) {
          const v = parse(version);
          const op = range[0];
          const base = parse(op === "^" || op === "~" ? range.slice(1) : range);
          if (op === "^") return v[0] === base[0] && compare(v, base) >= 0;
          if (op === "~") return v[0] === base[0] && v[1] === base[1] && compare(v, base) >= 0;
          return compare(v, base) === 0;
        }

        const published = ["5.0.1", "5.1.0", "5.1.3", "5.2.0", "6.0.0"];

        for (const range of ["^5.1.0", "~5.1.0", "5.1.0"]) {
          const ok = published.filter((v) => satisfies(v, range));
          const newest = ok[ok.length - 1];
          console.log(`${range.padEnd(7)} matches ${ok.join(", ")}  -> npm picks ${newest}`);
        }
      JS
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Working with Files: fs/promises</h1>
        </div>
        <p class="lc-lead">The <code>node:fs/promises</code> module gives you promise-based file operations that work naturally with <code>async</code>/<code>await</code> and never block the event loop.</p>
        <div class="lc-card">
          <h3>Three Flavours of the Same API</h3>
          <table class="lc-table">
            <thead><tr><th>Style</th><th>Example</th><th>When to use</th></tr></thead>
            <tbody>
              <tr><td>Promises</td><td><code>await readFile(p, "utf8")</code></td><td>Default choice for app code</td></tr>
              <tr><td>Callback</td><td><code>readFile(p, "utf8", (err, data) =&gt; {})</code></td><td>Older code bases</td></tr>
              <tr><td>Sync</td><td><code>readFileSync(p, "utf8")</code></td><td>Start-up scripts and CLIs only</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Reading and Writing</h3>
          <div class="lc-code">import { readFile, writeFile, appendFile, mkdir } from "node:fs/promises";<br><br>// Read text (without "utf8" you get a Buffer of raw bytes)<br>const raw = await readFile("config.json", "utf8");<br>const config = JSON.parse(raw);<br><br>// Write (creates or replaces the file)<br>await mkdir("data", { recursive: true });<br>await writeFile("data/notes.json", JSON.stringify([{ id: 1, text: "hi" }], null, 2));<br><br>// Append one line to a log<br>await appendFile("data/app.log", `${new Date().toISOString()} started\n`);</div>
        </div>
        <div class="lc-card">
          <h3>Handling Errors by Code</h3>
          <p>File errors carry a <code>code</code> property. Check it instead of parsing messages:</p>
          <div class="lc-code">async function loadNotes(file) {<br>  try {<br>    return JSON.parse(await readFile(file, "utf8"));<br>  } catch (err) {<br>    if (err.code === "ENOENT") return [];   // file doesn't exist yet<br>    throw err;                              // EACCES, bad JSON, ... bubble up<br>  }<br>}</div>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>ENOENT</code></td><td>No such file or directory</td></tr>
              <tr><td><code>EACCES</code></td><td>Permission denied</td></tr>
              <tr><td><code>EEXIST</code></td><td>Already exists (e.g. <code>mkdir</code> without <code>recursive</code>)</td></tr>
              <tr><td><code>EISDIR</code></td><td>Expected a file but found a directory</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Directories and Metadata</h3>
          <div class="lc-code">import { readdir, stat, rm, rename } from "node:fs/promises";<br><br>const entries = await readdir("uploads", { withFileTypes: true });<br>for (const e of entries) {<br>  if (e.isFile()) {<br>    const info = await stat(`uploads/${e.name}`);<br>    console.log(e.name, info.size, "bytes");<br>  }<br>}<br>await rename("draft.txt", "final.txt");<br>await rm("tmp", { recursive: true, force: true });</div>
        </div>
        <div class="lc-card">
          <h3>Safer Writes</h3>
          <p>If the process crashes halfway through <code>writeFile</code>, the file can be left half-written. Write to a temporary file, then <code>rename</code> it &mdash; a rename is atomic on the same disk.</p>
          <div class="lc-code">async function saveJson(file, data) {<br>  const tmp = `${file}.tmp`;<br>  await writeFile(tmp, JSON.stringify(data, null, 2));<br>  await rename(tmp, file);<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: a tiny JSON "database" on disk</h3>
          <p>This script works in a fresh temporary folder, so you can run it anywhere without leaving files behind:</p>
          <div class="lc-code">import { mkdtemp, writeFile, readFile, appendFile, readdir, rename, rm } from "node:fs/promises";<br>import { tmpdir } from "node:os";<br>import path from "node:path";<br><br>const dir = await mkdtemp(path.join(tmpdir(), "notes-"));   // a fresh scratch folder<br>const file = path.join(dir, "notes.json");<br><br>async function loadNotes() {<br>  try {<br>    return JSON.parse(await readFile(file, "utf8"));<br>  } catch (err) {<br>    if (err.code === "ENOENT") return [];                   // no file yet: start empty<br>    throw err;<br>  }<br>}<br><br>console.log("before:", await loadNotes());<br>await writeFile(file + ".tmp", JSON.stringify([{ id: 1, text: "buy milk" }]));<br>await rename(file + ".tmp", file);                          // atomic replace<br>console.log("after :", await loadNotes());<br><br>await appendFile(path.join(dir, "app.log"), "saved note 1\n");<br>console.log("files :", (await readdir(dir)).sort());<br>console.log("raw   :", await readFile(file));               // no encoding -&gt; Buffer<br><br>try {<br>  await readFile(path.join(dir, "missing.txt"), "utf8");<br>} catch (err) {<br>  console.log("error :", err.code);<br>}<br>await rm(dir, { recursive: true, force: true });            // clean up</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">before: []<br>after : [ { id: 1, text: 'buy milk' } ]<br>files : [ 'app.log', 'notes.json' ]<br>raw   : &lt;Buffer 5b 7b 22 69 64 22 3a 31 2c 22 74 65 78 74 22 3a 22 62 75 79 20 6d 69 6c 6b 22 7d 5d&gt;<br>error : ENOENT</div>
          <p>The first load finds no file and returns <code>[]</code> instead of crashing. Reading without <code>"utf8"</code> gives a <code>Buffer</code> of raw bytes (5b is the character <code>[</code>). A missing file fails with <code>err.code === "ENOENT"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>readFile vs streams</h3>
          <p><code>readFile</code> loads the whole file into memory. That is perfect for config files and small JSON, but for a 2 GB log or a video use a stream (Lesson 8) so you only hold a small chunk at a time.</p>
        </div>
        <div class="lc-card">
          <h3>The functions you will use most</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Does</th><th>Watch out</th></tr></thead>
            <tbody>
              <tr><td><code>readFile(p, "utf8")</code></td><td>Whole file as a string</td><td>Without an encoding you get a Buffer</td></tr>
              <tr><td><code>writeFile(p, data)</code></td><td>Create or overwrite</td><td>Replaces the old content completely</td></tr>
              <tr><td><code>appendFile(p, data)</code></td><td>Add to the end (creates the file if needed)</td><td>Add your own <code>\n</code></td></tr>
              <tr><td><code>mkdir(p, { recursive: true })</code></td><td>Create folders, including parents</td><td>No error if it already exists</td></tr>
              <tr><td><code>readdir(p, { withFileTypes: true })</code></td><td>List a folder</td><td>Order is not guaranteed: sort if it matters</td></tr>
              <tr><td><code>rm(p, { recursive: true, force: true })</code></td><td>Delete a file or folder tree</td><td>Permanent: there is no recycle bin</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>await</code>.</strong> <code>const text = readFile(p, "utf8")</code> gives you a Promise, and <code>JSON.parse</code> of a Promise fails with a confusing error.</li>
            <li><strong>Catching every error as "file missing".</strong> Check <code>err.code === "ENOENT"</code> and re-throw everything else, or you will hide permission problems and corrupt JSON.</li>
            <li><strong>Checking <code>existsSync</code> before reading.</strong> The file can disappear between the check and the read (a race). Just try the operation and handle the error.</li>
            <li><strong>Building paths with string concatenation.</strong> <code>dir + "/" + name</code> breaks on Windows and on stray slashes; use <code>path.join</code> (next lesson).</li>
            <li><strong>Two requests writing the same file at once.</strong> Their writes can interleave. For real multi-user data, use a database (Lesson 16).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter call <code>loadNotes("config.json")</code> and print the result: it parses the existing config instead of returning <code>[]</code>.</li>
            <li>Inside the async function add <code>await fs.readFile("missing.txt");</code> with no try/catch. The run stops with an uncaught <code>ENOENT</code> error. Now wrap it in try/catch and print <code>err.code</code> instead.</li>
            <li>Push a second note before the <code>writeFile</code> line. "notes after" should print 2.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Relative paths like <code>"data/notes.json"</code> resolve against the directory you <em>ran</em> node from (<code>process.cwd()</code>), not the file's folder. The next lesson shows how to build paths that always point to the right place.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // An in-memory stand-in for node:fs/promises with the same async shape and error codes.
        const disk = new Map([["config.json", '{"port":3000,"debug":true}']]);

        function fsError(code, path) {
          const err = new Error(`${code}: no such file or directory, open '${path}'`);
          err.code = code;
          return err;
        }

        const fs = {
          async readFile(path) {
            if (!disk.has(path)) throw fsError("ENOENT", path);
            return disk.get(path);
          },
          async writeFile(path, text) { disk.set(path, String(text)); },
          async appendFile(path, text) { disk.set(path, (disk.get(path) ?? "") + text); }
        };

        async function loadNotes(file) {
          try {
            return JSON.parse(await fs.readFile(file));
          } catch (err) {
            if (err.code === "ENOENT") return [];
            throw err;
          }
        }

        (async () => {
          const config = JSON.parse(await fs.readFile("config.json"));
          console.log("port from config:", config.port);

          const notes = await loadNotes("notes.json");
          console.log("notes before:", notes.length);
          notes.push({ id: 1, text: "learn fs/promises" });
          await fs.writeFile("notes.json", JSON.stringify(notes));
          console.log("notes after:", (await loadNotes("notes.json")).length);

          await fs.appendFile("app.log", "started\n");
          await fs.appendFile("app.log", "saved note 1\n");
          console.log("log file:\n" + (await fs.readFile("app.log")).trim());
        })();
      JS
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">path, os &amp; URLs</h1>
        </div>
        <p class="lc-lead">Hard-coding <code>"folder/" + name</code> breaks on Windows and trips over stray slashes. The <code>node:path</code> module builds file paths correctly on every platform, <code>node:os</code> describes the machine, and <code>URL</code> handles file and web addresses.</p>
        <div class="lc-card">
          <h3>The path Toolkit</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Result (on macOS/Linux)</th></tr></thead>
            <tbody>
              <tr><td><code>path.join("src", "../data", "a.json")</code></td><td><code>data/a.json</code></td></tr>
              <tr><td><code>path.resolve("data", "a.json")</code></td><td><code>/home/ada/app/data/a.json</code> (absolute, from cwd)</td></tr>
              <tr><td><code>path.basename("/x/report.pdf")</code></td><td><code>report.pdf</code></td></tr>
              <tr><td><code>path.extname("photo.tar.gz")</code></td><td><code>.gz</code></td></tr>
              <tr><td><code>path.dirname("/x/y/z.txt")</code></td><td><code>/x/y</code></td></tr>
              <tr><td><code>path.parse("/x/z.txt")</code></td><td><code>{ root: "/", dir: "/x", base: "z.txt", ext: ".txt", name: "z" }</code></td></tr>
              <tr><td><code>path.sep</code></td><td><code>/</code> (<code>\</code> on Windows)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Paths Relative to the Current File</h3>
          <p>In ES modules there is no <code>__dirname</code>. Use <code>import.meta.dirname</code> (Node 20.11+) or derive it from <code>import.meta.url</code>:</p>
          <div class="lc-code">import path from "node:path";<br>import { fileURLToPath } from "node:url";<br>import { readFile } from "node:fs/promises";<br><br>const here = import.meta.dirname                         // Node 20.11+<br>  ?? path.dirname(fileURLToPath(import.meta.url));       // older versions<br><br>const dataFile = path.join(here, "..", "data", "notes.json");<br>const notes = JSON.parse(await readFile(dataFile, "utf8"));<br><br>// Or skip path entirely and resolve a URL:<br>const same = new URL("../data/notes.json", import.meta.url);<br>await readFile(same, "utf8");</div>
          <p>Now the script works no matter which directory you launch it from.</p>
        </div>
        <div class="lc-card">
          <h3>Blocking Path Traversal</h3>
          <p>Never join user input straight onto a folder. <code>../../etc/passwd</code> escapes it. Resolve, then check the result is still inside:</p>
          <div class="lc-code">const UPLOADS = path.resolve("uploads");<br><br>function safePath(userName) {<br>  const full = path.resolve(UPLOADS, userName);<br>  if (!full.startsWith(UPLOADS + path.sep)) {<br>    throw new Error("Invalid file name");<br>  }<br>  return full;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>The os Module</h3>
          <div class="lc-code">import os from "node:os";<br><br>console.log(os.platform());        // 'darwin', 'linux', 'win32'<br>console.log(os.cpus().length);     // logical CPU cores<br>console.log(os.totalmem() / 1e9);  // RAM in GB<br>console.log(os.homedir());         // '/Users/ada'<br>console.log(os.tmpdir());          // temp folder<br>console.log(os.EOL === "\n");      // line ending</div>
          <ul class="lc-list">
            <li>Use <code>os.availableParallelism()</code> to decide how many worker threads or cluster processes to start.</li>
            <li><code>os.tmpdir()</code> + <code>fs.mkdtemp</code> gives you a safe scratch directory.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Parsing Web URLs</h3>
          <div class="lc-code">const url = new URL("https://shop.example/search?q=node+books&amp;page=2");<br>url.hostname;                  // 'shop.example'<br>url.pathname;                  // '/search'<br>url.searchParams.get("q");     // 'node books'<br>Number(url.searchParams.get("page")); // 2</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: path helpers and the traversal guard</h3>
          <div class="lc-code">import path from "node:path";<br><br>console.log(path.join("src", "../data", "a.json"));<br>console.log(path.join("uploads/", "/avatar.png"));      // stray slashes are cleaned up<br>console.log(path.resolve("/app", "data", "a.json"));<br>console.log(path.win32.join("C:\\app", "data", "a.json")); // what Windows would produce<br>console.log(path.parse("/x/report.final.pdf"));<br><br>const UPLOADS = path.resolve("/app/uploads");<br>function safePath(name) {<br>  const full = path.resolve(UPLOADS, name);<br>  return full.startsWith(UPLOADS + path.sep) ? full : "BLOCKED";<br>}<br>for (const name of ["avatar.png", "../../etc/passwd", "/etc/passwd", "../uploads-evil/x"]) {<br>  console.log(name.padEnd(18), "-&gt;", safePath(name));<br>}<br><br>const url = new URL("https://shop.example/search?q=node+books&amp;page=2");<br>console.log(url.hostname, url.pathname, url.searchParams.get("q"), Number(url.searchParams.get("page")));</div>
          <p><strong>Output (on macOS/Linux):</strong></p>
          <div class="lc-code">data/a.json<br>uploads/avatar.png<br>/app/data/a.json<br>C:\app\data\a.json<br>{<br>  root: '/',<br>  dir: '/x',<br>  base: 'report.final.pdf',<br>  ext: '.pdf',<br>  name: 'report.final'<br>}<br>avatar.png         -&gt; /app/uploads/avatar.png<br>../../etc/passwd   -&gt; BLOCKED<br>/etc/passwd        -&gt; BLOCKED<br>../uploads-evil/x  -&gt; BLOCKED<br>shop.example /search node books 2</div>
          <ul class="lc-list">
            <li><code>path.win32</code> and <code>path.posix</code> let you see (or produce) the other platform's format; plain <code>path</code> uses the current one.</li>
            <li>All three attacks are blocked, including <code>../uploads-evil/x</code>. That is why the check adds <code>path.sep</code>: <code>"/app/uploads-evil".startsWith("/app/uploads")</code> is <code>true</code>, but it does not start with <code>"/app/uploads/"</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Which tool for which job?</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Use</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Glue folder and file names</td><td><code>path.join</code></td><td><code>path.join(dir, "notes.json")</code></td></tr>
              <tr><td>Get an absolute path (for checks and logs)</td><td><code>path.resolve</code></td><td><code>path.resolve("uploads")</code></td></tr>
              <tr><td>A file next to the current module</td><td><code>import.meta.dirname</code> or <code>new URL("./x", import.meta.url)</code></td><td><code>path.join(import.meta.dirname, "x")</code></td></tr>
              <tr><td>Split a path into parts</td><td><code>path.parse</code>, <code>basename</code>, <code>extname</code></td><td><code>path.extname("a.pdf")</code> → <code>.pdf</code></td></tr>
              <tr><td>Read a web address</td><td><code>new URL(...)</code></td><td><code>url.searchParams.get("q")</code></td></tr>
              <tr><td>Facts about the machine</td><td><code>node:os</code></td><td><code>os.availableParallelism()</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Assuming the current folder is the file's folder.</strong> <code>readFile("data.json")</code> depends on where you <em>ran</em> node. Build paths from <code>import.meta.dirname</code>.</li>
            <li><strong>Using <code>path.join</code> for security checks.</strong> Join keeps relative paths relative; resolve first, then compare absolute paths.</li>
            <li><strong>Checking with <code>startsWith(UPLOADS)</code> without the separator.</strong> It lets <code>/app/uploads-evil</code> through, as shown above.</li>
            <li><strong>Treating <code>url.searchParams.get()</code> as a number.</strong> It returns a string or <code>null</code>; convert and validate.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add <code>"../uploads-evil/x"</code> to the traversal list. It prints <code>safe=false</code> because the check compares with <code>UPLOADS + "/"</code>. Change the check to <code>full.startsWith(UPLOADS)</code> and run again: now the attack is wrongly marked <code>safe=true</code>. Put the <code>"/"</code> back.</li>
            <li>Print <code>extname("archive.tar.gz")</code> and <code>basename("/home/ravi/notes.txt")</code>.</li>
            <li>Change the URL to <code>...?q=node+books&amp;page=abc</code>. <code>Number("abc")</code> is <code>NaN</code>: add a fallback such as <code>|| 1</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>path.join</code> just glues and normalises; <code>path.resolve</code> always returns an absolute path. When in doubt about where a file lives, <code>console.log(path.resolve(p))</code>.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // A small POSIX version of path.join / basename / extname, plus the built-in URL class.
        function join(...parts) {
          const out = [];
          for (const seg of parts.join("/").split("/")) {
            if (seg === "" || seg === ".") continue;
            if (seg === "..") out.pop();
            else out.push(seg);
          }
          const abs = parts[0].startsWith("/") ? "/" : "";
          return abs + out.join("/");
        }

        const basename = (p) => p.split("/").pop();
        const extname = (p) => {
          const base = basename(p);
          const i = base.lastIndexOf(".");
          return i > 0 ? base.slice(i) : "";
        };

        console.log(join("src", "../data", "notes.json"));
        console.log(join("/app", "public/", "./img", "logo.png"));
        console.log(basename("/x/report.pdf"), extname("photo.tar.gz"), JSON.stringify(extname(".env")));

        // Path traversal check
        const UPLOADS = "/app/uploads";
        for (const name of ["avatar.png", "../../etc/passwd"]) {
          const full = join(UPLOADS, name);
          const safe = full.startsWith(UPLOADS + "/");
          console.log(`${name.padEnd(18)} -> ${full.padEnd(20)} safe=${safe}`);
        }

        // URL works identically in Node and the browser
        const moduleUrl = "file:///app/src/server.js";
        console.log(new URL("../data/notes.json", moduleUrl).pathname);
        const url = new URL("https://shop.example/search?q=node+books&page=2");
        console.log(url.pathname, url.searchParams.get("q"), Number(url.searchParams.get("page")));
      JS
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Events &amp; EventEmitter</h1>
        </div>
        <p class="lc-lead">Much of Node is built on one pattern: an object <strong>emits</strong> named events and other code <strong>listens</strong> for them. HTTP servers, streams, sockets and child processes are all <code>EventEmitter</code>s.</p>
        <div class="lc-card">
          <h3>The Core API</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>on(name, fn)</code></td><td>Add a listener that runs every time</td></tr>
              <tr><td><code>once(name, fn)</code></td><td>Add a listener that runs one time, then removes itself</td></tr>
              <tr><td><code>off(name, fn)</code></td><td>Remove a listener (needs the same function reference)</td></tr>
              <tr><td><code>emit(name, ...args)</code></td><td>Call every listener <strong>synchronously</strong>, in order; returns <code>true</code> if any existed</td></tr>
              <tr><td><code>listenerCount(name)</code></td><td>How many listeners are attached</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Using EventEmitter</h3>
          <div class="lc-code">import { EventEmitter } from "node:events";<br><br>const orders = new EventEmitter();<br><br>orders.on("created", (order) =&gt; {<br>  console.log(`email: receipt for order ${order.id}`);<br>});<br>orders.on("created", (order) =&gt; {<br>  console.log(`stock: reserve ${order.items.length} items`);<br>});<br>orders.once("created", () =&gt; console.log("first order ever!"));<br><br>orders.emit("created", { id: 1, items: ["book", "pen"] });<br>orders.emit("created", { id: 2, items: ["mug"] });</div>
          <p>The order service doesn't know or care who is listening &mdash; you can add analytics later without touching it.</p>
        </div>
        <div class="lc-card">
          <h3>Extending EventEmitter</h3>
          <div class="lc-code">class Uploader extends EventEmitter {<br>  async upload(file) {<br>    this.emit("start", file.name);<br>    for (let pct = 25; pct &lt;= 100; pct += 25) {<br>      await new Promise((r) =&gt; setTimeout(r, 100));<br>      this.emit("progress", pct);<br>    }<br>    this.emit("done", file.name);<br>  }<br>}<br><br>const up = new Uploader();<br>up.on("progress", (p) =&gt; console.log(`${p}%`));<br>up.on("done", (name) =&gt; console.log(`${name} uploaded`));<br>await up.upload({ name: "cat.jpg" });</div>
        </div>
        <div class="lc-card">
          <h3>The Special "error" Event</h3>
          <p>If something emits <code>"error"</code> and nobody listens, Node <strong>throws</strong> the error &mdash; which crashes the process if nothing catches it. Always attach an error listener to emitters you create or receive.</p>
          <div class="lc-code">const socket = net.connect(5432, "db.internal");<br>socket.on("error", (err) =&gt; {<br>  console.error("database connection failed:", err.code);<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Awaiting an Event</h3>
          <p><code>events.once</code> turns a single event into a promise, which fits nicely with <code>async</code> code:</p>
          <div class="lc-code">import { once } from "node:events";<br>import http from "node:http";<br><br>const server = http.createServer(handler).listen(3000);<br>await once(server, "listening");<br>console.log("ready on", server.address().port);</div>
        </div>
        <div class="lc-card">
          <h3>Design Notes</h3>
          <ul class="lc-list">
            <li><code>emit</code> is synchronous: a slow listener delays the emitter and every listener after it.</li>
            <li>Adding listeners inside a request handler without removing them leaks memory; Node warns after 10 on one event (<code>MaxListenersExceededWarning</code>).</li>
            <li><code>off</code> only works with the original function, so don't pass an inline arrow if you plan to remove it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: on, once, off, error and awaiting an event</h3>
          <div class="lc-code">import { EventEmitter, once } from "node:events";<br><br>const orders = new EventEmitter();<br>const sendEmail = (o) =&gt; console.log(`email: receipt for order ${o.id}`);<br>orders.on("created", sendEmail);<br>orders.once("created", () =&gt; console.log("analytics: first order ever!"));<br><br>console.log("before emit");<br>orders.emit("created", { id: 1 });           // listeners run synchronously, right here<br>console.log("after emit");<br>orders.emit("created", { id: 2 });           // the once-listener is gone now<br><br>orders.off("created", sendEmail);            // same function reference removes it<br>console.log("listeners left:", orders.listenerCount("created"));<br>console.log("emit returned:", orders.emit("created", { id: 3 }));<br><br>try {<br>  orders.emit("error", new Error("payment gateway down"));  // no "error" listener!<br>} catch (err) {<br>  console.log("thrown:", err.message);<br>}<br><br>setTimeout(() =&gt; orders.emit("paid", { id: 1, amount: 499 }), 10);<br>const [payment] = await once(orders, "paid");  // wait for one event as a promise<br>console.log("paid:", payment);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">before emit<br>email: receipt for order 1<br>analytics: first order ever!<br>after emit<br>email: receipt for order 2<br>listeners left: 0<br>emit returned: false<br>thrown: payment gateway down<br>paid: { id: 1, amount: 499 }</div>
          <p>"after emit" prints <em>after</em> both listeners: <code>emit</code> calls them synchronously before returning. Once every listener is removed, <code>emit</code> returns <code>false</code>. The unhandled <code>"error"</code> event is thrown straight out of <code>emit</code>.</p>
        </div>
        <div class="lc-card">
          <h3>EventEmitter vs Promise vs Stream</h3>
          <table class="lc-table">
            <thead><tr><th>Use</th><th>When the thing happens</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Promise / async function</td><td>Exactly once, with one result or error</td><td>Reading a file, one database query</td></tr>
              <tr><td>EventEmitter</td><td>Many times, possibly different kinds of events</td><td>"connection", "message", "close" on a socket</td></tr>
              <tr><td>Stream</td><td>Many chunks of one big piece of data</td><td>A file upload, a large log</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>No <code>"error"</code> listener.</strong> The first error crashes the process. Attach one to every emitter, socket and stream you create.</li>
            <li><strong>Removing an inline arrow function.</strong> <code>off("x", () =&gt; ...)</code> removes nothing because it is a new function. Keep a reference, as with <code>sendEmail</code> above.</li>
            <li><strong>Registering listeners inside a request handler.</strong> Each request adds another one; memory grows and Node prints <code>MaxListenersExceededWarning</code>.</li>
            <li><strong>Expecting <code>emit</code> to wait for async listeners.</strong> It calls them and moves on; an async listener's rejection is not caught by the emitter.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add a third listener <code>orders.on("created", (o) =&gt; console.log(`stock: reserve items for ${o.id}`))</code>. It runs for both orders, after the email line.</li>
            <li>Add <code>orders.on("error", (err) =&gt; console.log("handled:", err.message));</code> before the <code>try</code>. The error is now handled and the <code>catch</code> block no longer runs.</li>
            <li>Emit <code>"created"</code> a third time. The "first order ever!" line still appears only once.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Browsers have a similar built-in called <code>EventTarget</code>, and Node supports it too. Use <code>EventEmitter</code> in Node code because the ecosystem (streams, servers) is built on it.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // A tiny EventEmitter with the same behaviour as node:events for on/once/off/emit.
        class EventEmitter {
          #listeners = {};

          on(name, fn) {
            (this.#listeners[name] ??= []).push(fn);
            return this;
          }

          once(name, fn) {
            const wrapper = (...args) => {
              this.off(name, wrapper);
              fn(...args);
            };
            return this.on(name, wrapper);
          }

          off(name, fn) {
            this.#listeners[name] = (this.#listeners[name] ?? []).filter((l) => l !== fn);
            return this;
          }

          emit(name, ...args) {
            const list = [...(this.#listeners[name] ?? [])];
            if (name === "error" && list.length === 0) throw args[0];
            list.forEach((fn) => fn(...args));
            return list.length > 0;
          }
        }

        const orders = new EventEmitter();
        orders.on("created", (o) => console.log(`email: receipt for order ${o.id}`));
        orders.once("created", () => console.log("analytics: first order ever!"));

        orders.emit("created", { id: 1 });
        orders.emit("created", { id: 2 });
        console.log("emit with no listeners returns", orders.emit("shipped", { id: 1 }));

        try {
          orders.emit("error", new Error("payment gateway down"));
        } catch (err) {
          console.log("unhandled 'error' event was thrown:", err.message);
        }
      JS
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Streams &amp; Pipelines</h1>
        </div>
        <p class="lc-lead">A <strong>stream</strong> processes data piece by piece instead of loading it all into memory. That is how Node can serve a 4&nbsp;GB video or parse a huge log file using only a few megabytes of RAM.</p>
        <div class="lc-card">
          <h3>Four Kinds of Stream</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Direction</th><th>Examples</th></tr></thead>
            <tbody>
              <tr><td>Readable</td><td>Data comes out</td><td><code>fs.createReadStream</code>, an HTTP request body, <code>process.stdin</code></td></tr>
              <tr><td>Writable</td><td>Data goes in</td><td><code>fs.createWriteStream</code>, an HTTP response, <code>process.stdout</code></td></tr>
              <tr><td>Duplex</td><td>Both, independently</td><td>A TCP socket</td></tr>
              <tr><td>Transform</td><td>In, modified, out</td><td><code>zlib.createGzip()</code>, a CSV parser</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>readFile vs a Stream</h3>
          <div class="lc-code">import { readFile } from "node:fs/promises";<br>import { createReadStream } from "node:fs";<br><br>// Loads the WHOLE file into memory first<br>const all = await readFile("access.log", "utf8");<br><br>// Reads 64 KB chunks, one at a time<br>let bytes = 0;<br>for await (const chunk of createReadStream("access.log")) {<br>  bytes += chunk.length;<br>}<br>console.log(`${bytes} bytes processed`);</div>
        </div>
        <div class="lc-card">
          <h3>pipeline: Connect Streams Safely</h3>
          <p><code>pipeline</code> wires streams together, handles <strong>backpressure</strong> (pausing a fast reader when the writer is slow), and destroys every stream if any of them fails.</p>
          <div class="lc-code">import { pipeline } from "node:stream/promises";<br>import { createReadStream, createWriteStream } from "node:fs";<br>import { createGzip } from "node:zlib";<br><br>await pipeline(<br>  createReadStream("access.log"),<br>  createGzip(),<br>  createWriteStream("access.log.gz")<br>);<br>console.log("compressed");</div>
        </div>
        <div class="lc-card">
          <h3>Line by Line with readline</h3>
          <div class="lc-code">import { createReadStream } from "node:fs";<br>import readline from "node:readline";<br><br>const lines = readline.createInterface({ input: createReadStream("access.log") });<br><br>let errors = 0;<br>for await (const line of lines) {<br>  if (line.includes(" 500 ")) errors++;<br>}<br>console.log("server errors:", errors);</div>
        </div>
        <div class="lc-card">
          <h3>Writing Your Own Transform</h3>
          <div class="lc-code">import { Transform } from "node:stream";<br><br>const upper = new Transform({<br>  transform(chunk, encoding, callback) {<br>    callback(null, chunk.toString().toUpperCase());<br>  },<br>});<br><br>await pipeline(process.stdin, upper, process.stdout);<br>// echo "hello" | node upper.js  -&gt;  HELLO</div>
        </div>
        <div class="lc-card">
          <h3>Streaming an HTTP Response</h3>
          <p>The response object in a Node server is a writable stream, so large files can be sent without buffering:</p>
          <div class="lc-code">http.createServer(async (req, res) =&gt; {<br>  res.writeHead(200, { "Content-Type": "video/mp4" });<br>  await pipeline(createReadStream("intro.mp4"), res);<br>}).listen(3000);</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: count, compress, transform and fail safely</h3>
          <p>This script writes a 20,000-line log to a temporary folder and then processes it only with streams:</p>
          <div class="lc-code">import { createReadStream, createWriteStream } from "node:fs";<br>import { writeFile, stat, rm, mkdtemp } from "node:fs/promises";<br>import { pipeline } from "node:stream/promises";<br>import { Readable, Transform } from "node:stream";<br>import { createGzip } from "node:zlib";<br>import { tmpdir } from "node:os";<br>import path from "node:path";<br>import readline from "node:readline";<br><br>const dir = await mkdtemp(path.join(tmpdir(), "logs-"));<br>const log = path.join(dir, "access.log");<br>const lines = Array.from({ length: 20000 }, (_, i) =&gt; `GET /api/items/${i} ${i % 1000 === 0 ? 500 : 200}`);<br>await writeFile(log, lines.join("\n") + "\n");<br><br>let errors = 0;                                    // 1. read line by line<br>for await (const line of readline.createInterface({ input: createReadStream(log) })) {<br>  if (line.endsWith(" 500")) errors++;<br>}<br>console.log("server errors:", errors);<br><br>await pipeline(createReadStream(log), createGzip(), createWriteStream(log + ".gz"));  // 2. compress<br>console.log("original bytes:", (await stat(log)).size, "| gzipped bytes:", (await stat(log + ".gz")).size);<br><br>const upper = new Transform({                      // 3. a custom transform<br>  transform(chunk, encoding, callback) {<br>    callback(null, chunk.toString().toUpperCase());<br>  },<br>});<br>const out = [];<br>await pipeline(Readable.from(["hello ", "streams"]), upper, async function (source) {<br>  for await (const chunk of source) out.push(chunk.toString());<br>});<br>console.log(out.join(""));<br><br>try {                                              // 4. errors reach pipeline's promise<br>  await pipeline(createReadStream(path.join(dir, "missing.log")), createGzip(), createWriteStream(log + "2.gz"));<br>} catch (err) {<br>  console.log("pipeline failed:", err.code);<br>}<br>await rm(dir, { recursive: true, force: true });</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">server errors: 20<br>original bytes: 488890 | gzipped bytes: 52875<br>HELLO STREAMS<br>pipeline failed: ENOENT</div>
          <ul class="lc-list">
            <li>Repetitive text like logs compresses very well: about 9× smaller here.</li>
            <li>The last stage of a <code>pipeline</code> can be an async function that consumes the stream: handy for collecting or saving results.</li>
            <li>When the source file is missing, <code>pipeline</code> destroys all three streams and <em>rejects</em>, so one try/catch handles every failure.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Backpressure in one picture</h3>
          <p>A disk can often be read faster than a network client can download. Without backpressure the fast side would pile data up in memory. With <code>pipeline</code> (or <code>.pipe</code>), when the writable side's buffer passes its <code>highWaterMark</code> (16 KB by default for byte streams), <code>write()</code> returns <code>false</code> and the readable side pauses until a <code>"drain"</code> event. You get this for free; you only need to know it exists when you write to a stream by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Using <code>.pipe()</code> without error handling.</strong> Errors are not forwarded and streams can stay open. Use <code>pipeline</code> from <code>node:stream/promises</code>.</li>
            <li><strong>Splitting chunks on <code>"\n"</code> directly.</strong> A chunk can end in the middle of a line (see the starter's first chunk). Use <code>readline</code> or keep the leftover part.</li>
            <li><strong>Calling <code>chunk.toString()</code> on multi-byte text split across chunks.</strong> A Hindi character (3 bytes in UTF-8) can be cut in half. Set an encoding on the stream (<code>createReadStream(p, { encoding: "utf8" })</code>) or use <code>readline</code>.</li>
            <li><strong>Reading a huge file with <code>readFile</code> "because it is simpler".</strong> It works on your laptop and runs out of memory in production.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add a fourth chunk <code>"PUT /cart 500\n"</code> to <code>fakeLog</code>. The count becomes 3.</li>
            <li>Change <code>onlyErrors</code> to keep lines ending in <code>" 200"</code> instead. The loop now finds 3 lines (the label still says "server errors").</li>
            <li>Replace <code>buffer = lines.pop();</code> with <code>buffer = "";</code> and make <code>onlyErrors</code> yield every line. Broken half-lines such as <code>GET /api/us</code> and <code>ers 200</code> appear: this is exactly the bug <code>readline</code> saves you from.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefer <code>pipeline</code> (or <code>for await</code>) over the old <code>a.pipe(b)</code>. Plain <code>.pipe</code> does not forward errors, so a failing source can leave file handles open.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // Streams as async generators: read chunks -> split lines -> filter -> count.
        const fakeLog = [
          "GET /home 200\nGET /api/us",
          "ers 200\nPOST /login 500\nGET /a",
          "bout 200\nGET /api/orders 500\n"
        ];

        async function* readChunks(chunks) {
          for (const chunk of chunks) {
            console.log(`read chunk of ${chunk.length} chars`);
            yield chunk;
          }
        }

        async function* splitLines(source) {
          let buffer = "";
          for await (const chunk of source) {
            buffer += chunk;
            const lines = buffer.split("\n");
            buffer = lines.pop(); // keep the incomplete last line for the next chunk
            yield* lines;
          }
          if (buffer) yield buffer;
        }

        async function* onlyErrors(lines) {
          for await (const line of lines) {
            if (line.endsWith(" 500")) yield line;
          }
        }

        (async () => {
          let count = 0;
          for await (const line of onlyErrors(splitLines(readChunks(fakeLog)))) {
            count++;
            console.log("  error line:", line);
          }
          console.log(`found ${count} server errors without holding the whole log in memory`);
        })();
      JS
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Building a Server with node:http</h1>
        </div>
        <p class="lc-lead">Before reaching for a framework, see what a web server really is: a function that receives a <strong>request</strong> and writes a <strong>response</strong>. Node's built-in <code>node:http</code> module is all you need.</p>
        <div class="lc-card">
          <h3>The Smallest Useful Server</h3>
          <div class="lc-code">// server.js  -&gt;  node --watch server.js<br>import http from "node:http";<br><br>const server = http.createServer((req, res) =&gt; {<br>  console.log(req.method, req.url);<br>  res.writeHead(200, { "Content-Type": "text/plain; charset=utf-8" });<br>  res.end("Hello from Node!\n");<br>});<br><br>server.listen(3000, () =&gt; {<br>  console.log("Listening on http://localhost:3000");<br>});</div>
          <p>Try it with <code>curl -i http://localhost:3000</code> to see the status line and headers.</p>
        </div>
        <div class="lc-card">
          <h3>Anatomy of an HTTP Exchange</h3>
          <table class="lc-table">
            <thead><tr><th>Request (req)</th><th>Response (res)</th></tr></thead>
            <tbody>
              <tr><td><code>req.method</code> &mdash; GET, POST, PUT, PATCH, DELETE</td><td><code>res.statusCode = 404</code></td></tr>
              <tr><td><code>req.url</code> &mdash; path + query string</td><td><code>res.setHeader("Content-Type", "application/json")</code></td></tr>
              <tr><td><code>req.headers</code> &mdash; lower-cased names</td><td><code>res.write(chunk)</code> &mdash; send part of the body</td></tr>
              <tr><td>The body arrives as a <strong>readable stream</strong></td><td><code>res.end(data)</code> &mdash; finish (required!)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Routing and JSON by Hand</h3>
          <div class="lc-code">const todos = [{ id: 1, title: "Learn http" }];<br><br>function sendJson(res, status, data) {<br>  res.writeHead(status, { "Content-Type": "application/json" });<br>  res.end(JSON.stringify(data));<br>}<br><br>async function readJson(req) {<br>  let body = "";<br>  for await (const chunk of req) body += chunk;<br>  return JSON.parse(body || "{}");<br>}<br><br>http.createServer(async (req, res) =&gt; {<br>  const { pathname } = new URL(req.url, `http://${req.headers.host}`);<br>  try {<br>    if (req.method === "GET" &amp;&amp; pathname === "/todos") {<br>      return sendJson(res, 200, todos);<br>    }<br>    if (req.method === "POST" &amp;&amp; pathname === "/todos") {<br>      const { title } = await readJson(req);<br>      const todo = { id: todos.length + 1, title };<br>      todos.push(todo);<br>      return sendJson(res, 201, todo);<br>    }<br>    sendJson(res, 404, { error: "Not found" });<br>  } catch {<br>    sendJson(res, 400, { error: "Invalid JSON" });<br>  }<br>}).listen(3000);</div>
        </div>
        <div class="lc-card">
          <h3>Status Codes You Will Use Constantly</h3>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>200 / 201 / 204</td><td>OK / Created / No Content</td></tr>
              <tr><td>400 / 401 / 403 / 404</td><td>Bad Request / Not authenticated / Forbidden / Not Found</td></tr>
              <tr><td>409 / 422</td><td>Conflict (e.g. duplicate email) / Validation failed</td></tr>
              <tr><td>500</td><td>Our bug &mdash; never leak the stack trace to the client</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Calling Other Servers: Built-in fetch</h3>
          <p>Since Node 18, <code>fetch</code> is global &mdash; no <code>axios</code> or <code>node-fetch</code> required.</p>
          <div class="lc-code">const res = await fetch("https://api.github.com/repos/nodejs/node", {<br>  headers: { "User-Agent": "my-app" },<br>  signal: AbortSignal.timeout(5000),   // give up after 5 s<br>});<br>if (!res.ok) throw new Error(`GitHub said ${res.status}`);<br>const repo = await res.json();<br>console.log(repo.stargazers_count);</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: start a server, call it, stop it</h3>
          <p>A script can be its own client: listen on port <code>0</code> (the OS picks a free port), call the server with <code>fetch</code>, then close it. This version also limits the body size, which every real server must do:</p>
          <div class="lc-code">import http from "node:http";<br><br>const todos = [{ id: 1, title: "Learn http" }];<br>function sendJson(res, status, data) {<br>  res.writeHead(status, { "Content-Type": "application/json" });<br>  res.end(JSON.stringify(data));<br>}<br>async function readJson(req, limit = 10_000) {<br>  let body = "";<br>  for await (const chunk of req) {<br>    body += chunk;<br>    if (body.length &gt; limit) throw Object.assign(new Error("too big"), { status: 413 });<br>  }<br>  return JSON.parse(body || "{}");<br>}<br><br>const server = http.createServer(async (req, res) =&gt; {<br>  const { pathname } = new URL(req.url, `http://${req.headers.host}`);<br>  try {<br>    if (req.method === "GET" &amp;&amp; pathname === "/todos") return sendJson(res, 200, todos);<br>    if (req.method === "POST" &amp;&amp; pathname === "/todos") {<br>      const { title } = await readJson(req);<br>      const todo = { id: todos.length + 1, title };<br>      todos.push(todo);<br>      return sendJson(res, 201, todo);<br>    }<br>    sendJson(res, 404, { error: "Not found" });<br>  } catch (err) {<br>    sendJson(res, err.status ?? 400, { error: err.status ? "Body too large" : "Invalid JSON" });<br>  }<br>});<br><br>server.listen(0);                                   // 0 = any free port<br>await new Promise((resolve) =&gt; server.once("listening", resolve));<br>const base = `http://localhost:${server.address().port}`;<br><br>for (const [method, path, body] of [["GET", "/todos"], ["POST", "/todos", '{"title":"Write a server"}'],<br>    ["POST", "/todos", "{oops"], ["POST", "/todos", "x".repeat(20_000)], ["GET", "/nope"]]) {<br>  const res = await fetch(base + path, { method, body });<br>  console.log(method, path, "-&gt;", res.status, res.headers.get("content-type"), (await res.text()).slice(0, 60));<br>}<br>server.close();</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">GET /todos -&gt; 200 application/json [{"id":1,"title":"Learn http"}]<br>POST /todos -&gt; 201 application/json {"id":2,"title":"Write a server"}<br>POST /todos -&gt; 400 application/json {"error":"Invalid JSON"}<br>POST /todos -&gt; 413 application/json {"error":"Body too large"}<br>GET /nope -&gt; 404 application/json {"error":"Not found"}</div>
          <p>Without the size check, a client could send gigabytes and the server would keep adding them to <code>body</code> until it ran out of memory. <code>413 Content Too Large</code> is the correct status for that case.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>A code path that never calls <code>res.end()</code>.</strong> The client hangs until it times out.</li>
            <li><strong>Sending twice.</strong> Forgetting <code>return</code> after <code>sendJson</code> leads to a second <code>writeHead</code> and the error <code>ERR_HTTP_HEADERS_SENT</code>.</li>
            <li><strong>Comparing <code>req.url</code> directly with <code>"/todos"</code>.</strong> <code>/todos?done=false</code> would not match. Parse it with <code>new URL</code> and use <code>pathname</code>.</li>
            <li><strong>Reading the body without a size limit.</strong> An easy denial-of-service attack. Frameworks such as Express set a limit for you (100 KB by default for <code>express.json()</code>).</li>
            <li><strong>Returning 200 with an error message.</strong> Clients and monitoring rely on status codes; use 4xx/5xx for failures.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add a request <code>{ method: "POST", url: "/todos", body: '{"title":"Deploy"}' }</code>. It gets id 3.</li>
            <li>Add a <code>DELETE /todos</code> route in <code>handler</code> that empties the array and responds with status 204 and no body (<code>res.writeHead(204); res.end();</code>).</li>
            <li>Make POST reject a missing title: if <code>body.title</code> is not a non-empty string, respond 422 with <code>{ error: "title is required" }</code>, and test it with <code>body: "{}"</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Every code path must end the response. Forgetting <code>res.end()</code> leaves the client waiting until it times out &mdash; one of the most common beginner bugs in raw Node servers.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // The same handler logic as a node:http server, driven by fake req/res objects.
        const todos = [{ id: 1, title: "Learn http" }];

        function fakeResponse() {
          return {
            statusCode: 200, headers: {}, body: "",
            writeHead(status, headers) { this.statusCode = status; Object.assign(this.headers, headers); },
            end(data = "") { this.body = data; }
          };
        }

        function sendJson(res, status, data) {
          res.writeHead(status, { "Content-Type": "application/json" });
          res.end(JSON.stringify(data));
        }

        function handler(req, res) {
          const { pathname } = new URL(req.url, "http://localhost:3000");
          if (req.method === "GET" && pathname === "/todos") return sendJson(res, 200, todos);
          if (req.method === "POST" && pathname === "/todos") {
            let body;
            try { body = JSON.parse(req.body); } catch { return sendJson(res, 400, { error: "Invalid JSON" }); }
            const todo = { id: todos.length + 1, title: body.title };
            todos.push(todo);
            return sendJson(res, 201, todo);
          }
          sendJson(res, 404, { error: "Not found" });
        }

        const requests = [
          { method: "GET", url: "/todos" },
          { method: "POST", url: "/todos", body: '{"title":"Write a server"}' },
          { method: "POST", url: "/todos", body: "{oops" },
          { method: "GET", url: "/todos?done=false" },
          { method: "DELETE", url: "/nope" }
        ];

        for (const req of requests) {
          const res = fakeResponse();
          handler(req, res);
          console.log(`${req.method} ${req.url} -> ${res.statusCode} ${res.body}`);
        }
      JS
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Express Basics</h1>
        </div>
        <p class="lc-lead"><strong>Express</strong> is the most widely used Node web framework. It wraps <code>node:http</code> with routing, middleware and helpers like <code>res.json()</code>, so the server from the last lesson shrinks to a few readable lines. This course uses <strong>Express 5</strong>.</p>
        <div class="lc-card">
          <h3>Setup</h3>
          <div class="lc-code">$ npm init -y<br>$ npm pkg set type=module<br>$ npm install express</div>
        </div>
        <div class="lc-card">
          <h3>Hello Express</h3>
          <div class="lc-code">// app.js<br>import express from "express";<br><br>const app = express();<br>app.use(express.json());              // parse JSON request bodies<br><br>const todos = [{ id: 1, title: "Learn Express", done: false }];<br><br>app.get("/", (req, res) =&gt; {<br>  res.send("Hello from Express");<br>});<br><br>app.get("/todos", (req, res) =&gt; {<br>  res.json(todos);                    // sets Content-Type and stringifies<br>});<br><br>app.post("/todos", (req, res) =&gt; {<br>  const todo = { id: todos.length + 1, title: req.body.title, done: false };<br>  todos.push(todo);<br>  res.status(201).json(todo);<br>});<br><br>const port = Number(process.env.PORT ?? 3000);<br>app.listen(port, () =&gt; console.log(`http://localhost:${port}`));</div>
        </div>
        <div class="lc-card">
          <h3>node:http vs Express</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>node:http</th><th>Express</th></tr></thead>
            <tbody>
              <tr><td>Match method + path</td><td><code>if</code> statements on <code>req.method</code>/<code>req.url</code></td><td><code>app.get("/todos", fn)</code></td></tr>
              <tr><td>Read JSON body</td><td>Collect stream chunks, <code>JSON.parse</code></td><td><code>app.use(express.json())</code> then <code>req.body</code></td></tr>
              <tr><td>Send JSON</td><td><code>writeHead</code> + <code>JSON.stringify</code> + <code>end</code></td><td><code>res.json(data)</code></td></tr>
              <tr><td>Status</td><td><code>res.writeHead(201)</code></td><td><code>res.status(201)</code> (chainable)</td></tr>
              <tr><td>Query string</td><td><code>new URL(req.url, base).searchParams</code></td><td><code>req.query</code></td></tr>
              <tr><td>Static files</td><td>Write it yourself</td><td><code>app.use(express.static("public"))</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Response Helpers</h3>
          <div class="lc-code">res.json({ ok: true });              // JSON<br>res.status(404).json({ error: "Not found" });<br>res.sendStatus(204);                 // status with no body<br>res.redirect(302, "/login");<br>res.set("Cache-Control", "no-store").send("&lt;h1&gt;Hi&lt;/h1&gt;");<br>res.sendFile(path.join(import.meta.dirname, "public", "index.html"));</div>
        </div>
        <div class="lc-card">
          <h3>What's New in Express 5</h3>
          <ul class="lc-list">
            <li><strong>Async errors are caught.</strong> If an <code>async</code> handler throws or its promise rejects, Express forwards the error to your error handler. In Express 4 this crashed or hung the request.</li>
            <li>Path syntax is stricter: wildcards must be named, e.g. <code>app.get("/files/*path", ...)</code>.</li>
            <li><code>req.query</code> is read-only and <code>req.body</code> is <code>undefined</code> until a body parser runs.</li>
            <li>Requires Node 18 or newer.</li>
          </ul>
          <div class="lc-code">app.get("/users/:id", async (req, res) =&gt; {<br>  const user = await db.findUser(req.params.id); // if this rejects...<br>  res.json(user);                                  // ...Express 5 sends a 500 for you<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Separate the App from the Server</h3>
          <p>Export the <code>app</code> from one file and call <code>listen</code> in another. Tests can then import the app without opening a port.</p>
          <div class="lc-code">// app.js    -&gt; export default app;<br>// server.js -&gt; import app from "./app.js"; app.listen(process.env.PORT ?? 3000);</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: a real Express 5 app, tested with fetch</h3>
          <p>Run this with <code>express@5</code> installed. It starts on a free port, sends five requests and shuts down:</p>
          <div class="lc-code">import express from "express";<br><br>const app = express();<br>app.use(express.json());<br>const todos = [{ id: 1, title: "Learn Express", done: false }];<br><br>app.get("/", (req, res) =&gt; res.send("Hello from Express"));<br>app.get("/todos", (req, res) =&gt; res.json(todos));<br>app.post("/todos", (req, res) =&gt; {<br>  const todo = { id: todos.length + 1, title: req.body.title, done: false };<br>  todos.push(todo);<br>  res.status(201).json(todo);<br>});<br>app.get("/boom", async () =&gt; {<br>  await new Promise((r) =&gt; setTimeout(r, 5));<br>  throw new Error("database is down");        // Express 5 catches async errors<br>});<br>app.use((err, req, res, next) =&gt; {           // error handler: 4 parameters<br>  res.status(500).json({ error: "Internal server error" });<br>});<br><br>const server = app.listen(0);<br>await new Promise((resolve) =&gt; server.once("listening", resolve));<br>const base = `http://localhost:${server.address().port}`;<br>const calls = [["GET", "/"], ["POST", "/todos", { title: "Ship it" }], ["GET", "/todos"],<br>               ["GET", "/boom"], ["PUT", "/todos"]];<br>for (const [method, path, body] of calls) {<br>  const res = await fetch(base + path, {<br>    method,<br>    headers: { "Content-Type": "application/json" },<br>    body: body &amp;&amp; JSON.stringify(body),<br>  });<br>  const type = res.headers.get("content-type")?.split(";")[0];<br>  console.log(`${method} ${path} -&gt; ${res.status} ${type} ${(await res.text()).replace(/\s+/g, " ").slice(0, 60)}`);<br>}<br>server.close();</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">GET / -&gt; 200 text/html Hello from Express<br>POST /todos -&gt; 201 application/json {"id":2,"title":"Ship it","done":false}<br>GET /todos -&gt; 200 application/json [{"id":1,"title":"Learn Express","done":false},{"id":2,"titl<br>GET /boom -&gt; 500 application/json {"error":"Internal server error"}<br>PUT /todos -&gt; 404 text/html &lt;!DOCTYPE html&gt; &lt;html lang="en"&gt; &lt;head&gt; &lt;meta charset="utf-8</div>
          <ul class="lc-list">
            <li><code>res.send("text")</code> sets <code>text/html</code>; <code>res.json()</code> sets <code>application/json</code>.</li>
            <li>The async <code>/boom</code> route rejected, and Express 5 passed the error to the error handler. (In Express 4 this request would have hung.)</li>
            <li>No route handles <code>PUT /todos</code>, so Express's built-in 404 page is sent. Lesson 11 replaces it with a JSON 404.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>app.use(express.json())</code>.</strong> <code>req.body</code> is <code>undefined</code> and <code>req.body.title</code> throws.</li>
            <li><strong>Client sends JSON without <code>Content-Type: application/json</code>.</strong> <code>express.json()</code> skips the body and <code>req.body</code> stays undefined.</li>
            <li><strong>Sending two responses.</strong> A missing <code>return</code> after an early <code>res.status(400).json(...)</code> causes <code>ERR_HTTP_HEADERS_SENT</code>.</li>
            <li><strong>Following Express 4 tutorials blindly.</strong> Old wildcard routes like <code>"*"</code> throw in Express 5; use named wildcards such as <code>"/*path"</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add a route <code>app.get("/about", (req, res) =&gt; res.send("About this API"))</code> and a matching call <code>{ method: "GET", path: "/about" }</code>.</li>
            <li>Add a <code>{ method: "DELETE", path: "/todos" }</code> call. Before running, predict the status (404, because no DELETE route exists).</li>
            <li>Add support for <code>app.delete</code> to the mini <code>express()</code> function (copy the <code>post</code> line) and a DELETE route that empties <code>todos</code> and responds with <code>res.status(204).send("")</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Call <code>res.json()</code> / <code>res.send()</code> exactly once per request. Sending twice throws <code>ERR_HTTP_HEADERS_SENT</code> &mdash; usually a sign you forgot a <code>return</code> after an early response.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // A mini Express: app.get/app.post register handlers, res.status().json() build responses.
        function express() {
          const routes = [];
          const app = {
            get: (path, fn) => routes.push({ method: "GET", path, fn }),
            post: (path, fn) => routes.push({ method: "POST", path, fn }),
            handle(req) {
              const res = {
                statusCode: 200, body: undefined,
                status(code) { this.statusCode = code; return this; },
                json(data) { this.body = JSON.stringify(data); return this; },
                send(text) { this.body = String(text); return this; }
              };
              const route = routes.find((r) => r.method === req.method && r.path === req.path);
              if (route) route.fn(req, res);
              else res.status(404).send(`Cannot ${req.method} ${req.path}`);
              return res;
            }
          };
          return app;
        }

        const app = express();
        const todos = [{ id: 1, title: "Learn Express", done: false }];

        app.get("/", (req, res) => res.send("Hello from Express"));
        app.get("/todos", (req, res) => res.json(todos));
        app.post("/todos", (req, res) => {
          const todo = { id: todos.length + 1, title: req.body.title, done: false };
          todos.push(todo);
          res.status(201).json(todo);
        });

        const calls = [
          { method: "GET", path: "/" },
          { method: "POST", path: "/todos", body: { title: "Ship it" } },
          { method: "GET", path: "/todos" },
          { method: "PUT", path: "/todos" }
        ];
        for (const req of calls) {
          const res = app.handle(req);
          console.log(`${req.method} ${req.path} -> ${res.statusCode} ${res.body}`);
        }
      JS
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Routing, Params &amp; Query Strings</h1>
        </div>
        <p class="lc-lead">A <strong>route</strong> is a method plus a path pattern plus a handler. Express checks routes <strong>in the order you register them</strong> and runs the first one that matches, pulling values out of the URL for you.</p>
        <div class="lc-card">
          <h3>Where Request Data Lives</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Example request</th><th>Access</th></tr></thead>
            <tbody>
              <tr><td>Route params</td><td><code>GET /users/42</code> with route <code>/users/:id</code></td><td><code>req.params.id</code> &rarr; <code>"42"</code> (a string!)</td></tr>
              <tr><td>Query string</td><td><code>GET /products?sort=price&amp;page=2</code></td><td><code>req.query.sort</code>, <code>req.query.page</code></td></tr>
              <tr><td>Body</td><td><code>POST /users</code> with JSON</td><td><code>req.body</code> (needs <code>express.json()</code>)</td></tr>
              <tr><td>Headers</td><td><code>Authorization: Bearer abc</code></td><td><code>req.get("authorization")</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Params and Query in Action</h3>
          <div class="lc-code">app.get("/users/:userId/posts/:postId", (req, res) =&gt; {<br>  const { userId, postId } = req.params;<br>  res.json({ userId: Number(userId), postId: Number(postId) });<br>});<br><br>// GET /products?category=books&amp;page=2&amp;limit=10<br>app.get("/products", (req, res) =&gt; {<br>  const page  = Math.max(1, Number(req.query.page) || 1);    // "abc" -&gt; NaN -&gt; 1<br>  const limit = Math.min(50, Number(req.query.limit) || 20);<br>  const items = products<br>    .filter((p) =&gt; !req.query.category || p.category === req.query.category)<br>    .slice((page - 1) * limit, page * limit);<br>  res.json({ page, limit, items });<br>});</div>
          <p>Params and query values always arrive as <strong>strings</strong>. Convert and validate them before use.</p>
        </div>
        <div class="lc-card">
          <h3>Order Matters</h3>
          <div class="lc-code">// WRONG: "/users/me" is swallowed by the :id route<br>app.get("/users/:id", showUser);    // matches /users/me with id = "me"<br>app.get("/users/me", showMe);       // never reached<br><br>// RIGHT: specific routes first<br>app.get("/users/me", showMe);<br>app.get("/users/:id", showUser);</div>
        </div>
        <div class="lc-card">
          <h3>Organising Routes with express.Router</h3>
          <div class="lc-code">// routes/users.js<br>import { Router } from "express";<br>const router = Router();<br><br>router.get("/", listUsers);          // GET    /api/users<br>router.post("/", createUser);        // POST   /api/users<br>router.get("/:id", getUser);         // GET    /api/users/:id<br>router.patch("/:id", updateUser);    // PATCH  /api/users/:id<br>router.delete("/:id", deleteUser);   // DELETE /api/users/:id<br><br>export default router;<br><br>// app.js<br>import usersRouter from "./routes/users.js";<br>app.use("/api/users", usersRouter);</div>
        </div>
        <div class="lc-card">
          <h3>Route Patterns in Express 5</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Matches</th></tr></thead>
            <tbody>
              <tr><td><code>/users/:id</code></td><td><code>/users/7</code>, <code>/users/abc</code></td></tr>
              <tr><td><code>/files/*path</code></td><td><code>/files/a/b/c.txt</code> &rarr; <code>req.params.path</code> is <code>["a","b","c.txt"]</code></td></tr>
              <tr><td><code>/posts{/:slug}</code></td><td><code>/posts</code> and <code>/posts/hello</code> (optional part)</td></tr>
              <tr><td><code>app.all("/health", fn)</code></td><td>Any HTTP method</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A Catch-All 404</h3>
          <p>Register this <em>after</em> every route. If nothing earlier responded, it runs:</p>
          <div class="lc-code">app.use((req, res) =&gt; {<br>  res.status(404).json({ error: `No route for ${req.method} ${req.path}` });<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: every kind of route, tested</h3>
          <div class="lc-code">import express, { Router } from "express";<br><br>const app = express();<br>const users = Router();<br>users.get("/me", (req, res) =&gt; res.json({ route: "me" }));             // specific first<br>users.get("/:id", (req, res) =&gt; res.json({ route: "user", id: req.params.id, type: typeof req.params.id }));<br>app.use("/api/users", users);<br><br>app.get("/files/*path", (req, res) =&gt; res.json({ path: req.params.path }));<br>app.get("/posts{/:slug}", (req, res) =&gt; res.json({ slug: req.params.slug ?? null }));<br>app.get("/products", (req, res) =&gt; {<br>  const page = Math.max(1, Number(req.query.page) || 1);<br>  res.json({ category: req.query.category ?? "all", page });<br>});<br>app.use((req, res) =&gt; res.status(404).json({ error: `No route for ${req.method} ${req.path}` }));<br><br>try {<br>  app.get("*", () =&gt; {});                    // Express 4 style wildcard<br>} catch (err) {<br>  console.log("app.get('*') throws:", err.constructor.name);<br>}<br><br>const server = app.listen(0);<br>await new Promise((r) =&gt; server.once("listening", r));<br>const base = `http://localhost:${server.address().port}`;<br>for (const path of ["/api/users/me", "/api/users/42", "/files/a/b/c.txt", "/posts", "/posts/hello",<br>                    "/products?category=books&amp;page=2", "/products?page=abc", "/orders"]) {<br>  const res = await fetch(base + path);<br>  console.log(path.padEnd(32), res.status, await res.text());<br>}<br>server.close();</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">app.get('*') throws: PathError<br>/api/users/me                    200 {"route":"me"}<br>/api/users/42                    200 {"route":"user","id":"42","type":"string"}<br>/files/a/b/c.txt                 200 {"path":["a","b","c.txt"]}<br>/posts                           200 {"slug":null}<br>/posts/hello                     200 {"slug":"hello"}<br>/products?category=books&amp;page=2  200 {"category":"books","page":2}<br>/products?page=abc               200 {"category":"all","page":1}<br>/orders                          404 {"error":"No route for GET /orders"}</div>
          <ul class="lc-list">
            <li><code>/me</code> is registered before <code>/:id</code>, so it wins. Params are always strings (<code>"42"</code>).</li>
            <li>A named wildcard collects the rest of the path as an array; <code>{/:slug}</code> makes a part optional.</li>
            <li><code>Number("abc")</code> is <code>NaN</code>, and <code>NaN || 1</code> falls back to page 1. (Careful: <code>Math.max(1, NaN)</code> is <code>NaN</code>, so the fallback must come first.)</li>
            <li>The Express 4 style <code>"*"</code> throws a <code>PathError</code> in Express 5 as soon as the route is registered.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Specific routes after parameter routes.</strong> <code>/users/:id</code> registered first swallows <code>/users/me</code>.</li>
            <li><strong>Using params without converting.</strong> <code>req.params.id === 42</code> is always false; the value is the string <code>"42"</code>.</li>
            <li><strong>Trusting query values.</strong> <code>?limit=1000000</code> or <code>?page=-5</code> will arrive one day. Clamp and validate (Lesson 14).</li>
            <li><strong>Putting the 404 handler first.</strong> <code>app.use((req, res) =&gt; res.status(404)...)</code> answers every request if it comes before your routes.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter move <code>get("/users/me", "showMe")</code> below <code>get("/users/:id", "showUser")</code>. Now <code>/users/me</code> is handled by <code>showUser</code> with <code>id = "me"</code>.</li>
            <li>Add a route <code>get("/orders/:orderId", "showOrder")</code> and the URL <code>"/orders/17"</code> to the list.</li>
            <li>Add <code>"/products?category=books&amp;category=toys"</code>. The simple matcher keeps only the last value; Express's <code>req.query.category</code> would give an array <code>["books", "toys"]</code>, which is another reason to validate query values.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Design URLs around nouns (<code>/orders/17/items</code>) and let the HTTP method express the verb. <code>POST /createOrder</code> is a sign the method isn't doing its job.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // How a router turns "/users/:id" into a matcher and extracts params and query values.
        function compile(pattern) {
          const names = [];
          const source = pattern.replace(/:(\w+)/g, (_, name) => {
            names.push(name);
            return "([^/]+)";
          });
          return { regex: new RegExp(`^${source}$`), names };
        }

        const routes = [];
        function get(pattern, name) {
          routes.push({ pattern, name, ...compile(pattern) });
        }

        function match(url) {
          const { pathname, searchParams } = new URL(url, "http://localhost");
          for (const route of routes) {
            const m = pathname.match(route.regex);
            if (!m) continue;
            const params = Object.fromEntries(route.names.map((n, i) => [n, m[i + 1]]));
            return { handler: route.name, params, query: Object.fromEntries(searchParams) };
          }
          return { handler: "404", params: {}, query: {} };
        }

        // Specific route first, then the parameter route
        get("/users/me", "showMe");
        get("/users/:id", "showUser");
        get("/users/:userId/posts/:postId", "showPost");
        get("/products", "listProducts");

        for (const url of ["/users/me", "/users/42", "/users/7/posts/99", "/products?category=books&page=2", "/orders"]) {
          const r = match(url);
          console.log(`${url.padEnd(32)} -> ${r.handler.padEnd(12)} params=${JSON.stringify(r.params)} query=${JSON.stringify(r.query)}`);
        }
        console.log("typeof params.id:", typeof match("/users/42").params.id);
      JS
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Middleware</h1>
        </div>
        <p class="lc-lead">In Express, everything is <strong>middleware</strong>: a function <code>(req, res, next)</code> that runs in a chain. Each one can read or change the request, end the response, or call <code>next()</code> to pass control to the next function.</p>
        <div class="lc-card">
          <h3>The Three Choices</h3>
          <table class="lc-table">
            <thead><tr><th>Middleware does</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Calls <code>next()</code></td><td>The next matching middleware or route runs</td></tr>
              <tr><td>Sends a response (<code>res.json</code>, <code>res.send</code>...)</td><td>The chain stops; later handlers don't run</td></tr>
              <tr><td>Calls <code>next(err)</code> or throws</td><td>Express skips to error-handling middleware</td></tr>
              <tr><td>Does none of these</td><td>The request <strong>hangs</strong> until the client times out</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Writing Your Own</h3>
          <div class="lc-code">// Log method, path, status and duration for every request<br>function logger(req, res, next) {<br>  const start = performance.now();<br>  res.on("finish", () =&gt; {<br>    const ms = (performance.now() - start).toFixed(1);<br>    console.log(`${req.method} ${req.originalUrl} ${res.statusCode} ${ms}ms`);<br>  });<br>  next();<br>}<br><br>// Attach a request id that later handlers can use<br>function requestId(req, res, next) {<br>  req.id = crypto.randomUUID();<br>  res.set("X-Request-Id", req.id);<br>  next();<br>}<br><br>app.use(requestId);<br>app.use(logger);</div>
        </div>
        <div class="lc-card">
          <h3>Global, Path and Route-Level</h3>
          <div class="lc-code">app.use(express.json({ limit: "100kb" }));  // every request<br>app.use("/admin", requireAdmin);            // only paths under /admin<br><br>function requireApiKey(req, res, next) {<br>  if (req.get("x-api-key") !== process.env.API_KEY) {<br>    return res.status(401).json({ error: "Missing or wrong API key" });<br>  }<br>  next();<br>}<br><br>// Only this route: middleware listed before the handler<br>app.delete("/posts/:id", requireApiKey, deletePost);</div>
        </div>
        <div class="lc-card">
          <h3>Common Third-Party Middleware</h3>
          <table class="lc-table">
            <thead><tr><th>Package</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>express.json()</code> / <code>express.static()</code></td><td>Built in: JSON bodies, static files</td></tr>
              <tr><td><code>helmet</code></td><td>Sets secure HTTP headers</td></tr>
              <tr><td><code>cors</code></td><td>Allows specific browser origins to call your API</td></tr>
              <tr><td><code>express-rate-limit</code></td><td>Limits requests per IP (e.g. on <code>/login</code>)</td></tr>
              <tr><td><code>morgan</code> / <code>pino-http</code></td><td>Request logging</td></tr>
            </tbody>
          </table>
          <div class="lc-code">import helmet from "helmet";<br>import cors from "cors";<br><br>app.use(helmet());<br>app.use(cors({ origin: "https://myapp.example" }));</div>
        </div>
        <div class="lc-card">
          <h3>Order Is Everything</h3>
          <ul class="lc-list">
            <li>Middleware runs top to bottom in registration order.</li>
            <li><code>express.json()</code> must come <em>before</em> routes that read <code>req.body</code>.</li>
            <li>Auth checks go before the routes they protect.</li>
            <li>The 404 handler and the error handler go <em>last</em>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: the chain in action</h3>
          <div class="lc-code">import express from "express";<br>import { randomUUID } from "node:crypto";<br><br>const app = express();<br>const log = [];<br>app.use((req, res, next) =&gt; {                          // 1. request id<br>  req.id = randomUUID().slice(0, 8);<br>  res.set("X-Request-Id", req.id);<br>  next();<br>});<br>app.use((req, res, next) =&gt; {                          // 2. logger (runs when the response finishes)<br>  res.on("finish", () =&gt; log.push(`${req.method} ${req.originalUrl} ${res.statusCode}`));<br>  next();<br>});<br>function requireApiKey(req, res, next) {<br>  if (req.get("x-api-key") !== "secret123") {<br>    return res.status(401).json({ error: "Missing or wrong API key" });  // stop the chain<br>  }<br>  next();<br>}<br>app.delete("/posts/:id", requireApiKey, (req, res) =&gt; res.sendStatus(204));<br>app.get("/forgot-next", (req, res, next) =&gt; { /* never calls next() or sends */ });<br>app.get("/fail", (req, res, next) =&gt; next(new Error("disk full")));<br>app.use((err, req, res, next) =&gt; {                     // error handler: log details, send a safe message<br>  log.push(`error in ${req.id.length}-char request id: ${err.message}`);<br>  res.status(500).json({ error: "Internal server error" });<br>});<br><br>const server = app.listen(0);<br>await new Promise((r) =&gt; server.once("listening", r));<br>const base = `http://localhost:${server.address().port}`;<br>const tries = [["DELETE", "/posts/5", {}], ["DELETE", "/posts/5", { "x-api-key": "secret123" }],<br>               ["GET", "/fail", {}], ["GET", "/forgot-next", {}]];<br>for (const [method, path, headers] of tries) {<br>  try {<br>    const res = await fetch(base + path, { method, headers, signal: AbortSignal.timeout(300) });<br>    console.log(method, path, "-&gt;", res.status, (await res.text()) || "(no body)");<br>  } catch (err) {<br>    console.log(method, path, "-&gt;", err.name, "(the request hung)");<br>  }<br>}<br>console.log("log:", log);<br>server.closeAllConnections();<br>server.close();</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">DELETE /posts/5 -&gt; 401 {"error":"Missing or wrong API key"}<br>DELETE /posts/5 -&gt; 204 (no body)<br>GET /fail -&gt; 500 {"error":"Internal server error"}<br>GET /forgot-next -&gt; TimeoutError (the request hung)<br>log: [<br>  'DELETE /posts/5 401',<br>  'DELETE /posts/5 204',<br>  'error in 8-char request id: disk full',<br>  'GET /fail 500'<br>]</div>
          <ul class="lc-list">
            <li>Without the key, <code>requireApiKey</code> responds 401 and the route handler never runs.</li>
            <li><code>next(err)</code> skips the remaining normal middleware and jumps to the 4-parameter error handler, which logs the real cause but sends a safe message.</li>
            <li><code>/forgot-next</code> neither responds nor calls <code>next()</code>, so the request hangs until the client gives up. The logger never sees it finish.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>next()</code>.</strong> The request hangs, as shown above.</li>
            <li><strong>Calling <code>next()</code> after sending a response.</strong> Later handlers try to send again and you get <code>ERR_HTTP_HEADERS_SENT</code>. Use <code>return res...</code>.</li>
            <li><strong>Registering the body parser after the routes.</strong> Routes see <code>req.body</code> as <code>undefined</code>.</li>
            <li><strong>CORS set to <code>origin: "*"</code> on an API that uses cookies.</strong> Allow only your own front-end origin.</li>
            <li><strong>Comparing secrets with <code>!==</code> in high-security code.</strong> For API keys, <code>crypto.timingSafeEqual</code> avoids leaking information through response timing.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter delete the <code>next();</code> call inside <code>logger</code>. Both DELETE requests now end with status 200 and body <code>null</code>, and no "response sent" appears: in a real server they would hang.</li>
            <li>Put <code>next();</code> back and change the order to <code>[requireApiKey, requestId, logger, deletePost]</code>. The failed request is now rejected before it gets an id or a log line.</li>
            <li>Add a middleware <code>(req, res, next) =&gt; { res.log.push("rate limit ok"); next(); }</code> at the start of <code>chain</code> and check it appears first for both requests.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After sending an early response, <code>return</code> immediately (<code>return res.status(401).json(...)</code>). Otherwise the code below may call <code>next()</code> or send a second response.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // A middleware pipeline like Express: each function gets (req, res, next).
        function run(middlewares, req) {
          const res = { statusCode: 200, body: null, log: [] };
          res.status = (code) => { res.statusCode = code; return res; };
          res.json = (data) => { res.body = data; res.log.push("response sent"); };
          let i = 0;
          function next(err) {
            if (err) return res.status(500).json({ error: err.message });
            const fn = middlewares[i++];
            if (fn) fn(req, res, next);
          }
          next();
          return res;
        }

        const requestId = (req, res, next) => { req.id = "req-" + req.n; res.log.push(`id ${req.id}`); next(); };
        const logger = (req, res, next) => { res.log.push(`${req.method} ${req.path}`); next(); };
        const requireApiKey = (req, res, next) => {
          if (req.headers["x-api-key"] !== "secret123") {
            res.log.push("auth failed, chain stops");
            return res.status(401).json({ error: "Missing or wrong API key" });
          }
          next();
        };
        const deletePost = (req, res) => res.status(204).json(null);
        const broken = () => { throw new Error("unexpected"); };

        const chain = [requestId, logger, requireApiKey, deletePost];
        const a = run(chain, { n: 1, method: "DELETE", path: "/posts/5", headers: {} });
        const b = run(chain, { n: 2, method: "DELETE", path: "/posts/5", headers: { "x-api-key": "secret123" } });
        const c = run([requestId, (req, res, next) => { try { broken(); } catch (e) { next(e); } }], { n: 3, headers: {} });

        for (const [name, res] of [["no key", a], ["with key", b], ["error", c]]) {
          console.log(`${name}: ${res.statusCode} ${JSON.stringify(res.body)} | ${res.log.join(" -> ")}`);
        }
      JS
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Building a REST API</h1>
        </div>
        <p class="lc-lead">A <strong>REST API</strong> exposes <em>resources</em> at predictable URLs and uses HTTP methods and status codes consistently. Here is a complete notes API in Express with all five CRUD operations.</p>
        <div class="lc-card">
          <h3>The Contract</h3>
          <table class="lc-table">
            <thead><tr><th>Method &amp; path</th><th>Action</th><th>Success</th><th>Common errors</th></tr></thead>
            <tbody>
              <tr><td><code>GET /api/notes</code></td><td>List (with filters)</td><td>200 + array</td><td>&mdash;</td></tr>
              <tr><td><code>GET /api/notes/:id</code></td><td>Read one</td><td>200 + object</td><td>404</td></tr>
              <tr><td><code>POST /api/notes</code></td><td>Create</td><td>201 + object + <code>Location</code> header</td><td>400 / 422</td></tr>
              <tr><td><code>PATCH /api/notes/:id</code></td><td>Partial update</td><td>200 + updated object</td><td>404, 422</td></tr>
              <tr><td><code>PUT /api/notes/:id</code></td><td>Full replace</td><td>200</td><td>404, 422</td></tr>
              <tr><td><code>DELETE /api/notes/:id</code></td><td>Delete</td><td>204, no body</td><td>404</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Router</h3>
          <div class="lc-code">// routes/notes.js<br>import { Router } from "express";<br><br>const router = Router();<br>const notes = new Map();   // swapped for a real database in lesson 16<br>let nextId = 1;<br><br>function findNote(req, res) {<br>  const note = notes.get(Number(req.params.id));<br>  if (!note) res.status(404).json({ error: "Note not found" });<br>  return note;<br>}<br><br>router.get("/", (req, res) =&gt; {<br>  let list = [...notes.values()];<br>  if (req.query.tag) list = list.filter((n) =&gt; n.tags.includes(req.query.tag));<br>  res.json(list);<br>});<br><br>router.get("/:id", (req, res) =&gt; {<br>  const note = findNote(req, res);<br>  if (note) res.json(note);<br>});<br><br>router.post("/", (req, res) =&gt; {<br>  const { title, body = "", tags = [] } = req.body ?? {};<br>  if (typeof title !== "string" || !title.trim()) {<br>    return res.status(422).json({ error: "title is required" });<br>  }<br>  const note = { id: nextId++, title: title.trim(), body, tags, createdAt: new Date().toISOString() };<br>  notes.set(note.id, note);<br>  res.status(201).location(`/api/notes/${note.id}`).json(note);<br>});<br><br>router.patch("/:id", (req, res) =&gt; {<br>  const note = findNote(req, res);<br>  if (!note) return;<br>  const { title, body, tags } = req.body ?? {};<br>  Object.assign(note, { ...(title &amp;&amp; { title }), ...(body !== undefined &amp;&amp; { body }), ...(tags &amp;&amp; { tags }) });<br>  res.json(note);<br>});<br><br>router.delete("/:id", (req, res) =&gt; {<br>  if (!notes.delete(Number(req.params.id))) {<br>    return res.status(404).json({ error: "Note not found" });<br>  }<br>  res.sendStatus(204);<br>});<br><br>export default router;</div>
        </div>
        <div class="lc-card">
          <h3>Wiring It Up</h3>
          <div class="lc-code">// app.js<br>import express from "express";<br>import notesRouter from "./routes/notes.js";<br><br>const app = express();<br>app.use(express.json());<br>app.use("/api/notes", notesRouter);<br>app.get("/health", (req, res) =&gt; res.json({ status: "ok" }));<br>export default app;</div>
        </div>
        <div class="lc-card">
          <h3>Calling It with curl</h3>
          <div class="lc-code">curl -X POST localhost:3000/api/notes \<br>  -H "Content-Type: application/json" \<br>  -d '{"title":"Buy milk","tags":["home"]}'<br><br>curl localhost:3000/api/notes?tag=home<br>curl -X PATCH localhost:3000/api/notes/1 -H "Content-Type: application/json" -d '{"body":"2 litres"}'<br>curl -i -X DELETE localhost:3000/api/notes/1     # HTTP/1.1 204 No Content</div>
        </div>
        <div class="lc-card">
          <h3>Design Rules Worth Following</h3>
          <ul class="lc-list">
            <li>Plural nouns for collections: <code>/notes</code>, not <code>/note</code> or <code>/getNotes</code>.</li>
            <li>Return the same error shape everywhere, e.g. <code>{ "error": "..." }</code>.</li>
            <li>Paginate lists (<code>?page=&amp;limit=</code>) before they grow large.</li>
            <li><code>GET</code>, <code>PUT</code> and <code>DELETE</code> should be <strong>idempotent</strong>: repeating them leaves the server in the same state.</li>
            <li>Version breaking changes: <code>/api/v2/notes</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Suggested Project Layout</h3>
          <div class="lc-code">notes-api/<br>  package.json<br>  .env.example<br>  src/<br>    app.js          # creates the Express app, registers middleware + routers<br>    server.js       # imports app and calls listen()<br>    config.js       # reads and validates environment variables<br>    db.js           # database pool<br>    routes/notes.js # HTTP layer: parse input, call services, send responses<br>    services/notes.js # business logic, no req/res<br>  test/<br>    notes.test.js</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: the contract, checked by real requests</h3>
          <p>A trimmed version of the router (list, create, delete), mounted and called with <code>fetch</code>:</p>
          <div class="lc-code">import express, { Router } from "express";<br><br>const router = Router();<br>const notes = new Map();<br>let nextId = 1;<br><br>router.get("/", (req, res) =&gt; {<br>  let list = [...notes.values()];<br>  if (req.query.tag) list = list.filter((n) =&gt; n.tags.includes(req.query.tag));<br>  res.json(list);<br>});<br>router.post("/", (req, res) =&gt; {<br>  const { title, tags = [] } = req.body ?? {};<br>  if (typeof title !== "string" || !title.trim()) {<br>    return res.status(422).json({ error: "title is required" });<br>  }<br>  const note = { id: nextId++, title: title.trim(), tags };<br>  notes.set(note.id, note);<br>  res.status(201).location(`/api/notes/${note.id}`).json(note);<br>});<br>router.delete("/:id", (req, res) =&gt; {<br>  if (!notes.delete(Number(req.params.id))) return res.status(404).json({ error: "Note not found" });<br>  res.sendStatus(204);<br>});<br><br>const app = express();<br>app.use(express.json());<br>app.use("/api/notes", router);<br>const server = app.listen(0);<br>await new Promise((r) =&gt; server.once("listening", r));<br>const base = `http://localhost:${server.address().port}/api/notes`;<br><br>async function call(method, path = "", body) {<br>  const res = await fetch(base + path, {<br>    method, headers: { "Content-Type": "application/json" }, body: body &amp;&amp; JSON.stringify(body),<br>  });<br>  const loc = res.headers.get("location");<br>  const text = (await res.text()) || "(empty)";<br>  console.log(`${method.padEnd(6)} ${("/api/notes" + path).padEnd(20)} ${res.status} ${text}${loc ? `  Location: ${loc}` : ""}`);<br>}<br>await call("POST", "", { title: " Buy milk ", tags: ["home"] });<br>await call("POST", "", { title: "" });<br>await call("GET", "?tag=home");<br>await call("DELETE", "/1");<br>await call("DELETE", "/1");          // DELETE is idempotent: same final state, now 404<br>server.close();</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">POST   /api/notes           201 {"id":1,"title":"Buy milk","tags":["home"]}  Location: /api/notes/1<br>POST   /api/notes           422 {"error":"title is required"}<br>GET    /api/notes?tag=home  200 [{"id":1,"title":"Buy milk","tags":["home"]}]<br>DELETE /api/notes/1         204 (empty)<br>DELETE /api/notes/1         404 {"error":"Note not found"}</div>
          <p>The title was trimmed, the 201 response carries a <code>Location</code> header pointing at the new note, and a second DELETE of the same id returns 404. The server's state is the same after one DELETE or two, which is what "idempotent" means.</p>
        </div>
        <div class="lc-card">
          <h3>PUT vs PATCH vs POST</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Body contains</th><th>Idempotent?</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>POST /notes</td><td>A new resource (server picks the id)</td><td>No: two calls create two notes</td><td>Create a note</td></tr>
              <tr><td>PUT /notes/7</td><td>The complete new version</td><td>Yes</td><td>Replace note 7 entirely</td></tr>
              <tr><td>PATCH /notes/7</td><td>Only the fields to change</td><td>Usually, not guaranteed</td><td>Change just the title</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Verbs in URLs.</strong> <code>POST /createNote</code> or <code>GET /deleteNote?id=1</code>. Let the method be the verb.</li>
            <li><strong>200 for everything.</strong> Use 201 for creation, 204 for an empty success, 404 for a missing id, 422 for invalid input.</li>
            <li><strong>A GET that changes data.</strong> Browsers, crawlers and caches may repeat GET requests freely.</li>
            <li><strong>Returning a body with 204.</strong> A 204 response must be empty; use 200 if you want to return the deleted object.</li>
            <li><strong>Mass assignment.</strong> Copying <code>req.body</code> into the record lets clients set <code>id</code> or <code>isAdmin</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add <code>show("PATCH /notes/2 tags", api.patch(2, { tags: ["study", "node"] }));</code> before the last line. The final GET shows the new tags.</li>
            <li>Add <code>show("GET /notes/2", api.get(2));</code> and <code>show("GET /notes/99", api.get(99));</code>. The second returns 404.</li>
            <li>Add <code>api.create({ title: "   " })</code> (only spaces). It is rejected with 422, just like a missing title, because of <code>title.trim()</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Only accept the fields you expect. Copying <code>req.body</code> straight into a record lets a client set fields like <code>id</code> or <code>isAdmin</code> (a "mass assignment" bug).
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // The notes API handlers with an in-memory Map, returning [status, body] like the real routes.
        const notes = new Map();
        let nextId = 1;

        const api = {
          list: (query) => [200, [...notes.values()].filter((n) => !query.tag || n.tags.includes(query.tag))],
          get: (id) => (notes.has(id) ? [200, notes.get(id)] : [404, { error: "Note not found" }]),
          create(body) {
            const { title, tags = [] } = body;
            if (typeof title !== "string" || !title.trim()) return [422, { error: "title is required" }];
            const note = { id: nextId++, title: title.trim(), tags };
            notes.set(note.id, note);
            return [201, note];
          },
          patch(id, body) {
            const note = notes.get(id);
            if (!note) return [404, { error: "Note not found" }];
            if (body.title) note.title = body.title; // only whitelisted fields
            if (body.tags) note.tags = body.tags;
            return [200, note];
          },
          remove: (id) => (notes.delete(id) ? [204, null] : [404, { error: "Note not found" }])
        };

        const show = (label, [status, body]) => console.log(`${label.padEnd(26)} ${status} ${body === null ? "" : JSON.stringify(body)}`);

        show("POST /notes", api.create({ title: " Buy milk ", tags: ["home"] }));
        show("POST /notes", api.create({ title: "Read Node docs", tags: ["study"] }));
        show("POST /notes (no title)", api.create({ tags: [] }));
        show("GET /notes?tag=home", api.list({ tag: "home" }));
        show("PATCH /notes/2", api.patch(2, { title: "Read stream docs", isAdmin: true }));
        show("DELETE /notes/1", api.remove(1));
        show("DELETE /notes/1 again", api.remove(1));
        show("GET /notes", api.list({}));
      JS
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Validation &amp; Error Handling</h1>
        </div>
        <p class="lc-lead">Never trust input. Validate every request body at the edge of your app, turn failures into clear <code>4xx</code> responses, and route every unexpected problem to <strong>one</strong> error handler that logs it and returns a safe <code>500</code>.</p>
        <div class="lc-card">
          <h3>Schema Validation with zod</h3>
          <div class="lc-code">// npm install zod   (version 4)<br>import { z } from "zod";<br><br>const NoteInput = z.object({<br>  title: z.string().trim().min(1, "title is required").max(200),<br>  body:  z.string().max(10_000).default(""),<br>  tags:  z.array(z.string()).max(10).default([]),<br>});<br><br>router.post("/", (req, res) =&gt; {<br>  const result = NoteInput.safeParse(req.body);<br>  if (!result.success) {<br>    return res.status(422).json({ error: "Validation failed", details: z.flattenError(result.error).fieldErrors });<br>  }<br>  const note = createNote(result.data);   // result.data is cleaned and typed<br>  res.status(201).json(note);<br>});</div>
          <p>Unknown keys (like <code>isAdmin</code>) are stripped by default, which also prevents mass-assignment.</p>
        </div>
        <div class="lc-card">
          <h3>A Custom Error Class</h3>
          <div class="lc-code">// errors.js<br>export class HttpError extends Error {<br>  constructor(status, message, details) {<br>    super(message);<br>    this.status = status;<br>    this.details = details;<br>  }<br>}<br><br>// in a route (Express 5 catches the throw, even in async handlers)<br>router.get("/:id", async (req, res) =&gt; {<br>  const note = await db.notes.find(Number(req.params.id));<br>  if (!note) throw new HttpError(404, "Note not found");<br>  res.json(note);<br>});</div>
        </div>
        <div class="lc-card">
          <h3>The Error-Handling Middleware</h3>
          <p>Express recognises an error handler by its <strong>four parameters</strong>. Register it after all routes.</p>
          <div class="lc-code">// 404 for anything unmatched<br>app.use((req, res) =&gt; res.status(404).json({ error: "Not found" }));<br><br>// Central error handler<br>app.use((err, req, res, next) =&gt; {<br>  if (err.type === "entity.parse.failed") {           // bad JSON from express.json()<br>    return res.status(400).json({ error: "Malformed JSON" });<br>  }<br>  const status = err.status ?? 500;<br>  if (status &gt;= 500) {<br>    console.error({ err, path: req.path, id: req.id });  // log the real cause<br>  }<br>  res.status(status).json({<br>    error: status &gt;= 500 ? "Internal server error" : err.message,<br>    ...(err.details &amp;&amp; { details: err.details }),<br>  });<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Which Status for Which Failure?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td>Body isn't valid JSON</td><td>400 Bad Request</td></tr>
              <tr><td>Valid JSON but fails the rules</td><td>422 Unprocessable Content (400 is also common)</td></tr>
              <tr><td>No / invalid credentials</td><td>401 Unauthorized</td></tr>
              <tr><td>Logged in but not allowed</td><td>403 Forbidden</td></tr>
              <tr><td>Resource doesn't exist</td><td>404 Not Found</td></tr>
              <tr><td>Unique constraint (email taken)</td><td>409 Conflict</td></tr>
              <tr><td>Anything you didn't expect</td><td>500 &mdash; generic message, full details in logs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Process-Level Safety Nets</h3>
          <div class="lc-code">process.on("unhandledRejection", (reason) =&gt; {<br>  console.error("Unhandled promise rejection:", reason);<br>  process.exitCode = 1;<br>});<br>process.on("uncaughtException", (err) =&gt; {<br>  console.error("Uncaught exception:", err);<br>  process.exit(1);   // state may be corrupt: exit and let the supervisor restart<br>});</div>
          <p>These are last-resort logs, not a way to keep a broken process alive.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: validation, HttpError and the error handler together</h3>
          <div class="lc-code">import express from "express";<br>import { z } from "zod";<br><br>class HttpError extends Error {<br>  constructor(status, message) { super(message); this.status = status; }<br>}<br>const NoteInput = z.object({<br>  title: z.string().trim().min(1, "title is required").max(200),<br>  tags: z.array(z.string()).max(10).default([]),<br>});<br><br>const app = express();<br>app.use(express.json());<br>app.post("/notes", (req, res) =&gt; {<br>  const result = NoteInput.safeParse(req.body);<br>  if (!result.success) {<br>    return res.status(422).json({ error: "Validation failed", details: z.flattenError(result.error).fieldErrors });<br>  }<br>  res.status(201).json(result.data);            // cleaned data: unknown keys removed<br>});<br>app.get("/notes/:id", async (req) =&gt; {<br>  throw new HttpError(404, `Note ${req.params.id} not found`);   // async throw is fine in Express 5<br>});<br>app.get("/crash", () =&gt; { throw new TypeError("db.insert is not a function"); });<br>app.use((err, req, res, next) =&gt; {<br>  if (err.type === "entity.parse.failed") return res.status(400).json({ error: "Malformed JSON" });<br>  const status = err.status ?? 500;<br>  if (status &gt;= 500) console.log("  [log]", err.message);            // real cause stays in the logs<br>  res.status(status).json({ error: status &gt;= 500 ? "Internal server error" : err.message });<br>});<br><br>const server = app.listen(0);<br>await new Promise((r) =&gt; server.once("listening", r));<br>const base = `http://localhost:${server.address().port}`;<br>for (const [method, path, body] of [<br>  ["POST", "/notes", '{"title":"  Hello ","isAdmin":true}'],<br>  ["POST", "/notes", '{"title":"","tags":"x"}'],<br>  ["POST", "/notes", "{bad json"],<br>  ["GET", "/notes/7"],<br>  ["GET", "/crash"]]) {<br>  const res = await fetch(base + path, { method, body, headers: { "Content-Type": "application/json" } });<br>  console.log(`${method} ${path} -&gt; ${res.status} ${await res.text()}`);<br>}<br>server.close();</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">POST /notes -&gt; 201 {"title":"Hello","tags":[]}<br>POST /notes -&gt; 422 {"error":"Validation failed","details":{"title":["title is required"],"tags":["Invalid input: expected array, received string"]}}<br>POST /notes -&gt; 400 {"error":"Malformed JSON"}<br>GET /notes/7 -&gt; 404 {"error":"Note 7 not found"}<br>  [log] db.insert is not a function<br>GET /crash -&gt; 500 {"error":"Internal server error"}</div>
          <ul class="lc-list">
            <li>zod trimmed the title, filled the default <code>tags</code> and silently dropped <code>isAdmin</code>.</li>
            <li>Each field gets a list of messages; your own message ("title is required") replaces zod's default.</li>
            <li>The 500 response hides the real cause from the client, while the log line keeps it for you.</li>
          </ul>
          <p>Zod 4 note: <code>z.flattenError(error)</code> replaces the older <code>error.flatten()</code> method from Zod 3 (still present but deprecated).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Validating by hand in every route.</strong> Rules drift apart. Define one schema per input and reuse it.</li>
            <li><strong>Using <code>schema.parse</code> without handling the error.</strong> It throws a <code>ZodError</code>, which becomes a 500 unless your error handler turns it into a 422. <code>safeParse</code> makes the failure explicit.</li>
            <li><strong>An error handler with three parameters.</strong> <code>(err, req, res)</code> is treated as normal middleware; it needs all four, <code>(err, req, res, next)</code>, even if you never call <code>next</code>.</li>
            <li><strong>Registering the error handler before the routes.</strong> It must be the last <code>app.use</code>.</li>
            <li><strong>Leaking <code>err.message</code> for 500s.</strong> Messages like "relation users does not exist" tell attackers about your database.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add the body <code>'{"title":"This title is far too long for our tiny notes app, sorry"}'</code> to the list. It fails with "title is too long" (the starter's limit is 50 characters).</li>
            <li>Add a rule to <code>validateNote</code>: more than 5 tags gives <code>errors.tags = "at most 5 tags"</code>, and test it with a body that has 6 tags.</li>
            <li>In <code>handle</code>, throw <code>new HttpError(409, "Title already used")</code> when the title is <code>"dup"</code>. Because 409 is below 500, the handler sends the real message.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never send <code>err.stack</code> or database error messages to the client. They reveal file paths, table names and library versions to attackers.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // Validate input, throw HttpError for expected failures, and map everything in one error handler.
        class HttpError extends Error {
          constructor(status, message, details) {
            super(message);
            this.status = status;
            this.details = details;
          }
        }

        function validateNote(input) {
          const errors = {};
          if (typeof input.title !== "string" || !input.title.trim()) errors.title = "title is required";
          else if (input.title.length > 50) errors.title = "title is too long";
          if (input.tags !== undefined && !Array.isArray(input.tags)) errors.tags = "tags must be an array";
          if (Object.keys(errors).length) throw new HttpError(422, "Validation failed", errors);
          return { title: input.title.trim(), tags: input.tags ?? [] }; // unknown keys dropped
        }

        function errorHandler(err) {
          const status = err.status ?? 500;
          if (status >= 500) console.log("  [log] real cause:", err.message);
          return { status, body: { error: status >= 500 ? "Internal server error" : err.message, ...(err.details && { details: err.details }) } };
        }

        function handle(rawBody) {
          try {
            const input = JSON.parse(rawBody);
            if (input.title === "crash") throw new TypeError("db.insert is not a function");
            return { status: 201, body: validateNote(input) };
          } catch (err) {
            if (err instanceof SyntaxError) return errorHandler(new HttpError(400, "Malformed JSON"));
            return errorHandler(err);
          }
        }

        for (const body of ['{"title":"Hello","isAdmin":true}', '{"title":"","tags":"x"}', "{bad json", '{"title":"crash"}']) {
          const { status, body: out } = handle(body);
          console.log(`${body.padEnd(34)} -> ${status} ${JSON.stringify(out)}`);
        }
      JS
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Async Patterns &amp; the Event Loop in Depth</h1>
        </div>
        <p class="lc-lead">Knowing <em>when</em> each callback runs, and how to combine promises, is what separates code that works from code that is fast and correct under load.</p>
        <div class="lc-card">
          <h3>Execution Order</h3>
          <p>In a CommonJS file (<code>order.cjs</code>) the numbers print in order, 1 to 6 (5 and 6 may swap, see below):</p>
          <div class="lc-code">console.log("1 sync");<br>setTimeout(() =&gt; console.log("5 timeout"), 0);<br>setImmediate(() =&gt; console.log("6 immediate"));<br>Promise.resolve().then(() =&gt; console.log("4 promise"));<br>process.nextTick(() =&gt; console.log("3 nextTick"));<br>console.log("2 sync");</div>
          <table class="lc-table">
            <thead><tr><th>Queue</th><th>Runs</th></tr></thead>
            <tbody>
              <tr><td>Synchronous code</td><td>First, to completion</td></tr>
              <tr><td><code>process.nextTick</code> queue</td><td>As soon as the current operation finishes</td></tr>
              <tr><td>Promise microtasks (<code>.then</code>, <code>await</code> continuations)</td><td>Right after nextTick, before any timer or I/O</td></tr>
              <tr><td>Macrotasks: timers, I/O, <code>setImmediate</code></td><td>One at a time, draining microtasks between each</td></tr>
            </tbody>
          </table>
          <p>At the top level of a script, the relative order of a <code>0</code> ms timeout and <code>setImmediate</code> is not guaranteed; inside an I/O callback, <code>setImmediate</code> always runs first.</p>
          <p><strong>ES module surprise:</strong> the top level of an ES module is itself run as part of a promise job, so in a <code>.mjs</code> file (or with <code>"type": "module"</code>) the promise callback prints <em>before</em> the <code>nextTick</code> callback. Inside ordinary functions and callbacks, nextTick still runs first. The worked example below shows both.</p>
        </div>
        <div class="lc-card">
          <h3>Sequential vs Parallel</h3>
          <div class="lc-code">// SLOW: each await waits for the previous one (~300 ms)<br>const user   = await getUser(id);      // 100 ms<br>const orders = await getOrders(id);    // 100 ms<br>const recs   = await getRecs(id);      // 100 ms<br><br>// FAST: independent work started together (~100 ms)<br>const [user2, orders2, recs2] = await Promise.all([<br>  getUser(id), getOrders(id), getRecs(id),<br>]);</div>
        </div>
        <div class="lc-card">
          <h3>The Promise Combinators</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Resolves when</th><th>Rejects when</th></tr></thead>
            <tbody>
              <tr><td><code>Promise.all</code></td><td>All succeed (array of values)</td><td>Any one fails (fail fast)</td></tr>
              <tr><td><code>Promise.allSettled</code></td><td>All finish, with <code>{status, value/reason}</code></td><td>Never</td></tr>
              <tr><td><code>Promise.race</code></td><td>The first to settle succeeds</td><td>The first to settle fails</td></tr>
              <tr><td><code>Promise.any</code></td><td>The first success</td><td>All fail (<code>AggregateError</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Timeouts and Cancellation</h3>
          <div class="lc-code">// fetch and many Node APIs accept an AbortSignal<br>try {<br>  const res = await fetch(url, { signal: AbortSignal.timeout(3000) });<br>  return await res.json();<br>} catch (err) {<br>  if (err.name === "TimeoutError") throw new HttpError(504, "Upstream timed out");<br>  throw err;<br>}<br><br>// Promise-based timers<br>import { setTimeout as sleep } from "node:timers/promises";<br>await sleep(500);</div>
        </div>
        <div class="lc-card">
          <h3>Limit Concurrency</h3>
          <p><code>Promise.all</code> over 10,000 URLs opens 10,000 connections at once. Process in small batches instead:</p>
          <div class="lc-code">async function mapLimit(items, limit, fn) {<br>  const results = [];<br>  for (let i = 0; i &lt; items.length; i += limit) {<br>    const batch = items.slice(i, i + limit);<br>    results.push(...(await Promise.all(batch.map(fn))));<br>  }<br>  return results;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Converting Old Callback APIs</h3>
          <div class="lc-code">import { promisify } from "node:util";<br>import { scrypt } from "node:crypto";<br><br>const scryptAsync = promisify(scrypt);<br>const key = await scryptAsync("password", "salt", 64);</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: ordering, parallelism and timeouts (ES module)</h3>
          <div class="lc-code">import { readFile } from "node:fs/promises";<br>import { setTimeout as sleep } from "node:timers/promises";<br><br>console.log("A sync");<br>setTimeout(() =&gt; console.log("E timeout"), 0);<br>Promise.resolve().then(() =&gt; console.log("D promise"));<br>process.nextTick(() =&gt; console.log("C nextTick"));<br>console.log("B sync");<br><br>await sleep(20);                                  // let the queues above drain first<br>await readFile(import.meta.filename);             // now we are continuing after I/O...<br>setTimeout(() =&gt; console.log("G timeout (after I/O)"), 0);<br>setImmediate(() =&gt; console.log("F immediate (after I/O: always before the timer)"));<br>await sleep(20);<br><br>const task = (ms) =&gt; sleep(ms).then(() =&gt; ms);<br>let t = performance.now();<br>for (const ms of [100, 100, 100]) await task(ms);<br>console.log("sequential ~", Math.round((performance.now() - t) / 100) * 100, "ms");<br>t = performance.now();<br>await Promise.all([task(100), task(100), task(100)]);<br>console.log("parallel   ~", Math.round((performance.now() - t) / 100) * 100, "ms");<br><br>const results = await Promise.allSettled([task(10), Promise.reject(new Error("email failed"))]);<br>console.log(results.map((r) =&gt; r.status));<br>try {<br>  await Promise.any([Promise.reject(new Error("a")), Promise.reject(new Error("b"))]);<br>} catch (err) {<br>  console.log(err.constructor.name, err.errors.length);<br>}<br>try {<br>  await fetch("http://10.255.255.1/", { signal: AbortSignal.timeout(50) });   // unroutable address<br>} catch (err) {<br>  console.log("fetch gave up:", err.name);<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">A sync<br>B sync<br>D promise<br>C nextTick<br>E timeout<br>F immediate (after I/O: always before the timer)<br>G timeout (after I/O)<br>sequential ~ 300 ms<br>parallel   ~ 100 ms<br>[ 'fulfilled', 'rejected' ]<br>AggregateError 2<br>fetch gave up: TimeoutError</div>
          <p>The same first five lines saved as <code>order.cjs</code> (CommonJS) print C before D:</p>
          <div class="lc-code">console.log("1 sync");<br>setTimeout(() =&gt; console.log("5 timeout"), 0);<br>Promise.resolve().then(() =&gt; console.log("4 promise"));<br>process.nextTick(() =&gt; console.log("3 nextTick"));<br>console.log("2 sync");</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">1 sync<br>2 sync<br>3 nextTick<br>4 promise<br>5 timeout</div>
          <p>Lessons: rely on "synchronous code first, then microtasks, then timers and I/O"; don't write code whose correctness depends on nextTick vs promise order. Three independent 100 ms waits take about 300 ms in sequence but about 100 ms with <code>Promise.all</code>.</p>
        </div>
        <div class="lc-card">
          <h3>CPU-heavy work: worker threads</h3>
          <p>Promises don't make CPU work parallel: a long calculation still blocks the one JavaScript thread. For that, start a <code>Worker</code> from <code>node:worker_threads</code>, which runs a separate JavaScript thread and talks to the main thread with messages:</p>
          <div class="lc-code">import { Worker } from "node:worker_threads";<br><br>const worker = new Worker(new URL("./hash-worker.js", import.meta.url), { workerData: passwords });<br>worker.on("message", (hashes) =&gt; console.log("done", hashes.length));<br>worker.on("error", (err) =&gt; console.error(err));</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong><code>forEach(async ...)</code></strong> doesn't wait. Use <code>for...of</code> with <code>await</code>, or <code>Promise.all(items.map(...))</code>.</li>
            <li><strong>Awaiting independent calls one by one.</strong> It is correct but slow; start them together with <code>Promise.all</code>.</li>
            <li><strong><code>Promise.all</code> when partial success is fine.</strong> One rejection throws away every result. Use <code>Promise.allSettled</code> for "send 100 emails, report failures".</li>
            <li><strong>No timeout on outside calls.</strong> A stuck upstream API holds your request open forever. Pass <code>AbortSignal.timeout(ms)</code>.</li>
            <li><strong>A promise with no <code>catch</code>.</strong> An unhandled rejection crashes a Node process by default (since Node 15).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add <code>queueMicrotask(() =&gt; console.log("3b microtask"));</code> right after the <code>Promise.resolve()</code> line. Predict where it prints (straight after "3 promise": both are microtasks, run in the order queued).</li>
            <li>Change <code>task("payments", 10)</code> to <code>task("payments", 10, true)</code>. <code>allSettled</code> now reports two rejected results and still does not throw.</li>
            <li>In the last <code>Promise.all</code>, make <code>task("c", 30)</code> fail too. The error message is still "b failed": <code>Promise.all</code> rejects with the <em>first</em> failure.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>array.forEach(async ...)</code> does not wait for anything. Use <code>for...of</code> with <code>await</code> for sequential work, or <code>await Promise.all(array.map(...))</code> for parallel work.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // 1) Which queue runs first?  2) Sequential vs parallel awaits.  3) allSettled.
        console.log("1 sync");
        setTimeout(() => console.log("4 timeout (macrotask)"), 0);
        Promise.resolve().then(() => console.log("3 promise (microtask)"));
        console.log("2 sync");

        const task = (name, ms, fail = false) =>
          new Promise((resolve, reject) =>
            setTimeout(() => {
              fail ? reject(new Error(`${name} failed`)) : resolve(`${name} ok`);
            }, ms));

        setTimeout(async () => {
          let t = Date.now();
          await task("user", 60);
          await task("orders", 60);
          const sequential = Date.now() - t;

          t = Date.now();
          await Promise.all([task("user", 60), task("orders", 60)]);
          const parallel = Date.now() - t;
          console.log("sequential is slower than parallel:", sequential > parallel + 30);

          const results = await Promise.allSettled([task("payments", 10), task("email", 20, true)]);
          for (const r of results) {
            console.log(r.status, r.status === "fulfilled" ? r.value : r.reason.message);
          }

          try {
            await Promise.all([task("a", 10), task("b", 20, true), task("c", 30)]);
          } catch (err) {
            console.log("Promise.all rejected fast with:", err.message);
          }
        }, 10);
      JS
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Working with Databases</h1>
        </div>
        <p class="lc-lead">In-memory arrays vanish on restart. Real apps store data in a database. You'll see two options: <strong>SQLite</strong> (a single file, great for learning and small apps) and <strong>PostgreSQL</strong> with the <code>pg</code> client (the common production choice).</p>
        <div class="lc-card">
          <h3>SQLite with node:sqlite</h3>
          <p>Node 22.13+ and Node 24 ship a built-in, synchronous SQLite module, no install needed. In Node 24 it is marked <strong>release candidate</strong> (stability 1.2, since 24.15): usable, but small API changes are still possible. The popular <code>better-sqlite3</code> package has an almost identical API.</p>
          <div class="lc-code">// db.js<br>import { DatabaseSync } from "node:sqlite";<br><br>export const db = new DatabaseSync("notes.db");<br><br>db.exec(`<br>  CREATE TABLE IF NOT EXISTS notes (<br>    id         INTEGER PRIMARY KEY AUTOINCREMENT,<br>    title      TEXT NOT NULL,<br>    body       TEXT NOT NULL DEFAULT '',<br>    created_at TEXT NOT NULL DEFAULT (datetime('now'))<br>  )<br>`);<br><br>const insert = db.prepare("INSERT INTO notes (title, body) VALUES (?, ?)");<br>const byId   = db.prepare("SELECT * FROM notes WHERE id = ?");<br><br>const { lastInsertRowid } = insert.run("Buy milk", "2 litres");<br>console.log(byId.get(lastInsertRowid));<br>console.log(db.prepare("SELECT id, title FROM notes ORDER BY id DESC").all());</div>
        </div>
        <div class="lc-card">
          <h3>PostgreSQL with pg</h3>
          <div class="lc-code">// npm install pg<br>// db.js<br>import pg from "pg";<br><br>export const pool = new pg.Pool({<br>  connectionString: process.env.DATABASE_URL,  // postgres://user:pass@host:5432/app<br>  max: 10,                                     // up to 10 open connections<br>});<br><br>// routes/notes.js<br>import { pool } from "../db.js";<br><br>router.get("/:id", async (req, res) =&gt; {<br>  const { rows } = await pool.query(<br>    "SELECT id, title, body, created_at FROM notes WHERE id = $1",<br>    [Number(req.params.id)]<br>  );<br>  if (rows.length === 0) throw new HttpError(404, "Note not found");<br>  res.json(rows[0]);<br>});<br><br>router.post("/", async (req, res) =&gt; {<br>  const { title, body } = NoteInput.parse(req.body);<br>  const { rows } = await pool.query(<br>    "INSERT INTO notes (title, body) VALUES ($1, $2) RETURNING *",<br>    [title, body]<br>  );<br>  res.status(201).json(rows[0]);<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Never Build SQL with String Concatenation</h3>
          <div class="lc-code">// DANGEROUS: SQL injection<br>const q = `SELECT * FROM users WHERE email = '${req.body.email}'`;<br>// email = "x' OR '1'='1"  -&gt;  returns every user<br><br>// SAFE: parameterised query - values travel separately from the SQL<br>await pool.query("SELECT * FROM users WHERE email = $1", [req.body.email]);</div>
        </div>
        <div class="lc-card">
          <h3>Transactions</h3>
          <p>When several statements must succeed or fail together, run them on one client inside a transaction:</p>
          <div class="lc-code">const client = await pool.connect();<br>try {<br>  await client.query("BEGIN");<br>  await client.query("UPDATE accounts SET balance = balance - $1 WHERE id = $2", [50, fromId]);<br>  await client.query("UPDATE accounts SET balance = balance + $1 WHERE id = $2", [50, toId]);<br>  await client.query("COMMIT");<br>} catch (err) {<br>  await client.query("ROLLBACK");<br>  throw err;<br>} finally {<br>  client.release();   // always return the connection to the pool<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Choosing a Data Layer</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Examples</th><th>Trade-off</th></tr></thead>
            <tbody>
              <tr><td>Raw driver</td><td><code>pg</code>, <code>node:sqlite</code>, <code>mysql2</code></td><td>Full control, you write SQL</td></tr>
              <tr><td>Query builder</td><td>Knex, Kysely</td><td>Composable SQL in JavaScript</td></tr>
              <tr><td>ORM</td><td>Prisma, Drizzle, Sequelize</td><td>Schema, migrations and typed models; more abstraction</td></tr>
              <tr><td>Document DB</td><td>MongoDB driver, Mongoose</td><td>Flexible JSON documents, weaker relations</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Migrations</h3>
          <p>Your schema changes over time. Keep every change as a numbered SQL file in git and apply them in order, so every environment ends up with the same tables:</p>
          <div class="lc-code">migrations/<br>  001_create_notes.sql<br>  002_add_user_id_to_notes.sql<br><br>-- 002_add_user_id_to_notes.sql<br>ALTER TABLE notes ADD COLUMN user_id INTEGER REFERENCES users(id);<br>CREATE INDEX notes_user_id_idx ON notes (user_id);</div>
          <p>Tools such as <code>node-pg-migrate</code>, Knex, Prisma and Drizzle track which migrations have already run.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: node:sqlite, injection and a transaction</h3>
          <p>An in-memory database, so nothing is left on disk. Run it with Node 24:</p>
          <div class="lc-code">import { DatabaseSync } from "node:sqlite";<br><br>const db = new DatabaseSync(":memory:");          // use a file name like "notes.db" to keep data<br>db.exec(`CREATE TABLE notes (<br>  id    INTEGER PRIMARY KEY AUTOINCREMENT,<br>  title TEXT NOT NULL,<br>  body  TEXT NOT NULL DEFAULT ''<br>)`);<br><br>const insert = db.prepare("INSERT INTO notes (title, body) VALUES (?, ?)");<br>const byId = db.prepare("SELECT * FROM notes WHERE id = ?");<br><br>const { lastInsertRowid } = insert.run("Buy milk", "2 litres");<br>insert.run("Learn SQL", "joins first");<br>console.log("inserted id:", lastInsertRowid);<br>console.log("by id     :", byId.get(1));<br>console.log("all       :", db.prepare("SELECT id, title FROM notes ORDER BY id").all());<br><br>const evil = "x' OR '1'='1";<br>const unsafe = db.prepare(`SELECT COUNT(*) AS n FROM notes WHERE title = '${evil}'`).get();<br>const safe = db.prepare("SELECT COUNT(*) AS n FROM notes WHERE title = ?").get(evil);<br>console.log("concatenated query matched:", unsafe.n, "rows | parameterised matched:", safe.n);<br><br>db.exec("BEGIN");                                 // a transaction: all or nothing<br>try {<br>  insert.run("Note A", "");<br>  insert.run(null, "");                           // violates NOT NULL<br>  db.exec("COMMIT");<br>} catch (err) {<br>  db.exec("ROLLBACK");<br>  console.log("rolled back:", err.message);<br>}<br>console.log("count after rollback:", db.prepare("SELECT COUNT(*) AS n FROM notes").get().n);<br>db.close();</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">inserted id: 1<br>by id     : [Object: null prototype] { id: 1, title: 'Buy milk', body: '2 litres' }<br>all       : [<br>  [Object: null prototype] { id: 1, title: 'Buy milk' },<br>  [Object: null prototype] { id: 2, title: 'Learn SQL' }<br>]<br>concatenated query matched: 2 rows | parameterised matched: 0<br>rolled back: NOT NULL constraint failed: notes.title<br>count after rollback: 2</div>
          <ul class="lc-list">
            <li>The concatenated query turned the "title" into <code>... OR '1'='1'</code> and matched every row. The parameterised query treated the same text as plain data and matched none.</li>
            <li>The second insert broke a NOT NULL rule, so <code>ROLLBACK</code> undid "Note A" too: still 2 rows.</li>
            <li><code>node:sqlite</code> is <strong>synchronous</strong>, which is fine for small apps and scripts; <code>pg</code> is asynchronous and returns promises.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Building SQL with template strings.</strong> Always use <code>?</code> (SQLite, MySQL) or <code>$1</code> (PostgreSQL) placeholders.</li>
            <li><strong>A new <code>pg.Client</code> per request.</strong> Create one <code>Pool</code> at start-up and reuse it.</li>
            <li><strong>Forgetting <code>client.release()</code>.</strong> After a few leaked connections the pool is empty and every request waits forever. Use <code>finally</code>.</li>
            <li><strong>Running a transaction on <code>pool.query</code>.</strong> Each <code>pool.query</code> may use a different connection, so <code>BEGIN</code> and <code>COMMIT</code> end up on different clients. Use one client from <code>pool.connect()</code>.</li>
            <li><strong><code>SELECT *</code> into an API response.</strong> You may leak columns such as <code>password_hash</code>; list the columns you need.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter insert a third note, <code>await db.insert("Deploy app")</code>, and print <code>(await db.findById(3)).rows[0]</code>. It gets id 3.</li>
            <li>Print <code>(await db.update(99, { body: "x" })).rowCount</code>. It is 0: a real API would turn "0 rows changed" into a 404.</li>
            <li>Change the <code>email</code> variable to <code>"ravi@example.com"</code>. The concatenated SQL now looks harmless, which is why injection bugs survive testing with normal data.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Create one pool when the app starts and share it through a module. Opening a new connection per request is slow and quickly hits the database's connection limit.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // An in-memory table with an async, pg-like query API, plus why placeholders beat string building.
        const table = { rows: [], nextId: 1 };

        const db = {
          async insert(title, body = "") {
            const row = { id: table.nextId++, title, body };
            table.rows.push(row);
            return { rows: [row] };
          },
          async findById(id) {
            return { rows: table.rows.filter((r) => r.id === id) };
          },
          async update(id, fields) {
            const row = table.rows.find((r) => r.id === id);
            if (row) Object.assign(row, fields);
            return { rowCount: row ? 1 : 0 };
          },
          async remove(id) {
            const before = table.rows.length;
            table.rows = table.rows.filter((r) => r.id !== id);
            return { rowCount: before - table.rows.length };
          }
        };

        (async () => {
          const { rows: [milk] } = await db.insert("Buy milk", "2 litres");
          await db.insert("Learn SQL");
          console.log("inserted:", JSON.stringify(milk));
          console.log("update id 2:", (await db.update(2, { body: "joins first" })).rowCount, "row");
          console.log("delete id 9:", (await db.remove(9)).rowCount, "rows");
          console.log("find id 2:", JSON.stringify((await db.findById(2)).rows[0]));

          const email = "x' OR '1'='1";
          const unsafe = `SELECT * FROM users WHERE email = '${email}'`;
          console.log("\nconcatenated SQL:", unsafe);
          console.log("parameterised SQL:", JSON.stringify({ text: "SELECT * FROM users WHERE email = $1", values: [email] }));
        })();
      JS
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Environment Variables &amp; Config</h1>
        </div>
        <p class="lc-lead">The same code runs on your laptop, in CI and in production &mdash; only the <strong>configuration</strong> changes. Ports, database URLs and secrets come from <strong>environment variables</strong>, never from source code.</p>
        <div class="lc-card">
          <h3>Reading process.env</h3>
          <div class="lc-code">$ PORT=4000 NODE_ENV=production node server.js<br><br>// server.js<br>console.log(process.env.PORT);        // '4000'  (always a string or undefined)<br>console.log(process.env.NODE_ENV);    // 'production'<br>console.log(process.env.MISSING);     // undefined</div>
        </div>
        <div class="lc-card">
          <h3>.env Files with --env-file (Node 20.6+)</h3>
          <p>Node can load a <code>.env</code> file itself, replacing the <code>dotenv</code> package for most projects:</p>
          <div class="lc-code"># .env  (in .gitignore!)<br>PORT=3000<br>DATABASE_URL=postgres://app:devpass@localhost:5432/notes<br>SESSION_SECRET=change-me-to-a-long-random-string<br>LOG_LEVEL=debug<br><br># .env.example  (committed: documents what is needed, no real secrets)<br>PORT=3000<br>DATABASE_URL=<br>SESSION_SECRET=</div>
          <div class="lc-code">$ node --env-file=.env server.js<br>$ node --env-file-if-exists=.env server.js   # Node 22.9+: no error if missing<br><br>// Or load it from code (Node 21.7+ / 20.12+)<br>process.loadEnvFile(".env");</div>
          <p>Variables already set in the real environment win over values in the file, so production settings are never overwritten by a stray <code>.env</code>.</p>
        </div>
        <div class="lc-card">
          <h3>A Validated Config Module</h3>
          <p>Read and check every variable in one place at start-up. If something is missing, crash immediately with a clear message instead of failing on the first request.</p>
          <div class="lc-code">// config.js<br>import { z } from "zod";<br><br>const Env = z.object({<br>  NODE_ENV:       z.enum(["development", "test", "production"]).default("development"),<br>  PORT:           z.coerce.number().int().positive().default(3000),<br>  DATABASE_URL:   z.url(),<br>  SESSION_SECRET: z.string().min(32, "SESSION_SECRET must be at least 32 chars"),<br>});<br><br>const parsed = Env.safeParse(process.env);<br>if (!parsed.success) {<br>  console.error("Invalid environment:", z.flattenError(parsed.error).fieldErrors);<br>  process.exit(1);<br>}<br><br>export const config = Object.freeze(parsed.data);<br><br>// anywhere else<br>import { config } from "./config.js";<br>app.listen(config.PORT);</div>
        </div>
        <div class="lc-card">
          <h3>What Belongs Where</h3>
          <table class="lc-table">
            <thead><tr><th>Kind of setting</th><th>Where it lives</th></tr></thead>
            <tbody>
              <tr><td>Secrets: DB passwords, API keys, JWT/session secrets</td><td>Environment / a secret manager &mdash; never in git</td></tr>
              <tr><td>Per-environment values: port, URLs, log level</td><td>Environment variables</td></tr>
              <tr><td>Constants that never change per deploy</td><td>Plain code, e.g. <code>const MAX_TAGS = 10</code></td></tr>
              <tr><td>Documentation of required variables</td><td><code>.env.example</code> (committed)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>NODE_ENV</h3>
          <ul class="lc-list">
            <li>Express and many libraries run faster and log less when <code>NODE_ENV=production</code>.</li>
            <li>Use it to toggle behaviour (pretty logs, stack traces), not to hide missing configuration.</li>
            <li><code>node --test</code> does not set it for you; set <code>NODE_ENV=test</code> in your test script if you rely on it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: load a .env file, then validate it with zod</h3>
          <div class="lc-code">import { writeFile, rm } from "node:fs/promises";<br>import { parseEnv } from "node:util";<br>import { z } from "zod";<br><br>await writeFile(".env.demo", "PORT=4000\nDATABASE_URL=postgres://app:devpass@localhost:5432/notes\nLOG_LEVEL=debug\n");<br>process.env.LOG_LEVEL = "info";                // pretend the real environment already sets this<br>process.loadEnvFile(".env.demo");              // same effect as: node --env-file=.env.demo app.js<br>console.log("PORT:", process.env.PORT, typeof process.env.PORT, "| LOG_LEVEL:", process.env.LOG_LEVEL);<br>console.log("parseEnv:", parseEnv("A=1\nB='two words'"));<br><br>const Env = z.object({<br>  PORT: z.coerce.number().int().positive().default(3000),<br>  DATABASE_URL: z.url(),<br>  SESSION_SECRET: z.string().min(32, "must be at least 32 characters"),<br>});<br>process.env.SESSION_SECRET = "change-me";      // too short<br>let parsed = Env.safeParse(process.env);<br>console.log("valid?", parsed.success, z.flattenError(parsed.error).fieldErrors);<br><br>process.env.SESSION_SECRET = "x".repeat(40);<br>parsed = Env.safeParse(process.env);<br>console.log("valid?", parsed.success, parsed.data.PORT, typeof parsed.data.PORT);<br>await rm(".env.demo");</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">PORT: 4000 string | LOG_LEVEL: info<br>parseEnv: { A: '1', B: 'two words' }<br>valid? false { SESSION_SECRET: [ 'must be at least 32 characters' ] }<br>valid? true 4000 number</div>
          <ul class="lc-list">
            <li>Values from the file are strings; <code>z.coerce.number()</code> turns <code>"4000"</code> into the number 4000.</li>
            <li><code>LOG_LEVEL</code> stayed <code>info</code>: a variable that already exists in the environment is not overwritten by the file.</li>
            <li>With a too-short secret the app should refuse to start, printing exactly which variable is wrong.</li>
          </ul>
          <p>Zod 4 note: use <code>z.url()</code> (the older <code>z.string().url()</code> still works but is deprecated) and <code>z.flattenError(error)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Committing <code>.env</code>.</strong> Add it to <code>.gitignore</code> before your first commit, and commit <code>.env.example</code> instead.</li>
            <li><strong>Treating env values as numbers or booleans.</strong> <code>process.env.DEBUG === true</code> is never true; the value is the string <code>"true"</code>.</li>
            <li><strong>Reading <code>process.env</code> all over the code.</strong> Typos (<code>DATABSE_URL</code>) silently give <code>undefined</code>. Read everything once in <code>config.js</code>.</li>
            <li><strong>Putting secrets in front-end code.</strong> Anything sent to the browser is public, even if it came from an env variable at build time.</li>
            <li><strong>Default values for secrets.</strong> <code>SESSION_SECRET ?? "dev-secret"</code> means production can run with a known secret. Fail fast instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change <code>PORT=4000</code> in <code>envFile</code> to <code>PORT=abc</code>. The first try now reports "PORT must be a positive integer" as well.</li>
            <li>Add <code>PORT: "5000"</code> to <code>realEnv</code>. The real environment wins, so the final config uses port 5000.</li>
            <li>Add a check that <code>LOG_LEVEL</code> is one of <code>debug</code>, <code>info</code>, <code>warn</code> or <code>error</code>, and test it with <code>LOG_LEVEL=loud</code> in <code>realEnv</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If a secret is ever committed, deleting the file is not enough &mdash; it's still in git history. Rotate (replace) the secret immediately.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // Parse a .env file, merge it under the real environment, then validate and coerce config.
        const envFile = `
        # local development settings
        PORT=4000
        DATABASE_URL="postgres://app:devpass@localhost:5432/notes"
        SESSION_SECRET=short
        LOG_LEVEL=debug
        `;
        const realEnv = { NODE_ENV: "development", LOG_LEVEL: "info" }; // stands in for process.env

        function parseEnv(text) {
          const out = {};
          for (const line of text.split("\n").map((l) => l.trim())) {
            if (!line || line.startsWith("#")) continue;
            const i = line.indexOf("=");
            out[line.slice(0, i)] = line.slice(i + 1).replace(/^"|"$/g, "");
          }
          return out;
        }

        function loadConfig(env) {
          const errors = [];
          const port = Number(env.PORT ?? 3000);
          if (!Number.isInteger(port) || port <= 0) errors.push("PORT must be a positive integer");
          if (!env.DATABASE_URL) errors.push("DATABASE_URL is required");
          if ((env.SESSION_SECRET ?? "").length < 32) errors.push("SESSION_SECRET must be at least 32 chars");
          if (errors.length) return { ok: false, errors };
          return { ok: true, config: Object.freeze({ port, databaseUrl: env.DATABASE_URL, logLevel: env.LOG_LEVEL }) };
        }

        const merged = { ...parseEnv(envFile), ...realEnv }; // real environment wins
        console.log("PORT is a string:", typeof merged.PORT, JSON.stringify(merged.PORT));
        console.log("LOG_LEVEL (real env wins):", merged.LOG_LEVEL);

        let result = loadConfig(merged);
        console.log("first try:", JSON.stringify(result));

        merged.SESSION_SECRET = "x".repeat(40);
        result = loadConfig(merged);
        console.log("second try:", JSON.stringify(result));
      JS
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Authentication: Passwords, Sessions &amp; JWT</h1>
        </div>
        <p class="lc-lead"><strong>Authentication</strong> proves who a user is; <strong>authorization</strong> decides what they may do. Get the basics right: hash passwords with a slow algorithm, then remember the user with either a server-side <strong>session</strong> or a signed <strong>token</strong>.</p>
        <div class="lc-card">
          <h3>Step 1: Hash Passwords Properly</h3>
          <p>Never store plain passwords or fast hashes like SHA-256. Use a deliberately slow, salted algorithm: <strong>argon2</strong> or <strong>bcrypt</strong>.</p>
          <div class="lc-code">// npm install argon2       (or: npm install bcrypt)<br>import argon2 from "argon2";<br><br>router.post("/register", async (req, res) =&gt; {<br>  const { email, password } = RegisterInput.parse(req.body); // e.g. min 12 chars<br>  const hash = await argon2.hash(password);  // salt is generated and stored inside the hash<br>  try {<br>    const { rows } = await pool.query(<br>      "INSERT INTO users (email, password_hash) VALUES ($1, $2) RETURNING id, email",<br>      [email.toLowerCase(), hash]<br>    );<br>    res.status(201).json(rows[0]);<br>  } catch (err) {<br>    if (err.code === "23505") throw new HttpError(409, "Email already registered");<br>    throw err;<br>  }<br>});<br><br>// bcrypt equivalent:<br>// const hash = await bcrypt.hash(password, 12);<br>// const ok   = await bcrypt.compare(password, hash);</div>
        </div>
        <div class="lc-card">
          <h3>Step 2: Log In</h3>
          <div class="lc-code">router.post("/login", loginLimiter, async (req, res, next) =&gt; {<br>  const { email, password } = req.body;<br>  const { rows } = await pool.query("SELECT * FROM users WHERE email = $1", [email?.toLowerCase()]);<br>  const user = rows[0];<br>  const ok = user &amp;&amp; (await argon2.verify(user.password_hash, password));<br>  if (!ok) throw new HttpError(401, "Invalid email or password"); // same message either way<br>  req.session.regenerate((err) =&gt; {   // new session id prevents session fixation<br>    if (err) return next(err);<br>    req.session.userId = user.id;<br>    res.json({ id: user.id, email: user.email });<br>  });<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Option A: Cookie Sessions</h3>
          <div class="lc-code">import session from "express-session";<br><br>app.use(session({<br>  secret: config.SESSION_SECRET,<br>  resave: false,<br>  saveUninitialized: false,<br>  cookie: { httpOnly: true, secure: config.NODE_ENV === "production", sameSite: "lax", maxAge: 1000 * 60 * 60 * 24 },<br>  // store: a Redis or Postgres store in production (the default memory store leaks)<br>}));<br><br>function requireLogin(req, res, next) {<br>  if (!req.session.userId) return res.status(401).json({ error: "Please log in" });<br>  next();<br>}<br><br>app.get("/api/me", requireLogin, async (req, res) =&gt; { /* ... */ });<br>app.post("/logout", (req, res) =&gt; req.session.destroy(() =&gt; res.sendStatus(204)));</div>
        </div>
        <div class="lc-card">
          <h3>Option B: JSON Web Tokens</h3>
          <div class="lc-code">import jwt from "jsonwebtoken";<br><br>// on login<br>const token = jwt.sign({ sub: user.id, role: user.role }, config.JWT_SECRET, { expiresIn: "15m" });<br>res.json({ token });<br><br>// on every protected request:  Authorization: Bearer &lt;token&gt;<br>function requireJwt(req, res, next) {<br>  const [scheme, token] = (req.get("authorization") ?? "").split(" ");<br>  if (scheme !== "Bearer" || !token) return res.status(401).json({ error: "Missing token" });<br>  try {<br>    req.user = jwt.verify(token, config.JWT_SECRET, { algorithms: ["HS256"] });<br>    next();<br>  } catch {<br>    res.status(401).json({ error: "Invalid or expired token" });<br>  }<br>}<br><br>const requireRole = (role) =&gt; (req, res, next) =&gt;<br>  req.user.role === role ? next() : res.status(403).json({ error: "Forbidden" });</div>
        </div>
        <div class="lc-card">
          <h3>Sessions vs JWT</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Sessions</th><th>JWT</th></tr></thead>
            <tbody>
              <tr><td>State stored</td><td>On the server (id in a cookie)</td><td>In the signed token itself</td></tr>
              <tr><td>Log out / revoke</td><td>Delete the session &mdash; instant</td><td>Hard until expiry; keep tokens short-lived</td></tr>
              <tr><td>Best for</td><td>Browser apps on your own domain</td><td>Mobile apps, service-to-service APIs</td></tr>
              <tr><td>Main risk</td><td>CSRF (mitigate with <code>sameSite</code>)</td><td>Token theft (don't keep it in <code>localStorage</code> if you can avoid it)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Security Checklist</h3>
          <ul class="lc-list">
            <li>Rate-limit <code>/login</code> and <code>/register</code> (e.g. <code>express-rate-limit</code>).</li>
            <li>Give the same error for "no such user" and "wrong password".</li>
            <li>Serve everything over HTTPS; set cookies <code>httpOnly</code> and <code>secure</code>.</li>
            <li>Check authorization on every resource: user 5 must not read <code>/api/notes/17</code> if it belongs to user 8.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: argon2 hashes and JWTs, for real</h3>
          <p>Requires <code>npm install argon2 jsonwebtoken</code>:</p>
          <div class="lc-code">import argon2 from "argon2";<br>import jwt from "jsonwebtoken";<br><br>const hash = await argon2.hash("correct horse battery staple");<br>console.log("hash starts with:", hash.slice(0, 31));      // algorithm and cost settings are stored inside<br>const again = await argon2.hash("correct horse battery staple");<br>console.log("same password, same hash?", hash === again);  // no: a new random salt each time<br>console.log("verify right password:", await argon2.verify(hash, "correct horse battery staple"));<br>console.log("verify wrong password:", await argon2.verify(hash, "password123"));<br><br>const SECRET = "a-long-random-secret-from-the-environment-000000";<br>const token = jwt.sign({ sub: "42", role: "user" }, SECRET, { expiresIn: "15m" });<br>const payload = JSON.parse(Buffer.from(token.split(".")[1], "base64url").toString());<br>console.log("anyone can read the payload:", payload.sub, payload.role);<br>console.log("verified:", jwt.verify(token, SECRET, { algorithms: ["HS256"] }).sub);<br><br>const forged = token.split(".").slice(0, 2).join(".") + ".fake-signature";<br>try {<br>  jwt.verify(forged, SECRET, { algorithms: ["HS256"] });<br>} catch (err) {<br>  console.log("forged token:", err.message);<br>}<br>const expired = jwt.sign({ sub: "42" }, SECRET, { expiresIn: -10 });<br>try {<br>  jwt.verify(expired, SECRET, { algorithms: ["HS256"] });<br>} catch (err) {<br>  console.log("old token:", err.name);<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">hash starts with: $argon2id$v=19$m=65536,p=4,t=3$<br>same password, same hash? false<br>verify right password: true<br>verify wrong password: false<br>anyone can read the payload: 42 user<br>verified: 42<br>forged token: invalid signature<br>old token: TokenExpiredError</div>
          <ul class="lc-list">
            <li>The hash string records the algorithm (<code>argon2id</code>), memory (64 MB), iterations and a random salt, so <code>verify</code> needs only the stored string.</li>
            <li>The JWT payload is readable by anyone (base64url is not encryption), but changing it breaks the signature.</li>
            <li>Passing <code>algorithms: ["HS256"]</code> stops attackers from choosing a weaker algorithm for you.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Fast hashes for passwords.</strong> SHA-256 or MD5 can be tried billions of times per second on a GPU. Use argon2id or bcrypt.</li>
            <li><strong>Different errors for "no user" and "wrong password".</strong> Attackers learn which emails are registered. Say "Invalid email or password" in both cases.</li>
            <li><strong>Long-lived JWTs with no way to revoke them.</strong> Keep access tokens short (minutes) and pair them with a refresh token or use sessions.</li>
            <li><strong>A weak or committed JWT secret.</strong> Anyone with the secret can mint admin tokens. Use 32+ random bytes from the environment.</li>
            <li><strong>Checking login but not ownership.</strong> Always filter by the current user: <code>WHERE id = $1 AND user_id = $2</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add <code>"Correct horse battery"</code> (capital C) to the list of attempts. It is rejected: passwords are case-sensitive, and the hash of a slightly different password is completely different.</li>
            <li>Change <code>iterations: 100000</code> to <code>1000</code> and notice the run gets faster. That speed is exactly what helps an attacker guess passwords, which is why slow algorithms are used.</li>
            <li>Look up <code>users.get("ADA@EXAMPLE.COM")</code>. It is <code>undefined</code>: normalise emails with <code>toLowerCase()</code> when registering <em>and</em> logging in.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A JWT is <em>signed</em>, not encrypted &mdash; anyone can base64-decode it and read the payload. Never put passwords or private data inside one.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // Salted, slow password hashing with Web Crypto PBKDF2 (works in browsers and Node 20+),
        // plus an in-memory session store. In a real app use argon2 or bcrypt as shown above.
        const { subtle } = globalThis.crypto;
        const enc = new TextEncoder();
        const hex = (buf) => [...new Uint8Array(buf)].map((b) => b.toString(16).padStart(2, "0")).join("");

        async function hashPassword(password, saltHex = hex(crypto.getRandomValues(new Uint8Array(16)))) {
          const key = await subtle.importKey("raw", enc.encode(password), "PBKDF2", false, ["deriveBits"]);
          const salt = Uint8Array.from(saltHex.match(/../g), (h) => parseInt(h, 16));
          const bits = await subtle.deriveBits({ name: "PBKDF2", salt, iterations: 100000, hash: "SHA-256" }, key, 256);
          return `${saltHex}:${hex(bits)}`;
        }

        async function verifyPassword(password, stored) {
          const [salt] = stored.split(":");
          return (await hashPassword(password, salt)) === stored;
        }

        const users = new Map();
        const sessions = new Map();

        (async () => {
          users.set("ada@example.com", await hashPassword("correct horse battery"));
          const stored = users.get("ada@example.com");
          console.log("stored format: <32 hex salt>:<64 hex hash>", stored.split(":").map((p) => p.length).join(" + "));

          const second = await hashPassword("correct horse battery");
          console.log("same password, different salt, different hash:", second !== stored);

          for (const attempt of ["wrong password", "correct horse battery"]) {
            const ok = await verifyPassword(attempt, stored);
            if (!ok) { console.log(`login "${attempt}": 401 Invalid email or password`); continue; }
            const sid = crypto.randomUUID();
            sessions.set(sid, { email: "ada@example.com" });
            console.log(`login "${attempt}": 200, session cookie set (id length ${sid.length})`);
            console.log("GET /api/me ->", sessions.get(sid).email);
            sessions.delete(sid);
            console.log("after logout, session exists:", sessions.has(sid));
          }
        })();
      JS
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Testing with node:test</h1>
        </div>
        <p class="lc-lead">Node has a built-in test runner and assertion library. No Jest or Mocha required: write tests with <code>node:test</code> and <code>node:assert/strict</code>, and run them with <code>node --test</code>.</p>
        <div class="lc-card">
          <h3>Your First Tests</h3>
          <div class="lc-code">// src/price.js<br>export function withTax(price, rate = 0.2) {<br>  if (price &lt; 0) throw new RangeError("price must be positive");<br>  return Math.round(price * (1 + rate) * 100) / 100;<br>}<br><br>// test/price.test.js<br>import { test, describe } from "node:test";<br>import assert from "node:assert/strict";<br>import { withTax } from "../src/price.js";<br><br>describe("withTax", () =&gt; {<br>  test("adds 20% by default", () =&gt; {<br>    assert.equal(withTax(10), 12);<br>  });<br>  test("rounds to cents", () =&gt; {<br>    assert.equal(withTax(9.99, 0.075), 10.74);<br>  });<br>  test("rejects negative prices", () =&gt; {<br>    assert.throws(() =&gt; withTax(-1), RangeError);<br>  });<br>});</div>
          <div class="lc-code">$ node --test                 # finds *.test.js, test/**/*.js, etc.<br>$ node --test --watch         # re-run on change<br>$ node --test --experimental-test-coverage</div>
        </div>
        <div class="lc-card">
          <h3>Assertions You'll Use Most</h3>
          <table class="lc-table">
            <thead><tr><th>Assertion</th><th>Checks</th></tr></thead>
            <tbody>
              <tr><td><code>assert.equal(a, b)</code></td><td><code>a === b</code> (in strict mode)</td></tr>
              <tr><td><code>assert.deepEqual(a, b)</code></td><td>Same structure and values (objects, arrays)</td></tr>
              <tr><td><code>assert.ok(value)</code></td><td>Value is truthy</td></tr>
              <tr><td><code>assert.match(str, /re/)</code></td><td>String matches a regex</td></tr>
              <tr><td><code>assert.throws(fn, Err)</code></td><td>Synchronous function throws</td></tr>
              <tr><td><code>await assert.rejects(promise, Err)</code></td><td>Promise rejects</td></tr>
            </tbody>
          </table>
          <p>Objects are compared by reference with <code>equal</code>: <code>assert.equal({ a: 1 }, { a: 1 })</code> fails, <code>assert.deepEqual</code> passes.</p>
        </div>
        <div class="lc-card">
          <h3>Testing an Express API</h3>
          <p>Because <code>app.js</code> exports the app without listening, a test can start it on a random free port (<code>0</code>) and call it with <code>fetch</code>:</p>
          <div class="lc-code">// test/notes.test.js<br>import { test, before, after } from "node:test";<br>import assert from "node:assert/strict";<br>import app from "../src/app.js";<br><br>let server, base;<br>before(async () =&gt; {<br>  server = app.listen(0);<br>  await new Promise((r) =&gt; server.once("listening", r));<br>  base = `http://localhost:${server.address().port}`;<br>});<br>after(() =&gt; server.close());<br><br>test("POST /api/notes creates a note", async () =&gt; {<br>  const res = await fetch(`${base}/api/notes`, {<br>    method: "POST",<br>    headers: { "Content-Type": "application/json" },<br>    body: JSON.stringify({ title: "Test note" }),<br>  });<br>  assert.equal(res.status, 201);<br>  const note = await res.json();<br>  assert.equal(note.title, "Test note");<br>  assert.ok(note.id);<br>});<br><br>test("POST without a title returns 422", async () =&gt; {<br>  const res = await fetch(`${base}/api/notes`, {<br>    method: "POST",<br>    headers: { "Content-Type": "application/json" },<br>    body: "{}",<br>  });<br>  assert.equal(res.status, 422);<br>});</div>
        </div>
        <div class="lc-card">
          <h3>Mocking</h3>
          <div class="lc-code">import { test, mock } from "node:test";<br><br>test("sends a welcome email", async () =&gt; {<br>  const send = mock.fn(async () =&gt; ({ id: "msg_1" }));<br>  await registerUser({ email: "a@b.c" }, { send });<br>  assert.equal(send.mock.callCount(), 1);<br>  assert.equal(send.mock.calls[0].arguments[0].to, "a@b.c");<br>});<br><br>// Fake timers: jump forward without really waiting<br>mock.timers.enable({ apis: ["setTimeout"] });<br>mock.timers.tick(60_000);</div>
        </div>
        <div class="lc-card">
          <h3>What Makes a Good Test</h3>
          <ul class="lc-list">
            <li>Test behaviour through the public interface (status codes, JSON), not private helpers.</li>
            <li>Cover the failure paths too: missing fields, unknown ids, wrong passwords.</li>
            <li>Each test sets up its own data so tests can run in any order.</li>
            <li>Use a separate test database (e.g. an in-memory SQLite file <code>":memory:"</code>) &mdash; never production.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: run a test file and read the report</h3>
          <p>One file with a suite, a mock and one test that fails on purpose:</p>
          <div class="lc-code">// price.test.mjs  -&gt;  run with: node --test<br>import { test, describe, mock } from "node:test";<br>import assert from "node:assert/strict";<br><br>function withTax(price, rate = 0.18) {           // normally imported from ../src/price.js<br>  if (price &lt; 0) throw new RangeError("price must be positive");<br>  return Math.round(price * (1 + rate) * 100) / 100;<br>}<br><br>describe("withTax", () =&gt; {<br>  test("adds 18% GST by default", () =&gt; assert.equal(withTax(100), 118));<br>  test("rounds to paise", () =&gt; assert.equal(withTax(9.99, 0.05), 10.49));<br>  test("rejects negative prices", () =&gt; assert.throws(() =&gt; withTax(-1), RangeError));<br>  test("objects need deepEqual", () =&gt; assert.deepEqual({ total: withTax(10) }, { total: 11.8 }));<br>});<br><br>test("calls the mailer once", async () =&gt; {<br>  const send = mock.fn(async () =&gt; ({ id: "msg_1" }));<br>  await send({ to: "ravi@example.com" });<br>  assert.equal(send.mock.callCount(), 1);<br>  assert.equal(send.mock.calls[0].arguments[0].to, "ravi@example.com");<br>});<br><br>test("a deliberately wrong expectation", () =&gt; assert.equal(withTax(10), 12));</div>
          <p>Run <code>node --test</code>. <strong>Output</strong> (Node 24's default "spec" reporter; timings removed, and the failure details that follow are cut short):</p>
          <div class="lc-code">▶ withTax<br>  ✔ adds 18% GST by default<br>  ✔ rounds to paise<br>  ✔ rejects negative prices<br>  ✔ objects need deepEqual<br>✔ withTax<br>✔ calls the mailer once<br>✖ a deliberately wrong expectation<br>ℹ tests 6<br>ℹ suites 1<br>ℹ pass 5<br>ℹ fail 1<br>ℹ cancelled 0<br>ℹ skipped 0<br>ℹ todo 0<br><br>✖ failing tests:<br>exit code: 1</div>
          <p>After "failing tests:" Node prints the file and line, and <code>11.8 !== 12</code>: the test, not the code, was wrong (18% tax, not 20%). Because one test failed, the process exits with code 1, which is what makes a CI build fail.</p>
        </div>
        <div class="lc-card">
          <h3>Unit, integration and end-to-end tests</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Tests</th><th>Speed</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Unit</td><td>One function, no network or database</td><td>Milliseconds</td><td><code>withTax(100) === 118</code></td></tr>
              <tr><td>Integration / API</td><td>Routes + middleware + a test database</td><td>Tens of ms</td><td><code>POST /api/notes</code> returns 201</td></tr>
              <tr><td>End-to-end</td><td>The whole app through a real browser</td><td>Seconds</td><td>Playwright logs in and adds a note</td></tr>
            </tbody>
          </table>
          <p>Aim for many unit tests, a good set of API tests and a few end-to-end tests.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>await</code> on async assertions.</strong> <code>assert.rejects(promise)</code> without <code>await</code> lets the test pass before the check runs.</li>
            <li><strong>Comparing objects with <code>equal</code>.</strong> Two objects are only equal if they are the same object; use <code>deepEqual</code>.</li>
            <li><strong>Tests that depend on each other's data or order.</strong> Each test should create what it needs.</li>
            <li><strong>Leaving the server open.</strong> Without <code>server.close()</code> in <code>after</code>, the test process may never finish.</li>
            <li><strong>Only testing the happy path.</strong> Most bugs live in 400/404/422 cases.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter fix the failing test by using <code>assert.deepEqual</code> instead of <code>assert.equal</code>. The summary becomes pass 5, fail 0.</li>
            <li>Add a test "zero rate keeps the price" that checks <code>withTax(250, 0)</code> equals 250.</li>
            <li>Add a test that fails on purpose (expect <code>withTax(100)</code> to be 118) and read the message. Why is 120 the correct answer for the starter's default rate?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Add <code>"test": "node --test"</code> to package.json and run <code>npm test</code> in CI on every push. A failing test sets a non-zero exit code, which fails the build.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // A tiny test runner with the same shape as node:test + node:assert/strict.
        const tests = [];
        const test = (name, fn) => tests.push({ name, fn });

        const assert = {
          equal(actual, expected) {
            if (actual !== expected) throw new Error(`expected ${JSON.stringify(expected)}, got ${JSON.stringify(actual)}`);
          },
          deepEqual(actual, expected) {
            if (JSON.stringify(actual) !== JSON.stringify(expected)) throw new Error("objects differ");
          },
          throws(fn, ErrorType) {
            try { fn(); } catch (err) { if (err instanceof ErrorType) return; throw err; }
            throw new Error("expected function to throw");
          }
        };

        function withTax(price, rate = 0.2) {
          if (price < 0) throw new RangeError("price must be positive");
          return Math.round(price * (1 + rate) * 100) / 100;
        }

        test("adds 20% by default", () => assert.equal(withTax(10), 12));
        test("rounds to cents", () => assert.equal(withTax(9.99, 0.075), 10.74));
        test("rejects negative prices", () => assert.throws(() => withTax(-1), RangeError));
        test("equal compares objects by reference (this one fails)", () => assert.equal({ a: 1 }, { a: 1 }));
        test("deepEqual compares structure", () => assert.deepEqual({ a: 1 }, { a: 1 }));

        let passed = 0;
        for (const { name, fn } of tests) {
          try {
            fn();
            passed++;
            console.log(`ok     - ${name}`);
          } catch (err) {
            console.log(`not ok - ${name}\n         ${err.message}`);
          }
        }
        console.log(`\n# pass ${passed}\n# fail ${tests.length - passed}`);
      JS
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nodejs">Node.js</div>
          <h1 class="lc-title">Deployment &amp; Final Project</h1>
        </div>
        <p class="lc-lead">Your API works locally. Shipping it means a production start command, configuration from the environment, logs, a health check, graceful shutdown, and a platform to run it on. Then you'll build a complete project that uses everything in this course.</p>
        <div class="lc-card">
          <h3>Production-Ready server.js</h3>
          <div class="lc-code">// src/server.js<br>import app from "./app.js";<br>import { config } from "./config.js";<br>import { pool } from "./db.js";<br><br>app.get("/health", async (req, res) =&gt; {<br>  await pool.query("SELECT 1");            // is the database reachable?<br>  res.json({ status: "ok", uptime: process.uptime() });<br>});<br><br>const server = app.listen(config.PORT, () =&gt; {<br>  console.log(`listening on ${config.PORT} (${config.NODE_ENV})`);<br>});<br><br>// Platforms send SIGTERM before stopping a container<br>async function shutdown(signal) {<br>  console.log(`${signal} received, closing...`);<br>  server.close(async () =&gt; {              // stop accepting, finish in-flight requests<br>    await pool.end();<br>    process.exit(0);<br>  });<br>  setTimeout(() =&gt; process.exit(1), 10_000).unref(); // force quit if stuck<br>}<br>process.on("SIGTERM", shutdown);<br>process.on("SIGINT", shutdown);</div>
        </div>
        <div class="lc-card">
          <h3>A Small Dockerfile</h3>
          <div class="lc-code">FROM node:24-slim<br>WORKDIR /app<br>ENV NODE_ENV=production<br>COPY package*.json ./<br>RUN npm ci --omit=dev<br>COPY src ./src<br>USER node<br>EXPOSE 3000<br>CMD ["node", "src/server.js"]</div>
          <ul class="lc-list">
            <li><code>npm ci --omit=dev</code> installs exactly the lock file, without dev tools.</li>
            <li><code>USER node</code> avoids running as root.</li>
            <li>Run <code>node</code> directly (not <code>npm start</code>) so SIGTERM reaches your process.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Where to Deploy</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Examples</th><th>You manage</th></tr></thead>
            <tbody>
              <tr><td>Platform-as-a-Service</td><td>Render, Railway, Fly.io, Heroku</td><td>Code and env vars; they run it</td></tr>
              <tr><td>Containers</td><td>Docker on a VPS, AWS ECS, Google Cloud Run</td><td>The image and scaling rules</td></tr>
              <tr><td>Virtual machine</td><td>A Linux server with a process manager (systemd, PM2) behind nginx</td><td>Everything, including updates and TLS</td></tr>
              <tr><td>Serverless</td><td>AWS Lambda, Vercel functions</td><td>Functions only; no long-lived server</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Production Checklist</h3>
          <ul class="lc-list">
            <li>Listen on <code>process.env.PORT</code>; set <code>NODE_ENV=production</code>.</li>
            <li>All secrets in the platform's env settings; config validated at start-up.</li>
            <li><code>helmet()</code>, CORS restricted to your front-end, rate limiting on auth routes, HTTPS only.</li>
            <li>Structured JSON logs (e.g. <code>pino</code>) to stdout; the platform collects them.</li>
            <li>Database migrations run as a separate release step, not on every boot.</li>
            <li><code>npm audit</code> and tests passing in CI before each deploy.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Final Project: Notes API</h3>
          <p>Build and deploy a multi-user notes service. Each item maps to a lesson you've completed:</p>
          <table class="lc-table">
            <thead><tr><th>Requirement</th><th>Lessons</th></tr></thead>
            <tbody>
              <tr><td>ESM project, npm scripts <code>dev</code> / <code>start</code> / <code>test</code></td><td>2&ndash;4</td></tr>
              <tr><td>Express 5 app with a <code>/api/notes</code> router and full CRUD</td><td>10&ndash;13</td></tr>
              <tr><td>zod validation, <code>HttpError</code>, central error handler, 404 handler</td><td>14</td></tr>
              <tr><td>SQLite or Postgres with parameterised queries</td><td>16</td></tr>
              <tr><td>Config from <code>--env-file</code>, validated at start-up</td><td>17</td></tr>
              <tr><td>Register / login with argon2 or bcrypt; users only see their own notes</td><td>18</td></tr>
              <tr><td>At least 8 <code>node:test</code> tests covering success and failure cases</td><td>19</td></tr>
              <tr><td>Health check, graceful shutdown, deployed to a public URL</td><td>20</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: graceful shutdown under a real deploy signal</h3>
          <p>The script sends itself SIGTERM (exactly what Docker, Kubernetes, Render or Railway do before stopping your container) while a slow request is still running:</p>
          <div class="lc-code">import express from "express";<br>import { setTimeout as sleep } from "node:timers/promises";<br><br>const app = express();<br>let shuttingDown = false;<br>app.get("/health", (req, res) =&gt; res.status(shuttingDown ? 503 : 200).json({ status: shuttingDown ? "draining" : "ok" }));<br>app.get("/report", async (req, res) =&gt; {<br>  await sleep(150);                                   // a slow, in-flight request<br>  res.json({ report: "done" });<br>});<br><br>const server = app.listen(0);<br>await new Promise((r) =&gt; server.once("listening", r));<br>const base = `http://localhost:${server.address().port}`;<br><br>process.on("SIGTERM", () =&gt; {<br>  console.log("SIGTERM received: stop accepting new connections");<br>  shuttingDown = true;<br>  server.close(() =&gt; {                                // runs after in-flight requests finish<br>    console.log("all requests finished, closing DB pool, exiting 0");<br>    process.exitCode = 0;<br>  });<br>  setTimeout(() =&gt; process.exit(1), 10_000).unref(); // force quit if stuck<br>});<br><br>console.log("health before:", (await fetch(`${base}/health`)).status);<br>const inFlight = fetch(`${base}/report`).then(async (r) =&gt; console.log("in-flight request:", r.status, await r.text()));<br>await sleep(20);<br>process.kill(process.pid, "SIGTERM");                 // what the platform does on deploy<br>await inFlight;</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">health before: 200<br>SIGTERM received: stop accepting new connections<br>in-flight request: 200 {"report":"done"}<br>all requests finished, closing DB pool, exiting 0</div>
          <p>The in-flight <code>/report</code> request still gets its 200 response, then <code>server.close</code>'s callback runs and the process exits cleanly with code 0. Without this handler, the platform would kill the process and that user would see a failed request.</p>
        </div>
        <div class="lc-card">
          <h3>Final project: how you will be assessed</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Excellent</th><th>Needs work</th></tr></thead>
            <tbody>
              <tr><td>API design</td><td>Plural nouns, correct methods and status codes, one error shape</td><td>200 for errors, verbs in URLs</td></tr>
              <tr><td>Safety</td><td>Validated input, hashed passwords, parameterised SQL, users see only their notes</td><td>Trusts <code>req.body</code>, string-built SQL</td></tr>
              <tr><td>Reliability</td><td>Central error handler, health check, graceful shutdown</td><td>Crashes on bad input</td></tr>
              <tr><td>Tests</td><td>8+ <code>node:test</code> tests including failure cases, run by <code>npm test</code></td><td>No tests, or only happy paths</td></tr>
              <tr><td>Operations</td><td>Config from env, validated at start-up; deployed to a public URL; README with setup steps</td><td>Secrets in code, "works on my machine"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Hard-coding the port.</strong> Most platforms tell you the port in <code>process.env.PORT</code>; listen on it.</li>
            <li><strong>Starting with <code>npm start</code> inside Docker.</strong> npm may not pass SIGTERM on to Node, so graceful shutdown never runs. Use <code>CMD ["node", "src/server.js"]</code>.</li>
            <li><strong>Running as root in the container.</strong> Add <code>USER node</code>.</li>
            <li><strong>A health check that always says "ok".</strong> Check the things the app needs (like the database), and return 503 while shutting down.</li>
            <li><strong>Deploying without running the tests.</strong> Make CI run <code>npm ci</code>, <code>npm test</code> and <code>npm audit</code> before every deploy.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add <code>handleRequest(200);</code> next to the first two calls. The shutdown message now waits for 3 requests, and the clean exit comes after the 200 ms one finishes.</li>
            <li>Change the late request's timer from <code>40</code> to <code>5</code> ms so it arrives <em>before</em> SIGTERM. It is accepted and finishes instead of getting a 503.</li>
            <li>Write down, for each row of the final-project table above, which lesson you will reuse, then start the project with <code>npm init -y</code> on your own machine.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Deploy early &mdash; even a "hello" version on day one. Problems with ports, env vars and builds are much easier to solve before your app is large.
        </div>
      HTML
      starter_code: <<~'JS'
        // Runs in the browser — the real Node.js version is shown in the lesson above.
        // Graceful shutdown: stop accepting new requests, let in-flight ones finish, then exit.
        const inFlight = new Set();
        let accepting = true;
        let nextId = 1;

        function handleRequest(ms) {
          const id = nextId++;
          if (!accepting) {
            console.log(`req ${id}: rejected with 503 (shutting down)`);
            return Promise.resolve();
          }
          console.log(`req ${id}: started (${ms} ms of work)`);
          const work = new Promise((resolve) => setTimeout(resolve, ms)).then(() => {
            inFlight.delete(work);
            console.log(`req ${id}: finished 200`);
          });
          inFlight.add(work);
          return work;
        }

        async function shutdown(signal) {
          console.log(`${signal} received: stop accepting, waiting for ${inFlight.size} requests`);
          accepting = false;
          await Promise.all(inFlight);
          console.log("closing database pool");
          console.log("clean exit with code 0");
        }

        handleRequest(120);
        handleRequest(60);
        setTimeout(() => shutdown("SIGTERM"), 20);
        setTimeout(() => handleRequest(10), 40);
        setTimeout(() => console.log("health:", accepting ? "ok" : "draining"), 50);
      JS
    }
  }
end

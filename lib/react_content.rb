# frozen_string_literal: true

# React course — lesson bodies and starter code (React 19.3, 2026).
# Starters run in the lesson editor: React 19 development builds + Babel (JSX, ES imports).
module ReactContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Introduction to React and JSX</h1>
        </div>
        <p class="lc-lead">React is a JavaScript library for building user interfaces out of small, reusable pieces called <strong>components</strong>. You describe <em>what</em> the screen should look like for the current data, and React works out <em>how</em> to update the page. This course teaches <strong>React 19</strong> (current stable: 19.3).</p>
        <div class="lc-card">
          <h3>Why React?</h3>
          <ul class="lc-list">
            <li><strong>Declarative</strong> — you write "show 3 items", not "find the list, create an li, append it".</li>
            <li><strong>Component-based</strong> — a page is a tree of components, like LEGO blocks you can reuse.</li>
            <li><strong>Just JavaScript</strong> — loops, conditions and functions are normal JS, not a special template language.</li>
            <li><strong>Huge ecosystem</strong> — routing, data fetching, testing, mobile apps (React Native).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Imperative DOM vs declarative React</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Plain DOM (imperative)</th><th>React (declarative)</th></tr></thead>
            <tbody>
              <tr><td>You write</td><td>Step-by-step instructions to change the page</td><td>What the UI should look like for the current data</td></tr>
              <tr><td>When data changes</td><td>You find and patch each element yourself</td><td>React re-runs your component and updates only what changed</td></tr>
              <tr><td>Typical bug</td><td>Page and data get out of sync</td><td>Much rarer — the UI is computed from data</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What is JSX?</h3>
          <p>JSX is a syntax extension that lets you write HTML-like markup inside JavaScript. It is <strong>not</strong> HTML and browsers cannot run it directly — a compiler (Babel, or the one built into Vite) turns each tag into a JavaScript function call that creates a React element.</p>
          <div class="lc-code">const element = &lt;h1 className="title"&gt;Hello, {name}!&lt;/h1&gt;;<br><br>// is compiled (roughly) to:<br>const element = jsx("h1", { className: "title", children: ["Hello, ", name, "!"] });</div>
          <p>Older setups compiled JSX to <code>React.createElement("h1", ...)</code>. Since React 17 the "automatic runtime" imports <code>jsx()</code> for you, so you no longer need <code>import React from "react"</code> just to use JSX.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: rendering to the page</h3>
          <p>Every React app has one HTML element (usually <code>&lt;div id="root"&gt;</code>) that React controls. You create a <strong>root</strong> once and render your UI into it:</p>
          <div class="lc-code">import { createRoot } from "react-dom/client";<br><br>const name = "Priya";<br>const root = createRoot(document.getElementById("root"));<br>root.render(&lt;h1&gt;Hello, {name}! 2 + 2 = {2 + 2}&lt;/h1&gt;);</div>
          <p><strong>Expected output</strong> (in the preview):</p>
          <div class="lc-code">Hello, Priya! 2 + 2 = 4</div>
        </div>
        <div class="lc-card">
          <h3>JSX rules</h3>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>HTML</th><th>JSX</th></tr></thead>
            <tbody>
              <tr><td>One parent element per return</td><td>any number of siblings</td><td>wrap in <code>&lt;div&gt;</code> or a fragment <code>&lt;&gt;...&lt;/&gt;</code></td></tr>
              <tr><td>Close every tag</td><td><code>&lt;br&gt;</code>, <code>&lt;img src="a.png"&gt;</code></td><td><code>&lt;br /&gt;</code>, <code>&lt;img src="a.png" /&gt;</code></td></tr>
              <tr><td>CSS class</td><td><code>class="box"</code></td><td><code>className="box"</code></td></tr>
              <tr><td>Label for</td><td><code>for="email"</code></td><td><code>htmlFor="email"</code></td></tr>
              <tr><td>Inline style</td><td><code>style="color: red"</code></td><td><code>style={{ color: "red" }}</code> (an object)</td></tr>
              <tr><td>Events</td><td><code>onclick="..."</code></td><td><code>onClick={handler}</code> (camelCase)</td></tr>
              <tr><td>JavaScript values</td><td>not possible</td><td>any <em>expression</em> inside <code>{ }</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How this lesson editor runs React</h3>
          <p>The preview loads the real React 19 development build and compiles your JSX with Babel. You can write <code>import { useState } from "react"</code> exactly as in a real project (only <code>react</code>, <code>react-dom</code> and <code>react-dom/client</code> are available here). <code>console.log</code> output and React warnings appear in a panel at the bottom of the preview.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Returning two sibling tags without a wrapper — use a fragment <code>&lt;&gt;...&lt;/&gt;</code>.</li>
            <li>Writing <code>class</code> instead of <code>className</code> (React warns in the console).</li>
            <li>Putting a statement inside <code>{ }</code>: <code>{if (x) ...}</code> fails — only expressions like <code>{x ? "a" : "b"}</code> work.</li>
            <li>Using the old <code>ReactDOM.render(...)</code> — it was <strong>removed in React 19</strong>. Use <code>createRoot(...).render(...)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, add a new <code>&lt;li&gt;</code> that shows the length of the <code>skills</code> array using <code>{skills.length}</code>, and change <code>name</code> to your own name. Watch the preview update when you press Run.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Think of JSX as "JavaScript that returns a description of the UI". Anything you can put on the right side of <code>const x = ...</code> can go inside <code>{ }</code>.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { createRoot } from "react-dom/client";

        // Plain JavaScript values we will show in the UI
        const name = "React Learner";
        const city = "Bengaluru";
        const skills = ["HTML", "CSS", "JavaScript"];
        const marks = [78, 92, 85];
        const average = marks.reduce((sum, m) => sum + m, 0) / marks.length;

        // JSX: HTML-like syntax that compiles to JavaScript function calls
        const page = (
          <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 520 }}>
            <h1 style={{ color: "#0891b2" }}>Hello, {name}!</h1>
            <p>City: <strong>{city}</strong></p>
            <p>Expression demo: 2 + 2 = {2 + 2}</p>
            <p>Average mark: {average.toFixed(1)}</p>
            <p>Skills in UPPERCASE: {skills.join(", ").toUpperCase()}</p>
            <ul>
              <li>JSX looks like HTML</li>
              <li>but every tag becomes a JavaScript call</li>
              <li>and {"{ }"} lets you insert any JavaScript expression</li>
            </ul>
            <hr />  {/* self-closing tags need the slash */}
          </div>
        );

        // One root per app; render() puts our UI inside <div id="root">
        const root = createRoot(document.getElementById("root"));
        root.render(page);

        console.log("Rendered with React", "- average =", average.toFixed(1));
      JSX
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Components, Modules and Vite</h1>
        </div>
        <p class="lc-lead">A <strong>component</strong> is a JavaScript function that returns JSX. Real apps split components into separate files (ES modules) and use a build tool — today that is usually <strong>Vite</strong> — to run and bundle them.</p>
        <div class="lc-card">
          <h3>Defining and using a component</h3>
          <div class="lc-code">function Greeting() {<br>&nbsp;&nbsp;return &lt;h2&gt;Namaste!&lt;/h2&gt;;<br>}<br><br>export default function App() {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;main&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Greeting /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Greeting /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/main&gt;<br>&nbsp;&nbsp;);<br>}</div>
          <p><strong>Expected output:</strong> the heading "Namaste!" appears twice. <code>&lt;Greeting /&gt;</code> tells React "call Greeting and put its result here".</p>
        </div>
        <div class="lc-card">
          <h3>Component rules</h3>
          <ul class="lc-list">
            <li>Names start with a <strong>capital letter</strong>: <code>&lt;Greeting /&gt;</code> is a component, <code>&lt;greeting /&gt;</code> is treated as an unknown HTML tag.</li>
            <li>Return JSX, a string, a number, or <code>null</code> (to render nothing).</li>
            <li>Define components at the <strong>top level</strong> of a file — never inside another component (it would be re-created on every render and lose its state).</li>
            <li>Keep them <strong>pure</strong>: same inputs → same JSX, no changing outside variables while rendering.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Composition: components inside components</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">App</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Header<small>Logo, Nav</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">CourseList<small>CourseCard × n</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Footer</div>
          </div>
          <p>Your UI becomes a tree. Each box is a small component that is easy to read, test and reuse.</p>
        </div>
        <div class="lc-card">
          <h3>Modules: one component per file</h3>
          <div class="lc-code">// src/Greeting.jsx<br>export default function Greeting() { return &lt;h2&gt;Namaste!&lt;/h2&gt;; }<br>export function Wave() { return &lt;span&gt;👋&lt;/span&gt;; }<br><br>// src/App.jsx<br>import Greeting, { Wave } from "./Greeting.jsx";</div>
          <table class="lc-table">
            <thead><tr><th>Export style</th><th>Export</th><th>Import</th></tr></thead>
            <tbody>
              <tr><td>Default (one per file)</td><td><code>export default function Greeting()</code></td><td><code>import Greeting from "./Greeting.jsx"</code></td></tr>
              <tr><td>Named (many per file)</td><td><code>export function Wave()</code></td><td><code>import { Wave } from "./Greeting.jsx"</code></td></tr>
            </tbody>
          </table>
          <p>In this lesson editor everything lives in one file, so we simply define several components one after another.</p>
        </div>
        <div class="lc-card">
          <h3>Starting a real project with Vite</h3>
          <p>Create React App is deprecated (since 2025). The React docs recommend a framework (Next.js, React Router) for full apps, or a build tool such as <strong>Vite</strong> to learn and build from scratch. Vite needs Node.js 20.19+ or 22.12+.</p>
          <div class="lc-code">npm create vite@latest my-app -- --template react<br>cd my-app<br>npm install<br>npm run dev</div>
          <p><strong>Expected output</strong> (last lines):</p>
          <div class="lc-code">VITE v8.3.1  ready in 312 ms<br>➜  Local:   http://localhost:5173/</div>
          <p>(Your version number and start-up time will differ.)</p>
          <table class="lc-table">
            <thead><tr><th>File / command</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>index.html</code></td><td>The single HTML page with <code>&lt;div id="root"&gt;</code></td></tr>
              <tr><td><code>src/main.jsx</code></td><td>Creates the root: <code>createRoot(...).render(&lt;StrictMode&gt;&lt;App /&gt;&lt;/StrictMode&gt;)</code></td></tr>
              <tr><td><code>src/App.jsx</code></td><td>Your top-level component</td></tr>
              <tr><td><code>npm run dev</code></td><td>Dev server with instant hot reload</td></tr>
              <tr><td><code>npm run build</code></td><td>Optimised production files in <code>dist/</code></td></tr>
              <tr><td><code>npm run preview</code></td><td>Serve the <code>dist/</code> build locally to check it</td></tr>
            </tbody>
          </table>
          <p>Use <code>--template react-ts</code> for TypeScript. Styling options you will meet: plain CSS files (<code>import "./App.css"</code> + <code>className</code>), CSS Modules (<code>Card.module.css</code>), or Tailwind CSS.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Lower-case component names — React renders an empty unknown tag instead of your component.</li>
            <li>Declaring a component inside another component's body.</li>
            <li>Mixing up default and named imports: <code>import { Greeting }</code> fails if the file used <code>export default</code>.</li>
            <li>Forgetting the <code>.jsx</code> extension for files that contain JSX in a Vite project.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a <code>Footer</code> component to the starter that returns <code>&lt;footer&gt;© 2026 Team Page&lt;/footer&gt;</code>, then render it at the bottom of <code>App</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you copy a block of JSX more than twice, turn it into a component.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode } from "react";
        import { createRoot } from "react-dom/client";

        // Each component is just a function that returns JSX.
        function Avatar() {
          return (
            <div style={{ width: 48, height: 48, borderRadius: "50%", background: "#6366f1",
              color: "white", display: "flex", alignItems: "center", justifyContent: "center",
              fontWeight: "bold" }}>
              AK
            </div>
          );
        }

        function UserCard() {
          return (
            <div style={{ display: "flex", gap: 12, alignItems: "center", padding: 12,
              border: "1px solid #e5e7eb", borderRadius: 8, marginBottom: 10 }}>
              <Avatar />
              <div>
                <strong>Asha Kumar</strong>
                <div style={{ color: "#6b7280" }}>Frontend Engineer</div>
              </div>
            </div>
          );
        }

        function Header() {
          return <h2 style={{ margin: "0 0 1rem" }}>Team Members</h2>;
        }

        // App composes the smaller components into a tree.
        function App() {
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 420 }}>
              <Header />
              <UserCard />
              <UserCard />
              <p style={{ color: "#6b7280" }}>Same component used twice = same output twice.</p>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(
          <StrictMode>
            <App />
          </StrictMode>
        );
      JSX
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Props and children</h1>
        </div>
        <p class="lc-lead"><strong>Props</strong> (properties) are how a parent passes data to a child component — like arguments to a function. They make one component reusable with different data.</p>
        <div class="lc-card">
          <h3>Passing and reading props</h3>
          <div class="lc-code">function Price({ label, amount, currency = "₹" }) {<br>&nbsp;&nbsp;return &lt;p&gt;{label}: {currency}{amount.toLocaleString("en-IN")}&lt;/p&gt;;<br>}<br><br>function App() {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Price label="Laptop" amount={58999} /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Price label="Course" amount={499} currency="$" /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/&gt;<br>&nbsp;&nbsp;);<br>}</div>
          <p><strong>Expected output:</strong></p>
          <div class="lc-code">Laptop: ₹58,999<br>Course: $499</div>
          <p>React collects all attributes into one object (<code>{ label, amount }</code>) and passes it as the first argument. We <strong>destructure</strong> it in the parameter list. <code>currency = "₹"</code> is a normal JavaScript default value, used when the prop is missing.</p>
        </div>
        <div class="lc-card">
          <h3>Prop value types</h3>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>Write it as</th></tr></thead>
            <tbody>
              <tr><td>String</td><td><code>title="Hello"</code></td></tr>
              <tr><td>Number</td><td><code>count={3}</code> (not <code>count="3"</code>, which is a string)</td></tr>
              <tr><td>Boolean true</td><td><code>disabled</code> or <code>disabled={true}</code></td></tr>
              <tr><td>Array / object</td><td><code>tags={["a", "b"]}</code>, <code>user={{ name: "Ravi" }}</code></td></tr>
              <tr><td>Function</td><td><code>onSelect={handleSelect}</code></td></tr>
              <tr><td>JSX</td><td><code>icon={&lt;Star /&gt;}</code> or as <code>children</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The children prop</h3>
          <p>Whatever you put <em>between</em> a component's tags arrives as <code>children</code>. This lets you build wrappers like cards, modals and layouts.</p>
          <div class="lc-code">function Card({ title, children }) {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;section style={{ border: "1px solid #ddd", padding: 12 }}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h3&gt;{title}&lt;/h3&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{children}<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/section&gt;<br>&nbsp;&nbsp;);<br>}<br><br>&lt;Card title="Notice"&gt;<br>&nbsp;&nbsp;&lt;p&gt;Exams start on Monday.&lt;/p&gt;<br>&lt;/Card&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Props are read-only</h3>
          <p>A component must never change its own props (<code>props.amount = 0</code> is a bug). Props flow <strong>down</strong> from parent to child. If something needs to change over time, that is <strong>state</strong> (next lesson).</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Props</th><th>State</th></tr></thead>
            <tbody>
              <tr><td>Owned by</td><td>the parent</td><td>the component itself</td></tr>
              <tr><td>Can the component change it?</td><td>No</td><td>Yes, with its setter</td></tr>
              <tr><td>Used for</td><td>configuring a component</td><td>data that changes over time</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Spreading props</h3>
          <div class="lc-code">function TextInput({ label, ...rest }) {<br>&nbsp;&nbsp;return &lt;label&gt;{label} &lt;input {...rest} /&gt;&lt;/label&gt;;<br>}<br>&lt;TextInput label="Email" type="email" placeholder="you@example.com" /&gt;</div>
          <p><code>...rest</code> collects the remaining props and <code>{...rest}</code> forwards them. Use it for thin wrappers, not everywhere.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li><code>count="5"</code> passes the string "5" — use <code>count={5}</code> for a number.</li>
            <li>Forgetting the braces when destructuring: <code>function Card(title)</code> receives the whole props object, not the title.</li>
            <li>Using <code>Component.defaultProps</code> on function components — <strong>removed in React 19</strong>. Use default parameter values instead. <code>propTypes</code> checks were also removed; use TypeScript for type checking.</li>
            <li>Mutating a prop object or array passed from a parent.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add an optional <code>discount</code> prop (a number, default <code>0</code>) to <code>CourseCard</code> in the starter. When it is above 0, show the discounted price, e.g. "₹399 (20% off)".</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name props from the child's point of view: a <code>Button</code> takes <code>onClick</code> and <code>label</code>, not <code>saveStudentHandler</code>.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode } from "react";
        import { createRoot } from "react-dom/client";

        const levelColors = { Beginner: "#10b981", Intermediate: "#f59e0b", Advanced: "#ef4444" };

        // Props arrive as one object; we destructure them and give defaults.
        function Badge({ text, color = "#6366f1" }) {
          return (
            <span style={{ background: color, color: "white", padding: "2px 10px",
              borderRadius: 12, fontSize: "0.8rem" }}>
              {text}
            </span>
          );
        }

        function CourseCard({ title, level, lessons, price, children }) {
          return (
            <div style={{ border: "1px solid #e5e7eb", borderRadius: 10, padding: "1rem", marginBottom: 12 }}>
              <div style={{ display: "flex", justifyContent: "space-between", alignItems: "center" }}>
                <h3 style={{ margin: 0 }}>{title}</h3>
                <Badge text={level} color={levelColors[level]} />
              </div>
              <p style={{ color: "#6b7280", margin: "6px 0" }}>
                {lessons} lessons · ₹{price.toLocaleString("en-IN")}
              </p>
              {children}
            </div>
          );
        }

        function App() {
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 480 }}>
              <h2>Course Catalog</h2>
              <CourseCard title="React Basics" level="Beginner" lessons={20} price={499}>
                <p style={{ margin: 0 }}>children: this paragraph was passed between the tags.</p>
              </CourseCard>
              <CourseCard title="Advanced Hooks" level="Advanced" lessons={12} price={1299} />
              <CourseCard title="React + TypeScript" level="Intermediate" lessons={15} price={999} />
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">State with useState</h1>
        </div>
        <p class="lc-lead"><strong>State</strong> is a component's memory — data that changes while the app runs, like a counter, a text box value or a shopping cart. When state changes, React <strong>re-renders</strong> the component with the new value.</p>
        <div class="lc-card">
          <h3>The useState hook</h3>
          <div class="lc-code">import { useState } from "react";<br><br>function Counter() {<br>&nbsp;&nbsp;const [count, setCount] = useState(0);   // 0 is the initial value<br>&nbsp;&nbsp;return &lt;button onClick={() =&gt; setCount(count + 1)}&gt;Clicked {count} times&lt;/button&gt;;<br>}</div>
          <p><code>useState</code> returns a pair: the <strong>current value</strong> and a <strong>setter function</strong>. Calling the setter schedules a re-render; on that render <code>count</code> holds the new value.</p>
        </div>
        <div class="lc-card">
          <h3>The render cycle</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">Event<small>user clicks</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">setCount(1)<small>state update queued</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Re-render<small>Counter() runs again</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Commit<small>DOM updated</small></div>
          </div>
        </div>
        <div class="lc-card">
          <h3>Worked example: state is a snapshot</h3>
          <p>Inside one render, <code>count</code> is a fixed number. Calling the setter does not change it immediately.</p>
          <div class="lc-code">function handleClick() {<br>&nbsp;&nbsp;setCount(count + 1);   // count is 0 → asks for 1<br>&nbsp;&nbsp;setCount(count + 1);   // count is STILL 0 → asks for 1<br>&nbsp;&nbsp;console.log(count);    // prints 0<br>}<br><br>function handleClickFixed() {<br>&nbsp;&nbsp;setCount(c =&gt; c + 1);  // updater: 0 → 1<br>&nbsp;&nbsp;setCount(c =&gt; c + 1);  // updater: 1 → 2<br>}</div>
          <p><strong>Expected output:</strong> after one click, the first handler shows <strong>1</strong> and logs <code>0</code>; the second shows <strong>2</strong>. Use the <strong>updater form</strong> <code>c =&gt; c + 1</code> when the new value depends on the old one.</p>
        </div>
        <div class="lc-card">
          <h3>Objects and arrays: always make a new copy</h3>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Wrong (mutates)</th><th>Right (new value)</th></tr></thead>
            <tbody>
              <tr><td>Change one field</td><td><code>user.name = "Ravi"</code></td><td><code>setUser({ ...user, name: "Ravi" })</code></td></tr>
              <tr><td>Add to array</td><td><code>items.push(x)</code></td><td><code>setItems([...items, x])</code></td></tr>
              <tr><td>Remove from array</td><td><code>items.splice(i, 1)</code></td><td><code>setItems(items.filter(t =&gt; t.id !== id))</code></td></tr>
              <tr><td>Update one item</td><td><code>items[i].done = true</code></td><td><code>setItems(items.map(t =&gt; t.id === id ? { ...t, done: true } : t))</code></td></tr>
            </tbody>
          </table>
          <p>React compares the old and new value with <code>Object.is</code>. If you mutate and pass the <em>same</em> object, React sees no change and skips the re-render.</p>
        </div>
        <div class="lc-card">
          <h3>Rules of Hooks</h3>
          <ul class="lc-list">
            <li>Call hooks only at the <strong>top level</strong> of a component or custom hook — never inside <code>if</code>, loops or nested functions.</li>
            <li>Call them only from React components or custom hooks, not from regular functions.</li>
            <li>Each component instance has its <strong>own</strong> state: two <code>&lt;Counter /&gt;</code> tags count separately.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Expecting the variable to change right after calling the setter.</li>
            <li>Mutating objects or arrays instead of creating new ones.</li>
            <li>Storing values you can calculate: keep <code>items</code> in state and compute <code>items.length</code> during render.</li>
            <li>Writing <code>useState(expensiveCalc())</code> — the function runs every render. Use <code>useState(() =&gt; expensiveCalc())</code> (lazy initial state).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, add a "+5" button that uses the updater form, and a "Reset" button. Then add a <code>city</code> field to the profile object and a button that changes it without losing <code>name</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Ask "does this value change over time, and can I not calculate it from something else?" Only then does it belong in state.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useState } from "react";
        import { createRoot } from "react-dom/client";

        const box = { border: "1px solid #e5e7eb", borderRadius: 8, padding: 12, marginBottom: 12 };

        function App() {
          const [count, setCount] = useState(0);
          const [profile, setProfile] = useState({ name: "Meera", age: 21 });
          const [tags, setTags] = useState(["react"]);

          function addThreeWrong() {
            setCount(count + 1); setCount(count + 1); setCount(count + 1); // all use the same snapshot
          }
          function addThreeRight() {
            setCount(c => c + 1); setCount(c => c + 1); setCount(c => c + 1); // each sees the latest value
          }

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 460 }}>
              <div style={box}>
                <h3>Count: {count}</h3>
                <button onClick={addThreeWrong}>+3 (wrong: adds 1)</button>{" "}
                <button onClick={addThreeRight}>+3 (updater form)</button>
              </div>
              <div style={box}>
                <h3>Object state</h3>
                <p>Name: {profile.name} | Age: {profile.age}</p>
                <button onClick={() => setProfile({ ...profile, age: profile.age + 1 })}>Birthday (copy + change)</button>
              </div>
              <div style={box}>
                <h3>Array state ({tags.length} tags)</h3>
                <p>{tags.join(", ")}</p>
                <button onClick={() => setTags([...tags, "hooks" + tags.length])}>Add tag</button>{" "}
                <button onClick={() => setTags(tags.slice(0, -1))}>Remove last</button>
              </div>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Handling Events</h1>
        </div>
        <p class="lc-lead">Users interact through clicks, typing, key presses and form submits. In React you attach an <strong>event handler</strong> function to a JSX element with a camelCase prop like <code>onClick</code>.</p>
        <div class="lc-card">
          <h3>Pass a function — don't call it</h3>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td><code>onClick={handleClick}</code></td><td>✅ React calls it when clicked</td></tr>
              <tr><td><code>onClick={() =&gt; remove(id)}</code></td><td>✅ arrow function lets you pass arguments</td></tr>
              <tr><td><code>onClick={handleClick()}</code></td><td>❌ runs <em>during render</em>; the result (usually <code>undefined</code>) becomes the handler</td></tr>
              <tr><td><code>onClick={remove(id)}</code></td><td>❌ same bug — and with a state setter it can cause an infinite render loop</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: the event object</h3>
          <p>React passes a <strong>synthetic event</strong> object that works the same in every browser.</p>
          <div class="lc-code">function Search() {<br>&nbsp;&nbsp;function handleKeyDown(e) {<br>&nbsp;&nbsp;&nbsp;&nbsp;if (e.key === "Enter") console.log("Search for:", e.target.value);<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return &lt;input placeholder="Type and press Enter" onKeyDown={handleKeyDown} /&gt;;<br>}</div>
          <p><strong>Expected output</strong> after typing "react" and pressing Enter:</p>
          <div class="lc-code">Search for: react</div>
        </div>
        <div class="lc-card">
          <h3>Common events</h3>
          <table class="lc-table">
            <thead><tr><th>Prop</th><th>Fires when</th><th>Useful fields</th></tr></thead>
            <tbody>
              <tr><td><code>onClick</code></td><td>element is clicked</td><td><code>e.target</code>, <code>e.shiftKey</code></td></tr>
              <tr><td><code>onChange</code></td><td>input value changes (every keystroke in React)</td><td><code>e.target.value</code>, <code>e.target.checked</code></td></tr>
              <tr><td><code>onKeyDown</code></td><td>a key is pressed</td><td><code>e.key</code></td></tr>
              <tr><td><code>onSubmit</code></td><td>a form is submitted</td><td>call <code>e.preventDefault()</code></td></tr>
              <tr><td><code>onFocus</code> / <code>onBlur</code></td><td>element gains / loses focus</td><td>—</td></tr>
              <tr><td><code>onMouseEnter</code></td><td>pointer moves onto element</td><td>—</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Propagation and default behaviour</h3>
          <div class="lc-code">&lt;div onClick={() =&gt; console.log("card clicked")}&gt;<br>&nbsp;&nbsp;&lt;button onClick={e =&gt; { e.stopPropagation(); console.log("button only"); }}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;Like<br>&nbsp;&nbsp;&lt;/button&gt;<br>&lt;/div&gt;</div>
          <p>Events <strong>bubble</strong> up from the child to its parents. <code>e.stopPropagation()</code> stops that. <code>e.preventDefault()</code> stops the browser's default action, such as a form reloading the page or a link navigating.</p>
        </div>
        <div class="lc-card">
          <h3>Passing handlers as props</h3>
          <p>A child component can't change the parent's state directly, but the parent can pass a function down. By convention, props that receive handlers start with <code>on</code> and the functions start with <code>handle</code>:</p>
          <div class="lc-code">function LikeButton({ onLike }) { return &lt;button onClick={onLike}&gt;👍&lt;/button&gt;; }<br>function Post() {<br>&nbsp;&nbsp;const [likes, setLikes] = useState(0);<br>&nbsp;&nbsp;function handleLike() { setLikes(l =&gt; l + 1); }<br>&nbsp;&nbsp;return &lt;LikeButton onLike={handleLike} /&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Calling the handler in JSX: <code>onClick={save()}</code>.</li>
            <li>Lower-case names: <code>onclick</code> is ignored with a warning — it must be <code>onClick</code>.</li>
            <li>Forgetting <code>e.preventDefault()</code> in an <code>onSubmit</code> handler, so the page reloads.</li>
            <li>Reading <code>e.target.value</code> inside a delayed callback after the input has already changed — copy the value to a variable first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a "Double" button to the starter's counter card, and make the keyboard box also log <code>e.key</code> when the user presses <kbd>Escape</kbd>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Event handlers are the best place for side effects like logging or sending data — they run only when the user acts, not on every render.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useState } from "react";
        import { createRoot } from "react-dom/client";

        const card = { border: "1px solid #e5e7eb", borderRadius: 8, padding: 12, marginBottom: 12 };

        function LikeButton({ label, onLike }) {
          // The child receives a handler from the parent and calls it on click.
          return <button onClick={onLike}>👍 {label}</button>;
        }

        function App() {
          const [likes, setLikes] = useState(0);
          const [lastKey, setLastKey] = useState("(none)");
          const [log, setLog] = useState([]);

          function addLog(message) {
            setLog(prev => [...prev.slice(-3), message]); // keep the last 4 messages
          }
          function handleLike() {
            setLikes(l => l + 1);
            addLog("like button clicked");
          }
          function handleKeyDown(e) {
            setLastKey(e.key);
            if (e.key === "Enter") addLog("Enter pressed with text: " + e.target.value);
          }

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 460 }}>
              <div style={card} onClick={() => addLog("card clicked (bubbled up)")}>
                <h3>Likes: {likes}</h3>
                <LikeButton label="Like (bubbles to card)" onLike={handleLike} />{" "}
                <button onClick={e => { e.stopPropagation(); addLog("stopPropagation: card not told"); }}>
                  Isolated click
                </button>
              </div>
              <div style={card}>
                <input placeholder="Type, then press Enter" onKeyDown={handleKeyDown} />
                <p>Last key: <strong>{lastKey}</strong></p>
              </div>
              <h4>Event log</h4>
              <ol>{log.map((m, i) => <li key={i}>{m}</li>)}</ol>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Conditional Rendering and Lists</h1>
        </div>
        <p class="lc-lead">Real screens change with data: show a spinner <em>or</em> results, one row <em>per</em> product. In React you use ordinary JavaScript — <code>if</code>, <code>? :</code>, <code>&amp;&amp;</code> and <code>.map()</code> — to decide what JSX to return.</p>
        <div class="lc-card">
          <h3>Three ways to render conditionally</h3>
          <div class="lc-code">// 1. if / early return — best for whole different screens<br>if (loading) return &lt;p&gt;Loading...&lt;/p&gt;;<br><br>// 2. ternary — choose between two pieces of JSX<br>&lt;p&gt;{isLoggedIn ? "Welcome back!" : "Please sign in"}&lt;/p&gt;<br><br>// 3. &amp;&amp; — show something or nothing<br>{cart.length &gt; 0 &amp;&amp; &lt;span&gt;{cart.length} items&lt;/span&gt;}</div>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td><code>if</code> + early <code>return</code></td><td>the whole output is different (loading, error, empty)</td></tr>
              <tr><td><code>cond ? A : B</code></td><td>one of two alternatives inside JSX</td></tr>
              <tr><td><code>cond &amp;&amp; A</code></td><td>show A or nothing</td></tr>
              <tr><td><code>return null</code></td><td>the component should render nothing at all</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The <code>0 &amp;&amp;</code> trap</h3>
          <div class="lc-code">const count = 0;<br>&lt;p&gt;{count &amp;&amp; &lt;span&gt;New messages!&lt;/span&gt;}&lt;/p&gt;</div>
          <p><strong>Expected output:</strong> the page shows <strong>0</strong>. <code>0 &amp;&amp; x</code> evaluates to <code>0</code>, and React renders numbers. <code>false</code>, <code>null</code> and <code>undefined</code> render nothing, but <code>0</code> and <code>NaN</code> do. Write <code>count &gt; 0 &amp;&amp; ...</code> instead.</p>
        </div>
        <div class="lc-card">
          <h3>Rendering lists with map()</h3>
          <div class="lc-code">const students = [<br>&nbsp;&nbsp;{ id: 101, name: "Arjun", marks: 88 },<br>&nbsp;&nbsp;{ id: 102, name: "Diya",  marks: 34 },<br>&nbsp;&nbsp;{ id: 103, name: "Kabir", marks: 72 },<br>];<br><br>&lt;ul&gt;<br>&nbsp;&nbsp;{students.map(s =&gt; (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;li key={s.id}&gt;{s.name} — {s.marks &gt;= 40 ? "Pass" : "Fail"}&lt;/li&gt;<br>&nbsp;&nbsp;))}<br>&lt;/ul&gt;</div>
          <p><strong>Expected output:</strong></p>
          <div class="lc-code">• Arjun — Pass<br>• Diya — Fail<br>• Kabir — Pass</div>
          <p>Filter or sort <em>before</em> mapping: <code>students.filter(s =&gt; s.marks &gt;= 40).map(...)</code>. Use <code>[...students].sort(...)</code> so you do not mutate the original array.</p>
        </div>
        <div class="lc-card">
          <h3>Why keys matter</h3>
          <p>A <code>key</code> tells React which item is which between renders, so it can keep the right state and DOM node with the right item when the list is reordered, filtered or added to.</p>
          <table class="lc-table">
            <thead><tr><th>Key choice</th><th>Verdict</th></tr></thead>
            <tbody>
              <tr><td>Database id: <code>key={s.id}</code></td><td>✅ Best — stable and unique</td></tr>
              <tr><td>Array index: <code>key={i}</code></td><td>⚠️ Only for static lists that never reorder, filter or insert</td></tr>
              <tr><td><code>key={Math.random()}</code></td><td>❌ New key every render → React destroys and recreates every item</td></tr>
              <tr><td>No key</td><td>❌ Console warning; React falls back to index</td></tr>
            </tbody>
          </table>
          <p>Keys must be unique among <strong>siblings</strong> only, and go on the outermost element returned from <code>map</code>. If you need a wrapper with a key, use <code>&lt;Fragment key={id}&gt;</code> (the short <code>&lt;&gt;</code> syntax cannot take a key).</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>{count &amp;&amp; ...}</code> with a number that can be 0.</li>
            <li>Forgetting <code>return</code> in a map with curly braces: <code>.map(s =&gt; { &lt;li&gt;... })</code> returns <code>undefined</code>. Use parentheses or write <code>return</code>.</li>
            <li>Putting <code>key</code> on the inner element instead of the one returned from <code>map</code>.</li>
            <li>Using index keys on a list the user can reorder — typed text in inputs jumps to the wrong row.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, add a "Sort by marks" checkbox. When checked, show the students highest-first (copy the array before sorting). Keep the empty-state message working.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Open the log panel at the bottom of the preview — React's "unique key" warning appears there if you delete a <code>key</code> prop.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useState } from "react";
        import { createRoot } from "react-dom/client";

        const students = [
          { id: 101, name: "Arjun", marks: 88 },
          { id: 102, name: "Diya", marks: 34 },
          { id: 103, name: "Kabir", marks: 72 },
          { id: 104, name: "Sana", marks: 95 },
        ];

        function StudentRow({ student }) {
          const passed = student.marks >= 40;
          return (
            <li style={{ color: passed ? "#065f46" : "#b91c1c" }}>
              {student.name}: {student.marks} — {passed ? "Pass" : "Fail"}
              {student.marks >= 90 && <strong> ⭐ Topper</strong>}
            </li>
          );
        }

        function App() {
          const [onlyPassed, setOnlyPassed] = useState(false);
          const [minMarks, setMinMarks] = useState(0);

          const visible = students
            .filter(s => !onlyPassed || s.marks >= 40)
            .filter(s => s.marks >= minMarks);
          const newMessages = 0;

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 460 }}>
              <h2>Results ({visible.length} of {students.length})</h2>
              <label>
                <input type="checkbox" checked={onlyPassed} onChange={e => setOnlyPassed(e.target.checked)} />
                {" "}Only passed
              </label>
              <p>
                Minimum marks: <button onClick={() => setMinMarks(m => m + 20)}>+20</button>{" "}
                <button onClick={() => setMinMarks(0)}>reset</button> ({minMarks})
              </p>
              {visible.length === 0
                ? <p><em>No students match these filters.</em></p>
                : <ul>{visible.map(s => <StudentRow key={s.id} student={s} />)}</ul>}
              <p>0 &amp;&amp; trap shows: [{newMessages && "new!"}]  Fixed: [{newMessages > 0 && "new!"}]</p>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Forms and Controlled Inputs</h1>
        </div>
        <p class="lc-lead">A <strong>controlled input</strong> gets its value from React state and reports every change through <code>onChange</code>. State becomes the single source of truth, so you can validate, format and react to input as the user types.</p>
        <div class="lc-card">
          <h3>The controlled input loop</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">state<small>name = "Ra"</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">value={name}<small>input shows "Ra"</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">user types "j"</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">onChange<small>setName("Raj")</small></div>
          </div>
          <div class="lc-code">const [name, setName] = useState("");<br>&lt;input value={name} onChange={e =&gt; setName(e.target.value)} /&gt;<br>&lt;p&gt;Hello, {name || "stranger"}!&lt;/p&gt;</div>
          <p><strong>Expected output</strong> after typing "Raj": <code>Hello, Raj!</code> updates on every keystroke.</p>
        </div>
        <div class="lc-card">
          <h3>Every input type</h3>
          <table class="lc-table">
            <thead><tr><th>Element</th><th>Value prop</th><th>Read in onChange</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;input type="text"&gt;</code>, <code>email</code>, <code>password</code></td><td><code>value</code></td><td><code>e.target.value</code> (always a string)</td></tr>
              <tr><td><code>&lt;input type="number"&gt;</code></td><td><code>value</code></td><td><code>e.target.value</code> — convert with <code>Number(...)</code></td></tr>
              <tr><td><code>&lt;input type="checkbox"&gt;</code></td><td><code>checked</code></td><td><code>e.target.checked</code></td></tr>
              <tr><td><code>&lt;input type="radio"&gt;</code></td><td><code>checked={size === "M"}</code></td><td><code>e.target.value</code></td></tr>
              <tr><td><code>&lt;select&gt;</code></td><td><code>value</code> on the select (not <code>selected</code> on options)</td><td><code>e.target.value</code></td></tr>
              <tr><td><code>&lt;textarea&gt;</code></td><td><code>value</code> (not children)</td><td><code>e.target.value</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: one handler for many fields</h3>
          <div class="lc-code">const [form, setForm] = useState({ name: "", email: "", course: "react" });<br><br>function handleChange(e) {<br>&nbsp;&nbsp;const { name, value } = e.target;          // the input's name attribute<br>&nbsp;&nbsp;setForm(prev =&gt; ({ ...prev, [name]: value }));<br>}<br><br>function handleSubmit(e) {<br>&nbsp;&nbsp;e.preventDefault();                        // stop the page reload<br>&nbsp;&nbsp;console.log("Submitted:", form);<br>}<br><br>&lt;form onSubmit={handleSubmit}&gt;<br>&nbsp;&nbsp;&lt;input name="name" value={form.name} onChange={handleChange} /&gt;<br>&nbsp;&nbsp;&lt;input name="email" value={form.email} onChange={handleChange} /&gt;<br>&nbsp;&nbsp;&lt;button type="submit"&gt;Register&lt;/button&gt;<br>&lt;/form&gt;</div>
          <p><strong>Expected output</strong> (console):</p>
          <div class="lc-code">Submitted: {"name":"Riya","email":"riya@example.com","course":"react"}</div>
        </div>
        <div class="lc-card">
          <h3>Validation from state</h3>
          <p>Compute errors during render instead of storing them in extra state:</p>
          <div class="lc-code">const emailError = form.email &amp;&amp; !form.email.includes("@") ? "Enter a valid email" : "";<br>const canSubmit = form.name.trim() !== "" &amp;&amp; form.email !== "" &amp;&amp; !emailError;<br>&lt;button disabled={!canSubmit}&gt;Register&lt;/button&gt;</div>
          <p>Always validate again on the server — client checks are for user experience, not security.</p>
        </div>
        <div class="lc-card">
          <h3>Controlled vs uncontrolled</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Controlled</th><th>Uncontrolled</th></tr></thead>
            <tbody>
              <tr><td>Value lives in</td><td>React state</td><td>the DOM</td></tr>
              <tr><td>Set initial value with</td><td><code>value</code> + <code>onChange</code></td><td><code>defaultValue</code> / <code>defaultChecked</code></td></tr>
              <tr><td>Read value</td><td>any time from state</td><td>on submit with <code>new FormData(form)</code> or a ref</td></tr>
              <tr><td>Best for</td><td>live validation, dependent fields</td><td>simple forms; React 19 form actions (lesson 16)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li><code>value</code> without <code>onChange</code> — the field becomes read-only and React warns.</li>
            <li>Starting with <code>useState()</code> (undefined) then setting a string — React warns that the input switched from uncontrolled to controlled. Start with <code>""</code>.</li>
            <li>Forgetting <code>e.preventDefault()</code> in <code>onSubmit</code>.</li>
            <li>Treating a number input's value as a number without converting it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a "Phone" field to the starter. Show an error unless it has exactly 10 digits (<code>/^\d{10}$/.test(phone)</code>) and keep the Register button disabled until it is valid.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Give every input a <code>&lt;label htmlFor="id"&gt;</code> (or wrap it in a label). It helps screen-reader users, and tests can find fields by their label.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useState } from "react";
        import { createRoot } from "react-dom/client";

        const field = { display: "block", margin: "8px 0" };

        function RegistrationForm() {
          const [form, setForm] = useState({ name: "", email: "", course: "react", agree: false });
          const [submitted, setSubmitted] = useState(null);

          function handleChange(e) {
            const { name, value, type, checked } = e.target;
            setForm(prev => ({ ...prev, [name]: type === "checkbox" ? checked : value }));
          }

          // Derived values: computed on every render, never stored in state
          const emailError = form.email && !form.email.includes("@") ? "Enter a valid email" : "";
          const canSubmit = form.name.trim() !== "" && form.email !== "" && !emailError && form.agree;

          function handleSubmit(e) {
            e.preventDefault(); // stop the browser from reloading the page
            setSubmitted(form);
            console.log("Submitted:", form);
          }

          return (
            <form onSubmit={handleSubmit} style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 420 }}>
              <h2>Workshop Registration</h2>
              <label style={field}>Name <input name="name" value={form.name} onChange={handleChange} /></label>
              <label style={field}>Email <input name="email" value={form.email} onChange={handleChange} /></label>
              {emailError && <p style={{ color: "#b91c1c", margin: 0 }}>{emailError}</p>}
              <label style={field}>Course{" "}
                <select name="course" value={form.course} onChange={handleChange}>
                  <option value="react">React</option>
                  <option value="node">Node.js</option>
                </select>
              </label>
              <label style={field}>
                <input type="checkbox" name="agree" checked={form.agree} onChange={handleChange} /> I agree to the rules
              </label>
              <button type="submit" disabled={!canSubmit}>Register</button>
              <p>Live state: {JSON.stringify(form)}</p>
              {submitted && <p style={{ color: "#065f46" }}>✅ Registered {submitted.name} for {submitted.course}</p>}
            </form>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><RegistrationForm /></StrictMode>);
      JSX
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Lifting State Up</h1>
        </div>
        <p class="lc-lead">When two components need the <strong>same</strong> changing data, move the state to their <strong>closest common parent</strong>. The parent passes the value down as props and passes functions down so children can ask for changes.</p>
        <div class="lc-card">
          <h3>Before and after</h3>
          <div class="lc-two-col">
            <div>
              <div class="lc-col-label">❌ Before: each panel has its own state</div>
              <p>Two <code>Panel</code>s each keep <code>isOpen</code>. They cannot coordinate, so both can be open at once.</p>
            </div>
            <div>
              <div class="lc-col-label">✅ After: the parent owns <code>activeIndex</code></div>
              <p>The parent decides which panel is open and passes <code>isActive</code> and <code>onShow</code> to each panel.</p>
            </div>
          </div>
          <div class="lc-flow">
            <div class="lc-flow-step">Accordion<small>activeIndex state</small></div>
            <div class="lc-flow-arrow">↓ props</div>
            <div class="lc-flow-step">Panel ×3<small>isActive, onShow</small></div>
            <div class="lc-flow-arrow">↑ callback</div>
            <div class="lc-flow-step">onShow()<small>parent updates state</small></div>
          </div>
        </div>
        <div class="lc-card">
          <h3>Worked example: accordion</h3>
          <div class="lc-code">function Panel({ title, isActive, onShow, children }) {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;section&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h3&gt;{title}&lt;/h3&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{isActive ? &lt;p&gt;{children}&lt;/p&gt; : &lt;button onClick={onShow}&gt;Show&lt;/button&gt;}<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/section&gt;<br>&nbsp;&nbsp;);<br>}<br><br>function Accordion() {<br>&nbsp;&nbsp;const [activeIndex, setActiveIndex] = useState(0);<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Panel title="About" isActive={activeIndex === 0} onShow={() =&gt; setActiveIndex(0)}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;We teach coding.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/Panel&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Panel title="Fees" isActive={activeIndex === 1} onShow={() =&gt; setActiveIndex(1)}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;₹499 per course.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/Panel&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/&gt;<br>&nbsp;&nbsp;);<br>}</div>
          <p><strong>Expected output:</strong> "About" starts open. Clicking "Show" on Fees opens Fees <em>and</em> closes About — only one panel is open at a time.</p>
        </div>
        <div class="lc-card">
          <h3>Controlled vs uncontrolled components</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Uncontrolled component</th><th>Controlled component</th></tr></thead>
            <tbody>
              <tr><td>Who owns the state?</td><td>the component itself</td><td>its parent (via props)</td></tr>
              <tr><td>Parent can change it?</td><td>No</td><td>Yes</td></tr>
              <tr><td>Example</td><td><code>Panel</code> with its own <code>isOpen</code></td><td><code>Panel</code> with <code>isActive</code> + <code>onShow</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Single source of truth</h3>
          <p>Each piece of state should live in exactly <strong>one</strong> component. Other components receive it as props. Copying props into state (<code>useState(props.value)</code>) creates a second copy that silently stops updating when the prop changes.</p>
          <ul class="lc-list">
            <li>Find every component that <em>reads</em> the data.</li>
            <li>Find their closest common parent — put the state there.</li>
            <li>Pass the value down and pass an <code>onSomething</code> callback down for changes.</li>
            <li>If this means passing props through many levels, use Context (lesson 12).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Keeping the same data in two siblings and trying to "sync" them with effects.</li>
            <li>Initialising state from a prop and expecting it to follow the prop later.</li>
            <li>Lifting state too high (to <code>App</code>) when only one small subtree needs it — this re-renders more than necessary.</li>
            <li>Passing the setter with a confusing name — prefer an intention-revealing callback like <code>onSelect</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>The starter is a currency converter: ₹ and $ inputs share one state in the parent. Add a third input for € (use 1 EUR = 97 INR) so that typing in any box updates the other two.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Store the minimum state (one amount + which currency) and compute everything else during render.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useState } from "react";
        import { createRoot } from "react-dom/client";

        const INR_PER_USD = 88; // fixed demo rate so the output is predictable

        // A controlled child: it owns no state, it just shows props and reports changes.
        function AmountInput({ label, value, onChange }) {
          return (
            <label style={{ display: "block", margin: "10px 0" }}>
              {label}{" "}
              <input type="number" value={value} onChange={e => onChange(e.target.value)} />
            </label>
          );
        }

        function Converter() {
          // Lifted state: one amount and which box it was typed in.
          const [amount, setAmount] = useState("880");
          const [currency, setCurrency] = useState("INR");

          const num = Number(amount);
          const inr = currency === "INR" ? amount : amount === "" ? "" : String(+(num * INR_PER_USD).toFixed(2));
          const usd = currency === "USD" ? amount : amount === "" ? "" : String(+(num / INR_PER_USD).toFixed(2));

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 420 }}>
              <h2>Currency Converter</h2>
              <AmountInput label="₹ INR" value={inr} onChange={v => { setAmount(v); setCurrency("INR"); }} />
              <AmountInput label="$ USD" value={usd} onChange={v => { setAmount(v); setCurrency("USD"); }} />
              <p>Parent state: amount = "{amount}", typed in {currency}</p>
              <p>Summary: ₹{inr || 0} = ${usd || 0}</p>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><Converter /></StrictMode>);
      JSX
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useEffect and Side Effects</h1>
        </div>
        <p class="lc-lead">Rendering must be pure, but apps also need to talk to the outside world: timers, browser APIs, network connections. <code>useEffect</code> lets a component <strong>synchronise with an external system</strong> after React has updated the screen.</p>
        <div class="lc-card">
          <h3>Anatomy of an effect</h3>
          <div class="lc-code">useEffect(() =&gt; {<br>&nbsp;&nbsp;// setup: runs after the component appears on screen<br>&nbsp;&nbsp;const id = setInterval(() =&gt; setSeconds(s =&gt; s + 1), 1000);<br><br>&nbsp;&nbsp;return () =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;// cleanup: runs before the next setup and when the component is removed<br>&nbsp;&nbsp;&nbsp;&nbsp;clearInterval(id);<br>&nbsp;&nbsp;};<br>}, []); // dependency array</div>
        </div>
        <div class="lc-card">
          <h3>The dependency array</h3>
          <table class="lc-table">
            <thead><tr><th>You write</th><th>Setup runs</th></tr></thead>
            <tbody>
              <tr><td>no array: <code>useEffect(fn)</code></td><td>after <strong>every</strong> render</td></tr>
              <tr><td><code>useEffect(fn, [])</code></td><td>after the <strong>first</strong> render (mount) only*</td></tr>
              <tr><td><code>useEffect(fn, [roomId])</code></td><td>after mount, and again whenever <code>roomId</code> changes (cleanup of the old one runs first)</td></tr>
            </tbody>
          </table>
          <p>List <strong>every</strong> prop, state or variable from the component that the effect uses. The <code>eslint-plugin-react-hooks</code> lint rule (included in the Vite template) checks this for you.</p>
        </div>
        <div class="lc-card">
          <h3>*StrictMode runs effects twice in development</h3>
          <p>Vite wraps your app in <code>&lt;StrictMode&gt;</code>. In <strong>development only</strong>, React mounts each component, immediately runs the cleanup, then runs the setup again. This is a deliberate stress test that exposes effects with missing cleanup.</p>
          <div class="lc-code">useEffect(() =&gt; {<br>&nbsp;&nbsp;console.log("connect");<br>&nbsp;&nbsp;return () =&gt; console.log("disconnect");<br>}, []);</div>
          <p><strong>Expected output</strong> on mount:</p>
          <div class="lc-code">Development (StrictMode):  connect → disconnect → connect<br>Production build:          connect</div>
          <p>Don't try to "fix" this with a flag. If your effect works correctly after setup → cleanup → setup, it is correct. The starter uses StrictMode, so watch the log panel.</p>
        </div>
        <div class="lc-card">
          <h3>You might not need an effect</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Instead of an effect…</th></tr></thead>
            <tbody>
              <tr><td>Value computed from props/state (full name, filtered list)</td><td>calculate it during render</td></tr>
              <tr><td>Something should happen because the user clicked</td><td>do it in the event handler</td></tr>
              <tr><td>Reset state when a prop changes</td><td>give the component a <code>key</code> so React re-creates it</td></tr>
              <tr><td>Fetching data in a real app</td><td>a framework loader or TanStack Query (lesson 10)</td></tr>
            </tbody>
          </table>
          <p>Good uses: timers, subscriptions (<code>window.addEventListener</code>, WebSockets), syncing <code>document.title</code>, controlling non-React widgets.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Missing cleanup — intervals and listeners pile up and leak memory.</li>
            <li>Missing dependencies — the effect keeps using stale values from the first render.</li>
            <li>Setting state that is also a dependency without a condition → an infinite loop.</li>
            <li>Making the effect function itself <code>async</code> — it must return a cleanup function or nothing, not a Promise. Define an async function inside and call it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a "speed" select (1× / 2×) to the starter's stopwatch. Put <code>speed</code> in the dependency array so the interval restarts with <code>1000 / speed</code> ms, and check that the log shows a cleanup before each new setup.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> React 19.2 added <code>useEffectEvent</code> for logic inside an effect that should read the latest props without being a dependency (for example, a theme used only when showing a notification). Learn the basics first, then read the "Separating Events from Effects" page on react.dev.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useEffect, useState } from "react";
        import { createRoot } from "react-dom/client";

        function Stopwatch() {
          const [seconds, setSeconds] = useState(0);
          const [running, setRunning] = useState(true);

          // Effect 1: an interval that depends on `running`
          useEffect(() => {
            if (!running) return; // nothing to set up
            console.log("setup: start interval");
            const id = setInterval(() => setSeconds(s => s + 1), 1000);
            return () => {
              console.log("cleanup: clear interval");
              clearInterval(id);
            };
          }, [running]);

          // Effect 2: keep the tab title in sync with state
          useEffect(() => {
            document.title = `⏱ ${seconds}s`;
          }, [seconds]);

          return (
            <div>
              <h2>Stopwatch: {seconds}s</h2>
              <button onClick={() => setRunning(r => !r)}>{running ? "Pause" : "Resume"}</button>{" "}
              <button onClick={() => setSeconds(0)}>Reset</button>
            </div>
          );
        }

        function App() {
          const [show, setShow] = useState(true);
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem" }}>
              <button onClick={() => setShow(s => !s)}>{show ? "Unmount" : "Mount"} stopwatch</button>
              {show && <Stopwatch />}
              <p style={{ color: "#6b7280" }}>StrictMode (dev): watch the log for setup → cleanup → setup on mount.</p>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Fetching Data Safely</h1>
        </div>
        <p class="lc-lead">Loading data from an API looks simple, but a correct version handles four things: <strong>loading</strong>, <strong>HTTP errors</strong>, <strong>network errors</strong> and <strong>stale responses</strong> when the user moves on before the request finishes.</p>
        <div class="lc-card">
          <h3>fetch() does not throw on 404 or 500</h3>
          <p><code>fetch</code> only rejects when the request could not be made at all (offline, DNS, CORS, or aborted). A 404 or 500 still <em>resolves</em> — you must check <code>res.ok</code> (true for status 200–299).</p>
          <div class="lc-code">async function fetchJson(url, signal) {<br>&nbsp;&nbsp;const res = await fetch(url, { signal });<br>&nbsp;&nbsp;if (!res.ok) throw new Error(`HTTP ${res.status}`);<br>&nbsp;&nbsp;return res.json();<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: an effect with AbortController</h3>
          <div class="lc-code">function UserProfile({ userId }) {<br>&nbsp;&nbsp;const [result, setResult] = useState({ id: null, data: null, error: null });<br><br>&nbsp;&nbsp;useEffect(() =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;const controller = new AbortController();<br>&nbsp;&nbsp;&nbsp;&nbsp;fetchJson(`/api/users/${userId}`, controller.signal)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.then(data =&gt; setResult({ id: userId, data, error: null }))<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.catch(err =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (err.name === "AbortError") return;      // we cancelled it — ignore<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;setResult({ id: userId, data: null, error: err.message });<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});<br>&nbsp;&nbsp;&nbsp;&nbsp;return () =&gt; controller.abort();                // cancel when userId changes or on unmount<br>&nbsp;&nbsp;}, [userId]);<br><br>&nbsp;&nbsp;if (result.id !== userId) return &lt;p&gt;Loading…&lt;/p&gt;;  // loading is derived, not stored<br>&nbsp;&nbsp;if (result.error) return &lt;p&gt;Error: {result.error}&lt;/p&gt;;<br>&nbsp;&nbsp;return &lt;h3&gt;{result.data.name}&lt;/h3&gt;;<br>}</div>
          <p><strong>Expected output</strong> for user 1, then a missing user 99:</p>
          <div class="lc-code">Loading…<br>Asha Rao<br>Loading…<br>Error: HTTP 404</div>
        </div>
        <div class="lc-card">
          <h3>Why the cleanup matters: race conditions</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">click user 1<small>request A (slow)</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">click user 2<small>request B (fast)</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">B arrives<small>shows user 2</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">A arrives<small>❌ overwrites with user 1</small></div>
          </div>
          <p>Aborting request A in the cleanup means its result can never overwrite newer data. It also stops wasted network work. In StrictMode development, the first request is aborted immediately and a second one is sent — that is expected.</p>
        </div>
        <div class="lc-card">
          <h3>In real projects: TanStack Query or a framework</h3>
          <p>Hand-written effects don't cache, dedupe or retry. Most teams use <strong>TanStack Query</strong> (formerly "React Query", now v5) or their framework's data loading (React Router loaders, Next.js Server Components).</p>
          <div class="lc-code">import { useQuery } from "@tanstack/react-query";<br><br>function UserProfile({ userId }) {<br>&nbsp;&nbsp;const { data, isPending, isError, error } = useQuery({<br>&nbsp;&nbsp;&nbsp;&nbsp;queryKey: ["user", userId],<br>&nbsp;&nbsp;&nbsp;&nbsp;queryFn: ({ signal }) =&gt; fetchJson(`/api/users/${userId}`, signal),<br>&nbsp;&nbsp;});<br>&nbsp;&nbsp;if (isPending) return &lt;p&gt;Loading…&lt;/p&gt;;<br>&nbsp;&nbsp;if (isError) return &lt;p&gt;Error: {error.message}&lt;/p&gt;;<br>&nbsp;&nbsp;return &lt;h3&gt;{data.name}&lt;/h3&gt;;<br>}</div>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>useEffect + fetch</th><th>TanStack Query</th></tr></thead>
            <tbody>
              <tr><td>Loading / error state</td><td>write it yourself</td><td>built in</td></tr>
              <tr><td>Cache between screens</td><td>no</td><td>yes, keyed by <code>queryKey</code></td></tr>
              <tr><td>Retry, refetch on focus</td><td>no</td><td>yes</td></tr>
              <tr><td>Cancel stale requests</td><td>AbortController by hand</td><td>passes you a <code>signal</code></td></tr>
            </tbody>
          </table>
          <p>The app needs a <code>QueryClientProvider</code> at the top: <code>&lt;QueryClientProvider client={new QueryClient()}&gt;</code> (create the client once, outside components).</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>No <code>res.ok</code> check — a 404 HTML page is passed to <code>res.json()</code> and fails with a confusing "Unexpected token" error.</li>
            <li>No cleanup — an old slow response overwrites the newer one.</li>
            <li>Showing an <code>AbortError</code> to the user; it only means you cancelled the request.</li>
            <li>Leaving out a dependency like <code>userId</code>, so changing the user never re-fetches.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>The starter uses <code>fakeFetch</code>, which returns real <code>Response</code> objects after a delay (so it works offline). Add a "Retry" button to the error message that re-runs the request. Hint: keep a <code>reloadCount</code> state and add it to the dependency array.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never put API secret keys in React code — everything shipped to the browser can be read by users. Call your own backend, which holds the secret.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useEffect, useState } from "react";
        import { createRoot } from "react-dom/client";

        // A stand-in for fetch(): same signature, real Response objects, works offline.
        const USERS = { 1: { name: "Asha Rao", city: "Pune" }, 2: { name: "Vikram Singh", city: "Jaipur" } };
        function fakeFetch(url, { signal } = {}) {
          return new Promise((resolve, reject) => {
            const id = url.split("/").pop();
            const timer = setTimeout(() => {
              const user = USERS[id];
              resolve(user ? new Response(JSON.stringify(user), { status: 200 }) : new Response("Not found", { status: 404 }));
            }, id === "1" ? 1200 : 400); // user 1 is slow on purpose
            signal?.addEventListener("abort", () => { clearTimeout(timer); reject(new DOMException("Aborted", "AbortError")); });
          });
        }

        async function fetchJson(url, signal) {
          const res = await fakeFetch(url, { signal }); // in a real app: fetch(url, { signal })
          if (!res.ok) throw new Error(`HTTP ${res.status}`);
          return res.json();
        }

        function UserProfile({ userId }) {
          const [result, setResult] = useState({ id: null, data: null, error: null });
          useEffect(() => {
            const controller = new AbortController();
            console.log("request user", userId);
            fetchJson(`/api/users/${userId}`, controller.signal)
              .then(data => setResult({ id: userId, data, error: null }))
              .catch(err => {
                if (err.name === "AbortError") return console.log("aborted user", userId);
                setResult({ id: userId, data: null, error: err.message });
              });
            return () => controller.abort();
          }, [userId]);

          if (result.id !== userId) return <p>Loading user {userId}…</p>;
          if (result.error) return <p style={{ color: "#b91c1c" }}>Error: {result.error}</p>;
          return <p>✅ {result.data.name} from {result.data.city}</p>;
        }

        function App() {
          const [userId, setUserId] = useState(1);
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem" }}>
              <h2>User Profile</h2>
              {[1, 2, 99].map(id => <button key={id} onClick={() => setUserId(id)}>User {id}</button>)}
              <UserProfile userId={userId} />
              <small>Click User 1 then quickly User 2: the slow response is aborted.</small>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useRef and the DOM</h1>
        </div>
        <p class="lc-lead"><code>useRef</code> gives a component a box, <code>{ current: ... }</code>, that keeps its value between renders <strong>without</strong> causing a re-render when it changes. Use it to reach DOM elements and to remember values the UI does not display.</p>
        <div class="lc-card">
          <h3>Two jobs for a ref</h3>
          <table class="lc-table">
            <thead><tr><th>Job</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Point at a DOM node</td><td><code>&lt;input ref={inputRef} /&gt;</code> then <code>inputRef.current.focus()</code></td></tr>
              <tr><td>Store a mutable value</td><td>an interval id, the previous value, a click count for analytics</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: focus and scroll</h3>
          <div class="lc-code">import { useRef } from "react";<br><br>function SearchBox() {<br>&nbsp;&nbsp;const inputRef = useRef(null);<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input ref={inputRef} placeholder="Search courses" /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button onClick={() =&gt; inputRef.current.focus()}&gt;Focus search&lt;/button&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/&gt;<br>&nbsp;&nbsp;);<br>}</div>
          <p><strong>Expected output:</strong> clicking the button puts the cursor in the input. React sets <code>inputRef.current</code> to the <code>&lt;input&gt;</code> element after it is added to the page, and back to <code>null</code> when it is removed.</p>
        </div>
        <div class="lc-card">
          <h3>ref vs state</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>useState</code></th><th><code>useRef</code></th></tr></thead>
            <tbody>
              <tr><td>Changing it re-renders?</td><td>Yes</td><td>No</td></tr>
              <tr><td>How to change</td><td><code>setValue(x)</code></td><td><code>ref.current = x</code></td></tr>
              <tr><td>Read during render?</td><td>Yes</td><td>Avoid (except for lazy initialisation)</td></tr>
              <tr><td>Use for</td><td>anything shown on screen</td><td>DOM nodes, timer ids, values used only in handlers/effects</td></tr>
            </tbody>
          </table>
          <div class="lc-code">const clicks = useRef(0);<br>function handleClick() {<br>&nbsp;&nbsp;clicks.current += 1;<br>&nbsp;&nbsp;console.log("clicked", clicks.current, "times");  // logs 1, 2, 3...<br>}<br>// but {clicks.current} in JSX would NOT update on screen by itself</div>
        </div>
        <div class="lc-card">
          <h3>React 19: ref is just a prop</h3>
          <p>To let a parent reach an element inside <em>your</em> component, accept <code>ref</code> like any other prop and put it on the element:</p>
          <div class="lc-code">function TextField({ label, ref }) {<br>&nbsp;&nbsp;return &lt;label&gt;{label} &lt;input ref={ref} /&gt;&lt;/label&gt;;<br>}<br><br>// parent<br>const nameRef = useRef(null);<br>&lt;TextField label="Name" ref={nameRef} /&gt;</div>
          <p><strong>Old way — don't use in new code:</strong> <code>const TextField = forwardRef((props, ref) =&gt; ...)</code>. It still works in React 19, but it is no longer needed and React plans to deprecate it.</p>
          <p>React 19 also lets a <strong>ref callback return a cleanup function</strong>: <code>ref={node =&gt; { observer.observe(node); return () =&gt; observer.unobserve(node); }}</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Using a ref for data you display — the screen will not update. Use state.</li>
            <li>Reading <code>ref.current</code> during the first render, when the DOM node does not exist yet (it is <code>null</code>). Use it in handlers or effects.</li>
            <li>Reaching for refs to change content (<code>ref.current.innerText = ...</code>) — let React render content from state.</li>
            <li>Wrapping new components in <code>forwardRef</code> out of habit.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a "Scroll to bottom" button to the starter's message list. Put a ref on an empty <code>&lt;div&gt;</code> after the last message and call <code>ref.current.scrollIntoView({ behavior: "smooth" })</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Refs are an "escape hatch". If you can do something with props and state, do that; use refs for focus, scrolling, measuring and third-party widgets.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useRef, useState } from "react";
        import { createRoot } from "react-dom/client";

        // React 19: `ref` arrives as a normal prop — no forwardRef needed.
        function TextField({ label, ref }) {
          return (
            <label style={{ display: "block", margin: "8px 0" }}>
              {label} <input ref={ref} />
            </label>
          );
        }

        function App() {
          const nameRef = useRef(null);   // will point at the <input> DOM node
          const clicksRef = useRef(0);    // mutable value: changing it does NOT re-render
          const [clicksState, setClicksState] = useState(0);
          const [messages, setMessages] = useState(["Welcome!", "Refs keep values between renders."]);

          function handleBoth() {
            clicksRef.current += 1;       // updates silently
            setClicksState(c => c + 1);   // updates and re-renders
            console.log("ref =", clicksRef.current, "| state will become", clicksState + 1);
          }
          function refOnly() {
            clicksRef.current += 1;
            console.log("ref only =", clicksRef.current, "(screen does not change)");
          }

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 440 }}>
              <TextField label="Name" ref={nameRef} />
              <button onClick={() => nameRef.current.focus()}>Focus the Name field</button>
              <h3>Clicks in state: {clicksState}</h3>
              <p style={{ color: "#6b7280" }}>The ref value is only printed in the log panel below.</p>
              <button onClick={handleBoth}>Update ref + state</button>{" "}
              <button onClick={refOnly}>Update ref only</button>
              <ul>{messages.map((m, i) => <li key={i}>{m}</li>)}</ul>
              <button onClick={() => setMessages(ms => [...ms, "Message " + (ms.length + 1)])}>Add message</button>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Sharing Data with Context</h1>
        </div>
        <p class="lc-lead">Passing the same prop through five layers of components that don't use it is called <strong>prop drilling</strong>. <strong>Context</strong> lets a parent provide a value that <em>any</em> component below it can read directly.</p>
        <div class="lc-card">
          <h3>Prop drilling vs context</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">App<small>provides theme</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Layout<small>doesn't care</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Sidebar<small>doesn't care</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Button<small>useContext(ThemeContext)</small></div>
          </div>
          <p>With context, <code>Layout</code> and <code>Sidebar</code> no longer need a <code>theme</code> prop.</p>
        </div>
        <div class="lc-card">
          <h3>Three steps</h3>
          <div class="lc-code">import { createContext, useContext, useState } from "react";<br><br>// 1. Create (the argument is the default value)<br>const ThemeContext = createContext("light");<br><br>// 2. Provide — React 19: render the context itself<br>function App() {<br>&nbsp;&nbsp;const [theme, setTheme] = useState("dark");<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;ThemeContext value={theme}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Toolbar /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ThemeContext&gt;<br>&nbsp;&nbsp;);<br>}<br><br>// 3. Consume anywhere below<br>function Toolbar() {<br>&nbsp;&nbsp;const theme = useContext(ThemeContext);<br>&nbsp;&nbsp;return &lt;p&gt;Current theme: {theme}&lt;/p&gt;;<br>}</div>
          <p><strong>Expected output:</strong> <code>Current theme: dark</code>. A component with <em>no</em> provider above it gets the default: <code>Current theme: light</code>.</p>
          <p><strong>Old way:</strong> <code>&lt;ThemeContext.Provider value={theme}&gt;</code> still works in React 19, but the shorter <code>&lt;ThemeContext value={theme}&gt;</code> is now preferred and <code>.Provider</code> will be deprecated in a future version.</p>
        </div>
        <div class="lc-card">
          <h3>Worked pattern: a provider component + custom hook</h3>
          <div class="lc-code">const AuthContext = createContext(null);<br><br>export function AuthProvider({ children }) {<br>&nbsp;&nbsp;const [user, setUser] = useState(null);<br>&nbsp;&nbsp;const value = { user, login: name =&gt; setUser({ name }), logout: () =&gt; setUser(null) };<br>&nbsp;&nbsp;return &lt;AuthContext value={value}&gt;{children}&lt;/AuthContext&gt;;<br>}<br><br>export function useAuth() {<br>&nbsp;&nbsp;const ctx = useContext(AuthContext);<br>&nbsp;&nbsp;if (ctx === null) throw new Error("useAuth must be used inside &lt;AuthProvider&gt;");<br>&nbsp;&nbsp;return ctx;<br>}</div>
          <p>Components call <code>const { user, logout } = useAuth()</code>. The custom hook hides the context object and gives a clear error if the provider is missing.</p>
        </div>
        <div class="lc-card">
          <h3>When to use context</h3>
          <table class="lc-table">
            <thead><tr><th>Good fit</th><th>Probably not</th></tr></thead>
            <tbody>
              <tr><td>Theme, language, logged-in user</td><td>Data only one or two levels down — just pass props</td></tr>
              <tr><td>A cart or settings used across many screens</td><td>Server data (use TanStack Query / a framework)</td></tr>
              <tr><td>Values that change rarely</td><td>Values that change many times per second</td></tr>
            </tbody>
          </table>
          <p>Every component that reads a context re-renders when its value changes. Split unrelated data into separate contexts (<code>ThemeContext</code>, <code>AuthContext</code>) so a theme change does not re-render cart components.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Calling <code>useContext</code> in a component that is <em>above</em> or outside the provider — you silently get the default value.</li>
            <li>Passing the context's name wrong: <code>useContext(ThemeProvider)</code> instead of <code>useContext(ThemeContext)</code>.</li>
            <li>Putting everything in one giant "AppContext".</li>
            <li>Forgetting that the provider's <code>value</code> must include setter functions if children need to change it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a language context to the starter with values <code>"en"</code> and <code>"hi"</code>. Make the greeting show "Hello" or "नमस्ते" and add a toggle button in the header.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> React 19's <code>use(ThemeContext)</code> reads context too, and unlike <code>useContext</code> it may be called inside <code>if</code> blocks. <code>useContext</code> remains perfectly fine for everyday use.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, createContext, useContext, useState } from "react";
        import { createRoot } from "react-dom/client";

        const ThemeContext = createContext("light");   // default when no provider is above
        const AuthContext = createContext(null);

        function AuthProvider({ children }) {
          const [user, setUser] = useState(null);
          const value = { user, login: name => setUser({ name }), logout: () => setUser(null) };
          return <AuthContext value={value}>{children}</AuthContext>;
        }

        function useAuth() {
          const ctx = useContext(AuthContext);
          if (ctx === null) throw new Error("useAuth must be used inside <AuthProvider>");
          return ctx;
        }

        const styles = {
          light: { background: "#ffffff", color: "#111827" },
          dark: { background: "#111827", color: "#f9fafb" },
        };

        function Header({ onToggleTheme }) {
          const theme = useContext(ThemeContext);
          const { user, login, logout } = useAuth();
          return (
            <header style={{ ...styles[theme], padding: 12, border: "1px solid #9ca3af", borderRadius: 8 }}>
              <strong>Theme: {theme}</strong>{" "}
              <button onClick={onToggleTheme}>Toggle theme</button>{" "}
              {user
                ? <>Signed in as {user.name} <button onClick={logout}>Log out</button></>
                : <button onClick={() => login("Neha")}>Log in as Neha</button>}
            </header>
          );
        }

        function Page() {
          // No theme prop was passed through Page — Header reads the context directly.
          return <main><Header onToggleTheme={() => {}} /></main>;
        }

        function App() {
          const [theme, setTheme] = useState("dark");
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", display: "grid", gap: 12 }}>
              <AuthProvider>
                <ThemeContext value={theme}>
                  <Header onToggleTheme={() => setTheme(t => (t === "dark" ? "light" : "dark"))} />
                </ThemeContext>
                <p>Outside the ThemeContext provider (uses the default "light"):</p>
                <Page />
              </AuthProvider>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">useReducer for Complex State</h1>
        </div>
        <p class="lc-lead">When many event handlers update the same state in different ways, the logic gets scattered. <code>useReducer</code> moves all update logic into one pure function — the <strong>reducer</strong> — and components just <strong>dispatch</strong> actions that describe what happened.</p>
        <div class="lc-card">
          <h3>How it works</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">dispatch(action)<small>{ type: "added", item }</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">reducer(state, action)<small>returns new state</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">re-render<small>with new state</small></div>
          </div>
          <div class="lc-code">const [state, dispatch] = useReducer(reducer, initialState);</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: a shopping cart</h3>
          <div class="lc-code">function cartReducer(cart, action) {<br>&nbsp;&nbsp;switch (action.type) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "added": {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const found = cart.find(i =&gt; i.id === action.item.id);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (found) return cart.map(i =&gt; i.id === action.item.id ? { ...i, qty: i.qty + 1 } : i);<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return [...cart, { ...action.item, qty: 1 }];<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;&nbsp;&nbsp;case "removed":<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return cart.filter(i =&gt; i.id !== action.id);<br>&nbsp;&nbsp;&nbsp;&nbsp;case "cleared":<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return [];<br>&nbsp;&nbsp;&nbsp;&nbsp;default:<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Error("Unknown action: " + action.type);<br>&nbsp;&nbsp;}<br>}<br><br>let cart = [];<br>cart = cartReducer(cart, { type: "added", item: { id: 1, name: "Pen", price: 20 } });<br>cart = cartReducer(cart, { type: "added", item: { id: 1, name: "Pen", price: 20 } });<br>console.log(cart);</div>
          <p><strong>Expected output:</strong></p>
          <div class="lc-code">[{"id":1,"name":"Pen","price":20,"qty":2}]</div>
          <p>Because a reducer is a plain function, you can test it without rendering anything.</p>
        </div>
        <div class="lc-card">
          <h3>Reducer rules</h3>
          <ul class="lc-list">
            <li><strong>Pure</strong>: same state + action → same result. No fetching, timers, random numbers or logging with side effects.</li>
            <li><strong>Immutable</strong>: return a new object/array; never <code>push</code> or assign into the old state.</li>
            <li>Name actions as <strong>what happened</strong> (<code>"added"</code>, <code>"removed"</code>), not how to change state.</li>
            <li>In StrictMode development React calls your reducer <strong>twice</strong> to catch impure reducers — a pure one gives the same answer both times.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>useState or useReducer?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>useState</th><th>useReducer</th></tr></thead>
            <tbody>
              <tr><td>Best for</td><td>independent simple values</td><td>related values updated in many ways</td></tr>
              <tr><td>Update logic lives</td><td>in each event handler</td><td>in one reducer function</td></tr>
              <tr><td>Testing</td><td>render the component</td><td>call the reducer directly</td></tr>
              <tr><td>Debugging</td><td>"which handler set this?"</td><td>log every action in one place</td></tr>
            </tbody>
          </table>
          <p>Combine it with context to share <code>state</code> and <code>dispatch</code> with a whole subtree — a small, built-in alternative to state libraries such as Redux Toolkit or Zustand.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Mutating: <code>state.items.push(x); return state;</code> — the same array comes back, so React may skip the update.</li>
            <li>Forgetting to <code>return</code> in a <code>case</code>, so the next case runs or <code>undefined</code> becomes the state.</li>
            <li>Doing side effects (API calls) inside the reducer — do them in event handlers or effects.</li>
            <li>Silently returning the old state for unknown actions hides typos; throwing an error finds them fast.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a <code>"decremented"</code> action to the starter's reducer that lowers an item's <code>qty</code> by 1 and removes the item when it reaches 0. Add a "−" button to each row.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep the reducer outside the component. It then has no access to props or state except through its arguments, which keeps it pure and easy to test.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useReducer } from "react";
        import { createRoot } from "react-dom/client";

        const PRODUCTS = [
          { id: 1, name: "Notebook", price: 60 },
          { id: 2, name: "Gel pen", price: 25 },
          { id: 3, name: "Geometry box", price: 180 },
        ];

        // Pure function: (current state, action) -> next state
        function cartReducer(cart, action) {
          switch (action.type) {
            case "added": {
              const found = cart.find(i => i.id === action.item.id);
              if (found) return cart.map(i => (i.id === action.item.id ? { ...i, qty: i.qty + 1 } : i));
              return [...cart, { ...action.item, qty: 1 }];
            }
            case "removed":
              return cart.filter(i => i.id !== action.id);
            case "cleared":
              return [];
            default:
              throw new Error("Unknown action: " + action.type);
          }
        }

        function Cart() {
          const [cart, rawDispatch] = useReducer(cartReducer, []);
          const dispatch = action => { console.log("dispatch", action.type); rawDispatch(action); };
          const total = cart.reduce((sum, i) => sum + i.price * i.qty, 0);   // derived

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 440 }}>
              <h2>Shop</h2>
              {PRODUCTS.map(p => (
                <button key={p.id} onClick={() => dispatch({ type: "added", item: p })} style={{ marginRight: 6 }}>
                  + {p.name} (₹{p.price})
                </button>
              ))}
              <h3>Cart ({cart.length} products)</h3>
              <ul>
                {cart.map(i => (
                  <li key={i.id}>
                    {i.name} × {i.qty} = ₹{i.price * i.qty}{" "}
                    <button onClick={() => dispatch({ type: "removed", id: i.id })}>remove</button>
                  </li>
                ))}
              </ul>
              <p><strong>Total: ₹{total}</strong></p>
              <button onClick={() => dispatch({ type: "cleared" })}>Clear cart</button>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><Cart /></StrictMode>);
      JSX
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Custom Hooks</h1>
        </div>
        <p class="lc-lead">A <strong>custom hook</strong> is a function whose name starts with <code>use</code> and that calls other hooks. It lets you reuse <em>stateful logic</em> — not the state itself — across components.</p>
        <div class="lc-card">
          <h3>Worked example: useToggle and useDebouncedValue</h3>
          <div class="lc-code">import { useEffect, useState } from "react";<br><br>export function useToggle(initial = false) {<br>&nbsp;&nbsp;const [on, setOn] = useState(initial);<br>&nbsp;&nbsp;const toggle = () =&gt; setOn(v =&gt; !v);<br>&nbsp;&nbsp;return [on, toggle];<br>}<br><br>export function useDebouncedValue(value, delayMs) {<br>&nbsp;&nbsp;const [debounced, setDebounced] = useState(value);<br>&nbsp;&nbsp;useEffect(() =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;const id = setTimeout(() =&gt; setDebounced(value), delayMs);<br>&nbsp;&nbsp;&nbsp;&nbsp;return () =&gt; clearTimeout(id);           // restart the timer on every keystroke<br>&nbsp;&nbsp;}, [value, delayMs]);<br>&nbsp;&nbsp;return debounced;<br>}<br><br>function Search() {<br>&nbsp;&nbsp;const [text, setText] = useState("");<br>&nbsp;&nbsp;const query = useDebouncedValue(text, 500);<br>&nbsp;&nbsp;// query only changes 500 ms after the user stops typing<br>}</div>
          <p><strong>Expected output:</strong> typing "react" quickly updates <code>text</code> five times but <code>query</code> only once, half a second after the last key.</p>
        </div>
        <div class="lc-card">
          <h3>Each call gets its own state</h3>
          <div class="lc-code">function Settings() {<br>&nbsp;&nbsp;const [wifi, toggleWifi] = useToggle(true);<br>&nbsp;&nbsp;const [dark, toggleDark] = useToggle(false);<br>&nbsp;&nbsp;// toggling wifi does not change dark — two separate states<br>}</div>
          <p>A custom hook shares <strong>logic</strong>. To share the same <strong>data</strong> between components, lift state up or use context.</p>
        </div>
        <div class="lc-card">
          <h3>Good candidates for a custom hook</h3>
          <table class="lc-table">
            <thead><tr><th>Hook</th><th>Wraps</th></tr></thead>
            <tbody>
              <tr><td><code>useWindowWidth()</code></td><td><code>resize</code> listener + cleanup</td></tr>
              <tr><td><code>useOnlineStatus()</code></td><td><code>online</code>/<code>offline</code> events</td></tr>
              <tr><td><code>useDebouncedValue(v, ms)</code></td><td>timer effect</td></tr>
              <tr><td><code>useAuth()</code></td><td><code>useContext(AuthContext)</code> + a helpful error</td></tr>
              <tr><td><code>useFetch(url)</code></td><td>the fetch effect from lesson 10 (in real apps prefer TanStack Query)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Rules</h3>
          <ul class="lc-list">
            <li>The name <strong>must</strong> start with <code>use</code> followed by a capital letter — this is how React's linter knows to check the Rules of Hooks inside it.</li>
            <li>Call it at the top level of a component or another hook, never conditionally.</li>
            <li>If a function calls no hooks, it is just a normal helper — don't name it <code>useSomething</code>.</li>
            <li>Return whatever is convenient: a value, an array <code>[value, setter]</code>, or an object <code>{ data, error }</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Expecting two components that call <code>useToggle()</code> to share the same value.</li>
            <li>Naming it <code>getWindowWidth</code> — the linter won't check hook rules, and readers won't know it uses state.</li>
            <li>Forgetting the cleanup inside the hook's effect — every component using it leaks.</li>
            <li>Creating one giant hook that does everything; small focused hooks compose better.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Write <code>useCounter(start, step)</code> that returns <code>{ count, increment, reset }</code>, and use it twice in the starter with different steps (1 and 10).</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Extract a hook when you notice the same <code>useState</code> + <code>useEffect</code> pair copied into a second component — not before.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, useEffect, useState } from "react";
        import { createRoot } from "react-dom/client";

        function useToggle(initial = false) {
          const [on, setOn] = useState(initial);
          return [on, () => setOn(v => !v)];
        }

        function useDebouncedValue(value, delayMs) {
          const [debounced, setDebounced] = useState(value);
          useEffect(() => {
            const id = setTimeout(() => setDebounced(value), delayMs);
            return () => clearTimeout(id);
          }, [value, delayMs]);
          return debounced;
        }

        function useWindowWidth() {
          const [width, setWidth] = useState(window.innerWidth);
          useEffect(() => {
            const onResize = () => setWidth(window.innerWidth);
            window.addEventListener("resize", onResize);
            return () => window.removeEventListener("resize", onResize);
          }, []);
          return width;
        }

        const COURSES = ["React", "Redux Toolkit", "React Router", "Node.js", "Python", "Rails"];

        function App() {
          const [wifi, toggleWifi] = useToggle(true);   // two calls = two independent states
          const [dark, toggleDark] = useToggle(false);
          const [text, setText] = useState("");
          const query = useDebouncedValue(text, 500);
          const width = useWindowWidth();
          const results = COURSES.filter(c => c.toLowerCase().includes(query.toLowerCase()));

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 440 }}>
              <p>Wi-Fi: {wifi ? "on" : "off"} <button onClick={toggleWifi}>toggle</button></p>
              <p>Dark mode: {dark ? "on" : "off"} <button onClick={toggleDark}>toggle</button></p>
              <p>Window width: {width}px (resize the preview)</p>
              <input value={text} onChange={e => setText(e.target.value)} placeholder="Search courses" />
              <p>Typed: "{text}" | Debounced query: "{query}"</p>
              <ul>{results.map(c => <li key={c}>{c}</li>)}</ul>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Performance: memo, useMemo and useCallback</h1>
        </div>
        <p class="lc-lead">When a component's state changes, React re-renders it <strong>and all its children</strong>. That is usually fast. When it isn't, React offers tools to skip work — and in 2026 the <strong>React Compiler</strong> can apply most of them for you.</p>
        <div class="lc-card">
          <h3>What causes a re-render?</h3>
          <ul class="lc-list">
            <li>The component's own state changed.</li>
            <li>Its parent re-rendered (even if the props look the same).</li>
            <li>A context it reads changed.</li>
          </ul>
          <p>A re-render is not a DOM update: React compares the result and only touches the DOM where something actually changed.</p>
        </div>
        <div class="lc-card">
          <h3>The three tools</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Remembers</th><th>Use it to</th></tr></thead>
            <tbody>
              <tr><td><code>memo(Component)</code></td><td>a component's last output</td><td>skip re-rendering a child when its props are the same (<code>Object.is</code> for each prop)</td></tr>
              <tr><td><code>useMemo(() =&gt; calc(a), [a])</code></td><td>a computed <strong>value</strong></td><td>skip a slow calculation, or keep an object prop stable</td></tr>
              <tr><td><code>useCallback(fn, [deps])</code></td><td>a <strong>function</strong> reference</td><td>pass a stable callback to a <code>memo</code> child</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: why memo alone is not enough</h3>
          <div class="lc-code">const Row = memo(function Row({ item, onSelect }) {<br>&nbsp;&nbsp;console.log("render row", item.id);<br>&nbsp;&nbsp;return &lt;li onClick={() =&gt; onSelect(item.id)}&gt;{item.name}&lt;/li&gt;;<br>});<br><br>function List({ items }) {<br>&nbsp;&nbsp;const [count, setCount] = useState(0);<br>&nbsp;&nbsp;const handleSelect = id =&gt; console.log("selected", id);   // NEW function every render<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button onClick={() =&gt; setCount(c =&gt; c + 1)}&gt;clicked {count}&lt;/button&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{items.map(i =&gt; &lt;Row key={i.id} item={i} onSelect={handleSelect} /&gt;)}<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/&gt;<br>&nbsp;&nbsp;);<br>}</div>
          <p><strong>Expected output</strong> on each button click (3 items):</p>
          <div class="lc-code">render row 1<br>render row 2<br>render row 3</div>
          <p>Every row re-renders because <code>handleSelect</code> is a new function each time, so <code>memo</code> sees a changed prop. Fix it:</p>
          <div class="lc-code">const handleSelect = useCallback(id =&gt; console.log("selected", id), []);</div>
          <p>Now clicking the button logs nothing from the rows — they are skipped.</p>
        </div>
        <div class="lc-card">
          <h3>React Compiler (v1.0, stable since October 2025)</h3>
          <p>The React Compiler is a build-time tool that adds this memoisation automatically. New Vite projects can start with <code>npm create vite@latest my-app -- --template react-compiler</code>. With the compiler on, you rarely write <code>memo</code>/<code>useMemo</code>/<code>useCallback</code> by hand — but you still need to understand them to read existing code and to know <em>why</em> components re-render.</p>
        </div>
        <div class="lc-card">
          <h3>Performance checklist</h3>
          <ol class="lc-list">
            <li><strong>Measure first</strong> with the React DevTools Profiler, using a production build (<code>npm run build</code> + <code>npm run preview</code>); development mode is slower on purpose.</li>
            <li>Move state <strong>down</strong> into the component that uses it so fewer components re-render.</li>
            <li>Use stable <code>key</code>s in lists.</li>
            <li>Split code with <code>lazy()</code> (lesson 17) so users download less JavaScript.</li>
            <li>For thousands of rows, use list virtualisation (e.g. TanStack Virtual).</li>
            <li>Only then add <code>memo</code>, <code>useMemo</code> and <code>useCallback</code> where the profiler shows a problem.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Wrapping everything in <code>useMemo</code> "just in case" — it adds code and memory for no gain.</li>
            <li>Using <code>memo</code> but passing a new object <code>style={{...}}</code> or inline arrow function every render.</li>
            <li>Missing dependencies in <code>useMemo</code>/<code>useCallback</code> → stale values.</li>
            <li>Judging speed in development mode (StrictMode renders twice there).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, remove <code>useCallback</code> from <code>handleToggle</code> and click "Re-render parent". Count how many "render row" lines appear in the log, then put it back and compare.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>useMemo</code> and <code>memo</code> are performance hints, not guarantees. Your code must still work correctly if React decides to recompute.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { memo, useCallback, useMemo, useState } from "react";
        import { createRoot } from "react-dom/client";

        const ITEMS = Array.from({ length: 5 }, (_, i) => ({ id: i + 1, name: "Task " + (i + 1) }));

        const Row = memo(function Row({ item, done, onToggle }) {
          console.log("render row", item.id);
          return (
            <li onClick={() => onToggle(item.id)} style={{ cursor: "pointer",
              textDecoration: done ? "line-through" : "none" }}>
              {item.name}
            </li>
          );
        });

        function slowSquare(n) {
          let result = 0;
          for (let i = 0; i < 2e6; i++) result = n * n; // pretend this is expensive
          return result;
        }

        function App() {
          const [count, setCount] = useState(0);
          const [number, setNumber] = useState(12);
          const [doneIds, setDoneIds] = useState([]);

          // Stable function: memo(Row) can skip rows whose props did not change.
          const handleToggle = useCallback(id => {
            setDoneIds(ids => (ids.includes(id) ? ids.filter(x => x !== id) : [...ids, id]));
          }, []);

          // Recomputed only when `number` changes, not when `count` changes.
          const squared = useMemo(() => slowSquare(number), [number]);

          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem" }}>
              <button onClick={() => setCount(c => c + 1)}>Re-render parent ({count})</button>{" "}
              <button onClick={() => setNumber(n => n + 1)}>number = {number}</button>
              <p>{number}² = {squared}</p>
              <ul>{ITEMS.map(it => <Row key={it.id} item={it} done={doneIds.includes(it.id)} onToggle={handleToggle} />)}</ul>
              <p style={{ color: "#6b7280" }}>Click a task: only that row logs a render.</p>
            </div>
          );
        }

        // No StrictMode here on purpose: it renders twice in development, which would double every log line.
        createRoot(document.getElementById("root")).render(<App />);
      JSX
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Forms and Actions in React 19</h1>
        </div>
        <p class="lc-lead">React 19 added <strong>Actions</strong>: you can pass an (async) function straight to <code>&lt;form action={...}&gt;</code>. React gives you the pending state, the result, error handling and optimistic updates with three new hooks — far less code than hand-written <code>onSubmit</code> + <code>useState</code>.</p>
        <div class="lc-card">
          <h3>The pieces</h3>
          <table class="lc-table">
            <thead><tr><th>API</th><th>Import from</th><th>Gives you</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;form action={fn}&gt;</code></td><td>—</td><td>calls <code>fn(formData)</code> on submit, no <code>preventDefault</code> needed; resets uncontrolled fields when the action finishes</td></tr>
              <tr><td><code>useActionState(action, initial)</code></td><td><code>react</code></td><td><code>[state, formAction, isPending]</code>; your action receives <code>(previousState, formData)</code></td></tr>
              <tr><td><code>useFormStatus()</code></td><td><code>react-dom</code></td><td><code>{ pending, data, method, action }</code> of the <strong>parent</strong> form</td></tr>
              <tr><td><code>useOptimistic(value, update)</code></td><td><code>react</code></td><td>a temporary value shown while the action runs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: useActionState</h3>
          <div class="lc-code">import { useActionState } from "react";<br><br>async function subscribe(prevState, formData) {<br>&nbsp;&nbsp;const email = formData.get("email");<br>&nbsp;&nbsp;await new Promise(r =&gt; setTimeout(r, 800));          // pretend to call the server<br>&nbsp;&nbsp;if (!email.includes("@")) return { error: "Invalid email", count: prevState.count };<br>&nbsp;&nbsp;return { error: null, count: prevState.count + 1 };<br>}<br><br>function Newsletter() {<br>&nbsp;&nbsp;const [state, formAction, isPending] = useActionState(subscribe, { error: null, count: 0 });<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;form action={formAction}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;input name="email" /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button disabled={isPending}&gt;{isPending ? "Saving…" : "Subscribe"}&lt;/button&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{state.error &amp;&amp; &lt;p&gt;{state.error}&lt;/p&gt;}<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;Subscribers: {state.count}&lt;/p&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/form&gt;<br>&nbsp;&nbsp;);<br>}</div>
          <p><strong>Expected output</strong> submitting "abc", then "abc@mail.com":</p>
          <div class="lc-code">Saving… → Invalid email, Subscribers: 0<br>Saving… → Subscribers: 1</div>
          <p>After each completed action React resets the form's uncontrolled inputs, so the box is empty again — even after the error. To keep what the user typed, return it in the state and use it as the input's <code>defaultValue</code>.</p>
        </div>
        <div class="lc-card">
          <h3>useFormStatus: a reusable submit button</h3>
          <div class="lc-code">import { useFormStatus } from "react-dom";<br><br>function SubmitButton({ children }) {<br>&nbsp;&nbsp;const { pending } = useFormStatus();   // status of the &lt;form&gt; this button is inside<br>&nbsp;&nbsp;return &lt;button type="submit" disabled={pending}&gt;{pending ? "Please wait…" : children}&lt;/button&gt;;<br>}</div>
          <p>It must be called in a component rendered <strong>inside</strong> the <code>&lt;form&gt;</code> — calling it in the component that renders the form returns <code>pending: false</code> forever.</p>
        </div>
        <div class="lc-card">
          <h3>useOptimistic: show it before the server confirms</h3>
          <div class="lc-code">const [optimisticTodos, addOptimistic] = useOptimistic(<br>&nbsp;&nbsp;todos,<br>&nbsp;&nbsp;(current, text) =&gt; [...current, { id: "temp", text, sending: true }]<br>);<br><br>async function addTodo(formData) {<br>&nbsp;&nbsp;addOptimistic(formData.get("text"));      // appears instantly, greyed out<br>&nbsp;&nbsp;const saved = await api.save(formData);   // slow network<br>&nbsp;&nbsp;startTransition(() =&gt; setTodos(t =&gt; [...t, saved]));<br>}</div>
          <p>When the action finishes, the optimistic value is thrown away and React shows the real <code>todos</code>. If the save fails, the item simply disappears. Call <code>addOptimistic</code> only inside an action or <code>startTransition</code>, and wrap state updates that come after an <code>await</code> in <code>startTransition</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Old way vs new way</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Before React 19</th><th>React 19</th></tr></thead>
            <tbody>
              <tr><td>Submit</td><td><code>onSubmit</code> + <code>e.preventDefault()</code></td><td><code>action={fn}</code></td></tr>
              <tr><td>Loading flag</td><td><code>const [saving, setSaving] = useState(false)</code></td><td><code>isPending</code> / <code>useFormStatus</code></td></tr>
              <tr><td>Result / error</td><td>more <code>useState</code> calls</td><td>the returned <code>state</code></td></tr>
              <tr><td>Clear the form</td><td>reset each state value</td><td>automatic for uncontrolled inputs</td></tr>
            </tbody>
          </table>
          <p>Controlled inputs (lesson 7) are still right for live validation or fields that depend on each other. In Next.js, the same <code>action</code> prop can call a <strong>Server Function</strong> (<code>"use server"</code>).</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the <code>name</code> attribute — <code>formData.get("email")</code> returns <code>null</code>.</li>
            <li>Writing the action as <code>(formData) =&gt; ...</code> with <code>useActionState</code> — the first argument is the <em>previous state</em>.</li>
            <li>Calling <code>useFormStatus</code> outside the form.</li>
            <li>Importing <code>useFormStatus</code> from <code>react</code> instead of <code>react-dom</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, make the comment action reject comments shorter than 3 characters: skip the save and log a message. Notice how the optimistic comment appears and then disappears.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Treat <code>FormData</code> values as strings (or <code>File</code>s). Convert numbers with <code>Number(formData.get("age"))</code>.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, startTransition, useActionState, useOptimistic, useState } from "react";
        import { useFormStatus } from "react-dom";
        import { createRoot } from "react-dom/client";

        const wait = ms => new Promise(resolve => setTimeout(resolve, ms));

        async function subscribe(prevState, formData) {
          const email = String(formData.get("email")).trim();
          await wait(800); // pretend server call
          if (!email.includes("@")) return { ok: false, message: `"${email}" is not a valid email`, count: prevState.count };
          return { ok: true, message: `Subscribed ${email}`, count: prevState.count + 1 };
        }

        function SubmitButton({ children }) {
          const { pending } = useFormStatus(); // reads the parent <form>
          return <button type="submit" disabled={pending}>{pending ? "Saving…" : children}</button>;
        }

        function Newsletter() {
          const [state, formAction] = useActionState(subscribe, { ok: null, message: "", count: 0 });
          return (
            <form action={formAction}>
              <h3>Newsletter (useActionState + useFormStatus)</h3>
              <input name="email" placeholder="you@example.com" /> <SubmitButton>Subscribe</SubmitButton>
              {state.message && <p style={{ color: state.ok ? "#065f46" : "#b91c1c" }}>{state.message}</p>}
              <small>Successful sign-ups: {state.count}</small>
            </form>
          );
        }

        function Comments() {
          const [comments, setComments] = useState([{ id: 1, text: "Great lesson!" }]);
          const [shown, addOptimistic] = useOptimistic(comments, (list, text) => [...list, { id: "temp", text, sending: true }]);

          async function postComment(formData) {
            const text = String(formData.get("text"));
            addOptimistic(text);           // shows immediately
            await wait(1000);              // slow save
            startTransition(() => setComments(list => [...list, { id: list.length + 1, text }]));
            console.log("saved comment:", text);
          }
          return (
            <form action={postComment}>
              <h3>Comments (useOptimistic)</h3>
              <ul>{shown.map(c => <li key={c.id} style={{ opacity: c.sending ? 0.5 : 1 }}>{c.text}{c.sending && " (sending…)"}</li>)}</ul>
              <input name="text" placeholder="Write a comment" /> <SubmitButton>Post</SubmitButton>
            </form>
          );
        }

        createRoot(document.getElementById("root")).render(
          <StrictMode><div style={{ fontFamily: "sans-serif", padding: "1.5rem" }}><Newsletter /><Comments /></div></StrictMode>
        );
      JSX
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Suspense, use and Error Boundaries</h1>
        </div>
        <p class="lc-lead">Instead of writing <code>if (loading)</code> and <code>if (error)</code> in every component, React lets you declare <strong>loading</strong> UI with <code>&lt;Suspense&gt;</code> and <strong>error</strong> UI with an <strong>error boundary</strong>, around any part of the tree.</p>
        <div class="lc-card">
          <h3>How the pieces fit</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">ErrorBoundary<small>fallback on error</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Suspense<small>fallback while waiting</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">CourseDetails<small>use(promise)</small></div>
          </div>
          <table class="lc-table">
            <thead><tr><th>Child is…</th><th>What the user sees</th></tr></thead>
            <tbody>
              <tr><td>waiting for a promise (<code>use</code>) or lazy code</td><td>nearest <code>&lt;Suspense fallback&gt;</code></td></tr>
              <tr><td>throwing an error while rendering (or the promise rejects)</td><td>nearest error boundary's fallback</td></tr>
              <tr><td>ready</td><td>the real content</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>use(promise) — React 19</h3>
          <div class="lc-code">import { Suspense, use } from "react";<br><br>function Quote({ quotePromise }) {<br>&nbsp;&nbsp;const quote = use(quotePromise);     // "pauses" here until the promise resolves<br>&nbsp;&nbsp;return &lt;blockquote&gt;{quote.text}&lt;/blockquote&gt;;<br>}<br><br>const quotePromise = fetchQuote();     // created OUTSIDE render (or cached)<br><br>&lt;Suspense fallback={&lt;p&gt;Loading quote…&lt;/p&gt;}&gt;<br>&nbsp;&nbsp;&lt;Quote quotePromise={quotePromise} /&gt;<br>&lt;/Suspense&gt;</div>
          <p><strong>Expected output:</strong> "Loading quote…" first, then the quote text. The promise must be stable: creating a new promise inside the component would start a new request on every render. Frameworks and libraries (Next.js, React Router, TanStack Query) create and cache these promises for you.</p>
        </div>
        <div class="lc-card">
          <h3>Code splitting with lazy()</h3>
          <div class="lc-code">import { lazy, Suspense } from "react";<br>const AdminPanel = lazy(() =&gt; import("./AdminPanel.jsx"));   // separate JS file<br><br>{isAdmin &amp;&amp; (<br>&nbsp;&nbsp;&lt;Suspense fallback={&lt;p&gt;Loading admin tools…&lt;/p&gt;}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;AdminPanel /&gt;<br>&nbsp;&nbsp;&lt;/Suspense&gt;<br>)}</div>
          <p>Vite puts <code>AdminPanel</code> in its own chunk, downloaded only when needed. Declare <code>lazy</code> components at the top level of a module, never inside another component.</p>
        </div>
        <div class="lc-card">
          <h3>Error boundaries</h3>
          <p>An error boundary is still written as a <strong>class component</strong> — there is no hook for it. (The small <code>react-error-boundary</code> package wraps this for you.)</p>
          <div class="lc-code">class ErrorBoundary extends Component {<br>&nbsp;&nbsp;state = { error: null };<br>&nbsp;&nbsp;static getDerivedStateFromError(error) { return { error }; }   // show fallback<br>&nbsp;&nbsp;componentDidCatch(error, info) { logToService(error, info.componentStack); }<br>&nbsp;&nbsp;render() {<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.state.error ? this.props.fallback : this.props.children;<br>&nbsp;&nbsp;}<br>}</div>
          <p>Error boundaries catch errors during <strong>rendering</strong> (including rejected <code>use</code> promises). They do <strong>not</strong> catch errors in event handlers, <code>setTimeout</code> callbacks or your own <code>async</code> code — use <code>try/catch</code> there. Give the boundary a <code>key</code> (for example the page id) to reset it when the user navigates.</p>
          <p>React 19 also lets you observe errors for the whole app: <code>createRoot(el, { onCaughtError, onUncaughtError })</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Creating the promise inside the component that calls <code>use</code> — an endless loop of new requests.</li>
            <li>No <code>&lt;Suspense&gt;</code> above a suspending component — the nearest one may be at the top, blanking the whole page.</li>
            <li>Expecting an error boundary to catch a failed <code>onClick</code> handler.</li>
            <li>Calling <code>lazy()</code> inside a component, which resets its state on every render.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, add a second <code>&lt;Suspense&gt;</code> just around <code>&lt;Reviews /&gt;</code> with its own fallback, so opening reviews no longer hides the course details.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Place boundaries where a loading or error message makes sense to the user — per page section, not around every tiny component.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { Component, StrictMode, Suspense, lazy, use, useState } from "react";
        import { createRoot } from "react-dom/client";

        const wait = ms => new Promise(resolve => setTimeout(resolve, ms));
        const COURSES = { 1: "React Basics — 20 lessons", 2: "Node.js APIs — 15 lessons" };

        const cache = new Map(); // one promise per id, created outside render
        function fetchCourse(id) {
          if (!cache.has(id)) cache.set(id, wait(800).then(() => {
            if (!COURSES[id]) throw new Error(`Course ${id} not found`);
            return COURSES[id];
          }));
          return cache.get(id);
        }

        function CourseDetails({ id }) {
          const course = use(fetchCourse(id)); // suspends until resolved, throws if rejected
          return <p>📘 {course}</p>;
        }

        // Pretend this lives in its own file: lazy(() => import("./Reviews.jsx"))
        const Reviews = lazy(() => wait(1000).then(() => ({ default: () => <p>⭐⭐⭐⭐⭐ "Loved it!"</p> })));

        class ErrorBoundary extends Component {
          state = { error: null };
          static getDerivedStateFromError(error) { return { error }; }
          render() {
            if (this.state.error) return <p style={{ color: "#b91c1c" }}>⚠️ {this.state.error.message}</p>;
            return this.props.children;
          }
        }

        function App() {
          const [id, setId] = useState(1);
          const [showReviews, setShowReviews] = useState(false);
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem" }}>
              {[1, 2, 3].map(n => <button key={n} onClick={() => setId(n)}>Course {n}</button>)}{" "}
              <button onClick={() => setShowReviews(s => !s)}>Toggle reviews</button>
              <ErrorBoundary key={id}>
                <Suspense fallback={<p>⏳ Loading…</p>}>
                  <CourseDetails id={id} />
                  {showReviews && <Reviews />}
                </Suspense>
              </ErrorBoundary>
            </div>
          );
        }

        createRoot(document.getElementById("root"), {
          onCaughtError: error => console.log("Caught by an error boundary:", error.message),
        }).render(<StrictMode><App /></StrictMode>);
      JSX
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Routing with React Router</h1>
        </div>
        <p class="lc-lead">A single-page app shows different screens for different URLs without reloading the page. <strong>React Router</strong> is the most widely used router. Its current major version is <strong>v8</strong> (June 2026), installed from the <code>react-router</code> package.</p>
        <div class="lc-card">
          <h3>Declarative routing (the simplest mode)</h3>
          <div class="lc-code">// npm i react-router<br>import { BrowserRouter, Routes, Route, Link, NavLink, Outlet, useParams } from "react-router";<br><br>function Layout() {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;nav&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;NavLink to="/"&gt;Home&lt;/NavLink&gt; &lt;NavLink to="/courses"&gt;Courses&lt;/NavLink&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/nav&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Outlet /&gt;   {/* the matching child route renders here */}<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/&gt;<br>&nbsp;&nbsp;);<br>}<br><br>function Course() {<br>&nbsp;&nbsp;const { courseId } = useParams();       // "/courses/react" → "react"<br>&nbsp;&nbsp;return &lt;h2&gt;Course: {courseId}&lt;/h2&gt;;<br>}<br><br>createRoot(document.getElementById("root")).render(<br>&nbsp;&nbsp;&lt;BrowserRouter&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;Routes&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Route path="/" element={&lt;Layout /&gt;}&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Route index element={&lt;Home /&gt;} /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Route path="courses" element={&lt;CourseList /&gt;} /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Route path="courses/:courseId" element={&lt;Course /&gt;} /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;Route path="*" element={&lt;NotFound /&gt;} /&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/Route&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/Routes&gt;<br>&nbsp;&nbsp;&lt;/BrowserRouter&gt;<br>);</div>
          <p><strong>Expected output</strong> at <code>/courses/react</code>: the nav bar, then <code>Course: react</code>. At <code>/oops</code>: the <code>NotFound</code> page.</p>
        </div>
        <div class="lc-card">
          <h3>Key APIs</h3>
          <table class="lc-table">
            <thead><tr><th>API</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;Route path element&gt;</code></td><td>maps a URL pattern to a component</td></tr>
              <tr><td><code>:courseId</code> + <code>useParams()</code></td><td>dynamic segment and reading it</td></tr>
              <tr><td><code>index</code> route</td><td>child shown at the parent's exact path</td></tr>
              <tr><td><code>&lt;Outlet /&gt;</code></td><td>where nested child routes render (shared layouts)</td></tr>
              <tr><td><code>&lt;Link to&gt;</code> / <code>&lt;NavLink&gt;</code></td><td>navigation without reload; NavLink knows if it is active</td></tr>
              <tr><td><code>useNavigate()</code></td><td>navigate from code, e.g. after saving a form</td></tr>
              <tr><td><code>useSearchParams()</code></td><td>read/write <code>?page=2&amp;sort=new</code></td></tr>
              <tr><td><code>path="*"</code></td><td>catch-all "not found" route</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Three modes</h3>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Setup</th><th>Adds</th></tr></thead>
            <tbody>
              <tr><td>Declarative</td><td><code>&lt;BrowserRouter&gt;</code> + <code>&lt;Routes&gt;</code></td><td>URL matching and navigation</td></tr>
              <tr><td>Data</td><td><code>createBrowserRouter([...])</code> + <code>&lt;RouterProvider router={router} /&gt;</code> (from <code>react-router/dom</code>)</td><td><code>loader</code> / <code>action</code> per route, pending UI</td></tr>
              <tr><td>Framework</td><td><code>npx create-react-router@latest</code></td><td>file routes, server rendering, type safety</td></tr>
            </tbody>
          </table>
          <p><strong>Old way — don't use:</strong> v5's <code>&lt;Switch&gt;</code>, <code>component={X}</code> and <code>useHistory</code>, and the separate <code>react-router-dom</code> package (removed in v8 — import from <code>react-router</code>). v8 requires React 19.2.7 or newer.</p>
        </div>
        <div class="lc-card">
          <h3>How it works: our mini router</h3>
          <p>The editor can't install packages, so the starter builds a tiny router with the <em>same API names</em> using context and state. A real router also syncs with the browser's address bar and history.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>&lt;a href&gt;</code> for internal links — the whole page reloads and state is lost. Use <code>&lt;Link&gt;</code>.</li>
            <li>Forgetting <code>&lt;Outlet /&gt;</code> in a layout, so child routes never appear.</li>
            <li>Reading <code>useParams()</code> values as numbers — they are always strings.</li>
            <li>On deployment, the server must send <code>index.html</code> for every path, or refreshing <code>/courses/react</code> gives a 404.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add an <code>/about</code> route and a nav link to it in the starter. Then add a "Back to courses" button on the course page that calls <code>navigate("/courses")</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put things users should be able to bookmark or share (current page, search text, filters) in the URL, not only in state.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { Children, StrictMode, createContext, useContext, useState } from "react";
        import { createRoot } from "react-dom/client";

        // ---- A tiny router with React Router's API names (the real one is `npm i react-router`) ----
        const RouterContext = createContext(null);
        const ParamsContext = createContext({});
        function MemoryRouter({ initialPath, children }) {
          const [path, setPath] = useState(initialPath);
          return <RouterContext value={{ path, navigate: setPath }}>{children}</RouterContext>;
        }
        const useNavigate = () => useContext(RouterContext).navigate;
        const useParams = () => useContext(ParamsContext);
        function Link({ to, children }) {
          const navigate = useNavigate();
          return <a href={to} onClick={e => { e.preventDefault(); navigate(to); }} style={{ marginRight: 10 }}>{children}</a>;
        }
        function matchPath(pattern, path) {
          const p = pattern.split("/").filter(Boolean), a = path.split("/").filter(Boolean);
          if (pattern === "*") return {};
          if (p.length !== a.length) return null;
          const params = {};
          for (let i = 0; i < p.length; i++) {
            if (p[i].startsWith(":")) params[p[i].slice(1)] = a[i];
            else if (p[i] !== a[i]) return null;
          }
          return params;
        }
        function Route() { return null; } // only holds props; <Routes> reads them
        function Routes({ children }) {
          const { path } = useContext(RouterContext);
          for (const route of Children.toArray(children)) {
            const params = matchPath(route.props.path, path);
            if (params) return <ParamsContext value={params}>{route.props.element}</ParamsContext>;
          }
          return null;
        }

        // ---- The app ----
        const COURSES = { react: "React", node: "Node.js" };
        function Course() {
          const { courseId } = useParams();
          return COURSES[courseId] ? <h2>Course: {COURSES[courseId]} (id "{courseId}")</h2> : <h2>No course "{courseId}"</h2>;
        }
        function App() {
          const { path } = useContext(RouterContext);
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem" }}>
              <code>URL: {path}</code>
              <nav><Link to="/">Home</Link><Link to="/courses/react">React</Link><Link to="/courses/node">Node</Link><Link to="/oops">Broken link</Link></nav>
              <Routes>
                <Route path="/" element={<h2>Home</h2>} />
                <Route path="/courses/:courseId" element={<Course />} />
                <Route path="*" element={<h2>404 — page not found</h2>} />
              </Routes>
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><MemoryRouter initialPath="/"><App /></MemoryRouter></StrictMode>);
      JSX
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Testing React Components</h1>
        </div>
        <p class="lc-lead">Tests let you change code without fear. For React the standard stack is <strong>Vitest</strong> (a fast test runner built for Vite) plus <strong>React Testing Library</strong>, which renders a component and lets you interact with it the way a user would.</p>
        <div class="lc-card">
          <h3>What to test</h3>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Example</th><th>Tool</th></tr></thead>
            <tbody>
              <tr><td>Unit</td><td>a reducer or helper function</td><td>Vitest</td></tr>
              <tr><td>Component</td><td>"clicking Add shows Count: 1"</td><td>Vitest + React Testing Library</td></tr>
              <tr><td>End-to-end</td><td>sign up → log in → buy, in a real browser</td><td>Playwright or Cypress</td></tr>
            </tbody>
          </table>
          <p>Test <strong>behaviour</strong> (what the user sees and does), not implementation details (state variable names, which hook you used).</p>
        </div>
        <div class="lc-card">
          <h3>Setup in a Vite project</h3>
          <div class="lc-code">npm install -D vitest jsdom @testing-library/react @testing-library/user-event @testing-library/jest-dom</div>
          <div class="lc-code">// vite.config.js — add a test section<br>test: { environment: "jsdom", setupFiles: "./src/setupTests.js" }<br><br>// src/setupTests.js<br>import "@testing-library/jest-dom/vitest";</div>
          <p>Add <code>"test": "vitest"</code> to the <code>scripts</code> in <code>package.json</code>, then run <code>npm test</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a component test</h3>
          <div class="lc-code">// Counter.test.jsx<br>import { render, screen } from "@testing-library/react";<br>import userEvent from "@testing-library/user-event";<br>import { expect, test } from "vitest";<br>import Counter from "./Counter.jsx";<br><br>test("adds one when the button is clicked", async () =&gt; {<br>&nbsp;&nbsp;render(&lt;Counter /&gt;);<br>&nbsp;&nbsp;await userEvent.click(screen.getByRole("button", { name: /add/i }));<br>&nbsp;&nbsp;expect(screen.getByText("Count: 1")).toBeInTheDocument();<br>});</div>
          <p><strong>Expected output</strong> of <code>npm test</code>:</p>
          <div class="lc-code">✓ src/Counter.test.jsx (1 test)<br>&nbsp;&nbsp;✓ adds one when the button is clicked<br>Test Files  1 passed (1)<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tests  1 passed (1)</div>
        </div>
        <div class="lc-card">
          <h3>Choosing queries</h3>
          <table class="lc-table">
            <thead><tr><th>Query</th><th>When</th></tr></thead>
            <tbody>
              <tr><td><code>getByRole("button", { name: /save/i })</code></td><td>first choice — matches how users and screen readers find things</td></tr>
              <tr><td><code>getByLabelText("Email")</code></td><td>form fields</td></tr>
              <tr><td><code>getByText("Count: 1")</code></td><td>plain text content</td></tr>
              <tr><td><code>findByText(...)</code></td><td>async: waits for something to appear (after a fetch)</td></tr>
              <tr><td><code>queryByText(...)</code></td><td>checking something is <em>not</em> there (returns <code>null</code>)</td></tr>
              <tr><td><code>getByTestId(...)</code></td><td>last resort</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What the library does for you: act()</h3>
          <p>React batches updates. <code>act()</code> (exported from <code>react</code> in React 19) runs your render or click and then flushes all updates and effects, so the DOM is up to date before you check it. Testing Library calls <code>act</code> for you; the starter calls it by hand so you can see how testing works inside, using only React.</p>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Checking the DOM before an async update finished — use <code>await findBy...</code>.</li>
            <li>Selecting by CSS class (<code>.btn-primary</code>); a style change breaks the test though nothing is broken for users.</li>
            <li>Testing internal state instead of the visible result.</li>
            <li>Importing <code>act</code> from <code>react-dom/test-utils</code> — removed in React 19; import it from <code>react</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Break the <code>Counter</code> in the starter (make it add 2) and press Run — watch a test turn red. Then fix it and add a new test for a "Reset" button.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Write a test when you fix a bug. It proves the fix and stops the bug from coming back.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { act, useState } from "react";
        import { createRoot } from "react-dom/client";

        // ----- Component under test -----
        function Counter({ start = 0 }) {
          const [count, setCount] = useState(start);
          return <div><p>Count: {count}</p><button onClick={() => setCount(c => c + 1)}>Add</button></div>;
        }

        // ----- A tiny test kit (Testing Library does this for you) -----
        globalThis.IS_REACT_ACT_ENVIRONMENT = true; // tell React we are testing
        async function render(ui) {
          const container = document.createElement("div");
          document.body.appendChild(container);
          const root = createRoot(container);
          await act(async () => root.render(ui));
          const cleanup = async () => { await act(async () => root.unmount()); container.remove(); };
          return { container, cleanup };
        }
        const getButton = (container, name) =>
          [...container.querySelectorAll("button")].find(b => b.textContent === name);
        function expectText(container, text) {
          if (!container.textContent.includes(text)) throw new Error(`expected "${text}", got "${container.textContent}"`);
        }

        const results = [];
        async function test(name, fn) {
          try { await fn(); results.push({ name, ok: true }); }
          catch (e) { results.push({ name, ok: false, error: e.message }); }
        }

        (async () => {
          await test("starts at 0", async () => {
            const { container, cleanup } = await render(<Counter />);
            expectText(container, "Count: 0"); await cleanup();
          });
          await test("adds one when Add is clicked", async () => {
            const { container, cleanup } = await render(<Counter />);
            await act(async () => getButton(container, "Add").click());
            expectText(container, "Count: 1"); await cleanup();
          });
          await test("respects the start prop", async () => {
            const { container, cleanup } = await render(<Counter start={5} />);
            expectText(container, "Count: 5"); await cleanup();
          });

          globalThis.IS_REACT_ACT_ENVIRONMENT = false; // back to normal rendering for the report
          const passed = results.filter(r => r.ok).length;
          results.forEach(r => console.log(r.ok ? "PASS" : "FAIL", r.name, r.error || ""));
          createRoot(document.getElementById("root")).render(
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem" }}>
              <h2>Tests: {passed} / {results.length} passed</h2>
              <ul>{results.map(r => <li key={r.name}>{r.ok ? "✅" : "❌"} {r.name} {r.error}</li>)}</ul>
            </div>
          );
        })();
      JSX
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-react">React</div>
          <h1 class="lc-title">Capstone: Task Manager App</h1>
        </div>
        <p class="lc-lead">Time to combine the course into one app: a <strong>task manager</strong> with adding, completing, deleting, filtering and live stats. The starter is a working base; your job is to read it, understand every part, and extend it.</p>
        <div class="lc-card">
          <h3>Component tree and data flow</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">TasksProvider<small>useReducer + context</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">App<small>filter state</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">AddTaskForm<small>form action</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">TaskList → TaskItem<small>keys, dispatch</small></div>
          </div>
          <p>Data flows <strong>down</strong> through props and context; changes flow <strong>up</strong> as dispatched actions.</p>
        </div>
        <div class="lc-card">
          <h3>State design</h3>
          <table class="lc-table">
            <thead><tr><th>Data</th><th>Kind</th><th>Lives in</th></tr></thead>
            <tbody>
              <tr><td>tasks array</td><td>state (<code>useReducer</code>)</td><td><code>TasksProvider</code>, shared by context</td></tr>
              <tr><td>current filter (all / active / done)</td><td>state (<code>useState</code>)</td><td><code>App</code> — only the list needs it</td></tr>
              <tr><td>visible tasks, counts</td><td><strong>derived</strong> — computed in render</td><td>nowhere (never stored)</td></tr>
              <tr><td>new task text</td><td>uncontrolled input read via <code>FormData</code></td><td>the DOM</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Concepts used (and where you learned them)</h3>
          <table class="lc-table">
            <thead><tr><th>Concept</th><th>In the app</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Components + props</td><td><code>TaskItem task={t}</code></td><td>2–3</td></tr>
              <tr><td>Events</td><td>checkbox <code>onChange</code>, delete <code>onClick</code></td><td>5</td></tr>
              <tr><td>Lists, keys, conditional rendering</td><td><code>tasks.map</code> with <code>key={t.id}</code>, empty message</td><td>6</td></tr>
              <tr><td>Reducer</td><td><code>tasksReducer</code>: added / toggled / deleted</td><td>13</td></tr>
              <tr><td>Context + custom hook</td><td><code>useTasks()</code></td><td>12, 14</td></tr>
              <tr><td>Form action</td><td><code>&lt;form action={addTask}&gt;</code> resets itself</td><td>16</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: one action through the app</h3>
          <div class="lc-code">// user ticks "Revise hooks"<br>&lt;input type="checkbox" onChange={() =&gt; dispatch({ type: "toggled", id: 2 })} /&gt;<br>// reducer returns a NEW array with task 2's done flipped<br>// TasksProvider re-renders → context value changes → TaskList re-renders<br>// derived counts update: "1 of 3 done"</div>
          <p><strong>Expected output</strong> of the starter on first load:</p>
          <div class="lc-code">My Tasks — 1 of 3 done<br>[All] [Active] [Done]<br>☐ Build a React app<br>☐ Revise hooks<br>☑ Install Vite</div>
        </div>
        <div class="lc-card">
          <h3>Extensions (pick at least two)</h3>
          <ol class="lc-list">
            <li><strong>Edit a task</strong>: double-click shows an input; save with Enter (new <code>"edited"</code> action).</li>
            <li><strong>Priority</strong>: add a <code>&lt;select name="priority"&gt;</code> to the form and sort high-priority first (copy before sorting).</li>
            <li><strong>Search</strong>: a controlled input + your <code>useDebouncedValue</code> hook from lesson 14.</li>
            <li><strong>Tests</strong>: test <code>tasksReducer</code> directly, like lesson 19.</li>
            <li><strong>Real project</strong>: move it into a Vite app, one component per file; save tasks to <code>localStorage</code> in an effect (the lesson editor's sandbox blocks storage, so do this in Vite).</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Common mistakes</h3>
          <ul class="lc-list">
            <li>Storing <code>doneCount</code> in state and forgetting to update it — derive it instead.</li>
            <li>Using the array index as a key; deleting a task then shows the wrong checkbox ticked.</li>
            <li>Mutating <code>task.done = !task.done</code> inside the reducer.</li>
            <li>Letting <code>App</code> grow to 300 lines — split out components as soon as a part has a clear name.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a "Clear completed" button that dispatches <code>{ type: "clearedDone" }</code> and only appears when at least one task is done.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Next steps after this course: TypeScript with React, a framework (Next.js or React Router framework mode), TanStack Query for server data, and building and deploying one portfolio project end to end.
        </div>
      HTML
      starter_code: <<~'JSX'
        import { StrictMode, createContext, useContext, useReducer, useState } from "react";
        import { createRoot } from "react-dom/client";

        const initialTasks = [
          { id: 1, text: "Build a React app", done: false },
          { id: 2, text: "Revise hooks", done: false },
          { id: 3, text: "Install Vite", done: true },
        ];
        let nextId = 4;

        function tasksReducer(tasks, action) {
          switch (action.type) {
            case "added": return [...tasks, { id: action.id, text: action.text, done: false }];
            case "toggled": return tasks.map(t => (t.id === action.id ? { ...t, done: !t.done } : t));
            case "deleted": return tasks.filter(t => t.id !== action.id);
            default: throw new Error("Unknown action: " + action.type);
          }
        }

        const TasksContext = createContext(null);
        function TasksProvider({ children }) {
          const [tasks, dispatch] = useReducer(tasksReducer, initialTasks);
          return <TasksContext value={{ tasks, dispatch }}>{children}</TasksContext>;
        }
        function useTasks() {
          const ctx = useContext(TasksContext);
          if (!ctx) throw new Error("useTasks must be used inside <TasksProvider>");
          return ctx;
        }

        function AddTaskForm() {
          const { dispatch } = useTasks();
          function addTask(formData) {
            const text = String(formData.get("text")).trim();
            if (text) dispatch({ type: "added", id: nextId++, text });
          }
          return <form action={addTask}><input name="text" placeholder="New task" /> <button>Add</button></form>;
        }

        function TaskItem({ task }) {
          const { dispatch } = useTasks();
          return (
            <li>
              <label style={{ textDecoration: task.done ? "line-through" : "none" }}>
                <input type="checkbox" checked={task.done} onChange={() => dispatch({ type: "toggled", id: task.id })} /> {task.text}
              </label>{" "}
              <button onClick={() => dispatch({ type: "deleted", id: task.id })}>✕</button>
            </li>
          );
        }

        const FILTERS = { All: () => true, Active: t => !t.done, Done: t => t.done };
        function App() {
          const { tasks } = useTasks();
          const [filter, setFilter] = useState("All");
          const visible = tasks.filter(FILTERS[filter]);          // derived, never stored
          const doneCount = tasks.filter(t => t.done).length;
          return (
            <div style={{ fontFamily: "sans-serif", padding: "1.5rem", maxWidth: 440 }}>
              <h2>My Tasks — {doneCount} of {tasks.length} done</h2>
              <AddTaskForm />
              <p>{Object.keys(FILTERS).map(f => (
                <button key={f} onClick={() => setFilter(f)} style={{ fontWeight: f === filter ? "bold" : "normal" }}>{f}</button>
              ))}</p>
              {visible.length === 0 ? <p><em>Nothing here.</em></p> : <ul>{visible.map(t => <TaskItem key={t.id} task={t} />)}</ul>}
            </div>
          );
        }

        createRoot(document.getElementById("root")).render(<StrictMode><TasksProvider><App /></TasksProvider></StrictMode>);
      JSX
    }
  }.freeze
end

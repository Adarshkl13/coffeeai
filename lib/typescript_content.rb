module TypescriptContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Introduction to TypeScript</h1>
        </div>
        <p class="lc-lead">TypeScript is <strong>JavaScript with a type system</strong>. A type says what kind of data a value is, such as a number or text. You describe the type of each variable, parameter and object. Then the TypeScript compiler (the tool that checks and converts your code) checks your code <em>before it runs</em>. It finds typos and wrong values while you type.</p>
        <div class="lc-card">
          <h3>A Bug TypeScript Catches</h3>
          <div class="lc-code">function totalPrice(price: number, qty: number): number {<br>&nbsp;&nbsp;return price * qty;<br>}<br><br>totalPrice("250", 2);<br>// Error: Argument of type 'string' is not assignable to parameter of type 'number'.<br><br>const user = { name: "Asha", state: "Kerala" };<br>console.log(user.nmae);<br>// Error: Property 'nmae' does not exist on type '{ name: string; state: string; }'.</div>
          <p>In plain JavaScript, both lines run. The first line quietly gives <code>500</code> through coercion (JavaScript changes the string to a number). Note that <code>"250" + 2</code> would give the string <code>"2502"</code>. The second line prints <code>undefined</code>. The bug shows up later, far from where it started. TypeScript reports it at once, with the line number.</p>
        </div>
        <div class="lc-card">
          <h3>How TypeScript Works</h3>
          <ol class="lc-list">
            <li>You write <code>.ts</code> files. These are JavaScript plus <strong>type annotations</strong> (type labels) such as <code>: number</code>.</li>
            <li>The compiler <code>tsc</code> <strong>type-checks</strong> the code and reports errors.</li>
            <li>Then it writes plain <code>.js</code> files with the types <strong>removed</strong> ("erased").</li>
            <li>Browsers and Node.js run that JavaScript.</li>
          </ol>
          <p>Types are erased, so <strong>they do not exist at runtime</strong> (while the program runs). TypeScript never checks data while the program runs. Say a server sends a string where you declared a number. TypeScript cannot stop it. (Lesson 17 shows how to check outside data.)</p>
        </div>
        <div class="lc-card">
          <h3>Is Every JavaScript File Valid TypeScript?</h3>
          <p>TypeScript's <em>syntax</em> (its grammar) is a superset of JavaScript's. This means it includes all of JavaScript. So you can rename <code>app.js</code> to <code>app.ts</code>, and it still compiles to working JavaScript. But the <strong>type checker may report errors</strong> in code that JavaScript runs without complaint:</p>
          <div class="lc-code">let count = 5;<br>count = "five";<br>// Valid JavaScript — but TypeScript says:<br>// Error: Type 'string' is not assignable to type 'number'.</div>
          <p>That is why teams move to TypeScript <strong>step by step</strong>. They turn on <code>allowJs</code>/<code>checkJs</code> and convert one file at a time. Then they fix the errors the checker finds. These errors are often real bugs.</p>
        </div>
        <div class="lc-card">
          <h3>JavaScript vs TypeScript</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>JavaScript</th><th>TypeScript</th></tr></thead>
            <tbody>
              <tr><td>Types</td><td>dynamic: checked only when a line runs</td><td>static: checked before running (and still dynamic at runtime)</td></tr>
              <tr><td>Where errors show up</td><td>in the browser, often in production</td><td>in the editor and at build time</td></tr>
              <tr><td>Editor help</td><td>basic autocomplete</td><td>exact autocomplete, safe rename, go-to-definition</td></tr>
              <tr><td>Runs in the browser</td><td>directly</td><td>after the types are removed</td></tr>
              <tr><td>Extra step</td><td>none</td><td><code>tsc</code> (or a bundler such as Vite) removes types</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Setting Up a Project</h3>
          <div class="lc-code">npm install -D typescript      # install the compiler in the project<br>npx tsc --init                 # create tsconfig.json with recommended settings<br>npx tsc                        # type-check and write .js files<br>npx tsc --noEmit               # only type-check (common with Vite and other bundlers)</div>
          <ul class="lc-list">
            <li>This course uses <strong>TypeScript 7</strong>, the version whose compiler was rewritten in Go (at the time of writing; check typescriptlang.org for the latest release). It is often about <strong>10× faster</strong> than TypeScript 6.0. The command is still <code>tsc</code>.</li>
            <li>Since TypeScript 6.0, <code>strict</code> mode is <strong>on by default</strong>. These are the checks this course uses (Lesson 18 covers <code>tsconfig.json</code>).</li>
            <li>Node.js (22.18+ and 23.6+) can run <code>.ts</code> files directly with <code>node app.ts</code>. It does this by removing the types. It does <strong>not</strong> type-check, so you still run <code>tsc --noEmit</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How This Course's Editor Runs TypeScript</h3>
          <p>The Run button removes the types (using Babel) and runs the JavaScript that is left. Like Node.js, it does <strong>not</strong> type-check. So a type error will not stop your code from running here. Every starter in this course passes <code>tsc --strict</code>. When a lesson shows an error message, it is the real message from <code>tsc</code>. VS Code's red underline shows the same message.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Before and After</h3>
          <p>The same function in JavaScript and TypeScript:</p>
          <div class="lc-code">// discount.js<br>function applyDiscount(price, percent) {<br>&nbsp;&nbsp;return price - price * percent / 100;<br>}<br>applyDiscount("1000", 10);   // 900 — works by luck (string coerced)<br>applyDiscount(1000);         // NaN — percent is undefined</div>
          <div class="lc-code">// discount.ts<br>function applyDiscount(price: number, percent: number): number {<br>&nbsp;&nbsp;return price - price * percent / 100;<br>}<br>applyDiscount(1000, 10);     // 900<br>applyDiscount(1000);<br>// Error: Expected 2 arguments, but got 1.</div>
          <p>The compiled JavaScript of <code>discount.ts</code> is exactly the first version without the <code>: number</code> parts. TypeScript adds safety, not extra code at runtime.</p>
        </div>
        <div class="lc-card">
          <h3>Who Uses TypeScript?</h3>
          <ul class="lc-list">
            <li>Most large front-end projects built with React, Angular, Vue or Svelte.</li>
            <li>Back-end services on Node.js, Deno and Bun (Deno and Bun run TypeScript directly).</li>
            <li>VS Code itself is written in TypeScript.</li>
            <li>Almost every popular npm package includes type definitions. So your editor knows their APIs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Key Terms</h3>
          <ul class="lc-list">
            <li><strong>Type annotation</strong>: the <code>: type</code> you write after a name.</li>
            <li><strong>Type inference</strong>: TypeScript works out a type from the value.</li>
            <li><strong>Compile time</strong>: when <code>tsc</code> checks your code. <strong>Runtime</strong>: when the JavaScript actually runs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking types protect you at runtime. They are erased, so you must still check outside data.</li>
            <li>Hiding every error with <code>any</code>. You lose all the benefits (Lesson 2).</li>
            <li>Adding a type to everything. TypeScript <strong>infers</strong> (works out) most types, so <code>let x: number = 5</code> is usually just <code>let x = 5</code>.</li>
            <li>Ignoring the red underline and running the code anyway. The error is usually a real bug.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter and read the output.</li>
            <li>Uncomment the line with <code>calculateGst("500")</code>. It still runs here. But what does the comment say <code>tsc</code> would report?</li>
            <li>Add a <code>discount: number</code> parameter to <code>calculateGst</code> and update the calls.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Install VS Code. It has TypeScript support built in. Hover over any variable to see its type, and learn from the red underlines. You learn most of TypeScript from those small hover boxes.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 1: your first TypeScript program
        // Type annotations describe what each value may hold.
        const course: string = "TypeScript Fundamentals";
        const lessons: number = 20;
        const published: boolean = true;
        console.log(`${course}: ${lessons} lessons, published = ${published}`);

        // A function with typed parameters and a typed return value
        function calculateGst(amount: number, rate: number = 0.18): number {
          return Math.round(amount * rate);
        }
        console.log("GST on ₹500:", calculateGst(500));
        console.log("GST on ₹1200 at 5%:", calculateGst(1200, 0.05));

        // calculateGst("500");
        // tsc: Argument of type 'string' is not assignable to parameter of type 'number'.

        // An object type: TypeScript knows exactly which properties exist
        type Student = { name: string; state: string; marks: number };
        const student: Student = { name: "Asha", state: "Kerala", marks: 88 };
        console.log(`${student.name} from ${student.state} scored ${student.marks}`);
        // console.log(student.nmae);
        // tsc: Property 'nmae' does not exist on type 'Student'.

        // Types are erased: at runtime this is plain JavaScript
        console.log("typeof student at runtime:", typeof student);

        // Type inference: no annotation needed, TypeScript still knows the type
        let count = 5; // inferred as number
        count += 1;
        console.log("count =", count, "| type:", typeof count);
      TS
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Primitive Types and Type Inference</h1>
        </div>
        <p class="lc-lead">Every value in TypeScript has a type. The basic types match JavaScript's primitives (simple values like numbers and text). The good news: you rarely have to write them. TypeScript <strong>infers</strong> (works out) types from your code. This lesson shows when to write types, when not to, and why <code>unknown</code> is better than <code>any</code>.</p>
        <div class="lc-card">
          <h3>The Primitive Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example values</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td><code>string</code></td><td><code>"Assam"</code>, <code>`Hi ${name}`</code></td><td>all text</td></tr>
              <tr><td><code>number</code></td><td><code>42</code>, <code>3.5</code>, <code>NaN</code></td><td>integers and decimals together</td></tr>
              <tr><td><code>boolean</code></td><td><code>true</code>, <code>false</code></td><td></td></tr>
              <tr><td><code>bigint</code></td><td><code>9007199254740993n</code></td><td>very large integers (needs target ES2020+)</td></tr>
              <tr><td><code>symbol</code></td><td><code>Symbol("id")</code></td><td>unique keys (rare)</td></tr>
              <tr><td><code>null</code></td><td><code>null</code></td><td>"intentionally empty"</td></tr>
              <tr><td><code>undefined</code></td><td><code>undefined</code></td><td>"not set yet"</td></tr>
            </tbody>
          </table>
          <p>Always use the <strong>lowercase</strong> names. <code>String</code>, <code>Number</code> and <code>Boolean</code> (capitalised) are JavaScript wrapper objects. Using them as types is a mistake.</p>
        </div>
        <div class="lc-card">
          <h3>Annotations vs Inference</h3>
          <div class="lc-code">let state: string = "Goa";   // explicit annotation<br>let pin = 560001;                    // inferred: number<br><br>pin = "560001";<br>// Error: Type 'string' is not assignable to type 'number'.</div>
          <p>When you give a variable a starting value, TypeScript already knows its type. Writing the type again only adds clutter. Good places for annotations (type labels):</p>
          <ul class="lc-list">
            <li><strong>Function parameters</strong>: TypeScript cannot guess what callers will pass.</li>
            <li><strong>Variables declared without a value</strong>: <code>let total: number;</code></li>
            <li><strong>Return types of public functions</strong>, to document the contract (the promise the function makes) and fix it in place (Lesson 6).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>let vs const: Literal Types</h3>
          <p>A <code>const</code> can never change. So TypeScript gives it the narrowest possible type: the exact value. This is called a <strong>literal type</strong>:</p>
          <div class="lc-code">let mode = "dark";      // type: string<br>const theme = "dark";   // type: "dark"<br>const answer = 42;      // type: 42</div>
          <p>Literal types become very useful when you join them into unions, such as <code>"light" | "dark"</code> (Lesson 7).</p>
        </div>
        <div class="lc-card">
          <h3>any: Turning the Checker Off</h3>
          <p><code>any</code> means "allow anything". TypeScript stops checking, so mistakes get through:</p>
          <div class="lc-code">let data: any = "hello";<br>data.toFixed(2);    // no error from tsc … but crashes at runtime:<br>// TypeError: data.toFixed is not a function</div>
          <p>Avoid <code>any</code>. With <code>strict</code> on, TypeScript also reports <em>implicit</em> <code>any</code> (an any type you did not write). For example, <code>function f(x) {}</code> gives "Parameter 'x' implicitly has an 'any' type."</p>
        </div>
        <div class="lc-card">
          <h3>unknown: The Safe Alternative</h3>
          <p><code>unknown</code> also accepts any value. But you must <strong>check</strong> what it is before you use it:</p>
          <div class="lc-code">function describe(value: unknown): string {<br>&nbsp;&nbsp;// value.toUpperCase();<br>&nbsp;&nbsp;// Error: 'value' is of type 'unknown'.<br>&nbsp;&nbsp;if (typeof value === "string") return "text: " + value.toUpperCase();<br>&nbsp;&nbsp;if (typeof value === "number") return "number: " + value.toFixed(1);<br>&nbsp;&nbsp;return "something else";<br>}<br><br>console.log(describe("hi"));   // text: HI<br>console.log(describe(3.14159)); // number: 3.1<br>console.log(describe(true));   // something else</div>
          <table class="lc-table">
            <thead><tr><th></th><th><code>any</code></th><th><code>unknown</code></th></tr></thead>
            <tbody>
              <tr><td>Accepts any value?</td><td>yes</td><td>yes</td></tr>
              <tr><td>Can use it without checking?</td><td>yes (unsafe)</td><td>no, must narrow first</td></tr>
              <tr><td>Use for</td><td>almost never (quick migrations)</td><td>data from JSON, APIs, users, <code>catch</code> blocks</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>void and never</h3>
          <ul class="lc-list">
            <li><code>void</code>: a function that returns nothing useful: <code>function log(msg: string): void { console.log(msg); }</code></li>
            <li><code>never</code>: a value that can never exist. For example, the return type of a function that always throws an error. It is useful for exhaustive checks (checks that cover every case, Lesson 9).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>null and undefined Under strict</h3>
          <p><code>strictNullChecks</code> is part of <code>strict</code>, and it is on by default since TypeScript 6.0. With it, <code>null</code> and <code>undefined</code> are <strong>not</strong> allowed in a <code>string</code> or <code>number</code>. You must allow them yourself:</p>
          <div class="lc-code">let nickname: string = null;<br>// Error: Type 'null' is not assignable to type 'string'.<br><br>let middleName: string | null = null;   // OK — "string or null"</div>
          <p>This one rule prevents the most common JavaScript crash: <em>Cannot read properties of null</em>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check: What Is the Type?</h3>
          <table class="lc-table">
            <thead><tr><th>Declaration</th><th>Inferred type</th></tr></thead>
            <tbody>
              <tr><td><code>let a = 10;</code></td><td><code>number</code></td></tr>
              <tr><td><code>const b = 10;</code></td><td><code>10</code></td></tr>
              <tr><td><code>let c = "hi";</code></td><td><code>string</code></td></tr>
              <tr><td><code>let d;</code></td><td>implicit <code>any</code> until assigned (avoid)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>String</code> or <code>Number</code> instead of <code>string</code> or <code>number</code>.</li>
            <li>Using <code>any</code> to make an error go away. Use <code>unknown</code> and check the value instead.</li>
            <li>Adding a type to every variable, even when the value makes the type clear.</li>
            <li>Writing <code>let total;</code> with no type and no value. It becomes an implicit <code>any</code> until you give it a value. Write <code>let total: number;</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Find the type of each variable in the starter. Hover over it in VS Code, or think it through. Then check the comments.</li>
            <li>Add a case for <code>boolean</code> to <code>describe</code>.</li>
            <li>Change <code>let status2</code> to a <code>const</code>. What does its type become?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Let inference do the work inside functions. Write types at the <em>edges</em>: parameters, return types of exported functions, and data coming from outside. This gives full safety with very little typing.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 2: primitive types and type inference
        const state: string = "Goa";  // explicit annotation
        let pin = 560001;                     // inferred: number
        const isMetro = true;                // inferred: true (a literal type)
        const big: bigint = 9007199254740993n;
        let middleName: string | null = null; // null must be allowed explicitly

        console.log("state:", state, "| pin:", pin, "| metro:", isMetro);
        console.log("bigint + 1n =", (big + 1n).toString());
        middleName = "Kumar";
        console.log("middle name:", middleName.toUpperCase());

        // let widens to string, const keeps the literal
        let status2 = "active";              // type: string
        const theme = "dark";                // type: "dark"
        status2 = "blocked";                 // fine, any string
        console.log("status:", status2, "| theme:", theme);

        // unknown must be checked before use
        function describe(value: unknown): string {
          if (typeof value === "string") return "text: " + value.toUpperCase();
          if (typeof value === "number") return "number: " + value.toFixed(1);
          if (value === null) return "null";
          return "something else (" + typeof value + ")";
        }
        const samples: unknown[] = ["namaste", 3.14159, null, true];
        for (const s of samples) console.log(describe(s));

        // any switches checking off - this would compile but crash:
        // const data: any = "hello"; data.toFixed(2);

        // void: returns nothing useful
        function logLine(message: string): void {
          console.log("> " + message);
        }
        logLine("types are erased at runtime: typeof state = " + typeof state);
      TS
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Arrays and Tuples</h1>
        </div>
        <p class="lc-lead">An <strong>array type</strong> means "a list of any length where every item has this type". A <strong>tuple</strong> means "a list with a fixed length where each position has its own type". If you choose the right one, your data explains itself.</p>
        <div class="lc-card">
          <h3>Array Types</h3>
          <div class="lc-code">const marks: number[] = [72, 85, 90];<br>const names: Array&lt;string&gt; = ["Asha", "Ravi"];   // same as string[]<br><br>marks.push(95);        // OK<br>marks.push("100");<br>// Error: Argument of type 'string' is not assignable to parameter of type 'number'.</div>
          <p><code>number[]</code> and <code>Array&lt;number&gt;</code> mean exactly the same thing. Most code uses the shorter <code>number[]</code>. Array methods keep the types. <code>marks.map(m =&gt; m / 10)</code> is <code>number[]</code>, and <code>names.map(n =&gt; n.length)</code> is <code>number[]</code> too.</p>
        </div>
        <div class="lc-card">
          <h3>Inference and Mixed Arrays</h3>
          <div class="lc-code">const scores = [10, 20, 30];          // number[]<br>const mixed = [1, "two", 3];           // (string | number)[]<br>const tasks: string[] = [];            // annotate empty arrays</div>
          <p>The items of a mixed array have a <strong>union</strong> type (one of several types, Lesson 7). Each item might be a string <em>or</em> a number. So you must check it before you use string-only methods. For an empty array, write the type yourself. TypeScript cannot guess what will go in it.</p>
        </div>
        <div class="lc-card">
          <h3>Readonly Arrays</h3>
          <p>Mark an array <code>readonly</code> when a function should only read it. Then TypeScript blocks every method that would change it:</p>
          <div class="lc-code">function average(values: readonly number[]): number {<br>&nbsp;&nbsp;// values.push(0);<br>&nbsp;&nbsp;// Error: Property 'push' does not exist on type 'readonly number[]'.<br>&nbsp;&nbsp;return values.reduce((a, b) =&gt; a + b, 0) / values.length;<br>}</div>
          <p><code>readonly number[]</code> is the same as <code>ReadonlyArray&lt;number&gt;</code>. Like all types, it is checked only at compile time. <code>Object.freeze</code> does the same job at runtime.</p>
        </div>
        <div class="lc-card">
          <h3>Tuples</h3>
          <p>A tuple has a <strong>fixed length</strong> and one type for each position:</p>
          <div class="lc-code">let entry: [string, number] = ["Asha", 88];<br>entry = [88, "Asha"];<br>// Error: Type 'number' is not assignable to type 'string'.<br><br>const [student, score] = entry;   // student: string, score: number</div>
          <p><strong>Labelled tuples</strong> add names that show in editor hints. A <code>?</code> marks optional positions at the end:</p>
          <div class="lc-code">type Point = [x: number, y: number];<br>type Contact = [name: string, phone: string, email?: string];<br><br>const a: Contact = ["Ravi", "98765 43210"];                  // OK<br>const b: Contact = ["Meera", "91234 56789", "m@example.in"]; // OK</div>
          <p>A <code>readonly [number, number]</code> tuple cannot be changed after you create it. This is good for coordinates.</p>
        </div>
        <div class="lc-card">
          <h3>Functions That Return Tuples</h3>
          <p>Returning a tuple is a simple way to return two related values. React's <code>useState</code> works exactly like this:</p>
          <div class="lc-code">function minMax(values: number[]): [min: number, max: number] {<br>&nbsp;&nbsp;return [Math.min(...values), Math.max(...values)];<br>}<br><br>const [low, high] = minMax([40, 72, 18, 95]);<br>console.log(low, high);   // 18 95</div>
          <p>Without the return annotation, TypeScript would infer <code>number[]</code> (any length). So always annotate tuple return types.</p>
        </div>
        <div class="lc-card">
          <h3>Array or Tuple?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Array <code>T[]</code></th><th>Tuple <code>[A, B]</code></th></tr></thead>
            <tbody>
              <tr><td>Length</td><td>any, can grow</td><td>fixed</td></tr>
              <tr><td>Item types</td><td>all the same type</td><td>one type per position</td></tr>
              <tr><td>Example</td><td>list of marks, list of users</td><td><code>[latitude, longitude]</code>, <code>[value, setValue]</code></td></tr>
              <tr><td>Readability</td><td>clear</td><td>fine for 2–3 items; for more, use an object with named keys</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Reading Past the End</h3>
          <p>By default, TypeScript assumes <code>marks[10]</code> is a <code>number</code>. But at runtime it is <code>undefined</code>. The option <code>noUncheckedIndexedAccess</code> fixes this, and <code>tsc --init</code> turns it on. It makes <code>marks[i]</code> have type <code>number | undefined</code>, so you must check it:</p>
          <div class="lc-code">const first = marks[0];          // number | undefined with noUncheckedIndexedAccess<br>if (first !== undefined) console.log(first.toFixed(1));</div>
          <p>This course's starters are checked with plain <code>--strict</code>. But it is a good habit to write the check anyway.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Typed Array Methods</h3>
          <p>Types pass through array methods automatically:</p>
          <div class="lc-code">const prices = [120, 45, 300];                      // number[]<br>const labels = prices.map((p) =&gt; "₹" + p);           // string[]<br>const big = prices.filter((p) =&gt; p &gt; 100);          // number[]<br>const found = prices.find((p) =&gt; p &gt; 500);          // number | undefined<br>console.log(labels.join(", "), big.length, found);</div>
          <p>Output:</p>
          <div class="lc-code">₹120, ₹45, ₹300 2 undefined</div>
          <p>Note that <code>find</code> returns <code>number | undefined</code>. TypeScript reminds you that nothing may match.</p>
        </div>
        <div class="lc-card">
          <h3>Arrays of Objects</h3>
          <p>In real apps, the most common array holds objects. Give the object type a name (Lesson 4) and add <code>[]</code>:</p>
          <div class="lc-code">type Student = { name: string; marks: number };<br>const cls: Student[] = [<br>&nbsp;&nbsp;{ name: "Asha", marks: 88 },<br>&nbsp;&nbsp;{ name: "Ravi", marks: 67 },<br>];<br>const toppers = cls.filter((s) =&gt; s.marks &gt;= 80).map((s) =&gt; s.name);   // string[]<br>// cls.push({ name: "Meera" });<br>// Error: Property 'marks' is missing in type '{ name: string; }' but required in type 'Student'.</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>const list = []</code> with no type. Always annotate empty arrays.</li>
            <li>Using a tuple with many positions (<code>[string, number, boolean, string]</code>). Nobody remembers what position 3 means. Use an object.</li>
            <li>Expecting <code>readonly</code> to freeze an array at runtime. It is only a compile-time check.</li>
            <li>Forgetting to annotate a tuple return type. Then TypeScript widens it to an array.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a labelled tuple type <code>Rgb</code> for a colour and print one.</li>
            <li>Give <code>minMax</code> in the starter a third result: the average.</li>
            <li>Uncomment the <code>push</code> into <code>readonlyStates</code>. It still runs here, but read the error <code>tsc</code> would give.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>T[]</code> (or <code>Array&lt;T&gt;</code>) is a list of any length. <code>[A, B]</code> is a tuple with a fixed length.</li>
            <li>Annotate empty arrays and tuple return types.</li>
            <li><code>readonly T[]</code> blocks changes at compile time.</li>
            <li>Reading an index can give <code>undefined</code> at runtime, so check it.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>readonly</code> array parameters in functions that only read data. It shows what you intend. It also lets callers pass both normal and readonly arrays.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 3: arrays and tuples
        const marks: number[] = [72, 85, 90];
        const names: Array<string> = ["Asha", "Ravi", "Meera"];
        marks.push(95);
        // marks.push("100"); // tsc: Argument of type 'string' is not assignable to parameter of type 'number'.
        console.log("Marks:", marks.join(", "), "| scaled:", marks.map((m) => m / 10).join(", "));
        console.log("Name lengths:", names.map((n) => n.length).join(", "));

        // Readonly arrays: functions that must not change the input
        function average(values: readonly number[]): number {
          return values.reduce((a, b) => a + b, 0) / values.length;
        }
        const readonlyStates: readonly string[] = ["Kerala", "Punjab"];
        // readonlyStates.push("Odisha"); // tsc: Property 'push' does not exist on type 'readonly string[]'.
        console.log("Average:", average(marks).toFixed(1), "| states:", readonlyStates.join(", "));

        // Tuples: fixed length, one type per position
        type Contact = [name: string, phone: string, email?: string];
        const contacts: Contact[] = [
          ["Ravi", "98765 43210"],
          ["Meera", "91234 56789", "meera@example.in"],
        ];
        for (const [person, phone, email] of contacts) {
          console.log(`${person}: ${phone} | ${email ?? "no email"}`);
        }

        // A function returning a labelled tuple
        function minMax(values: readonly number[]): [min: number, max: number] {
          return [Math.min(...values), Math.max(...values)];
        }
        const [low, high] = minMax([40, 72, 18, 95]);
        console.log("Lowest:", low, "| Highest:", high);

        // Mixed arrays have a union item type: (string | number)[]
        const mixed = [1, "two", 3];
        for (const item of mixed) {
          console.log(typeof item === "string" ? `string "${item.toUpperCase()}"` : `number ${item * 10}`);
        }

        // Reading past the end gives undefined at runtime
        const tenth: number | undefined = marks[10];
        console.log("marks[10]:", tenth ?? "undefined - always check indexes!");
      TS
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Object Types and Type Aliases</h1>
        </div>
        <p class="lc-lead">Most data in real apps is objects: users, products, orders. An <strong>object type</strong> lists the properties an object must have, and the type of each one. A <strong>type alias</strong> gives that shape a name. Then you can reuse it everywhere.</p>
        <div class="lc-card">
          <h3>Inline Object Types</h3>
          <div class="lc-code">function printUser(user: { name: string; age: number }): void {<br>&nbsp;&nbsp;console.log(user.name + " is " + user.age);<br>}<br><br>printUser({ name: "Asha", age: 21 });   // OK<br>printUser({ name: "Ravi" });<br>// Error: Property 'age' is missing in type '{ name: string; }' but required in type '{ name: string; age: number; }'.</div>
          <p>Properties are separated by <code>;</code> (commas also work).</p>
        </div>
        <div class="lc-card">
          <h3>Type Aliases</h3>
          <p>Writing the shape inline every time is tiring. Give it a name with <code>type</code>:</p>
          <div class="lc-code">type Product = {<br>&nbsp;&nbsp;id: number;<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;price: number;<br>};<br><br>const phone: Product = { id: 1, name: "Phone", price: 15999 };<br>function withGst(p: Product): number {<br>&nbsp;&nbsp;return Math.round(p.price * 1.18);<br>}</div>
          <p>Type names use <strong>PascalCase</strong> (each word starts with a capital letter). An alias creates no runtime code. It is only a name for a type.</p>
        </div>
        <div class="lc-card">
          <h3>Optional and Readonly Properties</h3>
          <div class="lc-code">type User = {<br>&nbsp;&nbsp;readonly id: number;   // cannot be reassigned<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;email?: string;        // optional: may be missing (string | undefined)<br>};<br><br>const u: User = { id: 7, name: "Meera" };   // OK without email<br>u.name = "Meera K";                          // OK<br>// u.id = 8;<br>// Error: Cannot assign to 'id' because it is a read-only property.<br><br>console.log(u.email?.toLowerCase() ?? "no email");   // must handle undefined</div>
          <p><code>readonly</code> is <strong>shallow</strong> and works only at compile time. For example, you cannot reassign a <code>readonly tags: string[]</code> property. But you could still push items into its array. Use <code>readonly string[]</code> to stop that.</p>
        </div>
        <div class="lc-card">
          <h3>Nested Types</h3>
          <div class="lc-code">type Address = { state: string; pin: string };<br>type Customer = {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;address: Address;          // reuse another alias<br>&nbsp;&nbsp;orders: { id: number; total: number }[];<br>};</div>
          <p>Build big types from small, named pieces. You can reuse and test each piece on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Dictionaries: Index Signatures and Record</h3>
          <p>Sometimes you do not know the <em>keys</em> in advance, for example a word count or prices by item. Then describe the key type and the value type:</p>
          <div class="lc-code">type StockA = { [item: string]: number };   // index signature<br>type StockB = Record&lt;string, number&gt;;       // same thing, shorter<br><br>const stock: StockB = { rice: 40, dal: 25 };<br>stock.sugar = 10;        // OK — any string key<br><br>type Grade = "A" | "B" | "C";<br>const counts: Record&lt;Grade, number&gt; = { A: 4, B: 7, C: 2 };   // must have all three keys</div>
        </div>
        <div class="lc-card">
          <h3>Structural Typing</h3>
          <p>TypeScript compares types by their <strong>shape</strong>, not their name. This is called structural typing. Any object that has the required properties fits, even if it was never declared as that type:</p>
          <div class="lc-code">type Named = { name: string };<br>const laptop = { name: "Laptop", price: 55000 };<br>function greet(x: Named) { return "Hello " + x.name; }<br>greet(laptop);   // OK — laptop has a string name (extra price is fine)</div>
        </div>
        <div class="lc-card">
          <h3>Excess Property Checks</h3>
          <p>There is one exception. When you write an <strong>object literal</strong> (an object written in curly braces) directly, TypeScript reports extra properties. This is because they are probably typos:</p>
          <div class="lc-code">const p: Product = { id: 2, name: "Bag", price: 999, colour: "red" };<br>// Error: Object literal may only specify known properties, and 'colour' does not exist in type 'Product'.</div>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Extra properties</th></tr></thead>
            <tbody>
              <tr><td>Fresh object literal assigned or passed directly</td><td>error (typo protection)</td></tr>
              <tr><td>Existing variable passed (like <code>laptop</code> above)</td><td>allowed (structural typing)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Typing an API Response</h3>
          <p>Describe the data your app receives once. Then every function that uses it gets autocomplete and checking:</p>
          <div class="lc-code">type Order = {<br>&nbsp;&nbsp;id: number;<br>&nbsp;&nbsp;items: { name: string; qty: number; price: number }[];<br>&nbsp;&nbsp;coupon?: string;<br>};<br><br>function orderTotal(o: Order): number {<br>&nbsp;&nbsp;return o.items.reduce((sum, i) =&gt; sum + i.qty * i.price, 0);<br>}<br><br>const order: Order = { id: 9, items: [{ name: "Tea", qty: 2, price: 30 }, { name: "Samosa", qty: 3, price: 20 }] };<br>console.log(orderTotal(order), order.coupon ?? "no coupon");</div>
          <p>Output:</p>
          <div class="lc-code">120 no coupon</div>
        </div>
        <div class="lc-card">
          <h3>Reading Object Type Errors</h3>
          <ul class="lc-list">
            <li><strong>"Property 'x' is missing in type …"</strong>: you forgot a required property.</li>
            <li><strong>"Object literal may only specify known properties"</strong>: an extra property (often misspelt).</li>
            <li><strong>"Type 'string' is not assignable to type 'number'"</strong>: a property has the wrong type.</li>
            <li><strong>"Cannot assign to 'x' because it is a read-only property"</strong>: you changed a <code>readonly</code> field.</li>
            <li><strong>"'x' is possibly 'undefined'"</strong>: you used an optional property without checking it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Making everything optional "to be safe". Then every use needs <code>undefined</code> checks. Only mark what is really optional.</li>
            <li>Using <code>Record&lt;string, T&gt;</code> and forgetting that a key might not exist. <code>stock["salt"]</code> is <code>undefined</code> at runtime.</li>
            <li>Expecting <code>readonly</code> to protect nested objects or to work at runtime.</li>
            <li>Using <code>object</code> or <code>{}</code> as a type. They accept almost anything. Describe the real shape.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add an optional <code>discount?: number</code> to <code>Product</code> in the starter. Use it in <code>finalPrice</code> (default 0).</li>
            <li>Create a <code>Record&lt;"veg" | "nonveg", number&gt;</code> that counts menu items.</li>
            <li>Uncomment the excess-property line and read the error message in the comment.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Object types list properties and their types. <code>type</code> gives the shape a name.</li>
            <li><code>?</code> marks optional properties. <code>readonly</code> blocks reassignment (shallow, compile time only).</li>
            <li><code>Record&lt;K, V&gt;</code> describes dictionaries.</li>
            <li>Types are compared by shape. Fresh object literals get extra-property checks.</li>
            <li>Build large types from small named ones.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name types after the thing they describe (<code>Order</code>, <code>Address</code>). Good type names describe your app's data. The compiler keeps this description up to date.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 4: object types and type aliases
        type Address = { state: string; pin: string };

        type Customer = {
          readonly id: number;
          name: string;
          email?: string; // optional
          address: Address;
        };

        type Product = { id: number; name: string; price: number };

        const customer: Customer = { id: 1, name: "Meera", address: { state: "Punjab", pin: "682001" } };
        customer.name = "Meera K";
        // customer.id = 2; // tsc: Cannot assign to 'id' because it is a read-only property.
        console.log(`${customer.name} (#${customer.id}) lives in ${customer.address.state}`);
        console.log("Email:", customer.email?.toLowerCase() ?? "not given");

        const cart: Product[] = [
          { id: 1, name: "Headphones", price: 1999 },
          { id: 2, name: "Phone cover", price: 299 },
        ];
        // const bad: Product = { id: 3, name: "Bag", price: 999, colour: "red" };
        // tsc: Object literal may only specify known properties, and 'colour' does not exist in type 'Product'.

        function finalPrice(p: Product): number {
          return Math.round(p.price * 1.18);
        }
        for (const p of cart) console.log(`${p.name}: ₹${p.price} -> ₹${finalPrice(p)} with GST`);

        // Record: a dictionary with known key and value types
        const stock: Record<string, number> = { rice: 40, dal: 25 };
        stock.sugar = 10;
        for (const [item, qty] of Object.entries(stock)) console.log(`${item}: ${qty} kg`);

        type Grade = "A" | "B" | "C";
        const gradeCount: Record<Grade, number> = { A: 4, B: 7, C: 2 };
        console.log("Grade B students:", gradeCount.B);

        // Structural typing: shape matters, not the name
        type Named = { name: string };
        const greet = (x: Named): string => "Hello, " + x.name;
        const laptop = { name: "Laptop", price: 55000 };
        console.log(greet(laptop), "|", greet(customer));
      TS
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Interfaces</h1>
        </div>
        <p class="lc-lead">An <strong>interface</strong> is another way to name an object shape. Interfaces can <strong>extend</strong> (build on) each other. Classes can <strong>implement</strong> them (promise to follow them). Most TypeScript libraries use interfaces to describe their objects.</p>
        <div class="lc-card">
          <h3>Declaring an Interface</h3>
          <div class="lc-code">interface Book {<br>&nbsp;&nbsp;readonly id: string;<br>&nbsp;&nbsp;title: string;<br>&nbsp;&nbsp;author: string;<br>&nbsp;&nbsp;pages?: number;                   // optional<br>&nbsp;&nbsp;summary(): string;                // a method<br>}<br><br>const book: Book = {<br>&nbsp;&nbsp;id: "BK-1001",<br>&nbsp;&nbsp;title: "Wings of Fire",<br>&nbsp;&nbsp;author: "A. P. J. Abdul Kalam",<br>&nbsp;&nbsp;summary() {<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.title + " by " + this.author;<br>&nbsp;&nbsp;},<br>};<br>console.log(book.summary());   // Wings of Fire by A. P. J. Abdul Kalam</div>
          <p>Like type aliases, interfaces disappear when the code is compiled. They only guide the type checker.</p>
        </div>
        <div class="lc-card">
          <h3>Extending Interfaces</h3>
          <div class="lc-code">interface Person {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;email: string;<br>}<br><br>interface Employee extends Person {<br>&nbsp;&nbsp;employeeId: number;<br>&nbsp;&nbsp;department: string;<br>}<br><br>interface Manager extends Employee {<br>&nbsp;&nbsp;reports: Employee[];<br>}<br><br>interface Timestamps { createdAt: string; updatedAt: string }<br>interface AuditedEmployee extends Employee, Timestamps {}   // extend several at once</div>
          <p>An <code>Employee</code> has everything a <code>Person</code> has, plus its own fields. Sometimes an extending interface declares a property again with a type that does not match. Then TypeScript reports an error.</p>
        </div>
        <div class="lc-card">
          <h3>Intersection Types: the type-alias Way</h3>
          <p>With type aliases, you combine shapes with <code>&amp;</code>. This is an <strong>intersection</strong>, which means "has all of these":</p>
          <div class="lc-code">type Person = { name: string; email: string };<br>type Employee = Person &amp; { employeeId: number; department: string };<br><br>const e: Employee = { name: "Ravi", email: "ravi@example.in", employeeId: 42, department: "IT" };</div>
          <p><code>extends</code> and <code>&amp;</code> usually give the same result. There is one difference. Property types that clash are reported at once with <code>extends</code>. But they quietly become <code>never</code> with <code>&amp;</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Declaration Merging</h3>
          <p>If you declare the same interface name twice, TypeScript <strong>merges</strong> (joins) them into one. Type aliases cannot do this (a repeated name is an error):</p>
          <div class="lc-code">interface Settings { theme: string }<br>interface Settings { fontSize: number }<br><br>const s: Settings = { theme: "dark", fontSize: 16 };   // needs both</div>
          <p>Libraries use merging so you can add fields to their types. For example, you can add a property to the global <code>Window</code> interface. In your own code, do not declare the same interface twice by accident.</p>
        </div>
        <div class="lc-card">
          <h3>Classes Implementing an Interface</h3>
          <p>An interface can act as a contract (a set of rules) for a class. <code>implements</code> makes TypeScript check that the class has every required member. You learn more about classes in Lesson 12:</p>
          <div class="lc-code">interface PaymentMethod {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;pay(amount: number): string;<br>}<br><br>class Upi implements PaymentMethod {<br>&nbsp;&nbsp;name = "UPI";<br>&nbsp;&nbsp;constructor(private vpa: string) {}<br>&nbsp;&nbsp;pay(amount: number): string {<br>&nbsp;&nbsp;&nbsp;&nbsp;return "Paid ₹" + amount + " to " + this.vpa;<br>&nbsp;&nbsp;}<br>}<br><br>// class Cash implements PaymentMethod { name = "Cash"; }<br>// Error: Class 'Cash' incorrectly implements interface 'PaymentMethod'.<br>//   Property 'pay' is missing in type 'Cash' but required in type 'PaymentMethod'.</div>
        </div>
        <div class="lc-card">
          <h3>interface or type?</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th><code>interface</code></th><th><code>type</code></th></tr></thead>
            <tbody>
              <tr><td>Object shapes</td><td>yes</td><td>yes</td></tr>
              <tr><td>Extend / combine</td><td><code>extends</code></td><td><code>&amp;</code></td></tr>
              <tr><td>Unions (<code>"a" | "b"</code>), tuples, primitives</td><td>no</td><td>yes</td></tr>
              <tr><td>Declaration merging</td><td>yes</td><td>no</td></tr>
              <tr><td><code>implements</code> by a class</td><td>yes</td><td>yes (for object types)</td></tr>
              <tr><td>Mapped / conditional types (Lesson 15)</td><td>no</td><td>yes</td></tr>
            </tbody>
          </table>
          <p>A good rule: use <code>interface</code> for object shapes that others may extend, such as public APIs and class contracts. Use <code>type</code> for unions, tuples and computed types. For plain objects, either works. The important thing is to be <strong>consistent</strong> in a codebase.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Interfaces for Functions and Dictionaries</h3>
          <p>Interfaces can also describe function shapes and index signatures (dictionary keys):</p>
          <div class="lc-code">interface Formatter {<br>&nbsp;&nbsp;(value: number): string;           // call signature<br>}<br>const rupees: Formatter = (v) =&gt; "₹" + v.toLocaleString("en-IN");<br><br>interface PriceList {<br>&nbsp;&nbsp;[item: string]: number;            // index signature<br>}<br>const menu: PriceList = { chai: 20, coffee: 35 };<br>console.log(rupees(125000), menu.coffee);</div>
          <p>Output:</p>
          <div class="lc-code">₹1,25,000 35</div>
          <p>In practice, <code>type Formatter = (value: number) =&gt; string</code> and <code>Record&lt;string, number&gt;</code> are more common for these. But you will see both styles in libraries.</p>
        </div>
        <div class="lc-card">
          <h3>Optional Methods and Readonly Members</h3>
          <div class="lc-code">interface Notifier {<br>&nbsp;&nbsp;readonly channel: "sms" | "email";<br>&nbsp;&nbsp;send(to: string, text: string): boolean;<br>&nbsp;&nbsp;schedule?(to: string, text: string, at: Date): void;   // optional method<br>}<br><br>function notify(n: Notifier) {<br>&nbsp;&nbsp;n.send("98765 43210", "OTP 4821");<br>&nbsp;&nbsp;n.schedule?.("98765 43210", "Reminder", new Date());      // call only if present<br>}</div>
          <p>You can combine interfaces with literal unions (Lesson 7) and optional members. This lets you describe real-world objects very exactly.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Trying to write a union with <code>interface</code>. <code>interface Status = "on" | "off"</code> is a syntax error. Use <code>type</code>.</li>
            <li>Merging two interfaces with the same name in different files by accident. This creates a shape you did not expect.</li>
            <li>Thinking <code>implements</code> adds code to the class. It only checks. You still write every member.</li>
            <li>Long inheritance chains (<code>A extends B extends C extends D</code>). Keep interfaces small and combine them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>Card</code> class to the starter that implements <code>PaymentMethod</code> and charges a 2% fee.</li>
            <li>Create an <code>Intern</code> interface that extends <code>Employee</code> with <code>mentor: string</code>.</li>
            <li>Rewrite <code>Employee</code> as a type alias using <code>&amp;</code>. Check that the code still passes.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Interfaces name object shapes and can <code>extend</code> one or more other interfaces.</li>
            <li><code>&amp;</code> is the type-alias way to combine shapes.</li>
            <li>Interfaces with the same name merge; type aliases cannot.</li>
            <li>A class can <code>implements</code> an interface. The interface is a contract that TypeScript checks.</li>
            <li>Pick one style for plain objects and stay consistent.</li>
            <li>Unions and tuples always need <code>type</code>.</li>
            <li>Interfaces produce no JavaScript at all.</li>
            <li>Hover in your editor to see the full shape.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Hover over an interface in VS Code to see all its members, including inherited ones. When an object "doesn't fit", read the error from the bottom up. The last line usually names the exact missing or wrong property.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 5: interfaces
        interface Person {
          name: string;
          email: string;
        }

        interface Employee extends Person {
          readonly employeeId: number;
          department: string;
          phone?: string;
        }

        interface Manager extends Employee { reports: Employee[] }

        const asha: Employee = { name: "Asha", email: "asha@example.in", employeeId: 101, department: "IT" };
        const ravi: Employee = { name: "Ravi", email: "ravi@example.in", employeeId: 102, department: "IT", phone: "98765 43210" };
        const meera: Manager = { name: "Meera", email: "meera@example.in", employeeId: 1, department: "IT", reports: [asha, ravi] };

        function describe(e: Employee): string {
          return `#${e.employeeId} ${e.name} (${e.department}) phone: ${e.phone ?? "n/a"}`;
        }
        console.log(describe(meera));
        for (const r of meera.reports) console.log("  reports:", describe(r));

        // An interface as a contract for classes
        interface PaymentMethod {
          readonly label: string;
          pay(amount: number): string;
        }

        class Upi implements PaymentMethod {
          readonly label = "UPI";
          constructor(private vpa: string) {}
          pay(amount: number): string {
            return `Paid ₹${amount} to ${this.vpa}`;
          }
        }

        class Wallet implements PaymentMethod {
          readonly label = "Wallet";
          constructor(private balance: number) {}
          pay(amount: number): string {
            if (amount > this.balance) return `Wallet: insufficient balance (₹${this.balance})`;
            this.balance -= amount;
            return `Paid ₹${amount} from wallet, ₹${this.balance} left`;
          }
        }

        const methods: PaymentMethod[] = [new Upi("asha@okbank"), new Wallet(300)];
        for (const m of methods) console.log(`${m.label}: ${m.pay(250)}`);
      TS
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Functions with Types</h1>
        </div>
        <p class="lc-lead">Types help most in functions. Typed parameters stop callers from passing the wrong data. Typed return values promise what comes back. Function types let you describe callbacks (functions passed to other functions) exactly.</p>
        <div class="lc-card">
          <h3>Parameters and Return Types</h3>
          <div class="lc-code">function emi(principal: number, yearlyRate: number, months: number): number {<br>&nbsp;&nbsp;const r = yearlyRate / 12 / 100;<br>&nbsp;&nbsp;return Math.round((principal * r * (1 + r) ** months) / ((1 + r) ** months - 1));<br>}<br><br>emi(100000, 12, 12);      // 8885<br>emi(100000, "12", 12);<br>// Error: Argument of type 'string' is not assignable to parameter of type 'number'.<br>emi(100000, 12);<br>// Error: Expected 3 arguments, but got 2.</div>
          <p>You <strong>must</strong> annotate parameters. Under <code>strict</code>, a parameter without a type is an error: "implicitly has an 'any' type". If you leave out the return type, TypeScript infers it. But write it on important functions. It documents the contract and catches mistakes inside the function, such as a branch that forgets to <code>return</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Optional and Default Parameters</h3>
          <div class="lc-code">function greet(name: string, greeting?: string): string {<br>&nbsp;&nbsp;return (greeting ?? "Namaste") + ", " + name;   // greeting: string | undefined<br>}<br><br>function price(amount: number, gstRate = 0.18): number {   // gstRate inferred: number<br>&nbsp;&nbsp;return amount * (1 + gstRate);<br>}<br><br>greet("Kiran");            // "Namaste, Kiran"<br>price(100);                // 118<br>price(100, 0.05);          // 105</div>
          <p>Optional parameters must come <strong>after</strong> required ones. A default value makes a parameter optional. It also gives the parameter a type automatically.</p>
        </div>
        <div class="lc-card">
          <h3>Rest Parameters</h3>
          <div class="lc-code">function sum(...values: number[]): number {<br>&nbsp;&nbsp;return values.reduce((a, b) =&gt; a + b, 0);<br>}<br>sum(1, 2, 3);        // 6<br>sum();               // 0</div>
        </div>
        <div class="lc-card">
          <h3>void, undefined and never</h3>
          <table class="lc-table">
            <thead><tr><th>Return type</th><th>Means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>void</code></td><td>the caller should not use the result</td><td>a logging function</td></tr>
              <tr><td><code>undefined</code></td><td>explicitly returns <code>undefined</code></td><td>rare</td></tr>
              <tr><td><code>never</code></td><td>never returns at all (always throws, or loops forever)</td><td><code>function fail(msg: string): never { throw new Error(msg); }</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Function Types</h3>
          <p>A <strong>function type expression</strong> describes a function's parameters and return type. It is perfect for callbacks:</p>
          <div class="lc-code">type Discount = (price: number) =&gt; number;<br><br>const festive: Discount = (p) =&gt; p * 0.8;        // p is inferred as number<br>const flat100: Discount = (p) =&gt; Math.max(0, p - 100);<br><br>function applyAll(prices: number[], rule: Discount): number[] {<br>&nbsp;&nbsp;return prices.map(rule);<br>}<br>applyAll([500, 1200], festive);   // [400, 960]</div>
          <p>Notice that <code>(p) =&gt; …</code> needs no annotation. TypeScript knows <code>p</code> is a <code>number</code> from the <code>Discount</code> type. This is called <strong>contextual typing</strong> (the type comes from where the function is used). It also works for array method callbacks such as <code>prices.map(p =&gt; p * 2)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Callback That Returns the Wrong Type</h3>
          <div class="lc-code">const half: Discount = (p) =&gt; (p / 2).toFixed(2);<br>// Error: Type 'string' is not assignable to type 'number'.</div>
          <p><code>toFixed</code> returns a <em>string</em>. In JavaScript, this bug would only show up later as <code>"250.00" + 10 = "250.0010"</code>. TypeScript points to the exact line.</p>
        </div>
        <div class="lc-card">
          <h3>Overloads</h3>
          <p>Sometimes the return type depends on the argument type. <strong>Overload signatures</strong> describe each case. One implementation handles them all:</p>
          <div class="lc-code">function parse(value: string): number;<br>function parse(value: string[]): number[];<br>function parse(value: string | string[]): number | number[] {<br>&nbsp;&nbsp;return Array.isArray(value) ? value.map(Number) : Number(value);<br>}<br><br>const one = parse("42");          // one: number<br>const many = parse(["1", "2"]);   // many: number[]</div>
          <p>Overloads are useful but long. When every case returns the <em>same</em> type, one signature with a union parameter is simpler. Use overloads only when the <strong>return type</strong> changes with the input.</p>
        </div>
        <div class="lc-card">
          <h3>Annotate or Infer?</h3>
          <table class="lc-table">
            <thead><tr><th>Part of a function</th><th>Annotate?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Parameters</td><td>always (unless it is a callback typed by its context)</td><td>TypeScript cannot guess what callers pass</td></tr>
              <tr><td>Return type of exported / important functions</td><td>yes</td><td>documents the contract, catches wrong returns</td></tr>
              <tr><td>Return type of tiny local helpers</td><td>optional</td><td>inference is accurate</td></tr>
              <tr><td>Callback parameters inside <code>map</code>, <code>filter</code></td><td>no</td><td>already known from the context</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Typing Destructured Parameters</h3>
          <p>Functions often receive an options object. Write the type for the whole object after the destructuring pattern (the curly braces that unpack its properties):</p>
          <div class="lc-code">type ShipOptions = { state: string; express?: boolean };<br><br>function shippingCost({ state, express = false }: ShipOptions): number {<br>&nbsp;&nbsp;const base = state === "Gujarat" ? 40 : 60;<br>&nbsp;&nbsp;return express ? base * 2 : base;<br>}<br>console.log(shippingCost({ state: "Kerala" }), shippingCost({ state: "Gujarat", express: true }));   // 60 80</div>
          <p>Do not write <code>{ state: string }</code> inside the pattern. That would <em>rename</em> <code>state</code> to a variable called <code>string</code>. Many beginners make this mistake.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting an optional parameter before a required one. The error is "A required parameter cannot follow an optional parameter."</li>
            <li>Forgetting that an optional parameter can be <code>undefined</code>. Then using it without a check or a default.</li>
            <li>Annotating callback parameters that TypeScript already knows from context.</li>
            <li>Returning different types from different branches by accident. Add a return type to catch it.</li>
            <li>Using the <code>Function</code> type. It accepts any function and checks nothing. Write the real signature.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a new <code>Discount</code> rule to the starter: 10% off, but at most ₹200 off.</li>
            <li>Give <code>makeReceipt</code> an optional <code>customer?: string</code> parameter. Print it if it is given.</li>
            <li>Call <code>safePrice</code> with a negative number. See how <code>never</code> and <code>throw</code> work together.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Annotate parameters. Also annotate return types of important functions.</li>
            <li>Optional (<code>?</code>) and default parameters come after required ones.</li>
            <li>Function types such as <code>(price: number) =&gt; number</code> describe callbacks.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Define a <code>type</code> for any callback shape you use more than once (<code>type Validator = (value: string) =&gt; string | null</code>). These types become the shared words of your code.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 6: functions with types
        function emi(principal: number, yearlyRate: number, months: number): number {
          const r = yearlyRate / 12 / 100;
          return Math.round((principal * r * (1 + r) ** months) / ((1 + r) ** months - 1));
        }
        console.log("EMI for ₹1,00,000 at 12% over 12 months: ₹" + emi(100000, 12, 12));
        // emi(100000, "12", 12); // tsc: Argument of type 'string' is not assignable to parameter of type 'number'.

        // Optional, default and rest parameters
        function greet(person: string, greeting?: string): string {
          return `${greeting ?? "Namaste"}, ${person}!`;
        }
        const withGst = (amount: number, rate = 0.18): number => Math.round(amount * (1 + rate));
        const sum = (...values: number[]): number => values.reduce((a, b) => a + b, 0);
        console.log(greet("Kiran"), "|", greet("Sam", "Hello"));
        console.log("withGst(1000):", withGst(1000), "| at 5%:", withGst(1000, 0.05));
        console.log("sum(120, 45, 80):", sum(120, 45, 80));

        // Function types for callbacks (p is inferred as number from the type)
        type Discount = (price: number) => number;
        const rules: Record<string, Discount> = {
          festive: (p) => p * 0.8,
          flat100: (p) => Math.max(0, p - 100),
          none: (p) => p,
        };
        function makeReceipt(prices: number[], rule: Discount): string {
          return `₹${sum(...prices.map(rule)).toFixed(2)}`;
        }
        const cart = [500, 1200, 80];
        for (const [ruleName, rule] of Object.entries(rules)) {
          console.log(`${ruleName.padEnd(8)} -> ${makeReceipt(cart, rule)}`);
        }

        // never: a function that always throws
        function fail(message: string): never {
          throw new Error(message);
        }
        function safePrice(p: number): number {
          return p >= 0 ? p : fail(`Invalid price: ${p}`);
        }
        try {
          console.log("safePrice(250):", safePrice(250));
          safePrice(-5);
        } catch (e) {
          console.log("Caught:", e instanceof Error ? e.message : e);
        }
      TS
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Union and Literal Types</h1>
        </div>
        <p class="lc-lead">A <strong>union type</strong> means "this value is one of several types". A <strong>literal type</strong> is one exact value, like <code>"GET"</code>. Together they let you describe real choices, such as order status, payment mode or user role. They are so exact that wrong values become compile errors.</p>
        <div class="lc-card">
          <h3>Union Types</h3>
          <div class="lc-code">let pincode: string | number;<br>pincode = "560001";   // OK<br>pincode = 560001;     // OK<br>pincode = true;<br>// Error: Type 'boolean' is not assignable to type 'string | number'.</div>
          <p>With a union, you can only use what <strong>all</strong> members share. This is true until you check which one you have:</p>
          <div class="lc-code">function show(id: string | number) {<br>&nbsp;&nbsp;// id.toUpperCase();<br>&nbsp;&nbsp;// Error: Property 'toUpperCase' does not exist on type 'string | number'.<br>&nbsp;&nbsp;if (typeof id === "string") return id.toUpperCase();   // here id: string<br>&nbsp;&nbsp;return id.toFixed(0);                                 // here id: number<br>}</div>
          <p>Checking the type like this is called <strong>narrowing</strong>. Lesson 8 covers every way to do it.</p>
        </div>
        <div class="lc-card">
          <h3>Literal Types and Literal Unions</h3>
          <div class="lc-code">type PaymentMode = "upi" | "card" | "cash";<br>type Size = "S" | "M" | "L" | "XL";<br>type Dice = 1 | 2 | 3 | 4 | 5 | 6;<br><br>let mode: PaymentMode = "upi";<br>mode = "cheque";<br>// Error: Type '"cheque"' is not assignable to type 'PaymentMode'.</div>
          <p>Now your editor <strong>autocompletes</strong> the allowed values. A typo like <code>"UPI"</code> or <code>"crad"</code> is caught at once.</p>
          <p>In TypeScript, a string literal union is the <strong>recommended default</strong> for a fixed set of choices. It is lighter than enums and adds no runtime code. Lesson 13 compares the two.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Order Status</h3>
          <div class="lc-code">type OrderStatus = "placed" | "packed" | "shipped" | "delivered";<br><br>function nextStatus(s: OrderStatus): OrderStatus {<br>&nbsp;&nbsp;if (s === "placed") return "packed";<br>&nbsp;&nbsp;if (s === "packed") return "shipped";<br>&nbsp;&nbsp;return "delivered";<br>}<br><br>console.log(nextStatus("placed"));   // packed<br>nextStatus("cancelled");<br>// Error: Argument of type '"cancelled"' is not assignable to parameter of type 'OrderStatus'.</div>
        </div>
        <div class="lc-card">
          <h3>as const: Literal Types from Values</h3>
          <p>Often you need the choices both as a <em>type</em> and as <em>runtime values</em>, for example to loop over them or to fill a dropdown. Write the values once with <code>as const</code>. Then get the type from them:</p>
          <div class="lc-code">const ROLES = ["admin", "editor", "viewer"] as const;<br>// type: readonly ["admin", "editor", "viewer"]<br><br>type Role = (typeof ROLES)[number];   // "admin" | "editor" | "viewer"<br><br>for (const r of ROLES) console.log(r);   // the values still exist at runtime</div>
          <p><code>as const</code> makes TypeScript infer the <strong>narrowest</strong> types (literals instead of <code>string</code>). It also marks everything <code>readonly</code>. It works on objects too:</p>
          <div class="lc-code">const GST = { food: 5, electronics: 18, luxury: 28 } as const;<br>type Category = keyof typeof GST;          // "food" | "electronics" | "luxury"<br>type Rate = (typeof GST)[Category];        // 5 | 18 | 28</div>
          <p>Here, <code>typeof</code> is TypeScript's type-level <code>typeof</code>. It takes the type of a value. Then <code>keyof</code> lists that type's keys (more in Lesson 11).</p>
        </div>
        <div class="lc-card">
          <h3>Nullable Unions</h3>
          <p>Under <code>strict</code>, you write "might be missing" as a union with <code>null</code> or <code>undefined</code>:</p>
          <div class="lc-code">function findUser(id: number): string | null {<br>&nbsp;&nbsp;return id === 1 ? "Asha" : null;<br>}<br>const who = findUser(2);<br>console.log(who?.toUpperCase() ?? "not found");   // not found</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Settings Object</h3>
          <p>Literal unions make a settings type explain itself:</p>
          <div class="lc-code">type Settings = {<br>&nbsp;&nbsp;theme: "light" | "dark" | "system";<br>&nbsp;&nbsp;language: "en" | "hi" | "ta" | "bn";<br>&nbsp;&nbsp;fontSize: 12 | 14 | 16 | 18;<br>&nbsp;&nbsp;notifications: boolean;<br>};<br><br>const mine: Settings = { theme: "dark", language: "hi", fontSize: 16, notifications: true };<br>console.log(mine.theme, mine.language, mine.fontSize);</div>
          <p>Output:</p>
          <div class="lc-code">dark hi 16</div>
          <p>Try <code>fontSize: 15</code>, and TypeScript reports <code>Type '15' is not assignable to type '12 | 14 | 16 | 18'.</code> The type <em>is</em> the list of every allowed option.</p>
        </div>
        <div class="lc-card">
          <h3>Union vs Intersection</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Union <code>A | B</code></th><th>Intersection <code>A &amp; B</code></th></tr></thead>
            <tbody>
              <tr><td>Meaning</td><td>either A <em>or</em> B</td><td>both A <em>and</em> B at once</td></tr>
              <tr><td>What you can use without checks</td><td>only members common to both</td><td>all members of both</td></tr>
              <tr><td>Typical use</td><td>choices, "value or null"</td><td>combining object shapes (Lesson 5)</td></tr>
              <tr><td>Example</td><td><code>"upi" | "card"</code></td><td><code>Person &amp; { employeeId: number }</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using plain <code>string</code> for a value that has only a few valid options. Use a literal union.</li>
            <li>Declaring choices with <code>let</code> and no annotation. <code>let mode = "upi"</code> widens to <code>string</code>.</li>
            <li>Forgetting <code>as const</code>, so <code>(typeof ROLES)[number]</code> is just <code>string</code>.</li>
            <li>Calling a method on a union without narrowing first.</li>
            <li>Mixing up <code>|</code> and <code>&amp;</code>. <code>string &amp; number</code> is <code>never</code> (nothing can be both).</li>
            <li>Comparing with a value that is not in the union (<code>if (mode === "UPI")</code>). TypeScript reports "This comparison appears to be unintentional because the types … have no overlap."</li>
            <li>Copying the list of choices into several places. Instead, get the type from one <code>as const</code> array.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add <code>"netbanking"</code> to <code>PAYMENT_MODES</code> in the starter. Which other line must you update? How does <code>tsc</code> tell you?</li>
            <li>Add a <code>"cancelled"</code> status. Make <code>nextStatus</code> keep cancelled orders cancelled.</li>
            <li>Create <code>const SIZES = ["S", "M", "L"] as const</code> and get a <code>Size</code> type from it.</li>
            <li>Write <code>function roll(): Dice</code> that returns a random dice value. Why does <code>Math.ceil(Math.random() * 6)</code> need a type assertion or a check?</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>A | B</code> means "A or B". Narrow it before you use members of one type.</li>
            <li>Literal unions like <code>"upi" | "card"</code> describe fixed choices with zero runtime cost.</li>
            <li><code>as const</code> + <code>(typeof X)[number]</code> or <code>keyof typeof X</code> gets the union from real values.</li>
            <li>Write <code>T | null</code> when a value may be missing.</li>
            <li><code>A &amp; B</code> means "both at once". It is mostly used to combine object shapes.</li>
            <li>Literal unions give autocomplete in your editor for free.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Sometimes a parameter is typed as <code>string</code> with a comment like <code>// "asc" or "desc"</code>. Turn the comment into a type: <code>order: "asc" | "desc"</code>. Now the compiler enforces what the comment could only ask for.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 7: union and literal types
        // One source of truth: runtime values + a derived union type
        const PAYMENT_MODES = ["upi", "card", "cash"] as const;
        type PaymentMode = (typeof PAYMENT_MODES)[number]; // "upi" | "card" | "cash"

        const FEE_PERCENT: Record<PaymentMode, number> = { upi: 0, card: 2, cash: 0 };

        function charge(amount: number, mode: PaymentMode): string {
          const fee = (amount * FEE_PERCENT[mode]) / 100;
          return `${mode.toUpperCase()}: ₹${amount + fee} (fee ₹${fee})`;
        }
        for (const mode of PAYMENT_MODES) console.log(charge(1500, mode));
        // charge(1500, "cheque"); // tsc: Argument of type '"cheque"' is not assignable to parameter of type '"card" | "cash" | "upi"'.

        // Literal union for a workflow
        type OrderStatus = "placed" | "packed" | "shipped" | "delivered";
        function nextStatus(s: OrderStatus): OrderStatus {
          if (s === "placed") return "packed";
          if (s === "packed") return "shipped";
          return "delivered";
        }
        let current: OrderStatus = "placed";
        const journey: OrderStatus[] = [current];
        while (current !== "delivered") {
          current = nextStatus(current);
          journey.push(current);
        }
        console.log("Order journey:", journey.join(" -> "));

        // as const on an object, keyof typeof for its keys
        const GST = { food: 5, electronics: 18, luxury: 28 } as const;
        type Category = keyof typeof GST; // "food" | "electronics" | "luxury"
        const priceWithGst = (price: number, c: Category) => Math.round(price * (1 + GST[c] / 100));
        console.log("Laptop ₹50000 ->", priceWithGst(50000, "electronics"));

        // A union of different types: narrow before using
        function formatId(id: string | number): string {
          return typeof id === "string" ? id.toUpperCase() : `#${id.toString().padStart(5, "0")}`;
        }
        console.log(formatId("ord-9a"), formatId(42));

        // Nullable union
        function findUser(id: number): string | null {
          return id === 1 ? "Asha" : null;
        }
        console.log("User 1:", findUser(1) ?? "not found", "| User 2:", findUser(2) ?? "not found");
      TS
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Type Narrowing</h1>
        </div>
        <p class="lc-lead">When a value has a union type, TypeScript lets you use only what every member shares. <strong>Narrowing</strong> is how you prove which member you have. TypeScript follows your <code>if</code>s, <code>return</code>s and <code>switch</code>es. This is called <em>control-flow analysis</em>. Inside each branch, TypeScript gives the variable a more exact type.</p>
        <div class="lc-card">
          <h3>typeof Guards</h3>
          <div class="lc-code">function formatAmount(amount: string | number): string {<br>&nbsp;&nbsp;if (typeof amount === "string") {<br>&nbsp;&nbsp;&nbsp;&nbsp;return "₹" + amount.trim();          // amount: string<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return "₹" + amount.toFixed(2);          // amount: number<br>}<br>formatAmount(" 499 ");   // "₹499"<br>formatAmount(1250);      // "₹1250.00"</div>
          <p>After the <code>return</code>, TypeScript knows the string case is gone. So <code>amount</code> must be a number. <code>typeof</code> can check <code>"string"</code>, <code>"number"</code>, <code>"boolean"</code>, <code>"bigint"</code>, <code>"symbol"</code>, <code>"undefined"</code>, <code>"function"</code> and <code>"object"</code>.</p>
          <p>Remember this strange JavaScript rule: <code>typeof null === "object"</code>. So <code>typeof x === "object"</code> does <strong>not</strong> rule out <code>null</code>. TypeScript will tell you "'x' is possibly 'null'".</p>
        </div>
        <div class="lc-card">
          <h3>Truthiness and Equality</h3>
          <div class="lc-code">function greet(name: string | null | undefined): string {<br>&nbsp;&nbsp;if (!name) return "Hello, guest";   // handles null, undefined AND ""<br>&nbsp;&nbsp;return "Hello, " + name;            // name: string<br>}<br><br>function sameState(a: string | number, b: string | boolean) {<br>&nbsp;&nbsp;if (a === b) {<br>&nbsp;&nbsp;&nbsp;&nbsp;return a.toUpperCase();            // both must be string here<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return "different";<br>}</div>
          <p>Truthiness checks (checks like "if x is truthy") are short. But they also remove <code>0</code> and <code>""</code>. When those are valid values, compare directly: <code>if (count !== undefined)</code> or <code>if (value != null)</code>. The loose <code>!=</code> removes both <code>null</code> and <code>undefined</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The in Operator and instanceof</h3>
          <div class="lc-code">type Upi = { vpa: string };<br>type Card = { cardNumber: string; expiry: string };<br><br>function describePayment(p: Upi | Card): string {<br>&nbsp;&nbsp;if ("vpa" in p) return "UPI to " + p.vpa;           // p: Upi<br>&nbsp;&nbsp;return "Card ending " + p.cardNumber.slice(-4);     // p: Card<br>}<br><br>function toDate(value: Date | string): Date {<br>&nbsp;&nbsp;return value instanceof Date ? value : new Date(value);<br>}</div>
          <p><code>"key" in obj</code> narrows to the union members that have that key. <code>instanceof</code> works for classes (<code>Date</code>, <code>Error</code>, your own classes). For arrays, use <code>Array.isArray(value)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Which Guard When?</h3>
          <table class="lc-table">
            <thead><tr><th>Guard</th><th>Use for</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>typeof x === "…"</code></td><td>primitives</td><td><code>typeof id === "number"</code></td></tr>
              <tr><td>truthiness <code>if (x)</code></td><td>removing <code>null</code>/<code>undefined</code> when <code>0</code>/<code>""</code> don't matter</td><td><code>if (user)</code></td></tr>
              <tr><td><code>=== / !==</code></td><td>literal values, <code>null</code></td><td><code>if (status === "paid")</code></td></tr>
              <tr><td><code>"key" in x</code></td><td>object shapes without a shared tag</td><td><code>"vpa" in p</code></td></tr>
              <tr><td><code>instanceof</code></td><td>class instances</td><td><code>err instanceof Error</code></td></tr>
              <tr><td><code>Array.isArray(x)</code></td><td>arrays</td><td><code>Array.isArray(tags)</code></td></tr>
              <tr><td>type predicate</td><td>your own reusable checks</td><td><code>isProduct(x)</code></td></tr>
              <tr><td>discriminant field</td><td>tagged unions (Lesson 9)</td><td><code>switch (shape.kind)</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Custom Type Guards: Type Predicates</h3>
          <p>For checks you repeat, write a function whose return type is <code>value is SomeType</code>. This is called a type predicate. When the function returns <code>true</code>, TypeScript narrows the argument:</p>
          <div class="lc-code">type Product = { name: string; price: number };<br><br>function isProduct(value: unknown): value is Product {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;typeof value === "object" &amp;&amp; value !== null &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"name" in value &amp;&amp; typeof value.name === "string" &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"price" in value &amp;&amp; typeof value.price === "number"<br>&nbsp;&nbsp;);<br>}<br><br>const data: unknown = JSON.parse('{"name":"Pen","price":20}');<br>if (isProduct(data)) console.log(data.name, data.price);   // data: Product</div>
          <p>TypeScript trusts your predicate. If the check inside is wrong, the narrowing is wrong too. Keep predicates small and test them.</p>
        </div>
        <div class="lc-card">
          <h3>Inferred Type Predicates (TypeScript 5.5+)</h3>
          <p>Since TypeScript 5.5, simple arrow functions like <code>x =&gt; x !== null</code> are treated as type predicates automatically. So <code>filter</code> removes <code>null</code> from the type:</p>
          <div class="lc-code">const scores: (number | null)[] = [72, null, 90, null, 65];<br>const valid = scores.filter((s) =&gt; s !== null);   // number[]  (was (number | null)[] before 5.5)<br>console.log(valid.reduce((a, b) =&gt; a + b, 0));     // 227</div>
        </div>
        <div class="lc-card">
          <h3>Assertion Functions</h3>
          <p>An assertion function throws an error if a condition is false. Its return type is <code>asserts value is T</code>. It narrows the variable for all the code <em>after</em> the call:</p>
          <div class="lc-code">function assertIsString(value: unknown, label: string): asserts value is string {<br>&nbsp;&nbsp;if (typeof value !== "string") throw new TypeError(label + " must be a string");<br>}<br><br>const input: unknown = "  asha@example.in ";<br>assertIsString(input, "email");<br>console.log(input.trim());   // input: string from here on</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Narrowing unknown Step by Step</h3>
          <p>Give data from outside (JSON, forms) the type <code>unknown</code>. Then narrow it one piece at a time:</p>
          <div class="lc-code">function readAge(value: unknown): number {<br>&nbsp;&nbsp;if (typeof value === "number") return value;<br>&nbsp;&nbsp;if (typeof value === "string" &amp;&amp; value.trim() !== "") {<br>&nbsp;&nbsp;&nbsp;&nbsp;const n = Number(value);<br>&nbsp;&nbsp;&nbsp;&nbsp;if (!Number.isNaN(n)) return n;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;throw new TypeError("Age must be a number");<br>}<br><br>console.log(readAge(21), readAge("34"));<br>try { readAge("abc"); } catch (e) { if (e instanceof Error) console.log(e.message); }</div>
          <p>Output:</p>
          <div class="lc-code">21 34<br>Age must be a number</div>
          <p>Every <code>return</code> happens only after a check. So the function's <code>number</code> return type is true.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>typeof x === "object"</code> and forgetting that <code>null</code> passes that test.</li>
            <li>Using a truthiness check on a number that can validly be <code>0</code>.</li>
            <li>Using <code>as Product</code> instead of checking. An assertion hides bugs, but a guard finds them.</li>
            <li>Writing a type predicate whose body does not really check what it promises.</li>
            <li>Expecting narrowing to still work inside a callback after the variable was reassigned. Copy it to a <code>const</code> first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>NetBanking</code> type with a <code>bank</code> field to the starter. Handle it in <code>describePayment</code> using <code>in</code>.</li>
            <li>Write <code>isNonEmptyString(value: unknown): value is string</code> and use it on the <code>inputs</code> array.</li>
            <li>Call <code>assertPositive(-5)</code> inside a <code>try</code> and print the error message.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Narrowing turns a union into one exact member inside a branch.</li>
            <li>Use <code>typeof</code>, equality, <code>in</code>, <code>instanceof</code> and <code>Array.isArray</code> as built-in guards.</li>
            <li>Write <code>value is T</code> predicates for checks you reuse. Write <code>asserts value is T</code> functions to throw errors early.</li>
            <li>Since TypeScript 5.5, <code>filter(x =&gt; x !== null)</code> narrows automatically.</li>
            <li>Use checks instead of <code>as</code> assertions.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In VS Code, hover over a variable inside each branch of an <code>if</code>. You will see its type change. This is the fastest way to see what TypeScript has proven, and what it has not.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 8: type narrowing
        function formatAmount(amount: string | number): string {
          if (typeof amount === "string") return "₹" + amount.trim(); // string here
          return "₹" + amount.toFixed(2);                             // number here
        }
        console.log(formatAmount(" 499 "), formatAmount(1250));

        type Upi = { vpa: string };
        type Card = { cardNumber: string; expiry: string };
        function describePayment(p: Upi | Card): string {
          if ("vpa" in p) return "UPI to " + p.vpa;
          return `Card ending ${p.cardNumber.slice(-4)} (exp ${p.expiry})`;
        }
        console.log(describePayment({ vpa: "asha@okbank" }));
        console.log(describePayment({ cardNumber: "4111111111111111", expiry: "08/29" }));

        // instanceof and Array.isArray
        const toDate = (v: Date | string): Date => (v instanceof Date ? v : new Date(v));
        const toList = (v: string | string[]): string[] => (Array.isArray(v) ? v : [v]);
        console.log(toDate("2026-09-25").getFullYear(), toList("chai").length, toList(["a", "b"]).length);

        // A custom type guard (type predicate)
        type Product = { name: string; price: number };
        function isProduct(value: unknown): value is Product {
          return typeof value === "object" && value !== null &&
            "name" in value && typeof value.name === "string" &&
            "price" in value && typeof value.price === "number";
        }
        const inputs: unknown[] = [{ name: "Pen", price: 20 }, { name: "Bag" }, null, "Book"];
        for (const x of inputs) {
          console.log(isProduct(x) ? `Product: ${x.name} ₹${x.price}` : `Not a product: ${JSON.stringify(x)}`);
        }

        // Inferred type predicate (TS 5.5+): valid is number[]
        const scores: (number | null)[] = [72, null, 90, null, 65];
        const valid = scores.filter((s) => s !== null);
        console.log("Total of valid scores:", valid.reduce((a, b) => a + b, 0));

        // Assertion function
        function assertPositive(n: number): asserts n {
          if (n <= 0) throw new RangeError(`Expected a positive number, got ${n}`);
        }
        try {
          assertPositive(10);
          assertPositive(-5);
        } catch (e) {
          if (e instanceof RangeError) console.log("Assertion failed:", e.message);
        }
      TS
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Discriminated Unions and Exhaustiveness</h1>
        </div>
        <p class="lc-lead">A <strong>discriminated union</strong> (or tagged union) is a union of object types. All of them share one literal field, called the <em>tag</em>, such as <code>kind</code> or <code>status</code>. When you check the tag, TypeScript knows exactly which shape you have. This is one of the most useful patterns in TypeScript.</p>
        <div class="lc-card">
          <h3>Building a Tagged Union</h3>
          <div class="lc-code">type Circle = { kind: "circle"; radius: number };<br>type Rectangle = { kind: "rectangle"; width: number; height: number };<br>type Triangle = { kind: "triangle"; base: number; height: number };<br><br>type Shape = Circle | Rectangle | Triangle;</div>
          <ul class="lc-list">
            <li>Every member has the same property name, <code>kind</code>.</li>
            <li>Each member gives it a <strong>different literal type</strong>.</li>
            <li>The other properties can be completely different.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Narrowing With switch</h3>
          <div class="lc-code">function area(s: Shape): number {<br>&nbsp;&nbsp;switch (s.kind) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "circle":<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return Math.PI * s.radius ** 2;      // s: Circle<br>&nbsp;&nbsp;&nbsp;&nbsp;case "rectangle":<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return s.width * s.height;           // s: Rectangle<br>&nbsp;&nbsp;&nbsp;&nbsp;case "triangle":<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return (s.base * s.height) / 2;      // s: Triangle<br>&nbsp;&nbsp;}<br>}<br><br>console.log(area({ kind: "rectangle", width: 4, height: 5 }));   // 20<br>console.log(area({ kind: "circle", radius: 1 }).toFixed(2));      // "3.14"</div>
          <p>Inside each <code>case</code>, you can use only that member's properties. Using <code>s.radius</code> in the rectangle case is an error. Every case returns, so TypeScript also accepts that the function always returns a <code>number</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Exhaustiveness Checking With never</h3>
          <p>What happens when someone adds a new shape later? Add a <code>default</code> branch that assigns the value to <code>never</code>. If every case is handled, nothing is left, and the assignment is fine. If a case is missing, TypeScript reports an error <strong>at compile time</strong>. This is called exhaustiveness checking (checking that every case is covered):</p>
          <div class="lc-code">type Shape = Circle | Rectangle | Triangle | { kind: "square"; side: number };<br><br>function area(s: Shape): number {<br>&nbsp;&nbsp;switch (s.kind) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "circle": return Math.PI * s.radius ** 2;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "rectangle": return s.width * s.height;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "triangle": return (s.base * s.height) / 2;<br>&nbsp;&nbsp;&nbsp;&nbsp;default: {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const unhandled: never = s;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Error: Type '{ kind: "square"; side: number; }' is not assignable to type 'never'.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Error("Unknown shape: " + JSON.stringify(unhandled));<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;}<br>}</div>
          <p>The error points to the exact <code>switch</code> that needs a new case. In a big codebase, you no longer have to remember every place to update. The compiler gives you the list.</p>
        </div>
        <div class="lc-card">
          <h3>Make Impossible States Impossible</h3>
          <p>Compare two ways to describe loading data from a server:</p>
          <div class="lc-code">// Weak: many combinations make no sense<br>type LoadStateWeak = { loading: boolean; data?: string[]; error?: string };<br>// { loading: true, data: [...], error: "..." } is allowed — what does it mean?<br><br>// Strong: exactly four valid states<br>type LoadState =<br>&nbsp;&nbsp;| { status: "idle" }<br>&nbsp;&nbsp;| { status: "loading" }<br>&nbsp;&nbsp;| { status: "success"; data: string[] }<br>&nbsp;&nbsp;| { status: "error"; message: string };</div>
          <table class="lc-table">
            <thead><tr><th></th><th>Booleans + optional fields</th><th>Discriminated union</th></tr></thead>
            <tbody>
              <tr><td>Invalid combinations</td><td>possible (loading <em>and</em> error)</td><td>impossible to write</td></tr>
              <tr><td>Access to <code>data</code></td><td>always <code>string[] | undefined</code>, so you need checks everywhere</td><td>only in the success branch, and always there</td></tr>
              <tr><td>Adding a new state</td><td>easy to miss places</td><td>exhaustiveness check finds them</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Result Pattern</h3>
          <p>A function does not have to throw an error. It can return a tagged union that says whether it worked. The caller <em>must</em> check <code>ok</code> before using the value:</p>
          <div class="lc-code">type Result&lt;T&gt; = { ok: true; value: T } | { ok: false; error: string };<br><br>function parsePincode(text: string): Result&lt;number&gt; {<br>&nbsp;&nbsp;return /^[1-9][0-9]{5}$/.test(text)<br>&nbsp;&nbsp;&nbsp;&nbsp;? { ok: true, value: Number(text) }<br>&nbsp;&nbsp;&nbsp;&nbsp;: { ok: false, error: "Pincode must be 6 digits and not start with 0" };<br>}<br><br>const r = parsePincode("560001");<br>if (r.ok) console.log(r.value + 1);   // 560002<br>else console.log(r.error);</div>
          <p>Booleans work as tags too (<code>ok: true</code> / <code>ok: false</code>). <code>&lt;T&gt;</code> makes the type reusable for any value type. This is a <strong>generic</strong>, the topic of Lesson 10.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Notifications</h3>
          <p>Each kind of notification carries different data. But one function can safely format all of them:</p>
          <div class="lc-code">type Notification =<br>&nbsp;&nbsp;| { type: "payment"; amount: number; from: string }<br>&nbsp;&nbsp;| { type: "delivery"; orderId: string; eta: string }<br>&nbsp;&nbsp;| { type: "otp"; code: string };<br><br>function toText(n: Notification): string {<br>&nbsp;&nbsp;switch (n.type) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "payment": return "Received ₹" + n.amount + " from " + n.from;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "delivery": return "Order " + n.orderId + " arrives " + n.eta;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "otp": return "Your OTP is " + n.code;<br>&nbsp;&nbsp;}<br>}<br><br>console.log(toText({ type: "payment", amount: 500, from: "Ravi" }));<br>console.log(toText({ type: "otp", code: "4821" }));</div>
          <p>Output:</p>
          <div class="lc-code">Received ₹500 from Ravi<br>Your OTP is 4821</div>
          <p>Writing <code>{ type: "otp", amount: 5 }</code> is an error. The <code>"otp"</code> member has no <code>amount</code>, and it needs a <code>code</code>. The tag decides which other fields are required.</p>
        </div>
        <div class="lc-card">
          <h3>Where You Will Meet Tagged Unions</h3>
          <ul class="lc-list">
            <li><strong>Redux / <code>useReducer</code> actions</strong>: <code>{ type: "add"; item } | { type: "remove"; id }</code> (Lesson 20).</li>
            <li><strong>API responses</strong>: success and error bodies with a <code>status</code> field.</li>
            <li><strong>Events and messages</strong>: WebSocket or worker messages with a <code>type</code>.</li>
            <li><strong>Form steps and wizards</strong>: each step has its own fields.</li>
            <li><strong>Payment methods</strong>: UPI, card and net banking need different details.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Giving the tag a plain <code>string</code> type instead of a literal. Then it cannot tell the members apart.</li>
            <li>Using different tag names in different members (<code>kind</code> in one, <code>type</code> in another).</li>
            <li>Leaving out the <code>never</code> default. Then new members quietly fall through.</li>
            <li>Modelling state with several booleans (<code>isLoading</code>, <code>isError</code>) that can disagree with each other.</li>
            <li>Checking <code>if (result.value)</code> instead of <code>if (result.ok)</code>. A valid value could be <code>0</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>{ kind: "square"; side: number }</code> member to <code>Shape</code> in the starter. Read the comment that explains the error <code>tsc</code> would now give. Then add the missing case.</li>
            <li>Add a <code>"retrying"</code> state with an <code>attempt: number</code> field to <code>LoadState</code>, and render it.</li>
            <li>Make <code>parsePincode</code> reject pincodes that start with <code>9</code>, and test it.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>A shared literal tag field turns a union into a discriminated union.</li>
            <li>Checking the tag narrows the whole object.</li>
            <li><code>const x: never = value</code> in <code>default</code> makes the compiler find cases you did not handle.</li>
            <li>Describe state as a union of valid states. Describe results as <code>{ ok: true … } | { ok: false … }</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Sometimes you write two or more booleans that describe one "mode" of something. Stop and ask: could this be one <code>status</code> field with a discriminated union? The answer is usually yes.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 9: discriminated unions and exhaustiveness
        type Shape =
          | { kind: "circle"; radius: number }
          | { kind: "rectangle"; width: number; height: number }
          | { kind: "triangle"; base: number; height: number };
        // Add { kind: "square"; side: number } and tsc reports: Type '{ kind: "square"; side: number; }' is not assignable to type 'never'.

        function area(s: Shape): number {
          switch (s.kind) {
            case "circle": return Math.PI * s.radius ** 2;
            case "rectangle": return s.width * s.height;
            case "triangle": return (s.base * s.height) / 2;
            default: {
              const unhandled: never = s;
              throw new Error("Unknown shape: " + JSON.stringify(unhandled));
            }
          }
        }
        const shapes: Shape[] = [{ kind: "circle", radius: 1 }, { kind: "rectangle", width: 4, height: 5 }, { kind: "triangle", base: 6, height: 3 }];
        for (const s of shapes) console.log(`${s.kind.padEnd(9)} area = ${area(s).toFixed(2)}`);

        // Modelling UI state: impossible states can't be written
        type LoadState =
          | { status: "idle" }
          | { status: "loading" }
          | { status: "success"; data: string[] }
          | { status: "error"; message: string };

        function render(state: LoadState): string {
          switch (state.status) {
            case "idle": return "Press Load to start";
            case "loading": return "Loading...";
            case "success": return `Loaded ${state.data.length} states: ${state.data.join(", ")}`;
            case "error": return `Error: ${state.message}`;
          }
        }
        const states: LoadState[] = [{ status: "idle" }, { status: "loading" },
          { status: "success", data: ["Kerala", "Punjab"] }, { status: "error", message: "Network down" }];
        for (const st of states) console.log(render(st));

        // Result type instead of throwing
        type Result<T> = { ok: true; value: T } | { ok: false; error: string };
        function parsePincode(text: string): Result<number> {
          return /^[1-9][0-9]{5}$/.test(text) ? { ok: true, value: Number(text) } : { ok: false, error: `"${text}" is not a valid pincode` };
        }
        for (const t of ["560001", "05600", "abc123"]) {
          const r = parsePincode(t);
          console.log(r.ok ? `Pincode OK: ${r.value}` : r.error);
        }
      TS
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Generics</h1>
        </div>
        <p class="lc-lead"><strong>Generics</strong> let you write one function, type or class that works with <em>many</em> types. You still keep full type safety. A generic has a <strong>type parameter</strong>. This is a placeholder like <code>T</code> that gets filled in each time you use it.</p>
        <div class="lc-card">
          <h3>The Problem Generics Solve</h3>
          <div class="lc-code">function firstAny(items: any[]): any {<br>&nbsp;&nbsp;return items[0];<br>}<br>const x = firstAny(["chai", "coffee"]);   // x: any — type information lost<br>x.toFixed(2);                             // no error… crashes at runtime</div>
          <p>With <code>any</code>, the function "works" for every type, but it forgets what went in. We want this: "whatever type of array goes in, that type of item comes out".</p>
        </div>
        <div class="lc-card">
          <h3>A Generic Function</h3>
          <div class="lc-code">function first&lt;T&gt;(items: T[]): T | undefined {<br>&nbsp;&nbsp;return items[0];<br>}<br><br>const drink = first(["chai", "coffee"]);   // T = string  → drink: string | undefined<br>const mark = first([72, 85]);              // T = number  → mark: number | undefined<br>const none = first&lt;boolean&gt;([]);          // T given explicitly</div>
          <ul class="lc-list">
            <li><code>&lt;T&gt;</code> after the name declares the type parameter.</li>
            <li>TypeScript usually <strong>infers</strong> <code>T</code> from the arguments. You rarely write <code>first&lt;string&gt;(…)</code>.</li>
            <li>Write it yourself when there is nothing to infer from, like an empty array.</li>
            <li>The name <code>T</code> is a common habit. Longer names that explain more (<code>TItem</code>, <code>TKey</code>) are fine too.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Several Type Parameters</h3>
          <div class="lc-code">function pair&lt;K, V&gt;(key: K, value: V): [K, V] {<br>&nbsp;&nbsp;return [key, value];<br>}<br>const p = pair("Assam", 781001);   // [string, number]<br><br>function mapValues&lt;T, U&gt;(items: T[], fn: (item: T) =&gt; U): U[] {<br>&nbsp;&nbsp;return items.map(fn);<br>}<br>const lengths = mapValues(["dosa", "idli"], (s) =&gt; s.length);   // number[]</div>
          <p>In <code>mapValues</code>, <code>T</code> comes from the array, and <code>U</code> comes from what your callback returns. The built-in <code>Array.prototype.map</code> is typed exactly like this.</p>
        </div>
        <div class="lc-card">
          <h3>Generic Types and Interfaces</h3>
          <div class="lc-code">type ApiResponse&lt;T&gt; = {<br>&nbsp;&nbsp;status: number;<br>&nbsp;&nbsp;data: T;<br>&nbsp;&nbsp;fetchedAt: string;<br>};<br><br>interface Page&lt;T&gt; {<br>&nbsp;&nbsp;items: T[];<br>&nbsp;&nbsp;page: number;<br>&nbsp;&nbsp;totalPages: number;<br>}<br><br>type User = { id: number; name: string };<br>const res: ApiResponse&lt;Page&lt;User&gt;&gt; = {<br>&nbsp;&nbsp;status: 200,<br>&nbsp;&nbsp;fetchedAt: "2026-09-25",<br>&nbsp;&nbsp;data: { items: [{ id: 1, name: "Asha" }], page: 1, totalPages: 3 },<br>};<br>console.log(res.data.items[0].name);   // Asha — fully typed</div>
          <p>One <code>ApiResponse&lt;T&gt;</code> type describes every endpoint of your API. Only <code>T</code> changes.</p>
        </div>
        <div class="lc-card">
          <h3>Generic Classes</h3>
          <div class="lc-code">class Stack&lt;T&gt; {<br>&nbsp;&nbsp;#items: T[] = [];<br>&nbsp;&nbsp;push(item: T): void { this.#items.push(item); }<br>&nbsp;&nbsp;pop(): T | undefined { return this.#items.pop(); }<br>&nbsp;&nbsp;get size(): number { return this.#items.length; }<br>}<br><br>const visited = new Stack&lt;string&gt;();<br>visited.push("/home");<br>visited.push("/cart");<br>// visited.push(42);<br>// Error: Argument of type 'number' is not assignable to parameter of type 'string'.<br>console.log(visited.pop(), visited.size);   // /cart 1</div>
        </div>
        <div class="lc-card">
          <h3>Default Type Parameters</h3>
          <div class="lc-code">type Box&lt;T = string&gt; = { value: T };<br><br>const a: Box = { value: "hello" };          // T defaults to string<br>const b: Box&lt;number&gt; = { value: 42 };</div>
        </div>
        <div class="lc-card">
          <h3>Generics You Already Use</h3>
          <table class="lc-table">
            <thead><tr><th>Built-in generic</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>Array&lt;T&gt;</code> / <code>T[]</code></td><td>a list of <code>T</code></td></tr>
              <tr><td><code>Promise&lt;T&gt;</code></td><td>a future value of type <code>T</code> (Lesson 17)</td></tr>
              <tr><td><code>Map&lt;K, V&gt;</code></td><td>keys of type <code>K</code>, values of type <code>V</code></td></tr>
              <tr><td><code>Set&lt;T&gt;</code></td><td>unique values of type <code>T</code></td></tr>
              <tr><td><code>Record&lt;K, V&gt;</code></td><td>an object with keys <code>K</code> and values <code>V</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>any vs Generics</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>any</code></th><th>Generic <code>&lt;T&gt;</code></th></tr></thead>
            <tbody>
              <tr><td>Works with every type</td><td>yes</td><td>yes</td></tr>
              <tr><td>Remembers the actual type</td><td>no</td><td>yes</td></tr>
              <tr><td>Autocomplete on the result</td><td>no</td><td>yes</td></tr>
              <tr><td>Catches mistakes</td><td>no</td><td>yes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>any</code> for "works with anything". Use a type parameter instead.</li>
            <li>Adding a type parameter that is used only once (<code>function log&lt;T&gt;(x: T): void</code>). A plain <code>unknown</code> parameter is simpler.</li>
            <li>Writing type arguments that TypeScript could infer: <code>first&lt;string&gt;(["a"])</code>.</li>
            <li>Trying to use properties of <code>T</code> (like <code>item.length</code>) without a constraint (a limit on which types are allowed). That is Lesson 11.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>peek(): T | undefined</code> method to the starter's <code>Queue</code>.</li>
            <li>Write <code>last&lt;T&gt;(items: T[]): T | undefined</code>. Test it with strings and numbers.</li>
            <li>Create <code>ApiResponse&lt;Product[]&gt;</code> for a product list. Print the first name.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>A type parameter <code>&lt;T&gt;</code> links input types to output types.</li>
            <li>TypeScript infers type arguments from the values you pass.</li>
            <li>Generic types, interfaces and classes are reusable templates for many kinds of data.</li>
            <li>Generics keep full safety. <code>any</code> would throw that safety away.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Here is a good test for a generic. Does the type parameter appear in at least two places, for example a parameter <em>and</em> the return type? If yes, it connects types, and it is worth having.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 10: generics
        function first<T>(items: T[]): T | undefined {
          return items[0];
        }
        const drink = first(["chai", "coffee"]); // string | undefined
        const mark = first([72, 85, 90]);        // number | undefined
        console.log("first drink:", drink?.toUpperCase(), "| first mark:", mark?.toFixed(1));

        // Two type parameters
        function mapValues<T, U>(items: T[], fn: (item: T) => U): U[] {
          return items.map(fn);
        }
        console.log("lengths:", mapValues(["dosa", "idli", "vada"], (s) => s.length).join(", "));

        // A generic type
        type ApiResponse<T> = { status: number; data: T };
        type User = { id: number; name: string };
        type Product = { sku: string; price: number };
        const users: ApiResponse<User[]> = { status: 200, data: [{ id: 1, name: "Asha" }, { id: 2, name: "Ravi" }] };
        const product: ApiResponse<Product> = { status: 200, data: { sku: "PEN-01", price: 20 } };
        console.log("users:", users.data.map((u) => u.name).join(", "), "| product price: ₹" + product.data.price);

        // A generic class
        class Queue<T> {
          #items: T[] = [];
          enqueue(item: T): void { this.#items.push(item); }
          dequeue(): T | undefined { return this.#items.shift(); }
          get size(): number { return this.#items.length; }
        }
        const tokens = new Queue<number>();
        tokens.enqueue(101);
        tokens.enqueue(102);
        // tokens.enqueue("103"); // tsc: Argument of type 'string' is not assignable to parameter of type 'number'.
        console.log("serving token", tokens.dequeue(), "| waiting:", tokens.size);

        const orders = new Queue<{ id: string; total: number }>();
        orders.enqueue({ id: "A1", total: 450 });
        console.log("next order total: ₹" + (orders.dequeue()?.total ?? 0));

        // Default type parameter
        type Box<T = string> = { value: T };
        const label: Box = { value: "fragile" };
        const weight: Box<number> = { value: 2.5 };
        console.log("box:", label.value, weight.value, "kg");
      TS
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Generic Constraints and keyof</h1>
        </div>
        <p class="lc-lead">A plain <code>&lt;T&gt;</code> can be <em>anything</em>, so you cannot use any of its properties. A <strong>constraint</strong> (<code>T extends …</code>) sets a limit. It means "T can be any type that has at least this shape". You can combine constraints with <code>keyof</code> and indexed access types. Then you can write helpers that are both flexible and exact.</p>
        <div class="lc-card">
          <h3>Why Constraints?</h3>
          <div class="lc-code">function longest&lt;T&gt;(a: T, b: T): T {<br>&nbsp;&nbsp;return a.length &gt;= b.length ? a : b;<br>&nbsp;&nbsp;// Error: Property 'length' does not exist on type 'T'.<br>}</div>
          <p>TypeScript is right. <code>T</code> could be a number, and a number has no <code>length</code>. Add a constraint:</p>
          <div class="lc-code">function longest&lt;T extends { length: number }&gt;(a: T, b: T): T {<br>&nbsp;&nbsp;return a.length &gt;= b.length ? a : b;<br>}<br><br>longest("chai", "coffee");        // "coffee" — T = string<br>longest([1, 2, 3], [4]);          // [1, 2, 3] — T = number[]<br>longest(10, 20);<br>// Error: Argument of type 'number' is not assignable to parameter of type '{ length: number; }'.</div>
          <p>The result keeps its exact type. <code>longest("chai", "coffee")</code> returns a <code>string</code>, not just "something with a length".</p>
        </div>
        <div class="lc-card">
          <h3>Constraining to an Interface</h3>
          <div class="lc-code">interface HasId { id: number }<br><br>function findById&lt;T extends HasId&gt;(items: T[], id: number): T | undefined {<br>&nbsp;&nbsp;return items.find((item) =&gt; item.id === id);<br>}<br><br>const books = [{ id: 1, title: "Godaan" }, { id: 2, title: "Gitanjali" }];<br>const b = findById(books, 2);<br>console.log(b?.title);   // Gitanjali — and b is typed as { id: number; title: string } | undefined</div>
          <p>Now this one helper works for books, users and orders. It works for anything with a numeric <code>id</code>. And it returns the full, exact type.</p>
        </div>
        <div class="lc-card">
          <h3>The keyof Operator</h3>
          <p><code>keyof T</code> gives a union of the property names of <code>T</code>:</p>
          <div class="lc-code">type Student = { name: string; marks: number; state: string };<br>type StudentKey = keyof Student;   // "name" | "marks" | "state"<br><br>const k: StudentKey = "marks";     // OK<br>const bad: StudentKey = "age";<br>// Error: Type '"age"' is not assignable to type 'keyof Student'.</div>
        </div>
        <div class="lc-card">
          <h3>Indexed Access Types: T[K]</h3>
          <p><code>obj["marks"]</code> reads a value. In the same way, <code>Student["marks"]</code> reads a <em>type</em>:</p>
          <div class="lc-code">type Marks = Student["marks"];                 // number<br>type NameOrState = Student["name" | "state"];    // string<br>type AnyValue = Student[keyof Student];        // string | number</div>
        </div>
        <div class="lc-card">
          <h3>The Classic: getProperty</h3>
          <p>Put <code>keyof</code>, a constraint and <code>T[K]</code> together. You get a function that only accepts real keys. It returns the right type for each key:</p>
          <div class="lc-code">function getProperty&lt;T, K extends keyof T&gt;(obj: T, key: K): T[K] {<br>&nbsp;&nbsp;return obj[key];<br>}<br><br>const s: Student = { name: "Asha", marks: 88, state: "Kerala" };<br>const n = getProperty(s, "name");    // string<br>const m = getProperty(s, "marks");   // number<br>getProperty(s, "age");<br>// Error: Argument of type '"age"' is not assignable to parameter of type 'keyof Student'.</div>
          <p>You can use the same idea to build a type-safe "sort by any field" helper. See the starter.</p>
        </div>
        <div class="lc-card">
          <h3>const Type Parameters (TypeScript 5.0+)</h3>
          <p>Normally, a generic infers wide types (<code>string[]</code>). Add <code>const</code> before the type parameter to infer the narrowest, literal types. It works as if the caller wrote <code>as const</code>:</p>
          <div class="lc-code">function choices&lt;const T extends readonly string[]&gt;(options: T): T {<br>&nbsp;&nbsp;return options;<br>}<br>const sizes = choices(["S", "M", "L"]);   // readonly ["S", "M", "L"]<br>type Size = (typeof sizes)[number];       // "S" | "M" | "L"</div>
        </div>
        <div class="lc-card">
          <h3>NoInfer (TypeScript 5.4+)</h3>
          <p>Sometimes a parameter should <em>use</em> <code>T</code>, but it should not help decide what <code>T</code> is. <code>NoInfer&lt;T&gt;</code> stops inference from that place:</p>
          <div class="lc-code">function pick&lt;T extends string&gt;(options: T[], fallback: NoInfer&lt;T&gt;): T {<br>&nbsp;&nbsp;return options[0] ?? fallback;<br>}<br>pick(["red", "green"], "red");     // OK<br>pick(["red", "green"], "blue");<br>// Error: Argument of type '"blue"' is not assignable to parameter of type '"green" | "red"'.</div>
          <p>Without <code>NoInfer</code>, TypeScript would widen <code>T</code> to include <code>"blue"</code>. Then it would accept the mistake.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Typed "pluck"</h3>
          <div class="lc-code">function pluck&lt;T, K extends keyof T&gt;(items: T[], key: K): T[K][] {<br>&nbsp;&nbsp;return items.map((item) =&gt; item[key]);<br>}<br><br>const cls: Student[] = [<br>&nbsp;&nbsp;{ name: "Ravi", marks: 67, state: "Punjab" },<br>&nbsp;&nbsp;{ name: "Asha", marks: 88, state: "Kerala" },<br>];<br>const allMarks = pluck(cls, "marks");   // number[]<br>const states = pluck(cls, "state");      // string[]<br>console.log(allMarks.join(", "), "|", states.join(", "));</div>
          <p>Output:</p>
          <div class="lc-code">67, 88 | Punjab, Kerala</div>
          <p>The return type <code>T[K][]</code> changes with the key you pass. The compiler knows that <code>allMarks</code> holds numbers. You do not have to write it anywhere.</p>
        </div>
        <div class="lc-card">
          <h3>Tools in This Lesson</h3>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>T extends X</code></td><td>T must be assignable to X</td><td><code>T extends { length: number }</code></td></tr>
              <tr><td><code>keyof T</code></td><td>union of T's keys</td><td><code>"name" | "marks"</code></td></tr>
              <tr><td><code>T[K]</code></td><td>type of property K of T</td><td><code>Student["marks"]</code> → <code>number</code></td></tr>
              <tr><td><code>typeof value</code></td><td>type of a variable</td><td><code>keyof typeof config</code></td></tr>
              <tr><td><code>&lt;const T&gt;</code></td><td>infer literal types</td><td><code>choices(["S", "M"])</code></td></tr>
              <tr><td><code>NoInfer&lt;T&gt;</code></td><td>do not infer T from here</td><td>fallback parameters</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using a property of <code>T</code> without a constraint.</li>
            <li>Making the constraint too strict (<code>T extends string</code> when any object with a <code>name</code> would do).</li>
            <li>Typing a key parameter as <code>string</code> instead of <code>keyof T</code>. Then <code>obj[key]</code> is an error or <code>any</code>.</li>
            <li>Forgetting that <code>keyof</code> works on <em>types</em>. For a value, use <code>keyof typeof value</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Use <code>sortBy</code> in the starter to sort students by <code>state</code>.</li>
            <li>Write <code>pluck&lt;T, K extends keyof T&gt;(items: T[], key: K): T[K][]</code>. Use it to get all marks.</li>
            <li>Uncomment the <code>sortBy(students, "age")</code> line. What error would <code>tsc</code> give?</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>T extends X</code> lets a generic use the members of <code>X</code> while keeping the exact type.</li>
            <li><code>keyof T</code> is the union of keys. <code>T[K]</code> is the type of one property.</li>
            <li><code>K extends keyof T</code> accepts only real keys and returns <code>T[K]</code>.</li>
            <li><code>&lt;const T&gt;</code> infers literals. <code>NoInfer&lt;T&gt;</code> stops a parameter from widening <code>T</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read <code>K extends keyof T</code> aloud as "K is one of T's keys". When this phrase feels natural, most generic helper signatures in libraries become easy to read.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 11: generic constraints and keyof
        function longest<T extends { length: number }>(a: T, b: T): T {
          return a.length >= b.length ? a : b;
        }
        console.log("longest word:", longest("chai", "coffee"), "| longest list:", longest([1, 2, 3], [4]).length);

        interface HasId { id: number }
        function findById<T extends HasId>(items: T[], id: number): T | undefined {
          return items.find((item) => item.id === id);
        }
        const books = [{ id: 1, title: "Godaan" }, { id: 2, title: "Gitanjali" }];
        console.log("book 2:", findById(books, 2)?.title ?? "not found");

        // keyof and indexed access
        type Student = { name: string; marks: number; state: string };
        function getProperty<T, K extends keyof T>(obj: T, key: K): T[K] {
          return obj[key];
        }
        const s: Student = { name: "Asha", marks: 88, state: "Kerala" };
        const marks: Student["marks"] = getProperty(s, "marks"); // number
        console.log(getProperty(s, "name"), "scored", marks + 2, "after grace marks");

        // A type-safe sortBy: only real keys are accepted
        function sortBy<T, K extends keyof T>(items: readonly T[], key: K): T[] {
          return [...items].sort((a, b) => (a[key] < b[key] ? -1 : a[key] > b[key] ? 1 : 0));
        }
        const students: Student[] = [
          { name: "Ravi", marks: 67, state: "Punjab" },
          { name: "Asha", marks: 88, state: "Kerala" },
          { name: "Meera", marks: 75, state: "Odisha" },
        ];
        console.log("by marks:", sortBy(students, "marks").map((x) => x.name).join(", "));
        console.log("by name: ", sortBy(students, "name").map((x) => x.name).join(", "));
        // sortBy(students, "age"); // tsc: Argument of type '"age"' is not assignable to parameter of type 'keyof Student'.

        // const type parameter keeps literal types
        function choices<const T extends readonly string[]>(options: T): T {
          return options;
        }
        const sizes = choices(["S", "M", "L"]);
        type Size = (typeof sizes)[number]; // "S" | "M" | "L"
        const mySize: Size = "M";
        console.log("sizes:", sizes.join("/"), "| chosen:", mySize);

        // NoInfer: the fallback must be one of the options
        function pick<T extends string>(options: T[], fallback: NoInfer<T>): T {
          return options[0] ?? fallback;
        }
        console.log("pick:", pick(["red", "green"], "red"));
      TS
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Classes and Access Modifiers</h1>
        </div>
        <p class="lc-lead">TypeScript adds types and <strong>access modifiers</strong> to JavaScript classes. Access modifiers are keywords that control who can use a class member. You can give each field a type. You can decide who may read or change each member. You can use <code>abstract</code> to make subclasses write certain methods. You can mark replaced methods with <code>override</code>.</p>
        <div class="lc-card">
          <h3>Typed Fields and Constructors</h3>
          <div class="lc-code">class Product {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;price: number;<br>&nbsp;&nbsp;tags: string[] = [];              // field with a default<br><br>&nbsp;&nbsp;constructor(name: string, price: number) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.name = name;<br>&nbsp;&nbsp;&nbsp;&nbsp;this.price = price;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;withGst(): number {<br>&nbsp;&nbsp;&nbsp;&nbsp;return Math.round(this.price * 1.18);<br>&nbsp;&nbsp;}<br>}</div>
          <p>With <code>strict</code> on (<code>strictPropertyInitialization</code>), every field must get a value. Give it the value where you declare it, or in the constructor. If you do not, you get this error: "Property 'price' has no initializer and is not definitely assigned in the constructor."</p>
        </div>
        <div class="lc-card">
          <h3>public, private, protected, readonly</h3>
          <div class="lc-code">class BankAccount {<br>&nbsp;&nbsp;public readonly owner: string;       // anyone can read, nobody can reassign<br>&nbsp;&nbsp;private balance = 0;                  // only this class<br>&nbsp;&nbsp;protected branch = "Kerala";            // this class and subclasses<br><br>&nbsp;&nbsp;constructor(owner: string) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.owner = owner;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;deposit(amount: number): void {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.balance += amount;<br>&nbsp;&nbsp;}<br>}<br><br>const acc = new BankAccount("Meera");<br>// acc.balance = 1000000;<br>// Error: Property 'balance' is private and only accessible within class 'BankAccount'.<br>// acc.owner = "Ravi";<br>// Error: Cannot assign to 'owner' because it is a read-only property.</div>
          <table class="lc-table">
            <thead><tr><th>Modifier</th><th>Who can use it</th></tr></thead>
            <tbody>
              <tr><td><code>public</code> (default)</td><td>everywhere</td></tr>
              <tr><td><code>protected</code></td><td>the class and its subclasses</td></tr>
              <tr><td><code>private</code></td><td>only inside the class</td></tr>
              <tr><td><code>readonly</code></td><td>you can set it in the declaration or constructor, but you can never change it after that</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>private vs #private</h3>
          <p>TypeScript's <code>private</code> is checked <strong>only at compile time</strong> (when tsc checks your code). When the code runs, the property is a normal JavaScript property. JavaScript's own <code>#field</code> is also enforced <strong>at runtime</strong> (while the code runs).</p>
          <table class="lc-table">
            <thead><tr><th></th><th><code>private balance</code></th><th><code>#balance</code></th></tr></thead>
            <tbody>
              <tr><td>Checked by tsc</td><td>yes</td><td>yes</td></tr>
              <tr><td>Hidden at runtime</td><td>no, <code>Object.keys</code> and <code>JSON.stringify</code> show it</td><td>yes, it is really private</td></tr>
              <tr><td>Way around the check</td><td>tsc allows <code>acc["balance"]</code></td><td>none</td></tr>
              <tr><td>When to use</td><td>good for most app code</td><td>use it when privacy really matters (libraries, secrets)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: What private Really Hides</h3>
          <div class="lc-code">class Account {<br>&nbsp;&nbsp;private pin = "1234";<br>&nbsp;&nbsp;#balance = 750;<br>&nbsp;&nbsp;constructor(public owner: string) {}<br>}<br>console.log(JSON.stringify(new Account("Meera")));</div>
          <p>Output:</p>
          <div class="lc-code">{"pin":"1234","owner":"Meera"}</div>
          <p>(Different compilers may print the two keys in a different order.) The TypeScript-<code>private</code> <code>pin</code> shows up in JSON, logs and <code>Object.keys</code>. The JavaScript-private <code>#balance</code> does not show up. Never use <code>private</code> to hide secrets.</p>
        </div>
        <div class="lc-card">
          <h3>Parameter Properties</h3>
          <p>You can put a modifier on a constructor parameter. This declares the field and gives it a value in one step:</p>
          <div class="lc-code">class Student {<br>&nbsp;&nbsp;constructor(public readonly roll: number, public name: string, private marks: number) {}<br>&nbsp;&nbsp;passed(): boolean { return this.marks &gt;= 35; }<br>}</div>
          <p>This is useful. But it is one of the few TypeScript features that <strong>creates JavaScript code</strong> (the assignments). Some tools only remove types and add no code. These tools reject it: Node.js's built-in TypeScript support, and projects that use the <code>--erasableSyntaxOnly</code> flag (TypeScript 5.8+). So many teams write the fields out in full.</p>
        </div>
        <div class="lc-card">
          <h3>Getters, Setters and Static Members</h3>
          <div class="lc-code">class Temperature {<br>&nbsp;&nbsp;static readonly FREEZING = 0;<br>&nbsp;&nbsp;#celsius = 0;<br>&nbsp;&nbsp;get celsius(): number { return this.#celsius; }<br>&nbsp;&nbsp;set celsius(value: number) {<br>&nbsp;&nbsp;&nbsp;&nbsp;if (value &lt; -273.15) throw new RangeError("Below absolute zero");<br>&nbsp;&nbsp;&nbsp;&nbsp;this.#celsius = value;<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>implements, extends and abstract</h3>
          <div class="lc-code">interface Payable { pay(amount: number): string }<br><br>abstract class PaymentMethod implements Payable {<br>&nbsp;&nbsp;constructor(protected readonly label: string) {}<br>&nbsp;&nbsp;abstract fee(amount: number): number;          // no body: subclasses must write it<br>&nbsp;&nbsp;pay(amount: number): string {                  // shared, concrete method<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.label + ": ₹" + (amount + this.fee(amount));<br>&nbsp;&nbsp;}<br>}<br><br>class Card extends PaymentMethod {<br>&nbsp;&nbsp;constructor() { super("Card"); }<br>&nbsp;&nbsp;override fee(amount: number): number { return amount * 0.02; }<br>}<br><br>// new PaymentMethod("x");<br>// Error: Cannot create an instance of an abstract class.</div>
          <ul class="lc-list">
            <li>You cannot create an <strong>abstract class</strong> with <code>new</code>. It is only a base for other classes.</li>
            <li><strong>Abstract methods</strong> have no body. Every concrete subclass (a normal class you can create) must write them.</li>
            <li><code>override</code> marks a method that replaces a parent method. With <code>noImplicitOverride</code> on, you get an error if you forget <code>override</code>. Using <code>override</code> on a method the parent does not have is always an error. This catches typos.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking <code>private</code> hides data at runtime. Use <code>#field</code> for real privacy.</li>
            <li>Declaring a field without a starting value, then getting a strict-mode error. Fix the problem. Do not hide the error with <code>!</code>.</li>
            <li>Making everything <code>protected</code> "just in case". Use <code>private</code> first, and open it up only when you need to.</li>
            <li>Long chains of inheritance. Use small interfaces and composition (building objects from smaller parts) instead.</li>
            <li>Using parameter properties in a project that runs <code>.ts</code> files with type stripping only (tools that just remove the types).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>Wallet</code> subclass to the starter code. Its fee is ₹0, but it refuses payments above ₹10,000.</li>
            <li>Remove <code>override</code> from <code>Upi.fee</code>. The code still runs. <code>tsc</code> only shows an error if <code>noImplicitOverride</code> is on.</li>
            <li>Log <code>JSON.stringify(account)</code>. See that the <code>#balance</code> field is not in the output.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Give fields types. Strict mode needs every field to get a starting value.</li>
            <li><code>public</code>/<code>protected</code>/<code>private</code>/<code>readonly</code> are only checked at compile time. <code>#field</code> gives privacy at runtime.</li>
            <li>Parameter properties are short, but they are not erasable syntax (tools cannot just remove them).</li>
            <li><code>abstract</code> classes are a base class. They list methods that subclasses must write.</li>
            <li><code>override</code> (with <code>noImplicitOverride</code>) catches overrides that no longer match.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Turn on <code>noImplicitOverride</code> in <code>tsconfig.json</code>. Someone may rename a method in a base class. Then every subclass that "overrides" the old name gives a compile error. Without this setting, it would silently do nothing.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 12: classes and access modifiers
        interface Payable { pay(amount: number): string }

        abstract class PaymentMethod implements Payable {
          static count = 0;
          protected readonly label: string;
          constructor(label: string) {
            this.label = label;
            PaymentMethod.count++;
          }
          abstract fee(amount: number): number;
          pay(amount: number): string {
            return `${this.label}: paid ₹${amount} + fee ₹${this.fee(amount).toFixed(2)}`;
          }
        }
        class Upi extends PaymentMethod {
          constructor(private readonly vpa: string) { super("UPI"); }
          override fee(): number { return 0; }
          override pay(amount: number): string { return super.pay(amount) + ` to ${this.vpa}`; }
        }
        class Card extends PaymentMethod {
          constructor() { super("Card"); }
          override fee(amount: number): number { return amount * 0.02; }
        }
        const methods: PaymentMethod[] = [new Upi("asha@okbank"), new Card()];
        for (const m of methods) console.log(m.pay(1500));
        console.log("Payment methods created:", PaymentMethod.count);
        // new PaymentMethod("x"); // tsc: Cannot create an instance of an abstract class.

        // private (compile-time) vs #private (runtime)
        class Account {
          public readonly owner: string;
          private pin = "1234"; // hidden from tsc users, but still a normal JS property
          #balance = 0;         // truly private at runtime
          constructor(owner: string) { this.owner = owner; }
          deposit(amount: number): this {
            if (amount <= 0) throw new RangeError("Deposit must be positive");
            this.#balance += amount;
            return this;
          }
          get balance(): number { return this.#balance; }
          checkPin(p: string): boolean { return p === this.pin; }
        }
        const account = new Account("Meera").deposit(500).deposit(250);
        console.log(account.owner, "balance ₹" + account.balance, "| pin ok?", account.checkPin("1234"));
        // account.pin; // tsc: Property 'pin' is private and only accessible within class 'Account'.
        console.log("JSON shows:", JSON.stringify(account));
      TS
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Enums vs Union Types</h1>
        </div>
        <p class="lc-lead">TypeScript has an <code>enum</code> keyword. An enum is a named set of constants. But modern TypeScript code usually uses <strong>string literal unions</strong> (a list of allowed strings) or an <strong><code>as const</code> object</strong> instead. This lesson shows how enums work, what they cost, and how to choose.</p>
        <div class="lc-card">
          <h3>Numeric Enums</h3>
          <div class="lc-code">enum Direction {<br>&nbsp;&nbsp;Up,       // 0<br>&nbsp;&nbsp;Down,     // 1<br>&nbsp;&nbsp;Left,     // 2<br>&nbsp;&nbsp;Right,    // 3<br>}<br><br>console.log(Direction.Up);      // 0<br>console.log(Direction[0]);      // "Up"  — reverse mapping</div>
          <p>Members count up from <code>0</code> unless you give them values. <code>Up = 1</code> makes the rest 2, 3, 4. Numeric enums also get a <strong>reverse mapping</strong>. This means you can go from the number back to the name.</p>
        </div>
        <div class="lc-card">
          <h3>Enums Generate Runtime Code</h3>
          <p>All the types you have seen so far are removed when the code compiles. An enum is different: it is <strong>not erased</strong>. The compiler turns it into a real JavaScript object:</p>
          <div class="lc-code">// JavaScript produced for enum Direction (simplified)<br>var Direction;<br>(function (Direction) {<br>&nbsp;&nbsp;Direction[Direction["Up"] = 0] = "Up";<br>&nbsp;&nbsp;Direction[Direction["Down"] = 1] = "Down";<br>&nbsp;&nbsp;// …<br>})(Direction || (Direction = {}));</div>
          <p>The starter code logs that object. It also means enums need a real TypeScript <em>transform</em> (a step that creates code). Type stripping (just removing types) is not enough.</p>
        </div>
        <div class="lc-card">
          <h3>String Enums</h3>
          <div class="lc-code">enum OrderStatus {<br>&nbsp;&nbsp;Placed = "PLACED",<br>&nbsp;&nbsp;Shipped = "SHIPPED",<br>&nbsp;&nbsp;Delivered = "DELIVERED",<br>}<br><br>let s: OrderStatus = OrderStatus.Shipped;<br>s = "SHIPPED";<br>// Error: Type '"SHIPPED"' is not assignable to type 'OrderStatus'.</div>
          <p>String enums have readable values. This is good for logs and APIs. But they have no reverse mapping. Look at the surprise above: even the exact string is rejected. You must write <code>OrderStatus.Shipped</code>. This is awkward when the value comes from JSON.</p>
        </div>
        <div class="lc-card">
          <h3>const enum</h3>
          <p><code>const enum</code> asks the compiler to put the values straight into the code and create no object. But some tools compile one file at a time: Babel, esbuild, Vite, and <code>isolatedModules</code> projects. They cannot see enums in other files. So most modern projects advise against <code>const enum</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The Recommended Default: Literal Unions</h3>
          <div class="lc-code">type OrderStatus = "placed" | "shipped" | "delivered";<br><br>let s: OrderStatus = "shipped";     // plain strings work<br>s = "cancelled";<br>// Error: Type '"cancelled"' is not assignable to type 'OrderStatus'.</div>
          <p>You get no runtime code, autocomplete in the editor, and JSON strings fit directly. Sometimes you also need the values at runtime, for example to loop over them or show them in a dropdown. Then use an <code>as const</code> array or object:</p>
          <div class="lc-code">const Status = {<br>&nbsp;&nbsp;Placed: "placed",<br>&nbsp;&nbsp;Shipped: "shipped",<br>&nbsp;&nbsp;Delivered: "delivered",<br>} as const;<br><br>type Status = (typeof Status)[keyof typeof Status];   // "placed" | "shipped" | "delivered"<br><br>const s1: Status = Status.Shipped;   // enum-like access<br>const s2: Status = "shipped";        // plain string also OK<br>console.log(Object.values(Status));  // ["placed", "shipped", "delivered"]</div>
          <p>You can give the type and the object the same name (<code>Status</code>). One lives in the type world, and the other lives in the value world.</p>
        </div>
        <div class="lc-card">
          <h3>Comparison</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>enum</code></th><th>Literal union</th><th><code>as const</code> object + type</th></tr></thead>
            <tbody>
              <tr><td>Runtime code</td><td>yes (an object)</td><td>none</td><td>a plain object you wrote</td></tr>
              <tr><td>Accepts a plain string/JSON value</td><td>no (string enums)</td><td>yes</td><td>yes</td></tr>
              <tr><td>Loop over values</td><td><code>Object.values</code> (numeric enums also include reverse keys)</td><td>no, keep an array</td><td>yes</td></tr>
              <tr><td>Works with type stripping (<code>node app.ts</code>, <code>--erasableSyntaxOnly</code>)</td><td>no</td><td>yes</td><td>yes</td></tr>
              <tr><td>Standard JavaScript?</td><td>no, TypeScript-only syntax</td><td>yes (types are removed)</td><td>yes</td></tr>
            </tbody>
          </table>
          <p><strong>Simple rule:</strong> use literal unions by default. Use an <code>as const</code> object when you need values at runtime. Use <code>enum</code> only when an existing codebase already uses enums everywhere.</p>
        </div>
        <div class="lc-card">
          <h3>A Numeric Enum Trap</h3>
          <div class="lc-code">enum Level { Low, High }<br>console.log(Object.keys(Level));   // ["0", "1", "Low", "High"] — reverse mapping keys too!</div>
          <p>When you loop over a numeric enum, you get twice as many keys as you expect. This is another reason to use a plain array or an <code>as const</code> object.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Replacing an Enum</h3>
          <p>Before: an enum used for a dropdown and an API field.</p>
          <div class="lc-code">enum Plan { Free = "free", Pro = "pro", Team = "team" }<br>function price(p: Plan): number { return p === Plan.Free ? 0 : p === Plan.Pro ? 499 : 1999; }<br>price(Plan.Pro);        // 499<br>// price("pro");        // Error: Argument of type '"pro"' is not assignable to parameter of type 'Plan'.</div>
          <p>After: the same safety, plain strings are accepted, and the values are still there at runtime.</p>
          <div class="lc-code">const PLANS = ["free", "pro", "team"] as const;<br>type Plan = (typeof PLANS)[number];<br>const PRICES: Record&lt;Plan, number&gt; = { free: 0, pro: 499, team: 1999 };<br><br>console.log(PRICES["pro"], PLANS.length);   // 499 3</div>
          <p>The <code>Record&lt;Plan, number&gt;</code> also makes sure every plan has a price. If you add <code>"enterprise"</code> to <code>PLANS</code>, TypeScript asks for a price for it.</p>
        </div>
        <div class="lc-card">
          <h3>When an Enum Is Still OK</h3>
          <ul class="lc-list">
            <li>The codebase already uses enums everywhere, and keeping the same style matters more.</li>
            <li>A library's API gives you an enum to pass in.</li>
            <li>You compile with <code>tsc</code> or a full transform (not type stripping), and you like the <code>Enum.Member</code> style.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>enum</code> out of habit from Java or C#. A literal union is usually simpler.</li>
            <li>Comparing a string enum with a plain string from an API, and getting type errors everywhere.</li>
            <li>Using <code>const enum</code> in a Vite/Babel project.</li>
            <li>Looping over a numeric enum with <code>Object.keys</code> and getting the numbers too.</li>
            <li>Forgetting <code>as const</code> on the object. Then the type you build from it is just <code>string</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>Cancelled</code> status to both versions in the starter code. Which one needs fewer changes?</li>
            <li>Print <code>Object.keys(Priority)</code> for the numeric enum. Explain the output.</li>
            <li>Read the status string <code>"shipped"</code> from a JSON order. Check it against <code>STATUS_VALUES</code>.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Enums create a real JavaScript object. Numeric enums also add reverse mappings.</li>
            <li>String enums reject plain strings. This makes JSON awkward.</li>
            <li>Use string literal unions first. Use an <code>as const</code> object when you need values at runtime.</li>
            <li>Enums are not erasable syntax, so tools that only strip types reject them.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> You may get a codebase full of enums. Do not rewrite them all at once. Use literal unions for new code. Change old enums when you are already editing that code.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 13: enums vs union types
        // 1) A numeric enum: auto-numbered, with reverse mapping, and real runtime code
        enum Priority { Low, Medium, High }
        console.log("Priority.High =", Priority.High, "| Priority[0] =", Priority[0]);
        console.log("Object.keys(Priority):", Object.keys(Priority).join(", "));

        // 2) A string enum: readable values, but raw strings are not accepted
        enum OrderStatusEnum { Placed = "placed", Shipped = "shipped" }
        const e: OrderStatusEnum = OrderStatusEnum.Shipped;
        // const e2: OrderStatusEnum = "shipped"; // tsc: Type '"shipped"' is not assignable to type 'OrderStatusEnum'.
        console.log("enum value:", e);

        // 3) Recommended: an as const object + derived literal union
        const Status = { Placed: "placed", Shipped: "shipped", Delivered: "delivered" } as const;
        type Status = (typeof Status)[keyof typeof Status]; // "placed" | "shipped" | "delivered"
        const STATUS_VALUES: readonly string[] = Object.values(Status);

        function isStatus(value: string): value is Status {
          return STATUS_VALUES.includes(value);
        }
        function label(s: Status): string {
          switch (s) {
            case "placed": return "Order placed";
            case "shipped": return "On the way";
            case "delivered": return "Delivered";
          }
        }

        // Data from JSON is just strings - literal unions accept them after a check
        const incoming: { id: number; status: string }[] = JSON.parse(
          '[{"id":1,"status":"shipped"},{"id":2,"status":"lost"},{"id":3,"status":"delivered"}]'
        );
        for (const order of incoming) {
          console.log(`#${order.id}:`, isStatus(order.status) ? label(order.status) : `unknown status "${order.status}"`);
        }
        console.log("All statuses:", Object.values(Status).join(", "));
        console.log("Status.Shipped === 'shipped':", Status.Shipped === "shipped");
      TS
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Utility Types</h1>
        </div>
        <p class="lc-lead">TypeScript comes with built-in <strong>utility types</strong>. A utility type turns one type into another. It can make every field optional, pick a few fields, remove a field, or get a function's return type. With utility types, you build new types from existing ones. You do not need to copy and paste.</p>
        <div class="lc-card">
          <h3>The Base Type</h3>
          <div class="lc-code">interface User {<br>&nbsp;&nbsp;id: number;<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;email: string;<br>&nbsp;&nbsp;state?: string;<br>&nbsp;&nbsp;role: "admin" | "member";<br>}</div>
          <p>Every example below is built from this one definition. If you change <code>User</code>, all the types built from it update automatically.</p>
        </div>
        <div class="lc-card">
          <h3>Partial, Required and Readonly</h3>
          <div class="lc-code">type UserUpdate = Partial&lt;User&gt;;     // every property optional<br>const change: UserUpdate = { state: "Kerala" };        // OK<br><br>type CompleteUser = Required&lt;User&gt;;  // state is now required too<br><br>type FrozenUser = Readonly&lt;User&gt;;    // no property can be reassigned<br>const u: FrozenUser = { id: 1, name: "Asha", email: "a@x.in", role: "member" };<br>// u.name = "Ravi";<br>// Error: Cannot assign to 'name' because it is a read-only property.</div>
          <p><code>Partial</code> is perfect for "update" functions. In these, the caller sends only the fields that changed.</p>
        </div>
        <div class="lc-card">
          <h3>Pick and Omit</h3>
          <div class="lc-code">type UserCard = Pick&lt;User, "name" | "state"&gt;;   // { name: string; state?: string }<br>type NewUser = Omit&lt;User, "id"&gt;;                 // everything except id<br><br>function createUser(input: NewUser): User {<br>&nbsp;&nbsp;return { id: Date.now(), ...input };             // the server assigns the id<br>}</div>
          <p><code>Pick</code> keeps the listed keys. <code>Omit</code> removes them. The keys you give to <code>Pick</code> must exist on the type. <code>Omit</code> accepts any key name, so check the spelling carefully there.</p>
        </div>
        <div class="lc-card">
          <h3>Record, Exclude, Extract, NonNullable</h3>
          <div class="lc-code">type Role = User["role"];                               // "admin" | "member"<br>type Permissions = Record&lt;Role, string[]&gt;;<br>const perms: Permissions = { admin: ["read", "write"], member: ["read"] };<br><br>type Status = "draft" | "published" | "archived";<br>type Visible = Exclude&lt;Status, "archived"&gt;;             // "draft" | "published"<br>type Final = Extract&lt;Status, "published" | "deleted"&gt;;  // "published"<br>type MaybeState = string | null | undefined;<br>type State = NonNullable&lt;MaybeState&gt;;                      // string</div>
          <p><code>Exclude</code> and <code>Extract</code> work on <strong>unions</strong> (types like "a" | "b"). <code>Omit</code> and <code>Pick</code> work on <strong>object keys</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Types From Functions: ReturnType, Parameters, Awaited</h3>
          <div class="lc-code">function makeInvoice(customer: string, amount: number, gst = 0.18) {<br>&nbsp;&nbsp;return { customer, amount, total: Math.round(amount * (1 + gst)) };<br>}<br><br>type Invoice = ReturnType&lt;typeof makeInvoice&gt;;<br>// { customer: string; amount: number; total: number }<br>type InvoiceArgs = Parameters&lt;typeof makeInvoice&gt;;<br>// [customer: string, amount: number, gst?: number]<br><br>declare function loadUser(): Promise&lt;User&gt;;   // e.g. from a library<br>type Loaded = Awaited&lt;ReturnType&lt;typeof loadUser&gt;&gt;;   // User</div>
          <p>These are very useful when a library gives you a function but no named type for its result.</p>
        </div>
        <div class="lc-card">
          <h3>Cheat Sheet</h3>
          <table class="lc-table">
            <thead><tr><th>Utility</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>Partial&lt;T&gt;</code></td><td>all properties optional</td></tr>
              <tr><td><code>Required&lt;T&gt;</code></td><td>all properties required</td></tr>
              <tr><td><code>Readonly&lt;T&gt;</code></td><td>all properties readonly (compile time only)</td></tr>
              <tr><td><code>Pick&lt;T, K&gt;</code> / <code>Omit&lt;T, K&gt;</code></td><td>keep / remove some keys</td></tr>
              <tr><td><code>Record&lt;K, V&gt;</code></td><td>an object with keys K and values V</td></tr>
              <tr><td><code>Exclude&lt;U, X&gt;</code> / <code>Extract&lt;U, X&gt;</code></td><td>remove / keep union members</td></tr>
              <tr><td><code>NonNullable&lt;T&gt;</code></td><td>remove <code>null</code> and <code>undefined</code></td></tr>
              <tr><td><code>ReturnType&lt;F&gt;</code> / <code>Parameters&lt;F&gt;</code></td><td>a function's return type / parameter tuple</td></tr>
              <tr><td><code>Awaited&lt;T&gt;</code></td><td>the value inside a Promise</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Combining Utilities</h3>
          <p>You can put one utility inside another. Here is a typical "edit profile" payload (the data sent). Any field except <code>id</code> and <code>role</code> may be sent:</p>
          <div class="lc-code">type ProfileEdit = Partial&lt;Omit&lt;User, "id" | "role"&gt;&gt;;<br>// { name?: string; email?: string; state?: string }<br><br>function applyEdit(user: User, edit: ProfileEdit): User {<br>&nbsp;&nbsp;return { ...user, ...edit };<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: An API Layer</h3>
          <p>Three endpoints and three payloads. All of them are built from one <code>User</code>:</p>
          <div class="lc-code">type CreateUserBody = Omit&lt;User, "id"&gt;;<br>type UpdateUserBody = Partial&lt;Omit&lt;User, "id"&gt;&gt;;<br>type UserListItem = Pick&lt;User, "id" | "name"&gt;;<br><br>const body: UpdateUserBody = { state: "Goa" };<br>const list: UserListItem[] = [{ id: 1, name: "Asha" }, { id: 2, name: "Ravi" }];<br>console.log(Object.keys(body).join(", "), list.map((u) =&gt; u.name).join(", "));</div>
          <p>Output:</p>
          <div class="lc-code">state Asha, Ravi</div>
          <p>Say you add a new required field such as <code>phone</code> to <code>User</code>. <code>CreateUserBody</code> requires it right away. <code>UpdateUserBody</code> keeps it optional. This is exactly what the API needs.</p>
        </div>
        <div class="lc-card">
          <h3>Types Only: Not Runtime Protection</h3>
          <p>Utility types disappear after compilation. <code>Readonly&lt;User&gt;</code> stops <em>your code</em> from changing fields. But it does not freeze the object. To stop changes at runtime, use <code>Object.freeze(obj)</code>. Note that it is also shallow (it only freezes the top level).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Copying a type and removing one field, instead of using <code>Omit</code>. Over time, the copies stop matching.</li>
            <li>Using <code>Partial&lt;User&gt;</code> where you need a full user, and then checking every field for <code>undefined</code>.</li>
            <li>Mixing up <code>Omit</code> (object keys) and <code>Exclude</code> (union members).</li>
            <li>Writing <code>ReturnType&lt;makeInvoice&gt;</code>. It needs a type, so use <code>ReturnType&lt;typeof makeInvoice&gt;</code>.</li>
            <li>Expecting <code>Readonly</code> to freeze objects at runtime.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code, create <code>type PublicUser = Omit&lt;User, "email"&gt;</code>. Write a function that turns a <code>User</code> into it.</li>
            <li>Change the parameter type of <code>updateUser</code> so it cannot change the <code>role</code>.</li>
            <li>Use <code>Parameters&lt;typeof makeInvoice&gt;</code> to type an array of argument lists. Call <code>makeInvoice(...args)</code> for each one.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Utility types build new types from existing ones, so you do not copy them.</li>
            <li><code>Partial</code>, <code>Required</code>, <code>Readonly</code> change every property. <code>Pick</code>/<code>Omit</code> choose keys.</li>
            <li><code>Exclude</code>/<code>Extract</code>/<code>NonNullable</code> filter unions.</li>
            <li><code>ReturnType</code>, <code>Parameters</code> and <code>Awaited</code> get types from functions and Promises.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep one "source" type for each idea (like <code>User</code>). Build the other types from it with utilities. When the source changes, TypeScript shows you every place you need to fix.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 14: utility types
        interface User {
          id: number;
          name: string;
          email: string;
          state?: string;
          role: "admin" | "member";
        }

        type NewUser = Omit<User, "id">;                    // input for "create"
        type ProfileEdit = Partial<Omit<User, "id" | "role">>; // input for "edit"
        type UserCard = Pick<User, "name" | "state">;        // what a card shows
        type Role = User["role"];

        let nextId = 1;
        const createUser = (input: NewUser): User => ({ id: nextId++, ...input });
        const updateUser = (user: User, edit: ProfileEdit): User => ({ ...user, ...edit });
        const toCard = ({ name, state }: User): UserCard => ({ name, state });

        const asha = createUser({ name: "Asha", email: "asha@example.in", role: "admin" });
        const ravi = createUser({ name: "Ravi", email: "ravi@example.in", state: "Punjab", role: "member" });
        const moved = updateUser(asha, { state: "Kerala" });
        // updateUser(asha, { role: "member" }); // tsc: Object literal may only specify known properties, and 'role' does not exist in type 'Partial<Omit<User, "id" | "role">>'.
        console.log("card:", JSON.stringify(toCard(moved)), "| original state:", asha.state ?? "none");

        const permissions: Record<Role, readonly string[]> = { admin: ["read", "write", "delete"], member: ["read"] };
        for (const u of [moved, ravi]) console.log(`${u.name} (${u.role}) can: ${permissions[u.role].join(", ")}`);

        type Status = "draft" | "published" | "archived";
        const visible: Exclude<Status, "archived">[] = ["draft", "published"];
        console.log("visible statuses:", visible.join(", "));

        // Types derived from a function
        function makeInvoice(customer: string, amount: number, gst = 0.18) {
          return { customer, amount, total: Math.round(amount * (1 + gst)) };
        }
        type Invoice = ReturnType<typeof makeInvoice>;
        const jobs: Parameters<typeof makeInvoice>[] = [["Asha", 1000], ["Ravi", 2500, 0.05]];
        const invoices: Invoice[] = jobs.map((args) => makeInvoice(...args));
        for (const inv of invoices) console.log(`${inv.customer}: ₹${inv.amount} -> ₹${inv.total}`);

        const frozen: Readonly<User> = moved;
        // frozen.name = "X"; // tsc: Cannot assign to 'name' because it is a read-only property.
        console.log("Readonly is compile-time only; Object.isFrozen:", Object.isFrozen(frozen));
      TS
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Mapped, Conditional and Template Literal Types</h1>
        </div>
        <p class="lc-lead">The utility types from Lesson 14 are not magic. They are built from three features you can use yourself: <strong>mapped types</strong> (change every key), <strong>conditional types</strong> (choose a type with <code>extends ? :</code>), and <strong>template literal types</strong> (build string types from pieces).</p>
        <div class="lc-card">
          <h3>Mapped Types</h3>
          <p>A mapped type loops over a set of keys. It makes one property for each key:</p>
          <div class="lc-code">type Flags&lt;T&gt; = { [K in keyof T]: boolean };<br><br>type Settings = { darkMode: string; fontSize: number };<br>type SettingsChanged = Flags&lt;Settings&gt;;   // { darkMode: boolean; fontSize: boolean }</div>
          <p>Read <code>[K in keyof T]</code> as "for each key K of T". The part after the colon is the new property type. <code>T[K]</code> keeps the original type.</p>
        </div>
        <div class="lc-card">
          <h3>Rebuilding Partial and Readonly</h3>
          <div class="lc-code">type MyPartial&lt;T&gt; = { [K in keyof T]?: T[K] };           // add ?<br>type MyReadonly&lt;T&gt; = { readonly [K in keyof T]: T[K] };  // add readonly<br>type Mutable&lt;T&gt; = { -readonly [K in keyof T]: T[K] };    // remove readonly<br>type Concrete&lt;T&gt; = { [K in keyof T]-?: T[K] };           // remove ? (like Required)</div>
          <p>The <code>+</code> and <code>-</code> <strong>modifiers</strong> add or remove <code>readonly</code> and <code>?</code>. The built-in <code>Partial</code>, <code>Readonly</code> and <code>Required</code> are written exactly this way.</p>
        </div>
        <div class="lc-card">
          <h3>Key Remapping with as</h3>
          <p>An <code>as</code> clause renames keys while mapping. You can use it with template literal types to create method names:</p>
          <div class="lc-code">type Getters&lt;T&gt; = {<br>&nbsp;&nbsp;[K in keyof T &amp; string as `get${Capitalize&lt;K&gt;}`]: () =&gt; T[K];<br>};<br><br>type Student = { name: string; marks: number };<br>type StudentGetters = Getters&lt;Student&gt;;<br>// { getName: () =&gt; string; getMarks: () =&gt; number }</div>
          <p><code>keyof T &amp; string</code> keeps only string keys. Template literals need strings.</p>
        </div>
        <div class="lc-card">
          <h3>Conditional Types</h3>
          <p><code>A extends B ? X : Y</code> means "if A can be assigned to B, the type is X. If not, it is Y":</p>
          <div class="lc-code">type IsString&lt;T&gt; = T extends string ? "yes" : "no";<br>type A = IsString&lt;"hello"&gt;;   // "yes"<br>type B = IsString&lt;42&gt;;        // "no"<br><br>type NonNull&lt;T&gt; = T extends null | undefined ? never : T;<br>type C = NonNull&lt;string | null | undefined&gt;;   // string</div>
          <p>When <code>T</code> is a union, the conditional type is applied to <strong>each member on its own</strong>. This is called <em>distributive</em>. That is why <code>NonNull</code> above removes only the <code>null</code> and <code>undefined</code> members. The built-in <code>Exclude</code>, <code>Extract</code> and <code>NonNullable</code> work this way.</p>
        </div>
        <div class="lc-card">
          <h3>infer: Taking Types Out</h3>
          <p>Inside a conditional type, <code>infer X</code> takes part of a type and gives it a new name:</p>
          <div class="lc-code">type ElementType&lt;T&gt; = T extends (infer E)[] ? E : T;<br>type D = ElementType&lt;string[]&gt;;           // string<br><br>type Unwrap&lt;T&gt; = T extends Promise&lt;infer V&gt; ? V : T;<br>type E = Unwrap&lt;Promise&lt;number&gt;&gt;;         // number<br><br>type MyReturnType&lt;F&gt; = F extends (...args: any[]) =&gt; infer R ? R : never;<br>type F = MyReturnType&lt;() =&gt; boolean&gt;;     // boolean</div>
          <p>This is the idea behind <code>ReturnType</code>, <code>Parameters</code> and <code>Awaited</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Template Literal Types</h3>
          <div class="lc-code">type Method = "GET" | "POST";<br>type Route = `/api/${string}`;<br>type Endpoint = `${Method} ${Route}`;<br><br>const ok: Endpoint = "GET /api/users";       // OK<br>const bad: Endpoint = "PUT /api/users";<br>// Error: Type '"PUT /api/users"' is not assignable to type '`GET /api/${string}` | `POST /api/${string}`'.<br><br>type EventName = "click" | "focus";<br>type Handler = `on${Capitalize&lt;EventName&gt;}`;   // "onClick" | "onFocus"</div>
          <p>Built-in string helpers: <code>Uppercase</code>, <code>Lowercase</code>, <code>Capitalize</code>, <code>Uncapitalize</code>. If you put unions inside a template, you get every combination.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Typed Event Emitter</h3>
          <p>The starter code uses all these features together. One map links event names to payload types (the data each event carries). Everything else comes from this map:</p>
          <div class="lc-code">type AppEvents = {<br>&nbsp;&nbsp;login: { user: string };<br>&nbsp;&nbsp;purchase: { item: string; amount: number };<br>};<br><br>bus.on("purchase", (p) =&gt; console.log(p.item, p.amount));   // p is typed from the map<br>bus.emit("purchase", { item: "Headphones", amount: 1999 });<br>bus.emit("purchase", { item: "Pen" });<br>// Error: Property 'amount' is missing in type '{ item: string; }' but required in type '{ item: string; amount: number; }'.</div>
          <p>Output of the valid calls:</p>
          <div class="lc-code">Headphones 1999</div>
          <p>To add a new event, you add one line to <code>AppEvents</code>. Every <code>on</code> and <code>emit</code> call is checked against it.</p>
        </div>
        <div class="lc-card">
          <h3>Which Feature for Which Job?</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Syntax</th><th>Use it to…</th></tr></thead>
            <tbody>
              <tr><td>Mapped type</td><td><code>{ [K in keyof T]: … }</code></td><td>change every property of an object type</td></tr>
              <tr><td>Key remapping</td><td><code>[K in keyof T as …]</code></td><td>rename or filter keys</td></tr>
              <tr><td>Conditional type</td><td><code>T extends U ? X : Y</code></td><td>choose a type based on another type</td></tr>
              <tr><td><code>infer</code></td><td><code>T extends Promise&lt;infer V&gt; ? V : T</code></td><td>get an inner type</td></tr>
              <tr><td>Template literal type</td><td><code>`on${Capitalize&lt;E&gt;}`</code></td><td>describe string patterns</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Making types too complex: a clever 10-line type that nobody can read. Use simple named types, unless the generic type removes real repeated code.</li>
            <li>Forgetting <code>&amp; string</code> when putting <code>keyof T</code> into a template literal.</li>
            <li>Being surprised when a conditional type is applied to each union member. Put both sides in brackets (<code>[T] extends [U]</code>) to turn this off.</li>
            <li>Expecting these types to create runtime code. You still write the functions yourself.</li>
            <li>Writing deeply recursive types (types that refer to themselves many times). They slow the editor down. Keep type-level code simple.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code, add a <code>"logout"</code> event to <code>AppEvents</code> with the payload <code>{ reason: string }</code>. Then emit it.</li>
            <li>Write <code>type Nullable&lt;T&gt; = { [K in keyof T]: T[K] | null }</code>. Apply it to <code>Student</code>.</li>
            <li>Create a template literal type for Indian vehicle-number prefixes, like <code>`${"MH" | "KA" | "TN"}-${number}`</code>.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Mapped types change each key. <code>+</code>/<code>-</code> modifiers add or remove <code>readonly</code> and <code>?</code>.</li>
            <li>Conditional types pick types with <code>extends ? :</code>. They are applied to each member of a union.</li>
            <li><code>infer</code> gets inner types, such as array elements and Promise values.</li>
            <li>Template literal types describe string patterns, like event names and routes.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Sometimes you need to read a complex type in a library. In VS Code, use it with a real type argument and hover over it. Seeing the <em>result</em> (<code>{ getName: () =&gt; string }</code>) is much easier than reading the definition.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 15: mapped, conditional and template literal types
        type Student = { name: string; marks: number; state: string };

        // Mapped type with key remapping: generate getter names
        type Getters<T> = { [K in keyof T & string as `get${Capitalize<K>}`]: () => T[K] };

        function makeGetters<T extends object>(obj: T): Getters<T> {
          const out: Record<string, () => unknown> = {};
          for (const key of Object.keys(obj) as (keyof T & string)[]) {
            out[`get${key[0].toUpperCase()}${key.slice(1)}`] = () => obj[key];
          }
          return out as Getters<T>;
        }
        const g = makeGetters<Student>({ name: "Asha", marks: 88, state: "Kerala" });
        console.log(g.getName(), g.getMarks() + 2, g.getState()); // fully typed getters

        // Conditional type + infer
        type Unwrap<T> = T extends Promise<infer V> ? V : T;
        type ElementType<T> = T extends readonly (infer E)[] ? E : never;
        const states: ElementType<string[]>[] = ["Punjab", "Assam"];
        const later: Unwrap<Promise<number>> = 42;
        console.log("states:", states.join(", "), "| unwrapped:", later);

        // Template literal types: a typed event emitter
        type AppEvents = {
          login: { user: string };
          purchase: { item: string; amount: number };
        };
        type HandlerName = `on${Capitalize<keyof AppEvents & string>}`; // "onLogin" | "onPurchase"

        class Emitter<E extends Record<string, object>> {
          #handlers: { [K in keyof E]?: ((payload: E[K]) => void)[] } = {};
          on<K extends keyof E>(event: K, fn: (payload: E[K]) => void): void {
            (this.#handlers[event] ??= []).push(fn);
          }
          emit<K extends keyof E>(event: K, payload: E[K]): void {
            for (const fn of this.#handlers[event] ?? []) fn(payload);
          }
        }
        const bus = new Emitter<AppEvents>();
        bus.on("login", (p) => console.log(`Welcome back, ${p.user}!`));
        bus.on("purchase", (p) => console.log(`Bought ${p.item} for ₹${p.amount}`));
        bus.emit("login", { user: "Meera" });
        bus.emit("purchase", { item: "Headphones", amount: 1999 });
        // bus.emit("purchase", { item: "Pen" }); // tsc: Property 'amount' is missing in type '{ item: string; }' but required in type '{ item: string; amount: number; }'.
        const names: HandlerName[] = ["onLogin", "onPurchase"];
        console.log("handler names:", names.join(", "));
      TS
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">The satisfies Operator and Type Assertions</h1>
        </div>
        <p class="lc-lead">You can link a value to a type in three ways: an <strong>annotation</strong> (<code>: T</code>), an <strong>assertion</strong> (<code>as T</code>) and the <strong><code>satisfies</code></strong> operator. They look alike, but they work very differently. If you choose the right one, your code is safe. If you choose the wrong one, you can hide bugs.</p>
        <div class="lc-card">
          <h3>Annotations Check, and Widen</h3>
          <div class="lc-code">type Colour = string | [number, number, number];<br><br>const palette: Record&lt;string, Colour&gt; = {<br>&nbsp;&nbsp;saffron: [255, 153, 51],<br>&nbsp;&nbsp;green: "#138808",<br>};<br><br>palette.green.toUpperCase();<br>// Error: Property 'toUpperCase' does not exist on type 'Colour'.<br>//   Property 'toUpperCase' does not exist on type '[number, number, number]'.<br>palette.blue;   // no error — any string key is allowed by Record&lt;string, …&gt;</div>
          <p>The annotation checks the object. But then TypeScript <strong>forgets the details</strong>. Every entry is just <code>Colour</code>, and any key is "allowed".</p>
        </div>
        <div class="lc-card">
          <h3>satisfies: Check Without Widening</h3>
          <p><code>satisfies</code> (TypeScript 4.9+) checks that a value matches a type. But it <strong>keeps the value's own exact type</strong>:</p>
          <div class="lc-code">const palette = {<br>&nbsp;&nbsp;saffron: [255, 153, 51],<br>&nbsp;&nbsp;green: "#138808",<br>} satisfies Record&lt;string, Colour&gt;;<br><br>palette.green.toUpperCase();   // OK — green is known to be a string<br>palette.saffron[0];            // OK — saffron is known to be a tuple<br>palette.blue;<br>// Error: Property 'blue' does not exist on type '{ saffron: [number, number, number]; green: string; }'.</div>
          <p>Mistakes are still caught where you define the object:</p>
          <div class="lc-code">const bad = { white: [255, 255] } satisfies Record&lt;string, Colour&gt;;<br>// Error: Type '[number, number]' is not assignable to type 'Colour'.</div>
        </div>
        <div class="lc-card">
          <h3>as: Telling the Compiler to Trust You</h3>
          <p>A <strong>type assertion</strong> says "I know better than you. Treat this value as type T". It does <em>no</em> checking and <em>no</em> conversion at runtime:</p>
          <div class="lc-code">type User = { name: string; age: number };<br><br>const data = JSON.parse('{"name":"Asha"}') as User;   // a lie: age is missing<br>console.log(data.age.toFixed(0));<br>// compiles fine … then crashes: TypeError: Cannot read properties of undefined (reading 'toFixed')</div>
          <p>TypeScript only blocks assertions between types that are clearly unrelated (<code>"hello" as number</code> is an error). You can force it with <code>as unknown as T</code>, a <strong>double assertion</strong>. In a code review, this is a warning sign.</p>
          <p>Good reasons to use it are rare. One is a DOM element when you know its kind (<code>document.querySelector("#email") as HTMLInputElement</code>). Another is code that TypeScript cannot follow. For outside data, validate it instead (Lessons 8 and 17). For DOM elements, an <code>instanceof</code> check is even safer (Lesson 19).</p>
        </div>
        <div class="lc-card">
          <h3>The Non-Null Assertion !</h3>
          <div class="lc-code">const input = document.querySelector("input");   // HTMLInputElement | null<br>input!.value = "hi";   // "trust me, it's not null"</div>
          <p><code>!</code> removes <code>null</code> and <code>undefined</code> from a type without checking. If you are wrong, you get the same runtime crash that TypeScript tried to stop. Use a real check instead:</p>
          <div class="lc-code">if (!input) throw new Error("Email input is missing from the page");<br>input.value = "hi";   // narrowed, safe</div>
        </div>
        <div class="lc-card">
          <h3>as const satisfies: the Best of Both</h3>
          <p>For configuration objects, use <code>as const</code> together with <code>satisfies</code>. The first keeps literal types and makes values readonly. The second checks the shape:</p>
          <div class="lc-code">type Route = { path: `/${string}`; auth: boolean };<br><br>const ROUTES = {<br>&nbsp;&nbsp;home: { path: "/", auth: false },<br>&nbsp;&nbsp;orders: { path: "/orders", auth: true },<br>} as const satisfies Record&lt;string, Route&gt;;<br><br>type RouteName = keyof typeof ROUTES;       // "home" | "orders"<br>const p = ROUTES.orders.path;               // type: "/orders"</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: satisfies Catches a Mistake, as Hides It</h3>
          <div class="lc-code">type Theme = { primary: string; accent: string };<br><br>const t1 = { primary: "#4f46e5", accnet: "#f97316" } satisfies Theme;<br>// Error: Object literal may only specify known properties, but 'accnet' does not exist in type 'Theme'. Did you mean to write 'accent'?<br><br>const t2 = { primary: "#4f46e5" } as Theme;<br>// no error at all — but t2.accent is undefined at runtime</div>
          <p>Both lines "describe" the object as a <code>Theme</code>. But only <code>satisfies</code> really checks it.</p>
        </div>
        <div class="lc-card">
          <h3>Before You Write as, Ask Yourself…</h3>
          <ol class="lc-list">
            <li>Can I fix the type instead (with a union, a generic, or a better return type)?</li>
            <li>Can I narrow the type with a check (<code>typeof</code>, <code>instanceof</code>, a type guard)?</li>
            <li>Does <code>satisfies</code> say what I mean?</li>
            <li>If none of these work, add a comment. Explain why the assertion is safe.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Comparison</h3>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Checks the value?</th><th>Type you get</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>const x: T = v</code></td><td>yes</td><td><code>T</code> (details lost)</td><td>variables that must be exactly <code>T</code></td></tr>
              <tr><td><code>v satisfies T</code></td><td>yes</td><td>the value's own exact type</td><td>config objects, lookup tables</td></tr>
              <tr><td><code>v as T</code></td><td>barely (only clear mismatches)</td><td><code>T</code></td><td>rare cases TypeScript cannot prove</td></tr>
              <tr><td><code>v as const</code></td><td>no</td><td>literal + readonly</td><td>fixed lists and constants</td></tr>
              <tr><td><code>v!</code></td><td>no</td><td>without <code>null</code>/<code>undefined</code></td><td>avoid it, use a check</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>as</code> to "fix" a type error, instead of fixing the data or the type.</li>
            <li>Asserting JSON with <code>as User</code> and trusting it. Nothing is checked at runtime.</li>
            <li>Putting <code>!</code> after every <code>querySelector</code> call.</li>
            <li>Annotating a config object with <code>Record&lt;string, …&gt;</code>. You lose both the key names and the exact values. Use <code>satisfies</code>.</li>
            <li>Thinking <code>as number</code> turns a string into a number. Use <code>Number(value)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>white</code> colour to the starter's palette as <code>[255, 255]</code>. Read what <code>tsc</code> would say.</li>
            <li>Add a new route with the path <code>"orders"</code> (no slash at the start). Which part of the <code>Route</code> type rejects it?</li>
            <li>Replace the <code>as User</code> in the starter code with a type guard. Handle the missing age.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>: T</code> checks and widens the type. <code>satisfies T</code> checks and keeps the exact types.</li>
            <li><code>as T</code> and <code>!</code> skip checking. They are promises that you must keep yourself.</li>
            <li><code>as const satisfies T</code> is ideal for typed configuration with literal values.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Search your project for <code>as </code> and <code>!.</code> from time to time. Each one is a place where the compiler stopped protecting you. Try to replace it with <code>satisfies</code>, a type guard or a real check.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 16: satisfies and type assertions
        type Colour = string | [number, number, number];

        // Annotation: checked, but every entry becomes the wide type Colour
        const annotated: Record<string, Colour> = { saffron: [255, 153, 51], green: "#138808" };
        const g1 = annotated.green;
        console.log("annotated green is a", typeof g1, "- but TypeScript only knows 'Colour'");

        // satisfies: checked AND precise types are kept
        const palette = { saffron: [255, 153, 51], green: "#138808", navy: [0, 0, 128] } satisfies Record<string, Colour>;
        console.log("green:", palette.green.toUpperCase(), "| saffron red channel:", palette.saffron[0]);
        // const bad = { white: [255, 255] } satisfies Record<string, Colour>;
        // tsc: Type '[number, number]' is not assignable to type 'Colour'.

        // as const satisfies: literal types + shape check
        type Route = { path: `/${string}`; auth: boolean };
        const ROUTES = {
          home: { path: "/", auth: false },
          orders: { path: "/orders", auth: true },
          profile: { path: "/me", auth: true },
        } as const satisfies Record<string, Route>;
        type RouteName = keyof typeof ROUTES;
        const needsLogin = (r: RouteName): boolean => ROUTES[r].auth;
        for (const r of Object.keys(ROUTES) as RouteName[]) {
          console.log(`${r.padEnd(8)} ${ROUTES[r].path.padEnd(8)} login: ${needsLogin(r)}`);
        }

        // as: no checking, no conversion - a lying assertion
        type User = { name: string; age: number };
        const data = JSON.parse('{"name":"Asha"}') as User;
        try {
          console.log(data.age.toFixed(0));
        } catch (e) {
          console.log("Assertion lied:", e instanceof Error ? e.message : e);
        }

        // Prefer a real check over the non-null assertion !
        const found = [10, 20, 30].find((n) => n > 25); // number | undefined
        if (found === undefined) throw new Error("nothing found");
        console.log("found:", found * 2);
        console.log("'42' as unknown as number is still a", typeof ("42" as unknown as number));
      TS
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Async TypeScript and Safe JSON</h1>
        </div>
        <p class="lc-lead">Most real data arrives asynchronously (it comes later, not right away). It comes from an API, a file or a database. TypeScript gives Promises exact types. But it <strong>cannot</strong> know what a server will really send. This lesson shows how to type async code. It also shows how to turn untrusted JSON into safely typed data.</p>
        <div class="lc-card">
          <h3>Typing async Functions</h3>
          <div class="lc-code">type User = { id: number; name: string };<br><br>async function getUserName(id: number): Promise&lt;string&gt; {<br>&nbsp;&nbsp;const user = await loadUser(id);   // user: User<br>&nbsp;&nbsp;return user.name;                  // a string, wrapped in a Promise automatically<br>}<br><br>const n = getUserName(1);            // n: Promise&lt;string&gt; — not a string!<br>const name2 = await getUserName(1);  // string (inside an async function or module)</div>
          <ul class="lc-list">
            <li>An <code>async</code> function's return type is always <code>Promise&lt;T&gt;</code>.</li>
            <li><code>await</code> on a <code>Promise&lt;T&gt;</code> gives you a <code>T</code>.</li>
            <li><code>Awaited&lt;T&gt;</code> unwraps a Promise type at the type level. For example, <code>Awaited&lt;Promise&lt;User&gt;&gt;</code> is <code>User</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Promise.all Keeps Tuple Types</h3>
          <div class="lc-code">const [user, orders] = await Promise.all([loadUser(1), loadOrders(1)]);<br>// user: User, orders: Order[] — each position keeps its own type</div>
        </div>
        <div class="lc-card">
          <h3>The Problem: JSON Is Untyped</h3>
          <p><code>JSON.parse</code> and <code>response.json()</code> return <code>any</code>. Whatever type you give it, TypeScript believes you:</p>
          <div class="lc-code">async function getUser(id: number): Promise&lt;User&gt; {<br>&nbsp;&nbsp;const res = await fetch("/api/users/" + id);<br>&nbsp;&nbsp;return res.json();   // any → accepted as User without any check!<br>}</div>
          <p>Say the server sends <code>{ "id": "7", "fullName": "Asha" }</code>. Your code is typed as if <code>name</code> exists. It fails later, far away from the real cause. Remember: <strong>types are removed at runtime</strong>. The fix is to treat outside data as <code>unknown</code> and <strong>validate</strong> it (check its shape).</p>
        </div>
        <div class="lc-card">
          <h3>Validate With a Type Guard</h3>
          <div class="lc-code">function isUser(value: unknown): value is User {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;typeof value === "object" &amp;&amp; value !== null &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"id" in value &amp;&amp; typeof value.id === "number" &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"name" in value &amp;&amp; typeof value.name === "string"<br>&nbsp;&nbsp;);<br>}<br><br>async function getUser(id: number): Promise&lt;User&gt; {<br>&nbsp;&nbsp;const res = await fetch("/api/users/" + id);<br>&nbsp;&nbsp;if (!res.ok) throw new Error("HTTP " + res.status);<br>&nbsp;&nbsp;const data: unknown = await res.json();<br>&nbsp;&nbsp;if (!isUser(data)) throw new Error("Unexpected user data");<br>&nbsp;&nbsp;return data;   // now genuinely a User<br>}</div>
          <p>In bigger projects, writing guards by hand becomes slow and boring. <strong>Schema libraries</strong> such as <strong>Zod</strong> or <strong>Valibot</strong> help. You describe the shape once. You get both the runtime check and the TypeScript type from it. For example, with Zod: <code>const UserSchema = z.object({ id: z.number(), name: z.string() })</code> and <code>type User = z.infer&lt;typeof UserSchema&gt;</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: One Generic Fetch Helper That Validates</h3>
          <p>Use generics (Lesson 10) with type guards. Then every endpoint is validated the same way:</p>
          <div class="lc-code">async function getJson&lt;T&gt;(url: string, guard: (v: unknown) =&gt; v is T): Promise&lt;T&gt; {<br>&nbsp;&nbsp;const res = await fetch(url, { signal: AbortSignal.timeout(5000) });<br>&nbsp;&nbsp;if (!res.ok) throw new Error("HTTP " + res.status + " for " + url);<br>&nbsp;&nbsp;const data: unknown = await res.json();<br>&nbsp;&nbsp;if (!guard(data)) throw new Error("Unexpected data from " + url);<br>&nbsp;&nbsp;return data;<br>}<br><br>const user = await getJson("/api/users/1", isUser);   // user: User — checked at runtime too</div>
          <p>TypeScript works out <code>T</code> from the guard you pass. So the caller never writes a type argument. The caller can also never get unchecked data.</p>
        </div>
        <div class="lc-card">
          <h3>Errors in catch Are unknown</h3>
          <p>In JavaScript, you can throw anything, not just <code>Error</code> objects. With <code>strict</code> on (<code>useUnknownInCatchVariables</code>), the <code>catch</code> variable is <code>unknown</code>. So you must narrow it (check its type):</p>
          <div class="lc-code">try {<br>&nbsp;&nbsp;await getUser(7);<br>} catch (err) {<br>&nbsp;&nbsp;// console.log(err.message);<br>&nbsp;&nbsp;// Error: 'err' is of type 'unknown'.<br>&nbsp;&nbsp;const message = err instanceof Error ? err.message : String(err);<br>&nbsp;&nbsp;console.log("Failed:", message);<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Returning a Result Instead of Throwing</h3>
          <p>The <code>Result</code> type from Lesson 9 works well with async code. Callers cannot forget the error case:</p>
          <div class="lc-code">type Result&lt;T&gt; = { ok: true; value: T } | { ok: false; error: string };<br><br>async function safeGetUser(id: number): Promise&lt;Result&lt;User&gt;&gt; {<br>&nbsp;&nbsp;try {<br>&nbsp;&nbsp;&nbsp;&nbsp;return { ok: true, value: await getUser(id) };<br>&nbsp;&nbsp;} catch (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;return { ok: false, error: err instanceof Error ? err.message : "Unknown error" };<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Trust Levels</h3>
          <table class="lc-table">
            <thead><tr><th>Approach</th><th>Compile-time type</th><th>Runtime safety</th></tr></thead>
            <tbody>
              <tr><td><code>return res.json()</code> into <code>Promise&lt;User&gt;</code></td><td>User (unchecked)</td><td>none</td></tr>
              <tr><td><code>(await res.json()) as User</code></td><td>User (unchecked)</td><td>none, just easier to see</td></tr>
              <tr><td><code>unknown</code> + type guard</td><td>User after the check</td><td>yes</td></tr>
              <tr><td>Schema library (Zod, Valibot)</td><td>taken from the schema</td><td>yes, with good error messages</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Returning <code>res.json()</code> straight into a typed Promise, and thinking the data is valid.</li>
            <li>Forgetting <code>await</code>. You get a <code>Promise&lt;User&gt;</code> where you expected a <code>User</code>. TypeScript usually catches this when you use it.</li>
            <li>Writing <code>catch (err: any)</code> to hide the <code>unknown</code>. Narrow the type instead.</li>
            <li>Not checking <code>res.ok</code>. <code>fetch</code> does not reject on 404 or 500.</li>
            <li>Validating only the top level, and trusting nested arrays and objects.</li>
            <li>Validating the same data again and again deep inside the app. Validate it once, where it enters the app.</li>
            <li>Forgetting that <code>localStorage</code> values are also outside data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code, add an optional <code>state?: string</code> to <code>User</code>. Update <code>isUser</code> so it accepts the state only if it is a string.</li>
            <li>Add a fourth fake response with <code>"id": "4"</code> (a string). Check that it is rejected.</li>
            <li>Load users 1 and 2 at the same time with <code>Promise.all</code>. Print both names.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>async functions return <code>Promise&lt;T&gt;</code>. <code>await</code> unwraps it, and <code>Awaited&lt;T&gt;</code> does the same for types.</li>
            <li><code>JSON.parse</code> and <code>res.json()</code> give <code>any</code>. Store the result as <code>unknown</code>.</li>
            <li>Validate outside data with type guards or a schema library such as Zod or Valibot.</li>
            <li><code>catch</code> variables are <code>unknown</code>. Narrow them with <code>instanceof Error</code>.</li>
            <li>Always check <code>res.ok</code> before reading the body.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Draw a line around your app. Everything that crosses it (API responses, <code>localStorage</code>, form input, URL parameters) comes in as <code>unknown</code>. Validate it once, at the line. Inside the line, you can trust your types.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 17: async TypeScript and safe JSON
        type User = { id: number; name: string };
        type Result<T> = { ok: true; value: T } | { ok: false; error: string };

        // Fake server: returns raw JSON text after a delay (like response.text())
        const fakeServer: Record<number, string> = {
          1: '{"id":1,"name":"Asha"}',
          2: '{"id":2,"fullName":"Ravi"}', // wrong shape!
          3: "not json at all",
        };
        const delay = (ms: number) => new Promise<void>((resolve) => setTimeout(resolve, ms));
        async function fetchText(id: number): Promise<string> {
          await delay(50);
          const body = fakeServer[id];
          if (body === undefined) throw new Error(`HTTP 404 for user ${id}`);
          return body;
        }

        function isUser(value: unknown): value is User {
          return typeof value === "object" && value !== null &&
            "id" in value && typeof value.id === "number" &&
            "name" in value && typeof value.name === "string";
        }

        async function getUser(id: number): Promise<Result<User>> {
          try {
            const data: unknown = JSON.parse(await fetchText(id)); // outside data starts as unknown
            if (!isUser(data)) return { ok: false, error: `user ${id}: unexpected shape ${JSON.stringify(data)}` };
            return { ok: true, value: data };
          } catch (err) {
            // err is unknown under strict mode
            return { ok: false, error: err instanceof Error ? err.message : String(err) };
          }
        }

        async function main(): Promise<void> {
          for (const id of [1, 2, 3, 4]) {
            const r = await getUser(id);
            console.log(r.ok ? `OK: ${r.value.name} (#${r.value.id})` : `Rejected -> ${r.error}`);
          }
          const [a, b] = await Promise.all([getUser(1), delay(10).then(() => "timer done")]);
          console.log("Promise.all keeps types:", a.ok ? a.value.name : a.error, "|", b);
          type Loaded = Awaited<ReturnType<typeof getUser>>; // Result<User>
          const check: Loaded = { ok: false, error: "demo" };
          console.log("Awaited type demo:", check.ok);
        }
        main();
      TS
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Modules, Declaration Files and tsconfig</h1>
        </div>
        <p class="lc-lead">Real TypeScript projects have many files and use npm packages. You set them up with <code>tsconfig.json</code>. This lesson shows how to import types. It shows how TypeScript learns the types of JavaScript libraries (<code>.d.ts</code> files). It also covers the compiler options that matter, including the new defaults in TypeScript 6.0 and 7.0.</p>
        <div class="lc-card">
          <h3>Importing and Exporting Types</h3>
          <div class="lc-code">// models.ts<br>export interface Product { id: number; name: string; price: number }<br>export type Currency = "INR" | "USD";<br>export function formatPrice(p: Product, c: Currency = "INR"): string { … }<br><br>// cart.ts<br>import { formatPrice } from "./models.js";<br>import type { Product, Currency } from "./models.js";   // type-only import<br>// or, in one line: import { formatPrice, type Product } from "./models.js";</div>
          <p>An <code>import type</code> is <strong>always removed</strong> from the JavaScript output. The <code>verbatimModuleSyntax</code> option is turned on by <code>tsc --init</code>. With it, TypeScript <em>requires</em> you to mark type-only imports this way. Then every tool (tsc, Vite, esbuild, Node's type stripping) knows exactly which imports to keep and which to delete.</p>
          <p>Look at the <code>.js</code> extension in the import path. With <code>"module": "nodenext"</code>, you write the extension of the <em>compiled</em> file. Projects that use a bundler (<code>"moduleResolution": "bundler"</code>) can leave it out.</p>
        </div>
        <div class="lc-card">
          <h3>Declaration Files (.d.ts)</h3>
          <p>A <code>.d.ts</code> file contains <strong>only types</strong>. It has no working code. It describes JavaScript code that lives somewhere else:</p>
          <div class="lc-code">// analytics.d.ts — describing a plain JS script loaded with a &lt;script&gt; tag<br>declare const ANALYTICS_VERSION: string;<br>declare function track(event: string, data?: Record&lt;string, unknown&gt;): void;<br><br>// declaring an untyped npm package (a quick fix)<br>declare module "old-chart-lib" {<br>&nbsp;&nbsp;export function draw(el: HTMLElement, values: number[]): void;<br>}</div>
          <p><code>declare</code> means "this exists at runtime. Trust me about its type". <code>tsc --declaration</code> (<code>"declaration": true</code>) creates <code>.d.ts</code> files for your own library.</p>
        </div>
        <div class="lc-card">
          <h3>Types for npm Packages</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>The package comes with its own types (most modern ones: Zod, React Router, Vite…)</td><td>nothing, just install it</td></tr>
              <tr><td>The types are on DefinitelyTyped</td><td><code>npm i -D @types/node</code>, <code>@types/react</code>, …</td></tr>
              <tr><td>No types exist anywhere</td><td>write a small <code>declare module</code> file</td></tr>
            </tbody>
          </table>
          <p><strong>Changed in TypeScript 6.0:</strong> <code>"types"</code> now defaults to <code>[]</code>. Global type packages such as <code>@types/node</code> are no longer found automatically. You must list them: <code>"types": ["node"]</code>. (Types you <code>import</code> from a package still work as before.)</p>
        </div>
        <div class="lc-card">
          <h3>What strict Turns On</h3>
          <p><code>"strict": true</code> turns on a group of checks. Since TypeScript 6.0, it is <strong>on by default</strong>:</p>
          <ul class="lc-list">
            <li><code>noImplicitAny</code>: parameters without types are errors.</li>
            <li><code>strictNullChecks</code>: you must handle <code>null</code>/<code>undefined</code> yourself.</li>
            <li><code>strictFunctionTypes</code>, <code>strictBindCallApply</code>: safer function assignments and <code>call</code>/<code>apply</code>.</li>
            <li><code>strictPropertyInitialization</code>: class fields must get a starting value.</li>
            <li><code>noImplicitThis</code>: <code>this</code> must have a known type.</li>
            <li><code>useUnknownInCatchVariables</code>: <code>catch (err)</code> gives <code>unknown</code>.</li>
            <li><code>strictBuiltinIteratorReturn</code>: built-in iterators have exact result types.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Important Options Beyond strict</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>target</code></td><td>which JavaScript version to output (for example <code>es2022</code>). 7.0 no longer supports ES5 output</td></tr>
              <tr><td><code>module</code> / <code>moduleResolution</code></td><td>how imports work: <code>nodenext</code> for Node.js, <code>bundler</code> for Vite/webpack</td></tr>
              <tr><td><code>lib</code></td><td>which built-in APIs are available (<code>es2022</code>, <code>dom</code>)</td></tr>
              <tr><td><code>outDir</code> / <code>rootDir</code></td><td>where the output goes / where the source files are (<code>rootDir</code> now defaults to the tsconfig folder)</td></tr>
              <tr><td><code>noEmit</code></td><td>only check types. A bundler creates the JavaScript</td></tr>
              <tr><td><code>noUncheckedIndexedAccess</code></td><td><code>arr[i]</code> and <code>record[key]</code> include <code>undefined</code></td></tr>
              <tr><td><code>exactOptionalPropertyTypes</code></td><td><code>x?: string</code> means "missing", not "may be set to undefined"</td></tr>
              <tr><td><code>verbatimModuleSyntax</code> / <code>isolatedModules</code></td><td>make sure tools like Vite can compile each file on its own</td></tr>
              <tr><td><code>erasableSyntaxOnly</code></td><td>block enums, namespaces and parameter properties, so tools can just remove the types</td></tr>
              <tr><td><code>skipLibCheck</code></td><td>do not check <code>.d.ts</code> files in <code>node_modules</code> again (faster)</td></tr>
            </tbody>
          </table>
          <p>These were removed in TypeScript 7.0 (and deprecated in 6.0): <code>target: es5</code>, <code>moduleResolution: node</code> (node10), <code>baseUrl</code>, <code>outFile</code>, and the <code>amd</code>/<code>umd</code>/<code>system</code> module formats.</p>
        </div>
        <div class="lc-card">
          <h3>Two Real-World tsconfig Files</h3>
          <div class="lc-code">// Vite + React app (Vite builds, tsc only checks)<br>{<br>&nbsp;&nbsp;"compilerOptions": {<br>&nbsp;&nbsp;&nbsp;&nbsp;"target": "es2022", "lib": ["es2022", "dom"],<br>&nbsp;&nbsp;&nbsp;&nbsp;"module": "esnext", "moduleResolution": "bundler",<br>&nbsp;&nbsp;&nbsp;&nbsp;"jsx": "react-jsx", "noEmit": true,<br>&nbsp;&nbsp;&nbsp;&nbsp;"strict": true, "noUncheckedIndexedAccess": true,<br>&nbsp;&nbsp;&nbsp;&nbsp;"verbatimModuleSyntax": true, "skipLibCheck": true<br>&nbsp;&nbsp;},<br>&nbsp;&nbsp;"include": ["src"]<br>}</div>
          <div class="lc-code">// Node.js service<br>{<br>&nbsp;&nbsp;"compilerOptions": {<br>&nbsp;&nbsp;&nbsp;&nbsp;"target": "es2023", "module": "nodenext",<br>&nbsp;&nbsp;&nbsp;&nbsp;"rootDir": "src", "outDir": "dist",<br>&nbsp;&nbsp;&nbsp;&nbsp;"types": ["node"], "strict": true,<br>&nbsp;&nbsp;&nbsp;&nbsp;"verbatimModuleSyntax": true, "skipLibCheck": true<br>&nbsp;&nbsp;}<br>}</div>
          <p>The easiest way to start is <code>npx tsc --init</code>. It writes a modern config. <code>strict</code>, <code>noUncheckedIndexedAccess</code>, <code>exactOptionalPropertyTypes</code> and <code>verbatimModuleSyntax</code> are already on.</p>
        </div>
        <div class="lc-card">
          <h3>Starter Output</h3>
          <p>Run the starter code. It handles every strict-mode rule above in code. So it compiles with <code>strict</code> and <code>noUncheckedIndexedAccess</code>, and prints:</p>
          <div class="lc-code">#1: Notebook ₹60 | #2: Pen ₹15 | #9: not found<br>Pen stock: 0 | Eraser stock: 0 | catalog[5]: none<br>parsed: 49.5<br>error: "fifty" is not a price<br>Notebook with GST: ₹71</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Turning <code>strict</code> off to make errors go away. The errors are the reason to use TypeScript.</li>
            <li>Upgrading to TypeScript 6/7 and then seeing that <code>process</code> or <code>describe</code> is "not found". Add <code>"types": ["node"]</code> (or your test runner's types).</li>
            <li>Mixing type and value imports without <code>type</code>. Under <code>verbatimModuleSyntax</code>, this causes "is a type and must be imported using a type-only import" errors.</li>
            <li>Writing <code>declare module "x"</code> with no body. This silently gives the whole package the type <code>any</code>.</li>
            <li>Keeping old options like <code>baseUrl</code> or <code>moduleResolution: "node"</code>. They were removed in 7.0.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter code copies what <code>strictNullChecks</code> and <code>noUncheckedIndexedAccess</code> make you write. Remove one of the checks. Think about which error <code>tsc</code> would show.</li>
            <li>On your computer, run <code>npm init -y</code>, <code>npm i -D typescript</code> and <code>npx tsc --init</code>. Then read the <code>tsconfig.json</code> it created.</li>
            <li>Write a <code>.d.ts</code> declaration for a global function <code>showToast(message: string): void</code>.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Use <code>import type</code> for imports that are only types (<code>verbatimModuleSyntax</code> requires this).</li>
            <li><code>.d.ts</code> files and <code>declare</code> describe JavaScript that lives elsewhere. <code>@types/*</code> packages fill the gaps.</li>
            <li>Since TypeScript 6.0, <code>strict</code> is on and <code>types</code> defaults to <code>[]</code>. 7.0 removed ES5 output and other old options.</li>
            <li>Run <code>tsc --noEmit</code> in CI, because bundlers do not check types.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Run <code>npx tsc --noEmit</code> in CI (your automatic checks) on every pull request. Bundlers like Vite remove types without checking them. Without this step, type errors can get into production.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 18: what strict options make you write (the editor runs one file, so no imports here)
        // In a real project: import type { Product } from "./models.js";
        type Product = { id: number; name: string; price: number; discount?: number };

        const catalog: Product[] = [
          { id: 1, name: "Notebook", price: 60 },
          { id: 2, name: "Pen", price: 20, discount: 5 },
        ];

        // strictNullChecks: find() may return undefined, so we must handle it
        function priceOf(id: number): string {
          const p = catalog.find((item) => item.id === id);
          if (p === undefined) return `#${id}: not found`;
          const final = p.price - (p.discount ?? 0); // optional property may be undefined
          return `#${id}: ${p.name} ₹${final}`;
        }
        console.log(priceOf(1), "|", priceOf(2), "|", priceOf(9));

        // noUncheckedIndexedAccess: arr[i] and record[key] may be undefined
        const stock: Record<string, number> = { Notebook: 12, Pen: 0 };
        function stockOf(name: string): number {
          const qty: number | undefined = stock[name];
          return qty ?? 0;
        }
        const first: Product | undefined = catalog[5];
        console.log("Pen stock:", stockOf("Pen"), "| Eraser stock:", stockOf("Eraser"), "| catalog[5]:", first?.name ?? "none");

        // useUnknownInCatchVariables: err is unknown
        function parsePrice(text: string): number {
          const n = Number(text);
          if (Number.isNaN(n)) throw new TypeError(`"${text}" is not a price`);
          return n;
        }
        for (const t of ["49.5", "fifty"]) {
          try {
            console.log("parsed:", parsePrice(t));
          } catch (err) {
            console.log("error:", err instanceof Error ? err.message : String(err));
          }
        }

        // noImplicitAny: every parameter needs a type (this would be an error without ": number")
        const withGst = (amount: number) => Math.round(amount * 1.18);
        console.log("Notebook with GST: ₹" + withGst(60));
      TS
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">TypeScript and the DOM</h1>
        </div>
        <p class="lc-lead">Most TypeScript runs in a browser. All the browser's objects, like elements, events and forms, have types. In this lesson you learn what <code>querySelector</code> really returns. You learn how to narrow an <code>Element</code> to an <code>HTMLInputElement</code>. You also learn how event types are chosen. Then you can write DOM code with no <code>any</code> and almost no <code>as</code>.</p>
        <div class="lc-card">
          <h3>Where DOM Types Come From</h3>
          <p>The types for <code>document</code>, <code>HTMLElement</code>, <code>MouseEvent</code> and similar objects are in TypeScript's built-in <code>lib.dom.d.ts</code>. You can use them when <code>"lib"</code> includes <code>"dom"</code>. This is the default when you do not set <code>lib</code>, and the Vite templates set it too. A Node.js project usually leaves <code>"dom"</code> out. Then <code>document</code> is correctly "not found".</p>
          <p>Element types form a family: <code>EventTarget</code> → <code>Node</code> → <code>Element</code> → <code>HTMLElement</code> → specific types such as <code>HTMLInputElement</code>, <code>HTMLButtonElement</code>, <code>HTMLFormElement</code>. Only the specific types know about <code>value</code>, <code>disabled</code> or <code>checked</code>.</p>
        </div>
        <div class="lc-card">
          <h3>What Selecting Returns</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td><code>document.querySelector("input")</code></td><td><code>HTMLInputElement | null</code>, TypeScript understands tag names</td></tr>
              <tr><td><code>document.querySelector(".price")</code></td><td><code>Element | null</code>, a class could be on any element</td></tr>
              <tr><td><code>document.getElementById("total")</code></td><td><code>HTMLElement | null</code></td></tr>
              <tr><td><code>document.querySelectorAll("li")</code></td><td><code>NodeListOf&lt;HTMLLIElement&gt;</code> (never null, may be empty)</td></tr>
              <tr><td><code>document.createElement("button")</code></td><td><code>HTMLButtonElement</code> (never null)</td></tr>
              <tr><td><code>document.querySelector&lt;HTMLInputElement&gt;("#email")</code></td><td><code>HTMLInputElement | null</code>, this is your claim, and it is not checked</td></tr>
            </tbody>
          </table>
          <p>Every "find" can return <code>null</code>, because the element might not be on the page. <code>strict</code> makes you handle this:</p>
          <div class="lc-code">const price = document.querySelector(".price");<br>price.textContent = "₹60";<br>// Error: 'price' is possibly 'null'.<br><br>const qty = document.querySelector("#qty");<br>console.log(qty?.value);<br>// Error: Property 'value' does not exist on type 'Element'.</div>
        </div>
        <div class="lc-card">
          <h3>Narrow With instanceof, Not as</h3>
          <p>The safest way to go from <code>Element | null</code> to the type you need is a runtime check. <code>instanceof</code> narrows the type <em>and</em> handles <code>null</code> in one step:</p>
          <div class="lc-code">const qty = document.querySelector("#qty");<br>if (qty instanceof HTMLInputElement) {<br>&nbsp;&nbsp;console.log(qty.valueAsNumber + 1);   // qty: HTMLInputElement here<br>}<br><br>// A reusable helper: find it and check its kind, or fail loudly<br>function mustFind&lt;T extends Element&gt;(selector: string, kind: { new (): T }): T {<br>&nbsp;&nbsp;const el = document.querySelector(selector);<br>&nbsp;&nbsp;if (!(el instanceof kind)) throw new Error(`${selector} is missing or not the right element`);<br>&nbsp;&nbsp;return el;<br>}<br>const email = mustFind("#email", HTMLInputElement);   // HTMLInputElement</div>
          <table class="lc-table">
            <thead><tr><th>Way</th><th>Checks at runtime?</th><th>If the HTML changes</th></tr></thead>
            <tbody>
              <tr><td><code>el instanceof HTMLInputElement</code></td><td>yes</td><td>your <code>else</code> branch or error runs</td></tr>
              <tr><td><code>querySelector("input")</code> (tag name)</td><td>the tag is part of the query</td><td>you get <code>null</code>, which you must handle</td></tr>
              <tr><td><code>as HTMLInputElement</code> / <code>querySelector&lt;T&gt;</code></td><td>no</td><td>the code crashes later with a confusing error</td></tr>
              <tr><td><code>el!</code></td><td>no</td><td><code>TypeError: Cannot read properties of null</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Event Types Come From the Event Name</h3>
          <p><code>addEventListener</code> looks up the event name in a map inside <code>lib.dom.d.ts</code>. So an inline handler gets the right type without you writing it:</p>
          <table class="lc-table">
            <thead><tr><th>Event name</th><th><code>event</code> type</th><th>Useful properties</th></tr></thead>
            <tbody>
              <tr><td><code>"click"</code></td><td><code>PointerEvent</code> (a kind of <code>MouseEvent</code>)</td><td><code>clientX</code>, <code>button</code></td></tr>
              <tr><td><code>"keydown"</code></td><td><code>KeyboardEvent</code></td><td><code>key</code>, <code>ctrlKey</code></td></tr>
              <tr><td><code>"input"</code>, <code>"change"</code></td><td><code>Event</code></td><td><code>target</code></td></tr>
              <tr><td><code>"submit"</code></td><td><code>SubmitEvent</code></td><td><code>submitter</code>, <code>preventDefault()</code></td></tr>
            </tbody>
          </table>
          <p>But <code>event.target</code> is only <code>EventTarget | null</code>. TypeScript cannot know which child was clicked or typed into. So narrow it:</p>
          <div class="lc-code">button.addEventListener("click", (event) =&gt; {<br>&nbsp;&nbsp;event.target.disabled = true;<br>&nbsp;&nbsp;// Error: 'event.target' is possibly 'null'.<br>&nbsp;&nbsp;// Error: Property 'disabled' does not exist on type 'EventTarget'.<br>&nbsp;&nbsp;if (event.target instanceof HTMLButtonElement) event.target.disabled = true;   // OK<br>});</div>
          <p>A handler written as a separate function needs its type written out: <code>function onKey(event: KeyboardEvent) { … }</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Typed Order Form</h3>
          <div class="lc-code">form.addEventListener("submit", (event) =&gt; {<br>&nbsp;&nbsp;event.preventDefault();<br>&nbsp;&nbsp;const data = new FormData(form);<br>&nbsp;&nbsp;const item = data.get("item");         // FormDataEntryValue | null = string | File | null<br>&nbsp;&nbsp;const qty = Number(data.get("qty"));   // inputs always give strings: convert<br>&nbsp;&nbsp;if (typeof item !== "string" || !Number.isInteger(qty) || qty &lt; 1) {<br>&nbsp;&nbsp;&nbsp;&nbsp;totalText.textContent = "Invalid order";<br>&nbsp;&nbsp;} else {<br>&nbsp;&nbsp;&nbsp;&nbsp;totalText.textContent = `${qty} x ${item} = ₹${qty * 60}`;<br>&nbsp;&nbsp;}<br>});</div>
          <p>With item "Notebook" and quantity 5, the paragraph shows:</p>
          <div class="lc-code">5 x Notebook = ₹300</div>
          <p>Two more DOM values are always strings. One is <code>input.value</code> (use <code>valueAsNumber</code> or <code>Number()</code>). The other is <code>el.dataset.id</code>, typed <code>string | undefined</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>DOM types come from <code>lib.dom.d.ts</code>. Include <code>"dom"</code> in <code>lib</code> for browser code.</li>
            <li>Tag-name selectors and <code>createElement</code> give specific types. Class and id selectors give <code>Element</code> or <code>HTMLElement</code>, always with <code>| null</code>.</li>
            <li>Narrow with <code>instanceof</code>. Treat <code>as</code>, <code>querySelector&lt;T&gt;</code> and <code>!</code> as unchecked promises.</li>
            <li>Inline handlers get their event type from the event name. You still need to narrow <code>event.target</code>.</li>
            <li><code>FormData.get</code> returns <code>string | File | null</code>, and input values are strings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Starter Output</h3>
          <p>The starter code builds a small form in code. It finds the form's parts with typed helpers and fires real events. When you run it, it prints:</p>
          <div class="lc-code">button type: submit<br>qty value: 3 | as a number: 3<br>li: LI | data-id: 42<br>input event, new value: 5<br>submitted: 5 x Notebook = ₹300<br>page reload prevented: true</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>document.querySelector("#qty") as HTMLInputElement</code> everywhere. It hides both "missing element" and "wrong element" bugs.</li>
            <li>Adding <code>!</code> after every selector to hide the <code>possibly 'null'</code> error.</li>
            <li>Reading <code>event.target.value</code> directly. First narrow <code>event.target</code> with <code>instanceof</code>.</li>
            <li>Doing maths with <code>input.value</code>: <code>"3" + 1</code> is <code>"31"</code>. Convert it with <code>valueAsNumber</code> or <code>Number()</code>.</li>
            <li>Leaving <code>"dom"</code> out of <code>lib</code> in a browser project. Or adding it to a Node.js project, which then accepts <code>document</code> code that will crash.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code, change <code>mustFind(".total", HTMLParagraphElement)</code> to <code>HTMLInputElement</code> and run it. Which error do you get, and when?</li>
            <li>Set the quantity to <code>"0"</code> before the submit event. Check that "Invalid order" is shown.</li>
            <li>Add a <code>keydown</code> listener to <code>qtyInput</code> that logs <code>event.key</code>. Fire it with <code>new KeyboardEvent("keydown", { key: "Enter" })</code>. In a real editor, hover over <code>event</code> to see its type.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you are not sure what an element or event is, hover over it in VS Code. If the type is <code>Element</code> or <code>EventTarget</code>, add an <code>instanceof</code> check. Do not use <code>as</code>.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 19: TypeScript and the DOM (the page is built in code so the example runs anywhere)
        const form = document.createElement("form");
        form.innerHTML = `
          <input name="item" value="Notebook">
          <input name="qty" type="number" value="3">
          <button type="submit">Add</button>
          <p class="total"></p>`;

        // Tag-name selectors give the exact element type (or null)
        const button = form.querySelector("button"); // HTMLButtonElement | null
        if (button) console.log("button type:", button.type);

        // Class selectors only give Element | null, so check the kind with instanceof
        function mustFind<T extends Element>(selector: string, kind: { new (): T }): T {
          const el = form.querySelector(selector);
          if (!(el instanceof kind)) throw new Error(`${selector} is missing or not the right element`);
          return el; // narrowed to T
        }
        const qtyInput = mustFind('input[name="qty"]', HTMLInputElement);
        const totalText = mustFind(".total", HTMLParagraphElement);
        console.log("qty value:", qtyInput.value, "| as a number:", qtyInput.valueAsNumber);

        // createElement("li") is typed as HTMLLIElement automatically
        const li = document.createElement("li");
        li.dataset.id = "42";
        const id: string | undefined = li.dataset.id; // dataset values are string | undefined
        console.log("li:", li.tagName, "| data-id:", id);

        // Event types come from the event name: "input" gives Event, "submit" gives SubmitEvent
        qtyInput.addEventListener("input", (event) => {
          if (event.target instanceof HTMLInputElement) console.log("input event, new value:", event.target.value);
        });
        form.addEventListener("submit", (event) => {
          event.preventDefault();
          const data = new FormData(form);
          const item = data.get("item"); // FormDataEntryValue | null  (string | File | null)
          const qty = Number(data.get("qty"));
          if (typeof item !== "string" || !Number.isInteger(qty) || qty < 1) {
            totalText.textContent = "Invalid order";
          } else {
            totalText.textContent = `${qty} x ${item} = ₹${qty * 60}`;
          }
          console.log("submitted:", totalText.textContent);
        });

        qtyInput.value = "5";
        qtyInput.dispatchEvent(new Event("input"));
        const notCancelled = form.dispatchEvent(new Event("submit", { cancelable: true }));
        console.log("page reload prevented:", !notCancelled);
      TS
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">TypeScript with React</h1>
        </div>
        <p class="lc-lead">React and TypeScript are used together in most front-end jobs today. Types describe each component's props (its inputs), state and events. So your editor catches a missing prop or a wrong event handler before you open the browser.</p>
        <div class="lc-card">
          <h3>Starting a Project</h3>
          <div class="lc-code">npm create vite@latest my-app -- --template react-ts<br>cd my-app<br>npm install<br>npm run dev</div>
          <ul class="lc-list">
            <li><strong>Vite</strong> is the standard way to start a React + TypeScript app (the current React version is 19).</li>
            <li>Components live in <code>.tsx</code> files. These are TypeScript files that can contain JSX.</li>
            <li>Vite removes types without checking them, to be fast. To check types, run <code>npx tsc --noEmit</code> (or <code>npm run build</code>, which runs <code>tsc -b</code> in the template).</li>
            <li><strong>Create React App</strong> (<code>npx create-react-app</code>) was deprecated in February 2025. It is the old way, so do not use it for new projects. Frameworks such as Next.js or React Router are the other official ways to start.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Typing Props</h3>
          <div class="lc-code">type ProductCardProps = {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;price: number;<br>&nbsp;&nbsp;inStock?: boolean;                        // optional prop<br>&nbsp;&nbsp;onAdd: (name: string) =&gt; void;            // callback prop<br>};<br><br>function ProductCard({ name, price, inStock = true, onAdd }: ProductCardProps) {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;div className="card"&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h3&gt;{name}&lt;/h3&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;₹{price}&lt;/p&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button disabled={!inStock} onClick={() =&gt; onAdd(name)}&gt;Add&lt;/button&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;<br>&nbsp;&nbsp;);<br>}<br><br>&lt;ProductCard name="Pen" onAdd={console.log} /&gt;<br>// Error: Property 'price' is missing in type '{ name: string; onAdd: …; }' but required in type 'ProductCardProps'.</div>
          <p>A component is just a function. Its parameter is the props object. Add a type to that parameter. TypeScript works out the return type (JSX) by itself. <code>React.FC</code> is optional, and you do not need it.</p>
        </div>
        <div class="lc-card">
          <h3>children and Extending HTML Props</h3>
          <div class="lc-code">import type { ReactNode, ComponentProps } from "react";<br><br>type PanelProps = { title: string; children: ReactNode };   // anything React can render<br>function Panel({ title, children }: PanelProps) {<br>&nbsp;&nbsp;return &lt;section&gt;&lt;h2&gt;{title}&lt;/h2&gt;{children}&lt;/section&gt;;<br>}<br><br>// Accept every normal &lt;button&gt; prop, plus our own variant prop<br>type ButtonProps = ComponentProps&lt;"button"&gt; &amp; { variant?: "primary" | "danger" };<br>function Button({ variant = "primary", ...rest }: ButtonProps) {<br>&nbsp;&nbsp;return &lt;button className={"btn-" + variant} {...rest} /&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>useState and useRef</h3>
          <div class="lc-code">const [count, setCount] = useState(0);                     // inferred: number<br>const [user, setUser] = useState&lt;User | null&gt;(null);       // explicit: starts null<br>const [items, setItems] = useState&lt;string[]&gt;([]);          // empty array needs a type<br><br>const inputRef = useRef&lt;HTMLInputElement&gt;(null);<br>inputRef.current?.focus();                                   // current may be null</div>
          <p>Write the type argument when the starting value does not show the full type (<code>null</code>, <code>[]</code>). Then <code>setCount("5")</code> is an error.</p>
        </div>
        <div class="lc-card">
          <h3>Event Handler Types</h3>
          <table class="lc-table">
            <thead><tr><th>Event</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>typing in an input</td><td><code>React.ChangeEvent&lt;HTMLInputElement&gt;</code></td></tr>
              <tr><td>submitting a form</td><td><code>React.FormEvent&lt;HTMLFormElement&gt;</code></td></tr>
              <tr><td>clicking a button</td><td><code>React.MouseEvent&lt;HTMLButtonElement&gt;</code></td></tr>
              <tr><td>key press</td><td><code>React.KeyboardEvent&lt;HTMLInputElement&gt;</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">function Search() {<br>&nbsp;&nbsp;const [query, setQuery] = useState("");<br>&nbsp;&nbsp;const onChange = (e: React.ChangeEvent&lt;HTMLInputElement&gt;) =&gt; setQuery(e.target.value);<br>&nbsp;&nbsp;const onSubmit = (e: React.FormEvent&lt;HTMLFormElement&gt;) =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;e.preventDefault();<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log("Searching", query);<br>&nbsp;&nbsp;};<br>&nbsp;&nbsp;return &lt;form onSubmit={onSubmit}&gt;&lt;input value={query} onChange={onChange} /&gt;&lt;/form&gt;;<br>}</div>
          <p>You can write the handler inline (<code>onChange={(e) =&gt; setQuery(e.target.value)}</code>). Then <code>e</code> gets its type automatically from where it is used. This is called contextual typing.</p>
        </div>
        <div class="lc-card">
          <h3>useReducer With a Discriminated Union</h3>
          <div class="lc-code">type CartAction =<br>&nbsp;&nbsp;| { type: "add"; name: string; price: number }<br>&nbsp;&nbsp;| { type: "remove"; name: string }<br>&nbsp;&nbsp;| { type: "clear" };<br><br>function cartReducer(state: CartItem[], action: CartAction): CartItem[] {<br>&nbsp;&nbsp;switch (action.type) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "add": return [...state, { name: action.name, price: action.price }];<br>&nbsp;&nbsp;&nbsp;&nbsp;case "remove": return state.filter((i) =&gt; i.name !== action.name);<br>&nbsp;&nbsp;&nbsp;&nbsp;case "clear": return [];<br>&nbsp;&nbsp;}<br>}<br><br>const [cart, dispatch] = useReducer(cartReducer, []);<br>dispatch({ type: "add", name: "Pen" });<br>// Error: Property 'price' is missing …</div>
          <p>This is the discriminated-union pattern from Lesson 9. It is the most important TypeScript skill for React state.</p>
        </div>
        <div class="lc-card">
          <h3>Typing a Custom Hook</h3>
          <p>A custom hook is a function. So give types to its parameters and often to its return value. If you return a tuple, add <code>as const</code> or write the type. If you do not, it widens to a normal array:</p>
          <div class="lc-code">function useToggle(initial = false) {<br>&nbsp;&nbsp;const [on, setOn] = useState(initial);<br>&nbsp;&nbsp;const toggle = () =&gt; setOn((v) =&gt; !v);<br>&nbsp;&nbsp;return [on, toggle] as const;   // readonly [boolean, () =&gt; void]<br>}<br><br>const [isOpen, toggleOpen] = useToggle();</div>
        </div>
        <div class="lc-card">
          <h3>Props That Depend on Each Other</h3>
          <p>A discriminated union can make prop combinations safe. For example, a link-style button needs an <code>href</code>, and a normal one needs an <code>onClick</code>:</p>
          <div class="lc-code">type ActionProps =<br>&nbsp;&nbsp;| { as: "link"; href: string; label: string }<br>&nbsp;&nbsp;| { as: "button"; onClick: () =&gt; void; label: string };<br><br>&lt;Action as="link" label="Docs" /&gt;<br>// Error: Property 'href' is missing …</div>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Start new projects with <code>npm create vite@latest -- --template react-ts</code>. Create React App is deprecated.</li>
            <li>Type props with a <code>type</code>/<code>interface</code>. Use <code>ReactNode</code> for children, and <code>ComponentProps&lt;"tag"&gt;</code> to extend HTML props.</li>
            <li>Give <code>useState</code> a type argument when the starting value is <code>null</code> or <code>[]</code>.</li>
            <li>Use <code>React.ChangeEvent</code>, <code>FormEvent</code> and <code>MouseEvent</code> for handlers written separately.</li>
            <li>Use discriminated unions for reducer actions and for props that depend on each other.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Starter Output</h3>
          <p>The starter code models a component and a reducer without JSX. When you run it, it prints:</p>
          <div class="lc-code">&nbsp;&nbsp;(clicked Add: Pen)<br>[Pen | ₹20 | Add to cart]<br>[Bag | ₹999 | Out of stock]<br>Cart: 2 x Pen | total ₹40</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>props: any</code>. You lose every benefit of TypeScript.</li>
            <li><code>useState([])</code> without a type. TypeScript infers <code>never[]</code>, so you cannot add anything.</li>
            <li>Typing <code>children</code> as <code>JSX.Element</code>. Use <code>ReactNode</code> so text, numbers and lists are allowed too.</li>
            <li>Forgetting that <code>ref.current</code> is <code>null</code> until the element renders.</li>
            <li>Starting a new project with Create React App.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>This editor cannot run JSX. So the starter code models components as typed functions that return strings. It also has a typed reducer. These are the same types you would use in a real <code>.tsx</code> file.</p>
          <ol class="lc-list">
            <li>Add a <code>"setQty"</code> action with <code>name</code> and <code>qty</code> fields to the reducer.</li>
            <li>Give <code>ProductCard</code> an optional <code>badge?: "new" | "sale"</code> prop.</li>
            <li>Create the Vite project above on your computer. Turn <code>ProductCard</code> into real JSX.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In VS Code, hover over a JSX element's props. You see exactly which props it accepts. For DOM elements, <code>ComponentProps&lt;"input"&gt;</code> shows every attribute React knows about.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 20: TypeScript with React (modelled without JSX - this editor can't run JSX)
        type ProductCardProps = {
          name: string;
          price: number;
          inStock?: boolean;
          onAdd: (name: string) => void;
        };

        // A "component": typed props in, rendered output out (a string here instead of JSX)
        function ProductCard({ name, price, inStock = true, onAdd }: ProductCardProps): string {
          if (inStock) onAdd(name);
          return `[${name} | ₹${price} | ${inStock ? "Add to cart" : "Out of stock"}]`;
        }

        type CartItem = { name: string; price: number; qty: number };
        type CartAction =
          | { type: "add"; name: string; price: number }
          | { type: "remove"; name: string }
          | { type: "clear" };

        // A reducer, exactly as you would pass it to useReducer
        function cartReducer(state: CartItem[], action: CartAction): CartItem[] {
          switch (action.type) {
            case "add": {
              const found = state.find((i) => i.name === action.name);
              if (found) return state.map((i) => (i === found ? { ...i, qty: i.qty + 1 } : i));
              return [...state, { name: action.name, price: action.price, qty: 1 }];
            }
            case "remove": return state.filter((i) => i.name !== action.name);
            case "clear": return [];
          }
        }

        let cart: CartItem[] = [];
        const dispatch = (a: CartAction) => { cart = cartReducer(cart, a); };
        const products = [{ name: "Pen", price: 20 }, { name: "Notebook", price: 60 }, { name: "Bag", price: 999 }];
        const addToCart = (name: string) => console.log(`  (clicked Add: ${name})`);

        console.log(ProductCard({ ...products[0], onAdd: addToCart }));
        console.log(ProductCard({ ...products[2], inStock: false, onAdd: addToCart }));
        // ProductCard({ name: "Pen", onAdd: addToCart }); // tsc: Property 'price' is missing ...

        dispatch({ type: "add", name: "Pen", price: 20 });
        dispatch({ type: "add", name: "Pen", price: 20 });
        dispatch({ type: "add", name: "Notebook", price: 60 });
        dispatch({ type: "remove", name: "Notebook" });
        // dispatch({ type: "add", name: "Bag" }); // tsc: Property 'price' is missing ...
        const total = cart.reduce((sum, i) => sum + i.price * i.qty, 0);
        console.log("Cart:", cart.map((i) => `${i.qty} x ${i.name}`).join(", "), "| total ₹" + total);
      TS
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Capstone Project: Typed Expense Tracker</h1>
        </div>
        <p class="lc-lead">Let's build a small but complete <strong>Expense Tracker</strong>. It uses the whole course: literal unions from <code>as const</code>, discriminated-union actions with an exhaustive reducer (one that handles every case), generics, utility types, a class with private state, <code>satisfies</code> for configuration, runtime checks of imported JSON, and async saving.</p>
        <div class="lc-card">
          <h3>Features</h3>
          <ul class="lc-list">
            <li>Add, update and remove expenses (title, amount in ₹, category, date).</li>
            <li>Import expenses from JSON, and safely reject rows that are not valid.</li>
            <li>Show totals for each category. Show a warning when a monthly budget is exceeded.</li>
            <li>"Save" asynchronously (to a pretend server), with typed success or failure.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Which Lesson Is Used for Which Part?</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>TypeScript feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Categories</td><td><code>as const</code> array → literal union</td><td>7</td></tr>
              <tr><td><code>Expense</code> shape</td><td>object types, <code>readonly</code></td><td>4</td></tr>
              <tr><td>New / edited expenses</td><td><code>Omit</code>, <code>Partial</code></td><td>14</td></tr>
              <tr><td>Actions and reducer</td><td>discriminated union + <code>never</code> check</td><td>9</td></tr>
              <tr><td><code>sumBy</code> helper</td><td>generics with <code>K extends PropertyKey</code></td><td>10–11</td></tr>
              <tr><td>Budget config</td><td><code>satisfies Record&lt;Category, number&gt;</code></td><td>16</td></tr>
              <tr><td>Store</td><td>class with <code>#private</code> state</td><td>12</td></tr>
              <tr><td>JSON import</td><td><code>unknown</code> + type guard</td><td>8, 17</td></tr>
              <tr><td>Saving</td><td><code>async</code>, <code>Promise&lt;Result&lt;T&gt;&gt;</code></td><td>17</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 1: The Data Types</h3>
          <div class="lc-code">const CATEGORIES = ["food", "travel", "bills", "fun"] as const;<br>type Category = (typeof CATEGORIES)[number];<br><br>type Expense = {<br>&nbsp;&nbsp;readonly id: number;<br>&nbsp;&nbsp;title: string;<br>&nbsp;&nbsp;amount: number;        // in rupees<br>&nbsp;&nbsp;category: Category;<br>&nbsp;&nbsp;date: string;          // "YYYY-MM-DD", e.g. "2026-09-25"<br>};<br><br>type NewExpense = Omit&lt;Expense, "id"&gt;;<br>type ExpensePatch = Partial&lt;NewExpense&gt;;</div>
          <p>To add a category, you change <strong>one</strong> line. Then every <code>Record&lt;Category, …&gt;</code> in the app asks for a value for it.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: Actions and an Exhaustive Reducer</h3>
          <div class="lc-code">type Action =<br>&nbsp;&nbsp;| { type: "add"; expense: NewExpense }<br>&nbsp;&nbsp;| { type: "update"; id: number; patch: ExpensePatch }<br>&nbsp;&nbsp;| { type: "remove"; id: number };<br><br>function reduce(list: readonly Expense[], action: Action, nextId: number): Expense[] {<br>&nbsp;&nbsp;switch (action.type) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "add": return [...list, { id: nextId, ...action.expense }];<br>&nbsp;&nbsp;&nbsp;&nbsp;case "update": return list.map((e) =&gt; (e.id === action.id ? { ...e, ...action.patch } : e));<br>&nbsp;&nbsp;&nbsp;&nbsp;case "remove": return list.filter((e) =&gt; e.id !== action.id);<br>&nbsp;&nbsp;&nbsp;&nbsp;default: {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const unhandled: never = action;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Error("Unknown action " + JSON.stringify(unhandled));<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Step 3: A Generic Helper and a Checked Config</h3>
          <div class="lc-code">function sumBy&lt;T, K extends PropertyKey&gt;(items: readonly T[], key: (item: T) =&gt; K, value: (item: T) =&gt; number) {<br>&nbsp;&nbsp;const out = {} as Partial&lt;Record&lt;K, number&gt;&gt;;<br>&nbsp;&nbsp;for (const item of items) {<br>&nbsp;&nbsp;&nbsp;&nbsp;const k = key(item);<br>&nbsp;&nbsp;&nbsp;&nbsp;out[k] = (out[k] ?? 0) + value(item);<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return out;<br>}<br><br>const BUDGET = { food: 6000, travel: 3000, bills: 5000, fun: 2000 } satisfies Record&lt;Category, number&gt;;</div>
          <p><code>PropertyKey</code> is the built-in type <code>string | number | symbol</code>. It means anything you can use as an object key. <code>satisfies</code> checks that every category has a budget. It also keeps the exact numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: Validating Imported JSON</h3>
          <div class="lc-code">function isNewExpense(v: unknown): v is NewExpense {<br>&nbsp;&nbsp;if (typeof v !== "object" || v === null) return false;<br>&nbsp;&nbsp;const r = v as Record&lt;string, unknown&gt;;<br>&nbsp;&nbsp;return typeof r.title === "string" &amp;&amp; typeof r.amount === "number" &amp;&amp; r.amount &gt; 0 &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;typeof r.date === "string" &amp;&amp; (CATEGORIES as readonly unknown[]).includes(r.category);<br>}</div>
          <p>This one <code>as Record&lt;string, unknown&gt;</code> is safe. We already proved that <code>v</code> is an object and not null. Every property is still <code>unknown</code> until we check it.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: The Store and the Main Flow</h3>
          <p>The store keeps the list in a <code>#private</code> field. So the only way to change it is <code>dispatch(action)</code>. You read the list through a <code>readonly Expense[]</code> getter:</p>
          <div class="lc-code">const store = new ExpenseStore();<br>const rows: unknown = JSON.parse(importedText);          // outside data → unknown<br>const valid = (Array.isArray(rows) ? rows : []).filter(isNewExpense);   // NewExpense[]<br>for (const expense of valid) store.dispatch({ type: "add", expense });<br><br>const totals = sumBy(store.all, (e) =&gt; e.category, (e) =&gt; e.amount);   // Partial&lt;Record&lt;Category, number&gt;&gt;<br>const saved = await store.save();                         // Result&lt;number&gt;<br>if (!saved.ok) console.log("Save failed:", saved.error);</div>
          <p><code>isNewExpense</code> is a type predicate (a function that tells TypeScript a value's type). So <code>filter</code> returns <code>NewExpense[]</code>. The main flow needs no assertion anywhere.</p>
        </div>
        <div class="lc-card">
          <h3>Expected Output of the Starter</h3>
          <div class="lc-code">Imported 3 of 4 rows (rejected: {"title":"Movie","amount":-200,"ca...)<br>food   ₹6450 / ₹6000  OVER BUDGET<br>travel ₹1200 / ₹3000<br>bills  ₹2300 / ₹5000<br>fun    ₹0 / ₹2000<br>Saved 4 expenses (total ₹9950)</div>
          <p>The "Movie" row has a negative amount, so it fails <code>isNewExpense</code>. So only three rows are imported. Then the code adds a fourth expense (Restaurant, ₹2,250). This pushes food over its budget.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Typing imported data with <code>as Expense[]</code> instead of validating it.</li>
            <li>Copying the category list into several places, instead of building the type from <code>CATEGORIES</code>.</li>
            <li>Changing the expense array inside the reducer. Always return a new array.</li>
            <li>Leaving out the <code>never</code> check. Then a new action type is silently ignored.</li>
            <li>Storing money as decimal rupees in real finance apps. There, use whole paise (integers).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ol class="lc-list">
            <li>Add a <code>"health"</code> category. Which line does TypeScript ask you to update?</li>
            <li>Add a <code>{ type: "clear" }</code> action and handle it in the reducer.</li>
            <li>Add <code>monthly(month: string)</code> to the store. It returns only that month's expenses.</li>
            <li>In a real Vite project, replace the hand-written guard with a Zod schema. Get the <code>NewExpense</code> type from it.</li>
            <li>Build a UI that dispatches the same <code>Action</code> type. Use a plain form with typed events (Lesson 19) or React components (Lesson 20).</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Define the core types once (<code>as const</code> categories, <code>Expense</code>). Build the rest with utility types.</li>
            <li>Make every change a discriminated-union action. Handle it in a reducer that covers every case.</li>
            <li>Validate all outside data where it enters the app. From there, let the types flow through the code.</li>
            <li>Return typed <code>Result</code> values from async operations. Do not just hope that nothing fails.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> See how little of the code is type annotations. Most types are defined once at the top. TypeScript then infers them everywhere. This is what good TypeScript looks like: a few exact types, and lots of normal JavaScript that is checked.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 21 capstone: a typed expense tracker in one file
        const CATEGORIES = ["food", "travel", "bills", "fun"] as const;
        type Category = (typeof CATEGORIES)[number];
        type Expense = { readonly id: number; title: string; amount: number; category: Category; date: string };
        type NewExpense = Omit<Expense, "id">;
        type Action = { type: "add"; expense: NewExpense } | { type: "update"; id: number; patch: Partial<NewExpense> } | { type: "remove"; id: number };
        type Result<T> = { ok: true; value: T } | { ok: false; error: string };
        const BUDGET = { food: 6000, travel: 3000, bills: 5000, fun: 2000 } satisfies Record<Category, number>;
        function sumBy<T, K extends PropertyKey>(items: readonly T[], key: (item: T) => K, value: (item: T) => number) {
          const out = {} as Partial<Record<K, number>>;
          for (const item of items) out[key(item)] = (out[key(item)] ?? 0) + value(item);
          return out;
        }
        function isNewExpense(v: unknown): v is NewExpense {
          if (typeof v !== "object" || v === null) return false;
          const r = v as Record<string, unknown>;
          return typeof r.title === "string" && typeof r.amount === "number" && r.amount > 0 &&
            typeof r.date === "string" && (CATEGORIES as readonly unknown[]).includes(r.category);
        }
        class ExpenseStore {
          #items: Expense[] = [];
          #nextId = 1; // private state: only dispatch() can change the list
          dispatch(action: Action): void {
            switch (action.type) {
              case "add": this.#items = [...this.#items, { id: this.#nextId++, ...action.expense }]; break;
              case "update": this.#items = this.#items.map((e) => (e.id === action.id ? { ...e, ...action.patch } : e)); break;
              case "remove": this.#items = this.#items.filter((e) => e.id !== action.id); break;
              default: { const unhandled: never = action; throw new Error(`Unknown action ${JSON.stringify(unhandled)}`); }
            }
          }
          get all(): readonly Expense[] { return this.#items; }
          async save(): Promise<Result<number>> {
            await new Promise((r) => setTimeout(r, 50)); // pretend network call
            return this.#items.length > 0 ? { ok: true, value: this.#items.length } : { ok: false, error: "nothing to save" };
          }
        }
        async function main(): Promise<void> {
          const store = new ExpenseStore();
          const rows: unknown = JSON.parse('[{"title":"Groceries","amount":4200,"category":"food","date":"2026-09-02"},{"title":"Metro card","amount":1200,"category":"travel","date":"2026-09-05"},{"title":"Movie","amount":-200,"category":"fun","date":"2026-09-06"},{"title":"Electricity","amount":2300,"category":"bills","date":"2026-09-10"}]');
          const list = Array.isArray(rows) ? rows : [];
          const valid = list.filter(isNewExpense);
          for (const expense of valid) store.dispatch({ type: "add", expense });
          console.log(`Imported ${valid.length} of ${list.length} rows (rejected: ${list.filter((r) => !isNewExpense(r)).map((r) => JSON.stringify(r).slice(0, 34) + "...").join(", ")})`);
          store.dispatch({ type: "add", expense: { title: "Restaurant", amount: 2250, category: "food", date: "2026-09-20" } });
          const totals = sumBy(store.all, (e) => e.category, (e) => e.amount);
          for (const c of CATEGORIES) { const spent = totals[c] ?? 0; console.log(`${c.padEnd(6)} ₹${spent} / ₹${BUDGET[c]}${spent > BUDGET[c] ? "  OVER BUDGET" : ""}`); }
          const saved = await store.save();
          console.log(saved.ok ? `Saved ${saved.value} expenses (total ₹${store.all.reduce((s, e) => s + e.amount, 0)})` : `Save failed: ${saved.error}`);
        }
        main();
      TS
    },
  }.freeze
end

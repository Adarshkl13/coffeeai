module TypescriptContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Introduction to TypeScript</h1>
        </div>
        <p class="lc-lead">TypeScript is <strong>JavaScript with a type system</strong>. You describe what kind of data each variable, parameter and object holds, and the TypeScript compiler checks your code <em>before it runs</em> — catching typos and wrong values while you type.</p>
        <div class="lc-card">
          <h3>A Bug TypeScript Catches</h3>
          <div class="lc-code">function totalPrice(price: number, qty: number): number {<br>&nbsp;&nbsp;return price * qty;<br>}<br><br>totalPrice("250", 2);<br>// Error: Argument of type 'string' is not assignable to parameter of type 'number'.<br><br>const user = { name: "Asha", city: "Pune" };<br>console.log(user.nmae);<br>// Error: Property 'nmae' does not exist on type '{ name: string; city: string; }'.</div>
          <p>In plain JavaScript both lines run: the first quietly gives <code>500</code> through coercion (and <code>"250" + 2</code> would give the string <code>"2502"</code>), the second prints <code>undefined</code>. The bug shows up later, far from its cause. TypeScript reports it immediately, with the line number.</p>
        </div>
        <div class="lc-card">
          <h3>How TypeScript Works</h3>
          <ol class="lc-list">
            <li>You write <code>.ts</code> files — JavaScript plus <strong>type annotations</strong> such as <code>: number</code>.</li>
            <li>The compiler <code>tsc</code> <strong>type-checks</strong> the code and reports errors.</li>
            <li>It then outputs plain <code>.js</code> with the types <strong>removed</strong> ("erased").</li>
            <li>Browsers and Node.js run that JavaScript.</li>
          </ol>
          <p>Because types are erased, <strong>they do not exist at runtime</strong>. TypeScript never checks data while the program runs — if a server sends a string where you declared a number, TypeScript cannot stop it. (Lesson 17 shows how to validate outside data.)</p>
        </div>
        <div class="lc-card">
          <h3>Is Every JavaScript File Valid TypeScript?</h3>
          <p>TypeScript's <em>syntax</em> is a superset of JavaScript's, so you can rename <code>app.js</code> to <code>app.ts</code> and it will still compile to working JavaScript. But the <strong>type checker may report errors</strong> in code that JavaScript happily runs:</p>
          <div class="lc-code">let count = 5;<br>count = "five";<br>// Valid JavaScript — but TypeScript says:<br>// Error: Type 'string' is not assignable to type 'number'.</div>
          <p>That is why teams adopt TypeScript <strong>gradually</strong>: they enable <code>allowJs</code>/<code>checkJs</code>, convert one file at a time, and fix the errors the checker finds — which are often real bugs.</p>
        </div>
        <div class="lc-card">
          <h3>JavaScript vs TypeScript</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>JavaScript</th><th>TypeScript</th></tr></thead>
            <tbody>
              <tr><td>Types</td><td>dynamic — checked only when a line runs</td><td>static — checked before running (and still dynamic at runtime)</td></tr>
              <tr><td>Where errors show up</td><td>in the browser, often in production</td><td>in the editor and at build time</td></tr>
              <tr><td>Editor help</td><td>basic autocomplete</td><td>precise autocomplete, safe rename, go-to-definition</td></tr>
              <tr><td>Runs in the browser</td><td>directly</td><td>after the types are removed</td></tr>
              <tr><td>Extra step</td><td>none</td><td><code>tsc</code> (or a bundler such as Vite) removes types</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Setting Up a Project</h3>
          <div class="lc-code">npm install -D typescript      # install the compiler in the project<br>npx tsc --init                 # create tsconfig.json with recommended settings<br>npx tsc                        # type-check and write .js files<br>npx tsc --noEmit               # only type-check (common with Vite and other bundlers)</div>
          <ul class="lc-list">
            <li>The current version is <strong>TypeScript 7.0</strong> (July 2026). Its compiler was rewritten in Go and is often about <strong>10× faster</strong> than TypeScript 6.0; the command is still <code>tsc</code>.</li>
            <li>Since TypeScript 6.0, <code>strict</code> mode is <strong>on by default</strong> — the checks this course uses (Lesson 18 covers <code>tsconfig.json</code>).</li>
            <li>Node.js (22.18+ and 23.6+) can run <code>.ts</code> files directly — <code>node app.ts</code> — by stripping the types. It does <strong>not</strong> type-check; you still run <code>tsc --noEmit</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How This Course's Editor Runs TypeScript</h3>
          <p>The Run button strips the types (using Babel) and runs the resulting JavaScript. Like Node.js, it does <strong>not</strong> type-check, so a type error will not stop your code from running here. Every starter in this course passes <code>tsc --strict</code>; when a lesson shows an error message, it is the real message <code>tsc</code> (and VS Code's red underline) would give you.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Before and After</h3>
          <p>The same function in JavaScript and TypeScript:</p>
          <div class="lc-code">// discount.js<br>function applyDiscount(price, percent) {<br>&nbsp;&nbsp;return price - price * percent / 100;<br>}<br>applyDiscount("1000", 10);   // 900 — works by luck (string coerced)<br>applyDiscount(1000);         // NaN — percent is undefined</div>
          <div class="lc-code">// discount.ts<br>function applyDiscount(price: number, percent: number): number {<br>&nbsp;&nbsp;return price - price * percent / 100;<br>}<br>applyDiscount(1000, 10);     // 900<br>applyDiscount(1000);<br>// Error: Expected 2 arguments, but got 1.</div>
          <p>The compiled JavaScript of <code>discount.ts</code> is exactly the first version without the <code>: number</code> parts — TypeScript adds safety, not runtime code.</p>
        </div>
        <div class="lc-card">
          <h3>Who Uses TypeScript?</h3>
          <ul class="lc-list">
            <li>Most large front-end projects built with React, Angular, Vue or Svelte.</li>
            <li>Back-end services on Node.js, Deno and Bun (the last two run TypeScript directly).</li>
            <li>VS Code itself is written in TypeScript.</li>
            <li>Nearly every popular npm package ships type definitions, so your editor knows their APIs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Key Terms</h3>
          <ul class="lc-list">
            <li><strong>Type annotation</strong> — the <code>: type</code> you write after a name.</li>
            <li><strong>Type inference</strong> — TypeScript working out a type from the value.</li>
            <li><strong>Compile time</strong> — when <code>tsc</code> checks your code; <strong>runtime</strong> — when the JavaScript actually runs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Believing types protect you at runtime — they are erased; outside data must still be checked.</li>
            <li>Silencing every error with <code>any</code> — you lose all the benefits (Lesson 2).</li>
            <li>Annotating everything: TypeScript <strong>infers</strong> most types, so <code>let x: number = 5</code> is usually just <code>let x = 5</code>.</li>
            <li>Ignoring the red underline and running the code anyway — the error is usually a real bug.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter and read the output.</li>
            <li>Uncomment the line with <code>calculateGst("500")</code>. It still runs here — but what does the comment say <code>tsc</code> would report?</li>
            <li>Add a <code>discount: number</code> parameter to <code>calculateGst</code> and update the calls.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Install VS Code — it has TypeScript support built in. Hover over any variable to see its type, and let the red underlines teach you. Most TypeScript learning happens in those small hover boxes.
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
        type Student = { name: string; city: string; marks: number };
        const student: Student = { name: "Asha", city: "Pune", marks: 88 };
        console.log(`${student.name} from ${student.city} scored ${student.marks}`);
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
        <p class="lc-lead">Every value in TypeScript has a type. The basic ones match JavaScript's primitives. The good news: you rarely have to write them, because TypeScript <strong>infers</strong> types from your code. This lesson shows when to annotate, when not to, and why <code>unknown</code> beats <code>any</code>.</p>
        <div class="lc-card">
          <h3>The Primitive Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example values</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td><code>string</code></td><td><code>"Delhi"</code>, <code>`Hi ${name}`</code></td><td>all text</td></tr>
              <tr><td><code>number</code></td><td><code>42</code>, <code>3.5</code>, <code>NaN</code></td><td>integers and decimals together</td></tr>
              <tr><td><code>boolean</code></td><td><code>true</code>, <code>false</code></td><td></td></tr>
              <tr><td><code>bigint</code></td><td><code>9007199254740993n</code></td><td>very large integers (needs target ES2020+)</td></tr>
              <tr><td><code>symbol</code></td><td><code>Symbol("id")</code></td><td>unique keys (rare)</td></tr>
              <tr><td><code>null</code></td><td><code>null</code></td><td>"intentionally empty"</td></tr>
              <tr><td><code>undefined</code></td><td><code>undefined</code></td><td>"not set yet"</td></tr>
            </tbody>
          </table>
          <p>Always use the <strong>lowercase</strong> names. <code>String</code>, <code>Number</code> and <code>Boolean</code> (capitalised) are JavaScript wrapper objects — using them as types is a mistake.</p>
        </div>
        <div class="lc-card">
          <h3>Annotations vs Inference</h3>
          <div class="lc-code">let city: string = "Chennai";   // explicit annotation<br>let pincode = 600001;           // inferred: number<br><br>pincode = "600001";<br>// Error: Type 'string' is not assignable to type 'number'.</div>
          <p>When a variable is initialised, TypeScript already knows its type — writing it again adds noise. Good places for annotations:</p>
          <ul class="lc-list">
            <li><strong>Function parameters</strong> — TypeScript cannot guess what callers will pass.</li>
            <li><strong>Variables declared without a value</strong>: <code>let total: number;</code></li>
            <li><strong>Public function return types</strong>, to document and lock the contract (Lesson 6).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>let vs const: Literal Types</h3>
          <p>A <code>const</code> can never change, so TypeScript gives it the narrowest possible type — the exact value, called a <strong>literal type</strong>:</p>
          <div class="lc-code">let mode = "dark";      // type: string<br>const theme = "dark";   // type: "dark"<br>const answer = 42;      // type: 42</div>
          <p>Literal types become very powerful when combined into unions such as <code>"light" | "dark"</code> (Lesson 7).</p>
        </div>
        <div class="lc-card">
          <h3>any: Turning the Checker Off</h3>
          <p><code>any</code> means "allow anything". TypeScript stops checking, so mistakes slip through:</p>
          <div class="lc-code">let data: any = "hello";<br>data.toFixed(2);    // no error from tsc … but crashes at runtime:<br>// TypeError: data.toFixed is not a function</div>
          <p>Avoid <code>any</code>. With <code>strict</code> on, TypeScript also reports <em>implicit</em> <code>any</code>: <code>function f(x) {}</code> gives "Parameter 'x' implicitly has an 'any' type."</p>
        </div>
        <div class="lc-card">
          <h3>unknown: The Safe Alternative</h3>
          <p><code>unknown</code> also accepts any value, but you must <strong>check</strong> what it is before using it:</p>
          <div class="lc-code">function describe(value: unknown): string {<br>&nbsp;&nbsp;// value.toUpperCase();<br>&nbsp;&nbsp;// Error: 'value' is of type 'unknown'.<br>&nbsp;&nbsp;if (typeof value === "string") return "text: " + value.toUpperCase();<br>&nbsp;&nbsp;if (typeof value === "number") return "number: " + value.toFixed(1);<br>&nbsp;&nbsp;return "something else";<br>}<br><br>console.log(describe("hi"));   // text: HI<br>console.log(describe(3.14159)); // number: 3.1<br>console.log(describe(true));   // something else</div>
          <table class="lc-table">
            <thead><tr><th></th><th><code>any</code></th><th><code>unknown</code></th></tr></thead>
            <tbody>
              <tr><td>Accepts any value?</td><td>yes</td><td>yes</td></tr>
              <tr><td>Can use it without checking?</td><td>yes — unsafe</td><td>no — must narrow first</td></tr>
              <tr><td>Use for</td><td>almost never (quick migrations)</td><td>data from JSON, APIs, users, <code>catch</code> blocks</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>void and never</h3>
          <ul class="lc-list">
            <li><code>void</code> — a function that returns nothing useful: <code>function log(msg: string): void { console.log(msg); }</code></li>
            <li><code>never</code> — a value that can never exist, e.g. the return type of a function that always throws. It becomes useful for exhaustive checks (Lesson 9).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>null and undefined Under strict</h3>
          <p>With <code>strictNullChecks</code> (part of <code>strict</code>, on by default since TypeScript 6.0), <code>null</code> and <code>undefined</code> are <strong>not</strong> allowed in a <code>string</code> or <code>number</code>. You must say so explicitly:</p>
          <div class="lc-code">let nickname: string = null;<br>// Error: Type 'null' is not assignable to type 'string'.<br><br>let middleName: string | null = null;   // OK — "string or null"</div>
          <p>This single rule prevents the most common JavaScript crash: <em>Cannot read properties of null</em>.</p>
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
            <li>Using <code>any</code> to make an error go away — use <code>unknown</code> and check the value.</li>
            <li>Annotating every variable, even when the type is obvious from its value.</li>
            <li>Declaring <code>let total;</code> with no type and no value — it becomes an implicit <code>any</code> until assigned. Write <code>let total: number;</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Hover (in VS Code) or reason about the type of each variable in the starter, then check the comments.</li>
            <li>Add a case for <code>boolean</code> to <code>describe</code>.</li>
            <li>Change <code>let status2</code> to a <code>const</code> — what does its type become?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Let inference do the work inside functions, and annotate the <em>edges</em>: parameters, return types of exported functions, and data coming from outside. That gives full safety with very little typing.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 2: primitive types and type inference
        const city: string = "Chennai";      // explicit annotation
        let pincode = 600001;                // inferred: number
        const isMetro = true;                // inferred: true (a literal type)
        const big: bigint = 9007199254740993n;
        let middleName: string | null = null; // null must be allowed explicitly

        console.log("city:", city, "| pincode:", pincode, "| metro:", isMetro);
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
        logLine("types are erased at runtime: typeof city = " + typeof city);
      TS
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Arrays and Tuples</h1>
        </div>
        <p class="lc-lead">An <strong>array type</strong> says "a list of any length where every item has this type". A <strong>tuple</strong> says "a fixed-length list where each position has its own type". Choosing the right one makes your data self-documenting.</p>
        <div class="lc-card">
          <h3>Array Types</h3>
          <div class="lc-code">const marks: number[] = [72, 85, 90];<br>const names: Array&lt;string&gt; = ["Asha", "Ravi"];   // same as string[]<br><br>marks.push(95);        // OK<br>marks.push("100");<br>// Error: Argument of type 'string' is not assignable to parameter of type 'number'.</div>
          <p><code>number[]</code> and <code>Array&lt;number&gt;</code> mean exactly the same thing; most code uses the shorter <code>number[]</code>. Array methods keep the types: <code>marks.map(m =&gt; m / 10)</code> is <code>number[]</code>, and <code>names.map(n =&gt; n.length)</code> is <code>number[]</code> too.</p>
        </div>
        <div class="lc-card">
          <h3>Inference and Mixed Arrays</h3>
          <div class="lc-code">const scores = [10, 20, 30];          // number[]<br>const mixed = [1, "two", 3];           // (string | number)[]<br>const tasks: string[] = [];            // annotate empty arrays</div>
          <p>A mixed array's items have a <strong>union</strong> type (Lesson 7): each item might be a string <em>or</em> a number, so you must check before using string-only methods. For an empty array, write the type yourself — TypeScript cannot guess what will go in it.</p>
        </div>
        <div class="lc-card">
          <h3>Readonly Arrays</h3>
          <p>Mark an array <code>readonly</code> when a function should only read it. TypeScript then blocks every method that would change it:</p>
          <div class="lc-code">function average(values: readonly number[]): number {<br>&nbsp;&nbsp;// values.push(0);<br>&nbsp;&nbsp;// Error: Property 'push' does not exist on type 'readonly number[]'.<br>&nbsp;&nbsp;return values.reduce((a, b) =&gt; a + b, 0) / values.length;<br>}</div>
          <p><code>readonly number[]</code> is the same as <code>ReadonlyArray&lt;number&gt;</code>. Like all types, it is checked at compile time only; <code>Object.freeze</code> is the runtime equivalent.</p>
        </div>
        <div class="lc-card">
          <h3>Tuples</h3>
          <p>A tuple has a <strong>fixed length</strong> and a type per position:</p>
          <div class="lc-code">let entry: [string, number] = ["Asha", 88];<br>entry = [88, "Asha"];<br>// Error: Type 'number' is not assignable to type 'string'.<br><br>const [student, score] = entry;   // student: string, score: number</div>
          <p><strong>Labeled tuples</strong> add names that appear in editor hints, and <code>?</code> marks optional positions at the end:</p>
          <div class="lc-code">type Point = [x: number, y: number];<br>type Contact = [name: string, phone: string, email?: string];<br><br>const a: Contact = ["Ravi", "98765 43210"];                  // OK<br>const b: Contact = ["Meera", "91234 56789", "m@example.in"]; // OK</div>
          <p>A <code>readonly [number, number]</code> tuple cannot be changed after creation — good for coordinates.</p>
        </div>
        <div class="lc-card">
          <h3>Functions That Return Tuples</h3>
          <p>Returning a tuple is a neat way to return two related values. React's <code>useState</code> works exactly like this:</p>
          <div class="lc-code">function minMax(values: number[]): [min: number, max: number] {<br>&nbsp;&nbsp;return [Math.min(...values), Math.max(...values)];<br>}<br><br>const [low, high] = minMax([40, 72, 18, 95]);<br>console.log(low, high);   // 18 95</div>
          <p>Without the return annotation, TypeScript would infer <code>number[]</code> (any length) — annotate tuple returns.</p>
        </div>
        <div class="lc-card">
          <h3>Array or Tuple?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Array <code>T[]</code></th><th>Tuple <code>[A, B]</code></th></tr></thead>
            <tbody>
              <tr><td>Length</td><td>any, can grow</td><td>fixed</td></tr>
              <tr><td>Item types</td><td>all the same type</td><td>one type per position</td></tr>
              <tr><td>Example</td><td>list of marks, list of users</td><td><code>[latitude, longitude]</code>, <code>[value, setValue]</code></td></tr>
              <tr><td>Readability</td><td>clear</td><td>fine for 2–3 items; beyond that use an object with named keys</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Reading Past the End</h3>
          <p>By default, TypeScript assumes <code>marks[10]</code> is a <code>number</code> — but at runtime it is <code>undefined</code>. The option <code>noUncheckedIndexedAccess</code> (turned on by <code>tsc --init</code>) makes <code>marks[i]</code> have type <code>number | undefined</code>, so you must check it:</p>
          <div class="lc-code">const first = marks[0];          // number | undefined with noUncheckedIndexedAccess<br>if (first !== undefined) console.log(first.toFixed(1));</div>
          <p>This course's starters are checked with plain <code>--strict</code>, but writing the check anyway is a good habit.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Typed Array Methods</h3>
          <p>Types flow through array methods automatically:</p>
          <div class="lc-code">const prices = [120, 45, 300];                      // number[]<br>const labels = prices.map((p) =&gt; "₹" + p);           // string[]<br>const big = prices.filter((p) =&gt; p &gt; 100);          // number[]<br>const found = prices.find((p) =&gt; p &gt; 500);          // number | undefined<br>console.log(labels.join(", "), big.length, found);</div>
          <p>Output:</p>
          <div class="lc-code">₹120, ₹45, ₹300 2 undefined</div>
          <p>Note that <code>find</code> returns <code>number | undefined</code>: TypeScript reminds you that nothing may match.</p>
        </div>
        <div class="lc-card">
          <h3>Arrays of Objects</h3>
          <p>The most common array in real apps holds objects. Name the object type (Lesson 4) and add <code>[]</code>:</p>
          <div class="lc-code">type Student = { name: string; marks: number };<br>const cls: Student[] = [<br>&nbsp;&nbsp;{ name: "Asha", marks: 88 },<br>&nbsp;&nbsp;{ name: "Ravi", marks: 67 },<br>];<br>const toppers = cls.filter((s) =&gt; s.marks &gt;= 80).map((s) =&gt; s.name);   // string[]<br>// cls.push({ name: "Meera" });<br>// Error: Property 'marks' is missing in type '{ name: string; }' but required in type 'Student'.</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Declaring <code>const list = []</code> with no type — annotate empty arrays.</li>
            <li>Using a tuple with many positions (<code>[string, number, boolean, string]</code>) — nobody remembers what position 3 means. Use an object.</li>
            <li>Expecting <code>readonly</code> to freeze an array at runtime — it is a compile-time check.</li>
            <li>Forgetting to annotate a tuple return, so TypeScript widens it to an array.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a labeled tuple type <code>Rgb</code> for a colour and print one.</li>
            <li>Give <code>minMax</code> in the starter a third result: the average.</li>
            <li>Uncomment the <code>push</code> into <code>readonlyCities</code> — it still runs here, but read the error <code>tsc</code> would give.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>T[]</code> (or <code>Array&lt;T&gt;</code>) is a list of any length; <code>[A, B]</code> is a fixed-length tuple.</li>
            <li>Annotate empty arrays and tuple return types.</li>
            <li><code>readonly T[]</code> blocks changes at compile time.</li>
            <li>Indexing can give <code>undefined</code> at runtime — check it.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefer <code>readonly</code> array parameters in functions that only read data. It documents your intent and lets callers pass both normal and readonly arrays.
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
        const readonlyCities: readonly string[] = ["Pune", "Kochi"];
        // readonlyCities.push("Agra"); // tsc: Property 'push' does not exist on type 'readonly string[]'.
        console.log("Average:", average(marks).toFixed(1), "| cities:", readonlyCities.join(", "));

        // Tuples: fixed length, one type per position
        type Contact = [name: string, phone: string, email?: string];
        const contacts: Contact[] = [
          ["Ravi", "98765 43210"],
          ["Meera", "91234 56789", "meera@example.in"],
        ];
        for (const [person, phone, email] of contacts) {
          console.log(`${person}: ${phone} | ${email ?? "no email"}`);
        }

        // A function returning a labeled tuple
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
        <p class="lc-lead">Most data in real apps is objects — users, products, orders. An <strong>object type</strong> lists the properties an object must have and the type of each one. A <strong>type alias</strong> gives that shape a name so you can reuse it everywhere.</p>
        <div class="lc-card">
          <h3>Inline Object Types</h3>
          <div class="lc-code">function printUser(user: { name: string; age: number }): void {<br>&nbsp;&nbsp;console.log(user.name + " is " + user.age);<br>}<br><br>printUser({ name: "Asha", age: 21 });   // OK<br>printUser({ name: "Ravi" });<br>// Error: Property 'age' is missing in type '{ name: string; }' but required in type '{ name: string; age: number; }'.</div>
          <p>Properties are separated by <code>;</code> (commas also work).</p>
        </div>
        <div class="lc-card">
          <h3>Type Aliases</h3>
          <p>Writing the shape inline every time is tiring. Give it a name with <code>type</code>:</p>
          <div class="lc-code">type Product = {<br>&nbsp;&nbsp;id: number;<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;price: number;<br>};<br><br>const phone: Product = { id: 1, name: "Phone", price: 15999 };<br>function withGst(p: Product): number {<br>&nbsp;&nbsp;return Math.round(p.price * 1.18);<br>}</div>
          <p>Type names use <strong>PascalCase</strong>. An alias creates no runtime code — it is only a name for a type.</p>
        </div>
        <div class="lc-card">
          <h3>Optional and Readonly Properties</h3>
          <div class="lc-code">type User = {<br>&nbsp;&nbsp;readonly id: number;   // cannot be reassigned<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;email?: string;        // optional: may be missing (string | undefined)<br>};<br><br>const u: User = { id: 7, name: "Meera" };   // OK without email<br>u.name = "Meera K";                          // OK<br>// u.id = 8;<br>// Error: Cannot assign to 'id' because it is a read-only property.<br><br>console.log(u.email?.toLowerCase() ?? "no email");   // must handle undefined</div>
          <p><code>readonly</code> is <strong>shallow</strong> and compile-time only: a <code>readonly tags: string[]</code> property can't be reassigned, but its array could still be pushed to (use <code>readonly string[]</code> for that).</p>
        </div>
        <div class="lc-card">
          <h3>Nested Types</h3>
          <div class="lc-code">type Address = { city: string; pincode: string };<br>type Customer = {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;address: Address;          // reuse another alias<br>&nbsp;&nbsp;orders: { id: number; total: number }[];<br>};</div>
          <p>Build big types out of small, named pieces. Each piece can be reused and tested on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Dictionaries: Index Signatures and Record</h3>
          <p>When the <em>keys</em> are not known in advance (a word count, prices by item), describe the key type and the value type:</p>
          <div class="lc-code">type StockA = { [item: string]: number };   // index signature<br>type StockB = Record&lt;string, number&gt;;       // same thing, shorter<br><br>const stock: StockB = { rice: 40, dal: 25 };<br>stock.sugar = 10;        // OK — any string key<br><br>type Grade = "A" | "B" | "C";<br>const counts: Record&lt;Grade, number&gt; = { A: 4, B: 7, C: 2 };   // must have all three keys</div>
        </div>
        <div class="lc-card">
          <h3>Structural Typing</h3>
          <p>TypeScript compares types by their <strong>shape</strong>, not their name. Any object that has the required properties fits — even if it was never declared as that type:</p>
          <div class="lc-code">type Named = { name: string };<br>const laptop = { name: "Laptop", price: 55000 };<br>function greet(x: Named) { return "Hello " + x.name; }<br>greet(laptop);   // OK — laptop has a string name (extra price is fine)</div>
        </div>
        <div class="lc-card">
          <h3>Excess Property Checks</h3>
          <p>There is one exception: when you write an <strong>object literal</strong> directly, extra properties are reported, because they are probably typos:</p>
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
          <p>Describe the data your app receives once, and every function that uses it gets autocomplete and checking:</p>
          <div class="lc-code">type Order = {<br>&nbsp;&nbsp;id: number;<br>&nbsp;&nbsp;items: { name: string; qty: number; price: number }[];<br>&nbsp;&nbsp;coupon?: string;<br>};<br><br>function orderTotal(o: Order): number {<br>&nbsp;&nbsp;return o.items.reduce((sum, i) =&gt; sum + i.qty * i.price, 0);<br>}<br><br>const order: Order = { id: 9, items: [{ name: "Tea", qty: 2, price: 30 }, { name: "Samosa", qty: 3, price: 20 }] };<br>console.log(orderTotal(order), order.coupon ?? "no coupon");</div>
          <p>Output:</p>
          <div class="lc-code">120 no coupon</div>
        </div>
        <div class="lc-card">
          <h3>Reading Object Type Errors</h3>
          <ul class="lc-list">
            <li><strong>"Property 'x' is missing in type …"</strong> — you forgot a required property.</li>
            <li><strong>"Object literal may only specify known properties"</strong> — an extra (often misspelt) property.</li>
            <li><strong>"Type 'string' is not assignable to type 'number'"</strong> — a property has the wrong type.</li>
            <li><strong>"Cannot assign to 'x' because it is a read-only property"</strong> — you changed a <code>readonly</code> field.</li>
            <li><strong>"'x' is possibly 'undefined'"</strong> — you used an optional property without checking it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Making everything optional "to be safe" — then every use needs <code>undefined</code> checks. Only mark what is truly optional.</li>
            <li>Using <code>Record&lt;string, T&gt;</code> and forgetting a key might not exist — <code>stock["salt"]</code> is <code>undefined</code> at runtime.</li>
            <li>Expecting <code>readonly</code> to protect nested objects or to work at runtime.</li>
            <li>Using <code>object</code> or <code>{}</code> as a type — they accept almost anything. Describe the real shape.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add an optional <code>discount?: number</code> to <code>Product</code> in the starter and use it in <code>finalPrice</code> (default 0).</li>
            <li>Create a <code>Record&lt;"veg" | "nonveg", number&gt;</code> counting menu items.</li>
            <li>Uncomment the excess-property line and read the error message in the comment.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Object types list properties and their types; <code>type</code> gives the shape a name.</li>
            <li><code>?</code> marks optional properties and <code>readonly</code> blocks reassignment (shallow, compile-time).</li>
            <li><code>Record&lt;K, V&gt;</code> describes dictionaries.</li>
            <li>Types are compared by shape; fresh object literals get extra-property checks.</li>
            <li>Build large types from small named ones.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name types after the thing they describe (<code>Order</code>, <code>Address</code>). Well-named types become a living description of your app's data that the compiler keeps up to date.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 4: object types and type aliases
        type Address = { city: string; pincode: string };

        type Customer = {
          readonly id: number;
          name: string;
          email?: string; // optional
          address: Address;
        };

        type Product = { id: number; name: string; price: number };

        const customer: Customer = { id: 1, name: "Meera", address: { city: "Kochi", pincode: "682001" } };
        customer.name = "Meera K";
        // customer.id = 2; // tsc: Cannot assign to 'id' because it is a read-only property.
        console.log(`${customer.name} (#${customer.id}) lives in ${customer.address.city}`);
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
        <p class="lc-lead">An <strong>interface</strong> is another way to name an object shape. Interfaces can <strong>extend</strong> each other, classes can <strong>implement</strong> them, and they are what most TypeScript libraries use to describe their objects.</p>
        <div class="lc-card">
          <h3>Declaring an Interface</h3>
          <div class="lc-code">interface Book {<br>&nbsp;&nbsp;readonly id: string;<br>&nbsp;&nbsp;title: string;<br>&nbsp;&nbsp;author: string;<br>&nbsp;&nbsp;pages?: number;                   // optional<br>&nbsp;&nbsp;summary(): string;                // a method<br>}<br><br>const book: Book = {<br>&nbsp;&nbsp;id: "BK-1001",<br>&nbsp;&nbsp;title: "Wings of Fire",<br>&nbsp;&nbsp;author: "A. P. J. Abdul Kalam",<br>&nbsp;&nbsp;summary() {<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.title + " by " + this.author;<br>&nbsp;&nbsp;},<br>};<br>console.log(book.summary());   // Wings of Fire by A. P. J. Abdul Kalam</div>
          <p>Like type aliases, interfaces disappear when the code is compiled; they only guide the type checker.</p>
        </div>
        <div class="lc-card">
          <h3>Extending Interfaces</h3>
          <div class="lc-code">interface Person {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;email: string;<br>}<br><br>interface Employee extends Person {<br>&nbsp;&nbsp;employeeId: number;<br>&nbsp;&nbsp;department: string;<br>}<br><br>interface Manager extends Employee {<br>&nbsp;&nbsp;reports: Employee[];<br>}<br><br>interface Timestamps { createdAt: string; updatedAt: string }<br>interface AuditedEmployee extends Employee, Timestamps {}   // extend several at once</div>
          <p>An <code>Employee</code> has everything a <code>Person</code> has plus its own fields. If an extending interface redeclares a property with an incompatible type, TypeScript reports an error.</p>
        </div>
        <div class="lc-card">
          <h3>Intersection Types: the type-alias Way</h3>
          <p>With type aliases, you combine shapes with <code>&amp;</code> (an <strong>intersection</strong>: "has all of these"):</p>
          <div class="lc-code">type Person = { name: string; email: string };<br>type Employee = Person &amp; { employeeId: number; department: string };<br><br>const e: Employee = { name: "Ravi", email: "ravi@example.in", employeeId: 42, department: "IT" };</div>
          <p><code>extends</code> and <code>&amp;</code> usually give the same result. One difference: conflicting property types are reported immediately with <code>extends</code>, but silently produce <code>never</code> with <code>&amp;</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Declaration Merging</h3>
          <p>If you declare the same interface name twice, TypeScript <strong>merges</strong> them into one. Type aliases cannot do this (a duplicate name is an error):</p>
          <div class="lc-code">interface Settings { theme: string }<br>interface Settings { fontSize: number }<br><br>const s: Settings = { theme: "dark", fontSize: 16 };   // needs both</div>
          <p>Libraries use merging to let you add fields to their types — for example, adding a property to the global <code>Window</code> interface. In your own code, avoid declaring the same interface twice by accident.</p>
        </div>
        <div class="lc-card">
          <h3>Classes Implementing an Interface</h3>
          <p>An interface can act as a contract for a class. <code>implements</code> makes TypeScript check that the class has every required member (more on classes in Lesson 12):</p>
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
          <p>A sensible rule: use <code>interface</code> for object shapes that others may extend (public APIs, class contracts), and <code>type</code> for unions, tuples and computed types. For plain objects either works — the important thing is to be <strong>consistent</strong> in a codebase.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Interfaces for Functions and Dictionaries</h3>
          <p>Interfaces can also describe callable shapes and index signatures:</p>
          <div class="lc-code">interface Formatter {<br>&nbsp;&nbsp;(value: number): string;           // call signature<br>}<br>const rupees: Formatter = (v) =&gt; "₹" + v.toLocaleString("en-IN");<br><br>interface PriceList {<br>&nbsp;&nbsp;[item: string]: number;            // index signature<br>}<br>const menu: PriceList = { chai: 20, coffee: 35 };<br>console.log(rupees(125000), menu.coffee);</div>
          <p>Output:</p>
          <div class="lc-code">₹1,25,000 35</div>
          <p>In practice, <code>type Formatter = (value: number) =&gt; string</code> and <code>Record&lt;string, number&gt;</code> are more common for these — but you will see both styles in libraries.</p>
        </div>
        <div class="lc-card">
          <h3>Optional Methods and Readonly Members</h3>
          <div class="lc-code">interface Notifier {<br>&nbsp;&nbsp;readonly channel: "sms" | "email";<br>&nbsp;&nbsp;send(to: string, text: string): boolean;<br>&nbsp;&nbsp;schedule?(to: string, text: string, at: Date): void;   // optional method<br>}<br><br>function notify(n: Notifier) {<br>&nbsp;&nbsp;n.send("98765 43210", "OTP 4821");<br>&nbsp;&nbsp;n.schedule?.("98765 43210", "Reminder", new Date());      // call only if present<br>}</div>
          <p>Combining interfaces with literal unions (Lesson 7) and optional members lets you describe real-world objects very precisely.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Trying to write a union with <code>interface</code> — <code>interface Status = "on" | "off"</code> is a syntax error; use <code>type</code>.</li>
            <li>Accidentally merging two interfaces with the same name in different files, creating a surprise shape.</li>
            <li>Thinking <code>implements</code> adds code to the class — it only checks; you still write every member.</li>
            <li>Deep inheritance chains (<code>A extends B extends C extends D</code>) — keep interfaces small and compose them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>Card</code> class to the starter that implements <code>PaymentMethod</code> and charges a 2% fee.</li>
            <li>Create an <code>Intern</code> interface that extends <code>Employee</code> with <code>mentor: string</code>.</li>
            <li>Rewrite <code>Employee</code> as a type alias using <code>&amp;</code> and check the code still passes.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Interfaces name object shapes and can <code>extend</code> one or more other interfaces.</li>
            <li><code>&amp;</code> is the type-alias way to combine shapes.</li>
            <li>Interfaces with the same name merge; type aliases cannot.</li>
            <li>Classes can <code>implements</code> an interface as a checked contract.</li>
            <li>Pick one style for plain objects and stay consistent.</li>
            <li>Unions and tuples always need <code>type</code>.</li>
            <li>Interfaces produce no JavaScript at all.</li>
            <li>Hover in your editor to see the full shape.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Hover over an interface in VS Code to see all its members, including inherited ones. When an object "doesn't fit", read the error bottom-up — the last line usually names the exact missing or wrong property.
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
        <p class="lc-lead">Functions are where types pay off most. Typed parameters stop callers from passing the wrong data, typed return values promise what comes back, and function types let you describe callbacks precisely.</p>
        <div class="lc-card">
          <h3>Parameters and Return Types</h3>
          <div class="lc-code">function emi(principal: number, yearlyRate: number, months: number): number {<br>&nbsp;&nbsp;const r = yearlyRate / 12 / 100;<br>&nbsp;&nbsp;return Math.round((principal * r * (1 + r) ** months) / ((1 + r) ** months - 1));<br>}<br><br>emi(100000, 12, 12);      // 8885<br>emi(100000, "12", 12);<br>// Error: Argument of type 'string' is not assignable to parameter of type 'number'.<br>emi(100000, 12);<br>// Error: Expected 3 arguments, but got 2.</div>
          <p>Parameters <strong>must</strong> be annotated (under <code>strict</code>, an unannotated parameter is an error: "implicitly has an 'any' type"). The return type is inferred if you leave it out, but writing it on important functions documents the contract and catches mistakes inside the function — such as a branch that forgets to <code>return</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Optional and Default Parameters</h3>
          <div class="lc-code">function greet(name: string, greeting?: string): string {<br>&nbsp;&nbsp;return (greeting ?? "Namaste") + ", " + name;   // greeting: string | undefined<br>}<br><br>function price(amount: number, gstRate = 0.18): number {   // gstRate inferred: number<br>&nbsp;&nbsp;return amount * (1 + gstRate);<br>}<br><br>greet("Kiran");            // "Namaste, Kiran"<br>price(100);                // 118<br>price(100, 0.05);          // 105</div>
          <p>Optional parameters must come <strong>after</strong> required ones. A default value makes a parameter optional and gives it a type automatically.</p>
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
          <p>A <strong>function type expression</strong> describes a function's parameters and return type — perfect for callbacks:</p>
          <div class="lc-code">type Discount = (price: number) =&gt; number;<br><br>const festive: Discount = (p) =&gt; p * 0.8;        // p is inferred as number<br>const flat100: Discount = (p) =&gt; Math.max(0, p - 100);<br><br>function applyAll(prices: number[], rule: Discount): number[] {<br>&nbsp;&nbsp;return prices.map(rule);<br>}<br>applyAll([500, 1200], festive);   // [400, 960]</div>
          <p>Notice <code>(p) =&gt; …</code> needs no annotation: TypeScript knows <code>p</code> is a <code>number</code> from the <code>Discount</code> type. This is called <strong>contextual typing</strong>, and it also works for array method callbacks such as <code>prices.map(p =&gt; p * 2)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Callback That Returns the Wrong Type</h3>
          <div class="lc-code">const half: Discount = (p) =&gt; (p / 2).toFixed(2);<br>// Error: Type 'string' is not assignable to type 'number'.</div>
          <p><code>toFixed</code> returns a <em>string</em>. In JavaScript, this bug would only show up later as <code>"250.00" + 10 = "250.0010"</code>. TypeScript points to the exact line.</p>
        </div>
        <div class="lc-card">
          <h3>Overloads</h3>
          <p>Sometimes the return type depends on the argument type. <strong>Overload signatures</strong> describe each case; one implementation handles them all:</p>
          <div class="lc-code">function parse(value: string): number;<br>function parse(value: string[]): number[];<br>function parse(value: string | string[]): number | number[] {<br>&nbsp;&nbsp;return Array.isArray(value) ? value.map(Number) : Number(value);<br>}<br><br>const one = parse("42");          // one: number<br>const many = parse(["1", "2"]);   // many: number[]</div>
          <p>Overloads are useful but verbose. When every case returns the <em>same</em> type, a single signature with a union parameter is simpler. Reach for overloads only when the <strong>return type</strong> changes with the input.</p>
        </div>
        <div class="lc-card">
          <h3>Annotate or Infer?</h3>
          <table class="lc-table">
            <thead><tr><th>Part of a function</th><th>Annotate?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Parameters</td><td>always (unless contextually typed callback)</td><td>TypeScript cannot guess what callers pass</td></tr>
              <tr><td>Return type of exported / important functions</td><td>yes</td><td>documents the contract, catches wrong returns</td></tr>
              <tr><td>Return type of tiny local helpers</td><td>optional</td><td>inference is accurate</td></tr>
              <tr><td>Callback parameters inside <code>map</code>, <code>filter</code></td><td>no</td><td>already known from context</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Typing Destructured Parameters</h3>
          <p>Functions often receive an options object. Annotate the whole object after the destructuring pattern:</p>
          <div class="lc-code">type ShipOptions = { city: string; express?: boolean };<br><br>function shippingCost({ city, express = false }: ShipOptions): number {<br>&nbsp;&nbsp;const base = city === "Mumbai" ? 40 : 60;<br>&nbsp;&nbsp;return express ? base * 2 : base;<br>}<br>console.log(shippingCost({ city: "Pune" }), shippingCost({ city: "Mumbai", express: true }));   // 60 80</div>
          <p>Writing <code>{ city: string }</code> inside the pattern would <em>rename</em> <code>city</code> to a variable called <code>string</code> — a classic beginner trap.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting an optional parameter before a required one — "A required parameter cannot follow an optional parameter."</li>
            <li>Forgetting that an optional parameter can be <code>undefined</code> and using it without a check or default.</li>
            <li>Annotating callback parameters that TypeScript already knows from context.</li>
            <li>Returning different types from different branches by accident — add a return type to catch it.</li>
            <li>Using the <code>Function</code> type — it accepts any function and checks nothing. Write the real signature.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a new <code>Discount</code> rule to the starter: 10% off, but at most ₹200 off.</li>
            <li>Give <code>makeReceipt</code> an optional <code>customer?: string</code> parameter and print it if present.</li>
            <li>Call <code>safePrice</code> with a negative number and follow how <code>never</code> and <code>throw</code> work together.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Annotate parameters; annotate return types of important functions.</li>
            <li>Optional (<code>?</code>) and default parameters come after required ones.</li>
            <li>Function types such as <code>(price: number) =&gt; number</code> describe callbacks.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Define a <code>type</code> for any callback shape you use more than once (<code>type Validator = (value: string) =&gt; string | null</code>). It becomes the vocabulary of your code.
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
        <p class="lc-lead">A <strong>union type</strong> says "this value is one of several types". A <strong>literal type</strong> is one exact value, like <code>"GET"</code>. Together they let you model real choices — order status, payment mode, user role — so precisely that invalid values become compile errors.</p>
        <div class="lc-card">
          <h3>Union Types</h3>
          <div class="lc-code">let pincode: string | number;<br>pincode = "560001";   // OK<br>pincode = 560001;     // OK<br>pincode = true;<br>// Error: Type 'boolean' is not assignable to type 'string | number'.</div>
          <p>With a union, you can only use what <strong>all</strong> members share, until you check which one you have:</p>
          <div class="lc-code">function show(id: string | number) {<br>&nbsp;&nbsp;// id.toUpperCase();<br>&nbsp;&nbsp;// Error: Property 'toUpperCase' does not exist on type 'string | number'.<br>&nbsp;&nbsp;if (typeof id === "string") return id.toUpperCase();   // here id: string<br>&nbsp;&nbsp;return id.toFixed(0);                                 // here id: number<br>}</div>
          <p>Checking the type like this is called <strong>narrowing</strong> — Lesson 8 covers every way to do it.</p>
        </div>
        <div class="lc-card">
          <h3>Literal Types and Literal Unions</h3>
          <div class="lc-code">type PaymentMode = "upi" | "card" | "cash";<br>type Size = "S" | "M" | "L" | "XL";<br>type Dice = 1 | 2 | 3 | 4 | 5 | 6;<br><br>let mode: PaymentMode = "upi";<br>mode = "cheque";<br>// Error: Type '"cheque"' is not assignable to type 'PaymentMode'.</div>
          <p>Your editor now <strong>autocompletes</strong> the allowed values, and a typo like <code>"UPI"</code> or <code>"crad"</code> is caught immediately.</p>
          <p>A string literal union is the <strong>recommended default</strong> for a fixed set of choices in TypeScript — lighter than enums, with no runtime code (the trade-offs are in Lesson 13).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Order Status</h3>
          <div class="lc-code">type OrderStatus = "placed" | "packed" | "shipped" | "delivered";<br><br>function nextStatus(s: OrderStatus): OrderStatus {<br>&nbsp;&nbsp;if (s === "placed") return "packed";<br>&nbsp;&nbsp;if (s === "packed") return "shipped";<br>&nbsp;&nbsp;return "delivered";<br>}<br><br>console.log(nextStatus("placed"));   // packed<br>nextStatus("cancelled");<br>// Error: Argument of type '"cancelled"' is not assignable to parameter of type 'OrderStatus'.</div>
        </div>
        <div class="lc-card">
          <h3>as const: Literal Types from Values</h3>
          <p>Often you need the choices both as a <em>type</em> and as <em>runtime values</em> (to loop over, or to fill a dropdown). Write the values once with <code>as const</code> and derive the type:</p>
          <div class="lc-code">const ROLES = ["admin", "editor", "viewer"] as const;<br>// type: readonly ["admin", "editor", "viewer"]<br><br>type Role = (typeof ROLES)[number];   // "admin" | "editor" | "viewer"<br><br>for (const r of ROLES) console.log(r);   // the values still exist at runtime</div>
          <p><code>as const</code> makes TypeScript infer the <strong>narrowest</strong> types (literals instead of <code>string</code>) and marks everything <code>readonly</code>. It works on objects too:</p>
          <div class="lc-code">const GST = { food: 5, electronics: 18, luxury: 28 } as const;<br>type Category = keyof typeof GST;          // "food" | "electronics" | "luxury"<br>type Rate = (typeof GST)[Category];        // 5 | 18 | 28</div>
          <p><code>typeof</code> here is TypeScript's type-level <code>typeof</code>: it takes the type of a value. <code>keyof</code> then lists that type's keys (more in Lesson 11).</p>
        </div>
        <div class="lc-card">
          <h3>Nullable Unions</h3>
          <p>Under <code>strict</code>, "might be missing" is written as a union with <code>null</code> or <code>undefined</code>:</p>
          <div class="lc-code">function findUser(id: number): string | null {<br>&nbsp;&nbsp;return id === 1 ? "Asha" : null;<br>}<br>const who = findUser(2);<br>console.log(who?.toUpperCase() ?? "not found");   // not found</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Settings Object</h3>
          <p>Literal unions make a settings type self-explaining:</p>
          <div class="lc-code">type Settings = {<br>&nbsp;&nbsp;theme: "light" | "dark" | "system";<br>&nbsp;&nbsp;language: "en" | "hi" | "ta" | "bn";<br>&nbsp;&nbsp;fontSize: 12 | 14 | 16 | 18;<br>&nbsp;&nbsp;notifications: boolean;<br>};<br><br>const mine: Settings = { theme: "dark", language: "hi", fontSize: 16, notifications: true };<br>console.log(mine.theme, mine.language, mine.fontSize);</div>
          <p>Output:</p>
          <div class="lc-code">dark hi 16</div>
          <p>Try <code>fontSize: 15</code> and TypeScript reports <code>Type '15' is not assignable to type '12 | 14 | 16 | 18'.</code> — the type <em>is</em> the documentation of every allowed option.</p>
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
            <li>Using plain <code>string</code> for a value that has only a few valid options — use a literal union.</li>
            <li>Declaring choices with <code>let</code> and no annotation: <code>let mode = "upi"</code> widens to <code>string</code>.</li>
            <li>Forgetting <code>as const</code>, so <code>(typeof ROLES)[number]</code> is just <code>string</code>.</li>
            <li>Calling a method on a union without narrowing first.</li>
            <li>Mixing up <code>|</code> and <code>&amp;</code> — <code>string &amp; number</code> is <code>never</code> (nothing can be both).</li>
            <li>Comparing against a value that is not in the union (<code>if (mode === "UPI")</code>) — TypeScript reports "This comparison appears to be unintentional because the types … have no overlap."</li>
            <li>Duplicating the list of choices in several places instead of deriving the type from one <code>as const</code> array.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add <code>"netbanking"</code> to <code>PAYMENT_MODES</code> in the starter. Which other line must you update, and how does <code>tsc</code> tell you?</li>
            <li>Add a <code>"cancelled"</code> status and make <code>nextStatus</code> keep cancelled orders cancelled.</li>
            <li>Create <code>const SIZES = ["S", "M", "L"] as const</code> and derive a <code>Size</code> type from it.</li>
            <li>Write <code>function roll(): Dice</code> that returns a random dice value. Why does <code>Math.ceil(Math.random() * 6)</code> need a type assertion or a check?</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>A | B</code> means "A or B"; narrow before using type-specific members.</li>
            <li>Literal unions like <code>"upi" | "card"</code> model fixed choices with zero runtime cost.</li>
            <li><code>as const</code> + <code>(typeof X)[number]</code> or <code>keyof typeof X</code> derives the union from real values.</li>
            <li>Write <code>T | null</code> when a value may be missing.</li>
            <li><code>A &amp; B</code> means "both at once" — mostly for combining object shapes.</li>
            <li>Literal unions give autocomplete in your editor for free.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you see a parameter typed as <code>string</code> with a comment like <code>// "asc" or "desc"</code>, turn the comment into a type: <code>order: "asc" | "desc"</code>. The compiler will now enforce what the comment only hoped for.
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
        <p class="lc-lead">When a value has a union type, TypeScript lets you use only what every member shares. <strong>Narrowing</strong> is how you prove which member you have. TypeScript follows your <code>if</code>s, <code>return</code>s and <code>switch</code>es (called <em>control-flow analysis</em>) and gives the variable a more precise type inside each branch.</p>
        <div class="lc-card">
          <h3>typeof Guards</h3>
          <div class="lc-code">function formatAmount(amount: string | number): string {<br>&nbsp;&nbsp;if (typeof amount === "string") {<br>&nbsp;&nbsp;&nbsp;&nbsp;return "₹" + amount.trim();          // amount: string<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return "₹" + amount.toFixed(2);          // amount: number<br>}<br>formatAmount(" 499 ");   // "₹499"<br>formatAmount(1250);      // "₹1250.00"</div>
          <p>After the <code>return</code>, TypeScript knows the string case is gone, so <code>amount</code> must be a number. <code>typeof</code> can check <code>"string"</code>, <code>"number"</code>, <code>"boolean"</code>, <code>"bigint"</code>, <code>"symbol"</code>, <code>"undefined"</code>, <code>"function"</code> and <code>"object"</code>.</p>
          <p>Remember the JavaScript quirk: <code>typeof null === "object"</code>. So <code>typeof x === "object"</code> does <strong>not</strong> rule out <code>null</code> — TypeScript will tell you "'x' is possibly 'null'".</p>
        </div>
        <div class="lc-card">
          <h3>Truthiness and Equality</h3>
          <div class="lc-code">function greet(name: string | null | undefined): string {<br>&nbsp;&nbsp;if (!name) return "Hello, guest";   // handles null, undefined AND ""<br>&nbsp;&nbsp;return "Hello, " + name;            // name: string<br>}<br><br>function sameCity(a: string | number, b: string | boolean) {<br>&nbsp;&nbsp;if (a === b) {<br>&nbsp;&nbsp;&nbsp;&nbsp;return a.toUpperCase();            // both must be string here<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return "different";<br>}</div>
          <p>Truthiness checks are short but also remove <code>0</code> and <code>""</code>. When those are valid values, compare explicitly: <code>if (count !== undefined)</code> or <code>if (value != null)</code> (the loose <code>!=</code> removes both <code>null</code> and <code>undefined</code>).</p>
        </div>
        <div class="lc-card">
          <h3>The in Operator and instanceof</h3>
          <div class="lc-code">type Upi = { vpa: string };<br>type Card = { cardNumber: string; expiry: string };<br><br>function describePayment(p: Upi | Card): string {<br>&nbsp;&nbsp;if ("vpa" in p) return "UPI to " + p.vpa;           // p: Upi<br>&nbsp;&nbsp;return "Card ending " + p.cardNumber.slice(-4);     // p: Card<br>}<br><br>function toDate(value: Date | string): Date {<br>&nbsp;&nbsp;return value instanceof Date ? value : new Date(value);<br>}</div>
          <p><code>"key" in obj</code> narrows to the union members that have that key. <code>instanceof</code> works for classes (<code>Date</code>, <code>Error</code>, your own classes). For arrays use <code>Array.isArray(value)</code>.</p>
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
          <p>For checks you repeat, write a function whose return type is <code>value is SomeType</code>. When it returns <code>true</code>, TypeScript narrows the argument:</p>
          <div class="lc-code">type Product = { name: string; price: number };<br><br>function isProduct(value: unknown): value is Product {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;typeof value === "object" &amp;&amp; value !== null &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"name" in value &amp;&amp; typeof value.name === "string" &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"price" in value &amp;&amp; typeof value.price === "number"<br>&nbsp;&nbsp;);<br>}<br><br>const data: unknown = JSON.parse('{"name":"Pen","price":20}');<br>if (isProduct(data)) console.log(data.name, data.price);   // data: Product</div>
          <p>TypeScript trusts your predicate — if the check inside is wrong, the narrowing is wrong too. Keep predicates small and test them.</p>
        </div>
        <div class="lc-card">
          <h3>Inferred Type Predicates (TypeScript 5.5+)</h3>
          <p>Since TypeScript 5.5, simple arrow functions like <code>x =&gt; x !== null</code> are automatically treated as type predicates. That makes <code>filter</code> remove <code>null</code> from the type:</p>
          <div class="lc-code">const scores: (number | null)[] = [72, null, 90, null, 65];<br>const valid = scores.filter((s) =&gt; s !== null);   // number[]  (was (number | null)[] before 5.5)<br>console.log(valid.reduce((a, b) =&gt; a + b, 0));     // 227</div>
        </div>
        <div class="lc-card">
          <h3>Assertion Functions</h3>
          <p>An assertion function throws if a condition is false. Its return type <code>asserts value is T</code> narrows the variable for all the code <em>after</em> the call:</p>
          <div class="lc-code">function assertIsString(value: unknown, label: string): asserts value is string {<br>&nbsp;&nbsp;if (typeof value !== "string") throw new TypeError(label + " must be a string");<br>}<br><br>const input: unknown = "  asha@example.in ";<br>assertIsString(input, "email");<br>console.log(input.trim());   // input: string from here on</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Narrowing unknown Step by Step</h3>
          <p>Data from outside (JSON, forms) should be typed <code>unknown</code> and narrowed piece by piece:</p>
          <div class="lc-code">function readAge(value: unknown): number {<br>&nbsp;&nbsp;if (typeof value === "number") return value;<br>&nbsp;&nbsp;if (typeof value === "string" &amp;&amp; value.trim() !== "") {<br>&nbsp;&nbsp;&nbsp;&nbsp;const n = Number(value);<br>&nbsp;&nbsp;&nbsp;&nbsp;if (!Number.isNaN(n)) return n;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;throw new TypeError("Age must be a number");<br>}<br><br>console.log(readAge(21), readAge("34"));<br>try { readAge("abc"); } catch (e) { if (e instanceof Error) console.log(e.message); }</div>
          <p>Output:</p>
          <div class="lc-code">21 34<br>Age must be a number</div>
          <p>Every <code>return</code> happens only after a check, so the function's <code>number</code> return type is honest.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>typeof x === "object"</code> and forgetting <code>null</code> passes that test.</li>
            <li>Using a truthiness check on a number that may legitimately be <code>0</code>.</li>
            <li>Reaching for <code>as Product</code> instead of checking — an assertion hides bugs, a guard finds them.</li>
            <li>Writing a type predicate whose body doesn't really check what it promises.</li>
            <li>Expecting narrowing to survive inside a callback after the variable was reassigned — copy it to a <code>const</code> first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>NetBanking</code> type with a <code>bank</code> field to the starter and handle it in <code>describePayment</code> using <code>in</code>.</li>
            <li>Write <code>isNonEmptyString(value: unknown): value is string</code> and use it on the <code>inputs</code> array.</li>
            <li>Call <code>assertPositive(-5)</code> inside a <code>try</code> and print the error message.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Narrowing turns a union into one specific member inside a branch.</li>
            <li>Use <code>typeof</code>, equality, <code>in</code>, <code>instanceof</code> and <code>Array.isArray</code> as built-in guards.</li>
            <li>Write <code>value is T</code> predicates for reusable checks and <code>asserts value is T</code> functions to throw early.</li>
            <li>Since TypeScript 5.5, <code>filter(x =&gt; x !== null)</code> narrows automatically.</li>
            <li>Prefer checks over <code>as</code> assertions.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Hover over a variable inside each branch of an <code>if</code> in VS Code: you will see its type change. That is the fastest way to understand what TypeScript has — and hasn't — proven.
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
        <p class="lc-lead">A <strong>discriminated union</strong> (or tagged union) is a union of object types that all share one literal field — the <em>tag</em> — such as <code>kind</code> or <code>status</code>. Checking the tag tells TypeScript exactly which shape you have. It is one of the most useful patterns in all of TypeScript.</p>
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
          <p>Inside each <code>case</code>, only that member's properties are available. Using <code>s.radius</code> in the rectangle case is an error. Because every case returns, TypeScript also accepts that the function always returns a <code>number</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Exhaustiveness Checking With never</h3>
          <p>What happens when someone adds a new shape later? Add a <code>default</code> branch that assigns the value to <code>never</code>. If every case is handled, nothing is left and the assignment is fine. If a case is missing, TypeScript reports an error <strong>at compile time</strong>:</p>
          <div class="lc-code">type Shape = Circle | Rectangle | Triangle | { kind: "square"; side: number };<br><br>function area(s: Shape): number {<br>&nbsp;&nbsp;switch (s.kind) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "circle": return Math.PI * s.radius ** 2;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "rectangle": return s.width * s.height;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "triangle": return (s.base * s.height) / 2;<br>&nbsp;&nbsp;&nbsp;&nbsp;default: {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const unhandled: never = s;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;// Error: Type '{ kind: "square"; side: number; }' is not assignable to type 'never'.<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Error("Unknown shape: " + JSON.stringify(unhandled));<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;}<br>}</div>
          <p>The error points to exactly the <code>switch</code> that needs a new case. In a big codebase, this turns "remember to update every place" into a compiler checklist.</p>
        </div>
        <div class="lc-card">
          <h3>Make Impossible States Impossible</h3>
          <p>Compare two ways to model loading data from a server:</p>
          <div class="lc-code">// Weak: many combinations make no sense<br>type LoadStateWeak = { loading: boolean; data?: string[]; error?: string };<br>// { loading: true, data: [...], error: "..." } is allowed — what does it mean?<br><br>// Strong: exactly four valid states<br>type LoadState =<br>&nbsp;&nbsp;| { status: "idle" }<br>&nbsp;&nbsp;| { status: "loading" }<br>&nbsp;&nbsp;| { status: "success"; data: string[] }<br>&nbsp;&nbsp;| { status: "error"; message: string };</div>
          <table class="lc-table">
            <thead><tr><th></th><th>Booleans + optional fields</th><th>Discriminated union</th></tr></thead>
            <tbody>
              <tr><td>Invalid combinations</td><td>possible (loading <em>and</em> error)</td><td>impossible to write</td></tr>
              <tr><td>Access to <code>data</code></td><td>always <code>string[] | undefined</code> — checks everywhere</td><td>only in the success branch, and guaranteed there</td></tr>
              <tr><td>Adding a new state</td><td>easy to forget places</td><td>exhaustiveness check finds them</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Result Pattern</h3>
          <p>Instead of throwing, a function can return a tagged union that says whether it worked. The caller <em>must</em> check <code>ok</code> before using the value:</p>
          <div class="lc-code">type Result&lt;T&gt; = { ok: true; value: T } | { ok: false; error: string };<br><br>function parsePincode(text: string): Result&lt;number&gt; {<br>&nbsp;&nbsp;return /^[1-9][0-9]{5}$/.test(text)<br>&nbsp;&nbsp;&nbsp;&nbsp;? { ok: true, value: Number(text) }<br>&nbsp;&nbsp;&nbsp;&nbsp;: { ok: false, error: "Pincode must be 6 digits and not start with 0" };<br>}<br><br>const r = parsePincode("560001");<br>if (r.ok) console.log(r.value + 1);   // 560002<br>else console.log(r.error);</div>
          <p>Booleans work as tags too (<code>ok: true</code> / <code>ok: false</code>). <code>&lt;T&gt;</code> makes the type reusable for any value type — that is a <strong>generic</strong>, the topic of Lesson 10.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Notifications</h3>
          <p>Each kind of notification carries different data, but one function can format all of them safely:</p>
          <div class="lc-code">type Notification =<br>&nbsp;&nbsp;| { type: "payment"; amount: number; from: string }<br>&nbsp;&nbsp;| { type: "delivery"; orderId: string; eta: string }<br>&nbsp;&nbsp;| { type: "otp"; code: string };<br><br>function toText(n: Notification): string {<br>&nbsp;&nbsp;switch (n.type) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "payment": return "Received ₹" + n.amount + " from " + n.from;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "delivery": return "Order " + n.orderId + " arrives " + n.eta;<br>&nbsp;&nbsp;&nbsp;&nbsp;case "otp": return "Your OTP is " + n.code;<br>&nbsp;&nbsp;}<br>}<br><br>console.log(toText({ type: "payment", amount: 500, from: "Ravi" }));<br>console.log(toText({ type: "otp", code: "4821" }));</div>
          <p>Output:</p>
          <div class="lc-code">Received ₹500 from Ravi<br>Your OTP is 4821</div>
          <p>Writing <code>{ type: "otp", amount: 5 }</code> is an error: the <code>"otp"</code> member has no <code>amount</code> and needs a <code>code</code>. The tag decides which other fields are required.</p>
        </div>
        <div class="lc-card">
          <h3>Where You Will Meet Tagged Unions</h3>
          <ul class="lc-list">
            <li><strong>Redux / <code>useReducer</code> actions</strong> — <code>{ type: "add"; item } | { type: "remove"; id }</code> (Lesson 20).</li>
            <li><strong>API responses</strong> — success and error bodies with a <code>status</code> field.</li>
            <li><strong>Events and messages</strong> — WebSocket or worker messages with a <code>type</code>.</li>
            <li><strong>Form steps and wizards</strong> — each step has its own fields.</li>
            <li><strong>Payment methods</strong> — UPI, card and net banking need different details.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Giving the tag a plain <code>string</code> type instead of a literal — then it can't discriminate.</li>
            <li>Using different tag names in different members (<code>kind</code> in one, <code>type</code> in another).</li>
            <li>Leaving out the <code>never</code> default, so new members silently fall through.</li>
            <li>Modelling state with several booleans (<code>isLoading</code>, <code>isError</code>) that can contradict each other.</li>
            <li>Checking <code>if (result.value)</code> instead of <code>if (result.ok)</code> — a valid value could be <code>0</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>{ kind: "square"; side: number }</code> member to <code>Shape</code> in the starter. Read the comment explaining the error <code>tsc</code> would now give, then add the missing case.</li>
            <li>Add a <code>"retrying"</code> state with an <code>attempt: number</code> field to <code>LoadState</code> and render it.</li>
            <li>Make <code>parsePincode</code> reject pincodes starting with <code>9</code> and test it.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>A shared literal tag field turns a union into a discriminated union.</li>
            <li>Checking the tag narrows the whole object.</li>
            <li><code>const x: never = value</code> in <code>default</code> makes the compiler find unhandled cases.</li>
            <li>Model state as a union of valid states, and results as <code>{ ok: true … } | { ok: false … }</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Whenever you write two or more booleans that describe one "mode" of something, stop and ask: could this be a single <code>status</code> field with a discriminated union? The answer is usually yes.
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
            case "success": return `Loaded ${state.data.length} cities: ${state.data.join(", ")}`;
            case "error": return `Error: ${state.message}`;
          }
        }
        const states: LoadState[] = [{ status: "idle" }, { status: "loading" },
          { status: "success", data: ["Pune", "Kochi"] }, { status: "error", message: "Network down" }];
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
        <p class="lc-lead"><strong>Generics</strong> let you write one function, type or class that works with <em>many</em> types while keeping full type safety. A generic has a <strong>type parameter</strong> — a placeholder like <code>T</code> — that is filled in each time you use it.</p>
        <div class="lc-card">
          <h3>The Problem Generics Solve</h3>
          <div class="lc-code">function firstAny(items: any[]): any {<br>&nbsp;&nbsp;return items[0];<br>}<br>const x = firstAny(["chai", "coffee"]);   // x: any — type information lost<br>x.toFixed(2);                             // no error… crashes at runtime</div>
          <p>With <code>any</code>, the function "works" for every type but forgets what went in. We want: "whatever type of array goes in, that type of item comes out".</p>
        </div>
        <div class="lc-card">
          <h3>A Generic Function</h3>
          <div class="lc-code">function first&lt;T&gt;(items: T[]): T | undefined {<br>&nbsp;&nbsp;return items[0];<br>}<br><br>const drink = first(["chai", "coffee"]);   // T = string  → drink: string | undefined<br>const mark = first([72, 85]);              // T = number  → mark: number | undefined<br>const none = first&lt;boolean&gt;([]);          // T given explicitly</div>
          <ul class="lc-list">
            <li><code>&lt;T&gt;</code> after the name declares the type parameter.</li>
            <li>TypeScript usually <strong>infers</strong> <code>T</code> from the arguments — you rarely write <code>first&lt;string&gt;(…)</code>.</li>
            <li>Write it explicitly when there is nothing to infer from, like an empty array.</li>
            <li>The name <code>T</code> is a convention; descriptive names (<code>TItem</code>, <code>TKey</code>) are fine too.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Several Type Parameters</h3>
          <div class="lc-code">function pair&lt;K, V&gt;(key: K, value: V): [K, V] {<br>&nbsp;&nbsp;return [key, value];<br>}<br>const p = pair("Pune", 411001);   // [string, number]<br><br>function mapValues&lt;T, U&gt;(items: T[], fn: (item: T) =&gt; U): U[] {<br>&nbsp;&nbsp;return items.map(fn);<br>}<br>const lengths = mapValues(["dosa", "idli"], (s) =&gt; s.length);   // number[]</div>
          <p>In <code>mapValues</code>, <code>T</code> comes from the array and <code>U</code> from what your callback returns. This is exactly how the built-in <code>Array.prototype.map</code> is typed.</p>
        </div>
        <div class="lc-card">
          <h3>Generic Types and Interfaces</h3>
          <div class="lc-code">type ApiResponse&lt;T&gt; = {<br>&nbsp;&nbsp;status: number;<br>&nbsp;&nbsp;data: T;<br>&nbsp;&nbsp;fetchedAt: string;<br>};<br><br>interface Page&lt;T&gt; {<br>&nbsp;&nbsp;items: T[];<br>&nbsp;&nbsp;page: number;<br>&nbsp;&nbsp;totalPages: number;<br>}<br><br>type User = { id: number; name: string };<br>const res: ApiResponse&lt;Page&lt;User&gt;&gt; = {<br>&nbsp;&nbsp;status: 200,<br>&nbsp;&nbsp;fetchedAt: "2026-09-25",<br>&nbsp;&nbsp;data: { items: [{ id: 1, name: "Asha" }], page: 1, totalPages: 3 },<br>};<br>console.log(res.data.items[0].name);   // Asha — fully typed</div>
          <p>One <code>ApiResponse&lt;T&gt;</code> type describes every endpoint of your API; only <code>T</code> changes.</p>
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
            <li>Using <code>any</code> for "works with anything" — use a type parameter.</li>
            <li>Adding a type parameter that is used only once (<code>function log&lt;T&gt;(x: T): void</code>) — a plain <code>unknown</code> parameter is simpler.</li>
            <li>Writing type arguments that TypeScript could infer: <code>first&lt;string&gt;(["a"])</code>.</li>
            <li>Trying to use properties of <code>T</code> (like <code>item.length</code>) without a constraint — that is Lesson 11.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>peek(): T | undefined</code> method to the starter's <code>Queue</code>.</li>
            <li>Write <code>last&lt;T&gt;(items: T[]): T | undefined</code> and test it with strings and numbers.</li>
            <li>Create <code>ApiResponse&lt;Product[]&gt;</code> for a product list and print the first name.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>A type parameter <code>&lt;T&gt;</code> links input types to output types.</li>
            <li>TypeScript infers type arguments from the values you pass.</li>
            <li>Generic types, interfaces and classes are reusable templates for many data types.</li>
            <li>Generics keep full safety where <code>any</code> would throw it away.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A good test for a generic: does the type parameter appear in at least two places (for example, a parameter <em>and</em> the return type)? If yes, it is connecting types and earning its place.
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
        <p class="lc-lead">A plain <code>&lt;T&gt;</code> can be <em>anything</em>, so you can't use any of its properties. A <strong>constraint</strong> (<code>T extends …</code>) says "T can be any type that has at least this shape". Combined with <code>keyof</code> and indexed access types, constraints let you write helpers that are both flexible and precise.</p>
        <div class="lc-card">
          <h3>Why Constraints?</h3>
          <div class="lc-code">function longest&lt;T&gt;(a: T, b: T): T {<br>&nbsp;&nbsp;return a.length &gt;= b.length ? a : b;<br>&nbsp;&nbsp;// Error: Property 'length' does not exist on type 'T'.<br>}</div>
          <p>TypeScript is right: <code>T</code> could be a number, which has no <code>length</code>. Add a constraint:</p>
          <div class="lc-code">function longest&lt;T extends { length: number }&gt;(a: T, b: T): T {<br>&nbsp;&nbsp;return a.length &gt;= b.length ? a : b;<br>}<br><br>longest("chai", "coffee");        // "coffee" — T = string<br>longest([1, 2, 3], [4]);          // [1, 2, 3] — T = number[]<br>longest(10, 20);<br>// Error: Argument of type 'number' is not assignable to parameter of type '{ length: number; }'.</div>
          <p>The result keeps its exact type: <code>longest("chai", "coffee")</code> returns a <code>string</code>, not just "something with a length".</p>
        </div>
        <div class="lc-card">
          <h3>Constraining to an Interface</h3>
          <div class="lc-code">interface HasId { id: number }<br><br>function findById&lt;T extends HasId&gt;(items: T[], id: number): T | undefined {<br>&nbsp;&nbsp;return items.find((item) =&gt; item.id === id);<br>}<br><br>const books = [{ id: 1, title: "Godaan" }, { id: 2, title: "Gitanjali" }];<br>const b = findById(books, 2);<br>console.log(b?.title);   // Gitanjali — and b is typed as { id: number; title: string } | undefined</div>
          <p>This one helper now works for books, users, orders — anything with a numeric <code>id</code> — and returns the full, specific type.</p>
        </div>
        <div class="lc-card">
          <h3>The keyof Operator</h3>
          <p><code>keyof T</code> produces a union of <code>T</code>'s property names:</p>
          <div class="lc-code">type Student = { name: string; marks: number; city: string };<br>type StudentKey = keyof Student;   // "name" | "marks" | "city"<br><br>const k: StudentKey = "marks";     // OK<br>const bad: StudentKey = "age";<br>// Error: Type '"age"' is not assignable to type 'keyof Student'.</div>
        </div>
        <div class="lc-card">
          <h3>Indexed Access Types: T[K]</h3>
          <p>Just as <code>obj["marks"]</code> reads a value, <code>Student["marks"]</code> reads a <em>type</em>:</p>
          <div class="lc-code">type Marks = Student["marks"];                 // number<br>type NameOrCity = Student["name" | "city"];    // string<br>type AnyValue = Student[keyof Student];        // string | number</div>
        </div>
        <div class="lc-card">
          <h3>The Classic: getProperty</h3>
          <p>Put <code>keyof</code>, a constraint and <code>T[K]</code> together and you get a function that only accepts real keys and returns the right type for each:</p>
          <div class="lc-code">function getProperty&lt;T, K extends keyof T&gt;(obj: T, key: K): T[K] {<br>&nbsp;&nbsp;return obj[key];<br>}<br><br>const s: Student = { name: "Asha", marks: 88, city: "Pune" };<br>const n = getProperty(s, "name");    // string<br>const m = getProperty(s, "marks");   // number<br>getProperty(s, "age");<br>// Error: Argument of type '"age"' is not assignable to parameter of type 'keyof Student'.</div>
          <p>The same idea lets you build a type-safe "sort by any field" helper — see the starter.</p>
        </div>
        <div class="lc-card">
          <h3>const Type Parameters (TypeScript 5.0+)</h3>
          <p>Normally a generic infers wide types (<code>string[]</code>). Adding <code>const</code> before the type parameter infers the narrowest, literal types — as if the caller wrote <code>as const</code>:</p>
          <div class="lc-code">function choices&lt;const T extends readonly string[]&gt;(options: T): T {<br>&nbsp;&nbsp;return options;<br>}<br>const sizes = choices(["S", "M", "L"]);   // readonly ["S", "M", "L"]<br>type Size = (typeof sizes)[number];       // "S" | "M" | "L"</div>
        </div>
        <div class="lc-card">
          <h3>NoInfer (TypeScript 5.4+)</h3>
          <p>Sometimes a parameter should <em>use</em> <code>T</code> but not help decide what <code>T</code> is. <code>NoInfer&lt;T&gt;</code> blocks inference from that spot:</p>
          <div class="lc-code">function pick&lt;T extends string&gt;(options: T[], fallback: NoInfer&lt;T&gt;): T {<br>&nbsp;&nbsp;return options[0] ?? fallback;<br>}<br>pick(["red", "green"], "red");     // OK<br>pick(["red", "green"], "blue");<br>// Error: Argument of type '"blue"' is not assignable to parameter of type '"green" | "red"'.</div>
          <p>Without <code>NoInfer</code>, TypeScript would widen <code>T</code> to include <code>"blue"</code> and accept the mistake.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Typed "pluck"</h3>
          <div class="lc-code">function pluck&lt;T, K extends keyof T&gt;(items: T[], key: K): T[K][] {<br>&nbsp;&nbsp;return items.map((item) =&gt; item[key]);<br>}<br><br>const cls: Student[] = [<br>&nbsp;&nbsp;{ name: "Ravi", marks: 67, city: "Kochi" },<br>&nbsp;&nbsp;{ name: "Asha", marks: 88, city: "Pune" },<br>];<br>const allMarks = pluck(cls, "marks");   // number[]<br>const cities = pluck(cls, "city");      // string[]<br>console.log(allMarks.join(", "), "|", cities.join(", "));</div>
          <p>Output:</p>
          <div class="lc-code">67, 88 | Kochi, Pune</div>
          <p>The return type <code>T[K][]</code> changes with the key you pass — the compiler knows <code>allMarks</code> holds numbers without you writing it anywhere.</p>
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
              <tr><td><code>NoInfer&lt;T&gt;</code></td><td>don't infer T from here</td><td>fallback parameters</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using a property of <code>T</code> without a constraint.</li>
            <li>Constraining too tightly (<code>T extends string</code> when any object with a <code>name</code> would do).</li>
            <li>Typing a key parameter as <code>string</code> instead of <code>keyof T</code> — then <code>obj[key]</code> is an error or <code>any</code>.</li>
            <li>Forgetting that <code>keyof</code> works on <em>types</em>; for a value use <code>keyof typeof value</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Use <code>sortBy</code> in the starter to sort students by <code>city</code>.</li>
            <li>Write <code>pluck&lt;T, K extends keyof T&gt;(items: T[], key: K): T[K][]</code> and pluck all marks.</li>
            <li>Uncomment the <code>sortBy(students, "age")</code> line — what error would <code>tsc</code> give?</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>T extends X</code> lets a generic use the members of <code>X</code> while keeping the exact type.</li>
            <li><code>keyof T</code> is the union of keys; <code>T[K]</code> is the type of one property.</li>
            <li><code>K extends keyof T</code> accepts only real keys and returns <code>T[K]</code>.</li>
            <li><code>&lt;const T&gt;</code> infers literals; <code>NoInfer&lt;T&gt;</code> stops a parameter from widening <code>T</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read <code>K extends keyof T</code> aloud as "K is one of T's keys". Once that phrase feels natural, most generic helper signatures in libraries become easy to read.
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
        type Student = { name: string; marks: number; city: string };
        function getProperty<T, K extends keyof T>(obj: T, key: K): T[K] {
          return obj[key];
        }
        const s: Student = { name: "Asha", marks: 88, city: "Pune" };
        const marks: Student["marks"] = getProperty(s, "marks"); // number
        console.log(getProperty(s, "name"), "scored", marks + 2, "after grace marks");

        // A type-safe sortBy: only real keys are accepted
        function sortBy<T, K extends keyof T>(items: readonly T[], key: K): T[] {
          return [...items].sort((a, b) => (a[key] < b[key] ? -1 : a[key] > b[key] ? 1 : 0));
        }
        const students: Student[] = [
          { name: "Ravi", marks: 67, city: "Kochi" },
          { name: "Asha", marks: 88, city: "Pune" },
          { name: "Meera", marks: 75, city: "Agra" },
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
        <p class="lc-lead">TypeScript adds types and <strong>access modifiers</strong> to JavaScript classes. You can declare field types, control who may read or change each member, force subclasses to implement methods with <code>abstract</code>, and mark overrides with <code>override</code>.</p>
        <div class="lc-card">
          <h3>Typed Fields and Constructors</h3>
          <div class="lc-code">class Product {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;price: number;<br>&nbsp;&nbsp;tags: string[] = [];              // field with a default<br><br>&nbsp;&nbsp;constructor(name: string, price: number) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.name = name;<br>&nbsp;&nbsp;&nbsp;&nbsp;this.price = price;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;withGst(): number {<br>&nbsp;&nbsp;&nbsp;&nbsp;return Math.round(this.price * 1.18);<br>&nbsp;&nbsp;}<br>}</div>
          <p>Under <code>strict</code> (<code>strictPropertyInitialization</code>), every field must be given a value in its declaration or in the constructor. Otherwise: "Property 'price' has no initializer and is not definitely assigned in the constructor."</p>
        </div>
        <div class="lc-card">
          <h3>public, private, protected, readonly</h3>
          <div class="lc-code">class BankAccount {<br>&nbsp;&nbsp;public readonly owner: string;       // anyone can read, nobody can reassign<br>&nbsp;&nbsp;private balance = 0;                  // only this class<br>&nbsp;&nbsp;protected branch = "Pune";            // this class and subclasses<br><br>&nbsp;&nbsp;constructor(owner: string) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.owner = owner;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;deposit(amount: number): void {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.balance += amount;<br>&nbsp;&nbsp;}<br>}<br><br>const acc = new BankAccount("Meera");<br>// acc.balance = 1000000;<br>// Error: Property 'balance' is private and only accessible within class 'BankAccount'.<br>// acc.owner = "Ravi";<br>// Error: Cannot assign to 'owner' because it is a read-only property.</div>
          <table class="lc-table">
            <thead><tr><th>Modifier</th><th>Accessible from</th></tr></thead>
            <tbody>
              <tr><td><code>public</code> (default)</td><td>everywhere</td></tr>
              <tr><td><code>protected</code></td><td>the class and its subclasses</td></tr>
              <tr><td><code>private</code></td><td>only inside the class</td></tr>
              <tr><td><code>readonly</code></td><td>can be set in the declaration or constructor, then never reassigned</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>private vs #private</h3>
          <p>TypeScript's <code>private</code> is checked <strong>only at compile time</strong> — the property is a normal JavaScript property at runtime. JavaScript's own <code>#field</code> is enforced <strong>at runtime</strong> too.</p>
          <table class="lc-table">
            <thead><tr><th></th><th><code>private balance</code></th><th><code>#balance</code></th></tr></thead>
            <tbody>
              <tr><td>Checked by tsc</td><td>yes</td><td>yes</td></tr>
              <tr><td>Hidden at runtime</td><td>no — <code>Object.keys</code> and <code>JSON.stringify</code> show it</td><td>yes — truly private</td></tr>
              <tr><td>Escape hatch</td><td><code>acc["balance"]</code> is allowed by tsc</td><td>none</td></tr>
              <tr><td>Recommendation</td><td>fine for most app code</td><td>use when privacy really matters (libraries, secrets)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: What private Really Hides</h3>
          <div class="lc-code">class Account {<br>&nbsp;&nbsp;private pin = "1234";<br>&nbsp;&nbsp;#balance = 750;<br>&nbsp;&nbsp;constructor(public owner: string) {}<br>}<br>console.log(JSON.stringify(new Account("Meera")));</div>
          <p>Output:</p>
          <div class="lc-code">{"pin":"1234","owner":"Meera"}</div>
          <p>(Different compilers may print the two keys in a different order.) The TypeScript-<code>private</code> <code>pin</code> leaks into JSON, logs and <code>Object.keys</code>; the JavaScript-private <code>#balance</code> does not. Never rely on <code>private</code> to hide secrets.</p>
        </div>
        <div class="lc-card">
          <h3>Parameter Properties</h3>
          <p>A modifier on a constructor parameter declares and assigns the field in one step:</p>
          <div class="lc-code">class Student {<br>&nbsp;&nbsp;constructor(public readonly roll: number, public name: string, private marks: number) {}<br>&nbsp;&nbsp;passed(): boolean { return this.marks &gt;= 35; }<br>}</div>
          <p>This is handy, but it is one of the few TypeScript features that <strong>generates JavaScript code</strong> (the assignments). Tools that only strip types — Node.js's built-in TypeScript support, and projects using the <code>--erasableSyntaxOnly</code> flag (TypeScript 5.8+) — reject it. Many teams therefore write the fields out explicitly.</p>
        </div>
        <div class="lc-card">
          <h3>Getters, Setters and Static Members</h3>
          <div class="lc-code">class Temperature {<br>&nbsp;&nbsp;static readonly FREEZING = 0;<br>&nbsp;&nbsp;#celsius = 0;<br>&nbsp;&nbsp;get celsius(): number { return this.#celsius; }<br>&nbsp;&nbsp;set celsius(value: number) {<br>&nbsp;&nbsp;&nbsp;&nbsp;if (value &lt; -273.15) throw new RangeError("Below absolute zero");<br>&nbsp;&nbsp;&nbsp;&nbsp;this.#celsius = value;<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>implements, extends and abstract</h3>
          <div class="lc-code">interface Payable { pay(amount: number): string }<br><br>abstract class PaymentMethod implements Payable {<br>&nbsp;&nbsp;constructor(protected readonly label: string) {}<br>&nbsp;&nbsp;abstract fee(amount: number): number;          // no body: subclasses must write it<br>&nbsp;&nbsp;pay(amount: number): string {                  // shared, concrete method<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.label + ": ₹" + (amount + this.fee(amount));<br>&nbsp;&nbsp;}<br>}<br><br>class Card extends PaymentMethod {<br>&nbsp;&nbsp;constructor() { super("Card"); }<br>&nbsp;&nbsp;override fee(amount: number): number { return amount * 0.02; }<br>}<br><br>// new PaymentMethod("x");<br>// Error: Cannot create an instance of an abstract class.</div>
          <ul class="lc-list">
            <li>An <strong>abstract class</strong> cannot be created with <code>new</code>; it is a base for others.</li>
            <li><strong>Abstract methods</strong> have no body — every concrete subclass must implement them.</li>
            <li><code>override</code> marks a method that replaces a parent method. With <code>noImplicitOverride</code> on, forgetting <code>override</code> is an error — and <code>override</code> on a method the parent doesn't have is always an error, which catches typos.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Believing <code>private</code> hides data at runtime — use <code>#field</code> for real privacy.</li>
            <li>Declaring a field without initialising it, then getting a strict-mode error (fix it, don't silence it with <code>!</code>).</li>
            <li>Making everything <code>protected</code> "just in case" — prefer <code>private</code> and widen only when needed.</li>
            <li>Deep inheritance trees; prefer small interfaces and composition.</li>
            <li>Using parameter properties in a project that runs <code>.ts</code> files with type stripping only.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>Wallet</code> subclass to the starter whose fee is ₹0 but which refuses payments above ₹10,000.</li>
            <li>Remove <code>override</code> from <code>Upi.fee</code> — the code still runs, and <code>tsc</code> only complains if <code>noImplicitOverride</code> is on.</li>
            <li>Log <code>JSON.stringify(account)</code> and notice that the <code>#balance</code> field is not included.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Declare field types; strict mode requires every field to be initialised.</li>
            <li><code>public</code>/<code>protected</code>/<code>private</code>/<code>readonly</code> are compile-time checks; <code>#field</code> is runtime privacy.</li>
            <li>Parameter properties are concise but not erasable syntax.</li>
            <li><code>abstract</code> classes define a base with methods subclasses must implement.</li>
            <li><code>override</code> (with <code>noImplicitOverride</code>) catches broken overrides.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Turn on <code>noImplicitOverride</code> in <code>tsconfig.json</code>. When someone renames a method in a base class, every subclass that "overrides" the old name becomes a compile error instead of silently doing nothing.
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
        <p class="lc-lead">TypeScript has an <code>enum</code> keyword for named sets of constants — but modern TypeScript code usually prefers <strong>string literal unions</strong> or an <strong><code>as const</code> object</strong> instead. This lesson shows how enums work, what they cost, and how to choose.</p>
        <div class="lc-card">
          <h3>Numeric Enums</h3>
          <div class="lc-code">enum Direction {<br>&nbsp;&nbsp;Up,       // 0<br>&nbsp;&nbsp;Down,     // 1<br>&nbsp;&nbsp;Left,     // 2<br>&nbsp;&nbsp;Right,    // 3<br>}<br><br>console.log(Direction.Up);      // 0<br>console.log(Direction[0]);      // "Up"  — reverse mapping</div>
          <p>Members count up from <code>0</code> unless you give values (<code>Up = 1</code> makes the rest 2, 3, 4). Numeric enums also get a <strong>reverse mapping</strong> from number back to name.</p>
        </div>
        <div class="lc-card">
          <h3>Enums Generate Runtime Code</h3>
          <p>Unlike every type you have seen so far, an enum is <strong>not erased</strong>. The compiler turns it into a real JavaScript object:</p>
          <div class="lc-code">// JavaScript produced for enum Direction (simplified)<br>var Direction;<br>(function (Direction) {<br>&nbsp;&nbsp;Direction[Direction["Up"] = 0] = "Up";<br>&nbsp;&nbsp;Direction[Direction["Down"] = 1] = "Down";<br>&nbsp;&nbsp;// …<br>})(Direction || (Direction = {}));</div>
          <p>That object is what you are logging in the starter. It also means enums need a real TypeScript <em>transform</em>, not just type stripping.</p>
        </div>
        <div class="lc-card">
          <h3>String Enums</h3>
          <div class="lc-code">enum OrderStatus {<br>&nbsp;&nbsp;Placed = "PLACED",<br>&nbsp;&nbsp;Shipped = "SHIPPED",<br>&nbsp;&nbsp;Delivered = "DELIVERED",<br>}<br><br>let s: OrderStatus = OrderStatus.Shipped;<br>s = "SHIPPED";<br>// Error: Type '"SHIPPED"' is not assignable to type 'OrderStatus'.</div>
          <p>String enums have readable values (good for logs and APIs) but no reverse mapping. Note the surprise above: even the exact string is rejected — you must write <code>OrderStatus.Shipped</code>. That is awkward when the value comes from JSON.</p>
        </div>
        <div class="lc-card">
          <h3>const enum</h3>
          <p><code>const enum</code> asks the compiler to inline the values and emit no object. But tools that compile one file at a time — Babel, esbuild, Vite, and <code>isolatedModules</code> projects — cannot see enums in other files, so <code>const enum</code> is widely discouraged in modern projects.</p>
        </div>
        <div class="lc-card">
          <h3>The Recommended Default: Literal Unions</h3>
          <div class="lc-code">type OrderStatus = "placed" | "shipped" | "delivered";<br><br>let s: OrderStatus = "shipped";     // plain strings work<br>s = "cancelled";<br>// Error: Type '"cancelled"' is not assignable to type 'OrderStatus'.</div>
          <p>Zero runtime code, autocomplete in the editor, and JSON strings fit directly. When you also need the values at runtime (to loop over or show in a dropdown), use an <code>as const</code> array or object:</p>
          <div class="lc-code">const Status = {<br>&nbsp;&nbsp;Placed: "placed",<br>&nbsp;&nbsp;Shipped: "shipped",<br>&nbsp;&nbsp;Delivered: "delivered",<br>} as const;<br><br>type Status = (typeof Status)[keyof typeof Status];   // "placed" | "shipped" | "delivered"<br><br>const s1: Status = Status.Shipped;   // enum-like access<br>const s2: Status = "shipped";        // plain string also OK<br>console.log(Object.values(Status));  // ["placed", "shipped", "delivered"]</div>
          <p>Giving the type and the object the same name (<code>Status</code>) is allowed — one lives in the type world, the other in the value world.</p>
        </div>
        <div class="lc-card">
          <h3>Comparison</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>enum</code></th><th>Literal union</th><th><code>as const</code> object + type</th></tr></thead>
            <tbody>
              <tr><td>Runtime code</td><td>yes (an object)</td><td>none</td><td>a plain object you wrote</td></tr>
              <tr><td>Plain string/JSON value accepted</td><td>no (string enums)</td><td>yes</td><td>yes</td></tr>
              <tr><td>Loop over values</td><td><code>Object.values</code> (numeric enums also include reverse keys)</td><td>no — keep an array</td><td>yes</td></tr>
              <tr><td>Works with type stripping (<code>node app.ts</code>, <code>--erasableSyntaxOnly</code>)</td><td>no</td><td>yes</td><td>yes</td></tr>
              <tr><td>Standard JavaScript?</td><td>no — TypeScript-only syntax</td><td>yes (types erased)</td><td>yes</td></tr>
            </tbody>
          </table>
          <p><strong>Rule of thumb:</strong> use literal unions by default, an <code>as const</code> object when you need runtime values, and <code>enum</code> only when an existing codebase already uses them consistently.</p>
        </div>
        <div class="lc-card">
          <h3>A Numeric Enum Gotcha</h3>
          <div class="lc-code">enum Level { Low, High }<br>console.log(Object.keys(Level));   // ["0", "1", "Low", "High"] — reverse mapping keys too!</div>
          <p>Looping over a numeric enum gives you twice as many keys as you expect. Another reason to prefer an explicit array or <code>as const</code> object.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Replacing an Enum</h3>
          <p>Before — an enum used for a dropdown and an API field:</p>
          <div class="lc-code">enum Plan { Free = "free", Pro = "pro", Team = "team" }<br>function price(p: Plan): number { return p === Plan.Free ? 0 : p === Plan.Pro ? 499 : 1999; }<br>price(Plan.Pro);        // 499<br>// price("pro");        // Error: Argument of type '"pro"' is not assignable to parameter of type 'Plan'.</div>
          <p>After — same safety, plain strings accepted, values still available at runtime:</p>
          <div class="lc-code">const PLANS = ["free", "pro", "team"] as const;<br>type Plan = (typeof PLANS)[number];<br>const PRICES: Record&lt;Plan, number&gt; = { free: 0, pro: 499, team: 1999 };<br><br>console.log(PRICES["pro"], PLANS.length);   // 499 3</div>
          <p>The <code>Record&lt;Plan, number&gt;</code> also guarantees that every plan has a price — add <code>"enterprise"</code> to <code>PLANS</code> and TypeScript demands a price for it.</p>
        </div>
        <div class="lc-card">
          <h3>When an Enum Is Still Acceptable</h3>
          <ul class="lc-list">
            <li>The codebase already uses enums everywhere and consistency matters more.</li>
            <li>A library's API gives you an enum to pass in.</li>
            <li>You compile with <code>tsc</code> or a full transform (not type stripping) and like the <code>Enum.Member</code> style.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Reaching for <code>enum</code> out of habit from Java or C# — a literal union is usually simpler.</li>
            <li>Comparing a string enum with a raw string from an API and getting type errors everywhere.</li>
            <li>Using <code>const enum</code> in a Vite/Babel project.</li>
            <li>Iterating a numeric enum with <code>Object.keys</code> and getting the numbers too.</li>
            <li>Forgetting <code>as const</code> on the object, so the derived type is just <code>string</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>Cancelled</code> status to both versions in the starter. Which one needs fewer changes?</li>
            <li>Print <code>Object.keys(Priority)</code> for the numeric enum and explain the output.</li>
            <li>Parse the status string <code>"shipped"</code> from a JSON order and check it against <code>STATUS_VALUES</code>.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Enums create a real JavaScript object; numeric enums add reverse mappings.</li>
            <li>String enums reject plain strings, which makes JSON awkward.</li>
            <li>Prefer string literal unions; use an <code>as const</code> object when you need runtime values.</li>
            <li>Enums are not erasable syntax, so type-stripping tools reject them.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you inherit a codebase full of enums, don't rewrite them all at once. Use literal unions for new code, and convert enums when you touch that code anyway.
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
        <p class="lc-lead">TypeScript ships with built-in <strong>utility types</strong> that transform one type into another: make every field optional, pick a few fields, remove a field, get a function's return type. They let you derive new types from existing ones instead of copying and pasting.</p>
        <div class="lc-card">
          <h3>The Base Type</h3>
          <div class="lc-code">interface User {<br>&nbsp;&nbsp;id: number;<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;email: string;<br>&nbsp;&nbsp;city?: string;<br>&nbsp;&nbsp;role: "admin" | "member";<br>}</div>
          <p>Every example below derives from this one definition. Change <code>User</code>, and all derived types update automatically.</p>
        </div>
        <div class="lc-card">
          <h3>Partial, Required and Readonly</h3>
          <div class="lc-code">type UserUpdate = Partial&lt;User&gt;;     // every property optional<br>const change: UserUpdate = { city: "Pune" };        // OK<br><br>type CompleteUser = Required&lt;User&gt;;  // city is now required too<br><br>type FrozenUser = Readonly&lt;User&gt;;    // no property can be reassigned<br>const u: FrozenUser = { id: 1, name: "Asha", email: "a@x.in", role: "member" };<br>// u.name = "Ravi";<br>// Error: Cannot assign to 'name' because it is a read-only property.</div>
          <p><code>Partial</code> is perfect for "update" functions where the caller sends only the fields that changed.</p>
        </div>
        <div class="lc-card">
          <h3>Pick and Omit</h3>
          <div class="lc-code">type UserCard = Pick&lt;User, "name" | "city"&gt;;   // { name: string; city?: string }<br>type NewUser = Omit&lt;User, "id"&gt;;                 // everything except id<br><br>function createUser(input: NewUser): User {<br>&nbsp;&nbsp;return { id: Date.now(), ...input };             // the server assigns the id<br>}</div>
          <p><code>Pick</code> keeps the listed keys; <code>Omit</code> removes them. The keys given to <code>Pick</code> must exist on the type; <code>Omit</code> accepts any key name, so double-check spelling there.</p>
        </div>
        <div class="lc-card">
          <h3>Record, Exclude, Extract, NonNullable</h3>
          <div class="lc-code">type Role = User["role"];                               // "admin" | "member"<br>type Permissions = Record&lt;Role, string[]&gt;;<br>const perms: Permissions = { admin: ["read", "write"], member: ["read"] };<br><br>type Status = "draft" | "published" | "archived";<br>type Visible = Exclude&lt;Status, "archived"&gt;;             // "draft" | "published"<br>type Final = Extract&lt;Status, "published" | "deleted"&gt;;  // "published"<br>type MaybeCity = string | null | undefined;<br>type City = NonNullable&lt;MaybeCity&gt;;                      // string</div>
          <p><code>Exclude</code> and <code>Extract</code> work on <strong>unions</strong>; <code>Omit</code> and <code>Pick</code> work on <strong>object keys</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Types From Functions: ReturnType, Parameters, Awaited</h3>
          <div class="lc-code">function makeInvoice(customer: string, amount: number, gst = 0.18) {<br>&nbsp;&nbsp;return { customer, amount, total: Math.round(amount * (1 + gst)) };<br>}<br><br>type Invoice = ReturnType&lt;typeof makeInvoice&gt;;<br>// { customer: string; amount: number; total: number }<br>type InvoiceArgs = Parameters&lt;typeof makeInvoice&gt;;<br>// [customer: string, amount: number, gst?: number]<br><br>declare function loadUser(): Promise&lt;User&gt;;   // e.g. from a library<br>type Loaded = Awaited&lt;ReturnType&lt;typeof loadUser&gt;&gt;;   // User</div>
          <p>These are great when a library gives you a function but not a named type for its result.</p>
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
              <tr><td><code>Record&lt;K, V&gt;</code></td><td>object with keys K and values V</td></tr>
              <tr><td><code>Exclude&lt;U, X&gt;</code> / <code>Extract&lt;U, X&gt;</code></td><td>remove / keep union members</td></tr>
              <tr><td><code>NonNullable&lt;T&gt;</code></td><td>remove <code>null</code> and <code>undefined</code></td></tr>
              <tr><td><code>ReturnType&lt;F&gt;</code> / <code>Parameters&lt;F&gt;</code></td><td>a function's return type / parameter tuple</td></tr>
              <tr><td><code>Awaited&lt;T&gt;</code></td><td>the value inside a Promise</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Combining Utilities</h3>
          <p>Utilities nest. A typical "edit profile" payload: any field except <code>id</code> and <code>role</code> may be sent:</p>
          <div class="lc-code">type ProfileEdit = Partial&lt;Omit&lt;User, "id" | "role"&gt;&gt;;<br>// { name?: string; email?: string; city?: string }<br><br>function applyEdit(user: User, edit: ProfileEdit): User {<br>&nbsp;&nbsp;return { ...user, ...edit };<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: An API Layer</h3>
          <p>Three endpoints, three payloads — all derived from one <code>User</code>:</p>
          <div class="lc-code">type CreateUserBody = Omit&lt;User, "id"&gt;;<br>type UpdateUserBody = Partial&lt;Omit&lt;User, "id"&gt;&gt;;<br>type UserListItem = Pick&lt;User, "id" | "name"&gt;;<br><br>const body: UpdateUserBody = { city: "Chennai" };<br>const list: UserListItem[] = [{ id: 1, name: "Asha" }, { id: 2, name: "Ravi" }];<br>console.log(Object.keys(body).join(", "), list.map((u) =&gt; u.name).join(", "));</div>
          <p>Output:</p>
          <div class="lc-code">city Asha, Ravi</div>
          <p>If a new required field such as <code>phone</code> is added to <code>User</code>, <code>CreateUserBody</code> requires it immediately, while <code>UpdateUserBody</code> keeps it optional — exactly what the API needs.</p>
        </div>
        <div class="lc-card">
          <h3>Types Only — Not Runtime Protection</h3>
          <p>Utility types disappear after compilation. <code>Readonly&lt;User&gt;</code> stops <em>your code</em> from reassigning fields, but it doesn't freeze the object. For runtime immutability use <code>Object.freeze(obj)</code> (which is also shallow).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Copy-pasting a type with one field removed instead of using <code>Omit</code> — the copies drift apart.</li>
            <li>Using <code>Partial&lt;User&gt;</code> where a full user is needed, then checking every field for <code>undefined</code>.</li>
            <li>Mixing up <code>Omit</code> (object keys) and <code>Exclude</code> (union members).</li>
            <li>Writing <code>ReturnType&lt;makeInvoice&gt;</code> — it needs a type, so use <code>ReturnType&lt;typeof makeInvoice&gt;</code>.</li>
            <li>Expecting <code>Readonly</code> to freeze objects at runtime.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, create <code>type PublicUser = Omit&lt;User, "email"&gt;</code> and a function that converts a <code>User</code> to it.</li>
            <li>Make <code>updateUser</code> refuse to change the <code>role</code> by changing its parameter type.</li>
            <li>Use <code>Parameters&lt;typeof makeInvoice&gt;</code> to type an array of argument lists and call <code>makeInvoice(...args)</code> for each.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Utility types derive new types from existing ones instead of copying them.</li>
            <li><code>Partial</code>, <code>Required</code>, <code>Readonly</code> change every property; <code>Pick</code>/<code>Omit</code> choose keys.</li>
            <li><code>Exclude</code>/<code>Extract</code>/<code>NonNullable</code> filter unions.</li>
            <li><code>ReturnType</code>, <code>Parameters</code> and <code>Awaited</code> read types from functions and Promises.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep one "source" type per concept (like <code>User</code>) and derive the rest with utilities. When the source changes, TypeScript shows you every place that needs attention.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 14: utility types
        interface User {
          id: number;
          name: string;
          email: string;
          city?: string;
          role: "admin" | "member";
        }

        type NewUser = Omit<User, "id">;                    // input for "create"
        type ProfileEdit = Partial<Omit<User, "id" | "role">>; // input for "edit"
        type UserCard = Pick<User, "name" | "city">;        // what a card shows
        type Role = User["role"];

        let nextId = 1;
        const createUser = (input: NewUser): User => ({ id: nextId++, ...input });
        const updateUser = (user: User, edit: ProfileEdit): User => ({ ...user, ...edit });
        const toCard = ({ name, city }: User): UserCard => ({ name, city });

        const asha = createUser({ name: "Asha", email: "asha@example.in", role: "admin" });
        const ravi = createUser({ name: "Ravi", email: "ravi@example.in", city: "Kochi", role: "member" });
        const moved = updateUser(asha, { city: "Pune" });
        // updateUser(asha, { role: "member" }); // tsc: Object literal may only specify known properties, and 'role' does not exist in type 'Partial<Omit<User, "id" | "role">>'.
        console.log("card:", JSON.stringify(toCard(moved)), "| original city:", asha.city ?? "none");

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
        <p class="lc-lead">The utility types from Lesson 14 are not magic — they are built from three features you can use yourself: <strong>mapped types</strong> (transform every key), <strong>conditional types</strong> (choose a type with <code>extends ? :</code>), and <strong>template literal types</strong> (build string types from pieces).</p>
        <div class="lc-card">
          <h3>Mapped Types</h3>
          <p>A mapped type loops over a set of keys and produces a property for each one:</p>
          <div class="lc-code">type Flags&lt;T&gt; = { [K in keyof T]: boolean };<br><br>type Settings = { darkMode: string; fontSize: number };<br>type SettingsChanged = Flags&lt;Settings&gt;;   // { darkMode: boolean; fontSize: boolean }</div>
          <p>Read <code>[K in keyof T]</code> as "for each key K of T". The part after the colon is the new property type; <code>T[K]</code> keeps the original.</p>
        </div>
        <div class="lc-card">
          <h3>Rebuilding Partial and Readonly</h3>
          <div class="lc-code">type MyPartial&lt;T&gt; = { [K in keyof T]?: T[K] };           // add ?<br>type MyReadonly&lt;T&gt; = { readonly [K in keyof T]: T[K] };  // add readonly<br>type Mutable&lt;T&gt; = { -readonly [K in keyof T]: T[K] };    // remove readonly<br>type Concrete&lt;T&gt; = { [K in keyof T]-?: T[K] };           // remove ? (like Required)</div>
          <p>The <code>+</code> and <code>-</code> <strong>modifiers</strong> add or remove <code>readonly</code> and <code>?</code>. That is exactly how the built-in <code>Partial</code>, <code>Readonly</code> and <code>Required</code> are written.</p>
        </div>
        <div class="lc-card">
          <h3>Key Remapping with as</h3>
          <p>An <code>as</code> clause renames keys while mapping. Combined with template literal types it can generate method names:</p>
          <div class="lc-code">type Getters&lt;T&gt; = {<br>&nbsp;&nbsp;[K in keyof T &amp; string as `get${Capitalize&lt;K&gt;}`]: () =&gt; T[K];<br>};<br><br>type Student = { name: string; marks: number };<br>type StudentGetters = Getters&lt;Student&gt;;<br>// { getName: () =&gt; string; getMarks: () =&gt; number }</div>
          <p><code>keyof T &amp; string</code> keeps only string keys, because template literals need strings.</p>
        </div>
        <div class="lc-card">
          <h3>Conditional Types</h3>
          <p><code>A extends B ? X : Y</code> means "if A is assignable to B, the type is X, otherwise Y":</p>
          <div class="lc-code">type IsString&lt;T&gt; = T extends string ? "yes" : "no";<br>type A = IsString&lt;"hello"&gt;;   // "yes"<br>type B = IsString&lt;42&gt;;        // "no"<br><br>type NonNull&lt;T&gt; = T extends null | undefined ? never : T;<br>type C = NonNull&lt;string | null | undefined&gt;;   // string</div>
          <p>When <code>T</code> is a union, a conditional type is applied to <strong>each member separately</strong> (it is <em>distributive</em>). That is why <code>NonNull</code> above removes just the <code>null</code> and <code>undefined</code> members. The built-in <code>Exclude</code>, <code>Extract</code> and <code>NonNullable</code> work this way.</p>
        </div>
        <div class="lc-card">
          <h3>infer: Pulling Types Out</h3>
          <p>Inside a conditional type, <code>infer X</code> captures part of a type into a new name:</p>
          <div class="lc-code">type ElementType&lt;T&gt; = T extends (infer E)[] ? E : T;<br>type D = ElementType&lt;string[]&gt;;           // string<br><br>type Unwrap&lt;T&gt; = T extends Promise&lt;infer V&gt; ? V : T;<br>type E = Unwrap&lt;Promise&lt;number&gt;&gt;;         // number<br><br>type MyReturnType&lt;F&gt; = F extends (...args: any[]) =&gt; infer R ? R : never;<br>type F = MyReturnType&lt;() =&gt; boolean&gt;;     // boolean</div>
          <p>This is the idea behind <code>ReturnType</code>, <code>Parameters</code> and <code>Awaited</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Template Literal Types</h3>
          <div class="lc-code">type Method = "GET" | "POST";<br>type Route = `/api/${string}`;<br>type Endpoint = `${Method} ${Route}`;<br><br>const ok: Endpoint = "GET /api/users";       // OK<br>const bad: Endpoint = "PUT /api/users";<br>// Error: Type '"PUT /api/users"' is not assignable to type '`GET /api/${string}` | `POST /api/${string}`'.<br><br>type EventName = "click" | "focus";<br>type Handler = `on${Capitalize&lt;EventName&gt;}`;   // "onClick" | "onFocus"</div>
          <p>Built-in string helpers: <code>Uppercase</code>, <code>Lowercase</code>, <code>Capitalize</code>, <code>Uncapitalize</code>. Unions inside a template produce every combination.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Typed Event Emitter</h3>
          <p>The starter combines these features. One map of event names to payload types drives everything:</p>
          <div class="lc-code">type AppEvents = {<br>&nbsp;&nbsp;login: { user: string };<br>&nbsp;&nbsp;purchase: { item: string; amount: number };<br>};<br><br>bus.on("purchase", (p) =&gt; console.log(p.item, p.amount));   // p is typed from the map<br>bus.emit("purchase", { item: "Headphones", amount: 1999 });<br>bus.emit("purchase", { item: "Pen" });<br>// Error: Property 'amount' is missing in type '{ item: string; }' but required in type '{ item: string; amount: number; }'.</div>
          <p>Output of the valid calls:</p>
          <div class="lc-code">Headphones 1999</div>
          <p>Adding a new event means adding one line to <code>AppEvents</code>; every <code>on</code> and <code>emit</code> call is checked against it.</p>
        </div>
        <div class="lc-card">
          <h3>Which Feature for Which Job?</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Syntax</th><th>Use it to…</th></tr></thead>
            <tbody>
              <tr><td>Mapped type</td><td><code>{ [K in keyof T]: … }</code></td><td>change every property of an object type</td></tr>
              <tr><td>Key remapping</td><td><code>[K in keyof T as …]</code></td><td>rename or filter keys</td></tr>
              <tr><td>Conditional type</td><td><code>T extends U ? X : Y</code></td><td>choose a type based on another type</td></tr>
              <tr><td><code>infer</code></td><td><code>T extends Promise&lt;infer V&gt; ? V : T</code></td><td>extract an inner type</td></tr>
              <tr><td>Template literal type</td><td><code>`on${Capitalize&lt;E&gt;}`</code></td><td>describe string patterns</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Over-engineering: a clever 10-line type that nobody can read. Prefer simple named types unless the generic one removes real duplication.</li>
            <li>Forgetting <code>&amp; string</code> when putting <code>keyof T</code> into a template literal.</li>
            <li>Being surprised by distribution over unions — wrap both sides in brackets (<code>[T] extends [U]</code>) to turn it off.</li>
            <li>Expecting these types to generate runtime code — you still write the functions yourself.</li>
            <li>Writing deeply recursive types that slow the editor down — keep type-level code shallow.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, add a <code>"logout"</code> event to <code>AppEvents</code> with payload <code>{ reason: string }</code> and emit it.</li>
            <li>Write <code>type Nullable&lt;T&gt; = { [K in keyof T]: T[K] | null }</code> and apply it to <code>Student</code>.</li>
            <li>Create a template literal type for Indian vehicle-number prefixes like <code>`${"MH" | "KA" | "TN"}-${number}`</code>.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Mapped types transform each key; <code>+</code>/<code>-</code> modifiers add or remove <code>readonly</code> and <code>?</code>.</li>
            <li>Conditional types pick types with <code>extends ? :</code> and distribute over unions.</li>
            <li><code>infer</code> extracts inner types such as array elements and Promise values.</li>
            <li>Template literal types model string patterns like event names and routes.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When reading a complex type in a library, hover over it in VS Code with a concrete type argument. Seeing the <em>result</em> (<code>{ getName: () =&gt; string }</code>) is far easier than decoding the definition.
        </div>
      HTML
      starter_code: <<~'TS'
        // Lesson 15: mapped, conditional and template literal types
        type Student = { name: string; marks: number; city: string };

        // Mapped type with key remapping: generate getter names
        type Getters<T> = { [K in keyof T & string as `get${Capitalize<K>}`]: () => T[K] };

        function makeGetters<T extends object>(obj: T): Getters<T> {
          const out: Record<string, () => unknown> = {};
          for (const key of Object.keys(obj) as (keyof T & string)[]) {
            out[`get${key[0].toUpperCase()}${key.slice(1)}`] = () => obj[key];
          }
          return out as Getters<T>;
        }
        const g = makeGetters<Student>({ name: "Asha", marks: 88, city: "Pune" });
        console.log(g.getName(), g.getMarks() + 2, g.getCity()); // fully typed getters

        // Conditional type + infer
        type Unwrap<T> = T extends Promise<infer V> ? V : T;
        type ElementType<T> = T extends readonly (infer E)[] ? E : never;
        const cities: ElementType<string[]>[] = ["Kochi", "Agra"];
        const later: Unwrap<Promise<number>> = 42;
        console.log("cities:", cities.join(", "), "| unwrapped:", later);

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
        <p class="lc-lead">There are three ways to connect a value to a type: an <strong>annotation</strong> (<code>: T</code>), an <strong>assertion</strong> (<code>as T</code>) and the <strong><code>satisfies</code></strong> operator. They look similar but behave very differently — and choosing the right one is the difference between safe code and hidden bugs.</p>
        <div class="lc-card">
          <h3>Annotations Check — and Widen</h3>
          <div class="lc-code">type Colour = string | [number, number, number];<br><br>const palette: Record&lt;string, Colour&gt; = {<br>&nbsp;&nbsp;saffron: [255, 153, 51],<br>&nbsp;&nbsp;green: "#138808",<br>};<br><br>palette.green.toUpperCase();<br>// Error: Property 'toUpperCase' does not exist on type 'Colour'.<br>//   Property 'toUpperCase' does not exist on type '[number, number, number]'.<br>palette.blue;   // no error — any string key is allowed by Record&lt;string, …&gt;</div>
          <p>The annotation checks the object, but then TypeScript <strong>forgets the details</strong>: every entry is just <code>Colour</code>, and any key is "allowed".</p>
        </div>
        <div class="lc-card">
          <h3>satisfies: Check Without Widening</h3>
          <p><code>satisfies</code> (TypeScript 4.9+) checks that a value matches a type but <strong>keeps the value's own, precise type</strong>:</p>
          <div class="lc-code">const palette = {<br>&nbsp;&nbsp;saffron: [255, 153, 51],<br>&nbsp;&nbsp;green: "#138808",<br>} satisfies Record&lt;string, Colour&gt;;<br><br>palette.green.toUpperCase();   // OK — green is known to be a string<br>palette.saffron[0];            // OK — saffron is known to be a tuple<br>palette.blue;<br>// Error: Property 'blue' does not exist on type '{ saffron: [number, number, number]; green: string; }'.</div>
          <p>Mistakes are still caught at the definition:</p>
          <div class="lc-code">const bad = { white: [255, 255] } satisfies Record&lt;string, Colour&gt;;<br>// Error: Type '[number, number]' is not assignable to type 'Colour'.</div>
        </div>
        <div class="lc-card">
          <h3>as: Telling the Compiler to Trust You</h3>
          <p>A <strong>type assertion</strong> says "I know better than you, treat this value as type T". It does <em>no</em> checking and <em>no</em> conversion at runtime:</p>
          <div class="lc-code">type User = { name: string; age: number };<br><br>const data = JSON.parse('{"name":"Asha"}') as User;   // a lie: age is missing<br>console.log(data.age.toFixed(0));<br>// compiles fine … then crashes: TypeError: Cannot read properties of undefined (reading 'toFixed')</div>
          <p>TypeScript only blocks assertions between clearly unrelated types (<code>"hello" as number</code> is an error). Forcing it with <code>as unknown as T</code> — a <strong>double assertion</strong> — is a red flag in code review.</p>
          <p>Legitimate uses are rare: DOM elements you know the kind of (<code>document.querySelector("#email") as HTMLInputElement</code>), or code that TypeScript can't follow. For outside data, validate instead (Lessons 8 and 17); for DOM elements, an <code>instanceof</code> check is safer still (Lesson 19).</p>
        </div>
        <div class="lc-card">
          <h3>The Non-Null Assertion !</h3>
          <div class="lc-code">const input = document.querySelector("input");   // HTMLInputElement | null<br>input!.value = "hi";   // "trust me, it's not null"</div>
          <p><code>!</code> removes <code>null</code> and <code>undefined</code> from a type without checking. If you are wrong, you get the same runtime crash TypeScript was trying to prevent. Prefer a real check:</p>
          <div class="lc-code">if (!input) throw new Error("Email input is missing from the page");<br>input.value = "hi";   // narrowed, safe</div>
        </div>
        <div class="lc-card">
          <h3>as const satisfies — the Best of Both</h3>
          <p>For configuration objects, combine <code>as const</code> (keep literal types, make readonly) with <code>satisfies</code> (check the shape):</p>
          <div class="lc-code">type Route = { path: `/${string}`; auth: boolean };<br><br>const ROUTES = {<br>&nbsp;&nbsp;home: { path: "/", auth: false },<br>&nbsp;&nbsp;orders: { path: "/orders", auth: true },<br>} as const satisfies Record&lt;string, Route&gt;;<br><br>type RouteName = keyof typeof ROUTES;       // "home" | "orders"<br>const p = ROUTES.orders.path;               // type: "/orders"</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: satisfies Catches a Mistake, as Hides It</h3>
          <div class="lc-code">type Theme = { primary: string; accent: string };<br><br>const t1 = { primary: "#4f46e5", accnet: "#f97316" } satisfies Theme;<br>// Error: Object literal may only specify known properties, but 'accnet' does not exist in type 'Theme'. Did you mean to write 'accent'?<br><br>const t2 = { primary: "#4f46e5" } as Theme;<br>// no error at all — but t2.accent is undefined at runtime</div>
          <p>Both lines "describe" the object as a <code>Theme</code>, but only <code>satisfies</code> actually checks it.</p>
        </div>
        <div class="lc-card">
          <h3>Before You Write as, Ask…</h3>
          <ol class="lc-list">
            <li>Can I fix the type instead (a union, a generic, a better return type)?</li>
            <li>Can I narrow with a check (<code>typeof</code>, <code>instanceof</code>, a type guard)?</li>
            <li>Does <code>satisfies</code> express what I mean?</li>
            <li>If none of these work, add a comment explaining why the assertion is safe.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Comparison</h3>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Checks the value?</th><th>Resulting type</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>const x: T = v</code></td><td>yes</td><td><code>T</code> (details lost)</td><td>variables that must be exactly <code>T</code></td></tr>
              <tr><td><code>v satisfies T</code></td><td>yes</td><td>the value's own precise type</td><td>config objects, lookup tables</td></tr>
              <tr><td><code>v as T</code></td><td>barely (only obvious mismatches)</td><td><code>T</code></td><td>rare cases TypeScript can't prove</td></tr>
              <tr><td><code>v as const</code></td><td>no</td><td>literal + readonly</td><td>fixed lists and constants</td></tr>
              <tr><td><code>v!</code></td><td>no</td><td>without <code>null</code>/<code>undefined</code></td><td>avoid; prefer a check</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>as</code> to "fix" a type error instead of fixing the data or the type.</li>
            <li>Asserting JSON with <code>as User</code> and trusting it — nothing is checked at runtime.</li>
            <li>Sprinkling <code>!</code> after every <code>querySelector</code> call.</li>
            <li>Annotating a config object with <code>Record&lt;string, …&gt;</code> and losing both key names and precise values — use <code>satisfies</code>.</li>
            <li>Thinking <code>as number</code> converts a string to a number — use <code>Number(value)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>white</code> colour to the starter's palette as <code>[255, 255]</code>. Read what <code>tsc</code> would say.</li>
            <li>Add a new route with the path <code>"orders"</code> (no leading slash) — which part of the <code>Route</code> type rejects it?</li>
            <li>Replace the <code>as User</code> in the starter with a type guard and handle the missing age.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li><code>: T</code> checks and widens; <code>satisfies T</code> checks and keeps precise types.</li>
            <li><code>as T</code> and <code>!</code> skip checking — they are promises you must keep yourself.</li>
            <li><code>as const satisfies T</code> is ideal for typed, literal configuration.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Search your project for <code>as </code> and <code>!.</code> once in a while. Each one is a place where the compiler stopped protecting you — try to replace it with <code>satisfies</code>, a type guard or a real check.
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
        <p class="lc-lead">Most real data arrives asynchronously — from an API, a file, a database. TypeScript types Promises precisely, but it <strong>cannot</strong> know what a server will actually send. This lesson shows how to type async code and how to turn untrusted JSON into safely typed data.</p>
        <div class="lc-card">
          <h3>Typing async Functions</h3>
          <div class="lc-code">type User = { id: number; name: string };<br><br>async function getUserName(id: number): Promise&lt;string&gt; {<br>&nbsp;&nbsp;const user = await loadUser(id);   // user: User<br>&nbsp;&nbsp;return user.name;                  // a string, wrapped in a Promise automatically<br>}<br><br>const n = getUserName(1);            // n: Promise&lt;string&gt; — not a string!<br>const name2 = await getUserName(1);  // string (inside an async function or module)</div>
          <ul class="lc-list">
            <li>An <code>async</code> function's return type is always <code>Promise&lt;T&gt;</code>.</li>
            <li><code>await</code> on a <code>Promise&lt;T&gt;</code> gives you a <code>T</code>.</li>
            <li><code>Awaited&lt;T&gt;</code> unwraps a Promise type at the type level: <code>Awaited&lt;Promise&lt;User&gt;&gt;</code> is <code>User</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Promise.all Keeps Tuple Types</h3>
          <div class="lc-code">const [user, orders] = await Promise.all([loadUser(1), loadOrders(1)]);<br>// user: User, orders: Order[] — each position keeps its own type</div>
        </div>
        <div class="lc-card">
          <h3>The Problem: JSON Is Untyped</h3>
          <p><code>JSON.parse</code> and <code>response.json()</code> return <code>any</code>. Whatever you assign it to, TypeScript believes you:</p>
          <div class="lc-code">async function getUser(id: number): Promise&lt;User&gt; {<br>&nbsp;&nbsp;const res = await fetch("/api/users/" + id);<br>&nbsp;&nbsp;return res.json();   // any → accepted as User without any check!<br>}</div>
          <p>If the server sends <code>{ "id": "7", "fullName": "Asha" }</code>, your code is typed as if <code>name</code> exists — and fails later, far from the cause. Remember: <strong>types are erased at runtime</strong>. The fix is to treat outside data as <code>unknown</code> and <strong>validate</strong> it.</p>
        </div>
        <div class="lc-card">
          <h3>Validate With a Type Guard</h3>
          <div class="lc-code">function isUser(value: unknown): value is User {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;typeof value === "object" &amp;&amp; value !== null &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"id" in value &amp;&amp; typeof value.id === "number" &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;"name" in value &amp;&amp; typeof value.name === "string"<br>&nbsp;&nbsp;);<br>}<br><br>async function getUser(id: number): Promise&lt;User&gt; {<br>&nbsp;&nbsp;const res = await fetch("/api/users/" + id);<br>&nbsp;&nbsp;if (!res.ok) throw new Error("HTTP " + res.status);<br>&nbsp;&nbsp;const data: unknown = await res.json();<br>&nbsp;&nbsp;if (!isUser(data)) throw new Error("Unexpected user data");<br>&nbsp;&nbsp;return data;   // now genuinely a User<br>}</div>
          <p>For bigger projects, writing guards by hand gets tedious. <strong>Schema libraries</strong> such as <strong>Zod</strong> or <strong>Valibot</strong> let you describe the shape once and get both the runtime check and the TypeScript type from it — e.g. with Zod, <code>const UserSchema = z.object({ id: z.number(), name: z.string() })</code> and <code>type User = z.infer&lt;typeof UserSchema&gt;</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: One Generic, Validated Fetch Helper</h3>
          <p>Combine generics (Lesson 10) with type guards so every endpoint is validated the same way:</p>
          <div class="lc-code">async function getJson&lt;T&gt;(url: string, guard: (v: unknown) =&gt; v is T): Promise&lt;T&gt; {<br>&nbsp;&nbsp;const res = await fetch(url, { signal: AbortSignal.timeout(5000) });<br>&nbsp;&nbsp;if (!res.ok) throw new Error("HTTP " + res.status + " for " + url);<br>&nbsp;&nbsp;const data: unknown = await res.json();<br>&nbsp;&nbsp;if (!guard(data)) throw new Error("Unexpected data from " + url);<br>&nbsp;&nbsp;return data;<br>}<br><br>const user = await getJson("/api/users/1", isUser);   // user: User — checked at runtime too</div>
          <p><code>T</code> is inferred from the guard you pass, so the caller never writes a type argument — and can never get unchecked data.</p>
        </div>
        <div class="lc-card">
          <h3>Errors in catch Are unknown</h3>
          <p>Anything can be thrown in JavaScript — not just <code>Error</code> objects. Under <code>strict</code> (<code>useUnknownInCatchVariables</code>), the <code>catch</code> variable is <code>unknown</code>, so you must narrow it:</p>
          <div class="lc-code">try {<br>&nbsp;&nbsp;await getUser(7);<br>} catch (err) {<br>&nbsp;&nbsp;// console.log(err.message);<br>&nbsp;&nbsp;// Error: 'err' is of type 'unknown'.<br>&nbsp;&nbsp;const message = err instanceof Error ? err.message : String(err);<br>&nbsp;&nbsp;console.log("Failed:", message);<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Returning a Result Instead of Throwing</h3>
          <p>The <code>Result</code> type from Lesson 9 works nicely with async code — callers can't forget the error case:</p>
          <div class="lc-code">type Result&lt;T&gt; = { ok: true; value: T } | { ok: false; error: string };<br><br>async function safeGetUser(id: number): Promise&lt;Result&lt;User&gt;&gt; {<br>&nbsp;&nbsp;try {<br>&nbsp;&nbsp;&nbsp;&nbsp;return { ok: true, value: await getUser(id) };<br>&nbsp;&nbsp;} catch (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;return { ok: false, error: err instanceof Error ? err.message : "Unknown error" };<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Trust Levels</h3>
          <table class="lc-table">
            <thead><tr><th>Approach</th><th>Compile-time type</th><th>Runtime safety</th></tr></thead>
            <tbody>
              <tr><td><code>return res.json()</code> into <code>Promise&lt;User&gt;</code></td><td>User (unchecked)</td><td>none</td></tr>
              <tr><td><code>(await res.json()) as User</code></td><td>User (unchecked)</td><td>none — just more visible</td></tr>
              <tr><td><code>unknown</code> + type guard</td><td>User after the check</td><td>yes</td></tr>
              <tr><td>Schema library (Zod, Valibot)</td><td>inferred from the schema</td><td>yes, with good error messages</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Returning <code>res.json()</code> straight into a typed Promise and assuming the data is valid.</li>
            <li>Forgetting <code>await</code> — you get a <code>Promise&lt;User&gt;</code> where you expected a <code>User</code> (TypeScript usually catches this when you use it).</li>
            <li>Writing <code>catch (err: any)</code> to silence the <code>unknown</code> — narrow instead.</li>
            <li>Not checking <code>res.ok</code> — <code>fetch</code> doesn't reject on 404 or 500.</li>
            <li>Validating only the top level and trusting nested arrays and objects.</li>
            <li>Validating the same data again and again deep inside the app — validate once at the border.</li>
            <li>Forgetting that <code>localStorage</code> values are outside data too.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, add an optional <code>city?: string</code> to <code>User</code> and update <code>isUser</code> to accept it only if it is a string.</li>
            <li>Add a fourth fake response with <code>"id": "4"</code> (a string) and check it is rejected.</li>
            <li>Load users 1 and 2 in parallel with <code>Promise.all</code> and print both names.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>async functions return <code>Promise&lt;T&gt;</code>; <code>await</code> unwraps it and <code>Awaited&lt;T&gt;</code> does the same for types.</li>
            <li><code>JSON.parse</code> and <code>res.json()</code> give <code>any</code> — store the result as <code>unknown</code>.</li>
            <li>Validate outside data with type guards or a schema library such as Zod or Valibot.</li>
            <li><code>catch</code> variables are <code>unknown</code>; narrow with <code>instanceof Error</code>.</li>
            <li>Always check <code>res.ok</code> before reading the body.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Draw a line around your app: everything that crosses it (API responses, <code>localStorage</code>, form input, URL parameters) enters as <code>unknown</code> and is validated once at the border. Inside the line, you can trust your types.
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
        <p class="lc-lead">Real TypeScript projects have many files, use npm packages and are configured by <code>tsconfig.json</code>. This lesson covers importing types, how TypeScript learns the types of JavaScript libraries (<code>.d.ts</code> files), and the compiler options that matter — including the new defaults in TypeScript 6.0 and 7.0.</p>
        <div class="lc-card">
          <h3>Importing and Exporting Types</h3>
          <div class="lc-code">// models.ts<br>export interface Product { id: number; name: string; price: number }<br>export type Currency = "INR" | "USD";<br>export function formatPrice(p: Product, c: Currency = "INR"): string { … }<br><br>// cart.ts<br>import { formatPrice } from "./models.js";<br>import type { Product, Currency } from "./models.js";   // type-only import<br>// or, in one line: import { formatPrice, type Product } from "./models.js";</div>
          <p>An <code>import type</code> is <strong>always erased</strong> from the JavaScript output. With the <code>verbatimModuleSyntax</code> option (enabled by <code>tsc --init</code>), TypeScript <em>requires</em> you to mark type-only imports this way, so every tool — tsc, Vite, esbuild, Node's type stripping — knows exactly which imports to keep and which to delete.</p>
          <p>Note the <code>.js</code> extension in the import path: with <code>"module": "nodenext"</code> you write the extension of the <em>compiled</em> file. Projects using a bundler (<code>"moduleResolution": "bundler"</code>) may leave it out.</p>
        </div>
        <div class="lc-card">
          <h3>Declaration Files (.d.ts)</h3>
          <p>A <code>.d.ts</code> file contains <strong>only types</strong> — no implementation. It describes JavaScript code that exists somewhere else:</p>
          <div class="lc-code">// analytics.d.ts — describing a plain JS script loaded with a &lt;script&gt; tag<br>declare const ANALYTICS_VERSION: string;<br>declare function track(event: string, data?: Record&lt;string, unknown&gt;): void;<br><br>// declaring an untyped npm package (a quick fix)<br>declare module "old-chart-lib" {<br>&nbsp;&nbsp;export function draw(el: HTMLElement, values: number[]): void;<br>}</div>
          <p><code>declare</code> means "this exists at runtime; trust me about its type". <code>tsc --declaration</code> (<code>"declaration": true</code>) generates <code>.d.ts</code> files for your own library.</p>
        </div>
        <div class="lc-card">
          <h3>Types for npm Packages</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What to do</th></tr></thead>
            <tbody>
              <tr><td>Package ships its own types (most modern ones: Zod, React Router, Vite…)</td><td>nothing — just install it</td></tr>
              <tr><td>Types live on DefinitelyTyped</td><td><code>npm i -D @types/node</code>, <code>@types/react</code>, …</td></tr>
              <tr><td>No types exist anywhere</td><td>write a small <code>declare module</code> file</td></tr>
            </tbody>
          </table>
          <p><strong>Changed in TypeScript 6.0:</strong> <code>"types"</code> now defaults to <code>[]</code>. Global type packages such as <code>@types/node</code> are no longer picked up automatically — list them: <code>"types": ["node"]</code>. (Types you <code>import</code> from a package still work as before.)</p>
        </div>
        <div class="lc-card">
          <h3>What strict Turns On</h3>
          <p><code>"strict": true</code> is a bundle of checks. Since TypeScript 6.0 it is <strong>on by default</strong>:</p>
          <ul class="lc-list">
            <li><code>noImplicitAny</code> — parameters without types are errors.</li>
            <li><code>strictNullChecks</code> — <code>null</code>/<code>undefined</code> must be handled explicitly.</li>
            <li><code>strictFunctionTypes</code>, <code>strictBindCallApply</code> — safer function assignments and <code>call</code>/<code>apply</code>.</li>
            <li><code>strictPropertyInitialization</code> — class fields must be initialised.</li>
            <li><code>noImplicitThis</code> — <code>this</code> must have a known type.</li>
            <li><code>useUnknownInCatchVariables</code> — <code>catch (err)</code> gives <code>unknown</code>.</li>
            <li><code>strictBuiltinIteratorReturn</code> — built-in iterators have precise result types.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Important Options Beyond strict</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>target</code></td><td>which JavaScript version to output (e.g. <code>es2022</code>); ES5 output is no longer supported in 7.0</td></tr>
              <tr><td><code>module</code> / <code>moduleResolution</code></td><td>how imports work: <code>nodenext</code> for Node.js, <code>bundler</code> for Vite/webpack</td></tr>
              <tr><td><code>lib</code></td><td>which built-in APIs exist (<code>es2022</code>, <code>dom</code>)</td></tr>
              <tr><td><code>outDir</code> / <code>rootDir</code></td><td>where output goes / where sources live (<code>rootDir</code> now defaults to the tsconfig folder)</td></tr>
              <tr><td><code>noEmit</code></td><td>only type-check; a bundler produces the JavaScript</td></tr>
              <tr><td><code>noUncheckedIndexedAccess</code></td><td><code>arr[i]</code> and <code>record[key]</code> include <code>undefined</code></td></tr>
              <tr><td><code>exactOptionalPropertyTypes</code></td><td><code>x?: string</code> means "missing", not "may be set to undefined"</td></tr>
              <tr><td><code>verbatimModuleSyntax</code> / <code>isolatedModules</code></td><td>keep files compilable one at a time by tools like Vite</td></tr>
              <tr><td><code>erasableSyntaxOnly</code></td><td>forbid enums, namespaces and parameter properties so types can simply be stripped</td></tr>
              <tr><td><code>skipLibCheck</code></td><td>don't re-check <code>.d.ts</code> files in <code>node_modules</code> (faster)</td></tr>
            </tbody>
          </table>
          <p>Removed in TypeScript 7.0 (deprecated in 6.0): <code>target: es5</code>, <code>moduleResolution: node</code> (node10), <code>baseUrl</code>, <code>outFile</code>, and the <code>amd</code>/<code>umd</code>/<code>system</code> module formats.</p>
        </div>
        <div class="lc-card">
          <h3>Two Realistic tsconfig Files</h3>
          <div class="lc-code">// Vite + React app (Vite builds, tsc only checks)<br>{<br>&nbsp;&nbsp;"compilerOptions": {<br>&nbsp;&nbsp;&nbsp;&nbsp;"target": "es2022", "lib": ["es2022", "dom"],<br>&nbsp;&nbsp;&nbsp;&nbsp;"module": "esnext", "moduleResolution": "bundler",<br>&nbsp;&nbsp;&nbsp;&nbsp;"jsx": "react-jsx", "noEmit": true,<br>&nbsp;&nbsp;&nbsp;&nbsp;"strict": true, "noUncheckedIndexedAccess": true,<br>&nbsp;&nbsp;&nbsp;&nbsp;"verbatimModuleSyntax": true, "skipLibCheck": true<br>&nbsp;&nbsp;},<br>&nbsp;&nbsp;"include": ["src"]<br>}</div>
          <div class="lc-code">// Node.js service<br>{<br>&nbsp;&nbsp;"compilerOptions": {<br>&nbsp;&nbsp;&nbsp;&nbsp;"target": "es2023", "module": "nodenext",<br>&nbsp;&nbsp;&nbsp;&nbsp;"rootDir": "src", "outDir": "dist",<br>&nbsp;&nbsp;&nbsp;&nbsp;"types": ["node"], "strict": true,<br>&nbsp;&nbsp;&nbsp;&nbsp;"verbatimModuleSyntax": true, "skipLibCheck": true<br>&nbsp;&nbsp;}<br>}</div>
          <p>The simplest start is <code>npx tsc --init</code>, which writes a modern config with <code>strict</code>, <code>noUncheckedIndexedAccess</code>, <code>exactOptionalPropertyTypes</code> and <code>verbatimModuleSyntax</code> already on.</p>
        </div>
        <div class="lc-card">
          <h3>Starter Output</h3>
          <p>Run the starter: every strict-mode rule above is handled in code, so it compiles with <code>strict</code> and <code>noUncheckedIndexedAccess</code> and prints:</p>
          <div class="lc-code">#1: Notebook ₹60 | #2: Pen ₹15 | #9: not found<br>Pen stock: 0 | Eraser stock: 0 | catalog[5]: none<br>parsed: 49.5<br>error: "fifty" is not a price<br>Notebook with GST: ₹71</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Turning <code>strict</code> off to make errors disappear — the errors are the value of TypeScript.</li>
            <li>Upgrading to TypeScript 6/7 and wondering why <code>process</code> or <code>describe</code> is "not found" — add <code>"types": ["node"]</code> (or your test runner's types).</li>
            <li>Mixing type and value imports without <code>type</code>, causing "is a type and must be imported using a type-only import" errors under <code>verbatimModuleSyntax</code>.</li>
            <li>Writing <code>declare module "x"</code> with no body, which quietly types the whole package as <code>any</code>.</li>
            <li>Keeping old options like <code>baseUrl</code> or <code>moduleResolution: "node"</code> — removed in 7.0.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>The starter imitates what <code>strictNullChecks</code> and <code>noUncheckedIndexedAccess</code> force you to write. Remove one of the checks and think about which error <code>tsc</code> would report.</li>
            <li>On your computer, run <code>npm init -y</code>, <code>npm i -D typescript</code> and <code>npx tsc --init</code>, then read the generated <code>tsconfig.json</code>.</li>
            <li>Write a <code>.d.ts</code> declaration for a global function <code>showToast(message: string): void</code>.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Use <code>import type</code> (required by <code>verbatimModuleSyntax</code>) for imports that are only types.</li>
            <li><code>.d.ts</code> files and <code>declare</code> describe JavaScript that exists elsewhere; <code>@types/*</code> packages fill gaps.</li>
            <li>Since TypeScript 6.0, <code>strict</code> is on and <code>types</code> defaults to <code>[]</code>; 7.0 removed ES5 output and other legacy options.</li>
            <li>Run <code>tsc --noEmit</code> in CI because bundlers do not type-check.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Run <code>npx tsc --noEmit</code> in CI (your automated checks) on every pull request. Bundlers like Vite strip types without checking them, so without this step type errors can slip into production.
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
        <p class="lc-lead">Most TypeScript runs in a browser, and the browser's objects — elements, events, forms — all have types. Knowing what <code>querySelector</code> really returns, how to narrow an <code>Element</code> to an <code>HTMLInputElement</code> and how event types are chosen lets you write DOM code with no <code>any</code> and almost no <code>as</code>.</p>
        <div class="lc-card">
          <h3>Where DOM Types Come From</h3>
          <p>The types for <code>document</code>, <code>HTMLElement</code>, <code>MouseEvent</code> and friends live in TypeScript's built-in <code>lib.dom.d.ts</code>. They are available when <code>"lib"</code> includes <code>"dom"</code> (the default when you don't set <code>lib</code>, and set by the Vite templates). A Node.js project usually leaves <code>"dom"</code> out — then <code>document</code> is correctly "not found".</p>
          <p>Element types form a family: <code>EventTarget</code> → <code>Node</code> → <code>Element</code> → <code>HTMLElement</code> → specific types such as <code>HTMLInputElement</code>, <code>HTMLButtonElement</code>, <code>HTMLFormElement</code>. Only the specific types know about <code>value</code>, <code>disabled</code> or <code>checked</code>.</p>
        </div>
        <div class="lc-card">
          <h3>What Selecting Returns</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td><code>document.querySelector("input")</code></td><td><code>HTMLInputElement | null</code> — tag names are understood</td></tr>
              <tr><td><code>document.querySelector(".price")</code></td><td><code>Element | null</code> — a class could be on any element</td></tr>
              <tr><td><code>document.getElementById("total")</code></td><td><code>HTMLElement | null</code></td></tr>
              <tr><td><code>document.querySelectorAll("li")</code></td><td><code>NodeListOf&lt;HTMLLIElement&gt;</code> (never null, may be empty)</td></tr>
              <tr><td><code>document.createElement("button")</code></td><td><code>HTMLButtonElement</code> (never null)</td></tr>
              <tr><td><code>document.querySelector&lt;HTMLInputElement&gt;("#email")</code></td><td><code>HTMLInputElement | null</code> — your claim, not checked</td></tr>
            </tbody>
          </table>
          <p>Every "find" can return <code>null</code>, because the element might not be on the page. <code>strict</code> makes you deal with that:</p>
          <div class="lc-code">const price = document.querySelector(".price");<br>price.textContent = "₹60";<br>// Error: 'price' is possibly 'null'.<br><br>const qty = document.querySelector("#qty");<br>console.log(qty?.value);<br>// Error: Property 'value' does not exist on type 'Element'.</div>
        </div>
        <div class="lc-card">
          <h3>Narrow With instanceof, Not as</h3>
          <p>The safest way from <code>Element | null</code> to the type you need is a runtime check — <code>instanceof</code> narrows <em>and</em> handles <code>null</code> in one step:</p>
          <div class="lc-code">const qty = document.querySelector("#qty");<br>if (qty instanceof HTMLInputElement) {<br>&nbsp;&nbsp;console.log(qty.valueAsNumber + 1);   // qty: HTMLInputElement here<br>}<br><br>// A reusable helper: find it and check its kind, or fail loudly<br>function mustFind&lt;T extends Element&gt;(selector: string, kind: { new (): T }): T {<br>&nbsp;&nbsp;const el = document.querySelector(selector);<br>&nbsp;&nbsp;if (!(el instanceof kind)) throw new Error(`${selector} is missing or not the right element`);<br>&nbsp;&nbsp;return el;<br>}<br>const email = mustFind("#email", HTMLInputElement);   // HTMLInputElement</div>
          <table class="lc-table">
            <thead><tr><th>Way</th><th>Checks at runtime?</th><th>If the HTML changes</th></tr></thead>
            <tbody>
              <tr><td><code>el instanceof HTMLInputElement</code></td><td>yes</td><td>your <code>else</code> branch or error runs</td></tr>
              <tr><td><code>querySelector("input")</code> (tag name)</td><td>the tag is part of the query</td><td>you get <code>null</code>, which you must handle</td></tr>
              <tr><td><code>as HTMLInputElement</code> / <code>querySelector&lt;T&gt;</code></td><td>no</td><td>crash later with a confusing error</td></tr>
              <tr><td><code>el!</code></td><td>no</td><td><code>TypeError: Cannot read properties of null</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Event Types Come From the Event Name</h3>
          <p><code>addEventListener</code> looks the event name up in a map inside <code>lib.dom.d.ts</code>, so an inline handler gets the right type without annotations:</p>
          <table class="lc-table">
            <thead><tr><th>Event name</th><th><code>event</code> type</th><th>Useful properties</th></tr></thead>
            <tbody>
              <tr><td><code>"click"</code></td><td><code>PointerEvent</code> (a kind of <code>MouseEvent</code>)</td><td><code>clientX</code>, <code>button</code></td></tr>
              <tr><td><code>"keydown"</code></td><td><code>KeyboardEvent</code></td><td><code>key</code>, <code>ctrlKey</code></td></tr>
              <tr><td><code>"input"</code>, <code>"change"</code></td><td><code>Event</code></td><td><code>target</code></td></tr>
              <tr><td><code>"submit"</code></td><td><code>SubmitEvent</code></td><td><code>submitter</code>, <code>preventDefault()</code></td></tr>
            </tbody>
          </table>
          <p>But <code>event.target</code> is only <code>EventTarget | null</code> — TypeScript can't know which child was clicked or typed into. Narrow it:</p>
          <div class="lc-code">button.addEventListener("click", (event) =&gt; {<br>&nbsp;&nbsp;event.target.disabled = true;<br>&nbsp;&nbsp;// Error: 'event.target' is possibly 'null'.<br>&nbsp;&nbsp;// Error: Property 'disabled' does not exist on type 'EventTarget'.<br>&nbsp;&nbsp;if (event.target instanceof HTMLButtonElement) event.target.disabled = true;   // OK<br>});</div>
          <p>A handler written as a separate function needs the type written out: <code>function onKey(event: KeyboardEvent) { … }</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Typed Order Form</h3>
          <div class="lc-code">form.addEventListener("submit", (event) =&gt; {<br>&nbsp;&nbsp;event.preventDefault();<br>&nbsp;&nbsp;const data = new FormData(form);<br>&nbsp;&nbsp;const item = data.get("item");         // FormDataEntryValue | null = string | File | null<br>&nbsp;&nbsp;const qty = Number(data.get("qty"));   // inputs always give strings: convert<br>&nbsp;&nbsp;if (typeof item !== "string" || !Number.isInteger(qty) || qty &lt; 1) {<br>&nbsp;&nbsp;&nbsp;&nbsp;totalText.textContent = "Invalid order";<br>&nbsp;&nbsp;} else {<br>&nbsp;&nbsp;&nbsp;&nbsp;totalText.textContent = `${qty} x ${item} = ₹${qty * 60}`;<br>&nbsp;&nbsp;}<br>});</div>
          <p>With item "Notebook" and quantity 5, the paragraph shows:</p>
          <div class="lc-code">5 x Notebook = ₹300</div>
          <p>Two more DOM values that are always strings: <code>input.value</code> (use <code>valueAsNumber</code> or <code>Number()</code>) and <code>el.dataset.id</code>, typed <code>string | undefined</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>DOM types come from <code>lib.dom.d.ts</code>; include <code>"dom"</code> in <code>lib</code> for browser code.</li>
            <li>Tag-name selectors and <code>createElement</code> give specific types; class and id selectors give <code>Element</code> or <code>HTMLElement</code>, always <code>| null</code>.</li>
            <li>Narrow with <code>instanceof</code>; treat <code>as</code>, <code>querySelector&lt;T&gt;</code> and <code>!</code> as unchecked promises.</li>
            <li>Inline handlers get their event type from the event name; <code>event.target</code> still needs narrowing.</li>
            <li><code>FormData.get</code> returns <code>string | File | null</code>, and input values are strings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Starter Output</h3>
          <p>The starter builds a small form in code, finds its parts with typed helpers and fires real events. Running it prints:</p>
          <div class="lc-code">button type: submit<br>qty value: 3 | as a number: 3<br>li: LI | data-id: 42<br>input event, new value: 5<br>submitted: 5 x Notebook = ₹300<br>page reload prevented: true</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>document.querySelector("#qty") as HTMLInputElement</code> everywhere — it hides both "missing element" and "wrong element" bugs.</li>
            <li>Adding <code>!</code> after every selector to silence <code>possibly 'null'</code>.</li>
            <li>Reading <code>event.target.value</code> directly — narrow <code>event.target</code> with <code>instanceof</code> first.</li>
            <li>Doing maths with <code>input.value</code>: <code>"3" + 1</code> is <code>"31"</code>. Convert with <code>valueAsNumber</code> or <code>Number()</code>.</li>
            <li>Leaving <code>"dom"</code> out of <code>lib</code> in a browser project (or adding it to a Node.js project, which then accepts <code>document</code> code that will crash).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, change <code>mustFind(".total", HTMLParagraphElement)</code> to <code>HTMLInputElement</code> and run it. Which error do you get, and when?</li>
            <li>Set the quantity to <code>"0"</code> before the submit event and check that "Invalid order" is shown.</li>
            <li>Add a <code>keydown</code> listener to <code>qtyInput</code> that logs <code>event.key</code>, and fire it with <code>new KeyboardEvent("keydown", { key: "Enter" })</code>. Hover over <code>event</code> in a real editor to see its type.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you're not sure what an element or event is, hover over it in VS Code. If the type is <code>Element</code> or <code>EventTarget</code>, add an <code>instanceof</code> check rather than reaching for <code>as</code>.
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
        <p class="lc-lead">React and TypeScript are the most common pairing in front-end jobs today. Types describe each component's props, state and events, so your editor catches a missing prop or a wrong event handler before you open the browser.</p>
        <div class="lc-card">
          <h3>Starting a Project</h3>
          <div class="lc-code">npm create vite@latest my-app -- --template react-ts<br>cd my-app<br>npm install<br>npm run dev</div>
          <ul class="lc-list">
            <li><strong>Vite</strong> is the standard way to start a React + TypeScript app (current React: 19).</li>
            <li>Components live in <code>.tsx</code> files — TypeScript files that may contain JSX.</li>
            <li>Vite strips types for speed; run <code>npx tsc --noEmit</code> (or <code>npm run build</code>, which runs <code>tsc -b</code> in the template) to type-check.</li>
            <li><strong>Create React App</strong> (<code>npx create-react-app</code>) was deprecated in February 2025 — old way, don't use it for new projects. Frameworks such as Next.js or React Router are the other official starting points.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Typing Props</h3>
          <div class="lc-code">type ProductCardProps = {<br>&nbsp;&nbsp;name: string;<br>&nbsp;&nbsp;price: number;<br>&nbsp;&nbsp;inStock?: boolean;                        // optional prop<br>&nbsp;&nbsp;onAdd: (name: string) =&gt; void;            // callback prop<br>};<br><br>function ProductCard({ name, price, inStock = true, onAdd }: ProductCardProps) {<br>&nbsp;&nbsp;return (<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;div className="card"&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;h3&gt;{name}&lt;/h3&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;₹{price}&lt;/p&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;button disabled={!inStock} onClick={() =&gt; onAdd(name)}&gt;Add&lt;/button&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;<br>&nbsp;&nbsp;);<br>}<br><br>&lt;ProductCard name="Pen" onAdd={console.log} /&gt;<br>// Error: Property 'price' is missing in type '{ name: string; onAdd: …; }' but required in type 'ProductCardProps'.</div>
          <p>A component is just a function whose parameter is the props object. Annotate that parameter; the return type (JSX) is inferred. <code>React.FC</code> is optional and not needed.</p>
        </div>
        <div class="lc-card">
          <h3>children and Extending HTML Props</h3>
          <div class="lc-code">import type { ReactNode, ComponentProps } from "react";<br><br>type PanelProps = { title: string; children: ReactNode };   // anything React can render<br>function Panel({ title, children }: PanelProps) {<br>&nbsp;&nbsp;return &lt;section&gt;&lt;h2&gt;{title}&lt;/h2&gt;{children}&lt;/section&gt;;<br>}<br><br>// Accept every normal &lt;button&gt; prop, plus our own variant prop<br>type ButtonProps = ComponentProps&lt;"button"&gt; &amp; { variant?: "primary" | "danger" };<br>function Button({ variant = "primary", ...rest }: ButtonProps) {<br>&nbsp;&nbsp;return &lt;button className={"btn-" + variant} {...rest} /&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>useState and useRef</h3>
          <div class="lc-code">const [count, setCount] = useState(0);                     // inferred: number<br>const [user, setUser] = useState&lt;User | null&gt;(null);       // explicit: starts null<br>const [items, setItems] = useState&lt;string[]&gt;([]);          // empty array needs a type<br><br>const inputRef = useRef&lt;HTMLInputElement&gt;(null);<br>inputRef.current?.focus();                                   // current may be null</div>
          <p>Write the type argument when the initial value doesn't show the full type (<code>null</code>, <code>[]</code>). <code>setCount("5")</code> is then an error.</p>
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
          <p>When the handler is written inline (<code>onChange={(e) =&gt; setQuery(e.target.value)}</code>), <code>e</code> is typed automatically by contextual typing.</p>
        </div>
        <div class="lc-card">
          <h3>useReducer With a Discriminated Union</h3>
          <div class="lc-code">type CartAction =<br>&nbsp;&nbsp;| { type: "add"; name: string; price: number }<br>&nbsp;&nbsp;| { type: "remove"; name: string }<br>&nbsp;&nbsp;| { type: "clear" };<br><br>function cartReducer(state: CartItem[], action: CartAction): CartItem[] {<br>&nbsp;&nbsp;switch (action.type) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "add": return [...state, { name: action.name, price: action.price }];<br>&nbsp;&nbsp;&nbsp;&nbsp;case "remove": return state.filter((i) =&gt; i.name !== action.name);<br>&nbsp;&nbsp;&nbsp;&nbsp;case "clear": return [];<br>&nbsp;&nbsp;}<br>}<br><br>const [cart, dispatch] = useReducer(cartReducer, []);<br>dispatch({ type: "add", name: "Pen" });<br>// Error: Property 'price' is missing …</div>
          <p>This is the discriminated-union pattern from Lesson 9 — the most important TypeScript skill for React state.</p>
        </div>
        <div class="lc-card">
          <h3>Typing a Custom Hook</h3>
          <p>A custom hook is a function, so type its parameters and (often) its return value. Returning a tuple needs <code>as const</code> or an explicit type, otherwise it widens to an array:</p>
          <div class="lc-code">function useToggle(initial = false) {<br>&nbsp;&nbsp;const [on, setOn] = useState(initial);<br>&nbsp;&nbsp;const toggle = () =&gt; setOn((v) =&gt; !v);<br>&nbsp;&nbsp;return [on, toggle] as const;   // readonly [boolean, () =&gt; void]<br>}<br><br>const [isOpen, toggleOpen] = useToggle();</div>
        </div>
        <div class="lc-card">
          <h3>Props That Depend on Each Other</h3>
          <p>A discriminated union can make prop combinations safe — for example, a link-style button needs an <code>href</code>, a normal one needs an <code>onClick</code>:</p>
          <div class="lc-code">type ActionProps =<br>&nbsp;&nbsp;| { as: "link"; href: string; label: string }<br>&nbsp;&nbsp;| { as: "button"; onClick: () =&gt; void; label: string };<br><br>&lt;Action as="link" label="Docs" /&gt;<br>// Error: Property 'href' is missing …</div>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Start new projects with <code>npm create vite@latest -- --template react-ts</code>; Create React App is deprecated.</li>
            <li>Type props with a <code>type</code>/<code>interface</code>, use <code>ReactNode</code> for children and <code>ComponentProps&lt;"tag"&gt;</code> to extend HTML props.</li>
            <li>Give <code>useState</code> a type argument when the initial value is <code>null</code> or <code>[]</code>.</li>
            <li>Use <code>React.ChangeEvent</code>, <code>FormEvent</code> and <code>MouseEvent</code> for handlers written separately.</li>
            <li>Model reducer actions and related props as discriminated unions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Starter Output</h3>
          <p>The starter models a component and a reducer without JSX. Running it prints:</p>
          <div class="lc-code">&nbsp;&nbsp;(clicked Add: Pen)<br>[Pen | ₹20 | Add to cart]<br>[Bag | ₹999 | Out of stock]<br>Cart: 2 x Pen | total ₹40</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>props: any</code> — you lose every benefit.</li>
            <li><code>useState([])</code> without a type — TypeScript infers <code>never[]</code>, so nothing can be added.</li>
            <li>Typing <code>children</code> as <code>JSX.Element</code> — use <code>ReactNode</code> to allow text, numbers and lists too.</li>
            <li>Forgetting that <code>ref.current</code> is <code>null</code> until the element renders.</li>
            <li>Starting a new project with Create React App.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>This editor can't run JSX, so the starter models components as typed functions that return strings, plus a typed reducer — the same types you would use in a real <code>.tsx</code> file.</p>
          <ol class="lc-list">
            <li>Add a <code>"setQty"</code> action with <code>name</code> and <code>qty</code> fields to the reducer.</li>
            <li>Give <code>ProductCard</code> an optional <code>badge?: "new" | "sale"</code> prop.</li>
            <li>Create the Vite project above on your computer and convert <code>ProductCard</code> into real JSX.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Hover over a JSX element's props in VS Code to see exactly which props it accepts. For DOM elements, <code>ComponentProps&lt;"input"&gt;</code> shows every attribute React knows about.
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
        <p class="lc-lead">Let's build a small but complete <strong>Expense Tracker</strong> that uses the whole course: literal unions from <code>as const</code>, discriminated-union actions with an exhaustive reducer, generics, utility types, a class with private state, <code>satisfies</code> for configuration, runtime validation of imported JSON, and async saving.</p>
        <div class="lc-card">
          <h3>Features</h3>
          <ul class="lc-list">
            <li>Add, update and remove expenses (title, amount in ₹, category, date).</li>
            <li>Import expenses from JSON — and reject invalid rows safely.</li>
            <li>Show totals per category and warn when a monthly budget is exceeded.</li>
            <li>"Save" asynchronously (simulated server) with typed success/failure.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Which Lesson Powers Which Part?</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>TypeScript feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Categories</td><td><code>as const</code> array → literal union</td><td>7</td></tr>
              <tr><td><code>Expense</code> shape</td><td>object types, <code>readonly</code></td><td>4</td></tr>
              <tr><td>New / edited expenses</td><td><code>Omit</code>, <code>Partial</code></td><td>14</td></tr>
              <tr><td>Actions and reducer</td><td>discriminated union + <code>never</code> check</td><td>9</td></tr>
              <tr><td><code>groupBy</code> helper</td><td>generics with <code>K extends PropertyKey</code></td><td>10–11</td></tr>
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
          <p>Adding a category means changing <strong>one</strong> line; every <code>Record&lt;Category, …&gt;</code> in the app then demands a value for it.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: Actions and an Exhaustive Reducer</h3>
          <div class="lc-code">type Action =<br>&nbsp;&nbsp;| { type: "add"; expense: NewExpense }<br>&nbsp;&nbsp;| { type: "update"; id: number; patch: ExpensePatch }<br>&nbsp;&nbsp;| { type: "remove"; id: number };<br><br>function reduce(list: readonly Expense[], action: Action, nextId: number): Expense[] {<br>&nbsp;&nbsp;switch (action.type) {<br>&nbsp;&nbsp;&nbsp;&nbsp;case "add": return [...list, { id: nextId, ...action.expense }];<br>&nbsp;&nbsp;&nbsp;&nbsp;case "update": return list.map((e) =&gt; (e.id === action.id ? { ...e, ...action.patch } : e));<br>&nbsp;&nbsp;&nbsp;&nbsp;case "remove": return list.filter((e) =&gt; e.id !== action.id);<br>&nbsp;&nbsp;&nbsp;&nbsp;default: {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;const unhandled: never = action;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;throw new Error("Unknown action " + JSON.stringify(unhandled));<br>&nbsp;&nbsp;&nbsp;&nbsp;}<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Step 3: A Generic Helper and a Checked Config</h3>
          <div class="lc-code">function sumBy&lt;T, K extends PropertyKey&gt;(items: readonly T[], key: (item: T) =&gt; K, value: (item: T) =&gt; number) {<br>&nbsp;&nbsp;const out = {} as Partial&lt;Record&lt;K, number&gt;&gt;;<br>&nbsp;&nbsp;for (const item of items) {<br>&nbsp;&nbsp;&nbsp;&nbsp;const k = key(item);<br>&nbsp;&nbsp;&nbsp;&nbsp;out[k] = (out[k] ?? 0) + value(item);<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return out;<br>}<br><br>const BUDGET = { food: 6000, travel: 3000, bills: 5000, fun: 2000 } satisfies Record&lt;Category, number&gt;;</div>
          <p><code>PropertyKey</code> is the built-in type <code>string | number | symbol</code> — anything usable as an object key. <code>satisfies</code> checks that every category has a budget while keeping the exact numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: Validating Imported JSON</h3>
          <div class="lc-code">function isNewExpense(v: unknown): v is NewExpense {<br>&nbsp;&nbsp;if (typeof v !== "object" || v === null) return false;<br>&nbsp;&nbsp;const r = v as Record&lt;string, unknown&gt;;<br>&nbsp;&nbsp;return typeof r.title === "string" &amp;&amp; typeof r.amount === "number" &amp;&amp; r.amount &gt; 0 &amp;&amp;<br>&nbsp;&nbsp;&nbsp;&nbsp;typeof r.date === "string" &amp;&amp; (CATEGORIES as readonly unknown[]).includes(r.category);<br>}</div>
          <p>The single <code>as Record&lt;string, unknown&gt;</code> is safe: we already proved <code>v</code> is a non-null object, and every property is still <code>unknown</code> until checked.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: The Store and the Main Flow</h3>
          <p>The store keeps the list in a <code>#private</code> field, so the only way to change it is <code>dispatch(action)</code>. Reading goes through a <code>readonly Expense[]</code> getter:</p>
          <div class="lc-code">const store = new ExpenseStore();<br>const rows: unknown = JSON.parse(importedText);          // outside data → unknown<br>const valid = (Array.isArray(rows) ? rows : []).filter(isNewExpense);   // NewExpense[]<br>for (const expense of valid) store.dispatch({ type: "add", expense });<br><br>const totals = sumBy(store.all, (e) =&gt; e.category, (e) =&gt; e.amount);   // Partial&lt;Record&lt;Category, number&gt;&gt;<br>const saved = await store.save();                         // Result&lt;number&gt;<br>if (!saved.ok) console.log("Save failed:", saved.error);</div>
          <p>Because <code>isNewExpense</code> is a type predicate, <code>filter</code> returns <code>NewExpense[]</code> — no assertion needed anywhere in the main flow.</p>
        </div>
        <div class="lc-card">
          <h3>Expected Output of the Starter</h3>
          <div class="lc-code">Imported 3 of 4 rows (rejected: {"title":"Movie","amount":-200,"ca...)<br>food   ₹6450 / ₹6000  OVER BUDGET<br>travel ₹1200 / ₹3000<br>bills  ₹2300 / ₹5000<br>fun    ₹0 / ₹2000<br>Saved 4 expenses (total ₹9950)</div>
          <p>The negative-amount "Movie" row fails <code>isNewExpense</code>, so only three rows are imported; a fourth expense (Restaurant, ₹2,250) is then added in code, pushing food over its budget.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Typing imported data with <code>as Expense[]</code> instead of validating it.</li>
            <li>Duplicating the category list in several places instead of deriving the type from <code>CATEGORIES</code>.</li>
            <li>Mutating the expense array inside the reducer — always return a new array.</li>
            <li>Leaving out the <code>never</code> check, so a new action type is silently ignored.</li>
            <li>Storing money as floating-point rupees in real finance apps — use whole paise (integers) there.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ol class="lc-list">
            <li>Add a <code>"health"</code> category. Which line does TypeScript ask you to update?</li>
            <li>Add a <code>{ type: "clear" }</code> action and handle it in the reducer.</li>
            <li>Add <code>monthly(month: string)</code> to the store that returns only that month's expenses.</li>
            <li>Replace the hand-written guard with a Zod schema in a real Vite project and infer <code>NewExpense</code> from it.</li>
            <li>Build a UI that dispatches the same <code>Action</code> type: a plain form with typed events (Lesson 19) or React components (Lesson 20).</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Summary</h3>
          <ul class="lc-list">
            <li>Define the core types once (<code>as const</code> categories, <code>Expense</code>) and derive the rest with utility types.</li>
            <li>Model every change as a discriminated-union action handled by an exhaustive reducer.</li>
            <li>Validate all outside data at the border and let types flow from there.</li>
            <li>Return typed <code>Result</code> values from async operations instead of hoping nothing fails.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Notice how little of the code is type annotations — most types are defined once at the top and then inferred everywhere. That is what good TypeScript looks like: a few precise types, lots of checked, ordinary JavaScript.
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

module JavaScriptContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Introduction to JavaScript</h1>
        </div>
        <p class="lc-lead">JavaScript is the <strong>programming language of the web</strong>. HTML gives a page its structure, CSS gives it style, and JavaScript gives it <em>behaviour</em> — it reacts to clicks, updates content and talks to servers. Every browser has a JavaScript engine built in, so you can start with zero installation.</p>
        <div class="lc-card">
          <h3>What JavaScript Does</h3>
          <ul class="lc-list">
            <li><strong>Reacts to users</strong> — clicks, key presses, form submissions (think of the "Pay" button in a UPI app).</li>
            <li><strong>Changes the page</strong> without reloading — show a cart total, hide a menu, add a comment.</li>
            <li><strong>Talks to servers</strong> — load cricket scores or weather data in the background.</li>
            <li><strong>Runs outside the browser too</strong> — Node.js runs JavaScript on servers and laptops, which is how many backends and tools are built.</li>
          </ul>
          <p>The language's official name is <strong>ECMAScript</strong>. A new edition comes out every June: ES2015, ES2016 … ES2025, and the newest, <strong>ES2026</strong>, approved on 30 June 2026 (it adds things like <code>Map.prototype.getOrInsert</code>, <code>Math.sumPrecise</code> and <code>Error.isError</code>). "Modern JavaScript" in this course means ES2015 and later, which every current browser supports. Brand-new features reach browsers at different times, so check a feature's "Baseline" status on MDN before relying on it.</p>
        </div>
        <div class="lc-card">
          <h3>HTML vs CSS vs JavaScript</h3>
          <table class="lc-table">
            <thead><tr><th>Technology</th><th>Job</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>HTML</td><td>Structure and content</td><td>A button that says "Add to cart"</td></tr>
              <tr><td>CSS</td><td>Appearance</td><td>The button is orange with rounded corners</td></tr>
              <tr><td>JavaScript</td><td>Behaviour</td><td>Clicking the button updates the cart count</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Your First Program</h3>
          <p><code>console.log()</code> prints a value to the <strong>console</strong> — a panel developers use to see what their code is doing. In this course, the output panel next to the editor shows everything you log.</p>
          <div class="lc-code">console.log("Namaste, JavaScript!");<br>console.log(2 + 3);<br>console.log("Total:", 250 * 4);</div>
          <p>Output:</p>
          <div class="lc-code">Namaste, JavaScript!<br>5<br>Total: 1000</div>
          <p>Notice that <code>console.log</code> can take several values separated by commas; it prints them with a space in between. Each statement usually ends with a semicolon <code>;</code>. JavaScript can often insert missing semicolons for you, but writing them keeps your code clear.</p>
        </div>
        <div class="lc-card">
          <h3>Comments</h3>
          <p>Comments are notes for humans. JavaScript ignores them.</p>
          <div class="lc-code">// A single-line comment<br><br>/* A comment that<br>&nbsp;&nbsp;&nbsp;spans several lines */<br><br>console.log("Comments are skipped"); // this part is ignored too</div>
        </div>
        <div class="lc-card">
          <h3>Where JavaScript Goes in a Web Page</h3>
          <p>In a real website you keep JavaScript in its own <code>.js</code> file and load it with a <code>&lt;script&gt;</code> tag:</p>
          <div class="lc-code">&lt;!-- index.html --&gt;<br>&lt;head&gt;<br>&nbsp;&nbsp;&lt;script src="app.js" defer&gt;&lt;/script&gt;<br>&lt;/head&gt;</div>
          <table class="lc-table">
            <thead><tr><th>Script tag</th><th>When it runs</th><th>Use it?</th></tr></thead>
            <tbody>
              <tr><td><code>&lt;script src="app.js"&gt;</code> in <code>&lt;head&gt;</code></td><td>Immediately — before the page's HTML exists, and it blocks page loading</td><td>Avoid</td></tr>
              <tr><td><code>&lt;script src="app.js" defer&gt;</code></td><td>After the HTML is parsed, in order</td><td>Yes — the usual choice</td></tr>
              <tr><td><code>&lt;script type="module" src="app.js"&gt;</code></td><td>Deferred automatically; lets you use <code>import</code>/<code>export</code></td><td>Yes — for modern projects (Lesson 21)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Ways to See Output</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Where the output appears</th><th>Verdict</th></tr></thead>
            <tbody>
              <tr><td><code>console.log()</code></td><td>Browser DevTools console</td><td>Your main debugging tool</td></tr>
              <tr><td><code>element.textContent = …</code></td><td>Inside the web page</td><td>How real apps show results (Lesson 16)</td></tr>
              <tr><td><code>alert()</code></td><td>A pop-up box that blocks the page</td><td>Rarely — annoying for users</td></tr>
              <tr><td><code>document.write()</code></td><td>Writes raw HTML into the page</td><td>Old way — don't use</td></tr>
            </tbody>
          </table>
          <p>Open the DevTools console in any browser with <strong>F12</strong> (or <strong>Cmd + Option + J</strong> in Chrome on a Mac) and type JavaScript directly — great for quick experiments.</p>
        </div>
        <div class="lc-card">
          <h3>Reading Error Messages</h3>
          <p>When something goes wrong, JavaScript stops and prints an error with its <strong>type</strong> and a message. Read it — it usually tells you exactly what is wrong.</p>
          <div class="lc-code">console.log("Start");<br>consol.log("Oops");   // typo in "console"<br>console.log("End");   // never runs</div>
          <p>Output:</p>
          <div class="lc-code">Start<br>ReferenceError: consol is not defined</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Confusing Java and JavaScript — they are completely different languages with similar names.</li>
            <li>Typing <code>Console.log</code> — JavaScript is <strong>case-sensitive</strong>; it must be <code>console.log</code>.</li>
            <li>Forgetting quotes around text: <code>console.log(Hello)</code> looks for a variable called <code>Hello</code> and throws a <code>ReferenceError</code>.</li>
            <li>Loading a script in <code>&lt;head&gt;</code> without <code>defer</code> and then wondering why it cannot find page elements.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter code and read each line of output.</li>
            <li>Add a line that prints your name and your city, for example <code>console.log("Name:", "Priya", "| City:", "Pune");</code></li>
            <li>Print how many minutes are in a week (<code>7 * 24 * 60</code>) with a clear label.</li>
            <li>Break something on purpose (remove a quote) and read the error message.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Make <code>console.log</code> your habit. Whenever you are unsure what a value is, log it with a label — <code>console.log("price:", price)</code> — and let the computer tell you.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 1: your first JavaScript program
        // Press Run. Everything you console.log appears in the output panel.

        console.log("Namaste, JavaScript!");
        console.log("");

        // console.log can print text, numbers and true/false values
        console.log("Text:", "Hello");
        console.log("Number:", 42);
        console.log("Decimal:", 3.5);
        console.log("Boolean:", true);
        console.log("");

        // JavaScript can do maths for you
        console.log("10 + 5 =", 10 + 5);
        console.log("100 / 4 =", 100 / 4);
        console.log("2 ** 10 =", 2 ** 10);
        console.log("Minutes in a day:", 24 * 60);
        console.log("");

        // Joining text with +
        console.log("Welcome to " + "AI Academy" + "!");

        // Several values in one call are separated by spaces
        console.log("Cart:", 3, "items, total ₹", 3 * 199);

        /* This is a multi-line comment.
           JavaScript ignores it completely. */
        console.log("Done! Now try the tasks in the lesson.");
      JS
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Variables and Data Types</h1>
        </div>
        <p class="lc-lead">A <strong>variable</strong> is a named box that holds a value. Every value has a <strong>type</strong> — text, number, true/false and so on. Knowing both is the first step to writing any program.</p>
        <div class="lc-card">
          <h3>Declaring Variables: const and let</h3>
          <div class="lc-code">const appName = "AI Academy";   // cannot be reassigned<br>let score = 0;                  // can be reassigned<br><br>score = score + 10;             // OK<br>// appName = "Other";           // TypeError: Assignment to constant variable.</div>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Reassign?</th><th>Scope</th><th>Use it?</th></tr></thead>
            <tbody>
              <tr><td><code>const</code></td><td>No</td><td>Block <code>{ }</code></td><td>Yes — your default</td></tr>
              <tr><td><code>let</code></td><td>Yes</td><td>Block <code>{ }</code></td><td>Yes — when the value must change</td></tr>
              <tr><td><code>var</code></td><td>Yes (and can be redeclared)</td><td>Whole function</td><td>Old way — don't use</td></tr>
            </tbody>
          </table>
          <p><code>var</code> is from before 2015. It ignores <code>{ }</code> blocks and is "hoisted" as <code>undefined</code>, which causes confusing bugs (Lesson 7 explains why). You will still see it in old code, but never write it in new code.</p>
        </div>
        <div class="lc-card">
          <h3>Naming Rules</h3>
          <ul class="lc-list">
            <li>Names may contain letters, digits, <code>_</code> and <code>$</code>, but cannot start with a digit: <code>total2</code> is fine, <code>2total</code> is not.</li>
            <li>Names are <strong>case-sensitive</strong>: <code>price</code> and <code>Price</code> are two different variables.</li>
            <li>Reserved words such as <code>let</code>, <code>if</code>, <code>class</code> cannot be names.</li>
            <li>Convention: <strong>camelCase</strong> (<code>totalMarks</code>, <code>isLoggedIn</code>); UPPER_SNAKE_CASE for fixed settings (<code>GST_RATE</code>).</li>
            <li>Choose meaningful names: <code>marks</code> beats <code>m</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Data Types</h3>
          <p>JavaScript has <strong>seven primitive types</strong> (simple values) plus <strong>objects</strong> (collections of values — arrays and functions are objects too).</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th><code>typeof</code> result</th></tr></thead>
            <tbody>
              <tr><td>string</td><td><code>"Mumbai"</code>, <code>'hi'</code></td><td><code>"string"</code></td></tr>
              <tr><td>number</td><td><code>42</code>, <code>3.14</code>, <code>-7</code></td><td><code>"number"</code></td></tr>
              <tr><td>boolean</td><td><code>true</code>, <code>false</code></td><td><code>"boolean"</code></td></tr>
              <tr><td>undefined</td><td>a declared variable with no value yet</td><td><code>"undefined"</code></td></tr>
              <tr><td>null</td><td>"intentionally empty"</td><td><code>"object"</code> (a famous old bug)</td></tr>
              <tr><td>bigint</td><td><code>12345678901234567890n</code></td><td><code>"bigint"</code></td></tr>
              <tr><td>symbol</td><td><code>Symbol("id")</code> — unique keys (advanced)</td><td><code>"symbol"</code></td></tr>
              <tr><td>object</td><td><code>{ city: "Pune" }</code>, <code>[1, 2]</code></td><td><code>"object"</code> (functions give <code>"function"</code>)</td></tr>
            </tbody>
          </table>
          <p>JavaScript is <strong>dynamically typed</strong>: the variable itself has no fixed type; the value does. <code>let x = 5; x = "five";</code> is allowed (TypeScript adds type checking on top — a later course).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: typeof</h3>
          <div class="lc-code">let city;<br>console.log(typeof "Chennai");   // string<br>console.log(typeof 99.5);        // number<br>console.log(typeof false);       // boolean<br>console.log(typeof city);        // undefined<br>console.log(typeof null);        // object   ← quirk!<br>console.log(typeof [1, 2, 3]);   // object<br>console.log(Array.isArray([1, 2, 3]));  // true</div>
          <p>Because <code>typeof null</code> is <code>"object"</code>, check for null with <code>value === null</code>, and check for arrays with <code>Array.isArray()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Numbers: One Type for Everything</h3>
          <p>There is no separate "integer" type — <code>7</code> and <code>7.5</code> are both <code>number</code>. Numbers are stored in binary floating point, so some decimals cannot be exact:</p>
          <div class="lc-code">console.log(0.1 + 0.2);                  // 0.30000000000000004<br>console.log((0.1 + 0.2).toFixed(2));     // "0.30"<br>console.log(10 / 0);                     // Infinity<br>console.log("abc" * 2);                  // NaN  (Not a Number)<br>console.log(Number.MAX_SAFE_INTEGER);    // 9007199254740991<br>console.log(9007199254740993n + 1n);     // 9007199254740994n</div>
          <p>For money, a common trick is to store <strong>paise</strong> as whole numbers (<code>19999</code> instead of <code>199.99</code>). For integers bigger than <code>Number.MAX_SAFE_INTEGER</code>, use <strong>BigInt</strong> by adding <code>n</code> — but you cannot mix BigInt and number in one calculation.</p>
        </div>
        <div class="lc-card">
          <h3>null vs undefined</h3>
          <ul class="lc-list">
            <li><code>undefined</code> — JavaScript's "no value yet": an unassigned variable, a missing object property, a function with no <code>return</code>.</li>
            <li><code>null</code> — <em>you</em> set it on purpose to mean "empty", e.g. <code>let selectedSeat = null;</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>const Does Not Freeze Objects</h3>
          <p><code>const</code> stops you from pointing the variable at a new value. The object it points to can still change:</p>
          <div class="lc-code">const student = { name: "Ravi", marks: 70 };<br>student.marks = 85;          // allowed — same object, new contents<br>console.log(student.marks);  // 85<br>// student = {};             // TypeError: Assignment to constant variable.</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>var</code> because an old tutorial did — use <code>const</code>, or <code>let</code> if you must reassign.</li>
            <li>Declaring the same <code>let</code> twice in one block: <code>SyntaxError: Identifier 'x' has already been declared</code>.</li>
            <li>Writing numbers in quotes: <code>"5"</code> is a string, so <code>"5" + 1</code> gives <code>"51"</code> (Lesson 3).</li>
            <li>Trusting <code>typeof</code> to detect <code>null</code> or arrays — it says <code>"object"</code> for both.</li>
            <li>Comparing money with decimals directly: <code>0.1 + 0.2 === 0.3</code> is <code>false</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, change <code>let cartItems</code> and log its new value.</li>
            <li>Try to reassign the <code>const</code> <code>GST_RATE</code> and read the error, then undo it.</li>
            <li>Add a variable holding your phone's storage in bytes as a BigInt and log its <code>typeof</code>.</li>
            <li>Log <code>typeof</code> of a function, e.g. <code>typeof console.log</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Start every variable as <code>const</code>. If the program later needs to change it, your editor will complain and you switch that one to <code>let</code>. This makes it obvious which values move and which stay fixed.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 2: variables and data types
        const GST_RATE = 0.18;          // fixed setting: const
        let cartItems = 2;              // will change: let
        cartItems = cartItems + 1;
        console.log("Items in cart:", cartItems);

        // One variable of each primitive type
        const city = "Bengaluru";              // string
        const price = 499.5;                   // number
        const inStock = true;                  // boolean
        let coupon;                            // undefined
        const selectedSeat = null;             // null
        const population = 13600000000000n;    // bigint
        const id = Symbol("id");               // symbol

        console.log("city:", typeof city);
        console.log("price:", typeof price);
        console.log("inStock:", typeof inStock);
        console.log("coupon:", typeof coupon);
        console.log("selectedSeat:", typeof selectedSeat, "(a known quirk)");
        console.log("population:", typeof population);
        console.log("id:", typeof id);
        console.log("array:", typeof [1, 2], "| isArray:", Array.isArray([1, 2]));
        console.log("");

        // Numbers: one type for integers and decimals
        console.log("0.1 + 0.2 =", 0.1 + 0.2);
        console.log("Rounded:", (0.1 + 0.2).toFixed(2));
        console.log("Tax on 499.5:", (price * GST_RATE).toFixed(2));
        console.log("Not a number:", "abc" * 2);
        console.log("Biggest safe integer:", Number.MAX_SAFE_INTEGER);

        // const stops reassignment, not changes inside an object
        const student = { name: "Ravi", marks: 70 };
        student.marks = 85;
        console.log(student.name, "now has", student.marks, "marks");
      JS
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Operators, Comparison and Type Coercion</h1>
        </div>
        <p class="lc-lead">Operators do the work: they add, compare and combine values. JavaScript also <strong>converts types automatically</strong> in some situations (called <em>coercion</em>). Knowing when that happens saves you from some of the most common bugs.</p>
        <div class="lc-card">
          <h3>Arithmetic and Assignment</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>+ - * /</code></td><td>add, subtract, multiply, divide</td><td><code>7 / 2</code></td><td><code>3.5</code></td></tr>
              <tr><td><code>%</code></td><td>remainder</td><td><code>17 % 5</code></td><td><code>2</code></td></tr>
              <tr><td><code>**</code></td><td>power</td><td><code>2 ** 5</code></td><td><code>32</code></td></tr>
              <tr><td><code>++ --</code></td><td>add / subtract 1</td><td><code>count++</code></td><td>count goes up by 1</td></tr>
              <tr><td><code>+= -= *= /=</code></td><td>update in place</td><td><code>total += 50</code></td><td>same as <code>total = total + 50</code></td></tr>
            </tbody>
          </table>
          <p><code>%</code> is handy for "is it even?" checks: <code>n % 2 === 0</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Comparison: Always Use ===</h3>
          <p><code>===</code> (strict equality) is true only if the <strong>type and value</strong> both match. <code>==</code> (loose equality) first converts the values to a common type, with surprising results.</p>
          <div class="lc-code">console.log(5 === "5");          // false — number vs string<br>console.log(5 == "5");           // true  — "5" converted to 5<br>console.log(0 == false);         // true<br>console.log("" == 0);            // true<br>console.log(null == undefined);  // true<br>console.log(null === undefined); // false<br>console.log(NaN === NaN);        // false — use Number.isNaN(x)</div>
          <p>Use <code>===</code> and <code>!==</code> everywhere. Other comparisons: <code>&lt; &gt; &lt;= &gt;=</code>. Comparing two strings compares them letter by letter: <code>"apple" &lt; "banana"</code> is <code>true</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Type Coercion Surprises</h3>
          <p>The <code>+</code> operator joins strings if <em>either</em> side is a string. The other maths operators convert strings to numbers.</p>
          <div class="lc-code">console.log("5" + 2);     // "52"  (string joining)<br>console.log("5" - 2);     // 3<br>console.log("5" * "2");   // 10<br>console.log(1 + 2 + "3"); // "33"  (left to right: 3 + "3")<br>console.log("3" + 1 + 2); // "312"</div>
          <p>Values from forms and <code>prompt()</code> are <strong>always strings</strong> — convert them before doing maths.</p>
        </div>
        <div class="lc-card">
          <h3>Converting Types Yourself</h3>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Result</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>Number("42")</code></td><td><code>42</code></td><td>whole string must be numeric</td></tr>
              <tr><td><code>Number("42px")</code></td><td><code>NaN</code></td><td>fails on extra text</td></tr>
              <tr><td><code>parseInt("42px")</code></td><td><code>42</code></td><td>reads digits until it stops</td></tr>
              <tr><td><code>parseFloat("3.75 kg")</code></td><td><code>3.75</code></td><td>keeps decimals</td></tr>
              <tr><td><code>Number("")</code></td><td><code>0</code></td><td>gotcha: empty input becomes 0</td></tr>
              <tr><td><code>String(99)</code></td><td><code>"99"</code></td><td>number to text</td></tr>
              <tr><td><code>Boolean("hi")</code></td><td><code>true</code></td><td>see truthy/falsy below</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Truthy and Falsy</h3>
          <p>In an <code>if</code> or with logical operators, every value counts as true or false. There are only <strong>eight falsy values</strong>: <code>false</code>, <code>0</code>, <code>-0</code>, <code>0n</code>, <code>""</code>, <code>null</code>, <code>undefined</code> and <code>NaN</code>. <em>Everything else is truthy</em> — including <code>"0"</code>, <code>"false"</code>, <code>[]</code> and <code>{}</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Logical Operators and Defaults</h3>
          <ul class="lc-list">
            <li><code>a &amp;&amp; b</code> — AND: if <code>a</code> is falsy it returns <code>a</code>, otherwise <code>b</code>.</li>
            <li><code>a || b</code> — OR: returns the first truthy value (or the last value).</li>
            <li><code>!a</code> — NOT: flips truthy to <code>false</code> and falsy to <code>true</code>.</li>
            <li><code>a ?? b</code> — nullish coalescing: returns <code>b</code> only if <code>a</code> is <code>null</code> or <code>undefined</code>.</li>
          </ul>
          <p>Both <code>&amp;&amp;</code> and <code>||</code> <strong>short-circuit</strong>: they stop as soon as the answer is known. The difference between <code>||</code> and <code>??</code> matters when <code>0</code> or <code>""</code> is a real value:</p>
          <div class="lc-code">const volume = 0;               // user chose "mute"<br>console.log(volume || 50);      // 50  — wrong, 0 is falsy<br>console.log(volume ?? 50);      // 0   — correct<br><br>let nickname;                   // undefined<br>console.log(nickname ?? "Guest"); // "Guest"</div>
        </div>
        <div class="lc-card">
          <h3>Rounding Results</h3>
          <div class="lc-code">console.log(Math.round(4.5));    // 5<br>console.log(Math.floor(4.9));    // 4<br>console.log(Math.ceil(4.1));     // 5<br>console.log((1234.567).toFixed(2)); // "1234.57" — a STRING</div>
        </div>
        <div class="lc-card">
          <h3>Operator Precedence</h3>
          <p>Like school maths, <code>**</code> runs before <code>* / %</code>, which run before <code>+ -</code>. Comparisons come next, then <code>&amp;&amp;</code>, then <code>|| ??</code>. When in doubt, add brackets — they make intent clear.</p>
          <div class="lc-code">console.log(2 + 3 * 4);      // 14<br>console.log((2 + 3) * 4);    // 20<br>console.log(10 - 2 - 3);     // 5   (left to right)<br>console.log(2 ** 3 ** 2);    // 512 (right to left: 3 ** 2 first)</div>
          <p>You cannot mix <code>??</code> with <code>&amp;&amp;</code> or <code>||</code> without brackets: <code>a || b ?? c</code> is a <code>SyntaxError</code>; write <code>(a || b) ?? c</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>==</code> and getting <code>0 == ""</code> → <code>true</code>. Use <code>===</code>.</li>
            <li>Adding form values without converting: <code>"500" + "200"</code> is <code>"500200"</code>.</li>
            <li>Using <code>||</code> for defaults when <code>0</code> or <code>""</code> is valid — use <code>??</code>.</li>
            <li>Checking <code>x === NaN</code> — it is always false. Use <code>Number.isNaN(x)</code>.</li>
            <li>Forgetting <code>toFixed()</code> returns a string, then adding to it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, change <code>qtyInput</code> to <code>"3 pcs"</code>. Which conversion still works?</li>
            <li>Log <code>Boolean("0")</code> and <code>Boolean(0)</code> and explain the difference.</li>
            <li>Set <code>discount</code> to <code>0</code> and compare the <code>||</code> and <code>??</code> results.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Convert input <em>once</em>, as soon as you receive it (<code>const qty = Number(input)</code>), and check it with <code>Number.isNaN(qty)</code>. After that, every calculation works with real numbers.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 3: operators, comparison and coercion
        console.log("17 % 5 =", 17 % 5, "| 2 ** 5 =", 2 ** 5);
        let total = 100;
        total += 50;
        total *= 2;
        console.log("total after += and *=:", total);
        console.log("");

        // === vs ==
        console.log("5 === '5':", 5 === "5");
        console.log("5 == '5':", 5 == "5");
        console.log("0 == false:", 0 == false);
        console.log("NaN === NaN:", NaN === NaN, "| isNaN:", Number.isNaN(NaN));
        console.log("");

        // Form inputs are strings - convert before maths
        const priceInput = "250";
        const qtyInput = "3";
        console.log("Without converting:", priceInput + qtyInput);
        console.log("With Number():", Number(priceInput) * Number(qtyInput));
        console.log("parseInt('42px'):", parseInt("42px"), "| Number('42px'):", Number("42px"));
        console.log("Number(''):", Number(""));
        console.log("");

        // Truthy and falsy
        const values = [0, "", "0", [], null, "hello", NaN];
        const labels = ["0", '""', '"0"', "[]", "null", '"hello"', "NaN"];
        for (let i = 0; i < values.length; i++) {
          console.log(labels[i], "is", Boolean(values[i]) ? "truthy" : "falsy");
        }
        console.log("");

        // || vs ?? for default values
        const discount = 0;
        console.log("discount || 10 ->", discount || 10);
        console.log("discount ?? 10 ->", discount ?? 10);
        let nickname;
        console.log("Hello,", nickname ?? "Guest");
        console.log("isAdult:", 20 >= 18 && "yes");
        console.log("Rounded bill:", (1234.567).toFixed(2), Math.round(4.5));
      JS
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Strings and Template Literals</h1>
        </div>
        <p class="lc-lead">Strings hold text — names, messages, addresses, search queries. JavaScript gives you many built-in string methods, <strong>template literals</strong> make building text with values clean and readable, and the <strong>Intl</strong> formatters display dates and rupee amounts the way Indian readers expect.</p>
        <div class="lc-card">
          <h3>Creating Strings</h3>
          <div class="lc-code">const a = "double quotes";<br>const b = 'single quotes';<br>const c = `backticks — a template literal`;<br>const quote = "She said 'namaste'";   // mix quote types freely</div>
          <p>Double and single quotes behave the same; pick one style and stay consistent. Backticks create <strong>template literals</strong>, which have extra powers (below).</p>
        </div>
        <div class="lc-card">
          <h3>Length, Characters and Indexes</h3>
          <p>Each character has an <strong>index</strong> starting at 0.</p>
          <div class="lc-code">const city = "Kolkata";<br>console.log(city.length);   // 7<br>console.log(city[0]);       // "K"<br>console.log(city.at(-1));   // "a"  (at() accepts negative indexes)<br>console.log(city[10]);      // undefined — no error</div>
        </div>
        <div class="lc-card">
          <h3>Essential String Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>toUpperCase()</code> / <code>toLowerCase()</code></td><td><code>"Delhi".toUpperCase()</code></td><td><code>"DELHI"</code></td></tr>
              <tr><td><code>trim()</code></td><td><code>"  hi  ".trim()</code></td><td><code>"hi"</code></td></tr>
              <tr><td><code>includes()</code></td><td><code>"javascript".includes("script")</code></td><td><code>true</code></td></tr>
              <tr><td><code>startsWith()</code> / <code>endsWith()</code></td><td><code>"+91 98765".startsWith("+91")</code></td><td><code>true</code></td></tr>
              <tr><td><code>indexOf()</code></td><td><code>"banana".indexOf("n")</code></td><td><code>2</code> (<code>-1</code> if not found)</td></tr>
              <tr><td><code>slice(start, end)</code></td><td><code>"JavaScript".slice(0, 4)</code></td><td><code>"Java"</code> (end not included)</td></tr>
              <tr><td><code>split()</code></td><td><code>"a,b,c".split(",")</code></td><td><code>["a", "b", "c"]</code></td></tr>
              <tr><td><code>replace()</code> / <code>replaceAll()</code></td><td><code>"1-2-3".replaceAll("-", "/")</code></td><td><code>"1/2/3"</code></td></tr>
              <tr><td><code>padStart()</code></td><td><code>"7".padStart(3, "0")</code></td><td><code>"007"</code></td></tr>
              <tr><td><code>repeat()</code></td><td><code>"=".repeat(5)</code></td><td><code>"====="</code></td></tr>
            </tbody>
          </table>
          <p><code>replace()</code> changes only the <strong>first</strong> match; <code>replaceAll()</code> changes every match.</p>
        </div>
        <div class="lc-card">
          <h3>Strings Are Immutable</h3>
          <p>String methods never change the original — they <strong>return a new string</strong>. Save the result if you need it.</p>
          <div class="lc-code">let name = "  priya  ";<br>name.trim();                 // result thrown away!<br>console.log("[" + name + "]");  // "[  priya  ]"<br>name = name.trim();          // keep the new string<br>console.log("[" + name + "]");  // "[priya]"</div>
        </div>
        <div class="lc-card">
          <h3>Escape Characters</h3>
          <p>A backslash <code>\</code> inside a normal string starts an <strong>escape sequence</strong> for characters you cannot type directly:</p>
          <table class="lc-table">
            <thead><tr><th>Escape</th><th>Means</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>\n</code></td><td>new line</td><td><code>"Line 1\nLine 2"</code></td></tr>
              <tr><td><code>\t</code></td><td>tab</td><td><code>"Name\tMarks"</code></td></tr>
              <tr><td><code>\"</code> or <code>\'</code></td><td>a quote inside the same kind of quotes</td><td><code>"He said \"hi\""</code></td></tr>
              <tr><td><code>\\</code></td><td>one real backslash</td><td><code>"C:\\Users"</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Template Literals</h3>
          <p>Inside backticks, <code>${ }</code> inserts the value of <em>any expression</em> — a variable, a calculation, even a function call. Line breaks are kept as typed.</p>
          <div class="lc-code">const item = "Masala Dosa";<br>const price = 120;<br>const qty = 2;<br><br>console.log(`${item} x ${qty} = ₹${price * qty}`);<br>// Masala Dosa x 2 = ₹240<br><br>const receipt = `Item:  ${item}<br>Total: ₹${(price * qty * 1.05).toFixed(2)}`;<br>console.log(receipt);<br>// Item:  Masala Dosa<br>// Total: ₹252.00</div>
          <table class="lc-table">
            <thead><tr><th></th><th>Concatenation with +</th><th>Template literal</th></tr></thead>
            <tbody>
              <tr><td>Syntax</td><td><code>"Hi " + name + "!"</code></td><td><code>`Hi ${name}!`</code></td></tr>
              <tr><td>Expressions</td><td>need extra brackets</td><td>anything inside <code>${ }</code></td></tr>
              <tr><td>Multi-line</td><td>needs <code>"\n"</code></td><td>just press Enter</td></tr>
              <tr><td>Readability</td><td>gets messy with many values</td><td>reads like the final text</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Formatting a Name Badge</h3>
          <div class="lc-code">const raw = "  aarav SHARMA ";<br>const parts = raw.trim().toLowerCase().split(" ");   // ["aarav", "sharma"]<br>const first = parts[0][0].toUpperCase() + parts[0].slice(1);<br>const last = parts[1][0].toUpperCase() + parts[1].slice(1);<br>const badge = `${first} ${last} (#${"42".padStart(4, "0")})`;<br>console.log(badge);   // Aarav Sharma (#0042)</div>
          <p>Methods can be <strong>chained</strong>: each one works on the string returned by the previous one.</p>
        </div>
        <div class="lc-card">
          <h3>Formatting Dates and Money for Display</h3>
          <p>Text for users often contains dates and prices. <code>Date</code> stores a moment in time; the <strong>Intl</strong> formatters turn dates and numbers into text in the user's language and style. <code>"en-IN"</code> means English as used in India.</p>
          <div class="lc-code">const republicDay = new Date(2026, 0, 26);    // months start at 0: 0 = January!<br>console.log(republicDay.getFullYear(), republicDay.getMonth(), republicDay.getDate());   // 2026 0 26<br>console.log(republicDay.toLocaleDateString("en-IN"));                                    // 26/1/2026<br>console.log(republicDay.toLocaleDateString("en-IN", { day: "numeric", month: "long", year: "numeric" }));<br>// 26 January 2026<br><br>const rupees = new Intl.NumberFormat("en-IN", { style: "currency", currency: "INR" });<br>console.log(rupees.format(125000.5));                        // ₹1,25,000.50  (lakh-style commas)<br>console.log(new Intl.NumberFormat("en-IN").format(12345678));   // 1,23,45,678</div>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>Use</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Today's date and time</td><td><code>new Date()</code></td><td>changes every run</td></tr>
              <tr><td>A fixed date</td><td><code>new Date(2026, 0, 26)</code></td><td>26 January 2026 (month is 0-based)</td></tr>
              <tr><td>Date for Indian readers</td><td><code>d.toLocaleDateString("en-IN")</code></td><td><code>26/1/2026</code></td></tr>
              <tr><td>Price in rupees</td><td><code>Intl.NumberFormat("en-IN", { style: "currency", currency: "INR" })</code></td><td><code>₹1,25,000.50</code></td></tr>
              <tr><td>Date to save or send</td><td><code>d.toISOString()</code></td><td><code>2026-01-25T18:30:00.000Z</code> in India (UTC time)</td></tr>
            </tbody>
          </table>
          <p><code>Date</code> is old and awkward (0-based months, objects you can change by accident). Its modern replacement, <strong>Temporal</strong> (<code>Temporal.PlainDate.from("2026-01-26")</code>), reached the final TC39 stage in 2026 and is planned for ES2027. It already works in Chrome 144+ and Firefox 139+, but not yet in Safari, so for code that must run everywhere keep using <code>Date</code> plus <code>Intl</code> for now.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using normal quotes with <code>${ }</code>: <code>"Hi ${name}"</code> prints the characters <code>${name}</code> literally — you need backticks.</li>
            <li>Calling a method and ignoring its result (<code>name.trim();</code>) — strings never change in place.</li>
            <li>Expecting <code>replace()</code> to change every match — use <code>replaceAll()</code>.</li>
            <li>Forgetting that <code>slice(0, 4)</code> stops <em>before</em> index 4.</li>
            <li>Comparing text with different cases: normalise with <code>toLowerCase()</code> first.</li>
            <li>Forgetting that <code>Date</code> months start at 0: <code>new Date(2026, 1, 1)</code> is 1 <strong>February</strong>, not January.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change the email in the starter and see the username and domain update.</li>
            <li>Use <code>padStart</code> to print an order number <code>"57"</code> as <code>"ORD-00057"</code>.</li>
            <li>Write a template literal that prints a two-line bus ticket: route on line 1, fare on line 2.</li>
            <li>Format your own birthday with <code>toLocaleDateString("en-IN", { day: "numeric", month: "long", year: "numeric" })</code> and a ₹2,50,000 salary with <code>Intl.NumberFormat</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use template literals whenever a string contains a value. They are easier to read, easier to edit and avoid the missing-space bugs of <code>"Hello" + name</code>.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 4: strings and template literals
        const city = "Kolkata";
        console.log("Length:", city.length, "| first:", city[0], "| last:", city.at(-1));

        // Common methods (each returns a NEW string)
        const raw = "   Learning JavaScript is FUN   ";
        const clean = raw.trim();
        console.log("trim:", "[" + clean + "]");
        console.log("upper:", clean.toUpperCase());
        console.log("lower:", clean.toLowerCase());
        console.log("includes 'Script':", clean.includes("Script"));
        console.log("slice(0, 8):", clean.slice(0, 8));
        console.log("words:", clean.split(" ").length);
        console.log("replaceAll:", "1-2-3-4".replaceAll("-", " / "));
        console.log("padStart:", "7".padStart(3, "0"));
        console.log("");

        // Pulling apart an email address
        const email = "ananya.rao@example.in";
        const at = email.indexOf("@");
        console.log("Username:", email.slice(0, at));
        console.log("Domain:", email.slice(at + 1));
        console.log("");

        // Dates and money for display (months start at 0!)
        const republicDay = new Date(2026, 0, 26);
        console.log("getMonth():", republicDay.getMonth(), "| en-IN:", republicDay.toLocaleDateString("en-IN"));
        const rupees = new Intl.NumberFormat("en-IN", { style: "currency", currency: "INR" });
        console.log("Fees:", rupees.format(125000.5));
        console.log("");

        // Template literals: values and expressions inside backticks
        const item = "Masala Dosa";
        const price = 120;
        const qty = 2;
        console.log(`${item} x ${qty} = ₹${price * qty}`);
        console.log(`With 5% GST: ₹${(price * qty * 1.05).toFixed(2)}`);

        // Multi-line template literal
        const ticket = `--- Bus Ticket ---
        Route: Pune -> Mumbai
        Fare:  ₹${450 + 50}`;
        console.log(ticket);
      JS
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Conditionals and Loops</h1>
        </div>
        <p class="lc-lead">Programs make <strong>decisions</strong> ("if the cart is empty, show a message") and <strong>repeat</strong> work ("add up every item in the bill"). Conditional statements choose which code runs; loops run code again and again. Together they are the control flow of every program you will write.</p>
        <div class="lc-card">
          <h3>if, else if, else</h3>
          <div class="lc-code">const marks = 72;<br><br>if (marks &gt;= 90) {<br>&nbsp;&nbsp;console.log("Grade A");<br>} else if (marks &gt;= 75) {<br>&nbsp;&nbsp;console.log("Grade B");<br>} else if (marks &gt;= 60) {<br>&nbsp;&nbsp;console.log("Grade C");<br>} else {<br>&nbsp;&nbsp;console.log("Needs improvement");<br>}<br>// Output: Grade C</div>
          <p>Conditions are checked <strong>top to bottom</strong>, and only the <em>first</em> matching block runs. Put the most specific (highest) condition first.</p>
          <p>The condition does not have to be a boolean — JavaScript uses the truthy/falsy rules from Lesson 3. Be careful when <code>0</code> is a valid value: <code>if (stock)</code> is false when <code>stock</code> is <code>0</code>, so write the exact check you mean: <code>if (stock &gt; 0)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Combining Conditions and the Ternary Operator</h3>
          <div class="lc-code">const age = 20;<br>const hasTicket = true;<br>if (age &gt;= 18 &amp;&amp; hasTicket) console.log("Entry allowed");<br>if (age &lt; 5 || age &gt; 60) console.log("Free entry");<br>if (!hasTicket) console.log("Buy a ticket first");<br><br>const orderTotal = 650;<br>const delivery = orderTotal &gt;= 500 ? 0 : 40;   // condition ? ifTrue : ifFalse<br>console.log("Delivery: ₹" + delivery);         // Delivery: ₹0</div>
          <p>The ternary is an <em>expression</em> that produces a value — perfect for choosing between two values. Avoid nested ternaries (<code>a ? b : c ? d : e</code>); use <code>if</code>/<code>else if</code> instead.</p>
        </div>
        <div class="lc-card">
          <h3>switch</h3>
          <p><code>switch</code> compares one value against fixed options using strict <code>===</code>. Without <code>break</code>, execution <strong>falls through</strong> into the next case — you can use that on purpose to group cases:</p>
          <div class="lc-code">const day = "Sun";<br>switch (day) {<br>&nbsp;&nbsp;case "Sat":<br>&nbsp;&nbsp;case "Sun":<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log("Weekend");<br>&nbsp;&nbsp;&nbsp;&nbsp;break;<br>&nbsp;&nbsp;case "Mon":<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log("Back to work");<br>&nbsp;&nbsp;&nbsp;&nbsp;break;<br>&nbsp;&nbsp;default:<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log("Weekday");<br>}<br>// Output: Weekend</div>
          <p>When every case just picks a value, an object lookup (Lesson 10) is shorter: <code>({ red: "Stop", green: "Go" })[signal] ?? "Broken"</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Best tool</th></tr></thead>
            <tbody>
              <tr><td>Ranges (<code>marks &gt;= 90</code>) or mixed conditions</td><td><code>if / else if / else</code></td></tr>
              <tr><td>One value compared with many fixed options</td><td><code>switch</code> (or an object lookup)</td></tr>
              <tr><td>Choosing between two values in one expression</td><td>ternary <code>? :</code></td></tr>
              <tr><td>A default for a missing value</td><td><code>??</code> (Lesson 3)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The for Loop</h3>
          <p>Use it when you know how many times to repeat. It has three parts: <strong>start</strong>; <strong>condition</strong>; <strong>update</strong>.</p>
          <div class="lc-code">for (let i = 1; i &lt;= 3; i++) {<br>&nbsp;&nbsp;console.log("7 x " + i + " = " + 7 * i);<br>}<br>// 7 x 1 = 7<br>// 7 x 2 = 14<br>// 7 x 3 = 21</div>
          <p><code>let i = 1</code> runs once; <code>i &lt;= 3</code> is checked before every round; <code>i++</code> runs after every round. The update can be anything: <code>i--</code> counts down, <code>i += 5</code> steps by 5.</p>
        </div>
        <div class="lc-card">
          <h3>while and do...while</h3>
          <p><code>while</code> repeats <em>as long as</em> a condition is true — useful when you don't know the number of rounds in advance.</p>
          <div class="lc-code">let savings = 1000;<br>let months = 0;<br>while (savings &lt; 2000) {<br>&nbsp;&nbsp;savings = savings * 1.1;   // grows 10% a month<br>&nbsp;&nbsp;months++;<br>}<br>console.log(months);   // 8</div>
          <p><code>do...while</code> checks the condition <em>after</em> the body, so the body always runs at least once.</p>
        </div>
        <div class="lc-card">
          <h3>for...of and for...in</h3>
          <div class="lc-code">const fruits = ["mango", "banana"];<br>for (const fruit of fruits) console.log(fruit);   // mango, banana (values)<br><br>const scores = { Asha: 88, Vikram: 92 };<br>for (const name in scores) console.log(name + ": " + scores[name]);<br>// Asha: 88<br>// Vikram: 92</div>
          <p><code>for...of</code> visits the <strong>values</strong> of an array, string, Map or Set (Lesson 12 shows how it works inside). <code>for...in</code> visits the <strong>keys</strong> of an object. Do <strong>not</strong> use <code>for...in</code> on arrays: it gives indexes as <em>strings</em> (<code>"0"</code>, <code>"1"</code>).</p>
        </div>
        <div class="lc-card">
          <h3>break and continue</h3>
          <div class="lc-code">for (let n = 1; n &lt;= 10; n++) {<br>&nbsp;&nbsp;if (n % 2 === 0) continue;   // skip even numbers<br>&nbsp;&nbsp;if (n &gt; 7) break;            // stop the loop completely<br>&nbsp;&nbsp;console.log(n);<br>}<br>// 1 3 5 7</div>
          <p><code>continue</code> jumps to the next round; <code>break</code> exits the loop.</p>
          <table class="lc-table">
            <thead><tr><th>Loop</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td><code>for</code></td><td>Counting; you need the index</td></tr>
              <tr><td><code>for...of</code></td><td>Every value in an array or string</td></tr>
              <tr><td><code>for...in</code></td><td>Keys of a plain object</td></tr>
              <tr><td><code>while</code></td><td>Unknown number of rounds</td></tr>
              <tr><td><code>do...while</code></td><td>Body must run at least once</td></tr>
            </tbody>
          </table>
          <p>For transforming and filtering arrays, the array methods <code>map</code>, <code>filter</code> and <code>reduce</code> (Lesson 9) are often even clearer than a loop.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Bill with Conditions Inside a Loop</h3>
          <p>Loop over the items, skip anything out of stock, and give ₹50 off bills of ₹500 or more.</p>
          <div class="lc-code">const items = [<br>&nbsp;&nbsp;{ name: "Rice", price: 320, inStock: true },<br>&nbsp;&nbsp;{ name: "Ghee", price: 650, inStock: false },<br>&nbsp;&nbsp;{ name: "Dal", price: 180, inStock: true },<br>];<br>let total = 0;<br>for (const item of items) {<br>&nbsp;&nbsp;if (!item.inStock) {<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log("Skipping", item.name);<br>&nbsp;&nbsp;&nbsp;&nbsp;continue;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;total += item.price;<br>}<br>const discount = total &gt;= 500 ? 50 : 0;<br>console.log("Total: ₹" + total, "| Discount: ₹" + discount, "| Pay: ₹" + (total - discount));</div>
          <p>Output:</p>
          <div class="lc-code">Skipping Ghee<br>Total: ₹500 | Discount: ₹50 | Pay: ₹450</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>if (x = 5)</code> — that <em>assigns</em> 5. Compare with <code>===</code>.</li>
            <li>Putting the widest condition first (<code>marks &gt;= 60</code> before <code>marks &gt;= 90</code>), so later branches never run.</li>
            <li>Forgetting <code>break</code> in a <code>switch</code>, or expecting <code>switch</code> to match <code>"5"</code> with <code>5</code>.</li>
            <li><strong>Infinite loops</strong> — forgetting to change the variable in a <code>while</code> loop freezes the tab.</li>
            <li><strong>Off-by-one errors</strong> — <code>i &lt;= arr.length</code> goes one step too far; use <code>i &lt; arr.length</code>.</li>
            <li>Declaring a classic <code>for</code> counter with <code>const</code>: <code>i++</code> throws a TypeError. Use <code>let</code> there (but <code>const</code> is right in <code>for...of</code>).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>marks</code> in the starter to 95, 75 and 59 and check each grade.</li>
            <li>Print the 12 times table up to 12 x 10 with a <code>for</code> loop.</li>
            <li>Add a <code>continue</code> so the bill loop skips items that cost more than ₹100.</li>
            <li>Add a <code>case "Mon":</code> to the <code>switch</code> with its own message.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read conditions aloud ("if marks are at least 90 …") and ask three questions before every loop: <em>Where do I start? When do I stop? How do I move forward?</em> If you can't answer "when do I stop?", you are about to write an infinite loop.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 5: conditionals and loops
        console.log("-- if / else if / else --");
        const marks = 72;
        if (marks >= 90) {
          console.log(marks, "-> Grade A");
        } else if (marks >= 75) {
          console.log(marks, "-> Grade B");
        } else if (marks >= 60) {
          console.log(marks, "-> Grade C");
        } else {
          console.log(marks, "-> Needs improvement");
        }

        console.log("-- ternary and switch --");
        const orderTotal = 650;
        console.log("Delivery charge: ₹" + (orderTotal >= 500 ? 0 : 40));
        const day = "Sun";
        switch (day) {
          case "Sat":
          case "Sun":
            console.log(day, "is a weekend");
            break;
          default:
            console.log(day, "is a weekday");
        }

        console.log("-- for: 7 times table --");
        for (let i = 1; i <= 3; i++) {
          console.log("7 x " + i + " = " + 7 * i);
        }

        console.log("-- for...of with if and continue: a bill --");
        const prices = [120, 45, 0, 250];
        let total = 0;
        for (const price of prices) {
          if (price === 0) continue; // skip free items
          total += price;
        }
        console.log("Total: ₹" + total, "|", total >= 400 ? "free delivery" : "₹40 delivery");
        console.log("-- for...in: object keys --");
        const scores = { Asha: 88, Vikram: 92 };
        for (const name in scores) console.log(name + " scored " + scores[name]);
        console.log("-- while: months to double savings --");
        let savings = 1000;
        let months = 0;
        while (savings < 2000) {
          savings = savings * 1.1;
          months++;
        }
        console.log("Months:", months, "| Savings: ₹" + savings.toFixed(0));
      JS
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Functions and Arrow Functions</h1>
        </div>
        <p class="lc-lead">A <strong>function</strong> is a named, reusable block of code. You write it once and <em>call</em> it whenever you need it, with different inputs. Functions are the main way to organise any JavaScript program.</p>
        <div class="lc-card">
          <h3>Declaring and Calling a Function</h3>
          <div class="lc-code">function addGst(amount) {        // amount is a PARAMETER<br>&nbsp;&nbsp;const tax = amount * 0.18;<br>&nbsp;&nbsp;return amount + tax;            // send a value back<br>}<br><br>const bill = addGst(500);        // 500 is an ARGUMENT<br>console.log(bill);               // 590<br>console.log(addGst(1000));       // 1180</div>
          <ul class="lc-list">
            <li><strong>Parameters</strong> are the names in the definition; <strong>arguments</strong> are the actual values you pass in.</li>
            <li><code>return</code> sends a value back <em>and stops the function</em> immediately.</li>
            <li>A function with no <code>return</code> gives back <code>undefined</code>.</li>
            <li>Variables declared inside (<code>tax</code>) exist only inside the function (Lesson 7).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>What Happens When You Call a Function</h3>
          <ol class="lc-list">
            <li>JavaScript jumps into the function and matches each argument to a parameter, in order.</li>
            <li>The body runs line by line, with its own private variables.</li>
            <li>At <code>return</code> (or the end), it jumps back to where it was called, and the call is replaced by the returned value.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Default and Rest Parameters</h3>
          <p>A missing argument is <code>undefined</code>. A <strong>default parameter</strong> gives it a fallback value:</p>
          <div class="lc-code">function greet(name = "Guest", greeting = "Namaste") {<br>&nbsp;&nbsp;return greeting + ", " + name + "!";<br>}<br>console.log(greet("Kiran"));          // Namaste, Kiran!<br>console.log(greet());                 // Namaste, Guest!<br>console.log(greet("Sam", "Hello"));   // Hello, Sam!</div>
          <p>A <strong>rest parameter</strong> (<code>...name</code>) collects any number of arguments into an array. It must be the last parameter.</p>
          <div class="lc-code">function sum(...numbers) {<br>&nbsp;&nbsp;let total = 0;<br>&nbsp;&nbsp;for (const n of numbers) total += n;<br>&nbsp;&nbsp;return total;<br>}<br>console.log(sum(1, 2, 3));        // 6<br>console.log(sum(10, 20, 30, 40)); // 100</div>
        </div>
        <div class="lc-card">
          <h3>Function Expressions</h3>
          <p>A function is a <strong>value</strong>, like a number or string. You can store it in a variable:</p>
          <div class="lc-code">const square = function (n) {<br>&nbsp;&nbsp;return n * n;<br>};<br>console.log(square(9));   // 81</div>
        </div>
        <div class="lc-card">
          <h3>Arrow Functions</h3>
          <p>Arrow functions (ES2015) are a shorter way to write function expressions. They are the most common style for small functions and callbacks.</p>
          <div class="lc-code">// Full form with a block body<br>const area = (length, width) =&gt; {<br>&nbsp;&nbsp;return length * width;<br>};<br><br>// Single expression: braces and return can be dropped (implicit return)<br>const double = (n) =&gt; n * 2;<br><br>// One parameter: brackets are optional<br>const shout = text =&gt; text.toUpperCase() + "!";<br><br>// No parameters: empty brackets are required<br>const rollDice = () =&gt; Math.floor(Math.random() * 6) + 1;<br><br>// Returning an object literal: wrap it in ( )<br>const makeUser = (name) =&gt; ({ name: name, active: true });<br><br>console.log(area(4, 5), double(21), shout("goal"));   // 20 42 GOAL!</div>
        </div>
        <div class="lc-card">
          <h3>Three Ways to Write a Function</h3>
          <table class="lc-table">
            <thead><tr><th>Style</th><th>Syntax</th><th>Hoisted?</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Declaration</td><td><code>function add(a, b) { … }</code></td><td>Yes — callable before its line</td><td>Main, named functions</td></tr>
              <tr><td>Expression</td><td><code>const add = function (a, b) { … };</code></td><td>No</td><td>Rare in modern code</td></tr>
              <tr><td>Arrow</td><td><code>const add = (a, b) =&gt; a + b;</code></td><td>No</td><td>Short helpers and callbacks</td></tr>
            </tbody>
          </table>
          <p>Arrow functions also do not have their own <code>this</code> — they use the <code>this</code> of the surrounding code. That matters inside classes and objects (Lesson 11). For now: don't use arrow functions as object methods that need <code>this</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Functions as Values: Callbacks</h3>
          <p>Because functions are values, you can pass one function <em>into</em> another. The function you pass is called a <strong>callback</strong>.</p>
          <div class="lc-code">function repeat(times, action) {<br>&nbsp;&nbsp;for (let i = 1; i &lt;= times; i++) action(i);<br>}<br><br>repeat(3, (n) =&gt; console.log("Round " + n));</div>
          <p>Output:</p>
          <div class="lc-code">Round 1<br>Round 2<br>Round 3</div>
          <p>Callbacks are everywhere in JavaScript: array methods (Lesson 9), event listeners (Lesson 17) and timers (Lesson 18).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Small Functions Working Together</h3>
          <p>Good programs are built from small functions that each do one job:</p>
          <div class="lc-code">const average = (...marks) =&gt; sum(...marks) / marks.length;<br>function grade(avg) {<br>&nbsp;&nbsp;if (avg &gt;= 75) return "Distinction";<br>&nbsp;&nbsp;if (avg &gt;= 35) return "Pass";<br>&nbsp;&nbsp;return "Fail";<br>}<br>function report(name, ...marks) {<br>&nbsp;&nbsp;const avg = average(...marks);<br>&nbsp;&nbsp;return name + ": " + avg.toFixed(1) + " (" + grade(avg) + ")";<br>}<br><br>console.log(report("Neha", 80, 72, 91));<br>console.log(report("Arjun", 30, 41, 28));</div>
          <p>Output:</p>
          <div class="lc-code">Neha: 81.0 (Distinction)<br>Arjun: 33.0 (Fail)</div>
          <p>Here <code>...marks</code> in a <em>call</em> (<code>sum(...marks)</code>) is the <strong>spread</strong> syntax: it unpacks the array back into separate arguments. Each function is short, has a clear name and can be tested on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Pure Functions</h3>
          <p>A <strong>pure function</strong> always returns the same output for the same input and changes nothing outside itself. <code>addGst</code> is pure. A function that changes a global variable or prints is not. Prefer pure functions — they are easy to test and reuse.</p>
        </div>
        <div class="lc-card">
          <h3>Recursion: A Function That Calls Itself</h3>
          <p>A <strong>recursive</strong> function solves a problem by calling itself on a smaller version of the same problem. Every recursive function needs two parts:</p>
          <ul class="lc-list">
            <li>a <strong>base case</strong> that stops — an answer it knows without calling itself;</li>
            <li>a <strong>recursive case</strong> that calls itself with input that moves <em>towards</em> the base case.</li>
          </ul>
          <div class="lc-code">function factorial(n) {<br>&nbsp;&nbsp;if (n &lt;= 1) return 1;           // base case<br>&nbsp;&nbsp;return n * factorial(n - 1);     // recursive case: a smaller problem<br>}<br>console.log(factorial(5));   // 120   (5 * 4 * 3 * 2 * 1)<br><br>function countdown(n) {<br>&nbsp;&nbsp;if (n === 0) { console.log("Go!"); return; }<br>&nbsp;&nbsp;console.log(n);<br>&nbsp;&nbsp;countdown(n - 1);<br>}<br>countdown(3);   // 3, 2, 1, Go!  (one per line)</div>
          <p>Each call waits on the <strong>call stack</strong> until the smaller call returns. Forget the base case and the stack overflows: Chrome reports <code>RangeError: Maximum call stack size exceeded</code>. A loop is usually simpler for counting; recursion shines for data that contains smaller copies of itself — folders inside folders, comments with replies, menus with sub-menus.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>return</code> — the function then gives <code>undefined</code>.</li>
            <li>Adding braces to an arrow function but no <code>return</code>: <code>(n) =&gt; { n * 2 }</code> returns <code>undefined</code>.</li>
            <li>Returning an object without brackets: <code>() =&gt; { name: "A" }</code> is read as a code block. Write <code>() =&gt; ({ name: "A" })</code>.</li>
            <li>Passing <code>fn()</code> (the result) when a callback <code>fn</code> (the function itself) was needed.</li>
            <li>Writing code after <code>return</code> and wondering why it never runs.</li>
            <li>Calling a <code>const</code> arrow function before the line that defines it — only function <em>declarations</em> are hoisted.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Write an arrow function <code>toFahrenheit(c)</code> that returns <code>c * 9 / 5 + 32</code>, and log it for 37.</li>
            <li>Give <code>calculateEmi</code> in the starter a default of 12 months and call it with only two arguments.</li>
            <li>Call <code>applyToAll</code> with a new callback that adds ₹10 to each price.</li>
            <li>Write <code>isEven(n)</code> as a one-line arrow function and test it with 4 and 7.</li>
            <li>Write a recursive <code>sumTo(n)</code> that returns 1 + 2 + … + n. What is its base case? Check that <code>sumTo(100)</code> gives 5050.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name functions with a verb that says what they do — <code>calculateTotal</code>, <code>formatDate</code>, <code>isValidEmail</code>. If you can't name it in a few words, the function is probably doing too much: split it.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 6: functions and arrow functions

        // Function declaration with a return value
        function addGst(amount) {
          const tax = amount * 0.18;
          return amount + tax;
        }
        console.log("addGst(500):", addGst(500));

        // Default parameters
        function greet(name = "Guest", greeting = "Namaste") {
          return greeting + ", " + name + "!";
        }
        console.log(greet("Kiran"));
        console.log(greet());

        // Rest parameters collect any number of arguments
        function sum(...numbers) {
          let total = 0;
          for (const n of numbers) total += n;
          return total;
        }
        console.log("sum(10, 20, 30):", sum(10, 20, 30));

        // Arrow functions
        const double = (n) => n * 2;
        const area = (length, width) => length * width;
        const makeUser = (name) => ({ name: name, active: true });
        console.log("double(21):", double(21), "| area(4, 5):", area(4, 5));
        console.log("makeUser:", JSON.stringify(makeUser("Asha")));

        // A function with a block body and several steps
        const calculateEmi = (principal, yearlyRate, months) => {
          const r = yearlyRate / 12 / 100;
          const emi = (principal * r * (1 + r) ** months) / ((1 + r) ** months - 1);
          return Math.round(emi);
        };
        console.log("EMI on ₹100000 at 12% for 12 months: ₹" + calculateEmi(100000, 12, 12));

        // Callbacks: passing a function into a function
        function applyToAll(prices, change) {
          const result = [];
          for (const p of prices) result.push(change(p));
          return result;
        }
        console.log("Discounted:", applyToAll([100, 250, 400], (p) => p * 0.9).join(", "));
        console.log("No return gives:", (function () {})());
      JS
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Scope, Hoisting and Closures</h1>
        </div>
        <p class="lc-lead"><strong>Scope</strong> decides where a variable can be used. <strong>Hoisting</strong> explains what happens before your code runs. <strong>Closures</strong> let a function remember variables from where it was created — one of JavaScript's most powerful ideas.</p>
        <div class="lc-card">
          <h3>Three Kinds of Scope</h3>
          <table class="lc-table">
            <thead><tr><th>Scope</th><th>Created by</th><th>Visible</th></tr></thead>
            <tbody>
              <tr><td>Global</td><td>Top level of a script</td><td>Everywhere</td></tr>
              <tr><td>Function</td><td>Every function</td><td>Only inside that function</td></tr>
              <tr><td>Block</td><td>Any <code>{ }</code> — <code>if</code>, <code>for</code>, a plain block</td><td>Only inside the braces (for <code>let</code> and <code>const</code>)</td></tr>
            </tbody>
          </table>
          <div class="lc-code">const appName = "Quiz";          // global<br><br>function play() {<br>&nbsp;&nbsp;const score = 10;               // function scope<br>&nbsp;&nbsp;if (score &gt; 5) {<br>&nbsp;&nbsp;&nbsp;&nbsp;const badge = "Gold";         // block scope<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log(appName, score, badge);   // Quiz 10 Gold<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;// console.log(badge);         // ReferenceError: badge is not defined<br>}<br>play();<br>// console.log(score);           // ReferenceError: score is not defined</div>
        </div>
        <div class="lc-card">
          <h3>The Scope Chain (Lexical Scope)</h3>
          <p>When JavaScript meets a name, it looks in the current scope first, then the <strong>outer</strong> scope, and so on up to global. Inner code can see outer variables; outer code can never see inner ones. The chain is decided by <em>where the code is written</em> — this is called <strong>lexical scope</strong>.</p>
          <p>If an inner scope declares the same name, it <strong>shadows</strong> the outer one:</p>
          <div class="lc-code">const city = "Delhi";<br>function show() {<br>&nbsp;&nbsp;const city = "Goa";   // shadows the global city<br>&nbsp;&nbsp;console.log(city);    // Goa<br>}<br>show();<br>console.log(city);      // Delhi</div>
        </div>
        <div class="lc-card">
          <h3>Hoisting</h3>
          <p>Before running a scope, JavaScript first registers all its declarations. This is called <strong>hoisting</strong>, and each kind of declaration behaves differently:</p>
          <table class="lc-table">
            <thead><tr><th>Declaration</th><th>Used before its line</th></tr></thead>
            <tbody>
              <tr><td><code>function greet() {}</code></td><td>Works — the whole function is hoisted</td></tr>
              <tr><td><code>var x = 5</code></td><td>Gives <code>undefined</code> (no error — a silent bug)</td></tr>
              <tr><td><code>let</code> / <code>const</code></td><td><code>ReferenceError</code> — the "temporal dead zone"</td></tr>
              <tr><td><code>const f = () =&gt; {}</code></td><td><code>ReferenceError</code> (it is a <code>const</code>)</td></tr>
            </tbody>
          </table>
          <div class="lc-code">console.log(hello());   // "hi" — declarations are hoisted<br>function hello() { return "hi"; }<br><br>console.log(total);     // ReferenceError: Cannot access 'total' before initialization<br>const total = 100;</div>
          <p>The error from <code>let</code>/<code>const</code> is a good thing: it catches the bug immediately, while <code>var</code> silently gives <code>undefined</code>.</p>
        </div>
        <div class="lc-card">
          <h3>var vs let in Loops (Predict the Output)</h3>
          <div class="lc-code">for (var i = 0; i &lt; 3; i++) {<br>&nbsp;&nbsp;setTimeout(() =&gt; console.log("var:", i), 0);<br>}<br>for (let j = 0; j &lt; 3; j++) {<br>&nbsp;&nbsp;setTimeout(() =&gt; console.log("let:", j), 0);<br>}</div>
          <p>Output:</p>
          <div class="lc-code">var: 3<br>var: 3<br>var: 3<br>let: 0<br>let: 1<br>let: 2</div>
          <p><code>var</code> creates <em>one</em> shared <code>i</code> for the whole loop; by the time the timers run, it is 3. <code>let</code> creates a <em>new</em> <code>j</code> for every round, so each timer remembers its own value.</p>
        </div>
        <div class="lc-card">
          <h3>Closures</h3>
          <p>A <strong>closure</strong> is a function together with the variables it can see from where it was created. The function keeps access to those variables <em>even after the outer function has finished</em>.</p>
          <div class="lc-code">function makeCounter() {<br>&nbsp;&nbsp;let count = 0;                // private to this counter<br>&nbsp;&nbsp;return () =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;count++;<br>&nbsp;&nbsp;&nbsp;&nbsp;return count;<br>&nbsp;&nbsp;};<br>}<br><br>const likes = makeCounter();<br>const views = makeCounter();<br>console.log(likes(), likes(), likes());   // 1 2 3<br>console.log(views());                     // 1 — a separate count</div>
          <p>Nobody outside can change <code>count</code> directly — only through the returned function. Closures give you <strong>private state</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Where Closures Are Used</h3>
          <ul class="lc-list">
            <li><strong>Function factories</strong> — <code>makeMultiplier(3)</code> returns a function that triples.</li>
            <li><strong>Private data</strong> — a bank balance that can only change through <code>deposit</code> and <code>withdraw</code>.</li>
            <li><strong>Callbacks and event handlers</strong> — a click handler remembers which item it belongs to (Lesson 17).</li>
            <li><strong>Run-once helpers</strong> — a function that only lets an action happen the first time.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Run-Once Helper</h3>
          <p>A payment button must not charge twice if the user double-clicks. A closure can remember whether the action already happened:</p>
          <div class="lc-code">function once(action) {<br>&nbsp;&nbsp;let done = false;<br>&nbsp;&nbsp;return (...args) =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;if (done) return "Already done";<br>&nbsp;&nbsp;&nbsp;&nbsp;done = true;<br>&nbsp;&nbsp;&nbsp;&nbsp;return action(...args);<br>&nbsp;&nbsp;};<br>}<br><br>const payOnce = once((amount) =&gt; "Paid ₹" + amount);<br>console.log(payOnce(499));<br>console.log(payOnce(499));</div>
          <p>Output:</p>
          <div class="lc-code">Paid ₹499<br>Already done</div>
          <p><code>done</code> lives on inside the returned function's closure, so the second call sees <code>true</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using a variable outside the block where it was declared with <code>let</code>/<code>const</code>.</li>
            <li>Creating accidental globals by assigning to an undeclared name (<code>total = 5</code>) — always declare with <code>const</code> or <code>let</code>. (In strict mode and in modules this throws an error.)</li>
            <li>Using <code>var</code> in loops with callbacks and getting the last value every time.</li>
            <li>Expecting two counters from the same factory to share a count — each call creates fresh variables.</li>
            <li>Shadowing by accident: declaring <code>const total</code> inside a function and then being surprised the outer <code>total</code> never changed.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, create a third counter and call it twice. Does it affect the others?</li>
            <li>Add a <code>reset</code> ability: make <code>makeCounter</code> return an object <code>{ next, reset }</code>.</li>
            <li>Write <code>makeGreeter(greeting)</code> that returns <code>(name) =&gt; greeting + ", " + name</code>.</li>
            <li>Swap the <code>let j</code> loop to <code>var j</code> and predict the output before you run it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Declare variables in the <em>smallest</em> scope that works. Fewer globals means fewer name clashes, and it is easier to see which code can change a value.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 7: scope, hoisting and closures

        // Block scope: badge only exists inside the if block
        const score = 10;
        if (score > 5) {
          const badge = "Gold";
          console.log("Inside block:", badge);
        }
        console.log("Outside block, typeof badge:", typeof badge);

        // Hoisting: function declarations can be called early
        console.log("Early call:", sayHi());
        function sayHi() { return "hi"; }

        // Closures: each counter keeps its own private count
        function makeCounter() {
          let count = 0;
          return () => {
            count++;
            return count;
          };
        }
        const likes = makeCounter();
        const views = makeCounter();
        console.log("likes:", likes(), likes(), likes());
        console.log("views:", views());

        // A function factory
        const makeMultiplier = (factor) => (n) => n * factor;
        const triple = makeMultiplier(3);
        console.log("triple(7):", triple(7));

        // Private state: balance can only change through these functions
        function createWallet(start) {
          let balance = start;
          return {
            pay: (amt) => { if (amt <= balance) balance -= amt; return balance; },
            add: (amt) => { balance += amt; return balance; },
          };
        }
        const wallet = createWallet(500);
        console.log("After paying 200:", wallet.pay(200));
        console.log("After adding 50:", wallet.add(50));
        console.log("wallet.balance is", wallet.balance, "(hidden by the closure)");

        // var vs let with timers
        for (var i = 0; i < 3; i++) setTimeout(() => console.log("var i =", i), 0);
        for (let j = 0; j < 3; j++) setTimeout(() => console.log("let j =", j), 0);
      JS
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Arrays</h1>
        </div>
        <p class="lc-lead">An <strong>array</strong> is an ordered list of values — a playlist, a shopping cart, a list of marks. Arrays are the most used data structure in JavaScript, so learning their basic operations pays off in every program.</p>
        <div class="lc-card">
          <h3>Creating and Reading Arrays</h3>
          <div class="lc-code">const cities = ["Delhi", "Mumbai", "Chennai", "Kolkata"];<br><br>console.log(cities.length);   // 4<br>console.log(cities[0]);       // "Delhi"  — indexes start at 0<br>console.log(cities[3]);       // "Kolkata" — last index is length - 1<br>console.log(cities.at(-1));   // "Kolkata" — negative index counts from the end<br>console.log(cities[10]);      // undefined — no error<br><br>cities[1] = "Pune";           // replace an item<br>console.log(cities);          // ["Delhi", "Pune", "Chennai", "Kolkata"]</div>
          <p>An array can hold any mix of types, even other arrays (<code>[[1, 2], [3, 4]]</code>), but in practice keep one kind of item per array.</p>
        </div>
        <div class="lc-card">
          <h3>Adding and Removing Items</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>push(x)</code></td><td>Add to the end</td><td>the new length</td></tr>
              <tr><td><code>pop()</code></td><td>Remove from the end</td><td>the removed item</td></tr>
              <tr><td><code>unshift(x)</code></td><td>Add to the start</td><td>the new length</td></tr>
              <tr><td><code>shift()</code></td><td>Remove from the start</td><td>the removed item</td></tr>
              <tr><td><code>splice(i, n)</code></td><td>Remove <code>n</code> items at index <code>i</code> (can also insert)</td><td>an array of removed items</td></tr>
            </tbody>
          </table>
          <div class="lc-code">const queue = ["Asha", "Ravi"];<br>queue.push("Meena");          // ["Asha", "Ravi", "Meena"]<br>const first = queue.shift();  // "Asha" — first come, first served<br>console.log(first, queue);    // Asha ["Ravi", "Meena"]</div>
        </div>
        <div class="lc-card">
          <h3>Searching</h3>
          <div class="lc-code">const marks = [72, 85, 90, 85];<br>console.log(marks.includes(90));    // true<br>console.log(marks.indexOf(85));     // 1  (first match)<br>console.log(marks.lastIndexOf(85)); // 3<br>console.log(marks.indexOf(100));    // -1 (not found)</div>
          <p>For searching with a condition ("the first mark above 80"), use <code>find</code> and <code>findIndex</code> in Lesson 9.</p>
        </div>
        <div class="lc-card">
          <h3>slice vs splice</h3>
          <p>These two names look alike but behave very differently:</p>
          <table class="lc-table">
            <thead><tr><th></th><th><code>slice(start, end)</code></th><th><code>splice(start, count, ...items)</code></th></tr></thead>
            <tbody>
              <tr><td>Changes the original?</td><td>No</td><td>Yes</td></tr>
              <tr><td>Returns</td><td>a new array (copy of a part)</td><td>the removed items</td></tr>
              <tr><td>Example</td><td><code>[1,2,3,4].slice(1, 3)</code> → <code>[2, 3]</code></td><td><code>arr.splice(1, 2)</code> removes 2 items from index 1</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Mutating vs Non-Mutating Methods</h3>
          <p>Some methods <strong>change (mutate)</strong> the array; newer ones return a changed <strong>copy</strong> and leave the original alone. The copy versions (Baseline 2023, supported in all current browsers) are safer when other code shares the array.</p>
          <table class="lc-table">
            <thead><tr><th>Mutates the original</th><th>Returns a new array instead</th></tr></thead>
            <tbody>
              <tr><td><code>arr.sort()</code></td><td><code>arr.toSorted()</code></td></tr>
              <tr><td><code>arr.reverse()</code></td><td><code>arr.toReversed()</code></td></tr>
              <tr><td><code>arr.splice(1, 1)</code></td><td><code>arr.toSpliced(1, 1)</code></td></tr>
              <tr><td><code>arr[2] = "x"</code></td><td><code>arr.with(2, "x")</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">const scores = [40, 10, 30];<br>const sorted = scores.toSorted((a, b) =&gt; a - b);<br>console.log(sorted);   // [10, 30, 40]<br>console.log(scores);   // [40, 10, 30] — unchanged</div>
          <p>The <code>(a, b) =&gt; a - b</code> part tells <code>sort</code> to compare as numbers — Lesson 9 explains why you need it.</p>
        </div>
        <div class="lc-card">
          <h3>Arrays Are References</h3>
          <p>A variable holds a <em>reference</em> to the array, not a copy. Assigning it to another variable shares the same array:</p>
          <div class="lc-code">const a = [1, 2, 3];<br>const b = a;          // same array!<br>b.push(4);<br>console.log(a);       // [1, 2, 3, 4]<br><br>const c = [...a];     // spread: a real (shallow) copy<br>c.push(5);<br>console.log(a.length, c.length);   // 4 5</div>
          <p>The <strong>spread</strong> syntax <code>...</code> also merges arrays: <code>[...fruits, ...vegetables]</code>. Checking equality compares references too: <code>[1] === [1]</code> is <code>false</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Array Destructuring</h3>
          <div class="lc-code">const podium = ["Priya", "Rahul", "Sneha", "Arjun"];<br>const [gold, silver, , fourth] = podium;   // skip one with an empty slot<br>const [winner, ...others] = podium;        // rest collects the remainder<br>console.log(gold, fourth);                 // Priya Arjun<br>console.log(others.length);                // 3<br><br>let x = 1, y = 2;<br>[x, y] = [y, x];                           // swap<br>console.log(x, y);                         // 2 1</div>
        </div>
        <div class="lc-card">
          <h3>Unique Values with Set</h3>
          <p>A <code>Set</code> is a collection where every value appears only once. The quickest way to remove duplicates:</p>
          <div class="lc-code">const tags = ["js", "css", "js", "html", "css"];<br>const unique = [...new Set(tags)];<br>console.log(unique);   // ["js", "css", "html"]</div>
          <p>Lesson 12 covers the full <code>Set</code> API, including union and intersection.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Reading <code>arr[arr.length]</code> — that is one past the end and gives <code>undefined</code>.</li>
            <li>Mixing up <code>slice</code> (copy) and <code>splice</code> (changes the array).</li>
            <li>Thinking <code>const</code> arrays cannot change — <code>push</code> still works; only reassignment is blocked.</li>
            <li>"Copying" with <code>const b = a</code> and then changing both by accident.</li>
            <li>Using <code>typeof</code> to check for arrays — use <code>Array.isArray(value)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add two songs to the starter's playlist — one at the start, one at the end.</li>
            <li>Use <code>toSpliced</code> to make a copy of the playlist without its second song.</li>
            <li>Destructure the first two cities from <code>cities</code> into <code>home</code> and <code>work</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a function receives an array from somewhere else, prefer the non-mutating methods (<code>toSorted</code>, <code>with</code>, spread) so you never surprise the code that owns the array.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 8: arrays
        const cities = ["Delhi", "Mumbai", "Chennai", "Kolkata"];
        console.log("Count:", cities.length);
        console.log("First:", cities[0], "| Last:", cities.at(-1));
        console.log("Has Chennai?", cities.includes("Chennai"), "| index:", cities.indexOf("Chennai"));
        console.log("");

        // Adding and removing
        const playlist = ["Kesariya", "Naatu Naatu"];
        console.log("push returns new length:", playlist.push("Jai Ho"));
        playlist.unshift("Chaiyya Chaiyya");
        console.log("Playlist:", playlist.join(" | "));
        console.log("pop removed:", playlist.pop());
        console.log("shift removed:", playlist.shift());
        console.log("Now:", playlist.join(" | "));
        console.log("");

        // slice copies a part; the original is unchanged
        const nums = [10, 20, 30, 40, 50];
        console.log("slice(1, 3):", nums.slice(1, 3).join(", "), "| original:", nums.join(", "));

        // Non-mutating versions return a new array
        const scores = [40, 10, 30];
        console.log("toSorted:", scores.toSorted((a, b) => a - b).join(", "));
        console.log("toReversed:", scores.toReversed().join(", "));
        console.log("with(0, 99):", scores.with(0, 99).join(", "));
        console.log("scores still:", scores.join(", "));
        console.log("");

        // References vs copies
        const a = [1, 2, 3];
        const sameArray = a;
        const copy = [...a];
        sameArray.push(4);
        console.log("a:", a.join(", "), "| copy:", copy.join(", "));

        // Destructuring and Set
        const [gold, silver, ...rest] = ["Priya", "Rahul", "Sneha", "Arjun"];
        console.log("Gold:", gold, "| Silver:", silver, "| Others:", rest.length);
        const tags = ["js", "css", "js", "html", "css"];
        console.log("Unique tags:", [...new Set(tags)].join(", "));
        console.log("Is array?", Array.isArray(tags), "| typeof:", typeof tags);
      JS
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Array Methods</h1>
        </div>
        <p class="lc-lead">Array methods such as <code>map</code>, <code>filter</code> and <code>reduce</code> take a <strong>callback function</strong> and do the looping for you. They make data processing short, readable and less error-prone than hand-written loops.</p>
        <div class="lc-card">
          <h3>The Data We'll Use</h3>
          <div class="lc-code">const orders = [<br>&nbsp;&nbsp;{ id: 1, item: "Biryani",  price: 280, city: "Hyderabad" },<br>&nbsp;&nbsp;{ id: 2, item: "Dosa",     price: 90,  city: "Chennai" },<br>&nbsp;&nbsp;{ id: 3, item: "Vada Pav", price: 30,  city: "Mumbai" },<br>&nbsp;&nbsp;{ id: 4, item: "Haleem",   price: 220, city: "Hyderabad" },<br>];</div>
          <p>Every callback receives <code>(item, index, array)</code>; usually you only need <code>item</code>.</p>
        </div>
        <div class="lc-card">
          <h3>forEach — Do Something With Each Item</h3>
          <div class="lc-code">orders.forEach((o, i) =&gt; console.log(i + 1 + ". " + o.item));<br>// 1. Biryani  2. Dosa  3. Vada Pav  4. Haleem</div>
          <p><code>forEach</code> returns <code>undefined</code> and you cannot <code>break</code> out of it. When you need a result, use one of the methods below; when you need <code>break</code>, use <code>for...of</code>.</p>
        </div>
        <div class="lc-card">
          <h3>map — Transform Every Item</h3>
          <p><code>map</code> returns a <strong>new array of the same length</strong>, where each item is whatever your callback returns.</p>
          <div class="lc-code">const names = orders.map((o) =&gt; o.item);<br>console.log(names);        // ["Biryani", "Dosa", "Vada Pav", "Haleem"]<br><br>const withGst = orders.map((o) =&gt; Math.round(o.price * 1.05));<br>console.log(withGst);      // [294, 95, 32, 231]</div>
        </div>
        <div class="lc-card">
          <h3>filter — Keep Only Matching Items</h3>
          <p><code>filter</code> returns a new array with the items for which the callback returns a truthy value. It may be shorter than the original — or empty.</p>
          <div class="lc-code">const hyd = orders.filter((o) =&gt; o.city === "Hyderabad");<br>console.log(hyd.length);   // 2<br><br>const cheap = orders.filter((o) =&gt; o.price &lt; 100).map((o) =&gt; o.item);<br>console.log(cheap);        // ["Dosa", "Vada Pav"]</div>
        </div>
        <div class="lc-card">
          <h3>reduce — Combine Everything Into One Value</h3>
          <p><code>reduce</code> carries an <strong>accumulator</strong> through the array. The second argument is the starting value.</p>
          <div class="lc-code">const total = orders.reduce((sum, o) =&gt; sum + o.price, 0);<br>console.log(total);   // 620</div>
          <p>Step by step: sum starts at 0 → 0 + 280 = 280 → 280 + 90 = 370 → 370 + 30 = 400 → 400 + 220 = 620. Always pass the starting value: without it, <code>reduce</code> uses the first item, which gives wrong results with objects and throws a <code>TypeError</code> on an empty array.</p>
        </div>
        <div class="lc-card">
          <h3>Finding and Testing</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th><th>Example → result</th></tr></thead>
            <tbody>
              <tr><td><code>find(fn)</code></td><td>first matching item or <code>undefined</code></td><td><code>orders.find(o =&gt; o.price &gt; 200).item</code> → <code>"Biryani"</code></td></tr>
              <tr><td><code>findIndex(fn)</code></td><td>its index or <code>-1</code></td><td><code>orders.findIndex(o =&gt; o.city === "Mumbai")</code> → <code>2</code></td></tr>
              <tr><td><code>findLast(fn)</code></td><td>last matching item</td><td><code>orders.findLast(o =&gt; o.price &gt; 200).item</code> → <code>"Haleem"</code></td></tr>
              <tr><td><code>some(fn)</code></td><td><code>true</code> if at least one matches</td><td><code>orders.some(o =&gt; o.price &lt; 50)</code> → <code>true</code></td></tr>
              <tr><td><code>every(fn)</code></td><td><code>true</code> if all match</td><td><code>orders.every(o =&gt; o.price &lt; 250)</code> → <code>false</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Sorting Correctly</h3>
          <p>Without a comparator, <code>sort</code> converts items to <strong>strings</strong> and sorts them alphabetically:</p>
          <div class="lc-code">console.log([10, 9, 1, 100].sort());                  // [1, 10, 100, 9]  ← wrong for numbers<br>console.log([10, 9, 1, 100].sort((a, b) =&gt; a - b));  // [1, 9, 10, 100]<br>console.log([10, 9, 1, 100].sort((a, b) =&gt; b - a));  // [100, 10, 9, 1]<br><br>const byPrice = orders.toSorted((a, b) =&gt; a.price - b.price);<br>console.log(byPrice.map((o) =&gt; o.item));   // ["Vada Pav", "Dosa", "Haleem", "Biryani"]<br><br>const words = ["banana", "Apple", "cherry"];<br>console.log(words.toSorted((a, b) =&gt; a.localeCompare(b)));   // ["Apple", "banana", "cherry"]</div>
          <p>A comparator returns a negative number if <code>a</code> should come first, positive if <code>b</code> should, and 0 if equal. Remember: <code>sort</code> changes the array; <code>toSorted</code> returns a copy.</p>
        </div>
        <div class="lc-card">
          <h3>Grouping and Flattening</h3>
          <div class="lc-code">const byCity = Object.groupBy(orders, (o) =&gt; o.city);<br>console.log(Object.keys(byCity));        // ["Hyderabad", "Chennai", "Mumbai"]<br>console.log(byCity.Hyderabad.length);    // 2<br><br>console.log([[1, 2], [3], [4, 5]].flat());                  // [1, 2, 3, 4, 5]<br>console.log(["a b", "c"].flatMap((s) =&gt; s.split(" ")));   // ["a", "b", "c"]</div>
          <p><code>Object.groupBy</code> (Baseline 2024) returns an object whose keys are the group names. It is a <em>null-prototype</em> object, so methods like <code>byCity.hasOwnProperty</code> don't exist on it — use <code>Object.keys</code> or <code>Object.hasOwn</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Chaining</h3>
          <p>Because <code>map</code> and <code>filter</code> return arrays, you can chain them into a readable pipeline:</p>
          <div class="lc-code">const hydTotal = orders<br>&nbsp;&nbsp;.filter((o) =&gt; o.city === "Hyderabad")<br>&nbsp;&nbsp;.map((o) =&gt; o.price)<br>&nbsp;&nbsp;.reduce((sum, p) =&gt; sum + p, 0);<br>console.log(hydTotal);   // 500</div>
        </div>
        <div class="lc-card">
          <h3>Which Method When?</h3>
          <table class="lc-table">
            <thead><tr><th>I want to…</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>change every item</td><td><code>map</code></td></tr>
              <tr><td>keep some items</td><td><code>filter</code></td></tr>
              <tr><td>get one total / object</td><td><code>reduce</code></td></tr>
              <tr><td>get one item</td><td><code>find</code> / <code>findLast</code></td></tr>
              <tr><td>answer yes/no</td><td><code>some</code> / <code>every</code> / <code>includes</code></td></tr>
              <tr><td>put in order</td><td><code>toSorted</code> (or <code>sort</code> to change in place)</td></tr>
              <tr><td>split into groups</td><td><code>Object.groupBy</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting to <code>return</code> inside a braced callback: <code>map(o =&gt; { o.price * 2 })</code> gives <code>[undefined, …]</code>.</li>
            <li>Sorting numbers without <code>(a, b) =&gt; a - b</code>.</li>
            <li>Leaving out the initial value of <code>reduce</code>.</li>
            <li>Using <code>map</code> just to loop (ignoring the result) — use <code>forEach</code> or <code>for...of</code>.</li>
            <li>Expecting <code>filter</code> to return one item — it always returns an array; use <code>find</code> for one.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, list the names of students who scored 60 or more.</li>
            <li>Find the student with the lowest mark using <code>toSorted</code> or <code>reduce</code>.</li>
            <li>Group the students by <code>house</code> and print how many are in each.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read a chain from top to bottom as a sentence: "take the orders, <em>keep</em> Hyderabad ones, <em>turn</em> them into prices, <em>add</em> them up". If a chain gets longer than about four steps, give the middle results names.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 9: array methods
        const students = [
          { name: "Aditi", marks: 88, house: "Red" },
          { name: "Kabir", marks: 54, house: "Blue" },
          { name: "Sana", marks: 72, house: "Red" },
          { name: "Rohan", marks: 39, house: "Green" },
          { name: "Isha", marks: 95, house: "Blue" },
        ];

        // map: transform every item
        console.log("Names:", students.map((s) => s.name).join(", "));

        // filter: keep matching items
        const passed = students.filter((s) => s.marks >= 40);
        console.log("Passed:", passed.length, "of", students.length);

        // reduce: combine into one value
        const total = students.reduce((sum, s) => sum + s.marks, 0);
        console.log("Class average:", (total / students.length).toFixed(1));

        // find, findLast, some, every
        console.log("First above 70:", students.find((s) => s.marks > 70).name);
        console.log("Last above 70:", students.findLast((s) => s.marks > 70).name);
        console.log("Anyone failed?", students.some((s) => s.marks < 40));
        console.log("Everyone above 30?", students.every((s) => s.marks > 30));

        // Sorting: default sort compares strings!
        console.log("sort():", [10, 9, 1, 100].sort().join(", "));
        console.log("sort((a, b) => a - b):", [10, 9, 1, 100].sort((a, b) => a - b).join(", "));
        const ranking = students.toSorted((a, b) => b.marks - a.marks);
        console.log("Rank list:", ranking.map((s) => s.name + " " + s.marks).join(" > "));
        console.log("Original order kept:", students[0].name);

        // Chaining: total marks of the Red house
        const redTotal = students
          .filter((s) => s.house === "Red")
          .map((s) => s.marks)
          .reduce((sum, m) => sum + m, 0);
        console.log("Red house total:", redTotal);

        // Object.groupBy
        const byHouse = Object.groupBy(students, (s) => s.house);
        for (const house of Object.keys(byHouse)) {
          console.log(house + ":", byHouse[house].map((s) => s.name).join(", "));
        }
      JS
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Objects, Destructuring and Optional Chaining</h1>
        </div>
        <p class="lc-lead">An <strong>object</strong> groups related data under named keys — a user, a product, an order. Modern JavaScript adds handy syntax on top: <strong>destructuring</strong> to unpack values, <strong>spread</strong> to copy and merge, and <strong>optional chaining</strong> to read deep data safely.</p>
        <div class="lc-card">
          <h3>Creating and Using Objects</h3>
          <div class="lc-code">const user = {<br>&nbsp;&nbsp;name: "Priya",<br>&nbsp;&nbsp;age: 24,<br>&nbsp;&nbsp;"home city": "Jaipur",          // keys with spaces need quotes<br>&nbsp;&nbsp;greet() {                        // method shorthand<br>&nbsp;&nbsp;&nbsp;&nbsp;return "Hi, I am " + this.name;<br>&nbsp;&nbsp;},<br>};<br><br>console.log(user.name);            // "Priya"  — dot notation<br>console.log(user["home city"]);    // "Jaipur" — bracket notation<br>console.log(user.greet());         // "Hi, I am Priya"<br><br>user.email = "priya@example.in";   // add<br>user.age = 25;                     // update<br>delete user["home city"];          // remove<br>console.log(user.phone);           // undefined — missing keys don't throw</div>
        </div>
        <div class="lc-card">
          <h3>Dot vs Bracket Notation</h3>
          <table class="lc-table">
            <thead><tr><th>Use</th><th>When</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Dot</td><td>The key is a fixed, valid name</td><td><code>user.name</code></td></tr>
              <tr><td>Bracket</td><td>The key is in a variable, or has spaces/dashes</td><td><code>user[field]</code>, <code>user["home city"]</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">const field = "age";<br>console.log(user[field]);   // 25<br>console.log(user.field);    // undefined — looks for a key literally called "field"</div>
        </div>
        <div class="lc-card">
          <h3>Shorthand and Computed Keys</h3>
          <div class="lc-code">const name = "Laptop";<br>const price = 55000;<br>const product = { name, price };               // same as { name: name, price: price }<br><br>const key = "discount";<br>const offer = { [key]: 10 };                   // computed key → { discount: 10 }</div>
        </div>
        <div class="lc-card">
          <h3>Looping Over Objects</h3>
          <div class="lc-code">const stock = { rice: 40, dal: 25, sugar: 0 };<br>console.log(Object.keys(stock));     // ["rice", "dal", "sugar"]<br>console.log(Object.values(stock));   // [40, 25, 0]<br><br>for (const [item, qty] of Object.entries(stock)) {<br>&nbsp;&nbsp;console.log(item + ": " + qty);<br>}<br><br>// entries → change → fromEntries: double every quantity<br>const doubled = Object.fromEntries(<br>&nbsp;&nbsp;Object.entries(stock).map(([k, v]) =&gt; [k, v * 2])<br>);<br>console.log(doubled);   // { rice: 80, dal: 50, sugar: 0 }<br><br>console.log(Object.hasOwn(stock, "sugar"));   // true — even though its value is 0</div>
        </div>
        <div class="lc-card">
          <h3>Object Destructuring</h3>
          <p>Destructuring pulls properties out into variables in one line. The rules:</p>
          <ul class="lc-list">
            <li>The variable name must match the key, unless you rename it with <code>key: newName</code>.</li>
            <li>A missing key gives <code>undefined</code>, unless you add a default with <code>=</code>.</li>
            <li>You can destructure nested objects, and use <code>...rest</code> to collect the remaining keys.</li>
          </ul>
          <div class="lc-code">const order = { id: 101, total: 750, customer: { name: "Arjun", city: "Surat" } };<br><br>const { id, total } = order;                         // by key name<br>const { total: amount } = order;                     // rename → amount<br>const { coupon = "NONE" } = order;                   // default if missing<br>const { customer: { city } } = order;                // nested<br>console.log(id, amount, coupon, city);               // 101 750 NONE Surat<br><br>// Very common in function parameters:<br>function label({ id, total }) {<br>&nbsp;&nbsp;return "#" + id + " — ₹" + total;<br>}<br>console.log(label(order));                           // #101 — ₹750</div>
        </div>
        <div class="lc-card">
          <h3>Spread: Copy and Merge</h3>
          <div class="lc-code">const defaults = { theme: "light", fontSize: 14 };<br>const saved = { fontSize: 18 };<br>const settings = { ...defaults, ...saved };   // later keys win<br>console.log(settings);   // { theme: "light", fontSize: 18 }</div>
          <p>Spread makes a <strong>shallow</strong> copy: nested objects are still shared. For a full deep copy use <code>structuredClone</code>:</p>
          <div class="lc-code">const original = { name: "Kit", tags: ["new"] };<br>const shallow = { ...original };<br>const deep = structuredClone(original);<br>shallow.tags.push("sale");<br>console.log(original.tags);   // ["new", "sale"] — shared array changed!<br>console.log(deep.tags);       // ["new"]         — independent copy</div>
          <p><code>structuredClone</code> copies plain data, arrays, Dates, Maps and Sets, but not functions (it throws a <code>DataCloneError</code>).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Updating Without Changing the Original</h3>
          <p>Apps often keep the old version of data (for undo, or so the screen can compare). Spread lets you build an updated copy, level by level:</p>
          <div class="lc-code">const cart = { user: "Asha", address: { city: "Pune", pin: "411001" }, items: 2 };<br><br>const moved = {<br>&nbsp;&nbsp;...cart,<br>&nbsp;&nbsp;address: { ...cart.address, city: "Nagpur" },<br>};<br><br>console.log(cart.address.city);    // Pune   — original untouched<br>console.log(moved.address.city);   // Nagpur<br>console.log(moved.address.pin);    // 411001 — other keys copied</div>
          <p>Each level you change needs its own spread; the levels you don't touch are shared safely because nobody modifies them.</p>
        </div>
        <div class="lc-card">
          <h3>Optional Chaining ?.</h3>
          <p>Reading a property of <code>undefined</code> crashes: <code>TypeError: Cannot read properties of undefined</code>. Optional chaining stops and returns <code>undefined</code> instead as soon as something is <code>null</code> or <code>undefined</code>.</p>
          <div class="lc-code">const apiUser = { name: "Dev", address: null, orders: [] };<br><br>console.log(apiUser.address?.city);            // undefined (no crash)<br>console.log(apiUser.orders?.[0]?.total);        // undefined — works with [ ] too<br>console.log(apiUser.sayHi?.());                 // undefined — call only if it exists<br>console.log(apiUser.address?.city ?? "Unknown");  // "Unknown" — combine with ??</div>
          <p>Use <code>?.</code> where a value is <em>allowed</em> to be missing. Don't sprinkle it everywhere — if data must exist, a crash tells you about a real bug.</p>
        </div>
        <div class="lc-card">
          <h3>Object or Map?</h3>
          <p>A <code>Map</code> is a key-value collection built for lookups (Lesson 12 covers it in depth):</p>
          <div class="lc-code">const visits = new Map();<br>visits.set("home", 3).set("cart", 1);<br>visits.set("home", visits.get("home") + 1);<br>console.log(visits.get("home"), visits.size, visits.has("cart"));   // 4 2 true<br>console.log([...visits]);   // [["home", 4], ["cart", 1]]</div>
          <table class="lc-table">
            <thead><tr><th></th><th>Object</th><th>Map</th></tr></thead>
            <tbody>
              <tr><td>Keys</td><td>strings (and symbols)</td><td>any value — numbers, objects…</td></tr>
              <tr><td>Size</td><td><code>Object.keys(o).length</code></td><td><code>map.size</code></td></tr>
              <tr><td>Best for</td><td>fixed shapes: a user, a product</td><td>lookups that grow and shrink: caches, counters</td></tr>
              <tr><td>JSON</td><td>works directly</td><td>convert first (<code>Object.fromEntries(map)</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>user.field</code> when the key is stored in a variable — use <code>user[field]</code>.</li>
            <li>Thinking spread makes a deep copy — nested objects are shared.</li>
            <li>Comparing objects with <code>===</code>: two objects with the same contents are still different objects.</li>
            <li>Checking a key with <code>if (stock.sugar)</code> when the value may be <code>0</code> — use <code>Object.hasOwn</code> or <code>"sugar" in stock</code>.</li>
            <li>Using an arrow function as a method that needs <code>this</code> (Lesson 11).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, destructure <code>phone</code> from <code>profile</code> with a default of <code>"not given"</code>.</li>
            <li>Merge <code>{ plan: "pro" }</code> into the settings using spread.</li>
            <li>Read <code>profile.address?.pincode</code> and print "No pincode" if it is missing.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Treat objects you receive as read-only: build a new one with spread (<code>{ ...user, age: 26 }</code>) instead of changing the original. Many bugs come from two parts of a program changing the same object.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 10: objects, destructuring and optional chaining
        const profile = {
          name: "Priya",
          age: 24,
          address: { city: "Jaipur", pincode: "302001" },
          skills: ["HTML", "CSS", "JS"],
          greet() { return "Hi, I am " + this.name; },
        };
        console.log(profile.greet());
        const field = "age";
        console.log("Bracket notation:", profile[field]);

        // Loop over keys and values
        const stock = { rice: 40, dal: 25, sugar: 0 };
        for (const [item, qty] of Object.entries(stock)) {
          console.log(item, "->", qty === 0 ? "out of stock" : qty + " kg");
        }
        console.log("Has sugar key?", Object.hasOwn(stock, "sugar"));

        // Destructuring with rename, default and nesting
        const { name, age: years, email = "none", address: { city } } = profile;
        console.log(name, years, email, city);

        // Spread merges (later wins) - but it is shallow
        const settings = { ...{ theme: "light", fontSize: 14 }, ...{ fontSize: 18 } };
        console.log("Settings:", JSON.stringify(settings));
        const shallow = { ...profile };
        const deep = structuredClone({ skills: profile.skills });
        shallow.skills.push("React");
        console.log("Original skills:", profile.skills.join(", "));
        console.log("Deep copy skills:", deep.skills.join(", "));

        // Optional chaining and ??
        const apiUser = { name: "Dev", address: null, orders: [] };
        console.log("City:", apiUser.address?.city ?? "Unknown");
        console.log("First order total:", apiUser.orders[0]?.total ?? 0);
        console.log("sayHi():", apiUser.sayHi?.());

        // Map for counting
        const visits = new Map();
        for (const page of ["home", "cart", "home", "home"]) {
          visits.set(page, (visits.get(page) ?? 0) + 1);
        }
        console.log("Visits:", JSON.stringify([...visits]), "| size:", visits.size);
      JS
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Classes and this</h1>
        </div>
        <p class="lc-lead">A <strong>class</strong> is a blueprint for creating many objects of the same kind — many bank accounts, many products, many players. Classes bundle data and the methods that work on it, and <code>this</code> is how a method refers to "the object I was called on".</p>
        <div class="lc-card">
          <h3>Why Classes?</h3>
          <ul class="lc-list">
            <li><strong>One blueprint, many objects</strong> — every account has the same fields and methods without copy-pasting.</li>
            <li><strong>Data and behaviour together</strong> — the code that changes a balance lives next to the balance.</li>
            <li><strong>Protection</strong> — private fields stop other code from breaking the rules.</li>
            <li><strong>Common in real code</strong> — browser APIs (<code>Date</code>, <code>Map</code>, <code>Error</code>), libraries and frameworks all use classes.</li>
          </ul>
          <p>For a single one-off object, a plain object literal (Lesson 10) is simpler. Reach for a class when you need <em>many</em> objects of the same shape.</p>
        </div>
        <div class="lc-card">
          <h3>A First Class</h3>
          <div class="lc-code">class Product {<br>&nbsp;&nbsp;constructor(name, price) {   // runs when you call new Product(...)<br>&nbsp;&nbsp;&nbsp;&nbsp;this.name = name;<br>&nbsp;&nbsp;&nbsp;&nbsp;this.price = price;<br>&nbsp;&nbsp;}<br><br>&nbsp;&nbsp;priceWithGst() {             // a method shared by all products<br>&nbsp;&nbsp;&nbsp;&nbsp;return Math.round(this.price * 1.18);<br>&nbsp;&nbsp;}<br>}<br><br>const phone = new Product("Phone", 15000);<br>const bag = new Product("Bag", 1200);<br>console.log(phone.priceWithGst());   // 17700<br>console.log(bag.name);               // "Bag"<br>console.log(phone instanceof Product);  // true</div>
          <ul class="lc-list">
            <li><code>new</code> creates an empty object, runs the <code>constructor</code> with <code>this</code> set to it, and returns it.</li>
            <li>Each object made from a class is an <strong>instance</strong>.</li>
            <li>Class names use <strong>PascalCase</strong>: <code>Product</code>, <code>BankAccount</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Fields, Getters and Setters</h3>
          <div class="lc-code">class Temperature {<br>&nbsp;&nbsp;celsius = 0;                          // a public field with a default<br><br>&nbsp;&nbsp;get fahrenheit() {                    // read like a property<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.celsius * 9 / 5 + 32;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;set fahrenheit(f) {                   // assign like a property<br>&nbsp;&nbsp;&nbsp;&nbsp;this.celsius = (f - 32) * 5 / 9;<br>&nbsp;&nbsp;}<br>}<br><br>const t = new Temperature();<br>t.celsius = 37;<br>console.log(t.fahrenheit);   // 98.6  (no brackets — it's a getter)<br>t.fahrenheit = 212;<br>console.log(t.celsius);      // 100</div>
        </div>
        <div class="lc-card">
          <h3>Private Fields with #</h3>
          <p>Names starting with <code>#</code> are <strong>truly private</strong>: code outside the class cannot read or change them at all. This protects rules like "the balance can never go negative".</p>
          <div class="lc-code">class BankAccount {<br>&nbsp;&nbsp;#balance = 0;<br><br>&nbsp;&nbsp;constructor(owner) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.owner = owner;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;deposit(amount) {<br>&nbsp;&nbsp;&nbsp;&nbsp;if (amount &lt;= 0) throw new Error("Deposit must be positive");<br>&nbsp;&nbsp;&nbsp;&nbsp;this.#balance += amount;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;get balance() {<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.#balance;<br>&nbsp;&nbsp;}<br>}<br><br>const acc = new BankAccount("Meera");<br>acc.deposit(1000);<br>console.log(acc.balance);   // 1000<br>acc.balance = 5;            // ignored — there is only a getter (in strict code this throws a TypeError)<br>// acc.#balance            // SyntaxError: Private field '#balance' must be declared in an enclosing class</div>
        </div>
        <div class="lc-card">
          <h3>Static Members</h3>
          <p><code>static</code> members belong to the class itself, not to each instance — good for counters and helper functions.</p>
          <div class="lc-code">class Ticket {<br>&nbsp;&nbsp;static count = 0;<br>&nbsp;&nbsp;constructor() {<br>&nbsp;&nbsp;&nbsp;&nbsp;Ticket.count++;<br>&nbsp;&nbsp;&nbsp;&nbsp;this.number = Ticket.count;<br>&nbsp;&nbsp;}<br>}<br>new Ticket(); new Ticket();<br>console.log(Ticket.count);   // 2</div>
        </div>
        <div class="lc-card">
          <h3>Inheritance: extends and super</h3>
          <div class="lc-code">class SavingsAccount extends BankAccount {<br>&nbsp;&nbsp;constructor(owner, rate) {<br>&nbsp;&nbsp;&nbsp;&nbsp;super(owner);                // must call the parent constructor first<br>&nbsp;&nbsp;&nbsp;&nbsp;this.rate = rate;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;addInterest() {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.deposit(this.balance * this.rate);   // reuse parent methods<br>&nbsp;&nbsp;}<br>}<br><br>const s = new SavingsAccount("Ravi", 0.05);<br>s.deposit(2000);<br>s.addInterest();<br>console.log(s.balance);                    // 2100<br>console.log(s instanceof BankAccount);     // true</div>
          <p>A child class can <strong>override</strong> a parent method by defining one with the same name, and call the parent version with <code>super.methodName()</code>. Keep inheritance shallow — one or two levels. Often it is simpler to put one object <em>inside</em> another (composition).</p>
        </div>
        <div class="lc-card">
          <h3>Under the Hood: Prototypes</h3>
          <p>JavaScript classes are built on <strong>prototypes</strong>. Every object has a hidden link to another object, its prototype. When you read a property the object doesn't have, JavaScript follows that link — and the next one — until it finds it or reaches the end of the <strong>prototype chain</strong>.</p>
          <div class="lc-code">const phone = new Product("Phone", 15000);<br>console.log(Object.getPrototypeOf(phone) === Product.prototype);   // true<br>console.log(Object.hasOwn(phone, "name"));           // true  — stored on the object itself<br>console.log(Object.hasOwn(phone, "priceWithGst"));   // false — found on Product.prototype<br>console.log(typeof Product);                         // "function" — a class is a special function<br>console.log(phone.toString());                       // [object Object] — from Object.prototype</div>
          <p>Chain: <code>phone</code> → <code>Product.prototype</code> (methods) → <code>Object.prototype</code> (<code>toString</code>, …) → <code>null</code>. That is why methods are stored once and shared by every instance, and why <code>extends</code> simply adds one more link to the chain.</p>
          <table class="lc-table">
            <thead><tr><th>Way to share methods</th><th>Example</th><th>Status</th></tr></thead>
            <tbody>
              <tr><td><code>class</code></td><td><code>class Product { describe() { … } }</code></td><td>modern — use this</td></tr>
              <tr><td><code>Object.create(proto)</code></td><td><code>const user = Object.create(base)</code></td><td>fine for a quick object that shares another's methods</td></tr>
              <tr><td>Constructor function + <code>prototype</code></td><td><code>function Product(n) { this.name = n }</code><br><code>Product.prototype.describe = function () { … }</code></td><td>old way — you will read it in older code, don't write it</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Inheritance or Composition?</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Inheritance (<code>extends</code>)</th><th>Composition (object inside object)</th></tr></thead>
            <tbody>
              <tr><td>Relationship</td><td>"is a" — a SavingsAccount <em>is a</em> BankAccount</td><td>"has a" — a Customer <em>has an</em> account</td></tr>
              <tr><td>Reuse</td><td>child gets all parent methods</td><td>call methods of the inner object</td></tr>
              <tr><td>Risk</td><td>deep chains become hard to change</td><td>a little more code to forward calls</td></tr>
            </tbody>
          </table>
          <div class="lc-code">class Customer {<br>&nbsp;&nbsp;constructor(name) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.name = name;<br>&nbsp;&nbsp;&nbsp;&nbsp;this.account = new BankAccount(name);   // composition<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>How this Is Decided</h3>
          <p>For normal functions and methods, <code>this</code> is decided by <strong>how the function is called</strong>, not where it is written. Arrow functions are different: they have no <code>this</code> of their own and use the <code>this</code> of the surrounding code.</p>
          <table class="lc-table">
            <thead><tr><th>Call</th><th><code>this</code> is</th></tr></thead>
            <tbody>
              <tr><td><code>phone.priceWithGst()</code></td><td><code>phone</code> — the object before the dot</td></tr>
              <tr><td><code>const f = phone.priceWithGst; f()</code></td><td><code>undefined</code> — the method was detached (classes are always in strict mode) → TypeError</td></tr>
              <tr><td><code>new Product(…)</code></td><td>the new object</td></tr>
              <tr><td>Arrow function</td><td>the <code>this</code> of the code around it</td></tr>
              <tr><td><code>f.bind(obj)</code></td><td>always <code>obj</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">class Timer {<br>&nbsp;&nbsp;seconds = 0;<br>&nbsp;&nbsp;start() {<br>&nbsp;&nbsp;&nbsp;&nbsp;// arrow callback keeps the Timer's this<br>&nbsp;&nbsp;&nbsp;&nbsp;setTimeout(() =&gt; { this.seconds++; console.log(this.seconds); }, 0);<br>&nbsp;&nbsp;}<br>}<br>new Timer().start();   // 1</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>new</code>: <code>Product("Pen", 10)</code> throws <code>TypeError: Class constructor Product cannot be invoked without 'new'</code>.</li>
            <li>Forgetting <code>this.</code> inside a method (<code>price</code> instead of <code>this.price</code>) — you get a ReferenceError or the wrong variable.</li>
            <li>Using <code>this</code> before <code>super()</code> in a child constructor — a ReferenceError.</li>
            <li>Passing a method as a callback (<code>setTimeout(acc.deposit, 0)</code>) and losing <code>this</code> — wrap it: <code>() =&gt; acc.deposit(100)</code>.</li>
            <li>Making everything public — use <code>#private</code> fields for data that must follow rules.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a <code>withdraw(amount)</code> method to <code>BankAccount</code> in the starter that throws if the balance is too low.</li>
            <li>Add a static method <code>BankAccount.compare(a, b)</code> that returns the richer owner's name.</li>
            <li>Create a <code>CurrentAccount</code> class that extends <code>BankAccount</code> and overrides <code>describe()</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you see <code>Cannot read properties of undefined</code> inside a method, suspect a lost <code>this</code>. Check <em>how</em> the method was called — was it detached from its object?
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 11: classes and this
        class BankAccount {
          #balance = 0;              // private: only this class can touch it
          static count = 0;          // shared by the class

          constructor(owner) {
            this.owner = owner;
            BankAccount.count++;
          }
          deposit(amount) {
            if (amount <= 0) throw new Error("Deposit must be positive");
            this.#balance += amount;
            return this;             // allows chaining
          }
          get balance() {
            return this.#balance;
          }
          describe() {
            return this.owner + " has ₹" + this.#balance;
          }
        }

        class SavingsAccount extends BankAccount {
          constructor(owner, rate) {
            super(owner);
            this.rate = rate;
          }
          addInterest() {
            this.deposit(this.balance * this.rate);
          }
          describe() {
            return super.describe() + " (savings at " + this.rate * 100 + "%)";
          }
        }

        const meera = new BankAccount("Meera").deposit(1000).deposit(500);
        const ravi = new SavingsAccount("Ravi", 0.05);
        ravi.deposit(2000);
        ravi.addInterest();

        console.log(meera.describe());
        console.log(ravi.describe());
        console.log("Accounts opened:", BankAccount.count);
        console.log("ravi instanceof BankAccount:", ravi instanceof BankAccount);
        console.log("Private field visible from outside?", Object.keys(meera).join(", "));

        const detached = meera.describe;
        try { detached(); } catch (e) { console.log("Detached call failed:", e.constructor.name); }
        const bound = meera.describe.bind(meera);
        console.log("Bound call works:", bound());
      JS
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Iterators, Generators, Map and Set</h1>
        </div>
        <p class="lc-lead"><code>for...of</code> works on arrays, strings, Maps and Sets because they all follow one simple rule: the <strong>iterator protocol</strong>. In this lesson you learn that rule, write your own lazy sequences with <strong>generators</strong>, and master the two collections built for fast lookups: <strong>Map</strong> and <strong>Set</strong>.</p>
        <div class="lc-card">
          <h3>The Iterator Protocol</h3>
          <p>An <strong>iterable</strong> is any object with a <code>[Symbol.iterator]()</code> method. That method returns an <strong>iterator</strong>: an object whose <code>next()</code> method hands out one value at a time as <code>{ value, done }</code>.</p>
          <div class="lc-code">const it = ["UPI", "Card"][Symbol.iterator]();<br>console.log(it.next());   // { value: "UPI", done: false }<br>console.log(it.next());   // { value: "Card", done: false }<br>console.log(it.next());   // { value: undefined, done: true }</div>
          <p><code>for...of</code>, spread <code>[...x]</code>, destructuring <code>const [a, b] = x</code>, <code>Array.from(x)</code> and <code>new Set(x)</code> all call <code>next()</code> for you until <code>done</code> is <code>true</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>Iterable?</th><th><code>for...of</code> gives you</th></tr></thead>
            <tbody>
              <tr><td>Array</td><td>Yes</td><td>each item</td></tr>
              <tr><td>String</td><td>Yes</td><td>each character</td></tr>
              <tr><td>Set</td><td>Yes</td><td>each value, in insertion order</td></tr>
              <tr><td>Map</td><td>Yes</td><td>each <code>[key, value]</code> pair, in insertion order</td></tr>
              <tr><td>Plain object <code>{}</code></td><td><strong>No</strong> — TypeError</td><td>use <code>Object.entries(obj)</code> instead</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Generators: function* and yield</h3>
          <p>Writing <code>next()</code> by hand is tiring. A <strong>generator function</strong> (note the <code>*</code>) does it for you. Each <code>yield</code> hands out one value and <em>pauses</em> the function until the next value is asked for.</p>
          <div class="lc-code">function* countdown(from) {<br>&nbsp;&nbsp;for (let i = from; i &gt; 0; i--) {<br>&nbsp;&nbsp;&nbsp;&nbsp;yield i;<br>&nbsp;&nbsp;}<br>}<br><br>const gen = countdown(3);<br>console.log(gen.next().value);      // 3<br>console.log([...gen].join(", "));   // 2, 1   (the rest)<br>console.log([...countdown(3)]);     // [3, 2, 1]  (a fresh generator)</div>
          <p>Calling <code>countdown(3)</code> runs <em>no code yet</em> — it only creates a generator object. A generator can be used <strong>once</strong>; call the function again for a fresh one.</p>
          <p>Add <code>*[Symbol.iterator]()</code> to a class to make your own objects work with <code>for...of</code>:</p>
          <div class="lc-code">class Playlist {<br>&nbsp;&nbsp;constructor(...songs) { this.songs = songs; }<br>&nbsp;&nbsp;*[Symbol.iterator]() { yield* this.songs; }   // yield* hands out every item of another iterable<br>}<br>for (const song of new Playlist("Kesariya", "Naatu Naatu")) console.log(song);<br>// Kesariya<br>// Naatu Naatu</div>
        </div>
        <div class="lc-card">
          <h3>Lazy Sequences and Iterator Helpers (ES2025)</h3>
          <p>A generator can even be <strong>endless</strong>, because it only makes a value when asked. Since ES2025, every iterator has helper methods like arrays do — <code>.map()</code>, <code>.filter()</code>, <code>.take(n)</code>, <code>.drop(n)</code>, <code>.find()</code>, <code>.some()</code> and <code>.toArray()</code>. They are <strong>lazy</strong>: no work happens until a value is pulled.</p>
          <div class="lc-code">function* orderIds() {<br>&nbsp;&nbsp;let n = 1;<br>&nbsp;&nbsp;while (true) yield n++;   // endless, but safe: values are made on demand<br>}<br><br>const firstEven = orderIds()<br>&nbsp;&nbsp;.filter((n) =&gt; n % 2 === 0)<br>&nbsp;&nbsp;.map((n) =&gt; "ORD-" + n)<br>&nbsp;&nbsp;.take(3)       // stop after 3 values<br>&nbsp;&nbsp;.toArray();    // collect into a real array<br>console.log(firstEven.join(", "));</div>
          <p>Output:</p>
          <div class="lc-code">ORD-2, ORD-4, ORD-6</div>
          <p>Without <code>.take(3)</code>, <code>.toArray()</code> would run forever. Iterator helpers are Baseline 2025 (Chrome 122, Firefox 131, Safari 18.4). Use <code>Iterator.from(x)</code> to get the helpers on any iterable.</p>
        </div>
        <div class="lc-card">
          <h3>Set: Unique Values</h3>
          <p>A <code>Set</code> stores each value <strong>once</strong>, keeps insertion order, and answers "is this in here?" very fast with <code>has()</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>new Set(iterable)</code></td><td>create, dropping duplicates</td></tr>
              <tr><td><code>add(v)</code> / <code>delete(v)</code> / <code>clear()</code></td><td>change the set (<code>add</code> returns the set, so it chains)</td></tr>
              <tr><td><code>has(v)</code> / <code>size</code></td><td>membership test / how many values</td></tr>
              <tr><td><code>union</code>, <code>intersection</code>, <code>difference</code>, <code>symmetricDifference</code></td><td>ES2025: return a <strong>new</strong> Set</td></tr>
              <tr><td><code>isSubsetOf</code>, <code>isSupersetOf</code>, <code>isDisjointFrom</code></td><td>ES2025: return <code>true</code>/<code>false</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">const python = new Set(["Asha", "Ravi", "Meera"]);<br>const js = new Set(["Ravi", "Kiran", "Asha"]);<br><br>console.log([...python.intersection(js)].join(", "));         // Asha, Ravi<br>console.log([...python.union(js)].join(", "));                // Asha, Ravi, Meera, Kiran<br>console.log([...python.difference(js)].join(", "));           // Meera<br>console.log([...python.symmetricDifference(js)].join(", "));  // Meera, Kiran<br>console.log(new Set(["Ravi"]).isSubsetOf(python));             // true</div>
          <p>Sets compare with (almost) <code>===</code>: two different objects with the same contents are two different values, so <code>new Set([{ id: 1 }, { id: 1 }]).size</code> is <code>2</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Map: Key-Value Lookups</h3>
          <p>You met <code>Map</code> briefly in Lesson 10. Here is its full API:</p>
          <div class="lc-code">const stock = new Map([["pen", 40], ["book", 12]]);   // from [key, value] pairs<br>stock.set("bag", 5).set("pen", 35);                  // set() chains; same key = update<br>stock.delete("book");<br><br>console.log(stock.get("pen"), stock.size, stock.has("book"));   // 35 2 false<br>console.log(stock.get("pencil"));                             // undefined<br>for (const [item, qty] of stock) console.log(item, qty);      // pen 35, then bag 5<br>console.log([...stock.keys()].join(", "));                    // pen, bag</div>
          <ul class="lc-list">
            <li><code>keys()</code>, <code>values()</code> and <code>entries()</code> return <strong>iterators</strong> — spread them or use <code>for...of</code>.</li>
            <li>Convert both ways: <code>new Map(Object.entries(obj))</code> and <code>Object.fromEntries(map)</code>.</li>
            <li><code>Map.groupBy(items, fn)</code> groups into a Map (like <code>Object.groupBy</code> from Lesson 9).</li>
            <li>New in ES2026: <code>map.getOrInsert(key, defaultValue)</code> returns the value, first inserting the default if the key is missing (Baseline 2026, so check your users' browsers).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Map vs Object</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Plain object</th><th>Map</th></tr></thead>
            <tbody>
              <tr><td>Key types</td><td>strings and symbols only (<code>1</code> becomes <code>"1"</code>)</td><td>any value: numbers, objects, even DOM elements</td></tr>
              <tr><td>Size</td><td><code>Object.keys(o).length</code></td><td><code>map.size</code></td></tr>
              <tr><td>Iterate</td><td><code>Object.entries(o)</code></td><td>directly with <code>for...of</code></td></tr>
              <tr><td>Adding/removing often</td><td>works, not optimised for it</td><td>built for it</td></tr>
              <tr><td>Accidental keys</td><td>inherits names like <code>"constructor"</code> from its prototype</td><td>starts truly empty</td></tr>
              <tr><td>JSON</td><td><code>JSON.stringify</code> works</td><td>gives <code>{}</code> — convert with <code>Object.fromEntries</code> first</td></tr>
              <tr><td>Best for</td><td>a record with fixed fields (a user)</td><td>a growing lookup table (cache, counter)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Counting Orders</h3>
          <div class="lc-code">const words = "chai samosa chai jalebi chai samosa".split(" ");<br>const counts = new Map();<br>for (const w of words) {<br>&nbsp;&nbsp;counts.set(w, (counts.get(w) ?? 0) + 1);<br>}<br>for (const [snack, n] of counts) console.log(`${snack}: ${n}`);<br>console.log(JSON.stringify(Object.fromEntries(counts)));</div>
          <p>Output:</p>
          <div class="lc-code">chai: 3<br>samosa: 2<br>jalebi: 1<br>{"chai":3,"samosa":2,"jalebi":1}</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>map[key] = value</code> on a Map — that sets a normal property, not a Map entry. Use <code>map.set(key, value)</code> and <code>map.get(key)</code>.</li>
            <li>Reusing a finished generator — the second <code>[...gen]</code> is empty. Call the generator function again.</li>
            <li>Calling <code>.toArray()</code> on an endless generator without <code>.take(n)</code> — the tab freezes.</li>
            <li>Expecting <code>set.map()</code> or <code>set[0]</code> to work — Sets have no indexes. Spread first: <code>[...set].map(fn)</code>.</li>
            <li><code>JSON.stringify(map)</code> gives <code>"{}"</code> — convert with <code>Object.fromEntries(map)</code> first.</li>
            <li>Writing <code>for (const x of obj)</code> on a plain object — TypeError: obj is not iterable.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, write a generator <code>tableOf(n)</code> that yields <code>n x 1</code> up to <code>n x 10</code>, and print the first 5 with <code>.take(5).toArray()</code>.</li>
            <li>Add a third course Set and print the students enrolled in all three courses.</li>
            <li>Change the word counter to count the letters of <code>"mississippi"</code> instead.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Ask "do I need fixed fields or a lookup?" A user with a name and email is an <strong>object</strong>. "Which students have paid?" is a <strong>Set</strong>. "How many of each item?" is a <strong>Map</strong>.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 12: iterators, generators, Map and Set

        // 1. The iterator protocol: next() returns { value, done }
        const it = ["UPI", "Card"][Symbol.iterator]();
        for (let i = 1; i <= 3; i++) {
          const step = it.next();
          console.log(`next() #${i}: value = ${step.value}, done = ${step.done}`);
        }

        // 2. A generator pauses at each yield
        function* countdown(from) {
          for (let i = from; i > 0; i--) yield i;
        }
        console.log("Countdown:", [...countdown(3)].join(", "));

        // 3. An endless generator + iterator helpers (lazy: only 3 values are made)
        function* orderIds() {
          let n = 1;
          while (true) yield n++;
        }
        const evenOrders = orderIds()
          .filter((n) => n % 2 === 0)
          .map((n) => "ORD-" + n)
          .take(3)
          .toArray();
        console.log("Even orders:", evenOrders.join(", "));

        // 4. Set: unique values + ES2025 set methods
        const python = new Set(["Asha", "Ravi", "Meera"]);
        const js = new Set(["Ravi", "Kiran", "Asha"]);
        console.log("Python size:", python.size, "| has Ravi?", python.has("Ravi"));
        console.log("Both courses:", [...python.intersection(js)].join(", "));
        console.log("Any course:", [...python.union(js)].join(", "));
        console.log("Only Python:", [...python.difference(js)].join(", "));
        console.log("Exactly one:", [...python.symmetricDifference(js)].join(", "));

        // 5. Map: any key type, remembers insertion order
        const stock = new Map([["pen", 40], ["book", 12]]);
        stock.set("bag", 5).set("pen", 35);
        stock.delete("book");
        console.log("Map size:", stock.size, "| pen:", stock.get("pen"), "| has book?", stock.has("book"));
        for (const [item, qty] of stock) console.log(`  ${item} -> ${qty}`);

        // 6. Counting words with a Map
        const words = "chai samosa chai jalebi chai samosa".split(" ");
        const counts = new Map();
        for (const w of words) counts.set(w, (counts.get(w) ?? 0) + 1);
        console.log("Counts:", JSON.stringify(Object.fromEntries(counts)));
      JS
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Regular Expressions</h1>
        </div>
        <p class="lc-lead">A <strong>regular expression</strong> (regex) is a small pattern language for text. String methods like <code>includes</code> find one fixed piece of text; a regex describes a <em>shape</em> — "ten digits starting with 6–9", "₹ followed by a number" — so you can validate input, find every match, pull out parts and replace text in one line.</p>
        <div class="lc-card">
          <h3>Creating a Regex</h3>
          <div class="lc-code">const pin = /^\d{6}$/;                  // regex literal: /pattern/flags<br>const prefix = "ORD";<br>const orderId = new RegExp("^" + prefix + "-\\d+$");   // built from a string at runtime<br>console.log(orderId.test("ORD-457"));   // true<br><br>console.log(pin.test("560034"));   // true<br>console.log(pin.test("5600"));     // false</div>
          <p>Use the <strong>literal</strong> form <code>/…/</code> when you know the pattern while writing the code. Use <code>new RegExp(text)</code> only when the pattern is built from a variable — and remember that inside a normal string every backslash must be doubled (write <code>"\\d"</code> to get <code>\d</code>).</p>
        </div>
        <div class="lc-card">
          <h3>The Building Blocks</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Matches</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>\d</code> / <code>\D</code></td><td>a digit / anything except a digit</td><td><code>/\d\d/</code> finds <code>"42"</code></td></tr>
              <tr><td><code>\w</code></td><td>a letter, digit or <code>_</code> (English letters only)</td><td><code>/\w+/</code> finds <code>"Asha"</code></td></tr>
              <tr><td><code>\s</code></td><td>whitespace: space, tab, new line</td><td><code>/\s+/</code></td></tr>
              <tr><td><code>.</code></td><td>any single character (except a new line)</td><td><code>/c.t/</code> finds <code>"cat"</code>, <code>"cut"</code></td></tr>
              <tr><td><code>[abc]</code> / <code>[^abc]</code></td><td>one of these / none of these</td><td><code>/[6-9]/</code> is one digit from 6 to 9</td></tr>
              <tr><td><code>^</code> and <code>$</code></td><td>start and end of the text</td><td><code>/^\d{6}$/</code>: exactly six digits</td></tr>
              <tr><td><code>\b</code></td><td>a word boundary</td><td><code>/\bcat\b/</code> skips <code>"category"</code></td></tr>
              <tr><td><code>a|b</code></td><td>either side</td><td><code>/UPI|Card/</code></td></tr>
              <tr><td><code>(?=…)</code></td><td>followed by — checked but not included in the match (a <strong>lookahead</strong>)</td><td><code>/\d{4}(?= )/</code> finds <code>"4111"</code> in <code>"4111 2222"</code>, not <code>"4111 "</code></td></tr>
              <tr><td><code>\.</code>, <code>\$</code>, <code>\(</code></td><td>the real character (escaped)</td><td><code>/\d+\.\d\d/</code> finds <code>"49.50"</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quantifiers and Flags</h3>
          <table class="lc-table">
            <thead><tr><th>Quantifier</th><th>Means</th><th></th><th>Flag</th><th>Means</th></tr></thead>
            <tbody>
              <tr><td><code>+</code></td><td>one or more</td><td></td><td><code>g</code></td><td>global: every match, not just the first</td></tr>
              <tr><td><code>*</code></td><td>zero or more</td><td></td><td><code>i</code></td><td>ignore upper/lower case</td></tr>
              <tr><td><code>?</code></td><td>optional (zero or one)</td><td></td><td><code>m</code></td><td><code>^</code> and <code>$</code> work per line</td></tr>
              <tr><td><code>{6}</code> / <code>{2,4}</code></td><td>exactly 6 / between 2 and 4</td><td></td><td><code>u</code></td><td>full Unicode mode (emoji, Indian scripts)</td></tr>
            </tbody>
          </table>
          <p>Quantifiers are <strong>greedy</strong>: they take as much text as they can. Add <code>?</code> to make one lazy:</p>
          <div class="lc-code">const html = "&lt;b&gt;one&lt;/b&gt;&lt;b&gt;two&lt;/b&gt;";<br>console.log(html.match(/&lt;b&gt;.*&lt;\/b&gt;/)[0]);    // &lt;b&gt;one&lt;/b&gt;&lt;b&gt;two&lt;/b&gt;  (greedy)<br>console.log(html.match(/&lt;b&gt;.*?&lt;\/b&gt;/)[0]);   // &lt;b&gt;one&lt;/b&gt;              (lazy)</div>
        </div>
        <div class="lc-card">
          <h3>The Methods You Will Use</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th><th>Use it to</th></tr></thead>
            <tbody>
              <tr><td><code>regex.test(text)</code></td><td><code>true</code> / <code>false</code></td><td>validate input</td></tr>
              <tr><td><code>text.match(regex)</code></td><td>first match with its groups, or <code>null</code></td><td>pull parts out of one match</td></tr>
              <tr><td><code>text.match(/…/g)</code></td><td>array of all matched strings, or <code>null</code></td><td>find every match</td></tr>
              <tr><td><code>text.matchAll(/…/g)</code></td><td>an iterator of full matches with groups</td><td>loop over matches and their parts</td></tr>
              <tr><td><code>text.replace(regex, new)</code></td><td>new string</td><td>clean or reformat text</td></tr>
              <tr><td><code>text.split(regex)</code></td><td>array of pieces</td><td>split on several separators</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Groups: Pulling Out Parts</h3>
          <p>Round brackets <code>( )</code> <strong>capture</strong> part of the match. Name a group with <code>(?&lt;name&gt; )</code> so you don't have to count brackets. In <code>replace</code>, <code>$1</code>, <code>$2</code>… insert the groups.</p>
          <div class="lc-code">const found = "Order ORD-2026-0457 shipped".match(/ORD-(?&lt;year&gt;\d{4})-(?&lt;num&gt;\d+)/);<br>console.log(found[0]);            // ORD-2026-0457   (the whole match)<br>console.log(found.groups.year);   // 2026<br>console.log(found.groups.num);    // 0457<br><br>console.log("2026-09-25".replace(/(\d+)-(\d+)-(\d+)/, "$3/$2/$1"));   // 25/09/2026<br>console.log("Ananya Rao".replace(/(\w+) (\w+)/, "$2, $1"));          // Rao, Ananya<br>console.log("hello world".replace(/\b\w/g, (c) =&gt; c.toUpperCase()));  // Hello World</div>
          <p>The last line passes a <strong>function</strong> to <code>replace</code>: it is called for every match and its return value is used as the replacement.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Validating a Form Field</h3>
          <div class="lc-code">const mobile = /^[6-9]\d{9}$/;   // start, one digit 6–9, nine more digits, end<br><br>for (const m of ["9876543210", "12345", "5876543210", "98765432101"]) {<br>&nbsp;&nbsp;console.log(m.padEnd(12), mobile.test(m) ? "valid" : "invalid");<br>}</div>
          <p>Output:</p>
          <div class="lc-code">9876543210   valid<br>12345        invalid<br>5876543210   invalid<br>98765432101  invalid</div>
          <p>Without <code>^</code> and <code>$</code>, <code>/[6-9]\d{9}/</code> would also accept <code>"98765432101"</code>, because ten valid digits appear <em>somewhere</em> inside it. For validation, always anchor both ends.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>^…$</code> when validating, so extra characters before or after are accepted.</li>
            <li>Forgetting to escape special characters: <code>/./</code> matches <em>any</em> character — <code>"a.b.c".replace(/./g, "-")</code> gives <code>"-----"</code>; write <code>/\./g</code>. For text typed by a user, <code>RegExp.escape(text)</code> (in all major browsers since 2025) escapes it for you.</li>
            <li>Reusing a <code>/…/g</code> regex with <code>test()</code>: it remembers <code>lastIndex</code>, so <code>r.test("cat")</code> can give <code>true</code> and then <code>false</code>. Don't use <code>g</code> with <code>test</code>.</li>
            <li>Forgetting that <code>match</code> returns <code>null</code> when nothing matches — <code>text.match(r)[0]</code> then throws. Check first, or use <code>text.match(r)?.[0]</code>.</li>
            <li>Writing one giant regex for emails or HTML. Keep patterns short, and use real parsers (<code>DOMParser</code>, <code>URL</code>) or <code>&lt;input type="email"&gt;</code> for complex formats.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, add <code>"7012345678"</code> and <code>"98765 43210"</code> to the mobile list and predict the results before running.</li>
            <li>Write a regex for a vehicle number like <code>"KA01AB1234"</code>: two capital letters, two digits, two capital letters, four digits.</li>
            <li>Use <code>replace</code> with a <code>g</code> flag to change every <code>"colour"</code> or <code>"Colour"</code> in a sentence to <code>"color"</code> (hint: the <code>i</code> flag).</li>
            <li>Change the <code>matchAll</code> pattern so it also works for names with spaces, such as <code>"Ravi Kumar=78"</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Build a pattern one piece at a time and test it on good <em>and</em> bad examples. Sites like regex101.com (choose the JavaScript flavour) explain every part of a pattern as you type it.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 13: regular expressions
        // 1. test(): does the text match the pattern?
        const mobile = /^[6-9]\d{9}$/;           // Indian mobile: 10 digits, starts with 6-9
        for (const m of ["9876543210", "12345", "5876543210", "98765432101"]) {
          console.log(m.padEnd(12), mobile.test(m) ? "valid" : "invalid");
        }
        console.log("PIN 560034:", /^\d{6}$/.test("560034"), "| PIN 5600:", /^\d{6}$/.test("5600"));
        console.log("");

        // 2. match() with the g flag: find every match
        const message = "Paid ₹250 for tea and ₹1200 for books, ₹75 tip";
        const amounts = message.match(/₹\d+/g);
        console.log("Amounts:", amounts.join(", "));
        const total = amounts.map((a) => Number(a.slice(1))).reduce((s, n) => s + n, 0);
        console.log("Total: ₹" + total);
        console.log("");

        // 3. Named groups pull out parts of a match
        const order = "Order ORD-2026-0457 shipped";
        const found = order.match(/ORD-(?<year>\d{4})-(?<num>\d+)/);
        console.log("Full match:", found[0]);
        console.log("Year:", found.groups.year, "| Number:", Number(found.groups.num));
        console.log("");

        // 4. replace() with groups and flags
        console.log("Date:", "2026-09-25".replace(/(\d+)-(\d+)-(\d+)/, "$3/$2/$1"));
        console.log("Spaces:", "too    many     spaces".replace(/\s+/g, " "));
        console.log("Case-insensitive:", "Java java JAVA".replace(/java/gi, "JS"));
        // (?= ) is a lookahead: 4 digits followed by a space; the space is not replaced, and the last group has none
        console.log("Masked:", "Card 4111 2222 3333 4444".replace(/\d{4}(?= )/g, "XXXX"));
        console.log("");

        // 5. split() on a pattern and matchAll() for every match with its groups
        console.log("Tags:", "html, css ;js;  react".split(/\s*[,;]\s*/).join(" | "));
        const scores = "Asha=91 Ravi=78 Meera=85";
        for (const m of scores.matchAll(/(\w+)=(\d+)/g)) {
          console.log(`  ${m[1]} scored ${m[2]}`);
        }
      JS
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Error Handling</h1>
        </div>
        <p class="lc-lead">Things go wrong: users type letters into a number field, a server sends broken data, a file is missing. <strong>Error handling</strong> lets your program notice the problem, react sensibly and keep running instead of crashing.</p>
        <div class="lc-card">
          <h3>What Happens Without Handling</h3>
          <p>When an error is <strong>thrown</strong> and nobody catches it, the current script stops. Every line after it is skipped.</p>
          <div class="lc-code">console.log("Start");<br>const user = undefined;<br>console.log(user.name);     // TypeError: Cannot read properties of undefined (reading 'name')<br>console.log("End");         // never runs</div>
        </div>
        <div class="lc-card">
          <h3>try, catch and finally</h3>
          <div class="lc-code">try {<br>&nbsp;&nbsp;const data = JSON.parse("{ bad json }");   // throws<br>&nbsp;&nbsp;console.log("Parsed:", data);              // skipped<br>} catch (error) {<br>&nbsp;&nbsp;console.log("Could not parse:", error.name);<br>} finally {<br>&nbsp;&nbsp;console.log("Finished trying");<br>}<br>console.log("Program continues");</div>
          <p>Output:</p>
          <div class="lc-code">Could not parse: SyntaxError<br>Finished trying<br>Program continues</div>
          <ul class="lc-list">
            <li><code>try</code> — the code that might fail.</li>
            <li><code>catch (error)</code> — runs only if something in <code>try</code> threw; <code>error</code> is the thrown value.</li>
            <li><code>finally</code> — <strong>always</strong> runs, error or not — even if <code>try</code> or <code>catch</code> did a <code>return</code>. Use it for clean-up such as hiding a loading spinner.</li>
            <li>If you don't need the error object, you can write just <code>catch { … }</code>.</li>
          </ul>
          <p>Good places for <code>try/catch</code>:</p>
          <ul class="lc-list">
            <li>Parsing data you don't control (<code>JSON.parse</code>, user input).</li>
            <li>Calls to servers and browser storage ( 19 and 0).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Error Object</h3>
          <table class="lc-table">
            <thead><tr><th>Property</th><th>Contains</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>name</code></td><td>the kind of error</td><td><code>"TypeError"</code></td></tr>
              <tr><td><code>message</code></td><td>a human-readable description</td><td><code>"x is not a function"</code></td></tr>
              <tr><td><code>stack</code></td><td>where it happened (file, line) — for debugging</td><td><code>"TypeError: … at app.js:12"</code></td></tr>
              <tr><td><code>cause</code></td><td>an earlier error that led to this one (optional)</td><td>see below</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Built-in Error Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Typical cause</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>ReferenceError</code></td><td>using a name that doesn't exist</td><td><code>consol.log("x")</code></td></tr>
              <tr><td><code>TypeError</code></td><td>wrong kind of value</td><td><code>null.length</code>, calling a non-function</td></tr>
              <tr><td><code>RangeError</code></td><td>a number outside the allowed range</td><td><code>(5).toFixed(200)</code>, <code>new Array(-1)</code></td></tr>
              <tr><td><code>SyntaxError</code></td><td>invalid code or invalid JSON</td><td><code>JSON.parse("{")</code></td></tr>
            </tbody>
          </table>
          <p>Note: a <code>SyntaxError</code> in <em>your own source code</em> stops the whole script before it starts, so <code>try/catch</code> cannot catch it. The <code>SyntaxError</code> thrown by <code>JSON.parse</code> happens while running, so it <em>can</em> be caught.</p>
        </div>
        <div class="lc-card">
          <h3>Throwing Your Own Errors</h3>
          <p>Use <code>throw</code> when your function receives something it cannot work with. Always throw an <code>Error</code> object, not a plain string — you get a <code>name</code>, a <code>message</code> and a stack trace.</p>
          <div class="lc-code">function withdraw(balance, amount) {<br>&nbsp;&nbsp;if (typeof amount !== "number" || Number.isNaN(amount)) {<br>&nbsp;&nbsp;&nbsp;&nbsp;throw new TypeError("Amount must be a number");<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;if (amount &gt; balance) {<br>&nbsp;&nbsp;&nbsp;&nbsp;throw new RangeError("Insufficient balance");<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return balance - amount;<br>}<br><br>try {<br>&nbsp;&nbsp;withdraw(500, 800);<br>} catch (e) {<br>&nbsp;&nbsp;console.log(e.name + ": " + e.message);   // RangeError: Insufficient balance<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Custom Error Classes</h3>
          <p>Extend <code>Error</code> (Lesson 11) to create errors that describe <em>your</em> problems. Then <code>instanceof</code> tells you which kind you caught:</p>
          <div class="lc-code">class ValidationError extends Error {<br>&nbsp;&nbsp;constructor(field, message) {<br>&nbsp;&nbsp;&nbsp;&nbsp;super(message);<br>&nbsp;&nbsp;&nbsp;&nbsp;this.name = "ValidationError";<br>&nbsp;&nbsp;&nbsp;&nbsp;this.field = field;<br>&nbsp;&nbsp;}<br>}<br><br>try {<br>&nbsp;&nbsp;throw new ValidationError("phone", "Phone must have 10 digits");<br>} catch (e) {<br>&nbsp;&nbsp;if (e instanceof ValidationError) {<br>&nbsp;&nbsp;&nbsp;&nbsp;console.log("Fix the " + e.field + " field: " + e.message);<br>&nbsp;&nbsp;} else {<br>&nbsp;&nbsp;&nbsp;&nbsp;throw e;   // not ours — rethrow so it isn't hidden<br>&nbsp;&nbsp;}<br>}</div>
          <p><strong>Rethrowing</strong> errors you don't know how to handle is important. A <code>catch</code> that swallows everything hides real bugs.</p>
        </div>
        <div class="lc-card">
          <h3>Wrapping Errors with cause</h3>
          <p>When you catch a low-level error and throw a clearer one, keep the original as the <code>cause</code>:</p>
          <div class="lc-code">function loadSettings(text) {<br>&nbsp;&nbsp;try {<br>&nbsp;&nbsp;&nbsp;&nbsp;return JSON.parse(text);<br>&nbsp;&nbsp;} catch (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;throw new Error("Settings file is corrupted", { cause: err });<br>&nbsp;&nbsp;}<br>}</div>
          <p>Whoever catches the new error sees a clear message, and <code>error.cause</code> still holds the original <code>SyntaxError</code> for debugging.</p>
          <p>Errors in asynchronous code (timers, <code>fetch</code>) need a little more care: a <code>try</code> around <code>setTimeout</code> does <em>not</em> catch an error thrown later inside the timer callback.  18 and 0 show the right tools.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Empty <code>catch {}</code> blocks that silently hide problems — at least log the error.</li>
            <li><code>throw "Something failed"</code> — a string has no stack trace or name. Use <code>throw new Error(...)</code>.</li>
            <li>Wrapping the whole program in one giant <code>try</code> — wrap only the risky part, where you can do something useful.</li>
            <li>Using errors for normal flow (e.g. "not found" in a search) — return <code>null</code> or <code>-1</code> instead when that is an expected result.</li>
            <li>Forgetting to set <code>this.name</code> in a custom error class, so it prints as plain "Error".</li>
            <li>Showing raw technical messages (stack traces) to users — log the details, show a friendly message.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, add a check that throws a <code>ValidationError</code> when the age is below 18.</li>
            <li>Add a new test input with an invalid email and see which message is printed.</li>
            <li>Notice that <code>safeDivide</code> returns inside <code>try</code> and <code>catch</code>, yet the <code>finally</code> message still prints. Move the log above the <code>return</code> and compare.</li>
            <li>Why is the last input (<code>null</code>) reported as "Unexpected"? Add a first check to <code>validateSignup</code> that throws a <code>ValidationError</code> when the form is missing.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Validate input at the <em>edges</em> of your program — where user input, files or API data come in — and throw clear errors there. Code deeper inside can then trust its data.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 14: error handling
        class ValidationError extends Error {
          constructor(field, message) {
            super(message);
            this.name = "ValidationError";
            this.field = field;
          }
        }

        function validateSignup(form) {
          if (!form.name || form.name.trim() === "") throw new ValidationError("name", "Name is required");
          if (!form.email.includes("@")) throw new ValidationError("email", "Email must contain @");
          if (String(form.phone).length !== 10) throw new ValidationError("phone", "Phone must have 10 digits");
          return "Welcome, " + form.name + "!";
        }

        const inputs = [
          { name: "Asha", email: "asha@example.in", phone: 9876543210 },
          { name: "", email: "x@y.in", phone: 9876543210 },
          { name: "Ravi", email: "ravi.example.in", phone: 9876543210 },
          { name: "Neel", email: "neel@example.in", phone: 12345 },
          null,
        ];

        for (const form of inputs) {
          try {
            console.log("OK:", validateSignup(form));
          } catch (e) {
            if (e instanceof ValidationError) {
              console.log("Invalid", e.field + ":", e.message);
            } else {
              console.log("Unexpected", e.name + ":", e.message);
            }
          }
        }

        // finally always runs
        function safeDivide(a, b) {
          try {
            if (b === 0) throw new RangeError("Cannot divide by zero");
            return a / b;
          } catch (e) {
            return e.name + " - " + e.message;
          } finally {
            console.log("safeDivide(" + a + ", " + b + ") finished");
          }
        }
        console.log(safeDivide(10, 4));
        console.log(safeDivide(10, 0));
      JS
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Debugging and Testing</h1>
        </div>
        <p class="lc-lead">Every programmer writes bugs; good programmers find them quickly and stop them coming back. <strong>Debugging</strong> means finding out <em>why</em> code does the wrong thing — with the browser's DevTools instead of guessing. <strong>Testing</strong> means writing small pieces of code that check your code automatically, so a fix today doesn't break something tomorrow.</p>
        <div class="lc-card">
          <h3>A Debugging Routine That Works</h3>
          <ol class="lc-list">
            <li><strong>Reproduce</strong> — find the exact input that goes wrong (for example, marks = 75).</li>
            <li><strong>Read the error</strong> — the message says <em>what</em> failed, the stack trace says <em>where</em> (file and line), newest call first.</li>
            <li><strong>Inspect</strong> — look at the real values with <code>console.log</code> or a breakpoint. Don't assume.</li>
            <li><strong>Fix one thing</strong> — then run again.</li>
            <li><strong>Add a test</strong> for that input so the bug can never return unnoticed.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Console Tools Beyond console.log</h3>
          <p>Open DevTools with <strong>F12</strong> (or Ctrl+Shift+I / Cmd+Option+I) and choose the Console tab. It has more than <code>log</code>:</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>console.log({ marks, result })</code></td><td>label values by wrapping them in an object</td></tr>
              <tr><td><code>console.error()</code> / <code>console.warn()</code></td><td>red / yellow message, easy to spot</td></tr>
              <tr><td><code>console.table(students)</code></td><td>shows an array of objects as a table</td></tr>
              <tr><td><code>console.assert(total &gt; 0, "total is zero")</code></td><td>prints only when the condition is false</td></tr>
              <tr><td><code>console.time("load")</code> … <code>console.timeEnd("load")</code></td><td>measures how long code takes</td></tr>
            </tbody>
          </table>
          <p>This course's editor shows <code>log</code>, <code>error</code>, <code>warn</code> and <code>info</code>; try the others in the browser's own DevTools console.</p>
        </div>
        <div class="lc-card">
          <h3>Breakpoints and the debugger Statement</h3>
          <p>A <strong>breakpoint</strong> pauses the program on a line so you can look around. In DevTools, open the <strong>Sources</strong> panel, find your file and click a line number. Or write <code>debugger;</code> in your code — it pauses there whenever DevTools is open (and does nothing otherwise; delete it before you ship).</p>
          <div class="lc-code">function grade(marks) {<br>&nbsp;&nbsp;debugger;                          // execution pauses here<br>&nbsp;&nbsp;if (marks &gt; 75) return "Distinction";<br>&nbsp;&nbsp;if (marks &gt;= 35) return "Pass";<br>&nbsp;&nbsp;return "Fail";<br>}</div>
          <table class="lc-table">
            <thead><tr><th>While paused</th><th>Use it to</th></tr></thead>
            <tbody>
              <tr><td>Scope panel</td><td>see every variable's current value</td></tr>
              <tr><td>Step over (F10)</td><td>run the current line and stop at the next</td></tr>
              <tr><td>Step into (F11)</td><td>go inside the function being called</td></tr>
              <tr><td>Call Stack</td><td>see which functions led to this line</td></tr>
              <tr><td>Watch</td><td>keep an expression such as <code>marks &gt; 75</code> visible</td></tr>
              <tr><td>Conditional breakpoint (right-click a line number)</td><td>pause only when, say, <code>marks === 75</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What a Test Is</h3>
          <p>A test calls your function with a known input and checks the result. Each test follows <strong>Arrange, Act, Assert</strong>: prepare the data, call the code, compare with the expected value. Test normal cases, <strong>boundaries</strong> (exactly 35, exactly 75) and errors.</p>
          <p>The starter builds a tiny test runner in about 15 lines, so you can see there is no magic. The <code>grade</code> function has a bug on purpose, and one test catches it:</p>
          <div class="lc-code">PASS 90 is a Distinction<br>FAIL boundary: 75 is a Distinction -&gt; expected "Distinction" but got "Pass"<br>PASS boundary: 35 is a Pass<br>PASS 34 is a Fail<br>PASS marks above 100 throw a RangeError<br>PASS coupon gives 10% off every item<br><br>5 passed, 1 failed</div>
          <p>The failing test tells you the input (75), the expected value and the actual value — that is already most of the debugging done. Change <code>&gt;</code> to <code>&gt;=</code> and all six pass.</p>
        </div>
        <div class="lc-card">
          <h3>Real Test Tools: Vitest and node:test</h3>
          <p>In real projects you use a test runner. <strong>Vitest</strong> (works with Vite projects) and <strong>Jest</strong> are the most common; Node.js also has one built in (<code>node:test</code>).</p>
          <div class="lc-code">// grade.test.js  — install once with: npm install -D vitest<br>import { test, expect } from "vitest";<br>import { grade } from "./grade.js";<br><br>test("75 is a Distinction", () =&gt; {<br>&nbsp;&nbsp;expect(grade(75)).toBe("Distinction");<br>});<br>test("marks above 100 throw", () =&gt; {<br>&nbsp;&nbsp;expect(() =&gt; grade(101)).toThrow(RangeError);<br>});<br><br>// run all *.test.js files:  npx vitest</div>
          <table class="lc-table">
            <thead><tr><th>Matcher</th><th>Checks</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>toBe(x)</code></td><td>same value with <code>Object.is</code> (like <code>===</code>)</td><td>numbers, strings, booleans</td></tr>
              <tr><td><code>toEqual(x)</code></td><td>same contents, compared deeply</td><td>arrays and objects</td></tr>
              <tr><td><code>toThrow(Type)</code></td><td>the function throws</td><td>error cases (pass a function!)</td></tr>
              <tr><td><code>toContain(x)</code></td><td>an array or string includes <code>x</code></td><td>lists, messages</td></tr>
            </tbody>
          </table>
          <p>Writing the test <em>before</em> the code is called <strong>test-driven development (TDD)</strong>: red (the test fails), green (make it pass), refactor (tidy up while the tests stay green).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Changing code at random until it "seems to work" instead of inspecting the real values first.</li>
            <li>Using <code>toBe</code> for arrays or objects: <code>expect([1, 2]).toBe([1, 2])</code> fails because they are two different arrays — use <code>toEqual</code>.</li>
            <li>Writing <code>expect(grade(101)).toThrow()</code>: the error is thrown <em>before</em> <code>expect</code> runs. Wrap the call: <code>expect(() =&gt; grade(101))</code>.</li>
            <li>Testing only the happy path and skipping boundaries, empty arrays and invalid input — that is where bugs live.</li>
            <li>Leaving <code>debugger;</code> statements and noisy <code>console.log</code> calls in finished code.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the starter, read the FAIL line, fix the bug in <code>grade</code> and run again until you see <code>6 passed, 0 failed</code>.</li>
            <li>Add a test that <code>grade(-1)</code> throws a <code>RangeError</code>.</li>
            <li>Add a test for <code>applyCoupon([], 10)</code> — what should an empty cart return?</li>
            <li>Paste the starter's <code>grade</code> function into your browser's DevTools console, add <code>debugger;</code> as its first line, call <code>grade(75)</code> and step through it with F10.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you fix a bug, first write a test that fails because of it, then fix the code and watch the test pass. Your test suite slowly becomes a list of every bug that can never come back.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 15: debugging and testing - a tiny test runner in plain JavaScript
        let passed = 0;
        let failed = 0;

        function test(name, fn) {
          try {
            fn();
            passed++;
            console.log("PASS", name);
          } catch (err) {
            failed++;
            console.error("FAIL", name, "->", err.message);
          }
        }

        function expectEqual(actual, expected) {
          const a = JSON.stringify(actual);
          const e = JSON.stringify(expected);
          if (a !== e) throw new Error(`expected ${e} but got ${a}`);
        }

        // Code under test
        function grade(marks) {
          if (marks < 0 || marks > 100) throw new RangeError("marks must be 0-100");
          if (marks > 75) return "Distinction"; // BUG on purpose: 75 itself should be a Distinction
          if (marks >= 35) return "Pass";
          return "Fail";
        }

        const applyCoupon = (cart, percent) =>
          cart.map((item) => ({ ...item, price: Math.round(item.price * (1 - percent / 100)) }));

        // Tests: arrange, act, assert
        test("90 is a Distinction", () => expectEqual(grade(90), "Distinction"));
        test("boundary: 75 is a Distinction", () => expectEqual(grade(75), "Distinction"));
        test("boundary: 35 is a Pass", () => expectEqual(grade(35), "Pass"));
        test("34 is a Fail", () => expectEqual(grade(34), "Fail"));
        test("marks above 100 throw a RangeError", () => {
          let error = null;
          try { grade(101); } catch (err) { error = err; }
          expectEqual(error instanceof RangeError, true);
        });
        test("coupon gives 10% off every item", () => {
          const cart = [{ name: "Pen", price: 20 }, { name: "Bag", price: 999 }];
          expectEqual(applyCoupon(cart, 10), [{ name: "Pen", price: 18 }, { name: "Bag", price: 899 }]);
          expectEqual(cart[0].price, 20); // the original cart is unchanged
        });

        console.log("");
        console.log(`${passed} passed, ${failed} failed`);
      JS
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">The Document Object Model</h1>
        </div>
        <p class="lc-lead">When a browser loads HTML, it builds a tree of objects called the <strong>DOM</strong> (Document Object Model). JavaScript can read and change this tree — and every change appears on screen instantly. This is how pages update without reloading.</p>
        <div class="lc-card">
          <h3>HTML Becomes a Tree</h3>
          <div class="lc-code">&lt;body&gt;<br>&nbsp;&nbsp;&lt;h1 id="title"&gt;My Shop&lt;/h1&gt;<br>&nbsp;&nbsp;&lt;ul class="menu"&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;Tea&lt;/li&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&gt;Coffee&lt;/li&gt;<br>&nbsp;&nbsp;&lt;/ul&gt;<br>&lt;/body&gt;</div>
          <p>The browser turns this into a tree: <code>document</code> → <code>body</code> → <code>h1</code> and <code>ul</code> → two <code>li</code> elements, each holding a <strong>text node</strong>. Every tag becomes an <strong>element object</strong> with properties (<code>id</code>, <code>textContent</code>, <code>classList</code>…) and methods.</p>
          <ul class="lc-list">
            <li><code>document</code> — the whole page; your starting point.</li>
            <li><strong>Element</strong> — one tag, such as <code>&lt;li&gt;</code>.</li>
            <li><strong>Parent / child</strong> — <code>ul</code> is the parent of its <code>li</code> children.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Selecting Elements</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>document.getElementById("title")</code></td><td>one element or <code>null</code></td><td>by id (no <code>#</code>)</td></tr>
              <tr><td><code>document.querySelector(".menu li")</code></td><td>the <em>first</em> match or <code>null</code></td><td>any CSS selector</td></tr>
              <tr><td><code>document.querySelectorAll("li")</code></td><td>a <code>NodeList</code> of all matches (may be empty)</td><td>loop with <code>forEach</code> or <code>for...of</code></td></tr>
              <tr><td><code>element.querySelector(…)</code></td><td>searches only inside that element</td><td><code>menu.querySelector("li")</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">const title = document.querySelector("#title");<br>const items = document.querySelectorAll(".menu li");<br>console.log(title.textContent);   // "My Shop"<br>console.log(items.length);        // 2<br>items.forEach((li) =&gt; console.log(li.textContent));   // Tea, Coffee</div>
          <p><code>querySelectorAll</code> returns a <em>static</em> list: elements added later are not in it. Use <code>[...items]</code> if you need array methods like <code>map</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Changing Text and HTML</h3>
          <div class="lc-code">title.textContent = "Chai Point";          // plain text — safe<br>title.innerHTML = "Chai &lt;em&gt;Point&lt;/em&gt;";  // parses HTML</div>
          <table class="lc-table">
            <thead><tr><th></th><th><code>textContent</code></th><th><code>innerHTML</code></th></tr></thead>
            <tbody>
              <tr><td>Treats the value as</td><td>plain text</td><td>HTML markup</td></tr>
              <tr><td>User input</td><td>Safe</td><td><strong>Dangerous</strong> — allows script injection (XSS)</td></tr>
              <tr><td>Use for</td><td>almost everything</td><td>trusted HTML you wrote yourself</td></tr>
            </tbody>
          </table>
          <p>If a user types <code>&lt;img src=x onerror="stealCookies()"&gt;</code> as their name and you put it in <code>innerHTML</code>, the browser runs that code. With <code>textContent</code> it is shown as harmless text.</p>
        </div>
        <div class="lc-card">
          <h3>Creating, Adding and Removing Elements</h3>
          <div class="lc-code">const menu = document.querySelector(".menu");<br><br>const li = document.createElement("li");   // 1. create<br>li.textContent = "Lassi";                  // 2. fill<br>menu.append(li);                           // 3. insert at the end<br><br>const first = document.createElement("li");<br>first.textContent = "Special: Masala Chai";<br>menu.prepend(first);                       // insert at the start<br><br>menu.querySelector("li:nth-child(2)").remove();   // remove one element<br>console.log(menu.children.length);         // 3</div>
          <p>When adding many items, build them in a loop and append each; for very large lists, collect them in a <code>DocumentFragment</code> and append once.</p>
        </div>
        <div class="lc-card">
          <h3>Classes, Attributes and data-*</h3>
          <div class="lc-code">li.classList.add("highlight");<br>li.classList.remove("highlight");<br>li.classList.toggle("done");              // add if missing, remove if present<br>console.log(li.classList.contains("done"));   // true<br><br>const link = document.createElement("a");<br>link.setAttribute("href", "/menu");<br>console.log(link.getAttribute("href"));    // "/menu"<br><br>li.dataset.price = "40";                   // becomes data-price="40"<br>console.log(li.dataset.price);             // "40" (always a string)</div>
          <p>Prefer toggling <strong>CSS classes</strong> over setting <code>element.style.color = …</code> directly — the look stays in your CSS file, and JavaScript only switches states.</p>
        </div>
        <div class="lc-card">
          <h3>Moving Around the Tree</h3>
          <p>From any element you can walk to its relatives:</p>
          <table class="lc-table">
            <thead><tr><th>Property / method</th><th>Gives you</th></tr></thead>
            <tbody>
              <tr><td><code>el.parentElement</code></td><td>the parent element</td></tr>
              <tr><td><code>el.children</code></td><td>the child elements (a live <code>HTMLCollection</code>)</td></tr>
              <tr><td><code>el.firstElementChild</code> / <code>el.lastElementChild</code></td><td>first / last child element</td></tr>
              <tr><td><code>el.nextElementSibling</code> / <code>el.previousElementSibling</code></td><td>the neighbour after / before</td></tr>
              <tr><td><code>el.closest(".card")</code></td><td>the nearest ancestor (or itself) matching a selector</td></tr>
            </tbody>
          </table>
          <p><code>closest</code> becomes very useful with events in Lesson 17: from the button that was clicked, find the product card it belongs to.</p>
        </div>
        <div class="lc-card">
          <h3>Make Sure the Elements Exist</h3>
          <p>A script can only find elements that the browser has already parsed. Load scripts with <code>&lt;script src="app.js" defer&gt;</code> (or <code>type="module"</code>) so they run after the HTML is ready. Otherwise <code>querySelector</code> returns <code>null</code> and the next line throws <code>TypeError: Cannot set properties of null</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>getElementById("#title")</code> — no <code>#</code> there; the <code>#</code> is only for CSS selectors.</li>
            <li>Treating the result of <code>querySelectorAll</code> as one element (<code>items.textContent = …</code>) — loop over it.</li>
            <li>Putting user input into <code>innerHTML</code>.</li>
            <li>Setting <code>document.body.innerHTML = …</code> and wiping out the whole page (including other scripts' elements).</li>
            <li>Forgetting that <code>dataset</code> values and input values are strings — convert with <code>Number()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add "Cold Coffee" to the <code>items</code> array in the starter and run again.</li>
            <li>Give every item costing more than ₹50 the class <code>premium</code>, then count them with <code>querySelectorAll(".premium")</code>.</li>
            <li>Change the heading's text with <code>textContent</code>, then try <code>innerHTML</code> with an <code>&lt;em&gt;</code> tag.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Open DevTools (F12) → <strong>Elements</strong> tab while your script runs. You can watch the DOM change live, and right-click any element → <em>Copy selector</em> to get a ready-made CSS selector.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 16: the DOM
        // Build a small menu card under the output panel
        const card = document.createElement("section");
        const heading = document.createElement("h2");
        heading.textContent = "Chai Point Menu";
        const list = document.createElement("ul");
        list.className = "menu";
        card.append(heading, list);
        document.body.append(card);

        const items = [["Masala Chai", 30], ["Filter Coffee", 40], ["Lassi", 60], ["Samosa", 20]];
        for (const [name, price] of items) {
          const li = document.createElement("li");
          li.textContent = name + " - ₹" + price;
          li.dataset.price = price;
          if (price > 50) li.classList.add("premium");
          list.append(li);
        }

        // Select and read
        const allItems = document.querySelectorAll(".menu li");
        console.log("Items on the menu:", allItems.length);
        console.log("First item:", document.querySelector(".menu li").textContent);
        console.log("Premium items:", document.querySelectorAll(".premium").length);

        // Change, toggle and remove
        heading.textContent = "Chai Point - Today's Menu";
        allItems[3].classList.toggle("sold-out");
        console.log("Samosa sold out?", allItems[3].classList.contains("sold-out"));
        allItems[3].remove();
        console.log("After removing Samosa:", list.children.length, "items");

        // dataset values are strings
        const prices = [...list.children].map((li) => Number(li.dataset.price));
        console.log("Total of listed prices: ₹" + prices.reduce((a, b) => a + b, 0));

        // textContent is safe for user input
        const userName = "<img src=x onerror=alert(1)>";
        const greeting = document.createElement("p");
        greeting.textContent = "Welcome, " + userName;
        card.append(greeting);
        console.log("Images created by user input:", card.querySelectorAll("img").length);
        console.log("Heading now:", heading.textContent);
      JS
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">DOM Events</h1>
        </div>
        <p class="lc-lead">An <strong>event</strong> is something that happens in the page — a click, a key press, a form being submitted. You attach a <strong>listener</strong> (a callback function) to an element, and the browser calls it every time that event happens.</p>
        <div class="lc-card">
          <h3>addEventListener</h3>
          <div class="lc-code">const button = document.querySelector("#like");<br>let likes = 0;<br><br>button.addEventListener("click", () =&gt; {<br>&nbsp;&nbsp;likes++;<br>&nbsp;&nbsp;button.textContent = "👍 " + likes;<br>});</div>
          <ul class="lc-list">
            <li>The first argument is the event <strong>type</strong> as a string (<code>"click"</code>, not <code>"onclick"</code>).</li>
            <li>The second is the function to call. Pass the function itself — <code>handleClick</code>, not <code>handleClick()</code>.</li>
            <li>You can add several listeners to the same element and event.</li>
          </ul>
          <p>Avoid the old inline style <code>&lt;button onclick="like()"&gt;</code>: it mixes JavaScript into HTML and only allows one handler.</p>
        </div>
        <div class="lc-card">
          <h3>Common Event Types</h3>
          <table class="lc-table">
            <thead><tr><th>Event</th><th>Fires when</th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td><code>click</code></td><td>element is clicked or tapped</td><td>buttons, links, cards</td></tr>
              <tr><td><code>input</code></td><td>the value of a field changes, on every keystroke</td><td>live search, character counters</td></tr>
              <tr><td><code>change</code></td><td>a field's value is committed (select chosen, checkbox ticked, text field loses focus)</td><td>dropdowns, checkboxes</td></tr>
              <tr><td><code>submit</code></td><td>a form is submitted (button or Enter key)</td><td>login, sign-up, search forms</td></tr>
              <tr><td><code>keydown</code></td><td>a key is pressed</td><td>shortcuts, games</td></tr>
              <tr><td><code>DOMContentLoaded</code></td><td>the HTML has been fully parsed</td><td>starting code (not needed with <code>defer</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Event Object</h3>
          <p>The browser passes an <strong>event object</strong> to your listener with details about what happened:</p>
          <div class="lc-code">document.addEventListener("keydown", (event) =&gt; {<br>&nbsp;&nbsp;console.log(event.type);   // "keydown"<br>&nbsp;&nbsp;console.log(event.key);    // e.g. "Enter", "a", "ArrowUp"<br>&nbsp;&nbsp;if (event.key === "Escape") closeDialog();<br>});<br><br>searchBox.addEventListener("input", (event) =&gt; {<br>&nbsp;&nbsp;console.log(event.target.value);   // the text typed so far<br>});</div>
          <ul class="lc-list">
            <li><code>event.target</code> — the element where the event started (e.g. the exact thing clicked).</li>
            <li><code>event.currentTarget</code> — the element whose listener is running now.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Live Character Counter</h3>
          <div class="lc-code">&lt;textarea id="bio" maxlength="100"&gt;&lt;/textarea&gt;<br>&lt;p id="count"&gt;0 / 100&lt;/p&gt;<br><br>const bio = document.querySelector("#bio");<br>const count = document.querySelector("#count");<br>bio.addEventListener("input", () =&gt; {<br>&nbsp;&nbsp;count.textContent = bio.value.length + " / 100";<br>&nbsp;&nbsp;count.classList.toggle("warning", bio.value.length &gt; 90);<br>});</div>
          <p>After typing "Hello!" the paragraph shows:</p>
          <div class="lc-code">6 / 100</div>
          <p><code>classList.toggle(name, condition)</code> adds the class when the condition is true and removes it when false — perfect for state that follows a value.</p>
        </div>
        <div class="lc-card">
          <h3>Forms and preventDefault</h3>
          <p>By default, submitting a form reloads the page. For JavaScript-handled forms, stop that with <code>event.preventDefault()</code>:</p>
          <div class="lc-code">form.addEventListener("submit", (event) =&gt; {<br>&nbsp;&nbsp;event.preventDefault();                  // no page reload<br>&nbsp;&nbsp;const email = form.elements.email.value.trim();<br>&nbsp;&nbsp;if (!email.includes("@")) {<br>&nbsp;&nbsp;&nbsp;&nbsp;message.textContent = "Please enter a valid email";<br>&nbsp;&nbsp;&nbsp;&nbsp;return;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;message.textContent = "Subscribed: " + email;<br>});</div>
          <p>Listen for <code>submit</code> on the <strong>form</strong>, not <code>click</code> on the button — that way pressing Enter works too.</p>
          <p>For forms with many fields, read them all at once with <strong>FormData</strong>. It uses each input's <code>name</code> attribute, and every value arrives as a <strong>string</strong>:</p>
          <div class="lc-code">&lt;form id="signup"&gt;&lt;input name="city" value="Pune"&gt;&lt;input name="age" type="number" value="21"&gt;&lt;/form&gt;<br><br>const signup = document.querySelector("#signup");<br>const data = Object.fromEntries(new FormData(signup));<br>console.log(data);                   // { city: "Pune", age: "21" }  — age is a string!<br>console.log(Number(data.age) + 1);   // 22</div>
          <p>Let the browser do simple validation with HTML attributes (<code>required</code>, <code>type="email"</code>, <code>minlength</code>, <code>pattern</code>): it blocks the <code>submit</code> event and shows a message until the fields are valid. Still check the data again in JavaScript and on the server — HTML validation is a convenience, not security.</p>
        </div>
        <div class="lc-card">
          <h3>Bubbling and Event Delegation</h3>
          <p>Most events <strong>bubble</strong>: after firing on the clicked element, they travel up through its parent, grandparent and so on to <code>document</code>. So a single listener on a parent can handle clicks on all its children. This is called <strong>event delegation</strong>:</p>
          <div class="lc-code">// One listener for every "Remove" button — even ones added later<br>cartList.addEventListener("click", (event) =&gt; {<br>&nbsp;&nbsp;const button = event.target.closest("button.remove");<br>&nbsp;&nbsp;if (!button) return;                       // click was somewhere else<br>&nbsp;&nbsp;button.closest("li").remove();<br>});</div>
          <table class="lc-table">
            <thead><tr><th></th><th>A listener on every item</th><th>Delegation (one listener on the parent)</th></tr></thead>
            <tbody>
              <tr><td>Items added later</td><td>need new listeners</td><td>work automatically</td></tr>
              <tr><td>Number of listeners</td><td>one per item</td><td>one</td></tr>
              <tr><td>Code</td><td>simple for a few fixed items</td><td>needs a <code>closest</code> check</td></tr>
            </tbody>
          </table>
          <p><code>event.stopPropagation()</code> stops bubbling, but use it rarely — it can break delegation elsewhere on the page.</p>
        </div>
        <div class="lc-card">
          <h3>Removing Listeners and { once: true }</h3>
          <div class="lc-code">function onScroll() { console.log("scrolled"); }<br>window.addEventListener("scroll", onScroll);<br>window.removeEventListener("scroll", onScroll);   // must be the SAME function<br><br>button.addEventListener("click", () =&gt; console.log("first click only"), { once: true });</div>
          <p><code>removeEventListener</code> only works with a named function reference — an arrow function written inline cannot be removed because you have no reference to it.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling the handler immediately: <code>addEventListener("click", save())</code> runs <code>save</code> once and passes its result.</li>
            <li>Writing <code>"onclick"</code> as the type — the type is just <code>"click"</code>.</li>
            <li>Forgetting <code>preventDefault()</code> in a submit handler, so the page reloads and your output disappears.</li>
            <li>Adding listeners to items before they exist — or adding a new listener on every render so one click fires many times.</li>
            <li>Reading <code>event.target</code> when a child element (like an icon inside the button) was clicked — use <code>closest()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, click the like button two more times in code and check the count.</li>
            <li>Add a new item to the cart <em>after</em> the delegation listener is set up and remove it with a simulated click. Does it work?</li>
            <li>Make the search box print how many characters were typed.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In DevTools → Elements, select an element and open the <strong>Event Listeners</strong> panel to see every listener attached to it — very useful when a click "does nothing" or fires twice.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 17: DOM events (events are triggered in code so output is predictable)
        const likeBtn = document.createElement("button");
        likeBtn.textContent = "Like";
        let likes = 0;
        likeBtn.addEventListener("click", () => {
          likes++;
          likeBtn.textContent = "Like (" + likes + ")";
        });
        likeBtn.addEventListener("click", () => console.log("Welcome bonus!"), { once: true });
        document.body.append(likeBtn);
        likeBtn.click();
        likeBtn.click();
        console.log("Button says:", likeBtn.textContent);

        // input event with the event object
        const search = document.createElement("input");
        search.addEventListener("input", (e) => console.log("Searching for:", e.target.value));
        document.body.append(search);
        search.value = "dosa";
        search.dispatchEvent(new Event("input", { bubbles: true }));

        // Form submit with preventDefault
        const form = document.createElement("form");
        form.innerHTML = "<input name='email' value='asha.example.in'><button>Join</button>";
        form.addEventListener("submit", (e) => {
          e.preventDefault();
          const email = form.elements.email.value;
          console.log(email.includes("@") ? "Subscribed: " + email : "Invalid email: " + email);
        });
        document.body.append(form);
        form.requestSubmit();

        // Event delegation: one listener on the list handles every Remove button
        const cart = document.createElement("ul");
        for (const item of ["Tea", "Coffee", "Samosa"]) {
          cart.insertAdjacentHTML("beforeend", "<li>" + item + " <button class='remove'>x</button></li>");
        }
        cart.addEventListener("click", (e) => {
          const btn = e.target.closest("button.remove");
          if (!btn) return;
          console.log("Removed:", btn.closest("li").firstChild.textContent.trim());
          btn.closest("li").remove();
        });
        document.body.append(cart);
        cart.querySelectorAll("button.remove")[1].click();
        console.log("Items left:", cart.children.length);
      JS
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Promises and the Event Loop</h1>
        </div>
        <p class="lc-lead">JavaScript runs your code on a <strong>single thread</strong> — one thing at a time. Yet a page can wait for a server, a timer and a click all at once. The <strong>event loop</strong> makes this possible, and <strong>Promises</strong> are the modern way to work with results that arrive later.</p>
        <div class="lc-card">
          <h3>Synchronous vs Asynchronous</h3>
          <ul class="lc-list">
            <li><strong>Synchronous</strong> code runs line by line; each line waits for the previous one.</li>
            <li><strong>Asynchronous</strong> work (timers, network requests, reading files) is started now and <em>finishes later</em>. The rest of your code keeps running meanwhile.</li>
          </ul>
          <div class="lc-code">console.log("1. Order placed");<br>setTimeout(() =&gt; console.log("3. Food delivered"), 1000);<br>console.log("2. Keep browsing");</div>
          <p>Output: 1, 2, then 3 a second later. If JavaScript waited for the timer, the whole page would freeze.</p>
        </div>
        <div class="lc-card">
          <h3>Timers: setTimeout, setInterval and Debouncing</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Does</th><th>Cancel with</th></tr></thead>
            <tbody>
              <tr><td><code>setTimeout(fn, ms)</code></td><td>runs <code>fn</code> once, after <em>at least</em> <code>ms</code> milliseconds</td><td><code>clearTimeout(id)</code></td></tr>
              <tr><td><code>setInterval(fn, ms)</code></td><td>runs <code>fn</code> again and again, every <code>ms</code> milliseconds</td><td><code>clearInterval(id)</code></td></tr>
            </tbody>
          </table>
          <p>Both return an <strong>id</strong>; keep it if you may need to cancel. An interval never stops on its own:</p>
          <div class="lc-code">let ticks = 0;<br>const id = setInterval(() =&gt; {<br>&nbsp;&nbsp;ticks++;<br>&nbsp;&nbsp;console.log("tick", ticks);<br>&nbsp;&nbsp;if (ticks === 3) { clearInterval(id); console.log("stopped"); }<br>}, 1000);<br>// tick 1, tick 2, tick 3, stopped — one second apart</div>
          <p>A classic use of <code>clearTimeout</code> is <strong>debouncing</strong>: wait until the user stops typing before searching, instead of searching on every key press.</p>
          <div class="lc-code">function debounce(fn, ms) {<br>&nbsp;&nbsp;let timer;<br>&nbsp;&nbsp;return (...args) =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;clearTimeout(timer);                       // cancel the previous wait<br>&nbsp;&nbsp;&nbsp;&nbsp;timer = setTimeout(() =&gt; fn(...args), ms);   // start a new one<br>&nbsp;&nbsp;};<br>}<br>const search = debounce((q) =&gt; console.log("Searching for", q), 300);<br>search("p"); search("pa"); search("pan");<br>// Searching for pan   — printed once, 300 ms after the last call</div>
          <p><code>debounce</code> uses a closure (Lesson 7) to remember <code>timer</code> between calls. The delay is a <em>minimum</em>: a timer callback is a task, so it waits for the current code to finish.</p>
        </div>
        <div class="lc-card">
          <h3>How the Event Loop Works</h3>
          <ol class="lc-list">
            <li>The <strong>call stack</strong> runs your current code until it is empty.</li>
            <li>Finished async work puts its callback in a queue. <code>setTimeout</code>, clicks and other events go to the <strong>task queue</strong>.</li>
            <li>Promise callbacks (<code>then</code>, <code>catch</code>, <code>finally</code>, <code>await</code>) and <code>queueMicrotask</code> go to the <strong>microtask queue</strong>.</li>
            <li>When the stack is empty, the event loop runs <strong>all</strong> microtasks first, then <strong>one</strong> task, then all microtasks again, and so on.</li>
          </ol>
          <p>Predict the output:</p>
          <div class="lc-code">console.log("A");<br>setTimeout(() =&gt; console.log("B"), 0);<br>Promise.resolve().then(() =&gt; console.log("C"));<br>queueMicrotask(() =&gt; console.log("D"));<br>console.log("E");</div>
          <p>Output:</p>
          <div class="lc-code">A<br>E<br>C<br>D<br>B</div>
          <p>A and E are synchronous. C and D are microtasks, so they run as soon as the stack empties. B is a task — even with a 0 ms delay it waits until the microtasks are done.</p>
        </div>
        <div class="lc-card">
          <h3>Callbacks and "Callback Hell"</h3>
          <p>The oldest style of async code passes a callback to run when work finishes. With several steps in a row, callbacks nest deeper and deeper:</p>
          <div class="lc-code">getUser(id, (user) =&gt; {<br>&nbsp;&nbsp;getOrders(user, (orders) =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;getInvoice(orders[0], (invoice) =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;console.log(invoice);   // and error handling at every level…<br>&nbsp;&nbsp;&nbsp;&nbsp;});<br>&nbsp;&nbsp;});<br>});</div>
          <p>Promises flatten this into a readable chain.</p>
        </div>
        <div class="lc-card">
          <h3>What Is a Promise?</h3>
          <p>A <strong>Promise</strong> is an object that stands for a value that will be ready later — like a token at a food counter. It is always in one of three states:</p>
          <table class="lc-table">
            <thead><tr><th>State</th><th>Meaning</th><th>Handled by</th></tr></thead>
            <tbody>
              <tr><td>pending</td><td>still working</td><td>—</td></tr>
              <tr><td>fulfilled</td><td>finished with a value</td><td><code>.then(value =&gt; …)</code></td></tr>
              <tr><td>rejected</td><td>failed with an error</td><td><code>.catch(error =&gt; …)</code></td></tr>
            </tbody>
          </table>
          <p>Once fulfilled or rejected, a Promise is <strong>settled</strong> and never changes again.</p>
        </div>
        <div class="lc-card">
          <h3>Creating and Using a Promise</h3>
          <div class="lc-code">function cookOrder(dish) {<br>&nbsp;&nbsp;return new Promise((resolve, reject) =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;setTimeout(() =&gt; {<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (dish === "") reject(new Error("No dish chosen"));<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else resolve(dish + " is ready");<br>&nbsp;&nbsp;&nbsp;&nbsp;}, 500);<br>&nbsp;&nbsp;});<br>}<br><br>cookOrder("Paneer Tikka")<br>&nbsp;&nbsp;.then((msg) =&gt; console.log(msg))          // Paneer Tikka is ready<br>&nbsp;&nbsp;.catch((err) =&gt; console.log(err.message))<br>&nbsp;&nbsp;.finally(() =&gt; console.log("Counter free"));</div>
          <p>Most of the time you <em>use</em> Promises returned by APIs such as <code>fetch</code>, rather than creating them yourself.</p>
        </div>
        <div class="lc-card">
          <h3>Chaining</h3>
          <p>Whatever a <code>then</code> callback returns becomes the value for the next <code>then</code>. If it returns a Promise, the chain waits for it. An error anywhere skips straight to the next <code>catch</code>:</p>
          <div class="lc-code">getUser(1)<br>&nbsp;&nbsp;.then((user) =&gt; getOrders(user))   // returns a Promise<br>&nbsp;&nbsp;.then((orders) =&gt; orders.length)<br>&nbsp;&nbsp;.then((count) =&gt; console.log("Orders:", count))<br>&nbsp;&nbsp;.catch((err) =&gt; console.log("Failed:", err.message));</div>
        </div>
        <div class="lc-card">
          <h3>Running Promises Together</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Resolves when</th><th>Rejects when</th></tr></thead>
            <tbody>
              <tr><td><code>Promise.all([...])</code></td><td>all succeed → array of values (in order)</td><td>any one fails</td></tr>
              <tr><td><code>Promise.allSettled([...])</code></td><td>all finish → array of <code>{ status, value | reason }</code></td><td>never</td></tr>
              <tr><td><code>Promise.race([...])</code></td><td>the first to settle succeeds</td><td>the first to settle fails</td></tr>
              <tr><td><code>Promise.any([...])</code></td><td>the first to succeed</td><td>all fail (<code>AggregateError</code>)</td></tr>
            </tbody>
          </table>
          <p><code>Promise.withResolvers()</code> (Baseline 2024) returns <code>{ promise, resolve, reject }</code> — handy when resolve must be called from somewhere else, such as an event handler.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Expecting async results on the next line: <code>let data; setTimeout(() =&gt; data = 5, 0); console.log(data)</code> prints <code>undefined</code>.</li>
            <li>Forgetting to <code>return</code> inside a <code>then</code>, so the next step receives <code>undefined</code>.</li>
            <li>No <code>catch</code> at the end of a chain — failures become "Uncaught (in promise)" errors.</li>
            <li>Thinking <code>setTimeout(fn, 0)</code> runs immediately — it waits for the current code and all microtasks.</li>
            <li>Nesting <code>then</code> inside <code>then</code> instead of returning and chaining.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Before running the starter, write down the order you expect for part 1. Then check.</li>
            <li>Make <code>cookOrder</code> fail by passing an empty string and see which callbacks run.</li>
            <li>Change <code>Promise.allSettled</code> to <code>Promise.all</code>. What happens now that one order fails?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The next lesson's <code>async</code>/<code>await</code> is built on Promises. Understanding "microtasks before tasks" and "a Promise settles once" makes <code>await</code> feel logical instead of magical.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 18: promises and the event loop
        // Part 1: predict the order before running!
        console.log("1. sync start");
        setTimeout(() => console.log("5. setTimeout (task)"), 0);
        Promise.resolve().then(() => console.log("3. promise.then (microtask)"));
        queueMicrotask(() => console.log("4. queueMicrotask (microtask)"));
        console.log("2. sync end");

        // Part 2: creating and consuming a Promise
        function cookOrder(dish, ms) {
          return new Promise((resolve, reject) => {
            setTimeout(() => {
              if (dish === "") reject(new Error("No dish chosen"));
              else resolve(dish + " is ready");
            }, ms);
          });
        }

        setTimeout(() => {
          console.log("");
          cookOrder("Paneer Tikka", 100)
            .then((msg) => { console.log(msg); return msg.length; })
            .then((len) => console.log("Message length:", len))
            .catch((err) => console.log("Error:", err.message))
            .finally(() => console.log("Counter free"));
        }, 50);

        // Part 3: several promises at once
        setTimeout(() => {
          const orders = [cookOrder("Dosa", 50), cookOrder("", 80), cookOrder("Idli", 30)];
          Promise.allSettled(orders).then((results) => {
            console.log("");
            for (const r of results) {
              console.log(r.status, "->", r.status === "fulfilled" ? r.value : r.reason.message);
            }
          });
          Promise.any(orders).then((first) => console.log("First success:", first));
          Promise.all([cookOrder("Tea", 20), cookOrder("Vada", 40)])
            .then((both) => console.log("Promise.all:", both.join(" + ")));
        }, 300);
      JS
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Async/Await and the Fetch API</h1>
        </div>
        <p class="lc-lead"><code>async</code> and <code>await</code> let you write Promise-based code that reads top to bottom like normal code. Combined with <code>fetch</code>, the browser's built-in way to make HTTP requests, they are how modern web apps load and send data.</p>
        <div class="lc-card">
          <h3>async Functions and await</h3>
          <div class="lc-code">const wait = (ms) =&gt; new Promise((resolve) =&gt; setTimeout(resolve, ms));<br><br>async function makeTea() {<br>&nbsp;&nbsp;console.log("Boiling water…");<br>&nbsp;&nbsp;await wait(500);                // pause THIS function for 0.5 s<br>&nbsp;&nbsp;console.log("Adding tea leaves…");<br>&nbsp;&nbsp;await wait(500);<br>&nbsp;&nbsp;return "Chai ready";<br>}<br><br>makeTea().then((msg) =&gt; console.log(msg));<br>console.log("Meanwhile, the page stays responsive");</div>
          <p>Output:</p>
          <div class="lc-code">Boiling water…<br>Meanwhile, the page stays responsive<br>Adding tea leaves…<br>Chai ready</div>
          <ul class="lc-list">
            <li>An <code>async</code> function <strong>always returns a Promise</strong> — here a Promise of <code>"Chai ready"</code>.</li>
            <li><code>await</code> pauses only the <em>async function it is in</em>; everything else keeps running.</li>
            <li><code>await</code> can only be used inside an <code>async</code> function — or at the top level of an ES module (Lesson 21).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Errors with try/catch</h3>
          <p>A rejected Promise makes <code>await</code> <strong>throw</strong>, so you handle it with the familiar <code>try/catch/finally</code> from Lesson 14:</p>
          <div class="lc-code">async function loadProfile() {<br>&nbsp;&nbsp;showSpinner();<br>&nbsp;&nbsp;try {<br>&nbsp;&nbsp;&nbsp;&nbsp;const user = await getUser(42);<br>&nbsp;&nbsp;&nbsp;&nbsp;render(user);<br>&nbsp;&nbsp;} catch (error) {<br>&nbsp;&nbsp;&nbsp;&nbsp;showMessage("Could not load profile: " + error.message);<br>&nbsp;&nbsp;} finally {<br>&nbsp;&nbsp;&nbsp;&nbsp;hideSpinner();   // runs on success AND failure<br>&nbsp;&nbsp;}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Sequential vs Parallel</h3>
          <p>Each <code>await</code> waits before the next line starts. If two requests don't depend on each other, start both and wait for them together with <code>Promise.all</code>:</p>
          <div class="lc-code">// Sequential: about 1 s + 1 s = 2 s<br>const weather = await getWeather();<br>const news = await getNews();<br><br>// Parallel: about 1 s in total<br>const [weather2, news2] = await Promise.all([getWeather(), getNews()]);</div>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td><code>await a(); await b();</code></td><td><code>b</code> needs the result of <code>a</code> (e.g. get user, then that user's orders)</td></tr>
              <tr><td><code>await Promise.all([a(), b()])</code></td><td>independent requests; fail if any fails</td></tr>
              <tr><td><code>await Promise.allSettled([a(), b()])</code></td><td>independent requests; show whatever succeeded</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>fetch: Getting Data (GET)</h3>
          <div class="lc-code">async function getUser(id) {<br>&nbsp;&nbsp;const response = await fetch("https://jsonplaceholder.typicode.com/users/" + id);<br>&nbsp;&nbsp;if (!response.ok) {<br>&nbsp;&nbsp;&nbsp;&nbsp;throw new Error("HTTP " + response.status);<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;return await response.json();   // parse the body as JSON<br>}<br><br>// inside another async function (or a module):<br>const user = await getUser(1);<br>console.log(user.name);   // "Leanne Graham"</div>
          <ol class="lc-list">
            <li><code>fetch(url)</code> returns a Promise of a <strong>Response</strong> as soon as the headers arrive.</li>
            <li>Check <code>response.ok</code> (true for status 200–299) or <code>response.status</code>.</li>
            <li>Read the body with <code>await response.json()</code> (or <code>.text()</code>) — this is a second Promise.</li>
          </ol>
          <p><strong>Important:</strong> <code>fetch</code> does <em>not</em> reject for HTTP errors such as 404 or 500. It only rejects when the request could not be made at all (no internet, blocked by CORS, bad URL). You must check <code>response.ok</code> yourself.</p>
        </div>
        <div class="lc-card">
          <h3>fetch: Sending Data (POST)</h3>
          <div class="lc-code">const response = await fetch("https://jsonplaceholder.typicode.com/posts", {<br>&nbsp;&nbsp;method: "POST",<br>&nbsp;&nbsp;headers: { "Content-Type": "application/json" },<br>&nbsp;&nbsp;body: JSON.stringify({ title: "Hello", userId: 1 }),<br>&nbsp;&nbsp;signal: AbortSignal.timeout(5000),   // give up after 5 seconds<br>});<br>console.log(response.status);   // 201 (Created)</div>
          <p><code>AbortSignal.timeout(ms)</code> cancels a slow request; the <code>fetch</code> then rejects with a <code>TimeoutError</code>. Never put secret API keys in browser code — anyone can read them in DevTools.</p>
        </div>
        <div class="lc-card">
          <h3>What Can Go Wrong</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>What fetch does</th><th>How you notice</th></tr></thead>
            <tbody>
              <tr><td>200 OK</td><td>resolves</td><td><code>response.ok === true</code></td></tr>
              <tr><td>404 / 500</td><td>resolves</td><td><code>response.ok === false</code> — check it!</td></tr>
              <tr><td>No network / CORS blocked</td><td>rejects (<code>TypeError</code>)</td><td><code>catch</code></td></tr>
              <tr><td>Timed out via <code>AbortSignal.timeout</code></td><td>rejects (<code>TimeoutError</code>)</td><td><code>catch</code></td></tr>
              <tr><td>Body is not valid JSON</td><td><code>response.json()</code> rejects (<code>SyntaxError</code>)</td><td><code>catch</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Loading, Error and Success States</h3>
          <p>Users need feedback while data loads. A typical pattern for any screen that fetches data:</p>
          <ol class="lc-list">
            <li><strong>Loading</strong> — disable the button, show "Loading…".</li>
            <li><strong>Success</strong> — render the data.</li>
            <li><strong>Error</strong> — show a friendly message and a "Try again" button.</li>
            <li><strong>Always</strong> (in <code>finally</code>) — re-enable the button, hide the spinner.</li>
          </ol>
          <p>Also handle the <strong>empty</strong> case: a successful response with zero results should say "No results", not show a blank area.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>await</code>: <code>const data = fetch(url)</code> gives you a Promise, not the data.</li>
            <li>Forgetting that <code>response.json()</code> also needs <code>await</code>.</li>
            <li>Assuming a 404 lands in <code>catch</code> — it doesn't unless you throw.</li>
            <li>Awaiting independent requests one after another and making the page slow.</li>
            <li>Using <code>await</code> inside <code>forEach</code> — it doesn't wait. Use <code>for...of</code> or <code>Promise.all</code> with <code>map</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, request user id 3 and print their city.</li>
            <li>Add a third item to the parallel load and check that the total time barely changes.</li>
            <li>Copy <code>getJson</code> into your own HTML page and call the real URL from the lesson.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Wrap <code>fetch</code> once in a small helper (like <code>getJson</code> in the starter) that checks <code>response.ok</code> and parses JSON. Then every other part of your app just writes <code>const data = await getJson(url)</code>.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 19: async/await and fetch
        // The editor has no internet, so fakeFetch imitates a server with real Response objects.
        const db = { 1: { name: "Asha", city: "Pune" }, 2: { name: "Ravi", city: "Kochi" } };
        const wait = (ms) => new Promise((resolve) => setTimeout(resolve, ms));

        async function fakeFetch(url) {
          await wait(100); // pretend network delay
          const id = url.split("/").at(-1);
          const user = db[id];
          const body = JSON.stringify(user ?? { error: "Not found" });
          return new Response(body, { status: user ? 200 : 404 });
        }

        // A reusable helper: check response.ok, then parse JSON
        async function getJson(url) {
          const response = await fakeFetch(url);
          if (!response.ok) throw new Error("HTTP " + response.status + " for " + url);
          return await response.json();
        }

        async function main() {
          const user = await getJson("/api/users/1");
          console.log("User 1:", user.name, "from", user.city);

          try {
            await getJson("/api/users/99");
          } catch (error) {
            console.log("Handled:", error.message);
          } finally {
            console.log("Loading spinner hidden");
          }

          let start = Date.now();
          await getJson("/api/users/1");
          await getJson("/api/users/2");
          console.log("Sequential took about", Math.round((Date.now() - start) / 100) * 100, "ms");

          start = Date.now();
          const [a, b] = await Promise.all([getJson("/api/users/1"), getJson("/api/users/2")]);
          console.log("Parallel took about", Math.round((Date.now() - start) / 100) * 100, "ms:", a.name, "and", b.name);
          return "main finished";
        }

        main().then((msg) => console.log(msg));
        console.log("This line runs first - main() is still waiting");
      JS
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">JSON and localStorage</h1>
        </div>
        <p class="lc-lead"><strong>JSON</strong> is the text format the web uses to send and save data. <strong>localStorage</strong> lets a page keep small amounts of data in the browser, so a user's settings or cart survive a page reload.</p>
        <div class="lc-card">
          <h3>What JSON Looks Like</h3>
          <div class="lc-code">{<br>&nbsp;&nbsp;"name": "Asha",<br>&nbsp;&nbsp;"age": 21,<br>&nbsp;&nbsp;"isStudent": true,<br>&nbsp;&nbsp;"skills": ["HTML", "CSS"],<br>&nbsp;&nbsp;"address": { "city": "Pune" },<br>&nbsp;&nbsp;"phone": null<br>}</div>
          <p>JSON looks like a JavaScript object, but the rules are stricter:</p>
          <ul class="lc-list">
            <li>Keys <strong>must</strong> be in double quotes; strings must use double quotes too.</li>
            <li>Allowed values: string, number, <code>true</code>/<code>false</code>, <code>null</code>, arrays and objects.</li>
            <li>No functions, no <code>undefined</code>, no comments, no trailing commas.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>JSON.stringify — Object to Text</h3>
          <div class="lc-code">const user = { name: "Asha", age: 21, skills: ["HTML", "CSS"] };<br>console.log(JSON.stringify(user));<br>// {"name":"Asha","age":21,"skills":["HTML","CSS"]}<br><br>console.log(JSON.stringify(user, null, 2));   // pretty-printed with 2-space indent</div>
          <p>Some values change or disappear on the way:</p>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>In JSON</th></tr></thead>
            <tbody>
              <tr><td><code>undefined</code> or a function (as a property)</td><td>property is <strong>left out</strong></td></tr>
              <tr><td><code>NaN</code>, <code>Infinity</code></td><td><code>null</code></td></tr>
              <tr><td><code>new Date(…)</code></td><td>an ISO string like <code>"2026-09-25T10:30:00.000Z"</code></td></tr>
              <tr><td><code>Map</code>, <code>Set</code></td><td><code>{}</code> — convert first (<code>[...set]</code>, <code>Object.fromEntries(map)</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>JSON.parse — Text to Object</h3>
          <div class="lc-code">const text = '{"item":"Chai","qty":2}';<br>const order = JSON.parse(text);<br>console.log(order.qty * 30);   // 60<br><br>JSON.parse("{item: 'Chai'}");   // SyntaxError — keys and strings need double quotes</div>
          <p><code>JSON.parse</code> <strong>throws</strong> on invalid text, so wrap it in <code>try/catch</code> whenever the text comes from outside your code (storage, a server, a user). Dates come back as <em>strings</em>; turn them back with <code>new Date(value)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>localStorage Basics</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td><code>localStorage.setItem("theme", "dark")</code></td><td>save a value under a key</td></tr>
              <tr><td><code>localStorage.getItem("theme")</code></td><td>read it — returns <code>null</code> if the key doesn't exist</td></tr>
              <tr><td><code>localStorage.removeItem("theme")</code></td><td>delete one key</td></tr>
              <tr><td><code>localStorage.clear()</code></td><td>delete <em>everything</em> for this site — use carefully</td></tr>
            </tbody>
          </table>
          <p>localStorage stores <strong>only strings</strong>. <code>setItem("count", 5)</code> saves <code>"5"</code>, and <code>setItem("user", {…})</code> saves the useless text <code>"[object Object]"</code>. For anything that isn't a string, use JSON.</p>
          <p><strong>Note:</strong> this course's editor runs your code in a sandboxed frame where storage is blocked, so the starter code falls back to an in-memory stand-in with the same methods. In your own web pages, <code>localStorage</code> works normally.</p>
        </div>
        <div class="lc-card">
          <h3>Saving and Loading Objects Safely</h3>
          <div class="lc-code">const CART_KEY = "shop.cart";<br><br>function saveCart(cart) {<br>&nbsp;&nbsp;localStorage.setItem(CART_KEY, JSON.stringify(cart));<br>}<br><br>function loadCart() {<br>&nbsp;&nbsp;try {<br>&nbsp;&nbsp;&nbsp;&nbsp;return JSON.parse(localStorage.getItem(CART_KEY)) ?? [];<br>&nbsp;&nbsp;} catch {<br>&nbsp;&nbsp;&nbsp;&nbsp;return [];   // corrupted data → start fresh<br>&nbsp;&nbsp;}<br>}<br><br>saveCart([{ item: "Chai", qty: 2 }]);<br>console.log(loadCart()[0].item);   // "Chai"</div>
          <p>Why this works: a missing key gives <code>null</code>, <code>JSON.parse(null)</code> is <code>null</code>, and <code>?? []</code> turns that into an empty cart. Corrupted text throws, and the <code>catch</code> gives a safe default. (Accessing storage can also throw in some privacy modes — the <code>try</code> covers that too.)</p>
        </div>
        <div class="lc-card">
          <h3>localStorage vs sessionStorage</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>localStorage</th><th>sessionStorage</th></tr></thead>
            <tbody>
              <tr><td>Lasts</td><td>until deleted (by code or the user)</td><td>until the tab is closed</td></tr>
              <tr><td>Shared between tabs?</td><td>yes, for the same site</td><td>no, one per tab</td></tr>
              <tr><td>Size limit</td><td colspan="2">around 5 MB per site (varies by browser)</td></tr>
              <tr><td>API</td><td colspan="2">same methods: <code>setItem</code>, <code>getItem</code>, <code>removeItem</code>, <code>clear</code> — both are synchronous</td></tr>
            </tbody>
          </table>
          <p>Data is stored per <strong>origin</strong> (protocol + domain + port): <code>https://shop.example</code> cannot read another site's storage.</p>
        </div>
        <div class="lc-card">
          <h3>What NOT to Store</h3>
          <ul class="lc-list">
            <li><strong>Passwords, card numbers, secret tokens</strong> — any JavaScript running on the page (including an injected script) can read localStorage.</li>
            <li><strong>Large data</strong> (images, thousands of records) — use IndexedDB for that.</li>
            <li><strong>The only copy of important data</strong> — users clear their browser; keep real data on a server.</li>
          </ul>
          <p>Good uses: theme choice, language, a draft message, a guest's cart, "don't show this tip again".</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Saving an object without <code>JSON.stringify</code> and getting <code>"[object Object]"</code> back.</li>
            <li>Forgetting that <code>getItem</code> returns strings: <code>getItem("count") + 1</code> gives <code>"51"</code>. Convert with <code>Number()</code>.</li>
            <li>Calling <code>JSON.parse</code> without <code>try/catch</code> on stored data.</li>
            <li>Using <code>localStorage.clear()</code> when you meant to remove just your own key.</li>
            <li>Writing JSON by hand with single quotes or trailing commas.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter, add a <code>language</code> setting, save it and load it again.</li>
            <li>Add a <code>Date</code> to the saved object and check what type it has after loading.</li>
            <li>Store a counter that goes up by one every time you press Run (remove the clean-up line at the end first).</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefix your keys with your app's name (<code>"shop.cart"</code>, <code>"shop.theme"</code>). Many scripts can share one site's storage, and a prefix avoids clashes.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 20: JSON and localStorage
        const settings = { theme: "dark", fontSize: 16, notify: undefined, lastSeen: new Date(0) };
        const text = JSON.stringify(settings); // undefined is dropped, Date becomes a string
        console.log("As JSON:", text);
        const back = JSON.parse(text);
        console.log("theme:", back.theme, "| typeof lastSeen:", typeof back.lastSeen, "| has notify?", "notify" in back);
        try {
          JSON.parse("{theme: 'dark'}");
        } catch (e) {
          console.log("Bad JSON ->", e.name);
        }
        console.log("");

        // Storage access can throw (privacy modes, sandboxed frames like this editor).
        // If it does, use a small in-memory stand-in with the same methods.
        function getStorage() {
          try {
            window.localStorage.getItem("test");
            return window.localStorage;
          } catch {
            console.log("(localStorage is blocked here - using an in-memory stand-in)");
            const data = new Map();
            return {
              setItem: (k, v) => data.set(k, String(v)),
              getItem: (k) => (data.has(k) ? data.get(k) : null),
              removeItem: (k) => data.delete(k),
            };
          }
        }
        const store = getStorage();
        const KEY = "lesson18.cart";

        store.setItem("lesson18.count", 5);
        console.log("A stored number comes back as a", typeof store.getItem("lesson18.count"));
        console.log("Missing key gives:", store.getItem("lesson18.nothing"));

        const saveCart = (cart) => store.setItem(KEY, JSON.stringify(cart));
        function loadCart() {
          try { return JSON.parse(store.getItem(KEY)) ?? []; } catch { return []; }
        }
        console.log("Cart before saving:", loadCart().length, "items");
        saveCart([{ item: "Chai", qty: 2, price: 30 }, { item: "Samosa", qty: 3, price: 20 }]);
        const cart = loadCart();
        const total = cart.reduce((sum, line) => sum + line.qty * line.price, 0);
        console.log("Loaded:", cart.map((l) => l.qty + " x " + l.item).join(", "), "| total ₹" + total);
        store.setItem(KEY, "{broken");
        console.log("Corrupted data falls back to:", JSON.stringify(loadCart()));
        store.removeItem(KEY); // clean up only our own keys
        store.removeItem("lesson18.count");
      JS
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">ES Modules</h1>
        </div>
        <p class="lc-lead">Real apps are split into many files: one for prices, one for the cart, one for the UI. <strong>ES modules</strong> are JavaScript's built-in system for this — each file keeps its own variables private and chooses what to <code>export</code>; other files <code>import</code> only what they need.</p>
        <div class="lc-card">
          <h3>Why Modules?</h3>
          <ul class="lc-list">
            <li><strong>No name clashes</strong> — a variable called <code>total</code> in <code>cart.js</code> doesn't collide with <code>total</code> in <code>report.js</code>.</li>
            <li><strong>Clear dependencies</strong> — the <code>import</code> lines at the top show exactly what a file uses.</li>
            <li><strong>Reuse</strong> — the same <code>format.js</code> can serve every page.</li>
            <li><strong>Tooling</strong> — bundlers such as Vite can remove unused code ("tree shaking") because imports are explicit.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Named Exports</h3>
          <p>A file can export as many named values as it likes:</p>
          <div class="lc-code">// pricing.js<br>export const GST_RATE = 0.18;<br><br>export function withGst(amount) {<br>&nbsp;&nbsp;return Math.round(amount * (1 + GST_RATE));<br>}<br><br>export function formatRupees(amount) {<br>&nbsp;&nbsp;return "₹" + amount.toLocaleString("en-IN");<br>}<br><br>const secretMargin = 0.3;   // not exported → private to this file</div>
          <div class="lc-code">// main.js<br>import { withGst, formatRupees } from "./pricing.js";<br>import { GST_RATE as TAX } from "./pricing.js";   // rename on import<br><br>console.log(formatRupees(withGst(100000)));   // ₹1,18,000<br>console.log(TAX);                             // 0.18</div>
          <p>The names inside <code>{ }</code> must match the exported names exactly (use <code>as</code> to rename).</p>
        </div>
        <div class="lc-card">
          <h3>Default Export</h3>
          <p>A file may also have <strong>at most one</strong> default export — usually the "main thing" the file provides. The importer picks any name for it, without braces:</p>
          <div class="lc-code">// Cart.js<br>export default class Cart {<br>&nbsp;&nbsp;items = [];<br>&nbsp;&nbsp;add(item) { this.items.push(item); }<br>}<br><br>// main.js<br>import Cart from "./Cart.js";<br>import ShoppingCart from "./Cart.js";   // same class, different local name</div>
          <table class="lc-table">
            <thead><tr><th></th><th>Named export</th><th>Default export</th></tr></thead>
            <tbody>
              <tr><td>How many per file</td><td>any number</td><td>zero or one</td></tr>
              <tr><td>Import syntax</td><td><code>import { withGst } from "./pricing.js"</code></td><td><code>import Cart from "./Cart.js"</code></td></tr>
              <tr><td>Name when importing</td><td>must match (or use <code>as</code>)</td><td>anything you like</td></tr>
              <tr><td>Recommendation</td><td>preferred for utilities — editors can auto-import and rename safely</td><td>fine for one main component or class per file</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Namespace Imports</h3>
          <p>You can import everything a file exports as one object:</p>
          <div class="lc-code">import * as pricing from "./pricing.js";<br>console.log(pricing.withGst(500));   // 590<br>console.log(pricing.GST_RATE);       // 0.18</div>
          <p>Choose a name that describes the file. Never name it after a built-in object — <code>import * as Math from "./math.js"</code> would <strong>hide the real <code>Math</code></strong> in that file, so <code>Math.round</code> stops working. Call it <code>mathUtils</code> instead.</p>
        </div>
        <div class="lc-card">
          <h3>Using Modules in the Browser</h3>
          <div class="lc-code">&lt;script type="module" src="main.js"&gt;&lt;/script&gt;</div>
          <ul class="lc-list">
            <li>Module scripts are <strong>deferred</strong> automatically — they run after the HTML is parsed.</li>
            <li>They always run in <strong>strict mode</strong> (e.g. assigning to an undeclared variable throws).</li>
            <li>Top-level variables are <strong>private to the module</strong>, not globals on <code>window</code>.</li>
            <li><strong>Top-level <code>await</code></strong> is allowed.</li>
            <li>A module runs <strong>once</strong>, even if many files import it.</li>
            <li>In the browser, include the file extension and a path: <code>"./pricing.js"</code>, not <code>"pricing"</code>.</li>
            <li>Modules must be served over <code>http://</code> — opening the HTML file directly (<code>file://</code>) fails with a CORS error. Use a dev server: <code>npm create vite@latest</code> sets one up in a minute.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Dynamic import()</h3>
          <p><code>import()</code> loads a module <em>when you need it</em> and returns a Promise — useful for big features only some users open:</p>
          <div class="lc-code">reportButton.addEventListener("click", async () =&gt; {<br>&nbsp;&nbsp;const { buildReport } = await import("./report.js");<br>&nbsp;&nbsp;buildReport();<br>});</div>
        </div>
        <div class="lc-card">
          <h3>ES Modules vs CommonJS</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>ES modules (standard)</th><th>CommonJS (older Node.js)</th></tr></thead>
            <tbody>
              <tr><td>Export</td><td><code>export function f() {}</code></td><td><code>module.exports = { f }</code></td></tr>
              <tr><td>Import</td><td><code>import { f } from "./f.js"</code></td><td><code>const { f } = require("./f")</code></td></tr>
              <tr><td>Works in browsers</td><td>yes</td><td>no (needs a bundler)</td></tr>
              <tr><td>For new code</td><td>use this</td><td>old way — you'll meet it in older Node projects</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>type="module"</code> — you get <code>SyntaxError: Cannot use import statement outside a module</code>.</li>
            <li>Leaving out <code>./</code> or <code>.js</code> in browser import paths.</li>
            <li>Opening the page from <code>file://</code> instead of a local server.</li>
            <li>Using braces for a default import (<code>import { Cart } from "./Cart.js"</code>) or leaving them out for a named one.</li>
            <li>Naming a namespace import after a built-in like <code>Math</code> or <code>JSON</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>This editor runs your code as one classic script, so <code>import</code>/<code>export</code> lines cannot run here. The starter <em>imitates</em> modules with functions so you can see the ideas (private variables, exports, lazy loading) in action.</p>
          <ol class="lc-list">
            <li>Add a new "export" <code>formatRupees</code> to the pricing module and use it in "main".</li>
            <li>Try to read <code>secretMargin</code> from outside — notice it is private.</li>
            <li>On your own computer, run <code>npm create vite@latest my-shop</code>, choose "Vanilla" → "JavaScript", and split the starter into real <code>pricing.js</code>, <code>cart.js</code> and <code>main.js</code> files.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> One file, one job. If a file's name needs "and" (<code>cartAndPricingAndUi.js</code>), split it into modules.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 21: ES modules
        // This editor runs ONE classic script, so real import/export lines cannot run here.
        // Each function below plays the role of a FILE. Its return value = that file's exports.
        // In a real project you would write the import/export syntax from the lesson instead.

        // ---- "pricing.js" ----
        function pricingModule() {
          const GST_RATE = 0.18;
          const secretMargin = 0.3; // not exported: private to this "file"
          const withGst = (amount) => Math.round(amount * (1 + GST_RATE));
          return { GST_RATE, withGst }; // like: export { GST_RATE, withGst }
        }

        // ---- "cart.js" ---- imports withGst from pricing
        function cartModule({ withGst }) {
          const items = []; // a name "items" here can't clash with other files
          const add = (name, price) => items.push({ name, price });
          const total = () => withGst(items.reduce((sum, i) => sum + i.price, 0));
          return { default: { add, total, count: () => items.length } }; // like: export default
        }

        // ---- "main.js" ----
        const pricing = pricingModule();            // like: import * as pricing from "./pricing.js"
        const { withGst, GST_RATE: TAX } = pricing; // like: import { withGst, GST_RATE as TAX } ...
        const cart = cartModule(pricing).default;   // like: import cart from "./cart.js"

        cart.add("Headphones", 1999);
        cart.add("Phone cover", 299);
        console.log("Items:", cart.count(), "| Total with GST: ₹" + cart.total());
        console.log("withGst(500):", withGst(500), "| TAX:", TAX);
        console.log("Can main see secretMargin?", "secretMargin" in pricing);
        console.log("Built-in Math still works:", Math.max(3, 7));

        // Like dynamic import(): load a "module" only when it is needed
        const loadReportModule = () =>
          new Promise((resolve) => setTimeout(() => resolve({ buildReport: (n) => "Report for " + n + " items" }), 100));

        async function onReportClick() {
          const { buildReport } = await loadReportModule(); // like: await import("./report.js")
          console.log(buildReport(cart.count()));
        }
        onReportClick();
        console.log("Report module is loading lazily...");
      JS
    },

    22 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">JavaScript</div>
          <h1 class="lc-title">Capstone Project: Task Tracker</h1>
        </div>
        <p class="lc-lead">Time to put the course together. You will build a <strong>Task Tracker</strong>: add tasks, mark them done, filter them, see a summary and keep them after a reload. It uses almost every lesson — and it is the kind of small app you can show in a portfolio.</p>
        <div class="lc-card">
          <h3>What the App Does</h3>
          <ul class="lc-list">
            <li>Add a task with a title and a priority (high / medium / low) using a form.</li>
            <li>Click a task to toggle it done; click ✕ to delete it.</li>
            <li>Filter: All / Active / Done.</li>
            <li>Show a summary: total, done, and tasks per priority.</li>
            <li>Save everything to <code>localStorage</code> and load it on start.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Plan: Which Lesson Does What?</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Tools</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Task data and rules</td><td><code>class TaskList</code> with a <code>#tasks</code> private field</td><td>11</td></tr>
              <tr><td>Validation</td><td><code>throw new Error</code>, <code>try/catch</code></td><td>14</td></tr>
              <tr><td>Checking the rules</td><td>small tests before the UI</td><td>15</td></tr>
              <tr><td>Filtering and summary</td><td><code>filter</code>, <code>toSorted</code>, <code>Object.groupBy</code></td><td>9</td></tr>
              <tr><td>Showing tasks</td><td><code>createElement</code>, <code>textContent</code>, <code>classList</code></td><td>16</td></tr>
              <tr><td>Clicks and the form</td><td><code>submit</code>, <code>preventDefault</code>, event delegation</td><td>17</td></tr>
              <tr><td>Saving</td><td><code>JSON.stringify</code>/<code>parse</code>, <code>localStorage</code></td><td>20</td></tr>
              <tr><td>Syncing to a server (extension)</td><td><code>async</code>/<code>await</code>, <code>fetch</code></td><td>19</td></tr>
              <tr><td>Files</td><td><code>tasks.js</code>, <code>storage.js</code>, <code>ui.js</code>, <code>main.js</code> as ES modules</td><td>21</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 1: The HTML</h3>
          <div class="lc-code">&lt;form id="task-form"&gt;<br>&nbsp;&nbsp;&lt;input name="title" placeholder="New task" required&gt;<br>&nbsp;&nbsp;&lt;select name="priority"&gt;<br>&nbsp;&nbsp;&nbsp;&nbsp;&lt;option&gt;high&lt;/option&gt;&lt;option selected&gt;medium&lt;/option&gt;&lt;option&gt;low&lt;/option&gt;<br>&nbsp;&nbsp;&lt;/select&gt;<br>&nbsp;&nbsp;&lt;button&gt;Add&lt;/button&gt;<br>&lt;/form&gt;<br>&lt;nav id="filters"&gt;&lt;button data-filter="all"&gt;All&lt;/button&gt; &lt;button data-filter="active"&gt;Active&lt;/button&gt; &lt;button data-filter="done"&gt;Done&lt;/button&gt;&lt;/nav&gt;<br>&lt;ul id="task-list"&gt;&lt;/ul&gt;<br>&lt;p id="summary"&gt;&lt;/p&gt;<br>&lt;script type="module" src="main.js"&gt;&lt;/script&gt;</div>
        </div>
        <div class="lc-card">
          <h3>Step 2: The Data Class (tasks.js)</h3>
          <p>Keep the rules in one place, separate from the page. The UI never changes the array directly.</p>
          <div class="lc-code">export class TaskList {<br>&nbsp;&nbsp;#tasks = [];<br>&nbsp;&nbsp;#nextId = 1;<br><br>&nbsp;&nbsp;constructor(saved = []) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.#tasks = saved;<br>&nbsp;&nbsp;&nbsp;&nbsp;this.#nextId = Math.max(0, ...saved.map((t) =&gt; t.id)) + 1;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;add(title, priority = "medium") {<br>&nbsp;&nbsp;&nbsp;&nbsp;const clean = title.trim();<br>&nbsp;&nbsp;&nbsp;&nbsp;if (clean === "") throw new Error("Task title cannot be empty");<br>&nbsp;&nbsp;&nbsp;&nbsp;const task = { id: this.#nextId++, title: clean, priority, done: false };<br>&nbsp;&nbsp;&nbsp;&nbsp;this.#tasks.push(task);<br>&nbsp;&nbsp;&nbsp;&nbsp;return task;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;toggle(id) {<br>&nbsp;&nbsp;&nbsp;&nbsp;const task = this.#tasks.find((t) =&gt; t.id === id);<br>&nbsp;&nbsp;&nbsp;&nbsp;if (task) task.done = !task.done;<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;remove(id) {<br>&nbsp;&nbsp;&nbsp;&nbsp;this.#tasks = this.#tasks.filter((t) =&gt; t.id !== id);<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;view(filter = "all") {<br>&nbsp;&nbsp;&nbsp;&nbsp;const order = { high: 0, medium: 1, low: 2 };<br>&nbsp;&nbsp;&nbsp;&nbsp;return this.#tasks<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.filter((t) =&gt; filter === "all" || (filter === "done" ? t.done : !t.done))<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.toSorted((a, b) =&gt; order[a.priority] - order[b.priority]);<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;toJSON() { return this.#tasks; }   // JSON.stringify(list) uses this<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Step 3: Saving (storage.js)</h3>
          <div class="lc-code">const KEY = "tasktracker.tasks";<br><br>export function loadTasks() {<br>&nbsp;&nbsp;try {<br>&nbsp;&nbsp;&nbsp;&nbsp;return JSON.parse(localStorage.getItem(KEY)) ?? [];<br>&nbsp;&nbsp;} catch {<br>&nbsp;&nbsp;&nbsp;&nbsp;return [];<br>&nbsp;&nbsp;}<br>}<br>export function saveTasks(list) {<br>&nbsp;&nbsp;localStorage.setItem(KEY, JSON.stringify(list));<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Step 4: Rendering and Events (ui.js + main.js)</h3>
          <div class="lc-code">import { TaskList } from "./tasks.js";<br>import { loadTasks, saveTasks } from "./storage.js";<br><br>const list = new TaskList(loadTasks());<br>const ul = document.querySelector("#task-list");<br>let filter = "all";<br><br>function render() {<br>&nbsp;&nbsp;ul.replaceChildren();                      // clear old items<br>&nbsp;&nbsp;for (const task of list.view(filter)) {<br>&nbsp;&nbsp;&nbsp;&nbsp;const li = document.createElement("li");<br>&nbsp;&nbsp;&nbsp;&nbsp;li.dataset.id = task.id;<br>&nbsp;&nbsp;&nbsp;&nbsp;li.textContent = task.title + " (" + task.priority + ")";   // textContent: safe<br>&nbsp;&nbsp;&nbsp;&nbsp;li.classList.toggle("done", task.done);<br>&nbsp;&nbsp;&nbsp;&nbsp;const del = document.createElement("button");<br>&nbsp;&nbsp;&nbsp;&nbsp;del.className = "delete";<br>&nbsp;&nbsp;&nbsp;&nbsp;del.textContent = "✕";<br>&nbsp;&nbsp;&nbsp;&nbsp;li.append(del);<br>&nbsp;&nbsp;&nbsp;&nbsp;ul.append(li);<br>&nbsp;&nbsp;}<br>&nbsp;&nbsp;saveTasks(list);<br>}<br><br>document.querySelector("#task-form").addEventListener("submit", (e) =&gt; {<br>&nbsp;&nbsp;e.preventDefault();<br>&nbsp;&nbsp;const form = e.currentTarget;<br>&nbsp;&nbsp;try {<br>&nbsp;&nbsp;&nbsp;&nbsp;list.add(form.elements.title.value, form.elements.priority.value);<br>&nbsp;&nbsp;&nbsp;&nbsp;form.reset();<br>&nbsp;&nbsp;&nbsp;&nbsp;render();<br>&nbsp;&nbsp;} catch (err) {<br>&nbsp;&nbsp;&nbsp;&nbsp;alert(err.message);<br>&nbsp;&nbsp;}<br>});<br><br>ul.addEventListener("click", (e) =&gt; {           // event delegation<br>&nbsp;&nbsp;const li = e.target.closest("li");<br>&nbsp;&nbsp;if (!li) return;<br>&nbsp;&nbsp;const id = Number(li.dataset.id);            // dataset values are strings<br>&nbsp;&nbsp;if (e.target.closest(".delete")) list.remove(id);<br>&nbsp;&nbsp;else list.toggle(id);<br>&nbsp;&nbsp;render();<br>});<br><br>document.querySelector("#filters").addEventListener("click", (e) =&gt; {<br>&nbsp;&nbsp;const button = e.target.closest("button");<br>&nbsp;&nbsp;if (!button) return;<br>&nbsp;&nbsp;filter = button.dataset.filter;<br>&nbsp;&nbsp;render();<br>});<br><br>render();</div>
          <p>The pattern is: <strong>event → change the data → <code>render()</code></strong>. The page is always drawn from the data, so the two can never disagree. Frameworks like React are built on this same idea.</p>
        </div>
        <div class="lc-card">
          <h3>Step 5: Test the Rules Before the UI</h3>
          <p>Because <code>TaskList</code> doesn't touch the page, you can check it with plain <code>console.log</code> calls:</p>
          <div class="lc-code">const t = new TaskList();<br>t.add("Revise arrays", "high");<br>t.add("Watch lecture", "low");<br>t.toggle(1);<br>console.log(t.view("done").length);     // 1<br>console.log(t.view("active")[0].title); // "Watch lecture"<br>try { t.add("   "); } catch (e) { console.log(e.message); }   // Task title cannot be empty</div>
          <p>Checks like these are the start of <strong>automated testing</strong> (Lesson 15): in a real project you'd put them in a <code>tasks.test.js</code> file with <code>expect(…).toBe(…)</code> and run them with Vitest.</p>
        </div>
        <div class="lc-card">
          <h3>Project Checklist</h3>
          <ul class="lc-list">
            <li>Empty or blank titles are rejected with a clear message.</li>
            <li>Tasks keep their order by priority in every filter.</li>
            <li>Reloading the page keeps all tasks.</li>
            <li>Corrupted saved data does not crash the app.</li>
            <li>A title containing HTML is shown as text, not run.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Expected Output of the Starter</h3>
          <p>The starter runs a compact, single-script version of the app and simulates a user's clicks. It prints:</p>
          <div class="lc-code">Rejected: Task title cannot be empty<br>All (4): Fix login bug [high] | Pay electricity bill [high] | Buy groceries [medium] | Read chapter 5 [low]<br>Active (2): Fix login bug [high] | Read chapter 5 [low]<br>Done (2): Pay electricity bill [high] | Buy groceries [medium]<br>Summary: 1 of 3 done | high: 2, medium: 0, low: 1<br>Saved to storage: 3 tasks</div>
          <p>(The summary is printed after deleting "Buy groceries". A notice line appears first if storage is blocked in the editor.)</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Changing the DOM and forgetting to change the data (or the reverse) — always go through the data, then <code>render()</code>.</li>
            <li>Adding a click listener to every <code>li</code> on every render, so one click fires many times — use delegation on the list.</li>
            <li>Comparing <code>li.dataset.id</code> (a string) with <code>task.id</code> (a number) using <code>===</code>.</li>
            <li>Putting task titles into <code>innerHTML</code> — a title like <code>&lt;img onerror=…&gt;</code> would run code.</li>
            <li>Loading saved data without <code>try/catch</code>, so one corrupted value breaks the whole app.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ol class="lc-list">
            <li>Add a due date to each task and show overdue tasks in red.</li>
            <li>Add an "Edit" button that changes a task's title (validate it!).</li>
            <li>Add a "Clear done" button that removes all completed tasks at once.</li>
            <li>Sync with a server: after each change, <code>await fetch("/api/tasks", { method: "PUT", … })</code> and show "Saved" or "Offline" (check <code>response.ok</code>).</li>
            <li>Rebuild it as real modules with Vite (<code>npm create vite@latest</code>) and deploy it for free on GitHub Pages or Netlify.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Build in small steps and run after each one: data class first (test it with <code>console.log</code>), then rendering, then events, then saving. When something breaks, you'll know it was the last small step.
        </div>
      HTML
      starter_code: <<~'JS'
        // Lesson 22 capstone: Task Tracker (compact single-script version)
        class TaskList {
          #tasks = [];
          #nextId = 1;
          toJSON() { return this.#tasks; }
          add(title, priority = "medium") {
            if (title.trim() === "") throw new Error("Task title cannot be empty");
            this.#tasks.push({ id: this.#nextId++, title: title.trim(), priority, done: false });
          }
          toggle(id) { const t = this.#tasks.find((t) => t.id === id); if (t) t.done = !t.done; }
          remove(id) { this.#tasks = this.#tasks.filter((t) => t.id !== id); }
          view(filter = "all") {
            const order = { high: 0, medium: 1, low: 2 };
            const shown = this.#tasks.filter((t) => filter === "all" || (filter === "done" ? t.done : !t.done));
            return shown.toSorted((a, b) => order[a.priority] - order[b.priority]);
          }
        }
        let store; // localStorage, or an in-memory stand-in if storage is blocked (as in this editor)
        try { store = window.localStorage; store.getItem("x"); }
        catch { const m = new Map(); store = { setItem: (k, v) => m.set(k, v), getItem: (k) => m.get(k) ?? null, removeItem: (k) => m.delete(k) }; console.log("(storage blocked - using memory)"); }
        const list = new TaskList();
        const ul = document.createElement("ul");
        document.body.append(ul);
        function render(filter = "all") {
          ul.replaceChildren();
          for (const task of list.view(filter)) {
            const li = document.createElement("li");
            li.dataset.id = task.id;
            li.textContent = task.title + " [" + task.priority + "]";
            li.classList.toggle("done", task.done);
            ul.append(li);
          }
          store.setItem("tasktracker.tasks", JSON.stringify(list));
          return filter[0].toUpperCase() + filter.slice(1) + " (" + ul.children.length + "): " + [...ul.children].map((li) => li.textContent).join(" | ");
        }
        ul.addEventListener("click", (e) => { const li = e.target.closest("li"); if (li) list.toggle(Number(li.dataset.id)); });

        for (const [title, p] of [["Buy groceries", "medium"], ["  ", "low"], ["Fix login bug", "high"], ["Read chapter 5", "low"], ["Pay electricity bill", "high"]]) {
          try { list.add(title, p); } catch (err) { console.log("Rejected:", err.message); }
        }
        render();
        ul.querySelector("[data-id='1']").click(); // simulate clicks: Buy groceries done
        ul.querySelector("[data-id='4']").click(); // Pay electricity bill done
        for (const f of ["all", "active", "done"]) console.log(render(f));
        list.remove(1);
        render();
        const groups = Object.groupBy(list.view(), (t) => t.priority);
        const counts = ["high", "medium", "low"].map((p) => p + ": " + (groups[p]?.length ?? 0)).join(", ");
        console.log("Summary:", list.view("done").length, "of", list.view().length, "done |", counts);
        console.log("Saved to storage:", JSON.parse(store.getItem("tasktracker.tasks")).length, "tasks");
      JS
    },
  }.freeze
end

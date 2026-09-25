module JavaScriptContent
  LESSONS = {
    1 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>JavaScript is the <strong>programming language of the web</strong>. While HTML defines structure and CSS adds style, JavaScript makes pages <em>interactive and dynamic</em>. It runs directly in every browser — no installation required.</p>
        </div>
        <div class="lc-section">
          <h2>What Can JavaScript Do?</h2>
          <ul class="lc-list">
            <li>Respond to user clicks, key presses, and form submissions</li>
            <li>Update page content without reloading (dynamic HTML)</li>
            <li>Make API calls to fetch data from servers</li>
            <li>Build full web apps, games, and mobile apps</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Ways to Output Data</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Output Location</th><th>Common Use</th></tr></thead>
            <tbody>
              <tr><td><code>console.log()</code></td><td>Browser DevTools console</td><td>✅ Debugging (most common)</td></tr>
              <tr><td><code>alert()</code></td><td>Pop-up dialog box</td><td>Quick one-off messages</td></tr>
              <tr><td><code>document.write()</code></td><td>Directly into the page</td><td>Testing only (avoid)</td></tr>
              <tr><td><code>innerHTML</code></td><td>Inside an HTML element</td><td>Displaying results on page</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Adding JS to an HTML Page</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- External file (best practice) --&gt;
&lt;script src="script.js"&gt;&lt;/script&gt;

&lt;!-- Inline (for learning/testing) --&gt;
&lt;script&gt;
  console.log("Hello from JavaScript!");
&lt;/script&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Open the browser console</strong> with F12 (or Cmd+Option+I on Mac). Every <code>console.log()</code> you write appears there. It is your best friend for debugging!</p></div>
      HTML
      starter_code: <<~JS
        // ── Your first JavaScript program ──
        console.log("Hello, World!");
        console.log("JavaScript is awesome!");

        // Output different data types
        console.log(42);
        console.log(3.14);
        console.log(true);

        // Basic arithmetic
        console.log("10 + 5 =", 10 + 5);
        console.log("100 / 4 =", 100 / 4);
        console.log("2 ** 8 =", 2 ** 8);  // 256

        // String concatenation
        let name = "AI Academy";
        console.log("Welcome to " + name + "!");
      JS
    },

    2 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Variables are <strong>named containers for storing data</strong>. JavaScript has three keywords for declaring them: <code>var</code>, <code>let</code>, and <code>const</code>. Choosing the right one matters for clean, bug-free code.</p>
        </div>
        <div class="lc-section">
          <h2>var vs let vs const</h2>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Scope</th><th>Reassignable?</th><th>Use When</th></tr></thead>
            <tbody>
              <tr><td><code>var</code></td><td>Function</td><td>✅ Yes</td><td>Old code only — avoid</td></tr>
              <tr><td><code>let</code></td><td>Block <code>{ }</code></td><td>✅ Yes</td><td>Value needs to change</td></tr>
              <tr><td><code>const</code></td><td>Block <code>{ }</code></td><td>❌ No</td><td>✅ Default choice</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Variable Naming Rules</h2>
          <ul class="lc-list">
            <li>Must start with a letter, <code>_</code>, or <code>$</code></li>
            <li>Cannot be a reserved word (<code>if</code>, <code>let</code>, <code>for</code>…)</li>
            <li>Case-sensitive: <code>name</code> ≠ <code>Name</code></li>
            <li>Use <strong>camelCase</strong> by convention: <code>firstName</code>, <code>totalScore</code></li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Declaring Variables</h2>
          <div class="lc-code-block"><pre><code>const PI = 3.14159;           // Never changes
let score = 0;                 // Will be updated
let playerName = "Alice";

score = score + 10;           // OK — let can be reassigned
// PI = 3;                    // ❌ TypeError — const cannot change</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Rule of thumb:</strong> Always use <code>const</code> by default. Switch to <code>let</code> only if you need to reassign the variable. Never use <code>var</code> in modern JS.</p></div>
      HTML
      starter_code: <<~JS
        // ── var, let, const ──
        const appName = "AI Academy";     // won't change
        let score = 0;                     // will change
        let isLoggedIn = false;

        console.log("App:", appName);
        console.log("Score:", score);
        console.log("Logged in:", isLoggedIn);

        // Updating let variables
        score = score + 100;
        isLoggedIn = true;

        console.log("Updated score:", score);
        console.log("Now logged in:", isLoggedIn);

        // Multiple variables
        let firstName = "Ada";
        let lastName  = "Lovelace";
        let fullName  = firstName + " " + lastName;
        console.log("Full name:", fullName);

        // const with calculations
        const TAX_RATE = 0.18;
        let price = 1000;
        let tax = price * TAX_RATE;
        console.log("Tax on ₹1000:", tax);
      JS
    },

    3 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>JavaScript has <strong>eight data types</strong>. The first seven are <em>primitive</em> (stored by value). The last — Object — is <em>non-primitive</em> (stored by reference). Knowing types prevents many common bugs.</p>
        </div>
        <div class="lc-section">
          <h2>The 7 Primitive Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>String</code></td><td><code>"hello"</code>, <code>'world'</code></td><td>Text — wrap in quotes</td></tr>
              <tr><td><code>Number</code></td><td><code>42</code>, <code>3.14</code></td><td>Integers AND decimals (one type!)</td></tr>
              <tr><td><code>Boolean</code></td><td><code>true</code> / <code>false</code></td><td>Yes/No, On/Off decisions</td></tr>
              <tr><td><code>null</code></td><td><code>null</code></td><td>Intentional absence of a value</td></tr>
              <tr><td><code>undefined</code></td><td><code>undefined</code></td><td>Variable declared but not assigned</td></tr>
              <tr><td><code>BigInt</code></td><td><code>9007199254740991n</code></td><td>Integers beyond Number's safe limit</td></tr>
              <tr><td><code>Symbol</code></td><td><code>Symbol("id")</code></td><td>Unique identifiers (advanced)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>The typeof Operator</h2>
          <div class="lc-code-block"><pre><code>typeof "hello"     // "string"
typeof 42          // "number"
typeof true        // "boolean"
typeof undefined   // "undefined"
typeof null        // "object"  ← famous JS bug!
typeof []          // "object"
typeof {}          // "object"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Type Conversion</h2>
          <div class="lc-code-block"><pre><code>Number("42")         // 42
Number("hello")      // NaN (Not a Number)
String(100)          // "100"
Boolean(0)           // false
Boolean("")          // false
Boolean("hello")     // true</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Falsy values in JS:</strong> <code>false</code>, <code>0</code>, <code>""</code>, <code>null</code>, <code>undefined</code>, <code>NaN</code>. Everything else is truthy — even empty arrays <code>[]</code> and objects <code>{}</code>!</p></div>
      HTML
      starter_code: <<~JS
        // ── JavaScript Data Types ──
        let text    = "Hello, JavaScript!";
        let number  = 42;
        let decimal = 3.14;
        let isTrue  = true;
        let nothing = null;
        let notSet;     // undefined

        // Check types with typeof
        console.log(typeof text);     // string
        console.log(typeof number);   // number
        console.log(typeof isTrue);   // boolean
        console.log(typeof nothing);  // object (famous quirk!)
        console.log(typeof notSet);   // undefined

        // Type conversion
        console.log("--- Conversions ---");
        console.log(Number("99"));       // 99
        console.log(Number("abc"));      // NaN
        console.log(String(2024));       // "2024"
        console.log(Boolean(0));         // false
        console.log(Boolean("hello"));   // true

        // NaN check
        let result = Number("not a number");
        console.log("Is NaN:", isNaN(result));  // true
      JS
    },

    4 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Operators are <strong>symbols that perform operations</strong> on values. JavaScript has arithmetic operators for math, comparison operators for checking conditions, and logical operators for combining conditions.</p>
        </div>
        <div class="lc-section">
          <h2>Arithmetic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Name</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>+</code></td><td>Addition</td><td><code>10 + 3</code></td><td>13</td></tr>
              <tr><td><code>-</code></td><td>Subtraction</td><td><code>10 - 3</code></td><td>7</td></tr>
              <tr><td><code>*</code></td><td>Multiplication</td><td><code>10 * 3</code></td><td>30</td></tr>
              <tr><td><code>/</code></td><td>Division</td><td><code>10 / 3</code></td><td>3.333…</td></tr>
              <tr><td><code>%</code></td><td>Modulus (remainder)</td><td><code>10 % 3</code></td><td>1</td></tr>
              <tr><td><code>**</code></td><td>Exponent</td><td><code>2 ** 8</code></td><td>256</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Comparison Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>==</code></td><td>Equal (loose)</td><td><code>"5" == 5</code></td><td>true ⚠️</td></tr>
              <tr><td><code>===</code></td><td>Equal (strict)</td><td><code>"5" === 5</code></td><td>false ✅</td></tr>
              <tr><td><code>!=</code></td><td>Not equal (loose)</td><td><code>1 != 2</code></td><td>true</td></tr>
              <tr><td><code>!==</code></td><td>Not equal (strict)</td><td><code>"1" !== 1</code></td><td>true</td></tr>
              <tr><td><code>&gt;</code> / <code>&lt;</code></td><td>Greater / Less</td><td><code>5 > 3</code></td><td>true</td></tr>
              <tr><td><code>&gt;=</code> / <code>&lt;=</code></td><td>Greater-equal / Less-equal</td><td><code>5 >= 5</code></td><td>true</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Logical Operators</h2>
          <div class="lc-code-block"><pre><code>true && true    // AND → true  (both must be true)
true && false   // AND → false
true || false   // OR  → true  (at least one must be true)
!true           // NOT → false (inverts the boolean)</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <code>===</code> (strict equality) in JavaScript. The loose <code>==</code> does type coercion and leads to confusing bugs: <code>0 == false</code> is <code>true</code> with <code>==</code> but <code>false</code> with <code>===</code>.</p></div>
      HTML
      starter_code: <<~JS
        // ── Operators ──
        // Arithmetic
        console.log("5 + 3 =", 5 + 3);
        console.log("10 % 3 =", 10 % 3);   // remainder
        console.log("2 ** 10 =", 2 ** 10);  // 1024

        // Strict vs loose equality
        console.log("--- Equality ---");
        console.log("5" == 5);    // true  (loose — avoid!)
        console.log("5" === 5);   // false (strict — use this)
        console.log(null == undefined);   // true (loose)
        console.log(null === undefined);  // false (strict)

        // Logical operators
        console.log("--- Logical ---");
        let age = 20;
        let hasID = true;
        console.log("Can enter:", age >= 18 && hasID);
        console.log("Needs check:", age < 18 || !hasID);

        // Shorthand assignment
        let x = 10;
        x += 5;   console.log("x += 5:", x);  // 15
        x -= 3;   console.log("x -= 3:", x);  // 12
        x *= 2;   console.log("x *= 2:", x);  // 24
        x++;      console.log("x++:", x);      // 25
      JS
    },

    5 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Conditional statements let your program <strong>make decisions</strong> and execute different code based on whether conditions are true or false. They are the foundation of all program logic.</p>
        </div>
        <div class="lc-section">
          <h2>if / else if / else</h2>
          <div class="lc-code-block"><pre><code>let score = 85;

if (score >= 90) {
  console.log("Grade: A");
} else if (score >= 80) {
  console.log("Grade: B");
} else if (score >= 70) {
  console.log("Grade: C");
} else {
  console.log("Grade: F");
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ternary Operator (shorthand if/else)</h2>
          <div class="lc-code-block"><pre><code>// condition ? valueIfTrue : valueIfFalse
let age = 20;
let status = age >= 18 ? "Adult" : "Minor";
console.log(status);  // "Adult"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>switch Statement</h2>
          <div class="lc-code-block"><pre><code>let day = "Monday";

switch (day) {
  case "Monday":
    console.log("Start of the week");
    break;
  case "Friday":
    console.log("Almost weekend!");
    break;
  default:
    console.log("Regular day");
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always add <code>break</code> inside <code>switch</code> cases. Without it, JavaScript "falls through" to the next case — a common bug for beginners.</p></div>
      HTML
      starter_code: <<~JS
        // ── Conditionals ──

        // Grade calculator
        function getGrade(score) {
          if (score >= 90) return "A — Excellent!";
          else if (score >= 80) return "B — Good";
          else if (score >= 70) return "C — Average";
          else if (score >= 60) return "D — Below average";
          else return "F — Failed";
        }

        console.log("Score 95:", getGrade(95));
        console.log("Score 82:", getGrade(82));
        console.log("Score 55:", getGrade(55));

        // Ternary operator
        let temperature = 35;
        let weather = temperature > 30 ? "Hot 🔥" : "Cool 😎";
        console.log("Weather:", weather);

        // Switch statement
        let day = 3;
        let dayName;
        switch (day) {
          case 1: dayName = "Monday";    break;
          case 2: dayName = "Tuesday";   break;
          case 3: dayName = "Wednesday"; break;
          case 4: dayName = "Thursday";  break;
          case 5: dayName = "Friday";    break;
          default: dayName = "Weekend";
        }
        console.log("Day 3 is:", dayName);
      JS
    },

    6 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Loops <strong>repeat a block of code</strong> multiple times. Instead of writing the same code 100 times, you write it once and tell the loop how many times to run it.</p>
        </div>
        <div class="lc-section">
          <h2>The for Loop</h2>
          <div class="lc-code-block"><pre><code>// for (start; condition; increment)
for (let i = 0; i &lt; 5; i++) {
  console.log("Count:", i);
}
// Prints: 0, 1, 2, 3, 4</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Loop Types Comparison</h2>
          <table class="lc-table">
            <thead><tr><th>Loop</th><th>Best For</th></tr></thead>
            <tbody>
              <tr><td><code>for (let i=0; i&lt;n; i++)</code></td><td>Known number of iterations</td></tr>
              <tr><td><code>while (condition)</code></td><td>Unknown iterations, while condition is true</td></tr>
              <tr><td><code>for...of array</code></td><td>✅ Iterating over array elements</td></tr>
              <tr><td><code>for...in object</code></td><td>Iterating over object keys</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>for…of (Modern — Use This for Arrays)</h2>
          <div class="lc-code-block"><pre><code>const fruits = ["apple", "banana", "cherry"];

for (const fruit of fruits) {
  console.log(fruit);
}
// apple, banana, cherry</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>break and continue</h2>
          <div class="lc-code-block"><pre><code>for (let i = 0; i &lt; 10; i++) {
  if (i === 3) continue;  // Skip 3
  if (i === 7) break;     // Stop at 7
  console.log(i);
}
// 0, 1, 2, 4, 5, 6</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Prefer <code>for...of</code> for arrays in modern JS. It is cleaner and avoids index-related bugs. Use the classic <code>for</code> loop only when you need the index.</p></div>
      HTML
      starter_code: <<~JS
        // ── Loops ──

        // Classic for loop
        console.log("--- Counting ---");
        for (let i = 1; i <= 5; i++) {
          console.log("Count:", i);
        }

        // for...of loop (clean array iteration)
        console.log("--- Fruits ---");
        const fruits = ["Apple", "Banana", "Cherry", "Mango"];
        for (const fruit of fruits) {
          console.log("🍎", fruit);
        }

        // while loop
        console.log("--- While ---");
        let n = 1;
        while (n <= 4) {
          console.log(n + " × 2 = " + (n * 2));
          n++;
        }

        // Accumulator pattern (sum)
        const numbers = [10, 20, 30, 40, 50];
        let total = 0;
        for (const num of numbers) {
          total += num;
        }
        console.log("Sum:", total);
        console.log("Average:", total / numbers.length);

        // Multiplication table
        console.log("--- 3× Table ---");
        for (let i = 1; i <= 5; i++) {
          console.log("3 ×", i, "=", 3 * i);
        }
      JS
    },

    7 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Functions are <strong>reusable blocks of code</strong> that perform a specific task. You define a function once and call it as many times as you need. They are the single most important concept for writing clean, organised code.</p>
        </div>
        <div class="lc-section">
          <h2>Defining and Calling Functions</h2>
          <div class="lc-code-block"><pre><code>// Function declaration
function greet(name) {
  return "Hello, " + name + "!";
}

// Calling the function
console.log(greet("Alice"));  // "Hello, Alice!"
console.log(greet("Bob"));    // "Hello, Bob!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Parameters and Return Values</h2>
          <div class="lc-code-block"><pre><code>// Multiple parameters + default values
function calculateArea(width, height = 10) {
  return width * height;
}

console.log(calculateArea(5, 3));   // 15
console.log(calculateArea(5));      // 50 (uses default height)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Function Types</h2>
          <table class="lc-table">
            <thead><tr><th>Style</th><th>Syntax</th><th>Hoisted?</th></tr></thead>
            <tbody>
              <tr><td>Declaration</td><td><code>function name() { }</code></td><td>✅ Yes</td></tr>
              <tr><td>Expression</td><td><code>const name = function() { }</code></td><td>❌ No</td></tr>
              <tr><td>Arrow</td><td><code>const name = () =&gt; { }</code></td><td>❌ No</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>A function that has no <code>return</code> statement returns <code>undefined</code>. Always return something meaningful — or nothing (a "void" function), but be deliberate about it.</p></div>
      HTML
      starter_code: <<~JS
        // ── Functions ──

        // Basic function with return
        function square(n) {
          return n * n;
        }
        console.log("5² =", square(5));
        console.log("12² =", square(12));

        // Default parameters
        function greet(name, greeting = "Hello") {
          return greeting + ", " + name + "!";
        }
        console.log(greet("Alice"));
        console.log(greet("Bob", "Hi"));

        // Function doing a real task
        function celsiusToFahrenheit(c) {
          return (c * 9/5) + 32;
        }
        console.log("0°C =", celsiusToFahrenheit(0) + "°F");
        console.log("100°C =", celsiusToFahrenheit(100) + "°F");
        console.log("37°C =", celsiusToFahrenheit(37) + "°F");

        // Function calling another function
        function isEven(n) {
          return n % 2 === 0;
        }
        function describeNumber(n) {
          const type = isEven(n) ? "even" : "odd";
          return n + " is " + type;
        }
        console.log(describeNumber(7));
        console.log(describeNumber(12));
      JS
    },

    8 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Arrays are <strong>ordered lists</strong> that store multiple values in a single variable. They are one of the most-used data structures in JavaScript — from holding search results to managing a shopping cart.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Accessing Arrays</h2>
          <div class="lc-code-block"><pre><code>const colors = ["red", "green", "blue"];

console.log(colors[0]);        // "red"    (first)
console.log(colors[2]);        // "blue"   (last)
console.log(colors.length);    // 3</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Essential Array Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Effect</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>.push(item)</code></td><td>Add to end</td><td>New length</td></tr>
              <tr><td><code>.pop()</code></td><td>Remove from end</td><td>Removed item</td></tr>
              <tr><td><code>.unshift(item)</code></td><td>Add to start</td><td>New length</td></tr>
              <tr><td><code>.shift()</code></td><td>Remove from start</td><td>Removed item</td></tr>
              <tr><td><code>.includes(val)</code></td><td>Check if value exists</td><td>boolean</td></tr>
              <tr><td><code>.indexOf(val)</code></td><td>Find position</td><td>index or -1</td></tr>
              <tr><td><code>.slice(start, end)</code></td><td>Extract portion</td><td>New array</td></tr>
              <tr><td><code>.join(separator)</code></td><td>Join to string</td><td>String</td></tr>
              <tr><td><code>.reverse()</code></td><td>Reverse in place</td><td>Array</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Spreading Arrays</h2>
          <div class="lc-code-block"><pre><code>const a = [1, 2, 3];
const b = [4, 5, 6];
const combined = [...a, ...b];  // [1, 2, 3, 4, 5, 6]
const copy = [...a];            // Safe copy</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Arrays are <em>zero-indexed</em>: the first element is at index <code>[0]</code>, the last is at <code>[array.length - 1]</code>. In modern JS use <code>array.at(-1)</code> to get the last element easily.</p></div>
      HTML
      starter_code: <<~JS
        // ── Arrays ──

        // Creating arrays
        const fruits = ["Apple", "Banana", "Cherry"];
        console.log("Array:", fruits);
        console.log("Length:", fruits.length);
        console.log("First:", fruits[0]);
        console.log("Last:", fruits[fruits.length - 1]);

        // Adding and removing
        fruits.push("Mango");
        console.log("After push:", fruits);

        const removed = fruits.pop();
        console.log("Removed:", removed);
        console.log("After pop:", fruits);

        fruits.unshift("Strawberry");
        console.log("After unshift:", fruits);

        // Checking contents
        console.log("Has Banana:", fruits.includes("Banana"));
        console.log("Index of Cherry:", fruits.indexOf("Cherry"));

        // Slice (non-destructive)
        const slice = fruits.slice(1, 3);
        console.log("Slice [1-3]:", slice);

        // Join to string
        console.log("Joined:", fruits.join(" | "));

        // Spread to combine
        const vegs = ["Carrot", "Pea"];
        const all = [...fruits, ...vegs];
        console.log("All:", all);
      JS
    },

    9 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Objects store data as <strong>key-value pairs</strong>, like a dictionary or a real-world thing with properties. While arrays use numbered indexes, objects use named keys — making them perfect for representing structured data.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Objects</h2>
          <div class="lc-code-block"><pre><code>const person = {
  name: "Alice",
  age: 28,
  isStudent: false,
  greet() {
    return "Hi, I'm " + this.name;
  }
};

console.log(person.name);       // "Alice"
console.log(person["age"]);     // 28
console.log(person.greet());    // "Hi, I'm Alice"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Dot vs Bracket Notation</h2>
          <table class="lc-table">
            <thead><tr><th>Notation</th><th>When to Use</th></tr></thead>
            <tbody>
              <tr><td><code>obj.key</code></td><td>✅ Normal use — key is known and valid identifier</td></tr>
              <tr><td><code>obj["key"]</code></td><td>Key has spaces, starts with number, or is dynamic</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Object Destructuring</h2>
          <div class="lc-code-block"><pre><code>const { name, age } = person;   // Extract to variables
console.log(name, age);         // "Alice" 28

// Rename while destructuring
const { name: fullName } = person;
console.log(fullName);          // "Alice"</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>Object.keys(obj)</code> gives all keys as an array. <code>Object.values(obj)</code> gives all values. <code>Object.entries(obj)</code> gives <code>[[key, value], ...]</code> pairs — very useful for looping.</p></div>
      HTML
      starter_code: <<~JS
        // ── Objects ──

        const student = {
          name: "Adarsh",
          age: 21,
          courses: ["HTML", "CSS", "JavaScript"],
          grade: "A",
          introduce() {
            return "Hi! I'm " + this.name + ", age " + this.age;
          }
        };

        // Access properties
        console.log(student.name);
        console.log(student["grade"]);
        console.log(student.introduce());

        // Add / update properties
        student.email = "adarsh@example.com";
        student.age = 22;
        console.log("Email:", student.email);
        console.log("Updated age:", student.age);

        // Destructuring
        const { name, courses } = student;
        console.log("Name:", name);
        console.log("Courses:", courses);

        // Object.keys / values / entries
        console.log("Keys:", Object.keys(student));

        // Array of objects (very common pattern)
        const students = [
          { name: "Alice", score: 92 },
          { name: "Bob",   score: 78 },
          { name: "Carol", score: 85 }
        ];
        for (const s of students) {
          console.log(s.name + ":", s.score);
        }
      JS
    },

    10 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>The <strong>DOM (Document Object Model)</strong> is a tree-like representation of your HTML page that JavaScript can read and modify. Using the DOM, JS can change text, styles, HTML structure, and respond to user actions — all without reloading the page.</p>
        </div>
        <div class="lc-section">
          <h2>Selecting Elements</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>document.querySelector()</code></td><td>First matching element</td><td><code>querySelector(".card")</code></td></tr>
              <tr><td><code>document.querySelectorAll()</code></td><td>NodeList of all matches</td><td><code>querySelectorAll("li")</code></td></tr>
              <tr><td><code>document.getElementById()</code></td><td>Element with that ID</td><td><code>getElementById("title")</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Changing Content and Styles</h2>
          <div class="lc-code-block"><pre><code>const heading = document.querySelector("h1");

// Change text (safe — no HTML parsing)
heading.textContent = "Updated title!";

// Change HTML content (can include tags)
heading.innerHTML = "&lt;em&gt;Italic title&lt;/em&gt;";

// Change CSS styles
heading.style.color = "blue";
heading.style.fontSize = "32px";

// Add/remove CSS classes
heading.classList.add("highlight");
heading.classList.remove("old-class");
heading.classList.toggle("dark-mode");</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Creating New Elements</h2>
          <div class="lc-code-block"><pre><code>const li = document.createElement("li");
li.textContent = "New item";
document.querySelector("ul").appendChild(li);</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>textContent</code> instead of <code>innerHTML</code> when setting user-provided text — <code>innerHTML</code> can introduce security vulnerabilities (XSS) if you insert untrusted data.</p></div>
      HTML
      starter_code: <<~JS
        // ── DOM Manipulation ──
        // This runs inside a page — we can create and modify elements!

        // Create a styled heading
        const h1 = document.createElement("h1");
        h1.textContent = "Hello from JavaScript!";
        h1.style.cssText = "color:#818cf8;font-family:sans-serif;text-align:center";
        document.body.appendChild(h1);

        // Create a list dynamically
        const items = ["Learn HTML", "Learn CSS", "Learn JavaScript", "Build Projects"];
        const ul = document.createElement("ul");
        ul.style.cssText = "font-family:sans-serif;max-width:300px;margin:20px auto;color:#374151";

        for (const item of items) {
          const li = document.createElement("li");
          li.textContent = "✓ " + item;
          li.style.padding = "6px 0";
          ul.appendChild(li);
        }
        document.body.appendChild(ul);

        // Create and add a button
        const btn = document.createElement("button");
        btn.textContent = "Click to change color!";
        btn.style.cssText = "display:block;margin:20px auto;padding:10px 20px;background:#4f46e5;color:white;border:none;border-radius:8px;cursor:pointer;font-size:16px";

        let dark = false;
        btn.addEventListener("click", () => {
          dark = !dark;
          document.body.style.background = dark ? "#1a1a2e" : "#ffffff";
          document.body.style.color = dark ? "#e2e0f0" : "#1a1a2e";
          btn.textContent = dark ? "Switch to Light Mode" : "Switch to Dark Mode";
        });
        document.body.appendChild(btn);
      JS
    },

    11 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Events are <strong>things that happen</strong> in the browser — a button click, a key press, a mouse hover, a form submission. JavaScript handles these with <em>event listeners</em>, making your pages interactive.</p>
        </div>
        <div class="lc-section">
          <h2>Adding Event Listeners</h2>
          <div class="lc-code-block"><pre><code>const button = document.querySelector("button");

button.addEventListener("click", function(event) {
  console.log("Button was clicked!");
  console.log("Event type:", event.type);
});</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Events</h2>
          <table class="lc-table">
            <thead><tr><th>Event</th><th>Fires When</th></tr></thead>
            <tbody>
              <tr><td><code>click</code></td><td>User clicks element</td></tr>
              <tr><td><code>mouseover</code> / <code>mouseout</code></td><td>Mouse enters/leaves element</td></tr>
              <tr><td><code>keydown</code> / <code>keyup</code></td><td>Keyboard key pressed/released</td></tr>
              <tr><td><code>submit</code></td><td>Form is submitted</td></tr>
              <tr><td><code>input</code></td><td>Input field value changes</td></tr>
              <tr><td><code>DOMContentLoaded</code></td><td>HTML fully loaded and parsed</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Event Object Properties</h2>
          <div class="lc-code-block"><pre><code>document.addEventListener("keydown", (e) => {
  console.log("Key pressed:", e.key);
  if (e.key === "Enter") doSomething();
});

// Prevent default (e.g. stop form reload)
form.addEventListener("submit", (e) => {
  e.preventDefault();
  // Handle form data yourself
});</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>addEventListener</code> instead of HTML attributes like <code>onclick="..."</code>. It is cleaner, allows multiple listeners on one element, and separates JS from HTML.</p></div>
      HTML
      starter_code: <<~JS
        // ── DOM Events ──

        // Build an interactive counter
        const display = document.createElement("div");
        display.style.cssText = "text-align:center;font-family:sans-serif;padding:30px";

        let count = 0;

        const countText = document.createElement("h1");
        countText.textContent = count;
        countText.style.cssText = "font-size:80px;color:#4f46e5;margin:0 0 20px";

        function makeBtn(label, color) {
          const b = document.createElement("button");
          b.textContent = label;
          b.style.cssText = `margin:6px;padding:12px 24px;font-size:18px;background:${color};color:white;border:none;border-radius:8px;cursor:pointer`;
          return b;
        }

        const incBtn = makeBtn("+", "#10b981");
        const decBtn = makeBtn("−", "#ef4444");
        const rstBtn = makeBtn("Reset", "#6b7280");

        incBtn.addEventListener("click", () => { count++; update(); });
        decBtn.addEventListener("click", () => { count--; update(); });
        rstBtn.addEventListener("click", () => { count = 0; update(); });

        function update() {
          countText.textContent = count;
          countText.style.color = count > 0 ? "#10b981" : count < 0 ? "#ef4444" : "#4f46e5";
        }

        display.appendChild(countText);
        display.appendChild(incBtn);
        display.appendChild(decBtn);
        display.appendChild(rstBtn);
        document.body.appendChild(display);

        // Keyboard support
        document.addEventListener("keydown", (e) => {
          if (e.key === "ArrowUp")    { count++; update(); }
          if (e.key === "ArrowDown")  { count--; update(); }
          if (e.key === "r")          { count = 0; update(); }
        });
      JS
    },

    12 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Arrow functions are a <strong>concise syntax for writing functions</strong> introduced in ES6. They are shorter to type, but more importantly, they handle the <code>this</code> keyword differently — which avoids many common bugs in callbacks.</p>
        </div>
        <div class="lc-section">
          <h2>Arrow Function Syntax</h2>
          <div class="lc-code-block"><pre><code>// Regular function
function add(a, b) { return a + b; }

// Arrow function (equivalent)
const add = (a, b) => a + b;   // Implicit return

// With curly braces (explicit return needed)
const greet = (name) => {
  const msg = "Hello, " + name;
  return msg;
};

// Single parameter — no parentheses needed
const double = n => n * 2;

// No parameters — empty parentheses required
const sayHi = () => "Hi!";</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Arrow Functions vs Regular Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Regular Function</th><th>Arrow Function</th></tr></thead>
            <tbody>
              <tr><td><code>this</code> binding</td><td>Own <code>this</code></td><td>Inherits from parent scope</td></tr>
              <tr><td><code>arguments</code> object</td><td>✅ Has it</td><td>❌ No (use rest params)</td></tr>
              <tr><td>As constructor</td><td>✅ Can use <code>new</code></td><td>❌ Cannot</td></tr>
              <tr><td>Best for</td><td>Methods, constructors</td><td>Callbacks, array methods</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Arrow functions shine with array methods: <code>numbers.map(n => n * 2)</code> is much cleaner than <code>numbers.map(function(n) { return n * 2; })</code>. You will see them everywhere in modern JS.</p></div>
      HTML
      starter_code: <<~JS
        // ── Arrow Functions ──

        // Various arrow function forms
        const square    = n => n * n;
        const add       = (a, b) => a + b;
        const greet     = name => "Hello, " + name + "!";
        const getPI     = () => 3.14159;

        console.log(square(7));
        console.log(add(10, 25));
        console.log(greet("Ada"));
        console.log(getPI());

        // Multi-line arrow function
        const describeScore = (score) => {
          if (score >= 90) return "Excellent";
          if (score >= 70) return "Good";
          return "Needs improvement";
        };
        console.log(describeScore(95));
        console.log(describeScore(75));

        // Arrow functions with array methods (powerful combo!)
        const numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

        const evens    = numbers.filter(n => n % 2 === 0);
        const doubled  = evens.map(n => n * 2);
        const sum      = doubled.reduce((acc, n) => acc + n, 0);

        console.log("Numbers:", numbers);
        console.log("Even only:", evens);
        console.log("Doubled:", doubled);
        console.log("Sum:", sum);
      JS
    },

    13 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Template literals use <strong>backticks ` ` </strong> instead of quotes and allow you to embed expressions directly in strings with <code>${ }</code>. They also support multi-line strings natively — no more <code>\n</code>!</p>
        </div>
        <div class="lc-section">
          <h2>Basic Template Literal</h2>
          <div class="lc-code-block"><pre><code>const name = "Alice";
const age = 28;

// Old way (messy concatenation)
const old = "Name: " + name + ", Age: " + age;

// Template literal (clean!)
const modern = `Name: ${name}, Age: ${age}`;

// Expression inside ${}
const msg = `${name} will be ${age + 1} next year.`;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Multi-line Strings</h2>
          <div class="lc-code-block"><pre><code>// Old way
const oldMultiLine = "Line 1\n" +
                     "Line 2\n" +
                     "Line 3";

// Template literal (preserves real line breaks)
const modern = `Line 1
Line 2
Line 3`;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Expressions Inside ${}</h2>
          <div class="lc-code-block"><pre><code>const price = 1500;
const tax   = 0.18;

console.log(`Price: ₹${price}`);
console.log(`Tax:   ₹${price * tax}`);
console.log(`Total: ₹${price + price * tax}`);

// Call functions
const upper = str => str.toUpperCase();
console.log(`Hello, ${upper("world")}!`);  // "Hello, WORLD!"</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Template literals make <strong>building HTML strings</strong> in JavaScript much cleaner. You will use them constantly when dynamically generating content for the DOM.</p></div>
      HTML
      starter_code: <<~JS
        // ── Template Literals ──
        const product = "MacBook Pro";
        const price   = 129999;
        const qty     = 2;
        const discount = 0.10;

        // Simple embedding
        console.log(`Product: ${product}`);
        console.log(`Unit price: ₹${price.toLocaleString()}`);

        // Expressions inside ${}
        const subtotal = price * qty;
        const savings  = subtotal * discount;
        const total    = subtotal - savings;

        console.log(`Quantity: ${qty}`);
        console.log(`Subtotal: ₹${subtotal.toLocaleString()}`);
        console.log(`Discount (${discount * 100}%): -₹${savings.toLocaleString()}`);
        console.log(`Total: ₹${total.toLocaleString()}`);

        // Multi-line string
        const receipt = `
        ====== RECEIPT ======
        ${product} × ${qty}
        Subtotal:  ₹${subtotal}
        Discount:  -₹${savings}
        ---------------------
        Total:     ₹${total}
        =====================`;
        console.log(receipt);

        // Function in template
        const stars = n => "⭐".repeat(n);
        console.log(`Rating: ${stars(5)}`);
      JS
    },

    14 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Array methods like <code>map()</code>, <code>filter()</code>, and <code>reduce()</code> transform arrays in a <strong>functional, readable way</strong>. They are the backbone of modern JavaScript and used in virtually every real-world project.</p>
        </div>
        <div class="lc-section">
          <h2>The Big Three</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>.map(fn)</code></td><td>Transforms every element</td><td>New array (same length)</td></tr>
              <tr><td><code>.filter(fn)</code></td><td>Keeps elements where fn returns true</td><td>New array (shorter or equal)</td></tr>
              <tr><td><code>.reduce(fn, initial)</code></td><td>Combines all elements into one value</td><td>Single value</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>map, filter, reduce in Action</h2>
          <div class="lc-code-block"><pre><code>const prices = [100, 250, 80, 400, 120];

// map: add 18% tax to each
const withTax = prices.map(p => p * 1.18);

// filter: only affordable items
const affordable = prices.filter(p => p &lt; 200);

// reduce: total cost
const total = prices.reduce((sum, p) => sum + p, 0);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>More Useful Methods</h2>
          <div class="lc-code-block"><pre><code>arr.find(fn)        // First element where fn is true
arr.findIndex(fn)   // Index of first match
arr.some(fn)        // true if ANY element passes
arr.every(fn)       // true if ALL elements pass
arr.flat()          // Flatten nested arrays
arr.sort((a,b) => a - b)  // Sort numbers ascending</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>You can <strong>chain</strong> these methods: <code>arr.filter(x => x > 0).map(x => x * 2).reduce((a, b) => a + b, 0)</code> — filter, then transform, then sum. This is expressive, readable code!</p></div>
      HTML
      starter_code: <<~JS
        // ── Array Methods ──
        const students = [
          { name: "Alice", score: 92, passed: true  },
          { name: "Bob",   score: 58, passed: false },
          { name: "Carol", score: 87, passed: true  },
          { name: "Dave",  score: 45, passed: false },
          { name: "Eve",   score: 95, passed: true  },
        ];

        // map: extract just names
        const names = students.map(s => s.name);
        console.log("Names:", names);

        // filter: only passing students
        const passed = students.filter(s => s.passed);
        console.log("Passed:", passed.map(s => s.name));

        // reduce: average score
        const total = students.reduce((sum, s) => sum + s.score, 0);
        const avg   = total / students.length;
        console.log("Average score:", avg.toFixed(1));

        // find: first student with score > 90
        const topStudent = students.find(s => s.score > 90);
        console.log("Top student:", topStudent.name);

        // some & every
        console.log("Any score > 90:", students.some(s => s.score > 90));
        console.log("All passed:", students.every(s => s.passed));

        // Chained
        const topScores = students
          .filter(s => s.passed)
          .map(s => s.score)
          .sort((a, b) => b - a);
        console.log("Sorted passing scores:", topScores);
      JS
    },

    15 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>A <strong>Promise</strong> represents a value that will be available in the future — it is a placeholder for an async result. Promises solve the "callback hell" problem and are the foundation of modern async JavaScript.</p>
        </div>
        <div class="lc-section">
          <h2>Promise States</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">⏳ Pending<br><small>Waiting for result</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">✅ Fulfilled<br><small>Success</small></div>
          </div>
          <div class="lc-flow" style="margin-top:8px">
            <div class="lc-flow-step">⏳ Pending<br><small>Waiting for result</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">❌ Rejected<br><small>Error</small></div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Creating and Consuming Promises</h2>
          <div class="lc-code-block"><pre><code>// Creating a promise
const myPromise = new Promise((resolve, reject) => {
  // Async work here...
  const success = true;
  if (success) resolve("Data loaded!");
  else reject("Something went wrong");
});

// Consuming a promise
myPromise
  .then(result => console.log(result))   // "Data loaded!"
  .catch(error => console.error(error))
  .finally(() => console.log("Done"));</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Promise.all — Run Multiple in Parallel</h2>
          <div class="lc-code-block"><pre><code>const p1 = Promise.resolve("User data");
const p2 = Promise.resolve("Posts data");

Promise.all([p1, p2])
  .then(([user, posts]) => console.log(user, posts));</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In practice you rarely create Promises manually. Most of the time you <em>consume</em> them — the <code>fetch()</code> API returns a Promise, and you use <code>.then()</code> or <code>async/await</code> to handle it.</p></div>
      HTML
      starter_code: <<~JS
        // ── Promises ──

        // Simulating async work with a delay
        function delay(ms) {
          return new Promise(resolve => setTimeout(resolve, ms));
        }

        function fetchUser(id) {
          return new Promise((resolve, reject) => {
            if (id > 0) {
              resolve({ id, name: "User " + id, role: "student" });
            } else {
              reject(new Error("Invalid user ID"));
            }
          });
        }

        // Success case
        fetchUser(1)
          .then(user => {
            console.log("✅ Got user:", user.name, "(" + user.role + ")");
            return user.name + " is verified";
          })
          .then(msg => console.log("📋 Result:", msg))
          .catch(err => console.error("❌ Error:", err.message))
          .finally(() => console.log("🏁 Request complete"));

        // Failure case
        fetchUser(-1)
          .then(user => console.log("User:", user))
          .catch(err => console.error("❌ Caught:", err.message));

        // Promise.all
        const p1 = Promise.resolve("Dashboard data");
        const p2 = Promise.resolve("User profile");
        const p3 = Promise.resolve("Notifications");

        Promise.all([p1, p2, p3])
          .then(([dash, profile, notifs]) => {
            console.log("All loaded:", dash, "|", profile, "|", notifs);
          });
      JS
    },

    16 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p><code>async/await</code> is <strong>syntactic sugar over Promises</strong> that makes asynchronous code look and read like synchronous code. It is the modern, preferred way to handle async operations in JavaScript.</p>
        </div>
        <div class="lc-section">
          <h2>async / await Syntax</h2>
          <div class="lc-code-block"><pre><code>// Mark the function async
async function loadUserData() {
  try {
    // await pauses execution until Promise resolves
    const response = await fetch("/api/user/1");
    const user = await response.json();
    console.log(user.name);
  } catch (error) {
    console.error("Failed:", error.message);
  }
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Promise vs async/await (Same Result)</h2>
          <div class="lc-two-col">
            <div class="lc-col">
              <p class="lc-col-label" style="color:var(--txt2)">Promise style</p>
              <div class="lc-code-block"><pre><code>fetch(url)
  .then(r => r.json())
  .then(data => {
    console.log(data);
  })
  .catch(err => {
    console.error(err);
  });</code></pre></div>
            </div>
            <div class="lc-col">
              <p class="lc-col-label" style="color:var(--txt2)">async/await style</p>
              <div class="lc-code-block"><pre><code>async function get() {
  try {
    const r = await fetch(url);
    const data = await r.json();
    console.log(data);
  } catch(err) {
    console.error(err);
  }
}</code></pre></div>
            </div>
          </div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>await</code> can <strong>only</strong> be used inside an <code>async</code> function. At the top level of modern modules you can use <em>top-level await</em>, but inside regular functions you must mark them <code>async</code> first.</p></div>
      HTML
      starter_code: <<~JS
        // ── async / await ──

        // Simulate async operations
        function wait(ms, value) {
          return new Promise(resolve => setTimeout(() => resolve(value), ms));
        }

        // Sequential with async/await
        async function runSequentially() {
          console.log("Starting...");
          const step1 = await wait(0, "Step 1 complete");
          console.log(step1);
          const step2 = await wait(0, "Step 2 complete");
          console.log(step2);
          const step3 = await wait(0, "Step 3 complete");
          console.log(step3);
          return "All done!";
        }

        runSequentially().then(result => console.log(result));

        // Error handling with try/catch
        async function riskyOperation(shouldFail) {
          try {
            if (shouldFail) throw new Error("Operation failed!");
            const result = await wait(0, "Success! ✅");
            console.log(result);
          } catch (error) {
            console.error("Caught error:", error.message);
          } finally {
            console.log("Always runs (finally)");
          }
        }

        riskyOperation(false);
        riskyOperation(true);

        // Parallel execution (faster)
        async function parallel() {
          const [a, b, c] = await Promise.all([
            wait(0, "User data"),
            wait(0, "Products"),
            wait(0, "Orders")
          ]);
          console.log("Parallel:", a, "|", b, "|", c);
        }
        parallel();
      JS
    },

    17 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>The <strong>Fetch API</strong> lets you make HTTP requests to servers and APIs directly from the browser. It returns a Promise and is the modern replacement for the older <code>XMLHttpRequest</code>. Every real-world web app uses it.</p>
        </div>
        <div class="lc-section">
          <h2>Basic GET Request</h2>
          <div class="lc-code-block"><pre><code>async function getData() {
  const response = await fetch("https://api.example.com/data");

  if (!response.ok) {
    throw new Error(`HTTP error: ${response.status}`);
  }

  const data = await response.json();
  console.log(data);
}

getData();</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>POST Request (Sending Data)</h2>
          <div class="lc-code-block"><pre><code>async function createPost(title, body) {
  const response = await fetch("https://api.example.com/posts", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ title, body })
  });

  const result = await response.json();
  return result;
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>fetch() Two-Step Process</h2>
          <div class="lc-flow">
            <div class="lc-flow-step"><code>fetch(url)</code><br><small>Returns Response Promise</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step"><code>response.json()</code><br><small>Parse body Promise</small></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Your data<br><small>JavaScript object</small></div>
          </div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always check <code>response.ok</code> (true for 200–299 status codes). <code>fetch()</code> only rejects on <em>network errors</em> — a 404 or 500 still resolves the Promise. You must check the status yourself.</p></div>
      HTML
      starter_code: <<~JS
        // ── Fetch API ──
        // Using a free public API (JSONPlaceholder)

        async function loadPosts() {
          console.log("Fetching posts...");
          try {
            const response = await fetch("https://jsonplaceholder.typicode.com/posts?_limit=3");

            if (!response.ok) {
              throw new Error(`HTTP ${response.status}: ${response.statusText}`);
            }

            const posts = await response.json();
            console.log(`Loaded ${posts.length} posts:`);

            for (const post of posts) {
              console.log(`  [${post.id}] ${post.title}`);
            }
          } catch (error) {
            console.error("Fetch failed:", error.message);
          }
        }

        async function loadUser(id) {
          const res = await fetch(`https://jsonplaceholder.typicode.com/users/${id}`);
          const user = await res.json();
          console.log(`User: ${user.name} | Email: ${user.email} | City: ${user.address.city}`);
        }

        loadPosts();
        loadUser(1);
      JS
    },

    18 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Errors are inevitable in programming. JavaScript's <strong>try/catch/finally</strong> block lets you handle errors gracefully — showing a helpful message instead of crashing the entire program.</p>
        </div>
        <div class="lc-section">
          <h2>try / catch / finally</h2>
          <div class="lc-code-block"><pre><code>try {
  // Code that might throw an error
  const data = JSON.parse("invalid json{{");
} catch (error) {
  console.error("Type:", error.name);       // SyntaxError
  console.error("Message:", error.message); // Unexpected token
} finally {
  console.log("Always runs — cleanup here");
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Throwing Custom Errors</h2>
          <div class="lc-code-block"><pre><code>function divide(a, b) {
  if (b === 0) throw new Error("Cannot divide by zero!");
  return a / b;
}

try {
  console.log(divide(10, 2));   // 5
  console.log(divide(10, 0));   // throws!
} catch (e) {
  console.error(e.message);
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Error Types</h2>
          <table class="lc-table">
            <thead><tr><th>Error Type</th><th>Cause</th></tr></thead>
            <tbody>
              <tr><td><code>SyntaxError</code></td><td>Invalid JS syntax</td></tr>
              <tr><td><code>ReferenceError</code></td><td>Using undefined variable</td></tr>
              <tr><td><code>TypeError</code></td><td>Wrong type operation (<code>null.property</code>)</td></tr>
              <tr><td><code>RangeError</code></td><td>Value out of valid range</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>finally</code> for cleanup code that must always run: closing database connections, hiding loading spinners, or releasing resources — regardless of whether an error occurred.</p></div>
      HTML
      starter_code: <<~JS
        // ── Error Handling ──

        // Basic try/catch
        function safeDivide(a, b) {
          try {
            if (b === 0) throw new Error("Division by zero!");
            const result = a / b;
            console.log(`${a} ÷ ${b} = ${result}`);
            return result;
          } catch (error) {
            console.error("❌ Error:", error.message);
            return null;
          }
        }
        safeDivide(10, 2);
        safeDivide(10, 0);

        // Handling JSON parse errors
        function parseJSON(text) {
          try {
            const data = JSON.parse(text);
            console.log("✅ Parsed:", data);
            return data;
          } catch (e) {
            console.error("❌ Invalid JSON:", e.message);
            return null;
          }
        }
        parseJSON('{"name": "Alice", "age": 25}');
        parseJSON('not valid json!');

        // Custom error class
        class ValidationError extends Error {
          constructor(field, message) {
            super(message);
            this.name = "ValidationError";
            this.field = field;
          }
        }

        function validateAge(age) {
          if (typeof age !== "number") throw new ValidationError("age", "Age must be a number");
          if (age < 0 || age > 150)   throw new ValidationError("age", "Age must be 0-150");
          return true;
        }

        try { validateAge("twenty"); }
        catch (e) { console.error(`${e.name} [${e.field}]: ${e.message}`); }

        try { validateAge(200); }
        catch (e) { console.error(`${e.name} [${e.field}]: ${e.message}`); }
      JS
    },

    19 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>ES6 Modules let you <strong>split your JavaScript code into separate files</strong>, each with its own scope. You export things from one file and import them in another. This keeps codebases organized and maintainable as they grow.</p>
        </div>
        <div class="lc-section">
          <h2>Exporting</h2>
          <div class="lc-code-block"><pre><code>// math.js

// Named exports
export function add(a, b) { return a + b; }
export const PI = 3.14159;

// Default export (one per file)
export default function multiply(a, b) { return a * b; }</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Importing</h2>
          <div class="lc-code-block"><pre><code>// app.js

// Named imports (use exact name)
import { add, PI } from "./math.js";

// Default import (any name)
import multiply from "./math.js";

// Import everything as namespace
import * as Math from "./math.js";
console.log(Math.add(1, 2));

console.log(add(2, 3));      // 5
console.log(PI);             // 3.14159
console.log(multiply(4, 5)); // 20</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>In HTML</h2>
          <div class="lc-code-block"><pre><code>&lt;!-- type="module" enables ES6 modules --&gt;
&lt;script type="module" src="app.js"&gt;&lt;/script&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In modern frameworks (React, Vue, Svelte), modules are used everywhere — each component is a module. Understanding exports and imports is essential for working with any modern JS project.</p></div>
      HTML
      starter_code: <<~JS
        // ── ES6 Modules ──
        // Modules work across files, but here we simulate the concept

        // ── Simulating a "math.js" module ──
        const MathModule = (() => {
          // These would be in math.js with `export`
          function add(a, b)      { return a + b; }
          function subtract(a, b) { return a - b; }
          function multiply(a, b) { return a * b; }
          function divide(a, b)   { return b !== 0 ? a / b : "Error"; }
          const PI = 3.14159;
          return { add, subtract, multiply, divide, PI };
        })();

        // ── Simulating import { add, PI } from "./math.js" ──
        const { add, multiply, divide, PI } = MathModule;

        console.log("add(5, 3):", add(5, 3));
        console.log("multiply(4, 6):", multiply(4, 6));
        console.log("divide(15, 4):", divide(15, 4));
        console.log("PI:", PI);

        // ── Simulating a "validators.js" module ──
        const Validators = (() => {
          const isEmail = s => /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(s);
          const isPhone = s => /^\d{10}$/.test(s);
          const minLength = (s, n) => s.length >= n;
          return { isEmail, isPhone, minLength };
        })();

        console.log("\n--- Validators ---");
        console.log("Valid email:", Validators.isEmail("test@example.com"));
        console.log("Invalid email:", Validators.isEmail("notanemail"));
        console.log("Valid phone:", Validators.isPhone("9876543210"));
        console.log("Min 8 chars:", Validators.minLength("mypassword", 8));
      JS
    },

    20 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Congratulations on completing the JavaScript course! You have learned the fundamentals that power every interactive website. This review consolidates everything — from variables to async programming.</p>
        </div>
        <div class="lc-section">
          <h2>JavaScript Fundamentals ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Variables with <code>const</code> / <code>let</code> and the 8 data types</li>
            <li>Operators: arithmetic, comparison (<code>===</code>), logical (<code>&&</code>, <code>||</code>)</li>
            <li>Conditionals: <code>if/else</code>, ternary <code>? :</code>, switch</li>
            <li>Loops: <code>for</code>, <code>while</code>, <code>for...of</code></li>
            <li>Functions: declarations, expressions, default params, return values</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Data Structures &amp; Modern JS ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Arrays: creation, methods (<code>push/pop</code>, <code>map/filter/reduce</code>)</li>
            <li>Objects: key-value pairs, destructuring, <code>Object.keys()</code></li>
            <li>Arrow functions: concise syntax, no own <code>this</code></li>
            <li>Template literals: <code>`${expression}`</code> and multi-line strings</li>
            <li>Error handling: <code>try/catch/finally</code>, custom errors</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Async &amp; Browser APIs ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>DOM manipulation: <code>querySelector</code>, <code>createElement</code>, <code>classList</code></li>
            <li>Events: <code>addEventListener</code>, event object</li>
            <li>Promises: <code>.then()</code>, <code>.catch()</code>, <code>Promise.all()</code></li>
            <li>Async/await: cleaner async code with <code>try/catch</code></li>
            <li>Fetch API: GET and POST requests to APIs</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Start building projects — even simple ones like a to-do list, quiz app, or weather app. Then explore <strong>React</strong> (UI framework) or <strong>Node.js</strong> (server-side JS). Practice daily!</p></div>
      HTML
      starter_code: <<~JS
        // ── JavaScript Review — Mini Quiz App ──

        const questions = [
          { q: "What keyword declares a constant?",  options: ["var","let","const","def"],    answer: 2 },
          { q: "Which checks value AND type?",        options: ["==","===","!=","="],          answer: 1 },
          { q: "What does .map() return?",            options: ["void","undefined","a new array","the same array"], answer: 2 },
          { q: "What does async/await simplify?",     options: ["Loops","Promises","Classes","Imports"], answer: 1 },
        ];

        let score = 0;
        const results = [];

        for (const { q, options, answer } of questions) {
          const userAnswer = answer; // Auto-answer correctly for demo
          const correct = userAnswer === answer;
          if (correct) score++;
          results.push({ question: q, correct });
        }

        console.log("╔═══════════════════════════╗");
        console.log("║    JavaScript Quiz Result  ║");
        console.log("╚═══════════════════════════╝");

        for (const r of results) {
          console.log(`${r.correct ? "✅" : "❌"} ${r.question}`);
        }

        const pct = Math.round(score / questions.length * 100);
        console.log(`\nScore: ${score}/${questions.length} (${pct}%)`);
        console.log(pct >= 75 ? "🎓 Passed! Well done!" : "📖 Keep practicing!");
      JS
    }
  }.freeze
end

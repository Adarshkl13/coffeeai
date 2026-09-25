module TypescriptContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Introduction to TypeScript</h1>
        </div>
        <p class="lc-lead">TypeScript is JavaScript with <strong>static types</strong>. It catches errors at compile time — before your code runs — making large codebases safer and easier to maintain.</p>
        <div class="lc-card">
          <h3>TypeScript vs JavaScript</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>JavaScript</th><th>TypeScript</th></tr></thead>
            <tbody>
              <tr><td>Typing</td><td>Dynamic (runtime)</td><td>Static (compile time)</td></tr>
              <tr><td>Error detection</td><td>At runtime</td><td>At compile time</td></tr>
              <tr><td>IDE support</td><td>Limited</td><td>Rich autocomplete &amp; hints</td></tr>
              <tr><td>Runs in browser</td><td>Directly</td><td>Compiles to JS first</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Adding Types</h3>
          <div class="lc-code">// JavaScript<br>let name = "Alice";<br>let age  = 25;<br><br>// TypeScript — annotate with : type<br>let name: string = "Alice";<br>let age:  number = 25;<br>let active: boolean = true;</div>
        </div>
        <div class="lc-card">
          <h3>Type Inference</h3>
          <p>TypeScript infers types from initial values — you don't always need to write them:</p>
          <div class="lc-code">let name = "Alice";  // TypeScript knows this is a string<br>name = 42;           // ❌ Error: Type 'number' is not assignable to type 'string'</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> TypeScript compiles to plain JavaScript — every valid JavaScript file is also valid TypeScript. You can adopt TypeScript gradually.
        </div>
      HTML
      starter_code: <<~'TS'
        // TypeScript adds types to JavaScript
        let courseName: string = "TypeScript Fundamentals";
        let lessonCount: number = 20;
        let isPublished: boolean = true;

        console.log("Course:", courseName);
        console.log("Lessons:", lessonCount);
        console.log("Published:", isPublished);

        // Type inference — TypeScript deduces the type
        let language = "TypeScript";  // inferred as string
        let version  = 5.3;           // inferred as number

        console.log(`\n${language} version ${version}`);

        // Function with typed parameters and return type
        function greet(name: string): string {
          return `Hello, ${name}! Welcome to ${courseName}.`;
        }

        console.log(greet("Alice"));
        console.log(greet("Bob"));
      TS
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Primitive Types</h1>
        </div>
        <p class="lc-lead">TypeScript's type system includes all JavaScript primitives plus powerful additions like <code>unknown</code>, <code>never</code>, and <code>void</code> for precise type safety.</p>
        <div class="lc-card">
          <h3>Core Primitive Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>string</td><td>"hello"</td><td>Text values</td></tr>
              <tr><td>number</td><td>42, 3.14</td><td>All numbers (int + float)</td></tr>
              <tr><td>boolean</td><td>true, false</td><td>Logic values</td></tr>
              <tr><td>null</td><td>null</td><td>Intentional absence</td></tr>
              <tr><td>undefined</td><td>undefined</td><td>Uninitialized value</td></tr>
              <tr><td>bigint</td><td>9007199254740993n</td><td>Arbitrary large integers</td></tr>
              <tr><td>symbol</td><td>Symbol("id")</td><td>Unique identifiers</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Special Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>any</td><td>Opt out of type checking — use sparingly!</td></tr>
              <tr><td>unknown</td><td>Like any, but safe — must check type before using</td></tr>
              <tr><td>void</td><td>Function that returns nothing</td></tr>
              <tr><td>never</td><td>Function that never returns (throws or infinite loop)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>any vs unknown</h3>
          <div class="lc-code">let a: any     = "hello"; a.toUpperCase();   // OK but unsafe<br>let b: unknown = "hello"; b.toUpperCase();   // ❌ Error — must check first<br>if (typeof b === "string") b.toUpperCase();  // ✅ Safe</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefer <code>unknown</code> over <code>any</code> — it forces you to check the type before using a value, preventing runtime errors.
        </div>
      HTML
      starter_code: <<~'TS'
        // Primitive types
        const name: string   = "Alice Smith";
        const age: number    = 28;
        const active: boolean = true;
        const score: number  = 98.5;

        console.log(`Name: ${name}`);
        console.log(`Age: ${age}, Active: ${active}, Score: ${score}`);

        // Template literal type operations
        function formatUser(name: string, age: number, score: number): string {
          const grade = score >= 90 ? "A" : score >= 80 ? "B" : "C";
          return `${name} (age ${age}) — Grade: ${grade} (${score})`;
        }

        console.log("\nFormatted:");
        console.log(formatUser("Alice", 28, 98.5));
        console.log(formatUser("Bob",   34, 82.0));
        console.log(formatUser("Carol", 22, 75.5));

        // void — functions that return nothing
        function logDivider(char: string = "─"): void {
          console.log(char.repeat(30));
        }

        logDivider();
        console.log("Special types demo");
        logDivider("=");

        // unknown — safe version of any
        function parseInput(input: unknown): string {
          if (typeof input === "string") return input.toUpperCase();
          if (typeof input === "number") return input.toFixed(2);
          return String(input);
        }

        console.log(parseInput("hello"));
        console.log(parseInput(3.14159));
        console.log(parseInput(true));
      TS
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Arrays and Tuples</h1>
        </div>
        <p class="lc-lead">TypeScript arrays know the type of their elements. Tuples are fixed-length arrays where each position has a specific type.</p>
        <div class="lc-card">
          <h3>Array Types</h3>
          <div class="lc-code">// Two equivalent syntaxes:<br>let nums: number[]     = [1, 2, 3];<br>let strs: Array&lt;string&gt; = ["a", "b", "c"];<br><br>// Mixed won't work:<br>let mixed: number[] = [1, "two", 3]; // ❌ Error<br><br>// Read-only array<br>const locked: readonly number[] = [1, 2, 3];<br>locked.push(4); // ❌ Error</div>
        </div>
        <div class="lc-card">
          <h3>Tuples — Fixed Shape</h3>
          <div class="lc-code">// A pair: [string, number]<br>let person: [string, number] = ["Alice", 28];<br>let [name, age] = person;   // Destructuring works<br><br>// Labeled tuple (TS 4.0+)<br>type Point = [x: number, y: number, z?: number];<br>let p: Point = [10, 20];</div>
        </div>
        <div class="lc-card">
          <h3>Array Methods — All Type-Safe</h3>
          <div class="lc-code">const scores: number[] = [85, 92, 78, 95, 61];<br>const passing = scores.filter(s =&gt; s &gt;= 70); // number[]<br>const doubled = scores.map(s =&gt; s * 2);     // number[]<br>const total   = scores.reduce((a, b) =&gt; a + b, 0); // number</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use tuples when you have a small, fixed-shape collection where position matters — like <code>[lat, lng]</code> coordinates or <code>[key, value]</code> pairs.
        </div>
      HTML
      starter_code: <<~'TS'
        // Typed arrays
        const scores: number[] = [85, 92, 78, 95, 61, 88, 73];
        const names: string[]  = ["Alice", "Bob", "Carol", "Dave", "Eve", "Frank", "Grace"];

        // Type-safe array operations
        const passing: number[] = scores.filter(s => s >= 70);
        const average: number   = scores.reduce((a, b) => a + b, 0) / scores.length;

        console.log("Scores:", scores.join(", "));
        console.log("Passing:", passing.join(", "));
        console.log("Average:", average.toFixed(1));

        // Tuples — fixed-length, typed positions
        type Student = [name: string, score: number, grade: string];

        function makeStudent(name: string, score: number): Student {
          const grade = score >= 90 ? "A" : score >= 80 ? "B" : score >= 70 ? "C" : "F";
          return [name, score, grade];
        }

        const students: Student[] = names.map((name, i) => makeStudent(name, scores[i]));

        console.log("\nStudent Records:");
        students.forEach(([name, score, grade]) => {
          console.log(`  ${name.padEnd(8)} Score: ${score}  Grade: ${grade}`);
        });

        // Sorting with type safety
        const ranked = [...students].sort((a, b) => b[1] - a[1]);
        console.log("\nTop student:", ranked[0][0], "with", ranked[0][1]);
      TS
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Object Types and Type Aliases</h1>
        </div>
        <p class="lc-lead">Object types describe the shape of an object. Type aliases give names to any type — from simple primitives to complex objects.</p>
        <div class="lc-card">
          <h3>Inline Object Types</h3>
          <div class="lc-code">function greet(user: { name: string; age: number }): string {<br>  return `Hello, ${user.name}! You are ${user.age} years old.`;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Type Aliases</h3>
          <div class="lc-code">type User = {<br>  name: string;<br>  age: number;<br>  email?: string;  // Optional property<br>  readonly id: number; // Can't be changed after creation<br>};<br><br>const alice: User = { name: "Alice", age: 28, id: 1 };<br>alice.name = "Bob";  // ✅ OK<br>alice.id = 2;        // ❌ Error: readonly</div>
        </div>
        <div class="lc-card">
          <h3>Nested Types</h3>
          <div class="lc-code">type Address = { street: string; city: string; country: string };<br>type Person  = { name: string; age: number; address: Address };</div>
        </div>
        <div class="lc-card">
          <h3>Type Alias vs Interface</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>type</th><th>interface</th></tr></thead>
            <tbody>
              <tr><td>Objects</td><td>✅</td><td>✅</td></tr>
              <tr><td>Primitives/Unions</td><td>✅</td><td>❌</td></tr>
              <tr><td>Extends/merging</td><td>Intersection &amp;</td><td>extends keyword</td></tr>
              <tr><td>Reopening</td><td>❌</td><td>✅ (declaration merging)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>interface</code> for objects that will be extended or implemented by classes. Use <code>type</code> for unions, tuples, or simpler aliases.
        </div>
      HTML
      starter_code: <<~'TS'
        type Address = {
          street: string;
          city: string;
          country: string;
        };

        type Employee = {
          readonly id: number;
          name: string;
          department: string;
          salary: number;
          address: Address;
          email?: string;  // optional
        };

        const employees: Employee[] = [
          {
            id: 1, name: "Alice Chen", department: "Engineering", salary: 90000,
            address: { street: "123 Main St", city: "San Francisco", country: "USA" },
            email: "alice@example.com"
          },
          {
            id: 2, name: "Bob Jones", department: "Marketing", salary: 65000,
            address: { street: "456 Oak Ave", city: "New York", country: "USA" }
          },
          {
            id: 3, name: "Carol White", department: "Engineering", salary: 85000,
            address: { street: "789 Pine Rd", city: "Austin", country: "USA" },
            email: "carol@example.com"
          }
        ];

        function formatEmployee(emp: Employee): string {
          const email = emp.email ?? "no email";
          return `[${emp.id}] ${emp.name} — ${emp.department} — $${emp.salary.toLocaleString()} (${email})`;
        }

        console.log("Employees:");
        employees.forEach(e => console.log(" ", formatEmployee(e)));

        // Computed stats
        const avgSalary = employees.reduce((s, e) => s + e.salary, 0) / employees.length;
        console.log(`\nAverage salary: $${avgSalary.toLocaleString()}`);

        const engineers = employees.filter(e => e.department === "Engineering");
        console.log(`Engineers: ${engineers.map(e => e.name).join(", ")}`);
      TS
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Interfaces</h1>
        </div>
        <p class="lc-lead">Interfaces define contracts for object shapes. They're especially powerful with classes — a class that <code>implements</code> an interface must provide all required methods.</p>
        <div class="lc-card">
          <h3>Defining an Interface</h3>
          <div class="lc-code">interface Shape {<br>  color: string;<br>  area(): number;           // Method signature<br>  perimeter(): number;<br>  toString?(): string;      // Optional method<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Implementing an Interface</h3>
          <div class="lc-code">class Circle implements Shape {<br>  constructor(public color: string, public radius: number) {}<br><br>  area(): number {<br>    return Math.PI * this.radius ** 2;<br>  }<br><br>  perimeter(): number {<br>    return 2 * Math.PI * this.radius;<br>  }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Extending Interfaces</h3>
          <div class="lc-code">interface Animal {<br>  name: string;<br>  speak(): string;<br>}<br><br>interface Pet extends Animal {<br>  owner: string;<br>  tricks: string[];<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Interface for Functions</h3>
          <div class="lc-code">interface Transformer {<br>  (input: string): string;<br>}<br><br>const upper: Transformer = s =&gt; s.toUpperCase();<br>const lower: Transformer = s =&gt; s.toLowerCase();</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Interfaces enable polymorphism — write code that works with any object satisfying an interface, not just a specific class.
        </div>
      HTML
      starter_code: <<~'TS'
        interface Printable {
          toString(): string;
        }

        interface Shape extends Printable {
          color: string;
          area(): number;
          perimeter(): number;
        }

        class Rectangle implements Shape {
          constructor(
            public color: string,
            public width: number,
            public height: number
          ) {}

          area(): number { return this.width * this.height; }
          perimeter(): number { return 2 * (this.width + this.height); }
          toString(): string { return `Rectangle(${this.width}×${this.height}, ${this.color})`; }
        }

        class Circle implements Shape {
          constructor(public color: string, public radius: number) {}

          area(): number { return Math.PI * this.radius ** 2; }
          perimeter(): number { return 2 * Math.PI * this.radius; }
          toString(): string { return `Circle(r=${this.radius}, ${this.color})`; }
        }

        // Polymorphism: any Shape works here
        function describeShape(shape: Shape): void {
          console.log(`${shape.toString()}`);
          console.log(`  Area:      ${shape.area().toFixed(2)}`);
          console.log(`  Perimeter: ${shape.perimeter().toFixed(2)}`);
        }

        const shapes: Shape[] = [
          new Rectangle("red", 5, 3),
          new Circle("blue", 4),
          new Rectangle("green", 10, 2),
        ];

        console.log("=== Shape Gallery ===");
        shapes.forEach(s => { describeShape(s); console.log(""); });

        const totalArea = shapes.reduce((sum, s) => sum + s.area(), 0);
        console.log(`Total area: ${totalArea.toFixed(2)}`);
      TS
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Functions with Types</h1>
        </div>
        <p class="lc-lead">TypeScript makes function signatures explicit — parameter types and return types catch bugs before runtime and enable rich IDE autocomplete.</p>
        <div class="lc-card">
          <h3>Function Type Syntax</h3>
          <div class="lc-code">// Named function<br>function add(a: number, b: number): number {<br>  return a + b;<br>}<br><br>// Arrow function<br>const multiply = (a: number, b: number): number =&gt; a * b;<br><br>// Return type inference<br>const divide = (a: number, b: number) =&gt; a / b;  // inferred: number</div>
        </div>
        <div class="lc-card">
          <h3>Optional and Default Parameters</h3>
          <div class="lc-code">function greet(name: string, greeting: string = "Hello"): string {<br>  return `${greeting}, ${name}!`;<br>}<br><br>function log(message: string, level?: string): void {<br>  console.log(`[${level ?? "INFO"}] ${message}`);<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Rest Parameters</h3>
          <div class="lc-code">function sum(...numbers: number[]): number {<br>  return numbers.reduce((a, b) =&gt; a + b, 0);<br>}<br>sum(1, 2, 3, 4, 5);  // 15</div>
        </div>
        <div class="lc-card">
          <h3>Function Types</h3>
          <div class="lc-code">type BinaryOp = (a: number, b: number) =&gt; number;<br><br>const ops: Record&lt;string, BinaryOp&gt; = {<br>  add: (a, b) =&gt; a + b,<br>  sub: (a, b) =&gt; a - b,<br>  mul: (a, b) =&gt; a * b,<br>};</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If a function can return different types based on conditions, explicitly annotate the return type — TypeScript will verify all code paths return the right type.
        </div>
      HTML
      starter_code: <<~'TS'
        // Typed functions
        function calculateTax(income: number, rate: number = 0.2): number {
          return income * rate;
        }

        function formatCurrency(amount: number, symbol: string = "$"): string {
          return `${symbol}${amount.toLocaleString("en-US", { minimumFractionDigits: 2 })}`;
        }

        // Rest parameters
        function stats(...values: number[]): { min: number; max: number; avg: number } {
          const min = Math.min(...values);
          const max = Math.max(...values);
          const avg = values.reduce((a, b) => a + b, 0) / values.length;
          return { min, max, avg };
        }

        // Function types
        type Formatter = (value: number) => string;
        type Predicate = (value: number) => boolean;

        function applyFilter(numbers: number[], pred: Predicate): number[] {
          return numbers.filter(pred);
        }

        function applyFormat(numbers: number[], fmt: Formatter): string[] {
          return numbers.map(fmt);
        }

        // Demo
        const salaries = [45000, 82000, 125000, 67000, 98000, 55000];

        console.log("=== Salary Analysis ===");
        const result = stats(...salaries);
        console.log(`Min: ${formatCurrency(result.min)}`);
        console.log(`Max: ${formatCurrency(result.max)}`);
        console.log(`Avg: ${formatCurrency(result.avg)}`);

        const highEarners = applyFilter(salaries, s => s >= 80000);
        const formatted   = applyFormat(highEarners, formatCurrency);
        console.log(`\nHigh earners: ${formatted.join(", ")}`);

        const taxes = salaries.map(s => calculateTax(s));
        console.log(`\nTaxes: ${taxes.map(formatCurrency).join(", ")}`);
      TS
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Union and Intersection Types</h1>
        </div>
        <p class="lc-lead">Union types (<code>A | B</code>) allow a value to be one of several types. Intersection types (<code>A &amp; B</code>) combine multiple types into one.</p>
        <div class="lc-card">
          <h3>Union Types</h3>
          <div class="lc-code">type ID = string | number;<br>let userId: ID = "user-123";  // OK<br>userId = 42;                   // Also OK<br><br>function processId(id: string | number): string {<br>  if (typeof id === "string") return id.toUpperCase();<br>  return id.toFixed(0);<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Discriminated Unions (Tagged Unions)</h3>
          <div class="lc-code">type Circle    = { kind: "circle";    radius: number };<br>type Rectangle = { kind: "rectangle"; width: number; height: number };<br>type Shape = Circle | Rectangle;<br><br>function area(shape: Shape): number {<br>  switch (shape.kind) {<br>    case "circle":    return Math.PI * shape.radius ** 2;<br>    case "rectangle": return shape.width * shape.height;<br>  }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Intersection Types</h3>
          <div class="lc-code">type Timestamps = { createdAt: Date; updatedAt: Date };<br>type User = { name: string; email: string };<br>type UserRecord = User &amp; Timestamps;  // Has all properties of both</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Discriminated unions with a <code>kind</code> or <code>type</code> tag are the most powerful pattern in TypeScript — TypeScript narrows the type automatically in each case branch.
        </div>
      HTML
      starter_code: <<~'TS'
        // Discriminated union for payment methods
        type CreditCard  = { kind: "credit";  number: string; expiry: string; cvv: string };
        type BankTransfer = { kind: "bank";   accountNumber: string; routingNumber: string };
        type Crypto       = { kind: "crypto"; walletAddress: string; currency: string };

        type PaymentMethod = CreditCard | BankTransfer | Crypto;

        function processPayment(amount: number, method: PaymentMethod): string {
          const fmt = `$${amount.toFixed(2)}`;
          switch (method.kind) {
            case "credit":
              return `Charged ${fmt} to card ending in ${method.number.slice(-4)}`;
            case "bank":
              return `Transferred ${fmt} from account ${method.accountNumber}`;
            case "crypto":
              return `Sent ${fmt} in ${method.currency} to ${method.walletAddress.slice(0, 8)}...`;
          }
        }

        const payments: Array<{ amount: number; method: PaymentMethod }> = [
          { amount: 99.99,  method: { kind: "credit",  number: "4111111111114567", expiry: "12/26", cvv: "123" } },
          { amount: 500.00, method: { kind: "bank",    accountNumber: "987654321", routingNumber: "021000021" } },
          { amount: 0.05,   method: { kind: "crypto",  walletAddress: "0xAbCd1234EfGh5678IjKl", currency: "ETH" } },
        ];

        console.log("=== Payment Processing ===");
        payments.forEach(p => console.log(processPayment(p.amount, p.method)));

        // Union of primitives
        type StringOrNumber = string | number;
        function double(x: StringOrNumber): StringOrNumber {
          if (typeof x === "string") return x + x;
          return x * 2;
        }

        console.log("\n=== Union type demo ===");
        console.log(double("hello "));  // string
        console.log(double(21));        // number
      TS
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Type Narrowing</h1>
        </div>
        <p class="lc-lead">Type narrowing is TypeScript's ability to refine a broader type to a more specific one within a conditional block — making operations safe.</p>
        <div class="lc-card">
          <h3>Narrowing Techniques</h3>
          <table class="lc-table">
            <thead><tr><th>Technique</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td>typeof x === "string"</td><td>Primitives</td></tr>
              <tr><td>x instanceof Date</td><td>Class instances</td></tr>
              <tr><td>"key" in obj</td><td>Object property check</td></tr>
              <tr><td>Truthiness check</td><td>null / undefined</td></tr>
              <tr><td>Discriminant property</td><td>Tagged unions</td></tr>
              <tr><td>Type predicate</td><td>Custom type guard</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>typeof Narrowing</h3>
          <div class="lc-code">function process(val: string | number | boolean): string {<br>  if (typeof val === "string")  return val.toUpperCase();<br>  if (typeof val === "number")  return val.toFixed(2);<br>  return val ? "yes" : "no";<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Custom Type Guards</h3>
          <div class="lc-code">function isString(val: unknown): val is string {<br>  return typeof val === "string";<br>}<br><br>// Now TypeScript knows val is string inside the if<br>if (isString(val)) val.toUpperCase();</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> TypeScript's control flow analysis automatically narrows types — after an <code>if (typeof x === "string")</code> check, TypeScript knows <code>x</code> is a string in that block.
        </div>
      HTML
      starter_code: <<~'TS'
        type Cat = { kind: "cat"; name: string; indoor: boolean };
        type Dog = { kind: "dog"; name: string; breed: string };
        type Animal = Cat | Dog;

        // Discriminant property narrowing
        function describeAnimal(animal: Animal): string {
          if (animal.kind === "cat") {
            // TypeScript knows it's Cat here
            return `${animal.name} is a ${animal.indoor ? "indoor" : "outdoor"} cat`;
          } else {
            // TypeScript knows it's Dog here
            return `${animal.name} is a ${animal.breed}`;
          }
        }

        // Custom type guard
        function isCat(animal: Animal): animal is Cat {
          return animal.kind === "cat";
        }

        const animals: Animal[] = [
          { kind: "cat", name: "Whiskers", indoor: true },
          { kind: "dog", name: "Rex",      breed: "German Shepherd" },
          { kind: "cat", name: "Luna",     indoor: false },
          { kind: "dog", name: "Buddy",    breed: "Golden Retriever" },
        ];

        console.log("=== Animals ===");
        animals.forEach(a => console.log(describeAnimal(a)));

        const cats = animals.filter(isCat);  // Type: Cat[]
        console.log(`\nCats: ${cats.map(c => c.name).join(", ")}`);
        console.log(`Indoor cats: ${cats.filter(c => c.indoor).map(c => c.name).join(", ")}`);

        // typeof narrowing
        function formatValue(val: string | number | null): string {
          if (val === null) return "(empty)";
          if (typeof val === "number") return val.toFixed(2);
          return `"${val}"`;
        }

        console.log("\n=== Type narrowing ===");
        [42, "hello", null, 3.14, "world"].forEach(v => {
          console.log(`${String(v).padEnd(8)} → ${formatValue(v as string | number | null)}`);
        });
      TS
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Generics</h1>
        </div>
        <p class="lc-lead">Generics allow you to write functions and classes that work with any type while maintaining type safety — the <code>T</code> placeholder is filled in at call time.</p>
        <div class="lc-card">
          <h3>Generic Function</h3>
          <div class="lc-code">function identity&lt;T&gt;(arg: T): T {<br>  return arg;<br>}<br><br>identity&lt;string&gt;("hello")  // T = string<br>identity(42)              // T inferred as number</div>
        </div>
        <div class="lc-card">
          <h3>Generic Constraints</h3>
          <div class="lc-code">function getLength&lt;T extends { length: number }&gt;(arg: T): number {<br>  return arg.length;  // Safe — T must have .length<br>}<br><br>getLength("hello");   // 5<br>getLength([1,2,3]);   // 3<br>getLength(42);        // ❌ Error: number has no length</div>
        </div>
        <div class="lc-card">
          <h3>Generic Interfaces and Classes</h3>
          <div class="lc-code">interface Stack&lt;T&gt; {<br>  push(item: T): void;<br>  pop(): T | undefined;<br>  peek(): T | undefined;<br>  size: number;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Multiple Type Parameters</h3>
          <div class="lc-code">function pair&lt;K, V&gt;(key: K, value: V): [K, V] {<br>  return [key, value];<br>}<br><br>pair("name", "Alice")    // [string, string]<br>pair("age", 28)          // [string, number]</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Generics are what make TypeScript's built-in Array&lt;T&gt;, Promise&lt;T&gt;, Map&lt;K,V&gt; work. You're using generics every time you write <code>number[]</code>.
        </div>
      HTML
      starter_code: <<~'TS'
        // Generic stack
        class Stack<T> {
          private items: T[] = [];

          push(item: T): void { this.items.push(item); }

          pop(): T | undefined { return this.items.pop(); }

          peek(): T | undefined { return this.items[this.items.length - 1]; }

          get size(): number { return this.items.length; }

          toArray(): T[] { return [...this.items]; }
        }

        // Generic utility functions
        function first<T>(arr: T[]): T | undefined { return arr[0]; }
        function last<T>(arr: T[]):  T | undefined { return arr[arr.length - 1]; }

        function groupBy<T, K extends string>(
          items: T[],
          keyFn: (item: T) => K
        ): Record<K, T[]> {
          return items.reduce((acc, item) => {
            const key = keyFn(item);
            acc[key] = acc[key] || [];
            acc[key].push(item);
            return acc;
          }, {} as Record<K, T[]>);
        }

        // Number stack
        const numStack = new Stack<number>();
        [10, 20, 30, 40, 50].forEach(n => numStack.push(n));
        console.log("Stack size:", numStack.size);
        console.log("Top:", numStack.peek());
        console.log("Popped:", numStack.pop());
        console.log("Now top:", numStack.peek());

        // String stack
        const history = new Stack<string>();
        ["Home", "Products", "Cart", "Checkout"].forEach(p => history.push(p));
        console.log("\nBreadcrumb:", history.toArray().join(" > "));

        // groupBy with generics
        type Person = { name: string; dept: string; salary: number };
        const people: Person[] = [
          { name: "Alice", dept: "Eng",  salary: 90000 },
          { name: "Bob",   dept: "Mkt",  salary: 65000 },
          { name: "Carol", dept: "Eng",  salary: 85000 },
          { name: "Dave",  dept: "Mkt",  salary: 72000 },
        ];

        const byDept = groupBy(people, p => p.dept);
        console.log("\nBy department:");
        Object.entries(byDept).forEach(([dept, members]) => {
          console.log(`  ${dept}: ${members.map(m => m.name).join(", ")}`);
        });
      TS
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Classes and Access Modifiers</h1>
        </div>
        <p class="lc-lead">TypeScript classes have access modifiers — <code>public</code>, <code>private</code>, and <code>protected</code> — that enforce encapsulation at compile time.</p>
        <div class="lc-card">
          <h3>Access Modifiers</h3>
          <table class="lc-table">
            <thead><tr><th>Modifier</th><th>Accessible from</th></tr></thead>
            <tbody>
              <tr><td>public (default)</td><td>Anywhere</td></tr>
              <tr><td>private</td><td>Only within the class</td></tr>
              <tr><td>protected</td><td>Class and subclasses</td></tr>
              <tr><td>readonly</td><td>Can only be set in constructor</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Constructor Parameter Shorthand</h3>
          <div class="lc-code">// Long way:<br>class Person {<br>  public name: string;<br>  private age: number;<br>  constructor(name: string, age: number) {<br>    this.name = name; this.age = age;<br>  }<br>}<br><br>// Shorthand — same result!<br>class Person {<br>  constructor(public name: string, private age: number) {}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Getters and Setters</h3>
          <div class="lc-code">class BankAccount {<br>  private _balance: number = 0;<br><br>  get balance(): number { return this._balance; }<br><br>  set balance(amount: number) {<br>    if (amount &lt; 0) throw new Error("Balance cannot be negative");<br>    this._balance = amount;<br>  }<br>}</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use the constructor parameter shorthand (<code>constructor(private x: number)</code>) to reduce boilerplate — TypeScript creates the property and assignment automatically.
        </div>
      HTML
      starter_code: <<~'TS'
        class BankAccount {
          private _balance: number;
          private readonly _accountNumber: string;
          private _transactions: string[] = [];

          constructor(
            public owner: string,
            initialBalance: number = 0
          ) {
            this._balance = initialBalance;
            this._accountNumber = "ACC-" + Math.floor(Math.random() * 9000 + 1000);
          }

          get balance(): number { return this._balance; }
          get accountNumber(): string { return this._accountNumber; }

          deposit(amount: number): void {
            if (amount <= 0) throw new Error("Amount must be positive");
            this._balance += amount;
            this._transactions.push(`+$${amount.toFixed(2)}`);
          }

          withdraw(amount: number): void {
            if (amount > this._balance) throw new Error("Insufficient funds");
            this._balance -= amount;
            this._transactions.push(`-$${amount.toFixed(2)}`);
          }

          getStatement(): string {
            return [
              `Account: ${this._accountNumber}`,
              `Owner: ${this.owner}`,
              `Transactions: ${this._transactions.join(", ")}`,
              `Balance: $${this._balance.toFixed(2)}`,
            ].join("\n");
          }
        }

        const account = new BankAccount("Alice Smith", 1000);
        account.deposit(500);
        account.deposit(250);
        account.withdraw(200);
        account.withdraw(75);

        console.log(account.getStatement());
        console.log(`\nFinal balance: $${account.balance.toFixed(2)}`);

        // account._balance = 1000000;  // ❌ Error: private property
        // account._accountNumber = "x"; // ❌ Error: readonly
      TS
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Inheritance and Abstract Classes</h1>
        </div>
        <p class="lc-lead">TypeScript classes support full inheritance. Abstract classes define a template — they can't be instantiated directly and force subclasses to implement abstract methods.</p>
        <div class="lc-card">
          <h3>extends and super</h3>
          <div class="lc-code">class Animal {<br>  constructor(public name: string) {}<br>  speak(): string { return `${this.name} makes a sound`; }<br>}<br><br>class Dog extends Animal {<br>  speak(): string { return `${this.name} barks`; } // override<br>  fetch(): string { return `${this.name} fetches!`; } // new method<br>}<br><br>const d = new Dog("Rex");<br>d.speak();   // "Rex barks"<br>d.fetch();   // "Rex fetches!"</div>
        </div>
        <div class="lc-card">
          <h3>Abstract Classes</h3>
          <div class="lc-code">abstract class Shape {<br>  abstract area(): number;     // Must implement<br>  abstract perimeter(): number; // Must implement<br><br>  describe(): string {          // Concrete method<br>    return `Area: ${this.area().toFixed(2)}`;<br>  }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>super() calls</h3>
          <div class="lc-code">class Manager extends Employee {<br>  constructor(name: string, dept: string, public reports: number) {<br>    super(name, dept);  // Must call super() first<br>  }<br>}</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Abstract classes are perfect for defining a "template method" pattern — provide the structure in the abstract class, let subclasses fill in the details.
        </div>
      HTML
      starter_code: <<~'TS'
        abstract class Vehicle {
          constructor(
            public make: string,
            public model: string,
            protected fuelLevel: number = 100
          ) {}

          abstract fuelEfficiency(): number;  // km per litre

          get range(): number {
            return this.fuelLevel * this.fuelEfficiency();
          }

          refuel(litres: number): void {
            this.fuelLevel = Math.min(100, this.fuelLevel + litres);
          }

          drive(km: number): string {
            const litresNeeded = km / this.fuelEfficiency();
            if (litresNeeded > this.fuelLevel) {
              return `❌ Not enough fuel! Need ${litresNeeded.toFixed(1)}L, have ${this.fuelLevel}L`;
            }
            this.fuelLevel -= litresNeeded;
            return `✅ Drove ${km}km. Fuel remaining: ${this.fuelLevel.toFixed(1)}L`;
          }

          toString(): string {
            return `${this.make} ${this.model} (fuel: ${this.fuelLevel.toFixed(1)}L, range: ${this.range.toFixed(0)}km)`;
          }
        }

        class Sedan extends Vehicle {
          fuelEfficiency(): number { return 15; }  // 15 km/L
        }

        class Truck extends Vehicle {
          constructor(make: string, model: string, public payload: number) {
            super(make, model, 150);  // larger tank
          }
          fuelEfficiency(): number { return 8; }   // 8 km/L
        }

        class ElectricCar extends Vehicle {
          fuelEfficiency(): number { return 6; }   // km per kWh
          // Override drive to use "kWh" terminology
          drive(km: number): string {
            return super.drive(km).replace("fuel", "charge");
          }
        }

        const fleet: Vehicle[] = [
          new Sedan("Toyota", "Camry"),
          new Truck("Ford", "F-150", 1000),
          new ElectricCar("Tesla", "Model 3"),
        ];

        console.log("=== Fleet Status ===");
        fleet.forEach(v => console.log(v.toString()));

        console.log("\n=== Driving 200km ===");
        fleet.forEach(v => console.log(`${v.model}: ${v.drive(200)}`));
      TS
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Enums</h1>
        </div>
        <p class="lc-lead">Enums define a set of named constants. TypeScript supports numeric enums (auto-incrementing values) and string enums (explicit string values).</p>
        <div class="lc-card">
          <h3>Numeric Enums</h3>
          <div class="lc-code">enum Direction { Up, Down, Left, Right }  // 0, 1, 2, 3<br>enum Status   { Active = 1, Inactive = 2, Pending = 3 }<br><br>let dir: Direction = Direction.Up;   // dir === 0<br>Direction[0]  // "Up" — reverse mapping</div>
        </div>
        <div class="lc-card">
          <h3>String Enums (preferred)</h3>
          <div class="lc-code">enum Color {<br>  Red    = "RED",<br>  Green  = "GREEN",<br>  Blue   = "BLUE",<br>}<br><br>// String enums are safer and more debuggable<br>console.log(Color.Red);  // "RED"</div>
        </div>
        <div class="lc-card">
          <h3>const enum — Inlined at Compile Time</h3>
          <div class="lc-code">const enum Size { Small, Medium, Large }<br>// Compiles to just the numbers — no runtime object</div>
        </div>
        <div class="lc-card">
          <h3>Enum as Function Parameter</h3>
          <div class="lc-code">function setTheme(theme: Theme): void {<br>  // Only valid Theme values accepted<br>  document.body.className = theme;<br>}<br>setTheme(Theme.Dark);     // ✅<br>setTheme("dark");         // ❌ Error</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefer string enums over numeric enums — string values are self-documenting and much easier to debug (you see "RED" instead of 0 in logs).
        </div>
      HTML
      starter_code: <<~'TS'
        enum OrderStatus {
          Pending   = "PENDING",
          Confirmed = "CONFIRMED",
          Shipped   = "SHIPPED",
          Delivered = "DELIVERED",
          Cancelled = "CANCELLED",
        }

        enum Priority {
          Low    = "LOW",
          Medium = "MEDIUM",
          High   = "HIGH",
          Urgent = "URGENT",
        }

        type Order = {
          id: number;
          customer: string;
          status: OrderStatus;
          priority: Priority;
          total: number;
        };

        function canCancel(order: Order): boolean {
          return order.status === OrderStatus.Pending ||
                 order.status === OrderStatus.Confirmed;
        }

        function nextStatus(status: OrderStatus): OrderStatus | null {
          const flow: Partial<Record<OrderStatus, OrderStatus>> = {
            [OrderStatus.Pending]:   OrderStatus.Confirmed,
            [OrderStatus.Confirmed]: OrderStatus.Shipped,
            [OrderStatus.Shipped]:   OrderStatus.Delivered,
          };
          return flow[status] ?? null;
        }

        const orders: Order[] = [
          { id: 1, customer: "Alice", status: OrderStatus.Pending,   priority: Priority.High,   total: 129.99 },
          { id: 2, customer: "Bob",   status: OrderStatus.Shipped,   priority: Priority.Medium, total: 45.00  },
          { id: 3, customer: "Carol", status: OrderStatus.Confirmed, priority: Priority.Urgent, total: 890.00 },
        ];

        console.log("=== Order Management ===");
        orders.forEach(order => {
          const next = nextStatus(order.status);
          console.log(`Order #${order.id} (${order.customer}) - ${order.status} [${order.priority}]`);
          console.log(`  Total: $${order.total} | Can cancel: ${canCancel(order)} | Next: ${next ?? "final"}`);
        });
      TS
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Utility Types</h1>
        </div>
        <p class="lc-lead">TypeScript ships with built-in utility types that transform existing types — creating partial versions, picking specific fields, or making properties optional or required.</p>
        <div class="lc-card">
          <h3>Most Used Utility Types</h3>
          <table class="lc-table">
            <thead><tr><th>Utility</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>Partial&lt;T&gt;</td><td>All properties become optional</td></tr>
              <tr><td>Required&lt;T&gt;</td><td>All properties become required</td></tr>
              <tr><td>Readonly&lt;T&gt;</td><td>All properties become readonly</td></tr>
              <tr><td>Pick&lt;T, K&gt;</td><td>Keep only specified properties</td></tr>
              <tr><td>Omit&lt;T, K&gt;</td><td>Remove specified properties</td></tr>
              <tr><td>Record&lt;K, V&gt;</td><td>Object with keys K and values V</td></tr>
              <tr><td>Exclude&lt;T, U&gt;</td><td>Remove types from union</td></tr>
              <tr><td>ReturnType&lt;F&gt;</td><td>Get return type of a function</td></tr>
              <tr><td>NonNullable&lt;T&gt;</td><td>Remove null and undefined</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Examples</h3>
          <div class="lc-code">type User = { id: number; name: string; email: string; role: string };<br><br>type UpdateUser  = Partial&lt;User&gt;;          // All optional<br>type PublicUser  = Omit&lt;User, "email"&gt;;    // No email<br>type UserPreview = Pick&lt;User, "id"|"name"&gt;; // Only id+name<br>type UserMap     = Record&lt;string, User&gt;;    // Object of users</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Utility types are especially useful for API patterns — <code>Partial&lt;T&gt;</code> for PATCH requests, <code>Omit&lt;T, "id"&gt;</code> for create forms, <code>Readonly&lt;T&gt;</code> for frozen state.
        </div>
      HTML
      starter_code: <<~'TS'
        type User = {
          id: number;
          name: string;
          email: string;
          role: "admin" | "user" | "guest";
          createdAt: string;
        };

        // Derive types from User using utility types
        type CreateUser  = Omit<User, "id" | "createdAt">;
        type UpdateUser  = Partial<Omit<User, "id">>;
        type PublicUser  = Pick<User, "id" | "name" | "role">;
        type UserRecord  = Record<string, User>;

        function createUser(data: CreateUser): User {
          return {
            ...data,
            id: Math.floor(Math.random() * 10000),
            createdAt: new Date().toISOString().slice(0, 10),
          };
        }

        function updateUser(user: User, updates: UpdateUser): User {
          return { ...user, ...updates };
        }

        function toPublic(user: User): PublicUser {
          return { id: user.id, name: user.name, role: user.role };
        }

        // Demo
        const alice = createUser({ name: "Alice", email: "alice@ex.com", role: "admin" });
        const bob   = createUser({ name: "Bob",   email: "bob@ex.com",   role: "user" });

        console.log("Created users:");
        console.log(` Alice:`, JSON.stringify(alice));
        console.log(` Bob:  `, JSON.stringify(bob));

        const updated = updateUser(alice, { role: "user", email: "alice2@ex.com" });
        console.log("\nUpdated Alice:", JSON.stringify(updated));

        const publicUsers: PublicUser[] = [alice, bob, updated].map(toPublic);
        console.log("\nPublic profiles:");
        publicUsers.forEach(u => console.log(` [${u.id}] ${u.name} (${u.role})`));
      TS
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Mapped Types and Conditional Types</h1>
        </div>
        <p class="lc-lead">Mapped types transform every property in a type. Conditional types choose a type based on a condition — together they enable powerful type-level programming.</p>
        <div class="lc-card">
          <h3>Mapped Types</h3>
          <div class="lc-code">// Make all properties optional (like Partial)<br>type Optional&lt;T&gt; = { [K in keyof T]?: T[K] };<br><br>// Make all properties strings<br>type Stringify&lt;T&gt; = { [K in keyof T]: string };<br><br>// Add readonly to all properties<br>type Immutable&lt;T&gt; = { readonly [K in keyof T]: T[K] };</div>
        </div>
        <div class="lc-card">
          <h3>Conditional Types</h3>
          <div class="lc-code">// T extends string ? "yes" : "no"<br>type IsString&lt;T&gt; = T extends string ? true : false;<br><br>type A = IsString&lt;string&gt;;  // true<br>type B = IsString&lt;number&gt;;  // false<br><br>// Extract array element type<br>type Unwrap&lt;T&gt; = T extends Array&lt;infer U&gt; ? U : T;<br>type X = Unwrap&lt;string[]&gt;;  // string<br>type Y = Unwrap&lt;number&gt;;    // number</div>
        </div>
        <div class="lc-card">
          <h3>Template Literal Types</h3>
          <div class="lc-code">type EventName = "click" | "focus" | "blur";<br>type HandlerName = `on${Capitalize&lt;EventName&gt;}`;<br>// "onClick" | "onFocus" | "onBlur"</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> You've already been using mapped types! TypeScript's <code>Partial</code>, <code>Readonly</code>, and <code>Required</code> are all built with mapped types under the hood.
        </div>
      HTML
      starter_code: <<~'TS'
        // Custom mapped types
        type Nullable<T> = { [K in keyof T]: T[K] | null };
        type Flags<T>    = { [K in keyof T]: boolean };
        type Labels<T>   = { [K in keyof T]: string };

        type Config = {
          apiUrl: string;
          timeout: number;
          retries: number;
          debug: boolean;
        };

        // All of these are derived from Config automatically
        type OptionalConfig  = Partial<Config>;
        type FrozenConfig    = Readonly<Config>;
        type ConfigEnabled   = Flags<Config>;     // which fields are enabled
        type ConfigLabels    = Labels<Config>;    // human-readable labels

        const config: Config = {
          apiUrl: "https://api.example.com",
          timeout: 5000,
          retries: 3,
          debug: false,
        };

        const labels: ConfigLabels = {
          apiUrl: "API URL",
          timeout: "Timeout (ms)",
          retries: "Max Retries",
          debug: "Debug Mode",
        };

        console.log("=== Configuration ===");
        (Object.keys(config) as Array<keyof Config>).forEach(key => {
          console.log(`  ${labels[key].padEnd(15)}: ${config[key]}`);
        });

        // Template literal types in action
        type HttpMethod = "get" | "post" | "put" | "delete";
        type Endpoint = `/${string}`;
        type ApiRoute = `${HttpMethod}:${Endpoint}`;

        function registerRoute(route: ApiRoute, handler: string): void {
          console.log(`Registered: ${route} → ${handler}`);
        }

        console.log("\n=== API Routes ===");
        registerRoute("get:/users", "UserController.list");
        registerRoute("post:/users", "UserController.create");
        registerRoute("delete:/users", "UserController.remove");
      TS
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Async TypeScript</h1>
        </div>
        <p class="lc-lead">TypeScript fully types Promises and async/await. The return type <code>Promise&lt;T&gt;</code> tells you exactly what the promise resolves to.</p>
        <div class="lc-card">
          <h3>Typed Promises</h3>
          <div class="lc-code">async function fetchUser(id: number): Promise&lt;User&gt; {<br>  const res = await fetch(`/api/users/${id}`);<br>  return res.json() as Promise&lt;User&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Error Handling</h3>
          <div class="lc-code">async function safeGet&lt;T&gt;(url: string): Promise&lt;T | null&gt; {<br>  try {<br>    const res = await fetch(url);<br>    if (!res.ok) throw new Error(res.statusText);<br>    return res.json();<br>  } catch {<br>    return null;<br>  }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Promise.all with Types</h3>
          <div class="lc-code">const [users, posts]: [User[], Post[]] = await Promise.all([<br>  fetchUsers(),   // Promise&lt;User[]&gt;<br>  fetchPosts(),   // Promise&lt;Post[]&gt;<br>]);</div>
        </div>
        <div class="lc-card">
          <h3>Async Generators</h3>
          <div class="lc-code">async function* paginate&lt;T&gt;(url: string): AsyncGenerator&lt;T[]&gt; {<br>  let page = 1;<br>  while (true) {<br>    const data = await fetch(`${url}?page=${page++}`).then(r =&gt; r.json());<br>    if (!data.length) break;<br>    yield data;<br>  }<br>}</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always annotate your async function return types — it documents what you expect and lets TypeScript catch type mismatches when you use the result.
        </div>
      HTML
      starter_code: <<~'TS'
        // Simulate typed async operations

        type ApiResponse<T> = {
          data: T;
          status: number;
          message: string;
        };

        type Product = { id: number; name: string; price: number; inStock: boolean };
        type Order   = { id: number; product: Product; quantity: number; total: number };

        // Simulated async fetch (no real network — just timing)
        async function fetchProducts(): Promise<Product[]> {
          await new Promise(r => setTimeout(r, 10));
          return [
            { id: 1, name: "Widget",     price: 29.99, inStock: true  },
            { id: 2, name: "Gadget",     price: 49.99, inStock: false },
            { id: 3, name: "Doohickey",  price:  9.99, inStock: true  },
          ];
        }

        async function createOrder(productId: number, qty: number): Promise<ApiResponse<Order>> {
          const products = await fetchProducts();
          const product  = products.find(p => p.id === productId);
          if (!product) return { data: null as any, status: 404, message: "Product not found" };
          if (!product.inStock) return { data: null as any, status: 400, message: "Out of stock" };

          const order: Order = {
            id: Date.now(),
            product,
            quantity: qty,
            total: product.price * qty,
          };
          return { data: order, status: 201, message: "Order created" };
        }

        async function main(): Promise<void> {
          console.log("=== Product Catalog ===");
          const products = await fetchProducts();
          products.forEach(p => {
            console.log(`  ${p.name.padEnd(12)} $${p.price} ${p.inStock ? "✅" : "❌"}`);
          });

          console.log("\n=== Creating Orders ===");
          const orderRequests = [
            createOrder(1, 3),   // Widget × 3
            createOrder(2, 1),   // Gadget (out of stock)
            createOrder(99, 1),  // Non-existent product
          ];

          const results = await Promise.all(orderRequests);
          results.forEach(res => {
            if (res.status === 201) {
              console.log(`✅ ${res.message}: ${res.data.product.name} × ${res.data.quantity} = $${res.data.total.toFixed(2)}`);
            } else {
              console.log(`❌ ${res.status}: ${res.message}`);
            }
          });
        }

        main();
      TS
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Declaration Files and Modules</h1>
        </div>
        <p class="lc-lead">TypeScript uses declaration files (<code>.d.ts</code>) to describe the types of JavaScript libraries. Modules let you organise code into separate files.</p>
        <div class="lc-card">
          <h3>ES Modules in TypeScript</h3>
          <div class="lc-code">// math.ts — named exports<br>export function add(a: number, b: number): number { return a + b; }<br>export type MathOp = (a: number, b: number) =&gt; number;<br><br>// app.ts — import<br>import { add, MathOp } from "./math";<br>import type { MathOp } from "./math";  // type-only import</div>
        </div>
        <div class="lc-card">
          <h3>Declaration Files (.d.ts)</h3>
          <div class="lc-code">// types.d.ts — describe a JS library<br>declare function greet(name: string): string;<br>declare const VERSION: string;<br>declare module "my-lib" {<br>  export function process(data: unknown): void;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>DefinitelyTyped (@types/)</h3>
          <div class="lc-code">// Install types for libraries without built-in types<br>npm install --save-dev @types/node<br>npm install --save-dev @types/lodash<br><br>// Then TypeScript knows the types<br>import _ from "lodash";<br>_.chunk([1,2,3,4], 2);  // ✅ Type-safe</div>
        </div>
        <div class="lc-card">
          <h3>Type-only Imports</h3>
          <div class="lc-code">// import type ensures it's erased at compile time<br>import type { User } from "./types";<br>// The User type is used only for type checking, never in JS output</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When a library doesn't have types built-in, check if <code>@types/package-name</code> exists on npm — the TypeScript community maintains types for thousands of popular libraries.
        </div>
      HTML
      starter_code: <<~'TS'
        // Simulate a module system with namespaces

        // "math" module
        namespace MathUtils {
          export type BinaryOp = (a: number, b: number) => number;

          export const add:      BinaryOp = (a, b) => a + b;
          export const subtract: BinaryOp = (a, b) => a - b;
          export const multiply: BinaryOp = (a, b) => a * b;
          export const divide:   BinaryOp = (a, b) => b !== 0 ? a / b : NaN;

          export function clamp(value: number, min: number, max: number): number {
            return Math.min(Math.max(value, min), max);
          }

          export function lerp(start: number, end: number, t: number): number {
            return start + (end - start) * clamp(t, 0, 1);
          }
        }

        // "string" module
        namespace StringUtils {
          export function capitalize(s: string): string {
            return s.charAt(0).toUpperCase() + s.slice(1).toLowerCase();
          }

          export function titleCase(s: string): string {
            return s.split(" ").map(capitalize).join(" ");
          }

          export function truncate(s: string, max: number): string {
            return s.length <= max ? s : s.slice(0, max - 3) + "...";
          }
        }

        // Use the modules
        const ops: MathUtils.BinaryOp[] = [
          MathUtils.add, MathUtils.subtract, MathUtils.multiply, MathUtils.divide
        ];
        const names = ["+", "-", "×", "÷"];

        console.log("=== Math Module ===");
        ops.forEach((op, i) => {
          console.log(`10 ${names[i]} 3 = ${op(10, 3)}`);
        });

        console.log(`\nclamp(15, 0, 10) = ${MathUtils.clamp(15, 0, 10)}`);
        console.log(`lerp(0, 100, 0.7) = ${MathUtils.lerp(0, 100, 0.7)}`);

        console.log("\n=== String Module ===");
        const phrases = ["hello world", "TYPESCRIPT IS AWESOME", "type safety matters"];
        phrases.forEach(p => {
          console.log(`"${StringUtils.truncate(StringUtils.titleCase(p), 25)}"`);
        });
      TS
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">Advanced Type Patterns</h1>
        </div>
        <p class="lc-lead">These advanced patterns are used in professional TypeScript codebases — builder patterns, type-safe event systems, and the satisfies operator.</p>
        <div class="lc-card">
          <h3>Literal Types and const</h3>
          <div class="lc-code">type Direction = "north" | "south" | "east" | "west";<br>type Status    = 200 | 201 | 400 | 404 | 500;<br><br>// const assertion — infer literal types<br>const config = { theme: "dark", lang: "en" } as const;<br>// type: { readonly theme: "dark"; readonly lang: "en" }</div>
        </div>
        <div class="lc-card">
          <h3>satisfies Operator (TS 4.9+)</h3>
          <div class="lc-code">// Validates type without widening<br>const palette = {<br>  red: "#ff0000",<br>  green: "#00ff00",<br>} satisfies Record&lt;string, string&gt;;<br><br>palette.red.toUpperCase();  // ✅ Still knows it's a string</div>
        </div>
        <div class="lc-card">
          <h3>Builder Pattern with Types</h3>
          <div class="lc-code">class QueryBuilder&lt;T&gt; {<br>  private filters: Partial&lt;T&gt; = {};<br>  where(key: keyof T, value: T[keyof T]): this {<br>    this.filters[key] = value; return this;<br>  }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Assertion Functions</h3>
          <div class="lc-code">function assertDefined&lt;T&gt;(val: T | null | undefined): asserts val is T {<br>  if (val == null) throw new Error("Expected non-null value");<br>}<br>// After call, TypeScript knows val is T (non-null)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>as const</code> is one of the most useful TypeScript features — it locks object literal values to their exact types, enabling exhaustive pattern matching.
        </div>
      HTML
      starter_code: <<~'TS'
        // Literal types and const assertions
        const HTTP_STATUS = {
          OK:           200,
          CREATED:      201,
          BAD_REQUEST:  400,
          NOT_FOUND:    404,
          SERVER_ERROR: 500,
        } as const;

        type StatusCode = typeof HTTP_STATUS[keyof typeof HTTP_STATUS];

        function getStatusMessage(code: StatusCode): string {
          const messages: Record<StatusCode, string> = {
            200: "OK",
            201: "Created",
            400: "Bad Request",
            404: "Not Found",
            500: "Internal Server Error",
          };
          return messages[code];
        }

        // Type-safe event system
        type EventMap = {
          "user:login":  { userId: string; timestamp: number };
          "user:logout": { userId: string };
          "order:create":{ orderId: number; amount: number };
        };

        class TypedEventEmitter<Events extends Record<string, any>> {
          private listeners = new Map<keyof Events, Function[]>();

          on<K extends keyof Events>(event: K, handler: (data: Events[K]) => void): this {
            const existing = this.listeners.get(event) || [];
            this.listeners.set(event, [...existing, handler]);
            return this;
          }

          emit<K extends keyof Events>(event: K, data: Events[K]): void {
            (this.listeners.get(event) || []).forEach(h => h(data));
          }
        }

        // Usage
        console.log("=== HTTP Status Codes ===");
        ([200, 201, 400, 404, 500] as StatusCode[]).forEach(code => {
          console.log(`  ${code}: ${getStatusMessage(code)}`);
        });

        const emitter = new TypedEventEmitter<EventMap>();

        emitter
          .on("user:login",   e => console.log(`\nUser ${e.userId} logged in at ${new Date(e.timestamp).toISOString()}`))
          .on("order:create", e => console.log(`Order #${e.orderId} created for $${e.amount}`))
          .on("user:logout",  e => console.log(`User ${e.userId} logged out`));

        emitter.emit("user:login",   { userId: "alice", timestamp: Date.now() });
        emitter.emit("order:create", { orderId: 1001, amount: 99.99 });
        emitter.emit("user:logout",  { userId: "alice" });
      TS
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">TypeScript with React</h1>
        </div>
        <p class="lc-lead">TypeScript and React are a perfect pair. Typed props catch component API misuse at compile time — no more runtime errors from passing the wrong prop type.</p>
        <div class="lc-card">
          <h3>Typing Props</h3>
          <div class="lc-code">type ButtonProps = {<br>  label: string;<br>  onClick: () =&gt; void;<br>  variant?: "primary" | "secondary" | "danger";<br>  disabled?: boolean;<br>};<br><br>function Button({ label, onClick, variant = "primary", disabled = false }: ButtonProps) {<br>  return &lt;button className={`btn btn-${variant}`} onClick={onClick} disabled={disabled}&gt;{label}&lt;/button&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>React.FC and Generic Components</h3>
          <div class="lc-code">type ListProps&lt;T&gt; = {<br>  items: T[];<br>  renderItem: (item: T) =&gt; React.ReactNode;<br>  keyExtractor: (item: T) =&gt; string;<br>};<br><br>function List&lt;T&gt;({ items, renderItem, keyExtractor }: ListProps&lt;T&gt;) {<br>  return &lt;ul&gt;{items.map(item =&gt; &lt;li key={keyExtractor(item)}&gt;{renderItem(item)}&lt;/li&gt;)}&lt;/ul&gt;;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Typed Hooks</h3>
          <div class="lc-code">const [count, setCount] = useState&lt;number&gt;(0);<br>const [user, setUser]   = useState&lt;User | null&gt;(null);<br><br>const inputRef = useRef&lt;HTMLInputElement&gt;(null);<br>inputRef.current?.focus();</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In real projects, use <code>create-react-app --template typescript</code> or <code>Vite</code> with the TypeScript template to get a fully configured TypeScript + React project.
        </div>
      HTML
      starter_code: <<~'TS'
        // TypeScript React patterns (logic only — no JSX in simulator)

        type ButtonVariant = "primary" | "secondary" | "danger" | "success";
        type ButtonSize    = "sm" | "md" | "lg";

        type ButtonProps = {
          label: string;
          variant?: ButtonVariant;
          size?: ButtonSize;
          disabled?: boolean;
          onClick?: () => void;
        };

        // Component logic
        function createButtonClass({ variant = "primary", size = "md" }: ButtonProps): string {
          return `btn btn-${variant} btn-${size}`;
        }

        // Generic List component logic
        type ListProps<T> = {
          items: T[];
          renderItem: (item: T) => string;
          keyExtractor: (item: T, index: number) => string;
        };

        function renderList<T>({ items, renderItem, keyExtractor }: ListProps<T>): string[] {
          return items.map((item, i) => `[${keyExtractor(item, i)}] ${renderItem(item)}`);
        }

        // Typed state management
        type State<T> = {
          data: T | null;
          loading: boolean;
          error: string | null;
        };

        function createInitialState<T>(): State<T> {
          return { data: null, loading: false, error: null };
        }

        // Demo
        const buttonConfigs: ButtonProps[] = [
          { label: "Save",   variant: "primary",   size: "md" },
          { label: "Cancel", variant: "secondary", size: "sm" },
          { label: "Delete", variant: "danger",    size: "sm", disabled: true },
        ];

        console.log("=== Button Classes ===");
        buttonConfigs.forEach(b => {
          console.log(`  "${b.label}" → class="${createButtonClass(b)}"${b.disabled ? " [disabled]" : ""}`);
        });

        type User = { id: number; name: string; role: string };
        const users: User[] = [
          { id: 1, name: "Alice", role: "admin" },
          { id: 2, name: "Bob",   role: "user"  },
          { id: 3, name: "Carol", role: "user"  },
        ];

        console.log("\n=== User List ===");
        const rows = renderList<User>({
          items: users,
          renderItem: u => `${u.name} (${u.role})`,
          keyExtractor: u => String(u.id),
        });
        rows.forEach(r => console.log(" ", r));

        const userState = createInitialState<User[]>();
        console.log("\n=== Initial State ===");
        console.log(JSON.stringify(userState, null, 2));
      TS
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">TypeScript Configuration and Strict Mode</h1>
        </div>
        <p class="lc-lead">TypeScript's behaviour is controlled by <code>tsconfig.json</code>. Strict mode enables the most powerful type checks — catching null errors, unsafe any, and more.</p>
        <div class="lc-card">
          <h3>tsconfig.json</h3>
          <div class="lc-code">{<br>  "compilerOptions": {<br>    "target": "ES2020",         // Output JS version<br>    "module": "ESNext",         // Module system<br>    "strict": true,             // All strict checks on<br>    "noImplicitAny": true,      // No implicit any types<br>    "strictNullChecks": true,   // null ≠ undefined ≠ T<br>    "noUnusedLocals": true,     // Error on unused vars<br>    "exactOptionalPropertyTypes": true<br>  }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Strict Mode Benefits</h3>
          <ul class="lc-list">
            <li><code>strictNullChecks</code> — catches "Cannot read property of undefined" errors</li>
            <li><code>noImplicitAny</code> — forces you to annotate types</li>
            <li><code>strictFunctionTypes</code> — safer function parameter checking</li>
            <li><code>noImplicitThis</code> — prevents <code>this</code> confusion in functions</li>
            <li><code>strictPropertyInitialization</code> — ensures class properties are initialised</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Path Aliases</h3>
          <div class="lc-code">"paths": {<br>  "@components/*": ["src/components/*"],<br>  "@utils/*":      ["src/utils/*"]<br>}<br>// import Button from "@components/Button";</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always start new projects with <code>"strict": true</code> — it's much easier than adding it later. Enabling strict mode on an existing JS project? Do it incrementally, file by file.
        </div>
      HTML
      starter_code: <<~'TS'
        // Demonstrating strict mode patterns

        // strictNullChecks — null safety
        type MaybeUser = { name: string; age: number } | null;

        function greetUser(user: MaybeUser): string {
          if (user === null) return "Hello, guest!";
          // TypeScript knows user is non-null here
          return `Hello, ${user.name}! You are ${user.age} years old.`;
        }

        // Optional chaining — the ?. operator
        type Company = {
          name: string;
          ceo?: { name: string; email?: string };
        };

        function getCeoEmail(company: Company): string {
          return company.ceo?.email ?? "No CEO email on file";
        }

        // Nullish coalescing — ?? operator
        function getDisplayName(name: string | null | undefined): string {
          return name ?? "Anonymous";
        }

        // Non-null assertion (! — use sparingly)
        function processElement(id: string): string {
          const element = { textContent: "Hello World" };  // simulated DOM
          return element!.textContent ?? "";
        }

        // Demo
        console.log("=== Null Safety ===");
        console.log(greetUser({ name: "Alice", age: 28 }));
        console.log(greetUser(null));

        const companies: Company[] = [
          { name: "Acme Corp",   ceo: { name: "Alice", email: "alice@acme.com" } },
          { name: "Tech Startup", ceo: { name: "Bob" } },
          { name: "Shell LLC" },
        ];

        console.log("\n=== Optional Chaining ===");
        companies.forEach(c => console.log(`  ${c.name}: ${getCeoEmail(c)}`));

        console.log("\n=== Nullish Coalescing ===");
        [null, undefined, "", "Alice", "Bob"].forEach(name => {
          console.log(`  ${JSON.stringify(name)} → "${getDisplayName(name as string | null | undefined)}"`);
        });
      TS
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-typescript">TypeScript</div>
          <h1 class="lc-title">TypeScript Review — Full Application</h1>
        </div>
        <p class="lc-lead">You've completed the TypeScript course! Build a type-safe mini-application combining everything — interfaces, generics, union types, utility types, classes, and async.</p>
        <div class="lc-card">
          <h3>Core Concepts Recap</h3>
          <table class="lc-table">
            <thead><tr><th>Concept</th><th>Key Syntax</th></tr></thead>
            <tbody>
              <tr><td>Type annotation</td><td>let x: string, function f(a: number): void</td></tr>
              <tr><td>Interfaces</td><td>interface I { prop: type; method(): type }</td></tr>
              <tr><td>Type aliases</td><td>type T = string | number</td></tr>
              <tr><td>Generics</td><td>function f&lt;T&gt;(arg: T): T</td></tr>
              <tr><td>Union types</td><td>string | number | null</td></tr>
              <tr><td>Intersection</td><td>TypeA &amp; TypeB</td></tr>
              <tr><td>Utility types</td><td>Partial, Omit, Pick, Record, Readonly</td></tr>
              <tr><td>Classes</td><td>public/private/protected, abstract, readonly</td></tr>
              <tr><td>Enums</td><td>enum Status { Active = "ACTIVE" }</td></tr>
              <tr><td>Narrowing</td><td>typeof, instanceof, in, discriminant</td></tr>
              <tr><td>Async</td><td>async fn(): Promise&lt;T&gt;</td></tr>
              <tr><td>satisfies</td><td>obj satisfies Type</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next Steps:</strong> Set up a real TypeScript project with <code>tsc --init</code>, explore TypeScript with Node.js (<code>ts-node</code>), and try TypeScript with React (Vite + TS template).
        </div>
      HTML
      starter_code: <<~'TS'
        // TypeScript Review: Type-safe task management system

        enum Priority { Low = "LOW", Medium = "MEDIUM", High = "HIGH" }
        enum Status   { Todo = "TODO", InProgress = "IN_PROGRESS", Done = "DONE" }

        interface Timestamped { createdAt: string; updatedAt: string }

        type Task = Timestamped & {
          id: number;
          title: string;
          description?: string;
          priority: Priority;
          status: Status;
          assignee?: string;
          tags: string[];
        };

        type CreateTask = Omit<Task, "id" | "createdAt" | "updatedAt" | "status">;
        type UpdateTask = Partial<Omit<Task, "id" | "createdAt">>;

        class TaskManager {
          private tasks: Task[] = [];
          private nextId = 1;

          create(data: CreateTask): Task {
            const task: Task = {
              ...data,
              id: this.nextId++,
              status: Status.Todo,
              createdAt: new Date().toISOString().slice(0, 10),
              updatedAt: new Date().toISOString().slice(0, 10),
            };
            this.tasks.push(task);
            return task;
          }

          update(id: number, changes: UpdateTask): Task | null {
            const idx = this.tasks.findIndex(t => t.id === id);
            if (idx === -1) return null;
            this.tasks[idx] = { ...this.tasks[idx], ...changes, updatedAt: new Date().toISOString().slice(0,10) };
            return this.tasks[idx];
          }

          filter<K extends keyof Task>(key: K, value: Task[K]): Task[] {
            return this.tasks.filter(t => t[key] === value);
          }

          groupByStatus(): Record<Status, Task[]> {
            return this.tasks.reduce((acc, task) => {
              acc[task.status] = [...(acc[task.status] || []), task];
              return acc;
            }, {} as Record<Status, Task[]>);
          }

          stats(): { total: number; byStatus: Record<Status, number>; byPriority: Record<Priority, number> } {
            const byStatus   = {} as Record<Status, number>;
            const byPriority = {} as Record<Priority, number>;
            this.tasks.forEach(t => {
              byStatus[t.status]     = (byStatus[t.status]     || 0) + 1;
              byPriority[t.priority] = (byPriority[t.priority] || 0) + 1;
            });
            return { total: this.tasks.length, byStatus, byPriority };
          }
        }

        const tm = new TaskManager();

        tm.create({ title: "Set up TypeScript",   priority: Priority.High,   assignee: "Alice", tags: ["setup", "config"] });
        tm.create({ title: "Write unit tests",    priority: Priority.Medium, assignee: "Bob",   tags: ["testing"] });
        tm.create({ title: "Deploy to staging",   priority: Priority.High,   assignee: "Alice", tags: ["devops"] });
        tm.create({ title: "Update docs",         priority: Priority.Low,    tags: ["docs"] });
        tm.create({ title: "Code review",         priority: Priority.Medium, assignee: "Carol", tags: ["review"] });

        tm.update(1, { status: Status.Done });
        tm.update(2, { status: Status.InProgress });
        tm.update(3, { status: Status.InProgress });

        console.log("=== Task Management System ===");
        const grouped = tm.groupByStatus();
        Object.entries(grouped).forEach(([status, tasks]) => {
          if (!tasks.length) return;
          console.log(`\n${status} (${tasks.length}):`);
          tasks.forEach(t => {
            const who = t.assignee ? ` → ${t.assignee}` : "";
            console.log(`  [${t.priority}] ${t.title}${who}`);
          });
        });

        const stats = tm.stats();
        console.log(`\n=== Stats ===`);
        console.log(`Total: ${stats.total}`);
        Object.entries(stats.byPriority).forEach(([p, n]) => console.log(`  ${p}: ${n}`));
      TS
    }
  }
end

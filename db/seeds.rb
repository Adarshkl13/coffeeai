# Idempotent seeds — safe to run multiple times

# ── Admin user ───────────────────────────────────────────────────
# Set ADMIN_EMAIL and ADMIN_PASSWORD (12+ characters) on the server. Production never falls back to a
# built-in password; development keeps the local test admin.
admin_email = ENV["ADMIN_EMAIL"].presence || (Rails.env.production? ? nil : "admin@aiacademy.com")
admin_password = ENV["ADMIN_PASSWORD"].presence || (Rails.env.production? ? nil : "admin1234")
if admin_email && admin_password
  abort "ADMIN_PASSWORD must be at least 12 characters." if Rails.env.production? && admin_password.length < 12
  admin = User.find_or_create_by!(email: admin_email) do |u|
    u.password = admin_password
    u.admin    = true
  end
  admin.update!(admin: true) unless admin.admin?
  puts "Admin: #{admin.email}"
else
  puts "Admin: skipped (set ADMIN_EMAIL and ADMIN_PASSWORD to create one)"
end

# ── Course seed data ─────────────────────────────────────────────
COURSE_SEED = [
  {
    title: "HTML & CSS", slug: "html-css", color: "#f97316", icon: "🌐",
    position: 1, published: true,
    description: "Learn the building blocks of the web. HTML gives structure to web pages. CSS makes them look good. This is a great place to start web development.",
    lessons: [
      { title: "Introduction to HTML", desc: "HTML describes the structure and meaning of a web page. CSS styles the page, and JavaScript adds behaviour. Learn how an element is built, how to nest elements correctly, what void elements are and the standard page boilerplate.",
        ex_type: "multiple_choice", question: "Which snippet is nested correctly?",
        opts: ["A) <p><em>Hot chai</p></em>", "B) <em><p>Hot chai</em></p>", "C) <p><em>Hot chai</em></p>"], ans: "C" },
      { title: "Text Content and Formatting", desc: "Use headings to outline the page. Use paragraphs and line breaks the right way. Pick text elements by meaning, such as strong, em, mark and code. Show special characters such as < and ₹ with character entities.",
        ex_type: "true_false", question: "You type five spaces between two words in your HTML source. The page shows five spaces between them.",
        opts: ["True", "False"], ans: "False" },
      { title: "Links and Images", desc: "Link to other pages, page sections, email and phone. Use the right kind of path. Add images with useful alt text, width and height. Use lazy loading, captions and modern formats.",
        ex_type: "multiple_choice", question: "An image is only for decoration and adds no information. What is the best alt attribute?",
        opts: ["A) alt=\"\" so screen readers skip it", "B) No alt attribute, so screen readers skip it", "C) alt=\"image\" so users know it is there"], ans: "A" },
      { title: "Lists and Tables", desc: "Group items with ul, ol and dl lists. Build navigation menus as lists of links. Show data in accessible tables with caption, thead, tbody, scope, colspan and rowspan.",
        ex_type: "true_false", question: "In a nested list, the inner <ul> must go inside an <li> of the outer list. It must not go directly inside the outer <ul>.",
        opts: ["True", "False"], ans: "True" },
      { title: "HTML Forms", desc: "Build forms with labels, buttons, dropdowns and radio groups. Give each input a name and the right type. Use built-in validation like required, pattern and min/max. Learn what GET and POST send.",
        ex_type: "multiple_choice", question: "Two radio buttons for choosing an event have different name values. What happens?",
        opts: ["A) Only one of them can be selected", "B) Both of them can be selected at the same time", "C) The form does not show them at all"], ans: "B" },
      { title: "Semantic HTML", desc: "Use header, nav, main, article, section, aside and footer. They describe what the content is. Learn when a plain div or span is still the right choice.",
        ex_type: "true_false", question: "A page has one <main> and a page <header> with the logo and nav. A second <header> sits inside an <article> and holds the post title and date. This structure is valid, semantic HTML.",
        opts: ["True", "False"], ans: "True" },
      { title: "Accessibility and ARIA", desc: "Build pages that everyone can use. Learn WCAG basics, keyboard access, contrast, skip links and focus styles. Use native details, dialog and popover first. Use ARIA only when native HTML is not enough.",
        ex_type: "multiple_choice", question: "A developer writes <div class=\"btn\" onclick=\"save()\">Save</div>. Keyboard users cannot use it. What is the best fix?",
        opts: ["A) Add role=\"button\" and aria-label=\"Save\" to the div", "B) Add tabindex=\"0\" so the div can get focus", "C) Replace it with a real <button type=\"button\">"], ans: "C" },
      { title: "Introduction to CSS", desc: "Learn how a CSS rule is built and the three ways to add CSS. See how the cascade and inheritance decide the final styles.",
        ex_type: "true_false", question: "You set border: 2px solid red on a <div>. Every <p> inside that div also gets a red border, because of inheritance.",
        opts: ["True", "False"], ans: "False" },
      { title: "CSS Selectors and Specificity", desc: "Select elements with type, class, id and attribute selectors, and with combinators. Work out specificity to predict which rule wins.",
        ex_type: "multiple_choice", question: "The HTML is <div class=\"card\"><p id=\"intro\" class=\"note\">Hi</p></div>. The CSS, in this order, is: .card .note { color: purple; } #intro { color: green; } body div p.note { color: red; }. What colour is the text?",
        opts: ["A) Purple", "B) Green", "C) Red"], ans: "B" },
      { title: "Pseudo-classes and Pseudo-elements", desc: "Style states like :hover, :focus-visible and :checked. Style positions with :nth-child and parents with :has(). Group selectors with zero specificity using :where(). Style parts of elements with ::before and ::first-letter.",
        ex_type: "true_false", question: "Inside <div><h2>Menu</h2><p>Tea</p><p>Coffee</p></div>, the selector p:first-child selects the \"Tea\" paragraph.",
        opts: ["True", "False"], ans: "False" },
      { title: "Colors, Backgrounds, and Units", desc: "Write colours as hex, rgb(), hsl() or oklch() with alpha. Paint backgrounds with gradients and layers. Choose the right unit: rem for text, px for thin lines, dvh for full height on mobile. Fit images with aspect-ratio and object-fit.",
        ex_type: "multiple_choice", question: "The html font size is 16px, and .menu { font-size: 1.25em; }. One .menu is inside another .menu. What is the font size of the inner menu?",
        opts: ["A) 25px", "B) 20px", "C) 31.25px"], ans: "A" },
      { title: "The CSS Box Model", desc: "Every element is a box of content, padding, border and margin. Learn how to work out the width for content-box and border-box. Learn margin shorthand, margin collapsing, borders, rounded corners, shadows, and block vs inline display.",
        ex_type: "true_false", question: "With box-sizing: border-box, an element has width: 300px; padding: 20px; border: 4px solid. Its content area is 252px wide.",
        opts: ["True", "False"], ans: "True" },
      { title: "CSS Typography", desc: "Build font stacks with generic families, and size text in rem. Make headings fluid with clamp(). Use line-height without a unit. Keep lines easy to read with max-width in ch.",
        ex_type: "multiple_choice", question: "The root font size is 16px, and h1 { font-size: clamp(1.5rem, 1rem + 2vw, 2.5rem); }. How big is the h1 when the viewport is 800px wide?",
        opts: ["A) 24px", "B) 40px", "C) 32px"], ans: "C" },
      { title: "Positioning and z-index", desc: "Use relative, absolute, fixed and sticky positioning for badges, sticky headers and overlays. Learn how z-index and stacking contexts decide what shows on top.",
        ex_type: "true_false", question: "You set z-index: 10 on a position: static block that is not a flex or grid item. This brings it in front of the elements it overlaps.",
        opts: ["True", "False"], ans: "False" },
      { title: "CSS Flexbox", desc: "Place items in a row or column with display: flex. Control the main and cross axes with justify-content and align-items. Share space with flex-grow and flex: 1. Wrap items and space them with gap.",
        ex_type: "multiple_choice", question: "A container has display: flex; flex-direction: column. Which property centres its items horizontally?",
        opts: ["A) justify-content: center", "B) align-items: center", "C) justify-items: center"], ans: "B" },
      { title: "CSS Grid", desc: "Build two-dimensional layouts with grid tracks, the fr unit, repeat() and minmax(). Place items by grid lines or by named areas.",
        ex_type: "true_false", question: "A grid is 900px wide, with grid-template-columns: 200px 1fr 2fr and gap: 20px. The 2fr column is 440px wide.",
        opts: ["True", "False"], ans: "True" },
      { title: "Responsive Design and Media Queries", desc: "Make one page work on every screen. Use the viewport meta tag, mobile-first min-width media queries and fluid sizing.",
        ex_type: "multiple_choice", question: "A card list should become two columns on wider screens. Which CSS follows the mobile-first approach?",
        opts: ["A) .cards { display: grid; } then @media (min-width: 768px) { .cards { grid-template-columns: 1fr 1fr; } }", "B) .cards { display: grid; grid-template-columns: 1fr 1fr; } then @media (max-width: 767px) { .cards { grid-template-columns: 1fr; } }", "C) @media (min-width: 768px) { .cards { grid-template-columns: 1fr 1fr; } } then .cards { display: grid; grid-template-columns: 1fr; }"], ans: "A" },
      { title: "CSS Custom Properties and Modern CSS", desc: "Use CSS variables for themes and design tokens. Write nested CSS that works in the browser without tools. Control the cascade with @layer. Use container queries so components respond to their container.",
        ex_type: "true_false", question: "@container (min-width: 400px) { .profile { … } } works even if no ancestor of .profile has a container-type set.",
        opts: ["True", "False"], ans: "False" },
      { title: "Transitions and Animations", desc: "Animate state changes with transitions. Build multi-step effects with @keyframes. Animate transform and opacity, and respect reduced-motion settings.",
        ex_type: "multiple_choice", question: "A developer writes .btn:hover { transform: scale(1.1); transition: transform 0.3s; } with no transition on .btn. What happens?",
        opts: ["A) Nothing animates, because transition is only allowed on the base rule", "B) It grows smoothly on hover, but snaps back at once when the mouse leaves", "C) It animates smoothly both on hover and when the mouse leaves"], ans: "B" },
      { title: "Capstone: Responsive Landing Page", desc: "Combine semantic HTML, accessible forms, custom properties, Flexbox, Grid, clamp() and transitions. Build a complete mobile-first landing page.",
        ex_type: "true_false", question: "With grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)), a fourth menu card needs no extra CSS to be placed in the grid.",
        opts: ["True", "False"], ans: "True" }
    ]
  },

  {
    title: "JavaScript", slug: "javascript", color: "#eab308", icon: "⚡",
    position: 2, published: true,
    description: "JavaScript is the programming language of the web. Use it to make pages interactive, handle user events and build modern web apps. It is the most popular language in the world.",
    lessons: [
      { title: "Introduction to JavaScript", desc: "JavaScript is the programming language that gives web pages behaviour. It reacts to users, changes the page and talks to servers. console.log prints values, so you can see what your code is doing.",
        ex_type: "multiple_choice", question: "What does console.log(\"Total:\", 250 * 4) print?",
        opts: ["A) Total: 250 * 4", "B) Total: 1000", "C) \"Total:\" 1000"], ans: "B" },
      { title: "Variables and Data Types", desc: "Use const by default. Use let when a value must change. var is the old way. JavaScript has seven primitive types (string, number, boolean, null, undefined, bigint, symbol) plus objects. typeof tells you the type of a value.",
        ex_type: "true_false", question: "const student = { marks: 70 }; student.marks = 85; The second statement throws a TypeError, because student was declared with const.",
        opts: ["True", "False"], ans: "False" },
      { title: "Operators, Comparison and Type Coercion", desc: "Operators calculate and compare values. Always compare with ===. Convert input strings with Number(). Learn the eight falsy values. Use ?? for defaults when 0 or an empty string is a valid value.",
        ex_type: "multiple_choice", question: "const volume = 0; What does volume ?? 50 evaluate to?",
        opts: ["A) 50, because ?? treats 0 as a missing value, like || does", "B) undefined", "C) 0, because ?? only replaces null or undefined"], ans: "C" },
      { title: "Strings and Template Literals", desc: "Strings have many built-in methods, such as trim, includes, slice, split and replaceAll. These methods never change the string itself. Template literals use backticks and ${ } to insert values, and they allow text on many lines. Date and Intl format dates and rupee amounts for display.",
        ex_type: "multiple_choice", question: "const item = \"Tea\"; Which line prints: Tea costs ₹20",
        opts: ["A) console.log(`${item} costs ₹${10 * 2}`)", "B) console.log(\"${item} costs ₹${10 * 2}\")", "C) console.log(\"item costs ₹\" + 10 * 2)"], ans: "A" },
      { title: "Conditionals and Loops", desc: "if / else if / else runs the first block whose condition is true. The ternary picks one of two values. switch matches fixed cases with ===. for loops count, and while repeats until a condition is false. for...of visits values, and for...in visits object keys. break and continue control a loop.",
        ex_type: "true_false", question: "If a matching case in a switch statement has no break, the code falls through into the next case.",
        opts: ["True", "False"], ans: "True" },
      { title: "Functions and Arrow Functions", desc: "Functions are reusable blocks of code with parameters and return values. Default and rest parameters make them flexible. Arrow functions give a short syntax for small functions and callbacks. You can pass functions around as values. A recursive function calls itself until it reaches a base case.",
        ex_type: "multiple_choice", question: "const makeUser = (name) => { name: name }; What does makeUser(\"Asha\") return?",
        opts: ["A) { name: \"Asha\" }", "B) \"Asha\"", "C) undefined"], ans: "C" },
      { title: "Scope, Hoisting and Closures", desc: "let and const are block-scoped. Inner code can see outer variables. Only function declarations can be used before their line. A closure is a function that remembers the variables from where it was created. This gives you private state.",
        ex_type: "true_false", question: "A function returned from another function can keep reading and updating the outer function's variables. This works even after the outer function has finished running.",
        opts: ["True", "False"], ans: "True" },
      { title: "Arrays", desc: "Arrays are ordered lists, and the first index is 0. Learn push, pop, shift and unshift, includes and indexOf, and slice vs splice. Learn toSorted, toReversed and with, which do not change the array. Also learn spread copies, destructuring, and Set for unique values.",
        ex_type: "multiple_choice", question: "const scores = [40, 10, 30]; const sorted = scores.toSorted((a, b) => a - b); What is scores afterwards?",
        opts: ["A) [40, 10, 30]", "B) [10, 30, 40]", "C) [30, 10, 40]"], ans: "A" },
      { title: "Array Methods", desc: "map transforms items, filter selects items and reduce combines them. find and findLast return one item. some and every answer yes or no. Object.groupBy groups items. Sort numbers with a comparator such as (a, b) => a - b.",
        ex_type: "multiple_choice", question: "What does [10, 9, 1, 100].sort() return?",
        opts: ["A) [1, 9, 10, 100]", "B) [1, 10, 100, 9]", "C) [100, 10, 9, 1]"], ans: "B" },
      { title: "Objects, Destructuring and Optional Chaining", desc: "Objects store data under named keys. Destructuring unpacks properties into variables. Spread copies and merges objects, but only one level deep. structuredClone makes deep copies. Optional chaining ?. reads missing data safely. Map is a good fit for key-value lookups that grow.",
        ex_type: "true_false", question: "After const copy = { ...original }; you call copy.tags.push(\"sale\"). This leaves original.tags unchanged, because spread makes a deep copy.",
        opts: ["True", "False"], ans: "False" },
      { title: "Classes and this", desc: "Classes are blueprints for objects. They have a constructor, methods, getters, static members and truly private #fields. They inherit through extends and super, and they are built on prototypes. In a normal method, this is the object before the dot. Arrow functions use the this from the code around them.",
        ex_type: "multiple_choice", question: "const f = account.describe; f(); throws a TypeError, but account.describe() works. Why?",
        opts: ["A) A method can only be called once per object", "B) Private #fields can only be read by getters, not by ordinary methods", "C) When you call the method without its object, its this is undefined"], ans: "C" },
      { title: "Iterators, Generators, Map and Set", desc: "for...of works on anything that follows the iterator protocol. Generator functions (function* and yield) make lazy sequences, which can even be endless. ES2025 iterator helpers like map, filter and take can process them. Set stores unique values and supports union and intersection. Map is the right tool for key-value lookups that grow.",
        ex_type: "multiple_choice", question: "function* ids() { let n = 1; while (true) yield n++; } What does ids().map((n) => n * 10).take(2).toArray() return?",
        opts: ["A) Nothing, because ids() loops forever and never finishes", "B) [10, 20]", "C) [10, 20, 30] and then a RangeError"], ans: "B" },
      { title: "Regular Expressions", desc: "A regular expression is a pattern for text. Use test to check input, with ^ and $ as anchors. Use match and matchAll to find matches, and groups to pull out parts. Use replace and split with flags such as g and i to clean and reformat text.",
        ex_type: "multiple_choice", question: "What does \"2026-09-25\".replace(/(\\d+)-(\\d+)-(\\d+)/, \"$3/$2/$1\") return?",
        opts: ["A) \"$3/$2/$1\"", "B) \"2026/09/25\"", "C) \"25/09/2026\""], ans: "C" },
      { title: "Error Handling", desc: "try/catch lets a program react to errors instead of crashing. finally always runs. Throw Error objects, never strings. Create custom error classes and check them with instanceof. Rethrow errors you cannot handle, and keep the original error as cause.",
        ex_type: "multiple_choice", question: "Which statement about a finally block is correct?",
        opts: ["A) It runs whether or not the try block threw an error", "B) It runs only if the catch block did not run", "C) It runs only when an error was thrown and caught by the catch block"], ans: "A" },
      { title: "Debugging and Testing", desc: "Debug by reproducing the problem and reading the stack trace. Look at real values with the console, breakpoints and the debugger statement. Tests check your code automatically. Arrange, act, assert, and cover the boundaries. Use a runner such as Vitest with toBe, toEqual and toThrow.",
        ex_type: "true_false", question: "In Vitest, expect([1, 2]).toBe([1, 2]) passes, because both arrays have the same values.",
        opts: ["True", "False"], ans: "False" },
      { title: "The Document Object Model", desc: "The DOM is the browser's tree of objects, built from your HTML. Select elements with querySelector. Change them with textContent and classList. Create them with createElement and append. Never put user input into innerHTML.",
        ex_type: "true_false", question: "textContent is safer than innerHTML for showing user input, because it does not read the text as HTML.",
        opts: ["True", "False"], ans: "True" },
      { title: "DOM Events", desc: "addEventListener runs a callback each time an event such as click, input or submit happens. The event object describes what happened. preventDefault stops a form from reloading the page. FormData reads a whole form. Event delegation lets one listener on a parent handle many children.",
        ex_type: "multiple_choice", question: "Which best describes event delegation?",
        opts: ["A) Adding a separate listener to every child element", "B) One listener on a parent that checks event.target", "C) Calling stopPropagation() inside every click handler"], ans: "B" },
      { title: "Promises and the Event Loop", desc: "setTimeout and setInterval schedule code. Cancel them with clearTimeout and clearInterval. JavaScript runs on one thread. The event loop runs all microtasks (Promise callbacks) before the next task (such as setTimeout). A Promise is pending, fulfilled or rejected. then, catch and finally handle its result, and Promise.all and allSettled combine async results.",
        ex_type: "multiple_choice", question: "console.log(\"A\"); setTimeout(() => console.log(\"B\"), 0); Promise.resolve().then(() => console.log(\"C\")); console.log(\"D\"); In what order are the letters printed?",
        opts: ["A) A D C B", "B) A B C D", "C) A D B C"], ans: "A" },
      { title: "Async/Await and the Fetch API", desc: "async functions return Promises. await pauses only that function. Handle failures with try/catch. fetch makes HTTP requests, but it does not reject on 404 or 500. So always check response.ok. Use Promise.all for requests that do not depend on each other.",
        ex_type: "true_false", question: "The server answers a fetch() request with 404 Not Found. The Promise from fetch() then rejects, and your catch block runs.",
        opts: ["True", "False"], ans: "False" },
      { title: "JSON and localStorage", desc: "JSON is the text format for sending and saving data. JSON.stringify turns values into text. JSON.parse turns text back into values, so wrap it in try/catch. localStorage keeps strings in the browser. Store objects as JSON, and never store secrets there.",
        ex_type: "multiple_choice", question: "What does localStorage.setItem(\"cart\", { item: \"Tea\" }) really store?",
        opts: ["A) The object itself, ready to read back", "B) Nothing, because it throws a TypeError", "C) The string \"[object Object]\""], ans: "C" },
      { title: "ES Modules", desc: "ES modules split code into files. Each file exports values and imports what it needs. Use named exports for utilities, and at most one default export per file. Use type=\"module\" script tags served over http, for example with Vite. Use dynamic import() to load code only when you need it.",
        ex_type: "true_false", question: "Code in a <script type=\"module\"> runs in strict mode. Its top-level variables do not become globals on window.",
        opts: ["True", "False"], ans: "True" },
      { title: "Capstone Project: Task Tracker", desc: "Build a Task Tracker that combines classes, validation, array methods, DOM rendering, event delegation and saving as JSON. Every change follows one pattern. An event happens, you update the data, and then you render the page from the data.",
        ex_type: "true_false", question: "In the Task Tracker, li.dataset.id === task.id is true for the matching task, because dataset keeps numbers as numbers.",
        opts: ["True", "False"], ans: "False" }
    ]
  },

  {
    title: "Python", slug: "python", color: "#3b82f6", icon: "🐍",
    position: 3, published: true,
    description: "Python is the most popular language for AI, data science and automation. It has clean syntax, powerful libraries and a huge community. This makes it a great first language.",
    lessons: [
      { title: "Introduction to Python", desc: "Python is an easy-to-read, high-level language. People use it for AI, data science, web back-ends and automation. You will write your first program with print(), comments and indentation.",
        ex_type: "multiple_choice", question: "What does print(\"a\", \"b\", sep=\"-\") output?",
        opts: ["A) a b", "B) a-b", "C) a-b-"], ans: "B" },
      { title: "Variables, Numbers and Types", desc: "Variables are names for values. Python works out the type of each value (int, float, str, bool, None). It also gives you arithmetic operators and functions to convert between types.",
        ex_type: "true_false", question: "int(3.9) rounds to the nearest whole number, so it returns 4.",
        opts: ["True", "False"], ans: "False" },
      { title: "Working with Strings", desc: "Strings are sequences of characters that cannot be changed. They support indexing, slicing and many helpful methods. Use f-strings to format text.",
        ex_type: "multiple_choice", question: "word = \"Python\". What does print(word[1:4]) show?",
        opts: ["A) yth", "B) Pyt", "C) ytho"], ans: "A" },
      { title: "Conditional Statements", desc: "if, elif and else let a program choose what to do. They use comparison and logical operators, and truthy and falsy values. Indentation marks each branch.",
        ex_type: "true_false", question: "Python allows chained comparisons. So 18 <= age < 60 checks that age is at least 18 and below 60.",
        opts: ["True", "False"], ans: "True" },
      { title: "Loops", desc: "for loops go through sequences and ranges. while loops repeat until a condition is false. break, continue, enumerate() and zip() give you fine control.",
        ex_type: "multiple_choice", question: "What does this print? for i in range(10, 0, -3): print(i, end=\" \")",
        opts: ["A) 10 7 4", "B) 9 6 3 0", "C) 10 7 4 1"], ans: "C" },
      { title: "Lists", desc: "Lists are ordered collections that can change. They have methods like append, extend, pop and sort. You must know the difference between an alias and a copy.",
        ex_type: "true_false", question: "After a = [3, 1, 2] and b = a.sort(), the variable b holds [1, 2, 3].",
        opts: ["True", "False"], ans: "False" },
      { title: "Tuples and Sets", desc: "Tuples are fixed records that you can unpack. Sets store unique values. Sets check membership fast and support union, intersection and difference.",
        ex_type: "multiple_choice", question: "Which expression creates an empty set?",
        opts: ["A) set()", "B) {}", "C) ()"], ans: "A" },
      { title: "Dictionaries", desc: "Dictionaries map unique keys to values. get(), items(), Counter and defaultdict make lookups, counting and grouping easy.",
        ex_type: "true_false", question: "For a dictionary person, the expression \"age\" in person checks the dictionary's keys, not its values.",
        opts: ["True", "False"], ans: "True" },
      { title: "Functions, Lambdas and Scope", desc: "You define functions with def. They take positional, keyword, default, *args and **kwargs parameters, and they return values. Functions are values that you can pass around. lambda makes small key functions. The LEGB rule decides where Python finds names. Recursion lets a function call itself on a smaller problem.",
        ex_type: "multiple_choice", question: "def add_item(item, basket=[]): basket.append(item); return basket. After add_item(\"apple\"), what does print(add_item(\"mango\")) show?",
        opts: ["A) ['mango']", "B) ['apple', 'mango']", "C) ['apple']"], ans: "B" },
      { title: "Comprehensions", desc: "List, dict and set comprehensions build new collections in one readable line. Generator expressions do the same lazily, without building a list.",
        ex_type: "multiple_choice", question: "What does [x if x % 2 == 0 else 0 for x in range(5)] produce?",
        opts: ["A) [0, 2, 4]", "B) [2, 4]", "C) [0, 0, 2, 0, 4]"], ans: "C" },
      { title: "Exception Handling", desc: "try, except, else and finally let a program handle runtime errors safely. Use raise with custom exception classes to show problems clearly. The logging module records them.",
        ex_type: "true_false", question: "The finally block runs only when an exception was raised in the try block.",
        opts: ["True", "False"], ans: "False" },
      { title: "Files, JSON and Context Managers", desc: "The with statement opens files and always closes them. pathlib handles paths. The json and csv modules read and write structured data.",
        ex_type: "multiple_choice", question: "Which open() mode adds new text to the end of an existing file without erasing what is already there?",
        opts: ["A) \"a\"", "B) \"w\"", "C) \"x\""], ans: "A" },
      { title: "Modules, Packages and pip", desc: "Modules and packages organise code. The standard library covers everyday tasks such as dates, statistics, random numbers and command-line arguments with argparse. pip installs third-party packages, and a virtual environment keeps them separate for each project.",
        ex_type: "true_false", question: "Running pip freeze > requirements.txt installs every package listed in requirements.txt.",
        opts: ["True", "False"], ans: "False" },
      { title: "Regular Expressions", desc: "The re module uses text patterns to check, extract and clean text. Learn search, fullmatch, findall, sub and split. Learn groups, named groups, greedy vs lazy matching and flags.",
        ex_type: "multiple_choice", question: "Which call checks that the whole string code is exactly six digits, such as a PIN code?",
        opts: ["A) re.search(r\"\\d{6}\", code)", "B) re.findall(r\"\\d{6}\", code)", "C) re.fullmatch(r\"\\d{6}\", code)"], ans: "C" },
      { title: "Classes and Objects", desc: "Classes bundle data and behaviour. __init__ sets up each object, and self refers to it. __str__, __repr__ and @property make objects friendly and safe.",
        ex_type: "multiple_choice", question: "class Counter: count = 0, and __init__ does Counter.count += 1. After a = Counter() and b = Counter(), what does print(Counter.count) show?",
        opts: ["A) 0", "B) 1", "C) 2"], ans: "C" },
      { title: "Inheritance and Special Methods", desc: "Child classes reuse and override parent behaviour with super(). Abstract base classes define required methods. Dunder methods let objects work with len(), + and ==.",
        ex_type: "true_false", question: "If a class defines a __len__ method, the built-in len(obj) calls that method.",
        opts: ["True", "False"], ans: "True" },
      { title: "Iterators and Generators", desc: "Every for loop uses the iterator protocol. Generator functions with yield make values lazily, one at a time. This saves memory.",
        ex_type: "multiple_choice", question: "nums = (n * n for n in range(3)). What do print(sum(nums)) and then a second print(sum(nums)) show?",
        opts: ["A) 5, then 5", "B) 5, then 0", "C) 5, then a TypeError"], ans: "B" },
      { title: "Closures and Decorators", desc: "A closure is an inner function that remembers outer variables. A decorator uses a closure to take a function and return a better one. It adds behaviour like logging or caching. functools.wraps and lru_cache are the standard helpers.",
        ex_type: "true_false", question: "Writing @timer above def load(): ... is the same as writing load = timer(load) after the function definition.",
        opts: ["True", "False"], ans: "True" },
      { title: "Type Hints and Dataclasses", desc: "Type hints show the expected types to editors and checkers like mypy. @dataclass creates __init__, __repr__ and __eq__ for clean data classes.",
        ex_type: "multiple_choice", question: "def double(n: int) -> int: return n * 2. What does print(double(\"ha\")) show?",
        opts: ["A) A TypeError, because \"ha\" is not an int", "B) haha", "C) None"], ans: "B" },
      { title: "Testing with unittest and pytest", desc: "Tests call your code and check the results automatically. unittest is built in: use unittest.TestCase with assertEqual and assertRaises. pytest uses plain assert, parametrize and clear failure reports.",
        ex_type: "multiple_choice", question: "A unittest.TestCase class has a method named check_boundaries(self). What happens when you run python -m unittest?",
        opts: ["A) It is skipped", "B) It runs like any other method in the class", "C) unittest stops and reports a NameError"], ans: "A" },
      { title: "Capstone Project: Grade Tracker", desc: "Build a grade tracker. It loads a JSON file, checks the records and prints a sorted report. It uses dataclasses, type hints, exceptions, comprehensions and lambdas. Then you add a generator and a decorator yourself.",
        ex_type: "true_false", question: "In the Grade Tracker, @dataclass also checks, while the program runs, that each field's value matches its type hint.",
        opts: ["True", "False"], ans: "False" }
    ]
  }
  # Machine Learning, Artificial Intelligence and Data Science have their own
  # rake tasks (lib/tasks/*_course.rake) with full lesson content and quizzes.
].freeze

puts "Seeding courses and lessons..."

COURSE_SEED.each do |cd|
  course = Course.find_or_create_by!(slug: cd[:slug]) do |c|
    c.title = cd[:title]; c.description = cd[:description]
    c.color = cd[:color]; c.icon = cd[:icon]
    c.position = cd[:position]; c.published = cd[:published]
  end
  puts "  #{course.title}"

  cd[:lessons].each_with_index do |ld, i|
    lesson = CourseLesson.find_or_initialize_by(course: course, position: i + 1)
    lesson.update!(title: ld[:title], description: ld[:desc])
    Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
      e.exercise_type = ld[:ex_type]; e.question = ld[:question]
      e.options = ld[:opts]; e.correct_answer = ld[:ans]
    end.save!
  end
end

puts "Done! #{Course.count} courses, #{CourseLesson.count} lessons, #{Exercise.count} exercises."

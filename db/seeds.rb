# Idempotent seeds — safe to run multiple times

# ── Admin user ───────────────────────────────────────────────────
admin = User.find_or_create_by!(email: "admin@aiacademy.com") do |u|
  u.password = "admin1234"
  u.admin    = true
end
puts "Admin: #{admin.email}"

# ── Course seed data ─────────────────────────────────────────────
COURSE_SEED = [
  {
    title: "HTML & CSS", slug: "html-css", color: "#f97316", icon: "🌐",
    position: 1, published: true,
    description: "Learn the building blocks of the web. HTML gives structure to web pages and CSS makes them beautiful. Perfect starting point for web development.",
    lessons: [
      { title: "Introduction to HTML", desc: "HTML describes the structure and meaning of a web page, while CSS styles it and JavaScript adds behaviour. Learn element anatomy, correct nesting, void elements and the standard page boilerplate.",
        ex_type: "multiple_choice", question: "Which snippet is nested correctly?",
        opts: ["A) <p><em>Hot chai</p></em>", "B) <em><p>Hot chai</em></p>", "C) <p><em>Hot chai</em></p>"], ans: "C" },
      { title: "Text Content and Formatting", desc: "Use headings as a page outline, paragraphs and line breaks correctly, and text elements chosen for meaning such as strong, em, mark and code. Show special characters such as < and ₹ with character entities.",
        ex_type: "true_false", question: "If you type five spaces between two words in your HTML source, the page shows five spaces between them.",
        opts: ["True", "False"], ans: "False" },
      { title: "Links and Images", desc: "Link to other pages, page sections, email and phone with the right kind of path. Add images with useful alt text, width and height, lazy loading, captions and modern formats.",
        ex_type: "multiple_choice", question: "An image is purely decorative and adds no information. What is the best alt attribute?",
        opts: ["A) alt=\"\" so screen readers skip it", "B) No alt so screen readers skip it", "C) alt=\"image\" so users know it is there"], ans: "A" },
      { title: "Lists and Tables", desc: "Group items with ul, ol and dl lists, and build navigation menus as lists of links. Present data in accessible tables with caption, thead, tbody, scope, colspan and rowspan.",
        ex_type: "true_false", question: "In a nested list, the inner <ul> must be placed inside an <li> of the outer list, not directly inside the outer <ul>.",
        opts: ["True", "False"], ans: "True" },
      { title: "HTML Forms", desc: "Build forms with labels, named inputs of the right type, radio groups, dropdowns and buttons. Use built-in validation like required, pattern and min/max, and know what GET and POST send.",
        ex_type: "multiple_choice", question: "Two radio buttons for choosing an event have different name values. What happens?",
        opts: ["A) Only one of them can be selected", "B) Both of them can be selected at once", "C) The form refuses to show them at all"], ans: "B" },
      { title: "Semantic HTML", desc: "Use header, nav, main, article, section, aside and footer to describe what content is. Learn when a plain div or span is still the right choice.",
        ex_type: "true_false", question: "A page has one <main>, a page <header> with the logo and nav, and a second <header> inside an <article> holding the post title and date. This structure is valid, semantic HTML.",
        opts: ["True", "False"], ans: "True" },
      { title: "Accessibility and ARIA", desc: "Build pages everyone can use: WCAG basics, keyboard access, contrast, skip links and focus styles. Use native details, dialog and popover first, and ARIA only when native HTML is not enough.",
        ex_type: "multiple_choice", question: "A developer writes <div class=\"btn\" onclick=\"save()\">Save</div>. Keyboard users cannot use it. What is the best fix?",
        opts: ["A) Add role=\"button\" and aria-label=\"Save\" to the div", "B) Add tabindex=\"0\" so the div can get focus", "C) Replace it with a real <button type=\"button\">"], ans: "C" },
      { title: "Introduction to CSS", desc: "Learn how a CSS rule is built, the three ways to add CSS, and how the cascade and inheritance decide the final styles.",
        ex_type: "true_false", question: "If you set border: 2px solid red on a <div>, every <p> inside that div also gets a red border, because of inheritance.",
        opts: ["True", "False"], ans: "False" },
      { title: "CSS Selectors and Specificity", desc: "Target elements with type, class, id, attribute selectors and combinators. Calculate specificity to predict which rule wins.",
        ex_type: "multiple_choice", question: "The HTML is <div class=\"card\"><p id=\"intro\" class=\"note\">Hi</p></div>. The CSS, in this order, is: .card .note { color: purple; } #intro { color: green; } body div p.note { color: red; }. What colour is the text?",
        opts: ["A) Purple", "B) Green", "C) Red"], ans: "B" },
      { title: "Pseudo-classes and Pseudo-elements", desc: "Style states like :hover, :focus-visible and :checked, positions like :nth-child, parents with :has(), zero-specificity groups with :where(), and parts of elements with ::before and ::first-letter.",
        ex_type: "true_false", question: "Inside <div><h2>Menu</h2><p>Tea</p><p>Coffee</p></div>, the selector p:first-child selects the \"Tea\" paragraph.",
        opts: ["True", "False"], ans: "False" },
      { title: "Colors, Backgrounds, and Units", desc: "Write colours as hex, rgb(), hsl() or oklch() with alpha, paint backgrounds with gradients and layers, choose the right unit (rem for text, px for hairlines, dvh for mobile full-height), and fit images with aspect-ratio and object-fit.",
        ex_type: "multiple_choice", question: "The html font size is 16px and .menu { font-size: 1.25em; }. A .menu is nested inside another .menu. What is the inner menu's font size?",
        opts: ["A) 25px", "B) 20px", "C) 31.25px"], ans: "A" },
      { title: "The CSS Box Model", desc: "Every element is a box of content, padding, border and margin. Learn the width arithmetic for content-box and border-box, margin shorthand, margin collapsing, borders, rounded corners, shadows and block vs inline display.",
        ex_type: "true_false", question: "With box-sizing: border-box, an element with width: 300px; padding: 20px; border: 4px solid has a content area 252px wide.",
        opts: ["True", "False"], ans: "True" },
      { title: "CSS Typography", desc: "Build font stacks with generic families, size text in rem, make headings fluid with clamp(), use unitless line-height and keep lines readable with max-width in ch.",
        ex_type: "multiple_choice", question: "The root font size is 16px and h1 { font-size: clamp(1.5rem, 1rem + 2vw, 2.5rem); }. How big is the h1 on an 800px-wide viewport?",
        opts: ["A) 24px", "B) 40px", "C) 32px"], ans: "C" },
      { title: "Positioning and z-index", desc: "Use relative, absolute, fixed and sticky positioning for badges, sticky headers and overlays, and understand how z-index and stacking contexts decide what appears on top.",
        ex_type: "true_false", question: "Setting z-index: 10 on a position: static block (not a flex or grid item) brings it in front of the elements it overlaps.",
        opts: ["True", "False"], ans: "False" },
      { title: "CSS Flexbox", desc: "Lay out items in a row or column with display: flex. Control the main and cross axes with justify-content and align-items, share space with flex-grow and flex: 1, and wrap with gap.",
        ex_type: "multiple_choice", question: "A container has display: flex; flex-direction: column. Which property centres its items horizontally?",
        opts: ["A) justify-content: center", "B) align-items: center", "C) justify-items: center"], ans: "B" },
      { title: "CSS Grid", desc: "Build two-dimensional layouts with grid tracks, the fr unit, repeat(), minmax(), line-based placement and named areas.",
        ex_type: "true_false", question: "In a 900px-wide grid with grid-template-columns: 200px 1fr 2fr and gap: 20px, the 2fr column is 440px wide.",
        opts: ["True", "False"], ans: "True" },
      { title: "Responsive Design and Media Queries", desc: "Make one page work on every screen with the viewport meta tag, mobile-first min-width media queries and fluid sizing.",
        ex_type: "multiple_choice", question: "Which CSS follows the mobile-first approach for a card list that should become two columns on wider screens?",
        opts: ["A) .cards { display: grid; } then @media (min-width: 768px) { .cards { grid-template-columns: 1fr 1fr; } }", "B) .cards { display: grid; grid-template-columns: 1fr 1fr; } then @media (max-width: 767px) { .cards { grid-template-columns: 1fr; } }", "C) @media (min-width: 768px) { .cards { grid-template-columns: 1fr 1fr; } } then .cards { display: grid; grid-template-columns: 1fr; }"], ans: "A" },
      { title: "CSS Custom Properties and Modern CSS", desc: "Use CSS variables for themes and design tokens, write native nested CSS, control the cascade with @layer, and make components respond to their container with container queries.",
        ex_type: "true_false", question: "@container (min-width: 400px) { .profile { … } } works even if no ancestor of .profile has a container-type set.",
        opts: ["True", "False"], ans: "False" },
      { title: "Transitions and Animations", desc: "Animate state changes with transitions and multi-step effects with @keyframes, using transform and opacity while respecting reduced-motion settings.",
        ex_type: "multiple_choice", question: "A developer writes .btn:hover { transform: scale(1.1); transition: transform 0.3s; } with no transition on .btn. What happens?",
        opts: ["A) Nothing animates, because transition is only allowed on the base rule", "B) It grows smoothly on hover but snaps back instantly when the mouse leaves", "C) It animates smoothly both on hover and when the mouse leaves"], ans: "B" },
      { title: "Capstone: Responsive Landing Page", desc: "Combine semantic HTML, accessible forms, custom properties, Flexbox, Grid, clamp() and transitions into a complete mobile-first landing page.",
        ex_type: "true_false", question: "With grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)), adding a fourth menu card needs no extra CSS for it to be placed in the grid.",
        opts: ["True", "False"], ans: "True" }
    ]
  },

  {
    title: "JavaScript", slug: "javascript", color: "#eab308", icon: "⚡",
    position: 2, published: true,
    description: "JavaScript is the programming language of the web. Make pages interactive, handle user events, and build modern web apps with the world's most popular language.",
    lessons: [
      { title: "Introduction to JavaScript", desc: "JavaScript is the programming language that gives web pages behaviour: it reacts to users, changes the page and talks to servers. console.log prints values so you can see what your code is doing.",
        ex_type: "multiple_choice", question: "What does console.log(\"Total:\", 250 * 4) print?",
        opts: ["A) Total: 250 * 4", "B) Total: 1000", "C) \"Total:\" 1000"], ans: "B" },
      { title: "Variables and Data Types", desc: "Use const by default and let when a value must change; var is the old way. JavaScript has seven primitive types (string, number, boolean, null, undefined, bigint, symbol) plus objects, and typeof tells you a value's type.",
        ex_type: "true_false", question: "const student = { marks: 70 }; student.marks = 85; — the second statement throws a TypeError because student was declared with const.",
        opts: ["True", "False"], ans: "False" },
      { title: "Operators, Comparison and Type Coercion", desc: "Operators calculate and compare values. Always compare with ===, convert input strings with Number(), learn the eight falsy values, and use ?? for defaults when 0 or an empty string is a valid value.",
        ex_type: "multiple_choice", question: "const volume = 0; What does volume ?? 50 evaluate to?",
        opts: ["A) 50, because ?? treats 0 as a missing value just like || does", "B) undefined", "C) 0, because ?? only replaces null or undefined"], ans: "C" },
      { title: "Strings and Template Literals", desc: "Strings have many built-in methods such as trim, includes, slice, split and replaceAll, and they never change in place. Template literals use backticks and ${ } to insert values and allow multi-line text, and Date plus Intl format dates and rupee amounts for display.",
        ex_type: "multiple_choice", question: "const item = \"Tea\"; Which line prints: Tea costs ₹20",
        opts: ["A) console.log(`${item} costs ₹${10 * 2}`)", "B) console.log(\"${item} costs ₹${10 * 2}\")", "C) console.log(\"item costs ₹\" + 10 * 2)"], ans: "A" },
      { title: "Conditionals and Loops", desc: "if / else if / else runs the first block whose condition is true, the ternary chooses between two values and switch matches fixed cases with ===. for loops count, while repeats until a condition is false, for...of visits values, for...in visits object keys, and break and continue control a loop.",
        ex_type: "true_false", question: "In a switch statement, if a matching case has no break, execution falls through into the next case.",
        opts: ["True", "False"], ans: "True" },
      { title: "Functions and Arrow Functions", desc: "Functions are reusable blocks of code with parameters and return values. Default and rest parameters make them flexible, arrow functions give a short syntax for small functions and callbacks, functions can be passed around as values, and a recursive function calls itself until it reaches a base case.",
        ex_type: "multiple_choice", question: "const makeUser = (name) => { name: name }; What does makeUser(\"Asha\") return?",
        opts: ["A) { name: \"Asha\" }", "B) \"Asha\"", "C) undefined"], ans: "C" },
      { title: "Scope, Hoisting and Closures", desc: "let and const are block-scoped, inner code can see outer variables, and only function declarations can be used before their line. A closure is a function that remembers the variables from where it was created, which gives you private state.",
        ex_type: "true_false", question: "A function returned from another function can keep reading and updating the outer function's variables, even after the outer function has finished running.",
        opts: ["True", "False"], ans: "True" },
      { title: "Arrays", desc: "Arrays are ordered, zero-indexed lists. Learn push/pop/shift/unshift, includes and indexOf, slice vs splice, the non-mutating toSorted/toReversed/with, spread copies, destructuring, and Set for unique values.",
        ex_type: "multiple_choice", question: "const scores = [40, 10, 30]; const sorted = scores.toSorted((a, b) => a - b); What is scores afterwards?",
        opts: ["A) [40, 10, 30]", "B) [10, 30, 40]", "C) [30, 10, 40]"], ans: "A" },
      { title: "Array Methods", desc: "map transforms, filter selects, reduce combines, find and findLast return one item, some and every answer yes/no, and Object.groupBy groups items. Sort numbers with a comparator such as (a, b) => a - b.",
        ex_type: "multiple_choice", question: "What does [10, 9, 1, 100].sort() return?",
        opts: ["A) [1, 9, 10, 100]", "B) [1, 10, 100, 9]", "C) [100, 10, 9, 1]"], ans: "B" },
      { title: "Objects, Destructuring and Optional Chaining", desc: "Objects store data under named keys. Destructuring unpacks properties into variables, spread copies and merges (shallowly), structuredClone makes deep copies, optional chaining ?. reads missing data safely, and Map suits growing key-value lookups.",
        ex_type: "true_false", question: "After const copy = { ...original }; calling copy.tags.push(\"sale\") leaves original.tags unchanged, because spread makes a deep copy.",
        opts: ["True", "False"], ans: "False" },
      { title: "Classes and this", desc: "Classes are blueprints for objects, with a constructor, methods, getters, static members, truly private #fields and inheritance through extends and super, all built on prototypes. In a normal method, this is the object before the dot; arrow functions use the surrounding this.",
        ex_type: "multiple_choice", question: "const f = account.describe; f(); throws a TypeError, although account.describe() works. Why?",
        opts: ["A) A method can only be called once per object", "B) Private #fields can only be read by getters, not by ordinary methods", "C) Called without its object, the method's this is undefined"], ans: "C" },
      { title: "Iterators, Generators, Map and Set", desc: "for...of works on anything that follows the iterator protocol. Generator functions (function* and yield) make lazy, even endless, sequences that ES2025 iterator helpers like map, filter and take can process. Set stores unique values with union and intersection, and Map is the right tool for growing key-value lookups.",
        ex_type: "multiple_choice", question: "function* ids() { let n = 1; while (true) yield n++; } What does ids().map((n) => n * 10).take(2).toArray() return?",
        opts: ["A) Nothing — it never finishes, because ids() loops forever", "B) [10, 20]", "C) [10, 20, 30] and then a RangeError"], ans: "B" },
      { title: "Regular Expressions", desc: "A regular expression is a pattern for text. Use test to validate input (anchored with ^ and $), match and matchAll to find matches, groups to pull out parts, and replace and split with flags such as g and i to clean and reformat text.",
        ex_type: "multiple_choice", question: "What does \"2026-09-25\".replace(/(\\d+)-(\\d+)-(\\d+)/, \"$3/$2/$1\") return?",
        opts: ["A) \"$3/$2/$1\"", "B) \"2026/09/25\"", "C) \"25/09/2026\""], ans: "C" },
      { title: "Error Handling", desc: "try/catch lets a program react to errors instead of crashing, and finally always runs. Throw Error objects (never strings), create custom error classes, check them with instanceof, rethrow errors you cannot handle, and keep the original error as cause.",
        ex_type: "multiple_choice", question: "Which statement about a finally block is correct?",
        opts: ["A) It runs whether or not the try block threw an error", "B) It runs only if the catch block did not run", "C) It runs only when an error was thrown and caught by the catch block"], ans: "A" },
      { title: "Debugging and Testing", desc: "Debug by reproducing the problem, reading the stack trace and inspecting real values with the console, breakpoints and the debugger statement. Tests check your code automatically: arrange, act, assert, cover the boundaries, and use a runner such as Vitest with toBe, toEqual and toThrow.",
        ex_type: "true_false", question: "In Vitest, expect([1, 2]).toBe([1, 2]) passes, because both arrays contain the same values.",
        opts: ["True", "False"], ans: "False" },
      { title: "The Document Object Model", desc: "The DOM is the browser's tree of objects built from your HTML. Select elements with querySelector, change them with textContent and classList, create them with createElement and append, and never put user input into innerHTML.",
        ex_type: "true_false", question: "textContent is safer than innerHTML for showing user input because it does not parse the text as HTML.",
        opts: ["True", "False"], ans: "True" },
      { title: "DOM Events", desc: "addEventListener runs a callback whenever an event such as click, input or submit happens. The event object describes what happened, preventDefault stops a form reloading the page, FormData reads a whole form, and event delegation lets one parent listener handle many children.",
        ex_type: "multiple_choice", question: "Which best describes event delegation?",
        opts: ["A) Adding a separate listener to every child element", "B) One listener on a parent that checks event.target", "C) Calling stopPropagation() inside every click handler"], ans: "B" },
      { title: "Promises and the Event Loop", desc: "setTimeout and setInterval schedule code (cancel them with clearTimeout and clearInterval). JavaScript runs on one thread; the event loop runs all microtasks (Promise callbacks) before the next task (such as setTimeout). A Promise is pending, fulfilled or rejected, and then, catch, finally, Promise.all and allSettled combine async results.",
        ex_type: "multiple_choice", question: "console.log(\"A\"); setTimeout(() => console.log(\"B\"), 0); Promise.resolve().then(() => console.log(\"C\")); console.log(\"D\"); — in what order are the letters printed?",
        opts: ["A) A D C B", "B) A B C D", "C) A D B C"], ans: "A" },
      { title: "Async/Await and the Fetch API", desc: "async functions return Promises and await pauses only that function; handle failures with try/catch. fetch makes HTTP requests, but it does not reject on 404 or 500, so always check response.ok. Use Promise.all for independent requests.",
        ex_type: "true_false", question: "If the server answers a fetch() request with 404 Not Found, the Promise returned by fetch() rejects and your catch block runs.",
        opts: ["True", "False"], ans: "False" },
      { title: "JSON and localStorage", desc: "JSON is the text format for sending and saving data: JSON.stringify turns values into text and JSON.parse turns text back (wrap it in try/catch). localStorage keeps strings in the browser, so store objects as JSON and never store secrets there.",
        ex_type: "multiple_choice", question: "What does localStorage.setItem(\"cart\", { item: \"Tea\" }) actually store?",
        opts: ["A) The object itself, ready to read back", "B) Nothing, because it throws a TypeError", "C) The string \"[object Object]\""], ans: "C" },
      { title: "ES Modules", desc: "ES modules split code into files that export values and import what they need. Use named exports for utilities, at most one default export per file, type=\"module\" script tags served over http (for example with Vite), and dynamic import() for code loaded on demand.",
        ex_type: "true_false", question: "Code in a <script type=\"module\"> runs in strict mode, and its top-level variables do not become globals on window.",
        opts: ["True", "False"], ans: "True" },
      { title: "Capstone Project: Task Tracker", desc: "Build a Task Tracker that combines classes, validation, array methods, DOM rendering, event delegation and JSON saving. Every change follows one pattern: event, then update the data, then render the page from the data.",
        ex_type: "true_false", question: "In the Task Tracker, li.dataset.id === task.id is true for the matching task, because dataset keeps numbers as numbers.",
        opts: ["True", "False"], ans: "False" }
    ]
  },

  {
    title: "Python", slug: "python", color: "#3b82f6", icon: "🐍",
    position: 3, published: true,
    description: "Python is the most popular language for AI, data science, and automation. Clean syntax, powerful libraries, and a massive community make it perfect for beginners.",
    lessons: [
      { title: "Introduction to Python", desc: "Python is a readable, high-level language used for AI, data science, web back-ends and automation; you write your first program with print(), comments and indentation.",
        ex_type: "multiple_choice", question: "What does print(\"a\", \"b\", sep=\"-\") output?",
        opts: ["A) a b", "B) a-b", "C) a-b-"], ans: "B" },
      { title: "Variables, Numbers and Types", desc: "Variables are names for values; Python works out each value's type (int, float, str, bool, None) and gives you arithmetic operators and type conversion functions.",
        ex_type: "true_false", question: "int(3.9) rounds to the nearest whole number, so it returns 4.",
        opts: ["True", "False"], ans: "False" },
      { title: "Working with Strings", desc: "Strings are immutable sequences of characters that support indexing, slicing, many helpful methods and f-strings for formatting.",
        ex_type: "multiple_choice", question: "word = \"Python\". What does print(word[1:4]) show?",
        opts: ["A) yth", "B) Pyt", "C) ytho"], ans: "A" },
      { title: "Conditional Statements", desc: "if, elif and else let a program choose what to do, using comparison and logical operators, truthy and falsy values, and indentation to mark each branch.",
        ex_type: "true_false", question: "Python allows chained comparisons, so 18 <= age < 60 checks that age is at least 18 and below 60.",
        opts: ["True", "False"], ans: "True" },
      { title: "Loops", desc: "for loops walk through sequences and ranges, while loops repeat until a condition is false, and break, continue, enumerate() and zip() give you fine control.",
        ex_type: "multiple_choice", question: "What does this print? for i in range(10, 0, -3): print(i, end=\" \")",
        opts: ["A) 10 7 4", "B) 9 6 3 0", "C) 10 7 4 1"], ans: "C" },
      { title: "Lists", desc: "Lists are ordered, mutable collections with methods like append, extend, pop and sort, and you must know the difference between an alias and a copy.",
        ex_type: "true_false", question: "After a = [3, 1, 2] and b = a.sort(), the variable b holds [1, 2, 3].",
        opts: ["True", "False"], ans: "False" },
      { title: "Tuples and Sets", desc: "Tuples are fixed, unpackable records, and sets store unique values with fast membership tests and union, intersection and difference operations.",
        ex_type: "multiple_choice", question: "Which expression creates an empty set?",
        opts: ["A) set()", "B) {}", "C) ()"], ans: "A" },
      { title: "Dictionaries", desc: "Dictionaries map unique keys to values, and get(), items(), Counter and defaultdict make lookups, counting and grouping easy.",
        ex_type: "true_false", question: "For a dictionary person, the expression \"age\" in person checks the dictionary's keys, not its values.",
        opts: ["True", "False"], ans: "True" },
      { title: "Functions, Lambdas and Scope", desc: "Functions defined with def take positional, keyword, default, *args and **kwargs parameters and return values; they are values you can pass around, lambda makes small key functions, the LEGB rule decides where names are found, and recursion lets a function call itself on a smaller problem.",
        ex_type: "multiple_choice", question: "def add_item(item, basket=[]): basket.append(item); return basket. After add_item(\"apple\"), what does print(add_item(\"mango\")) show?",
        opts: ["A) ['mango']", "B) ['apple', 'mango']", "C) ['apple']"], ans: "B" },
      { title: "Comprehensions", desc: "List, dict and set comprehensions build new collections in one readable line, and generator expressions do the same lazily without building a list.",
        ex_type: "multiple_choice", question: "What does [x if x % 2 == 0 else 0 for x in range(5)] produce?",
        opts: ["A) [0, 2, 4]", "B) [2, 4]", "C) [0, 0, 2, 0, 4]"], ans: "C" },
      { title: "Exception Handling", desc: "try, except, else and finally let a program handle runtime errors gracefully, raise with custom exception classes signals problems clearly, and the logging module records them.",
        ex_type: "true_false", question: "The finally block runs only when an exception was raised in the try block.",
        opts: ["True", "False"], ans: "False" },
      { title: "Files, JSON and Context Managers", desc: "The with statement opens files and always closes them, pathlib handles paths, and the json and csv modules read and write structured data.",
        ex_type: "multiple_choice", question: "Which open() mode adds new text to the end of an existing file without erasing what is already there?",
        opts: ["A) \"a\"", "B) \"w\"", "C) \"x\""], ans: "A" },
      { title: "Modules, Packages and pip", desc: "Modules and packages organise code, the standard library covers everyday tasks such as dates, statistics, random numbers and command-line arguments with argparse, and pip with a virtual environment installs third-party packages per project.",
        ex_type: "true_false", question: "Running pip freeze > requirements.txt installs every package listed in requirements.txt.",
        opts: ["True", "False"], ans: "False" },
      { title: "Regular Expressions", desc: "The re module uses text patterns to validate, extract and clean text: search, fullmatch, findall, sub and split, with groups, named groups, greedy vs lazy matching and flags.",
        ex_type: "multiple_choice", question: "Which call checks that the whole string code is exactly six digits, such as a PIN code?",
        opts: ["A) re.search(r\"\\d{6}\", code)", "B) re.findall(r\"\\d{6}\", code)", "C) re.fullmatch(r\"\\d{6}\", code)"], ans: "C" },
      { title: "Classes and Objects", desc: "Classes bundle data and behaviour; __init__ sets up each object, self refers to it, and __str__, __repr__ and @property make objects friendly and safe.",
        ex_type: "multiple_choice", question: "class Counter: count = 0, and __init__ does Counter.count += 1. After a = Counter() and b = Counter(), what does print(Counter.count) show?",
        opts: ["A) 0", "B) 1", "C) 2"], ans: "C" },
      { title: "Inheritance and Special Methods", desc: "Child classes reuse and override parent behaviour with super(), abstract base classes define required methods, and dunder methods let objects work with len(), + and ==.",
        ex_type: "true_false", question: "If a class defines a __len__ method, the built-in len(obj) calls that method.",
        opts: ["True", "False"], ans: "True" },
      { title: "Iterators and Generators", desc: "Every for loop uses the iterator protocol, and generator functions with yield produce values lazily, one at a time, saving memory.",
        ex_type: "multiple_choice", question: "nums = (n * n for n in range(3)). What do print(sum(nums)) and then a second print(sum(nums)) show?",
        opts: ["A) 5, then 5", "B) 5, then 0", "C) 5, then a TypeError"], ans: "B" },
      { title: "Closures and Decorators", desc: "A closure is an inner function that remembers outer variables; a decorator uses one to take a function and return an improved one, adding behaviour like logging or caching, with functools.wraps and lru_cache as the standard helpers.",
        ex_type: "true_false", question: "Writing @timer above def load(): ... is the same as writing load = timer(load) after the function definition.",
        opts: ["True", "False"], ans: "True" },
      { title: "Type Hints and Dataclasses", desc: "Type hints document expected types for editors and checkers like mypy, and @dataclass generates __init__, __repr__ and __eq__ for clean data classes.",
        ex_type: "multiple_choice", question: "def double(n: int) -> int: return n * 2. What does print(double(\"ha\")) show?",
        opts: ["A) A TypeError, because \"ha\" is not an int", "B) haha", "C) None"], ans: "B" },
      { title: "Testing with unittest and pytest", desc: "Tests call your code and check the results automatically: unittest.TestCase with assertEqual and assertRaises is built in, and pytest uses plain assert, parametrize and clear failure reports.",
        ex_type: "multiple_choice", question: "A unittest.TestCase class has a method named check_boundaries(self). What happens when you run python -m unittest?",
        opts: ["A) It is skipped", "B) It runs like any other method in the class", "C) unittest stops and reports a NameError"], ans: "A" },
      { title: "Capstone Project: Grade Tracker", desc: "Build a grade tracker that loads a JSON file, validates records, and prints a sorted report using dataclasses, type hints, exceptions, comprehensions and lambdas, then add a generator and a decorator yourself.",
        ex_type: "true_false", question: "In the Grade Tracker, the @dataclass decorator also checks at runtime that each field's value matches its type hint.",
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

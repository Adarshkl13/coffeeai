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
      { title: "Introduction to HTML", desc: "HTML (HyperText Markup Language) is the backbone of every website. It uses tags like h1, p, and div to define structure and content. Every browser reads HTML to display what you see on screen.",
        ex_type: "multiple_choice", question: "According to the lesson, what is HTML's main job on a web page?",
        opts: ["A) Controlling colors, fonts, and layout", "B) Adding interactive behavior when users click", "C) Defining the structure and meaning of the content"], ans: "C" },
      { title: "HTML Document Structure", desc: "Every HTML document starts with DOCTYPE html and contains html, head, and body elements. The head holds metadata; the body holds all visible content. This standard structure lets browsers correctly parse your pages.",
        ex_type: "true_false", question: "The <head> element contains the visible content of a web page.",
        opts: ["True", "False"], ans: "False" },
      { title: "HTML Tags and Elements", desc: "HTML elements consist of opening and closing tags that wrap content. Some elements like img and br are self-closing. Tags tell the browser what type of content to display.",
        ex_type: "multiple_choice", question: "Which of these elements is self-closing (it has no closing tag)?",
        opts: ["A) <span>", "B) <hr>", "C) <p>"], ans: "B" },
      { title: "Text Formatting Tags", desc: "HTML provides semantic tags for formatting: strong makes text bold, em makes it italic, and mark highlights text. These inline elements also help with accessibility and SEO.",
        ex_type: "true_false", question: "<b> and <strong> are interchangeable because both carry the same semantic meaning of importance.",
        opts: ["True", "False"], ans: "False" },
      { title: "Links and Anchors", desc: "Hyperlinks use the anchor tag with an href attribute specifying the destination URL. You can link to external sites, internal pages, or sections using IDs. Links are what make the web interconnected.",
        ex_type: "multiple_choice", question: "Which href value opens the user's email app when the link is clicked?",
        opts: ["A) href=\"#hi@email.com\"", "B) href=\"email://hi@email.com\"", "C) href=\"mailto:hi@email.com\""], ans: "C" },
      { title: "Images in HTML", desc: "Images are embedded using the img tag with a src attribute pointing to the image file. The alt attribute provides descriptive text for screen readers. img is a self-closing element with no closing tag.",
        ex_type: "true_false", question: "The alt attribute on an <img> is read aloud by screen readers and is shown if the image fails to load.",
        opts: ["True", "False"], ans: "True" },
      { title: "HTML Lists", desc: "HTML has two list types: unordered lists (ul) for bullet points and ordered lists (ol) for numbered items. Each item is wrapped in an li tag. Lists are perfect for menus, navigation, and grouped content.",
        ex_type: "multiple_choice", question: "You are writing step-by-step recipe instructions where the order matters. Which list element fits best?",
        opts: ["A) <ol>", "B) <ul>", "C) <li> on its own without a parent list"], ans: "A" },
      { title: "HTML Tables", desc: "Tables are built with table, tr (row), th (header cell), and td (data cell) elements. They are best for displaying structured data, not for page layout. Table headers are bold and centered by default.",
        ex_type: "true_false", question: "Adding colspan=\"2\" to a <td> makes that cell span two rows.",
        opts: ["True", "False"], ans: "False" },
      { title: "HTML Forms", desc: "Forms collect user input using the form element with various input types inside. Common types include text, email, password, checkbox, and radio. The action attribute specifies where form data is sent.",
        ex_type: "multiple_choice", question: "A form input has an id and a label but no name attribute. What happens when the form is submitted?",
        opts: ["A) The form refuses to submit", "B) Its value is not sent with the form data", "C) The browser uses the id as the field name instead"], ans: "B" },
      { title: "HTML5 Semantic Elements", desc: "HTML5 introduced semantic elements like header, nav, main, article, section, aside, and footer. These describe the meaning of content, not just appearance. Semantic HTML improves accessibility, SEO, and code clarity.",
        ex_type: "true_false", question: "<article> is a semantic HTML5 element representing self-contained content.",
        opts: ["True", "False"], ans: "True" },
      { title: "Introduction to CSS", desc: "CSS (Cascading Style Sheets) controls how HTML looks on screen. You can add CSS inline, in a style tag, or in an external .css file. External stylesheets are the best approach for large projects.",
        ex_type: "multiple_choice", question: "Which way of adding CSS does the lesson recommend for real projects?",
        opts: ["A) Inline style attributes on each element", "B) An external .css file linked with <link>", "C) An internal <style> tag in every page's <head>"], ans: "B" },
      { title: "CSS Selectors", desc: "CSS selectors target elements to apply styles: element selectors by tag name (p {}), class selectors (.card {}), and ID selectors (#header {}). Combining them gives more precise control.",
        ex_type: "true_false", question: "An ID selector such as #main has higher specificity than a class selector such as .card.",
        opts: ["True", "False"], ans: "True" },
      { title: "CSS Colors and Backgrounds", desc: "CSS supports named colors, hex codes, rgb(), and hsl() for color values. The color property sets text color; background-color sets background. Understanding colors helps create visually appealing designs.",
        ex_type: "multiple_choice", question: "What is the difference between opacity: 0.5 and background: rgba(79, 70, 229, 0.5)?",
        opts: ["A) opacity fades the whole element and its children; rgba fades only the background", "B) Both fade the whole element, including its text and all of its children", "C) rgba fades the text and children; opacity fades only the background colour"], ans: "A" },
      { title: "The CSS Box Model", desc: "Every HTML element is a rectangular box with content, padding, border, and margin. Padding adds space inside the border; margin adds space outside. Mastering the box model is essential for layout.",
        ex_type: "true_false", question: "Margin adds space inside an element, while padding adds space outside.",
        opts: ["True", "False"], ans: "False" },
      { title: "CSS Typography", desc: "CSS typography properties include font-family, font-size, font-weight, line-height, and text-align. Font sizes can be in px, em, rem, or percent. Good typography greatly improves readability.",
        ex_type: "multiple_choice", question: "Why does the lesson recommend rem instead of px for font sizes?",
        opts: ["A) rem values always render faster than px values in every browser", "B) px units are ignored by most mobile browsers", "C) rem follows the user's browser font-size setting, which helps accessibility"], ans: "C" },
      { title: "CSS Flexbox", desc: "Flexbox is a one-dimensional layout model for aligning items in a row or column. Setting display: flex on a container enables it. Properties like justify-content and align-items control child alignment.",
        ex_type: "true_false", question: "In a flex container with flex-direction: row, justify-content aligns items along the horizontal (main) axis.",
        opts: ["True", "False"], ans: "True" },
      { title: "CSS Grid", desc: "CSS Grid is a two-dimensional layout system for rows and columns. You define the grid with grid-template-columns and grid-template-rows on the parent. It is ideal for complex page layouts.",
        ex_type: "multiple_choice", question: "What layout does grid-template-columns: 1fr 2fr create?",
        opts: ["A) Two columns; the second is twice as wide as the first", "B) Three equal columns, each one third of the width", "C) Two columns that are exactly 1px and 2px wide"], ans: "A" },
      { title: "Responsive Design and Media Queries", desc: "Media queries apply different CSS based on screen size, enabling responsive design. The syntax @media (max-width: 768px) {} targets smaller screens. Responsive design ensures your site looks great on all devices.",
        ex_type: "true_false", question: "In a mobile-first approach, you write the default CSS for desktop and then use max-width media queries to adapt it for phones.",
        opts: ["True", "False"], ans: "False" },
      { title: "CSS Transitions and Animations", desc: "CSS transitions create smooth effects when a property changes. The transition property specifies which properties animate and their duration. Keyframe animations with @keyframes enable complex multi-step effects.",
        ex_type: "multiple_choice", question: "Which properties does the lesson recommend animating for the smoothest performance?",
        opts: ["A) transform and opacity", "B) width and height", "C) top and left"], ans: "A" },
      { title: "HTML & CSS Review", desc: "HTML gives structure to web pages using semantic elements; CSS adds visual styling through selectors and properties. Together they are the foundation of every website. Box Model, Flexbox, and Grid are the core layout tools.",
        ex_type: "true_false", question: "Flexbox is best suited to one-dimensional layouts, while Grid is designed for two-dimensional layouts.",
        opts: ["True", "False"], ans: "True" }
    ]
  },

  {
    title: "JavaScript", slug: "javascript", color: "#eab308", icon: "⚡",
    position: 2, published: true,
    description: "JavaScript is the programming language of the web. Make pages interactive, handle user events, and build modern web apps with the world's most popular language.",
    lessons: [
      { title: "Introduction to JavaScript", desc: "JavaScript adds interactivity to web pages and runs directly in the browser. It is one of the three core web technologies alongside HTML and CSS. JavaScript is the world's most widely used programming language.",
        ex_type: "multiple_choice", question: "Which output method does the lesson recommend as the most common way to debug JavaScript?",
        opts: ["A) console.log()", "B) alert()", "C) document.write()"], ans: "A" },
      { title: "Variables: var, let, and const", desc: "Variables store data values. var is function-scoped (older style), let is block-scoped and reassignable, and const is block-scoped and cannot be reassigned. Prefer const by default; use let when you need to reassign.",
        ex_type: "true_false", question: "A const variable can be reassigned a new value after declaration.",
        opts: ["True", "False"], ans: "False" },
      { title: "Data Types", desc: "JavaScript has seven primitive types: String, Number, Boolean, null, undefined, Symbol, and BigInt. Objects (including arrays) are non-primitive. Unlike some languages, JS Number covers both integers and decimals.",
        ex_type: "multiple_choice", question: "Which of these is NOT a valid JavaScript primitive data type?",
        opts: ["A) Boolean", "B) Integer", "C) String"], ans: "B" },
      { title: "Operators and Expressions", desc: "JavaScript operators include arithmetic (+, -, *, /), comparison (==, ===, <, >), and logical (&&, ||, !). The strict equality operator === checks both value AND type. Use === to avoid unexpected type coercion bugs.",
        ex_type: "true_false", question: "In JavaScript, 0 == false evaluates to false.",
        opts: ["True", "False"], ans: "False" },
      { title: "Conditional Statements", desc: "if/else checks a condition, else if adds more conditions, and switch handles multiple fixed values. Conditions evaluate to truthy or falsy values in JavaScript.",
        ex_type: "multiple_choice", question: "What happens if you leave out break at the end of a matching case in a switch statement?",
        opts: ["A) Execution falls through into the next case", "B) JavaScript throws a SyntaxError", "C) The switch exits normally after that case"], ans: "A" },
      { title: "Loops", desc: "Loops repeat code: for loops run a set number of times, while loops run while a condition is true, and for...of loops iterate over arrays. break exits a loop; continue skips to the next iteration.",
        ex_type: "true_false", question: "for...of is the recommended loop for iterating over array elements, while for...in iterates over an object's keys.",
        opts: ["True", "False"], ans: "True" },
      { title: "Functions", desc: "Functions are reusable blocks of code defined with the function keyword. They accept parameters and can return a value. Functions are one of the most fundamental building blocks in JavaScript.",
        ex_type: "multiple_choice", question: "Which kind of function is hoisted, so it can be called before the line where it is defined?",
        opts: ["A) A function expression: const greet = function() { }", "B) An arrow function: const greet = () => { }", "C) A function declaration: function greet() { }"], ans: "C" },
      { title: "Arrays", desc: "Arrays are ordered lists: let colors = ['red', 'green', 'blue']. Items are accessed by zero-based index. Built-in methods like push(), pop(), and map() make arrays very powerful.",
        ex_type: "true_false", question: "The .push() method returns the new length of the array.",
        opts: ["True", "False"], ans: "True" },
      { title: "Objects", desc: "Objects store data as key-value pairs: { name: 'Alice', age: 25 }. Access values with dot notation (user.name) or bracket notation. Objects are the foundation of JavaScript's data modeling.",
        ex_type: "multiple_choice", question: "When should you use bracket notation (obj[\"key\"]) instead of dot notation?",
        opts: ["A) Whenever the property's value is a string rather than a number", "B) Only when the object has more than ten properties defined", "C) When the key is dynamic (stored in a variable) or contains spaces"], ans: "C" },
      { title: "The Document Object Model", desc: "The DOM is a tree-like representation of an HTML page that JavaScript can read and modify. document.querySelector() selects elements; textContent and innerHTML modify their content. DOM manipulation makes web pages truly interactive.",
        ex_type: "true_false", question: "textContent is safer than innerHTML for inserting user-provided text because it does not parse the text as HTML.",
        opts: ["True", "False"], ans: "True" },
      { title: "DOM Events", desc: "Events are actions in the browser: clicks, key presses, form submissions. You add event listeners with addEventListener('click', handler). Events are how JavaScript responds to user interactions in real time.",
        ex_type: "multiple_choice", question: "Inside a form's submit listener, which call stops the browser from reloading the page?",
        opts: ["A) e.stopForm()", "B) e.preventDefault()", "C) form.cancel()"], ans: "B" },
      { title: "Arrow Functions", desc: "Arrow functions are a concise syntax: const add = (a, b) => a + b. Unlike regular functions, they do not have their own this keyword — they inherit it from their scope. Ideal for callbacks and array methods.",
        ex_type: "true_false", question: "Arrow functions have their own this keyword, just like regular functions.",
        opts: ["True", "False"], ans: "False" },
      { title: "Template Literals", desc: "Template literals use backticks and embed expressions: `Hello, ${name}!`. They also support multi-line strings without escape characters. They make string manipulation much cleaner than concatenation.",
        ex_type: "multiple_choice", question: "With const name = \"Alice\" and const age = 28, what does `${name} will be ${age + 1}` produce?",
        opts: ["A) Alice will be 29", "B) Alice will be 281", "C) ${name} will be ${age + 1}"], ans: "A" },
      { title: "Array Methods", desc: "Array methods: map() transforms each element into a new array, filter() selects elements matching a condition, and reduce() combines all elements into a single value. These enable functional programming patterns.",
        ex_type: "true_false", question: "filter() always returns a new array with the same length as the original array.",
        opts: ["True", "False"], ans: "False" },
      { title: "Promises", desc: "Promises represent eventual results of async operations with three states: pending, fulfilled, and rejected. Use .then() for success and .catch() for errors. Promises replaced callback-based patterns for async code.",
        ex_type: "multiple_choice", question: "Which Promise method runs its callback whether the Promise was fulfilled or rejected?",
        opts: ["A) .finally()", "B) .then()", "C) .catch()"], ans: "A" },
      { title: "Async/Await", desc: "async/await is syntactic sugar over Promises, making async code read like synchronous code. Mark a function with async, then use await inside to pause until a Promise resolves. This greatly improves readability.",
        ex_type: "true_false", question: "Using await inside a regular (non-async) function causes a syntax error.",
        opts: ["True", "False"], ans: "True" },
      { title: "Fetch API", desc: "The Fetch API makes HTTP requests from the browser to servers or APIs. fetch() returns a Promise resolving to a Response. Call .json() to parse the response as JSON data.",
        ex_type: "multiple_choice", question: "A fetch() request receives a 404 Not Found response. What happens to the Promise it returned?",
        opts: ["A) It rejects and jumps straight to .catch()", "B) It resolves, so you must check response.ok yourself", "C) It stays pending forever"], ans: "B" },
      { title: "Error Handling", desc: "try/catch blocks handle errors gracefully. Code in try runs normally; if an error occurs, catch handles it. The finally block runs regardless. This prevents your program from crashing on unexpected inputs.",
        ex_type: "true_false", question: "A finally block only runs when no error was thrown in the try block.",
        opts: ["True", "False"], ans: "False" },
      { title: "ES6 Modules", desc: "Modules split JavaScript into separate files. Use export to share functions/variables and import to use them elsewhere. Modern browsers and bundlers like Vite support ES6 modules natively.",
        ex_type: "multiple_choice", question: "How many default exports can a single ES module have?",
        opts: ["A) As many as you like", "B) Exactly one for every named export", "C) At most one"], ans: "C" },
      { title: "JavaScript Review", desc: "JavaScript runs in the browser to make pages interactive. Key concepts include variables, functions, arrays, objects, DOM manipulation, events, and async programming with Promises and async/await.",
        ex_type: "true_false", question: "In modern JavaScript, const is a sensible default, and let is used only when a variable needs to be reassigned.",
        opts: ["True", "False"], ans: "True" }
    ]
  },

  {
    title: "Python", slug: "python", color: "#3b82f6", icon: "🐍",
    position: 3, published: true,
    description: "Python is the most popular language for AI, data science, and automation. Clean syntax, powerful libraries, and a massive community make it perfect for beginners.",
    lessons: [
      { title: "Introduction to Python", desc: "Python is a high-level, interpreted language known for its readable, English-like syntax. It is the most popular language for AI, data science, and scripting. Python runs on all major operating systems and is completely free.",
        ex_type: "multiple_choice", question: "Which best describes Python as a programming language?",
        opts: ["A) A compiled, low-level language", "B) A markup language for web pages", "C) An interpreted, high-level language"], ans: "C" },
      { title: "Variables and Data Types", desc: "Variables are created by simply assigning a value — no type declaration needed. Python automatically determines the type: int, float, str, or bool. This is called dynamic typing.",
        ex_type: "true_false", question: "Python requires you to declare the data type of a variable before using it.",
        opts: ["True", "False"], ans: "False" },
      { title: "Working with Strings", desc: "Strings are sequences of characters in single or double quotes. You can concatenate with +, slice by index, and use methods like .upper(), .lower(), .strip(), and .replace().",
        ex_type: "multiple_choice", question: "What does print(f\"PI = {3.14159:.2f}\") output?",
        opts: ["A) PI = 3.14159", "B) PI = 3.14", "C) PI = {3.14159:.2f}"], ans: "B" },
      { title: "Numbers and Math", desc: "Python supports integers and floats. Arithmetic operators: +, -, *, / (division), // (floor division), % (modulo), ** (power). The math module provides advanced functions.",
        ex_type: "true_false", question: "In Python 3, 7 / 2 evaluates to 3 because both operands are integers.",
        opts: ["True", "False"], ans: "False" },
      { title: "Lists", desc: "A list is an ordered, mutable collection: fruits = ['apple', 'banana', 'cherry']. Items are accessed by zero-based index. Use append() to add, remove() to delete, and len() for length.",
        ex_type: "multiple_choice", question: "Given nums = [0, 1, 2, 3, 4, 5], what does nums[1:4] return?",
        opts: ["A) [1, 2, 3, 4]", "B) [1, 2, 3]", "C) [0, 1, 2, 3]"], ans: "B" },
      { title: "Tuples and Sets", desc: "A tuple is an immutable ordered collection that cannot be changed after creation. A set is an unordered collection of unique values — perfect for removing duplicates and fast membership testing.",
        ex_type: "true_false", question: "Python tuples are immutable — they cannot be changed after creation.",
        opts: ["True", "False"], ans: "True" },
      { title: "Dictionaries", desc: "Dictionaries store key-value pairs: person = {'name': 'Alice', 'age': 25}. Access values with dict[key] or dict.get(key). Keys must be unique and immutable; values can be any type.",
        ex_type: "multiple_choice", question: "person has no \"email\" key. What does person.get(\"email\", \"N/A\") return?",
        opts: ["A) It raises a KeyError", "B) None", "C) \"N/A\""], ans: "C" },
      { title: "Conditional Statements", desc: "Python uses if, elif, and else for decision-making. Indentation (4 spaces) defines code blocks — no curly braces. Conditions use comparison operators (==, !=, <, >) and logical operators (and, or, not).",
        ex_type: "true_false", question: "Python allows chained comparisons, so 0 < x < 10 checks whether x is between 0 and 10.",
        opts: ["True", "False"], ans: "True" },
      { title: "Loops", desc: "Python has two loops: for iterates over a sequence (list, string, range), and while runs as long as a condition is true. Use break to exit early and continue to skip to the next iteration.",
        ex_type: "multiple_choice", question: "Which numbers does for i in range(1, 6) loop over?",
        opts: ["A) 1, 2, 3, 4, 5", "B) 1, 2, 3, 4, 5, 6", "C) 0, 1, 2, 3, 4, 5"], ans: "A" },
      { title: "Functions", desc: "Functions are defined with the def keyword and can take parameters and return values. They make code reusable, organized, and easier to maintain. Functions are the cornerstone of organized programming.",
        ex_type: "true_false", question: "A Python function defined with def must always include a return statement.",
        opts: ["True", "False"], ans: "False" },
      { title: "Lambda Functions", desc: "A lambda is an anonymous one-line function: square = lambda x: x**2. Lambdas are useful for short operations passed to other functions. Commonly used with map(), filter(), and sorted().",
        ex_type: "multiple_choice", question: "students is a list of (name, score) tuples. How does sorted(students, key=lambda s: s[1], reverse=True) order it?",
        opts: ["A) By name, alphabetically", "B) By score, lowest first", "C) By score, highest first"], ans: "C" },
      { title: "List Comprehensions", desc: "List comprehensions create lists concisely: squares = [x**2 for x in range(10)]. Conditions can be included: evens = [x for x in range(20) if x % 2 == 0]. They are faster and more Pythonic than loops.",
        ex_type: "true_false", question: "[n**2 for n in range(1, 11) if n % 2 == 0] produces only the squares of the even numbers from 1 to 10.",
        opts: ["True", "False"], ans: "True" },
      { title: "File Input and Output", desc: "Python reads and writes files using open(). Mode 'r' reads, 'w' writes (overwrites), 'a' appends. Use the with statement to automatically close files when done.",
        ex_type: "multiple_choice", question: "Which file mode adds new content to the end of an existing file without erasing what is already there?",
        opts: ["A) \"a\"", "B) \"w\"", "C) \"r\""], ans: "A" },
      { title: "Exception Handling", desc: "Exceptions are runtime errors. Use try/except to catch them: try: risky() except ValueError: handle(). This prevents crashing on unexpected inputs. The finally block always runs regardless of errors.",
        ex_type: "true_false", question: "In a try/except/else/finally block, the else clause runs only when no exception was raised.",
        opts: ["True", "False"], ans: "True" },
      { title: "Classes and Objects", desc: "Python supports OOP with classes as blueprints for objects. class Dog: def __init__(self, name): self.name = name. Objects are instances of classes with their own attributes and methods.",
        ex_type: "multiple_choice", question: "What is the role of the __init__ method in a Python class?",
        opts: ["A) It must be called manually before any other method", "B) It is the constructor that runs when a new object is created", "C) It makes the class importable from other modules"], ans: "B" },
      { title: "Inheritance", desc: "Inheritance allows a child class to inherit from a parent: class Puppy(Dog): pass. The child gets everything from the parent and can add its own attributes and methods. This promotes code reuse.",
        ex_type: "true_false", question: "If a child class overrides __init__ without calling super().__init__(), the parent's __init__ still runs automatically.",
        opts: ["True", "False"], ans: "False" },
      { title: "Modules and Packages", desc: "A module is a Python file you can import: import math. Packages are folders of modules. Python's standard library has hundreds of modules; third-party packages are installed with pip.",
        ex_type: "multiple_choice", question: "Which import lets you call sqrt(16) directly, without the math. prefix?",
        opts: ["A) from math import sqrt", "B) import math", "C) import math as m"], ans: "A" },
      { title: "Virtual Environments", desc: "A virtual environment is an isolated Python environment for a project with its own packages. Create with python -m venv env. This prevents dependency conflicts between different projects — standard professional practice.",
        ex_type: "true_false", question: "Running pip freeze > requirements.txt installs every package listed in requirements.txt.",
        opts: ["True", "False"], ans: "False" },
      { title: "Python Standard Library", desc: "Python ships with a rich standard library: math (math functions), os (file system), datetime (dates), random (randomness), and json (JSON parsing). No installation needed — batteries included.",
        ex_type: "multiple_choice", question: "Which function converts a Python dictionary into a JSON string?",
        opts: ["A) json.dumps()", "B) json.loads()", "C) json.parse()"], ans: "A" },
      { title: "Python Review", desc: "Python is beginner-friendly yet powerful — used in web development, AI, data science, and automation. Core concepts: variables, data structures (list, dict, tuple), functions, OOP, and modules. Clean syntax makes it enjoyable to read and write.",
        ex_type: "true_false", question: "A Python set automatically removes duplicate values.",
        opts: ["True", "False"], ans: "True" }
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
    lesson = CourseLesson.find_or_create_by!(course: course, position: i + 1) do |l|
      l.title = ld[:title]; l.description = ld[:desc]
    end
    Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
      e.exercise_type = ld[:ex_type]; e.question = ld[:question]
      e.options = ld[:opts]; e.correct_answer = ld[:ans]
    end.save!
  end
end

puts "Done! #{Course.count} courses, #{CourseLesson.count} lessons, #{Exercise.count} exercises."

module PythonContent
  LESSONS = {
    1 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Python is a <strong>high-level, interpreted programming language</strong> created by Guido van Rossum in 1991. It is famous for its clean, readable syntax that reads almost like English — making it the ideal first language for beginners and a powerful tool for professionals.</p>
        </div>
        <div class="lc-section">
          <h2>Why Python?</h2>
          <ul class="lc-list">
            <li><strong>#1 language for AI and data science</strong> — TensorFlow, PyTorch, scikit-learn are all Python</li>
            <li>Beginner-friendly — less boilerplate than Java or C++</li>
            <li>Huge ecosystem — 400,000+ packages on PyPI</li>
            <li>Used at Google, Netflix, Instagram, NASA, and everywhere</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Python vs Other Languages</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>Python</th><th>Java</th><th>C++</th></tr></thead>
            <tbody>
              <tr><td>Hello World</td><td><code>print("Hi")</code></td><td>5 lines</td><td>7 lines</td></tr>
              <tr><td>Type declarations</td><td>❌ Optional</td><td>✅ Required</td><td>✅ Required</td></tr>
              <tr><td>Semicolons</td><td>❌ None</td><td>✅ Required</td><td>✅ Required</td></tr>
              <tr><td>Indentation</td><td>✅ Meaningful</td><td>Style only</td><td>Style only</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Your First Python Program</h2>
          <div class="lc-code-block"><pre><code>print("Hello, World!")
print("Python is amazing!")
print(2 + 2)   # Comments start with #</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>print()</strong> is Python's main output function. Unlike many languages, Python uses <strong>indentation</strong> (spaces) instead of curly braces to define code blocks. Consistent indentation (4 spaces) is required!</p></div>
      HTML
      starter_code: <<~PY
        # ── Introduction to Python ──

        # print() outputs to the console
        print("Hello, World!")
        print("Python is beginner-friendly!")

        # Arithmetic
        print(10 + 5)
        print(100 / 4)
        print(2 ** 10)   # 2 to the power of 10

        # print with multiple values
        name = "AI Academy"
        print("Welcome to", name)

        # String with variables
        language = "Python"
        year = 1991
        print("Python was created in", year)
        print("Learning", language, "is fun!")
      PY
    },

    2 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Variables in Python are created by simply assigning a value — <strong>no type declaration needed</strong>. Python automatically figures out the type. This is called <em>dynamic typing</em>.</p>
        </div>
        <div class="lc-section">
          <h2>Python's Built-in Data Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>int</code></td><td><code>42</code>, <code>-7</code></td><td>Whole numbers</td></tr>
              <tr><td><code>float</code></td><td><code>3.14</code>, <code>-0.5</code></td><td>Decimal numbers</td></tr>
              <tr><td><code>str</code></td><td><code>"hello"</code>, <code>'world'</code></td><td>Text (use either quote)</td></tr>
              <tr><td><code>bool</code></td><td><code>True</code>, <code>False</code></td><td>Boolean (capital T/F!)</td></tr>
              <tr><td><code>NoneType</code></td><td><code>None</code></td><td>Absence of a value</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>The type() Function</h2>
          <div class="lc-code-block"><pre><code>x = 42
print(type(x))      # &lt;class 'int'&gt;

y = 3.14
print(type(y))      # &lt;class 'float'&gt;

name = "Alice"
print(type(name))   # &lt;class 'str'&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Type Conversion</h2>
          <div class="lc-code-block"><pre><code>int("42")       # 42
float("3.14")   # 3.14
str(100)        # "100"
bool(0)         # False
bool("hello")   # True</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In Python, <code>True</code> and <code>False</code> start with a capital letter. Using lowercase <code>true</code> or <code>false</code> will cause a <code>NameError</code>!</p></div>
      HTML
      starter_code: <<~PY
        # ── Variables and Data Types ──

        # Integers
        age = 21
        year = 2024
        print("Age:", age, "| Type:", type(age))

        # Float
        gpa = 3.85
        pi = 3.14159
        print("GPA:", gpa)

        # String
        name = "Adarsh"
        language = "Python"
        print("Name:", name)
        print("Learning:", language)

        # Boolean
        is_student = True
        has_degree = False
        print("Student:", is_student)
        print("Has degree:", has_degree)

        # None
        result = None
        print("Result:", result)

        # Type checking
        print("--- Types ---")
        print(type(age))
        print(type(gpa))
        print(type(name))
        print(type(is_student))

        # Type conversion
        print("--- Conversion ---")
        num_str = "100"
        num = int(num_str)
        print(num + 50)
        print(str(2024) + " is a great year!")
      PY
    },

    3 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Strings are <strong>sequences of characters</strong> used to represent text. Python provides a rich set of string methods and f-strings to make working with text easy and readable.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Strings</h2>
          <div class="lc-code-block"><pre><code>s1 = "Double quotes"
s2 = 'Single quotes'
s3 = """Multi-line
string"""
s4 = f"Hello, {name}!"   # f-string (Python 3.6+)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Essential String Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>.upper()</code></td><td><code>"hello".upper()</code></td><td>"HELLO"</td></tr>
              <tr><td><code>.lower()</code></td><td><code>"HELLO".lower()</code></td><td>"hello"</td></tr>
              <tr><td><code>.strip()</code></td><td><code>"  hi  ".strip()</code></td><td>"hi"</td></tr>
              <tr><td><code>.replace(a,b)</code></td><td><code>"cat".replace("c","b")</code></td><td>"bat"</td></tr>
              <tr><td><code>.split(sep)</code></td><td><code>"a,b,c".split(",")</code></td><td>["a","b","c"]</td></tr>
              <tr><td><code>.startswith()</code></td><td><code>"Hello".startswith("H")</code></td><td>True</td></tr>
              <tr><td><code>len()</code></td><td><code>len("hello")</code></td><td>5</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>f-Strings (Modern Python)</h2>
          <div class="lc-code-block"><pre><code>name = "Alice"
score = 95
grade = "A"
print(f"{name} scored {score}/100 — Grade: {grade}")
print(f"Next year age: {21 + 1}")       # Can put expressions!
print(f"PI = {3.14159:.2f}")            # Formatting: 2 decimal places</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <strong>f-strings</strong> for string formatting in modern Python — they are faster and more readable than <code>+</code> concatenation or <code>.format()</code>. Just prefix the string with <code>f</code>.</p></div>
      HTML
      starter_code: <<~PY
        # ── Strings in Python ──

        name = "Ada Lovelace"
        message = "  Hello, Python!  "
        sentence = "the quick brown fox jumps over the lazy dog"

        # Basic operations
        print(len(name))
        print(name.upper())
        print(name.lower())
        print(message.strip())

        # Slicing
        print(name[0:3])     # First 3 chars
        print(name[-8:])     # Last 8 chars

        # Replace and split
        print(sentence.replace("fox", "cat"))
        words = sentence.split(" ")
        print("Word count:", len(words))

        # Check content
        email = "adarsh@example.com"
        print("Has @:", "@" in email)
        print("Starts with a:", email.startswith("a"))

        # f-strings (modern and clean)
        score = 96
        grade = "A+"
        language = "Python"
        print(f"{name} — Score: {score} — Grade: {grade}")
        print(f"Learning {language} is {score}% awesome!")

        # Number formatting in f-strings
        price = 1234.5678
        print(f"Price: ₹{price:.2f}")
        print(f"Pi: {3.14159:.3f}")
      PY
    },

    4 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Python handles numbers with ease. It supports <strong>integers, floats, and complex numbers</strong> out of the box, and provides a rich <code>math</code> module for advanced calculations.</p>
        </div>
        <div class="lc-section">
          <h2>Arithmetic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Name</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>+</code></td><td>Addition</td><td><code>7 + 3</code></td><td>10</td></tr>
              <tr><td><code>-</code></td><td>Subtraction</td><td><code>7 - 3</code></td><td>4</td></tr>
              <tr><td><code>*</code></td><td>Multiplication</td><td><code>7 * 3</code></td><td>21</td></tr>
              <tr><td><code>/</code></td><td>Division</td><td><code>7 / 3</code></td><td>2.333…</td></tr>
              <tr><td><code>//</code></td><td>Floor division</td><td><code>7 // 3</code></td><td>2</td></tr>
              <tr><td><code>%</code></td><td>Modulus</td><td><code>7 % 3</code></td><td>1</td></tr>
              <tr><td><code>**</code></td><td>Exponent</td><td><code>2 ** 8</code></td><td>256</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Useful Built-in Number Functions</h2>
          <div class="lc-code-block"><pre><code>abs(-7)         # 7  — absolute value
round(3.7)      # 4  — round to nearest
round(3.14159, 2) # 3.14 — round to 2 dp
max(1, 5, 3)    # 5
min(1, 5, 3)    # 1
sum([1, 2, 3])  # 6</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>The math Module</h2>
          <div class="lc-code-block"><pre><code>import math

math.sqrt(25)      # 5.0
math.floor(3.9)    # 3
math.ceil(3.1)     # 4
math.pi            # 3.141592…</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>//</code> (floor division) and <code>%</code> (modulus) are very useful. <code>n % 2 == 0</code> checks if a number is even. <code>n // 10</code> strips the last digit. These patterns appear everywhere in algorithms.</p></div>
      HTML
      starter_code: <<~PY
        # ── Numbers and Math ──

        # Basic arithmetic
        print("7 + 3 =", 7 + 3)
        print("7 - 3 =", 7 - 3)
        print("7 * 3 =", 7 * 3)
        print("7 / 3 =", 7 / 3)
        print("7 // 3 =", 7 // 3)   # floor division
        print("7 % 3 =", 7 % 3)     # remainder
        print("2 ** 10 =", 2 ** 10) # exponent

        # Built-in functions
        print("abs(-42) =", abs(-42))
        print("round(3.14159, 2) =", round(3.14159, 2))
        print("max(3, 7, 2) =", max(3, 7, 2))
        print("min(3, 7, 2) =", min(3, 7, 2))

        # Even/Odd check
        for n in [1, 2, 3, 4, 5]:
            result = "even" if n % 2 == 0 else "odd"
            print(n, "is", result)

        # Practical: price calculation
        price = 1500
        tax_rate = 0.18
        discount = 100
        tax = price * tax_rate
        total = price + tax - discount
        print(f"\nPrice: ₹{price}")
        print(f"Tax (18%): ₹{tax:.2f}")
        print(f"Discount: -₹{discount}")
        print(f"Total: ₹{total:.2f}")
      PY
    },

    5 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>A <strong>list</strong> is an ordered, mutable collection of items. It is Python's most used data structure — you can store any mix of data types, and lists can grow or shrink dynamically.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Accessing Lists</h2>
          <div class="lc-code-block"><pre><code>fruits = ["apple", "banana", "cherry"]

print(fruits[0])    # "apple"    (first)
print(fruits[-1])   # "cherry"   (last)
print(len(fruits))  # 3</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Essential List Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>.append(item)</code></td><td>Add to end</td></tr>
              <tr><td><code>.insert(idx, item)</code></td><td>Add at position</td></tr>
              <tr><td><code>.remove(item)</code></td><td>Remove first occurrence</td></tr>
              <tr><td><code>.pop()</code></td><td>Remove and return last item</td></tr>
              <tr><td><code>.sort()</code></td><td>Sort in place (ascending)</td></tr>
              <tr><td><code>.reverse()</code></td><td>Reverse in place</td></tr>
              <tr><td><code>.count(item)</code></td><td>Count occurrences</td></tr>
              <tr><td><code>item in list</code></td><td>Check membership</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Slicing</h2>
          <div class="lc-code-block"><pre><code>nums = [0, 1, 2, 3, 4, 5]
print(nums[1:4])   # [1, 2, 3]  (start:end, end excluded)
print(nums[:3])    # [0, 1, 2]  (from beginning)
print(nums[3:])    # [3, 4, 5]  (to end)
print(nums[::2])   # [0, 2, 4]  (every 2nd item)</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>nums[:]</code> or <code>list(nums)</code> to make a <strong>copy</strong> of a list. Writing <code>copy = original</code> does NOT copy — both variables point to the same list!</p></div>
      HTML
      starter_code: <<~PY
        # ── Lists ──

        # Create a list
        scores = [88, 95, 72, 61, 99, 84]
        print("Scores:", scores)
        print("Length:", len(scores))
        print("First:", scores[0])
        print("Last:", scores[-1])

        # Modifying lists
        scores.append(91)
        print("After append:", scores)

        scores.remove(61)
        print("After remove:", scores)

        scores.sort()
        print("Sorted:", scores)

        # Useful operations
        print("Max:", max(scores))
        print("Min:", min(scores))
        print("Sum:", sum(scores))
        print("Average:", sum(scores) / len(scores))

        # Membership check
        print("95 in scores:", 95 in scores)

        # Slicing
        top3 = scores[-3:]
        print("Top 3:", top3)

        # Iterating
        fruits = ["Apple", "Banana", "Cherry", "Mango"]
        for i in range(len(fruits)):
            print(i + 1, ".", fruits[i])
      PY
    },

    6 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Python has two more sequence types: <strong>tuples</strong> (immutable ordered sequences) and <strong>sets</strong> (unordered collections of unique values). Each has specific use cases where it outperforms a regular list.</p>
        </div>
        <div class="lc-section">
          <h2>Tuples — Immutable Lists</h2>
          <div class="lc-code-block"><pre><code>point = (10, 20)          # x, y coordinates
rgb   = (255, 128, 0)     # Colour values

print(point[0])           # 10
# point[0] = 5            # ❌ TypeError — cannot change!</code></pre></div>
          <p>Use tuples when data should <strong>not change</strong>: coordinates, RGB colours, database rows, function return values.</p>
        </div>
        <div class="lc-section">
          <h2>Tuple Unpacking</h2>
          <div class="lc-code-block"><pre><code>person = ("Alice", 28, "Engineer")
name, age, job = person    # Unpack into variables
print(name, age, job)

# Swap two variables
a, b = 10, 20
a, b = b, a
print(a, b)   # 20, 10</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Sets — Unique Values Only</h2>
          <div class="lc-code-block"><pre><code>tags = {"python", "ai", "coding", "python"}  # Duplicate removed!
print(tags)  # {"python", "ai", "coding"}

tags.add("machine learning")
tags.discard("coding")

# Set operations
a = {1, 2, 3, 4}
b = {3, 4, 5, 6}
print(a & b)   # Intersection: {3, 4}
print(a | b)   # Union: {1, 2, 3, 4, 5, 6}
print(a - b)   # Difference: {1, 2}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Sets are <strong>very fast</strong> for membership testing — <code>item in my_set</code> is O(1) vs O(n) for lists. Use a set when you need to check if something exists and duplicates don't matter.</p></div>
      HTML
      starter_code: <<~PY
        # ── Tuples and Sets ──

        # Tuples
        coordinates = (40.7128, -74.0060)  # New York City
        rgb_red = (255, 0, 0)
        person = ("Alice", 25, "Engineer")

        print("Latitude:", coordinates[0])
        print("Longitude:", coordinates[1])

        # Tuple unpacking
        name, age, job = person
        print(f"{name} is {age} and works as {job}")

        # Swap without temp variable
        x, y = 10, 20
        x, y = y, x
        print(f"Swapped: x={x}, y={y}")

        # Sets — unique values
        tags = ["python", "ai", "python", "coding", "ai", "ml"]
        unique_tags = set(tags)
        print("Original:", tags)
        print("Unique tags:", unique_tags)
        print("Count before:", len(tags), "| After:", len(unique_tags))

        # Set operations
        python_devs = {"Alice", "Bob", "Charlie"}
        ml_devs     = {"Bob", "Dave", "Charlie"}

        print("Both skills:", python_devs & ml_devs)
        print("All devs:", python_devs | ml_devs)
        print("Python only:", python_devs - ml_devs)
      PY
    },

    7 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>A <strong>dictionary</strong> stores data as <code>key: value</code> pairs, like a real dictionary where each word (key) has a definition (value). Dictionaries are used everywhere in Python — APIs return JSON which becomes dicts, and configs are dicts.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Accessing</h2>
          <div class="lc-code-block"><pre><code>person = {
  "name": "Alice",
  "age": 28,
  "skills": ["Python", "ML"]
}

print(person["name"])          # "Alice"
print(person.get("age"))       # 28
print(person.get("email", "N/A"))  # "N/A" (safe default)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Dictionary Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>.keys()</code></td><td>All keys</td></tr>
              <tr><td><code>.values()</code></td><td>All values</td></tr>
              <tr><td><code>.items()</code></td><td>All (key, value) pairs</td></tr>
              <tr><td><code>.get(key, default)</code></td><td>Value or default (safe)</td></tr>
              <tr><td><code>.update(other_dict)</code></td><td>Merge dicts</td></tr>
              <tr><td><code>.pop(key)</code></td><td>Remove and return value</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Looping Over Dicts</h2>
          <div class="lc-code-block"><pre><code>grades = {"Alice": 92, "Bob": 78, "Carol": 88}

for name, score in grades.items():
    print(f"{name}: {score}")</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <code>.get(key)</code> instead of <code>dict[key]</code> when the key might not exist. <code>dict[key]</code> raises a <code>KeyError</code>; <code>.get(key)</code> returns <code>None</code> safely.</p></div>
      HTML
      starter_code: <<~PY
        # ── Dictionaries ──

        student = {
            "name": "Adarsh",
            "age": 21,
            "courses": ["HTML", "Python", "ML"],
            "gpa": 3.9,
            "is_active": True
        }

        # Access values
        print("Name:", student["name"])
        print("GPA:", student["gpa"])
        print("Courses:", student["courses"])

        # Safe access with .get()
        print("Email:", student.get("email", "Not provided"))

        # Add / update
        student["email"] = "adarsh@example.com"
        student["age"] = 22
        print("Updated age:", student["age"])

        # All keys, values, items
        print("Keys:", list(student.keys()))

        # Loop with .items()
        grades = {
            "Math": 95,
            "Python": 98,
            "AI": 92,
            "Physics": 88
        }
        total = 0
        for subject, score in grades.items():
            total += score
            status = "Pass" if score >= 90 else "Good"
            print(f"  {subject}: {score} ({status})")

        print(f"Average: {total / len(grades):.1f}")
      PY
    },

    8 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Conditional statements let Python programs <strong>make decisions</strong>. Python uses <code>if</code>, <code>elif</code>, and <code>else</code> — and a unique single-line <em>ternary expression</em>. Indentation defines the code blocks.</p>
        </div>
        <div class="lc-section">
          <h2>if / elif / else Structure</h2>
          <div class="lc-code-block"><pre><code>bmi = 22.5

if bmi &lt; 18.5:
    print("Underweight")
elif bmi &lt; 25.0:
    print("Normal weight ✓")
elif bmi &lt; 30.0:
    print("Overweight")
else:
    print("Obese")</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ternary Expression (one-liner)</h2>
          <div class="lc-code-block"><pre><code># value_if_true if condition else value_if_false
age = 20
status = "Adult" if age >= 18 else "Minor"
print(status)  # "Adult"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Comparison and Logical Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Python</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>==</code></td><td>Equal</td><td><code>x == 5</code></td></tr>
              <tr><td><code>!=</code></td><td>Not equal</td><td><code>x != 0</code></td></tr>
              <tr><td><code>&gt;</code> <code>&lt;</code> <code>&gt;=</code> <code>&lt;=</code></td><td>Comparison</td><td><code>x &gt; 10</code></td></tr>
              <tr><td><code>and</code></td><td>Both true</td><td><code>x &gt; 0 and x &lt; 10</code></td></tr>
              <tr><td><code>or</code></td><td>Either true</td><td><code>x == 1 or x == 2</code></td></tr>
              <tr><td><code>not</code></td><td>Invert</td><td><code>not is_active</code></td></tr>
              <tr><td><code>in</code></td><td>Membership</td><td><code>x in [1, 2, 3]</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Python allows chaining comparisons: <code>0 &lt; x &lt; 10</code> checks if x is between 0 and 10. This is more readable than <code>x &gt; 0 and x &lt; 10</code> — use it!</p></div>
      HTML
      starter_code: <<~PY
        # ── Conditional Statements ──

        # Grade calculator
        def get_grade(score):
            if score >= 90:
                return "A — Excellent!"
            elif score >= 80:
                return "B — Good"
            elif score >= 70:
                return "C — Average"
            elif score >= 60:
                return "D — Below Average"
            else:
                return "F — Failed"

        for score in [95, 83, 71, 62, 45]:
            print(f"Score {score}: {get_grade(score)}")

        # Ternary expression
        temperature = 38
        weather = "Hot" if temperature > 30 else "Comfortable"
        print(f"\n{temperature}°C is {weather}")

        # Multiple conditions
        age = 22
        has_id = True
        has_ticket = True

        if age >= 18 and has_id and has_ticket:
            print("Entry allowed!")
        elif age >= 18 and has_id:
            print("Buy a ticket first")
        else:
            print("Not eligible")

        # in operator
        allowed_roles = ["admin", "moderator", "editor"]
        user_role = "editor"
        if user_role in allowed_roles:
            print(f"Access granted for: {user_role}")
      PY
    },

    9 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Loops execute a block of code <strong>repeatedly</strong>. Python's <code>for</code> loop is elegant and powerful — it iterates directly over any sequence (list, string, range, dict). The <code>while</code> loop runs while a condition is true.</p>
        </div>
        <div class="lc-section">
          <h2>for Loop with range()</h2>
          <div class="lc-code-block"><pre><code># range(stop)        → 0, 1, 2, ..., stop-1
# range(start, stop) → start, ..., stop-1
# range(start, stop, step)

for i in range(5):
    print(i)           # 0 1 2 3 4

for i in range(1, 6):
    print(i)           # 1 2 3 4 5

for i in range(0, 10, 2):
    print(i)           # 0 2 4 6 8</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>enumerate() — Index + Value</h2>
          <div class="lc-code-block"><pre><code>fruits = ["apple", "banana", "cherry"]

for index, fruit in enumerate(fruits):
    print(f"{index + 1}. {fruit}")</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>while Loop</h2>
          <div class="lc-code-block"><pre><code>count = 1
while count &lt;= 5:
    print(count)
    count += 1      # Must update condition or infinite loop!</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>break, continue, else</h2>
          <div class="lc-code-block"><pre><code>for n in range(10):
    if n == 3: continue    # Skip 3
    if n == 7: break       # Stop at 7
    print(n)               # 0 1 2 4 5 6</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>enumerate()</code> whenever you need both the index and the value while looping — it is more Pythonic than <code>for i in range(len(list)): item = list[i]</code>.</p></div>
      HTML
      starter_code: <<~PY
        # ── Loops ──

        # range() patterns
        print("Count to 5:")
        for i in range(1, 6):
            print(i, end=" ")
        print()

        # Even numbers
        print("Evens 0-20:")
        for n in range(0, 21, 2):
            print(n, end=" ")
        print()

        # Iterating a list with enumerate
        languages = ["HTML", "CSS", "JavaScript", "Python", "SQL"]
        print("\nLearning path:")
        for i, lang in enumerate(languages):
            print(f"  Step {i+1}: Learn {lang}")

        # Accumulator pattern
        numbers = [10, 25, 8, 42, 15, 30]
        total = 0
        for n in numbers:
            total += n
        print(f"\nSum: {total}")
        print(f"Average: {total / len(numbers):.1f}")

        # Nested loops (multiplication table)
        print("\n3× Table:")
        for i in range(1, 6):
            print(f"3 × {i} = {3 * i}")

        # while loop
        n = 256
        print(f"\nHalving {n}:")
        while n >= 1:
            print(n, end=" ")
            n //= 2
      PY
    },

    10 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Functions are <strong>reusable blocks of code</strong> defined with the <code>def</code> keyword. They take inputs (parameters), do work, and optionally return a value. Functions are the cornerstone of organised, maintainable code.</p>
        </div>
        <div class="lc-section">
          <h2>Defining Functions</h2>
          <div class="lc-code-block"><pre><code>def greet(name):
    """Brief description — this is a docstring."""
    return f"Hello, {name}!"

print(greet("Alice"))   # "Hello, Alice!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Parameters</h2>
          <div class="lc-code-block"><pre><code># Default parameter
def power(base, exponent=2):
    return base ** exponent

power(3)      # 9  (uses default exponent=2)
power(2, 8)   # 256

# Multiple return values
def min_max(numbers):
    return min(numbers), max(numbers)

lo, hi = min_max([3, 1, 7, 2, 9])
print(lo, hi)   # 1 9</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>*args and **kwargs</h2>
          <div class="lc-code-block"><pre><code>def total(*numbers):   # Any number of arguments
    return sum(numbers)

total(1, 2, 3)         # 6
total(10, 20, 30, 40)  # 100</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Functions should do <strong>one thing</strong> and do it well. If a function is more than ~20 lines, consider splitting it. Short, focused functions are easier to test, debug, and reuse.</p></div>
      HTML
      starter_code: <<~PY
        # ── Functions ──

        # Basic function
        def square(n):
            return n * n

        print("5² =", square(5))
        print("12² =", square(12))

        # Default parameters
        def greet(name, greeting="Hello"):
            return f"{greeting}, {name}!"

        print(greet("Alice"))
        print(greet("Bob", "Hi"))
        print(greet("Carol", "Hey"))

        # Multiple return values
        def stats(numbers):
            return min(numbers), max(numbers), sum(numbers) / len(numbers)

        data = [88, 95, 72, 61, 99]
        low, high, avg = stats(data)
        print(f"\nData: {data}")
        print(f"Min: {low} | Max: {high} | Avg: {avg:.1f}")

        # Function calling another
        def is_prime(n):
            if n < 2:
                return False
            for i in range(2, int(n**0.5) + 1):
                if n % i == 0:
                    return False
            return True

        primes = [n for n in range(2, 30) if is_prime(n)]
        print(f"\nPrimes under 30: {primes}")

        # Accumulator with function
        def celsius_to_fahrenheit(c):
            return (c * 9/5) + 32

        for temp in [0, 37, 100]:
            print(f"{temp}°C = {celsius_to_fahrenheit(temp)}°F")
      PY
    },

    11 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>A <strong>lambda function</strong> is an anonymous, single-expression function defined with the <code>lambda</code> keyword. They are compact and powerful when used with functions like <code>map()</code>, <code>filter()</code>, and <code>sorted()</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Lambda Syntax</h2>
          <div class="lc-code-block"><pre><code># lambda arguments: expression
square = lambda x: x ** 2
add    = lambda x, y: x + y

print(square(5))      # 25
print(add(3, 7))      # 10</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Lambda with map() and filter()</h2>
          <div class="lc-code-block"><pre><code>numbers = [1, 2, 3, 4, 5]

# map(): apply function to every item
doubled = list(map(lambda x: x * 2, numbers))
# [2, 4, 6, 8, 10]

# filter(): keep items where function returns True
evens = list(filter(lambda x: x % 2 == 0, numbers))
# [2, 4]</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Lambda with sorted()</h2>
          <div class="lc-code-block"><pre><code>students = [("Alice", 92), ("Bob", 78), ("Carol", 88)]

# Sort by score (second element)
sorted_students = sorted(students, key=lambda s: s[1], reverse=True)
# [("Alice", 92), ("Carol", 88), ("Bob", 78)]</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use lambdas for <strong>short, simple operations</strong> passed as arguments. If your lambda is complex (multiple lines or operations), write a proper named <code>def</code> function instead — it will be more readable.</p></div>
      HTML
      starter_code: <<~PY
        # ── Lambda Functions ──

        # Basic lambdas
        square = lambda x: x ** 2
        add = lambda x, y: x + y
        is_even = lambda n: n % 2 == 0

        print("5² =", square(5))
        print("3 + 7 =", add(3, 7))
        print("8 even?", is_even(8))

        # map() — transform every item
        numbers = [1, 2, 3, 4, 5]
        doubled = list(map(lambda x: x * 2, numbers))
        squared = list(map(lambda x: x ** 2, numbers))
        print("Original:", numbers)
        print("Doubled:", doubled)
        print("Squared:", squared)

        # filter() — keep matching items
        evens = list(filter(lambda x: x % 2 == 0, range(1, 11)))
        big = list(filter(lambda x: x > 50, [10, 75, 30, 88, 45, 62]))
        print("Evens 1-10:", evens)
        print("Values > 50:", big)

        # sorted() with key
        students = [
            {"name": "Alice", "score": 92},
            {"name": "Bob",   "score": 78},
            {"name": "Carol", "score": 88},
        ]
        top = sorted(students, key=lambda s: s["score"], reverse=True)
        print("\nRanking:")
        for i, s in enumerate(top):
            print(f"  {i+1}. {s['name']}: {s['score']}")
      PY
    },

    12 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>List comprehensions are a <strong>concise, Pythonic way to create lists</strong>. They replace multi-line for loops with a clean one-liner. Mastering them is a big step toward writing professional Python code.</p>
        </div>
        <div class="lc-section">
          <h2>Basic Syntax</h2>
          <div class="lc-code-block"><pre><code># [expression for item in iterable if condition]

# Old way (for loop)
squares = []
for n in range(1, 6):
    squares.append(n ** 2)

# New way (list comprehension)
squares = [n ** 2 for n in range(1, 6)]
# [1, 4, 9, 16, 25]</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>With Condition (filtering)</h2>
          <div class="lc-code-block"><pre><code># Only even squares
even_squares = [n**2 for n in range(1, 11) if n % 2 == 0]
# [4, 16, 36, 64, 100]

# Passing students
students = [85, 92, 60, 45, 78]
passing = [s for s in students if s >= 70]
# [85, 92, 78]</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Dictionary Comprehensions</h2>
          <div class="lc-code-block"><pre><code># {key: value for item in iterable}
names = ["Alice", "Bob", "Carol"]
lengths = {name: len(name) for name in names}
# {"Alice": 5, "Bob": 3, "Carol": 5}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>List comprehensions are faster than equivalent for loops because Python optimises them internally. But keep them simple — if the expression is complex, a regular loop is more readable.</p></div>
      HTML
      starter_code: <<~PY
        # ── List Comprehensions ──

        # Basic: squares
        squares = [n ** 2 for n in range(1, 11)]
        print("Squares:", squares)

        # With filter: only even squares
        even_squares = [n**2 for n in range(1, 11) if n % 2 == 0]
        print("Even squares:", even_squares)

        # String comprehension
        words = ["  hello  ", "  Python  ", "  world  "]
        cleaned = [w.strip().capitalize() for w in words]
        print("Cleaned:", cleaned)

        # Filter passing grades
        scores = [88, 55, 92, 63, 78, 41, 95, 70]
        passing = [s for s in scores if s >= 70]
        failing = [s for s in scores if s < 70]
        print("Passing:", passing)
        print("Failing:", failing)

        # Celsius to Fahrenheit
        celsius = [0, 20, 37, 100]
        fahrenheit = [round((c * 9/5) + 32, 1) for c in celsius]
        print("\nTemperature conversion:")
        for c, f in zip(celsius, fahrenheit):
            print(f"  {c}°C = {f}°F")

        # Dictionary comprehension
        names = ["Alice", "Bob", "Carol", "Dave"]
        name_lengths = {name: len(name) for name in names}
        print("\nName lengths:", name_lengths)
      PY
    },

    13 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Python can <strong>read from and write to files</strong> on your computer. File I/O (Input/Output) is essential for saving program data, reading configurations, and processing data files like CSVs.</p>
        </div>
        <div class="lc-section">
          <h2>File Modes</h2>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>"r"</code></td><td>Read (default) — file must exist</td></tr>
              <tr><td><code>"w"</code></td><td>Write — creates or overwrites file</td></tr>
              <tr><td><code>"a"</code></td><td>Append — adds to end of file</td></tr>
              <tr><td><code>"r+"</code></td><td>Read and write</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Reading Files</h2>
          <div class="lc-code-block"><pre><code># Always use with — it closes the file automatically
with open("data.txt", "r") as file:
    content = file.read()        # Read entire file
    # OR
    lines = file.readlines()     # List of lines</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Writing Files</h2>
          <div class="lc-code-block"><pre><code>with open("output.txt", "w") as file:
    file.write("Hello, File!\n")
    file.write("Second line\n")

# Append to file
with open("log.txt", "a") as file:
    file.write("New log entry\n")</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use the <code>with</code> statement for file operations. It automatically closes the file even if an exception occurs — no need for manual <code>file.close()</code> calls.</p></div>
      HTML
      starter_code: <<~PY
        # ── File I/O ──
        # Simulating file operations (output shown as if running)

        # Simulating writing to a file
        data = [
            "Name,Score,Grade",
            "Alice,92,A",
            "Bob,78,B",
            "Carol,88,B+",
            "Dave,55,F"
        ]

        print("=== Writing to grades.csv ===")
        for line in data:
            print(line)

        print("\n=== Reading back (simulated) ===")
        print("Rows read:", len(data))

        # Simulating reading and processing
        print("\n=== Processing data ===")
        header = data[0].split(",")
        print("Columns:", header)

        students = []
        for row in data[1:]:
            parts = row.split(",")
            students.append({
                "name": parts[0],
                "score": int(parts[1]),
                "grade": parts[2]
            })

        for s in students:
            print(f"  {s['name']}: {s['score']} ({s['grade']})")

        avg = sum(s["score"] for s in students) / len(students)
        print(f"\nClass average: {avg:.1f}")
        print("Passing:", sum(1 for s in students if s["score"] >= 60))
      PY
    },

    14 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Exceptions are <strong>errors that occur during program execution</strong>. Instead of letting your program crash, Python's <code>try/except</code> lets you catch and handle errors gracefully.</p>
        </div>
        <div class="lc-section">
          <h2>try / except / else / finally</h2>
          <div class="lc-code-block"><pre><code>try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
except ValueError as e:
    print(f"Value error: {e}")
else:
    print("Success!", result)  # Only runs if no exception
finally:
    print("Always runs")       # Cleanup code here</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Exception Types</h2>
          <table class="lc-table">
            <thead><tr><th>Exception</th><th>Cause</th></tr></thead>
            <tbody>
              <tr><td><code>ValueError</code></td><td>Wrong value type: <code>int("abc")</code></td></tr>
              <tr><td><code>ZeroDivisionError</code></td><td>Division by zero</td></tr>
              <tr><td><code>IndexError</code></td><td>List index out of range</td></tr>
              <tr><td><code>KeyError</code></td><td>Dict key not found</td></tr>
              <tr><td><code>TypeError</code></td><td>Wrong type operation</td></tr>
              <tr><td><code>FileNotFoundError</code></td><td>File does not exist</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Raising Custom Exceptions</h2>
          <div class="lc-code-block"><pre><code>def set_age(age):
    if age &lt; 0:
        raise ValueError("Age cannot be negative")
    return age</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Catch <strong>specific</strong> exceptions, not just bare <code>except:</code>. Catching everything hides bugs and makes debugging very hard. Be precise: <code>except ValueError</code> is better than <code>except Exception</code>.</p></div>
      HTML
      starter_code: <<~PY
        # ── Exception Handling ──

        # Basic try/except
        def safe_divide(a, b):
            try:
                result = a / b
                return result
            except ZeroDivisionError:
                print(f"Error: Cannot divide {a} by 0")
                return None

        print(safe_divide(10, 2))
        print(safe_divide(10, 0))

        # Multiple exception types
        def safe_parse(value):
            try:
                number = int(value)
                result = 100 / number
                print(f"100 / {number} = {result}")
            except ValueError:
                print(f"'{value}' is not a valid number")
            except ZeroDivisionError:
                print("Cannot divide by zero")

        safe_parse("5")
        safe_parse("hello")
        safe_parse("0")

        # Custom exception
        class AgeError(Exception):
            pass

        def validate_age(age):
            try:
                if not isinstance(age, int):
                    raise TypeError("Age must be an integer")
                if age < 0 or age > 150:
                    raise AgeError(f"Invalid age: {age}")
                print(f"Valid age: {age}")
            except TypeError as e:
                print(f"TypeError: {e}")
            except AgeError as e:
                print(f"AgeError: {e}")

        validate_age(25)
        validate_age(-5)
        validate_age("twenty")
        validate_age(200)
      PY
    },

    15 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Object-Oriented Programming (OOP) organises code around <strong>objects</strong> — which combine data (attributes) and behaviour (methods). A <code>class</code> is a blueprint; an <em>object</em> is an instance created from that blueprint.</p>
        </div>
        <div class="lc-section">
          <h2>Defining a Class</h2>
          <div class="lc-code-block"><pre><code>class Dog:
    # __init__ is the constructor — called when creating an object
    def __init__(self, name, breed):
        self.name  = name    # Instance attribute
        self.breed = breed

    def bark(self):
        return f"{self.name} says: Woof!"

    def describe(self):
        return f"{self.name} is a {self.breed}"

# Creating instances
rex = Dog("Rex", "German Shepherd")
max = Dog("Max", "Labrador")

print(rex.bark())       # "Rex says: Woof!"
print(max.describe())   # "Max is a Labrador"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Key OOP Terms</h2>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Class</strong></td><td>Blueprint/template for objects</td></tr>
              <tr><td><strong>Object / Instance</strong></td><td>A specific item created from the class</td></tr>
              <tr><td><strong>Attribute</strong></td><td>Data stored inside the object (<code>self.name</code>)</td></tr>
              <tr><td><strong>Method</strong></td><td>Function defined inside a class</td></tr>
              <tr><td><strong><code>__init__</code></strong></td><td>Constructor — runs when object is created</td></tr>
              <tr><td><strong><code>self</code></strong></td><td>Reference to the current instance</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Every method in a class must have <code>self</code> as its first parameter. <code>self</code> refers to the specific instance calling the method. Python passes it automatically — you don't include it when calling.</p></div>
      HTML
      starter_code: <<~PY
        # ── Classes and Objects ──

        class BankAccount:
            def __init__(self, owner, balance=0):
                self.owner = owner
                self.balance = balance
                self.transactions = []

            def deposit(self, amount):
                self.balance += amount
                self.transactions.append(f"+{amount}")
                print(f"Deposited ₹{amount}. Balance: ₹{self.balance}")

            def withdraw(self, amount):
                if amount > self.balance:
                    print("Insufficient funds!")
                else:
                    self.balance -= amount
                    self.transactions.append(f"-{amount}")
                    print(f"Withdrew ₹{amount}. Balance: ₹{self.balance}")

            def statement(self):
                print(f"\n=== {self.owner}'s Account ===")
                for t in self.transactions:
                    print(f"  {t}")
                print(f"Balance: ₹{self.balance}")


        # Create objects
        alice = BankAccount("Alice", 1000)
        bob   = BankAccount("Bob")

        # Use methods
        alice.deposit(500)
        alice.withdraw(200)
        alice.withdraw(2000)

        bob.deposit(300)
        bob.deposit(700)

        # Print statements
        alice.statement()
        bob.statement()
      PY
    },

    16 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p><strong>Inheritance</strong> allows a class (child) to inherit all attributes and methods from another class (parent). This promotes code reuse and models real-world "is-a" relationships: a Dog IS-A Animal.</p>
        </div>
        <div class="lc-section">
          <h2>Inheritance Syntax</h2>
          <div class="lc-code-block"><pre><code>class Animal:
    def __init__(self, name):
        self.name = name
    def speak(self):
        return "..."

class Dog(Animal):       # Dog inherits from Animal
    def speak(self):     # Override parent method
        return f"{self.name}: Woof!"

class Cat(Animal):
    def speak(self):
        return f"{self.name}: Meow!"

dog = Dog("Rex")
cat = Cat("Whiskers")
print(dog.speak())   # "Rex: Woof!"
print(cat.speak())   # "Whiskers: Meow!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>super() — Call Parent's Method</h2>
          <div class="lc-code-block"><pre><code>class Employee:
    def __init__(self, name, salary):
        self.name   = name
        self.salary = salary

class Manager(Employee):
    def __init__(self, name, salary, team_size):
        super().__init__(name, salary)  # Calls Employee.__init__
        self.team_size = team_size</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>isinstance() and issubclass()</h2>
          <div class="lc-code-block"><pre><code>isinstance(dog, Dog)     # True
isinstance(dog, Animal)  # True — Dog is a type of Animal
issubclass(Dog, Animal)  # True</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>super()</code> when overriding <code>__init__</code> so the parent's constructor runs too. Without it, parent attributes like <code>self.name</code> won't be set for the child class.</p></div>
      HTML
      starter_code: <<~PY
        # ── Inheritance ──

        class Shape:
            def __init__(self, color="white"):
                self.color = color

            def describe(self):
                return f"A {self.color} {self.__class__.__name__}"

            def area(self):
                return 0


        class Circle(Shape):
            def __init__(self, radius, color="white"):
                super().__init__(color)
                self.radius = radius

            def area(self):
                return round(3.14159 * self.radius ** 2, 2)


        class Rectangle(Shape):
            def __init__(self, width, height, color="white"):
                super().__init__(color)
                self.width = width
                self.height = height

            def area(self):
                return self.width * self.height


        class Square(Rectangle):      # Square IS-A Rectangle
            def __init__(self, side, color="white"):
                super().__init__(side, side, color)


        # Create shapes
        shapes = [
            Circle(5, "red"),
            Rectangle(4, 6, "blue"),
            Square(3, "green"),
            Circle(2, "yellow"),
        ]

        for shape in shapes:
            print(f"{shape.describe()} — Area: {shape.area()}")

        # isinstance check
        c = Circle(3)
        print(f"\nCircle is Shape: {isinstance(c, Shape)}")
        print(f"Square is Rectangle: {issubclass(Square, Rectangle)}")
      PY
    },

    17 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Python's <strong>module system</strong> lets you organise code into reusable files and use code written by others. The vast ecosystem of third-party packages (installed with <code>pip</code>) is one of Python's biggest strengths.</p>
        </div>
        <div class="lc-section">
          <h2>Importing Modules</h2>
          <div class="lc-code-block"><pre><code>import math                # Import entire module
import math as m           # Alias
from math import sqrt, pi  # Import specific names
from math import *         # Import all (avoid!)

print(math.sqrt(25))       # 5.0
print(m.pi)                # 3.14159…
print(sqrt(16))            # 4.0</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Useful Standard Library Modules</h2>
          <table class="lc-table">
            <thead><tr><th>Module</th><th>Use Case</th></tr></thead>
            <tbody>
              <tr><td><code>math</code></td><td>sqrt, floor, ceil, pi, trig</td></tr>
              <tr><td><code>random</code></td><td>Random numbers, shuffle, choice</td></tr>
              <tr><td><code>datetime</code></td><td>Dates, times, time zones</td></tr>
              <tr><td><code>os</code></td><td>File system, environment variables</td></tr>
              <tr><td><code>json</code></td><td>Parse and generate JSON</td></tr>
              <tr><td><code>collections</code></td><td>Counter, defaultdict, OrderedDict</td></tr>
              <tr><td><code>re</code></td><td>Regular expressions</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Installing Packages</h2>
          <div class="lc-code-block"><pre><code># In terminal:
pip install numpy          # Scientific computing
pip install pandas         # Data analysis
pip install matplotlib     # Visualisation
pip install requests       # HTTP requests
pip install scikit-learn   # Machine learning</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Python's standard library is called "batteries included" — it covers almost everything from networking to date handling. Always check if a module exists before installing a third-party package.</p></div>
      HTML
      starter_code: <<~PY
        # ── Modules and Packages ──

        # math module
        import math

        print("=== math module ===")
        print("sqrt(144):", math.sqrt(144))
        print("floor(3.9):", math.floor(3.9))
        print("ceil(3.1):", math.ceil(3.1))
        print("pi:", round(math.pi, 5))
        print("Circle area r=5:", round(math.pi * 5**2, 2))

        # random module
        import random

        print("\n=== random module ===")
        print("Random 1-10:", random.randint(1, 10))
        print("Random float:", round(random.random(), 3))

        dice = [1, 2, 3, 4, 5, 6]
        print("Dice roll:", random.choice(dice))

        cards = list(range(1, 14))
        random.shuffle(cards)
        print("Shuffled cards:", cards[:5], "...")

        # collections module
        from collections import Counter

        print("\n=== collections.Counter ===")
        words = ["python", "ai", "python", "ml", "ai", "python", "data"]
        count = Counter(words)
        print("Word counts:", dict(count))
        print("Most common:", count.most_common(2))

        # String operations (no import needed)
        print("\n=== String ops ===")
        import string
        print("Digits:", string.digits)
        print("Uppercase:", string.ascii_uppercase)
      PY
    },

    18 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>A <strong>virtual environment</strong> is an isolated Python environment for a specific project with its own packages and Python version. It prevents conflicts between projects that need different package versions.</p>
        </div>
        <div class="lc-section">
          <h2>The Problem Virtual Environments Solve</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">Project A<br><small>needs Django 4.0</small></div>
            <div class="lc-flow-arrow">⚡</div>
            <div class="lc-flow-step">Project B<br><small>needs Django 3.2</small></div>
          </div>
          <p style="margin-top:12px">Without virtual environments, you can only install one version globally. They conflict. Virtual environments solve this by giving each project its own isolated space.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Using Venvs</h2>
          <div class="lc-code-block"><pre><code># Create
python -m venv myenv

# Activate (macOS/Linux)
source myenv/bin/activate

# Activate (Windows)
myenv\Scripts\activate

# Install packages (only for this project)
pip install requests pandas

# Save dependencies
pip freeze &gt; requirements.txt

# Deactivate
deactivate</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>requirements.txt</h2>
          <div class="lc-code-block"><pre><code># requirements.txt
numpy==1.24.0
pandas==2.0.1
scikit-learn==1.3.0
matplotlib==3.7.1

# Install all from file
pip install -r requirements.txt</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always create a virtual environment at the start of every new Python project. It is a professional habit that prevents hours of debugging "it works on my machine" dependency issues.</p></div>
      HTML
      starter_code: <<~PY
        # ── Virtual Environments ──
        # Simulating virtual environment workflow

        # Step 1: Show current environment info
        import sys

        print("=== Python Environment ===")
        print("Python version:", sys.version.split()[0])
        print("Platform:", sys.platform)

        # Step 2: Simulate checking installed packages
        packages = {
            "numpy": "1.24.0",
            "pandas": "2.0.1",
            "matplotlib": "3.7.1",
            "scikit-learn": "1.3.0",
            "requests": "2.31.0"
        }

        print("\n=== Installed Packages (simulated) ===")
        for pkg, version in packages.items():
            print(f"  {pkg}=={version}")

        # Step 3: Simulate requirements.txt content
        print("\n=== requirements.txt content ===")
        for pkg, version in packages.items():
            print(f"{pkg}=={version}")

        # Why virtual environments matter
        print("\n=== Project Isolation ===")
        projects = [
            ("Project A — ML App", "tensorflow==2.12.0"),
            ("Project B — Web App", "django==4.2.0"),
            ("Project C — Data Analysis", "pandas==1.5.0"),
        ]
        for project, dependency in projects:
            print(f"  {project}")
            print(f"    └── {dependency}")

        print("\n✅ Each project has its own isolated environment!")
        print("   No version conflicts. Clean dependencies.")
      PY
    },

    19 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Python's <strong>standard library</strong> includes hundreds of built-in modules — no installation required. These cover everything from file handling to networking, cryptography, and more. This is why Python is called "batteries included."</p>
        </div>
        <div class="lc-section">
          <h2>os Module — File System</h2>
          <div class="lc-code-block"><pre><code>import os

os.getcwd()               # Current directory
os.listdir(".")           # List files
os.path.exists("file.txt") # Check if file exists
os.path.join("dir", "file") # Build safe paths
os.environ.get("HOME")    # Environment variables</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>datetime Module</h2>
          <div class="lc-code-block"><pre><code>from datetime import datetime, date, timedelta

now = datetime.now()
print(now.strftime("%Y-%m-%d %H:%M:%S"))  # "2024-01-15 14:30:00"

today = date.today()
birthday = date(2000, 6, 15)
age = (today - birthday).days // 365</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>json Module</h2>
          <div class="lc-code-block"><pre><code>import json

# Dict → JSON string
data = {"name": "Alice", "age": 28}
json_str = json.dumps(data)        # '{"name": "Alice", "age": 28}'

# JSON string → Dict
parsed = json.loads(json_str)      # {"name": "Alice", ...}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Before installing a third-party package, always check the standard library docs. <code>urllib</code> handles HTTP, <code>csv</code> handles CSV files, <code>sqlite3</code> handles databases — all built-in, zero installation!</p></div>
      HTML
      starter_code: <<~PY
        # ── Python Standard Library ──

        # datetime module
        from datetime import datetime, date, timedelta

        now = datetime.now()
        print("Now:", now.strftime("%Y-%m-%d %H:%M"))

        today = date.today()
        print("Today:", today)

        future = today + timedelta(days=30)
        print("30 days from now:", future)

        new_year = date(today.year + 1, 1, 1)
        days_until = (new_year - today).days
        print(f"Days until New Year: {days_until}")

        # json module
        import json

        person = {
            "name": "Adarsh",
            "age": 21,
            "skills": ["Python", "AI", "ML"],
            "active": True
        }

        # Dict to JSON
        json_str = json.dumps(person, indent=2)
        print("\n=== JSON Output ===")
        print(json_str)

        # JSON to Dict
        parsed = json.loads(json_str)
        print("\nParsed name:", parsed["name"])
        print("Skills:", parsed["skills"])

        # math module quick reference
        import math
        print("\n=== Math ===")
        print(f"sqrt(2) = {math.sqrt(2):.4f}")
        print(f"log(100) = {math.log10(100):.1f}")
        print(f"sin(90°) = {math.sin(math.radians(90)):.1f}")
      PY
    },

    20 => {
      body: <<~HTML,
        <div class="lc-intro">
          <p>Congratulations on completing the Python course! You have learned the fundamentals of one of the world's most powerful and versatile programming languages. This review brings everything together.</p>
        </div>
        <div class="lc-section">
          <h2>Core Python ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Variables and data types: int, float, str, bool, None</li>
            <li>Strings: methods, slicing, f-strings</li>
            <li>Numbers and math operations: <code>//</code>, <code>%</code>, <code>**</code></li>
            <li>Control flow: if/elif/else, ternary expressions</li>
            <li>Loops: for, while, enumerate, break, continue</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Data Structures ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Lists: append, remove, sort, slice, list comprehensions</li>
            <li>Tuples: immutable sequences, packing/unpacking</li>
            <li>Sets: unique values, intersection, union</li>
            <li>Dictionaries: key-value pairs, .get(), .items()</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Functions and OOP ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Functions: def, parameters, defaults, return, *args</li>
            <li>Lambda functions with map() and filter()</li>
            <li>Classes: __init__, self, methods, attributes</li>
            <li>Inheritance: super(), method overriding</li>
            <li>Exceptions: try/except/finally, custom exceptions</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Jump into <strong>Data Science</strong> with NumPy and Pandas, or start <strong>Machine Learning</strong> with scikit-learn. Build projects: a data analyser, a web scraper, or a chatbot. Python opens every door!</p></div>
      HTML
      starter_code: <<~PY
        # ── Python Review — Complete Mini Project ──
        # Student Grade Management System

        class Student:
            def __init__(self, name, student_id):
                self.name = name
                self.id = student_id
                self.grades = {}

            def add_grade(self, subject, score):
                self.grades[subject] = score

            def average(self):
                if not self.grades:
                    return 0
                return sum(self.grades.values()) / len(self.grades)

            def letter_grade(self):
                avg = self.average()
                if avg >= 90: return "A"
                if avg >= 80: return "B"
                if avg >= 70: return "C"
                if avg >= 60: return "D"
                return "F"

            def report(self):
                print(f"\n{'='*35}")
                print(f"  {self.name} (ID: {self.id})")
                print(f"{'='*35}")
                for subject, score in self.grades.items():
                    bar = "█" * (score // 10)
                    print(f"  {subject:<12} {score:3}  {bar}")
                print(f"  {'Average':<12} {self.average():.1f} — Grade: {self.letter_grade()}")


        # Create students
        students = [
            Student("Alice Kumar", "S001"),
            Student("Bob Singh", "S002"),
            Student("Carol Patel", "S003"),
        ]

        # Add grades
        subjects = ["Python", "Math", "AI", "Data Sci"]
        import random
        random.seed(42)
        for s in students:
            for sub in subjects:
                s.add_grade(sub, random.randint(65, 99))

        # Print reports
        for s in students:
            s.report()

        # Class statistics
        averages = [s.average() for s in students]
        print(f"\n{'='*35}")
        print(f"  CLASS STATISTICS")
        print(f"  Top student: {students[averages.index(max(averages))].name}")
        print(f"  Class average: {sum(averages)/len(averages):.1f}")
        print(f"  Passing all (≥70): {sum(1 for s in students if s.average() >= 70)}/{len(students)}")
      PY
    }
  }.freeze
end

module PythonContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Introduction to Python</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Python is a <strong>high-level, general-purpose programming language</strong>. High-level means it is close to human language. General-purpose means you can use it for many kinds of programs. Its syntax (the rules for writing code) is clean and easy to read. Guido van Rossum created Python, and it was first released in 1991. Today it is the most popular language for AI, data science, automation and scripting.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>How Python Runs Your Code</h2>
          <p>You write your code in a <code>.py</code> file. The Python interpreter (the program that runs Python code) is usually <strong>CPython</strong>. It first turns your file into <em>bytecode</em> (simple instructions for the computer). Then it runs that bytecode line by line. You never run a separate compile step yourself. That is why Python is called an <strong>interpreted</strong> language.</p>
          <ul class="lc-list">
            <li><strong>Python 3</strong> is the only version you should learn. Python 2 stopped getting updates in 2020.</li>
            <li>The latest stable version in 2026 is <strong>Python 3.14</strong>. The editor in this course runs <strong>Python 3.13</strong> inside your browser (using Pyodide). So everything you learn here works on current Python.</li>
            <li>You can also try code line by line in the <strong>REPL</strong> (an interactive mode where you type one line and see the result). Type <code>python</code> (or <code>python3</code>, or <code>py</code> on Windows) in a terminal. You then see a <code>&gt;&gt;&gt;</code> prompt.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Why Learn Python?</h2>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>What Python is used for</th><th>Popular tools</th></tr></thead>
            <tbody>
              <tr><td>AI and machine learning</td><td>Training and using models</td><td>PyTorch, scikit-learn</td></tr>
              <tr><td>Data science</td><td>Cleaning and analysing data</td><td>pandas, NumPy</td></tr>
              <tr><td>Web back-ends</td><td>Websites and APIs (ways for programs to talk to each other)</td><td>Django, FastAPI, Flask</td></tr>
              <tr><td>Automation</td><td>Renaming files, sending reports, scraping (collecting data from websites)</td><td>Standard library</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Your First Program</h2>
          <p><code>print()</code> shows a value on the screen. Text goes inside quotes. Numbers do not need quotes.</p>
          <div class="lc-code-block"><pre><code>print("Hello, World!")
        print("Python", "is", "fun")        # several values: a space goes between them
        print("2026", "09", "25", sep="-")  # sep changes the separator
        print("Loading", end="... ")        # end changes what comes after
        print("done!")
        print(10 + 5)</code></pre></div>
          <p><strong>Output:</strong></p>
          <div class="lc-code-block"><pre><code>Hello, World!
        Python is fun
        2026-09-25
        Loading... done!
        15</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Comments and Indentation</h2>
          <p>A <code>#</code> starts a <strong>comment</strong> (a note for humans). Python ignores everything after it on that line. Use comments to explain <em>why</em> the code does something.</p>
          <p>Python uses <strong>indentation</strong> (spaces at the start of a line) to group lines into a block. Other languages use <code>{ }</code> for this. The standard is <strong>4 spaces</strong>.</p>
          <div class="lc-code-block"><pre><code>for step in [1, 2, 3]:
            print("step", step)    # indented: runs 3 times
        print("finished")          # not indented: runs once</code></pre></div>
          <p>You will learn loops in Lesson 5. For now, see that the indented line belongs to the <code>for</code> line above it.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Reading an Error Message</h2>
          <p>Errors are normal. Python shows the line number of the error. The last line of the message shows the <strong>type</strong> of error.</p>
          <div class="lc-code-block"><pre><code>print("Hi)
        # SyntaxError: unterminated string literal

        Print("Hi")
        # NameError: name 'Print' is not defined</code></pre></div>
          <p>Always read the <strong>last line</strong> of the error first. Then look at the line number above it.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Python on Your Own Computer</h2>
          <p>Download Python from <strong>python.org</strong>. On Windows, the best way is now the <strong>Python install manager</strong> (from python.org or the Microsoft Store). On macOS and Linux, use the python.org installer or your package manager (a tool that installs software). Then check it in a terminal and open the interactive REPL:</p>
          <div class="lc-code-block"><pre><code>$ python --version
        Python 3.14.7
        $ python
        &gt;&gt;&gt; 7 * 6
        42
        &gt;&gt;&gt; print("Namaste")
        Namaste
        &gt;&gt;&gt; exit()</code></pre></div>
          <p>Your version number may be different. In the REPL you don't even need <code>print()</code>. When you type an expression (a piece of code that gives a value), the REPL shows its value. For real programs, save the code in a file such as <code>hello.py</code>. Then run <code>python hello.py</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Writing <code>Print</code> instead of <code>print</code>. Python is <strong>case-sensitive</strong>: capital and small letters are different.</li>
            <li>Forgetting a closing quote or bracket. This gives a <code>SyntaxError</code>.</li>
            <li>Copying old Python 2 code like <code>print "hi"</code>. In Python 3, <code>print</code> is a function and needs brackets.</li>
            <li>Mixing tabs and spaces for indentation. Set your editor to insert 4 spaces.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>In the editor, print your name, your city and your favourite subject on one line, separated by <code> | </code>. Use <code>sep</code> for this. Then print the result of <code>365 * 24</code> with a label, like <code>Hours in a year: 8760</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Run your code often, after every two or three new lines. Small steps make errors easy to find.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 1: Your first Python program

        print("Hello, World!")
        print("Welcome to Python")

        # print() can take several values; it puts a space between them
        print("Python", "is", "fun")

        # sep changes the separator, end changes what comes after the line
        print("2026", "09", "25", sep="-")
        print("Loading", end="... ")
        print("done!")

        # Python can do maths right away
        print("10 + 5 =", 10 + 5)
        print("2 ** 10 =", 2 ** 10)
        print("Hours in a day:", 24)

        # Comments start with # and are ignored by Python
        # print("This line will not run")

        # Indentation groups lines into a block
        for step in [1, 2, 3]:
            print("  step", step)
        print("Finished all steps")

        # Which Python version is running this code?
        import sys
        print("Python version:", sys.version.split()[0])
      PY
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Variables, Numbers and Types</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>variable</strong> is a name that points to a value. You create one with <code>=</code>. This is called assigning. Python finds the type (the kind of value) by itself. This is called <strong>dynamic typing</strong>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Creating Variables</h2>
          <div class="lc-code-block"><pre><code>name = "Priya"        # str
        age = 21              # int
        height_m = 1.62       # float
        is_student = True     # bool
        nickname = None       # NoneType: "no value yet"

        age = age + 1         # a variable can be updated
        x, y = 10, 20         # assign two variables at once</code></pre></div>
          <p><strong>Naming rules:</strong> use letters, digits and <code>_</code>. A name cannot start with a digit. Names are case-sensitive (<code>Age</code> and <code>age</code> are different). The Python style guide (PEP 8) uses <code>snake_case</code> (small letters with underscores between words): <code>total_marks</code>, not <code>totalMarks</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>The Basic Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>int</code></td><td><code>42</code>, <code>-7</code>, <code>2 ** 100</code></td><td>Whole numbers of any size</td></tr>
              <tr><td><code>float</code></td><td><code>3.14</code>, <code>1e6</code></td><td>Decimal numbers (not always exact)</td></tr>
              <tr><td><code>str</code></td><td><code>"hello"</code>, <code>'hi'</code></td><td>Text</td></tr>
              <tr><td><code>bool</code></td><td><code>True</code>, <code>False</code></td><td>Yes / no (capital T and F)</td></tr>
              <tr><td><code>NoneType</code></td><td><code>None</code></td><td>No value</td></tr>
            </tbody>
          </table>
          <p>Use <code>type(x)</code> to see a type. Use <code>isinstance(x, int)</code> to check a type.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Arithmetic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>+ - *</code></td><td>Add, subtract, multiply</td><td><code>17 * 5</code></td><td>85</td></tr>
              <tr><td><code>/</code></td><td>Division (always a float)</td><td><code>17 / 5</code></td><td>3.4</td></tr>
              <tr><td><code>//</code></td><td>Floor division (divide, then round down)</td><td><code>17 // 5</code></td><td>3</td></tr>
              <tr><td><code>%</code></td><td>Remainder (modulo)</td><td><code>17 % 5</code></td><td>2</td></tr>
              <tr><td><code>**</code></td><td>Power</td><td><code>2 ** 10</code></td><td>1024</td></tr>
            </tbody>
          </table>
          <p>Precedence (the order of operations) is like school maths: <code>**</code> first, then <code>* / // %</code>, then <code>+ -</code>. Use brackets to make it clear: <code>(a + b) / 2</code>. Short forms like <code>score += 5</code> mean <code>score = score + 5</code>.</p>
          <p><code>//</code> rounds <strong>down</strong> (toward minus infinity), so <code>-17 // 5</code> is <code>-4</code>, not <code>-3</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Converting Between Types</h2>
          <div class="lc-code-block"><pre><code>print(int("85") + 10)     # 95
        print(int(3.9))           # 3   (cuts off the decimal part, no rounding)
        print(float("2.5"))       # 2.5
        print(str(99) + "%")      # 99%
        print(bool(0), bool(""), bool("hi"))   # False False True
        int("3.5")                # ValueError: invalid literal for int()</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Float Surprises</h2>
          <p>Python stores floats in binary (ones and zeros). So some decimals cannot be stored exactly:</p>
          <div class="lc-code-block"><pre><code>print(0.1 + 0.2)              # 0.30000000000000004
        print(round(0.1 + 0.2, 2))    # 0.3
        print(round(2.5), round(3.5)) # 2 4  (ties go to the even number)</code></pre></div>
          <p>For money, count in whole paise (<code>int</code>) or use the <code>decimal</code> module.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Reading Input from the User</h2>
          <p>On your own computer, <code>input()</code> shows a message and waits for the user to type. It <strong>always returns a string</strong>. So convert it before you do maths:</p>
          <div class="lc-code-block"><pre><code>age_text = input("Your age: ")   # user types 21  -&gt;  "21" (a str)
        age = int(age_text)               # 21 (an int)
        print("Next year you will be", age + 1)</code></pre></div>
          <p>The starter programs in this course use fixed values instead of <code>input()</code>, so every run gives the same output.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><code>"5" + 3</code> gives a <code>TypeError</code>. Convert first: <code>int("5") + 3</code>.</li>
            <li>Writing <code>true</code> instead of <code>True</code> gives a <code>NameError</code>.</li>
            <li>Expecting <code>int(3.9)</code> to be 4. It is 3. Use <code>round(3.9)</code> to round.</li>
            <li>Comparing floats with <code>==</code>: <code>0.1 + 0.2 == 0.3</code> is <code>False</code>. Use <code>math.isclose()</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>A mobile plan costs ₹299 per month. Store it in a variable. Then print the cost for one year and the cost per day (<code>/ 30</code>). Also print how many full weeks are in 100 days (<code>//</code>) and the days left over (<code>%</code>).</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Choose names that explain the value: <code>price_per_kg</code> is much clearer than <code>p</code>. Good names explain your code without extra notes.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 2: Variables, numbers and types

        name = "Priya"
        age = 21
        height_m = 1.62
        is_student = True
        nickname = None

        print("name:", name, type(name))
        print("age:", age, type(age))
        print("height_m:", height_m, type(height_m))
        print("is_student:", is_student, type(is_student))
        print("nickname:", nickname, type(nickname))

        print("--- Arithmetic with a = 17, b = 5 ---")
        a, b = 17, 5
        print("a + b  =", a + b)
        print("a / b  =", a / b)
        print("a // b =", a // b)
        print("a % b  =", a % b)
        print("a ** 2 =", a ** 2)
        print("-17 // 5 =", -17 // 5)

        print("--- Conversion ---")
        marks = int("85")
        print("int('85') + 10 =", marks + 10)
        print("int(3.9) =", int(3.9))
        print("float('2.5') =", float("2.5"))
        print("str(99) + '%' =", str(99) + "%")
        print("bool(0), bool(''), bool('hi') =", bool(0), bool(""), bool("hi"))

        print("--- Floats and big ints ---")
        print("0.1 + 0.2 =", 0.1 + 0.2)
        print("round(0.1 + 0.2, 2) =", round(0.1 + 0.2, 2))
        print("round(2.5), round(3.5) =", round(2.5), round(3.5))
        print("2 ** 100 =", 2 ** 100)

        score = 10
        score += 5
        score *= 2
        print("score after += 5 and *= 2:", score)
      PY
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Working with Strings</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>string</strong> (<code>str</code>) is a sequence of characters (letters, digits, spaces and symbols). You can pick parts of a string with indexing and slicing. Strings have many useful methods. You can also use <strong>f-strings</strong> to format text neatly.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Creating Strings</h2>
          <div class="lc-code-block"><pre><code>a = "double quotes"
        b = 'single quotes'
        c = "It's easy"                 # mix quotes to avoid escaping
        d = "Line 1\nLine 2\tTabbed"    # \n new line, \t tab
        e = """A string that
        spans several lines"""</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Indexing and Slicing</h2>
          <p>Each character has a position (an index), starting at <strong>0</strong>. Negative positions count from the end. A slice (a part of the string) <code>s[start:stop:step]</code> includes <code>start</code> but <strong>does not include</strong> <code>stop</code>.</p>
          <div class="lc-code-block"><pre><code>word = "Python"
        #       P  y  t  h  o  n
        #       0  1  2  3  4  5
        #      -6 -5 -4 -3 -2 -1
        print(word[0], word[-1])   # P n
        print(word[1:4])           # yth
        print(word[:2])            # Py
        print(word[::-1])          # nohtyP  (reversed)</code></pre></div>
          <p>Strings are <strong>immutable</strong>: you cannot change them. <code>word[0] = "J"</code> raises a <code>TypeError</code>. Make a new string instead: <code>"J" + word[1:]</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Essential Methods</h2>
          <p>A method is a function that belongs to a value. String methods <strong>return a new string</strong>. The original never changes.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>upper()</code> / <code>lower()</code></td><td><code>"Hi".upper()</code></td><td><code>'HI'</code></td></tr>
              <tr><td><code>title()</code></td><td><code>"ada lovelace".title()</code></td><td><code>'Ada Lovelace'</code></td></tr>
              <tr><td><code>strip()</code></td><td><code>"  hi  ".strip()</code></td><td><code>'hi'</code></td></tr>
              <tr><td><code>replace(a, b)</code></td><td><code>"cat".replace("c", "b")</code></td><td><code>'bat'</code></td></tr>
              <tr><td><code>split(sep)</code></td><td><code>"a,b,c".split(",")</code></td><td><code>['a', 'b', 'c']</code></td></tr>
              <tr><td><code>sep.join(list)</code></td><td><code>"-".join(["a", "b"])</code></td><td><code>'a-b'</code></td></tr>
              <tr><td><code>find(sub)</code></td><td><code>"banana".find("n")</code></td><td><code>2</code> (or <code>-1</code> if not found)</td></tr>
              <tr><td><code>count(sub)</code></td><td><code>"banana".count("a")</code></td><td><code>3</code></td></tr>
              <tr><td><code>startswith()</code></td><td><code>"Hello".startswith("He")</code></td><td><code>True</code></td></tr>
              <tr><td><code>isdigit()</code></td><td><code>"2026".isdigit()</code></td><td><code>True</code></td></tr>
            </tbody>
          </table>
          <p>Use <code>len(s)</code> for the length. Use <code>"sub" in s</code> to check if some text is inside.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>f-Strings: The Modern Way to Format</h2>
          <p>Put <code>f</code> before the quotes. Then write any expression inside <code>{ }</code>. After a colon you can add a <strong>format spec</strong> (rules for how the value looks).</p>
          <div class="lc-code-block"><pre><code>name, price, qty = "Notebook", 45.5, 3
        print(f"{name} x {qty} = ₹{price * qty:.2f}")   # Notebook x 3 = ₹136.50
        print(f"{1234567:,}")                          # 1,234,567
        print(f"[{'left':&lt;8}] [{'right':&gt;8}]")         # [left    ] [   right]
        print(f"{qty=}")                               # qty=3  (handy for debugging)</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Checking Text</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>True when…</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>isdigit()</code></td><td>All characters are digits</td><td><code>"2026".isdigit()</code> → True</td></tr>
              <tr><td><code>isalpha()</code></td><td>All characters are letters</td><td><code>"Asha".isalpha()</code> → True</td></tr>
              <tr><td><code>isspace()</code></td><td>Only whitespace (spaces, tabs, new lines)</td><td><code>"   ".isspace()</code> → True</td></tr>
              <tr><td><code>endswith()</code></td><td>Ends with the given text</td><td><code>"notes.txt".endswith(".txt")</code> → True</td></tr>
            </tbody>
          </table>
          <p><code>isdigit()</code>, <code>isalpha()</code> and <code>isspace()</code> all return <code>False</code> for an empty string <code>""</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Calling <code>name.upper()</code> and expecting <code>name</code> to change. Save the result: <code>name = name.upper()</code>.</li>
            <li>Forgetting the <code>f</code>: <code>"Hi {name}"</code> prints the braces as they are.</li>
            <li><code>"Age: " + 21</code> is a <code>TypeError</code>. Use an f-string: <code>f"Age: {21}"</code>.</li>
            <li>Joining thousands of pieces in a loop with <code>+=</code> is slow. Put the pieces in a list and use <code>"".join(pieces)</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>You have <code>email = "  Ravi.Kumar@Example.COM "</code>. Clean it: strip the spaces and make it lower-case. Then print the username (text before <code>@</code>) and the domain (text after <code>@</code>). Use <code>split("@")</code> for this.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Use f-strings instead of <code>+</code> joins. Also use them instead of the older <code>%</code> and <code>.format()</code> styles. f-strings are shorter, faster and easier to read.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 3: Working with strings

        word = "Python"
        print("word[0], word[-1]:", word[0], word[-1])
        print("word[1:4]:", word[1:4])
        print("word[:2]:", word[:2])
        print("word[::-1]:", word[::-1])
        print("len(word):", len(word))

        # Methods return NEW strings
        raw = "   ada lovelace   "
        clean = raw.strip().title()
        print("clean:", repr(clean))
        print("raw is unchanged:", repr(raw))

        sentence = "the quick brown fox jumps over the lazy dog"
        words = sentence.split()
        print("word count:", len(words))
        print("joined with -:", "-".join(words[:4]))
        print("replace:", sentence.replace("fox", "cat"))
        print("find 'fox':", sentence.find("fox"))
        print("count 'o':", sentence.count("o"))
        print("'dog' in sentence:", "dog" in sentence)

        # Cleaning an email address
        email = "  Ravi.Kumar@Example.COM "
        email = email.strip().lower()
        user, domain = email.split("@")
        print("user:", user, "| domain:", domain)

        # f-strings with format specs
        item, price, qty = "Notebook", 45.5, 3
        print(f"{item} x {qty} = ₹{price * qty:.2f}")
        print(f"Population: {1428627663:,}")
        print(f"[{'left':<8}] [{'right':>8}] [{'mid':^7}]")
        print(f"{qty=}")
      PY
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Conditional Statements</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Conditions let your program make decisions. Python uses <code>if</code>, <code>elif</code> and <code>else</code>. It uses <strong>indentation</strong>, not braces, to show which lines belong to each branch (each possible path).</p>
        </div>
        <div class="lc-section lc-card">
          <h2>if / elif / else</h2>
          <div class="lc-code-block"><pre><code>marks = 72

        if marks &gt;= 90:
            grade = "A"
        elif marks &gt;= 75:
            grade = "B"
        elif marks &gt;= 50:
            grade = "C"
        else:
            grade = "F"

        print(grade)   # C</code></pre></div>
          <p>Python checks the conditions from <strong>top to bottom</strong>. It runs only the <strong>first</strong> branch that is true. So the order matters: put the strictest test first.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Comparison and Logical Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example (x = 7)</th></tr></thead>
            <tbody>
              <tr><td><code>==</code> / <code>!=</code></td><td>Equal / not equal</td><td><code>x == 7</code> → True</td></tr>
              <tr><td><code>&lt; &lt;= &gt; &gt;=</code></td><td>Less / greater</td><td><code>x &gt; 10</code> → False</td></tr>
              <tr><td><code>and</code></td><td>Both must be true</td><td><code>x &gt; 0 and x &lt; 10</code> → True</td></tr>
              <tr><td><code>or</code></td><td>At least one true</td><td><code>x &lt; 0 or x == 7</code> → True</td></tr>
              <tr><td><code>not</code></td><td>Turns True into False, and False into True</td><td><code>not x == 7</code> → False</td></tr>
              <tr><td><code>in</code></td><td>Membership (is it inside?)</td><td><code>x in [1, 7]</code> → True</td></tr>
            </tbody>
          </table>
          <p>Python allows <strong>chained comparisons</strong> (several comparisons in one line): <code>18 &lt;= age &lt; 60</code> means <code>18 &lt;= age and age &lt; 60</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Truthy and Falsy Values</h2>
          <p>You can use any value as a condition. These values count as <strong>False</strong> (they are "falsy"): <code>False</code>, <code>None</code>, <code>0</code>, <code>0.0</code>, <code>""</code>, <code>[]</code>, <code>{}</code>, <code>()</code>, <code>set()</code>. Almost everything else counts as <strong>True</strong> ("truthy").</p>
          <div class="lc-code-block"><pre><code>cart = []
        if not cart:
            print("Your cart is empty")</code></pre></div>
          <p>To check for <code>None</code>, use <code>is</code>: <code>if result is None:</code>. Use <code>==</code> to compare normal values.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>One-Line Conditional Expression</h2>
          <div class="lc-code-block"><pre><code>age = 20
        status = "adult" if age &gt;= 18 else "minor"
        print(status)   # adult</code></pre></div>
          <p>Use it when you choose between two simple values. For anything longer, a normal <code>if</code> block is clearer.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>match (Python 3.10+)</h2>
          <p>Do you need to check one value against many fixed options? Newer Python has <code>match</code> for this:</p>
          <div class="lc-code-block"><pre><code>match command:
            case "start":
                print("Starting")
            case "stop" | "quit":
                print("Stopping")
            case _:
                print("Unknown command")</code></pre></div>
          <p>With <code>command = "quit"</code> this prints <code>Stopping</code>. With <code>"dance"</code> it prints <code>Unknown command</code>. The <code>|</code> means "or". <code>case _</code> is the "anything else" branch. For simple ranges like grades, <code>if/elif</code> is still the right choice.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Nested Conditions</h2>
          <p>You can put an <code>if</code> inside another one. This is called nesting. Do not nest too deep. Joining conditions with <code>and</code> is often clearer:</p>
          <div class="lc-code-block"><pre><code>has_ticket, age = True, 15

        # nested
        if has_ticket:
            if age &gt;= 18:
                print("Enter")
            else:
                print("Adults only")
        else:
            print("Buy a ticket first")

        # same idea, flatter
        if not has_ticket:
            print("Buy a ticket first")
        elif age &lt; 18:
            print("Adults only")
        else:
            print("Enter")</code></pre></div>
          <p>Both print <code>Adults only</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Using <code>=</code> (assignment) instead of <code>==</code> (comparison) in a condition. This gives a <code>SyntaxError</code>.</li>
            <li>Writing <code>if x == 1 or 2:</code>. This is always true, because <code>2</code> is truthy. Write <code>if x == 1 or x == 2:</code> or <code>if x in (1, 2):</code>.</li>
            <li>Putting a weaker condition first, for example <code>marks &gt;= 50</code> before <code>marks &gt;= 90</code>. Then the top grade is never reached.</li>
            <li>Forgetting the colon <code>:</code> at the end of the <code>if</code> line.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Write a ticket-price checker. Children under 5 are free. Ages 5–17 pay ₹100. Ages 60 and over pay ₹120. Everyone else pays ₹200. Test it with ages 3, 12, 35 and 65.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Test the <em>edges</em> of every condition. For a <code>&gt;= 50</code> check, try 49, 50 and 51. Most bugs are found at these boundary values.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 4: Conditional statements

        test_marks = [95, 80, 72, 49, 50]   # a loop tries each value (loops: Lesson 5)

        for marks in test_marks:
            if marks >= 90:
                grade = "A"
            elif marks >= 75:
                grade = "B"
            elif marks >= 50:
                grade = "C"
            else:
                grade = "F"
            print(f"marks {marks:3} -> grade {grade}")

        print("--- Chained comparison ---")
        for age in [15, 18, 45, 60]:
            working_age = 18 <= age < 60
            print(f"age {age}: working age? {working_age}")

        print("--- Truthy and falsy ---")
        for value in [0, 7, "", "hi", [], [1], None]:
            result = "truthy" if value else "falsy"
            print(f"{value!r:6} is {result}")

        print("--- and / or / not / in ---")
        temperature = 31
        is_raining = False
        if temperature > 30 and not is_raining:
            print("Hot and dry: drink water!")
        city = "London"
        if city in ("London", "Manchester", "Leeds"):
            print(city, "is in England")

        print("--- match ---")
        for command in ["start", "quit", "dance"]:
            match command:
                case "start":
                    print(command, "-> Starting")
                case "stop" | "quit":
                    print(command, "-> Stopping")
                case _:
                    print(command, "-> Unknown command")
      PY
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Loops</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Loops repeat code. A <code>for</code> loop goes through each item of a sequence (such as a list or a string). A <code>while</code> loop repeats as long as a condition stays true.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>for Loops and range()</h2>
          <div class="lc-code-block"><pre><code>for fruit in ["mango", "banana", "guava"]:
            print(fruit)

        for i in range(5):           # 0 1 2 3 4
            print(i, end=" ")
        print()
        for i in range(2, 11, 4):    # 2 6 10
            print(i, end=" ")
        print()</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Numbers produced</th></tr></thead>
            <tbody>
              <tr><td><code>range(5)</code></td><td>0, 1, 2, 3, 4 (stop is not included)</td></tr>
              <tr><td><code>range(1, 6)</code></td><td>1, 2, 3, 4, 5</td></tr>
              <tr><td><code>range(0, 10, 3)</code></td><td>0, 3, 6, 9</td></tr>
              <tr><td><code>range(10, 0, -3)</code></td><td>10, 7, 4, 1</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>enumerate() and zip()</h2>
          <p><code>enumerate</code> gives you the position <em>and</em> the item. <code>zip</code> goes through two lists at the same time, item by item.</p>
          <div class="lc-code-block"><pre><code>names = ["Asha", "Ben", "Chen"]
        marks = [88, 92, 79]

        for pos, name in enumerate(names, start=1):
            print(pos, name)            # 1 Asha / 2 Ben / 3 Chen

        for name, m in zip(names, marks):
            print(f"{name}: {m}")       # Asha: 88 ...</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>while Loops</h2>
          <div class="lc-code-block"><pre><code>balance = 1000
        years = 0
        while balance &lt; 2000:
            balance = balance * 1.08    # 8% interest per year
            years += 1
        print(years, "years")           # 10 years</code></pre></div>
          <p>Something inside the loop must move it toward the end. If not, it will run forever. This is an <strong>infinite loop</strong>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>break, continue and else</h2>
          <ul class="lc-list">
            <li><code>break</code>: leave the loop right away.</li>
            <li><code>continue</code>: skip the rest of this round and go to the next item.</li>
            <li><code>else</code> on a loop: runs only if the loop finished <strong>without</strong> a <code>break</code>. It is useful for "search and not found".</li>
          </ul>
          <div class="lc-code-block"><pre><code>for n in [4, 9, 15, 21]:
            if n % 7 == 0:
                print("First multiple of 7:", n)
                break
        else:
            print("No multiple of 7 found")</code></pre></div>
          <p><strong>Output:</strong> <code>First multiple of 7: 21</code></p>
        </div>
        <div class="lc-section lc-card">
          <h2>for or while?</h2>
          <table class="lc-table">
            <thead><tr><th>Use</th><th>When</th></tr></thead>
            <tbody>
              <tr><td><code>for</code></td><td>You know what to loop over: a list, a string or a <code>range</code></td></tr>
              <tr><td><code>while</code></td><td>You repeat until something happens. You don't know how many rounds it takes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Expecting <code>range(1, 5)</code> to include 5. The stop value is never included.</li>
            <li>Writing <code>for i in range(len(names)):</code> and then <code>names[i]</code>. Instead, loop over the list directly, or use <code>enumerate</code>.</li>
            <li>Forgetting to update the variable in a <code>while</code> loop. This causes an infinite loop.</li>
            <li>Adding or removing items in a list while you loop over the same list. Loop over a copy instead.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Print the numbers from 1 to 20. But print <code>Fizz</code> for multiples of 3 and <code>Buzz</code> for multiples of 5. Print <code>FizzBuzz</code> for multiples of both.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Does a loop "do nothing"? Add a <code>print()</code> inside it to see each value. Printing is the simplest way to find bugs.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 5: Loops

        print("--- range ---")
        for i in range(1, 6):
            print(f"5 x {i} = {5 * i}")
        print("range(10, 0, -3):", list(range(10, 0, -3)))

        print("--- enumerate and zip ---")
        names = ["Asha", "Ben", "Chen"]
        marks = [88, 92, 79]
        for pos, name in enumerate(names, start=1):
            print(pos, name)
        for name, m in zip(names, marks):
            print(f"{name}: {m}")

        print("--- accumulate a total ---")
        total = 0
        for m in marks:
            total += m
        print("total:", total, "| average:", round(total / len(marks), 1))

        print("--- while: years to double at 8% ---")
        balance = 1000
        years = 0
        while balance < 2000:
            balance *= 1.08
            years += 1
        print(f"{years} years, balance ₹{balance:.2f}")

        print("--- continue and break ---")
        for n in range(1, 10):
            if n % 2 == 0:
                continue          # skip even numbers
            if n > 7:
                break             # stop completely
            print("odd:", n)

        print("--- for ... else ---")
        for n in [4, 9, 15, 21]:
            if n % 7 == 0:
                print("First multiple of 7:", n)
                break
        else:
            print("No multiple of 7 found")
      PY
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Lists</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>list</strong> is an ordered collection of items, written in square brackets. You can change it, so it is <em>mutable</em>. It is the data structure (a way to store data) you will use most in Python.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Creating and Accessing Lists</h2>
          <div class="lc-code-block"><pre><code>scores = [88, 95, 72, 61]
        mixed = ["Asha", 21, True, None]   # any types are allowed
        empty = []

        print(scores[0], scores[-1])   # 88 61
        print(scores[1:3])             # [95, 72]
        print(len(scores))             # 4
        scores[0] = 90                 # lists CAN be changed
        print(scores)                  # [90, 95, 72, 61]</code></pre></div>
          <p>Indexing and slicing work the same way as for strings (Lesson 3). A slice always gives you a <strong>new</strong> list.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>List Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>append(x)</code></td><td>Add one item at the end</td><td><code>None</code></td></tr>
              <tr><td><code>extend(list2)</code></td><td>Add every item from another list</td><td><code>None</code></td></tr>
              <tr><td><code>insert(i, x)</code></td><td>Add at position <code>i</code></td><td><code>None</code></td></tr>
              <tr><td><code>remove(x)</code></td><td>Remove the first <code>x</code> (<code>ValueError</code> if not found)</td><td><code>None</code></td></tr>
              <tr><td><code>pop()</code> / <code>pop(i)</code></td><td>Remove and give back the last / i-th item</td><td>the item</td></tr>
              <tr><td><code>index(x)</code></td><td>Position of the first <code>x</code></td><td>an int</td></tr>
              <tr><td><code>count(x)</code></td><td>How many times <code>x</code> appears</td><td>an int</td></tr>
              <tr><td><code>sort()</code> / <code>reverse()</code></td><td>Sort / reverse <strong>in place</strong> (changes the list itself)</td><td><code>None</code></td></tr>
            </tbody>
          </table>
          <p>Useful built-ins (functions that always exist in Python): <code>len()</code>, <code>sum()</code>, <code>min()</code>, <code>max()</code>, <code>sorted()</code>, and the <code>in</code> operator.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>sort() vs sorted()</h2>
          <div class="lc-code-block"><pre><code>nums = [3, 1, 2]
        new = sorted(nums)     # returns a NEW sorted list
        print(new, nums)       # [1, 2, 3] [3, 1, 2]

        result = nums.sort()   # sorts nums itself, returns None
        print(result, nums)    # None [1, 2, 3]

        print(sorted(nums, reverse=True))   # [3, 2, 1]</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Aliasing: Two Names, One List</h2>
          <p>Assignment does <strong>not</strong> copy a list. Both names point to the same object in memory. The second name is called an alias.</p>
          <div class="lc-code-block"><pre><code>a = [1, 2, 3]
        b = a            # alias, not a copy
        b.append(4)
        print(a)         # [1, 2, 3, 4]  (a changed too!)

        c = a.copy()     # a real (shallow) copy; a[:] and list(a) also work
        c.append(5)
        print(a, c)      # [1, 2, 3, 4] [1, 2, 3, 4, 5]</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Nested Lists</h2>
          <div class="lc-code-block"><pre><code>grid = [[1, 2, 3],
                [4, 5, 6]]
        print(grid[1][2])     # 6  (row 1, column 2)
        for row in grid:
            print(sum(row))   # 6, then 15</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li><code>nums = nums.sort()</code> sets <code>nums</code> to <code>None</code>. Use <code>nums.sort()</code> alone, or <code>nums = sorted(nums)</code>.</li>
            <li><code>a.append([4, 5])</code> adds <strong>one</strong> item (a list). Use <code>extend</code> to add 4 and 5 as two items.</li>
            <li>Thinking <code>b = a</code> makes a copy.</li>
            <li>Using an index past the end: <code>scores[10]</code> raises <code>IndexError</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Start with <code>cart = ["rice", "dal", "oil"]</code>. Add <code>"salt"</code>. Insert <code>"tea"</code> at the front. Remove <code>"oil"</code>. Then print the cart in alphabetical order, <em>without</em> changing the original order.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Methods that change a list in place (<code>append</code>, <code>sort</code>, <code>reverse</code>…) return <code>None</code>. If a method returns <code>None</code>, it most likely changed the object itself.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 6: Lists

        scores = [88, 95, 72, 61, 99, 84]
        print("scores:", scores)
        print("first, last:", scores[0], scores[-1])
        print("middle slice [1:4]:", scores[1:4])

        scores.append(91)
        print("after append(91):", scores)
        scores.extend([70, 65])
        print("after extend([70, 65]):", scores)
        scores.insert(0, 100)
        print("after insert(0, 100):", scores)
        scores.remove(61)
        last = scores.pop()
        print("popped:", last, "| now:", scores)

        print("--- built-ins ---")
        print("len:", len(scores), "| max:", max(scores), "| min:", min(scores))
        print("average:", round(sum(scores) / len(scores), 2))
        print("95 in scores:", 95 in scores, "| index of 95:", scores.index(95))

        print("--- sorted() vs sort() ---")
        top_first = sorted(scores, reverse=True)
        print("sorted copy:", top_first)
        print("original   :", scores)
        result = scores.sort()
        print("sort() returned:", result, "| scores now:", scores)

        print("--- aliasing vs copying ---")
        a = [1, 2, 3]
        b = a
        c = a.copy()
        b.append(4)
        print("a:", a, "| b:", b, "| c:", c)
        print("a is b:", a is b, "| a is c:", a is c)

        print("--- nested list ---")
        grid = [[1, 2, 3], [4, 5, 6]]
        print("grid[1][2]:", grid[1][2])
        for row in grid:
            print("row", row, "sum", sum(row))
      PY
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Tuples and Sets</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>tuple</strong> is an ordered collection. You cannot change it after you make it. A <strong>set</strong> is a collection with no order. Its values are <strong>unique</strong> (no duplicates). Checking if a value is in a set is very fast.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Tuples</h2>
          <div class="lc-code-block"><pre><code>point = (10, 20)
        rgb = (255, 128, 0)
        single = (5,)          # the comma makes it a tuple; (5) is just 5
        print(point[0])        # 10
        point[0] = 99          # TypeError: 'tuple' object does not support item assignment</code></pre></div>
          <p>Use tuples for fixed groups of values: coordinates, RGB colours, a date <code>(2026, 9, 25)</code>, or a row from a database. Tuples are immutable (they cannot change). So tuples can be <strong>dictionary keys</strong> and set items. Lists cannot.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Unpacking</h2>
          <div class="lc-code-block"><pre><code>name, age, city = ("Asha", 21, "Los Angeles")
        a, b = 1, 2
        a, b = b, a                  # swap in one line
        first, *rest = [1, 2, 3, 4]  # first = 1, rest = [2, 3, 4]

        def min_max(nums):
            return min(nums), max(nums)   # returns a tuple
        low, high = min_max([4, 9, 1])
        print(low, high)             # 1 9</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Sets</h2>
          <div class="lc-code-block"><pre><code>tags = {"python", "ai", "python", "web"}
        print(len(tags))          # 3 (duplicates removed)
        tags.add("data")
        tags.discard("web")       # no error if missing (remove() would raise KeyError)
        print("ai" in tags)       # True, and very fast even for millions of items

        empty = set()             # NOT {} (that is an empty dict)
        unique = set([3, 1, 3, 2])   # {1, 2, 3}</code></pre></div>
          <p>Sets have <strong>no order and no indexes</strong>: <code>tags[0]</code> is a <code>TypeError</code>. When you print a set, the order may be different from the order you typed.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Set Operations</h2>
          <table class="lc-table">
            <thead><tr><th>Operation</th><th>Symbol</th><th><code>{1,2,3}</code> with <code>{2,3,4}</code></th></tr></thead>
            <tbody>
              <tr><td>Union (in a or b)</td><td><code>a | b</code></td><td><code>{1, 2, 3, 4}</code></td></tr>
              <tr><td>Intersection (in both)</td><td><code>a &amp; b</code></td><td><code>{2, 3}</code></td></tr>
              <tr><td>Difference (in a, not b)</td><td><code>a - b</code></td><td><code>{1}</code></td></tr>
              <tr><td>Symmetric difference (in one only)</td><td><code>a ^ b</code></td><td><code>{1, 4}</code></td></tr>
              <tr><td>Subset (all of a is in b)</td><td><code>a &lt;= b</code></td><td><code>False</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Choosing a Collection</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>list</th><th>tuple</th><th>set</th></tr></thead>
            <tbody>
              <tr><td>Syntax</td><td><code>[1, 2]</code></td><td><code>(1, 2)</code></td><td><code>{1, 2}</code></td></tr>
              <tr><td>Ordered / indexable</td><td>Yes</td><td>Yes</td><td>No</td></tr>
              <tr><td>Can change</td><td>Yes</td><td>No</td><td>Yes (add/remove)</td></tr>
              <tr><td>Duplicates</td><td>Allowed</td><td>Allowed</td><td>Removed</td></tr>
              <tr><td>Best for</td><td>A changing sequence</td><td>A fixed record</td><td>Uniqueness, fast <code>in</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Why Sets Are Fast</h2>
          <p><code>x in my_list</code> checks items one by one. So it gets slower as the list grows. <code>x in my_set</code> goes straight to the answer using a <strong>hash</strong> (a number calculated from the value). So it stays fast even with millions of items. This is also why set items (and dict keys) must be immutable, hashable values (values that can have a hash).</p>
          <div class="lc-code-block"><pre><code>banned = {"spam", "scam", "fake"}
        comment = "this is a fake offer"
        flagged = [w for w in comment.split() if w in banned]   # comprehensions: Lesson 10
        print(flagged)   # ['fake']</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Writing <code>(5)</code> for a one-item tuple. You need the comma: <code>(5,)</code>.</li>
            <li>Writing <code>{}</code> for an empty set. That creates a dictionary. Use <code>set()</code>.</li>
            <li>Expecting a set to keep your order, or trying <code>my_set[0]</code>.</li>
            <li>Putting a list inside a set: <code>{[1, 2]}</code> raises <code>TypeError: unhashable type: 'list'</code>. Use a tuple.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Two classes chose electives (optional subjects): <code>class_a = {"AI", "Web", "Cloud"}</code> and <code>class_b = {"Web", "Data", "AI"}</code>. Print the electives chosen by both classes. Print the ones chosen only by class A. Then print the full list of all electives in sorted order.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> To remove duplicates <em>and</em> keep the original order, use <code>list(dict.fromkeys(items))</code> instead of <code>list(set(items))</code>.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 7: Tuples and sets

        print("--- tuples ---")
        point = (10, 20)
        today = (2026, 9, 25)
        single = (5,)
        print("point:", point, "| x =", point[0])
        print("type of (5,):", type(single), "| type of (5):", type((5)))

        # point[0] = 99   # would raise TypeError: tuples cannot change
        moved = (point[0] + 5, point[1])   # make a NEW tuple instead
        print("moved point:", moved)

        year, month, day = today
        print(f"unpacked: day {day}, month {month}, year {year}")

        a, b = 1, 2
        a, b = b, a
        print("after swap: a =", a, "b =", b)

        first, *rest = [1, 2, 3, 4]
        print("first:", first, "| rest:", rest)

        def min_max(nums):
            return min(nums), max(nums)

        low, high = min_max([4, 9, 1, 7])
        print("low:", low, "| high:", high)

        # Tuples can be dictionary keys
        distances = {("London", "Oxford"): 90, ("New York", "Boston"): 346}
        print("New York to Boston:", distances[("New York", "Boston")], "km")

        print("--- sets ---")
        tags = {"python", "ai", "python", "web"}
        print("unique tags (sorted):", sorted(tags), "| count:", len(tags))
        tags.add("data")
        tags.discard("web")
        print("'ai' in tags:", "ai" in tags)

        class_a = {"AI", "Web", "Cloud"}
        class_b = {"Web", "Data", "AI"}
        print("both  (&):", sorted(class_a & class_b))
        print("either(|):", sorted(class_a | class_b))
        print("only A(-):", sorted(class_a - class_b))
        print("one only (^):", sorted(class_a ^ class_b))

        items = ["b", "a", "b", "c", "a"]
        print("dedupe, keep order:", list(dict.fromkeys(items)))
      PY
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Dictionaries</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>dictionary</strong> (<code>dict</code>) stores <strong>key → value</strong> pairs. You find a value by its key, not by a position. Python uses dictionaries in many places: JSON data, settings, counting and caching (saving results to use again).</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Creating and Reading</h2>
          <div class="lc-code-block"><pre><code>student = {"name": "Asha", "age": 21, "city": "Los Angeles"}

        print(student["name"])              # Asha
        print(student.get("email"))         # None  (no error)
        print(student.get("email", "N/A"))  # N/A   (your default)
        print(student["email"])             # KeyError: 'email'</code></pre></div>
          <p>Keys must be <strong>unique</strong> and <strong>immutable</strong> (strings, numbers, tuples). Values can be anything, even other dicts or lists. Since Python 3.7, dictionaries keep keys in the order you added them.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Changing a Dictionary</h2>
          <div class="lc-code-block"><pre><code>student["age"] = 22                  # update an existing key
        student["email"] = "asha@example.com" # add a new key
        student.update({"city": "Glasgow", "year": 3})
        removed = student.pop("year")        # remove and return the value
        del student["email"]                 # remove a key
        merged = {"a": 1} | {"b": 2}         # {'a': 1, 'b': 2}  (Python 3.9+)</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Looping</h2>
          <table class="lc-table">
            <thead><tr><th>Loop over</th><th>Code</th><th>You get</th></tr></thead>
            <tbody>
              <tr><td>Keys (default)</td><td><code>for k in d:</code></td><td>each key</td></tr>
              <tr><td>Values</td><td><code>for v in d.values():</code></td><td>each value</td></tr>
              <tr><td>Both</td><td><code>for k, v in d.items():</code></td><td>(key, value) pairs</td></tr>
            </tbody>
          </table>
          <p><code>"age" in student</code> checks the <strong>keys</strong>, not the values.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Counting and Grouping</h2>
          <div class="lc-code-block"><pre><code>words = "to be or not to be".split()

        counts = {}
        for w in words:
            counts[w] = counts.get(w, 0) + 1
        print(counts)   # {'to': 2, 'be': 2, 'or': 1, 'not': 1}

        from collections import Counter, defaultdict
        print(Counter(words).most_common(2))   # [('to', 2), ('be', 2)]

        by_letter = defaultdict(list)          # missing keys start as []
        for w in words:
            by_letter[w[0]].append(w)
        print(dict(by_letter))  # {'t': ['to', 'to'], 'b': ['be', 'be'], 'o': ['or'], 'n': ['not']}</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Nested Data</h2>
          <div class="lc-code-block"><pre><code>course = {
            "title": "Python",
            "students": [
                {"name": "Asha", "marks": 88},
                {"name": "Ben", "marks": 92},
            ],
        }
        print(course["students"][1]["name"])   # Ben</code></pre></div>
          <p>JSON data from web APIs (Lesson 12) has exactly this shape.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Sorting a Dictionary by Value</h2>
          <div class="lc-code-block"><pre><code>marks = {"Asha": 88, "Ben": 95, "Chen": 79}
        ranking = sorted(marks, key=marks.get, reverse=True)   # sort keys by their values
        print(ranking)          # ['Ben', 'Asha', 'Chen']</code></pre></div>
          <p><code>key=marks.get</code> tells <code>sorted</code> to compare each key by its value. You will see more ways to use <code>key=</code> in Lesson 9.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Using <code>d[key]</code> when the key might not exist. Use <code>d.get(key, default)</code> or check <code>if key in d</code>.</li>
            <li>Adding or removing keys while you loop over a dict. This gives a <code>RuntimeError</code>. Loop over <code>list(d)</code> instead.</li>
            <li>Using a list as a key. This gives <code>TypeError: unhashable type</code>. Use a tuple.</li>
            <li>Expecting <code>value in d</code> to search values. Use <code>value in d.values()</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Make a dict of five Indian states and their capitals. Print each pair with <code>.items()</code>. Then use <code>.get()</code> with the default <code>"Unknown"</code> to ask for a state that is not in the dict.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Finding a key in a dict is very fast, even when the dict is very big. Do you often search a list for an item? A dict or set is usually a better choice.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 8: Dictionaries
        from collections import Counter, defaultdict

        student = {"name": "Asha", "age": 21, "city": "Los Angeles"}
        print("name:", student["name"])
        print("get email:", student.get("email"))
        print("get email with default:", student.get("email", "N/A"))

        student["age"] = 22
        student["email"] = "asha@example.com"
        student.update({"city": "Glasgow", "year": 3})
        print("updated:", student)
        print("popped year:", student.pop("year"))
        del student["email"]
        print("after del:", student)
        print("'age' in student:", "age" in student, "| 22 in student:", 22 in student)

        print("--- looping ---")
        for key, value in student.items():
            print(f"  {key:>5}: {value}")

        print("--- counting words ---")
        words = "to be or not to be".split()
        counts = {}
        for w in words:
            counts[w] = counts.get(w, 0) + 1
        print("manual:", counts)
        print("Counter top 2:", Counter(words).most_common(2))

        by_letter = defaultdict(list)
        for w in words:
            by_letter[w[0]].append(w)
        print("grouped:", dict(by_letter))

        print("--- nested data ---")
        course = {
            "title": "Python",
            "students": [{"name": "Asha", "marks": 88}, {"name": "Ben", "marks": 92}],
        }
        print("second student:", course["students"][1]["name"])
        for s in course["students"]:
            print(f"  {s['name']} scored {s['marks']}")

        print("merged:", {"a": 1, "b": 2} | {"b": 20, "c": 3})
      PY
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Functions, Lambdas and Scope</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>function</strong> is a named block of code that you can use again and again. You define it once with <code>def</code>. Then you call (run) it as many times as you like. Functions make programs shorter, easier to test and easier to read. Functions are also <strong>values</strong>. You can pass them to other functions. You can write tiny ones with <code>lambda</code>. You also need to know where Python looks for the names they use. This is called <strong>scope</strong>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Defining and Calling</h2>
          <div class="lc-code-block"><pre><code>def greet(name):
            """Return a friendly greeting."""   # docstring: what the function does
            return f"Hello, {name}!"

        message = greet("Asha")   # "Asha" is the argument; name is the parameter
        print(message)            # Hello, Asha!</code></pre></div>
          <ul class="lc-list">
            <li><code>return</code> sends a value back and <strong>ends</strong> the function.</li>
            <li>A function with no <code>return</code> (or a <code>return</code> with no value) gives back <code>None</code>.</li>
            <li><code>print()</code> only shows a value. <code>return</code> lets the caller (the code that called the function) <em>use</em> it.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Kinds of Parameters</h2>
          <div class="lc-code-block"><pre><code>def price_with_gst(amount, rate=0.18):          # rate has a default
            return round(amount * (1 + rate), 2)

        print(price_with_gst(100))                 # 118.0
        print(price_with_gst(100, 0.05))           # 105.0
        print(price_with_gst(rate=0.12, amount=50))# 56.0  (keyword arguments)

        def total(*nums):          # any number of positional arguments -&gt; tuple
            return sum(nums)
        print(total(1, 2, 3))      # 6

        def profile(**info):       # any number of keyword arguments -&gt; dict
            return info
        print(profile(name="Ben", city="Boston"))   # {'name': 'Ben', 'city': 'Boston'}</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Example</th><th>Inside the function</th></tr></thead>
            <tbody>
              <tr><td>Positional</td><td><code>f(1, 2)</code></td><td>matched by position</td></tr>
              <tr><td>Keyword</td><td><code>f(b=2, a=1)</code></td><td>matched by name</td></tr>
              <tr><td>Default</td><td><code>def f(a, b=0)</code></td><td>used when no value is given</td></tr>
              <tr><td><code>*args</code></td><td><code>f(1, 2, 3)</code></td><td>a tuple</td></tr>
              <tr><td><code>**kwargs</code></td><td><code>f(x=1, y=2)</code></td><td>a dict</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Returning Several Values</h2>
          <div class="lc-code-block"><pre><code>def stats(nums):
            return min(nums), max(nums), sum(nums) / len(nums)

        low, high, avg = stats([4, 8, 6])
        print(low, high, avg)   # 4 8 6.0</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>The Mutable Default Trap</h2>
          <p>Python creates default values <strong>once</strong>, when the function is defined. It does not create them again on every call. So a list default is shared between all calls:</p>
          <div class="lc-code-block"><pre><code>def add_item(item, basket=[]):     # BAD
            basket.append(item)
            return basket
        add_item("apple")
        print(add_item("mango"))           # ['apple', 'mango']  surprise!

        def add_item(item, basket=None):   # GOOD
            if basket is None:
                basket = []
            basket.append(item)
            return basket</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Functions Are Values; lambda</h2>
          <p>Without brackets, <code>double</code> is the function itself. So you can store it or pass it to another function. <code>lambda params: expression</code> makes a small function with no name. It returns the value of its expression automatically. It can hold only <strong>one expression</strong>. It cannot have <code>for</code>, <code>return</code> or other statements.</p>
          <div class="lc-code-block"><pre><code>def double(x):
            return x * 2

        def apply_twice(func, value):     # takes a function as an argument
            return func(func(value))
        print(apply_twice(double, 3))     # 12

        students = [("Asha", 88), ("Ben", 95), ("Chen", 79)]
        print(sorted(students, key=lambda s: s[1], reverse=True))
        # [('Ben', 95), ('Asha', 88), ('Chen', 79)]
        print(max(students, key=lambda s: s[1]))            # ('Ben', 95)
        print(sorted(["kiwi", "fig", "banana"], key=len))   # ['fig', 'kiwi', 'banana']
        print(list(map(lambda n: n * n, [1, 2, 3])))        # [1, 4, 9]
        print(list(filter(lambda n: n % 2 == 0, [1, 2, 3, 4])))  # [2, 4]</code></pre></div>
          <p>Python calls the <code>key</code> function once for each item. Then it sorts by what the function returns. <code>map</code> and <code>filter</code> return lazy objects (they make values only when asked). So we wrap them in <code>list()</code>. A comprehension (Lesson 10) is usually clearer.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Scope: The LEGB Rule</h2>
          <p>When Python sees a name, it looks in four places, in this order:</p>
          <table class="lc-table">
            <thead><tr><th>Level</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>L</strong>ocal</td><td>Names created inside the current function</td></tr>
              <tr><td><strong>E</strong>nclosing</td><td>Names in an outer function (for a function inside another function)</td></tr>
              <tr><td><strong>G</strong>lobal</td><td>Names at the top level of the file</td></tr>
              <tr><td><strong>B</strong>uilt-in</td><td>Python's own names: <code>print</code>, <code>len</code>…</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>rate = 0.18                    # global

        def add_tax(price):
            total = price * (1 + rate) # reads the global rate; total is local
            return round(total, 2)

        print(add_tax(200))            # 236.0
        print(rate)                    # 0.18
        # print(total)                 # NameError: total only exists inside add_tax</code></pre></div>
          <p>When you assign to a name inside a function, the name becomes <strong>local</strong> to that function. To change an outer variable, you would need <code>global</code>. Use it rarely. Returning a value is cleaner. Inner functions that remember outer variables are called <strong>closures</strong>. You will learn them in Lesson 18, just before decorators.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Recursion: A Function That Calls Itself</h2>
          <p>A <strong>recursive</strong> function calls itself. It solves a problem by calling itself on a <em>smaller</em> version of the same problem. Every recursive function needs two parts:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Job</th><th>In <code>factorial</code></th></tr></thead>
            <tbody>
              <tr><td><strong>Base case</strong></td><td>A simple input with a direct answer. It stops the calls</td><td><code>n &lt;= 1</code> returns <code>1</code></td></tr>
              <tr><td><strong>Recursive case</strong></td><td>Calls the function on a smaller input, then uses the result</td><td><code>n * factorial(n - 1)</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>def factorial(n):
            if n &lt;= 1:                      # base case: stop here
                return 1
            return n * factorial(n - 1)     # recursive case: a smaller problem

        print(factorial(5))                 # 120
        # factorial(5) = 5 * factorial(4) = 5 * 4 * factorial(3) = ... = 5 * 4 * 3 * 2 * 1

        def total(items):                   # add numbers in lists inside lists
            result = 0
            for item in items:
                result += total(item) if isinstance(item, list) else item
            return result

        print(total([1, [2, 3], [4, [5, 6]]]))   # 21</code></pre></div>
          <p>Recursion works well for nested data (folders inside folders, JSON inside JSON, trees). For a simple count or sum, a loop is clearer and faster. What if the base case is missing or never reached? Then the calls never stop, and Python raises <code>RecursionError: maximum recursion depth exceeded</code>. By default, Python allows about 1000 nested calls (<code>sys.getrecursionlimit()</code> returns <code>1000</code>).</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Printing inside a function instead of returning. Then you get <code>None</code> when you try to use the result.</li>
            <li>Forgetting the brackets: <code>greet</code> is the function itself. <code>greet("Asha")</code> calls it.</li>
            <li>Using a list or dict as a default value (see the trap above).</li>
            <li>Putting a default parameter before a normal one: <code>def f(a=1, b):</code> is a <code>SyntaxError</code>.</li>
            <li>Writing <code>key=len()</code> instead of <code>key=len</code>. Pass the function. Don't call it.</li>
            <li><code>UnboundLocalError</code>: you read a global and then assign to it in the same function. Python then treats it as local everywhere in that function.</li>
            <li>A recursive function may have no base case. Or its argument may never get smaller (<code>countdown(n)</code> calling <code>countdown(n)</code>). Both end in <code>RecursionError</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Write <code>bmi(weight_kg, height_m)</code>. It returns the BMI rounded to 1 decimal place. Write <code>bmi_category(value)</code>. It returns <code>"Underweight"</code> (below 18.5), <code>"Normal"</code> (below 25) or <code>"Overweight"</code>. Call both for three people. Finally, use a lambda to sort <code>["New York", "Miami", "San Francisco", "Chicago"]</code> by the <strong>last letter</strong> of each name. Bonus: write a recursive <code>power(base, exp)</code> with the base case <code>exp == 0</code>. Check that <code>power(2, 10)</code> returns <code>1024</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> A good function does <strong>one job</strong> and has a name that starts with a verb: <code>calculate_total</code>, <code>send_email</code>, <code>is_valid</code>.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 9: Functions, lambdas and scope

        def greet(name):
            """Return a friendly greeting."""
            return f"Hello, {name}!"
        print(greet("Asha"), "| docstring:", greet.__doc__)

        def price_with_gst(amount, rate=0.18):
            return round(amount * (1 + rate), 2)
        print("default rate:", price_with_gst(100))
        print("keyword args:", price_with_gst(rate=0.12, amount=50))

        def total(*nums):
            return sum(nums)
        def profile(**info):
            return info
        print("total(1, 2, 3):", total(1, 2, 3), "| profile:", profile(name="Ben", city="Boston"))

        def stats(nums):
            return min(nums), max(nums), sum(nums) / len(nums)
        low, high, avg = stats([4, 8, 6])
        print(f"low={low} high={high} avg={avg}")

        print("--- mutable default trap ---")
        def add_bad(item, basket=[]):
            basket.append(item)
            return basket
        add_bad("apple")
        print("shared list surprise:", add_bad("mango"))

        print("--- functions as values and lambda ---")
        def apply_twice(func, value):
            return func(func(value))
        print("apply_twice(lambda x: x * 2, 3):", apply_twice(lambda x: x * 2, 3))
        students = [("Asha", 88), ("Ben", 95), ("Chen", 79)]
        print("by marks:", sorted(students, key=lambda s: s[1], reverse=True))
        print("top:", max(students, key=lambda s: s[1]))
        print("squares:", list(map(lambda n: n * n, [1, 2, 3])))

        print("--- scope ---")
        rate = 0.18                        # global
        def add_tax(price):
            total_price = price * (1 + rate)   # local variable, reads global rate
            return round(total_price, 2)
        print("add_tax(200):", add_tax(200))
        print("is total_price global?", "total_price" in globals())

        print("--- recursion ---")
        def factorial(n):
            if n <= 1:                         # base case
                return 1
            return n * factorial(n - 1)        # recursive case
        print("factorial(5):", factorial(5))
      PY
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Comprehensions</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>comprehension</strong> builds a new list, dict or set from an existing sequence. It does this in one short, readable line. It replaces a common pattern: "make an empty list, loop, append".</p>
        </div>
        <div class="lc-section lc-card">
          <h2>From Loop to Comprehension</h2>
          <div class="lc-code-block"><pre><code># The loop way
        squares = []
        for n in range(1, 6):
            squares.append(n * n)

        # The comprehension way: [expression for item in iterable]
        squares = [n * n for n in range(1, 6)]
        print(squares)   # [1, 4, 9, 16, 25]</code></pre></div>
          <p>Read it left to right: "<em>n times n</em>, for each <em>n</em> in the range".</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Filtering vs Choosing a Value</h2>
          <p>An <code>if</code> at the <strong>end</strong> removes some items (it filters them). An <code>if … else</code> at the <strong>start</strong> picks a value for every item.</p>
          <div class="lc-code-block"><pre><code>nums = [0, 1, 2, 3, 4]

        evens = [x for x in nums if x % 2 == 0]
        print(evens)          # [0, 2, 4]           (3 items kept)

        marked = [x if x % 2 == 0 else 0 for x in nums]
        print(marked)         # [0, 0, 2, 0, 4]     (all 5 items, some replaced)</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Dict and Set Comprehensions</h2>
          <div class="lc-code-block"><pre><code>names = ["asha", "ben", "chen"]

        lengths = {name: len(name) for name in names}
        print(lengths)        # {'asha': 4, 'ben': 3, 'chen': 4}

        marks = {"Asha": 88, "Ben": 45, "Chen": 72}
        passed = {n: m for n, m in marks.items() if m &gt;= 50}
        print(passed)         # {'Asha': 88, 'Chen': 72}

        first_letters = {name[0] for name in names}
        print(sorted(first_letters))   # ['a', 'b', 'c']</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Nested Comprehensions</h2>
          <div class="lc-code-block"><pre><code>grid = [[1, 2], [3, 4], [5, 6]]
        flat = [x for row in grid for x in row]      # loops run in the same order as nested for-loops
        print(flat)   # [1, 2, 3, 4, 5, 6]

        table = [[r * c for c in range(1, 4)] for r in range(1, 4)]
        print(table)  # [[1, 2, 3], [2, 4, 6], [3, 6, 9]]</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Generator Expressions</h2>
          <p>If you use round brackets, you get a <strong>generator expression</strong>. It makes values one at a time. It does not build a whole list, so it saves memory. It works very well inside <code>sum()</code>, <code>max()</code>, <code>any()</code> and <code>all()</code>:</p>
          <div class="lc-code-block"><pre><code>total = sum(n * n for n in range(1, 1_000_001))   # no big list in memory
        has_fail = any(m &lt; 35 for m in [88, 45, 30])     # True</code></pre></div>
          <p>You will learn how generators work in Lesson 17.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Which Brackets Give What?</h2>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>[x * 2 for x in data]</code></td><td>list</td></tr>
              <tr><td><code>{x * 2 for x in data}</code></td><td>set (duplicates removed)</td></tr>
              <tr><td><code>{k: v for k, v in pairs}</code></td><td>dict</td></tr>
              <tr><td><code>(x * 2 for x in data)</code></td><td>generator (makes values only when asked, not a tuple!)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Putting <code>else</code> at the end: <code>[x for x in nums if x &gt; 0 else 0]</code> is a <code>SyntaxError</code>. When you use <code>else</code>, the condition goes at the front.</li>
            <li>Expecting <code>(x for x in data)</code> to be a tuple. Use <code>tuple(x for x in data)</code>.</li>
            <li>Writing very long comprehensions with three loops and two conditions. If it doesn't fit on one or two lines, use a normal loop.</li>
            <li>Using a comprehension only for side effects (actions like printing), like <code>[print(x) for x in data]</code>. Use a <code>for</code> loop.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Start from <code>prices = {"pen": 10, "bag": 850, "book": 320, "ruler": 25}</code>. Build a dict of only the items that cost more than ₹100. Increase their prices by 10%. Then use a generator expression to find the total cost of all items.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Comprehensions are usually a little faster than the same append loop. But use them mainly because they are <em>clearer</em>. Easy-to-read code comes first.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 10: Comprehensions

        squares_loop = []
        for n in range(1, 6):
            squares_loop.append(n * n)
        squares = [n * n for n in range(1, 6)]
        print("loop         :", squares_loop)
        print("comprehension:", squares)

        nums = [0, 1, 2, 3, 4]
        print("filter (if at end)       :", [x for x in nums if x % 2 == 0])
        print("choose (if-else at start):", [x if x % 2 == 0 else 0 for x in nums])

        words = ["  Mango ", "apple", " KIWI"]
        print("cleaned:", [w.strip().lower() for w in words])

        print("--- dict and set comprehensions ---")
        names = ["asha", "ben", "chen"]
        print("lengths:", {name: len(name) for name in names})
        marks = {"Asha": 88, "Ben": 45, "Chen": 72}
        print("passed:", {n: m for n, m in marks.items() if m >= 50})
        print("first letters:", sorted({name[0] for name in names}))

        prices = {"pen": 10, "bag": 850, "book": 320, "ruler": 25}
        costly = {item: round(p * 1.1, 2) for item, p in prices.items() if p > 100}
        print("costly +10%:", costly)

        print("--- nested ---")
        grid = [[1, 2], [3, 4], [5, 6]]
        print("flat:", [x for row in grid for x in row])
        print("table:", [[r * c for c in range(1, 4)] for r in range(1, 4)])

        print("--- generator expressions ---")
        print("sum of squares 1..1,000,000:", sum(n * n for n in range(1, 1_000_001)))
        print("any mark below 35?", any(m < 35 for m in [88, 45, 30]))
        print("all marks above 25?", all(m > 25 for m in [88, 45, 30]))
        print("total price:", sum(p for p in prices.values()))
        gen = (x * 2 for x in [1, 2, 3])
        print("type of (x * 2 for ...):", type(gen).__name__)
      PY
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Exception Handling</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">An <strong>exception</strong> is an error that happens while the program runs. Examples: dividing by zero, a missing key, or bad user input. With <code>try</code> / <code>except</code> you can catch the error and handle it. Then the program does not crash.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Built-in Exceptions</h2>
          <table class="lc-table">
            <thead><tr><th>Exception</th><th>Typical cause</th></tr></thead>
            <tbody>
              <tr><td><code>ValueError</code></td><td>Right type, wrong value: <code>int("abc")</code></td></tr>
              <tr><td><code>TypeError</code></td><td>Wrong type: <code>"5" + 3</code></td></tr>
              <tr><td><code>ZeroDivisionError</code></td><td><code>10 / 0</code></td></tr>
              <tr><td><code>KeyError</code></td><td>Key not in the dict: <code>d["nope"]</code></td></tr>
              <tr><td><code>IndexError</code></td><td>List index out of range (past the end of the list)</td></tr>
              <tr><td><code>FileNotFoundError</code></td><td>Opening a file that doesn't exist</td></tr>
              <tr><td><code>AttributeError</code></td><td>The method does not exist: <code>(5).upper()</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>try / except / else / finally</h2>
          <div class="lc-code-block"><pre><code>def safe_divide(a, b):
            try:
                result = a / b
            except ZeroDivisionError:
                print("Cannot divide by zero")
                return None
            else:
                print("Worked!")          # runs only if NO exception happened
                return result
            finally:
                print("Done dividing")    # ALWAYS runs, error or not

        safe_divide(10, 2)   # Worked! / Done dividing
        safe_divide(10, 0)   # Cannot divide by zero / Done dividing</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Block</th><th>Runs when…</th></tr></thead>
            <tbody>
              <tr><td><code>try</code></td><td>Always. It holds the code that might fail</td></tr>
              <tr><td><code>except</code></td><td>A matching exception was raised in <code>try</code></td></tr>
              <tr><td><code>else</code></td><td><code>try</code> finished with no exception</td></tr>
              <tr><td><code>finally</code></td><td>Always, even after <code>return</code>. Use it for cleanup</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Catching Specific Errors</h2>
          <div class="lc-code-block"><pre><code>for text in ["42", "abc", "0"]:
            try:
                value = 100 / int(text)
            except ValueError as err:           # 'as err' gives you the exception object
                print("Not a number:", err)
            except ZeroDivisionError:
                print("Zero is not allowed")
            else:
                print("Result:", value)</code></pre></div>
          <p><strong>Output:</strong></p>
          <div class="lc-code-block"><pre><code>Result: 2.380952380952381
        Not a number: invalid literal for int() with base 10: 'abc'
        Zero is not allowed</code></pre></div>
          <p>You can catch several types in one line: <code>except (ValueError, TypeError):</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Raising Your Own Exceptions</h2>
          <div class="lc-code-block"><pre><code>class InsufficientFundsError(Exception):
            """Raised when a withdrawal is bigger than the balance."""

        def withdraw(balance, amount):
            if amount &lt;= 0:
                raise ValueError("amount must be positive")
            if amount &gt; balance:
                raise InsufficientFundsError(f"need ₹{amount - balance} more")
            return balance - amount</code></pre></div>
          <p>A custom exception is just a class that inherits from <code>Exception</code> (it is built on top of it). You will learn classes in Lesson 15. Inside an <code>except</code> block, <code>raise</code> on its own raises the same error again. For example, you can log the error first and then raise it again.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>EAFP: Python's Style</h2>
          <p>Python code often follows "<strong>E</strong>asier to <strong>A</strong>sk <strong>F</strong>orgiveness than <strong>P</strong>ermission". This means: just try the operation and handle the failure. Do not check every condition first. For example, <code>try: int(text)</code> is simpler and safer than checking every character yourself.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Logging Errors Instead of Printing</h2>
          <p>In real programs, record problems with the standard <code>logging</code> module, not <code>print()</code>. Each message has a <strong>level</strong>: <code>DEBUG</code>, <code>INFO</code>, <code>WARNING</code>, <code>ERROR</code> or <code>CRITICAL</code>. You choose in one place which levels are shown. Inside <code>except</code>, <code>log.exception()</code> logs at <code>ERROR</code> level. It also adds the full traceback (the list of calls that led to the error).</p>
          <div class="lc-code-block"><pre><code>import logging

        logging.basicConfig(level=logging.INFO, format="%(levelname)s %(name)s: %(message)s")
        log = logging.getLogger("shop")

        log.debug("Raw row: %s", {"id": 7})        # hidden: DEBUG is below INFO
        log.info("Loaded %d orders", 3)
        log.warning("Order %d has no email", 7)
        try:
            average = 450 / 0
        except ZeroDivisionError:
            log.exception("Could not compute average")   # ERROR plus the traceback</code></pre></div>
          <div class="lc-code-block"><pre><code>INFO shop: Loaded 3 orders
        WARNING shop: Order 7 has no email
        ERROR shop: Could not compute average
        Traceback (most recent call last):
          ...
        ZeroDivisionError: division by zero</code></pre></div>
          <p>Without <code>basicConfig</code>, only <code>WARNING</code> and higher levels are shown. Log messages go to the error stream (stderr), not to normal output. You can send them to a file with <code>basicConfig(filename="app.log")</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Using <code>except:</code> on its own or <code>except Exception:</code>. These hide every bug, even typos. Catch the specific error you expect.</li>
            <li>Putting too much code inside <code>try</code>. Keep only the line that can fail there. Put the rest in <code>else</code>.</li>
            <li>Catching an error and doing nothing (<code>except ValueError: pass</code>). Then problems disappear and you never see them.</li>
            <li>Thinking <code>finally</code> only runs on errors. It always runs.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Write <code>parse_age(text)</code> that returns an <code>int</code>. If the age is below 0 or above 130, it raises <code>ValueError</code> with a clear message. Test it in a loop with <code>"25"</code>, <code>"-3"</code>, <code>"old"</code> and <code>"200"</code>. Print either the age or the error message.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Error messages are for humans. Say what went wrong <em>and</em> what was expected. <code>"age must be 0–130, got 200"</code> is much more useful than <code>"bad input"</code>.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 11: Exception handling

        def safe_divide(a, b):
            try:
                result = a / b
            except ZeroDivisionError:
                print("  Cannot divide by zero")
                return None
            else:
                print("  Worked!")
                return result
            finally:
                print("  (finally always runs)")

        r = safe_divide(10, 2)
        print("10 / 2 ->", r)
        r = safe_divide(10, 0)
        print("10 / 0 ->", r)

        print("--- catching specific errors ---")
        for text in ["42", "abc", "0"]:
            try:
                value = 100 / int(text)
            except ValueError as err:
                print(f"{text!r}: not a number ({err})")
            except ZeroDivisionError:
                print(f"{text!r}: zero is not allowed")
            else:
                print(f"{text!r}: result {value:.2f}")

        print("--- raising custom exceptions ---")
        class InsufficientFundsError(Exception):
            """Raised when a withdrawal is bigger than the balance."""

        def withdraw(balance, amount):
            if amount <= 0:
                raise ValueError("amount must be positive")
            if amount > balance:
                raise InsufficientFundsError(f"need ₹{amount - balance} more")
            return balance - amount

        for amount in [300, -50, 2000]:
            try:
                left = withdraw(1000, amount)
                print(f"withdraw {amount}: balance now ₹{left}")
            except (ValueError, InsufficientFundsError) as err:
                print(f"withdraw {amount}: {type(err).__name__} - {err}")
      PY
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Files, JSON and Context Managers</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Real programs read and write data. This can be text files, CSV spreadsheets or JSON from web APIs. Python's <code>with</code> statement opens a file and <strong>makes sure it is always closed</strong>. The <code>pathlib</code>, <code>json</code> and <code>csv</code> modules (ready-made code files you can import) help with the rest.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>open() and the with Statement</h2>
          <div class="lc-code-block"><pre><code>with open("notes.txt", "w", encoding="utf-8") as f:
            f.write("Line 1\n")
            f.write("Line 2\n")
        # the file is closed here, even if an error happened inside the block

        with open("notes.txt", encoding="utf-8") as f:   # "r" (read) is the default
            for line in f:                               # read line by line (memory friendly)
                print(line.strip())</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Meaning</th><th>If the file exists</th><th>If it doesn't</th></tr></thead>
            <tbody>
              <tr><td><code>"r"</code></td><td>Read (default)</td><td>Reads it</td><td><code>FileNotFoundError</code></td></tr>
              <tr><td><code>"w"</code></td><td>Write</td><td><strong>Erases</strong> it first</td><td>Creates it</td></tr>
              <tr><td><code>"a"</code></td><td>Append</td><td>Adds to the end</td><td>Creates it</td></tr>
              <tr><td><code>"x"</code></td><td>Create</td><td><code>FileExistsError</code></td><td>Creates it</td></tr>
              <tr><td><code>"b"</code> (e.g. <code>"rb"</code>)</td><td>Binary (images, PDFs)</td><td colspan="2">Works with bytes instead of text</td></tr>
            </tbody>
          </table>
          <p><strong>In this course's editor</strong> Python runs in your browser. It has a temporary file system kept in memory, so real files work. You can create files, add to them and read them. They stay between runs until the page reloads. That is why the starter first deletes its old files with <code>Path.unlink(missing_ok=True)</code>.</p>
          <div class="lc-code-block"><pre><code>with open("notes.txt", "a", encoding="utf-8") as f:   # append keeps Line 1 and Line 2
            f.write("Line 3\n")

        try:
            with open("notes.txt", "x", encoding="utf-8") as f:   # "x" refuses to overwrite
                f.write("oops")
        except FileExistsError as err:
            print("FileExistsError for", err.filename)</code></pre></div>
          <p><strong>Output:</strong></p>
          <div class="lc-code-block"><pre><code>FileExistsError for notes.txt</code></pre></div>
          <p>Always pass <code>encoding="utf-8"</code> for text files. Then Hindi, Tamil or ₹ symbols work the same on every computer.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Reading Methods</h2>
          <ul class="lc-list">
            <li><code>f.read()</code>: the whole file as one string.</li>
            <li><code>f.readline()</code>: the next single line.</li>
            <li><code>for line in f:</code>: one line at a time (best for big files).</li>
            <li><code>f.readlines()</code>: a list of all lines.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>pathlib: Modern File Paths</h2>
          <p><code>pathlib.Path</code> is the modern way to work with paths (the location of a file or folder). Join parts with <code>/</code>. Python then uses the right separator for Windows, macOS or Linux.</p>
          <div class="lc-code-block"><pre><code>from pathlib import Path

        report = Path("reports") / "2026" / "marks.csv"
        print(report.name, report.stem, report.suffix)   # marks.csv marks .csv
        print(report.parent)                             # reports/2026

        report.parent.mkdir(parents=True, exist_ok=True)
        report.write_text("name,marks\nAsha,88\n", encoding="utf-8")
        print(report.read_text(encoding="utf-8"))
        print(report.exists())                           # True</code></pre></div>
          <p><strong>Output</strong> (on Windows the parent prints as <code>reports\2026</code>):</p>
          <div class="lc-code-block"><pre><code>marks.csv marks .csv
        reports/2026
        name,marks
        Asha,88

        True</code></pre></div>
          <p>Old code uses <code>os.path.join()</code> for this. It still works, but today <code>pathlib</code> is the recommended way.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>JSON</h2>
          <p>JSON is the standard text format for web APIs and config files. It matches Python dicts and lists very closely.</p>
          <div class="lc-code-block"><pre><code>import json

        data = {"name": "Asha", "skills": ["Python", "SQL"], "active": True}
        text = json.dumps(data, indent=2)    # dict  -&gt; JSON string ("dump string")
        back = json.loads(text)              # JSON string -&gt; dict ("load string")
        print(back["skills"][0])             # Python

        with open("user.json", "w", encoding="utf-8") as f:
            json.dump(data, f)               # write straight to a file
        with open("user.json", encoding="utf-8") as f:
            loaded = json.load(f)            # read straight from a file</code></pre></div>
          <p>Note the changes: Python <code>True</code>/<code>None</code> become JSON <code>true</code>/<code>null</code>. Tuples become lists.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>CSV and In-Memory Files</h2>
          <p>The <code>csv</code> module reads spreadsheets correctly, even commas inside quotes. <code>io.StringIO</code> is a string that works <strong>like an open text file</strong>. It is useful in tests when you don't want a real file.</p>
          <div class="lc-code-block"><pre><code>import csv, io

        fake_file = io.StringIO("name,marks\nAsha,88\nBen,92\n")
        for row in csv.DictReader(fake_file):
            print(row["name"], int(row["marks"]))    # Asha 88 / Ben 92</code></pre></div>
          <p>For a real file, open it with <code>open("marks.csv", newline="", encoding="utf-8")</code>. The <code>csv</code> docs recommend this.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>What Is a Context Manager?</h2>
          <p>Any object that works with <code>with</code> is a <strong>context manager</strong>. It runs setup code when the block starts. It runs cleanup code when the block ends, even if an exception (an error) happens. Files close themselves. Locks are released. Database connections save (commit) or undo (roll back) their changes. You can write your own with <code>contextlib.contextmanager</code> after you learn generators (Lesson 17).</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Opening with <code>"w"</code> when you meant <code>"a"</code>. The old content is erased at once.</li>
            <li>Calling <code>open()</code> without <code>with</code> and forgetting <code>close()</code>.</li>
            <li>Mixing up <code>json.dumps</code>/<code>json.loads</code> (strings) with <code>json.dump</code>/<code>json.load</code> (files).</li>
            <li>Building paths by joining strings with <code>+</code> and a fixed <code>\</code> separator. This breaks on other operating systems. Use <code>Path</code> and <code>/</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>In the starter, add a third student (<code>Chen,79</code>) to the end of <code>marks.csv</code> with mode <code>"a"</code>. Read the file again and work out the class average. Last, save the list of students to <code>students.json</code> with <code>indent=2</code>. Read it back with <code>json.load</code> and print it.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Write functions that take a file <em>object</em> (anything with <code>.read()</code> or lines), not a file <em>name</em>. Then you can test them with <code>io.StringIO</code>. You can also use them with real files without any change.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 12: Files, JSON and context managers
        # The editor has an in-memory file system, so these are real files.
        import csv
        import json
        from pathlib import Path

        # Files stay between runs until the page reloads, so delete old files first
        for old in ["notes.txt", "data.json", "reports/2026/marks.csv"]:
            Path(old).unlink(missing_ok=True)

        print("--- write, append, read ---")
        with open("notes.txt", "w", encoding="utf-8") as f:   # "w" creates or erases
            f.write("Line 1\n")
            f.write("Line 2\n")
        print("closed after with?", f.closed)
        with open("notes.txt", "a", encoding="utf-8") as f:   # "a" adds to the end
            f.write("Line 3\n")
        with open("notes.txt", encoding="utf-8") as f:        # "r" is the default
            for number, line in enumerate(f, start=1):
                print(number, line.strip())
        try:
            with open("notes.txt", "x", encoding="utf-8") as f:
                f.write("never written")
        except FileExistsError as err:
            print("FileExistsError for", err.filename)

        print("--- pathlib ---")
        report = Path("reports") / "2026" / "marks.csv"
        print("name:", report.name, "| stem:", report.stem, "| suffix:", report.suffix)
        print("exists before?", report.exists())
        report.parent.mkdir(parents=True, exist_ok=True)
        report.write_text("name,marks\nAsha,88\nBen,92\n", encoding="utf-8")
        print("exists after?", report.exists())
        print(report.read_text(encoding="utf-8"), end="")

        print("--- CSV ---")
        with open(report, newline="", encoding="utf-8") as f:
            students = [{"name": r["name"], "marks": int(r["marks"])} for r in csv.DictReader(f)]
        print("students:", students)

        print("--- JSON ---")
        data = {"course": "Python", "students": students, "active": True, "mentor": None}
        print(json.dumps(data))
        with open("data.json", "w", encoding="utf-8") as f:
            json.dump(data, f, indent=2)
        with open("data.json", encoding="utf-8") as f:
            back = json.load(f)
        print("type after load:", type(back).__name__, "| first:", back["students"][0]["name"])
      PY
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Modules, Packages and pip</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>module</strong> is just a <code>.py</code> file you can import. A <strong>package</strong> is a folder of modules. Python comes with a huge <strong>standard library</strong> (modules that are built in). The <code>pip</code> tool installs packages made by other people from PyPI. There are hundreds of thousands of them.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Ways to Import</h2>
          <div class="lc-code-block"><pre><code>import math                    # use as math.sqrt(16)
        from math import sqrt, pi      # use as sqrt(16), pi
        import datetime as dt          # alias: dt.date(2026, 9, 25)
        from statistics import mean

        from math import *             # AVOID: you can't tell where names come from</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Your Own Modules and Packages</h2>
          <div class="lc-code-block"><pre><code>my_project/
            main.py
            helpers.py          # a module
            shop/               # a package
                __init__.py
                cart.py
                billing.py</code></pre></div>
          <div class="lc-code-block"><pre><code># main.py
        import helpers
        from shop.billing import add_gst

        print(helpers.greet("Asha"))
        print(add_gst(100))</code></pre></div>
          <p>An <code>__init__.py</code> file marks a folder as a regular package. The file can be empty.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>if __name__ == "__main__"</h2>
          <p>Every module has a <code>__name__</code>. When you <strong>run</strong> a file directly, its <code>__name__</code> is <code>"__main__"</code>. When it is <strong>imported</strong>, <code>__name__</code> is the module's name. So this pattern runs code only when the file is the main program:</p>
          <div class="lc-code-block"><pre><code>def main():
            print("Running the report...")

        if __name__ == "__main__":
            main()      # not run when another file does "import report"</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Standard Library Highlights</h2>
          <table class="lc-table">
            <thead><tr><th>Module</th><th>Use it for</th></tr></thead>
            <tbody>
              <tr><td><code>math</code>, <code>statistics</code></td><td>Maths functions, mean/median</td></tr>
              <tr><td><code>random</code></td><td>Random numbers, shuffling, sampling (<code>seed()</code> makes results repeatable)</td></tr>
              <tr><td><code>datetime</code></td><td>Dates, times, date arithmetic</td></tr>
              <tr><td><code>collections</code></td><td><code>Counter</code>, <code>defaultdict</code>, <code>deque</code>, <code>namedtuple</code></td></tr>
              <tr><td><code>itertools</code>, <code>functools</code></td><td>Looping tools, caching, decorators</td></tr>
              <tr><td><code>json</code>, <code>csv</code>, <code>pathlib</code></td><td>Data files and paths (Lesson 12)</td></tr>
              <tr><td><code>re</code></td><td>Regular expressions (text patterns), Lesson 14</td></tr>
              <tr><td><code>sys</code>, <code>argparse</code></td><td>Command-line arguments, see below</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Command-Line Arguments: sys.argv and argparse</h2>
          <p>Scripts often take input from the command line. <code>sys.argv</code> is the plain list of words typed, with the script name first. The standard <code>argparse</code> module turns these words into named values of the right type. It also writes the help and error messages for you.</p>
          <div class="lc-code-block"><pre><code># greet.py
        import argparse
        import sys

        print("sys.argv:", sys.argv)
        parser = argparse.ArgumentParser(description="Greet a student")
        parser.add_argument("name")                          # required, by position
        parser.add_argument("--times", type=int, default=1)  # optional, converted to int
        args = parser.parse_args()
        for _ in range(args.times):
            print(f"Hello, {args.name}!")</code></pre></div>
          <div class="lc-code-block"><pre><code>$ python greet.py Asha --times 2
        sys.argv: ['greet.py', 'Asha', '--times', '2']
        Hello, Asha!
        Hello, Asha!
        $ python greet.py
        sys.argv: ['greet.py']
        usage: greet.py [-h] [--times TIMES] name
        greet.py: error: the following arguments are required: name</code></pre></div>
          <p>This course's editor has no command line. So test a parser there by passing the words yourself: <code>parser.parse_args(["Asha", "--times", "2"])</code>. <code>python greet.py -h</code> prints the help that <code>argparse</code> makes from your arguments.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>pip and Virtual Environments</h2>
          <p>A <strong>virtual environment</strong> is a private folder of packages for one project. So project A can use one version of a library, and project B can use another. Professionals usually create one for each project.</p>
          <div class="lc-code-block"><pre><code>python -m venv .venv                 # create (use "py" instead of "python" on Windows)
        source .venv/bin/activate            # activate on macOS / Linux
        .venv\Scripts\activate               # activate on Windows

        python -m pip install requests       # install a package from PyPI
        python -m pip freeze &gt; requirements.txt   # SAVE the exact versions you use
        python -m pip install -r requirements.txt # INSTALL them on another machine
        deactivate                           # leave the environment</code></pre></div>
          <p>Modern projects also list their dependencies (the packages they need) in a <code>pyproject.toml</code> file. Newer tools such as <strong>uv</strong> create environments and install packages much faster. The ideas are the same.</p>
          <p><strong>In this course's editor:</strong> you cannot run <code>pip</code>, but popular packages such as NumPy and pandas are loaded automatically when you import them.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Naming your own file <code>random.py</code> or <code>json.py</code>. It hides the standard module, so <code>import random</code> loads your file instead.</li>
            <li>Installing packages globally instead of in a virtual environment.</li>
            <li>Committing the <code>.venv</code> folder to Git. Commit <code>requirements.txt</code> or <code>pyproject.toml</code> instead.</li>
            <li>Thinking <code>pip freeze &gt; requirements.txt</code> installs packages. It only <em>writes the list</em>.</li>
            <li>Reading <code>sys.argv[1]</code> without checking that it exists. You get an <code>IndexError</code> when no argument is given. <code>argparse</code> checks this for you.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Use <code>datetime.date</code> to count the days from 25 September 2026 until 1 January 2027. Then use <code>random.seed(7)</code> and <code>random.sample</code> to pick 3 quiz winners from a list of 8 names. Last, build an <code>argparse</code> parser with a required <code>city</code> and an optional <code>--days</code> (an <code>int</code>, default 7). Test it with <code>parser.parse_args(["Boston", "--days", "3"])</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Before you install a package, check the standard library. Many tasks need no install at all: dates, JSON, CSV, statistics and zip files.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 13: Modules, packages and the standard library
        import math
        import random
        import datetime as dt
        from statistics import mean, median
        import argparse

        print("--- math ---")
        print("math.sqrt(144):", math.sqrt(144))
        print("math.ceil(4.1), math.floor(4.9):", math.ceil(4.1), math.floor(4.9))
        print("math.isclose(0.1 + 0.2, 0.3):", math.isclose(0.1 + 0.2, 0.3))

        print("--- statistics ---")
        marks = [72, 88, 95, 61, 88]
        print("mean:", mean(marks), "| median:", median(marks))

        print("--- datetime ---")
        today = dt.date(2026, 9, 25)
        new_year = dt.date(2027, 1, 1)
        print("days until new year:", (new_year - today).days)
        print("in 30 days:", today + dt.timedelta(days=30))
        print("weekday:", today.strftime("%A"))

        print("--- random (seeded, so results repeat every run) ---")
        random.seed(7)
        names = ["Asha", "Ben", "Chen", "Divya", "Eli", "Farah", "Gopal", "Hina"]
        winners = random.sample(names, 3)
        print("3 winners:", winners)
        random.seed(7)
        print("same seed, same winners:", random.sample(names, 3) == winners)

        print("--- argparse (words passed in, because the editor has no command line) ---")
        parser = argparse.ArgumentParser(description="Greet a student")
        parser.add_argument("name")
        parser.add_argument("--times", type=int, default=1)
        args = parser.parse_args(["Asha", "--times", "2"])
        print("args:", args)
        print("name:", args.name, "| times + 1:", args.times + 1)

        print("--- module names ---")
        print("math.__name__:", math.__name__)
        print("this file's __name__:", __name__)

        def main():
            print("main() runs because this file is the main program")

        if __name__ == "__main__":
            main()
      PY
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Regular Expressions</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>regular expression</strong> (regex) is a short pattern that describes text. With the standard <code>re</code> module you can <strong>validate</strong> (check) input, for example: is this a 10-digit mobile number? You can <strong>extract</strong> data, such as every amount in a message. You can also <strong>clean</strong> text, for example remove extra spaces or change the date format. Regex is used a lot in data cleaning, reading logs and preparing text for AI.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Your First Pattern</h2>
          <p>Always write patterns as <strong>raw strings</strong> (<code>r"..."</code>). Then backslashes reach <code>re</code> without any change. A search that finds something returns a <strong>Match object</strong>. If nothing matches, it returns <code>None</code>.</p>
          <div class="lc-code-block"><pre><code>import re

        text = "Order #1024 paid Rs 450"
        m = re.search(r"#(\d+)", text)      # \d+ = one or more digits; ( ) = a group
        print(m.group())                     # #1024   (the whole match)
        print(m.group(1))                    # 1024    (just the group)
        print(re.search(r"#\d+", "no orders"))   # None</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Pattern Building Blocks</h2>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Matches</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>\d</code>, <code>\w</code>, <code>\s</code></td><td>A digit; a word character (letter, digit or _); a space, tab or newline</td><td><code>\d\d</code> matches <code>42</code></td></tr>
              <tr><td><code>.</code></td><td>Any one character except a newline</td><td><code>c.t</code> matches <code>cat</code>, <code>cut</code></td></tr>
              <tr><td><code>[abc]</code>, <code>[6-9]</code>, <code>[^0-9]</code></td><td>One character from the set; a range; any character NOT in the set</td><td><code>[6-9]</code> matches <code>8</code></td></tr>
              <tr><td><code>+</code>, <code>*</code>, <code>?</code></td><td>1 or more; 0 or more; 0 or 1 (optional)</td><td><code>colou?r</code> matches <code>color</code>, <code>colour</code></td></tr>
              <tr><td><code>{6}</code>, <code>{2,4}</code></td><td>Exactly 6 times; 2 to 4 times</td><td><code>\d{6}</code> matches a PIN code</td></tr>
              <tr><td><code>^</code>, <code>$</code>, <code>\b</code></td><td>Start of text; end of text; a word boundary</td><td><code>\bcat\b</code> skips <code>catalog</code></td></tr>
              <tr><td><code>( )</code>, <code>|</code></td><td>A group; either/or</td><td><code>(tea|coffee)</code></td></tr>
              <tr><td><code>\.</code>, <code>\$</code></td><td>A real dot or dollar sign (put a backslash before special characters)</td><td><code>\d+\.\d+</code> matches <code>3.14</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Choosing the Right re Function</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th><th>Use it to</th></tr></thead>
            <tbody>
              <tr><td><code>re.search(p, s)</code></td><td>First Match anywhere, or <code>None</code></td><td>Find one thing</td></tr>
              <tr><td><code>re.match(p, s)</code></td><td>Match only at the <em>start</em>, or <code>None</code></td><td>Check how text begins</td></tr>
              <tr><td><code>re.fullmatch(p, s)</code></td><td>Match only if the <em>whole</em> text fits, or <code>None</code></td><td>Validate input</td></tr>
              <tr><td><code>re.findall(p, s)</code></td><td>List of strings (or tuples of groups)</td><td>Extract every match</td></tr>
              <tr><td><code>re.finditer(p, s)</code></td><td>Iterator of Match objects</td><td>Extract with positions and named groups</td></tr>
              <tr><td><code>re.sub(p, new, s)</code></td><td>New string</td><td>Replace or reformat</td></tr>
              <tr><td><code>re.split(p, s)</code></td><td>List of pieces</td><td>Split on several separators</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>print(re.match(r"\d+", "42 apples"))       # &lt;re.Match object; span=(0, 2), match='42'&gt;
        print(re.match(r"\d+", "apples 42"))       # None: the text does not START with digits
        print(re.search(r"\d+", "apples 42"))      # &lt;re.Match object; span=(7, 9), match='42'&gt;
        print(re.fullmatch(r"\d+", "42 apples"))   # None: the whole text is not digits

        print(bool(re.fullmatch(r"[6-9]\d{9}", "9876543210")))    # True: a valid mobile number
        print(bool(re.fullmatch(r"[6-9]\d{9}", "98765 43210")))   # False: the space breaks it
        print(re.findall(r"\d{5}", "Boston 02109, Chicago 60601"))  # ['02109', '60601']
        print(re.findall(r"(\w+)=(\d+)", "a=1, b=22"))            # [('a', '1'), ('b', '22')]
        print(re.split(r"[,;]\s*", "Boston, London;Chicago,  Miami"))    # ['Boston', 'London', 'Chicago', 'Miami']</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Named Groups, compile() and sub()</h2>
          <p><code>(?P&lt;name&gt;...)</code> gives a group a name. Then your code can use <code>m["year"]</code> instead of <code>m.group(3)</code>. <code>re.compile</code> builds a pattern once, so you can use it again and again. In <code>sub</code>, <code>\g&lt;name&gt;</code> (or <code>\1</code>, <code>\2</code>) puts a group back into the new text.</p>
          <div class="lc-code-block"><pre><code>date = re.compile(r"(?P&lt;day&gt;\d{2})-(?P&lt;month&gt;\d{2})-(?P&lt;year&gt;\d{4})")

        m = date.search("Paid on 25-09-2026")
        print(m["year"], m["month"], m["day"])     # 2026 09 25
        print(m.groupdict())                       # {'day': '25', 'month': '09', 'year': '2026'}
        print(date.sub(r"\g&lt;year&gt;-\g&lt;month&gt;-\g&lt;day&gt;", "Paid on 25-09-2026"))   # Paid on 2026-09-25
        print(re.sub(r"\s+", " ", "too    many   spaces"))                        # too many spaces</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Greedy vs Lazy, and Flags</h2>
          <p><code>+</code> and <code>*</code> are <strong>greedy</strong>: they take as much text as they can. Add <code>?</code> (<code>+?</code>, <code>*?</code>) to make them <strong>lazy</strong>: they take as little as they can.</p>
          <div class="lc-code-block"><pre><code>html = "&lt;b&gt;Asha&lt;/b&gt; scored &lt;b&gt;95&lt;/b&gt;"
        print(re.findall(r"&lt;b&gt;.+&lt;/b&gt;", html))     # ['&lt;b&gt;Asha&lt;/b&gt; scored &lt;b&gt;95&lt;/b&gt;']  one big match
        print(re.findall(r"&lt;b&gt;(.+?)&lt;/b&gt;", html))  # ['Asha', '95']

        print(re.findall(r"python", "Python, PYTHON and python", flags=re.IGNORECASE))
        # ['Python', 'PYTHON', 'python']
        log = "ERROR disk full\nINFO started\nERROR timeout"
        print(re.findall(r"^ERROR (.+)$", log, flags=re.MULTILINE))   # ['disk full', 'timeout']</code></pre></div>
          <p><code>re.MULTILINE</code> makes <code>^</code> and <code>$</code> match at the start and end of <em>every line</em>. Without it, they match only the start and end of the whole text.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Regex or String Methods?</h2>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Best tool</th></tr></thead>
            <tbody>
              <tr><td>Does the text contain <code>"error"</code>?</td><td><code>"error" in text</code></td></tr>
              <tr><td>Replace one fixed word</td><td><code>text.replace("colour", "color")</code></td></tr>
              <tr><td>Split on one fixed separator</td><td><code>text.split(",")</code></td></tr>
              <tr><td>Find every 6-digit number, check a format, change date formats</td><td><code>re</code></td></tr>
              <tr><td>Parse HTML, JSON or CSV</td><td>A real parser (<code>json</code>, <code>csv</code>, an HTML library), not regex</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting <code>r"..."</code>. In <code>"\bcat"</code>, Python turns <code>\b</code> into a backspace character before <code>re</code> sees it.</li>
            <li>Using <code>re.search</code> to validate. <code>re.search(r"\d{10}", "abc98765432100")</code> still matches. Use <code>re.fullmatch</code> (or <code>^...$</code>).</li>
            <li>Calling <code>.group()</code> on <code>None</code> when nothing matched. This gives an <code>AttributeError</code>. Check <code>if m:</code> first.</li>
            <li>Forgetting to escape special characters (put a backslash before them). <code>.</code> matches <em>any</em> character. Write <code>\.</code> for a real dot.</li>
            <li>A greedy <code>.+</code> that takes too much text. Use the lazy <code>.+?</code> or a smaller set like <code>[^&lt;]+</code>.</li>
            <li>Writing one huge pattern that is hard to read. Build it in small parts and test each one.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Start with <code>msg = "Call 9876543210 or 8123456789. Old: 12345. Email asha.k@example.co.in"</code>. (1) Use <code>re.findall</code> with <code>\b</code> to list only the 10-digit mobile numbers that start with 6 to 9. (2) Get the email with <code>re.search(r"[\w.]+@[\w.]+\.\w+", msg)</code>. (3) Use <code>re.sub</code> with a group to hide each mobile number. Only its last 4 digits should show, like <code>******3210</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Test a new pattern on a few good <em>and</em> bad examples before you trust it. Print what <code>findall</code> returns for each one. A pattern that accepts everything is as wrong as one that accepts nothing.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 14: Regular expressions
        import re

        print("--- search, fullmatch, findall ---")
        text = "Order #1024 paid Rs 450 on 25-09-2026; order #1031 paid Rs 1200 on 26-09-2026"
        m = re.search(r"#(\d+)", text)
        print("first order:", m.group(), "| number only:", m.group(1))
        print("all amounts:", re.findall(r"Rs (\d+)", text))
        print("valid mobile?", bool(re.fullmatch(r"[6-9]\d{9}", "9876543210")))
        print("valid mobile?", bool(re.fullmatch(r"[6-9]\d{9}", "98765 43210")))

        print("--- named groups ---")
        date = re.compile(r"(?P<day>\d{2})-(?P<month>\d{2})-(?P<year>\d{4})")
        for found in date.finditer(text):
            print(found.group("year"), found["month"], found["day"], "at position", found.start())
        print("groupdict:", date.search(text).groupdict())

        print("--- sub and split ---")
        print("ISO dates:", date.sub(r"\g<year>-\g<month>-\g<day>", text))
        print("tidy:", re.sub(r"\s+", " ", "  too    many   spaces ").strip())
        print("split:", re.split(r"[,;]\s*", "Boston, London;Chicago,  Miami"))

        print("--- greedy vs lazy ---")
        html = "<b>Asha</b> scored <b>95</b>"
        print("greedy:", re.findall(r"<b>.+</b>", html))
        print("lazy:  ", re.findall(r"<b>(.+?)</b>", html))

        print("--- flags ---")
        print("ignore case:", re.findall(r"python", "Python, PYTHON and python", flags=re.IGNORECASE))
        log = "ERROR disk full\nINFO started\nERROR timeout"
        print("line starts:", re.findall(r"^ERROR (.+)$", log, flags=re.MULTILINE))

        print("--- word boundary ---")
        print("with \\b:", re.findall(r"\bcat\b", "cat catalog bobcat cat."))
        print("without:", len(re.findall(r"cat", "cat catalog bobcat cat.")))
      PY
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Classes and Objects</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>class</strong> is a plan that keeps data (<em>attributes</em>) and behaviour (<em>methods</em>, functions inside a class) together. An <strong>object</strong> is one thing built from that plan. This style is called <strong>object-oriented programming</strong> (OOP).</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Defining a Class</h2>
          <div class="lc-code-block"><pre><code>class BankAccount:
            bank_name = "AI Bank"                 # class attribute: shared by all accounts

            def __init__(self, owner, balance=0):
                self.owner = owner                # instance attributes: one set per object
                self.balance = balance

            def deposit(self, amount):
                self.balance += amount
                return self.balance

        acc = BankAccount("Asha", 1000)           # create an object; __init__ runs
        acc.deposit(500)
        print(acc.owner, acc.balance)             # Asha 1500
        print(acc.bank_name)                      # AI Bank</code></pre></div>
          <ul class="lc-list">
            <li><code>__init__</code> is the <strong>initialiser</strong>. It runs by itself when an object is created, and it sets up the object's attributes.</li>
            <li><code>self</code> is the object the method works on. Python passes it for you. <code>acc.deposit(500)</code> means <code>BankAccount.deposit(acc, 500)</code>.</li>
            <li>Class names use <code>CapWords</code>; methods and attributes use <code>snake_case</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Class vs Instance Attributes</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>Class attribute</th><th>Instance attribute</th></tr></thead>
            <tbody>
              <tr><td>Defined</td><td>In the class body</td><td>On <code>self</code>, usually in <code>__init__</code></td></tr>
              <tr><td>Shared?</td><td>One value for all objects</td><td>Each object has its own</td></tr>
              <tr><td>Example</td><td><code>bank_name</code>, a counter of accounts</td><td><code>owner</code>, <code>balance</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>__str__ and __repr__</h2>
          <div class="lc-code-block"><pre><code>class Point:
            def __init__(self, x, y):
                self.x, self.y = x, y
            def __repr__(self):                 # for developers: unambiguous
                return f"Point(x={self.x}, y={self.y})"
            def __str__(self):                  # for users: friendly
                return f"({self.x}, {self.y})"

        p = Point(2, 3)
        print(p)          # (2, 3)            print() uses __str__
        print([p])        # [Point(x=2, y=3)] containers use __repr__</code></pre></div>
          <p>Without these methods, printing an object shows something like <code>&lt;__main__.Point object at 0x...&gt;</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Properties: Controlled Attributes</h2>
          <p>A <code>@property</code> looks like a normal attribute, but it runs code. It is very good for checking values or for values that are calculated.</p>
          <div class="lc-code-block"><pre><code>class Student:
            def __init__(self, name, marks):
                self.name = name
                self.marks = marks            # goes through the setter below

            @property
            def marks(self):
                return self._marks

            @marks.setter
            def marks(self, value):
                if not 0 &lt;= value &lt;= 100:
                    raise ValueError("marks must be 0-100")
                self._marks = value

            @property
            def passed(self):                 # computed, read-only
                return self._marks &gt;= 35</code></pre></div>
          <p>An underscore at the start (<code>_marks</code>) is a common rule that means "internal, don't use from outside". Python does not force it.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting <code>self</code> as the first method parameter. You get <code>TypeError: ... takes 1 positional argument but 2 were given</code>.</li>
            <li>Writing <code>balance = 0</code> instead of <code>self.balance = 0</code> in <code>__init__</code>. Without <code>self.</code> it is just a local variable.</li>
            <li>Using a mutable (changeable) class attribute like <code>items = []</code> and expecting each object to get its own list. Create it in <code>__init__</code>.</li>
            <li>Calling <code>__init__</code> directly. Create objects with <code>ClassName(...)</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>In the starter, add a <code>withdraw(amount)</code> method to <code>BankAccount</code>. It should raise <code>ValueError</code> if the amount is more than the balance. Then add a <code>__str__</code> that prints like <code>Asha: ₹1,500</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Not everything needs a class. If you only need to group data, a dict or a dataclass (Lesson 19) is simpler. Use a class when the data and the code that changes it belong together.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 15: Classes and objects

        class BankAccount:
            bank_name = "AI Bank"      # class attributes (shared by all objects)
            accounts_opened = 0

            def __init__(self, owner, balance=0):
                self.owner = owner      # instance attributes (one set per object)
                self.balance = balance
                BankAccount.accounts_opened += 1

            def deposit(self, amount):
                self.balance += amount
                return self.balance

            def __repr__(self):
                return f"BankAccount(owner={self.owner!r}, balance={self.balance})"

            def __str__(self):
                return f"{self.owner}: ₹{self.balance:,}"

        asha = BankAccount("Asha", 1000)
        ben = BankAccount("Ben")
        asha.deposit(500)
        print(asha, "|", ben)       # print() uses __str__
        print([asha, ben])          # a list shows __repr__
        print("bank:", asha.bank_name, "| accounts opened:", BankAccount.accounts_opened)

        print("--- property with validation ---")
        class Student:
            def __init__(self, name, marks):
                self.name = name
                self.marks = marks      # goes through the setter

            @property
            def marks(self):
                return self._marks

            @marks.setter
            def marks(self, value):
                if not 0 <= value <= 100:
                    raise ValueError(f"marks must be 0-100, got {value}")
                self._marks = value

            @property
            def passed(self):
                return self._marks >= 35

        s = Student("Chen", 72)
        print(s.name, s.marks, "passed:", s.passed)
        try:
            s.marks = 150
        except ValueError as err:
            print("Rejected:", err)
      PY
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Inheritance and Special Methods</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead"><strong>Inheritance</strong> lets a new class use and add to an existing class. <strong>Special methods</strong> are also called <em>dunder</em> (double underscore) methods, like <code>__len__</code> and <code>__add__</code>. They let your objects work with Python's built-in operators and functions.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>A Child Class</h2>
          <div class="lc-code-block"><pre><code>class Employee:
            def __init__(self, name, salary):
                self.name = name
                self.salary = salary

            def yearly_pay(self):
                return self.salary * 12

        class Manager(Employee):                     # Manager IS AN Employee
            def __init__(self, name, salary, bonus):
                super().__init__(name, salary)       # let the parent set name and salary
                self.bonus = bonus

            def yearly_pay(self):                    # override the parent's method
                return super().yearly_pay() + self.bonus

        m = Manager("Divya", 90_000, 200_000)
        print(m.name, m.yearly_pay())                # Divya 1280000</code></pre></div>
          <ul class="lc-list">
            <li>The child gets every attribute and method of the parent.</li>
            <li><strong>Overriding</strong>: write a method with the same name to change what it does.</li>
            <li><code>super()</code> calls the parent's version. If the child has its own <code>__init__</code>, the parent's <code>__init__</code> runs <strong>only</strong> if you call <code>super().__init__(...)</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Polymorphism</h2>
          <p>Polymorphism means different classes can have a method with the same name. Code that calls that method works with all of them:</p>
          <div class="lc-code-block"><pre><code>staff = [Employee("Asha", 50_000), Manager("Divya", 90_000, 200_000)]
        for person in staff:
            print(person.name, person.yearly_pay())   # each object uses its own version

        print(isinstance(m, Employee))    # True: a Manager is also an Employee
        print(issubclass(Manager, Employee))   # True</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Abstract Base Classes</h2>
          <p>An abstract class lists methods that every child <strong>must</strong> write. You cannot create an object from it directly.</p>
          <div class="lc-code-block"><pre><code>from abc import ABC, abstractmethod

        class Shape(ABC):
            @abstractmethod
            def area(self): ...

        class Square(Shape):
            def __init__(self, side):
                self.side = side
            def area(self):
                return self.side ** 2

        Shape()       # TypeError: Can't instantiate abstract class Shape ...
        Square(3).area()   # 9</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Special (Dunder) Methods</h2>
          <table class="lc-table">
            <thead><tr><th>You write</th><th>Python calls</th></tr></thead>
            <tbody>
              <tr><td><code>str(obj)</code>, <code>print(obj)</code></td><td><code>obj.__str__()</code></td></tr>
              <tr><td><code>repr(obj)</code></td><td><code>obj.__repr__()</code></td></tr>
              <tr><td><code>len(obj)</code></td><td><code>obj.__len__()</code></td></tr>
              <tr><td><code>a + b</code></td><td><code>a.__add__(b)</code></td></tr>
              <tr><td><code>a == b</code></td><td><code>a.__eq__(b)</code></td></tr>
              <tr><td><code>a &lt; b</code> (and <code>sorted()</code>)</td><td><code>a.__lt__(b)</code></td></tr>
              <tr><td><code>obj[i]</code></td><td><code>obj.__getitem__(i)</code></td></tr>
              <tr><td><code>x in obj</code></td><td><code>obj.__contains__(x)</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>class Money:
            def __init__(self, rupees):
                self.rupees = rupees
            def __add__(self, other):
                return Money(self.rupees + other.rupees)
            def __eq__(self, other):
                return isinstance(other, Money) and self.rupees == other.rupees
            def __repr__(self):
                return f"Money({self.rupees})"

        print(Money(100) + Money(50))        # Money(150)
        print(Money(5) == Money(5))          # True (without __eq__ it would be False)</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Inheritance or Composition?</h2>
          <table class="lc-table">
            <thead><tr><th>Relationship</th><th>Use</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>"is a"</td><td>Inheritance</td><td>A <code>Manager</code> is an <code>Employee</code></td></tr>
              <tr><td>"has a"</td><td>Composition (store an object as an attribute)</td><td>A <code>Car</code> has an <code>Engine</code></td></tr>
            </tbody>
          </table>
          <p>Keep inheritance short, with few levels. Long chains of inheritance are hard to follow.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Overriding <code>__init__</code> and forgetting <code>super().__init__()</code>. Then parent attributes like <code>self.name</code> are never set.</li>
            <li>Using inheritance for a "has a" relationship (e.g. <code>class Car(Engine)</code>).</li>
            <li>Defining <code>__eq__</code> on a class, and then the objects no longer work in sets or as dict keys. Python sets <code>__hash__</code> to <code>None</code> unless you also define <code>__hash__</code>.</li>
            <li>Returning a string from <code>__len__</code>. It must return a non-negative <code>int</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>In the starter, add a <code>Triangle(base, height)</code> class that inherits from <code>Shape</code>. Add it to the list of shapes. Then add a <code>__lt__</code> method to <code>Shape</code> that compares areas. Now <code>sorted(shapes)</code> works.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Always write a <code>__repr__</code> for your classes. It makes debugging, logging and testing much easier, because you can quickly see what is inside an object.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 16: Inheritance and special methods
        from abc import ABC, abstractmethod
        import math

        class Shape(ABC):
            def __init__(self, name):
                self.name = name

            @abstractmethod
            def area(self):
                ...

        class Rectangle(Shape):
            def __init__(self, width, height):
                super().__init__("Rectangle")
                self.width, self.height = width, height

            def area(self):
                return self.width * self.height

        class Square(Rectangle):
            def __init__(self, side):
                super().__init__(side, side)
                self.name = "Square"

        class Circle(Shape):
            def __init__(self, radius):
                super().__init__("Circle")
                self.radius = radius

            def area(self):
                return math.pi * self.radius ** 2

        shapes = [Rectangle(4, 3), Square(5), Circle(1)]
        for s in shapes:                  # polymorphism: each uses its own area()
            print(f"{s.name} with area {s.area():.2f}")
        print("Square is a Rectangle?", isinstance(shapes[1], Rectangle))

        print("--- special methods ---")
        class Playlist:
            def __init__(self, *songs):
                self.songs = list(songs)
            def __len__(self):
                return len(self.songs)
            def __getitem__(self, i):
                return self.songs[i]
            def __add__(self, other):
                return Playlist(*(self.songs + other.songs))
            def __repr__(self):
                return f"Playlist({self.songs})"

        both = Playlist("Kesariya", "Naatu Naatu") + Playlist("Jai Ho")
        print(both, "| len:", len(both), "| first:", both[0])
      PY
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Iterators and Generators</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Every <code>for</code> loop in Python uses the <strong>iterator protocol</strong> (a fixed set of rules for giving values one by one) in the background. A <strong>generator</strong> is the easiest way to write your own iterator. It is a function that uses <code>yield</code> to give values <em>one at a time</em>, only when they are needed.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Iterables and Iterators</h2>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>Examples</th></tr></thead>
            <tbody>
              <tr><td><strong>Iterable</strong></td><td>Something you can loop over. <code>iter(x)</code> gives an iterator</td><td>list, str, dict, range, file</td></tr>
              <tr><td><strong>Iterator</strong></td><td>An object that gives the next value with <code>next()</code> and remembers its position</td><td><code>iter([1, 2])</code>, generators, <code>enumerate(...)</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>it = iter(["a", "b"])
        print(next(it))   # a
        print(next(it))   # b
        print(next(it))   # StopIteration: nothing left</code></pre></div>
          <p>A <code>for</code> loop just calls <code>iter()</code> once. Then it calls <code>next()</code> again and again. It stops quietly at <code>StopIteration</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Generator Functions</h2>
          <p>A function that has <code>yield</code> in it becomes a generator function. Calling it does <strong>not</strong> run the body. It returns a generator object. Each <code>next()</code> runs the code until the next <code>yield</code>. Then it <strong>pauses</strong> there.</p>
          <div class="lc-code-block"><pre><code>def countdown(n):
            print("starting")
            while n &gt; 0:
                yield n        # hand out n, then pause here
                n -= 1
            print("lift-off!")

        for x in countdown(3):
            print(x)</code></pre></div>
          <p><strong>Output:</strong></p>
          <div class="lc-code-block"><pre><code>starting
        3
        2
        1
        lift-off!</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Why Generators? Lazy Evaluation</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>List</th><th>Generator</th></tr></thead>
            <tbody>
              <tr><td>Values created</td><td>All at once</td><td>One at a time, when asked for</td></tr>
              <tr><td>Memory</td><td>Grows with the size</td><td>Very small and stays the same</td></tr>
              <tr><td>Reuse</td><td>Loop as many times as you like</td><td><strong>Single use</strong>: used up after one loop</td></tr>
              <tr><td>Indexing / <code>len()</code></td><td>Yes</td><td>No</td></tr>
              <tr><td>Infinite sequences</td><td>Impossible</td><td>Easy</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>nums = (n * n for n in range(3))
        print(sum(nums))   # 5
        print(sum(nums))   # 0  (already used up!)</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Infinite Generators and itertools</h2>
          <div class="lc-code-block"><pre><code>from itertools import islice, count, chain

        def fibonacci():
            a, b = 0, 1
            while True:            # never ends on its own...
                yield a
                a, b = b, a + b

        print(list(islice(fibonacci(), 8)))     # ...so take only 8: [0, 1, 1, 2, 3, 5, 8, 13]
        print(list(islice(count(10, 5), 3)))    # [10, 15, 20]
        print(list(chain([1, 2], (3, 4))))      # [1, 2, 3, 4]</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Pipelines</h2>
          <p>A pipeline is a chain of steps, where one generator passes its values to the next. Each step handles one item at a time. So this works even for a log file with millions of lines:</p>
          <div class="lc-code-block"><pre><code>def read_lines(file):
            for line in file:
                yield line.strip()

        def only_errors(lines):
            for line in lines:
                if line.startswith("ERROR"):
                    yield line

        errors = only_errors(read_lines(log_file))</code></pre></div>
          <p><code>yield from other_iterable</code> is a short way to write "yield every item of <code>other_iterable</code>".</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Looping over the same generator twice. You get nothing the second time. Create a new one, or store the values in a list.</li>
            <li>Calling <code>len()</code> or using <code>[0]</code> on a generator. This gives a <code>TypeError</code>.</li>
            <li>Writing <code>return value</code> instead of <code>yield value</code>. The function then stops after the first item.</li>
            <li>Calling <code>list()</code> on an infinite generator. The program never finishes. Use <code>islice</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Write a generator <code>evens(limit)</code> that yields even numbers from 0 up to <code>limit</code>. Then write <code>running_total(numbers)</code>. It yields the total so far after each number. Test it with <code>[5, 10, 15]</code>. You should get <code>5, 15, 30</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> If you only need to loop over results once, return a generator instead of building a list. This matters most for large results. You can always call <code>list()</code> on it later if you need a list.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 17: Iterators and generators
        import io
        from itertools import islice, count, chain

        print("--- iter() and next() ---")
        it = iter(["a", "b"])
        print(next(it), next(it))
        try:
            next(it)
        except StopIteration:
            print("StopIteration: the iterator is used up")

        print("--- a generator pauses at each yield ---")
        def countdown(n):
            print("starting")
            while n > 0:
                yield n
                n -= 1
            print("lift-off!")
        gen = countdown(3)
        print("created:", type(gen).__name__)   # nothing has run yet
        for x in gen:
            print(x)

        print("--- single use ---")
        nums = (n * n for n in range(3))
        print("first sum:", sum(nums), "| second sum:", sum(nums))

        print("--- infinite generator + islice ---")
        def fibonacci():
            a, b = 0, 1
            while True:
                yield a
                a, b = b, a + b
        print("first 10 Fibonacci:", list(islice(fibonacci(), 10)))
        print("count(10, 5):", list(islice(count(10, 5), 3)))
        print("chain:", list(chain([1, 2], (3, 4))))

        print("--- a generator pipeline ---")
        log_file = io.StringIO("INFO start\nERROR disk full\nINFO retry\nERROR timeout\n")
        def read_lines(file):
            for line in file:
                yield line.strip()
        def only_errors(lines):
            for line in lines:
                if line.startswith("ERROR"):
                    yield line

        for problem in only_errors(read_lines(log_file)):
            print("found:", problem)
        def flatten(groups):
            for group in groups:
                yield from group

        print("yield from:", list(flatten([[1, 2], [3], [4, 5]])))
      PY
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Closures and Decorators</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>closure</strong> is an inner function that remembers variables from the function that created it. A <strong>decorator</strong> is a function that takes a function and returns a new, better one. It lets you add extra behaviour <em>without changing the original function's code</em>. Examples are logging, timing, caching and access checks. You have already used some: <code>@property</code> and <code>@abstractmethod</code>. Decorators work because of closures, so we start with closures.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Closures</h2>
          <p>An inner function can use a variable from its outer function. It <strong>remembers</strong> that variable, even after the outer function has returned. To <em>change</em> the remembered variable, declare it <code>nonlocal</code>.</p>
          <div class="lc-code-block"><pre><code>def make_multiplier(n):
            def multiply(x):
                return x * n        # n comes from the enclosing scope (the E in LEGB)
            return multiply         # return the function, don't call it

        triple = make_multiplier(3)
        print(triple(10))           # 30

        def make_counter():
            count = 0
            def step():
                nonlocal count      # change the outer count, don't make a new local
                count += 1
                return count
            return step

        c = make_counter()
        print(c(), c(), c())        # 1 2 3</code></pre></div>
          <p>Without <code>nonlocal</code>, <code>count += 1</code> raises <code>UnboundLocalError</code>. This is because giving <code>count</code> a new value makes it local to <code>step</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Building a Decorator Step by Step</h2>
          <p>Decorators use two ideas together. Functions are values (Lesson 9), and closures remember variables (see above). Here <code>wrapper</code> is a closure that remembers <code>func</code>.</p>
          <div class="lc-code-block"><pre><code>def shout(func):                 # takes a function...
            def wrapper(name):
                result = func(name)      # ...calls the original...
                return result.upper()    # ...and changes the result
            return wrapper               # returns the new function

        def greet(name):
            return f"hello, {name}"

        greet = shout(greet)             # wrap it by hand
        print(greet("asha"))             # HELLO, ASHA</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>The @ Syntax</h2>
          <p>Writing <code>@shout</code> above a function is exactly the same as writing <code>greet = shout(greet)</code> after it:</p>
          <div class="lc-code-block"><pre><code>@shout
        def greet(name):
            return f"hello, {name}"</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>A Reusable Decorator</h2>
          <p>Use <code>*args, **kwargs</code> so the wrapper works for any function. Use <code>functools.wraps</code> so the wrapped function keeps its own name and docstring (its description text).</p>
          <div class="lc-code-block"><pre><code>import functools

        def log_calls(func):
            @functools.wraps(func)
            def wrapper(*args, **kwargs):
                print(f"calling {func.__name__}{args}")
                result = func(*args, **kwargs)
                print(f"{func.__name__} returned {result}")
                return result
            return wrapper

        @log_calls
        def add(a, b):
            return a + b

        add(2, 3)
        print(add.__name__)    # add   (without @wraps it would be "wrapper")</code></pre></div>
          <p><strong>Output:</strong></p>
          <div class="lc-code-block"><pre><code>calling add(2, 3)
        add returned 5
        add</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Decorators With Arguments</h2>
          <p>To pass settings, add one more outer function. It <em>returns</em> the decorator:</p>
          <div class="lc-code-block"><pre><code>def repeat(times):
            def decorator(func):
                @functools.wraps(func)
                def wrapper(*args, **kwargs):
                    return [func(*args, **kwargs) for _ in range(times)]
                return wrapper
            return decorator

        @repeat(3)
        def roll():
            return "🎲"
        print(roll())     # ['🎲', '🎲', '🎲']</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Useful Built-in Decorators</h2>
          <table class="lc-table">
            <thead><tr><th>Decorator</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>@functools.lru_cache(maxsize=None)</code> / <code>@functools.cache</code></td><td>Remembers results for arguments it has already seen (memoisation)</td></tr>
              <tr><td><code>@property</code></td><td>Turns a method into a read-only attribute (Lesson 15)</td></tr>
              <tr><td><code>@staticmethod</code></td><td>A method that needs neither <code>self</code> nor the class</td></tr>
              <tr><td><code>@classmethod</code></td><td>Gets the class (<code>cls</code>) instead of the object. Often used for other ways to create objects (alternative constructors)</td></tr>
              <tr><td><code>@dataclass</code></td><td>Writes <code>__init__</code>, <code>__repr__</code> and <code>__eq__</code> for you (Lesson 19)</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>@functools.cache
        def fib(n):
            return n if n &lt; 2 else fib(n - 1) + fib(n - 2)

        print(fib(80))    # 23416728348467685 — instant, because results are cached</code></pre></div>
          <p><code>fib</code> is a recursive function (a function that calls itself, Lesson 9). Without the cache, <code>fib(80)</code> would take far too long to finish. It would calculate the same smaller values trillions of times.</p>
          <p>When you put several decorators on one function, the one <strong>closest to the function</strong> is applied first.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting <code>nonlocal</code> when a closure changes an outer variable. This gives <code>UnboundLocalError</code>.</li>
            <li>Forgetting <code>return result</code> in the wrapper. Then the decorated function always returns <code>None</code>.</li>
            <li>Writing <code>return wrapper()</code> (calling it) instead of <code>return wrapper</code>.</li>
            <li>Leaving out <code>@functools.wraps</code>. Then every decorated function shows up as <code>wrapper</code> in errors and tools.</li>
            <li>Writing <code>@repeat</code> without brackets for a decorator that needs arguments. It must be <code>@repeat(3)</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Write a decorator <code>@require_positive</code>. It should raise <code>ValueError</code> if any positional argument is a negative number. Use it on a <code>square_root(x)</code> function. Test it with <code>16</code> and <code>-4</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Frameworks use decorators a lot: Flask and FastAPI routes (<code>@app.get("/")</code>), pytest fixtures and Django's <code>@login_required</code>. Once you understand the <code>f = deco(f)</code> idea, they are easy to understand.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 18: Closures and decorators
        import functools

        def make_counter():
            count = 0
            def step():
                nonlocal count          # the closure changes the outer variable
                count += 1
                return count
            return step
        counter = make_counter()
        print("closure counter:", counter(), counter(), counter())

        def shout(func):
            def wrapper(name):          # a closure that remembers func
                return func(name).upper()
            return wrapper
        def greet(name):
            return f"hello, {name}"
        print("before:", greet("asha"))
        greet = shout(greet)            # what @shout does
        print("after :", greet("asha"))

        def log_calls(func):
            @functools.wraps(func)
            def wrapper(*args, **kwargs):
                print(f"  calling {func.__name__}{args}")
                result = func(*args, **kwargs)
                print(f"  {func.__name__} returned {result}")
                return result
            return wrapper
        @log_calls
        def add(a, b):
            """Add two numbers."""
            return a + b
        print("--- @log_calls ---")
        total = add(2, 3)
        print("total:", total, "| name:", add.__name__, "| doc:", add.__doc__)

        print("--- @functools.lru_cache ---")
        @functools.lru_cache(maxsize=None)
        def fib(n):
            return n if n < 2 else fib(n - 1) + fib(n - 2)
        print("fib(80) =", fib(80))
        print("cache info:", fib.cache_info())
      PY
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Type Hints and Dataclasses</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Professional Python code uses <strong>type hints</strong>. They show what types a function takes and returns. It also uses <strong>dataclasses</strong>: simple classes that hold data, with almost no boilerplate (repeated setup code). Both are standard in modern code, in frameworks like FastAPI, and in AI tools.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Type Hint Syntax</h2>
          <div class="lc-code-block"><pre><code>def add_gst(amount: float, rate: float = 0.18) -&gt; float:
            return round(amount * (1 + rate), 2)

        count: int = 0
        names: list[str] = ["Asha", "Ben"]
        marks: dict[str, int] = {"Asha": 88}
        point: tuple[int, int] = (3, 4)

        def find_student(name: str) -&gt; dict | None:   # "a dict or None" (Python 3.10+)
            ...</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Hint</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>int</code>, <code>str</code>, <code>float</code>, <code>bool</code></td><td>Basic types</td></tr>
              <tr><td><code>list[str]</code></td><td>A list of strings (Python 3.9+)</td></tr>
              <tr><td><code>dict[str, int]</code></td><td>Keys are <code>str</code>, values are <code>int</code></td></tr>
              <tr><td><code>int | None</code></td><td>An int or <code>None</code> (3.10+). Old way: <code>Optional[int]</code> from <code>typing</code></td></tr>
              <tr><td><code>-&gt; None</code></td><td>The function returns nothing</td></tr>
            </tbody>
          </table>
          <p>Old code uses <code>List[str]</code> and <code>Dict[str, int]</code>, imported from <code>typing</code>. That still works. But the built-in lower-case forms are the modern style.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Hints Are Not Enforced</h2>
          <p>Python itself <strong>ignores</strong> type hints when it runs your code. Your editor reads them to give autocomplete and warnings. <strong>Type checkers</strong> (tools that check types without running the code) such as <code>mypy</code> and <code>pyright</code> read them too.</p>
          <div class="lc-code-block"><pre><code>def double(n: int) -&gt; int:
            return n * 2

        print(double("ha"))    # haha  — runs fine! Python doesn't check the hint

        # But a type checker catches it before you run anything:
        # $ mypy app.py
        # error: Argument 1 to "double" has incompatible type "str"; expected "int"</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Dataclasses</h2>
          <p>The <code>@dataclass</code> decorator reads the fields of a class that have type hints. Then it writes <code>__init__</code>, <code>__repr__</code> and <code>__eq__</code> for you.</p>
          <div class="lc-code-block"><pre><code>from dataclasses import dataclass, field

        @dataclass
        class Product:
            name: str
            price: float
            tags: list[str] = field(default_factory=list)   # a NEW list for each object

            def __post_init__(self):                         # runs after __init__: validate here
                if self.price &lt; 0:
                    raise ValueError("price cannot be negative")

        pen = Product("Pen", 10.0)
        print(pen)                          # Product(name='Pen', price=10.0, tags=[])
        print(pen == Product("Pen", 10.0))  # True: compares field values</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Useful Options</h2>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>@dataclass(frozen=True)</code></td><td>Fields cannot be changed after the object is created. Objects can be dict keys</td></tr>
              <tr><td><code>@dataclass(order=True)</code></td><td>Adds <code>&lt;</code>, <code>&gt;</code> and others. They compare fields in order, so <code>sorted()</code> works</td></tr>
              <tr><td><code>field(default_factory=list)</code></td><td>A safe default for a changeable value (remember the problem from Lesson 9)</td></tr>
              <tr><td><code>dataclasses.asdict(obj)</code></td><td>Change it into a dict, for example for <code>json.dumps</code></td></tr>
              <tr><td><code>@dataclass(slots=True)</code> (3.10+)</td><td>Uses less memory per object</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Plain Class, dict or Dataclass?</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>dict</th><th>Plain class</th><th>Dataclass</th></tr></thead>
            <tbody>
              <tr><td>Boilerplate</td><td>None</td><td>You write <code>__init__</code>, <code>__repr__</code>…</td><td>Generated</td></tr>
              <tr><td>Typos caught</td><td>No (<code>d["nmae"]</code> is a KeyError only when the code runs)</td><td>By editors and type checkers</td><td>By editors and type checkers</td></tr>
              <tr><td>Best for</td><td>Loose data, JSON</td><td>A lot of custom behaviour</td><td>Records with some behaviour</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Thinking hints make Python check types while the code runs. They don't. Run <code>mypy</code> or <code>pyright</code>.</li>
            <li>Writing <code>tags: list = []</code> in a dataclass. Python raises <code>ValueError: mutable default ... is not allowed</code>. Use <code>field(default_factory=list)</code>.</li>
            <li>Putting a field without a default after one with a default. This gives a <code>TypeError</code>.</li>
            <li>Forgetting the type hint. A class variable without a type hint (annotation) is <strong>not</strong> a dataclass field.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>Create a frozen dataclass <code>Book(title: str, author: str, year: int)</code> with <code>order=True</code>. Make a list of three books and print them sorted. Then try to change one book's year and catch the error.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Add type hints to every function you write from now on. It takes only seconds. Your editor becomes much more helpful, and many bugs are found before the code runs.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 19: Type hints and dataclasses
        from dataclasses import dataclass, field, asdict, FrozenInstanceError

        def add_gst(amount: float, rate: float = 0.18) -> float:
            return round(amount * (1 + rate), 2)

        def double(n: int) -> int:
            return n * 2

        print("add_gst(100):", add_gst(100))
        print("hints stored on the function:", add_gst.__annotations__)
        print("double('ha') still runs:", double("ha"))   # hints are not enforced

        @dataclass
        class Product:
            name: str
            price: float
            tags: list[str] = field(default_factory=list)

            def __post_init__(self) -> None:
                if self.price < 0:
                    raise ValueError(f"price cannot be negative: {self.price}")

            def with_gst(self) -> float:
                return add_gst(self.price)

        pen = Product("Pen", 10.0)
        bag = Product("Bag", 850.0, ["school"])
        pen.tags.append("stationery")
        print(pen)
        print(bag, "| with GST:", bag.with_gst())
        print("equal by value:", pen == Product("Pen", 10.0, ["stationery"]))
        print("as dict:", asdict(bag))
        try:
            Product("Broken", -5)
        except ValueError as err:
            print("ValueError:", err)

        @dataclass(frozen=True, order=True)
        class Version:
            major: int
            minor: int

        versions = [Version(3, 13), Version(3, 9), Version(3, 14)]
        print("sorted:", sorted(versions))
        print("latest:", max(versions))
        try:
            versions[0].minor = 99
        except FrozenInstanceError as err:
            print("FrozenInstanceError:", err)
      PY
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Testing with unittest and pytest</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>test</strong> is a small piece of code that calls your code and checks the result. After you write them, tests run in seconds every time you change something. So you find bugs before your users do. Python comes with <code>unittest</code>. Most professional projects use <strong>pytest</strong>, a tool made by other developers that you install.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>What a Test Looks Like</h2>
          <p>Every test has the same three steps, often called <strong>Arrange – Act – Assert</strong>. First prepare some input. Then call the function. Then check the answer. An <strong>assertion</strong> is the check. If it is false, the test fails and tells you what it got.</p>
          <div class="lc-code-block"><pre><code>def grade_for(avg):
            if avg &gt;= 90:
                return "A"
            if avg &gt;= 75:
                return "B"
            if avg &gt;= 50:
                return "C"
            return "F"

        marks = 75                      # Arrange
        result = grade_for(marks)       # Act
        assert result == "B"            # Assert: silent when true, AssertionError when false
        print("check passed")           # check passed</code></pre></div>
          <p>A plain <code>assert</code> is fine for a quick check. Test frameworks add three things. They <strong>find</strong> all your tests. They <strong>run</strong> each one, even if another fails. They <strong>report</strong> clearly what went wrong.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>unittest: Built In</h2>
          <p>Write a class that inherits from <code>unittest.TestCase</code>. Each method whose name starts with <code>test</code> is one test. Use the <code>self.assert…</code> methods to check results.</p>
          <div class="lc-code-block"><pre><code>import unittest
        from grades import grade_for

        class TestGradeFor(unittest.TestCase):
            def test_top_grade(self):
                self.assertEqual(grade_for(95), "A")

            def test_boundaries(self):
                for avg, expected in [(49, "F"), (50, "C"), (75, "B"), (90, "A")]:
                    with self.subTest(avg=avg):          # reports each case separately
                        self.assertEqual(grade_for(avg), expected)

            def test_rejects_text(self):
                with self.assertRaises(TypeError):       # passes only if TypeError is raised
                    grade_for("ninety")

        if __name__ == "__main__":
            unittest.main()</code></pre></div>
          <p>On your computer, run <code>python -m unittest -v</code> in the project folder. It finds every file named <code>test*.py</code>:</p>
          <div class="lc-code-block"><pre><code>test_boundaries (test_grades.TestGradeFor.test_boundaries) ... ok
        test_rejects_text (test_grades.TestGradeFor.test_rejects_text) ... ok
        test_top_grade (test_grades.TestGradeFor.test_top_grade) ... ok

        ----------------------------------------------------------------------
        Ran 3 tests in 0.001s

        OK</code></pre></div>
          <p>The time is different on every run. The starter code runs the same kind of tests inside the browser editor.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Assertion Methods</h2>
          <table class="lc-table">
            <thead><tr><th>unittest</th><th>pytest</th><th>Checks</th></tr></thead>
            <tbody>
              <tr><td><code>self.assertEqual(a, b)</code></td><td><code>assert a == b</code></td><td>Equal values</td></tr>
              <tr><td><code>self.assertTrue(x)</code> / <code>assertFalse(x)</code></td><td><code>assert x</code> / <code>assert not x</code></td><td>Truthy / falsy (counts as true / false)</td></tr>
              <tr><td><code>self.assertIn(item, box)</code></td><td><code>assert item in box</code></td><td>Item is inside</td></tr>
              <tr><td><code>self.assertIsNone(x)</code></td><td><code>assert x is None</code></td><td>Is <code>None</code></td></tr>
              <tr><td><code>self.assertAlmostEqual(a, b)</code></td><td><code>assert a == pytest.approx(b)</code></td><td>Floats are close enough (0.1 + 0.2 vs 0.3)</td></tr>
              <tr><td><code>with self.assertRaises(E):</code></td><td><code>with pytest.raises(E):</code></td><td>The block raises exception <code>E</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>pytest: Less Code, Better Messages</h2>
          <p>You install pytest with <code>python -m pip install pytest</code>. It cannot run in this browser editor. Tests are plain functions named <code>test_…</code> in files named <code>test_….py</code>. You check results with the normal <code>assert</code> statement. <code>@pytest.mark.parametrize</code> runs one test function for many inputs.</p>
          <div class="lc-code-block"><pre><code># test_grades.py
        import pytest
        from grades import grade_for

        def test_top_grade():
            assert grade_for(95) == "A"

        def test_boundary_b():
            assert grade_for(75) == "B"

        @pytest.mark.parametrize("avg, expected", [(49, "F"), (50, "C"), (90, "A")])
        def test_boundaries(avg, expected):
            assert grade_for(avg) == expected

        def test_bad_input():
            with pytest.raises(TypeError):
                grade_for("ninety")</code></pre></div>
          <p>Say <code>grades.py</code> has a bug: <code>if avg &gt; 75:</code> instead of <code>&gt;=</code>. Run <code>python -m pytest -q</code>. It shows each test as a dot or an <code>F</code>. Then it explains the failure:</p>
          <div class="lc-code-block"><pre><code>.F....                                                                   [100%]
        =================================== FAILURES ===================================
        _______________________________ test_boundary_b ________________________________

            def test_boundary_b():
        &gt;       assert grade_for(75) == "B"
        E       AssertionError: assert 'C' == 'B'
        ...
        =========================== short test summary info ============================
        FAILED test_grades.py::test_boundary_b - AssertionError: assert 'C' == 'B'
        1 failed, 5 passed in 0.02s</code></pre></div>
          <p>Six tests ran (the parametrized one counts three times). Fix the bug and run again. You get <code>6 passed</code>. pytest also runs existing <code>unittest</code> test classes. So you can change tools without rewriting your tests.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>What to Test</h2>
          <ul class="lc-list">
            <li><strong>A normal case</strong>: usual input, expected answer.</li>
            <li><strong>Boundaries</strong> (the edge values): exactly 50, 75 and 90, plus one value on each side. Most bugs are found here (remember the tip from Lesson 4).</li>
            <li><strong>Bad input</strong>: check that the right exception is raised.</li>
            <li>Keep each test small and separate from the others. Give it a name that says what it checks: <code>test_75_is_grade_b</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Naming a test method <code>check_top_grade</code>. It never runs, and you get no warning. Names must start with <code>test</code>.</li>
            <li>Naming your file <code>unittest.py</code> or <code>pytest.py</code>. This hides the real module.</li>
            <li>Only testing the "happy path" (when everything goes right), and never the boundaries or bad input.</li>
            <li>Testing a function that <code>print</code>s instead of <code>return</code>s. Return values are easy to check. Printed text is not.</li>
            <li>Comparing floats with <code>assertEqual(0.1 + 0.2, 0.3)</code>. This fails. Use <code>assertAlmostEqual</code> or <code>pytest.approx</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p>In the starter, break <code>grade_for</code> on purpose. Change <code>avg &gt;= 75</code> to <code>avg &gt; 75</code> and run it. Read the <code>FAIL</code> report. Which sub-test failed, and what did it get? Fix it. Then add a test method <code>test_float_average</code> that checks <code>grade_for(89.99)</code> is <code>"B"</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> When you find a bug, first write a test that fails because of it. Then fix the code until the test passes. The test stays forever and makes sure that bug never comes back.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 20: Testing with unittest and pytest
        import io
        import re
        import unittest

        def grade_for(avg: float) -> str:
            if not isinstance(avg, (int, float)):
                raise TypeError(f"average must be a number, not {type(avg).__name__}")
            if avg >= 90:
                return "A"
            if avg >= 75:
                return "B"
            if avg >= 50:
                return "C"
            return "F"

        class TestGradeFor(unittest.TestCase):
            def test_top_grade(self):
                self.assertEqual(grade_for(95), "A")

            def test_boundaries(self):
                for avg, expected in [(49, "F"), (50, "C"), (75, "B"), (90, "A")]:
                    with self.subTest(avg=avg):
                        self.assertEqual(grade_for(avg), expected)

            def test_rejects_text(self):
                with self.assertRaises(TypeError):
                    grade_for("ninety")

            def test_passing_grades(self):
                self.assertIn(grade_for(62.5), ["A", "B", "C"])
                self.assertNotEqual(grade_for(49.9), "C")

        # In the browser editor we run the tests ourselves instead of unittest.main()
        suite = unittest.defaultTestLoader.loadTestsFromTestCase(TestGradeFor)
        buffer = io.StringIO()
        result = unittest.TextTestRunner(stream=buffer, verbosity=2).run(suite)
        print(re.sub(r"in \d+\.\d+s", "in 0.000s", buffer.getvalue()))  # hide the timing
        print("tests run:", result.testsRun)
        print("failures:", len(result.failures), "| errors:", len(result.errors))
        print("all passed?", result.wasSuccessful())
      PY
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-yellow">Python</div>
          <h1 class="lc-title">Capstone Project: Grade Tracker</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Now it is time to use everything together. You will build a small but real <strong>grade tracker</strong>. It loads student data from JSON and checks it. It calculates averages and grades, and prints a clean report. You will use dataclasses, type hints, exceptions, comprehensions, generators and a decorator.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Requirements</h2>
          <ul class="lc-list">
            <li>Read student records from a JSON file (<code>students.json</code>). Each has a <code>name</code> and a dict of <code>marks</code> for each subject.</li>
            <li><strong>Skip bad records</strong> (missing name, marks outside 0–100). Report why, and do not crash.</li>
            <li>For each student, work out the <strong>average</strong> and a <strong>grade</strong>: A (90+), B (75+), C (50+), otherwise F.</li>
            <li>Print a report table sorted by average (highest first). Also print the class topper and the subject averages.</li>
            <li>Use a generator to list students who need support (any subject below 40). Use a decorator to print a banner above the report. Both are in Try It.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Design: Which Tool for Which Job?</h2>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Python feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>A student record</td><td><code>@dataclass</code> with type hints, <code>@property</code></td><td>15, 19</td></tr>
              <tr><td>Loading data</td><td><code>json.load</code> on a file object</td><td>12</td></tr>
              <tr><td>Bad data</td><td>Custom exception, <code>try/except</code></td><td>11</td></tr>
              <tr><td>Grade rules</td><td>Loop over cutoffs; the first match wins (like <code>if/elif</code>)</td><td>4, 5, 9</td></tr>
              <tr><td>Sorting</td><td><code>sorted(key=lambda ...)</code></td><td>9</td></tr>
              <tr><td>Subject averages</td><td>Dict comprehension</td><td>8, 10</td></tr>
              <tr><td>"Needs support" list (Try It)</td><td>Generator function</td><td>17</td></tr>
              <tr><td>Report heading (Try It)</td><td>Decorator with an argument</td><td>18</td></tr>
              <tr><td>Checking <code>grade_for</code> (extension)</td><td><code>unittest</code> test case</td><td>20</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section lc-card">
          <h2>Step 1: The Data Model</h2>
          <div class="lc-code-block"><pre><code>@dataclass
        class Student:
            name: str
            marks: dict[str, int]

            @property
            def average(self) -&gt; float:
                return round(sum(self.marks.values()) / len(self.marks), 1)

            @property
            def grade(self) -&gt; str:
                return grade_for(self.average)</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Step 2: Validate While Loading</h2>
          <div class="lc-code-block"><pre><code>class BadRecord(Exception):
            pass

        def parse(record: dict) -&gt; Student:
            name = record.get("name")
            marks = record.get("marks", {})
            if not name:
                raise BadRecord("missing name")
            bad = [s for s, m in marks.items() if not 0 &lt;= m &lt;= 100]
            if bad:
                raise BadRecord(f"{name}: invalid marks in {bad}")
            return Student(name, marks)</code></pre></div>
          <p>The loader calls <code>parse</code> inside <code>try/except BadRecord</code>. So one bad record is reported and skipped, and the rest still load.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Step 3: Report</h2>
          <p>Sort with <code>sorted(students, key=lambda s: s.average, reverse=True)</code>. Line up columns with f-strings like <code>f"{s.name:&lt;8}{s.average:&gt;6}"</code>. Build subject averages with a dict comprehension. The starter prints:</p>
          <div class="lc-code-block"><pre><code>Skipped: missing name
        Skipped: Farah: invalid marks in ['Science']
        Name        Maths  Science  English    Avg  Grade
        Divya          95       92       96   94.3  A
        Asha           88       92       79   86.3  B
        Chen           72       35       81   62.7  C
        Ben            45       60       38   47.7  F
        Topper: Divya (94.3)
        Subject averages: {'Maths': 75.0, 'Science': 69.8, 'English': 73.5}</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Step 4: Finish It Yourself</h2>
          <p>Two requirements are left for you (see Try It). One is a <strong>generator</strong> for the "needs support" list. The other is a <strong>decorator</strong> for the banner. When both are done, the report starts with a banner line and ends with a support line:</p>
          <div class="lc-code-block"><pre><code>========== CLASS REPORT ==========
        Name        Maths  Science  English    Avg  Grade
        ...
        Subject averages: {'Maths': 75.0, 'Science': 69.8, 'English': 73.5}
        Needs support: Chen (Science 35), Ben (English 38)</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Extension Challenges</h2>
          <ul class="lc-list">
            <li>Add a <code>rank</code> column. Give the same rank to equal averages.</li>
            <li>Export the report as CSV text with the <code>csv</code> module.</li>
            <li>Add a <code>@dataclass(frozen=True)</code> <code>Subject</code> with a pass mark. Use it instead of the fixed value 40.</li>
            <li>Write a <code>unittest.TestCase</code> for <code>grade_for</code> that checks the boundaries 49, 50, 75 and 90. Write one for <code>parse</code> that uses <code>assertRaises(BadRecord)</code> (Lesson 20).</li>
            <li>Reject names that are not only letters and spaces. Use <code>re.fullmatch(r"[A-Za-z ]+", name)</code> inside <code>parse</code> (Lesson 14).</li>
            <li>Run <code>mypy</code> on your code on your own computer. Fix any type errors it reports.</li>
            <li>Move the model, loader and report into separate modules inside a <code>tracker/</code> package. Add a <code>main()</code> that runs only under <code>if __name__ == "__main__":</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Common Mistakes</h2>
          <ul class="lc-list">
            <li>Letting one bad record crash the whole program. Catch the <em>specific</em> exception for each record.</li>
            <li>Dividing by <code>len(marks)</code> when a student has no marks. This gives a <code>ZeroDivisionError</code>. Check that marks is not empty.</li>
            <li>Mixing calculation and printing in one huge function. Keep loading, calculating and reporting in separate functions. Then you can test each one.</li>
            <li>Typing subject names directly in many places. Get them from the data once.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try It</h2>
          <p><strong>1. Needs support.</strong> Write a generator <code>needs_support(students, pass_mark=40)</code>. It <code>yield</code>s strings like <code>"Chen (Science 35)"</code> for every mark below the pass mark. At the end of <code>report</code>, print <code>"Needs support:", ", ".join(needs_support(ranked))</code>.</p>
          <p><strong>2. Banner.</strong> Write a decorator with an argument, <code>@banner("CLASS REPORT")</code>. Its wrapper prints <code>f" {title} ".center(34, "=")</code> and then calls the function. Use <code>functools.wraps</code> and put the decorator on <code>report</code>.</p>
          <p><strong>3. New data.</strong> Add <code>{"name": "Gopal", "marks": {"Maths": 100, "Science": 98, "English": 91}}</code> to the <code>RECORDS</code> list. Guess first: who is the new topper, and what grade does Gopal get? Then add a record with an empty <code>marks</code> dict. Make <code>parse</code> reject it with a clear message.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Build projects in small steps. First load and print the raw data. Then add the dataclass, then the checks, then the report. Run the code after each step. This is how professional developers work.</p></div>
      HTML
      starter_code: <<~'PY'
        # Lesson 21: Capstone project - Grade Tracker
        import json
        from dataclasses import dataclass
        from pathlib import Path

        RECORDS = [
            {"name": "Asha", "marks": {"Maths": 88, "Science": 92, "English": 79}},
            {"name": "Ben", "marks": {"Maths": 45, "Science": 60, "English": 38}},
            {"marks": {"Maths": 70}},
            {"name": "Chen", "marks": {"Maths": 72, "Science": 35, "English": 81}},
            {"name": "Divya", "marks": {"Maths": 95, "Science": 92, "English": 96}},
            {"name": "Farah", "marks": {"Maths": 80, "Science": 120, "English": 70}},
        ]
        Path("students.json").write_text(json.dumps(RECORDS), encoding="utf-8")


        class BadRecord(Exception):
            """A record that fails validation."""


        def grade_for(avg: float) -> str:
            for cutoff, grade in [(90, "A"), (75, "B"), (50, "C")]:
                if avg >= cutoff:
                    return grade
            return "F"


        @dataclass
        class Student:
            name: str
            marks: dict[str, int]

            @property
            def average(self) -> float:
                return round(sum(self.marks.values()) / len(self.marks), 1)

            @property
            def grade(self) -> str:
                return grade_for(self.average)


        def parse(record: dict) -> Student:
            name, marks = record.get("name"), record.get("marks", {})
            if not name:
                raise BadRecord("missing name")
            bad = [s for s, m in marks.items() if not 0 <= m <= 100]
            if bad:
                raise BadRecord(f"{name}: invalid marks in {bad}")
            return Student(name, marks)


        def load(path: str) -> list[Student]:
            students = []
            with open(path, encoding="utf-8") as f:
                for record in json.load(f):
                    try:
                        students.append(parse(record))
                    except BadRecord as err:
                        print("Skipped:", err)
            return students


        def report(students: list[Student]) -> None:
            subjects = list(students[0].marks)
            print(f"{'Name':<8}" + "".join(f"{s:>9}" for s in subjects) + f"{'Avg':>7}  Grade")
            ranked = sorted(students, key=lambda s: s.average, reverse=True)
            for s in ranked:
                cols = "".join(f"{s.marks[sub]:>9}" for sub in subjects)
                print(f"{s.name:<8}{cols}{s.average:>7}  {s.grade}")
            print(f"Topper: {ranked[0].name} ({ranked[0].average})")
            avgs = {sub: round(sum(s.marks[sub] for s in students) / len(students), 1) for sub in subjects}
            print("Subject averages:", avgs)


        report(load("students.json"))
      PY
    }
  }
end

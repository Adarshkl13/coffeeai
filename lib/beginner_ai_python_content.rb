# Lesson bodies, code-editor starter code, and title/quiz overrides for the original "Beginner AI with Python"
# course (LessonsController::LESSONS, ids 1-28). Each lesson is built on its existing infographic image.
module BeginnerAiPythonContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">What is AI?</h1>
        </div>
        <p class="lc-lead"><strong>AI</strong> means <strong>Artificial Intelligence</strong>. It is a computer system that can understand, think and respond like a human.</p>
        <div class="lc-card">
          <h3>A real example: ChatGPT</h3>
          <p><strong>ChatGPT</strong> is a chat assistant, and it is an AI system. You type "Explain AI in simple words". It replies: "AI is a system that helps machines understand and make smart decisions." It made this reply from what it learned.</p>
          </div>
        <div class="lc-card">
          <h3>The three steps</h3>
          <ol class="lc-list">
            <li><strong>Understand:</strong> AI reads your input and works out what you are asking.</li>
            <li><strong>Think:</strong> AI uses <strong>learned data</strong> (the many examples it studied before) to find the best answer.</li>
            <li><strong>Respond:</strong> AI sends a reply back to you.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>The simple formula</h3>
          <p><strong>Input</strong> (you ask) → <strong>AI</strong> (processes) → <strong>Output</strong> (AI responds)</p>
          <p>The input is what goes in, such as your question. The output is what comes out, such as the reply.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put what happens in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">You type: "Explain AI in simple words" (input)</li>
              <li data-order="2">AI reads your input and understands what you are asking</li>
              <li data-order="3">AI uses learned data to find the best possible answer</li>
              <li data-order="4">AI writes a reply and sends it back to you</li>
              <li data-order="5">You read the answer on your screen (output)</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Click <strong>Run</strong>. Watch the three steps print.</li>
            <li>Change the question to <code>"What is Python?"</code> and run it again.</li>
            <li>Add <code>"chatgpt": "ChatGPT is an AI chat assistant.",</code> to <code>learned</code>. Then ask <code>"What is ChatGPT?"</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> AI = Understand → Think → Respond: input goes in, output comes out.</div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny practice "AI" that follows the 3 steps in the picture:
        # Understand -> Think -> Respond
        # Real AI like ChatGPT is far bigger, but the idea is the same.

        # What our tiny AI has "learned" (its data)
        learned = {
            "ai": "AI is a system that helps machines understand and make smart decisions.",
            "python": "Python is a simple language that is popular for AI.",
        }

        def understand(question):
            # Step 1: read the input and split it into small words
            words = question.lower().replace("?", "").split()
            print("1. Understand:", words)
            return words

        def think(words):
            # Step 2: look for a word it has learned about
            for word in words:
                if word in learned:
                    print("2. Think: I have learned about", word)
                    return learned[word]
            print("2. Think: I have not learned about this yet")
            return "Sorry, I do not know that yet."

        def respond(answer):
            # Step 3: send the reply back to you
            print("3. Respond:", answer)

        # Input (you ask) -> AI (processes) -> Output (AI responds)
        question = "Explain AI in simple words"
        print("You:", question)
        respond(think(understand(question)))
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">AI in Real Life</h1>
        </div>
        <p class="lc-lead">AI is used in many real-life apps. One tool, ChatGPT, can help you learn, write, code and plan.</p>
        <div class="lc-card">
          <h3>Four everyday uses</h3>
          <ul class="lc-list">
            <li><strong>Learning:</strong> "Explain AI in simple words". It helps students understand topics.</li>
            <li><strong>Writing:</strong> "Write an email to my manager". It helps create clear messages.</li>
            <li><strong>Coding:</strong> "Explain this Python error". It helps developers <strong>debug</strong> code (find and fix mistakes).</li>
            <li><strong>Planning:</strong> "Create a study plan". It helps organise tasks and plans.</li>
          </ul>
          <p>Other apps use AI too: your phone keyboard guesses your next word, and a music app suggests songs.</p>
        </div>
        <div class="lc-card">
          <h3>What is happening?</h3>
          <p><strong>User Question</strong> → <strong>ChatGPT understands</strong> → <strong>Helpful Answer</strong>. This is the same input, process and output idea from the last lesson. AI can make mistakes, so always check important answers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which use is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each question into its use.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="learn" data-label="Learning"></div>
              <div data-sorter-target="bucket" data-bucket="write" data-label="Writing"></div>
              <div data-sorter-target="bucket" data-bucket="code" data-label="Coding"></div>
              <div data-sorter-target="bucket" data-bucket="plan" data-label="Planning"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="learn" data-why="You want to understand a topic.">"Explain AI in simple words"</li>
              <li data-bucket="write" data-why="You want a clear message for another person.">"Write an email to my manager"</li>
              <li data-bucket="code" data-why="You want help to find and fix a code mistake.">"Explain this Python error"</li>
              <li data-bucket="plan" data-why="You want to organise your time.">"Create a study plan"</li>
              <li data-bucket="learn" data-why="You want to understand how something works.">"How do rainbows form?"</li>
              <li data-bucket="plan" data-why="You want to organise tasks across days.">"Make a timetable for my revision week"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Click <strong>Run</strong> and read the four uses and the two guesses.</li>
            <li>Change <code>"Write a letter to my landlord"</code> to <code>"Why is my code showing an error?"</code>. Run it again.</li>
            <li>Add <code>"Shopping": "Make a list for a picnic",</code> to <code>uses</code>, and a matching line to <code>helps</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> AI helps people learn, write, code and plan faster.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: how people use ChatGPT in real life
        # Flow from the picture: User Question -> ChatGPT understands -> Helpful Answer

        # The four uses from the picture, with the example question for each
        uses = {
            "Learning": "Explain AI in simple words",
            "Writing": "Write an email to my manager",
            "Coding": "Explain this Python error",
            "Planning": "Create a study plan",
        }

        # How ChatGPT helps in each case
        helps = {
            "Learning": "helps students understand topics.",
            "Writing": "helps create clear messages.",
            "Coding": "helps developers debug code.",
            "Planning": "helps organise tasks and plans.",
        }

        number = 1
        for use in uses:
            print(str(number) + ".", use)
            print("   You ask:", uses[use])
            print("   ChatGPT", helps[use])
            number = number + 1

        # A tiny "understand" step: guess the use from key words
        def guess_use(question):
            q = question.lower()
            if "error" in q or "code" in q:
                return "Coding"
            if "email" in q or "letter" in q:
                return "Writing"
            if "plan" in q or "timetable" in q:
                return "Planning"
            return "Learning"

        print()
        print("Guess:", guess_use("Write a letter to my landlord"))
        print("Guess:", guess_use("Make a plan for my weekend"))
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Types of AI</h1>
        </div>
        <p class="lc-lead">AI is sorted into three types by how capable it is: <strong>Narrow AI</strong>, <strong>General AI</strong> and <strong>Super AI</strong>.</p>
        <div class="lc-card">
          <h3>The three types</h3>
          <ul class="lc-list">
            <li><strong>Narrow AI</strong> does one specific task, like ChatGPT answering questions. It cannot cook or drive a car.</li>
            <li><strong>General AI</strong> could think and learn anything, like a human. Nobody has built it yet.</li>
            <li><strong>Super AI</strong> would be smarter than humans and improve itself. It is only a <strong>theory</strong> (an idea that is not proved).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The comparison table</h3>
          <table class="lc-table">
            <tr><th>Type</th><th>Capability</th><th>Example</th><th>Status</th></tr>
            <tr><td>Narrow AI</td><td>Does one specific task</td><td>ChatGPT, keyboard prediction, face unlock</td><td>In Use Today</td></tr>
            <tr><td>General AI</td><td>Thinks and learns like humans</td><td>Future robot that can talk, cook, learn and work</td><td>Not Built Yet</td></tr>
            <tr><td>Super AI</td><td>Smarter than humans, improves itself</td><td>AI beyond human intelligence</td><td>Only a Theory</td></tr>
          </table>
          <p>Every AI you can use today is Narrow AI.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: sort the AI</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which type of AI is each one?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="narrow" data-label="Narrow AI"></div>
              <div data-sorter-target="bucket" data-bucket="general" data-label="General AI"></div>
              <div data-sorter-target="bucket" data-bucket="super" data-label="Super AI"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="narrow" data-why="It works only with text questions. It is in use today.">ChatGPT answering questions</li>
              <li data-bucket="narrow" data-why="It only guesses your next word.">Keyboard prediction on your phone</li>
              <li data-bucket="narrow" data-why="It only checks faces.">Face unlock</li>
              <li data-bucket="general" data-why="It could learn many skills like a human. It is not built yet.">A future robot that can talk, cook, learn and work</li>
              <li data-bucket="super" data-why="It would go beyond human intelligence. It is only a theory.">An AI that improves itself and is smarter than all humans</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code stores the table as a <strong>list</strong> of rows. Each row is a <strong>dictionary</strong> (labels with values).</p>
          <ol class="lc-list">
            <li>Click <strong>Run</strong>.</li>
            <li>Change <code>"In Use Today"</code> in the <code>if</code> line to <code>"Not Built Yet"</code>. Which type prints now?</li>
            <li>Add <code>"voice assistant"</code> to the <code>tools</code> list and run it again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> today's AI is Narrow AI; General AI is not built yet and Super AI is only a theory.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: the comparison table from the picture, stored in Python
        # Each row is a dictionary. The whole table is a list of rows.

        types_of_ai = [
            {"type": "Narrow AI", "capability": "Does one specific task",
             "example": "ChatGPT answering questions", "status": "In Use Today"},
            {"type": "General AI", "capability": "Thinks and learns like humans",
             "example": "Future robot that can talk, cook, learn and work", "status": "Not Built Yet"},
            {"type": "Super AI", "capability": "Smarter than humans, improves itself",
             "example": "AI beyond human intelligence", "status": "Only a Theory"},
        ]

        # Print the table, one row at a time
        for row in types_of_ai:
            print(row["type"], "|", row["capability"], "|", row["status"])

        print()

        # Which types are in use today?
        for row in types_of_ai:
            if row["status"] == "In Use Today":
                print("In use today:", row["type"])

        # Everyday tools you use are all Narrow AI
        tools = ["ChatGPT", "keyboard prediction", "face unlock"]
        for tool in tools:
            print(tool, "-> Narrow AI")
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">AI vs ML vs DL</h1>
        </div>
        <p class="lc-lead">Think of a company (AI), a department inside it (ML) and a team inside that department (DL).</p>
        <div class="lc-card">
          <h3>Circles inside circles</h3>
          <ul class="lc-list">
            <li><strong>AI (Artificial Intelligence):</strong> the big idea of making machines smart. It can use fixed rules or learning.</li>
            <li><strong>ML (Machine Learning):</strong> part of AI. It learns <strong>patterns</strong> (things that repeat) from data. Examples: spam filters, recommendations.</li>
            <li><strong>DL (Deep Learning):</strong> part of ML. It uses <strong>neural networks</strong> (brain-like systems with many layers). Examples: image recognition, translation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>ChatGPT is all three</h3>
          <table class="lc-table">
            <tr><th>Term</th><th>What it means</th><th>Example with ChatGPT</th></tr>
            <tr><td>AI</td><td>Smart system</td><td>ChatGPT is an AI system</td></tr>
            <tr><td>ML</td><td>Learns from data</td><td>ChatGPT learns from huge text data</td></tr>
            <tr><td>DL</td><td>Deep neural learning</td><td>ChatGPT uses deep learning models</td></tr>
          </table>
          <p>Not all AI learns. An old chess program that only follows fixed rules is AI, but not ML.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from biggest to smallest</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Order these from the biggest idea to the most specific.</p>
            <ol data-sequence-target="list">
              <li data-order="1">AI: the big idea of making machines smart (the company)</li>
              <li data-order="2">ML: AI that learns patterns from data (the department)</li>
              <li data-order="3">DL: ML that uses neural networks with many layers (the team)</li>
              <li data-order="4">ChatGPT: one deep learning model you can use today</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code uses Python <strong>sets</strong> (groups with no repeats). <code>|</code> joins sets. <code>&lt;=</code> asks: "is every item on the left inside the right?"</p>
          <ol class="lc-list">
            <li>Click <strong>Run</strong> and read the True and False lines.</li>
            <li>Change <code>"spam filter"</code> on the last but one line to <code>"translation"</code>.</li>
            <li>Add <code>"face unlock"</code> to the <code>dl</code> set, then ask <code>smallest_circle("face unlock")</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> all DL is ML and all ML is AI, but some AI just follows fixed rules.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: AI, ML and DL as circles inside circles
        # A Python "set" is a group of items with no repeats.

        # Deep Learning tools (the smallest circle)
        dl = {"image recognition", "ChatGPT", "translation"}

        # Machine Learning = everything in DL, plus more ML tools
        ml = dl | {"spam filter", "recommendations"}

        # AI = everything in ML, plus AI that uses fixed rules only
        ai = ml | {"chess program with fixed rules"}

        # "<=" asks: is every item of the left set inside the right set?
        print("All DL is ML:", dl <= ml)
        print("All ML is AI:", ml <= ai)
        print("All AI is ML:", ai <= ml)

        # "-" shows the items that are in AI but not in ML
        print("AI but not ML:", ai - ml)

        # Find the smallest circle a tool sits in
        def smallest_circle(tool):
            if tool in dl:
                return "DL (so also ML and AI)"
            if tool in ml:
                return "ML (so also AI)"
            if tool in ai:
                return "AI only"
            return "not in our list"

        print("spam filter ->", smallest_circle("spam filter"))
        print("ChatGPT ->", smallest_circle("ChatGPT"))
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Why Learn AI?</h1>
        </div>
        <p class="lc-lead">AI helps you learn faster, work smarter and build your future. It is one of the most <strong>in-demand</strong> skills today, which means many employers want it.</p>
        <div class="lc-card">
          <h3>How ChatGPT helps</h3>
          <ul class="lc-list">
            <li><strong>Learning:</strong> "Explain Python loops".</li>
            <li><strong>Writing:</strong> "Write an email for leave".</li>
            <li><strong>Coding:</strong> "Fix this Python error".</li>
            <li><strong>Planning:</strong> "Create a study plan".</li>
          </ul>
          <p>AI saves time, but it is not always right, so check its work.</p>
        </div>
        <div class="lc-card">
          <h3>Where AI skills are used</h3>
          <ul class="lc-list">
            <li><strong>Software Developer:</strong> builds smart apps and tools.</li>
            <li><strong>Data Scientist:</strong> analyses data to make better decisions.</li>
            <li><strong>AI Engineer:</strong> builds intelligent systems and models.</li>
            <li><strong>Business &amp; Automation:</strong> lets computers do boring tasks (<strong>automate</strong>) to get more done.</li>
          </ul>
          <p>This course uses <strong>Python</strong>, the most popular AI language. It reads almost like plain English.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fix an error with ChatGPT</h3>
          <p>Step through the "Fix this Python error" task.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="You ask">"Fix this Python error: NameError: name 'scroe' is not defined"</li>
              <li data-kind="thought" data-label="ChatGPT understands">It reads the error. The name <code>scroe</code> looks like a typo for <code>score</code>.</li>
              <li data-kind="answer" data-label="Helpful answer">"Change <code>scroe</code> to <code>score</code>. Python only knows names you created."</li>
              <li data-kind="tool" data-label="You run the code">You fix the typo and run the program again.</li>
              <li data-kind="check" data-label="You check">It works. You checked the answer instead of trusting it blindly.</li>
              <li data-kind="result" data-label="Result">Problem solved in minutes, and you learned what a NameError is.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Click <strong>Run</strong> and read the total time saved (the minutes are made up).</li>
            <li>Change "Create a study plan" from <code>[30, 10]</code> to <code>[45, 10]</code>.</li>
            <li>Add <code>"Write a birthday message": [10, 3],</code> to <code>tasks</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> AI skills are future skills that help in almost every kind of work.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: where AI skills are used
        # Match a task to the job from the picture that does it.

        jobs = {
            "Software Developer": "Build smart applications and tools.",
            "Data Scientist": "Analyse data and make better decisions.",
            "AI Engineer": "Build intelligent systems and models.",
            "Business & Automation": "Automate work and increase productivity.",
        }

        for job in jobs:
            print(job + ":", jobs[job])

        print()

        # Made-up minutes for weekly tasks, without and with AI help
        tasks = {
            "Explain Python loops": [60, 25],
            "Write an email for leave": [15, 5],
            "Fix this Python error": [40, 10],
            "Create a study plan": [30, 10],
        }

        total_saved = 0
        for task in tasks:
            without_ai = tasks[task][0]
            with_ai = tasks[task][1]
            saved = without_ai - with_ai
            total_saved = total_saved + saved
            print(task, "-> saves", saved, "minutes")

        print("Total time saved:", total_saved, "minutes a week")
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Variables</h1>
        </div>
        <p class="lc-lead">A <strong>variable</strong> is a container that stores data. Think of it as a box with a name on the front.</p>
        <div class="lc-card">
          <h3>What is a Variable?</h3>
          <div class="lc-code">name = "tony"<br>print(name)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">tony</div>
          <ul class="lc-list">
            <li><code>name</code> is the <strong>variable name</strong> (the box).</li>
            <li><code>"tony"</code> is the <strong>value</strong> inside the box.</li>
            <li><code>=</code> puts the value into the box. It does not mean "equals" like in maths.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>ChatGPT Example</h3>
          <p>When you type "What is AI?", the program stores your words in a variable. Then the AI reads it.</p>
          <div class="lc-code">user_input = "What is AI?"<br>print("You asked:", user_input)</div>
        </div>
        <div class="lc-card">
          <h3>Common Variables</h3>
          <div class="lc-code">name = "tony"<br>age = 20<br>question = "What is AI?"</div>
          <p>Text like <code>"tony"</code> has quotes. The number <code>20</code> has none.</p>
          <p><strong>Exercise 2.1.1:</strong> make a variable <code>city</code> with the value <code>"Japan"</code> and print it. A new value replaces the old one.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Follow the question</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="You ask">You type "What is AI?" into the chat box.</li>
              <li data-kind="tool" data-label="Store it">The program runs <code>user_input = "What is AI?"</code>. Your question is now in a box called <code>user_input</code>.</li>
              <li data-kind="thought" data-label="AI reads the box">The AI looks inside <code>user_input</code> to find out what you asked.</li>
              <li data-kind="answer" data-label="Reply">The AI writes an answer, for example "AI is a computer system that can learn and think."</li>
              <li data-kind="check" data-label="Remember">One variable held your whole question. A variable is a name that stores a value.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>name</code> from <code>"tony"</code> to your own name and run it.</li>
            <li>Change the first <code>city</code> value from <code>"Japan"</code> to <code>"Tokyo"</code>.</li>
            <li>Make a new variable called <code>hobby</code> and print it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> a variable is a name that stores a value, set with <code>=</code>.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Variables: a name that stores a value

        # The box from the image
        name = "tony"
        print("Name:", name)

        # Common variables in real life
        age = 20
        question = "What is AI?"
        print("Age:", age)
        print("Question:", question)

        # ChatGPT example: your question is stored in a variable
        user_input = "What is AI?"
        print("You asked:", user_input)

        # Exercise 2.1.1: create a variable called city and print it
        city = "Japan"
        print(city)

        # A variable can get a new value. The new value replaces the old one.
        city = "London"
        print("New city:", city)
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Data Types</h1>
        </div>
        <p class="lc-lead">A <strong>data type</strong> tells Python what kind of data you store: text, a number, or yes or no.</p>
        <div class="lc-card">
          <h3>Three main data types</h3>
          <ul class="lc-list">
            <li><strong>String</strong> (<code>str</code>): text, always in quotes, like <code>"Hello"</code>.</li>
            <li><strong>Integer</strong> (<code>int</code>): whole numbers with no quotes, like <code>25</code> or <code>-10</code>.</li>
            <li><strong>Boolean</strong> (<code>bool</code>): only <code>True</code> or <code>False</code>, with a capital letter and no quotes.</li>
          </ul>
          <p>Use <code>type()</code> to see a value's type. A <strong>float</strong> is a number with a decimal point, like <code>3.5</code>.</p>
        </div>
        <div class="lc-card">
          <h3>ChatGPT Example</h3>
          <div class="lc-code">user_input = "What is AI?"<br>print(type(user_input))</div>
          <p><strong>Output:</strong> <code>&lt;class 'str'&gt;</code></p>
          <p>What a user types always arrives as a string, even <code>"25"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Why types matter</h3>
          <div class="lc-code">num = 10<br>print(num + 5)<br>print("10" + "5")</div>
          <p><strong>Output:</strong> <code>15</code> and <code>105</code>. With integers, <code>+</code> adds. With strings, it joins text.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sort the values</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each value into its data type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="str" data-label="String"></div>
              <div data-sorter-target="bucket" data-bucket="int" data-label="Integer"></div>
              <div data-sorter-target="bucket" data-bucket="bool" data-label="Boolean"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="str" data-why="It is text inside quotes.">"Hello"</li>
              <li data-bucket="int" data-why="It is a whole number with no quotes.">25</li>
              <li data-bucket="bool" data-why="True is one of the two boolean values.">True</li>
              <li data-bucket="int" data-why="Whole numbers can be negative.">-10</li>
              <li data-bucket="str" data-why="The quotes make it text, even though it looks like a question.">"What is AI?"</li>
              <li data-bucket="bool" data-why="False is the other boolean value.">False</li>
              <li data-bucket="str" data-why="It has quotes, so it is text, not a number.">"100"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>num = 10</code> to <code>num = "10"</code>. The <code>num + 5</code> line now gives an error: Python cannot add text and a number. Change it back.</li>
            <li>Change <code>flag</code> to <code>False</code> and run it again.</li>
            <li>Add <code>price = 3.5</code> and print its type. You should see <code>float</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> use a string for text, an integer for whole numbers and a boolean for yes or no.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Data types: what kind of data are we storing?

        # The three variables from the table in the image
        text = "Hello"   # String: text inside quotes
        num = 10         # Integer: a whole number, no quotes
        flag = True      # Boolean: True or False

        print(text, "is", type(text))
        print(num, "is", type(num))
        print(flag, "is", type(flag))

        # ChatGPT example: what you type is stored as a string
        user_input = "What is AI?"
        print("user_input is", type(user_input))

        # The type changes what + does
        print("num + 5 =", num + 5)        # adds numbers
        print("'10' + '5' =", "10" + "5")  # joins text

        # Tips from the image: integers can be negative
        temperature = -10
        print("temperature is", type(temperature))
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Lists (Store Multiple Values)</h1>
        </div>
        <p class="lc-lead">A <strong>list</strong> stores many values in one variable. A variable like <code>name = "Tony"</code> holds one value; a list holds many.</p>
        <div class="lc-card">
          <h3>Make a List</h3>
          <p>Write the items inside <strong>square brackets</strong> <code>[ ]</code>, with a comma between each item.</p>
          <div class="lc-code">courses = ["AI", "ML", "DL"]<br>print(courses)</div>
          <p><strong>Output:</strong> <code>['AI', 'ML', 'DL']</code>. Single and double quotes mean the same.</p>
        </div>
        <div class="lc-card">
          <h3>Get an Item by Index</h3>
          <p>Each item has a position number called an <strong>index</strong>. Indexes start from 0, not 1.</p>
          <div class="lc-code">print(courses[0])   # AI<br>print(courses[2])   # DL<br>print(courses[-1])  # DL</div>
          <p>A negative index counts from the end, so <code>-1</code> is the last item.</p>
        </div>
        <div class="lc-card">
          <h3>Common List Operations</h3>
          <ul class="lc-list">
            <li><code>len(courses)</code> counts the items: <code>3</code>.</li>
            <li><code>courses.append("NLP")</code> adds an item to the end. <code>append()</code> is a <strong>method</strong>, a tool that belongs to the list.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Watch the list change</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="Make the list"><code>courses = ["AI", "ML", "DL"]</code> stores three items in one variable.</li>
              <li data-kind="result" data-label="courses[0]">This gives <code>"AI"</code>. The first item is at index 0.</li>
              <li data-kind="result" data-label="courses[-1]">This gives <code>"DL"</code>. Index -1 is always the last item.</li>
              <li data-kind="tool" data-label="Add an item"><code>courses.append("NLP")</code> adds "NLP" to the end. The list is now <code>["AI", "ML", "DL", "NLP"]</code>.</li>
              <li data-kind="result" data-label="len(courses)">This now gives <code>4</code>, because the list has four items.</li>
              <li data-kind="warn" data-label="Watch out"><code>courses[4]</code> would cause an error. The last index is 3, because counting starts at 0.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code and check the output.</li>
            <li>Add <code>print(courses[1])</code>. You should see <code>ML</code>.</li>
            <li>Add a fourth question to <code>questions</code>. The count now shows 4.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A list holds many values in <code>[ ]</code>, you get items by index from 0, and <code>append()</code> adds more.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Lists: store multiple values in one variable

        courses = ["AI", "ML", "DL"]
        print("All courses:", courses)

        # Access items by index (counting starts at 0)
        print("First item:", courses[0])
        print("Last item:", courses[-1])

        # Length of the list
        print("Number of courses:", len(courses))

        # Add an item to the end
        courses.append("NLP")
        print("After append:", courses)
        print("Number of courses now:", len(courses))

        # ChatGPT example: many questions in one list
        questions = [
            "What is AI?",
            "Explain Python",
            "What is ML?"
        ]
        print("First question:", questions[0])
        print("Number of questions:", len(questions))
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Loops (Repeat Tasks)</h1>
        </div>
        <p class="lc-lead">A <strong>loop</strong> repeats a task many times. You write the code once, and Python runs it again and again.</p>
        <div class="lc-card">
          <h3>Why Use a Loop?</h3>
          <p>Without a loop, you write <code>print(1)</code>, <code>print(2)</code>, <code>print(3)</code>. With a loop, you write it once:</p>
          <div class="lc-code">for i in range(1, 4):<br>    print(i)</div>
          <ul class="lc-list">
            <li><code>i</code> holds the current number.</li>
            <li><code>range(1, 4)</code> gives 1, 2 and 3. It stops <strong>before</strong> the stop number, so to count to 5 you write <code>range(1, 6)</code>.</li>
            <li>The line under it has 4 spaces in front. This <strong>indentation</strong> marks the code to repeat.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Loop Flow</h3>
          <p>Start, run the code, then check: items left? Repeat. None left? Stop.</p>
        </div>
        <div class="lc-card">
          <h3>Loop Through a List</h3>
          <p>A chatbot can store questions in a list and handle each one:</p>
          <div class="lc-code">questions = ["What is AI?", "Explain Python", "What is ML?"]<br>for q in questions:<br>    print(q)</div>
          <p><code>q</code> holds one question each time round.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Put the loop flow in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of <code>for i in range(1, 4): print(i)</code> in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Start: the loop begins and <code>i</code> becomes 1.</li>
              <li data-order="2">Repeat: Python runs <code>print(i)</code> and shows 1.</li>
              <li data-order="3">Condition met? No, there are numbers left, so <code>i</code> becomes 2.</li>
              <li data-order="4">Repeat: Python shows 2, then <code>i</code> becomes 3.</li>
              <li data-order="5">Repeat: Python shows 3.</li>
              <li data-order="6">Condition met? Yes, no numbers are left, so the loop ends.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>range(1, 6)</code> to <code>range(1, 11)</code> to count to 10.</li>
            <li>Add a fourth question to <code>questions</code>. The loop picks it up.</li>
            <li>Change <code>print(q)</code> to <code>print("Answering:", q)</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Write the code once and let a loop run it as many times as you need.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Loops: repeat a task many times

        # Without a loop: the same code again and again
        print(1)
        print(2)
        print(3)

        print("---")

        # With a loop: write once, repeat many times
        # range(1, 6) gives 1, 2, 3, 4, 5 (it stops before 6)
        for i in range(1, 6):
            print(i)

        print("---")

        # ChatGPT example: process each question one by one
        questions = [
            "What is AI?",
            "Explain Python",
            "What is ML?"
        ]
        for q in questions:
            print(q)

        print("Done! Questions handled:", len(questions))
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Functions (Reusable Code)</h1>
        </div>
        <p class="lc-lead">A <strong>function</strong> is a named block of code you can reuse. Input goes in, the function does its job, and a result comes out.</p>
        <div class="lc-card">
          <h3>Write Once, Use Many Times</h3>
          <p>Instead of writing <code>print("Hello")</code> three times, put it in a function and call it:</p>
          <div class="lc-code">def say_hello():<br>    print("Hello")<br><br>say_hello()<br>say_hello()</div>
          <p>To change "Hello" to "Hi", you now change only one line.</p>
        </div>
        <div class="lc-card">
          <h3>Function Structure</h3>
          <div class="lc-code">def function_name(parameters):<br>    # code block<br>    return result</div>
          <ul class="lc-list">
            <li><code>def</code> means "define". It starts a new function, followed by a name, brackets and a colon.</li>
            <li>The code block is indented by 4 spaces.</li>
            <li>Defining a function does not run it. You <strong>call</strong> it by its name with brackets, like <code>greet()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Input and Output</h3>
          <div class="lc-code">def generate_answer(question):<br>    return "AI is a system that learns."<br><br>print(generate_answer("Explain AI"))</div>
          <ul class="lc-list">
            <li><code>question</code> is a <strong>parameter</strong>, a box for the input.</li>
            <li><code>"Explain AI"</code> is the <strong>argument</strong>, the real value you pass in.</li>
            <li><code>return</code> sends the result back.</li>
          </ul>
          <p>Use functions when you repeat code, or to keep code organised and easy to manage.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Define or call?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Does each line define a function or call one?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="define" data-label="Defines a function"></div>
              <div data-sorter-target="bucket" data-bucket="call" data-label="Calls a function"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="define" data-why="It starts with def and ends with a colon.">def say_hello():</li>
              <li data-bucket="call" data-why="It uses the name with brackets, so it runs the function.">say_hello()</li>
              <li data-bucket="define" data-why="def creates the greet function.">def greet():</li>
              <li data-bucket="call" data-why="It runs greet, which prints the welcome message.">greet()</li>
              <li data-bucket="define" data-why="def creates a function with one parameter, question.">def generate_answer(question):</li>
              <li data-bucket="call" data-why="It runs generate_answer with the argument &quot;Explain AI&quot;.">generate_answer("Explain AI")</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Call <code>greet()</code> one more time at the end.</li>
            <li>Add a new question and answer to <code>answers</code>. This is a <strong>dictionary</strong>: each question is matched to its answer.</li>
            <li>Add your new question to the <code>questions</code> list and run it again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Define a function once with <code>def</code>, then call it whenever you need it.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Functions: reusable blocks of code

        # A function with no input
        def greet():
            print("Welcome to CoffeeBean AI")

        greet()

        # Write once, use many times
        def say_hello():
            print("Hello")

        say_hello()
        say_hello()

        # A function with input (a parameter) and output (return)
        # This is a practice chatbot. It answers from a small dictionary.
        answers = {
            "What is AI?": "AI is a system that learns and responds intelligently.",
            "Explain Python": "Python is an easy language used a lot for AI.",
            "What is ML?": "ML lets computers learn patterns from data.",
        }

        def generate_answer(question):
            # .get() gives a default reply if the question is not known
            return answers.get(question, "Sorry, I do not know that yet.")

        # Call the function once for each question
        questions = ["What is AI?", "Explain Python", "What is ML?", "What is DL?"]
        for q in questions:
            print("Q:", q)
            print("A:", generate_answer(q))
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">What is Data?</h1>
        </div>
        <p class="lc-lead"><strong>Data</strong> is simply information, like a name, an age or a question. Without data, AI cannot learn anything.</p>
        <div class="lc-card">
          <h3>Examples of Data</h3>
          <p>In Python, you store data in variables. <code>type()</code> tells you what kind of data it is.</p>
          <div class="lc-code">name = "Tony"     # str<br>age = 25          # int<br>marks = 90        # int<br>question = "What is AI?"  # str</div>
          <p><code>str</code> means a string (text). <code>int</code> means an integer (a whole number).</p>
        </div>
        <div class="lc-card">
          <h3>Types of Data</h3>
          <ul class="lc-list">
            <li><strong>Text</strong> (<code>str</code>): <code>"AI"</code>, always inside quotes.</li>
            <li><strong>Number</strong> (<code>int</code>): <code>100</code>, no quotes.</li>
            <li><strong>List</strong> (<code>list</code>): <code>["AI", "ML"]</code>, many values in square brackets.</li>
          </ul>
          <p>Watch out: <code>"100"</code> with quotes is text, not a number.</p>
        </div>
        <div class="lc-card">
          <h3>Data Flow in AI</h3>
          <p><strong>Input data</strong> goes into the <strong>AI model</strong>, and <strong>output data</strong> comes out. A <strong>model</strong> is the part of the AI that learns patterns from data. In ChatGPT, you type "Explain AI" (input) and get a reply (output).</p>
          <p>ChatGPT learned from huge amounts of text. Better data means better answers and better decisions.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: What type of data is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each value into the right type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="text" data-label="Text"></div>
              <div data-sorter-target="bucket" data-bucket="num" data-label="Number"></div>
              <div data-sorter-target="bucket" data-bucket="list" data-label="List"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="text" data-why="It is inside quotes, so it is text (a string).">"Tony"</li>
              <li data-bucket="num" data-why="It is a whole number with no quotes.">25</li>
              <li data-bucket="num" data-why="A mark is a whole number, so it is an int.">90</li>
              <li data-bucket="text" data-why="A question is words inside quotes, so it is text.">"What is AI?"</li>
              <li data-bucket="list" data-why="Square brackets hold many values, so it is a list.">["AI", "ML"]</li>
              <li data-bucket="num" data-why="It has no quotes, so Python sees a number.">100</li>
              <li data-bucket="text" data-why="This is the input you type into ChatGPT. It is text.">"Explain AI"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>age = 25</code> to <code>age = "25"</code>. What type does it show now?</li>
            <li>Change <code>user_input</code> to <code>"Explain ML"</code> and run it again.</li>
            <li>Add your own question and answer to the <code>answers</code> dictionary, then ask it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> AI takes data as input, works on it and gives data back as output.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Data is information. Here are the four examples from the image.
        name = "Tony"              # text
        age = 25                   # a whole number
        marks = 90                 # a whole number
        question = "What is AI?"   # text

        # The three basic types of data from the table
        text_example = "AI"
        number_example = 100
        list_example = ["AI", "ML"]

        print("Examples of data:")
        for value in [name, age, marks, question]:
            print(" ", value, "->", type(value).__name__)

        print("Types of data:")
        for value in [text_example, number_example, list_example]:
            print(" ", value, "->", type(value).__name__)

        # A tiny "AI" flow: input data -> AI -> output data
        # (A real AI learns its answers. This one looks them up in a dictionary.)
        answers = {
            "Explain AI": "AI is a system that learns from data",
            "Explain ML": "ML is a part of AI that finds patterns in data",
        }

        user_input = "Explain AI"                                   # input data
        output = answers.get(user_input, "Sorry, I have no data about that yet.")   # AI step
        print("Input: ", user_input)
        print("Output:", output)                                    # output data
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">NumPy Basics (Arrays)</h1>
        </div>
        <p class="lc-lead"><strong>NumPy</strong> is a Python <strong>library</strong> (ready-made code) for working with numbers. It gives you <strong>arrays</strong>: like lists, but faster.</p>
        <div class="lc-card">
          <h3>List vs Array</h3>
          <ul class="lc-list">
            <li><strong>Python list:</strong> <code>numbers = [1, 2, 3]</code>. Slow for large data.</li>
            <li><strong>NumPy array:</strong> <code>np.array([1, 2, 3])</code>. Fast.</li>
          </ul>
          <p>First write <code>import numpy as np</code>. Then <code>np</code> is a short name for NumPy.</p>
        </div>
        <div class="lc-card">
          <h3>Maths on Every Value</h3>
          <div class="lc-code">import numpy as np<br>arr = np.array([1, 2, 3])<br>print(arr + 1)</div>
          <p><strong>Output:</strong> <code>[2 3 4]</code>. Arrays print without commas.</p>
          <p>With a normal list, this gives an error, so you need a loop.</p>
        </div>
        <div class="lc-card">
          <h3>Why Use NumPy?</h3>
          <ul class="lc-list">
            <li><strong>Fast</strong>, even with millions of numbers.</li>
            <li><strong>Used in AI and ML</strong> and handles large data. A photo, for example, is a big grid of numbers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Step through the NumPy code</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Goal">You have the numbers 1, 2 and 3. You want to add 1 to each one.</li>
              <li data-kind="tool" data-label="import numpy as np">Python loads the NumPy library. From now on, <code>np</code> means NumPy.</li>
              <li data-kind="tool" data-label="np.array([1, 2, 3])">The list becomes an array called <code>arr</code>.</li>
              <li data-kind="thought" data-label="arr + 1">NumPy adds 1 to every value at once. No loop is needed.</li>
              <li data-kind="result" data-label="print(...)">Python prints <code>[2 3 4]</code>. There are no commas because it is an array.</li>
              <li data-kind="warn" data-label="With a list">If <code>arr</code> were a normal list, <code>arr + 1</code> would give an error.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>arr + 1</code> to <code>arr + 10</code>.</li>
            <li>Change the array to <code>np.array([5, 10, 15, 20])</code>.</li>
            <li>Add a line that prints <code>numbers.min()</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> NumPy arrays do fast maths on all their numbers at once, which is why AI uses them.</div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # 1. Python list vs NumPy array
        numbers = [1, 2, 3]            # a normal Python list
        arr = np.array([1, 2, 3])      # a NumPy array

        print("List: ", numbers)
        print("Array:", arr)

        # 2. Basic operations: NumPy does the maths on every value at once
        print("arr + 1 =", arr + 1)
        print("arr * 2 =", arr * 2)

        # With a list, you need a loop to do the same thing
        print("list + 1 =", [n + 1 for n in numbers])

        # 5. The code example from the image
        numbers = np.array([5, 10, 15])
        print("numbers =", numbers)

        # Some handy tools that arrays give you
        print("Total:  ", numbers.sum())
        print("Average:", numbers.mean())
        print("Biggest:", numbers.max())
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Pandas Basics (Tables / DataFrames)</h1>
        </div>
        <p class="lc-lead"><strong>Pandas</strong> is a Python library for data in tables of <strong>rows</strong> and <strong>columns</strong>. In Pandas, a table is called a <strong>DataFrame</strong>.</p>
        <div class="lc-card">
          <h3>Create a DataFrame</h3>
          <p>Give Pandas a dictionary. Each key becomes a column name, and each list holds that column's values.</p>
          <div class="lc-code">import pandas as pd<br>data = {"Name": ["Tony", "Mark"], "Marks": [90, 85]}<br>df = pd.DataFrame(data)<br>print(df)</div>
          <div class="lc-code">   Name  Marks<br>0  Tony     90<br>1  Mark     85</div>
          <p>The <strong>index</strong> (0, 1) is the row number, added for you. Both lists must be the same length.</p>
        </div>
        <div class="lc-card">
          <h3>Get One Column</h3>
          <p><code>df["Name"]</code> picks the Name column. One column on its own is called a <strong>Series</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Maths on the Whole Table</h3>
          <div class="lc-code">arr = pd.DataFrame({"A": [1, 2], "B": [3, 4]})<br>print(arr + 1)</div>
          <p>This adds 1 to every value. Pandas is built on NumPy, so it works like arrays. Like Excel, Pandas can filter and sort, and AI data often lives in tables.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Build and use a DataFrame</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Load the library with <code>import pandas as pd</code></li>
              <li data-order="2">Make a dictionary: <code>"Name"</code> and <code>"Marks"</code> as keys, lists as values</li>
              <li data-order="3">Turn it into a table with <code>pd.DataFrame(data)</code></li>
              <li data-order="4">Show the whole table with <code>print(df)</code></li>
              <li data-order="5">Pick one column with <code>df["Name"]</code></li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a third student, <code>"Sara"</code> with <code>78</code> marks, to both lists.</li>
            <li>Change <code>df["Name"]</code> to <code>df["Marks"]</code>.</li>
            <li>Add <code>"London"</code> with a temperature of <code>22</code> to the city table.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A DataFrame is a table in Python that you can build, read and do maths on in a few lines.</div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # 2. Create a DataFrame from a dictionary
        data = {
            "Name": ["Tony", "Mark"],
            "Marks": [90, 85]
        }
        df = pd.DataFrame(data)
        print("The table:")
        print(df)

        # 3. Access data: get one column by its name
        print("\nThe Name column:")
        print(df["Name"])

        # 5. Basic operations: add 1 to every value in the table
        arr = pd.DataFrame({"A": [1, 2], "B": [3, 4]})
        print("\nA and B plus 1:")
        print(arr + 1)

        # 6. Code example: city temperatures
        data = {"City": ["Tokyo", "New York"],
                "Temp": [30, 35]}
        df2 = pd.DataFrame(data)
        print("\nCity temperatures:")
        print(df2)
        print("Average temperature:", df2["Temp"].mean())
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Reading CSV (Real Data Files)</h1>
        </div>
        <p class="lc-lead">A <strong>CSV file</strong> stores a table as plain text. Pandas reads it in one line.</p>
        <div class="lc-card">
          <h3>What is a CSV File?</h3>
          <p>CSV means <strong>Comma Separated Values</strong>. Here is <code>students.csv</code>:</p>
          <div class="lc-code">Name,Marks<br>Tony,90<br>Mark,85</div>
          <p>Each new line is a row, and commas separate the columns. The first line holds the column names. Leave out spaces after commas, or a name becomes <code>" Marks"</code> and <code>df["Marks"]</code> fails.</p>
        </div>
        <div class="lc-card">
          <h3>Read and View the Data</h3>
          <div class="lc-code">import pandas as pd<br>df = pd.read_csv("students.csv")<br>print(df.head())<br>print(df.columns)</div>
          <ul class="lc-list">
            <li><code>read_csv()</code> builds a DataFrame.</li>
            <li><code>df.head()</code> shows the first five rows.</li>
            <li><code>df.columns</code> shows the column names.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Pick Columns</h3>
          <ul class="lc-list">
            <li><code>df['Name']</code>: one column, which gives a Series.</li>
            <li><code>df[['Name', 'Marks']]</code>: a list of columns, which gives a new DataFrame.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: From file to table</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="students.csv">The file holds three lines of text: <code>Name,Marks</code>, <code>Tony,90</code> and <code>Mark,85</code>.</li>
              <li data-kind="tool" data-label="pd.read_csv(...)">Pandas splits each line at the commas. The first line becomes the column names.</li>
              <li data-kind="result" data-label="df">You now have a DataFrame with two rows and two columns.</li>
              <li data-kind="check" data-label="df.head()">You look at the first rows to check the data loaded correctly.</li>
              <li data-kind="check" data-label="df.columns">You check the column names: <code>Name</code> and <code>Marks</code>.</li>
              <li data-kind="answer" data-label="df['Name']">You pick the Name column and get Tony and Mark.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The editor cannot open files, so <code>io.StringIO()</code> makes the text in <code>csv_text</code> act like a file.</p>
          <ol class="lc-list">
            <li>Add a new line to <code>csv_text</code>: <code>Sara,78</code>.</li>
            <li>Change the first line to <code>Name,Marks,Age</code> and add an age to each row.</li>
            <li>Change the first line to <code>Name, Marks</code>. What happens?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> With Pandas, one line reads a CSV file into a DataFrame you can view and use.</div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        # The editor cannot open files, so this text plays the part of students.csv.
        # Each line is a row. Commas split the columns. Note: no spaces after commas.
        csv_text = """Name,Marks
        Tony,90
        Mark,85
        """

        # On your own computer you would write: df = pd.read_csv("students.csv")
        df = pd.read_csv(io.StringIO(csv_text))

        print("The whole table:")
        print(df)

        print("\nFirst few rows:")
        print(df.head())

        print("\nColumn names:")
        print(list(df.columns))

        print("\nOne column:")
        print(df['Name'])

        print("\nTwo columns:")
        print(df[['Name', 'Marks']])
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Data Cleaning (Very Important)</h1>
        </div>
        <p class="lc-lead"><strong>Data cleaning</strong> means fixing data that is <strong>missing</strong>, <strong>incorrect</strong> or <strong>inconsistent</strong> (written in different ways). Bad data gives bad AI results.</p>
        <div class="lc-card">
          <h3>Dirty data vs clean data</h3>
          <p>In the dirty table, Japan's mark is <strong>NULL</strong>, which means missing. In Python, a missing value is <code>None</code>. Pandas shows it as <code>NaN</code> ("Not a Number"). In the clean table, the gap is filled with 80.</p>
        </div>
        <div class="lc-card">
          <h3>Cleaning tools in Pandas</h3>
          <ul class="lc-list">
            <li><code>df.dropna()</code> removes every row with a missing value. You lose data.</li>
            <li><code>df.fillna(80)</code> fills each gap with a value you choose.</li>
            <li><code>df.replace("NA", 0)</code> swaps an old value for a new one.</li>
          </ul>
          <p>After <code>fillna()</code>, marks show as decimals (90.0). <code>astype(int)</code> turns them back into whole numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Why clean data?</h3>
          <p>It makes AI models more accurate, removes errors, makes data reliable and gives better predictions. The flow is: raw data, then cleaning, then an AI model, then better results.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the cleaning steps</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the cleaning steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Load the raw data into a DataFrame</li>
              <li data-order="2">Look for problems and find Japan's missing mark</li>
              <li data-order="3">Choose a fix: drop the row or fill the gap</li>
              <li data-order="4">Fill the gap with <code>fillna(80)</code></li>
              <li data-order="5">Print the table to check that no gaps are left</li>
              <li data-order="6">Give the clean data to the AI model</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. Find Japan's <code>NaN</code> and the missing values count.</li>
            <li>Change <code>fillna(80)</code> to <code>fillna(0)</code>. Is 0 a fair mark?</li>
            <li>Change <code>85</code> to <code>None</code>. How many rows does <code>dropna()</code> keep now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Always find and fix missing or wrong values before you train a model.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Dirty data: Japan's mark is missing (None)
        data = {
            "Name": ["Tony", "Japan", "Mark"],
            "Marks": [90, None, 85]
        }
        df = pd.DataFrame(data)
        print("Dirty data:")
        print(df)

        # Count the missing values in each column
        print("\nMissing values:")
        print(df.isnull().sum())

        # Option 1: remove rows with missing values
        print("\nAfter dropna():")
        print(df.dropna())

        # Option 2: fill missing values with a value you choose
        df["Marks"] = df["Marks"].fillna(80)

        # fillna gives decimals like 90.0, so turn them back into whole numbers
        df["Marks"] = df["Marks"].astype(int)
        print("\nClean data after fillna(80):")
        print(df)
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Data Visualization (Graphs)</h1>
        </div>
        <p class="lc-lead"><strong>Data visualisation</strong> means showing data as charts. In Python, the most popular chart library is <strong>Matplotlib</strong>.</p>
        <div class="lc-card">
          <h3>Types of charts</h3>
          <ul class="lc-list">
            <li><strong>Line chart:</strong> shows change over time. Marks 90, 80, 85 make a line that dips, then rises.</li>
            <li><strong>Bar chart:</strong> compares groups. Students A, B and C get one bar each.</li>
            <li><strong>Pie chart:</strong> shows parts of a whole, as percentages.</li>
          </ul>
          <p>Graphs are easy to understand and help you find patterns quickly.</p>
        </div>
        <div class="lc-card">
          <h3>A bar chart in Matplotlib</h3>
          <div class="lc-code">import matplotlib.pyplot as plt<br>plt.bar(["A", "B", "C"], [90, 80, 85])<br>plt.title('Marks Comparison')<br>plt.show()</div>
          <p>Run this on your own computer. For a line chart, use <code>plt.plot()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Useful Matplotlib commands</h3>
          <ul class="lc-list">
            <li><code>plt.title()</code>, <code>plt.xlabel()</code>, <code>plt.ylabel()</code>: add the title and axis names.</li>
            <li><code>plt.grid()</code>: adds faint grid lines.</li>
            <li><code>plt.show()</code>: opens the graph.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: which chart fits?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Choose the best chart for each piece of data.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="line" data-label="Line chart"></div>
              <div data-sorter-target="bucket" data-bucket="bar" data-label="Bar chart"></div>
              <div data-sorter-target="bucket" data-bucket="pie" data-label="Pie chart"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="line" data-why="It shows how one value changes over time, so use a line.">Tony's marks in each test this year</li>
              <li data-bucket="bar" data-why="You are comparing separate groups, so use bars.">Marks of students A, B and C</li>
              <li data-bucket="pie" data-why="It splits one whole class into parts, so use a pie.">The share of the class that passed or failed</li>
              <li data-bucket="line" data-why="Daily values over a week form a trend, so use a line.">The temperature in London each day this week</li>
              <li data-bucket="bar" data-why="Three shops are three groups to compare, so use bars.">Sales at three coffee shops last month</li>
              <li data-bucket="pie" data-why="It shows how one budget is shared out, so use a pie.">How a family's monthly budget is spent</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The editor cannot draw Matplotlib graphs, so it draws bars with text. Each <code>#</code> is 5 marks.</p>
          <ol class="lc-list">
            <li>Run the code. Which student has the longest bar?</li>
            <li>Change B's mark from <code>80</code> to <code>95</code>. Who is highest now?</li>
            <li>Change <code>mark // 5</code> to <code>mark // 10</code>. What happens to the bars?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Use a line for change over time, bars to compare groups and a pie for parts of a whole.</div>
      HTML
      starter_code: <<~'PYTHON'
        # The editor cannot draw Matplotlib graphs, so we draw a simple
        # bar chart with text. Each # is worth 5 marks.
        names = ["A", "B", "C"]
        marks = [90, 80, 85]

        print("Marks Comparison (bar chart)")
        for name, mark in zip(names, marks):
            bar = "#" * (mark // 5)
            print(name, bar, mark)

        # Find the patterns a chart would show you
        best = names[marks.index(max(marks))]
        print("\nHighest mark:", best, "with", max(marks))
        print("Lowest mark: ", names[marks.index(min(marks))], "with", min(marks))

        # A line chart shows how values change from one point to the next
        print("\nMarks Over Students (changes)")
        for i in range(1, len(marks)):
            change = marks[i] - marks[i - 1]
            if change > 0:
                word = "up"
            elif change < 0:
                word = "down"
            else:
                word = "same"
            print("Student", i, "to", i + 1, ":", word, change)
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">What is Machine Learning?</h1>
        </div>
        <p class="lc-lead"><strong>Machine Learning (ML)</strong> means machines <strong>learn patterns from data</strong> instead of following rules you write. Then they make <strong>predictions</strong> for new data.</p>
        <div class="lc-card">
          <h3>Example: marks and results</h3>
          <p>The <strong>training data</strong> (the examples you give) says 90 marks passed and 40 marks failed. A new student has 75 marks. The machine predicts "Pass". Nobody told it the pass mark.</p>
        </div>
        <div class="lc-card">
          <h3>Rules or learning?</h3>
          <ul class="lc-list">
            <li><strong>Normal programming:</strong> you write the rules, such as "If marks are 50 or more, say Pass".</li>
            <li><strong>Machine learning:</strong> the machine learns the rules from data. This helps when rules are too hard to write.</li>
          </ul>
          <p>ChatGPT is ML too: it learned patterns from huge amounts of text.</p>
        </div>
        <div class="lc-card">
          <h3>The ML flow in Python</h3>
          <p><strong>Data</strong>, then <strong>Learning</strong>, then <strong>Prediction</strong>. The code uses <strong>scikit-learn</strong>, a free ML library. Inputs 1, 2, 3 give answers 2, 4, 6.</p>
          <ul class="lc-list">
            <li><code>model.fit(x, y)</code> is the learning step.</li>
            <li><code>model.predict([[4]])</code> gives <code>[8.]</code>. You never wrote "multiply by 2". The model found it.</li>
          </ul>
          </div>
        <div class="lc-card">
          <h3>Activity: rules or machine learning?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Written rules, or learning from data?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="rules" data-label="Normal programming"></div>
              <div data-sorter-target="bucket" data-bucket="ml" data-label="Machine learning"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="rules" data-why="A person wrote the rule: 50 or more is a pass.">A program says "Pass" when marks are 50 or more</li>
              <li data-bucket="ml" data-why="It learned the pass pattern from rows like 90 = Pass and 40 = Fail.">A model predicts "Pass" for 75 marks after seeing past results</li>
              <li data-bucket="ml" data-why="It learned from huge amounts of text, questions and answers.">ChatGPT answers your question</li>
              <li data-bucket="rules" data-why="The steps for adding are exact. No learning is needed.">A calculator adds two numbers</li>
              <li data-bucket="ml" data-why="It found that y is always x times 2 from the examples.">A model predicts 8 for the input 4</li>
              <li data-bucket="ml" data-why="It learns from songs you played before.">A music app suggests a new song</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>[[4]]</code> to <code>[[10]]</code>. The model should predict 20.</li>
            <li>Change <code>y</code> to <code>[3, 6, 9]</code>. What does "Multiply by" show now?</li>
            <li>Change the rule's pass mark from 50 to 80. Is 75 still a pass?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Machine Learning learns patterns from data to make predictions, without you writing every rule.</div>
      HTML
      starter_code: <<~'PYTHON'
        # What is Machine Learning? Practise the code from the picture.
        from sklearn.linear_model import LinearRegression
        import numpy as np

        # Data: inputs (x) and correct answers (y)
        x = np.array([[1], [2], [3]])
        y = np.array([2, 4, 6])

        # Model: learn the pattern from the examples
        model = LinearRegression()
        model.fit(x, y)

        # Prediction: ask about a new input
        print("Prediction for 4:", model.predict([[4]]))

        # Look at the rule the model found by itself
        print("Multiply by:", round(model.coef_[0], 2))
        print("Then add:", round(model.intercept_, 2))

        # Normal programming: you write the rule yourself
        def pass_or_fail(marks):
            if marks >= 50:
                return "Pass"
            return "Fail"

        print("Rule for 75 marks:", pass_or_fail(75))
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Training Data</h1>
        </div>
        <p class="lc-lead"><strong>Training data</strong> is the data you give a machine so it can <strong>learn patterns</strong> and make <strong>predictions</strong>. Without it, a model has nothing to learn from.</p>
        <div class="lc-card">
          <h3>Example: study hours vs marks</h3>
          <p>Each row is one example: 1 hour gave 30 marks, 2 hours gave 50, 3 hours gave 70. The machine learns: more study means more marks.</p>
          <ul class="lc-list">
            <li><strong>Input (X):</strong> hours of study, what you know.</li>
            <li><strong>Output (Y):</strong> marks, what you want to predict.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The training data flow</h3>
          <p><strong>Training data</strong>, then <strong>Learning</strong>, then a <strong>Model</strong>. A model is the learned pattern. In Python, <code>model.fit(x, y)</code> gives the training data to the model.</p>
        </div>
        <div class="lc-card">
          <h3>Why training data matters</h3>
          <ul class="lc-list">
            <li><strong>Better learning:</strong> good data helps the machine learn well.</li>
            <li><strong>Accurate predictions:</strong> more and better data gives better results.</li>
            <li><strong>Real-life impact:</strong> better predictions help real apps.</li>
          </ul>
          <p>Bad data teaches bad patterns.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the flow in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Collect examples: hours studied and marks for each student</li>
              <li data-order="2">Split each row into input X (hours) and output Y (marks)</li>
              <li data-order="3">Give the training data to the model with model.fit(x, y)</li>
              <li data-order="4">The machine finds the pattern: more study, more marks</li>
              <li data-order="5">The model is ready to make predictions</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a fourth student: put <code>[4]</code> in <code>x</code> and <code>90</code> in <code>y</code>. Run it.</li>
            <li>Change the marks to <code>[20, 50, 80]</code>. How many marks does each hour add now?</li>
            <li>Make <code>x</code> and <code>y</code> different lengths. Read the error: every input needs an output.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Training data teaches the machine with examples, and better data gives better results.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Training Data: Study Hours vs Marks
        from sklearn.linear_model import LinearRegression
        import numpy as np

        # Training data (Hours -> Marks)
        x = np.array([[1], [2], [3]])   # Input (X): hours of study
        y = np.array([30, 50, 70])      # Output (Y): marks

        # Show each training example
        for hours, marks in zip(x, y):
            print(hours[0], "hour(s) of study ->", marks, "marks")

        # Model training
        model = LinearRegression()
        model.fit(x, y)

        print("Model trained")
        print("Number of training examples:", len(x))

        # What pattern did it find?
        print("Each extra hour adds", round(model.coef_[0]), "marks")
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Supervised Learning</h1>
        </div>
        <p class="lc-lead"><strong>Supervised learning</strong> uses <strong>labelled data</strong>: every input comes with its correct output. The machine learns the link between them, then predicts outputs for new inputs.</p>
        <div class="lc-card">
          <h3>Labels and the flow</h3>
          <p>Hours are the input. Marks are the output: 1 hour gave 30, 2 gave 50, 3 gave 70. The correct output is called the <strong>label</strong>, like the answers at the back of a textbook.</p>
          <p>The flow: <strong>input data with labels</strong>, then <strong>model training</strong>, then <strong>prediction</strong> on new data.</p>
        </div>
        <div class="lc-card">
          <h3>Two types</h3>
          <ul class="lc-list">
            <li><strong>Classification</strong> predicts a category (a label), such as "Spam" or "Not Spam".</li>
            <li><strong>Regression</strong> predicts a number, such as marks for some hours of study.</li>
          </ul>
          <p>ChatGPT also learned partly from questions with good answers written by people. Those answers act like labels.</p>
        </div>
        <div class="lc-card">
          <h3>The Python example</h3>
          <p>After <code>model.fit(x, y)</code>, <code>model.predict([[4]])</code> gives <code>[90.]</code>. Each hour adds 20 marks, so 70 + 20 = 90. This is regression, because the answer is a number.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: classification or regression?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Is each task predicting a category or a number?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="class" data-label="Classification (category)"></div>
              <div data-sorter-target="bucket" data-bucket="reg" data-label="Regression (number)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="class" data-why="The answer is one of two labels: Spam or Not Spam.">Is this email Spam or Not Spam?</li>
              <li data-bucket="reg" data-why="Marks are a number, like the 90 in the image.">Predict marks from hours of study</li>
              <li data-bucket="reg" data-why="A price is a number that can take many values.">Predict the price of a flat in Leeds</li>
              <li data-bucket="class" data-why="The answer is a label: cat, dog or bird.">Is this photo a cat, a dog or a bird?</li>
              <li data-bucket="reg" data-why="Temperature is a number.">Predict tomorrow's temperature</li>
              <li data-bucket="class" data-why="The answer is Pass or Fail, two labels.">Will this student pass or fail?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>[[4]]</code> to <code>[[0]]</code> to predict marks for no study.</li>
            <li>Add <code>[1.5]</code> to <code>new_hours</code> and run again.</li>
            <li>Add a new email and its label to the <code>labels</code> dictionary.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Supervised learning learns from correct answers (labelled data) to predict new results.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Supervised Learning: learn from labelled data
        from sklearn.linear_model import LinearRegression
        import numpy as np

        # Training data: input (hours) + correct output (marks)
        x = np.array([[1], [2], [3]])
        y = np.array([30, 50, 70])

        # Train model
        model = LinearRegression()
        model.fit(x, y)

        # Predict marks for 4 hours
        print(model.predict([[4]]))

        # Predict for several new inputs at once
        new_hours = np.array([[2.5], [3.5]])
        for hours, marks in zip(new_hours, model.predict(new_hours)):
            print(hours[0], "hours ->", round(marks), "marks")

        # Regression gives numbers. Classification gives labels.
        labels = {"win money now": "Spam", "meeting at 3pm": "Not Spam"}
        for email, label in labels.items():
            print(email, "->", label)
      PYTHON
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Model Training</h1>
        </div>
        <p class="lc-lead"><strong>Model training</strong> means teaching the machine with data. The steps are: Training Data, then Training, then Model Ready.</p>
        <div class="lc-card">
          <h3>What the model learns</h3>
          <p>The data: 1 hour gave 30 marks, 2 hours gave 50, 3 hours gave 70. The learned rule linking hours and marks is the <strong>model</strong>.</p>
          <p>The image says "Marks = Hours × 20", but 1 × 20 = 20, not 30. The real rule is <strong>Marks = Hours × 20 + 10</strong>. Check: 2 × 20 + 10 = 50. It matches.</p>
        </div>
        <div class="lc-card">
          <h3>The key line: model.fit(x, y)</h3>
          <div class="lc-code">model = LinearRegression()<br>model.fit(x, y)</div>
          <p><code>fit</code> means "learn from this data". After it, the model has its rule and is ready to predict.</p>
          </div>
        <div class="lc-card">
          <h3>Activity: follow the training</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Training data">You give the data: x = [1], [2], [3] hours and y = 30, 50, 70 marks.</li>
              <li data-kind="tool" data-label="Create the model">model = LinearRegression() makes an empty model. It has not learned anything yet.</li>
              <li data-kind="thought" data-label="Training">model.fit(x, y) runs. The model looks for the line that fits all three rows.</li>
              <li data-kind="result" data-label="Learned rule">The model finds: Marks = Hours × 20 + 10.</li>
              <li data-kind="check" data-label="Check the rule">2 × 20 + 10 = 50. That matches the table, so the rule fits.</li>
              <li data-kind="warn" data-label="Watch out">"Marks = Hours × 20" alone gives 20 for 1 hour, not 30. The + 10 matters.</li>
              <li data-kind="answer" data-label="Model ready">The model is trained and ready to make predictions.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>y</code> to <code>[40, 60, 80]</code>. What rule does the model learn now?</li>
            <li>Move <code>model.fit(x, y)</code> below the rule lines. Read the error: the model is not trained yet.</li>
            <li>Put it back, then add a fourth row: <code>[4]</code> and <code>90</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Training with <code>model.fit()</code> turns data into a rule the model can use to predict.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Model Training: teach the model with data
        from sklearn.linear_model import LinearRegression
        import numpy as np

        # Data
        x = np.array([[1], [2], [3]])
        y = np.array([30, 50, 70])

        # Model (not trained yet)
        model = LinearRegression()

        # Training: this one line means "learn from this data"
        model.fit(x, y)
        print("Model is trained")

        # The rule the model learned
        slope = round(model.coef_[0], 2)
        start = round(model.intercept_, 2)
        print("Marks = Hours x", slope, "+", start)

        # Check the learned rule against the training data
        for hours, marks in zip(x, y):
            rule = hours[0] * slope + start
            print(hours[0], "hour(s): real", marks, "| rule gives", rule)
      PYTHON
    },
    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Prediction (Using Model)</h1>
        </div>
        <p class="lc-lead"><strong>Prediction</strong> means using a trained model to find the output for <strong>new, unseen data</strong> (data it did not see in training).</p>
        <div class="lc-card">
          <h3>Example: 4 hours of study</h3>
          <p>The training data: 1 hour gave 30 marks, 2 gave 50, 3 gave 70. Each hour adds 20, so the model predicts 70 + 20 = <strong>90</strong>. The image says 80, but the code output of 90 is correct.</p>
        </div>
        <div class="lc-card">
          <h3>The learned rule</h3>
          <p>The full rule is <strong>Marks = Hours × 20 + 10</strong>, so 4 × 20 + 10 = 90. In code, <code>model.coef_</code> is how much each hour adds (20). <code>model.intercept_</code> is the starting value (10).</p>
        </div>
        <div class="lc-card">
          <h3>The key line: model.predict</h3>
          <div class="lc-code">model.predict([[4]])</div>
          <p>It means "give the output for this new input". The outer list holds rows, the inner list is one row. Train once with <code>fit</code>, then predict as often as you like. ChatGPT does the same: it predicts the best answer to a question it never saw.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from data to prediction</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Data (training): hours 1, 2, 3 and marks 30, 50, 70</li>
              <li data-order="2">Train the model with model.fit(x, y)</li>
              <li data-order="3">Model (trained): it has learned Marks = Hours × 20 + 10</li>
              <li data-order="4">New input: a student who studied for 4 hours</li>
              <li data-order="5">Prediction (output): model.predict([[4]]) gives 90</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change the "By hand" line to <code>hours * 20</code> only. It prints 80, which does not match the model.</li>
            <li>Add <code>[2.5]</code> to <code>new_inputs</code>. Check by hand: 2.5 × 20 + 10.</li>
            <li>Change <code>[[4]]</code> to <code>[4]</code>. Read the error: predict needs rows inside a list.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A trained model uses learned patterns to predict results for new, unseen data.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Prediction (Using Model)
        from sklearn.linear_model import LinearRegression
        import numpy as np

        # Data
        x = np.array([[1], [2], [3]])
        y = np.array([30, 50, 70])

        # Model
        model = LinearRegression()

        # Training
        model.fit(x, y)

        # Prediction: give output for this new input
        print(model.predict([[4]]))

        # Work it out by hand with the learned rule
        hours = 4
        print("By hand:", hours * 20 + 10)

        # Predict for a few new students
        new_inputs = np.array([[1.5], [4], [5]])
        predictions = model.predict(new_inputs)
        for h, p in zip(new_inputs, predictions):
            print("Hours =", h[0], "-> Marks =", round(p, 1))
      PYTHON
    },
    22 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Types of Machine Learning</h1>
        </div>
        <p class="lc-lead">There are <strong>three main types of machine learning</strong>. Each one learns in a different way and suits a different problem.</p>
        <div class="lc-card">
          <h3>The three types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Data</th><th>How it learns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Supervised</td><td>Labelled data (input + output)</td><td>From correct answers</td><td>Predicting marks from study hours</td></tr>
              <tr><td>Unsupervised</td><td>Unlabelled data (no labels)</td><td>Finds hidden groups or patterns</td><td>Grouping customers</td></tr>
              <tr><td>Reinforcement</td><td>Reward or penalty</td><td>By trial and error</td><td>Game AI, robots</td></tr>
            </tbody>
          </table>
          <p>A <strong>reward</strong> is a score for a good action. A <strong>penalty</strong> is a score taken away for a bad one.</p>
        </div>
        <div class="lc-card">
          <h3>ChatGPT uses two types</h3>
          <p>It learns from example answers (supervised) and from people rating its answers as rewards (reinforcement).</p>
        </div>
        <div class="lc-card">
          <h3>A supervised example</h3>
          <div class="lc-code">x = np.array([[1], [2], [3]])<br>y = np.array([30, 50, 70])<br>model = LinearRegression()<br>model.fit(x, y)<br>print(model.predict([[4]]))   # [90.]</div>
          <p>Every input in <code>x</code> has its correct answer in <code>y</code>, so this is supervised.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which type?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each example into the right type.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="sup" data-label="Supervised"></div>
              <div data-sorter-target="bucket" data-bucket="unsup" data-label="Unsupervised"></div>
              <div data-sorter-target="bucket" data-bucket="rl" data-label="Reinforcement"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="sup" data-why="Each row has hours and the correct marks, so the data is labelled.">Predicting marks from study hours</li>
              <li data-bucket="unsup" data-why="No correct groups are given. The model finds them itself.">Grouping students based on marks</li>
              <li data-bucket="rl" data-why="The game AI tries moves and learns from winning or losing.">A game AI learns by winning or losing</li>
              <li data-bucket="unsup" data-why="Shops find groups of similar shoppers without labels.">Grouping customers who buy similar things</li>
              <li data-bucket="rl" data-why="The robot gets feedback after each action and improves.">A robot learns to walk from feedback after each step</li>
              <li data-bucket="sup" data-why="Each email in training already has a Spam or Not Spam label.">Learning spam from emails already marked Spam or Not Spam</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code below shows all three types. Click Run, then:</p>
          <ol class="lc-list">
            <li>Change <code>[[4]]</code> to <code>[[5]]</code> in the supervised part.</li>
            <li>Add <code>[60]</code> to the <code>marks</code> list. Which group does it join?</li>
            <li>Change the last move to <code>("left", False)</code>. What is the new total?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Labels mean supervised, no labels mean unsupervised, and rewards mean reinforcement.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Types of Machine Learning
        from sklearn.linear_model import LinearRegression
        from sklearn.cluster import KMeans
        import numpy as np

        # 1. Supervised: labelled data (input + output)
        x = np.array([[1], [2], [3]])
        y = np.array([30, 50, 70])
        model = LinearRegression()
        model.fit(x, y)
        print("Supervised - marks for 4 hours:", model.predict([[4]]))

        # 2. Unsupervised: no correct answers, just find groups
        marks = np.array([[35], [40], [42], [80], [85], [90]])
        groups = KMeans(n_clusters=2, n_init=10, random_state=0).fit_predict(marks)
        for m, g in zip(marks, groups):
            print("Student with", m[0], "marks -> group", g)

        # 3. Reinforcement: learn by trial and error with rewards
        score = 0
        for move, won in [("left", False), ("right", True), ("right", True)]:
            reward = 1 if won else -1
            score = score + reward
            print("Move", move, "reward", reward, "total", score)
      PYTHON
    },
    23 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">What is OpenAI API?</h1>
        </div>
        <p class="lc-lead">The <strong>OpenAI API</strong> lets your own app connect to AI models like ChatGPT. Your app sends a question, and the AI sends back an answer.</p>
        <div class="lc-card">
          <h3>What is an API?</h3>
          <p><strong>API</strong> means <strong>Application Programming Interface</strong>: a set of rules for how two programs talk. It is a bridge between your app and the AI at OpenAI.</p>
        </div>
        <div class="lc-card">
          <h3>How it works</h3>
          <p>Your app sends a request. The AI does the "thinking" and sends the response back.</p>
        </div>
        <div class="lc-card">
          <h3>The Python code</h3>
          <div class="lc-code">from openai import OpenAI<br><br>client = OpenAI()<br><br>response = client.chat.completions.create(<br>    model="gpt-4o-mini",<br>    messages=[{"role": "user", "content": "What is AI?"}]<br>)<br><br>print(response.choices[0].message.content)</div>
          <ul class="lc-list">
            <li><code>client</code> talks to the API. <code>model</code> picks the AI model.</li>
            <li>Each message is a dictionary with a <code>role</code> (who is talking) and <code>content</code> (what they say).</li>
          </ul>
          <p>It runs on your own computer with <code>pip install openai</code> and an API key (next lesson).</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the request</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">User Input: the user types a question</li>
              <li data-order="2">Your App: the app sends the request</li>
              <li data-order="3">OpenAI API: the request is sent to OpenAI</li>
              <li data-order="4">AI (ChatGPT): the AI processes it and writes an answer</li>
              <li data-order="5">API Response: the answer is sent back to the app</li>
              <li data-order="6">Output: the app shows the answer to the user</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code below uses a pretend client. Run it, then:</p>
          <ol class="lc-list">
            <li>Change the question to <code>"Explain AI"</code>.</li>
            <li>Ask a question that is not in <code>ANSWERS</code>. What happens?</li>
            <li>Add your own question and answer to <code>ANSWERS</code>, then ask it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> The OpenAI API is a bridge between your app and AI models.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice version of the OpenAI API flow.
        # The browser cannot reach OpenAI, so a pretend client answers
        # from a dictionary. The code you write has the same shape as the real thing.
        from types import SimpleNamespace

        # The pretend "AI system": question -> answer
        ANSWERS = {
            "What is AI?": "AI is a system that learns from data and improves over time.",
            "Explain AI": "AI is a system that learns from data and improves over time.",
        }

        class FakeOpenAI:
            """A pretend client. You do not need to understand this part yet."""
            def __init__(self):
                self.chat = SimpleNamespace(completions=SimpleNamespace(create=self.create))

            def create(self, model, messages):
                question = messages[-1]["content"]
                text = ANSWERS.get(question, "Sorry, I do not know that yet.")
                message = SimpleNamespace(role="assistant", content=text)
                return SimpleNamespace(model=model, choices=[SimpleNamespace(message=message)])

        # ---- Your code: the same steps as the image ----
        client = FakeOpenAI()                      # Your App gets a client

        response = client.chat.completions.create( # Request goes to the "API"
            model="gpt-4o-mini",
            messages=[{"role": "user", "content": "What is AI?"}]
        )

        print(response.choices[0].message.content) # Output shown to the user
      PYTHON
    },
    24 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Setup API Key</h1>
        </div>
        <p class="lc-lead">An <strong>API key</strong> is a secret password for your app. Without it, your app cannot talk to OpenAI.</p>
        <div class="lc-card">
          <h3>What the key does</h3>
          <ul class="lc-list">
            <li><strong>Identifies your app:</strong> OpenAI knows who is asking.</li>
            <li><strong>Controls usage:</strong> it links the cost to your account.</li>
            <li><strong>Provides secure access:</strong> only people with the key can use your account.</li>
          </ul>
          <p>OpenAI <strong>verifies</strong> (checks) the key on every request. Real keys start with <code>sk-</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Keep it safe</h3>
          <p><strong>Never share your API key publicly.</strong> Do not put it in chats, screenshots or code on GitHub. Show it hidden, like <code>sk-****</code>. If it leaks, delete it and make a new one.</p>
        </div>
        <div class="lc-card">
          <h3>Store it outside your code</h3>
          <p>Use an <strong>environment variable</strong> (a computer setting outside your code) called <code>OPENAI_API_KEY</code>. On Mac or Linux:</p>
          <div class="lc-code">export OPENAI_API_KEY="sk-..."</div>
          <p>Then read it in Python:</p>
          <div class="lc-code">client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])</div>
        </div>
        <div class="lc-card">
          <h3>Activity: safe or unsafe?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Does each habit keep your key safe?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="safe" data-label="Safe"></div>
              <div data-sorter-target="bucket" data-bucket="unsafe" data-label="Unsafe"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="safe" data-why="The key stays outside your code, so sharing the code does not share the key.">Store the key in the OPENAI_API_KEY environment variable</li>
              <li data-bucket="unsafe" data-why="Anyone who reads the code can copy the key and use your account.">Type the real key into code you upload to GitHub</li>
              <li data-bucket="safe" data-why="Hiding most of the key, like sk-****, keeps it secret.">Show the key with stars, like sk-****</li>
              <li data-bucket="unsafe" data-why="A screenshot can be shared and copied by anyone.">Post a screenshot of your full key in a forum</li>
              <li data-bucket="safe" data-why="Deleting a leaked key stops other people using it.">Delete a leaked key and make a new one</li>
              <li data-bucket="unsafe" data-why="Your friend can spend your money, and the key may spread further.">Send your key to a friend in a chat message</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code uses a fake key. Run it, then:</p>
          <ol class="lc-list">
            <li>Change the key in the <code>os.environ</code> line. What happens to the first request?</li>
            <li>Add your new key to <code>VALID_KEYS</code> so it works again.</li>
            <li>Change <code>mask</code> to show only the last 2 characters.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Treat your API key like a bank PIN.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: keep your API key secret.
        # Real apps read the key from an environment variable.
        # Here we pretend the variable is already set, with a FAKE practice key.
        import os
        os.environ["OPENAI_API_KEY"] = "sk-practice-1234567890abcd"  # pretend setup step

        # Step 1: read the key (never type the real key into your code)
        api_key = os.environ.get("OPENAI_API_KEY")

        # Step 2: if you must show the key, hide most of it
        def mask(key):
            return key[:3] + "*" * (len(key) - 7) + key[-4:]

        print("Key loaded:", mask(api_key))

        # Step 3: a pretend OpenAI server that verifies the key
        VALID_KEYS = ["sk-practice-1234567890abcd"]

        def send_request(key, question):
            if key is None:
                return "Error: no API key. Your app cannot talk to OpenAI."
            if key not in VALID_KEYS:
                return "Error 401: this API key is not valid."
            return "AI is a system that learns from data and improves over time."

        print("With key:   ", send_request(api_key, "Explain AI"))
        print("Wrong key:  ", send_request("sk-wrong-key", "Explain AI"))
        print("Missing key:", send_request(None, "Explain AI"))
      PYTHON
    },
    25 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Send First API Request</h1>
        </div>
        <p class="lc-lead">Now your app sends its first question to the AI. A <strong>request</strong> is a message from your app to a server asking it to do something.</p>
        <div class="lc-card">
          <h3>The flow</h3>
          <p>User types a question, Your App prepares the request, the OpenAI API receives it, and the AI (ChatGPT) processes it. The reply comes next lesson.</p>
        </div>
        <div class="lc-card">
          <h3>What you send</h3>
          <ul class="lc-list">
            <li><strong>Model name:</strong> which AI should answer, for example <code>"gpt-4o-mini"</code>.</li>
            <li><strong>Message:</strong> the question, as a dictionary.</li>
          </ul>
          <div class="lc-code">{"role": "user", "content": "What is Machine Learning?"}</div>
          <p><code>role</code> says who is talking (<code>"user"</code> means a person). <code>content</code> is the question text.</p>
        </div>
        <div class="lc-card">
          <h3>The code</h3>
          <div class="lc-code">client = OpenAI()   # reads OPENAI_API_KEY<br><br>response = client.chat.completions.create(<br>    model="gpt-4o-mini",<br>    messages=[{"role": "user",<br>               "content": "What is Machine Learning?"}]<br>)<br>print("Request sent successfully")</div>
          <p>A bad key stops Python with an error before the last line.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: watch a request travel</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="User">The user types "What is Machine Learning?"</li>
              <li data-kind="thought" data-label="Your App">The app builds the message: role "user", content "What is Machine Learning?"</li>
              <li data-kind="tool" data-label="Request">The app calls client.chat.completions.create with the model name and the message.</li>
              <li data-kind="check" data-label="OpenAI API">OpenAI checks the API key and accepts the request.</li>
              <li data-kind="result" data-label="AI (ChatGPT)">The AI receives the question and starts to process it.</li>
              <li data-kind="answer" data-label="Your App">The program prints "Request sent successfully".</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The pretend client below records what you send. Run it, then:</p>
          <ol class="lc-list">
            <li>Change the question to your own and run it.</li>
            <li>Change <code>"role"</code> to <code>"rol"</code>. Read the error, then fix it.</li>
            <li>Change the model to <code>"my-test-model"</code> and check the printed model.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A request sends two things: a model name and a message with a role and content.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: send your first API request.
        # A pretend client stands in for OpenAI, because the browser cannot reach it.
        from types import SimpleNamespace

        class FakeOpenAI:
            """A pretend client. It records what you send."""
            def __init__(self):
                self.sent = []
                self.chat = SimpleNamespace(completions=SimpleNamespace(create=self.create))

            def create(self, model, messages):
                for m in messages:  # check the message has the right keys
                    if set(m) != {"role", "content"}:
                        raise ValueError("Each message needs 'role' and 'content'")
                self.sent.append({"model": model, "messages": messages})
                message = SimpleNamespace(role="assistant", content="(answer comes next lesson)")
                return SimpleNamespace(choices=[SimpleNamespace(message=message)])

        client = FakeOpenAI()

        # What you send: a model name and a message (the question)
        message = {"role": "user", "content": "What is Machine Learning?"}

        response = client.chat.completions.create(
            model="gpt-4o-mini",
            messages=[message]
        )
        print("Request sent successfully")

        # Look at exactly what was sent
        request = client.sent[0]
        print("Model:", request["model"])
        print("Role:", request["messages"][0]["role"])
        print("Question:", request["messages"][0]["content"])
      PYTHON
    },
    26 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Get AI Response</h1>
        </div>
        <p class="lc-lead">You sent a question. Now you read the <strong>answer</strong> from the <strong>response</strong> that comes back.</p>
        <div class="lc-card">
          <h3>How it comes back</h3>
          <p>API Request, AI Processing, API Response, Your App. You ask "What is AI?" and the app receives: <em>"AI is a system that learns from data and improves over time."</em> The response is a bigger object, and the text is inside it.</p>
        </div>
        <div class="lc-card">
          <h3>The path to the answer</h3>
          <div class="lc-code">response.choices[0].message.content</div>
          <ul class="lc-list">
            <li><code>response</code>: everything OpenAI sent back.</li>
            <li><code>.choices</code>: a list of possible answers, usually one.</li>
            <li><code>[0]</code>: the <strong>index</strong> (position number). Python lists start at 0.</li>
            <li><code>.message</code>: the message the AI wrote.</li>
            <li><code>.content</code>: the answer text you show the user.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The code</h3>
          <div class="lc-code">answer = response.choices[0].message.content<br>print(answer)</div>
          <p>Saving the text in <code>answer</code> keeps the rest of your code short. The real AI may use slightly different words each time.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: find the answer</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the path in order, from outside to the answer text.</p>
            <ol data-sequence-target="list">
              <li data-order="1">response: everything OpenAI sent back</li>
              <li data-order="2">.choices: the list of possible answers</li>
              <li data-order="3">[0]: the first choice (index 0)</li>
              <li data-order="4">.message: the message the AI wrote</li>
              <li data-order="5">.content: the answer text to show the user</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code below builds a pretend response with the real shape. Run it, then:</p>
          <ol class="lc-list">
            <li>Change the <code>content</code> text and run it again.</li>
            <li>Change <code>response.choices[0]</code> to <code>response.choices[1]</code>. Why the error? There is only one choice.</li>
            <li>Print <code>answer.upper()</code> to show it in capitals.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Use <code>response.choices[0].message.content</code> to get the reply you show the user.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: get the AI's answer out of the response.
        # This pretend response has the same shape as a real OpenAI response.
        from types import SimpleNamespace

        message = SimpleNamespace(
            role="assistant",
            content="AI is a system that learns from data and improves over time."
        )
        first_choice = SimpleNamespace(index=0, message=message, finish_reason="stop")
        response = SimpleNamespace(model="gpt-4o-mini", choices=[first_choice])

        # Walk down the path one step at a time
        print("Number of choices:", len(response.choices))
        choice = response.choices[0]          # [0] = the first choice
        print("Who wrote it:", choice.message.role)
        print("Why it stopped:", choice.finish_reason)

        # The short way, like the image
        answer = response.choices[0].message.content
        print("Answer:", answer)
      PYTHON
    },
    27 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Build Mini Chatbot</h1>
        </div>
        <p class="lc-lead">A <strong>chatbot</strong> is a program you can chat with. The user asks, the AI answers, and this repeats.</p>
        <div class="lc-card">
          <h3>The plan</h3>
          <ul class="lc-list">
            <li>Take user input</li>
            <li>Send to OpenAI</li>
            <li>Get AI response</li>
            <li>Show answer</li>
            <li>Repeat (chat loop)</li>
          </ul>
          <p>A <strong>loop</strong> is code that repeats. <code>while True:</code> repeats until you <code>break</code> out. The user types <code>exit</code> to stop.</p>
        </div>
        <div class="lc-card">
          <h3>The code</h3>
          <div class="lc-code">while True:<br>    user_input = input("You: ")<br>    if user_input.lower() == "exit":<br>        print("Goodbye!")<br>        break<br>    response = client.chat.completions.create(<br>        model="gpt-4o-mini",<br>        messages=[{"role": "user", "content": user_input}]<br>    )<br>    answer = response.choices[0].message.content<br>    print(f"AI: {answer}")</div>
          <p><code>.lower()</code> makes "Exit" work too. An <strong>f-string</strong> puts <code>answer</code> inside the text.</p>
        </div>
        <div class="lc-card">
          <h3>Memory</h3>
          <p>The AI does not remember earlier requests. To give it memory, your app must send the earlier messages too.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one turn of the loop</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Take user input">The user types "What is AI?"</li>
              <li data-kind="check" data-label="Exit check">Is the text "exit"? No, so the loop carries on.</li>
              <li data-kind="tool" data-label="Send to OpenAI">The app sends the question with client.chat.completions.create.</li>
              <li data-kind="result" data-label="Get AI response">The answer is taken from response.choices[0].message.content.</li>
              <li data-kind="answer" data-label="Show answer">The app prints "AI: AI is a system that learns from data and improves over time."</li>
              <li data-kind="user" data-label="Repeat">The loop goes back to the start. The user types "exit".</li>
              <li data-kind="warn" data-label="Stop">The exit check is true. The app prints "Goodbye!" and breaks out of the loop.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The browser cannot use <code>input()</code>, so the messages are in the <code>typed</code> list. Run it, then:</p>
          <ol class="lc-list">
            <li>Add <code>"What is Machine Learning?"</code> to the start of <code>typed</code>.</li>
            <li>Change <code>"exit"</code> to <code>"EXIT"</code>. Does it still stop? Why?</li>
            <li>Add a question after <code>"exit"</code>. Why is it never asked?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A chatbot repeats input, request, response and output in a loop until the user types exit.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Practice: a mini chatbot with a chat loop.
        # The browser cannot use input() here, so the user's messages are in a list.
        from types import SimpleNamespace

        ANSWERS = {
            "What is AI?": "AI is a system that learns from data and improves over time.",
            "What is Machine Learning?": "Machine Learning is a field of AI that lets computers learn from data.",
            "How does it work?": "It finds patterns in data and makes predictions from those patterns.",
        }

        class FakeOpenAI:
            """A pretend client that answers from the ANSWERS dictionary."""
            def __init__(self):
                self.chat = SimpleNamespace(completions=SimpleNamespace(create=self.create))

            def create(self, model, messages):
                question = messages[-1]["content"]
                text = ANSWERS.get(question, "Sorry, I do not know that yet.")
                message = SimpleNamespace(role="assistant", content=text)
                return SimpleNamespace(choices=[SimpleNamespace(message=message)])

        client = FakeOpenAI()
        typed = ["What is AI?", "How does it work?", "exit"]  # what the user "types"

        print("Mini Chatbot (type 'exit' to quit)")
        print("-" * 40)
        for user_input in typed:
            print("You:", user_input)
            if user_input.lower() == "exit":
                print("Goodbye!")
                break
            response = client.chat.completions.create(
                model="gpt-4o-mini",
                messages=[{"role": "user", "content": user_input}]
            )
            answer = response.choices[0].message.content
            print(f"AI: {answer}")
      PYTHON
    },
    28 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Beginner AI</div>
          <h1 class="lc-title">Final Project Review</h1>
        </div>
        <p class="lc-lead">You did it! You built a real AI chatbot application from scratch.</p>
        <div class="lc-card">
          <h3>What you built</h3>
          <ul class="lc-list">
            <li><strong>User input:</strong> the user types a question.</li>
            <li><strong>API connection:</strong> the client, with your secret API key.</li>
            <li><strong>Send request:</strong> the model name and message go to OpenAI.</li>
            <li><strong>Get response:</strong> <code>response.choices[0].message.content</code>.</li>
            <li><strong>Chatbot:</strong> a loop that keeps the chat going.</li>
          </ul>
          <p>The full flow is User, App, API, AI, Response, Chatbot.</p>
        </div>
        <div class="lc-card">
          <h3>Next steps</h3>
          <ul class="lc-list">
            <li><strong>Build real AI projects</strong>, like a recipe helper.</li>
            <li><strong>Add a beautiful UI</strong> (user interface, the screen people use) with React or Rails.</li>
            <li><strong>Deploy your application</strong>: put it on a server so others can use it.</li>
            <li><strong>Create your own AI products</strong> and <strong>grow your career</strong>.</li>
          </ul>
          <p>When you deploy, keep the API key on the server, never in the web page.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: built or next?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Is each item already in your app, or a next step?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="built" data-label="Already built"></div>
              <div data-sorter-target="bucket" data-bucket="next" data-label="Next step"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="built" data-why="The client with your API key connects the app to OpenAI.">API connection</li>
              <li data-bucket="built" data-why="response.choices[0].message.content gives you the answer.">Get response</li>
              <li data-bucket="built" data-why="The while loop keeps the conversation going until exit.">Chatbot (conversation)</li>
              <li data-bucket="next" data-why="Your chatbot runs in a terminal now. A UI would give it a proper screen.">Add a beautiful UI (React / Rails)</li>
              <li data-bucket="next" data-why="Right now only you can run it. Deploying puts it online for others.">Deploy your application</li>
              <li data-bucket="next" data-why="This comes after you practise with more projects.">Create your own AI products</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code is your full app. The API call is in <code>ask_ai</code>. Run it, then:</p>
          <ol class="lc-list">
            <li>Add a question and answer to <code>ANSWERS</code>, and the question to <code>typed</code>.</li>
            <li>Add <code>""</code> to <code>typed</code>. Skip it in the loop with <code>if user_input == "": continue</code>.</li>
            <li>Count the questions with a counter and print it at the end.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Congratulations on finishing Beginner AI with Python on CoffeeBean AI: keep coding and keep building.</div>
      HTML
      starter_code: <<~'PYTHON'
        # Final project: your complete AI chatbot app (practice version).
        # A pretend client stands in for OpenAI. The user's messages are in a list.
        from types import SimpleNamespace

        ANSWERS = {
            "What is AI?": "AI is a system that learns from data and improves over time.",
            "Explain Machine Learning": "Machine Learning is a system that learns from data and improves over time.",
        }

        class FakeOpenAI:
            """A pretend client that answers from the ANSWERS dictionary."""
            def __init__(self, api_key):
                self.chat = SimpleNamespace(completions=SimpleNamespace(create=self.create))

            def create(self, model, messages):
                text = ANSWERS.get(messages[-1]["content"], "Sorry, I do not know that yet.")
                message = SimpleNamespace(role="assistant", content=text)
                return SimpleNamespace(choices=[SimpleNamespace(message=message)])

        def ask_ai(client, question):
            """Send one question and return the AI's answer."""
            response = client.chat.completions.create(
                model="gpt-4o-mini",
                messages=[{"role": "user", "content": question}]
            )
            return response.choices[0].message.content

        client = FakeOpenAI(api_key="sk-practice-key")   # API connection
        typed = ["What is AI?", "Explain Machine Learning", "exit"]

        print("AI Chatbot (type 'exit' to quit)")
        print("-" * 40)
        for user_input in typed:                         # chatbot loop
            print("You:", user_input)                    # user input
            if user_input.lower() == "exit":
                print("Goodbye!")
                break
            answer = ask_ai(client, user_input)          # send request, get response
            print(f"AI: {answer}")
      PYTHON
    }
  }.freeze

  # id => title and quiz taken from the lesson's image (image_summary records what the image shows)
  META = {
    1 => { title: "What is AI?", image_summary: "Title What is AI?; AI is a computer system that can understand, think and respond like a human; Real Example: ChatGPT chat (You: Explain AI in simple words / ChatGPT: AI is a system that helps machines understand and make smart decisions); behind the scenes: 1 Understand, 2 Think (learned data), 3 Respond; Simple Formula Input (You ask) -> AI (Processes) -> Output (AI responds); takeaway AI = Understand -> Think -> Respond", exercise_type: "multiple_choice", question: "Which of the following best describes Artificial Intelligence?", options: ["A) A robot that physically looks like a human", "B) A computer system that can understand, think, and respond like a human", "C) A program that only does math calculations"], correct_answer: "B" },
    2 => { title: "AI in Real Life", image_summary: "Title AI in Real Life; AI is used in many real-life apps, ChatGPT is the main example; icons Learn, Write, Code, Plan; How people use ChatGPT: 1 Learning (Explain AI in simple words), 2 Writing (Write an email to my manager), 3 Coding (Explain this Python error, debug code), 4 Planning (Create a study plan); What is happening: User Question -> ChatGPT understands -> Helpful Answer; takeaway AI helps humans complete tasks faster and easier", exercise_type: "multiple_choice", question: "Someone asks ChatGPT, \"Explain this Python error\". Which real-life use from the lesson is this?", options: ["A) Learning", "B) Writing", "C) Coding", "D) Planning"], correct_answer: "C" },
    3 => { title: "Types of AI", image_summary: "Title Types of AI; AI classified by capability and intelligence level; 1 Narrow AI (one specific task, ChatGPT answering questions), 2 General AI (think and learn like humans, future human-like robot), 3 Super AI (smarter than humans, not built yet); comparison table Type/Capability/Example/Status: Narrow In Use Today, General Not Built Yet, Super Only a Theory; takeaway Today's AI (like ChatGPT) is Narrow AI", exercise_type: "multiple_choice", question: "Which type of AI is ChatGPT?", options: ["A) General AI", "B) Narrow AI", "C) Super AI"], correct_answer: "B" },
    4 => { title: "AI vs ML vs DL", image_summary: "Title AI vs ML vs DL; related but not the same, like a company, department and team; nested circles AI (big concept) > ML (part of AI) > DL (part of ML); cards with ChatGPT examples; Quick Comparison table Term/What it Means/How it Works/Example with ChatGPT; Explain differences with examples (voice assistants, self-driving cars; spam filters, recommendations; image recognition, ChatGPT, translation); takeaway All DL is ML, all ML is AI, but not all AI is ML", exercise_type: "multiple_choice", question: "What does ML stand for in the context of AI?", options: ["A) Machine Language", "B) Machine Learning", "C) Model Logic"], correct_answer: "B" },
    5 => { title: "Why Learn AI?", image_summary: "Title Why Learn AI?; AI helps you learn faster, work smarter and build your future, one of the most in-demand skills; How ChatGPT helps: Learning (Explain Python loops), Writing (Write an email for leave), Coding (Fix this Python error), Planning (Create a study plan); Where AI skills are used: Software Developer, Data Scientist, AI Engineer, Business & Automation; takeaway Learning AI = learning future skills that create unlimited opportunities", exercise_type: "true_false", question: "AI is only useful for technology companies and software engineers.", options: ["True", "False"], correct_answer: "False" },
    6 => { title: "Variables", image_summary: "Title Variables: a variable is a container used to store data; What is a Variable? (Variable = Box, name = \"tony\", name is the box, \"tony\" the value); ChatGPT Example (You ask 'What is AI?' -> stored in user_input -> AI processes); Common Variables in Real Life table (name \"tony\", age 20, question \"What is AI?\"); Exercise 2.1.1 (city = \"Japan\", print it); takeaway: Variable = name that stores a value", exercise_type: "multiple_choice", question: "In the code name = \"tony\", what is \"tony\"?", options: ["A) The name of the variable", "B) The value stored inside the variable", "C) A loop that repeats"], correct_answer: "B" },
    7 => { title: "Data Types", image_summary: "Title Data Types: data types define what kind of data we store; Python's 3 main types: String (\"Hello\", always in quotes), Integer (25, no quotes), Boolean (True, yes/no); ChatGPT Example (user_input = \"What is AI?\"); Common Data Types table (text = \"Hello\", num = 10, flag = True); Tips to Remember (strings in quotes, integers 25 -10 100, booleans True/False); takeaway: choose the right data type for the data", exercise_type: "multiple_choice", question: "What is the data type of the value True in Python?", options: ["A) String", "B) Integer", "C) Boolean"], correct_answer: "C" },
    8 => { title: "Lists (Store Multiple Values)", image_summary: "Title Lists: store multiple values in one variable; What is a List? (variable name -> \"Tony\" vs list courses -> [\"AI\", \"ML\", \"DL\"], square brackets); ChatGPT Example (questions list of 3 questions processed one by one); Accessing List Items (print(courses[0]) -> AI, index table 0 AI 1 ML 2 DL, indexes start from 0); Common List Operations (courses[0], courses[-1], append(\"NLP\"), len(courses) = 3); takeaway: list = values in [ ], use indexes and methods", exercise_type: "true_false", question: "In Python, list indexes (positions) start at 0, not 1.", options: ["True", "False"], correct_answer: "True" },
    9 => { title: "Loops (Repeat Tasks)", image_summary: "Title Loops: a loop repeats a task many times; Why we use loops (print(1) print(2) print(3) vs for i in range(1, 4): print(i)); Loop Flow chart (Start -> Repeat -> Condition met? No back to Repeat, Yes End); ChatGPT Example (questions list printed one by one); Code Example script.py for i in range(1, 6) prints 1 to 5; When to use loops (repeat tasks, lists of data, automate work); takeaway: loops repeat actions automatically", exercise_type: "multiple_choice", question: "What does this code print: for i in range(1, 4): print(i)?", options: ["A) 1 2 3 4", "B) 1 2 3", "C) 0 1 2 3"], correct_answer: "B" },
    10 => { title: "Functions (Reusable Code)", image_summary: "Title Functions: a block of code you can reuse; How Functions Work (input -> process -> output); Without vs With Function (three print(\"Hello\") vs def say_hello() called three times); ChatGPT Example (def generate_answer(question) returning an answer, image code has a stray comma, corrected in lesson); Function Structure (def function_name(parameters): code block, return result; call function_name(arguments)); Code Example script.py def greet() printing Welcome to AI Academy (now CoffeeBean AI); When to use functions; takeaway: reuse code, avoid repetition", exercise_type: "multiple_choice", question: "What is the main purpose of a function in Python?", options: ["A) To delete variables from memory", "B) To define a reusable block of code that performs a specific task", "C) To display images on the screen"], correct_answer: "B" },
    11 => { title: "What is Data?", image_summary: "Title What is Data?; data is information used as input and output; 1 examples Name Tony, Age 25, Marks 90, Question What is AI?; 2 ChatGPT flow Explain AI -> AI processing -> AI is a system that learns from data; 3 types table Text AI, Number 100, List [AI, ML]; 4 data flow Input Data -> AI (Model) -> Output Data; real world examples ChatGPT, books, weather apps; why data matters (smart AI, better decisions, innovation); takeaway without data AI cannot learn", exercise_type: "multiple_choice", question: "In the image's Types of Data table, which example is a list?", options: ["A) \"AI\"", "B) 100", "C) [\"AI\", \"ML\"]"], correct_answer: "C" },
    12 => { title: "NumPy Basics (Arrays)", image_summary: "Title NumPy Basics (Arrays); 1 Python list [1, 2, 3] slower vs np.array([1, 2, 3]) faster; 2 basic operations arr + 1 -> [2 3 4]; 3 why NumPy: fast, used in AI and ML, handles large data; 4 types of data table; 5 code np.array([5, 10, 15]) printed (real output [ 5 10 15]); 6 real world examples; 7 data flow; takeaway NumPy is the foundation of data science and AI", exercise_type: "true_false", question: "NumPy is a Python library primarily used for numerical computing and working with arrays.", options: ["True", "False"], correct_answer: "True" },
    13 => { title: "Pandas Basics (Tables / DataFrames)", image_summary: "Title Pandas Basics (Tables / DataFrames); 1 DataFrame is a 2D table, Index/Name/Marks Tony 90 Mark 85; 2 create DataFrame from dict and print; 3 access df[\"Name\"]; 4 why Pandas: like Excel, data analysis, AI and ML; 5 basic operations DataFrame A,B plus 1; 6 City/Temp example (image says Japan, taught as Tokyo); 7 real world examples and data flow; takeaway Pandas handles table data easily", exercise_type: "true_false", question: "Pandas is a Python library used for data manipulation and analysis.", options: ["True", "False"], correct_answer: "True" },
    14 => { title: "Reading CSV (Real Data Files)", image_summary: "Title Reading CSV (Real Data Files); 1 CSV = Comma Separated Values, students.csv Name,Marks Tony 90 Mark 85, rows by new line, columns by comma; 2 pd.read_csv(\"students.csv\") and print; 3 view df.head() and df.columns; 4 why CSV: real-world data, easy, used in AI; 5 access df['Name'] and df[['Name', 'Marks']]; 6 data flow; takeaway CSV is common and Pandas reads it easily", exercise_type: "multiple_choice", question: "What does CSV stand for?", options: ["A) Computer Saved Values", "B) Comma Separated Values", "C) Column Sorted Variables"], correct_answer: "B" },
    15 => { title: "Data Cleaning (Very Important)", image_summary: "Title Data Cleaning (Very Important); fixing missing, incorrect or inconsistent data; 1 dirty table Japan NULL vs clean table Japan 80; 2 operations dropna, fillna(0), replace(\"NA\", 0); 3 why: accuracy, fewer errors, reliable, better decisions; 4 real example Marks [90, null, 85] -> [90, 80, 85]; 5 data flow raw -> model learns from clean data -> results; code fillna(80) on Marks (real output shows floats, fixed with astype(int)); takeaway clean data gives better AI results", exercise_type: "true_false", question: "Missing or incorrect data in a dataset can negatively affect machine learning model accuracy.", options: ["True", "False"], correct_answer: "True" },
    16 => { title: "Data Visualization (Graphs)", image_summary: "Title Data Visualization (Graphs); 1 line chart Marks [90, 80, 85] over students 1-3; 2 chart types line (trend), bar (compare), pie (parts of a whole); 3 bar chart A, B, C marks 90, 80, 85; 4 why visualise: easy, patterns, better decisions; 5 data flow; Matplotlib code plt.plot([10, 20, 30], marker='o', color='cyan') with title, labels, grid, show and its graph; takeaway graphs make data easy to understand", exercise_type: "multiple_choice", question: "Which Python library is most commonly used to create data visualizations?", options: ["A) NumPy", "B) Pandas", "C) Matplotlib"], correct_answer: "C" },
    17 => { title: "What is Machine Learning?", image_summary: "Title What is Machine Learning?; sections: 1 Example (training data 90 Pass, 40 Fail, machine predicts 75 Pass), 2 ML flow Data-Learning-Prediction, 3 Normal programming vs ML, 4 ChatGPT example, Python LinearRegression x=[1,2,3] y=[2,4,6] predict 4 -> [8.], key points learn/predict/improve; takeaway ML = learning patterns from data to make predictions", exercise_type: "multiple_choice", question: "Machine Learning allows computers to:", options: ["A) Work without any power source", "B) Learn from data without being explicitly programmed", "C) Think and feel exactly like humans"], correct_answer: "B" },
    18 => { title: "Training Data", image_summary: "Title Training Data; sections: 1 study hours vs marks table (1-30, 2-50, 3-70), more study more marks, 2 flow Training Data-Learning-Model, 3 Input X hours vs Output Y marks, 4 ChatGPT trained on books/articles/websites, 5 why training data matters, Python fit then print Model trained; takeaway better data, better learning, better results", exercise_type: "multiple_choice", question: "In the study hours and marks example, what is the output (Y)?", options: ["A) Hours of study", "B) Marks", "C) The model"], correct_answer: "B" },
    19 => { title: "Supervised Learning", image_summary: "Title Supervised Learning; sections: 1 hours vs marks labelled table, 2 flow Input Data (with labels)-Learning-Prediction, 3 types Classification (spam/not spam) and Regression (hours to marks), 4 ChatGPT example, Python LinearRegression predict 4 hours -> [90.], key points; takeaway learning from correct answers (labelled data)", exercise_type: "multiple_choice", question: "Which type of supervised learning predicts a number, such as marks from hours of study?", options: ["A) Classification", "B) Regression", "C) Grouping"], correct_answer: "B" },
    20 => { title: "Model Training", image_summary: "Title Model Training; sections: 1 hours vs marks table, 2 what the model learns (image says Marks = Hours x 20; real rule is Hours x 20 + 10), 3 training flow Training Data-Training Process-Model Ready, 4 important step model.fit(x, y) means learn from this data, 5 ChatGPT trained on huge data, Python prints Model is trained; takeaway Data-Training-Model Ready-Predictions", exercise_type: "multiple_choice", question: "Which line of code trains the model?", options: ["A) model = LinearRegression()", "B) model.fit(x, y)", "C) print(\"Model is trained\")"], correct_answer: "B" },
    21 => { title: "Prediction (Using Model)", image_summary: "Title Prediction (Using Model); sections: 1 hours vs marks table, new input Hours = 4 (image says 80, code prints 90; correct is 90), 2 what the model learned (Marks = Hours x 20, really + 10), 3 flow Model-New Input-Prediction, 4 important line model.predict([[4]]), 5 ChatGPT predicts best answer, Python output [90.]; takeaway trained model predicts results for new, unseen data", exercise_type: "true_false", question: "Prediction means using a trained model to guess the output for new data it has not seen before.", options: ["True", "False"], correct_answer: "True" },
    22 => { title: "Types of Machine Learning", image_summary: "Title Types of Machine Learning; sections: 1 three types supervised (marks from hours), unsupervised (grouping students), reinforcement (game AI wins or loses), 2 comparison table data/how it learns/example, 3 ChatGPT mainly uses supervised and reinforcement learning, 4 Python LinearRegression (fit called twice) output [90.]; takeaway choose the right method for the problem", exercise_type: "multiple_choice", question: "A game AI learns by trying moves and getting rewards for winning. Which type of machine learning is this?", options: ["A) Supervised learning", "B) Unsupervised learning", "C) Reinforcement learning"], correct_answer: "C" },
    23 => { title: "What is OpenAI API?", image_summary: "Title What is OpenAI API?; sections: 1 How It Works flow (User Input, Your App, OpenAI API, AI (ChatGPT), API Response, Output), 2 Real Example (Explain AI and the AI reply), 3 What is API? (a bridge between your app and the AI system); code: OpenAI client and chat.completions.create with gpt-4o-mini, printing response.choices[0].message.content (image uses [ ] instead of { } for the message, fixed in the lesson); output: AI is a system that learns from data and improves over time; takeaway: the API connects your app to AI models", exercise_type: "multiple_choice", question: "In the image, what is an API compared to?", options: ["A) A brain that thinks for your app", "B) A bridge that lets your app talk to the AI", "C) A password that hides your app"], correct_answer: "B" },
    24 => { title: "Setup API Key", image_summary: "Title Setup API Key; sections: 1 What is API Key? (login password for AI: identifies your app, controls usage, provides secure access; no key means no access), 2 How It Works (Your App + API Key, OpenAI Server verifies, AI Response), 3 Example in Real App (Explain AI, sk-**** key, AI reply), 4 Important Rule (never share your API key publicly), 5 Key Takeaway; code: OpenAI(api_key=...) and chat.completions.create with gpt-4o-mini (lesson teaches the OPENAI_API_KEY environment variable instead); takeaway: the key is a secret password, keep it private", exercise_type: "true_false", question: "It is safe to type your real API key into code that you upload to GitHub.", options: ["True", "False"], correct_answer: "False" },
    25 => { title: "Send First API Request", image_summary: "Title Send First API Request; sections: 1 How It Works flow (User, Your App, OpenAI API, AI (ChatGPT)), 2 Example question What is Machine Learning?, 3 What You Send (model name and message with role and content), 4 Code Example (Send Request), 5 Get AI Response (next step), 6 Key Takeaway (sending a request means asking AI a question); code: chat.completions.create with gpt-4o-mini then print Request sent successfully; takeaway: your app sends a question to OpenAI using an API request", exercise_type: "multiple_choice", question: "Which two things does your app send in a request?", options: ["A) The model name and a message (the question)", "B) The user's photo and password", "C) The AI's answer and the API key list"], correct_answer: "A" },
    26 => { title: "Get AI Response", image_summary: "Title Get AI Response; sections: 1 flow (API Request, AI Processing, API Response, Your App), 2 Real Example (What is AI? and the reply), 3 Where is Response? (response.choices[0].message.content), 4 Code Line Highlight ([0] is the index, content is the AI answer), 6 Key Takeaway (response = AI answer you show the user); code: answer = response.choices[0].message.content then print(answer); output: AI is a system that learns from data and improves over time", exercise_type: "multiple_choice", question: "Which code gives you the AI's answer text?", options: ["A) response.answer", "B) response.choices[0].message.content", "C) client.chat.completions"], correct_answer: "B" },
    27 => { title: "Build Mini Chatbot", image_summary: "Title Build Mini Chatbot; sections: 1 Chat Example (What is AI? and reply at 10:30 AM), 2 How It Works flow (User Input, API Request, AI Processing, Response, Chat Output), 3 What We Build checklist (take input, send to OpenAI, get response, show answer, repeat in a chat loop), 4 Chat Preview (What is Machine Learning?, How does it work?), Key Takeaway (chatbot = continuous AI conversation); code: chat.completions.create with user_input, answer from choices[0].message.content, print f-string; output: example run with exit and Goodbye", exercise_type: "true_false", question: "A chatbot uses a loop so the user can keep asking questions until they type exit.", options: ["True", "False"], correct_answer: "True" },
    28 => { title: "Final Project Review", image_summary: "Title Final Project Review; sections: 1 What You Built (user input, API connection, send request, get response, chatbot conversation), 2 Full Flow (User, App, API, AI, Response, Chatbot), 3 Chat Preview (Explain Machine Learning), 4 Key Achievement (a real AI chatbot from scratch), 5 Next Steps (build AI projects, add UI with React or Rails, deploy your application, create AI products, grow your career), Congratulations banner (AI Academy, now CoffeeBean AI); code: full while True chatbot with input, exit check, chat.completions.create and print f-string; output: example run", exercise_type: "true_false", question: "After you build your chatbot, deploying it lets other people use it.", options: ["True", "False"], correct_answer: "True" }
  }.freeze

  def self.meta_for(id) = META.fetch(id, {}).slice(:title, :question, :options, :correct_answer, :exercise_type)
end

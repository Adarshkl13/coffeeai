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
        <p class="lc-lead">The picture above answers one big question: what is AI? <strong>AI</strong> means <strong>Artificial Intelligence</strong>. It is a computer system that can <strong>understand</strong>, <strong>think</strong> and <strong>respond</strong> like a human. The picture uses ChatGPT as a real example. Then it shows the three steps that happen behind the scenes.</p>
        <div class="lc-card">
          <h3>Part 1: the meaning of AI</h3>
          <p>The top of the image gives the meaning. AI is a computer system. It can understand what you say, think about it and reply.</p>
          <p>AI does not need a body. The robot in the picture is just a friendly drawing. Most AI is software on a phone, a laptop or a big computer.</p>
          <p><strong>Everyday example:</strong> when you ask a voice assistant "Will it rain in London today?", it understands you and answers. That is AI.</p>
          <p><strong>Remember:</strong> AI = a computer system that understands, thinks and responds.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: a real example with ChatGPT</h3>
          <p>The next part of the image shows a short chat. <strong>ChatGPT</strong> is a chat assistant. It is an AI system.</p>
          <ul class="lc-list">
            <li><strong>You</strong> type: "Explain AI in simple words".</li>
            <li><strong>ChatGPT</strong> replies: "AI is a system that helps machines understand and make smart decisions."</li>
          </ul>
          <p>You did not write any rules for the answer. ChatGPT made the reply itself, from what it learned.</p>
          <p><strong>Remember:</strong> ChatGPT is a real AI you can try today.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: what happens behind the scenes</h3>
          <p>The image then shows three numbered boxes. They explain what the AI does with your message.</p>
          <ol class="lc-list">
            <li><strong>Understand:</strong> AI reads your input. It works out what you are asking.</li>
            <li><strong>Think:</strong> AI uses <strong>learned data</strong>. It finds the best possible answer. Learned data means the many examples it studied before.</li>
            <li><strong>Respond:</strong> AI writes a reply and sends it back to you.</li>
          </ol>
          <p><strong>Everyday example:</strong> a waiter in a café does the same. They listen to your order, think about the menu, then bring your food.</p>
          <p><strong>Remember:</strong> the order is always understand, then think, then respond.</p>
        </div>
        <div class="lc-card">
          <h3>Part 4: the simple formula</h3>
          <p>The last row of the image turns this into a formula:</p>
          <p><strong>Input</strong> (you ask) → <strong>AI</strong> (processes) → <strong>Output</strong> (AI responds)</p>
          <p>The <strong>input</strong> is what goes in, such as your question. The <strong>output</strong> is what comes out, such as the reply. "Processes" means the AI works on the input.</p>
          <p><strong>Everyday example:</strong> a photo app takes a photo as input. It gives the output "This is a cat".</p>
          <p><strong>Remember:</strong> every AI system has an input and an output.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">You ask ChatGPT a question. Put what happens in the right order.</p>
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
          <p>The code editor below has a tiny practice "AI". It has three small parts called <code>understand</code>, <code>think</code> and <code>respond</code>, just like the picture. Do not worry about every word yet. You will learn Python step by step.</p>
          <ol class="lc-list">
            <li>Click <strong>Run</strong>. Watch the three steps print one by one.</li>
            <li>Change the question to <code>"What is Python?"</code> and run it again.</li>
            <li>Ask about something it has not learned, such as <code>"What is football?"</code>. See what it says.</li>
            <li>Teach it a new word. Add a line like <code>"chatgpt": "ChatGPT is an AI chat assistant.",</code> to <code>learned</code>. Then ask about ChatGPT.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> AI = Understand → Think → Respond. You give an input, the AI works on it, and you get an output.</div>
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
        <p class="lc-lead">AI is not only inside ChatGPT. It is used in many real-life apps. The picture above shows four ways people use ChatGPT every day: learning, writing, coding and planning. In this course, ChatGPT is our main example. It helps you see how AI works.</p>
        <div class="lc-card">
          <h3>Part 1: one AI, many jobs</h3>
          <p>The top of the image shows a robot joined to four icons: <strong>Learn</strong>, <strong>Write</strong>, <strong>Code</strong> and <strong>Plan</strong>. One AI tool can help with all of them.</p>
          <p>Other apps use AI too. Your phone keyboard guesses your next word. A music app suggests songs you might like. A map app finds a faster way home.</p>
          <p><strong>Remember:</strong> AI is already in many apps you use, often without you noticing.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: learning and writing</h3>
          <p>The first two boxes in the image show learning and writing.</p>
          <ul class="lc-list">
            <li><strong>1. Learning:</strong> you ask "Explain AI in simple words". ChatGPT helps students understand topics.</li>
            <li><strong>2. Writing:</strong> you ask "Write an email to my manager". ChatGPT helps create clear messages.</li>
          </ul>
          <p><strong>Everyday example:</strong> a student in Leeds asks ChatGPT to explain photosynthesis before a test. Later, they ask it to tidy up a thank-you note.</p>
          <p><strong>Remember:</strong> ChatGPT can explain ideas and help you write.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: coding and planning</h3>
          <p>The next two boxes show coding and planning.</p>
          <ul class="lc-list">
            <li><strong>3. Coding:</strong> you ask "Explain this Python error". ChatGPT helps developers <strong>debug</strong> code. To debug means to find and fix mistakes.</li>
            <li><strong>4. Planning:</strong> you ask "Create a study plan". ChatGPT helps organise tasks and plans.</li>
          </ul>
          <p><strong>Everyday example:</strong> a nurse in Boston asks for a weekly plan to fit exercise around night shifts.</p>
          <p><strong>Remember:</strong> AI can help you fix code and organise your time.</p>
        </div>
        <div class="lc-card">
          <h3>Part 4: what is happening?</h3>
          <p>The bottom row of the image shows the same three steps every time:</p>
          <ol class="lc-list">
            <li><strong>User Question:</strong> you ask something.</li>
            <li><strong>ChatGPT understands:</strong> the AI reads and thinks.</li>
            <li><strong>Helpful Answer:</strong> the AI gives a useful answer.</li>
          </ol>
          <p>This is the input, process and output idea from the last lesson. AI can make mistakes, so always check important answers.</p>
          <p><strong>Remember:</strong> question in, helpful answer out.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which use is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each question into the use from the picture.</p>
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
          <p>The code editor below stores the four uses from the picture. It prints each one. Then a tiny <code>guess_use</code> step guesses the use from key words in a question.</p>
          <ol class="lc-list">
            <li>Click <strong>Run</strong> and read the four uses.</li>
            <li>Change <code>"Write a letter to my landlord"</code> to <code>"Why is my code showing an error?"</code>. Run it again.</li>
            <li>Add a fifth use, such as <code>"Shopping": "Make a list for a picnic",</code> to <code>uses</code>. Add a matching line to <code>helps</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> AI helps people finish everyday tasks faster and more easily: learning, writing, coding and planning.</div>
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
        <p class="lc-lead">Not all AI is the same. The picture above sorts AI into three types. The sorting is based on how capable and how intelligent the AI is. The three types are <strong>Narrow AI</strong>, <strong>General AI</strong> and <strong>Super AI</strong>. A table then compares them.</p>
        <div class="lc-card">
          <h3>Part 1: Narrow AI</h3>
          <p>The first box says Narrow AI is AI that does one specific task. Its example is ChatGPT answering questions.</p>
          <p>ChatGPT can help with many text tasks, as you saw last lesson. So why is it "narrow"? It only works inside its own area. It cannot cook a meal, drive a car or learn any skill like a person can.</p>
          <p><strong>Everyday example:</strong> face unlock on your phone only checks faces. It cannot play chess.</p>
          <p><strong>Remember:</strong> Narrow AI is good at its own job, and nothing else.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: General AI</h3>
          <p>The second box says General AI can think and learn like humans. Its example is a future human-like robot.</p>
          <p>General AI could learn anything, just as you can. It could learn to cook today and fix a bike tomorrow. Nobody has built it yet.</p>
          <p><strong>Everyday example:</strong> think of a robot helper from a film. It talks, cooks, learns and works.</p>
          <p><strong>Remember:</strong> General AI is an idea for the future.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: Super AI</h3>
          <p>The third box says Super AI is smarter than humans. Its example says "Not built yet".</p>
          <p>Super AI would make its own decisions. It would improve itself and go beyond human intelligence. Today it is only a <strong>theory</strong>. A theory is an idea that people discuss but have not proved.</p>
          <p><strong>Remember:</strong> Super AI does not exist. It lives in books, films and debates.</p>
        </div>
        <div class="lc-card">
          <h3>Part 4: the comparison table</h3>
          <p>The table in the image puts it all side by side:</p>
          <table class="lc-table">
            <tr><th>Type</th><th>Capability</th><th>Example</th><th>Status</th></tr>
            <tr><td>Narrow AI</td><td>Does one specific task</td><td>ChatGPT answering questions, keyboard prediction, face unlock</td><td>In Use Today</td></tr>
            <tr><td>General AI</td><td>Can think like humans, learn anything, do multiple tasks</td><td>Future robot that can talk, cook, learn and work</td><td>Not Built Yet</td></tr>
            <tr><td>Super AI</td><td>Smarter than humans, improves itself</td><td>AI that makes decisions on its own and is beyond human intelligence</td><td>Only a Theory</td></tr>
          </table>
          <p>Look at the last column. Only one row says "In Use Today".</p>
          <p><strong>Remember:</strong> every AI you can use today is Narrow AI.</p>
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
          <p>The code editor below stores the comparison table in Python. Each row is a <strong>dictionary</strong>, which is a set of labels and values. The whole table is a <strong>list</strong> of rows.</p>
          <ol class="lc-list">
            <li>Click <strong>Run</strong> and read the table and the "In use today" line.</li>
            <li>Change <code>"In Use Today"</code> in the <code>if</code> line to <code>"Not Built Yet"</code>. Which type prints now?</li>
            <li>Add <code>"voice assistant"</code> to the <code>tools</code> list and run it again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> today's AI, including ChatGPT, is Narrow AI. General AI is not built yet, and Super AI is only a theory.</div>
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
        <p class="lc-lead">AI, ML and DL are related, but they are not the same. The picture above compares them to a <strong>company</strong>, a <strong>department</strong> and a <strong>team</strong>. AI is the whole company. ML (Machine Learning) is one department inside it. DL (Deep Learning) is one team inside that department.</p>
        <div class="lc-card">
          <h3>Part 1: circles inside circles</h3>
          <p>The left side of the image shows three circles, one inside another.</p>
          <ul class="lc-list">
            <li><strong>AI (Artificial Intelligence):</strong> the big concept. It is the outer circle.</li>
            <li><strong>ML (Machine Learning):</strong> part of AI. It is the middle circle.</li>
            <li><strong>DL (Deep Learning):</strong> part of ML. It is the smallest circle.</li>
          </ul>
          <p><strong>Everyday example:</strong> all Labradors are dogs, and all dogs are animals. But not every animal is a dog.</p>
          <p><strong>Remember:</strong> DL sits inside ML, and ML sits inside AI.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: what each one means</h3>
          <p>Next to the circles, the image explains each term with ChatGPT.</p>
          <ul class="lc-list">
            <li><strong>AI</strong> is the big idea of making machines smart. Example: ChatGPT answering questions.</li>
            <li><strong>ML</strong> is how AI learns from data and improves. Example: ChatGPT learns patterns from text data. A <strong>pattern</strong> is something that repeats, such as words that often go together.</li>
            <li><strong>DL</strong> is advanced learning with <strong>neural networks</strong>. These are brain-like systems made of many connected parts. Example: ChatGPT uses deep learning to understand and create text.</li>
          </ul>
          <p><strong>Remember:</strong> ChatGPT is AI, uses ML and is built with DL, all at once.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: the quick comparison table</h3>
          <p>The table on the right of the image sums it up:</p>
          <table class="lc-table">
            <tr><th>Term</th><th>What it means</th><th>How it works</th><th>Example with ChatGPT</th></tr>
            <tr><td>AI</td><td>Smart system</td><td>Makes machines behave smart</td><td>ChatGPT is an AI system</td></tr>
            <tr><td>ML</td><td>Learns from data</td><td>Finds patterns and learns</td><td>ChatGPT learns from huge text data</td></tr>
            <tr><td>DL</td><td>Deep neural learning</td><td>Uses neural networks</td><td>ChatGPT uses deep learning models</td></tr>
          </table>
          <p><strong>Remember:</strong> ML stands for Machine Learning. DL stands for Deep Learning.</p>
        </div>
        <div class="lc-card">
          <h3>Part 4: the differences in detail</h3>
          <p>The bottom right of the image lists more facts and examples.</p>
          <ul class="lc-list">
            <li><strong>AI</strong> is the broadest idea. Its goal is to make machines smart. It includes rules, logic and learning methods. Examples: voice assistants and self-driving cars.</li>
            <li><strong>ML</strong> learns from data to make predictions or decisions. It uses <strong>algorithms</strong>, which are step-by-step methods, to find patterns. Examples: spam filters and recommendations.</li>
            <li><strong>DL</strong> uses neural networks with many layers. It learns complex patterns from huge amounts of data. Examples: image recognition, ChatGPT and translation.</li>
          </ul>
          <p>A small note: voice assistants and self-driving cars also use ML and DL inside. A simpler AI example is an old chess program that only follows fixed rules. It is AI, but it does not learn.</p>
          <p><strong>Remember:</strong> AI can use fixed rules. ML must learn from data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from biggest to smallest</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these in order, from the biggest idea to the most specific one.</p>
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
          <p>The code editor below builds the three circles with Python <strong>sets</strong>. A set is a group of items with no repeats. The <code>|</code> sign joins two sets. The <code>&lt;=</code> sign asks: "is every item on the left inside the right?"</p>
          <ol class="lc-list">
            <li>Click <strong>Run</strong>. Check that it prints "All DL is ML: True" and "All AI is ML: False".</li>
            <li>Change <code>"spam filter"</code> on the last but one line to <code>"translation"</code>. Run it again.</li>
            <li>Add <code>"face unlock"</code> to the <code>dl</code> set. Then ask <code>smallest_circle("face unlock")</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> all DL is ML, and all ML is AI. But not all AI is ML, because some AI just follows fixed rules.</div>
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
        <p class="lc-lead">The picture above gives three reasons to learn AI. AI helps you <strong>learn faster</strong>, <strong>work smarter</strong> and <strong>build your future</strong>. It is one of the most <strong>in-demand</strong> skills of this century. In-demand means many employers want it. The picture shows how ChatGPT helps in real life, and where AI skills are used.</p>
        <div class="lc-card">
          <h3>Part 1: learning and writing</h3>
          <p>The first row of the image shows four ways ChatGPT helps. The first two are learning and writing.</p>
          <ul class="lc-list">
            <li><strong>1. Learning:</strong> "Explain Python loops". You learn faster and understand better.</li>
            <li><strong>2. Writing:</strong> "Write an email for leave". You create clear and professional content. An email for leave asks your manager for time off.</li>
          </ul>
          <p><strong>Everyday example:</strong> a shop worker in Glasgow asks for a polite email to book a day off.</p>
          <p><strong>Remember:</strong> AI is like a patient tutor and a helpful writing partner.</p>
        </div>
        <div class="lc-card">
          <h3>Part 2: coding and planning</h3>
          <p>The next two boxes show coding and planning.</p>
          <ul class="lc-list">
            <li><strong>3. Coding:</strong> "Fix this Python error". You debug code and solve problems quickly.</li>
            <li><strong>4. Planning:</strong> "Create a study plan". You organise tasks and reach your goals.</li>
          </ul>
          <p>AI answers are not always right. Run the fixed code yourself and check it works.</p>
          <p><strong>Remember:</strong> AI saves time, but you still check its work.</p>
        </div>
        <div class="lc-card">
          <h3>Part 3: where AI skills are used</h3>
          <p>The second row of the image shows four kinds of work that use AI skills.</p>
          <ul class="lc-list">
            <li><strong>Software Developer:</strong> builds smart applications and tools.</li>
            <li><strong>Data Scientist:</strong> analyses data and makes better decisions.</li>
            <li><strong>AI Engineer:</strong> builds intelligent systems and models.</li>
            <li><strong>Business &amp; Automation:</strong> automates work and increases productivity. To <strong>automate</strong> means to let a computer do a boring task for you.</li>
          </ul>
          <p>So AI is not only for tech companies. A bakery in Chicago can use AI to answer customer emails. A farmer can use it to plan when to water crops.</p>
          <p><strong>Remember:</strong> AI skills are useful in almost every kind of job.</p>
        </div>
        <div class="lc-card">
          <h3>Part 4: why Python?</h3>
          <p>This course teaches AI with <strong>Python</strong>. Python is the most popular language for AI. It reads almost like plain English, so it is a great first language.</p>
          <p>In the next module, you will start writing Python. Then you will use it to build small AI programs.</p>
          <p><strong>Remember:</strong> learning Python is your first step into AI.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fix an error with ChatGPT</h3>
          <p>Step through how a learner uses ChatGPT for the "Fix this Python error" task.</p>
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
          <p>The code editor below lists the four jobs from the picture. Then it adds up how much time AI could save on the four tasks. The minutes are made up for practice.</p>
          <ol class="lc-list">
            <li>Click <strong>Run</strong> and read the total time saved.</li>
            <li>Change the minutes for "Create a study plan" from <code>[30, 10]</code> to <code>[45, 10]</code>. Run it again.</li>
            <li>Add your own task, such as <code>"Write a birthday message": [10, 3],</code> to <code>tasks</code>.</li>
            <li>Add a fifth job to <code>jobs</code>, such as <code>"Teacher": "Create lessons and quizzes faster.",</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> learning AI means learning skills for the future. Those skills open doors in almost every kind of work.</div>
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
        <p class="lc-lead">The image above teaches your first big idea in Python: the <strong>variable</strong>. A variable is a container used to store data. The image draws it as a box with a name on the front. In this lesson, you will see what a variable is and how ChatGPT uses one. You will also meet some common variables and do the image's exercise.</p>
        <div class="lc-card">
          <h3>What is a Variable?</h3>
          <p>The first part of the image says "Variable = Box". The box has a label, <code>name</code>. Inside the box is a value, <code>"tony"</code>. In Python, you make this box with one line:</p>
          <div class="lc-code">name = "tony"<br>print(name)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">tony</div>
          <ul class="lc-list">
            <li><code>name</code> is the box. This is the <strong>variable name</strong>.</li>
            <li><code>"tony"</code> is the <strong>value</strong> inside the box.</li>
            <li>The <code>=</code> sign puts the value into the box. It does not mean "equals" like in maths.</li>
          </ul>
          <p>Think of a labelled jar in a kitchen. The label says "Sugar". The sugar is the value inside. You find the sugar by reading the label.</p>
          <p><strong>Remember:</strong> the name goes on the left of <code>=</code>, and the value goes on the right.</p>
        </div>
        <div class="lc-card">
          <h3>ChatGPT Example</h3>
          <p>The second part of the image shows a variable at work in a chatbot. It has three steps:</p>
          <ol class="lc-list">
            <li><strong>You ask in ChatGPT.</strong> You type "What is AI?".</li>
            <li><strong>Stored in variable.</strong> The program keeps your words in a variable.</li>
            <li><strong>AI processes the question.</strong> The AI reads the variable and works on it.</li>
          </ol>
          <div class="lc-code">user_input = "What is AI?"<br>print("You asked:", user_input)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">You asked: What is AI?</div>
          <p>A shop works the same way. The cashier writes your order on a slip. The kitchen reads the slip and makes your food. The slip is like a variable.</p>
          <p><strong>Remember:</strong> programs store what you type in variables, so they can use it later.</p>
        </div>
        <div class="lc-card">
          <h3>Common Variables in Real Life</h3>
          <p>The third part of the image is a table of everyday variables. Each one stores a different kind of value.</p>
          <table class="lc-table">
            <thead><tr><th>Variable</th><th>Example</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>name</code></td><td><code>"tony"</code></td><td>Stores your name</td></tr>
              <tr><td><code>age</code></td><td><code>20</code></td><td>Stores your age</td></tr>
              <tr><td><code>question</code></td><td><code>"What is AI?"</code></td><td>Stores user input or a question</td></tr>
            </tbody>
          </table>
          <div class="lc-code">name = "tony"<br>age = 20<br>question = "What is AI?"<br>print(name, age, question)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">tony 20 What is AI?</div>
          <p>Notice that <code>20</code> has no quotes. It is a number. Text like <code>"tony"</code> always has quotes. You will learn more about this in the next lesson.</p>
          <p><strong>Remember:</strong> pick names that say what the box holds. <code>age</code> is clearer than <code>x</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Exercise 2.1.1</h3>
          <p>The last part of the image gives you a task. Create a variable called <code>city</code>. Put the value <code>"Japan"</code> in it. Then print it. Here is one answer:</p>
          <div class="lc-code">city = "Japan"<br>print(city)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Japan</div>
          <p>Japan is really a country, not a city. Python does not mind. It stores any text you give it. You could use <code>"Tokyo"</code> or <code>"London"</code> instead.</p>
          <p><strong>Remember:</strong> you can change the value in a box at any time. The newest value replaces the old one.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Follow the question</h3>
          <p>Step through the ChatGPT example from the image. Watch where the variable is used.</p>
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
          <p>Run the code in the editor below. It makes the variables from the image and does the exercise. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change <code>name</code> to your own name and run it again.</li>
            <li>Change <code>city</code> from <code>"Japan"</code> to <code>"London"</code>.</li>
            <li>Make a new variable called <code>hobby</code> and print it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A variable is a name that stores a value. You put the value in with <code>=</code>, and you get it back by using the name.</div>
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
        <p class="lc-lead">The image above teaches <strong>data types</strong>. A data type tells Python what kind of data you are storing. Is it text? Is it a number? Is it a yes or no? The image shows three main types: string, integer and boolean. It also shows how ChatGPT stores your question as text.</p>
        <div class="lc-card">
          <h3>Python's three main data types</h3>
          <p>The first part of the image shows three cards. Each card is one data type.</p>
          <ul class="lc-list">
            <li><strong>1. String</strong> is used for text and words, like <code>"Hello"</code>. It is always inside quotes.</li>
            <li><strong>2. Integer</strong> is used for whole numbers, like <code>25</code>. It has no quotes.</li>
            <li><strong>3. Boolean</strong> is used for <code>True</code> or <code>False</code>. It means yes or no.</li>
          </ul>
          <p>Python can tell you the type of any value. Use the <code>type()</code> function:</p>
          <div class="lc-code">print(type("Hello"))<br>print(type(25))<br>print(type(True))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">&lt;class 'str'&gt;<br>&lt;class 'int'&gt;<br>&lt;class 'bool'&gt;</div>
          <p>Python uses short names: <code>str</code> for string, <code>int</code> for integer and <code>bool</code> for boolean.</p>
          <p>The image leaves out one more common type. A <strong>float</strong> is a number with a decimal point, like <code>3.5</code>. You will see floats a lot in AI.</p>
          <p><strong>Remember:</strong> quotes make a string. No quotes and no decimal point make an integer.</p>
        </div>
        <div class="lc-card">
          <h3>ChatGPT Example</h3>
          <p>The second part of the image shows the chat flow again. You type "What is AI?". It is stored in a variable. Then the AI processes the question.</p>
          <div class="lc-code">user_input = "What is AI?"<br>print(type(user_input))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">&lt;class 'str'&gt;</div>
          <p>Everything you type in a chat is text. So it is stored as a string. Even if you type <code>25</code>, the chat box gives the program the string <code>"25"</code>.</p>
          <p><strong>Remember:</strong> what a user types arrives as a string.</p>
        </div>
        <div class="lc-card">
          <h3>Common Data Types</h3>
          <p>The third part of the image is a table. It puts each type into a real variable.</p>
          <table class="lc-table">
            <thead><tr><th>Data</th><th>Type</th><th>Example</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>"Hello"</code></td><td>String</td><td><code>text = "Hello"</code></td><td>Text data (words or sentences)</td></tr>
              <tr><td><code>10</code></td><td>Integer</td><td><code>num = 10</code></td><td>Whole numbers</td></tr>
              <tr><td><code>True</code></td><td>Boolean</td><td><code>flag = True</code></td><td>True or False value</td></tr>
            </tbody>
          </table>
          <p>Types matter because they change what Python does. Look at <code>+</code> with numbers and with strings:</p>
          <div class="lc-code">num = 10<br>print(num + 5)<br>print("10" + "5")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">15<br>105</div>
          <p>With integers, <code>+</code> adds. With strings, <code>+</code> joins the text together. So <code>"10" + "5"</code> gives <code>105</code>, not 15.</p>
          <p><strong>Remember:</strong> the same sign can do different jobs. The data type decides.</p>
        </div>
        <div class="lc-card">
          <h3>Tips to Remember</h3>
          <p>The last part of the image gives three tips.</p>
          <ul class="lc-list">
            <li><strong>Strings are always inside quotes.</strong> Example: <code>"Hello"</code>.</li>
            <li><strong>Integers are whole numbers.</strong> Examples: <code>25</code>, <code>-10</code>, <code>100</code>. They can be negative too.</li>
            <li><strong>Booleans have only two values.</strong> They are <code>True</code> and <code>False</code>. Write them with a capital letter and no quotes.</li>
          </ul>
          <p>Think of a form you fill in at the doctor's. Your name is text. Your age is a whole number. "Do you smoke?" is a yes or no box. Each answer has its own type.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Sort the values</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each value from the image into its data type.</p>
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
          <p>Run the code in the editor below. It makes the three variables from the table and prints each type. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change <code>num = 10</code> to <code>num = "10"</code>. What type do you get now? The <code>num + 5</code> line will now stop with an error, because Python cannot add text and a number. Change it back after you look.</li>
            <li>Change <code>flag</code> to <code>False</code> and run it again.</li>
            <li>Add <code>price = 3.5</code> and print its type. You should see <code>float</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A data type decides how Python stores and uses a value. Use a string for text, an integer for whole numbers and a boolean for yes or no.</div>
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
        <p class="lc-lead">The image above teaches the <strong>list</strong>. A list stores many values in a single variable. The image puts three subjects in one list: "AI", "ML" and "DL". In this lesson, you will learn how to make a list, how to get items out and how to add new ones.</p>
        <div class="lc-card">
          <h3>What is a List?</h3>
          <p>The first part of the image compares a variable with a list.</p>
          <ul class="lc-list">
            <li><strong>Variable: 1 value.</strong> <code>name</code> holds <code>"Tony"</code>.</li>
            <li><strong>List: many values.</strong> <code>courses</code> holds <code>["AI", "ML", "DL"]</code>.</li>
          </ul>
          <p>You write a list inside <strong>square brackets</strong> <code>[ ]</code>. A comma goes between each item.</p>
          <div class="lc-code">name = "Tony"<br>courses = ["AI", "ML", "DL"]<br>print(name)<br>print(courses)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Tony<br>['AI', 'ML', 'DL']</div>
          <p>Python prints strings in a list with single quotes. That is normal. Single and double quotes mean the same thing.</p>
          <p>A list is like a shopping list. One piece of paper holds milk, bread and eggs.</p>
          <p><strong>Remember:</strong> one list, many values, all inside <code>[ ]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>ChatGPT Example</h3>
          <p>The second part of the image shows a user asking several questions. The program stores them all in one list. Then the AI can work on each question one by one.</p>
          <div class="lc-code">questions = [<br>    "What is AI?",<br>    "Explain Python",<br>    "What is ML?"<br>]<br>print(questions[1])</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Explain Python</div>
          <p>You can write a long list over several lines. Python waits for the closing <code>]</code>. This makes long lists easier to read.</p>
          <p><strong>Remember:</strong> a list keeps items in order, so the AI can answer them in the same order.</p>
        </div>
        <div class="lc-card">
          <h3>Accessing List Items</h3>
          <p>The third part of the image shows how to get one item. Each item has a position number called an <strong>index</strong>. You put the index in square brackets after the list name.</p>
          <table class="lc-table">
            <thead><tr><th>Index</th><th>Value</th></tr></thead>
            <tbody>
              <tr><td>0</td><td><code>AI</code></td></tr>
              <tr><td>1</td><td><code>ML</code></td></tr>
              <tr><td>2</td><td><code>DL</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">courses = ["AI", "ML", "DL"]<br>print(courses[0])</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">AI</div>
          <p><strong>Indexes start from 0.</strong> The first item is at index 0, not 1. So the third item, <code>"DL"</code>, is at index 2.</p>
          <p>Think of floors in a UK building. The ground floor is floor 0. The next one up is floor 1.</p>
          <p><strong>Remember:</strong> count from 0. The last index is always one less than the number of items.</p>
        </div>
        <div class="lc-card">
          <h3>Common List Operations</h3>
          <p>The last part of the image is a table of things you can do with a list.</p>
          <table class="lc-table">
            <thead><tr><th>Operation</th><th>Example</th><th>Result</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>Access item</td><td><code>courses[0]</code></td><td><code>"AI"</code></td><td>Get the item at index 0</td></tr>
              <tr><td>Access last item</td><td><code>courses[-1]</code></td><td><code>"DL"</code></td><td>Get the last item</td></tr>
              <tr><td>Add item</td><td><code>courses.append("NLP")</code></td><td><code>["AI", "ML", "DL", "NLP"]</code></td><td>Add an item to the end</td></tr>
              <tr><td>Length of list</td><td><code>len(courses)</code></td><td><code>3</code></td><td>Get the number of items</td></tr>
            </tbody>
          </table>
          <div class="lc-code">courses = ["AI", "ML", "DL"]<br>print(courses[-1])<br>print(len(courses))<br>courses.append("NLP")<br>print(courses)<br>print(len(courses))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">DL<br>3<br>['AI', 'ML', 'DL', 'NLP']<br>4</div>
          <p>A negative index counts from the end. <code>-1</code> is the last item. <code>append()</code> is a <strong>method</strong>. A method is a tool that belongs to the list. Notice that the length grows from 3 to 4 after you add "NLP".</p>
          <p><strong>Remember:</strong> use <code>[-1]</code> for the last item, <code>append()</code> to add and <code>len()</code> to count.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Watch the list change</h3>
          <p>Step through the operations from the image, one line at a time.</p>
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
          <p>Run the code in the editor below. It builds the <code>courses</code> and <code>questions</code> lists from the image. Then try these changes:</p>
          <ol class="lc-list">
            <li>Print <code>courses[1]</code>. You should see <code>ML</code>.</li>
            <li>Append <code>"CV"</code> (computer vision) to <code>courses</code> and print the list again.</li>
            <li>Add a fourth question to <code>questions</code> and check that <code>len(questions)</code> shows 4.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A list is a collection of values inside <code>[ ]</code>. Use indexes, starting from 0, to get items. Use methods like <code>append()</code> to add or manage items.</div>
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
        <p class="lc-lead">The image above teaches the <strong>loop</strong>. A loop repeats a task many times. You write the code once, and Python runs it again and again. The image compares code with and without a loop. It also shows how a loop flows and how a chatbot can handle many questions with one loop.</p>
        <div class="lc-card">
          <h3>Why we use loops</h3>
          <p>The first part of the image puts two pieces of code side by side.</p>
          <p><strong>Without a loop (not efficient):</strong> you write the same code again and again.</p>
          <div class="lc-code">print(1)<br>print(2)<br>print(3)</div>
          <p><strong>With a loop (efficient):</strong> you write it once, and it repeats.</p>
          <div class="lc-code">for i in range(1, 4):<br>    print(i)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">1<br>2<br>3</div>
          <p>Both give the same output. Here is how the loop works:</p>
          <ul class="lc-list">
            <li><code>for</code> starts the loop.</li>
            <li><code>i</code> is a variable that holds the current number.</li>
            <li><code>range(1, 4)</code> makes the numbers 1, 2 and 3. It stops <strong>before</strong> 4.</li>
            <li>The line under it is pushed in with 4 spaces. This is called <strong>indentation</strong>. It tells Python which code to repeat.</li>
          </ul>
          <p><strong>Remember:</strong> <code>range(start, stop)</code> never includes the stop number.</p>
        </div>
        <div class="lc-card">
          <h3>Loop Flow</h3>
          <p>The second part of the image is a flow chart. It shows the steps of every loop.</p>
          <ol class="lc-list">
            <li><strong>Start.</strong> The loop begins.</li>
            <li><strong>Repeat.</strong> Python runs the code inside the loop.</li>
            <li><strong>Condition met?</strong> Python checks if the loop should finish.</li>
            <li><strong>No:</strong> go back and repeat. <strong>Yes:</strong> go to the end.</li>
          </ol>
          <p>For a <code>for</code> loop, the check is simple. Are there any items left? If yes, it repeats. If none are left, it ends.</p>
          <p>Think of washing up after dinner. You wash a plate. Then you check if any dirty plates are left. If there are, you wash the next one. If not, you stop.</p>
        </div>
        <div class="lc-card">
          <h3>ChatGPT Example (Processing multiple questions)</h3>
          <p>The third part of the image joins lists and loops. A user asks three questions. The program stores them in a list. Then a loop goes through the list and handles each question one by one.</p>
          <div class="lc-code">questions = [<br>    "What is AI?",<br>    "Explain Python",<br>    "What is ML?"<br>]<br>for q in questions:<br>    print(q)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">What is AI?<br>Explain Python<br>What is ML?</div>
          <p>Here, <code>q</code> holds one question each time round. A loop that goes through every item in a list is very common in AI. Datasets can hold millions of items.</p>
          <p><strong>Remember:</strong> <code>for item in my_list:</code> visits every item in order.</p>
        </div>
        <div class="lc-card">
          <h3>Code Example</h3>
          <p>The fourth part of the image shows a file called <code>script.py</code>. It counts from 1 to 5.</p>
          <div class="lc-code">for i in range(1, 6):<br>    print(i)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">1<br>2<br>3<br>4<br>5</div>
          <p>To count to 5, the stop number must be 6. That is because <code>range()</code> stops just before it.</p>
        </div>
        <div class="lc-card">
          <h3>When to use loops</h3>
          <p>The last part of the image lists three good times to use a loop:</p>
          <ul class="lc-list">
            <li>When you need to repeat a task many times.</li>
            <li>When you work with lists or collections of data.</li>
            <li>When you want to automate repetitive work.</li>
          </ul>
          <p>For example, a teacher in Manchester could print a report line for each of 30 pupils. One loop does it all.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: Put the loop flow in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of <code>for i in range(1, 4): print(i)</code> in the right order, using the loop flow from the image.</p>
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
          <p>Run the code in the editor below. It has the counting loop and the questions loop from the image. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change <code>range(1, 6)</code> to <code>range(1, 11)</code> to count to 10.</li>
            <li>Add a fourth question to the <code>questions</code> list. The loop picks it up with no other change.</li>
            <li>Inside the questions loop, change <code>print(q)</code> to <code>print("Answering:", q)</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A loop repeats an action for you automatically. Write the code once and let the loop run it many times. This saves time and keeps your code clean.</div>
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
        <p class="lc-lead">The image above teaches the <strong>function</strong>. A function is a block of code that you can reuse again and again. You give it a name once. Then you run it whenever you need it. The image shows how functions work, how they save effort and how a chatbot could use one to answer questions.</p>
        <div class="lc-card">
          <h3>How Functions Work</h3>
          <p>The first part of the image shows three steps: input, function, output.</p>
          <ul class="lc-list">
            <li><strong>Input:</strong> you give the function some data.</li>
            <li><strong>Function (process):</strong> the function works on that data.</li>
            <li><strong>Output:</strong> it gives you a result.</li>
          </ul>
          <p>A toaster works like this. Bread goes in. The toaster heats it. Toast comes out. You do not need to know how the toaster works inside. You just use it.</p>
          <p><strong>Remember:</strong> input goes in, the function does its job, and a result comes out.</p>
        </div>
        <div class="lc-card">
          <h3>Without Function vs With Function</h3>
          <p>The second part of the image compares two ways to say "Hello" three times.</p>
          <p><strong>Without a function (not efficient):</strong> the code is repeated again and again.</p>
          <div class="lc-code">print("Hello")<br>print("Hello")<br>print("Hello")</div>
          <p><strong>With a function (efficient):</strong> you write it once and use it many times.</p>
          <div class="lc-code">def say_hello():<br>    print("Hello")<br><br>say_hello()<br>say_hello()<br>say_hello()</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Hello<br>Hello<br>Hello</div>
          <p>Now imagine you want to change "Hello" to "Hi". With the function, you change one line, not three.</p>
          <p><strong>Remember:</strong> if you copy the same code many times, put it in a function.</p>
        </div>
        <div class="lc-card">
          <h3>ChatGPT Example</h3>
          <p>The third part of the image shows a chatbot. You ask questions. A function processes each question. You get all the answers.</p>
          <p>The code in the image has a small mistake. It puts a comma between the two pieces of text, and the second line is wrongly indented. Python would stop with an error. Here is the correct version. Two strings side by side inside brackets join into one string:</p>
          <div class="lc-code">def generate_answer(question):<br>    return ("AI is a system that learns "<br>            "and responds intelligently.")<br><br>print(generate_answer("Explain AI"))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">AI is a system that learns and responds intelligently.</div>
          <ul class="lc-list">
            <li><code>question</code> is a <strong>parameter</strong>. It is a box for the input.</li>
            <li><code>"Explain AI"</code> is the <strong>argument</strong>. It is the real value you pass in.</li>
            <li><code>return</code> sends the result back to the code that called the function.</li>
          </ul>
          <p>This simple function gives the same answer to every question. A real chatbot would read the question and write a new answer each time.</p>
        </div>
        <div class="lc-card">
          <h3>Function Structure</h3>
          <p>The fourth part of the image shows the pattern of every function:</p>
          <div class="lc-code">def function_name(parameters):<br>    # code block<br>    return result<br><br>function_name(arguments)</div>
          <ul class="lc-list">
            <li><code>def</code> means "define". It starts a new function.</li>
            <li>The name is followed by brackets and a colon <code>:</code>.</li>
            <li>The code block is indented by 4 spaces.</li>
            <li>To run the function, you <strong>call</strong> it by its name with brackets.</li>
          </ul>
          <p>The image's code example, <code>script.py</code>, shows this pattern. The image says "AI Academy". This app is now called CoffeeBean AI, so we use the new name:</p>
          <div class="lc-code">def greet():<br>    print("Welcome to CoffeeBean AI")<br><br>greet()</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Welcome to CoffeeBean AI</div>
          <p><strong>Remember:</strong> defining a function does not run it. Nothing happens until you call it.</p>
        </div>
        <div class="lc-card">
          <h3>When to use functions</h3>
          <p>The last part of the image gives three good reasons:</p>
          <ul class="lc-list">
            <li>When you write the same code multiple times.</li>
            <li>When you want to organise your code better.</li>
            <li>When you want to make your code easy to manage.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: Define or call?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each line comes from the image. Does it define a function or call one?</p>
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
          <p>Run the code in the editor below. It has <code>greet()</code>, <code>say_hello()</code> and a <code>generate_answer()</code> that knows a few answers. Then try these changes:</p>
          <ol class="lc-list">
            <li>Call <code>greet()</code> one more time at the end.</li>
            <li>Add a new question and answer to <code>answers</code>. This is a <strong>dictionary</strong>: each question is matched to its answer.</li>
            <li>Add your new question to the <code>questions</code> list and run it again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A function is a reusable block of code. Define it once with <code>def</code>, then call it whenever you need it. This avoids repetition, saves time and keeps your code clean.</div>
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
        <p class="lc-lead">The image shows that <strong>data</strong> is simply information. A name, an age, a mark and a question are all data. An AI system takes data as <strong>input</strong>, works on it, and gives back an <strong>output</strong>. Without data, AI cannot learn anything. Let us walk through the image part by part.</p>
        <div class="lc-card">
          <h3>1. Examples of data</h3>
          <p>The first part of the image shows four pieces of data about a student:</p>
          <ul class="lc-list">
            <li><strong>Name:</strong> <code>"Tony"</code> (text)</li>
            <li><strong>Age:</strong> <code>25</code> (a number)</li>
            <li><strong>Marks:</strong> <code>90</code> (a number)</li>
            <li><strong>Question:</strong> <code>"What is AI?"</code> (text)</li>
          </ul>
          <p>Each one is a small fact. You meet data like this every day. A bus timetable is data. So is the price on a shop label.</p>
          <p>In Python, you store each piece of data in a variable. The <code>type()</code> function tells you what kind of data it is.</p>
          <div class="lc-code">name = "Tony"<br>age = 25<br>marks = 90<br>question = "What is AI?"<br><br>print(name, type(name).__name__)<br>print(age, type(age).__name__)<br>print(marks, type(marks).__name__)<br>print(question, type(question).__name__)</div>
          <p>Output:</p>
          <div class="lc-code">Tony str<br>25 int<br>90 int<br>What is AI? str</div>
          <p><code>str</code> means a string (text). <code>int</code> means an integer (a whole number). Remember: every piece of data has a type.</p>
        </div>
        <div class="lc-card">
          <h3>2. The ChatGPT flow: input, AI, output</h3>
          <p>The second part of the image shows how ChatGPT uses data. It has three boxes:</p>
          <ol class="lc-list">
            <li><strong>Input (data):</strong> you type "Explain AI".</li>
            <li><strong>AI processing:</strong> the AI works on your words.</li>
            <li><strong>Output (data):</strong> it replies "AI is a system that learns from data".</li>
          </ol>
          <p>Your question is data. The answer is data too. A sat nav works the same way. You give it a place (input), and it gives you a route (output).</p>
          <p>Remember: AI always turns input data into output data.</p>
        </div>
        <div class="lc-card">
          <h3>3. Types of data (basic)</h3>
          <p>The third part of the image is a small table of data types:</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Python name</th></tr></thead>
            <tbody>
              <tr><td>Text</td><td><code>"AI"</code></td><td><code>str</code></td></tr>
              <tr><td>Number</td><td><code>100</code></td><td><code>int</code></td></tr>
              <tr><td>List</td><td><code>["AI", "ML"]</code></td><td><code>list</code></td></tr>
            </tbody>
          </table>
          <p>Text always sits inside quotes. Numbers have no quotes. A list holds many values inside square brackets. A shopping list is a good everyday example of a list.</p>
          <div class="lc-code">topics = ["AI", "ML"]<br>print(topics)<br>print(type(topics).__name__)<br>print(len(topics))</div>
          <p>Output:</p>
          <div class="lc-code">['AI', 'ML']<br>list<br>2</div>
          <p>Remember: <code>"100"</code> with quotes is text, but <code>100</code> without quotes is a number.</p>
        </div>
        <div class="lc-card">
          <h3>4. Data flow in AI, and why data matters</h3>
          <p>The fourth part of the image shows the same idea for every AI: <strong>Input Data</strong> goes into the <strong>AI (Model)</strong>, and <strong>Output Data</strong> comes out. A <strong>model</strong> is the part of the AI that learns patterns from data. Better data means better answers.</p>
          <p>The right side of the image gives real examples:</p>
          <ul class="lc-list">
            <li><strong>ChatGPT</strong> learned from huge amounts of text from books and websites.</li>
            <li>A <strong>library</strong> stores book titles, authors and pages to help you find a book.</li>
            <li>A <strong>weather app</strong> uses data from countries around the world to give your forecast.</li>
          </ul>
          <p>The image also says why data is important. It makes AI smart, improves decisions and drives new ideas. A shop that tracks its sales can see which bread sells best. Then it can bake more of it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: what type of data is it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each value from the image into the right type.</p>
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
          <p>The code editor below holds the data from the image. It prints each value with its type. Then it runs a tiny input, AI, output flow. This "AI" only looks up answers in a dictionary, but the flow is the same.</p>
          <ol class="lc-list">
            <li>Run the code. Check the type of each value.</li>
            <li>Change <code>age = 25</code> to <code>age = "25"</code>. What type does it show now?</li>
            <li>Change <code>user_input</code> to <code>"Explain ML"</code> and run it again.</li>
            <li>Add your own question and answer to the <code>answers</code> dictionary. Then ask it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Data is information, like a name, a number or a list. AI takes data as input, works on it, and gives data back as output. Without data, AI cannot learn or give useful results.
        </div>
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
        <p class="lc-lead">The image introduces <strong>NumPy</strong>, a Python library for working with numbers. A <strong>library</strong> is ready-made code that you can use in your own programs. NumPy gives you <strong>arrays</strong>. An array is like a list, but it is faster and can do maths on every value at once. Let us go through the image section by section.</p>
        <div class="lc-card">
          <h3>1. Python list vs NumPy array</h3>
          <p>The first part of the image puts two things side by side:</p>
          <ul class="lc-list">
            <li><strong>Python list (normal):</strong> <code>numbers = [1, 2, 3]</code>. It works, but it is slower for large data.</li>
            <li><strong>NumPy array (fast and powerful):</strong> <code>numbers = np.array([1, 2, 3])</code>. It is faster and better for AI and ML.</li>
          </ul>
          <p>To use NumPy, you first write <code>import numpy as np</code>. After that, <code>np</code> is a short name for NumPy.</p>
          <p>Think of a list as a paper shopping list. You change each line by hand. An array is like a spreadsheet column. One formula can change the whole column at once.</p>
        </div>
        <div class="lc-card">
          <h3>2. Basic operations</h3>
          <p>The second part of the image adds 1 to an array:</p>
          <div class="lc-code">import numpy as np<br><br>arr = np.array([1, 2, 3])<br>print(arr + 1)</div>
          <p>Output:</p>
          <div class="lc-code">[2 3 4]</div>
          <p>NumPy added 1 to every value. Notice that an array prints without commas. A normal list cannot do this. <code>[1, 2, 3] + 1</code> gives an error. With a list, you need a loop:</p>
          <div class="lc-code">numbers = [1, 2, 3]<br>print([n + 1 for n in numbers])</div>
          <p>Output:</p>
          <div class="lc-code">[2, 3, 4]</div>
          <p>Remember: with arrays, one line of maths works on every value.</p>
        </div>
        <div class="lc-card">
          <h3>3. Why use NumPy?</h3>
          <p>The third part of the image gives three reasons:</p>
          <ul class="lc-list">
            <li><strong>Fast:</strong> it is built for speed, even with millions of numbers.</li>
            <li><strong>Used in AI and ML:</strong> machine learning tools use arrays inside them.</li>
            <li><strong>Handles large data:</strong> it works well with huge datasets.</li>
          </ul>
          <p>A photo, for example, is just a big grid of numbers. NumPy stores that grid as an array. The image also repeats the basic data types: text <code>"AI"</code>, number <code>100</code> and list <code>['AI', 'ML']</code>. NumPy is mainly for the numbers.</p>
        </div>
        <div class="lc-card">
          <h3>5. Code example</h3>
          <p>The code example in the image makes an array and prints it:</p>
          <div class="lc-code">import numpy as np<br>numbers = np.array([5, 10, 15])<br>print(numbers)</div>
          <p>Output:</p>
          <div class="lc-code">[ 5 10 15]</div>
          <p>The image shows <code>[5 10 15]</code>. Real NumPy adds one small space before the 5. It does this so all the numbers line up in neat columns. The values are exactly the same.</p>
          <p>The image ends with the usual data flow: input data goes into the AI model, and useful results come out. NumPy arrays are often the input data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: step through the NumPy code</h3>
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
          <p>The code editor below has the list and arrays from the image.</p>
          <ol class="lc-list">
            <li>Run the code. Compare how the list and the array print.</li>
            <li>Change <code>arr + 1</code> to <code>arr + 10</code>.</li>
            <li>Change the array to <code>np.array([5, 10, 15, 20])</code>. Watch the total and the average change.</li>
            <li>Add a line that prints <code>numbers.min()</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> NumPy arrays hold numbers and do maths on all of them at once. They are fast and work well with big data. That is why NumPy is the base of data science, AI and machine learning in Python.
        </div>
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
        <p class="lc-lead">The image introduces <strong>Pandas</strong>, a Python library for data in tables. A table has <strong>rows</strong> (going across) and <strong>columns</strong> (going down). In Pandas, a table is called a <strong>DataFrame</strong>. Pandas is used for data analysis, which means studying data to find useful facts. Let us follow the image section by section.</p>
        <div class="lc-card">
          <h3>1. What is a DataFrame?</h3>
          <p>The first part of the image shows a small table. It has an <strong>Index</strong> column (0 and 1), a <strong>Name</strong> column and a <strong>Marks</strong> column. Tony has 90 marks. Mark has 85 marks.</p>
          <p>The index is the row number. Pandas adds it for you, and it starts at 0. The "Think" box sums it up: a Pandas DataFrame is a table in Python.</p>
          <p>A class register is a good everyday example. Each row is a pupil, and each column is one fact about them.</p>
          <p>The image also says why Pandas is useful. It works like Excel, it helps you filter and sort data, and real-world AI data is often stored in tables.</p>
        </div>
        <div class="lc-card">
          <h3>2. Create a DataFrame</h3>
          <p>The second part of the image builds that table in code. You give Pandas a dictionary. Each key becomes a column name. Each list becomes the values in that column.</p>
          <div class="lc-code">import pandas as pd<br><br>data = {<br>    "Name": ["Tony", "Mark"],<br>    "Marks": [90, 85]<br>}<br><br>df = pd.DataFrame(data)<br><br>print(df)</div>
          <p>Output:</p>
          <div class="lc-code">   Name  Marks<br>0  Tony     90<br>1  Mark     85</div>
          <p><code>pd</code> is the short name for Pandas. <code>df</code> is a common name for a DataFrame. Remember: both lists must have the same length, because each row needs a value in every column.</p>
        </div>
        <div class="lc-card">
          <h3>3. Access data</h3>
          <p>The third part of the image picks one column by its name:</p>
          <div class="lc-code">print(df["Name"])</div>
          <p>Output:</p>
          <div class="lc-code">0    Tony<br>1    Mark<br>Name: Name, dtype: object</div>
          <p>The image shows only Tony and Mark. Real Pandas also prints a last line. It tells you the column's name and its <strong>dtype</strong> (data type). Here <code>object</code> means text. Newer Pandas versions may show <code>str</code> instead.</p>
          <p>One column on its own is called a <strong>Series</strong>. It is like one column cut out of a spreadsheet.</p>
        </div>
        <div class="lc-card">
          <h3>5. Basic operations</h3>
          <p>The fifth part of the image adds 1 to a whole table:</p>
          <div class="lc-code">import pandas as pd<br>arr = pd.DataFrame({"A": [1, 2], "B": [3, 4]})<br>print(arr + 1)</div>
          <p>Output:</p>
          <div class="lc-code">   A  B<br>0  2  4<br>1  3  5</div>
          <p>Just like a NumPy array, Pandas does the maths on every value at once. Pandas is built on top of NumPy, so this should feel familiar.</p>
        </div>
        <div class="lc-card">
          <h3>6. Code example: city temperatures</h3>
          <p>The last code example stores cities and temperatures. The image lists "Japan" as a city. Japan is a country, so we use its capital, Tokyo, instead.</p>
          <div class="lc-code">import pandas as pd<br>data = {"City": ["Tokyo", "New York"],<br>        "Temp": [30, 35]}<br>df = pd.DataFrame(data)<br>print(df)</div>
          <p>Output:</p>
          <div class="lc-code">       City  Temp<br>0     Tokyo    30<br>1  New York    35</div>
          <p>Pandas lines up the columns for you. The image ends with the usual flow: input data goes into the AI model, and useful results come out. DataFrames often hold that input data.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build and use a DataFrame</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps from the image in the right order.</p>
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
          <p>The code editor below builds every table from the image.</p>
          <ol class="lc-list">
            <li>Run the code. Find the index numbers 0 and 1 in each table.</li>
            <li>Add a third student: <code>"Sara"</code> with <code>78</code> marks. Add her to both lists.</li>
            <li>Change <code>df["Name"]</code> to <code>df["Marks"]</code>.</li>
            <li>Add <code>"London"</code> with a temperature of <code>22</code> to the city table.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pandas lets you work with data as a table of rows and columns, called a DataFrame. You can build it, pick columns and do maths in a few lines. It is a key tool for data science, AI and machine learning.
        </div>
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
        <p class="lc-lead">The image shows how to read real data files called <strong>CSV files</strong>. A CSV file stores a table as plain text, in rows and columns. Many real AI projects start with a CSV file. Pandas can turn one into a DataFrame with a single line of code. Let us go through the image step by step.</p>
        <div class="lc-card">
          <h3>1. What is a CSV file?</h3>
          <p>The first part of the image says that CSV means <strong>Comma Separated Values</strong>. Its example file, <code>students.csv</code>, looks like this:</p>
          <div class="lc-code">Name,Marks<br>Tony,90<br>Mark,85</div>
          <ul class="lc-list">
            <li><strong>Rows are separated by a new line.</strong> Each line is one student.</li>
            <li><strong>Columns are separated by a comma.</strong> The first line holds the column names.</li>
          </ul>
          <p>The image puts a space after each comma. It is better to leave the spaces out. With spaces, Pandas reads the column name as <code>" Marks"</code>, with a space at the start. Then <code>df["Marks"]</code> would not work.</p>
          <p>You can save any spreadsheet as a CSV file. Banks, shops and schools use CSV files to share data.</p>
        </div>
        <div class="lc-card">
          <h3>2. Read a CSV with Pandas</h3>
          <p>The second part of the image reads the file into a DataFrame. Run this on your own computer, with <code>students.csv</code> in the same folder as your script.</p>
          <div class="lc-code">import pandas as pd<br><br>df = pd.read_csv("students.csv")<br>print(df)</div>
          <p>Output:</p>
          <div class="lc-code">   Name  Marks<br>0  Tony     90<br>1  Mark     85</div>
          <p><code>read_csv()</code> reads the file and builds the table for you. It uses the first line as column names. It adds the index 0, 1 for each row.</p>
        </div>
        <div class="lc-card">
          <h3>3. View the data</h3>
          <p>The third part of the image shows two ways to look at your table.</p>
          <p><code>df.head()</code> shows the first five rows. Our file has only two rows, so you see both:</p>
          <div class="lc-code">print(df.head())</div>
          <p>Output:</p>
          <div class="lc-code">   Name  Marks<br>0  Tony     90<br>1  Mark     85</div>
          <p><code>df.columns</code> shows the column names:</p>
          <div class="lc-code">print(df.columns)</div>
          <p>Output:</p>
          <div class="lc-code">Index(['Name', 'Marks'], dtype='object')</div>
          <p>Newer Pandas versions may show <code>dtype='str'</code> here. Both mean the names are text. A real file can have thousands of rows, so <code>head()</code> is the first thing most people run.</p>
        </div>
        <div class="lc-card">
          <h3>4. Why use CSV, and 5. how to access data</h3>
          <p>The image gives three reasons to use CSV. It stores real-world data, it is easy to open and edit anywhere, and AI projects use it for training and predictions.</p>
          <p>The fifth part shows how to pick columns. Use single brackets for one column:</p>
          <div class="lc-code">print(df['Name'])</div>
          <p>Output:</p>
          <div class="lc-code">0    Tony<br>1    Mark<br>Name: Name, dtype: object</div>
          <p>Use double brackets for several columns. The inner brackets are a list of column names.</p>
          <div class="lc-code">print(df[['Name', 'Marks']])</div>
          <p>Output:</p>
          <div class="lc-code">   Name  Marks<br>0  Tony     90<br>1  Mark     85</div>
          <p>Remember: one column gives you a Series. A list of columns gives you a new DataFrame. The image ends with the usual flow: the CSV data is the input, the AI model learns from it, and results come out.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from file to table</h3>
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
          <p>The code editor cannot open files. So the code keeps the contents of <code>students.csv</code> in a piece of text. <code>io.StringIO()</code> makes that text act like a file. On your own computer, you would use <code>pd.read_csv("students.csv")</code>.</p>
          <ol class="lc-list">
            <li>Run the code. Compare each output with the image.</li>
            <li>Add a new line to <code>csv_text</code>: <code>Sara,78</code>. Run it again.</li>
            <li>Add a third column. Change the first line to <code>Name,Marks,Age</code> and add an age to each row.</li>
            <li>Put a space after a comma in the first line, like <code>Name, Marks</code>. What happens to the column names?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> CSV files are a simple, common way to store real-world data as text. With Pandas, one line reads a CSV file into a DataFrame. Then you can view it, check it and pick the columns you need.
        </div>
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
        <p class="lc-lead">The image explains <strong>data cleaning</strong>. Data cleaning means fixing data that is <strong>missing</strong>, <strong>incorrect</strong> or <strong>inconsistent</strong> (written in different ways). Real data is almost never perfect. If you give an AI bad data, it gives bad results. Let us walk through the image.</p>
        <div class="lc-card">
          <h3>1. Dirty data vs clean data</h3>
          <p>The first part of the image shows two tables. In the dirty table, Japan's mark is <strong>NULL</strong>. That means the value is missing. In the clean table, the missing mark has been filled with 80.</p>
          <p>"NULL" is the word many databases use for a missing value. In Python, a missing value is written <code>None</code>. Pandas shows it as <code>NaN</code>, which means "Not a Number".</p>
          <p>Think of a paper form with one box left blank. You cannot add up the marks until you deal with that blank box.</p>
        </div>
        <div class="lc-card">
          <h3>2. Common cleaning operations in Pandas</h3>
          <p>The second part of the image lists three tools:</p>
          <ul class="lc-list">
            <li><strong>Remove missing values:</strong> <code>df.dropna()</code> removes every row that has a missing value.</li>
            <li><strong>Fill missing values:</strong> <code>df.fillna(0)</code> puts a value you choose into each gap.</li>
            <li><strong>Replace values:</strong> <code>df.replace("NA", 0)</code> swaps an old value for a new one. Here, the text "NA" becomes 0.</li>
          </ul>
          <p>Here is <code>dropna()</code> on the dirty data:</p>
          <div class="lc-code">import pandas as pd<br>df = pd.DataFrame({"Name": ["Tony", "Japan", "Mark"], "Marks": [90, None, 85]})<br>print(df.dropna())</div>
          <p>Output:</p>
          <div class="lc-code">   Name  Marks<br>0  Tony   90.0<br>2  Mark   85.0</div>
          <p>Japan's row is gone. Notice the index jumps from 0 to 2. Remember: dropping rows loses data, so filling is often better when you have little data.</p>
        </div>
        <div class="lc-card">
          <h3>3. Why clean data, and 4. a real example</h3>
          <p>The image gives four reasons. Cleaning improves the accuracy of AI models. It removes errors. It makes data reliable. It leads to better decisions and predictions.</p>
          <p>The real example shows <code>Marks = [90, null, 85]</code>. With a gap, the AI may give wrong results. After cleaning, the marks are <code>[90, 80, 85]</code>, and the AI works correctly. In Python, you would write the gap as <code>None</code>, not <code>null</code>.</p>
          <p>The data flow at the bottom shows the order: raw data from the real world, then an AI model that learns from <strong>clean</strong> data, then better results.</p>
        </div>
        <div class="lc-card">
          <h3>The code example</h3>
          <p>The code example on the right of the image fills the missing mark with 80:</p>
          <div class="lc-code">import pandas as pd<br><br>data = {<br>    "Name": ["Tony", "Japan", "Mark"],<br>    "Marks": [90, None, 85]<br>}<br><br>df = pd.DataFrame(data)<br><br>df["Marks"] = df["Marks"].fillna(80)<br><br>print(df)</div>
          <p>Output:</p>
          <div class="lc-code">    Name  Marks<br>0   Tony   90.0<br>1  Japan   80.0<br>2   Mark   85.0</div>
          <p>The image shows 90, 80 and 85. Real Pandas shows 90.0, 80.0 and 85.0. This is because a column with a missing value is stored as decimals. To get whole numbers back, add one more line:</p>
          <div class="lc-code">df["Marks"] = df["Marks"].astype(int)<br>print(df)</div>
          <p>Output:</p>
          <div class="lc-code">    Name  Marks<br>0   Tony     90<br>1  Japan     80<br>2   Mark     85</div>
          <p><code>astype(int)</code> changes the type of the column to whole numbers. Now the table matches the clean data in the image.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the cleaning steps</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps for cleaning the marks table in the right order.</p>
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
          <p>The code editor below has the dirty data from the image. It counts the gaps, then tries both fixes.</p>
          <ol class="lc-list">
            <li>Run the code. Find where Japan's mark shows as <code>NaN</code>.</li>
            <li>Change <code>fillna(80)</code> to <code>fillna(0)</code>. Is 0 a fair mark to fill in?</li>
            <li>Make Mark's mark missing too by changing <code>85</code> to <code>None</code>. How many rows does <code>dropna()</code> keep now?</li>
            <li>Fill the gap with the average mark instead: <code>fillna(df["Marks"].mean())</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Clean data gives better AI results and smarter predictions. Always look for missing, wrong or inconsistent values first. Then remove them, fill them or replace them before you train a model.
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
        <p class="lc-lead">The image explains <strong>data visualisation</strong>. That means showing data as charts and graphs. A picture is easier to understand than a list of numbers. In Python, the most popular library for charts is <strong>Matplotlib</strong>. Let us go through the image part by part.</p>
        <div class="lc-card">
          <h3>1. Example: a line chart</h3>
          <p>The first part of the image shows the data <code>Marks = [90, 80, 85]</code> as a line chart. It is called "Marks Over Students". Students 1, 2 and 3 are along the bottom. Marks are up the side.</p>
          <p>The line goes down from 90 to 80, then up to 85. A line chart shows how values change from one point to the next. You can see the dip at once, without reading every number.</p>
          <p>A weight chart at the doctor's is an everyday line chart. It shows how a child grows over the years.</p>
        </div>
        <div class="lc-card">
          <h3>2. Types of charts</h3>
          <p>The second part of the image names three common charts:</p>
          <ul class="lc-list">
            <li><strong>Line chart:</strong> shows a trend over time.</li>
            <li><strong>Bar chart:</strong> compares values between groups.</li>
            <li><strong>Pie chart:</strong> shows parts of a whole, as percentages.</li>
          </ul>
          <p>Remember: pick the chart that matches your question. Change over time needs a line. Comparing groups needs bars. Sharing out a whole needs a pie.</p>
        </div>
        <div class="lc-card">
          <h3>3. Bar chart example</h3>
          <p>The third part of the image compares three students, A, B and C, with marks 90, 80 and 85. Each student gets one bar. The tallest bar is A. You can compare the students in a second.</p>
          <p>This code draws the same bar chart. It needs Matplotlib, so run it on your own computer. A window opens with the graph.</p>
          <div class="lc-code">import matplotlib.pyplot as plt<br><br>names = ["A", "B", "C"]<br>marks = [90, 80, 85]<br><br>plt.bar(names, marks)<br>plt.title('Marks Comparison')<br>plt.xlabel('Student')<br>plt.ylabel('Marks')<br>plt.show()</div>
          <p>The image also says why we visualise data. Graphs are easy to understand. They help you find patterns quickly. They lead to better decisions in AI and in real life.</p>
        </div>
        <div class="lc-card">
          <h3>Code example (Matplotlib)</h3>
          <p>The right side of the image shows a full Matplotlib example. Run it on your own computer:</p>
          <div class="lc-code">import matplotlib.pyplot as plt<br><br>data = [10, 20, 30]<br><br>plt.plot(data, marker='o', color='cyan')<br>plt.title('Simple Line Plot')<br>plt.xlabel('Index')<br>plt.ylabel('Value')<br>plt.grid(True, linestyle='--', alpha=0.3)<br>plt.show()</div>
          <ul class="lc-list">
            <li><code>plt.plot()</code> draws a line. <code>marker='o'</code> puts a dot on each point.</li>
            <li><code>plt.title()</code>, <code>plt.xlabel()</code> and <code>plt.ylabel()</code> add the title and the axis names.</li>
            <li><code>plt.grid()</code> adds faint dashed lines. <code>alpha=0.3</code> makes them light.</li>
            <li><code>plt.show()</code> opens the graph.</li>
          </ul>
          <p>The output graph has three dots: 10, 20 and 30. They sit at index 0, 1 and 2, because Python counts from 0. The image ends with the usual flow: raw data, then an AI model, then results. Charts help you understand the data before and after the model.</p>
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
          <p>The code editor below cannot draw Matplotlib graphs. So it draws the bar chart from the image with text. Each <code>#</code> is worth 5 marks. Then it finds the patterns that the charts show.</p>
          <ol class="lc-list">
            <li>Run the code. Which student has the longest bar?</li>
            <li>Change B's mark from <code>80</code> to <code>95</code>. Who is the highest now?</li>
            <li>Add a fourth student, <code>"D"</code>, with <code>70</code> marks. Add them to both lists.</li>
            <li>Change <code>mark // 5</code> to <code>mark // 10</code>. What happens to the bars?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Graphs turn numbers into pictures that are easy to understand. Use a line chart for change over time, a bar chart to compare groups, and a pie chart for parts of a whole. Good charts help you make better decisions.
        </div>
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
        <p class="lc-lead">The image explains <strong>Machine Learning (ML)</strong>. ML is a way of programming where machines <strong>learn patterns from data</strong>. You do not write every rule by hand. You give the machine examples, and it finds the pattern itself. Then it uses that pattern to make <strong>predictions</strong> for new data.</p>
        <div class="lc-card">
          <h3>1. Example: marks and results</h3>
          <p>The first part of the image shows a small table of <strong>training data</strong>. Training data is the set of examples you give the machine. One student got 90 marks and passed. Another got 40 marks and failed.</p>
          <p>The machine looks at these rows and learns a pattern. Then a new student arrives with 75 marks. The machine predicts "Pass". Nobody told it the pass mark. It worked it out from the examples.</p>
          <p>An everyday example: a child sees a few dogs and a few cats. Soon the child can name a new animal correctly. Nobody gave the child a list of rules.</p>
          <p><strong>Remember:</strong> examples go in, a learned pattern comes out.</p>
        </div>
        <div class="lc-card">
          <h3>2. The Machine Learning flow</h3>
          <p>The second part of the image shows three steps:</p>
          <ul class="lc-list">
            <li><strong>Data:</strong> you give input examples.</li>
            <li><strong>Learning:</strong> the machine finds patterns in them.</li>
            <li><strong>Prediction:</strong> the machine gives an output for something new.</li>
          </ul>
          <p>Think of a music app. It sees the songs you play (data). It finds what you like (learning). Then it suggests a new song (prediction).</p>
          <p><strong>Remember:</strong> Data, then Learning, then Prediction.</p>
        </div>
        <div class="lc-card">
          <h3>3. Think like this: rules or learning</h3>
          <p>The third part of the image compares two ways to program. In <strong>normal programming</strong>, you write the rules and the computer follows them. For example: "If marks are 50 or more, say Pass."</p>
          <p>In <strong>machine learning</strong>, the machine learns the rules from data. Then the machine makes decisions with them. This helps when rules are too hard to write. Try writing rules for "Is this photo a cat?" It is almost impossible by hand.</p>
          <p><strong>Remember:</strong> normal programming means you write rules. ML means the machine learns them.</p>
        </div>
        <div class="lc-card">
          <h3>4. The ChatGPT example</h3>
          <p>The image also shows ChatGPT. ChatGPT learned from huge amounts of text, questions and answers. You ask a question, and it gives an answer. It uses patterns it learned from all that text. That is machine learning too.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example</h3>
          <p>The image shows this code. It uses <strong>scikit-learn</strong>, a free Python library for machine learning. The inputs are 1, 2 and 3. The correct answers are 2, 4 and 6.</p>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br>import numpy as np<br><br># Data<br>x = np.array([[1], [2], [3]])<br>y = np.array([2, 4, 6])<br><br># Model<br>model = LinearRegression()<br>model.fit(x, y)<br><br># Prediction<br>print(model.predict([[4]]))</div>
          <p>Output:</p>
          <div class="lc-code">[8.]</div>
          <ul class="lc-list">
            <li><code>model.fit(x, y)</code> is the learning step. It means "learn from these examples".</li>
            <li><code>model.predict([[4]])</code> is the prediction step. It asks about a new input, 4.</li>
            <li>You never wrote "multiply by 2". The model found that pattern by itself.</li>
            <li><code>[8.]</code> is a list with one decimal number, 8.0.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Key points from the image</h3>
          <ul class="lc-list">
            <li><strong>Learn from data:</strong> the machine finds patterns automatically.</li>
            <li><strong>Make predictions:</strong> it uses those patterns to predict new results.</li>
            <li><strong>Improve over time:</strong> more good data usually makes the model better.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: rules or machine learning?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Does each program follow rules a person wrote, or does it learn from data?</p>
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
          <p>The code editor below has the image's example, plus a normal rule to compare. Click Run and read the output. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change <code>[[4]]</code> to <code>[[10]]</code>. The model should predict 20.</li>
            <li>Change <code>y</code> to <code>[3, 6, 9]</code>. What does "Multiply by" show now?</li>
            <li>Change the rule's pass mark from 50 to 80. Is 75 still a pass?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Machine Learning means learning patterns from data to make predictions. The machine makes smart decisions without you writing every rule.</div>
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
        <p class="lc-lead">The image explains <strong>training data</strong>. Training data is the data you give the machine so it can <strong>learn patterns</strong> and make <strong>predictions</strong>. Without training data, a model has nothing to learn from.</p>
        <div class="lc-card">
          <h3>1. Example: study hours vs marks</h3>
          <p>The first part of the image shows a table. Each row is one student:</p>
          <ul class="lc-list">
            <li>1 hour of study gave 30 marks.</li>
            <li>2 hours of study gave 50 marks.</li>
            <li>3 hours of study gave 70 marks.</li>
          </ul>
          <p>The machine looks at this data and learns: more study means more marks. Less study means fewer marks.</p>
          <p>An everyday example: a café owner notes how many cups sell on hot and cold days. Those notes are training data. They show a pattern the owner can learn from.</p>
          <p><strong>Remember:</strong> each row of training data is one example.</p>
        </div>
        <div class="lc-card">
          <h3>2. The training data flow</h3>
          <p>The second part of the image shows three steps:</p>
          <ul class="lc-list">
            <li><strong>Training data:</strong> examples are given to the machine.</li>
            <li><strong>Learning:</strong> the machine finds patterns.</li>
            <li><strong>Model:</strong> the result is ready to make predictions.</li>
          </ul>
          <p>A <strong>model</strong> is the pattern the machine has learned, saved so you can use it again.</p>
        </div>
        <div class="lc-card">
          <h3>3. Input vs output</h3>
          <p>The third part of the image splits each row into two parts:</p>
          <ul class="lc-list">
            <li><strong>Input (X):</strong> hours of study. This is the data you give the machine.</li>
            <li><strong>Output (Y):</strong> marks. This is what you want the machine to predict.</li>
          </ul>
          <p>In a weather app, the input might be today's cloud cover. The output might be "rain" or "no rain".</p>
          <p><strong>Remember:</strong> X is what you know. Y is what you want to predict.</p>
        </div>
        <div class="lc-card">
          <h3>4. ChatGPT and why data matters</h3>
          <p>The image says ChatGPT was trained on huge amounts of data, such as books, articles, websites and conversations. That is why it can answer so many questions.</p>
          <p>The image also gives three reasons training data is important:</p>
          <ul class="lc-list">
            <li><strong>Better learning:</strong> good data helps the machine learn well.</li>
            <li><strong>Accurate predictions:</strong> more and better data leads to better results.</li>
            <li><strong>Real-life impact:</strong> better predictions help in real-world apps.</li>
          </ul>
          <p>Bad data teaches bad patterns. If the marks were typed wrongly, the model would learn the wrong rule.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example</h3>
          <p>The image shows this code. <code>x</code> holds the hours (input). <code>y</code> holds the marks (output).</p>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br>import numpy as np<br><br># Training data (Hours -&gt; Marks)<br>x = np.array([[1], [2], [3]])<br>y = np.array([30, 50, 70])<br><br># Model training<br>model = LinearRegression()<br>model.fit(x, y)<br><br>print("Model trained")</div>
          <p>Output:</p>
          <div class="lc-code">Model trained</div>
          <p>The line <code>model.fit(x, y)</code> hands the training data to the model. The model learns from it. The last line just prints a message to show the step is done.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the training data flow in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put these steps from the image in the right order.</p>
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
          <p>The code editor below uses the image's training data. Click Run. It prints each example, trains the model and shows the pattern. Then try these changes:</p>
          <ol class="lc-list">
            <li>Add a fourth student: put <code>[4]</code> in <code>x</code> and <code>90</code> in <code>y</code>. Run it again.</li>
            <li>Change the marks to <code>[20, 50, 80]</code>. How many marks does each hour add now?</li>
            <li>Make <code>x</code> and <code>y</code> different lengths. Read the error. Every input needs an output.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Training data teaches the machine by showing it examples. Better data leads to better learning, and better learning leads to better results.</div>
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
        <p class="lc-lead">The image explains <strong>supervised learning</strong>. Supervised learning uses <strong>labelled data</strong>: each input comes with its correct output. The machine learns the relationship between the input and the output. Then it predicts the output for new inputs.</p>
        <div class="lc-card">
          <h3>1. Example: hours vs marks</h3>
          <p>The first part of the image shows the same table as before. The input is hours of study. The output is marks: 1 hour gave 30, 2 hours gave 50, 3 hours gave 70.</p>
          <p>The correct output is called the <strong>label</strong>. It is like the answer at the back of a textbook. The machine checks its guesses against these answers while it learns.</p>
          <p>An everyday example: a teacher shows a child flash cards with a picture and its name. The name on each card is the label.</p>
          <p><strong>Remember:</strong> supervised means every example has its correct answer.</p>
        </div>
        <div class="lc-card">
          <h3>2. The supervised learning flow</h3>
          <p>The second part of the image shows three steps:</p>
          <ul class="lc-list">
            <li><strong>Input data (with labels):</strong> examples with the correct output.</li>
            <li><strong>Learning (model training):</strong> the machine finds patterns.</li>
            <li><strong>Prediction (new data):</strong> the machine predicts the output for a new input.</li>
          </ul>
          <p>In short: the machine learns from labelled data to predict new results.</p>
        </div>
        <div class="lc-card">
          <h3>3. Two types of supervised learning</h3>
          <p>The third part of the image shows two types:</p>
          <ul class="lc-list">
            <li><strong>Classification</strong> predicts a <strong>category</strong>, also called a label. Example: is this email "Spam" or "Not Spam"?</li>
            <li><strong>Regression</strong> predicts a <strong>number</strong> that can be any value. Example: how many marks for a given number of hours?</li>
          </ul>
          <p>Ask yourself: is the answer a name from a short list, or a number? A name means classification. A number means regression.</p>
          <p><strong>Remember:</strong> classification gives labels, regression gives numbers.</p>
        </div>
        <div class="lc-card">
          <h3>4. The ChatGPT example</h3>
          <p>The image says ChatGPT is trained on huge amounts of text. Part of its training uses example questions with good answers written by people. Those good answers act like labels. So supervised learning helps ChatGPT give useful answers.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example</h3>
          <p>The image shows this code. It trains on the labelled data and predicts marks for 4 hours.</p>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br>import numpy as np<br><br># Training data<br>x = np.array([[1], [2], [3]])<br>y = np.array([30, 50, 70])<br><br># Train model<br>model = LinearRegression()<br>model.fit(x, y)<br><br># Predict marks for 4 hours<br>print(model.predict([[4]]))</div>
          <p>Output:</p>
          <div class="lc-code">[90.]</div>
          <p>Each extra hour adds 20 marks in the data. So 4 hours gives 70 + 20 = 90. This is regression, because the answer is a number.</p>
          <p>The image's key points say it well. Supervised learning uses labelled data and finds patterns. It makes predictions, and better data gives better accuracy.</p>
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
          <p>The code editor below has the image's code, plus a few extra predictions. Click Run. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change <code>[[4]]</code> to <code>[[0]]</code>. The model predicts the marks for no study.</li>
            <li>Add <code>[1.5]</code> to <code>new_hours</code> and run again.</li>
            <li>Add a new email and its label to the <code>labels</code> dictionary.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Supervised learning means learning from correct answers, called labelled data. Input plus correct output leads to learning, and learning leads to better predictions.</div>
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
        <p class="lc-lead">The image explains <strong>model training</strong>. Training means teaching the machine with data. During training, it learns patterns and becomes ready to make predictions. The image sums it up as: Training Data, then Training, then Model Ready.</p>
        <div class="lc-card">
          <h3>1. Example: hours vs marks</h3>
          <p>The first part of the image uses the hours and marks table again: 1 hour gave 30, 2 hours gave 50, 3 hours gave 70. The machine learns that more study gives more marks.</p>
          <p>An everyday example: a new barista practises making coffee many times. After enough practice, they are ready to serve customers. Training a model works in a similar way.</p>
        </div>
        <div class="lc-card">
          <h3>2. What the model learns</h3>
          <p>The second part of the image says that during training, the machine finds the relationship between hours and marks. This learned rule is called the <strong>model</strong>.</p>
          <p>The image writes the rule as "Marks = Hours × 20". Let us check it. For 1 hour, 1 × 20 = 20, but the table says 30. So that rule is not quite right.</p>
          <p>The rule the model really learns is <strong>Marks = Hours × 20 + 10</strong>. Check it: 1 × 20 + 10 = 30, 2 × 20 + 10 = 50, 3 × 20 + 10 = 70. Every row matches. The "× 20" part is right: each extra hour adds 20 marks. The model also learns a starting value of 10.</p>
          <p><strong>Remember:</strong> the model is the learned rule, and you can check it against the data.</p>
        </div>
        <div class="lc-card">
          <h3>3. The training flow</h3>
          <p>The third part of the image shows three steps:</p>
          <ul class="lc-list">
            <li><strong>Training data:</strong> you give data with input and output.</li>
            <li><strong>Training process:</strong> the machine learns patterns from the data.</li>
            <li><strong>Model ready:</strong> the model can now make predictions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>4. The important step: model.fit(x, y)</h3>
          <p>The fourth part of the image points to one line. This line trains the model:</p>
          <div class="lc-code">model.fit(x, y)</div>
          <p>It means "learn from this data". Before this line, the model knows nothing. After it, the model has its rule.</p>
          <p>The image also mentions ChatGPT. ChatGPT was trained on huge data, such as books, articles and conversations. That training is why it can answer your questions. It is the same idea at a much bigger size.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example</h3>
          <p>The image shows this code:</p>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br>import numpy as np<br><br># Data<br>x = np.array([[1], [2], [3]])<br>y = np.array([30, 50, 70])<br><br># Model<br>model = LinearRegression()<br>model.fit(x, y)<br><br># Training<br>print("Model is trained")</div>
          <p>Output:</p>
          <div class="lc-code">Model is trained</div>
          <p>The training really happens in <code>model.fit(x, y)</code>. The print line only shows a message after it finishes.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the training step by step</h3>
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
          <p>The code editor below trains the image's model and prints the rule it learned. Click Run. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change <code>y</code> to <code>[40, 60, 80]</code>. What rule does the model learn now?</li>
            <li>Move <code>model.fit(x, y)</code> below the rule lines. Read the error: the model is not trained yet.</li>
            <li>Put it back, then add a fourth row: <code>[4]</code> and <code>90</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Model training teaches the machine using data. The steps are Data, Training, Model Ready, then Predictions.</div>
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
        <p class="lc-lead">The image explains <strong>prediction</strong>. Prediction means using a trained model to guess the output for <strong>new, unseen data</strong>. Unseen data is data the model did not see during training. The image shows it as Model, then Prediction.</p>
        <div class="lc-card">
          <h3>1. Example: hours vs marks</h3>
          <p>The first part of the image shows the training table: 1 hour gave 30, 2 hours gave 50, 3 hours gave 70. Then a new input arrives: Hours = 4. Nobody in the table studied for 4 hours. The model must predict the marks.</p>
          <p>The image says the answer is 80. The code in the image prints 90. These two do not match, so let us check which is right.</p>
          <p>Each extra hour adds 20 marks: 30, 50, 70. The next step is 70 + 20 = <strong>90</strong>. So the correct prediction is 90, as the code output shows.</p>
          <p>An everyday example: a bus comes at 8:00, 8:15 and 8:30. You can predict the next one at 8:45.</p>
        </div>
        <div class="lc-card">
          <h3>2. What the model learned</h3>
          <p>The second part of the image says the model learned "Marks = Hours × 20". That rule misses one part. The full rule the model learned is:</p>
          <div class="lc-code">Marks = Hours × 20 + 10</div>
          <p>So for 4 hours: 4 × 20 + 10 = 90. You can ask the model for its rule in code:</p>
          <div class="lc-code">print(round(model.coef_[0]), round(model.intercept_))</div>
          <p>Output:</p>
          <div class="lc-code">20 10</div>
          <p><code>coef_</code> is how much each hour adds. <code>intercept_</code> is the starting value. We use <code>round()</code> to hide tiny decimal noise.</p>
          <p><strong>Remember:</strong> if a result looks odd, check it against the data by hand.</p>
        </div>
        <div class="lc-card">
          <h3>3. The prediction flow and the important line</h3>
          <p>The third part of the image shows: Model (already trained), then New Input (Hours = 4), then Prediction. The fourth part points to the line that makes the prediction:</p>
          <div class="lc-code">model.predict([[4]])</div>
          <p>It means "give output for this new input, using what you learned". The double brackets are needed. The outer list holds rows. The inner list holds one row with one input value.</p>
        </div>
        <div class="lc-card">
          <h3>4. The ChatGPT example</h3>
          <p>The image shows a question like "Explain Machine Learning." ChatGPT never saw your exact question during training. It predicts the best possible answer, based on what it learned. That is prediction on new, unseen data.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example</h3>
          <p>The image shows this code:</p>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br>import numpy as np<br><br># Data<br>x = np.array([[1], [2], [3]])<br>y = np.array([30, 50, 70])<br><br># Model<br>model = LinearRegression()<br>model.fit(x, y)<br><br># Prediction<br>print(model.predict([[4]]))</div>
          <p>Output:</p>
          <div class="lc-code">[90.]</div>
          <p>The model is trained once with <code>fit</code>. After that, you can call <code>predict</code> as many times as you like.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: from data to prediction</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps from the image's key takeaway in order.</p>
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
          <p>The code editor below trains the image's model and makes predictions. Click Run. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change the "By hand" line to <code>hours * 20</code> only. It prints 80, which does not match the model.</li>
            <li>Add <code>[2.5]</code> to <code>new_inputs</code>. Check the answer by hand: 2.5 × 20 + 10.</li>
            <li>Change <code>[[4]]</code> to <code>[4]</code>. Read the error: predict needs rows inside a list.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A trained model uses patterns it learned from data to predict results for new, unseen data. The path is Data, Model, New Input, Prediction.</div>
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
        <p class="lc-lead">The image explains the <strong>three main types of machine learning</strong>. They are supervised, unsupervised and reinforcement learning. Each type learns in a different way. Each one suits a different kind of problem.</p>
        <div class="lc-card">
          <h3>1. The three types</h3>
          <p>The first part of the image shows the three types side by side:</p>
          <ul class="lc-list">
            <li><strong>Supervised learning</strong> learns from labelled data (input + output). Example: predicting marks from study hours.</li>
            <li><strong>Unsupervised learning</strong> learns from data without correct answers. It finds groups or patterns by itself. Example: grouping students based on marks.</li>
            <li><strong>Reinforcement learning</strong> learns by trial and error using <strong>rewards</strong>. A reward is a score for a good action. A penalty is a score taken away for a bad one. Example: a game AI learns by winning or losing.</li>
          </ul>
          <p>Everyday examples: a student with an answer key is supervised. Sorting a box of mixed buttons by look is unsupervised. A dog learning tricks for treats is reinforcement.</p>
        </div>
        <div class="lc-card">
          <h3>2. The comparison table</h3>
          <p>The second part of the image compares the types:</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Data</th><th>How it learns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Supervised</td><td>Labelled data (input + output)</td><td>From correct answers</td><td>Marks prediction</td></tr>
              <tr><td>Unsupervised</td><td>Unlabelled data (no labels)</td><td>Finds hidden patterns</td><td>Grouping customers</td></tr>
              <tr><td>Reinforcement</td><td>Reward or penalty</td><td>By actions and feedback</td><td>Game AI, robots</td></tr>
            </tbody>
          </table>
          <p><strong>Remember:</strong> look at the data first. Labels mean supervised. No labels mean unsupervised. Rewards mean reinforcement.</p>
        </div>
        <div class="lc-card">
          <h3>3. ChatGPT context</h3>
          <p>The image says ChatGPT mainly uses supervised learning and reinforcement learning. People write example answers for it to learn from. That part is supervised. People also rate its answers, and good answers act as rewards. That part is reinforcement. Together they help it give better, more accurate answers.</p>
        </div>
        <div class="lc-card">
          <h3>4. The Python example</h3>
          <p>The image shows a supervised learning example. This is the code, with one small fix:</p>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br>import numpy as np<br><br># Data<br>x = np.array([[1], [2], [3]])<br>y = np.array([30, 50, 70])<br><br># Model and training<br>model = LinearRegression()<br>model.fit(x, y)<br><br># Prediction<br>print(model.predict([[4]]))</div>
          <p>Output:</p>
          <div class="lc-code">[90.]</div>
          <p>The image calls <code>model.fit(x, y)</code> twice. That does no harm, but it is not needed. Training once on the same data gives the same model. So the code above calls it only once.</p>
          <p>This code is supervised, because every input in <code>x</code> has its correct answer in <code>y</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which type of machine learning?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each example from the image into the right type.</p>
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
          <p>The code editor below shows all three types in one small program. Click Run. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change the supervised input from <code>[[4]]</code> to <code>[[5]]</code>.</li>
            <li>Add a student with 60 marks to the <code>marks</code> list. Which group does it join?</li>
            <li>In the reinforcement part, change the last move to <code>("left", False)</code>. What is the new total?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Different types of ML suit different problems. Labelled data fits supervised learning, unlabelled data fits unsupervised learning, and rewards fit reinforcement learning. Choose the right method to get the right results.</div>
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
        <p class="lc-lead">In this module you will build a real AI chatbot, step by step. The image above starts with the most important idea. The <strong>OpenAI API</strong> lets your own app connect to AI models like ChatGPT. Your app sends a question, and the AI sends back a smart answer. This lesson walks through the four parts of the image.</p>
        <div class="lc-card">
          <h3>1. How it works (the flow)</h3>
          <p>The first part of the image shows six steps in a row:</p>
          <ul class="lc-list">
            <li><strong>User Input:</strong> the user types a question.</li>
            <li><strong>Your App:</strong> your program sends the request.</li>
            <li><strong>OpenAI API:</strong> the request travels to OpenAI over the internet.</li>
            <li><strong>AI (ChatGPT):</strong> the AI model reads the question and writes an answer.</li>
            <li><strong>API Response:</strong> the answer is sent back to your app.</li>
            <li><strong>Output:</strong> your app shows the answer to the user.</li>
          </ul>
          <p>Think of ordering food in a café. You tell the waiter your order. The waiter takes it to the kitchen. The chef cooks it, and the waiter brings it back to you. You never go into the kitchen yourself.</p>
          <p><strong>Remember:</strong> your app never does the "thinking". It sends a request and waits for a response.</p>
        </div>
        <div class="lc-card">
          <h3>2. A real example</h3>
          <p>The second part of the image shows one full trip. The user types <strong>"Explain AI"</strong>. The AI returns: <em>"AI is a system that learns from data and improves over time."</em> Then your app shows this reply in a chat bubble.</p>
          <p>The user only sees the question and the answer. All the work in the middle is hidden. This is the same when you ask a voice assistant for the weather. You speak, and a moment later you hear the answer.</p>
          <p><strong>Remember:</strong> a good app hides the API from the user. The user just sees a fast, helpful reply.</p>
        </div>
        <div class="lc-card">
          <h3>3. What is an API?</h3>
          <p><strong>API</strong> stands for <strong>Application Programming Interface</strong>. The image draws it as a <strong>bridge</strong>. On one side is your app. On the other side is the AI system at OpenAI. The API is the bridge that lets them talk.</p>
          <p>A plug socket is a good everyday example. You do not need to build a power station to charge your phone. You just plug into the socket. In the same way, you do not need to build an AI model. You just "plug in" to the OpenAI API.</p>
          <p><strong>Remember:</strong> an API is a set of rules for how two programs talk to each other.</p>
        </div>
        <div class="lc-card">
          <h3>4. The Python example</h3>
          <p>The last part of the image shows the Python code. Here it is, with one small fix. The image puts the message inside square brackets <code>[ ]</code>. A message must be a <strong>dictionary</strong>, so it needs curly brackets <code>{ }</code>. This is the correct version:</p>
          <div class="lc-code">from openai import OpenAI<br><br>client = OpenAI()<br><br>response = client.chat.completions.create(<br>    model="gpt-4o-mini",<br>    messages=[{"role": "user", "content": "What is AI?"}]<br>)<br><br>print(response.choices[0].message.content)</div>
          <p>This code runs on your own computer, not in the browser. It needs the <code>openai</code> package (<code>pip install openai</code>), an internet connection and an API key. You will set up the key in the next lesson. When it runs, it prints an answer like the image. For example: <em>"AI is a system that learns from data and improves over time."</em> The AI may use slightly different words each time.</p>
          <ul class="lc-list">
            <li><code>from openai import OpenAI</code> loads the OpenAI tools.</li>
            <li><code>client = OpenAI()</code> creates a <strong>client</strong>. A client is the object your app uses to talk to the API.</li>
            <li><code>client.chat.completions.create(...)</code> sends the request.</li>
            <li><code>model</code> picks the AI model. Model names change over time, so check OpenAI's current model list.</li>
            <li><code>messages</code> is a list of messages. Each message has a <code>role</code> (who is talking) and <code>content</code> (what they say).</li>
          </ul>
          <p>You can try the message part right now, because it is plain Python:</p>
          <div class="lc-code">message = {"role": "user", "content": "What is AI?"}<br>print(message["role"])<br>print(message["content"])</div>
          <p>Output:</p>
          <div class="lc-code">user<br>What is AI?</div>
          <p>OpenAI also has a newer way to call models, called the Responses API. This course uses Chat Completions, which is still supported and widely used.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the request</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the six steps from the image in the right order.</p>
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
          <p>The browser cannot reach OpenAI. So the code editor below uses a <strong>pretend client</strong>. It answers from a small dictionary, but your code has the same shape as the real code. Run it first. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change the question to <code>"Explain AI"</code> and run it again.</li>
            <li>Ask a question that is not in <code>ANSWERS</code>. What does the pretend AI say?</li>
            <li>Add your own question and answer to the <code>ANSWERS</code> dictionary. Then ask it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> The OpenAI API is a bridge between your app and powerful AI models. Your app sends a question across the bridge, and the answer comes back. The full path is: User Input, Your App, OpenAI API, AI, API Response, Output.</div>
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
        <p class="lc-lead">Before your app can talk to OpenAI, it needs an <strong>API key</strong>. The image calls it a <strong>secret password</strong> for your app. In this lesson you will learn what the key does, how it works and how to keep it safe.</p>
        <div class="lc-card">
          <h3>1. What is an API key?</h3>
          <p>The first part of the image says an API key is like a login password for AI. It does three jobs:</p>
          <ul class="lc-list">
            <li><strong>Identifies your app:</strong> OpenAI knows who is asking.</li>
            <li><strong>Controls usage:</strong> OpenAI counts how much you use. Most use costs money, so the key links the cost to your account.</li>
            <li><strong>Provides secure access:</strong> only people with the key can use your account.</li>
          </ul>
          <p>The red box gives a warning. <strong>Without an API key, your app cannot communicate with OpenAI.</strong> It is like a gym membership card. No card, no entry.</p>
          <p><strong>Remember:</strong> the key belongs to your account. Anyone who has it can spend your money.</p>
        </div>
        <div class="lc-card">
          <h3>2. How it works</h3>
          <p>The second part of the image shows three boxes: <strong>Your App + API Key</strong>, then the <strong>OpenAI Server</strong>, then the <strong>AI Response</strong>. Your app sends a request with the key attached. OpenAI <strong>verifies</strong> (checks) the key. If the key is good, OpenAI returns a response.</p>
          <p>A hotel key card works the same way. You tap the card on the door. The lock checks it. If it is valid, the door opens.</p>
          <p><strong>Remember:</strong> the key is checked on every single request.</p>
        </div>
        <div class="lc-card">
          <h3>3. Example in a real app</h3>
          <p>The third part of the image follows one question. The user types <strong>"Explain AI"</strong>. The request goes out with a key that looks like <code>"sk-****"</code>. Real OpenAI keys start with <code>sk-</code>. The image hides the rest with stars, and you should do the same. Then the AI response comes back: <em>"AI is a system that learns from data and improves over time."</em></p>
          <p><strong>Remember:</strong> if you ever show a key on screen, hide most of it.</p>
        </div>
        <div class="lc-card">
          <h3>4. The important rule</h3>
          <p>The image says it in red: <strong>Never share your API key publicly! Keep it safe and secure.</strong> Do not post it in a chat or a forum. Do not put it in a screenshot. Do not upload it to GitHub inside your code. Bots search the internet for leaked keys all day.</p>
          <p>If a key does leak, delete it in your OpenAI account settings and make a new one. This is like cancelling a lost bank card.</p>
          <p><strong>Remember:</strong> treat your API key exactly like a bank PIN.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example (a safer version)</h3>
          <p>The code in the image types the key straight into the code: <code>OpenAI(api_key="your_api_key_here")</code>. This works, but it is risky. If you share the file, you share the key. A safer way is to store the key in an <strong>environment variable</strong>. This is a setting on your computer, outside your code. Name it <code>OPENAI_API_KEY</code>.</p>
          <p>On a Mac or Linux terminal, you set it like this (use your own key):</p>
          <div class="lc-code">export OPENAI_API_KEY="sk-..."</div>
          <p>On Windows PowerShell, you use <code>$env:OPENAI_API_KEY="sk-..."</code> instead. Then your Python code does not contain the key at all:</p>
          <div class="lc-code">import os<br>from openai import OpenAI<br><br># Setup API Key: read it from the environment<br>client = OpenAI(api_key=os.environ["OPENAI_API_KEY"])<br><br>response = client.chat.completions.create(<br>    model="gpt-4o-mini",<br>    messages=[{"role": "user", "content": "Explain AI"}]<br>)<br><br>print(response.choices[0].message.content)</div>
          <p>This runs on your own computer. It prints an answer like the one in the image. In fact, <code>OpenAI()</code> with no key looks for <code>OPENAI_API_KEY</code> by itself. So <code>client = OpenAI()</code> works too.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: safe or unsafe?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each habit. Does it keep your API key safe?</p>
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
          <p>The code editor below uses a <strong>fake practice key</strong>. It pretends the environment variable is set. A pretend server then checks the key. Run it and look at the three results. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change the key in the <code>os.environ</code> line to a different value. Run it. What happens to the first request?</li>
            <li>Look at the <code>mask</code> function. Change it to show only the last 2 characters.</li>
            <li>Add your new key to <code>VALID_KEYS</code> so the request works again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> An API key is a secret password that lets your app connect to OpenAI and use its models. OpenAI checks it on every request. Keep it out of your code, never share it, and replace it at once if it leaks.</div>
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
        <p class="lc-lead">You know what the OpenAI API is, and you have a key. Now your app sends its first <strong>question</strong> to the AI. The image calls this <strong>sending an API request</strong>. A request is a message from your app to a server that asks it to do something.</p>
        <div class="lc-card">
          <h3>1. How it works (the flow)</h3>
          <p>The first part of the image shows four steps:</p>
          <ul class="lc-list">
            <li><strong>User:</strong> the user types a question.</li>
            <li><strong>Your App:</strong> the app prepares the request.</li>
            <li><strong>OpenAI API:</strong> the request is sent to OpenAI.</li>
            <li><strong>AI (ChatGPT):</strong> the AI receives the request and processes it.</li>
          </ul>
          <p>This is like posting a letter. You write it, put it in an envelope with an address, and post it. This lesson stops when the letter is sent. The reply comes in the next lesson.</p>
          <p><strong>Remember:</strong> this lesson is only about the trip <em>to</em> the AI.</p>
        </div>
        <div class="lc-card">
          <h3>2. An example question</h3>
          <p>The second part of the image shows the user's question: <strong>"What is Machine Learning?"</strong>. The dashed arrow shows your app sending it to OpenAI.</p>
          <p>Every question works the same way. "What is a neural network?" or "Give me a pancake recipe" would travel the same path.</p>
        </div>
        <div class="lc-card">
          <h3>3. What you send</h3>
          <p>The third part of the image lists the two things in every request:</p>
          <ul class="lc-list">
            <li><strong>Model name:</strong> which AI model should answer, for example <code>"gpt-4o-mini"</code>.</li>
            <li><strong>Message:</strong> the question, written as a dictionary.</li>
          </ul>
          <div class="lc-code">{<br>    "role": "user",<br>    "content": "What is Machine Learning?"<br>}</div>
          <p>The <code>role</code> says who is talking. <code>"user"</code> means a person asked this. The <code>content</code> is the text of the question. Think of a parcel label. It says who it is from and what is inside.</p>
          <p><strong>Remember:</strong> every message needs both <code>role</code> and <code>content</code>.</p>
        </div>
        <div class="lc-card">
          <h3>4. The code that sends the request</h3>
          <p>The image shows the request code twice: a short version and a full version. Here is the full one, reading the key in the safe way from the last lesson:</p>
          <div class="lc-code">from openai import OpenAI<br><br>client = OpenAI()   # reads OPENAI_API_KEY<br><br>response = client.chat.completions.create(<br>    model="gpt-4o-mini",<br>    messages=[{"role": "user",<br>               "content": "What is Machine Learning?"}]<br>)<br><br>print("Request sent successfully")</div>
          <p>This runs on your own computer, with the internet and your key. If the request works, it prints <code>Request sent successfully</code>, just like the image. If something is wrong, such as a bad key, Python stops with an error first. Then the last line never runs.</p>
          <p>Model names change over time. If <code>gpt-4o-mini</code> is not available, check OpenAI's current model list and use a newer name.</p>
        </div>
        <div class="lc-card">
          <h3>5. Next step: the response</h3>
          <p>The image ends by saying: after you send the request, OpenAI processes it and returns a response. The answer is already saved in the <code>response</code> variable. You will learn how to read it in the next lesson.</p>
          <p><strong>Remember:</strong> sending a request is the first real connection between your app and AI.</p>
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
          <p>The code editor below uses a pretend client. It records what you send, so you can look inside the request. Run it first. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change the question to one of your own and run it.</li>
            <li>Change <code>"role"</code> to <code>"rol"</code> by mistake. Run it and read the error. Then fix it.</li>
            <li>Change the model name to <code>"my-test-model"</code> and check the printed model.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Sending a request means asking the AI a question. You send two things: a model name and a message with a role and content. The path is User, Your App, OpenAI API, AI.</div>
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
        <p class="lc-lead">You sent a question to the AI. Now you need the <strong>answer</strong>. The image shows how the answer travels back to your app. It also shows exactly where to find the answer inside the <strong>response</strong>.</p>
        <div class="lc-card">
          <h3>1. How the response comes back</h3>
          <p>The first part of the image shows four steps:</p>
          <ul class="lc-list">
            <li><strong>API Request:</strong> your app sends the question to the AI.</li>
            <li><strong>AI Processing:</strong> the AI thinks and writes an answer.</li>
            <li><strong>API Response:</strong> the AI sends the answer back to your app.</li>
            <li><strong>Your App:</strong> your app receives the answer.</li>
          </ul>
          <p>It is like sending a text message to a friend. You send the question. Your friend thinks and types. Their reply then arrives on your phone.</p>
        </div>
        <div class="lc-card">
          <h3>2. A real example</h3>
          <p>The second part of the image shows you ask <strong>"What is AI?"</strong>. The AI responds: <em>"AI is a system that learns from data and improves over time."</em> Your app receives this response.</p>
          <p><strong>Remember:</strong> the response is not just the text. It is a bigger object, and the text is inside it.</p>
        </div>
        <div class="lc-card">
          <h3>3. Where is the response?</h3>
          <p>The third part of the image gives the exact path to the answer:</p>
          <div class="lc-code">response.choices[0].message.content</div>
          <p>Read it from left to right, like a postal address:</p>
          <ul class="lc-list">
            <li><code>response</code>: everything OpenAI sent back.</li>
            <li><code>.choices</code>: a list of possible answers. Usually there is only one.</li>
            <li><code>[0]</code>: the first answer in the list. Python lists start counting at 0.</li>
            <li><code>.message</code>: the message the AI wrote.</li>
            <li><code>.content</code>: the actual text of the answer.</li>
          </ul>
          <p>Think of finding a letter. You go to the building, then the post box, then box number 0. You open the envelope and read the letter inside.</p>
        </div>
        <div class="lc-card">
          <h3>4. The code line highlight</h3>
          <p>The fourth part of the image points at two parts of the path. The arrow under <code>[0]</code> says <strong>Index</strong>. An index is a position number in a list. The arrow under <code>content</code> says <strong>AI Answer</strong>. That is the text you show to the user.</p>
          <p><strong>Remember:</strong> <code>[0]</code> picks the first choice, and <code>.content</code> gives the words.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example</h3>
          <p>The last part of the image shows the full code. Here it is with the key read safely:</p>
          <div class="lc-code">from openai import OpenAI<br><br>client = OpenAI()   # reads OPENAI_API_KEY<br><br>response = client.chat.completions.create(<br>    model="gpt-4o-mini",<br>    messages=[{"role": "user",<br>               "content": "What is AI?"}]<br>)<br><br>answer = response.choices[0].message.content<br><br>print(answer)</div>
          <p>This runs on your own computer, with the internet and your API key. It prints an answer like the image. For example: <em>"AI is a system that learns from data and improves over time."</em> The real AI may choose slightly different words each time.</p>
          <p>Saving the text in a variable called <code>answer</code> is a good habit. The rest of your code becomes short and easy to read.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: find the answer</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the parts of the path in order, from the outside to the answer text.</p>
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
          <p>The code editor below builds a pretend response with the same shape as a real one. Run it and see each level of the path. Then try these changes:</p>
          <ol class="lc-list">
            <li>Change the <code>content</code> text and run it again.</li>
            <li>Change <code>response.choices[0]</code> to <code>response.choices[1]</code>. Read the error. There is only one choice, so index 1 does not exist.</li>
            <li>Print <code>answer.upper()</code> to show the answer in capital letters.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> The response is the AI's answer, packed inside an object. You unpack it with <code>response.choices[0].message.content</code>. That text is the reply you show to the user.</div>
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
        <p class="lc-lead">Now you combine everything from this module to build a <strong>mini chatbot</strong>. A chatbot is a program you can chat with. The user asks, the AI answers, and this repeats, just like a real chatbot. The image shows the chat, the flow, the plan, a preview and the code.</p>
        <div class="lc-card">
          <h3>1. A chat example</h3>
          <p>The first part of the image shows a short chat. <strong>You</strong> ask "What is AI?" at 10:30 AM. The <strong>AI</strong> answers: <em>"AI is a system that learns from data and improves over time."</em></p>
          <p>This looks like a normal messaging app. The difference is that the other side is an AI model, not a person.</p>
        </div>
        <div class="lc-card">
          <h3>2. How it works (the flow)</h3>
          <p>The second part of the image shows five steps:</p>
          <ul class="lc-list">
            <li><strong>User Input:</strong> the user types a question.</li>
            <li><strong>API Request:</strong> the app sends the request to the AI.</li>
            <li><strong>AI (Processing):</strong> the AI processes the request.</li>
            <li><strong>Response:</strong> the AI sends the answer back.</li>
            <li><strong>Chat Output:</strong> the app shows the answer to the user.</li>
          </ul>
          <p>You already know each step from the last three lessons. A chatbot just runs them again and again.</p>
        </div>
        <div class="lc-card">
          <h3>3. What we build</h3>
          <p>The third part of the image is a checklist:</p>
          <ul class="lc-list">
            <li>Take user input</li>
            <li>Send to OpenAI</li>
            <li>Get AI response</li>
            <li>Show answer</li>
            <li>Repeat (chat loop)</li>
          </ul>
          <p>The new idea is the <strong>chat loop</strong>. A loop is code that repeats. In Python, <code>while True:</code> repeats forever until you <code>break</code> out. The user types <code>exit</code> to stop. Think of a shop assistant who keeps helping customers until closing time.</p>
          <p><strong>Remember:</strong> the loop is what turns one question into a conversation.</p>
        </div>
        <div class="lc-card">
          <h3>4. Chat preview (running)</h3>
          <p>The fourth part of the image shows the chatbot in use. The user asks "What is Machine Learning?". Then they ask "How does it work?". The AI answers: <em>"It finds patterns in data and makes predictions or decisions based on those patterns."</em></p>
          <p>There is a catch. "How does it work?" only makes sense if the AI remembers the first question. The AI does <strong>not</strong> remember earlier requests by itself. Each request starts fresh. To give it memory, your app must send the earlier messages too. You can try this in the practice code below.</p>
        </div>
        <div class="lc-card">
          <h3>5. The Python example</h3>
          <p>The code in the image shows the inside of the loop, and it uses a variable called <code>user_input</code>. Here is the complete program, with the loop and the exit check from the example run:</p>
          <div class="lc-code">from openai import OpenAI<br><br>client = OpenAI()   # reads OPENAI_API_KEY<br><br>print("Mini Chatbot (type 'exit' to quit)")<br>print("-" * 40)<br><br>while True:<br>    user_input = input("You: ")<br>    if user_input.lower() == "exit":<br>        print("Goodbye!")<br>        break<br><br>    response = client.chat.completions.create(<br>        model="gpt-4o-mini",<br>        messages=[{"role": "user", "content": user_input}]<br>    )<br>    answer = response.choices[0].message.content<br>    print(f"AI: {answer}")</div>
          <p>This runs on your own computer, with the internet and your API key. <code>input("You: ")</code> waits for the user to type. <code>.lower()</code> makes "Exit" and "EXIT" work too. The example run in the image looks like this:</p>
          <div class="lc-code">Mini Chatbot (type 'exit' to quit)<br>----------------------------------------<br>You: What is AI?<br>AI: AI is a system that learns from data and improves over time.<br>You: exit<br>Goodbye!</div>
          <p><code>f"AI: {answer}"</code> is an <strong>f-string</strong>. It puts the value of <code>answer</code> inside the text.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one turn of the chat loop</h3>
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
          <p>The browser editor cannot wait for typing with <code>input()</code>. So the user's messages are stored in a list called <code>typed</code>. A pretend client answers from a dictionary. Run it first. Then try these changes:</p>
          <ol class="lc-list">
            <li>Add <code>"What is Machine Learning?"</code> to the start of the <code>typed</code> list.</li>
            <li>Change <code>"exit"</code> to <code>"EXIT"</code>. Does the chatbot still stop? Why?</li>
            <li>Add a question after <code>"exit"</code>. Run it. Why is it never asked?</li>
            <li>Challenge: make a <code>history</code> list before the loop. Append each user message to it, and send <code>messages=history</code>. This is how real chatbots remember.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> A chatbot is a continuous AI conversation. It takes input, sends it to OpenAI, gets the response and shows the answer. Then it repeats in a loop until the user types exit.</div>
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
        <p class="lc-lead">You did it! You built a complete AI chatbot application. This last lesson looks back at what you built. It reviews the full flow and the final code. Then it shows what you can do next.</p>
        <div class="lc-card">
          <h3>1. What you built</h3>
          <p>The first part of the image lists the five parts of your AI app:</p>
          <ul class="lc-list">
            <li><strong>User input:</strong> the user types a question.</li>
            <li><strong>API connection:</strong> the client, with your secret API key.</li>
            <li><strong>Send request:</strong> the model name and the message go to OpenAI.</li>
            <li><strong>Get response:</strong> you read <code>response.choices[0].message.content</code>.</li>
            <li><strong>Chatbot (conversation):</strong> a loop that keeps the chat going.</li>
          </ul>
          <p>It is like baking a cake. Each lesson gave you one ingredient. This module mixed them into one working app.</p>
        </div>
        <div class="lc-card">
          <h3>2. The full flow</h3>
          <p>The second part of the image joins every step into one path. <strong>User</strong> types a question. The <strong>App</strong> sends the request. The <strong>API</strong> connects to OpenAI. The <strong>AI</strong> processes the request. The <strong>Response</strong> sends the answer back. Finally, the <strong>Chatbot</strong> shows the answer to the user.</p>
          <p><strong>Remember:</strong> if your app ever breaks, walk along this path. Find the step where it stops working.</p>
        </div>
        <div class="lc-card">
          <h3>3. Chat preview and the key achievement</h3>
          <p>The third part of the image shows your chatbot at work. The user asks "Explain Machine Learning". The AI replies: <em>"Machine Learning is a system that learns from data and improves over time."</em></p>
          <p>The fourth part names your key achievement: <strong>you built a real AI chatbot application from scratch</strong>. Many apps you use every day work in this same way, from help desks to study helpers.</p>
        </div>
        <div class="lc-card">
          <h3>4. The final code</h3>
          <p>The image shows the whole program in one place. Here it is, with the key read safely from the environment:</p>
          <div class="lc-code">from openai import OpenAI<br><br>client = OpenAI()   # reads OPENAI_API_KEY<br><br>print("AI Chatbot (type 'exit' to quit)")<br>print("-" * 40)<br><br>while True:<br>    user_input = input("You: ")<br><br>    if user_input.lower() == "exit":<br>        print("Goodbye!")<br>        break<br><br>    response = client.chat.completions.create(<br>        model="gpt-4o-mini",<br>        messages=[{"role": "user", "content": user_input}]<br>    )<br>    answer = response.choices[0].message.content<br>    print(f"AI: {answer}")</div>
          <p>This runs on your own computer, with the internet and your API key. Model names change over time, so check OpenAI's current model list. The example run in the image looks like this:</p>
          <div class="lc-code">AI Chatbot (type 'exit' to quit)<br>----------------------------------------<br>You: What is AI?<br>AI: AI is a system that learns from data and improves over time.<br>You: exit<br>Goodbye!</div>
        </div>
        <div class="lc-card">
          <h3>5. Next steps</h3>
          <p>The fifth part of the image says these steps are very important:</p>
          <ul class="lc-list">
            <li><strong>Build real AI projects:</strong> for example, a recipe helper or a revision quiz bot.</li>
            <li><strong>Add a beautiful UI:</strong> a UI (user interface) is the screen people use. You can build one with React or Rails.</li>
            <li><strong>Deploy your application:</strong> put it on a server, so other people can use it on the web.</li>
            <li><strong>Create your own AI products:</strong> solve a real problem for real users.</li>
            <li><strong>Grow your career:</strong> show your projects to employers.</li>
          </ul>
          <p>When you deploy, keep the API key on the server, never in the web page. Anyone can read the code of a web page.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: built or next?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item from the image. Is it already in your app, or is it a next step?</p>
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
          <p>The code editor below holds your complete app, in practice form. The API call is inside a function called <code>ask_ai</code>. A pretend client answers, and the user's messages are in the <code>typed</code> list. Run it first. Then try these changes:</p>
          <ol class="lc-list">
            <li>Add a new question and answer to <code>ANSWERS</code>, and add the question to <code>typed</code>.</li>
            <li>Make the chatbot skip empty messages. Add <code>""</code> to <code>typed</code>. In the loop, use <code>if user_input == "": continue</code>.</li>
            <li>Count the questions. Make a counter before the loop, add 1 for each question and print it at the end.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip"><strong>Key Insight:</strong> Congratulations! You have completed the Beginner AI with Python course on CoffeeBean AI. Your chatbot joins five parts: user input, API connection, request, response and a chat loop. Keep coding, keep learning and keep building the future.</div>
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

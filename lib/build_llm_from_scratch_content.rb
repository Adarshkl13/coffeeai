module BuildLlmFromScratchContent
  # Build and Train an LLM from Scratch. Units (sidebar dividers): 1 Unit 1 · Data and Tokens · 7 Unit 2 · Building the Model · 11 Unit 3 · Training and Generating · 16 Unit 4 · Scaling Up · 18 Unit 5 · Tuning, Testing and Running · 22 Capstone
  # Widgets: sorter, sequence, stepper. Starter code is Python run in the browser (Pyodide; numpy, pandas, scikit-learn).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">What is a Large Language Model?</h1>
        </div>
        <p class="lc-lead">A <strong>large language model</strong> (LLM) is a program that reads text and writes text. Inside, it does one small job again and again: it guesses the next piece of text. In this course you will build a tiny LLM called <strong>TinyGPT</strong>, step by step. This lesson shows the big picture: the one job, the numbers inside, and the stages of training.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="The text Tom makes a goes into TinyGPT. TinyGPT gives a probability for each possible next word: hot 0.40, latte 0.30, flat 0.30. One word is picked and added to the text, and the loop repeats.">
            <defs><marker id="ls1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="80" width="190" height="52" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="115" y="103">"Tom makes a"</text>
              <text x="115" y="122" font-size="11" fill="#9b99b8">text so far</text>
              <line x1="212" y1="106" x2="252" y2="106" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls1a)"/>
              <rect x="256" y="72" width="140" height="68" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="326" y="102" font-weight="700" fill="#c4b5fd">TinyGPT</text>
              <text x="326" y="122" font-size="11" fill="#9b99b8">many parameters</text>
              <line x1="398" y1="106" x2="432" y2="106" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls1a)"/>
              <rect x="436" y="20" width="304" height="170" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="588" y="45" font-weight="700">Next-word probabilities</text>
              <g text-anchor="start" font-size="12.5">
                <text x="452" y="80" fill="#6ee7b7">hot</text><rect x="510" y="68" width="160" height="16" rx="3" fill="#10b981"/><text x="678" y="80" fill="#6ee7b7">0.40</text>
                <text x="452" y="112">latte</text><rect x="510" y="100" width="120" height="16" rx="3" fill="#3b82f6"/><text x="638" y="112">0.30</text>
                <text x="452" y="144">flat</text><rect x="510" y="132" width="120" height="16" rx="3" fill="#3b82f6"/><text x="638" y="144">0.30</text>
                <text x="452" y="174" fill="#9b99b8" font-size="11">all the numbers add up to 1</text>
              </g>
              <path d="M588,192 L588,222 L115,222 L115,138" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#ls1a)"/>
              <rect x="220" y="210" width="260" height="24" rx="6" fill="#1f1f44"/>
              <text x="350" y="227" font-size="12" fill="#fcd34d">pick a word, add it, predict again</text>
            </g>
          </svg>
          <figcaption>A language model scores every possible next word. The program picks one, adds it to the text and asks again. These numbers come from the toy model in the code editor below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>One job: predict the next token</h3>
          <p>A <strong>token</strong> is a small piece of text. It can be a word, part of a word, or a punctuation mark. In this lesson we use whole words to keep things simple.</p>
          <p>You give the model some text. It gives back a <strong>probability</strong> for every token it knows. A probability is a number from 0 to 1 that says how likely something is. All the probabilities add up to 1.</p>
          <p>This is called <strong>next-token prediction</strong>. To write a long answer, the program runs it in a loop:</p>
          <ol class="lc-list">
            <li>Give the model the text so far.</li>
            <li>Get a probability for every possible next token.</li>
            <li>Pick one token and add it to the text.</li>
            <li>Go back to step 1. Stop at a full stop or a special "end" token.</li>
          </ol>
          <p>Chat, summaries and code all come from this one loop. The model does not look answers up in a database. It learned which tokens usually come next.</p>
        </div>
        <div class="lc-card">
          <h3>Parameters: the numbers inside the model</h3>
          <p>A <strong>parameter</strong> is one number that the model learns. The model uses its parameters to turn text into probabilities. Training means changing these numbers a little at a time, so the guesses get better.</p>
          <p>"Large" means the model has a lot of parameters and learns from a lot of text. Here is a worked example. Each parameter is often stored in 2 bytes (a 16-bit number). So memory is roughly parameters × 2 bytes.</p>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Parameters</th><th>Memory at 2 bytes each</th></tr></thead>
            <tbody>
              <tr><td>Toy model in the editor</td><td>13</td><td>26 bytes</td></tr>
              <tr><td>GPT-2 small (2019)</td><td>about 124 million</td><td>about 0.25 GB</td></tr>
              <tr><td>A "7B" open model</td><td>about 7 billion</td><td>about 14 GB</td></tr>
            </tbody>
          </table>
          <p>For example: 7,000,000,000 × 2 = 14,000,000,000 bytes, which is 14 GB. Training needs much more memory than this. You will see why later in the course.</p>
        </div>
        <div class="lc-card">
          <h3>The three stages of training</h3>
          <p>Most chat models are trained in three stages. The model does the same job in every stage. Only the training text changes.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 250" role="img" aria-label="Three stages in a row. Pretraining uses huge amounts of plain text and gives a base model. Fine-tuning uses instruction and answer pairs and gives a model that follows requests. Alignment uses good and bad answers and gives a helpful chat model.">
              <defs><marker id="ls1b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
              <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
                <rect x="15" y="20" width="220" height="170" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="125" y="46" font-size="14" font-weight="700" fill="#93c5fd">1 · Pretraining</text>
                <text x="125" y="72" font-size="11" fill="#9b99b8">training text</text>
                <text x="125" y="90">huge amounts of plain text</text>
                <text x="125" y="116" font-size="11" fill="#9b99b8">it learns</text>
                <text x="125" y="134">language and facts</text>
                <text x="125" y="170" font-size="11.5" fill="#9b99b8">"The café opens at seven."</text>
                <line x1="237" y1="105" x2="267" y2="105" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls1b)"/>
                <rect x="270" y="20" width="220" height="170" rx="10" fill="#1f1f44" stroke="#10b981"/>
                <text x="380" y="46" font-size="14" font-weight="700" fill="#6ee7b7">2 · Fine-tuning</text>
                <text x="380" y="72" font-size="11" fill="#9b99b8">training text</text>
                <text x="380" y="90">instruction and answer pairs</text>
                <text x="380" y="116" font-size="11" fill="#9b99b8">it learns</text>
                <text x="380" y="134">to follow requests</text>
                <text x="380" y="160" font-size="11.5" fill="#9b99b8">Q: When does it open?</text>
                <text x="380" y="178" font-size="11.5" fill="#9b99b8">A: At seven.</text>
                <line x1="492" y1="105" x2="522" y2="105" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls1b)"/>
                <rect x="525" y="20" width="220" height="170" rx="10" fill="#1f1f44" stroke="#ec4899"/>
                <text x="635" y="46" font-size="14" font-weight="700" fill="#f9a8d4">3 · Alignment</text>
                <text x="635" y="72" font-size="11" fill="#9b99b8">training text</text>
                <text x="635" y="90">good and bad answers</text>
                <text x="635" y="116" font-size="11" fill="#9b99b8">it learns</text>
                <text x="635" y="134">helpful, safe replies</text>
                <text x="635" y="170" font-size="11.5" fill="#9b99b8">answer A is better than B</text>
                <text x="125" y="212" font-size="11.5" fill="#93c5fd">gives a base model</text>
                <text x="380" y="212" font-size="11.5" fill="#6ee7b7">gives an instruction model</text>
                <text x="635" y="212" font-size="11.5" fill="#f9a8d4">gives a chat model</text>
                <text x="380" y="240" font-size="12" fill="#fcd34d">The job never changes: predict the next token.</text>
              </g>
            </svg>
            <figcaption>Pretraining gives the model its knowledge of language. Fine-tuning and alignment teach it how to answer.</figcaption>
          </figure>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td><strong>Pretraining</strong></td><td>The model reads a huge amount of text and predicts each next token. This takes most of the compute. The result is a <strong>base model</strong>. It continues text, but it does not chat well.</td></tr>
              <tr><td><strong>Fine-tuning</strong></td><td>The model trains on examples of instructions and good answers. It learns the question-and-answer format.</td></tr>
              <tr><td><strong>Alignment</strong></td><td>People (or other models) compare answers. The model learns to prefer helpful, honest and safe answers. RLHF and DPO are two methods for this.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What you will build: TinyGPT</h3>
          <p>TinyGPT is a small GPT-style model. GPT means "generative pre-trained transformer". A <strong>transformer</strong> is the type of neural network inside most LLMs. Your model works like the big ones, but it is small enough to train quickly.</p>
          <ul class="lc-list">
            <li><strong>Data and tokens:</strong> collect a tiny corpus (a set of training text) about a café in York, clean it, and write a tokeniser.</li>
            <li><strong>The model:</strong> code embeddings, self-attention and transformer blocks.</li>
            <li><strong>Training:</strong> write the training loop, train, save the model and generate text.</li>
            <li><strong>Scaling up:</strong> learn how big models are trained on many GPUs.</li>
            <li><strong>Tuning and testing:</strong> instruction tuning, alignment, evaluation and running models on your own computer.</li>
          </ul>
          <p>We use short names for sizes in the whole course:</p>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Meaning</th><th>TinyGPT value</th></tr></thead>
            <tbody>
              <tr><td>B</td><td>batch size: texts processed at once</td><td>set when training</td></tr>
              <tr><td>T (block_size)</td><td>context length: tokens the model can see</td><td>16</td></tr>
              <tr><td>C (n_embd)</td><td>size of the vector for each token</td><td>32</td></tr>
              <tr><td>V</td><td>vocabulary size: how many different tokens</td><td>set by the tokeniser</td></tr>
              <tr><td>n_head, n_layer</td><td>attention heads and transformer blocks</td><td>4 and 2</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: which training stage?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each piece of training data into the stage that uses it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="pre" data-label="Pretraining"></div>
              <div data-sorter-target="bucket" data-bucket="ft" data-label="Fine-tuning"></div>
              <div data-sorter-target="bucket" data-bucket="align" data-label="Alignment"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="pre" data-why="Plain text with no questions or answers. The model just predicts each next token.">Millions of web pages and books</li>
              <li data-bucket="ft" data-why="An instruction with a good answer teaches the question-and-answer format.">"Write a menu for a café." followed by a good menu</li>
              <li data-bucket="align" data-why="Two answers with a choice of the better one is preference data. Alignment uses it.">Two replies to one question, and a note saying which is better</li>
              <li data-bucket="pre" data-why="Our café story is plain text. TinyGPT will pretrain on it.">The café in York story used in this course</li>
              <li data-bucket="ft" data-why="Question and answer pairs are instruction data.">A list of customer questions with correct answers</li>
              <li data-bucket="align" data-why="A rating of which answer is safer is a preference. It is used in alignment.">People marking a rude reply as worse than a polite one</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below has a toy "model". Its probabilities are written by hand, not learned. Part 1 makes one prediction, Part 2 generates a sentence, and Part 3 counts the parameters. Run it, then make these changes.</p>
          <ol class="lc-list">
            <li>Set <code>GREEDY = False</code> and run again. Now Part 2 picks words at random, using the probabilities. Change the number in <code>random.seed(1)</code> to get other sentences.</li>
            <li>Add a new row to <code>NEXT</code>, such as <code>"latte": {".": 1.0}</code>. Look at the parameter count in Part 3 again.</li>
            <li>Change the probabilities after <code>"a"</code> so that <code>"latte"</code> is the most likely. How do Part 1 and the greedy sentence in Part 2 change?</li>
            <li>In Part 3, add a <code>("70B model", 70_000_000_000)</code> row to the memory list. How many GB does it need at 2 bytes each?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An LLM is a big set of learned numbers that predicts the next token. Pretraining, fine-tuning and alignment all train that same job, just on different text.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny next-word "model" for a café in York.
        # We wrote these probabilities by hand. A real LLM learns them from text.
        import random

        random.seed(1)
        GREEDY = True     # True: take the most likely word. False: pick at random.

        NEXT = {
            "tom":       {"makes": 0.8, "cleans": 0.2},
            "makes":     {"a": 0.7, "the": 0.3},
            "a":         {"hot": 0.4, "latte": 0.3, "flat": 0.3},
            "hot":       {"tea": 0.5, "chocolate": 0.5},
            "flat":      {"white": 1.0},
            "the":       {"coffee": 0.6, "cakes": 0.4},
            "cleans":    {"the": 1.0},
        }

        def predict(text):
            last = text.split()[-1]                 # this toy only looks at the last word
            return NEXT.get(last, {".": 1.0})       # unknown word: end the sentence

        # ── Part 1: one prediction, a probability for each possible next word ──
        print("== Part 1: one prediction ==")
        print("After 'tom makes a', the model says:")
        for word, p in predict("tom makes a").items():
            print(f"  {word:6} {p:.2f} " + "#" * int(p * 30))

        # ── Part 2: generation, predict, pick a word, add it, and repeat ──
        print("\n== Part 2: generation ==")
        text = "tom"
        while not text.endswith("."):
            probs = predict(text)
            if GREEDY:
                word = max(probs, key=probs.get)
            else:
                word = random.choices(list(probs), weights=list(probs.values()))[0]
            text += " " + word
        print("Generated:", text)

        # ── Part 3: parameters, every number the model uses is a parameter ──
        print("\n== Part 3: parameters and memory ==")
        params = sum(len(row) for row in NEXT.values())
        print(f"This toy has {params} parameters.")
        for name, n in [("toy", params), ("GPT-2 small", 124_000_000), ("7B model", 7_000_000_000)]:
            gb = n * 2 / 1e9                        # 2 bytes per number in 16-bit format
            print(f"  {name:12} {n:>14,} parameters  about {gb:,.2f} GB")

        # Try it: set GREEDY = False and change the seed. Add "latte": {".": 1.0} to NEXT.
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">How LLMs Learn Language</h1>
        </div>
        <p class="lc-lead">Nobody labels the text that an LLM learns from. The text is its own teacher: every word is the right answer for the words before it. In this lesson you will learn how this works, how the model measures its mistakes with <strong>cross-entropy loss</strong>, and what patterns it picks up. Then you will build the simplest language model of all, a bigram model, by counting words in the café text.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="The sentence tom makes a hot tea full stop gives five training examples. Each example has the text so far, the next word as the target, the probability the bigram model gave to the target, and the loss. The losses are 0.31, 0.54, 1.44, 1.07 and 0.35. The average loss is 0.74.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <text x="380" y="26" text-anchor="middle" font-weight="700">One sentence makes five training examples</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="30" y="56">model sees</text><text x="260" y="56">target</text><text x="370" y="56">p(target)</text><text x="480" y="56">loss = −log p</text>
              </g>
              <g>
                <rect x="20" y="66" width="720" height="30" rx="6" fill="#1f1f44"/>
                <rect x="20" y="102" width="720" height="30" rx="6" fill="#27274e"/>
                <rect x="20" y="138" width="720" height="30" rx="6" fill="#1f1f44"/>
                <rect x="20" y="174" width="720" height="30" rx="6" fill="#27274e"/>
                <rect x="20" y="210" width="720" height="30" rx="6" fill="#1f1f44"/>
              </g>
              <text x="30" y="86">tom</text>
              <text x="30" y="122"><tspan fill="#9b99b8">tom</tspan> makes</text>
              <text x="30" y="158"><tspan fill="#9b99b8">tom makes</tspan> a</text>
              <text x="30" y="194"><tspan fill="#9b99b8">tom makes a</tspan> hot</text>
              <text x="30" y="230"><tspan fill="#9b99b8">tom makes a hot</tspan> tea</text>
              <g fill="#6ee7b7" font-weight="700">
                <text x="260" y="86">makes</text><text x="260" y="122">a</text><text x="260" y="158">hot</text><text x="260" y="194">tea</text><text x="260" y="230">.</text>
              </g>
              <text x="370" y="86">0.73</text><text x="370" y="122">0.59</text><text x="370" y="158">0.24</text><text x="370" y="194">0.34</text><text x="370" y="230">0.71</text>
              <text x="480" y="86">0.31</text><text x="480" y="122">0.54</text><text x="480" y="158">1.44</text><text x="480" y="194">1.07</text><text x="480" y="230">0.35</text>
              <g>
                <rect x="540" y="74" width="31" height="14" rx="3" fill="#10b981"/>
                <rect x="540" y="110" width="54" height="14" rx="3" fill="#10b981"/>
                <rect x="540" y="146" width="144" height="14" rx="3" fill="#f59e0b"/>
                <rect x="540" y="182" width="107" height="14" rx="3" fill="#f59e0b"/>
                <rect x="540" y="218" width="35" height="14" rx="3" fill="#10b981"/>
              </g>
              <text x="380" y="272" text-anchor="middle" fill="#fcd34d">average loss for this sentence = 0.74 (lower is better)</text>
            </g>
          </svg>
          <figcaption>The next word is the label, so no person has to write labels. The probabilities come from the bigram model in the code editor. It only looks at the last word (in white). A transformer looks at all of them.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Self-supervised learning</h3>
          <p>In <strong>supervised learning</strong>, people write a label for every example. For example, someone marks each email as "spam" or "not spam". That is slow and costly.</p>
          <p>LLMs use <strong>self-supervised learning</strong>. The labels come from the data itself. Take the sentence "Tom makes a hot tea." Hide the next word, ask the model to guess it, then show the real word. Every position in the text is a free training example.</p>
          <p>So a text with 216 tokens gives 215 examples. A real model reads billions of tokens, so it gets billions of examples. Later in the course you will make these examples in code: the inputs <code>x</code> and the targets <code>y</code>, which is <code>x</code> shifted by one.</p>
        </div>
        <div class="lc-card">
          <h3>Cross-entropy: how wrong was the guess?</h3>
          <p>The model gives a probability to every word. We look at the probability it gave to the <em>real</em> next word. The <strong>loss</strong> is minus the logarithm of that probability:</p>
          <p><strong>loss = −log(p of the correct next token)</strong></p>
          <p>This is called <strong>cross-entropy loss</strong>. A sure, correct guess gives a loss near 0. A low probability on the right word gives a big loss. For example, p = 0.9 gives a loss of 0.105. p = 0.5 gives 0.693, and p = 0.01 gives 4.605. Part 3 in the code editor below prints these numbers.</p>
          <p>A model that knows nothing gives every word the same chance, 1/V. Its loss is log(V). With our 85 different words, that is 4.443. Training pushes the loss down from there. Training means changing the parameters so that the average loss gets smaller.</p>
        </div>
        <div class="lc-card">
          <h3>What patterns does a model learn?</h3>
          <p>To lower the loss, the model must learn anything that helps it guess the next word. Nobody tells it to learn grammar or facts. They appear because they are useful.</p>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Example from the café text</th></tr></thead>
            <tbody>
              <tr><td>Spelling and word pieces</td><td>After "choc" comes "olate".</td></tr>
              <tr><td>Grammar</td><td>After "a" comes a thing, such as "latte" or "map".</td></tr>
              <tr><td>Facts</td><td>"Molly owns the café." and "Ellie bakes the cakes."</td></tr>
              <tr><td>Style and topic</td><td>Short, simple sentences about drinks and cakes.</td></tr>
              <tr><td>Long-range links</td><td>"A child wants a hot chocolate." Then "Tom makes a hot <em>chocolate</em>", not tea.</td></tr>
            </tbody>
          </table>
          <p>A bigram model only sees one word, so it cannot learn the last row. Transformers see the whole context, so they can.</p>
        </div>
        <div class="lc-card">
          <h3>A bigram model: learning by counting</h3>
          <p>A <strong>bigram</strong> is a pair of words next to each other. A bigram model counts every pair in the text. Then it turns the counts into probabilities.</p>
          <p>Worked example. In the café text, "tom" appears 6 times. It is followed by "makes" 5 times and "cleans" once. Part 1 in the code editor below counts this for you. So:</p>
          <ul class="lc-list">
            <li>p(makes | tom) = 5 / 6 = 0.83</li>
            <li>p(cleans | tom) = 1 / 6 = 0.17</li>
            <li>p(any other word | tom) = 0 / 6 = 0</li>
          </ul>
          <p>A probability of 0 is a problem. The loss would be −log(0), which is infinite. So we add a small number, <code>ALPHA</code>, to every count. This is called <strong>smoothing</strong>. With <code>ALPHA = 0.01</code>, p(makes | tom) becomes 0.73.</p>
          <p>The counts table has V × V = 85 × 85 = 7,225 numbers. These are the parameters of the bigram model. A neural network learns its parameters with gradients instead of counting, but the goal is the same: a low loss.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one step of learning</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one training step in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Take a piece of text from the training data</li>
              <li data-order="2">Hide the next token and give the model the tokens before it</li>
              <li data-order="3">The model gives a probability to every token in the vocabulary</li>
              <li data-order="4">Look up the probability of the real next token</li>
              <li data-order="5">Compute the loss: minus the log of that probability</li>
              <li data-order="6">Change the parameters a little so the loss goes down</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor builds a bigram model from the café text. Part 1 counts the pairs, Part 2 turns them into probabilities, Part 3 computes losses and Part 4 generates a sentence.</p>
          <ol class="lc-list">
            <li>Set <code>ALPHA = 1.0</code>. The probabilities in Part 2 get flatter, and the average loss in Part 3 goes up. Why?</li>
            <li>Set <code>START = "ellie"</code> and run it again. Is the sentence in Part 4 true to the story?</li>
            <li>In Part 2, change <code>"hot"</code> to <code>"molly"</code> in the list of words to show.</li>
            <li>Notice that "hot" is followed by "tea" and "chocolate" the same number of times. Greedy in Part 4 picks the first one in the list. Which one is it?</li>
            <li>In Part 3, add <code>0.001</code> to the list of <code>p</code> values. How big is the loss when the model is almost sure the right word will not come?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> LLMs learn by predicting the next token in plain text, so the text gives its own labels. Cross-entropy loss is −log of the probability of the right token, and training makes it smaller.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A bigram model: count which word follows which word in the café text.
        # The text gives its own answers, so no labels are needed (self-supervised).
        import numpy as np

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()

        ALPHA = 0.01       # smoothing: a small count added to every pair, so no probability is 0
        START = "tom"      # the first word for generation

        words = CAFE_TEXT.lower().replace(".", " .").split()   # "." becomes its own token
        vocab = sorted(set(words))
        V = len(vocab)
        idx = {w: i for i, w in enumerate(vocab)}
        print(f"{len(words)} tokens, vocabulary size V = {V}")

        # ── Part 1: count every pair (word, next word) ──
        print("\n== Part 1: count the pairs ==")
        counts = np.zeros((V, V))
        for a, b in zip(words, words[1:]):
            counts[idx[a], idx[b]] += 1
        row = counts[idx["tom"]]
        print(f"'tom' appears {int(row.sum())} times:", {vocab[j]: int(row[j]) for j in np.nonzero(row)[0]})

        # ── Part 2: turn each row of counts into probabilities that add up to 1 ──
        print("\n== Part 2: probabilities ==")
        probs = (counts + ALPHA) / (counts + ALPHA).sum(axis=1, keepdims=True)

        for w in ["tom", "makes", "hot"]:
            row = probs[idx[w]]
            top = np.argsort(-row)[:3]
            print(f"after '{w}':", ", ".join(f"{vocab[j]} {row[j]:.2f}" for j in top))

        # ── Part 3: cross-entropy loss, -log(probability of the real next word) ──
        print("\n== Part 3: cross-entropy loss ==")
        for p in [0.9, 0.5, 0.34, 0.1, 0.01]:
            print(f"p(correct) = {p:<4}  loss = {-np.log(p):.3f}")
        losses = [-np.log(probs[idx[a], idx[b]]) for a, b in zip(words, words[1:])]
        print(f"random guess over {V} words: {np.log(V):.3f}")
        print(f"average loss of the bigram model: {np.mean(losses):.3f}")

        # ── Part 4: generate, always take the most likely next word ──
        print("\n== Part 4: generate ==")
        out = [START]
        for _ in range(8):
            out.append(vocab[np.argmax(probs[idx[out[-1]]])])
        print("generated:", " ".join(out))

        # Try it: set ALPHA = 1.0 and START = "ellie". Then change "hot" to "molly" in the list above.
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Collecting Training Data</h1>
        </div>
        <p class="lc-lead">A language model can only learn what is in its training text. So the first real step in building an LLM is to collect that text. In this lesson you will learn where training text comes from, why licences and consent matter, and how to keep notes about your data. You will also meet the tiny corpus that TinyGPT will learn from: a short story about a café in York.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Four kinds of source, public domain books, web crawls, code repositories and licensed or own text, go through checks. The checks ask if the licence allows training, if the owner opted out, if there is personal data and if the language and topic are right. Text that passes goes into the raw corpus with a data card.">
            <defs><marker id="ls3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="110" y="22" font-size="11.5" fill="#9b99b8">sources</text>
              <rect x="15" y="34" width="190" height="42" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="110" y="60">Public domain books</text>
              <rect x="15" y="88" width="190" height="42" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="110" y="114">Web crawls</text>
              <rect x="15" y="142" width="190" height="42" rx="8" fill="#27274e" stroke="#10b981"/><text x="110" y="168">Code repositories</text>
              <rect x="15" y="196" width="190" height="42" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="110" y="222">Licensed or own text</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ls3a)">
                <path d="M207,55 L256,120"/><path d="M207,109 L256,130"/><path d="M207,163 L256,145"/><path d="M207,217 L256,155"/>
              </g>
              <rect x="260" y="34" width="230" height="204" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="375" y="60" font-weight="700" fill="#c4b5fd">Checks</text>
              <g text-anchor="start" font-size="12.5">
                <text x="278" y="96">1. Licence allows training?</text>
                <text x="278" y="130">2. Owner opted out?</text>
                <text x="278" y="164">3. Personal data inside?</text>
                <text x="278" y="198">4. Right language, topic?</text>
              </g>
              <line x1="492" y1="136" x2="526" y2="136" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls3a)"/>
              <rect x="530" y="84" width="215" height="104" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="637" y="112" font-weight="700" fill="#f9a8d4">Raw corpus</text>
              <text x="637" y="136" font-size="12">kept text plus a data card</text>
              <text x="637" y="156" font-size="11" fill="#9b99b8">source, licence, size</text>
              <text x="637" y="174" font-size="11" fill="#9b99b8">next step: cleaning</text>
              <text x="380" y="272" font-size="12" fill="#fcd34d">TinyGPT corpus: 30 sentences, 938 characters, 85 different words</text>
            </g>
          </svg>
          <figcaption>Collecting data is not only downloading. Every source goes through checks, and you write down what you kept and why.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where training text comes from</h3>
          <p>A <strong>corpus</strong> is the collection of text you train on. Big LLMs mix many kinds of text. Here are the main kinds:</p>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Example</th><th>Good to know</th></tr></thead>
            <tbody>
              <tr><td>Public domain books</td><td>Project Gutenberg</td><td>Copyright has ended, so anyone may use them. The English is often old.</td></tr>
              <tr><td>Encyclopaedias</td><td>Wikipedia dumps</td><td>Free licence (CC BY-SA). You must give credit and share changes on the same terms.</td></tr>
              <tr><td>Web crawls</td><td>Common Crawl, and filtered sets built from it such as FineWeb</td><td>Huge and mixed. Contains spam, copies and personal data, so it needs heavy cleaning.</td></tr>
              <tr><td>Code</td><td>Public code repositories, The Stack</td><td>Each repository has its own licence. The Stack lets authors ask to have their code removed.</td></tr>
              <tr><td>Licensed text</td><td>News or book archives bought from a publisher</td><td>Allowed by a contract. Costs money.</td></tr>
              <tr><td>Synthetic text</td><td>Text written by another model</td><td>Useful and cheap, but it can copy that model's mistakes. Check the model's terms of use.</td></tr>
            </tbody>
          </table>
          <p>Large models train on trillions of tokens. Teams often mix the sources in planned amounts, for example more code to make a model better at coding. Dataset sizes and rules change often, so check each project's current page.</p>
        </div>
        <div class="lc-card">
          <h3>Licences and consent</h3>
          <p>A <strong>licence</strong> tells you what you may do with someone's work. Text that is on the web is not automatically free to use.</p>
          <ul class="lc-list">
            <li><strong>Public domain:</strong> nobody owns the copyright any more. Free to use.</li>
            <li><strong>Open licences:</strong> for example CC BY 4.0. You may use the text, but you must credit the author.</li>
            <li><strong>All rights reserved:</strong> the default for most writing. You need permission.</li>
            <li><strong>Unknown:</strong> treat it as "not allowed" until you find out.</li>
          </ul>
          <p><strong>Consent</strong> means the owner agrees to the use. Websites use a file called <code>robots.txt</code> to tell crawlers which pages they must not collect. Some datasets also offer an <strong>opt-out</strong>, so authors can ask to be removed. A careful team respects both.</p>
          <p>Text can also contain <strong>personal data</strong>, such as names, emails and phone numbers. Laws like the UK GDPR protect it. You will remove it in the next lesson. The rules about AI training differ by country and keep changing. This lesson is not legal advice, so ask an expert for a real project.</p>
        </div>
        <div class="lc-card">
          <h3>The TinyGPT corpus: a café in York</h3>
          <p>Real corpora are far too big for a browser. So this course uses a tiny corpus that we wrote ourselves. There are no licence problems, and training takes seconds. The café, the town and the people are made up for this course.</p>
          <p>It has 30 short sentences, one per line. It starts like this: "The Little Bean is a small café in York. Molly owns the café. Tom makes the coffee. Ellie bakes the cakes." The full text is in the code editor below.</p>
          <p>Every lesson after this one uses this exact text. In code it is called <code>CAFE_TEXT</code>. Here is its <strong>data card</strong>, a short note with the facts about a dataset. Part 2 in the code editor below prints the same numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Field</th><th>Value</th></tr></thead>
            <tbody>
              <tr><td>Source and licence</td><td>Written for this course</td></tr>
              <tr><td>Lines (one sentence each)</td><td>30</td></tr>
              <tr><td>Characters</td><td>938</td></tr>
              <tr><td>Words and full stops</td><td>216</td></tr>
              <tr><td>Different words / different characters</td><td>85 / 35</td></tr>
            </tbody>
          </table>
          <p>A model with many parameters can memorise this text. That is fine for learning how training works. Just remember that TinyGPT will only know about one small café.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: can you train on it?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each source by what a careful team would do with it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="use" data-label="Use it"></div>
              <div data-sorter-target="bucket" data-bucket="check" data-label="Check first"></div>
              <div data-sorter-target="bucket" data-bucket="no" data-label="Do not use"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="use" data-why="Copyright has ended, so the text is free for anyone to use.">A novel from 1850 on Project Gutenberg</li>
              <li data-bucket="use" data-why="You wrote it yourself for the project, so you own it.">The café story written for this course</li>
              <li data-bucket="check" data-why="Code licences differ. Some need credit, and some do not allow certain uses.">A public code repository on GitHub</li>
              <li data-bucket="check" data-why="The licence is unknown. Treat it as not allowed until you find out.">Blog posts with no licence on the page</li>
              <li data-bucket="no" data-why="The site owner said no. A careful crawler respects robots.txt.">Pages that robots.txt asks crawlers not to collect</li>
              <li data-bucket="no" data-why="Private messages are personal data, and the people did not agree.">Private chat messages from a leaked file</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor builds the course corpus from three small sources. Part 1 keeps a source only if its licence is allowed. Part 2 prints a data card.</p>
          <ol class="lc-list">
            <li>Set <code>USE_EXTRA = True</code>. Which extra source does Part 1 add, and how do the numbers in Part 2 change?</li>
            <li>Add <code>"unknown"</code> to <code>ALLOWED</code>. Now Part 1 lets the forum posts in. Why is this a bad idea?</li>
            <li>Add your own source to <code>SOURCES</code> with the licence <code>"public domain"</code> and two short lines of text.</li>
            <li>In Part 2, change <code>most_common(6)</code> to <code>most_common(12)</code>. Which names appear most?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A model can only learn what is in its corpus. Collect text that you are allowed to use, respect opt-outs and personal data, and write a data card so others know what is inside.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Build the course corpus from several sources.
        # Keep a source only if its licence lets us train on it.
        from collections import Counter

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()

        # Each source has text and a licence. Only CAFE_TEXT is real course data.
        SOURCES = [
            {"name": "cafe_story",  "licence": "written for this course", "text": CAFE_TEXT},
            {"name": "york_notes",  "licence": "CC BY 4.0",
             "text": "York has old walls.\nThe river Ouse runs through York."},
            {"name": "forum_posts", "licence": "unknown",
             "text": "my order was late lol\nanyone know a good café?"},
        ]
        ALLOWED = {"written for this course", "public domain", "CC BY 4.0"}
        USE_EXTRA = False      # True: also keep the other allowed sources

        # ── Part 1: keep only the sources with an allowed licence ──
        print("== Part 1: check each source ==")
        corpus_lines = []
        for src in SOURCES:
            lines = src["text"].split("\n")
            if src["licence"] not in ALLOWED:
                status = "skip: licence not allowed"
            elif src["name"] != "cafe_story" and not USE_EXTRA:
                status = "skip: USE_EXTRA is False"
            else:
                status = "KEEP"
                corpus_lines += lines
            print(f"{src['name']:12} {src['licence']:24} {len(lines)} lines  {status}")

        # ── Part 2: a short "data card", simple facts about the final corpus ──
        print("\n== Part 2: data card ==")
        text = "\n".join(corpus_lines)
        words = text.lower().replace(".", " .").split()
        print("lines:", len(corpus_lines))
        print("characters:", len(text))
        print("words and full stops:", len(words))
        print("different words:", len(set(words)))
        print("different characters:", len(set(text)))
        print("most common:", Counter(words).most_common(6))

        # Try it: set USE_EXTRA = True. Then add "unknown" to ALLOWED and see why that is a bad idea.
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Cleaning and Filtering Text Data</h1>
        </div>
        <p class="lc-lead">Raw text is messy. It has extra spaces, copies of the same page, spam and personal details. If you train on it, the model learns the mess too. In this lesson you will clean text in four steps: normalise it, remove duplicates, filter low-quality lines and remove personal data. Each step is a few lines of Python.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A cleaning pipeline with five boxes. 12 raw lines, then 12 after normalising, then 10 after removing 2 duplicates, then 7 after the quality filter removes 3 junk lines, then 5 after removing 2 lines with personal data.">
            <defs><marker id="ls4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="11.5" fill="#9b99b8">lines left after each step</text>
              <rect x="15" y="40" width="128" height="130" rx="10" fill="#27274e" stroke="#9b99b8"/>
              <text x="79" y="66" font-weight="700">Raw lines</text>
              <text x="79" y="112" font-size="30" font-weight="700">12</text>
              <text x="79" y="150" font-size="11" fill="#9b99b8">messy sample</text>
              <rect x="163" y="40" width="128" height="130" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="227" y="66" font-weight="700" fill="#93c5fd">Normalise</text>
              <text x="227" y="112" font-size="30" font-weight="700">12</text>
              <text x="227" y="142" font-size="11" fill="#9b99b8">fix spaces</text>
              <text x="227" y="158" font-size="11" fill="#9b99b8">and accents</text>
              <rect x="311" y="40" width="128" height="130" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="375" y="66" font-weight="700" fill="#67e8f9">Remove copies</text>
              <text x="375" y="112" font-size="30" font-weight="700">10</text>
              <text x="375" y="150" font-size="11" fill="#9b99b8">−2 duplicates</text>
              <rect x="459" y="40" width="128" height="130" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="523" y="66" font-weight="700" fill="#fcd34d">Quality filter</text>
              <text x="523" y="112" font-size="30" font-weight="700">7</text>
              <text x="523" y="150" font-size="11" fill="#9b99b8">−3 short or junk</text>
              <rect x="607" y="40" width="138" height="130" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="676" y="66" font-weight="700" fill="#f9a8d4">Personal data</text>
              <text x="676" y="112" font-size="30" font-weight="700" fill="#6ee7b7">5</text>
              <text x="676" y="150" font-size="11" fill="#9b99b8">−2 email, phone</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls4a)">
                <line x1="144" y1="105" x2="160" y2="105"/><line x1="292" y1="105" x2="308" y2="105"/><line x1="440" y1="105" x2="456" y2="105"/><line x1="588" y1="105" x2="604" y2="105"/>
              </g>
              <text x="380" y="208" font-size="12.5" fill="#fcd34d">5 of 12 lines are kept. Print the count after every step.</text>

            </g>
          </svg>
          <figcaption>The cleaning pipeline from the code editor. The numbers are the lines left after each step, for the 12-line messy sample.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: normalise the text</h3>
          <p>To <strong>normalise</strong> text means to write the same thing in one standard way. Two common problems are extra spaces and letters with accents.</p>
          <p>The letter "é" can be stored as one character. It can also be stored as "e" plus a separate accent mark. Both look the same on screen, but the computer sees different text. The first "café" has 4 characters and the second has 5, so Python says they are not equal. Part 1 in the code editor below shows this.</p>
          <p><code>NFC</code> is a Unicode rule that joins the letter and the accent into one character. After it, both strings are equal. Without it, the tokeniser would treat the two "café" words as different tokens.</p>
          <p>Some projects also make all text lower case. We keep capital letters, so TinyGPT can learn that "York" and "Molly" start with a capital.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: remove duplicates</h3>
          <p>Web data has many copies of the same text, such as cookie banners and copied news stories. If a model sees a text many times, it may memorise it. It also wastes training time.</p>
          <ul class="lc-list">
            <li><strong>Exact duplicates:</strong> keep a set of the lines you have seen. Big projects store a short <strong>hash</strong> of each document instead (a fingerprint made by a function such as SHA-256).</li>
            <li><strong>Near duplicates:</strong> texts that are almost the same. A simple measure is <strong>Jaccard similarity</strong>: shared words divided by all different words.</li>
          </ul>
          <p>Compare "Tom makes a hot tea" with "Tom makes a hot tea today". They share 5 of 6 different words, so the score is 5 / 6 = 0.83. "Tom makes a hot tea" and "Ellie bakes the cakes" share no words, so the score is 0. Part 2 in the code editor below prints both numbers. A team might call any pair above 0.8 a near duplicate. Comparing every pair is too slow for billions of pages. Real pipelines use a faster method called <strong>MinHash</strong>, which estimates the same number.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: filter short and low-quality text</h3>
          <p>A <strong>heuristic</strong> is a simple rule. It is not perfect, but it is fast. Quality filters are usually a list of heuristics:</p>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Removes</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>At least 3 words</td><td>Fragments and menu items</td><td><code>ok</code></td></tr>
              <tr><td>At least 70% letters, digits or spaces</td><td>Symbol spam</td><td><code>$$$ CHEAP COFFEE!!! $$$</code></td></tr>
              <tr><td>No character 5 times in a row</td><td>Keyboard mashing</td><td><code>aaaaaaaaaaaa</code></td></tr>
              <tr><td>Mostly the right language</td><td>Text you do not want</td><td>A page in another language</td></tr>
            </tbody>
          </table>
          <p>Rules can remove good text too. Always look at a sample of what each rule removes. Some teams also train a small classifier (a model that sorts text into groups) to score quality.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: remove personal data</h3>
          <p><strong>Personal data</strong> is anything that can identify a real person, such as an email address or a phone number. An LLM can repeat what it saw in training. So personal data must not be in the corpus.</p>
          <p>A <strong>regular expression</strong> (regex) is a pattern for finding text. The code editor below defines two at the top: <code>EMAIL</code> finds text like something@something.something, and <code>PHONE</code> finds a UK-style number like 01632 960123. Part 3 uses them in its last step.</p>
          <p>You can <strong>drop</strong> the whole line, or <strong>mask</strong> the data with a placeholder such as <code>[EMAIL]</code>. Masking keeps the rest of the sentence. The email and phone number in our sample are made up. The number uses a range kept for drama and examples in the UK.</p>
          <p>Regex finds clear patterns, but it misses names and addresses. Real projects add special tools for this and still check samples by hand.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow two lines through the pipeline</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Raw line A">"  Tom makes the  coffee. " (with extra spaces)</li>
              <li data-kind="tool" data-label="Normalise">Extra spaces are removed. It becomes "Tom makes the coffee."</li>
              <li data-kind="check" data-label="Duplicates">That exact line is already in the corpus. Line A is removed.</li>
              <li data-kind="user" data-label="Raw line B">"Call 01632 960123 to book a table."</li>
              <li data-kind="check" data-label="Quality">It has 7 words, and most characters are letters, digits or spaces. It passes.</li>
              <li data-kind="warn" data-label="Personal data">The phone pattern matches. With MASK = False, the whole line is dropped.</li>
              <li data-kind="result" data-label="Result">5 clean lines are left. They all come from the café story.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the code editor, Part 1 compares two forms of "café" and Part 2 prints two Jaccard scores. Part 3 cleans a 12-line messy sample of the café text. It prints the count after every step and then the clean lines.</p>
          <ol class="lc-list">
            <li>Set <code>MASK = True</code>. In Part 3, the email and phone lines come back with <code>[EMAIL]</code> and <code>[PHONE]</code>.</li>
            <li>Set <code>MIN_WORDS = 5</code>. Part 3 now removes three good lines by mistake. Which ones, and why?</li>
            <li>Add your own messy line to <code>DIRTY</code>, such as <code>"!!!!!!!!"</code> or a copy of a line with extra spaces. Which step in Part 3 catches it?</li>
            <li>Set <code>MIN_LETTERS = 0.6</code>. Does the spam line get through Part 3 now?</li>
            <li>In Part 2, compare <code>"Tom makes a hot tea."</code> with <code>"Tom makes a latte."</code>. Is the score above 0.8?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Cleaning is a pipeline of simple steps: normalise, remove duplicates, filter low-quality text and remove personal data. Print the count after each step, and look at what each rule removes.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Clean a messy sample of the café text, step by step.
        import re
        import unicodedata

        DIRTY = [
            "The Little Bean is a small café in York.",   # "é" made of 2 code points
            "Molly   owns the café.  ",
            "Tom makes the coffee.",
            "Tom makes the coffee.",                       # exact copy
            "  Tom makes the  coffee. ",                   # copy after cleaning spaces
            "ok",
            "$$$ CHEAP COFFEE!!! $$$ CLICK HERE $$$",
            "Email Molly at molly@example.com for bookings.",
            "Ellie bakes the cakes.",
            "Call 01632 960123 to book a table.",
            "aaaaaaaaaaaaaaaaaaaaaaaa",
            "The cake is warm and sweet.",
        ]
        MIN_WORDS = 3          # lines with fewer words are too short
        MIN_LETTERS = 0.7      # at least 70% must be letters, digits or spaces
        MASK = False           # True: hide personal data. False: drop the whole line.

        EMAIL = re.compile(r"\S+@\S+\.\w+")       # something@something.something
        PHONE = re.compile(r"\b\d{5}\s?\d{6}\b")    # a UK-style number like 01632 960123

        def normalise(line):
            line = unicodedata.normalize("NFC", line)      # one standard form for "é"
            return " ".join(line.split())                  # remove extra spaces

        # ── Part 1: the same word in two Unicode forms (normalise) ──
        print("== Part 1: normalise with NFC ==")
        a, b = "café", "cafe\u0301"                    # é as one code point, or e + accent
        print("before NFC:", a == b, len(a), len(b))
        print("after NFC: ", normalise(a) == normalise(b))

        def jaccard(a, b):                             # shared words / all different words
            sa = set(a.lower().replace(".", "").split())
            sb = set(b.lower().replace(".", "").split())
            return len(sa & sb) / len(sa | sb)

        # ── Part 2: near duplicates with Jaccard similarity (above 0.8 = near copy) ──
        print("\n== Part 2: Jaccard similarity ==")
        print("jaccard:", round(jaccard("Tom makes a hot tea.", "Tom makes a hot tea today."), 2),
              round(jaccard("Tom makes a hot tea.", "Ellie bakes the cakes."), 2))

        def good_quality(line):
            letters = sum(ch.isalnum() or ch == " " for ch in line)
            return (len(line.split()) >= MIN_WORDS
                    and letters / len(line) >= MIN_LETTERS
                    and not re.search(r"(.)\1{4,}", line))   # no character 5 times in a row

        # ── Part 3: the full cleaning pipeline, with the count after every step ──
        print("\n== Part 3: the cleaning pipeline ==")
        lines = [normalise(l) for l in DIRTY]
        print("start:", len(lines), "lines")

        lines = list(dict.fromkeys(lines))                 # keep the first copy only
        print("after removing duplicates:", len(lines))

        lines = [l for l in lines if good_quality(l)]
        print("after quality filters:", len(lines))

        # Step 4: personal data. EMAIL and PHONE are the two regex patterns at the top.
        if MASK:
            lines = [PHONE.sub("[PHONE]", EMAIL.sub("[EMAIL]", l)) for l in lines]
        else:
            lines = [l for l in lines if not (EMAIL.search(l) or PHONE.search(l))]
        print("after personal data step:", len(lines))

        print()
        for l in lines:
            print("  " + l)

        # Try it: set MASK = True. Change MIN_WORDS to 5. Add your own messy line to DIRTY.
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Building a Tokeniser (BPE)</h1>
        </div>
        <p class="lc-lead">A model cannot read letters. It reads numbers. A <strong>tokeniser</strong> turns text into a list of token IDs, and turns IDs back into text. In this lesson you will build the kind of tokeniser that GPT models use: <strong>byte-pair encoding</strong> (BPE). You will train it on the café text, then use it to encode and decode new sentences.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 262" role="img" aria-label="On the left, the word ' the' starts as four bytes: space 32, t 116, h 104, e 101. Merge 1 joins h and e into token 256. Merge 4 joins space and t into 259. Merge 6 joins 259 and 256 into one token, 261. On the right, the training loop: count every pair, pick the most common pair, give it a new ID, replace the pair everywhere, repeat. The café text goes from 945 bytes to 621 tokens after 30 merges.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="286" y="24" font-weight="700">How the token "␣the" is built</text>
              <g text-anchor="start" font-size="12" fill="#9b99b8">
                <text x="12" y="65">start: 4 bytes</text>
                <text x="12" y="120">merge 1: h + e</text>
                <text x="12" y="175">merge 4: ␣ + t</text>
                <text x="12" y="230">merge 6: ␣t + he</text>
              </g>
              <g fill="#27274e" stroke="#3b82f6">
                <rect x="170" y="40" width="52" height="40" rx="7"/><rect x="230" y="40" width="52" height="40" rx="7"/><rect x="290" y="40" width="52" height="40" rx="7"/><rect x="350" y="40" width="52" height="40" rx="7"/>
                <rect x="170" y="95" width="52" height="40" rx="7"/><rect x="230" y="95" width="52" height="40" rx="7"/>
              </g>
              <rect x="290" y="95" width="112" height="40" rx="7" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <rect x="170" y="150" width="112" height="40" rx="7" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <rect x="290" y="150" width="112" height="40" rx="7" fill="#27274e" stroke="#10b981"/>
              <rect x="170" y="205" width="232" height="40" rx="7" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="196" y="59">␣</text><text x="256" y="59">t</text><text x="316" y="59">h</text><text x="376" y="59">e</text>
              <g font-size="11" fill="#9b99b8"><text x="196" y="74">32</text><text x="256" y="74">116</text><text x="316" y="74">104</text><text x="376" y="74">101</text></g>
              <text x="196" y="114">␣</text><text x="256" y="114">t</text><text x="346" y="114">he</text>
              <g font-size="11" fill="#9b99b8"><text x="196" y="129">32</text><text x="256" y="129">116</text></g>
              <text x="346" y="129" font-size="11" fill="#6ee7b7">256</text>
              <text x="226" y="169">␣t</text><text x="346" y="169">he</text>
              <text x="226" y="184" font-size="11" fill="#fcd34d">259</text><text x="346" y="184" font-size="11" fill="#6ee7b7">256</text>
              <text x="286" y="224">␣the</text>
              <text x="286" y="239" font-size="11" fill="#f9a8d4">261</text>
              <rect x="440" y="20" width="306" height="228" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="593" y="46" font-weight="700">The BPE training loop</text>
              <g text-anchor="start">
                <text x="460" y="76">1. Count every pair of next-door IDs</text>
                <text x="460" y="102">2. Pick the most common pair</text>
                <text x="460" y="128">3. Give it a new ID: 256, 257, …</text>
                <text x="460" y="154">4. Replace that pair everywhere</text>
                <text x="460" y="182" font-size="12" fill="#fcd34d">Repeat until you have enough merges.</text>
                <text x="460" y="212" font-size="12" fill="#9b99b8">Café text: 945 bytes → 621 tokens</text>
                <text x="460" y="232" font-size="12" fill="#9b99b8">30 merges → vocabulary size 286</text>
              </g>
            </g>
          </svg>
          <figcaption>BPE starts from bytes and joins the most common pair, again and again. ␣ marks a space. All numbers come from Part 3 of the code editor below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why not letters or whole words?</h3>
          <p>You could give every <strong>character</strong> its own ID. The vocabulary is small, but the token lists are very long. Long lists make the model slow, because attention compares every token with every other token.</p>
          <p>You could give every <strong>word</strong> its own ID. The lists are short, but the vocabulary is huge. Any new word, such as a name or a typo, has no ID at all.</p>
          <p>BPE sits in the middle. Common words become one token, such as " the" or " café". Rare words are split into smaller pieces. Nothing is ever unknown, because every text can fall back to single bytes.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Vocabulary size</th><th>Tokens for "Tom makes the café latte."</th></tr></thead>
            <tbody>
              <tr><td>Bytes only</td><td>256</td><td>26 (the "é" takes 2 bytes)</td></tr>
              <tr><td>Our BPE, 30 merges</td><td>286</td><td>10</td></tr>
              <tr><td>Whole words</td><td>One ID for every word ever seen</td><td>6, but new words fail</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 1: start from bytes</h3>
          <p>Computers store text as <strong>bytes</strong>. A byte is a number from 0 to 255. The UTF-8 standard turns each character into one to four bytes. English letters take one byte. The "é" in "café" takes two.</p>
          <p>For example, "café" becomes the five bytes 99, 97, 102, 195 and 169. The last two bytes together make the "é". Part 1 in the code editor below prints them.</p>
          <p>So the first 256 token IDs are simply the 256 possible bytes. This is called <strong>byte-level</strong> BPE. Any text in any language can be written with these 256 IDs.</p>
          <p>Before training, the text is cut into word chunks. Each word keeps the space in front of it, so " the" is one chunk. Merges never cross from one chunk into the next. GPT-2 does the same thing with a longer pattern.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: count pairs and merge</h3>
          <p>A <strong>pair</strong> is two IDs that sit next to each other. You count every pair. Then you <strong>merge</strong> the most common pair: you replace it with one new ID. Part 2 in the code editor below tries this on the tiny list [1, 2, 3, 1, 2, 4, 1, 2]. It counts the pairs with <code>Counter</code>.</p>
          <p>The pair (1, 2) appears 3 times, so it becomes the new token 5. The list becomes [5, 3, 5, 4, 5]. It got shorter: 8 IDs became 5. The <code>merge</code> function in Part 2 does this replacement. You save the rule "(1, 2) becomes 5" in a <strong>merges</strong> table. Then you count again and merge the next pair.</p>
          <p>Part 3 trains on the café text. The first merge is "h" + "e", seen 24 times. When two pairs have the same count, our code picks the one it saw first. By merge 6 the whole word " the" is one token.</p>
        </div>
        <div class="lc-card">
          <h3>Encode, decode and vocabulary size</h3>
          <ul class="lc-list">
            <li><strong>Encode</strong> (text to IDs): turn the text into bytes. Then apply the saved merges in the same order they were learned.</li>
            <li><strong>Decode</strong> (IDs to text): look up the bytes for each ID, join them, and read them as UTF-8.</li>
            <li><strong>Vocabulary size</strong> (V): 256 bytes plus the number of merges. You choose it before training.</li>
          </ul>
          <p>A bigger vocabulary gives shorter token lists. But the model needs one embedding row for every token. So a bigger vocabulary also means more parameters. GPT-2 uses 50,257 tokens. Our tiny course model uses a few hundred.</p>
          <p>Real projects do not write this loop by hand. Libraries such as Hugging Face <code>tokenizers</code> and OpenAI's <code>tiktoken</code> do the same job in fast code. Check their current docs for details. The loop inside is the one you build here.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put BPE training in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of training a BPE tokeniser in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Split the text into word chunks, each with its leading space</li>
              <li data-order="2">Turn every chunk into UTF-8 bytes, so the starting IDs are 0 to 255</li>
              <li data-order="3">Count every pair of next-door IDs in all chunks</li>
              <li data-order="4">Take the most common pair and give it the next new ID, such as 256</li>
              <li data-order="5">Replace that pair everywhere and save the rule in the merges table</li>
              <li data-order="6">Repeat until the vocabulary is the size you want</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Activity: see a real BPE tokeniser</h3>
          <p>This box uses GPT-2's real BPE tokeniser. Look at how " café" and "York" are split. Then type a made-up word and watch it break into pieces.</p>
          <div class="lcw" data-controller="tokenizer" data-tokenizer-text-value="Tom makes a latte at The Little Bean café in York."></div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. Part 1 prints the bytes of "café" and Part 2 does a toy merge. Part 3 prints some merges, the token count before and after training, and the vocabulary size.</li>
            <li>In Part 4, look at how "latte" is encoded. It is split into small pieces, because it only appears twice. Change <code>NUM_MERGES</code> to <code>60</code>. Now "lat" is one token, so "latte" needs fewer pieces.</li>
            <li>Set <code>NUM_MERGES = 0</code>. Every token in Part 4 is now a single byte. Find the IDs 195 and 169: together they make the "é".</li>
            <li>In Part 4, change the sentence in <code>encode(...)</code> to <code>"Ellie bakes warm scones."</code> Check that <code>decode</code> gives back the same text.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> BPE starts with 256 byte tokens and keeps merging the most common pair into a new token. Common words become single tokens, rare words split into pieces, and no text is ever unknown.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Train a tiny byte-pair encoding (BPE) tokenizer on the café text.
        import re
        from collections import Counter

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()

        NUM_MERGES = 30          # vocabulary size = 256 bytes + NUM_MERGES

        # ── Part 1: text becomes UTF-8 bytes (IDs 0-255) ──
        print("== Part 1: bytes ==")
        print("café as bytes:", list("café".encode("utf-8")))

        # ── Part 2: count next-door pairs and merge the most common one (a toy list) ──
        print("\n== Part 2: one merge on a toy list ==")
        ids = [1, 2, 3, 1, 2, 4, 1, 2]
        counts = Counter(zip(ids, ids[1:]))   # count next-door pairs
        print(counts.most_common(3))

        def merge(seq, pair, new_id):
            out, i = [], 0
            while i < len(seq):
                if i < len(seq) - 1 and (seq[i], seq[i + 1]) == pair:
                    out.append(new_id); i += 2        # replace the pair with one new token
                else:
                    out.append(seq[i]); i += 1
            return out

        print(merge(ids, (1, 2), 5))

        # ── Part 3: train BPE on the café text: count pairs, merge the top pair, repeat ──
        print("\n== Part 3: train on the café text ==")
        # Split into word chunks (a word keeps its space), then turn each chunk into bytes.
        chunks = re.findall(r" ?\w+| ?[^\s\w]+|\s+", CAFE_TEXT)
        seqs = [list(c.encode("utf-8")) for c in chunks]
        vocab = {i: bytes([i]) for i in range(256)}   # IDs 0-255 are the 256 bytes
        merges = {}                                   # (id, id) -> new id
        print("bytes before training:", sum(len(s) for s in seqs))
        for step in range(NUM_MERGES):
            counts = Counter(p for s in seqs for p in zip(s, s[1:]))
            pair, n = counts.most_common(1)[0]
            new_id = 256 + step
            seqs = [merge(s, pair, new_id) for s in seqs]
            merges[pair] = new_id
            vocab[new_id] = vocab[pair[0]] + vocab[pair[1]]
            if step < 8 or step % 5 == 4:
                print(f"merge {step + 1:2}: {vocab[new_id].decode('utf-8', 'replace')!r:9} id {new_id}  seen {n} times")

        print("tokens after training:", sum(len(s) for s in seqs), "| vocabulary size:", len(vocab))

        # ── Part 4: encode new text (apply the merges in order) and decode it back ──
        print("\n== Part 4: encode and decode ==")
        def encode(text):
            ids = []
            for c in re.findall(r" ?\w+| ?[^\s\w]+|\s+", text):
                seq = list(c.encode("utf-8"))
                while len(seq) > 1:
                    pair = min(zip(seq, seq[1:]), key=lambda p: merges.get(p, 10**9))
                    if pair not in merges:
                        break                             # no learned merge left
                    seq = merge(seq, pair, merges[pair])
                ids += seq
            return ids

        def decode(ids):
            return b"".join(vocab[i] for i in ids).decode("utf-8", errors="replace")

        ids = encode("Tom makes the café latte.")
        print("encode:", ids)
        print("pieces:", [vocab[i].decode("utf-8", "replace") for i in ids])
        print("decode:", decode(ids))
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Creating Token and Position Embeddings</h1>
        </div>
        <p class="lc-lead">Your tokeniser turns text into token IDs. But an ID such as 75 is only a name. It says nothing about the meaning of the token. In this lesson you build the first layer of TinyGPT. It turns each ID into a list of numbers called an <strong>embedding</strong>. It also adds a second embedding that tells the model <em>where</em> each token sits. You will learn the shape <code>(B, T, C)</code>, which you will see in every layer from now on.</p>
        <figure class="lc-diagram">
        <svg viewBox="0 0 760 306" role="img" aria-label="Embedding lookup for the line tom makes a hot. Each token ID picks one row of 8 numbers from the token table. Each position, 0 to 3, picks one row from the position table. The two rows are added to give x. Shapes: idx (2, 4), token rows (2, 4, 8), position rows (4, 8), x (2, 4, 8).">
            <defs><marker id="ls6a" markerUnits="userSpaceOnUse" markerWidth="9" markerHeight="9" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="80" y="34" font-weight="700">token, ID</text>
              <text x="252" y="34" font-weight="700" fill="#93c5fd">token table row</text>
              <text x="437" y="34" font-weight="700" fill="#fcd34d">position table row</text>
              <text x="622" y="34" font-weight="700" fill="#6ee7b7">x = token + position</text>
              <rect x="20" y="50" width="120" height="26" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="80" y="68">tom · 75</text>
              <line x1="143" y1="63" x2="172" y2="63" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls6a)"/>
              <rect x="180" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.39" stroke="#3b82f6" stroke-width="0.8"/><rect x="198" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.46" stroke="#3b82f6" stroke-width="0.8"/><rect x="216" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.44" stroke="#3b82f6" stroke-width="0.8"/><rect x="234" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.62" stroke="#3b82f6" stroke-width="0.8"/><rect x="252" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.26" stroke="#3b82f6" stroke-width="0.8"/><rect x="270" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.83" stroke="#3b82f6" stroke-width="0.8"/><rect x="288" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.4" stroke="#3b82f6" stroke-width="0.8"/><rect x="306" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.58" stroke="#3b82f6" stroke-width="0.8"/>
              <text x="345" y="68" font-size="16" fill="#9b99b8">+</text>
              <rect x="365" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.38" stroke="#f59e0b" stroke-width="0.8"/><rect x="383" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.54" stroke="#f59e0b" stroke-width="0.8"/><rect x="401" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.3" stroke="#f59e0b" stroke-width="0.8"/><rect x="419" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.29" stroke="#f59e0b" stroke-width="0.8"/><rect x="437" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.57" stroke="#f59e0b" stroke-width="0.8"/><rect x="455" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.38" stroke="#f59e0b" stroke-width="0.8"/><rect x="473" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.19" stroke="#f59e0b" stroke-width="0.8"/><rect x="491" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.24" stroke="#f59e0b" stroke-width="0.8"/>
              <text x="530" y="68" font-size="16" fill="#9b99b8">=</text>
              <rect x="550" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.67" stroke="#10b981" stroke-width="0.8"/><rect x="568" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.89" stroke="#10b981" stroke-width="0.8"/><rect x="586" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.23" stroke="#10b981" stroke-width="0.8"/><rect x="604" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.81" stroke="#10b981" stroke-width="0.8"/><rect x="622" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.41" stroke="#10b981" stroke-width="0.8"/><rect x="640" y="50" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.95" stroke="#10b981" stroke-width="0.8"/><rect x="658" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.49" stroke="#10b981" stroke-width="0.8"/><rect x="676" y="50" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.73" stroke="#10b981" stroke-width="0.8"/>
              <text x="722" y="68" font-size="11" fill="#9b99b8" text-anchor="start">pos 0</text>
              <rect x="20" y="94" width="120" height="26" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="80" y="112">makes · 44</text>
              <line x1="143" y1="107" x2="172" y2="107" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls6a)"/>
              <rect x="180" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.43" stroke="#3b82f6" stroke-width="0.8"/><rect x="198" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.16" stroke="#3b82f6" stroke-width="0.8"/><rect x="216" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.11" stroke="#3b82f6" stroke-width="0.8"/><rect x="234" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.49" stroke="#3b82f6" stroke-width="0.8"/><rect x="252" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.11" stroke="#3b82f6" stroke-width="0.8"/><rect x="270" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.21" stroke="#3b82f6" stroke-width="0.8"/><rect x="288" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.22" stroke="#3b82f6" stroke-width="0.8"/><rect x="306" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.42" stroke="#3b82f6" stroke-width="0.8"/>
              <text x="345" y="112" font-size="16" fill="#9b99b8">+</text>
              <rect x="365" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.37" stroke="#f59e0b" stroke-width="0.8"/><rect x="383" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.27" stroke="#f59e0b" stroke-width="0.8"/><rect x="401" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.24" stroke="#f59e0b" stroke-width="0.8"/><rect x="419" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.55" stroke="#f59e0b" stroke-width="0.8"/><rect x="437" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.52" stroke="#f59e0b" stroke-width="0.8"/><rect x="455" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.34" stroke="#f59e0b" stroke-width="0.8"/><rect x="473" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.33" stroke="#f59e0b" stroke-width="0.8"/><rect x="491" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.22" stroke="#f59e0b" stroke-width="0.8"/>
              <text x="530" y="112" font-size="16" fill="#9b99b8">=</text>
              <rect x="550" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.71" stroke="#10b981" stroke-width="0.8"/><rect x="568" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.21" stroke="#10b981" stroke-width="0.8"/><rect x="586" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.25" stroke="#10b981" stroke-width="0.8"/><rect x="604" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.16" stroke="#10b981" stroke-width="0.8"/><rect x="622" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.52" stroke="#10b981" stroke-width="0.8"/><rect x="640" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.23" stroke="#10b981" stroke-width="0.8"/><rect x="658" y="94" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.45" stroke="#10b981" stroke-width="0.8"/><rect x="676" y="94" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.54" stroke="#10b981" stroke-width="0.8"/>
              <text x="722" y="112" font-size="11" fill="#9b99b8" text-anchor="start">pos 1</text>
              <rect x="20" y="138" width="120" height="26" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="80" y="156">a · 1</text>
              <line x1="143" y1="151" x2="172" y2="151" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls6a)"/>
              <rect x="180" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.28" stroke="#3b82f6" stroke-width="0.8"/><rect x="198" y="138" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.31" stroke="#3b82f6" stroke-width="0.8"/><rect x="216" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.28" stroke="#3b82f6" stroke-width="0.8"/><rect x="234" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.28" stroke="#3b82f6" stroke-width="0.8"/><rect x="252" y="138" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.19" stroke="#3b82f6" stroke-width="0.8"/><rect x="270" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.84" stroke="#3b82f6" stroke-width="0.8"/><rect x="288" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.77" stroke="#3b82f6" stroke-width="0.8"/><rect x="306" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.32" stroke="#3b82f6" stroke-width="0.8"/>
              <text x="345" y="156" font-size="16" fill="#9b99b8">+</text>
              <rect x="365" y="138" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.23" stroke="#f59e0b" stroke-width="0.8"/><rect x="383" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.58" stroke="#f59e0b" stroke-width="0.8"/><rect x="401" y="138" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.46" stroke="#f59e0b" stroke-width="0.8"/><rect x="419" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.17" stroke="#f59e0b" stroke-width="0.8"/><rect x="437" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.3" stroke="#f59e0b" stroke-width="0.8"/><rect x="455" y="138" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.51" stroke="#f59e0b" stroke-width="0.8"/><rect x="473" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.37" stroke="#f59e0b" stroke-width="0.8"/><rect x="491" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.64" stroke="#f59e0b" stroke-width="0.8"/>
              <text x="530" y="156" font-size="16" fill="#9b99b8">=</text>
              <rect x="550" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.16" stroke="#10b981" stroke-width="0.8"/><rect x="568" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.37" stroke="#10b981" stroke-width="0.8"/><rect x="586" y="138" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.28" stroke="#10b981" stroke-width="0.8"/><rect x="604" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.35" stroke="#10b981" stroke-width="0.8"/><rect x="622" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.21" stroke="#10b981" stroke-width="0.8"/><rect x="640" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.43" stroke="#10b981" stroke-width="0.8"/><rect x="658" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.95" stroke="#10b981" stroke-width="0.8"/><rect x="676" y="138" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.86" stroke="#10b981" stroke-width="0.8"/>
              <text x="722" y="156" font-size="11" fill="#9b99b8" text-anchor="start">pos 2</text>
              <rect x="20" y="182" width="120" height="26" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="80" y="200">hot · 35</text>
              <line x1="143" y1="195" x2="172" y2="195" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls6a)"/>
              <rect x="180" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.14" stroke="#3b82f6" stroke-width="0.8"/><rect x="198" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.36" stroke="#3b82f6" stroke-width="0.8"/><rect x="216" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.71" stroke="#3b82f6" stroke-width="0.8"/><rect x="234" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.58" stroke="#3b82f6" stroke-width="0.8"/><rect x="252" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.92" stroke="#3b82f6" stroke-width="0.8"/><rect x="270" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.85" stroke="#3b82f6" stroke-width="0.8"/><rect x="288" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.16" stroke="#3b82f6" stroke-width="0.8"/><rect x="306" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.33" stroke="#3b82f6" stroke-width="0.8"/>
              <text x="345" y="200" font-size="16" fill="#9b99b8">+</text>
              <rect x="365" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.7" stroke="#f59e0b" stroke-width="0.8"/><rect x="383" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.33" stroke="#f59e0b" stroke-width="0.8"/><rect x="401" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.59" stroke="#f59e0b" stroke-width="0.8"/><rect x="419" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.78" stroke="#f59e0b" stroke-width="0.8"/><rect x="437" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.9" stroke="#f59e0b" stroke-width="0.8"/><rect x="455" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.76" stroke="#f59e0b" stroke-width="0.8"/><rect x="473" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.18" stroke="#f59e0b" stroke-width="0.8"/><rect x="491" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.14" stroke="#f59e0b" stroke-width="0.8"/>
              <text x="530" y="200" font-size="16" fill="#9b99b8">=</text>
              <rect x="550" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.66" stroke="#10b981" stroke-width="0.8"/><rect x="568" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.59" stroke="#10b981" stroke-width="0.8"/><rect x="586" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.22" stroke="#10b981" stroke-width="0.8"/><rect x="604" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.3" stroke="#10b981" stroke-width="0.8"/><rect x="622" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.12" stroke="#10b981" stroke-width="0.8"/><rect x="640" y="182" width="16" height="26" rx="3" fill="#ec4899" fill-opacity="0.2" stroke="#10b981" stroke-width="0.8"/><rect x="658" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.12" stroke="#10b981" stroke-width="0.8"/><rect x="676" y="182" width="16" height="26" rx="3" fill="#22d3ee" fill-opacity="0.29" stroke="#10b981" stroke-width="0.8"/>
              <text x="722" y="200" font-size="11" fill="#9b99b8" text-anchor="start">pos 3</text>
              <rect x="20" y="232" width="720" height="62" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="380" y="256">idx (B, T) = (2, 4)   →   tok (2, 4, 8)   +   pos (4, 8)   =   x (2, 4, 8)</text>
              <text x="380" y="280" font-size="12" fill="#9b99b8">Each square is one of C = 8 numbers. Light blue is positive, pink is negative. Stronger colour means a bigger number.</text>
            </g>
          </svg>  <figcaption>The line "tom makes a hot" from Parts 1 and 2 of the code editor below. Each ID picks a row from the token table. Each position picks a row from the position table. The two rows are added.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>An embedding table is a lookup table</h3>
          <p>An <strong>embedding</strong> is a list of numbers (a vector) that stands for one token. The <strong>embedding table</strong> has one row for every token in the vocabulary. Each row has C numbers. C is the <strong>embedding size</strong>, also called <code>n_embd</code>.</p>
          <p>So the table has the shape <code>(V, C)</code>. To embed token 75, you simply take row 75. Nothing is multiplied. It is a lookup.</p>
          <p>At the start, the rows are random numbers. During training, the model changes them a little at every step. Tokens that are used in the same way, such as "latte" and "tea", slowly get similar rows. Nobody tells the model to do this. It is learned.</p>
          <p>To keep the numbers small, Part 1 in the code editor uses whole words from the café text as tokens. That gives a vocabulary of V = 85. With your BPE tokeniser it works the same way. Only V changes.</p>
        </div>
        <div class="lc-card">
          <h3>Why we need position embeddings</h3>
          <p>Attention, which you build next, looks at all tokens as a set. On its own it cannot tell "Tom makes tea" from "tea makes Tom". The model needs to know the order.</p>
          <p>So TinyGPT has a second table: the <strong>position embedding table</strong>. It has one row for each position, from 0 up to <code>block_size - 1</code>. <code>block_size</code> (T) is the longest context the model can read. Its shape is <code>(block_size, C)</code>.</p>
          <p>You add the token row and the position row together. The result is the input to the first transformer block:</p>
          <p><strong>x = token_embedding[id] + position_embedding[position]</strong></p>
          <p>These position rows are <strong>learned</strong>, like the token rows. GPT-2 works this way. The first transformer paper used fixed sine waves instead. Many newer models use rotary position embeddings (RoPE), which turn the attention vectors instead of adding a row. Learned positions are the easiest to code, so TinyGPT uses them.</p>
        </div>
        <div class="lc-card">
          <h3>The shape (B, T, C)</h3>
          <p>Models work on many lines of text at once. A <strong>batch</strong> is a group of lines with the same length.</p>
          <table class="lc-table">
            <thead><tr><th>Letter</th><th>Meaning</th><th>Starter code</th><th>Default TinyGPT</th></tr></thead>
            <tbody>
              <tr><td>B</td><td>Batch size: lines in one batch</td><td>2</td><td>you choose</td></tr>
              <tr><td>T</td><td>Time: tokens in each line (at most block_size)</td><td>4</td><td>up to 16</td></tr>
              <tr><td>C</td><td>Channels: numbers per token (n_embd)</td><td>8</td><td>32</td></tr>
              <tr><td>V</td><td>Vocabulary size</td><td>85</td><td>depends on the tokeniser</td></tr>
            </tbody>
          </table>
          <p>The IDs have the shape <code>(B, T)</code>. After the lookup, each ID has become C numbers, so the shape is <code>(B, T, C)</code>. The position rows have the shape <code>(T, C)</code>. When you add them, NumPy and PyTorch add the same position rows to every line in the batch. This is called <strong>broadcasting</strong>.</p>
          <p>Both tables are parameters. In the code editor there are 85 × 8 + 16 × 8 = 808 of them. Part 3 prints this count.</p>
        </div>
        <div class="lc-card">
          <h3>The same layer in PyTorch</h3>
          <p>In PyTorch, <code>nn.Embedding</code> is exactly this lookup table. Part 4 in the code editor below builds both tables with <code>nn.Embedding</code>, using the default TinyGPT sizes (V = 85, C = 32, block_size = 16). Then it looks up the same two lines, "tom makes a hot" and "the cake is warm".</p>
          <p><code>torch.arange(T)</code> makes the positions 0, 1, 2, 3. So <code>x</code> has the shape (2, 4, 32). In TinyGPT, these two tables live inside the model as <code>self.tok_emb</code> and <code>self.pos_emb</code>. PyTorch does not run in the browser, so there Part 4 only prints a short message. Parts 1 to 3 run the same idea in NumPy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: name the shape</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item by its shape. Use the letters B, T, C and V from this lesson.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="vc" data-label="(V, C)"></div>
              <div data-sorter-target="bucket" data-bucket="tc" data-label="(T, C) or (block_size, C)"></div>
              <div data-sorter-target="bucket" data-bucket="bt" data-label="(B, T)"></div>
              <div data-sorter-target="bucket" data-bucket="btc" data-label="(B, T, C)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="vc" data-why="It has one row of C numbers for every token in the vocabulary.">The token embedding table</li>
              <li data-bucket="tc" data-why="It has one row for every position the model can read.">The position embedding table</li>
              <li data-bucket="bt" data-why="Each line in the batch is a list of T whole-number IDs. No embedding yet.">The batch of token IDs from the tokeniser</li>
              <li data-bucket="btc" data-why="Every ID in every line has become C numbers.">The result of looking up every ID in the token table</li>
              <li data-bucket="tc" data-why="You take one row for each of the T positions. The same rows are used for every line.">The position rows for positions 0 to T - 1</li>
              <li data-bucket="btc" data-why="Adding (B, T, C) and (T, C) broadcasts to (B, T, C).">x, the sum that goes into the first transformer block</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. Check the shapes that Part 2 prints. Then check one number of <code>x[0, 0]</code> by adding the two rows above it yourself.</li>
            <li>Change <code>C = 8</code> to <code>C = 4</code>. Every row gets shorter, and the parameter count in Part 3 goes down.</li>
            <li>In Part 1, change the second line of <code>batch</code> to <code>"tom makes tom makes"</code>. "tom" now appears at positions 0 and 2. At the end of Part 2, print <code>x[1, 0]</code> and <code>x[1, 2]</code>. They are different, because the position rows are different.</li>
            <li>Set <code>BLOCK_SIZE = 3</code>. Part 2 fails, because the position table has no row for position 3. A model can never read more than <code>block_size</code> tokens at once.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An embedding is a learned row of numbers looked up by ID. TinyGPT adds a token row and a position row. Now each token carries its meaning and its place, in a tensor of shape (B, T, C).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Token and position embeddings in NumPy (the same idea as nn.Embedding in PyTorch).
        import numpy as np
        np.random.seed(42)
        np.set_printoptions(precision=2, suppress=True)

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()

        # ── Part 1: a word-level vocabulary and a batch of token IDs ──
        print("== Part 1: token IDs ==")
        # A small word-level vocabulary keeps the numbers easy to read.
        words = CAFE_TEXT.lower().replace(".", " .").split()
        vocab = sorted(set(words))
        stoi = {w: i for i, w in enumerate(vocab)}      # word -> ID

        V = len(vocab)      # vocabulary size
        C = 8               # embedding size (n_embd): numbers per token
        BLOCK_SIZE = 16     # longest context the model can read

        # Two tables of random numbers. Training will slowly improve them.
        tok_emb = np.random.randn(V, C)                 # one row per token ID
        pos_emb = np.random.randn(BLOCK_SIZE, C)        # one row per position

        batch = ["tom makes a hot", "the cake is warm"]   # every line needs the same length
        idx = np.array([[stoi[w] for w in line.split()] for line in batch])
        B, T = idx.shape
        print("idx (B, T) =", idx.shape)
        print(idx)

        # ── Part 2: look up the rows and add them ──
        print("\n== Part 2: token rows + position rows ==")
        tok = tok_emb[idx]                  # look up one row per ID      -> (B, T, C)
        pos = pos_emb[np.arange(T)]         # rows for positions 0..T-1   -> (T, C)
        x = tok + pos                       # NumPy adds pos to every line -> (B, T, C)
        print("tok", tok.shape, "+ pos", pos.shape, "= x", x.shape)

        print("row", stoi["tom"], "of the token table ('tom'):", tok_emb[stoi["tom"]])
        print("position 0 row:                    ", pos_emb[0])
        print("x[0, 0] = their sum:               ", x[0, 0])

        # ── Part 3: a lookup is the same as a one-hot vector times the table ──
        print("\n== Part 3: one-hot check and parameter count ==")
        one_hot = np.zeros(V); one_hot[stoi["tom"]] = 1
        print("one-hot @ table gives the same row:", np.allclose(one_hot @ tok_emb, tok_emb[stoi["tom"]]))
        print("parameters:", V * C, "(token table) +", BLOCK_SIZE * C, "(position table) =", V * C + BLOCK_SIZE * C)

        # ── Part 4: the same layer in PyTorch with nn.Embedding (run this part on your own computer) ──
        print("\n== Part 4: nn.Embedding in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            V, C, block_size = 85, 32, 16           # the default TinyGPT sizes
            tok_emb = nn.Embedding(V, C)            # token table: (V, C)
            pos_emb = nn.Embedding(block_size, C)   # position table: (block_size, C)

            idx = torch.tensor([[75, 44, 1, 35],    # "tom makes a hot"
                                [73, 15, 37, 79]])  # "the cake is warm"
            B, T = idx.shape
            x = tok_emb(idx) + pos_emb(torch.arange(T))   # positions 0, 1, 2, 3
            print(tok_emb.weight.shape, pos_emb.weight.shape)
            print(x.shape)                                 # (2, 4, 32)
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Coding Self-Attention</h1>
        </div>
        <p class="lc-lead">After the embedding layer, each token only knows about itself. <strong>Self-attention</strong> lets each token collect information from the tokens before it. In this lesson you code one <strong>causal attention head</strong>, first in NumPy and then in PyTorch. You will follow the shape of every tensor. You will also see how a mask stops tokens from looking at the future.</p>
        <figure class="lc-diagram">
        <svg viewBox="0 0 760 340" role="img" aria-label="Left: the data flow of one attention head. x of shape (1, 5, 8) is multiplied by three weight matrices to make q, k and v, each (1, 5, 4). q times k transposed, divided by the square root of 4, gives scores of shape (1, 5, 5). The future is masked and softmax gives weights. Weights times v gives out, shape (1, 5, 4). Right: the 5 by 5 weight table for tom makes a hot tea. Tom gives 1.00 to itself. Makes gives 0.57 to tom and 0.43 to itself. Cells above the diagonal are 0.">
            <defs><marker id="ls7a" markerUnits="userSpaceOnUse" markerWidth="9" markerHeight="9" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="70" y="10" width="220" height="32" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="180" y="31">x  (B, T, C) = (1, 5, 8)</text>
              <line x1="180" y1="42" x2="67" y2="72" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/>
              <rect x="15" y="76" width="105" height="40" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="67.5" y="93">q = x @ W_q</text><text x="67.5" y="109" font-size="11.5" fill="#9b99b8">(1, 5, 4)</text>
              <line x1="180" y1="42" x2="182" y2="72" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/>
              <rect x="130" y="76" width="105" height="40" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="182.5" y="93">k = x @ W_k</text><text x="182.5" y="109" font-size="11.5" fill="#9b99b8">(1, 5, 4)</text>
              <line x1="180" y1="42" x2="297" y2="72" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/>
              <rect x="245" y="76" width="105" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="297.5" y="93">v = x @ W_v</text><text x="297.5" y="109" font-size="11.5" fill="#9b99b8">(1, 5, 4)</text>
              <line x1="67" y1="116" x2="110" y2="144" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/><line x1="182" y1="116" x2="140" y2="144" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/>
              <rect x="15" y="148" width="220" height="40" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="125.0" y="165">scores = q @ kᵀ / √4</text><text x="125.0" y="181" font-size="11.5" fill="#9b99b8">(1, 5, 5) = (B, T, T)</text>
              <line x1="125" y1="188" x2="125" y2="214" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/>
              <rect x="15" y="218" width="220" height="40" rx="8" fill="#27274e" stroke="#ec4899"/><text x="125.0" y="235">mask the future, softmax</text><text x="125.0" y="251" font-size="11.5" fill="#9b99b8">weights (1, 5, 5)</text>
              <line x1="125" y1="258" x2="140" y2="284" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/>
              <path d="M297,116 L297,308 L266,308" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls7a)"/>
              <rect x="40" y="288" width="220" height="40" rx="8" fill="#27274e" stroke="#10b981"/><text x="150.0" y="305">out = weights @ v</text><text x="150.0" y="321" font-size="11.5" fill="#9b99b8">(1, 5, 4) = (B, T, head_size)</text>
              <text x="600" y="24" font-weight="700">Attention weights for "tom makes a hot tea"</text>
              <text x="494.0" y="60" font-size="12" fill="#9b99b8">tom</text>
              <text x="546.0" y="60" font-size="12" fill="#9b99b8">makes</text>
              <text x="598.0" y="60" font-size="12" fill="#9b99b8">a</text>
              <text x="650.0" y="60" font-size="12" fill="#9b99b8">hot</text>
              <text x="702.0" y="60" font-size="12" fill="#9b99b8">tea</text>
              <text x="458" y="95.0" font-size="12" fill="#9b99b8" text-anchor="end">tom</text>
              <rect x="470" y="72" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="1.0" stroke="#8b5cf6"/><text x="494.0" y="95.0">1.00</text>
              <rect x="522" y="72" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="546.0" y="95.0" fill="#6b6990">0</text>
              <rect x="574" y="72" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="598.0" y="95.0" fill="#6b6990">0</text>
              <rect x="626" y="72" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="650.0" y="95.0" fill="#6b6990">0</text>
              <rect x="678" y="72" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="702.0" y="95.0" fill="#6b6990">0</text>
              <text x="458" y="135.0" font-size="12" fill="#9b99b8" text-anchor="end">makes</text>
              <rect x="470" y="112" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.64" stroke="#8b5cf6"/><text x="494.0" y="135.0">0.57</text>
              <rect x="522" y="112" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.51" stroke="#8b5cf6"/><text x="546.0" y="135.0">0.43</text>
              <rect x="574" y="112" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="598.0" y="135.0" fill="#6b6990">0</text>
              <rect x="626" y="112" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="650.0" y="135.0" fill="#6b6990">0</text>
              <rect x="678" y="112" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="702.0" y="135.0" fill="#6b6990">0</text>
              <text x="458" y="175.0" font-size="12" fill="#9b99b8" text-anchor="end">a</text>
              <rect x="470" y="152" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.57" stroke="#8b5cf6"/><text x="494.0" y="175.0">0.50</text>
              <rect x="522" y="152" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.36" stroke="#8b5cf6"/><text x="546.0" y="175.0">0.25</text>
              <rect x="574" y="152" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.36" stroke="#8b5cf6"/><text x="598.0" y="175.0">0.25</text>
              <rect x="626" y="152" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="650.0" y="175.0" fill="#6b6990">0</text>
              <rect x="678" y="152" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="702.0" y="175.0" fill="#6b6990">0</text>
              <text x="458" y="215.0" font-size="12" fill="#9b99b8" text-anchor="end">hot</text>
              <rect x="470" y="192" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.35" stroke="#8b5cf6"/><text x="494.0" y="215.0">0.23</text>
              <rect x="522" y="192" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.44" stroke="#8b5cf6"/><text x="546.0" y="215.0">0.34</text>
              <rect x="574" y="192" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.38" stroke="#8b5cf6"/><text x="598.0" y="215.0">0.27</text>
              <rect x="626" y="192" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.28" stroke="#8b5cf6"/><text x="650.0" y="215.0">0.16</text>
              <rect x="678" y="192" width="48" height="36" rx="5" fill="#1f1f44" stroke="#4b4a78" stroke-dasharray="3 3"/><text x="702.0" y="215.0" fill="#6b6990">0</text>
              <text x="458" y="255.0" font-size="12" fill="#9b99b8" text-anchor="end">tea</text>
              <rect x="470" y="232" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.27" stroke="#8b5cf6"/><text x="494.0" y="255.0">0.14</text>
              <rect x="522" y="232" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.36" stroke="#8b5cf6"/><text x="546.0" y="255.0">0.25</text>
              <rect x="574" y="232" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.37" stroke="#8b5cf6"/><text x="598.0" y="255.0">0.26</text>
              <rect x="626" y="232" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.33" stroke="#8b5cf6"/><text x="650.0" y="255.0">0.22</text>
              <rect x="678" y="232" width="48" height="36" rx="5" fill="#8b5cf6" fill-opacity="0.26" stroke="#8b5cf6"/><text x="702.0" y="255.0">0.13</text>
              <text x="600" y="296" font-size="12" fill="#9b99b8">Each row is one token looking back. Rows add up to 1.</text>
              <text x="600" y="316" font-size="12" fill="#9b99b8">Dashed cells are future tokens. The mask makes them 0.</text>
            </g>
          </svg>  <figcaption>One attention head on the line "tom makes a hot tea". Left: the data flow with shapes. Right: the attention weights printed by Part 2 of the code editor below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Query, key and value</h3>
          <p>Each token makes three new vectors from its embedding. Each one comes from its own learned weight matrix:</p>
          <ul class="lc-list">
            <li><strong>Query (q):</strong> what this token is looking for.</li>
            <li><strong>Key (k):</strong> what this token can offer to others.</li>
            <li><strong>Value (v):</strong> the information this token passes on if it is chosen.</li>
          </ul>
          <p>A token compares its query with the key of every token. A bigger <strong>dot product</strong> (multiply matching numbers, then add) means a better match. The matrices have the shape <code>(C, head_size)</code>. <code>head_size</code> is the length of q, k and v. In Part 2 of the code editor, C = 8 and head_size = 4.</p>
        </div>
        <div class="lc-card">
          <h3>The five steps in code</h3>
          <ol class="lc-list">
            <li><code>q = x @ W_q</code>, <code>k = x @ W_k</code>, <code>v = x @ W_v</code>. Each has the shape <code>(B, T, head_size)</code>.</li>
            <li><code>scores = q @ k.transpose(0, 2, 1)</code>. This compares every token with every token, so the shape is <code>(B, T, T)</code>.</li>
            <li>Divide the scores by <code>√head_size</code>. Without this, scores grow with the vector length. Softmax then puts almost all the weight on one token, and training becomes harder.</li>
            <li><strong>Mask</strong> the future, then apply <strong>softmax</strong> on each row. Softmax turns scores into weights from 0 to 1 that add up to 1.</li>
            <li><code>out = weights @ v</code>. Each token gets a weighted mix of the values. The shape is <code>(B, T, head_size)</code>.</li>
          </ol>
          <p>Worked example: the token "makes" may look at "tom" and at itself. Its scores are 0.24 and −0.06. Softmax gives e<sup>0.24</sup> = 1.27 and e<sup>−0.06</sup> = 0.94. Divide each by their total, 2.21, and you get about 0.57 and 0.43. These are the numbers in the diagram.</p>
        </div>
        <div class="lc-card">
          <h3>The causal mask</h3>
          <p>TinyGPT learns to predict the next token. If "makes" could look at "a" and "hot", it could see the answer. It would learn nothing useful. So each token may only look at itself and earlier tokens. This is called <strong>causal</strong> attention.</p>
          <p>You build the mask with a lower triangle of ones, <code>np.tril(np.ones((T, T)))</code>:</p>
          <p>Row 1 of the mask has one 1, row 2 has two, and so on. Everything above the diagonal is 0. Part 1 in the code editor below prints this mask for T = 4, and Part 2 prints the 5 × 5 mask for our line.</p>
          <p>Where the mask is 0, you set the score to minus infinity (<code>-inf</code>). Softmax uses e<sup>score</sup>, and e<sup>−∞</sup> is 0. So those weights become exactly 0. The first token can only look at itself, so its weight on itself is always 1.00.</p>
        </div>
        <div class="lc-card">
          <h3>The same head in PyTorch</h3>
          <p>Part 3 in the code editor below builds one head as a PyTorch module, with the default TinyGPT sizes. <code>nn.Linear(C, head_size, bias=False)</code> holds one weight matrix. <code>register_buffer</code> stores the mask inside the module, but it is not a parameter, so training does not change it.</p>
          <p>In <code>__init__</code> of the <code>Head</code> module, <code>self.query</code>, <code>self.key</code> and <code>self.value</code> are three <code>nn.Linear</code> layers, and <code>self.tril</code> is the mask. The <code>forward</code> method does the same five steps as the NumPy code in Part 2. Part 3 runs the head on a random batch of shape (2, 4, 32) and prints the output shape, (2, 4, 8).</p>
          <p>With the default TinyGPT head size of 8, <code>k.shape[-1] ** -0.5</code> is 1 ÷ √8. <code>self.tril[:T, :T]</code> cuts the mask to the real length, because a batch can be shorter than <code>block_size</code>. PyTorch does not run in the browser, so there Part 3 only prints a short message, and Part 2 runs the NumPy version.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the token "makes"</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Input">x has the shape (1, 5, 8): one line, "tom makes a hot tea", with 8 numbers per token.</li>
              <li data-kind="tool" data-label="Make q, k, v">Multiply x by W_q, W_k and W_v. Each result is (1, 5, 4). "makes" now has its own query, key and value.</li>
              <li data-kind="thought" data-label="Score">The query of "makes" is compared with all five keys and divided by √4. Its scores for "tom" and "makes" are 0.24 and −0.06.</li>
              <li data-kind="warn" data-label="Mask">"a", "hot" and "tea" come later. Their scores become −∞, so they cannot leak the answer.</li>
              <li data-kind="result" data-label="Softmax">The weights are 0.57 for "tom" and 0.43 for "makes". The row adds up to 1.</li>
              <li data-kind="answer" data-label="Mix">The new vector for "makes" is 0.57 × v(tom) + 0.43 × v(makes). It has 4 numbers.</li>
              <li data-kind="check" data-label="Shape check">All tokens together give out with the shape (1, 5, 4), which is (B, T, head_size).</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. In Part 2, find the 0.57 and 0.43 in the "makes" row. Check that every row adds up to 1.</li>
            <li>Set <code>CAUSAL = False</code>. Now in Part 2 "tom" gives weight to "tea", a future token. During training this would let the model cheat.</li>
            <li>In Part 2, change <code>HEAD_SIZE</code> to <code>2</code>. The q, k, v and out shapes change, but the weight table stays 5 × 5.</li>
            <li>In Part 2, add <code>"with"</code> to the end of <code>words</code>. T becomes 6, and the weight table gets a new row and column.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> One attention head is just a few matrix multiplications. Score with q·k ÷ √head_size, apply the causal mask and softmax, then take a weighted mix of v. The (B, T, T) weight table tells each token how much to take from each earlier token.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # One causal self-attention head in NumPy.
        import numpy as np
        np.random.seed(42)
        np.set_printoptions(precision=2, suppress=True)

        # ── Part 1: the causal mask is a lower triangle of ones ──
        print("== Part 1: the causal mask for T = 4 ==")
        print(np.tril(np.ones((4, 4))))

        # ── Part 2: one attention head on "tom makes a hot tea" ──
        print("\n== Part 2: one head in NumPy ==")
        words = ["tom", "makes", "a", "hot", "tea"]   # a line from the café text
        B, T, C = 1, len(words), 8               # batch, time (tokens), channels
        HEAD_SIZE = 4
        CAUSAL = True                            # False: tokens may also look ahead

        x = np.random.randn(B, T, C)             # stands in for token + position embeddings

        # Three learned weight matrices (small random numbers at the start).
        W_q = np.random.randn(C, HEAD_SIZE) / np.sqrt(C)
        W_k = np.random.randn(C, HEAD_SIZE) / np.sqrt(C)
        W_v = np.random.randn(C, HEAD_SIZE) / np.sqrt(C)

        q = x @ W_q                              # queries: what each token is looking for
        k = x @ W_k                              # keys: what each token offers
        v = x @ W_v                              # values: what each token passes on
        print("q, k, v shapes:", q.shape, k.shape, v.shape)

        scores = q @ k.transpose(0, 2, 1) / np.sqrt(HEAD_SIZE)    # (B, T, T)
        if CAUSAL:
            mask = np.tril(np.ones((T, T)))                       # 1 = allowed, 0 = future
            print(f"causal mask for T = {T}:\n{mask}")
            scores = np.where(mask == 0, -np.inf, scores)

        weights = np.exp(scores - scores.max(axis=-1, keepdims=True))
        weights = weights / weights.sum(axis=-1, keepdims=True)  # softmax: each row adds up to 1

        print("\nattention weights (row = token that looks, column = token it looks at)")
        print("        " + "".join(f"{w:>7}" for w in words))
        for i, w in enumerate(words):
            print(f"{w:>7} " + "".join(f"{p:7.2f}" for p in weights[0, i]))
        print("row sums:", weights[0].sum(axis=-1))

        out = weights @ v                        # weighted mix of values: (B, T, HEAD_SIZE)
        print("\nout shape:", out.shape)
        print("out for 'tom' is just v for 'tom':", np.allclose(out[0, 0], v[0, 0]))

        # ── Part 3: the same head as a PyTorch module (run this part on your own computer) ──
        print("\n== Part 3: one head in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class Head(nn.Module):
                """One head of causal self-attention."""
                def __init__(self, n_embd, head_size, block_size):
                    super().__init__()
                    self.key = nn.Linear(n_embd, head_size, bias=False)
                    self.query = nn.Linear(n_embd, head_size, bias=False)
                    self.value = nn.Linear(n_embd, head_size, bias=False)
                    self.register_buffer("tril", torch.tril(torch.ones(block_size, block_size)))

                def forward(self, x):
                    B, T, C = x.shape
                    q = self.query(x)                                   # (B, T, hs)
                    k = self.key(x)                                     # (B, T, hs)
                    v = self.value(x)                                   # (B, T, hs)
                    wei = q @ k.transpose(-2, -1) * k.shape[-1] ** -0.5 # (B, T, T)
                    wei = wei.masked_fill(self.tril[:T, :T] == 0, float("-inf"))
                    wei = F.softmax(wei, dim=-1)                        # rows add up to 1
                    return wei @ v                                      # (B, T, hs)

            torch.manual_seed(42)
            head = Head(n_embd=32, head_size=8, block_size=16)
            x = torch.randn(2, 4, 32)          # (B, T, C)
            print(head(x).shape)               # (2, 4, 8)
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Coding Multi-Head Attention</h1>
        </div>
        <p class="lc-lead">One attention head can only learn one way of looking at the text. <strong>Multi-head attention</strong> runs several small heads side by side. One head might follow who is acting, while another follows what is being made. In this lesson you join the heads and mix them with a projection. You also learn the reshape trick that runs all heads in one fast step.</p>
        <figure class="lc-diagram">
        <svg viewBox="0 0 760 326" role="img" aria-label="The shapes in fast multi-head attention. Top row: x (2, 5, 12), times W_qkv gives (2, 5, 36), split into q, k and v of (2, 5, 12), reshape to (2, 5, 3, 4), transpose to (2, 3, 5, 4). Bottom row, right to left: attention for all heads at once gives (2, 3, 5, 4) with weights (2, 3, 5, 5), transpose back to (2, 5, 3, 4), reshape to join the heads (2, 5, 12), multiply by W_proj, and the output y is (2, 5, 12). Below, one token's 12 numbers are cut into three heads of 4.">
            <defs><marker id="ls8a" markerUnits="userSpaceOnUse" markerWidth="9" markerHeight="9" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="12" y="22" text-anchor="start" font-weight="700">Fast multi-head attention: follow the shapes (B = 2, T = 5, C = 12, 3 heads of size 4)</text>
              <rect x="10" y="36" width="132" height="58" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="76.0" y="55" font-size="12">input x</text><text x="76.0" y="73" font-weight="700">(2, 5, 12)</text><text x="76.0" y="88" font-size="11" fill="#9b99b8">(B, T, C)</text>
              <line x1="143" y1="65" x2="155" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="157" y="36" width="132" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="223.0" y="55" font-size="12">x @ W_qkv</text><text x="223.0" y="73" font-weight="700">(2, 5, 36)</text><text x="223.0" y="88" font-size="11" fill="#9b99b8">q, k, v together</text>
              <line x1="290" y1="65" x2="302" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="304" y="36" width="132" height="58" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="370.0" y="55" font-size="12">split in 3</text><text x="370.0" y="73" font-weight="700">q (2, 5, 12)</text><text x="370.0" y="88" font-size="11" fill="#9b99b8">same for k, v</text>
              <line x1="437" y1="65" x2="449" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="451" y="36" width="132" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="517.0" y="55" font-size="12">reshape</text><text x="517.0" y="73" font-weight="700">(2, 5, 3, 4)</text><text x="517.0" y="88" font-size="11" fill="#9b99b8">(B, T, nh, hs)</text>
              <line x1="584" y1="65" x2="596" y2="65" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="598" y="36" width="132" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="664.0" y="55" font-size="12">transpose(1, 2)</text><text x="664.0" y="73" font-weight="700">(2, 3, 5, 4)</text><text x="664.0" y="88" font-size="11" fill="#9b99b8">(B, nh, T, hs)</text>
              <rect x="10" y="136" width="132" height="58" rx="8" fill="#27274e" stroke="#10b981"/><text x="76.0" y="155" font-size="12">output y</text><text x="76.0" y="173" font-weight="700">(2, 5, 12)</text><text x="76.0" y="188" font-size="11" fill="#9b99b8">(B, T, C)</text>
              <line x1="156" y1="165" x2="144" y2="165" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="157" y="136" width="132" height="58" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="223.0" y="155" font-size="12">@ W_proj</text><text x="223.0" y="173" font-weight="700">(2, 5, 12)</text><text x="223.0" y="188" font-size="11" fill="#9b99b8">mix the heads</text>
              <line x1="303" y1="165" x2="291" y2="165" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="304" y="136" width="132" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="370.0" y="155" font-size="12">reshape: join</text><text x="370.0" y="173" font-weight="700">(2, 5, 12)</text><text x="370.0" y="188" font-size="11" fill="#9b99b8">(B, T, C)</text>
              <line x1="450" y1="165" x2="438" y2="165" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="451" y="136" width="132" height="58" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="517.0" y="155" font-size="12">transpose(1, 2)</text><text x="517.0" y="173" font-weight="700">(2, 5, 3, 4)</text><text x="517.0" y="188" font-size="11" fill="#9b99b8">(B, T, nh, hs)</text>
              <line x1="597" y1="165" x2="585" y2="165" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <rect x="598" y="136" width="132" height="58" rx="8" fill="#27274e" stroke="#ec4899"/><text x="664.0" y="155" font-size="12">attention</text><text x="664.0" y="173" font-weight="700">(2, 3, 5, 4)</text><text x="664.0" y="188" font-size="11" fill="#9b99b8">weights (2, 3, 5, 5)</text>
              <line x1="664" y1="95" x2="664" y2="134" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <text x="672" y="119" text-anchor="start" font-size="11" fill="#9b99b8">all heads</text>
              <text x="672" y="131" text-anchor="start" font-size="11" fill="#9b99b8">at once</text>
              <text x="12" y="232" text-anchor="start" font-size="12" fill="#9b99b8">One token's 12 query numbers</text>
              <rect x="12" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="32" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="52" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="72" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="92" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <rect x="112" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <rect x="132" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <rect x="152" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <rect x="172" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <rect x="192" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <rect x="212" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <rect x="232" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <line x1="262" y1="254" x2="318" y2="254" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls8a)"/>
              <text x="290" y="244" font-size="11" fill="#9b99b8">reshape</text>
              <rect x="330" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="350" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="370" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <rect x="390" y="242" width="18" height="24" rx="3" fill="#22d3ee" fill-opacity="0.75"/>
              <text x="369" y="286" font-size="12">head 0</text>
              <rect x="470" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <rect x="490" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <rect x="510" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <rect x="530" y="242" width="18" height="24" rx="3" fill="#ec4899" fill-opacity="0.75"/>
              <text x="509" y="286" font-size="12">head 1</text>
              <rect x="610" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <rect x="630" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <rect x="650" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <rect x="670" y="242" width="18" height="24" rx="3" fill="#f59e0b" fill-opacity="0.75"/>
              <text x="649" y="286" font-size="12">head 2</text>
              <text x="12" y="312" text-anchor="start" font-size="12" fill="#9b99b8">Nothing is copied. Each head simply reads its own 4 of the 12 numbers, and the heads run side by side.</text>
            </g>
          </svg>
          <figcaption>The fast way to run many heads. Only the shapes change. The numbers match Part 2 of the code editor below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Many heads, each a little smaller</h3>
          <p>You keep the total size the same. If C = 12 and you want 3 heads, each head gets a <strong>head size</strong> of 12 ÷ 3 = 4. So <code>n_head × head_size = C</code>. This is why C must divide evenly by <code>n_head</code>.</p>
          <p>Each head has its own query, key and value weights. So each head can learn its own pattern. In Part 1 of the code editor, the last token spreads its weight in heads 0 and 1. In head 2 it puts 0.85 on the second token alone. The weights are random here. After training, heads learn useful patterns.</p>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>C</th><th>n_head</th><th>head_size</th></tr></thead>
            <tbody>
              <tr><td>Starter code</td><td>12</td><td>3</td><td>4</td></tr>
              <tr><td>Default TinyGPT</td><td>32</td><td>4</td><td>8</td></tr>
              <tr><td>GPT-2 small</td><td>768</td><td>12</td><td>64</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Concatenate, then project</h3>
          <p>Each head gives an output of shape <code>(B, T, head_size)</code>. You <strong>concatenate</strong> them (join them end to end) on the last axis. That gives <code>(B, T, C)</code> again.</p>
          <p>Then you multiply by one more learned matrix, the <strong>output projection</strong> <code>W_proj</code> of shape <code>(C, C)</code>. Without it, each head's numbers would stay in their own slots. The projection mixes what the heads found into one vector per token.</p>
          <p>The simple PyTorch version reuses the <code>Head</code> class from the last lesson. It keeps a list of heads in <code>nn.ModuleList</code>. In <code>forward</code>, it runs each head, joins the outputs with <code>torch.cat(..., dim=-1)</code> and applies <code>nn.Linear(n_embd, n_embd)</code> as the projection. This <code>MultiHeadAttention</code> class is in Part 3 of the code editor below.</p>
          <p>This works, but it runs the heads one after another in a Python loop. With many heads that is slow.</p>
        </div>
        <div class="lc-card">
          <h3>The fast way: reshape instead of loop</h3>
          <p>Real GPT code computes q, k and v for <em>all</em> heads with one matrix of shape <code>(C, 3C)</code>. Then it reshapes:</p>
          <ol class="lc-list">
            <li><strong>Split</strong> the result into q, k and v. Each is <code>(B, T, C)</code>.</li>
            <li><strong>Reshape</strong> (in PyTorch, <code>view</code>) to <code>(B, T, n_head, head_size)</code>. This cuts the C numbers of each token into heads. No numbers move.</li>
            <li><strong>Transpose</strong> axes 1 and 2 to get <code>(B, n_head, T, head_size)</code>. Now the head axis sits next to the batch axis.</li>
            <li>Run attention once. Matrix multiply works on the last two axes, so all heads run together. The weights are <code>(B, n_head, T, T)</code>.</li>
            <li><strong>Transpose back</strong> and reshape to <code>(B, T, C)</code>. This is the same as concatenating the heads. Then apply the projection.</li>
          </ol>
          <p>Part 3 in the code editor below also has a <code>CausalSelfAttention</code> module that does these five steps with <code>split</code>, <code>view</code> and <code>transpose</code>. In it, <code>c_attn</code> is <code>nn.Linear(n_embd, 3 * n_embd)</code>, and <code>c_proj</code> is <code>nn.Linear(n_embd, n_embd)</code>.</p>
          <p>With the default TinyGPT sizes (n_embd = 32, n_head = 4), this module has 4,224 parameters, and Part 3 prints this number. That is 32 × 96 + 96 for <code>c_attn</code> plus 32 × 32 + 32 for <code>c_proj</code>. The extra 96 and 32 are biases. After <code>transpose</code>, the numbers are no longer in order in memory, so PyTorch needs <code>.contiguous()</code> before <code>view</code>.</p>
          <p>PyTorch 2 also has <code>F.scaled_dot_product_attention(q, k, v, is_causal=True)</code>. It replaces the lines from the first <code>wei = ...</code> to <code>y = wei @ v</code>, and can use faster kernels such as FlashAttention. We write it out by hand here so you can see every step. PyTorch does not run in the browser, so there Part 3 only prints a short message. Parts 1 and 2 run a NumPy version.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order the fast multi-head steps</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of fast multi-head attention in order, from x to the output.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Multiply x (B, T, C) by one matrix to get q, k and v together: (B, T, 3C)</li>
              <li data-order="2">Split into q, k and v, each (B, T, C)</li>
              <li data-order="3">Reshape each to (B, T, n_head, head_size), then transpose to (B, n_head, T, head_size)</li>
              <li data-order="4">Compute scores, apply the causal mask and softmax, then multiply by v</li>
              <li data-order="5">Transpose back and reshape to (B, T, C), which joins the heads</li>
              <li data-order="6">Multiply by the output projection to mix the heads</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. In Part 1, look at the last token's weights in each head. Then check the end of Part 2: the loop and the reshape way give the same answer.</li>
            <li>Change <code>N_HEAD = 3</code> to <code>4</code>. The head size becomes 3. The parameter count at the end of Part 2 stays 576, because the big matrices keep their size.</li>
            <li>Change <code>N_HEAD</code> to <code>5</code>. The <code>assert</code> stops the program, because 12 does not divide by 5.</li>
            <li>In Part 2, in <code>split_heads</code>, remove <code>.transpose(0, 2, 1, 3)</code> and run again. The shapes no longer fit, so the program fails. The transpose is what puts the heads next to the batch axis.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Multi-head attention cuts C into n_head smaller heads that each learn their own pattern. A reshape and a transpose let all heads run in one batched step. Joining the heads and applying a projection gives back (B, T, C).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Multi-head causal self-attention in NumPy: a simple loop and the fast reshape way.
        import numpy as np
        np.random.seed(42)
        np.set_printoptions(precision=2, suppress=True)

        B, T, C = 2, 5, 12            # batch, time, channels
        N_HEAD = 3                    # number of heads
        assert C % N_HEAD == 0, "C must divide evenly into heads"
        HS = C // N_HEAD              # head size

        x = np.random.randn(B, T, C)                      # stands in for the embeddings
        W_qkv = np.random.randn(C, 3 * C) / np.sqrt(C)    # q, k and v for all heads in one matrix
        W_proj = np.random.randn(C, C) / np.sqrt(C)       # output projection
        mask = np.tril(np.ones((T, T)))

        def attention(q, k, v):                           # works for any number of leading dims
            scores = q @ np.swapaxes(k, -1, -2) / np.sqrt(q.shape[-1])
            scores = np.where(mask == 0, -np.inf, scores)
            w = np.exp(scores - scores.max(axis=-1, keepdims=True))
            w = w / w.sum(axis=-1, keepdims=True)
            return w @ v, w

        q, k, v = np.split(x @ W_qkv, 3, axis=-1)         # each (B, T, C)

        # ── Part 1: a loop, each head takes its own slice of HS channels ──
        print("== Part 1: heads in a loop ==")
        outs = []
        for h in range(N_HEAD):
            s = slice(h * HS, (h + 1) * HS)
            out_h, w_h = attention(q[..., s], k[..., s], v[..., s])   # (B, T, HS)
            outs.append(out_h)
            print(f"head {h}: last token's weights {w_h[0, -1]}")
        y_loop = np.concatenate(outs, axis=-1) @ W_proj   # concat -> (B, T, C), then project

        # ── Part 2: the fast way, reshape so all heads run in one batched step ──
        print("\n== Part 2: all heads at once ==")
        def split_heads(t):                               # (B, T, C) -> (B, N_HEAD, T, HS)
            return t.reshape(B, T, N_HEAD, HS).transpose(0, 2, 1, 3)
        qh, kh, vh = split_heads(q), split_heads(k), split_heads(v)
        print("q after split_heads:", qh.shape)
        out, w = attention(qh, kh, vh)
        print("weights:", w.shape, "| out:", out.shape)
        y_fast = out.transpose(0, 2, 1, 3).reshape(B, T, C) @ W_proj   # join heads, project
        print("y:", y_fast.shape)
        print("both ways give the same answer:", np.allclose(y_loop, y_fast))
        print("parameters:", W_qkv.size + W_proj.size)

        # ── Part 3: both ways in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: multi-head attention in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class Head(nn.Module):                     # one head, from the last lesson
                def __init__(self, n_embd, head_size, block_size):
                    super().__init__()
                    self.key = nn.Linear(n_embd, head_size, bias=False)
                    self.query = nn.Linear(n_embd, head_size, bias=False)
                    self.value = nn.Linear(n_embd, head_size, bias=False)
                    self.register_buffer("tril", torch.tril(torch.ones(block_size, block_size)))

                def forward(self, x):
                    B, T, C = x.shape
                    q, k, v = self.query(x), self.key(x), self.value(x)    # each (B, T, hs)
                    wei = q @ k.transpose(-2, -1) * k.shape[-1] ** -0.5   # (B, T, T)
                    wei = wei.masked_fill(self.tril[:T, :T] == 0, float("-inf"))
                    return F.softmax(wei, dim=-1) @ v                     # (B, T, hs)

            # The simple way: a list of heads, joined with torch.cat, then a projection.
            class MultiHeadAttention(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    head_size = n_embd // n_head
                    self.heads = nn.ModuleList([Head(n_embd, head_size, block_size) for _ in range(n_head)])
                    self.proj = nn.Linear(n_embd, n_embd)

                def forward(self, x):
                    out = torch.cat([h(x) for h in self.heads], dim=-1)   # (B, T, n_head * head_size)
                    return self.proj(out)                                  # (B, T, C)

            # The fast way: one (C, 3C) matrix, then view and transpose.
            class CausalSelfAttention(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    assert n_embd % n_head == 0
                    self.n_head = n_head
                    self.c_attn = nn.Linear(n_embd, 3 * n_embd)   # q, k, v for all heads
                    self.c_proj = nn.Linear(n_embd, n_embd)       # output projection
                    self.register_buffer("tril", torch.tril(torch.ones(block_size, block_size)))

                def forward(self, x):
                    B, T, C = x.shape
                    hs = C // self.n_head
                    q, k, v = self.c_attn(x).split(C, dim=2)                 # each (B, T, C)
                    q = q.view(B, T, self.n_head, hs).transpose(1, 2)        # (B, nh, T, hs)
                    k = k.view(B, T, self.n_head, hs).transpose(1, 2)
                    v = v.view(B, T, self.n_head, hs).transpose(1, 2)
                    wei = q @ k.transpose(-2, -1) * hs ** -0.5               # (B, nh, T, T)
                    wei = wei.masked_fill(self.tril[:T, :T] == 0, float("-inf"))
                    wei = F.softmax(wei, dim=-1)
                    y = wei @ v                                              # (B, nh, T, hs)
                    y = y.transpose(1, 2).contiguous().view(B, T, C)         # (B, T, C): join the heads
                    return self.c_proj(y)

            torch.manual_seed(42)
            x = torch.randn(2, 5, 32)
            mha = MultiHeadAttention(n_embd=32, n_head=4, block_size=16)
            print("simple way:", mha(x).shape)
            attn = CausalSelfAttention(n_embd=32, n_head=4, block_size=16)
            print("fast way:  ", attn(x).shape)
            print("parameters:", sum(p.numel() for p in attn.parameters()))   # 4224
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Building a Transformer Block</h1>
        </div>
        <p class="lc-lead">You can now code multi-head attention. On its own, attention is not enough to build a model. A <strong>transformer block</strong> wraps it with layer norm, a small MLP and two residual connections. In this lesson you build one block in PyTorch and in NumPy. TinyGPT is just a stack of these blocks, so this is the heart of the model.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A pre-norm transformer block. The input x with shape B, T, C goes through LayerNorm and multi-head attention, and the result is added back to x. Then it goes through LayerNorm and an MLP that grows C to 4C and back to C, and the result is added again. The output has the same shape B, T, C.">
            <defs><marker id="ls9a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <path d="M90,120 L90,52 L350,52 L350,104" fill="none" stroke="#f59e0b" stroke-width="1.6" marker-end="url(#ls9a)"/>
              <text x="220" y="42" font-size="12" fill="#fcd34d">residual: keep x, add the change</text>
              <path d="M374,120 L374,52 L634,52 L634,104" fill="none" stroke="#f59e0b" stroke-width="1.6" marker-end="url(#ls9a)"/>
              <text x="504" y="42" font-size="12" fill="#fcd34d">residual again</text>
              <rect x="10" y="95" width="70" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="45" y="116" font-weight="700">x</text>
              <text x="45" y="134" font-size="11" fill="#9b99b8">(B, T, C)</text>
              <line x1="80" y1="120" x2="98" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls9a)"/>
              <rect x="100" y="95" width="82" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="141" y="116">Layer</text>
              <text x="141" y="133">Norm 1</text>
              <line x1="182" y1="120" x2="198" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls9a)"/>
              <rect x="200" y="95" width="120" height="50" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="260" y="116">Multi-head</text>
              <text x="260" y="133">attention</text>
              <line x1="320" y1="120" x2="334" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls9a)"/>
              <circle cx="350" cy="120" r="14" fill="#1f1f44" stroke="#f59e0b" stroke-width="1.6"/>
              <text x="350" y="125" font-weight="700" fill="#fcd34d">+</text>
              <line x1="364" y1="120" x2="382" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls9a)"/>
              <rect x="384" y="95" width="82" height="50" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="425" y="116">Layer</text>
              <text x="425" y="133">Norm 2</text>
              <line x1="466" y1="120" x2="482" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls9a)"/>
              <rect x="484" y="95" width="120" height="50" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="544" y="116">MLP</text>
              <text x="544" y="133" font-size="11" fill="#9b99b8">C → 4C → C</text>
              <line x1="604" y1="120" x2="618" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls9a)"/>
              <circle cx="634" cy="120" r="14" fill="#1f1f44" stroke="#f59e0b" stroke-width="1.6"/>
              <text x="634" y="125" font-weight="700" fill="#fcd34d">+</text>
              <line x1="648" y1="120" x2="666" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls9a)"/>
              <rect x="668" y="95" width="82" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="709" y="116" font-weight="700">out</text>
              <text x="709" y="134" font-size="11" fill="#9b99b8">(B, T, C)</text>
              <text x="260" y="168" font-size="11.5" fill="#67e8f9">talk: tokens share information</text>
              <text x="544" y="168" font-size="11.5" fill="#6ee7b7">think: each token on its own</text>
              <rect x="10" y="192" width="740" height="44" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="219" font-size="12.5">The output has the same shape as the input. So you can stack n_layer blocks, one on top of another.</text>
            </g>
          </svg>
          <figcaption>A pre-norm transformer block. Each sub-layer gets a normalised copy of x, and its result is added back to x.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The four parts of a block</h3>
          <p>A transformer block has four kinds of parts. You already know one of them.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th><th>Shape in → out</th></tr></thead>
            <tbody>
              <tr><td>Layer norm</td><td>Rescales each token's vector so its numbers have mean 0 and spread 1.</td><td>(B, T, C) → (B, T, C)</td></tr>
              <tr><td>Multi-head attention</td><td>Each token collects information from earlier tokens. This is the "talk" step.</td><td>(B, T, C) → (B, T, C)</td></tr>
              <tr><td>MLP</td><td>A small neural network that works on each token alone. This is the "think" step.</td><td>(B, T, C) → (B, T, C)</td></tr>
              <tr><td>Residual connection</td><td>Adds the result of a sub-layer back to its input.</td><td>(B, T, C) + (B, T, C)</td></tr>
            </tbody>
          </table>
          <p>Notice that every part keeps the shape (B, T, C). B is the batch size, T is the number of tokens, and C is the embedding size.</p>
        </div>
        <div class="lc-card">
          <h3>Layer norm: a worked example</h3>
          <p><strong>Layer norm</strong> (layer normalisation) works on one token vector at a time. It subtracts the mean, then divides by the standard deviation. This keeps the numbers in a safe range, so training stays stable.</p>
          <p>Take one token with C = 4 numbers: [2, 4, 6, 8].</p>
          <ul class="lc-list">
            <li>Mean = (2 + 4 + 6 + 8) / 4 = 5.</li>
            <li>Differences from the mean: [-3, -1, 1, 3].</li>
            <li>Variance = (9 + 1 + 1 + 9) / 4 = 5, so the standard deviation is √5 ≈ 2.236.</li>
            <li>Divide: [-3, -1, 1, 3] / 2.236 = [-1.342, -0.447, 0.447, 1.342].</li>
          </ul>
          <p>In PyTorch this is one layer: <code>nn.LayerNorm(4)</code>. It gives the same four numbers. Part 1 in the code editor below does this sum in NumPy. Part 3 does it with <code>nn.LayerNorm</code>.</p>
          <p>Layer norm also has two learned vectors of size C: a scale and a shift. They start at 1 and 0, so they change nothing at first. Training can adjust them later.</p>
        </div>
        <div class="lc-card">
          <h3>Residual connections and pre-norm</h3>
          <p>A <strong>residual connection</strong> means you write <code>x = x + f(x)</code> instead of <code>x = f(x)</code>. The sub-layer only has to learn a small <em>change</em> to x. The original x always passes straight through.</p>
          <p>This matters for deep models. During training, gradients flow back through the "+" with no loss. So even the first layers get a useful learning signal.</p>
          <p>Where does layer norm go? The first transformer paper put it <em>after</em> each residual add (post-norm). GPT-2 and most later models put it <em>before</em> each sub-layer (pre-norm). Pre-norm usually trains more smoothly, so TinyGPT uses it:</p>
          <table class="lc-table">
            <thead><tr><th>Pre-norm (TinyGPT)</th><th>Post-norm (first transformer paper)</th></tr></thead>
            <tbody>
              <tr><td><code>x = x + attn(ln1(x))</code></td><td><code>x = ln1(x + attn(x))</code></td></tr>
              <tr><td><code>x = x + mlp(ln2(x))</code></td><td><code>x = ln2(x + mlp(x))</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The MLP</h3>
          <p>The MLP (multi-layer perceptron) has two linear layers. The first one makes each vector 4 times bigger: C → 4C. Then a <strong>GELU</strong> activation bends the numbers. GELU is a smooth version of ReLU: it keeps big positive values and squashes negative ones towards 0. The second linear layer brings the size back: 4C → C.</p>
          <p>The MLP looks at one token at a time. Attention mixes tokens, and the MLP processes what each token has collected. With C = 32, the MLP has 32 × 128 + 128 + 128 × 32 + 32 = 8,352 parameters. That is about two thirds of the whole block.</p>
        </div>
        <div class="lc-card">
          <h3>The block in PyTorch</h3>
          <p>In PyTorch the block is one small class. It uses <code>MultiHeadAttention</code>, the class you wrote earlier in this course. The tiny config uses n_embd = 32, n_head = 4 and block_size = 16.</p>
          <p>Part 3 in the code editor below has the full <code>Block</code> class, with the attention classes it needs. Its forward pass is just two lines: <code>x = x + self.attn(self.ln1(x))</code>, then <code>x = x + self.mlp(self.ln2(x))</code>.</p>
          <p>A batch of shape (2, 16, 32) goes in, and a batch of shape (2, 16, 32) comes out. PyTorch does not run in the browser, so Part 2 builds the same block in NumPy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: put the block in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one pre-norm transformer block in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Take the input x with shape (B, T, C)</li>
              <li data-order="2">Apply the first layer norm to a copy of x</li>
              <li data-order="3">Run multi-head attention on the normalised copy</li>
              <li data-order="4">Add the attention result back to x</li>
              <li data-order="5">Apply the second layer norm, then run the MLP</li>
              <li data-order="6">Add the MLP result back to x and pass it to the next block</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has three parts. Part 1 is the layer norm example. Part 2 builds one block in NumPy with random weights, using a single attention head to keep it short. Part 3 is the same block in PyTorch.</p>
          <ol class="lc-list">
            <li>Run it. Part 1 shows the worked example: [-1.342, -0.447, 0.447, 1.342].</li>
            <li>In Part 2, check that the shape in and the shape out are both (2, 4, 8). See how layer norm makes the mean 0 and the standard deviation 1.</li>
            <li>In Part 2, set <code>USE_RESIDUAL = False</code>. The average change to x jumps to 100%. Without the residual, the block throws away the input.</li>
            <li>In Part 2, change <code>C = 8</code> to <code>C = 16</code>. The shapes change, but the input shape and output shape still match.</li>
            <li>In Part 2, call the block twice: <code>out = block(block(x))</code>. This is a stack of two blocks (with shared weights here).</li>
            <li>On your own computer, run Part 3 with PyTorch. It prints (2, 16, 32) twice, and the MLP has 8,352 parameters.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A transformer block is <code>x = x + attn(ln1(x))</code> then <code>x = x + mlp(ln2(x))</code>. It keeps the shape (B, T, C), so you can stack as many blocks as you like.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Building a transformer block, in NumPy and in PyTorch.
        # Parts 1 and 2 run here in the browser. Part 3 uses PyTorch: run it on your own computer.
        import numpy as np


        def layer_norm(x, eps=1e-5):
            mean = x.mean(axis=-1, keepdims=True)
            var = x.var(axis=-1, keepdims=True)
            return (x - mean) / np.sqrt(var + eps)    # each token: mean 0, std 1


        # ── Part 1: layer norm of one token, [2, 4, 6, 8] ──
        print("== Part 1: layer norm of one token ==")
        print("layer norm of [2, 4, 6, 8]:", layer_norm(np.array([2.0, 4.0, 6.0, 8.0])).round(3))


        # ── Part 2: one pre-norm transformer block in NumPy ──
        print("\n== Part 2: one transformer block in NumPy ==")
        np.random.seed(42)
        B, T, C = 2, 4, 8          # batch, tokens, embedding size
        USE_RESIDUAL = True        # try False: the block replaces x instead of adding to it

        def attention(x, Wq, Wk, Wv):
            q, k, v = x @ Wq, x @ Wk, x @ Wv
            scores = q @ k.transpose(0, 2, 1) / np.sqrt(C)
            mask = np.tril(np.ones((T, T)))           # causal: no looking ahead
            scores = np.where(mask == 1, scores, -np.inf)
            w = np.exp(scores - scores.max(axis=-1, keepdims=True))
            w = w / w.sum(axis=-1, keepdims=True)
            return w @ v

        def gelu(x):
            return 0.5 * x * (1 + np.tanh(0.7978845608 * (x + 0.044715 * x ** 3)))

        def mlp(x, W1, W2):
            return gelu(x @ W1) @ W2                  # C -> 4C -> C

        Wq, Wk, Wv = (np.random.randn(C, C) * 0.3 for _ in range(3))
        W1 = np.random.randn(C, 4 * C) * 0.3
        W2 = np.random.randn(4 * C, C) * 0.3

        def block(x):
            if USE_RESIDUAL:
                x = x + attention(layer_norm(x), Wq, Wk, Wv)   # talk
                x = x + mlp(layer_norm(x), W1, W2)             # think
            else:
                x = attention(layer_norm(x), Wq, Wk, Wv)
                x = mlp(layer_norm(x), W1, W2)
            return x

        x = np.random.randn(B, T, C) * 3 + 1        # pretend embeddings (B, T, C)
        print("input shape :", x.shape)
        ln = layer_norm(x)
        print("token 0 before norm: mean %.2f, std %.2f" % (x[0, 0].mean(), x[0, 0].std()))
        print("token 0 after norm : mean %.2f, std %.2f" % (ln[0, 0].mean(), ln[0, 0].std()))

        out = block(x)
        print("output shape:", out.shape)
        change = np.abs(out - x).mean() / np.abs(x).mean()
        print("average change to x: %.0f%%" % (change * 100))
        print("token 0 first 4 numbers in :", x[0, 0, :4].round(2))
        print("token 0 first 4 numbers out:", out[0, 0, :4].round(2))


        # ── Part 3: layer norm and the block in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 3: the block in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            ln = nn.LayerNorm(4)                     # C = 4 numbers per token
            x = torch.tensor([[2.0, 4.0, 6.0, 8.0]])
            print(ln(x).detach())

            class Head(nn.Module):
                """One head of causal self-attention."""
                def __init__(self, n_embd, head_size, block_size):
                    super().__init__()
                    self.key = nn.Linear(n_embd, head_size, bias=False)
                    self.query = nn.Linear(n_embd, head_size, bias=False)
                    self.value = nn.Linear(n_embd, head_size, bias=False)
                    self.register_buffer("tril", torch.tril(torch.ones(block_size, block_size)))

                def forward(self, x):
                    B, T, C = x.shape
                    q = self.query(x)                                   # (B, T, hs)
                    k = self.key(x)                                     # (B, T, hs)
                    v = self.value(x)                                   # (B, T, hs)
                    wei = q @ k.transpose(-2, -1) * k.shape[-1] ** -0.5 # (B, T, T)
                    wei = wei.masked_fill(self.tril[:T, :T] == 0, float("-inf"))
                    wei = F.softmax(wei, dim=-1)                        # rows add up to 1
                    return wei @ v                                      # (B, T, hs)

            class MultiHeadAttention(nn.Module):    # the class you wrote earlier in this course
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    head_size = n_embd // n_head
                    self.heads = nn.ModuleList([Head(n_embd, head_size, block_size) for _ in range(n_head)])
                    self.proj = nn.Linear(n_embd, n_embd)

                def forward(self, x):
                    out = torch.cat([h(x) for h in self.heads], dim=-1)   # (B, T, n_head * head_size)
                    return self.proj(out)                                  # (B, T, C)

            class Block(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.ln1 = nn.LayerNorm(n_embd)
                    self.attn = MultiHeadAttention(n_embd, n_head, block_size)
                    self.ln2 = nn.LayerNorm(n_embd)
                    self.mlp = nn.Sequential(
                        nn.Linear(n_embd, 4 * n_embd),
                        nn.GELU(),
                        nn.Linear(4 * n_embd, n_embd),
                    )

                def forward(self, x):
                    x = x + self.attn(self.ln1(x))   # talk: tokens share information
                    x = x + self.mlp(self.ln2(x))    # think: each token on its own
                    return x

            torch.manual_seed(42)
            block = Block(n_embd=32, n_head=4, block_size=16)
            x = torch.randn(2, 16, 32)               # (B, T, C)
            out = block(x)
            print(x.shape, "->", out.shape)
            print("MLP parameters:", sum(p.numel() for p in block.mlp.parameters()))
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Building the Full GPT Model</h1>
        </div>
        <p class="lc-lead">You have all the parts. Now you join them into one model called <strong>TinyGPT</strong>. Token IDs go in, and a score for every possible next token comes out. In this lesson you add the final layer norm and the output layer, share weights between the input and output, and count every parameter.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The full TinyGPT model. Token IDs with shape B, T go into the token embedding table. Positions go into the position embedding table. The two are added to give B, T, C. They pass through n_layer transformer blocks, a final layer norm, and the lm_head, which gives logits with shape B, T, V. The lm_head shares its weights with the token embedding table.">
            <defs><marker id="ls10a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <path d="M165,73 C165,18 564,18 564,93" fill="none" stroke="#ec4899" stroke-width="1.6" stroke-dasharray="6 4"/>
              <rect x="250" y="14" width="250" height="22" rx="6" fill="#1f1f44"/>
              <text x="375" y="30" font-size="12" fill="#f9a8d4">weight tying: one shared (V, C) table</text>
              <rect x="10" y="75" width="80" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="50" y="94" font-weight="700">idx</text>
              <text x="50" y="111" font-size="11" fill="#9b99b8">(B, T)</text>
              <line x1="90" y1="97" x2="113" y2="97" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <rect x="115" y="75" width="100" height="44" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="165" y="94">tok_emb</text>
              <text x="165" y="111" font-size="11" fill="#9b99b8">(V, C)</text>
              <text x="50" y="160" font-size="11" fill="#9b99b8">0, 1, …, T-1</text>
              <line x1="90" y1="155" x2="113" y2="155" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <rect x="115" y="133" width="100" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="165" y="152">pos_emb</text>
              <text x="165" y="169" font-size="11" fill="#9b99b8">(T, C)</text>
              <line x1="215" y1="97" x2="234" y2="114" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <line x1="215" y1="155" x2="234" y2="138" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <circle cx="245" cy="126" r="14" fill="#1f1f44" stroke="#f59e0b" stroke-width="1.6"/>
              <text x="245" y="131" font-weight="700" fill="#fcd34d">+</text>
              <line x1="259" y1="126" x2="283" y2="126" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <rect x="285" y="96" width="120" height="60" rx="8" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="345" y="121">Block</text>
              <text x="345" y="140" font-size="12" fill="#67e8f9">× n_layer</text>
              <line x1="405" y1="126" x2="425" y2="126" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <rect x="427" y="104" width="70" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="462" y="131">ln_f</text>
              <line x1="497" y1="126" x2="517" y2="126" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <rect x="519" y="95" width="90" height="62" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="564" y="121">lm_head</text>
              <text x="564" y="139" font-size="11" fill="#9b99b8">C → V</text>
              <line x1="609" y1="126" x2="629" y2="126" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls10a)"/>
              <rect x="631" y="99" width="119" height="54" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="690" y="121" font-weight="700" fill="#6ee7b7">logits</text>
              <text x="690" y="140" font-size="11" fill="#9b99b8">(B, T, V)</text>
              <text x="345" y="178" font-size="11" fill="#9b99b8">(B, T, C) in and out</text>
              <text x="462" y="166" font-size="11" fill="#9b99b8">(B, T, C)</text>
              <rect x="10" y="200" width="740" height="88" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="222" font-weight="700">Parameters for V = 35, T = 16, C = 32, n_layer = 2</text>
              <text x="380" y="246" font-size="12">tok_emb 1,120 · pos_emb 512 · 2 blocks 25,216 · ln_f 64 · lm_head 0 (tied)</text>
              <text x="380" y="272" font-size="12.5" fill="#6ee7b7" font-weight="700">Total: 26,912 parameters</text>
            </g>
          </svg>
          <figcaption>TinyGPT from end to end. The numbers in the box come from the code in this lesson, with a character vocabulary of 35.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From token IDs to logits</h3>
          <p>The model does five things, in this order:</p>
          <ol class="lc-list">
            <li><strong>Token embeddings:</strong> look up a vector of size C for each token ID. Shape (B, T) becomes (B, T, C).</li>
            <li><strong>Position embeddings:</strong> look up a vector for each position 0 to T-1, and add it.</li>
            <li><strong>Blocks:</strong> run n_layer transformer blocks, one after another. The shape stays (B, T, C).</li>
            <li><strong>Final layer norm (ln_f):</strong> normalise each vector one last time. Pre-norm blocks need this, because their last residual add is not normalised.</li>
            <li><strong>lm_head:</strong> a linear layer that turns each C-sized vector into V scores. These scores are called <strong>logits</strong>. Softmax turns them into probabilities.</li>
          </ol>
          <p>The output has one row of V logits for every position. So one forward pass gives T predictions at once: what comes after token 1, after tokens 1-2, and so on.</p>
        </div>
        <div class="lc-card">
          <h3>TinyGPT in PyTorch</h3>
          <p>This uses the <code>Block</code> class you built earlier. We use V = 35, the number of different characters in the café text.</p>
          <p>Part 3 in the code editor below has the full <code>TinyGPT</code> class. Its <code>__init__</code> makes the two embedding tables, the stack of blocks, <code>ln_f</code> and <code>lm_head</code>. Its <code>forward</code> runs the five steps above, in order.</p>
          <p>With B = 2 and T = 16, the model turns 2 × 16 token IDs into 2 × 16 × 35 logits. It has 26,912 parameters. GPT-2 small has the same design with about 124 million.</p>
          <p>PyTorch does not run in the browser. So Part 1 in the editor counts the same parameters with plain arithmetic, and Part 2 checks the shapes with NumPy.</p>
        </div>
        <div class="lc-card">
          <h3>Weight tying</h3>
          <p>The token embedding table has shape (V, C). It maps a token to a vector. The lm_head weight also has shape (V, C). It maps a vector back to a score for each token. These are two views of the same idea, so GPT-2 uses <strong>one</strong> table for both. This is called <strong>weight tying</strong>.</p>
          <p>The line <code>self.lm_head.weight = self.tok_emb.weight</code> makes both layers point to the same tensor. Tying saves V × C parameters. Here that is 35 × 32 = 1,120. For GPT-2, with V = 50,257 and C = 768, it saves about 38.6 million.</p>
          <p>We also start the shared table with small random numbers (standard deviation 0.02, as in GPT-2). If the numbers start too big, the first logits are huge and the first loss is far too high.</p>
        </div>
        <div class="lc-card">
          <h3>Counting the parameters</h3>
          <p>Each part has a simple formula. A linear layer from a to b has a × b weights plus b biases. A layer norm has 2 × C.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Formula</th><th>C = 32</th></tr></thead>
            <tbody>
              <tr><td>Two layer norms</td><td>2 × 2C</td><td>128</td></tr>
              <tr><td>Attention q, k, v (no bias)</td><td>C × 3C</td><td>3,072</td></tr>
              <tr><td>Attention output projection</td><td>C × C + C</td><td>1,056</td></tr>
              <tr><td>MLP</td><td>C × 4C + 4C + 4C × C + C</td><td>8,352</td></tr>
              <tr><td><strong>One block</strong></td><td>about 12 × C²</td><td><strong>12,608</strong></td></tr>
            </tbody>
          </table>
          <p>The rule of thumb "about 12 × C² per block" works well for big models. With C = 768, one block has about 7 million parameters. Your exact count depends on small choices, such as whether q, k and v have a bias.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which parts have parameters?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each part of TinyGPT. Does it hold learned numbers?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="learn" data-label="Has learned parameters"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="No parameters of its own"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="learn" data-why="It is a (V, C) table. Training changes every row it uses.">tok_emb</li>
              <li data-bucket="learn" data-why="It is a (T, C) table with one learned vector per position.">pos_emb</li>
              <li data-bucket="learn" data-why="It has a learned scale and shift, 2 × C numbers in total.">ln_f</li>
              <li data-bucket="none" data-why="With weight tying it reuses the tok_emb table. It adds no new numbers.">lm_head (tied)</li>
              <li data-bucket="none" data-why="The causal mask is fixed. It is stored as a buffer, not a parameter.">The causal mask in attention</li>
              <li data-bucket="none" data-why="Softmax is a fixed formula. It only turns logits into probabilities.">Softmax on the logits</li>
              <li data-bucket="learn" data-why="Its two linear layers hold most of the numbers in each block.">The MLP in each block</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 counts TinyGPT's parameters part by part. Part 2 checks the shapes with NumPy. Part 3 builds the real model in PyTorch.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that the total is 26,912. Part 3 prints the same number when you run it with PyTorch on your computer.</li>
            <li>In Part 1, set <code>TIED = False</code>. The lm_head now has its own 1,120 parameters.</li>
            <li>In Part 1, change <code>n_layer = 2</code> to <code>n_layer = 6</code>. Which part grows? Only the blocks.</li>
            <li>In Part 1, try GPT-2 small: <code>V, T, C = 50257, 1024, 768</code> and <code>n_layer = 12</code>. The total is about 124 million.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A GPT model is embeddings, then a stack of blocks, then a final norm and lm_head. The blocks hold most of the parameters, at about 12 × C² each.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # TinyGPT: count the parameters, check the shapes, then build it in PyTorch.
        # Parts 1 and 2 run here in the browser. Part 3 uses PyTorch: run it on your own computer.
        import numpy as np


        # ── Part 1: count the parameters, part by part ──
        print("== Part 1: count the parameters ==")
        V, T, C = 35, 16, 32       # vocab size, block_size, n_embd
        n_layer = 2
        TIED = True                # weight tying: lm_head shares the token embedding table

        def block_params(C):
            ln = 2 * C                       # one LayerNorm: scale + shift
            attn = C * 3 * C + (C * C + C)   # q,k,v (no bias) + output projection
            mlp = (C * 4 * C + 4 * C) + (4 * C * C + C)
            return ln + attn + ln + mlp

        parts = {
            "tok_emb (V x C)": V * C,
            "pos_emb (T x C)": T * C,
            f"blocks ({n_layer} x {block_params(C)})": n_layer * block_params(C),
            "ln_f": 2 * C,
            "lm_head (C x V)": 0 if TIED else C * V,
        }
        for name, n in parts.items():
            print(f"{name:24} {n:>8,}")
        print(f"{'TOTAL':24} {sum(parts.values()):>8,}")


        # ── Part 2: a quick shape check with NumPy (the blocks are skipped here) ──
        print("\n== Part 2: shape check ==")
        np.random.seed(42)
        B, V, T, C = 2, 35, 16, 32         # TinyGPT sizes, whatever you set in Part 1
        tok_emb = np.random.randn(V, C) * 0.02
        pos_emb = np.random.randn(T, C) * 0.02
        idx = np.random.randint(0, V, size=(B, T))      # (B, T) token IDs
        x = tok_emb[idx] + pos_emb                      # (B, T, C)
        logits = x @ tok_emb.T                          # tied lm_head: (B, T, V)
        print("idx", idx.shape, "-> x", x.shape, "-> logits", logits.shape)


        # ── Part 3: TinyGPT in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 3: TinyGPT in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class Head(nn.Module):
                """One head of causal self-attention."""
                def __init__(self, n_embd, head_size, block_size):
                    super().__init__()
                    self.key = nn.Linear(n_embd, head_size, bias=False)
                    self.query = nn.Linear(n_embd, head_size, bias=False)
                    self.value = nn.Linear(n_embd, head_size, bias=False)
                    self.register_buffer("tril", torch.tril(torch.ones(block_size, block_size)))

                def forward(self, x):
                    B, T, C = x.shape
                    q = self.query(x)                                   # (B, T, hs)
                    k = self.key(x)                                     # (B, T, hs)
                    v = self.value(x)                                   # (B, T, hs)
                    wei = q @ k.transpose(-2, -1) * k.shape[-1] ** -0.5 # (B, T, T)
                    wei = wei.masked_fill(self.tril[:T, :T] == 0, float("-inf"))
                    wei = F.softmax(wei, dim=-1)                        # rows add up to 1
                    return wei @ v                                      # (B, T, hs)

            class MultiHeadAttention(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    head_size = n_embd // n_head
                    self.heads = nn.ModuleList([Head(n_embd, head_size, block_size) for _ in range(n_head)])
                    self.proj = nn.Linear(n_embd, n_embd)

                def forward(self, x):
                    out = torch.cat([h(x) for h in self.heads], dim=-1)   # (B, T, n_head * head_size)
                    return self.proj(out)                                  # (B, T, C)

            class Block(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.ln1 = nn.LayerNorm(n_embd)
                    self.attn = MultiHeadAttention(n_embd, n_head, block_size)
                    self.ln2 = nn.LayerNorm(n_embd)
                    self.mlp = nn.Sequential(
                        nn.Linear(n_embd, 4 * n_embd),
                        nn.GELU(),
                        nn.Linear(4 * n_embd, n_embd),
                    )

                def forward(self, x):
                    x = x + self.attn(self.ln1(x))   # talk: tokens share information
                    x = x + self.mlp(self.ln2(x))    # think: each token on its own
                    return x


            class TinyGPT(nn.Module):
                def __init__(self, vocab_size, n_embd=32, n_head=4, n_layer=2, block_size=16):
                    super().__init__()
                    self.tok_emb = nn.Embedding(vocab_size, n_embd)
                    self.pos_emb = nn.Embedding(block_size, n_embd)
                    self.blocks = nn.Sequential(*[Block(n_embd, n_head, block_size) for _ in range(n_layer)])
                    self.ln_f = nn.LayerNorm(n_embd)
                    self.lm_head = nn.Linear(n_embd, vocab_size, bias=False)
                    self.lm_head.weight = self.tok_emb.weight          # weight tying
                    nn.init.normal_(self.tok_emb.weight, std=0.02)     # start with small numbers
                    nn.init.normal_(self.pos_emb.weight, std=0.02)

                def forward(self, idx):
                    B, T = idx.shape
                    pos = torch.arange(T)
                    x = self.tok_emb(idx) + self.pos_emb(pos)   # (B, T, C)
                    x = self.blocks(x)                          # (B, T, C)
                    x = self.ln_f(x)                            # (B, T, C)
                    return self.lm_head(x)                      # (B, T, V) logits

            torch.manual_seed(42)
            model = TinyGPT(vocab_size=35)
            idx = torch.randint(0, 35, (2, 16))     # B=2, T=16 token IDs
            logits = model(idx)
            print("logits:", logits.shape)
            print("parameters:", sum(p.numel() for p in model.parameters()))

            # Weight tying: both layers point to the same tensor.
            print(model.lm_head.weight is model.tok_emb.weight)
            print(model.lm_head.weight.shape)
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Preparing Data for Training</h1>
        </div>
        <p class="lc-lead">TinyGPT is ready, but it cannot read a text file. It needs batches of token IDs, with the right answer for every position. In this lesson you turn the café text into training data. You tokenise it, split it into training and validation parts, cut it into windows, and build inputs and targets.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: the café text split into a training part with the first 90 percent, 844 characters, and a validation part with the last 94 characters. Below: a window of 8 characters, The Litt, is the input x. The target y is the same text moved one place to the left, he Littl. Arrows show each input position pointing to the next character it must predict.">
            <defs><marker id="ls11a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="12" width="648" height="32" rx="6" fill="#123c33" stroke="#10b981"/>
              <text x="344" y="33" font-size="12.5" fill="#6ee7b7">train: the first 90% of the café text (844 characters)</text>
              <rect x="670" y="12" width="70" height="32" rx="6" fill="#3d2f10" stroke="#f59e0b"/>
              <text x="705" y="33" font-size="12" fill="#fcd34d">val: 94</text>
              <text x="50" y="92" font-weight="700" fill="#93c5fd">x</text>
              <text x="50" y="108" font-size="11" fill="#9b99b8">input</text>
              <text x="50" y="192" font-weight="700" fill="#f9a8d4">y</text>
              <text x="50" y="208" font-size="11" fill="#9b99b8">target</text>
              <rect x="100" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="133" y="93">T</text><text x="133" y="109" font-size="10.5" fill="#9b99b8">9</text>
              <rect x="170" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="203" y="93">h</text><text x="203" y="109" font-size="10.5" fill="#9b99b8">18</text>
              <rect x="240" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="273" y="93">e</text><text x="273" y="109" font-size="10.5" fill="#9b99b8">15</text>
              <rect x="310" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="343" y="93">␣</text><text x="343" y="109" font-size="10.5" fill="#9b99b8">1</text>
              <rect x="380" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="413" y="93">L</text><text x="413" y="109" font-size="10.5" fill="#9b99b8">6</text>
              <rect x="450" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="483" y="93">i</text><text x="483" y="109" font-size="10.5" fill="#9b99b8">19</text>
              <rect x="520" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="553" y="93">t</text><text x="553" y="109" font-size="10.5" fill="#9b99b8">29</text>
              <rect x="590" y="76" width="66" height="40" rx="6" fill="#27274e" stroke="#3b82f6"/><text x="623" y="93">t</text><text x="623" y="109" font-size="10.5" fill="#9b99b8">29</text>
              <rect x="170" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="203" y="193">h</text><text x="203" y="209" font-size="10.5" fill="#9b99b8">18</text>
              <rect x="240" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="273" y="193">e</text><text x="273" y="209" font-size="10.5" fill="#9b99b8">15</text>
              <rect x="310" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="343" y="193">␣</text><text x="343" y="209" font-size="10.5" fill="#9b99b8">1</text>
              <rect x="380" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="413" y="193">L</text><text x="413" y="209" font-size="10.5" fill="#9b99b8">6</text>
              <rect x="450" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="483" y="193">i</text><text x="483" y="209" font-size="10.5" fill="#9b99b8">19</text>
              <rect x="520" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="553" y="193">t</text><text x="553" y="209" font-size="10.5" fill="#9b99b8">29</text>
              <rect x="590" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="623" y="193">t</text><text x="623" y="209" font-size="10.5" fill="#9b99b8">29</text>
              <rect x="660" y="176" width="66" height="40" rx="6" fill="#27274e" stroke="#ec4899"/><text x="693" y="193">l</text><text x="693" y="209" font-size="10.5" fill="#9b99b8">21</text>
              <line x1="137" y1="118" x2="199" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <line x1="207" y1="118" x2="269" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <line x1="277" y1="118" x2="339" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <line x1="347" y1="118" x2="409" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <line x1="417" y1="118" x2="479" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <line x1="487" y1="118" x2="549" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <line x1="557" y1="118" x2="619" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <line x1="627" y1="118" x2="689" y2="172" stroke="#9b99b8" stroke-width="1.3" marker-end="url(#ls11a)"/>
              <text x="704" y="100" font-size="11" fill="#9b99b8">T = 8</text>
              <text x="380" y="252" font-size="12.5">Each arrow is one training example: read x up to here, then predict the next character.</text>
              <text x="380" y="276" font-size="12.5" fill="#fcd34d">One window of T = 8 gives 8 examples. y is just x moved one place to the left.</text>
            </g>
          </svg>
          <figcaption>The first 9 characters of the café text, with their IDs from the character tokeniser. A space is shown as ␣.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: tokenise the whole corpus</h3>
          <p>First you turn all of CAFE_TEXT into one long list of token IDs. You do this once, before training.</p>
          <p>To keep the code short, this lesson uses a <strong>character tokeniser</strong>. Every different character gets one ID. The café text has 938 characters and 35 different ones, so V = 35. Your BPE tokeniser from earlier plugs in the same way. On the café text it gives 621 tokens and V = 286.</p>
          <table class="lc-table">
            <thead><tr><th>Character</th><th>newline</th><th>space</th><th>.</th><th>T</th><th>e</th><th>h</th></tr></thead>
            <tbody><tr><td>ID</td><td>0</td><td>1</td><td>2</td><td>9</td><td>15</td><td>18</td></tr></tbody>
          </table>
          <p>The IDs come from <code>sorted(set(CAFE_TEXT))</code>. Sorting makes the IDs the same every time you run the code.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: split into train and validation</h3>
          <p>You keep the first 90% of the IDs for <strong>training</strong>. You keep the last 10% for <strong>validation</strong>. The model never learns from the validation part. You only use it to check how well the model does on text it has not seen.</p>
          <p>For the café text, <code>n = int(0.9 * 938)</code> = 844. So training gets 844 tokens and validation gets 94. The validation part is the end of the story. It starts in the middle of the line about Ellie counting the cakes. Then Molly closes the café, and the café will open again tomorrow.</p>
          <p>Why split by position and not at random? Nearby text is very similar. A random split would put almost the same sentences in both parts. Then the validation score would look better than it really is.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: inputs and targets, shifted by one</h3>
          <p>The model sees a <strong>context window</strong> of T tokens at a time. T is also called block_size. For each window you need two lists:</p>
          <ul class="lc-list">
            <li><strong>x</strong> (the input): T tokens starting at some position i.</li>
            <li><strong>y</strong> (the target): the T tokens starting at position i + 1.</li>
          </ul>
          <p>Part 1 in the code editor below does this for the first 9 IDs, "The Littl", with T = 8. Then x is [9, 18, 15, 1, 6, 19, 29, 29] and y is [18, 15, 1, 6, 19, 29, 29, 21].</p>
          <p>Look at position 0: x has 9 ("T") and y has 18 ("h"). After "T", the right answer is "h". At position 3, the model has read "The " and must predict "L". The causal mask makes sure each position only sees x up to that point. So one window gives T separate training examples.</p>
        </div>
        <div class="lc-card">
          <h3>Step 4: random batches</h3>
          <p>A <strong>batch</strong> is B windows stacked together. Each window starts at a random position. Random starts mean the model sees the text in a new order each time. Batches also let the computer do many windows at once.</p>
          <p>Part 5 in the code editor below has <code>get_batch</code> in PyTorch. <code>train_data</code> and <code>val_data</code> hold the token IDs from step 2.</p>
          <p>It picks B random start positions. For each start i, x takes the T tokens from position i, and y takes the T tokens from position i + 1. Then it stacks the rows.</p>
          <p>x and y both have shape (B, T). Each row of y is the same text as x, moved by one character. Note the upper limit <code>len(d) - block_size</code>: it makes sure there is always one more token for the last target.</p>
          <p>Part 3 runs a NumPy version of the same code, because PyTorch does not run in the browser. It uses T = 8 and B = 4, so x and y both have shape (4, 8).</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build one batch</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Start">Call get_batch("train") with T = 16 and B = 4.</li>
              <li data-kind="thought" data-label="Pick starts">Pick 4 random start positions. Each must be less than 844 - 16 = 828.</li>
              <li data-kind="tool" data-label="Cut x">For each start i, take the IDs from i to i + 15. Stack them into x with shape (4, 16).</li>
              <li data-kind="tool" data-label="Cut y">For each start i, take the IDs from i + 1 to i + 16. Stack them into y with shape (4, 16).</li>
              <li data-kind="check" data-label="Check">y[b, t] is always the token right after x[b, t]. The last target uses the one extra token.</li>
              <li data-kind="warn" data-label="Common bug">If the start could be 828 or more, the last window would run off the end. y would be shorter than x.</li>
              <li data-kind="answer" data-label="Result">One batch holds 4 × 16 = 64 next-token examples, ready for the model.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 shows the shift by one. Part 2 tokenises and splits the café text. Part 3 builds one batch, and Part 4 lists the training examples hidden in its first row. Part 5 is the PyTorch version.</p>
          <ol class="lc-list">
            <li>Run it. In Part 3, check that y is x moved one place to the left.</li>
            <li>In Part 3, change <code>block_size = 8</code> to <code>block_size = 4</code>. Part 4 now shows only 4 examples.</li>
            <li>In Part 3, change <code>get_batch("train")</code> to <code>get_batch("val")</code>. The window now comes from the end of the story.</li>
            <li>In Part 3, change the seed in <code>np.random.seed(42)</code>. You get different windows, but the shift by one never changes.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Training data for a GPT is just the token list cut into windows. The target y is the input x moved one place to the left, so every position is one next-token example.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Turn the café text into training batches: inputs x and targets y.
        # We use a character tokenizer to keep the code short.
        # Your BPE tokenizer from earlier plugs in the same way.
        # Parts 1 to 4 run here in the browser. Part 5 uses PyTorch: run it on your own computer.
        import numpy as np

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()


        # ── Part 1: inputs and targets, shifted by one ──
        print("== Part 1: x and y, shifted by one ==")
        ids = [9, 18, 15, 1, 6, 19, 29, 29, 21]   # "The Littl"
        T = 8
        x = ids[0:T]        # positions 0 to 7
        y = ids[1:T + 1]    # positions 1 to 8: one step later
        print("x:", x)
        print("y:", y)


        # ── Part 2: tokenise the corpus and split it ──
        print("\n== Part 2: tokenise and split ==")
        chars = sorted(set(CAFE_TEXT))          # every character gets an ID
        stoi = {ch: i for i, ch in enumerate(chars)}
        itos = {i: ch for ch, i in stoi.items()}
        data = np.array([stoi[ch] for ch in CAFE_TEXT])
        print("characters:", len(data), " vocabulary size V:", len(chars))

        n = int(0.9 * len(data))                # first 90% for training, last 10% for validation
        train_data, val_data = data[:n], data[n:]
        print("train:", len(train_data), " val:", len(val_data))


        # ── Part 3: random batches of windows ──
        print("\n== Part 3: one batch ==")
        block_size = 8    # T: how many tokens the model sees at once
        batch_size = 4    # B: how many windows per batch
        np.random.seed(42)

        def get_batch(split):
            d = train_data if split == "train" else val_data
            ix = np.random.randint(0, len(d) - block_size, size=batch_size)
            x = np.stack([d[i:i + block_size] for i in ix])
            y = np.stack([d[i + 1:i + block_size + 1] for i in ix])
            return x, y

        x, y = get_batch("train")
        print("x shape:", x.shape, " y shape:", y.shape)
        print("x[0]:", x[0], repr("".join(itos[i] for i in x[0])))
        print("y[0]:", y[0], repr("".join(itos[i] for i in y[0])))


        # ── Part 4: one window holds block_size training examples ──
        print("\n== Part 4: the examples inside row 0 ==")
        for t in range(block_size):
            context = "".join(itos[i] for i in x[0, :t + 1])
            print(f"  {context!r:>12} -> {itos[y[0, t]]!r}")


        # ── Part 5: get_batch in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 5: get_batch in PyTorch ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            chars = sorted(set(CAFE_TEXT))
            stoi = {ch: i for i, ch in enumerate(chars)}
            itos = {i: ch for ch, i in stoi.items()}
            data = torch.tensor([stoi[ch] for ch in CAFE_TEXT], dtype=torch.long)
            n = int(0.9 * len(data))
            train_data, val_data = data[:n], data[n:]

            block_size, batch_size = 16, 4

            def get_batch(split):
                d = train_data if split == "train" else val_data
                ix = torch.randint(len(d) - block_size, (batch_size,))
                x = torch.stack([d[i:i + block_size] for i in ix])
                y = torch.stack([d[i + 1:i + block_size + 1] for i in ix])
                return x, y

            torch.manual_seed(42)
            x, y = get_batch("train")
            print(x.shape, y.shape)
            print(repr("".join(itos[int(i)] for i in x[0])))
            print(repr("".join(itos[int(i)] for i in y[0])))
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">The Training Loop</h1>
        </div>
        <p class="lc-lead">You have a model and batches of data. The <strong>training loop</strong> joins them. It repeats the same few steps thousands of times: predict, measure the error, find how to fix each weight, and change the weights a little. In this lesson you write the loop in PyTorch and in NumPy, and you learn to read the losses it prints.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Top: the training loop with six steps in a row: get_batch, forward, loss, zero_grad, backward and step, then repeat. Bottom: a bar chart of the printed losses for TinyGPT on the café text. Train loss falls from 3.52 at step 0 to 0.734 at step 1000. Validation loss falls to about 2.1 and then starts to rise.">
            <defs><marker id="ls12a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="7" y="16" width="106" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="60" y="39">get_batch</text><text x="60" y="58" font-size="11" fill="#9b99b8">x, y</text>
              <line x1="113" y1="44" x2="133" y2="44" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls12a)"/>
              <rect x="135" y="16" width="106" height="56" rx="8" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="188" y="39">forward</text><text x="188" y="58" font-size="11" fill="#9b99b8">logits (B, T, V)</text>
              <line x1="241" y1="44" x2="261" y2="44" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls12a)"/>
              <rect x="263" y="16" width="106" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="316" y="39">loss</text><text x="316" y="58" font-size="11" fill="#9b99b8">cross-entropy</text>
              <line x1="369" y1="44" x2="389" y2="44" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls12a)"/>
              <rect x="391" y="16" width="106" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="444" y="39">zero_grad</text><text x="444" y="58" font-size="11" fill="#9b99b8">clear old grads</text>
              <line x1="497" y1="44" x2="517" y2="44" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls12a)"/>
              <rect x="519" y="16" width="106" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="572" y="39">backward</text><text x="572" y="58" font-size="11" fill="#9b99b8">new gradients</text>
              <line x1="625" y1="44" x2="645" y2="44" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls12a)"/>
              <rect x="647" y="16" width="106" height="56" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="700" y="39">step</text><text x="700" y="58" font-size="11" fill="#9b99b8">update weights</text>
              <path d="M700,74 L700,96 L60,96 L60,78" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#ls12a)"/>
              <text x="380" y="114" font-size="11.5" fill="#fcd34d">repeat for many steps</text>
              <rect x="7" y="128" width="746" height="206" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="150" font-weight="700">Printed losses: TinyGPT on the café text</text>
              <rect x="560" y="160" width="12" height="12" rx="2" fill="#8b5cf6"/><text x="600" y="171" font-size="11" fill="#c4b5fd">train</text>
              <rect x="640" y="160" width="12" height="12" rx="2" fill="#22d3ee"/><text x="672" y="171" font-size="11" fill="#67e8f9">val</text>
              <text x="78" y="196" font-size="11" fill="#9b99b8">random</text>
              <text x="78" y="210" font-size="11" fill="#9b99b8">guess</text>
              <text x="78" y="224" font-size="11" fill="#9b99b8">ln(35) = 3.56</text>
              <line x1="140" y1="191" x2="740" y2="191" stroke="#9b99b8" stroke-width="1" stroke-dasharray="4 4"/>
              <line x1="140" y1="312" x2="740" y2="312" stroke="#4b4a78" stroke-width="1"/>
              <rect x="150" y="192" width="32" height="120" rx="3" fill="#8b5cf6"/>
              <text x="166" y="187" font-size="10.5" fill="#c4b5fd">3.52</text>
              <rect x="186" y="192" width="32" height="120" rx="3" fill="#22d3ee"/>
              <text x="202" y="187" font-size="10.5" fill="#67e8f9">3.53</text>
              <text x="184" y="328" font-size="11" fill="#9b99b8">step 0</text>
              <rect x="248" y="237" width="32" height="75" rx="3" fill="#8b5cf6"/>
              <text x="264" y="232" font-size="10.5" fill="#c4b5fd">2.20</text>
              <rect x="284" y="235" width="32" height="77" rx="3" fill="#22d3ee"/>
              <text x="300" y="230" font-size="10.5" fill="#67e8f9">2.25</text>
              <text x="282" y="328" font-size="11" fill="#9b99b8">step 200</text>
              <rect x="346" y="255" width="32" height="57" rx="3" fill="#8b5cf6"/>
              <text x="362" y="250" font-size="10.5" fill="#c4b5fd">1.68</text>
              <rect x="382" y="241" width="32" height="71" rx="3" fill="#22d3ee"/>
              <text x="398" y="236" font-size="10.5" fill="#67e8f9">2.09</text>
              <text x="380" y="328" font-size="11" fill="#9b99b8">step 400</text>
              <rect x="444" y="268" width="32" height="44" rx="3" fill="#8b5cf6"/>
              <text x="460" y="263" font-size="10.5" fill="#c4b5fd">1.29</text>
              <rect x="480" y="240" width="32" height="72" rx="3" fill="#22d3ee"/>
              <text x="496" y="235" font-size="10.5" fill="#67e8f9">2.11</text>
              <text x="478" y="328" font-size="11" fill="#9b99b8">step 600</text>
              <rect x="542" y="279" width="32" height="33" rx="3" fill="#8b5cf6"/>
              <text x="558" y="274" font-size="10.5" fill="#c4b5fd">0.96</text>
              <rect x="578" y="236" width="32" height="76" rx="3" fill="#22d3ee"/>
              <text x="594" y="231" font-size="10.5" fill="#67e8f9">2.23</text>
              <text x="576" y="328" font-size="11" fill="#9b99b8">step 800</text>
              <rect x="640" y="287" width="32" height="25" rx="3" fill="#8b5cf6"/>
              <text x="656" y="282" font-size="10.5" fill="#c4b5fd">0.73</text>
              <rect x="676" y="234" width="32" height="78" rx="3" fill="#22d3ee"/>
              <text x="692" y="229" font-size="10.5" fill="#67e8f9">2.29</text>
              <text x="674" y="328" font-size="11" fill="#9b99b8">step 1000</text>
            </g>
          </svg>
          <figcaption>The six steps of one training step, and the real losses printed by the PyTorch code in this lesson. Validation loss stops falling while train loss keeps going down.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The steps of one training step</h3>
          <ol class="lc-list">
            <li><strong>Get a batch:</strong> x and y, both with shape (B, T).</li>
            <li><strong>Forward pass:</strong> run the model on x. You get logits with shape (B, T, V).</li>
            <li><strong>Loss:</strong> compare the logits with y using <strong>cross-entropy</strong>. The loss is one number. Lower is better.</li>
            <li><strong>Zero the gradients:</strong> clear the gradients from the last step.</li>
            <li><strong>Backward pass:</strong> work out the gradient of the loss for every parameter. A <strong>gradient</strong> says which way, and how strongly, to change a weight to lower the loss.</li>
            <li><strong>Optimiser step:</strong> change every weight a small amount against its gradient.</li>
          </ol>
          <p>One pass through these steps is one <strong>training step</strong>. The size of each change is set by the <strong>learning rate</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Backward: a tiny worked example</h3>
          <p>Say there are only 3 tokens. The model gives probabilities [0.2, 0.7, 0.1], but the right answer is token 0. The cross-entropy loss is −ln(0.2) ≈ 1.609.</p>
          <p>For softmax with cross-entropy, the gradient for each score is simple: the probability, minus 1 for the right token.</p>
          <p>So the gradient is [0.2 - 1, 0.7, 0.1] = [-0.8, 0.7, 0.1]. Part 1 in the code editor below does this sum in NumPy.</p>
          <p>The gradient is negative for token 0. So the step <em>raises</em> its score. The gradient is positive for tokens 1 and 2, so their scores go down. PyTorch's <code>loss.backward()</code> works out gradients like these for all the parameters in the model, layer by layer.</p>
        </div>
        <div class="lc-card">
          <h3>The loop in PyTorch</h3>
          <p>This uses <code>TinyGPT</code> and <code>get_batch</code> from earlier in this course, with T = 16 and B = 4. <strong>AdamW</strong> is the optimiser most LLMs use. It changes each weight using its gradient, with a size that adapts for every weight.</p>
          <p>Part 3 in the code editor below has the full PyTorch code. <code>compute_loss</code> runs the model on x and returns the cross-entropy loss.</p>
          <p>The optimiser is <code>torch.optim.AdamW(model.parameters(), lr=1e-3)</code>. Then each step of the loop is four lines: <code>loss = compute_loss(x, y)</code>, <code>optimizer.zero_grad()</code>, <code>loss.backward()</code> and <code>optimizer.step()</code>.</p>
          <p>The full PyTorch run takes a few seconds on a laptop CPU. Every 200 steps it prints the train and val loss. The chart at the top of this lesson shows those numbers. PyTorch does not run in the browser, so Part 2 runs a NumPy version of the same loop.</p>
        </div>
        <div class="lc-card">
          <h3>Three details that matter</h3>
          <ul class="lc-list">
            <li><strong>Why zero_grad?</strong> PyTorch <em>adds</em> new gradients to the old ones. If you forget <code>zero_grad()</code>, every step uses a growing sum of old gradients. Training goes wrong.</li>
            <li><strong>Why reshape for the loss?</strong> <code>F.cross_entropy</code> wants a list of predictions, shape (N, V), and a list of answers, shape (N). So (B, T, V) becomes (B × T, V).</li>
            <li><strong>Why <code>model.eval()</code> and <code>torch.no_grad()</code>?</strong> When you only measure the loss, you do not need gradients. Skipping them saves memory and time. <code>model.eval()</code> also turns off training-only layers such as dropout, if the model has them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Reading the printed losses</h3>
          <p>The loss for one batch jumps around. So the PyTorch code measures the average loss over 20 batches, for train and for val. A small helper called <code>estimate_loss</code> does this inside <code>torch.no_grad()</code>.</p>
          <table class="lc-table">
            <thead><tr><th>What you see</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td>Step 0 loss near ln(V) = ln(35) ≈ 3.56</td><td>The model starts by guessing evenly. This is a good first check.</td></tr>
              <tr><td>Both losses fall</td><td>The model is learning patterns that also work on new text.</td></tr>
              <tr><td>Train falls, val stops or rises</td><td>The model starts to memorise the training text. This is <strong>overfitting</strong>.</td></tr>
              <tr><td>Loss goes up fast or becomes nan</td><td>Something is broken. Often the learning rate is too high.</td></tr>
            </tbody>
          </table>
          <p>In the PyTorch run in the chart, val loss is lowest around step 400. After that it rises, while train loss keeps falling. The café text is very small, so TinyGPT begins to memorise it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order the training step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put one PyTorch training step in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">x, y = get_batch("train")</li>
              <li data-order="2">logits = model(x)</li>
              <li data-order="3">loss = F.cross_entropy(...)</li>
              <li data-order="4">optimizer.zero_grad()</li>
              <li data-order="5">loss.backward()</li>
              <li data-order="6">optimizer.step()</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Activity: what went wrong?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Match each bug to what you would see in the printed losses.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="flat" data-label="Loss stays at the start value"></div>
              <div data-sorter-target="bucket" data-bucket="wild" data-label="Loss learns badly or rises"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="flat" data-why="Without optimizer.step(), the weights never change. The loss stays near ln(V).">You forgot optimizer.step()</li>
              <li data-bucket="wild" data-why="Old gradients pile up. Each step pushes in old directions, so the loss stalls at a poor value or goes up.">You forgot optimizer.zero_grad()</li>
              <li data-bucket="flat" data-why="Without loss.backward(), there are no gradients. The optimiser has nothing to use.">You forgot loss.backward()</li>
              <li data-bucket="wild" data-why="Each step is far too big, so the weights overshoot.">The learning rate is much too high</li>
              <li data-bucket="flat" data-why="A learning rate of 0 makes every change zero.">You set the learning rate to 0</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 works out one gradient by hand. Part 2 trains the smallest possible model, a (V, V) table of scores, on the café text. Each step is written out by hand: forward, loss, zero_grad, backward and update. Part 3 trains TinyGPT in PyTorch.</p>
          <ol class="lc-list">
            <li>Run it. Part 1 shows the worked example: loss 1.609 and grad [-0.8, 0.7, 0.1]. In Part 2, the loss starts at 3.555, which is ln(35). Then it falls.</li>
            <li>In Part 2, change <code>LEARNING_RATE</code> to <code>0.5</code>, then to <code>50</code>. Too small learns slowly. Too big makes val loss worse.</li>
            <li>In Part 2, put a <code>#</code> in front of <code>grad[:] = 0</code>. Gradients now pile up, and val loss climbs to over 10.</li>
            <li>In Part 2, put a <code>#</code> in front of the <code>W -= ...</code> line. Nothing is ever updated, so the loss stays at 3.555.</li>
            <li>On your own computer, run Part 3 with PyTorch. It prints the same losses as the chart at the top of this lesson.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every LLM is trained by the same loop: forward, loss, zero_grad, backward, step. Watch train and val loss together. When val stops falling, the model has started to memorise.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The training loop: a worked gradient, a NumPy loop, then TinyGPT in PyTorch.
        # Parts 1 and 2 run here in the browser. Part 3 uses PyTorch: run it on your own computer.
        import numpy as np

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()


        # ── Part 1: backward on a tiny example (3 tokens, the right answer is token 0) ──
        print("== Part 1: one gradient by hand ==")
        probs = np.array([0.2, 0.7, 0.1])     # model output for 3 possible tokens
        target = 0                            # the right answer was token 0
        loss = -np.log(probs[target])
        grad = probs.copy()
        grad[target] -= 1                     # gradient = probability, minus 1 for the right token
        print("loss:", round(loss, 3))
        print("grad:", grad)


        # ── Part 2: the training loop in NumPy ──
        # The model is the smallest one possible: a (V, V) table of scores.
        # Row = current character, column = score for the next character.
        print("\n== Part 2: the training loop in NumPy ==")
        chars = sorted(set(CAFE_TEXT))
        stoi = {ch: i for i, ch in enumerate(chars)}
        data = np.array([stoi[ch] for ch in CAFE_TEXT])
        n = int(0.9 * len(data))
        train_data, val_data = data[:n], data[n:]
        V, block_size, batch_size = len(chars), 16, 32

        LEARNING_RATE = 5.0     # try 0.5 and 50
        STEPS = 500             # try 50 and 2000
        np.random.seed(42)

        def get_batch(d):
            ix = np.random.randint(0, len(d) - block_size, size=batch_size)
            x = np.stack([d[i:i + block_size] for i in ix])
            y = np.stack([d[i + 1:i + block_size + 1] for i in ix])
            return x.ravel(), y.ravel()        # flatten (B, T) into B*T examples

        def forward_loss(W, x, y):
            logits = W[x]                                     # forward: (N, V) scores
            logits = logits - logits.max(axis=1, keepdims=True)
            probs = np.exp(logits)
            probs /= probs.sum(axis=1, keepdims=True)         # softmax
            loss = -np.log(probs[np.arange(len(y)), y]).mean()  # cross-entropy
            return loss, probs

        W = np.zeros((V, V))                                  # the parameters
        grad = np.zeros_like(W)                               # their gradients
        for step in range(STEPS + 1):
            x, y = get_batch(train_data)
            loss, probs = forward_loss(W, x, y)               # 1. forward + 2. loss
            grad[:] = 0                                       # 3. zero_grad
            dlogits = probs.copy()
            dlogits[np.arange(len(y)), y] -= 1                # 4. backward
            np.add.at(grad, x, dlogits / len(y))
            W -= LEARNING_RATE * grad                         # 5. optimizer step
            if step % 100 == 0:
                val_loss, _ = forward_loss(W, *get_batch(val_data))   # check on unseen text
                print(f"step {step:4d}  train loss {loss:.3f}  val loss {val_loss:.3f}")

        print(f"\nRandom guessing would give ln(V) = {np.log(V):.3f}")


        # ── Part 3: train TinyGPT in PyTorch (run this part on your own computer) ──
        # pip install torch    (it takes a few seconds on a laptop CPU)
        print("\n== Part 3: the loop in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class Head(nn.Module):
                """One head of causal self-attention."""
                def __init__(self, n_embd, head_size, block_size):
                    super().__init__()
                    self.key = nn.Linear(n_embd, head_size, bias=False)
                    self.query = nn.Linear(n_embd, head_size, bias=False)
                    self.value = nn.Linear(n_embd, head_size, bias=False)
                    self.register_buffer("tril", torch.tril(torch.ones(block_size, block_size)))

                def forward(self, x):
                    B, T, C = x.shape
                    q = self.query(x)                                   # (B, T, hs)
                    k = self.key(x)                                     # (B, T, hs)
                    v = self.value(x)                                   # (B, T, hs)
                    wei = q @ k.transpose(-2, -1) * k.shape[-1] ** -0.5 # (B, T, T)
                    wei = wei.masked_fill(self.tril[:T, :T] == 0, float("-inf"))
                    wei = F.softmax(wei, dim=-1)                        # rows add up to 1
                    return wei @ v                                      # (B, T, hs)

            class MultiHeadAttention(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    head_size = n_embd // n_head
                    self.heads = nn.ModuleList([Head(n_embd, head_size, block_size) for _ in range(n_head)])
                    self.proj = nn.Linear(n_embd, n_embd)

                def forward(self, x):
                    out = torch.cat([h(x) for h in self.heads], dim=-1)   # (B, T, n_head * head_size)
                    return self.proj(out)                                  # (B, T, C)

            class Block(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.ln1 = nn.LayerNorm(n_embd)
                    self.attn = MultiHeadAttention(n_embd, n_head, block_size)
                    self.ln2 = nn.LayerNorm(n_embd)
                    self.mlp = nn.Sequential(
                        nn.Linear(n_embd, 4 * n_embd),
                        nn.GELU(),
                        nn.Linear(4 * n_embd, n_embd),
                    )

                def forward(self, x):
                    x = x + self.attn(self.ln1(x))   # talk: tokens share information
                    x = x + self.mlp(self.ln2(x))    # think: each token on its own
                    return x


            class TinyGPT(nn.Module):
                def __init__(self, vocab_size, n_embd=32, n_head=4, n_layer=2, block_size=16):
                    super().__init__()
                    self.tok_emb = nn.Embedding(vocab_size, n_embd)
                    self.pos_emb = nn.Embedding(block_size, n_embd)
                    self.blocks = nn.Sequential(*[Block(n_embd, n_head, block_size) for _ in range(n_layer)])
                    self.ln_f = nn.LayerNorm(n_embd)
                    self.lm_head = nn.Linear(n_embd, vocab_size, bias=False)
                    self.lm_head.weight = self.tok_emb.weight          # weight tying
                    nn.init.normal_(self.tok_emb.weight, std=0.02)     # start with small numbers
                    nn.init.normal_(self.pos_emb.weight, std=0.02)

                def forward(self, idx):
                    B, T = idx.shape
                    pos = torch.arange(T)
                    x = self.tok_emb(idx) + self.pos_emb(pos)   # (B, T, C)
                    x = self.blocks(x)                          # (B, T, C)
                    x = self.ln_f(x)                            # (B, T, C)
                    return self.lm_head(x)                      # (B, T, V) logits

            # The data and get_batch from the last lesson, with T = 16 and B = 4.
            chars = sorted(set(CAFE_TEXT))
            stoi = {ch: i for i, ch in enumerate(chars)}
            data = torch.tensor([stoi[ch] for ch in CAFE_TEXT], dtype=torch.long)
            n = int(0.9 * len(data))
            train_data, val_data = data[:n], data[n:]
            block_size, batch_size = 16, 4

            def get_batch(split):
                d = train_data if split == "train" else val_data
                ix = torch.randint(len(d) - block_size, (batch_size,))
                x = torch.stack([d[i:i + block_size] for i in ix])
                y = torch.stack([d[i + 1:i + block_size + 1] for i in ix])
                return x, y

            torch.manual_seed(42)
            model = TinyGPT(vocab_size=len(chars))
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)

            def compute_loss(x, y):
                logits = model(x)                              # (B, T, V)
                B, T, V = logits.shape
                return F.cross_entropy(logits.view(B * T, V), y.view(B * T))

            @torch.no_grad()                                   # no gradients needed here
            def estimate_loss():
                model.eval()
                out = {}
                for split in ["train", "val"]:
                    out[split] = sum(compute_loss(*get_batch(split)).item() for _ in range(20)) / 20
                model.train()
                return out

            for step in range(1001):
                x, y = get_batch("train")
                loss = compute_loss(x, y)        # 1. forward + loss
                optimizer.zero_grad()            # 2. clear old gradients
                loss.backward()                  # 3. backward: compute new gradients
                optimizer.step()                 # 4. update the weights
                if step % 200 == 0:
                    l = estimate_loss()
                    print(f"step {step:4d}  train {l['train']:.3f}  val {l['val']:.3f}")
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Pretraining the Model</h1>
        </div>
        <p class="lc-lead">You have a model, the data and a training loop. Now you run it for real. <strong>Pretraining</strong> means training the model on plain text, so it learns to predict the next token. In this lesson you train TinyGPT on the café text. You will learn to read the loss numbers, count the compute, and spot the moment the model starts to memorise.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A line chart of loss against training step for TinyGPT on the café text. Both losses start at 3.56. Training loss falls to about 0.28. Validation loss is lowest, 2.03, at step 200, then rises to about 2.9. The gap after step 200 is overfitting.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <line x1="70" y1="230" x2="560" y2="230" stroke="#4b4a78"/>
              <line x1="70" y1="25" x2="70" y2="230" stroke="#4b4a78"/>
              <g stroke="#2e2d5a" stroke-dasharray="3 4">
                <line x1="70" y1="175" x2="560" y2="175"/><line x1="70" y1="120" x2="560" y2="120"/><line x1="70" y1="65" x2="560" y2="65"/>
              </g>
              <g text-anchor="end" fill="#9b99b8" font-size="11">
                <text x="62" y="234">0</text><text x="62" y="179">1</text><text x="62" y="124">2</text><text x="62" y="69">3</text>
              </g>
              <g text-anchor="middle" fill="#9b99b8" font-size="11">
                <text x="70" y="248">0</text><text x="166" y="248">400</text><text x="262" y="248">800</text><text x="358" y="248">1200</text><text x="454" y="248">1600</text><text x="550" y="248">2000</text>
                <text x="310" y="270">training step</text>
              </g>
              <text x="20" y="128" fill="#9b99b8" font-size="11" transform="rotate(-90 20 128)" text-anchor="middle">loss</text>
              <line x1="70" y1="34" x2="560" y2="34" stroke="#f59e0b" stroke-dasharray="6 4"/>
              <text x="556" y="28" fill="#fcd34d" font-size="11" text-anchor="end">random guessing: ln(35) = 3.56</text>
              <rect x="118" y="40" width="442" height="186" fill="#ec4899" opacity="0.07"/>
              <polyline points="70,34.2 118,141.9 166,188.9 214,204.9 262,208.3 310,211.0 358,212.8 406,213.4 454,214.5 502,214.2 550,214.5" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <polyline points="70,33.9 118,118.6 166,112.5 214,106.7 262,98.3 310,83.7 358,78.6 406,78.6 454,77.7 502,62.9 550,71.3" fill="none" stroke="#ec4899" stroke-width="2.5"/>
              <circle cx="118" cy="118.6" r="6" fill="none" stroke="#10b981" stroke-width="2.5"/>
              <text x="128" y="137" fill="#6ee7b7" font-size="11.5">best val 2.03 (step 200)</text>
              <text x="420" y="160" fill="#f9a8d4" font-size="11.5" text-anchor="middle">gap grows: overfitting</text>
              <rect x="590" y="40" width="160" height="176" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <line x1="604" y1="66" x2="630" y2="66" stroke="#3b82f6" stroke-width="3"/><text x="638" y="70">train loss</text>
              <line x1="604" y1="92" x2="630" y2="92" stroke="#ec4899" stroke-width="3"/><text x="638" y="96">val loss</text>
              <text x="604" y="126" font-size="11" fill="#9b99b8">TinyGPT, 26,912</text>
              <text x="604" y="143" font-size="11" fill="#9b99b8">parameters</text>
              <text x="604" y="168" font-size="11" fill="#9b99b8">B = 32, T = 16</text>
              <text x="604" y="193" font-size="11" fill="#9b99b8">AdamW, lr 0.001</text>
            </g>
          </svg>
          <figcaption>The real losses from the run in this lesson. Train loss keeps falling. Validation loss is best at step 200, then gets worse.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The pretraining script</h3>
          <p>Part 3 in the code editor below is the full pretraining script in PyTorch. It uses the parts you built earlier in this course: <code>TinyGPT</code>, <code>get_batch()</code> and <code>estimate_loss()</code>. The text is the café corpus with a character tokeniser, so V = 35. It is the training loop from earlier, run for longer, with a bigger batch.</p>
          <p>The new part is that it remembers the step with the best validation loss. Every 200 steps it measures both losses. If val loss is a new low, it saves that step in <code>best_step</code>.</p>
          <p>On a laptop CPU this run takes from a few seconds to under a minute. You do not need a GPU for a model this small. The chart at the top shows the losses it printed. The best val loss is 2.026, at step 200.</p>
        </div>
        <div class="lc-card">
          <h3>What the loss numbers mean</h3>
          <p>The loss is the cross-entropy on the next token. Lower is better. Two numbers help you read it.</p>
          <ul class="lc-list">
            <li><strong>The starting loss.</strong> A new model guesses almost evenly. With 35 characters, each gets about 1/35. The loss is then ln(35) = 3.56. If your first loss is far from ln(V), check your code.</li>
            <li><strong>Perplexity.</strong> Perplexity is e to the power of the loss. It says how many choices the model is "unsure between" on average.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Loss</th><th>Perplexity</th><th>What it means</th></tr></thead>
            <tbody>
              <tr><td>3.56 (step 0)</td><td>35.2</td><td>Pure guessing between all 35 characters</td></tr>
              <tr><td>2.03 (best val)</td><td>7.6</td><td>Like choosing between about 8 characters on new text</td></tr>
              <tr><td>0.28 (final train)</td><td>1.3</td><td>Almost sure of every character it has already seen</td></tr>
            </tbody>
          </table>
          <p>Only compare losses that use the same tokeniser. A BPE model and a character model predict different things, so their numbers are not comparable.</p>
        </div>
        <div class="lc-card">
          <h3>Compute and time</h3>
          <p>Count the tokens the model saw. Each step uses B × T = 32 × 16 = 512 tokens. So 2,000 steps use 2000 × 512 = 1,024,000 tokens.</p>
          <p>The training part has 844 characters. So the model saw each one about 1,200 times. One full pass over the data is called an <strong>epoch</strong>. This run is about 1,200 epochs.</p>
          <p>A common rule for transformers says training costs about 6 × N × D floating-point operations (FLOPs). N is the number of parameters and D is the number of tokens:</p>
          <p><strong>6 × 26,912 × 1,024,000 ≈ 1.7 × 10<sup>11</sup> FLOPs</strong></p>
          <p>Part 2 in the code editor below works out these numbers. A laptop does this in seconds. Large models use the same loop, but with far more parameters and tokens. They need many GPUs for weeks. You will meet this rule again soon.</p>
        </div>
        <div class="lc-card">
          <h3>Overfitting a small corpus</h3>
          <p><strong>Overfitting</strong> means the model learns the training text by heart. It gets better on that text but worse on new text. Our corpus has only 30 sentences, and the model has 26,912 parameters. That is enough room to memorise it.</p>
          <p>You see it in the chart. After step 200, train loss keeps falling, but validation loss rises. The model at step 200 is the best one for new text.</p>
          <table class="lc-table">
            <thead><tr><th>Fix</th><th>How it helps</th></tr></thead>
            <tbody>
              <tr><td>More data</td><td>The best fix. Big LLMs see most text only once or a few times, so they rarely memorise.</td></tr>
              <tr><td>Early stopping</td><td>Keep the model from the step with the best validation loss.</td></tr>
              <tr><td>A smaller model</td><td>Fewer parameters leave less room to memorise.</td></tr>
              <tr><td>Dropout and weight decay</td><td>They make memorising harder. Dropout turns off random parts during training.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: a pretraining run in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a pretraining run in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Tokenise the corpus and split it into train and validation parts</li>
              <li data-order="2">Create the model and the optimiser with a fixed seed</li>
              <li data-order="3">Check that the first loss is close to ln(V)</li>
              <li data-order="4">Run the loop: batch, forward, loss, backward, optimiser step</li>
              <li data-order="5">Every few hundred steps, measure train and validation loss</li>
              <li data-order="6">Keep the model with the lowest validation loss</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>PyTorch does not run in the browser. So Part 1 in the editor trains a smaller NumPy model on the same café text. It looks at the last 2 characters and scores every next character. It uses the same split, loss and gradient descent. Part 2 counts the compute, and Part 3 is the full PyTorch run.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, find the step with the best validation loss. Watch validation loss rise after it.</li>
            <li>In Part 1, set <code>CONTEXT = 1</code>. The model has far fewer parameters. Does the gap between train and val get smaller?</li>
            <li>In Part 1, set <code>STEPS = 100</code>. This is early stopping by hand.</li>
            <li>In Part 1, change <code>LR</code> to <code>5.0</code>. The loss falls more slowly, so the best step moves later.</li>
            <li>On your own computer, run Part 3 with PyTorch. It prints the losses in the chart, and the best val loss is 2.026 at step 200.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Pretraining is the training loop run for many steps on plain text. Start near ln(V), watch both losses, and keep the model where validation loss is lowest.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Pretrain a tiny character model on the café text.
        # Parts 1 and 2 run here in the browser. Part 3 uses PyTorch: run it on your own computer.
        import numpy as np

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()


        # ── Part 1: pretrain a small NumPy model ──
        # The model: look at the last CONTEXT characters, give a score to every next character.
        print("== Part 1: pretraining in NumPy ==")
        CONTEXT = 2          # how many earlier characters the model sees (try 1)
        STEPS = 600          # training steps
        LR = 20.0            # learning rate

        chars = sorted(set(CAFE_TEXT))
        V = len(chars)
        stoi = {ch: i for i, ch in enumerate(chars)}
        data = np.array([stoi[ch] for ch in CAFE_TEXT])
        n = int(0.9 * len(data))
        train, val = data[:n], data[n:]       # first 90% to learn from, last 10% to check

        def make_xy(d):
            # x = the context as one row number, y = the next character
            x = np.zeros(len(d) - CONTEXT, dtype=int)
            for k in range(CONTEXT):
                x = x * V + d[k:len(d) - CONTEXT + k]
            return x, d[CONTEXT:]
        (xt, yt), (xv, yv) = make_xy(train), make_xy(val)
        np.random.seed(42)
        W = np.random.randn(V ** CONTEXT, V) * 0.01      # the parameters: one row of scores per context

        def loss_and_probs(x, y):
            logits = W[x] - W[x].max(axis=1, keepdims=True)
            p = np.exp(logits)
            p /= p.sum(axis=1, keepdims=True)                 # softmax
            return -np.log(p[np.arange(len(y)), y]).mean(), p  # cross-entropy

        print(f"V = {V}, parameters = {W.size}, training tokens = {len(yt)}")
        print(f"Random guessing gives loss ln({V}) = {np.log(V):.2f}\n")
        best = (99.0, 0)
        for step in range(STEPS + 1):
            loss, p = loss_and_probs(xt, yt)
            if step % 50 == 0:                          # check on the val text now and then
                val_loss = loss_and_probs(xv, yv)[0]
                best = min(best, (val_loss, step))
                print(f"step {step:4d}  train {loss:.3f}  val {val_loss:.3f}  " + "#" * int(val_loss * 8))
            grad = p                                    # gradient of the loss for each logit
            grad[np.arange(len(yt)), yt] -= 1
            G = np.zeros_like(W)
            np.add.at(G, xt, grad / len(yt))
            W -= LR * G                                 # one gradient-descent step

        print(f"\nBest val loss {best[0]:.3f} at step {best[1]} (perplexity {np.exp(best[0]):.1f})")
        print(f"Training used {len(yt) * STEPS:,} tokens")

        # Write text: always pick the most likely next character (greedy).
        out = "Tom"
        for _ in range(40):
            ctx = 0
            for ch in out[-CONTEXT:]:
                ctx = ctx * V + stoi[ch]
            out += chars[int(np.argmax(W[ctx]))]
        print("Sample:", out.replace("\n", " / "))


        # ── Part 2: count the compute of the PyTorch run in Part 3 ──
        print("\n== Part 2: compute and time ==")
        N = 26_912                       # TinyGPT parameters
        tokens_per_step = 32 * 16        # B x T
        D = 2000 * tokens_per_step       # tokens seen in 2,000 steps
        print(f"tokens per step {tokens_per_step}, total tokens D = {D:,}")
        print(f"epochs: about {D / 844:,.0f} passes over the 844 training characters")
        print(f"compute: 6 x N x D = {6 * N * D:.1e} FLOPs")
        print(f"perplexity at loss 3.56, 2.03, 0.28: {np.exp(3.56):.1f}, {np.exp(2.03):.1f}, {np.exp(0.28):.1f}")


        # ── Part 3: pretrain TinyGPT in PyTorch (run this part on your own computer) ──
        # pip install torch    (under a minute on a laptop CPU, no GPU needed)
        print("\n== Part 3: pretraining TinyGPT in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class MultiHeadAttention(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.n_head = n_head
                    self.qkv = nn.Linear(n_embd, 3 * n_embd, bias=False)
                    self.proj = nn.Linear(n_embd, n_embd)
                    self.register_buffer("mask", torch.tril(torch.ones(block_size, block_size)))
                def forward(self, x):
                    B, T, C = x.shape
                    q, k, v = self.qkv(x).split(C, dim=2)
                    hs = C // self.n_head
                    q = q.view(B, T, self.n_head, hs).transpose(1, 2)
                    k = k.view(B, T, self.n_head, hs).transpose(1, 2)
                    v = v.view(B, T, self.n_head, hs).transpose(1, 2)
                    att = q @ k.transpose(-2, -1) / hs ** 0.5
                    att = att.masked_fill(self.mask[:T, :T] == 0, float("-inf"))
                    att = F.softmax(att, dim=-1)
                    y = (att @ v).transpose(1, 2).contiguous().view(B, T, C)
                    return self.proj(y)

            class Block(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.ln1 = nn.LayerNorm(n_embd)
                    self.attn = MultiHeadAttention(n_embd, n_head, block_size)
                    self.ln2 = nn.LayerNorm(n_embd)
                    self.mlp = nn.Sequential(
                        nn.Linear(n_embd, 4 * n_embd),
                        nn.GELU(),
                        nn.Linear(4 * n_embd, n_embd),
                    )

                def forward(self, x):
                    x = x + self.attn(self.ln1(x))   # talk: tokens share information
                    x = x + self.mlp(self.ln2(x))    # think: each token on its own
                    return x

            class TinyGPT(nn.Module):
                def __init__(self, vocab_size, n_embd=32, n_head=4, n_layer=2, block_size=16):
                    super().__init__()
                    self.block_size = block_size
                    self.tok_emb = nn.Embedding(vocab_size, n_embd)
                    self.pos_emb = nn.Embedding(block_size, n_embd)
                    self.blocks = nn.Sequential(*[Block(n_embd, n_head, block_size) for _ in range(n_layer)])
                    self.ln_f = nn.LayerNorm(n_embd)
                    self.lm_head = nn.Linear(n_embd, vocab_size, bias=False)
                    self.lm_head.weight = self.tok_emb.weight   # weight tying
                    nn.init.normal_(self.tok_emb.weight, std=0.02)   # start small
                    nn.init.normal_(self.pos_emb.weight, std=0.02)

                def forward(self, idx):
                    B, T = idx.shape
                    pos = torch.arange(T, device=idx.device)
                    x = self.tok_emb(idx) + self.pos_emb(pos)   # (B, T, C)
                    x = self.blocks(x)                          # (B, T, C)
                    x = self.ln_f(x)                            # (B, T, C)
                    return self.lm_head(x)                      # (B, T, V) logits

            chars = sorted(set(CAFE_TEXT))
            stoi = {ch: i for i, ch in enumerate(chars)}
            data = torch.tensor([stoi[ch] for ch in CAFE_TEXT], dtype=torch.long)
            n = int(0.9 * len(data))
            train_data, val_data = data[:n], data[n:]
            block_size = 16

            def get_batch(split):
                d = train_data if split == "train" else val_data
                ix = torch.randint(len(d) - block_size, (batch_size,))
                x = torch.stack([d[i:i + block_size] for i in ix])
                y = torch.stack([d[i + 1:i + block_size + 1] for i in ix])
                return x, y

            @torch.no_grad()
            def estimate_loss():
                model.eval()
                out = {}
                for split in ["train", "val"]:
                    losses = []
                    for _ in range(20):
                        x, y = get_batch(split)
                        logits = model(x)
                        B, T, V = logits.shape
                        losses.append(F.cross_entropy(logits.view(B * T, V), y.view(B * T)).item())
                    out[split] = sum(losses) / len(losses)
                model.train()
                return out

            torch.manual_seed(42)
            batch_size = 32                                  # get_batch() reads this
            model = TinyGPT(vocab_size=len(chars))
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)
            print("parameters:", sum(p.numel() for p in model.parameters()))

            best_val, best_step = float("inf"), 0
            for step in range(2001):
                if step % 200 == 0:                          # check progress now and then
                    l = estimate_loss()
                    print(f"step {step:4d}  train {l['train']:.3f}  val {l['val']:.3f}")
                    if l["val"] < best_val:
                        best_val, best_step = l["val"], step   # remember the best step
                x, y = get_batch("train")
                logits = model(x)
                B, T, V = logits.shape
                loss = F.cross_entropy(logits.view(B * T, V), y.view(B * T))
                optimizer.zero_grad()
                loss.backward()
                optimizer.step()
            print(f"best val {best_val:.3f} at step {best_step}")
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Saving and Loading Checkpoints</h1>
        </div>
        <p class="lc-lead">Training can stop at any time. The power can fail, a cloud machine can be taken away, or you may just want a break. A <strong>checkpoint</strong> is a saved copy of everything you need to carry on. In this lesson you save TinyGPT, load it again, and resume training as if nothing happened. You also learn the safetensors format for sharing weights.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="A training timeline. The run starts at step 0, saves a checkpoint at step 200 and at step 400, then crashes at step 470. The step 400 checkpoint is loaded and training resumes at step 401. Below, ckpt.pt holds the model weights, the optimiser state, the step number, the config and the best validation loss. tinygpt.safetensors holds the weights only.">
            <defs><marker id="ls14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="150" height="50" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="95" y="41" font-weight="700" fill="#93c5fd">step 0</text><text x="95" y="59" font-size="11" fill="#9b99b8">start training</text>
              <rect x="200" y="20" width="150" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="275" y="41" font-weight="700" fill="#6ee7b7">step 200</text><text x="275" y="59" font-size="11" fill="#9b99b8">save checkpoint</text>
              <rect x="380" y="20" width="150" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="455" y="41" font-weight="700" fill="#6ee7b7">step 400</text><text x="455" y="59" font-size="11" fill="#9b99b8">save checkpoint</text>
              <rect x="560" y="20" width="180" height="50" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="650" y="41" font-weight="700" fill="#f9a8d4">step 470: crash</text><text x="650" y="59" font-size="11" fill="#9b99b8">memory is lost</text>
              <g stroke="#9b99b8" stroke-width="1.5" fill="none" marker-end="url(#ls14a)">
                <line x1="172" y1="45" x2="196" y2="45"/><line x1="352" y1="45" x2="376" y2="45"/><line x1="532" y1="45" x2="556" y2="45"/>
              </g>
              <path d="M455,72 L455,122 L556,122" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#ls14a)"/>
              <text x="470" y="110" font-size="11" fill="#fcd34d" text-anchor="start">load ckpt.pt</text>
              <rect x="560" y="98" width="180" height="50" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="650" y="119" font-weight="700" fill="#fcd34d">resume at step 401</text><text x="650" y="137" font-size="11" fill="#9b99b8">same as no crash</text>
              <rect x="20" y="170" width="420" height="125" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="230" y="192" font-weight="700" fill="#6ee7b7">ckpt.pt: to resume training (about 350 KB)</text>
              <g text-anchor="start" font-size="12">
                <text x="36" y="218">model weights</text><text x="200" y="218" fill="#9b99b8">26,912 numbers</text>
                <text x="36" y="240">optimiser state (AdamW)</text><text x="200" y="240" fill="#9b99b8">2 more numbers per weight</text>
                <text x="36" y="262">step, config, best_val</text><text x="200" y="262" fill="#9b99b8">400, sizes, 2.026</text>
                <text x="36" y="284" font-size="11" fill="#9b99b8">optional: random number state, for the same batches</text>
              </g>
              <rect x="470" y="170" width="270" height="125" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="605" y="192" font-weight="700" fill="#67e8f9">tinygpt.safetensors</text>
              <g text-anchor="start" font-size="12">
                <text x="486" y="218">weights only (about 112 KB)</text>
                <text x="486" y="240">to share or to generate text</text>
                <text x="486" y="262">only tensors, no Python code</text>
                <text x="486" y="284" font-size="11" fill="#9b99b8">cannot resume training exactly</text>
              </g>
            </g>
          </svg>
          <figcaption>Save often. After a crash, load the latest full checkpoint and carry on. Share only the weights.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The state_dict</h3>
          <p>In PyTorch, every model has a <code>state_dict()</code>. It is a dictionary. Each key is the name of a tensor, and each value is the tensor itself.</p>
          <p>For TinyGPT, <code>model.state_dict()</code> holds 29 tensors. The first ones are <code>tok_emb.weight</code> with shape (35, 32) and <code>pos_emb.weight</code> with shape (16, 32). Then come the tensors of the first block, such as <code>blocks.0.ln1.weight</code> with shape (32,). Part 2a in the code editor below prints them.</p>
          <p>Why 29? Each block has 12 tensors, so two blocks give 24. Add the two embedding tables, the final layer norm (weight and bias) and <code>lm_head</code>. One tensor in each block is the attention mask. It is a <strong>buffer</strong>: a saved tensor that training does not change. Because of weight tying, <code>lm_head.weight</code> and <code>tok_emb.weight</code> are the same tensor under two names.</p>
          <p>The optimiser has a <code>state_dict()</code> too. AdamW keeps two running averages for every weight. They decide how big the next steps are.</p>
        </div>
        <div class="lc-card">
          <h3>Save a full checkpoint</h3>
          <p>To resume training, you need more than the weights. Put everything in one dictionary and save it with <code>torch.save</code>.</p>
          <p>Part 2b in the code editor below does this. The dictionary holds <code>model.state_dict()</code>, <code>optimizer.state_dict()</code>, the step, the config and the best validation loss. Then <code>torch.save(checkpoint, "ckpt.pt")</code> writes it all to one file.</p>
          <p>Here <code>config</code> is a dictionary such as <code>{"vocab_size": 35, "n_embd": 32, "n_head": 4, "n_layer": 2, "block_size": 16}</code>. For TinyGPT the file is about 350 KB. That is roughly three times the weights, because of AdamW's two extra numbers per weight.</p>
          <p>A good habit is to keep two files. Save <code>latest.pt</code> every few hundred steps, to survive a crash. Save <code>best.pt</code> whenever validation loss reaches a new low. That is how you keep the step-200 model from the last lesson.</p>
        </div>
        <div class="lc-card">
          <h3>Load and resume</h3>
          <p>Part 2c in the code editor below loads the file with <code>torch.load("ckpt.pt", map_location="cpu")</code>. It rebuilds the model and the optimiser, then loads their state_dicts.</p>
          <p>Build the model first, with the same config. Then load the weights into it. Do the same for the optimiser. Then start your loop at <code>start_step</code> instead of 0. If you saved at step 200, the loop carries on at step 201.</p>
          <p>Recent versions of PyTorch load only tensors and simple Python values by default. This is the <code>weights_only=True</code> setting. It is safer, because an old-style pickle file can run code when you load it. Never load a <code>.pt</code> file from someone you do not trust.</p>
        </div>
        <div class="lc-card">
          <h3>Sharing weights with safetensors</h3>
          <p><strong>safetensors</strong> is a file format that stores only tensors. Loading it can never run code. It is also fast to load. Many open models on the Hugging Face Hub share their weights in this format.</p>
          <p>You install it with <code>pip install safetensors</code>. Then <code>save_model(model, "tinygpt.safetensors")</code> writes the weights only. <code>load_model(fresh, "tinygpt.safetensors")</code> loads them into a new TinyGPT built from the same config. Both functions come from <code>safetensors.torch</code>. Part 2d in the code editor below uses them.</p>
          <p>For TinyGPT the file is about 112 KB. We use <code>save_model</code> on purpose. The simpler <code>save_file(model.state_dict(), ...)</code> stops with an error. It refuses tensors that share memory, like our tied weights. <code>save_model</code> handles this. It stores the shared tensor only once.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>ckpt.pt (torch.save)</th><th>.safetensors</th></tr></thead>
            <tbody>
              <tr><td>Holds</td><td>Weights, optimiser, step, config</td><td>Weights (plus a small text header)</td></tr>
              <tr><td>Use it to</td><td>Resume your own training</td><td>Share a model or run it</td></tr>
              <tr><td>Safe from untrusted sources</td><td>Only with weights_only=True</td><td>Yes, it holds no code</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: what do you need to save?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each item by when you need it.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="run" data-label="Needed to run the model"></div>
              <div data-sorter-target="bucket" data-bucket="resume" data-label="Needed only to resume training"></div>
              <div data-sorter-target="bucket" data-bucket="none" data-label="Not needed in a checkpoint"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="run" data-why="Without the weights there is no trained model.">The model state_dict</li>
              <li data-bucket="run" data-why="You must build a model with the same sizes before you can load the weights.">The config (n_embd, n_head, n_layer, block_size, vocab_size)</li>
              <li data-bucket="resume" data-why="AdamW's running averages control the next steps. Without them, training takes different steps.">The optimiser state_dict</li>
              <li data-bucket="resume" data-why="It tells the loop where to carry on and when to evaluate next.">The step number</li>
              <li data-bucket="none" data-why="Gradients are cleared by zero_grad and made again by backward. They are not saved.">The gradients from the last backward pass</li>
              <li data-bucket="none" data-why="The batch is thrown away after each step. A new one comes from get_batch.">The last batch x and y</li>
            </ul>
          </div>
          <p>One more thing: you also need the same tokeniser to run the model. Keep its vocabulary file next to the weights.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 runs the same idea in NumPy, because PyTorch does not run in the browser. It trains a small model with Adam. It "saves" the checkpoint into memory with <code>np.savez</code>, deletes the state, loads it and carries on. Part 2 is the real PyTorch code, and it writes files.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, run B matches run A exactly. Run C saved only the weights, so it follows a different path. Its loss is close, but it is no longer the same run.</li>
            <li>In Part 1, change <code>train(b, 100)</code> before the save to <code>train(b, 150)</code>, and the one after it to <code>train(b, 50)</code>. Is B still equal to A?</li>
            <li>In Part 1, leave <code>v</code> out of the checkpoint. Load it as <code>np.zeros((V, V))</code> instead. Is B still equal to A?</li>
            <li>In Part 1, compare the checkpoint size with the size of the weights alone. Why is it about three times bigger?</li>
            <li>On your own computer, run Part 2 with PyTorch. It prints 29 tensors, and ckpt.pt is about 350 KB. Install safetensors to see the 112 KB file too.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> To resume training exactly, save the weights, the optimiser state, the step and the config. To share or run a model, the weights and config are enough. Safetensors is the safe way to store them.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Save a checkpoint, "crash", load it and resume.
        # Part 1 runs here in the browser, all in memory with NumPy.
        # Part 2 uses PyTorch and writes real files: run it on your own computer.
        import io
        import os
        import numpy as np

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()


        # ── Part 1: checkpoints in NumPy (Adam, save, "crash", load, resume) ──
        print("== Part 1: checkpoints in NumPy ==")
        chars = sorted(set(CAFE_TEXT))
        V = len(chars)
        data = np.array([chars.index(ch) for ch in CAFE_TEXT])
        x, y = data[:-1], data[1:]                 # a one-character context model (bigram)
        def loss_and_grad(W):
            p = np.exp(W[x] - W[x].max(axis=1, keepdims=True))
            p /= p.sum(axis=1, keepdims=True)
            loss = -np.log(p[np.arange(len(y)), y]).mean()
            p[np.arange(len(y)), y] -= 1
            G = np.zeros_like(W)
            np.add.at(G, x, p / len(y))
            return loss, G

        def adam_step(state, lr=0.1, b1=0.9, b2=0.999):    # Adam keeps two running averages, m and v
            loss, G = loss_and_grad(state["W"])
            state["step"] += 1
            state["m"] = b1 * state["m"] + (1 - b1) * G
            state["v"] = b2 * state["v"] + (1 - b2) * G * G
            m_hat = state["m"] / (1 - b1 ** state["step"])
            v_hat = state["v"] / (1 - b2 ** state["step"])
            state["W"] = state["W"] - lr * m_hat / (np.sqrt(v_hat) + 1e-8)
            return loss

        def new_state():
            np.random.seed(42)
            W = np.random.randn(V, V) * 0.01
            return {"W": W, "m": np.zeros_like(W), "v": np.zeros_like(W), "step": 0}
        def train(state, steps):
            return [adam_step(state) for _ in range(steps)][-1]   # the last loss

        # Run A: 200 steps with no break
        a = new_state()
        print(f"A: 200 steps in one go      loss {train(a, 200):.4f}")

        # Run B: 100 steps, save a checkpoint, lose everything, load, 100 more steps
        b = new_state()
        train(b, 100)
        buffer = io.BytesIO()                      # stands in for a file on disk
        np.savez(buffer, W=b["W"], m=b["m"], v=b["v"], step=b["step"])
        del b                                      # the "crash"
        ckpt = np.load(io.BytesIO(buffer.getvalue()))
        print("Checkpoint holds:", list(ckpt.keys()), "step =", int(ckpt["step"]))
        b = {"W": ckpt["W"], "m": ckpt["m"], "v": ckpt["v"], "step": int(ckpt["step"])}
        print(f"B: 100 + save/load + 100    loss {train(b, 100):.4f}")

        # Run C: same, but we saved ONLY the weights. Adam starts from zero again.
        c = new_state()
        train(c, 100)
        c = {"W": c["W"].copy(), "m": np.zeros((V, V)), "v": np.zeros((V, V)), "step": 0}
        print(f"C: weights only, fresh Adam loss {train(c, 100):.4f}")
        print("\nB equals A exactly:", np.array_equal(a["W"], b["W"]))
        print("C equals A exactly:", np.array_equal(a["W"], c["W"]))
        print(f"Checkpoint size: {buffer.getbuffer().nbytes:,} bytes. Weights alone: {a['W'].nbytes:,} bytes")


        # ── Part 2: state_dict, torch.save, torch.load and safetensors (run this part on your own computer) ──
        # pip install torch safetensors
        print("\n== Part 2: checkpoints in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class MultiHeadAttention(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.n_head = n_head
                    self.qkv = nn.Linear(n_embd, 3 * n_embd, bias=False)
                    self.proj = nn.Linear(n_embd, n_embd)
                    self.register_buffer("mask", torch.tril(torch.ones(block_size, block_size)))
                def forward(self, x):
                    B, T, C = x.shape
                    q, k, v = self.qkv(x).split(C, dim=2)
                    hs = C // self.n_head
                    q = q.view(B, T, self.n_head, hs).transpose(1, 2)
                    k = k.view(B, T, self.n_head, hs).transpose(1, 2)
                    v = v.view(B, T, self.n_head, hs).transpose(1, 2)
                    att = q @ k.transpose(-2, -1) / hs ** 0.5
                    att = att.masked_fill(self.mask[:T, :T] == 0, float("-inf"))
                    att = F.softmax(att, dim=-1)
                    y = (att @ v).transpose(1, 2).contiguous().view(B, T, C)
                    return self.proj(y)

            class Block(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.ln1 = nn.LayerNorm(n_embd)
                    self.attn = MultiHeadAttention(n_embd, n_head, block_size)
                    self.ln2 = nn.LayerNorm(n_embd)
                    self.mlp = nn.Sequential(
                        nn.Linear(n_embd, 4 * n_embd),
                        nn.GELU(),
                        nn.Linear(4 * n_embd, n_embd),
                    )

                def forward(self, x):
                    x = x + self.attn(self.ln1(x))   # talk: tokens share information
                    x = x + self.mlp(self.ln2(x))    # think: each token on its own
                    return x

            class TinyGPT(nn.Module):
                def __init__(self, vocab_size, n_embd=32, n_head=4, n_layer=2, block_size=16):
                    super().__init__()
                    self.block_size = block_size
                    self.tok_emb = nn.Embedding(vocab_size, n_embd)
                    self.pos_emb = nn.Embedding(block_size, n_embd)
                    self.blocks = nn.Sequential(*[Block(n_embd, n_head, block_size) for _ in range(n_layer)])
                    self.ln_f = nn.LayerNorm(n_embd)
                    self.lm_head = nn.Linear(n_embd, vocab_size, bias=False)
                    self.lm_head.weight = self.tok_emb.weight   # weight tying
                    nn.init.normal_(self.tok_emb.weight, std=0.02)   # start small
                    nn.init.normal_(self.pos_emb.weight, std=0.02)

                def forward(self, idx):
                    B, T = idx.shape
                    pos = torch.arange(T, device=idx.device)
                    x = self.tok_emb(idx) + self.pos_emb(pos)   # (B, T, C)
                    x = self.blocks(x)                          # (B, T, C)
                    x = self.ln_f(x)                            # (B, T, C)
                    return self.lm_head(x)                      # (B, T, V) logits

            torch.manual_seed(42)
            config = {"vocab_size": 35, "n_embd": 32, "n_head": 4, "n_layer": 2, "block_size": 16}
            model = TinyGPT(**config)
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)

            # 2a) The state_dict: a dictionary of name -> tensor
            sd = model.state_dict()
            print(len(sd), "tensors")
            for name in list(sd)[:4]:
                print(name, tuple(sd[name].shape))

            # One training step, so the optimizer has some state. Pretend we stopped at step 200.
            x, y = torch.randint(0, 35, (4, 16)), torch.randint(0, 35, (4, 16))
            loss = F.cross_entropy(model(x).view(-1, 35), y.view(-1))
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
            step, best_val = 200, 2.026

            # 2b) Save a full checkpoint
            checkpoint = {
                "model": model.state_dict(),          # all the weights
                "optimizer": optimizer.state_dict(),  # AdamW's running averages
                "step": step,                         # where we stopped
                "config": config,                     # how to rebuild TinyGPT
                "best_val": best_val,
            }
            torch.save(checkpoint, "ckpt.pt")
            print("ckpt.pt size:", os.path.getsize("ckpt.pt"), "bytes")

            # 2c) Load and resume
            ckpt = torch.load("ckpt.pt", map_location="cpu")
            model = TinyGPT(**ckpt["config"])              # same shape as before
            model.load_state_dict(ckpt["model"])
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)
            optimizer.load_state_dict(ckpt["optimizer"])
            start_step = ckpt["step"] + 1
            print("resume at step", start_step, "best val", ckpt["best_val"])

            # 2d) Share the weights only, with safetensors
            try:
                from safetensors.torch import save_model, load_model
            except ImportError:
                save_model = None
            if save_model is None:
                print("2d needs safetensors. Install it with: pip install safetensors")
            else:
                save_model(model, "tinygpt.safetensors")      # weights only
                fresh = TinyGPT(**config)
                load_model(fresh, "tinygpt.safetensors")
                print("same weights:", torch.equal(fresh.tok_emb.weight, model.tok_emb.weight))
                print("tinygpt.safetensors size:", os.path.getsize("tinygpt.safetensors"), "bytes")
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Text Generation: Greedy, Temperature, Top-k, Top-p</h1>
        </div>
        <p class="lc-lead">Your trained model gives a probability for every possible next token. But which token should you actually pick? This choice is called <strong>decoding</strong> or <strong>sampling</strong>. It changes the text a lot, even with the same model. In this lesson you learn the four common methods, work through one example by hand, and write a <code>generate()</code> function for TinyGPT.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 282" role="img" aria-label="Five bar charts for the prompt Tom makes a. Model output: hot 0.40, latte 0.25, flat 0.20, coffee 0.08, cake 0.05, map 0.02, and greedy picks hot. Temperature 0.5 makes it sharper: hot 0.59. Temperature 2 makes it flatter: hot 0.28, map 0.06. Top-k with k 3 keeps hot, latte and flat. Top-p with p 0.9 keeps four words.">
          <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
            <rect x="8" y="10" width="144" height="262" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
            <text x="80" y="33" text-anchor="middle" font-weight="700" fill="#93c5fd">T = 1</text>
            <text x="80" y="51" text-anchor="middle" font-size="11" fill="#9b99b8">model output</text>
            <text x="16" y="84" font-size="11.5">hot</text>
            <rect x="60" y="73" width="40" height="14" rx="3" fill="#10b981"/>
            <text x="124" y="84" font-size="11">0.40</text>
            <text x="16" y="114" font-size="11.5">latte</text>
            <rect x="60" y="103" width="25" height="14" rx="3" fill="#3b82f6"/>
            <text x="124" y="114" font-size="11">0.25</text>
            <text x="16" y="144" font-size="11.5">flat</text>
            <rect x="60" y="133" width="20" height="14" rx="3" fill="#3b82f6"/>
            <text x="124" y="144" font-size="11">0.20</text>
            <text x="16" y="174" font-size="11.5">coffee</text>
            <rect x="60" y="163" width="8" height="14" rx="3" fill="#3b82f6"/>
            <text x="124" y="174" font-size="11">0.08</text>
            <text x="16" y="204" font-size="11.5">cake</text>
            <rect x="60" y="193" width="5" height="14" rx="3" fill="#3b82f6"/>
            <text x="124" y="204" font-size="11">0.05</text>
            <text x="16" y="234" font-size="11.5">map</text>
            <rect x="60" y="223" width="2" height="14" rx="3" fill="#3b82f6"/>
            <text x="124" y="234" font-size="11">0.02</text>
            <text x="80" y="262" text-anchor="middle" font-size="11" fill="#9b99b8">greedy picks hot</text>
            <rect x="158" y="10" width="144" height="262" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
            <text x="230" y="33" text-anchor="middle" font-weight="700" fill="#c4b5fd">T = 0.5</text>
            <text x="230" y="51" text-anchor="middle" font-size="11" fill="#9b99b8">sharper</text>
            <text x="166" y="84" font-size="11.5">hot</text>
            <rect x="210" y="73" width="59" height="14" rx="3" fill="#8b5cf6"/>
            <text x="274" y="84" font-size="11">0.59</text>
            <text x="166" y="114" font-size="11.5">latte</text>
            <rect x="210" y="103" width="23" height="14" rx="3" fill="#8b5cf6"/>
            <text x="274" y="114" font-size="11">0.23</text>
            <text x="166" y="144" font-size="11.5">flat</text>
            <rect x="210" y="133" width="15" height="14" rx="3" fill="#8b5cf6"/>
            <text x="274" y="144" font-size="11">0.15</text>
            <text x="166" y="174" font-size="11.5">coffee</text>
            <rect x="210" y="163" width="2" height="14" rx="3" fill="#8b5cf6"/>
            <text x="274" y="174" font-size="11">0.02</text>
            <text x="166" y="204" font-size="11.5">cake</text>
            <rect x="210" y="193" width="1" height="14" rx="3" fill="#8b5cf6"/>
            <text x="274" y="204" font-size="11">0.01</text>
            <text x="166" y="234" font-size="11.5">map</text>
            <text x="274" y="234" font-size="11">0.00</text>
            <text x="230" y="262" text-anchor="middle" font-size="11" fill="#9b99b8">top word wins more</text>
            <rect x="308" y="10" width="144" height="262" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
            <text x="380" y="33" text-anchor="middle" font-weight="700" fill="#fcd34d">T = 2</text>
            <text x="380" y="51" text-anchor="middle" font-size="11" fill="#9b99b8">flatter</text>
            <text x="316" y="84" font-size="11.5">hot</text>
            <rect x="360" y="73" width="28" height="14" rx="3" fill="#f59e0b"/>
            <text x="424" y="84" font-size="11">0.28</text>
            <text x="316" y="114" font-size="11.5">latte</text>
            <rect x="360" y="103" width="22" height="14" rx="3" fill="#f59e0b"/>
            <text x="424" y="114" font-size="11">0.22</text>
            <text x="316" y="144" font-size="11.5">flat</text>
            <rect x="360" y="133" width="20" height="14" rx="3" fill="#f59e0b"/>
            <text x="424" y="144" font-size="11">0.20</text>
            <text x="316" y="174" font-size="11.5">coffee</text>
            <rect x="360" y="163" width="13" height="14" rx="3" fill="#f59e0b"/>
            <text x="424" y="174" font-size="11">0.13</text>
            <text x="316" y="204" font-size="11.5">cake</text>
            <rect x="360" y="193" width="10" height="14" rx="3" fill="#f59e0b"/>
            <text x="424" y="204" font-size="11">0.10</text>
            <text x="316" y="234" font-size="11.5">map</text>
            <rect x="360" y="223" width="6" height="14" rx="3" fill="#f59e0b"/>
            <text x="424" y="234" font-size="11">0.06</text>
            <text x="380" y="262" text-anchor="middle" font-size="11" fill="#9b99b8">rare words rise</text>
            <rect x="458" y="10" width="144" height="262" rx="10" fill="#1f1f44" stroke="#10b981"/>
            <text x="530" y="33" text-anchor="middle" font-weight="700" fill="#6ee7b7">Top-k, k = 3</text>
            <text x="530" y="51" text-anchor="middle" font-size="11" fill="#9b99b8">keep 3 biggest</text>
            <text x="466" y="84" font-size="11.5">hot</text>
            <rect x="510" y="73" width="47" height="14" rx="3" fill="#10b981"/>
            <text x="574" y="84" font-size="11">0.47</text>
            <text x="466" y="114" font-size="11.5">latte</text>
            <rect x="510" y="103" width="29" height="14" rx="3" fill="#10b981"/>
            <text x="574" y="114" font-size="11">0.29</text>
            <text x="466" y="144" font-size="11.5">flat</text>
            <rect x="510" y="133" width="24" height="14" rx="3" fill="#10b981"/>
            <text x="574" y="144" font-size="11">0.24</text>
            <text x="466" y="174" font-size="11.5" fill="#6b6990">coffee</text>
            <text x="574" y="174" font-size="11" fill="#6b6990">cut</text>
            <text x="466" y="204" font-size="11.5" fill="#6b6990">cake</text>
            <text x="574" y="204" font-size="11" fill="#6b6990">cut</text>
            <text x="466" y="234" font-size="11.5" fill="#6b6990">map</text>
            <text x="574" y="234" font-size="11" fill="#6b6990">cut</text>
            <text x="530" y="262" text-anchor="middle" font-size="11" fill="#9b99b8">0.85 rescaled to 1</text>
            <rect x="608" y="10" width="144" height="262" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
            <text x="680" y="33" text-anchor="middle" font-weight="700" fill="#67e8f9">Top-p, p = 0.9</text>
            <text x="680" y="51" text-anchor="middle" font-size="11" fill="#9b99b8">keep until 0.9</text>
            <text x="616" y="84" font-size="11.5">hot</text>
            <rect x="660" y="73" width="43" height="14" rx="3" fill="#22d3ee"/>
            <text x="724" y="84" font-size="11">0.43</text>
            <text x="616" y="114" font-size="11.5">latte</text>
            <rect x="660" y="103" width="27" height="14" rx="3" fill="#22d3ee"/>
            <text x="724" y="114" font-size="11">0.27</text>
            <text x="616" y="144" font-size="11.5">flat</text>
            <rect x="660" y="133" width="22" height="14" rx="3" fill="#22d3ee"/>
            <text x="724" y="144" font-size="11">0.22</text>
            <text x="616" y="174" font-size="11.5">coffee</text>
            <rect x="660" y="163" width="9" height="14" rx="3" fill="#22d3ee"/>
            <text x="724" y="174" font-size="11">0.09</text>
            <text x="616" y="204" font-size="11.5" fill="#6b6990">cake</text>
            <text x="724" y="204" font-size="11" fill="#6b6990">cut</text>
            <text x="616" y="234" font-size="11.5" fill="#6b6990">map</text>
            <text x="724" y="234" font-size="11" fill="#6b6990">cut</text>
            <text x="680" y="262" text-anchor="middle" font-size="11" fill="#9b99b8">0.93 rescaled to 1</text>
          </g>
        </svg>
          <figcaption>The same model output for "Tom makes a", changed by each method. The numbers are made up for this example and come from Part 1 in the code editor.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The worked example</h3>
          <p>Say TinyGPT reads "Tom makes a" and gives these probabilities for the next word. (We use whole words here to keep the table short. TinyGPT really works on characters.)</p>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Model (T = 1)</th><th>T = 0.5</th><th>T = 2</th><th>Top-k, k = 3</th><th>Top-p, p = 0.9</th></tr></thead>
            <tbody>
              <tr><td>hot</td><td>0.40</td><td>0.59</td><td>0.28</td><td>0.47</td><td>0.43</td></tr>
              <tr><td>latte</td><td>0.25</td><td>0.23</td><td>0.22</td><td>0.29</td><td>0.27</td></tr>
              <tr><td>flat</td><td>0.20</td><td>0.15</td><td>0.20</td><td>0.24</td><td>0.22</td></tr>
              <tr><td>coffee</td><td>0.08</td><td>0.02</td><td>0.13</td><td>0</td><td>0.09</td></tr>
              <tr><td>cake</td><td>0.05</td><td>0.01</td><td>0.10</td><td>0</td><td>0</td></tr>
              <tr><td>map</td><td>0.02</td><td>0.00</td><td>0.06</td><td>0</td><td>0</td></tr>
            </tbody>
          </table>
          <p>Every column adds up to 1 (apart from rounding). The next cards explain how each column was made.</p>
        </div>
        <div class="lc-card">
          <h3>Greedy and temperature</h3>
          <p><strong>Greedy decoding</strong> always picks the most likely token. Here that is "hot", every time. It is simple and repeatable. But it often gets stuck in loops. Earlier in this course, a greedy café model wrote "Tom makes a hot a hot a hot".</p>
          <p><strong>Sampling</strong> picks at random, using the probabilities. "hot" comes up 40% of the time, "latte" 25%, and so on. The text is more varied.</p>
          <p><strong>Temperature</strong> (T) controls how bold the sampling is. You divide the logits by T before the softmax:</p>
          <p><strong>probs = softmax(logits / T)</strong></p>
          <ul class="lc-list">
            <li><strong>T below 1</strong> makes the big probabilities bigger. With T = 0.5, "hot" goes from 0.40 to 0.59.</li>
            <li><strong>T = 1</strong> keeps the model's own probabilities.</li>
            <li><strong>T above 1</strong> flattens them. With T = 2, even "map" rises from 0.02 to 0.06.</li>
            <li><strong>T close to 0</strong> becomes greedy. In code, people often treat T = 0 as "use greedy".</li>
          </ul>
          <p>Here is the T = 0.5 maths for "hot". Dividing a log by 0.5 is the same as squaring the probability. So the scores are 0.40² = 0.16, 0.25² = 0.0625, 0.20² = 0.04, and so on. Their total is 0.2718. Then 0.16 / 0.2718 = 0.59.</p>
        </div>
        <div class="lc-card">
          <h3>Top-k and top-p</h3>
          <p>Even with a good temperature, the model can still pick a very unlikely token. One bad token can spoil the rest of the text. Top-k and top-p cut off the long tail of unlikely tokens.</p>
          <ul class="lc-list">
            <li><strong>Top-k</strong> keeps only the k most likely tokens. With k = 3, we keep hot, latte and flat. Their total is 0.85. We divide each by 0.85, so they add up to 1 again: 0.40 / 0.85 = 0.47.</li>
            <li><strong>Top-p</strong> (also called nucleus sampling) keeps the smallest set of top tokens whose total reaches p. Add them biggest first: 0.40, 0.65, 0.85, 0.93. The total passes 0.9 at "coffee", so four tokens stay. Divide each by 0.93.</li>
          </ul>
          <p>Top-p adapts to the situation. When the model is sure, one or two tokens already reach p. When it is unsure, many tokens stay. Top-k always keeps the same number.</p>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>A sensible start</th></tr></thead>
            <tbody>
              <tr><td>Exact answers, code, tests that must repeat</td><td>Greedy, or a low temperature</td></tr>
              <tr><td>Chat and general writing</td><td>A temperature below 1 with top-p</td></tr>
              <tr><td>Stories and brainstorming</td><td>A higher temperature, still with top-p or top-k</td></tr>
            </tbody>
          </table>
          <p>These are starting points, not rules. Try a few settings and read the output.</p>
        </div>
        <div class="lc-card">
          <h3>A generate() function for TinyGPT</h3>
          <p>Part 3 in the code editor below has a PyTorch <code>generate()</code> function. It adds one token at a time. It uses the order shown above: temperature, then top-k, then top-p, then sample.</p>
          <p>Each turn of its loop keeps the last block_size tokens and runs the model. It takes the logits for the last position, picks one token, and adds it to the input.</p>
          <p>Besides temperature, it has three more parts. If the temperature is 0, it uses greedy with <code>argmax</code>. If top_k is set, it keeps the k highest logits. If top_p is set, it sorts the logits and keeps the top tokens until their total reaches p. Parts 1 and 2 of the editor write each of these steps in NumPy.</p>
          <p>Call it like <code>generate(model, start, 200, temperature=0.8)</code>. Here <code>start</code> holds the token IDs of your prompt, with shape (1, T). The result holds the prompt plus 200 new IDs. Decode them with your tokeniser to read the text. Note the first line inside the loop. TinyGPT has only 16 positions, so the model sees just the last 16 tokens.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one sampling step with top-p</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Prompt">Tom makes a</li>
              <li data-kind="tool" data-label="Model">TinyGPT gives logits. Softmax turns them into hot 0.40, latte 0.25, flat 0.20, coffee 0.08, cake 0.05, map 0.02.</li>
              <li data-kind="thought" data-label="Temperature 1">We keep T = 1, so the probabilities do not change.</li>
              <li data-kind="thought" data-label="Top-p 0.9">Running totals: 0.40, 0.65, 0.85, 0.93. The total reaches 0.9 at "coffee". Keep four words. Cut cake and map.</li>
              <li data-kind="result" data-label="Rescale">Divide by 0.93: hot 0.43, latte 0.27, flat 0.22, coffee 0.09.</li>
              <li data-kind="check" data-label="Sample">Roll a weighted dice. It lands on "latte".</li>
              <li data-kind="answer" data-label="New text">Tom makes a latte</li>
              <li data-kind="warn" data-label="Then repeat">Add "latte" to the input and run the model again for the next token.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Activity: play with the settings</h3>
          <div class="lcw" data-controller="next-token"></div>
          <p>Pick a prompt. Move the temperature to 0.2, then to 2. Then set top-k to 1. Which method from this lesson is that?</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 and 2 use NumPy, because PyTorch does not run in the browser. Part 1 builds every method from the table. Part 2 draws 20 samples with each setting. Part 3 is the PyTorch <code>generate()</code> function.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that the printed numbers match the table above.</li>
            <li>In Part 1, change <code>with_temperature(logits, 2.0)</code> to <code>5.0</code>. How close to equal do the words get?</li>
            <li>In Part 1, change <code>top_p(probs, 0.9)</code> to <code>0.6</code>. How many words stay now? Check it with the running totals.</li>
            <li>In Part 2, change the seed <code>42</code>. The samples change, but greedy in Part 1 always picks "hot".</li>
            <li>On your own computer, run Part 3 with PyTorch. The model is untrained, so the IDs are random. Load your checkpoint from the last lesson to get real text.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The model only gives probabilities. Decoding decides the text. Greedy picks the top token. Temperature sharpens or flattens the choices. Top-k and top-p cut off unlikely tokens before you sample.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Ways to pick the next token: greedy, temperature, top-k and top-p.
        # Parts 1 and 2 run here in the browser. Part 3 uses PyTorch: run it on your own computer.
        import numpy as np


        # ── Part 1: each method on the "Tom makes a" example ──
        # These are made-up model probabilities for the next word.
        words = np.array(["hot", "latte", "flat", "coffee", "cake", "map"])
        probs = np.array([0.40, 0.25, 0.20, 0.08, 0.05, 0.02])
        logits = np.log(probs)              # a model gives logits; softmax turns them into probs

        def softmax(x):
            e = np.exp(x - x.max())
            return e / e.sum()

        def with_temperature(logits, t):
            return softmax(logits / t)      # probs = softmax(logits / T)

        def top_k(p, k):
            keep = np.argsort(p)[::-1][:k]  # the k biggest probabilities
            out = np.zeros_like(p)
            out[keep] = p[keep]
            return out / out.sum()          # make them add up to 1 again

        def top_p(p, limit):
            order = np.argsort(p)[::-1]
            total = np.cumsum(p[order])     # running total, biggest first
            n = np.searchsorted(total, limit) + 1   # smallest set that reaches the limit
            out = np.zeros_like(p)
            out[order[:n]] = p[order[:n]]
            return out / out.sum()

        def show(title, p):
            print(title)
            for w, q in zip(words, p):
                print(f"  {w:7} {q:.2f} " + "#" * int(round(q * 40)))

        print("== Part 1: greedy, temperature, top-k and top-p ==")
        show("Model probabilities (T = 1)", probs)
        print("Greedy picks:", words[np.argmax(probs)])
        show("\nTemperature 0.5 (sharper)", with_temperature(logits, 0.5))
        show("\nTemperature 2.0 (flatter)", with_temperature(logits, 2.0))
        show("\nTop-k, k = 3", top_k(probs, 3))
        show("\nTop-p, p = 0.9", top_p(probs, 0.9))


        # ── Part 2: sample 20 tokens with each setting (same seed, so you can compare) ──
        print("\n== Part 2: 20 samples for each setting ==")
        settings = {
            "T=0.5": with_temperature(logits, 0.5),
            "T=1.0": probs,
            "T=2.0": with_temperature(logits, 2.0),
            "top-p 0.9": top_p(probs, 0.9),
        }
        for name, p in settings.items():
            rng = np.random.default_rng(42)
            picks = rng.choice(words, size=20, p=p)
            print(f"  {name:9}", " ".join(picks[:8]), "...", f"{len(set(picks))} different words")


        # ── Part 3: a full generate() function for TinyGPT (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 3: generate() in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class MultiHeadAttention(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.n_head = n_head
                    self.qkv = nn.Linear(n_embd, 3 * n_embd, bias=False)
                    self.proj = nn.Linear(n_embd, n_embd)
                    self.register_buffer("mask", torch.tril(torch.ones(block_size, block_size)))
                def forward(self, x):
                    B, T, C = x.shape
                    q, k, v = self.qkv(x).split(C, dim=2)
                    hs = C // self.n_head
                    q = q.view(B, T, self.n_head, hs).transpose(1, 2)
                    k = k.view(B, T, self.n_head, hs).transpose(1, 2)
                    v = v.view(B, T, self.n_head, hs).transpose(1, 2)
                    att = q @ k.transpose(-2, -1) / hs ** 0.5
                    att = att.masked_fill(self.mask[:T, :T] == 0, float("-inf"))
                    att = F.softmax(att, dim=-1)
                    y = (att @ v).transpose(1, 2).contiguous().view(B, T, C)
                    return self.proj(y)

            class Block(nn.Module):
                def __init__(self, n_embd, n_head, block_size):
                    super().__init__()
                    self.ln1 = nn.LayerNorm(n_embd)
                    self.attn = MultiHeadAttention(n_embd, n_head, block_size)
                    self.ln2 = nn.LayerNorm(n_embd)
                    self.mlp = nn.Sequential(
                        nn.Linear(n_embd, 4 * n_embd),
                        nn.GELU(),
                        nn.Linear(4 * n_embd, n_embd),
                    )

                def forward(self, x):
                    x = x + self.attn(self.ln1(x))   # talk: tokens share information
                    x = x + self.mlp(self.ln2(x))    # think: each token on its own
                    return x

            class TinyGPT(nn.Module):
                def __init__(self, vocab_size, n_embd=32, n_head=4, n_layer=2, block_size=16):
                    super().__init__()
                    self.block_size = block_size
                    self.tok_emb = nn.Embedding(vocab_size, n_embd)
                    self.pos_emb = nn.Embedding(block_size, n_embd)
                    self.blocks = nn.Sequential(*[Block(n_embd, n_head, block_size) for _ in range(n_layer)])
                    self.ln_f = nn.LayerNorm(n_embd)
                    self.lm_head = nn.Linear(n_embd, vocab_size, bias=False)
                    self.lm_head.weight = self.tok_emb.weight   # weight tying
                    nn.init.normal_(self.tok_emb.weight, std=0.02)   # start small
                    nn.init.normal_(self.pos_emb.weight, std=0.02)

                def forward(self, idx):
                    B, T = idx.shape
                    pos = torch.arange(T, device=idx.device)
                    x = self.tok_emb(idx) + self.pos_emb(pos)   # (B, T, C)
                    x = self.blocks(x)                          # (B, T, C)
                    x = self.ln_f(x)                            # (B, T, C)
                    return self.lm_head(x)                      # (B, T, V) logits

            @torch.no_grad()
            def generate(model, idx, max_new_tokens, temperature=1.0, top_k=None, top_p=None):
                for _ in range(max_new_tokens):
                    idx_cond = idx[:, -model.block_size:]      # at most block_size tokens
                    logits = model(idx_cond)[:, -1, :]         # scores for the next token
                    if temperature == 0:                       # greedy
                        next_id = logits.argmax(dim=-1, keepdim=True)
                    else:
                        logits = logits / temperature
                        if top_k is not None:
                            kth = torch.topk(logits, top_k).values[:, [-1]]
                            logits[logits < kth] = float("-inf")    # remove the rest
                        if top_p is not None:
                            sorted_logits, order = torch.sort(logits, descending=True)
                            p = F.softmax(sorted_logits, dim=-1)
                            remove = p.cumsum(dim=-1) - p >= top_p  # total was already past p
                            sorted_logits[remove] = float("-inf")
                            logits = torch.full_like(logits, float("-inf")).scatter(1, order, sorted_logits)
                        probs = F.softmax(logits, dim=-1)
                        next_id = torch.multinomial(probs, num_samples=1)   # sample
                    idx = torch.cat([idx, next_id], dim=1)     # add it and go again
                return idx

            # An untrained TinyGPT gives random IDs. Load your trained checkpoint to get real text.
            torch.manual_seed(42)
            model = TinyGPT(vocab_size=35)
            start = torch.zeros((1, 1), dtype=torch.long)      # the prompt: token ID 0, shape (1, T)
            for kw in [dict(temperature=0), dict(temperature=0.8, top_k=10), dict(temperature=1.0, top_p=0.9)]:
                out = generate(model, start, 20, **kw)
                print(kw, "->", out.shape, out[0].tolist())
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Scaling Laws: Data, Parameters, Compute</h1>
        </div>
        <p class="lc-lead">TinyGPT has 26,912 parameters. Real LLMs have billions. How do teams decide how big to go, and how much text to use? They use <strong>scaling laws</strong>: simple formulas that predict the loss from the model size, the data and the compute. In this lesson you learn the three key ideas and do the arithmetic yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 282" role="img" aria-label="Left: five made-up models from 1 million to 10 billion parameters. Their validation loss falls from 5.05 to 2.48 and lies on a straight line on a log-log chart. The line predicts 2.07 for 100 billion parameters. Right: training compute C is about 6 times N times D. The Chinchilla rule uses about 20 tokens per parameter, so a budget of 10 to the 21 FLOPs gives about 2.9 billion parameters on 58 billion tokens.">
          <g font-family="inherit" font-size="12.5" fill="#e2e0f0">
            <line x1="70" y1="230" x2="420" y2="230" stroke="#4b4a78"/><line x1="70" y1="30" x2="70" y2="230" stroke="#4b4a78"/>
            <line x1="70" y1="230.0" x2="420" y2="230.0" stroke="#2e2d5a" stroke-dasharray="3 4"/><text x="62" y="234.0" text-anchor="end" font-size="11" fill="#9b99b8">2</text>
            <line x1="70" y1="153.8" x2="420" y2="153.8" stroke="#2e2d5a" stroke-dasharray="3 4"/><text x="62" y="157.8" text-anchor="end" font-size="11" fill="#9b99b8">3</text>
            <line x1="70" y1="99.8" x2="420" y2="99.8" stroke="#2e2d5a" stroke-dasharray="3 4"/><text x="62" y="103.8" text-anchor="end" font-size="11" fill="#9b99b8">4</text>
            <line x1="70" y1="57.9" x2="420" y2="57.9" stroke="#2e2d5a" stroke-dasharray="3 4"/><text x="62" y="61.9" text-anchor="end" font-size="11" fill="#9b99b8">5</text>
            <text x="70" y="248" text-anchor="middle" font-size="11" fill="#9b99b8">1M</text>
            <text x="138" y="248" text-anchor="middle" font-size="11" fill="#9b99b8">10M</text>
            <text x="206" y="248" text-anchor="middle" font-size="11" fill="#9b99b8">100M</text>
            <text x="274" y="248" text-anchor="middle" font-size="11" fill="#9b99b8">1B</text>
            <text x="342" y="248" text-anchor="middle" font-size="11" fill="#9b99b8">10B</text>
            <text x="410" y="248" text-anchor="middle" font-size="11" fill="#9b99b8">100B</text>
            <text x="245" y="270" text-anchor="middle" font-size="11" fill="#9b99b8">parameters N (log scale)</text>
            <text x="22" y="130" text-anchor="middle" font-size="11" fill="#9b99b8" transform="rotate(-90 22 130)">val loss (log scale)</text>
            <line x1="70.0" y1="56.4" x2="342.0" y2="189.6" stroke="#8b5cf6" stroke-width="2"/>
            <line x1="342.0" y1="189.6" x2="410.0" y2="222.9" stroke="#8b5cf6" stroke-width="2" stroke-dasharray="6 4"/>
            <circle cx="70.0" cy="56.0" r="5" fill="#3b82f6"/>
            <circle cx="138.0" cy="92.0" r="5" fill="#3b82f6"/>
            <circle cx="206.0" cy="122.2" r="5" fill="#3b82f6"/>
            <circle cx="274.0" cy="158.3" r="5" fill="#3b82f6"/>
            <circle cx="342.0" cy="189.6" r="5" fill="#3b82f6"/>
            <circle cx="410.0" cy="222.9" r="5" fill="none" stroke="#f59e0b" stroke-width="2"/>
            <text x="380" y="224" text-anchor="end" font-size="11.5" fill="#fcd34d">prediction 2.07</text>
            <text x="90" y="200" font-size="11.5" fill="#c4b5fd">each 10x more N: loss x 0.84</text>
            <text x="245" y="20" text-anchor="middle" font-weight="700">A straight line on a log-log chart</text>
            <rect x="450" y="20" width="300" height="110" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
            <text x="600" y="44" text-anchor="middle" font-weight="700" fill="#67e8f9">Compute: C ≈ 6 × N × D</text>
            <text x="600" y="68" text-anchor="middle" font-size="12">N = parameters, D = training tokens</text>
            <text x="600" y="92" text-anchor="middle" font-size="12">1B params × 20B tokens</text>
            <text x="600" y="114" text-anchor="middle" font-size="12" fill="#9b99b8">= 6 × 10⁹ × 2 × 10¹⁰ = 1.2 × 10²⁰ FLOPs</text>
            <rect x="450" y="148" width="300" height="110" rx="10" fill="#1f1f44" stroke="#10b981"/>
            <text x="600" y="172" text-anchor="middle" font-weight="700" fill="#6ee7b7">Chinchilla: balance N and D</text>
            <text x="600" y="196" text-anchor="middle" font-size="12">about 20 tokens per parameter</text>
            <text x="600" y="220" text-anchor="middle" font-size="12">budget 10²¹ FLOPs</text>
            <text x="600" y="242" text-anchor="middle" font-size="12" fill="#9b99b8">→ 2.9B params on 58B tokens</text>
          </g>
        </svg>
          <figcaption>Left: made-up losses that follow a power law, like the real studies. Right: the two formulas you will use in this lesson.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Loss falls as a power law</h3>
          <p>Train the same kind of model at many sizes, each with plenty of data. Then plot the final validation loss. In 2020, a team at OpenAI (Kaplan and others) did this for language models. They found a smooth pattern called a <strong>power law</strong>:</p>
          <p><strong>loss ≈ a × N<sup>−b</sup> (a and b are numbers you fit)</strong></p>
          <p>A power law is a straight line on a log-log chart. On a log scale, each step on the axis means "10 times more". It also means a fixed rule: each time N grows 10 times, the loss is multiplied by the same number. In our made-up data, that number is 0.84.</p>
          <p>The same pattern holds for D, the number of training tokens, and for C, the compute. Later studies add a floor to the formula. Text has some randomness that no model can predict, so the loss never reaches 0.</p>
          <p>Why does this matter? You can train several small models cheaply and fit the line. Then you can predict a big model's loss before you pay for it. Part 1 in the code editor below fits such a line to five made-up points.</p>
        </div>
        <div class="lc-card">
          <h3>Compute: C ≈ 6 × N × D</h3>
          <p>Training compute is counted in <strong>FLOPs</strong> (floating-point operations, such as one multiply or one add). For a transformer there is a simple estimate:</p>
          <ul class="lc-list">
            <li>The forward pass costs about 2 FLOPs per parameter per token: one multiply and one add.</li>
            <li>The backward pass costs about twice the forward pass: 4 FLOPs.</li>
            <li>Together that is 6 FLOPs per parameter per token. So C ≈ 6 × N × D.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>N</th><th>D (tokens)</th><th>C = 6 × N × D</th></tr></thead>
            <tbody>
              <tr><td>TinyGPT run from earlier</td><td>26,912</td><td>1,024,000</td><td>1.7 × 10<sup>11</sup></td></tr>
              <tr><td>A 1B model</td><td>1 × 10<sup>9</sup></td><td>2 × 10<sup>10</sup></td><td>1.2 × 10<sup>20</sup></td></tr>
              <tr><td>Chinchilla (published sizes)</td><td>7 × 10<sup>10</sup></td><td>1.4 × 10<sup>12</sup></td><td>5.9 × 10<sup>23</sup></td></tr>
            </tbody>
          </table>
          <p>Part 2 in the code editor below works out this table. To turn FLOPs into time, divide by how many useful FLOPs your hardware does per second. Part 4 assumes 10<sup>14</sup> per second for one GPU. That is a round number for the example. Check your own GPU's specifications, and expect to reach only part of its peak speed.</p>
        </div>
        <div class="lc-card">
          <h3>The Chinchilla idea: balance data and parameters</h3>
          <p>Say your compute budget C is fixed. You could train a huge model on little data, or a small model on lots of data. Which is better?</p>
          <p>In 2022, a team at DeepMind (Hoffmann and others) tested this with hundreds of models. They found that N and D should grow together. A simple rule from their results is <strong>about 20 training tokens per parameter</strong>.</p>
          <p>They tested it with a model called Chinchilla: 70 billion parameters trained on 1.4 trillion tokens. It used about the same compute as their earlier Gopher model. Gopher had 280 billion parameters but only 300 billion tokens. Chinchilla, four times smaller, did better on a wide range of tests.</p>
          <p>Worked example. Put D = 20 × N into C = 6 × N × D. You get C = 120 × N². So N = √(C / 120).</p>
          <p><strong>C = 10<sup>21</sup> FLOPs</strong></p>
          <p><strong>N = √(10<sup>21</sup> / 120) ≈ 2.9 × 10<sup>9</sup> (2.9 billion parameters)</strong></p>
          <p><strong>D = 20 × N ≈ 5.8 × 10<sup>10</sup> (58 billion tokens)</strong></p>
          <p>Part 3 in the code editor below does this sum for any budget.</p>
          <p>Note that "20" is a rule of thumb, not a law of nature. Many recent models train on far more tokens per parameter. A smaller model is cheaper and faster to run for every user. So teams often pay extra training compute to get a small, strong model.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: tokens per parameter</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Divide D by N. Then sort each training plan.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="few" data-label="Too few tokens (under 10 per parameter)"></div>
              <div data-sorter-target="bucket" data-bucket="balanced" data-label="About balanced (around 20)"></div>
              <div data-sorter-target="bucket" data-bucket="many" data-label="Many tokens (over 100 per parameter)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="balanced" data-why="20 billion / 1 billion = 20 tokens per parameter.">1B parameters on 20B tokens</li>
              <li data-bucket="balanced" data-why="140 billion / 7 billion = 20 tokens per parameter.">7B parameters on 140B tokens</li>
              <li data-bucket="few" data-why="20 billion / 10 billion = 2. The model is too big for its data, so compute is wasted.">10B parameters on 20B tokens</li>
              <li data-bucket="few" data-why="300 billion / 280 billion is about 1. This is the Gopher plan that Chinchilla beat.">280B parameters on 300B tokens</li>
              <li data-bucket="many" data-why="1 trillion / 1 billion = 1,000. Expensive to train, but small and cheap to run.">1B parameters on 1T tokens</li>
              <li data-bucket="many" data-why="600 billion / 3 billion = 200 tokens per parameter.">3B parameters on 600B tokens</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The editor has four parts. Part 1 fits a power law with NumPy. Parts 2, 3 and 4 do the compute, Chinchilla and time arithmetic for you.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check the fitted line against the five points. Read the prediction for 100 billion parameters.</li>
            <li>In Part 3, change <code>budget</code> to <code>1e22</code>. Compute grew 10 times. How much did N grow? (Hint: √10 ≈ 3.16.)</li>
            <li>In Part 3, set <code>TOKENS_PER_PARAM = 100</code>. The model gets smaller for the same budget. Why?</li>
            <li>In Part 4, change <code>GPU_FLOPS</code> to <code>4e14</code>, then set <code>N_GPUS = 1024</code>. How many days now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Loss falls smoothly as a power law, so small runs can predict big ones. Training costs about 6 × N × D FLOPs. For a fixed budget, grow parameters and data together, at roughly 20 tokens per parameter.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Scaling laws with simple arithmetic and NumPy. Everything here runs in the browser.
        import numpy as np


        # ── Part 1: fit a power law, loss ≈ a × N^(−b) ──
        print("== Part 1: loss falls as a power law ==")
        # Made-up results: five models trained the same way, only the size changes.
        params = np.array([1e6, 1e7, 1e8, 1e9, 1e10])       # N, number of parameters
        loss   = np.array([5.05, 4.17, 3.55, 2.93, 2.48])   # final validation loss

        # A power law is a straight line on a log-log chart: log(loss) = b + slope * log(N)
        slope, b = np.polyfit(np.log10(params), np.log10(loss), 1)
        print(f"Fitted law: loss = {10**b:.1f} * N^({slope:.3f})")
        for n, l in zip(params, loss):
            print(f"  N = {n:8.0e}  loss {l:.2f}  fit {10**b * n**slope:.2f}")

        # Predict a model 10 times bigger than the biggest one we trained.
        n_new = 1e11
        print(f"Prediction for N = {n_new:.0e}: loss {10**b * n_new**slope:.2f}")
        print("Each 10x more parameters multiplies the loss by", round(10**slope, 3))


        # ── Part 2: training compute, C = 6 × N × D ──
        print("\n== Part 2: training compute ==")
        # C = 6 * N * D floating-point operations (FLOPs)
        def compute(n, d):
            return 6 * n * d

        print("Training compute, C = 6 * N * D")
        print(f"  TinyGPT: 26,912 params, 1,024,000 tokens -> {compute(26912, 1_024_000):.1e} FLOPs")
        print(f"  1 billion params, 20 billion tokens   -> {compute(1e9, 20e9):.1e} FLOPs")
        print(f"  Chinchilla: 70B params, 1.4T tokens    -> {compute(70e9, 1.4e12):.1e} FLOPs")


        # ── Part 3: the Chinchilla idea, about 20 tokens per parameter ──
        print("\n== Part 3: balance data and parameters ==")
        # D = 20 × N, so C = 6 × N × D = 120 × N², and N = √(C / 120).
        TOKENS_PER_PARAM = 20
        budget = 1e21                                   # FLOPs we can afford
        n_best = (budget / (6 * TOKENS_PER_PARAM)) ** 0.5   # C = 6 * N * (20 * N)
        d_best = TOKENS_PER_PARAM * n_best
        print(f"Budget {budget:.0e} FLOPs -> about {n_best/1e9:.1f} billion params on {d_best/1e9:.0f} billion tokens")


        # ── Part 4: how long would that take? ──
        print("\n== Part 4: training time ==")
        # Assume one GPU does 1e14 useful FLOPs per second.
        GPU_FLOPS = 1e14
        N_GPUS = 64             # we assume the GPUs share the work perfectly (real runs are slower)
        days = budget / GPU_FLOPS / 86400
        print(f"On 1 GPU: {days:.0f} days. On {N_GPUS} GPUs: {days / N_GPUS:.1f} days")
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Training on Multiple GPUs</h1>
        </div>
        <p class="lc-lead">TinyGPT trains on one computer in minutes. A real LLM is far too big for that. Its weights, gradients and optimiser state do not fit in one GPU's memory. Even if they did fit, one GPU would take years. In this lesson you learn the main ways to spread training over many GPUs: <strong>data parallel</strong>, <strong>sharding</strong> (FSDP and ZeRO), and <strong>model parallel</strong> (tensor and pipeline). You also learn the memory arithmetic that tells you which one you need.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Data parallel training. A batch of 16 examples is split into 4 slices of 4. Each of 4 GPUs has a full copy of the model and computes gradients on its slice. An all-reduce step averages the 4 gradients. Every GPU then makes the same update, so all copies stay identical.">
            <defs><marker id="ls17a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="115" width="130" height="64" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="85" y="142" font-weight="700">One batch</text>
              <text x="85" y="162" font-size="12" fill="#9b99b8">16 examples</text>
              <path d="M150,147 L196,55" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <path d="M150,147 L196,120" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <path d="M150,147 L196,185" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <path d="M150,147 L196,250" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <rect x="200" y="30" width="210" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="305" y="51" font-weight="700">GPU 0: examples 1-4</text>
              <text x="305" y="69" font-size="12" fill="#9b99b8">full model copy, own gradient</text>
              <rect x="200" y="95" width="210" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="305" y="116" font-weight="700">GPU 1: examples 5-8</text>
              <text x="305" y="134" font-size="12" fill="#9b99b8">full model copy, own gradient</text>
              <rect x="200" y="160" width="210" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="305" y="181" font-weight="700">GPU 2: examples 9-12</text>
              <text x="305" y="199" font-size="12" fill="#9b99b8">full model copy, own gradient</text>
              <rect x="200" y="225" width="210" height="50" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="305" y="246" font-weight="700">GPU 3: examples 13-16</text>
              <text x="305" y="264" font-size="12" fill="#9b99b8">full model copy, own gradient</text>
              <line x1="410" y1="55" x2="446" y2="55" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <line x1="410" y1="120" x2="446" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <line x1="410" y1="185" x2="446" y2="185" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <line x1="410" y1="250" x2="446" y2="250" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <rect x="450" y="30" width="120" height="245" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="510" y="135" font-weight="700" fill="#fcd34d">All-reduce</text>
              <text x="510" y="157" font-size="12" fill="#9b99b8">average the</text>
              <text x="510" y="173" font-size="12" fill="#9b99b8">4 gradients</text>
              <line x1="570" y1="152" x2="606" y2="152" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls17a)"/>
              <rect x="610" y="110" width="130" height="84" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="675" y="138" font-weight="700">Same update</text>
              <text x="675" y="158" font-size="12" fill="#9b99b8">on every GPU, so</text>
              <text x="675" y="175" font-size="12" fill="#9b99b8">copies stay equal</text>
            </g>
          </svg>
          <figcaption>Data parallel training. Each GPU sees a different slice of the batch. The all-reduce step shares and averages the gradients, so every copy of the model gets the same update.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why one GPU is not enough</h3>
          <p>Training needs memory for more than the weights. With the Adam optimiser and <strong>mixed precision</strong>, a common setup stores these numbers for <em>every</em> parameter. Mixed precision means most maths uses 16-bit numbers, while the optimiser keeps 32-bit copies.</p>
          <table class="lc-table">
            <thead><tr><th>What is stored</th><th>Number type</th><th>Bytes per parameter</th></tr></thead>
            <tbody>
              <tr><td>Weights</td><td>bf16 (16-bit)</td><td>2</td></tr>
              <tr><td>Gradients</td><td>bf16 (16-bit)</td><td>2</td></tr>
              <tr><td>Master copy of weights</td><td>fp32 (32-bit)</td><td>4</td></tr>
              <tr><td>Adam momentum</td><td>fp32</td><td>4</td></tr>
              <tr><td>Adam variance</td><td>fp32</td><td>4</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td><strong>16</strong></td></tr>
            </tbody>
          </table>
          <p>Now do the sum for a model with 7 billion parameters. 7,000,000,000 × 16 bytes = 112,000,000,000 bytes. That is 112 GB. Many data-centre GPUs have 80 GB of memory, and some newer ones have more. So the model does not fit on one 80 GB card. And this sum leaves out the <strong>activations</strong>. Activations are the values saved during the forward pass for the backward pass.</p>
          <p>Time is the other problem. Recall the 6 × N × D rule from earlier in this course. A big model needs a huge number of operations. Many GPUs working together finish in weeks instead of years.</p>
        </div>
        <div class="lc-card">
          <h3>Data parallel (DDP)</h3>
          <p><strong>Data parallel</strong> training is the simplest method. Use it when the model fits on one GPU. In PyTorch it is called <strong>DDP</strong>, short for DistributedDataParallel.</p>
          <ol class="lc-list">
            <li>Every GPU holds a full copy of the model, with the same starting weights.</li>
            <li>Each GPU gets a different slice of the batch.</li>
            <li>Each GPU runs the forward pass and the backward pass on its slice.</li>
            <li>An <strong>all-reduce</strong> step averages the gradients across all GPUs. Every GPU gets the same average.</li>
            <li>Every GPU runs the same optimiser step. The copies stay identical.</li>
          </ol>
          <p>With 4 GPUs and 16 examples per GPU, one step uses 64 examples. This is the <strong>effective batch size</strong>. The averaged gradient is the same as one GPU computing on all 64 examples. Part 1 in the code editor below checks this with real numbers.</p>
          <p>In PyTorch, you wrap the model once. Part 3 in the code editor below is a complete DDP script. It starts a process group, gives every worker the same start weights, and wraps the model in <code>DDP</code>. Then <code>loss.backward()</code> averages the gradients across the workers.</p>
          <p>You start the workers with a command such as <code>torchrun --nproc_per_node=2 ddp_demo.py</code>. Each worker gets a different loss, because it saw different data. But the weights after the update are the same on every worker. That is the all-reduce at work. A real script also uses a <code>DistributedSampler</code>, so each worker reads a different part of the dataset.</p>
          <p>PyTorch does not run in the browser, so Part 3 only prints a short message there. Part 1 runs a NumPy version of the same idea.</p>
        </div>
        <div class="lc-card">
          <h3>Sharding: ZeRO and FSDP</h3>
          <p>DDP has a cost. Every GPU stores the <em>full</em> 16 bytes per parameter. With 4 GPUs, you keep 4 identical copies of the optimiser state. That is a lot of wasted memory.</p>
          <p><strong>Sharding</strong> fixes this. A shard is one piece of a bigger thing. Each GPU keeps only its own piece, such as one quarter of the optimiser state. When a GPU needs a piece it does not have, the GPUs send it over the network.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 260" role="img" aria-label="Bar chart of memory per GPU for a 7 billion parameter model on 4 GPUs. DDP needs 112 GB. ZeRO-1 needs 49 GB. ZeRO-2 needs 38.5 GB. ZeRO-3 or FSDP needs 28 GB. A dashed line marks 80 GB. Only DDP is above the line.">
              <g font-family="inherit" font-size="13" fill="#e2e0f0">
                <text x="20" y="24" font-weight="700">7B model, Adam, mixed precision, 4 GPUs: GB per GPU</text>
                <text x="20" y="69">DDP</text>
                <text x="20" y="85" font-size="11.5" fill="#9b99b8">full copy on each GPU</text>
                <text x="20" y="117">ZeRO-1</text>
                <text x="20" y="133" font-size="11.5" fill="#9b99b8">shard optimiser state</text>
                <text x="20" y="165">ZeRO-2</text>
                <text x="20" y="181" font-size="11.5" fill="#9b99b8">+ shard gradients</text>
                <text x="20" y="213">ZeRO-3 / FSDP</text>
                <text x="20" y="229" font-size="11.5" fill="#9b99b8">+ shard weights too</text>
                <rect x="200" y="56" width="480" height="30" rx="4" fill="#ec4899" opacity="0.85"/>
                <rect x="200" y="104" width="210" height="30" rx="4" fill="#f59e0b" opacity="0.85"/>
                <rect x="200" y="152" width="165" height="30" rx="4" fill="#3b82f6" opacity="0.85"/>
                <rect x="200" y="200" width="120" height="30" rx="4" fill="#10b981" opacity="0.85"/>
                <text x="688" y="77">112</text>
                <text x="418" y="125">49</text>
                <text x="373" y="173">38.5</text>
                <text x="328" y="221">28</text>
                <line x1="543" y1="44" x2="543" y2="240" stroke="#e2e0f0" stroke-width="1.5" stroke-dasharray="5 4"/>
                <text x="550" y="40" font-size="12" fill="#9b99b8">80 GB GPU</text>
              </g>
            </svg>
            <figcaption>Memory per GPU for the 7B model, before activations. Each ZeRO stage splits one more kind of data across the 4 GPUs. The numbers come from Part 2 in the code editor.</figcaption>
          </figure>
          <p><strong>ZeRO</strong> comes from the DeepSpeed library. It has three stages. Stage 1 shards the optimiser state. Stage 2 also shards the gradients. Stage 3 also shards the weights. <strong>FSDP</strong> (Fully Sharded Data Parallel) is PyTorch's own version of stage 3.</p>
          <p>With full sharding, a GPU does not hold the whole model. Before it runs a layer, the GPUs gather that layer's weights. After the layer, each GPU frees the pieces it does not own. You save a lot of memory, but you send more data between GPUs. The APIs change between versions, so check the current PyTorch and DeepSpeed docs.</p>
        </div>
        <div class="lc-card">
          <h3>Model parallel: tensor and pipeline</h3>
          <p>Sometimes even one layer is too big, or the sharded training is too slow. Then you split the <em>model itself</em> across GPUs. There are two main ways.</p>
          <p><strong>Tensor parallel:</strong> split each big weight matrix. Take an MLP matrix of shape (32, 128) in TinyGPT. With 2 GPUs, each one holds a (32, 64) half. Each GPU computes half of the output columns. Then the GPUs join the halves. This needs very fast links, so it is usually used inside one machine.</p>
          <p><strong>Pipeline parallel:</strong> split the layers. For a 24-layer model on 2 GPUs, layers 1 to 12 go on GPU 0 and layers 13 to 24 go on GPU 1. GPU 0 passes its activations to GPU 1. To keep both GPUs busy, the batch is cut into small <strong>micro-batches</strong>. While GPU 1 works on micro-batch 1, GPU 0 starts micro-batch 2. Time when a GPU waits with nothing to do is called a <strong>bubble</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What is split</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>Data parallel (DDP)</td><td>The batch</td><td>Models that fit on one GPU</td></tr>
              <tr><td>FSDP / ZeRO</td><td>Batch, plus weights, gradients and optimiser state</td><td>Models a bit too big for one GPU</td></tr>
              <tr><td>Tensor parallel</td><td>Each weight matrix</td><td>Very wide layers, GPUs in one machine</td></tr>
              <tr><td>Pipeline parallel</td><td>The stack of layers</td><td>Very deep models across machines</td></tr>
            </tbody>
          </table>
          <p>The biggest training runs combine these methods. For example, tensor parallel inside each machine, pipeline parallel across machines, and data parallel on top.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the right method</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which method fits each situation best?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="ddp" data-label="Data parallel (DDP)"></div>
              <div data-sorter-target="bucket" data-bucket="fsdp" data-label="FSDP / ZeRO"></div>
              <div data-sorter-target="bucket" data-bucket="tensor" data-label="Tensor parallel"></div>
              <div data-sorter-target="bucket" data-bucket="pipe" data-label="Pipeline parallel"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="ddp" data-why="The model fits on one GPU. You only want more examples per second, so copy the model and split the batch.">TinyGPT fits on one GPU, but you want to train 8 times faster</li>
              <li data-bucket="fsdp" data-why="Training needs 112 GB per GPU with DDP. Sharding weights, gradients and optimiser state brings it down to 28 GB on 4 GPUs.">A 7B model needs 112 GB per GPU with DDP</li>
              <li data-bucket="fsdp" data-why="ZeRO stage 1 and stage 2 remove the repeated optimiser state and gradients. Each GPU keeps only its share.">Every GPU stores the same Adam state, and you want to stop that waste</li>
              <li data-bucket="tensor" data-why="Tensor parallel splits each weight matrix, so each GPU holds part of every layer.">One weight matrix is too big for a single GPU</li>
              <li data-bucket="pipe" data-why="Pipeline parallel puts groups of layers on different GPUs and passes activations between them.">You put layers 1-40 on one machine and layers 41-80 on another</li>
              <li data-bucket="pipe" data-why="Micro-batches let the next stage start early. This shrinks the idle time called the bubble.">You cut the batch into micro-batches to keep every stage busy</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor splits a batch across pretend GPUs and averages their gradients. Part 2 prints the memory each GPU needs. Part 3 is the real DDP script in PyTorch, for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that the averaged gradient matches the whole-batch gradient exactly.</li>
            <li>In Part 1, change <code>NUM_GPUS</code> to 8. Each GPU now gets only 2 examples, but the average stays the same. Which memory rows in Part 2 change?</li>
            <li>In Part 2, change <code>PARAMS</code> to <code>70e9</code>. Also set <code>NUM_GPUS</code> to 16 in Part 1. Which rows fit on an 80 GB GPU, before activations?</li>
            <li>In Part 2, change <code>PARAMS</code> to <code>1e9</code>. Does plain DDP fit on one 80 GB GPU now?</li>
            <li>On your own computer, save Part 3 as <code>ddp_demo.py</code>. Run <code>torchrun --nproc_per_node=2 ddp_demo.py</code>. Do both workers print the same first weight?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Training needs about 16 bytes per parameter, so big models do not fit on one GPU. Data parallel splits the batch, sharding (FSDP and ZeRO) splits the stored numbers, and tensor or pipeline parallel splits the model itself.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Training on many GPUs: data parallel, memory per GPU, and a real DDP script.
        import numpy as np

        # ── Part 1: data parallel training, simulated with NumPy ──
        # Each "GPU" has a full copy of the weights and a slice of the batch.
        print("== Part 1: data parallel with pretend GPUs ==")
        np.random.seed(42)
        NUM_GPUS = 4                      # try 2 or 8 (16 must split evenly)
        B, C = 16, 3                      # batch size and number of input features
        x = np.random.randn(B, C)
        y = x @ np.array([2.0, -1.0, 0.5]) + 0.1 * np.random.randn(B)
        w = np.zeros(C)                   # the same weights on every GPU

        def grad(w, xs, ys):
            # gradient of the mean squared error for a linear model
            return 2 * xs.T @ (xs @ w - ys) / len(ys)

        # Every GPU works on its own slice of the batch
        x_parts, y_parts = np.split(x, NUM_GPUS), np.split(y, NUM_GPUS)
        grads = [grad(w, xs, ys) for xs, ys in zip(x_parts, y_parts)]
        for i, g in enumerate(grads):
            print(f"GPU {i}: {len(y_parts[i])} examples, gradient {np.round(g, 3)}")

        # All-reduce: average the gradients, so every GPU gets the same result
        avg = np.mean(grads, axis=0)
        print("averaged gradient     ", np.round(avg, 3))
        print("one GPU, whole batch  ", np.round(grad(w, x, y), 3))

        # ── Part 2: memory per GPU for training with Adam in mixed precision ──
        print("\n== Part 2: memory per GPU ==")
        PARAMS = 7e9                      # try 1e9 or 70e9
        weights, grads_mem, optim = 2 * PARAMS, 2 * PARAMS, 12 * PARAMS   # bytes
        gb = lambda b: b / 1e9            # bytes to gigabytes
        print(f"Model with {PARAMS/1e9:.0f}B parameters on {NUM_GPUS} GPUs (GB per GPU):")
        print(f"  DDP (full copy)        {gb(weights + grads_mem + optim):6.1f}")
        print(f"  ZeRO-1 (shard optim)   {gb(weights + grads_mem + optim / NUM_GPUS):6.1f}")
        print(f"  ZeRO-2 (+ shard grads) {gb(weights + (grads_mem + optim) / NUM_GPUS):6.1f}")
        print(f"  ZeRO-3 / FSDP (all)    {gb((weights + grads_mem + optim) / NUM_GPUS):6.1f}")
        print("  (activations need extra memory on top of this)")

        # ── Part 3: a real DDP script in PyTorch (run this part on your own computer) ──
        # Save this part as ddp_demo.py, then start 2 workers in a terminal:
        #   pip install torch
        #   torchrun --nproc_per_node=2 ddp_demo.py
        # Run with plain "python ddp_demo.py", it uses 1 worker.
        print("\n== Part 3: DDP in PyTorch ==")
        try:
            import torch
            import torch.distributed as dist
            from torch import nn
            from torch.nn.parallel import DistributedDataParallel as DDP
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            import os
            for key, value in [("MASTER_ADDR", "127.0.0.1"), ("MASTER_PORT", "29500"),
                               ("RANK", "0"), ("WORLD_SIZE", "1")]:
                os.environ.setdefault(key, value)    # torchrun sets these for each worker
            dist.init_process_group("gloo")          # use "nccl" on NVIDIA GPUs
            rank = dist.get_rank()                   # this worker's number: 0, 1, ...
            torch.manual_seed(42)                    # same start weights on every worker
            model = DDP(nn.Linear(4, 1))
            opt = torch.optim.SGD(model.parameters(), lr=0.1)

            torch.manual_seed(rank)                  # each worker gets different data
            x, y = torch.randn(8, 4), torch.randn(8, 1)
            loss = ((model(x) - y) ** 2).mean()
            loss.backward()                          # DDP averages gradients here
            opt.step()
            print(f"rank {rank}: loss {loss.item():.3f}, "
                  f"first weight {model.module.weight[0, 0].item():.4f}")
            dist.destroy_process_group()
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Instruction Fine-Tuning</h1>
        </div>
        <p class="lc-lead">After pretraining, TinyGPT can continue café text. But it does not answer questions. Ask it "When does the café open?" and it may just write another question. <strong>Instruction fine-tuning</strong> fixes this. You train the model a little more on examples of questions and good answers. In this lesson you build those examples with a <strong>chat template</strong>, count the loss only on the answers, and meet <strong>LoRA</strong>, a cheap way to fine-tune big models.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 220" role="img" aria-label="One training example in a chat template. The tokens are: user tag, When, does, the café, open?, assistant tag, It, opens, at, seven., end tag. The user tag, the question and the assistant tag get the label minus 100, so they add no loss. The answer tokens and the end tag are graded, so the loss counts only on them.">
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <text x="14" y="30" text-anchor="start" font-weight="700">One training example in a chat template</text>
              <text x="14" y="69" text-anchor="start" font-size="12" fill="#9b99b8">token</text>
              <text x="14" y="121" text-anchor="start" font-size="12" fill="#9b99b8">loss?</text>
              <rect x="60" y="48" width="62" height="34" rx="6" fill="#1f1f44" stroke="#9b99b8"/><text x="91" y="70" font-size="11">&lt;|user|&gt;</text>
              <rect x="128" y="48" width="48" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="152" y="70">When</text>
              <rect x="182" y="48" width="48" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="206" y="70">does</text>
              <rect x="236" y="48" width="66" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="269" y="70">the café</text>
              <rect x="308" y="48" width="54" height="34" rx="6" fill="#27274e" stroke="#4b4a78"/><text x="335" y="70">open?</text>
              <rect x="368" y="48" width="92" height="34" rx="6" fill="#1f1f44" stroke="#9b99b8"/><text x="414" y="70" font-size="11">&lt;|assistant|&gt;</text>
              <rect x="466" y="48" width="40" height="34" rx="6" fill="#27274e" stroke="#10b981"/><text x="486" y="70">It</text>
              <rect x="512" y="48" width="56" height="34" rx="6" fill="#27274e" stroke="#10b981"/><text x="540" y="70">opens</text>
              <rect x="574" y="48" width="40" height="34" rx="6" fill="#27274e" stroke="#10b981"/><text x="594" y="70">at</text>
              <rect x="620" y="48" width="60" height="34" rx="6" fill="#27274e" stroke="#10b981"/><text x="650" y="70">seven.</text>
              <rect x="686" y="48" width="62" height="34" rx="6" fill="#1f1f44" stroke="#10b981"/><text x="717" y="70" font-size="11">&lt;|end|&gt;</text>
              <g font-size="11.5" fill="#9b99b8">
                <text x="91" y="121">-100</text><text x="152" y="121">-100</text><text x="206" y="121">-100</text><text x="269" y="121">-100</text><text x="335" y="121">-100</text><text x="414" y="121">-100</text>
              </g>
              <g font-size="12" fill="#10b981" font-weight="700">
                <text x="486" y="121">yes</text><text x="540" y="121">yes</text><text x="594" y="121">yes</text><text x="650" y="121">yes</text><text x="717" y="121">yes</text>
              </g>
              <path d="M60,144 L60,152 L460,152 L460,144" fill="none" stroke="#9b99b8" stroke-width="1.5"/>
              <text x="260" y="174" fill="#9b99b8">prompt: label -100, no loss</text>
              <text x="260" y="194" font-size="11.5" fill="#9b99b8">the model reads it, but is not graded on it</text>
              <path d="M466,144 L466,152 L748,152 L748,144" fill="none" stroke="#10b981" stroke-width="1.5"/>
              <text x="607" y="174" fill="#10b981">response: loss counted</text>
              <text x="607" y="194" font-size="11.5" fill="#9b99b8">the model learns to write this</text>
            </g>
          </svg>
          <figcaption>A chat template wraps the question and the answer in special tokens. Only the answer and the end token add to the loss. Tokens are shown as words here to keep the picture small.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>From a base model to a chat model</h3>
          <p>A model straight after pretraining is called a <strong>base model</strong>. It is very good at one thing: continuing text in the style it has seen. It knows facts about The Little Bean, such as the time the café opens. But it has never seen a question followed by an answer.</p>
          <p><strong>Instruction fine-tuning</strong> is more training on a small dataset of instructions and good responses. It is also called <strong>supervised fine-tuning</strong>, or <strong>SFT</strong>. The model, the loss and the training loop stay the same as in pretraining. Only the data changes.</p>
          <p>SFT mostly teaches <em>format and behaviour</em>: answer the question, then stop. Most knowledge still comes from pretraining. SFT teaches the model how to use that knowledge in a chat.</p>
        </div>
        <div class="lc-card">
          <h3>Instruction and response datasets</h3>
          <p>Each example has an instruction (what the user asks) and a response (the answer you want). Here are three examples for TinyGPT, based on the café corpus.</p>
          <table class="lc-table">
            <thead><tr><th>Instruction</th><th>Response</th></tr></thead>
            <tbody>
              <tr><td>When does the café open?</td><td>It opens at seven in the morning.</td></tr>
              <tr><td>Who bakes the cakes?</td><td>Ellie bakes the cakes.</td></tr>
              <tr><td>Can I have a latte with oat milk?</td><td>Yes. Tom makes a latte with oat milk.</td></tr>
            </tbody>
          </table>
          <p>Datasets are often saved as <strong>JSONL</strong> files. JSONL means one JSON object per line. Real datasets often store a list of messages, so one example can hold a whole conversation. Each message has a <code>role</code>, such as <code>"user"</code> or <code>"assistant"</code>, and its <code>content</code>, the text itself.</p>
          <p>Where does this data come from? People can write it. A stronger model can also generate it, if its terms of use allow that. Quality matters more than size. A small set of clean, correct and varied examples often beats a large, messy one. Check every response, because the model will copy mistakes too.</p>
        </div>
        <div class="lc-card">
          <h3>Chat templates</h3>
          <p>The model only reads one long list of tokens. So how does it know who is speaking? A <strong>chat template</strong> joins the messages into one text with <strong>special tokens</strong> as markers. For TinyGPT you can use three new tokens: <code>&lt;|user|&gt;</code>, <code>&lt;|assistant|&gt;</code> and <code>&lt;|end|&gt;</code>. Part 1 in the code editor below prints each example in this template.</p>
          <ul class="lc-list">
            <li>You add the special tokens to the tokeniser, so each one gets a single new ID.</li>
            <li>The embedding table and the output layer each get a new row for every new token.</li>
            <li>The <code>&lt;|end|&gt;</code> token teaches the model to stop. At chat time, the loop stops when the model writes it.</li>
          </ul>
          <p>Use the <em>same</em> template when you train and when you chat. If the format changes, the model gets confused. Every real model family has its own template. With Hugging Face, <code>tokenizer.apply_chat_template(messages)</code> builds the right text for you. Check the model's docs for the exact format.</p>
        </div>
        <div class="lc-card">
          <h3>Loss only on the response</h3>
          <p>In pretraining, every token is a target. In SFT, you usually grade the model only on the response. You do not want it to learn to write the user's questions. You want all the learning spent on good answers.</p>
          <p>You do this with the targets. The inputs <code>x</code> and the targets <code>y</code> are still shifted by one, as before. Then you set every prompt target to <code>-100</code>. PyTorch's <code>cross_entropy</code> skips any target equal to <code>ignore_index</code>, which is -100 by default.</p>
          <p>In PyTorch this is one line: <code>labels[:, :prompt_len] = -100</code>. Then you pass <code>labels</code> to <code>F.cross_entropy</code> in place of the targets. The loss becomes the mean over the response tokens only. Gradients flow only from those tokens. The model still <em>reads</em> the prompt, because attention looks back at it. It is just not graded on it.</p>
          <p>Part 3 in the code editor below does this in PyTorch with 6 tokens, where the first 3 are the prompt. The loss on all tokens is 2.187, and the loss on the response tokens only is 1.838. PyTorch does not run in the browser, so Part 3 runs on your own computer. Part 1 builds the template and the mask with plain Python and NumPy. Run it to compare the loss on all targets with the loss on the answer only.</p>
        </div>
        <div class="lc-card">
          <h3>LoRA: a cheap way to fine-tune</h3>
          <p>Full fine-tuning updates every weight. For a big model, that needs about 16 bytes per parameter for weights, gradients and Adam state, as you saw earlier in this course. That is a lot of GPU memory.</p>
          <p><strong>LoRA</strong> (Low-Rank Adaptation) is a cheaper option. You <strong>freeze</strong> the big weight matrix W, so it never changes. Next to it, you add two small matrices, A and B. Only A and B are trained. The layer's output becomes <code>W·x + B·A·x</code>.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 200" role="img" aria-label="LoRA. The input x goes through the frozen weight W, which is 4096 by 4096. In parallel it goes through A, which is 8 by 4096, and then B, which is 4096 by 8. The two results are added to give the output.">
              <defs><marker id="ls18a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
              <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
                <rect x="20" y="78" width="70" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="55" y="105" font-weight="700">x</text>
                <path d="M90,100 L120,100 L120,50 L196,50" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls18a)"/>
                <path d="M120,100 L120,150 L196,150" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls18a)"/>
                <rect x="200" y="22" width="300" height="56" rx="8" fill="#27274e" stroke="#9b99b8" stroke-dasharray="5 4"/>
                <text x="350" y="45" font-weight="700">W: 4096 × 4096 (frozen)</text>
                <text x="350" y="65" font-size="12" fill="#9b99b8">16,777,216 weights, not trained</text>
                <rect x="200" y="125" width="140" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="270" y="146" font-weight="700">A: 8 × 4096</text>
                <text x="270" y="164" font-size="12" fill="#9b99b8">trained</text>
                <line x1="340" y1="150" x2="356" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls18a)"/>
                <rect x="360" y="125" width="140" height="50" rx="8" fill="#27274e" stroke="#10b981"/>
                <text x="430" y="146" font-weight="700">B: 4096 × 8</text>
                <text x="430" y="164" font-size="12" fill="#9b99b8">trained, starts at 0</text>
                <path d="M500,50 L570,50 L570,82" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls18a)"/>
                <path d="M500,150 L570,150 L570,118" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls18a)"/>
                <circle cx="570" cy="100" r="16" fill="#1f1f44" stroke="#f59e0b"/><text x="570" y="106" font-size="18">+</text>
                <line x1="586" y1="100" x2="626" y2="100" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls18a)"/>
                <rect x="630" y="78" width="110" height="44" rx="8" fill="#1f1f44" stroke="#8b5cf6"/><text x="685" y="105" font-weight="700">output</text>
              </g>
            </svg>
            <figcaption>LoRA keeps W frozen and learns a small update B·A beside it. Here the rank r is 8.</figcaption>
          </figure>
          <p>The small size is the trick. A and B share a small inner size called the <strong>rank</strong>, r. Here is the arithmetic for one 4096 × 4096 matrix with r = 8:</p>
          <ul class="lc-list">
            <li>Full matrix: 4096 × 4096 = 16,777,216 weights.</li>
            <li>LoRA: (8 × 4096) + (4096 × 8) = 65,536 weights.</li>
            <li>So you train 65,536 ÷ 16,777,216 ≈ 0.39% of the weights in that layer.</li>
          </ul>
          <p>B starts at zero, so B·A starts at zero. The model behaves exactly like the base model before training begins. Part 4 in the code editor below is a full LoRA layer in PyTorch, called <code>LoRALinear</code>. It freezes the base weight and bias, makes A with small random numbers and B with zeros, and adds <code>(x @ A.T @ B.T) * scale</code> to the base output. The scale is alpha / r.</p>
          <p>For a 512 × 512 layer with r = 8, LoRA adds 2 × 8 × 512 = 8,192 trained weights. The frozen layer has 262,656 weights, counting its bias. So only about 3% of the layer is trained. Part 4 prints these counts in PyTorch. Part 2 does the same sum with NumPy, so you can run it in the browser. It also checks that the LoRA layer starts with the same output as the frozen layer.</p>
          <p>The optimiser only stores Adam state for the trained weights, so memory drops a lot. After training, you can add B·A into W once and remove the extra matrices. In practice you use a library such as Hugging Face PEFT. Check its docs for the current options. A related method, <strong>QLoRA</strong>, also stores the frozen base model in 4-bit numbers. You will learn about 4-bit numbers later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: the fine-tuning steps in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of instruction fine-tuning TinyGPT in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Pretrain TinyGPT on the café corpus to get a base model</li>
              <li data-order="2">Write instruction and response pairs, and check every answer</li>
              <li data-order="3">Add special tokens such as &lt;|user|&gt; and &lt;|end|&gt; to the tokeniser</li>
              <li data-order="4">Format each pair with the chat template and tokenise it</li>
              <li data-order="5">Set the prompt targets to -100 so only the response is graded</li>
              <li data-order="6">Train for a short time with a small learning rate, then chat using the same template</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor builds chat examples for TinyGPT, one character per token. A tiny "base model" made from character pair counts scores each target. Part 2 builds a small LoRA layer with NumPy and counts its weights. Parts 3 and 4 are the PyTorch versions, for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, compare how many targets are graded and how many are ignored for each example.</li>
            <li>Look at the last two lines of Part 1's output. Check that the <code>^</code> marks start right after the <code>A</code> (assistant) token.</li>
            <li>In Part 1, add your own pair to <code>pairs</code>, such as <code>("Who owns the café?", "Molly owns the café.")</code>.</li>
            <li>In Part 1, change <code>build_example</code> so the <code>END</code> token gets a 0 in the mask. Why would the model then never learn to stop?</li>
            <li>In Part 2, change <code>R</code> to 64. How many weights are trained now?</li>
            <li>On your own computer, run Part 4 with <code>r=64</code>. Does it print the same trained count as Part 2?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Instruction fine-tuning uses the same training loop as pretraining, with different data. You wrap each pair in a chat template and grade only the response. LoRA makes it cheap by training two small matrices next to frozen weights.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Instruction fine-tuning: a chat template, a loss mask, and LoRA.
        import numpy as np

        # ── Part 1: the chat template and the loss mask ──
        # Tokens are single characters, plus 3 special tokens.
        print("== Part 1: chat template and loss mask ==")
        USER, BOT, END = "<|user|>", "<|assistant|>", "<|end|>"
        pairs = [
            ("When does the café open?", "It opens at seven in the morning."),
            ("Who bakes the cakes?", "Ellie bakes the cakes."),
            ("Can I have a latte with oat milk?", "Yes. Tom makes a latte with oat milk."),
        ]

        def build_example(prompt, answer):
            tokens = [USER] + list(prompt) + [BOT] + list(answer) + [END]
            # 1 = graded (the answer and the end token), 0 = no loss
            mask = [0] * (len(prompt) + 2) + [1] * (len(answer) + 1)
            return tokens, mask

        # A tiny "base model": character pair counts from a few lines of the café corpus.
        corpus = ("The café opens at seven in the morning. Tom makes the coffee. "
                  "Ellie bakes the cakes. Tom makes a latte with oat milk.")
        vocab = sorted(set(corpus + "".join(p + a for p, a in pairs))) + [USER, BOT, END]
        idx = {t: i for i, t in enumerate(vocab)}
        counts = np.ones((len(vocab), len(vocab)))          # start at 1 so nothing is 0
        for a, b in zip(corpus, corpus[1:]):
            counts[idx[a], idx[b]] += 1
        probs = counts / counts.sum(axis=1, keepdims=True)  # each row adds up to 1

        for prompt, answer in pairs:
            tokens, mask = build_example(prompt, answer)
            x, y = tokens[:-1], tokens[1:]                  # targets are shifted by one
            y_mask = np.array(mask[1:])
            losses = np.array([-np.log(probs[idx[a], idx[b]]) for a, b in zip(x, y)])
            print(f"\n{USER}{prompt}{BOT}{answer}{END}")
            print(f"  targets {len(y)}, graded {y_mask.sum()}, ignored {len(y) - y_mask.sum()}")
            print(f"  mean loss: all targets {losses.mean():.3f}, "
                  f"answer only {losses[y_mask == 1].mean():.3f}")

        # Show the first example: U, A, E are the special tokens, ^ marks graded tokens
        tokens, mask = build_example(*pairs[0])
        short = {USER: "U", BOT: "A", END: "E"}
        print("\n" + "".join(short.get(t, t) for t in tokens))
        print("".join("^" if m else "." for m in mask))

        # ── Part 2: LoRA with NumPy. Freeze W, train two small matrices A and B beside it ──
        print("\n== Part 2: LoRA with NumPy ==")
        np.random.seed(42)
        D, R = 512, 8                                       # layer size and LoRA rank
        W, bias = np.random.randn(D, D) * 0.02, np.zeros(D) # frozen base layer
        A = np.random.randn(R, D) * 0.01                    # trained
        B = np.zeros((D, R))                                # trained, starts at zero
        x_in = np.random.randn(2, D)
        out = x_in @ W.T + bias + (x_in @ A.T @ B.T) * (16 / R)
        frozen, trained = W.size + bias.size, A.size + B.size
        print(f"LoRA: frozen {frozen:,}  trained {trained:,}  "
              f"({100 * trained / (frozen + trained):.1f}% of the layer)")
        print("same output as the frozen layer at the start:", np.allclose(out, x_in @ W.T + bias))

        # ── Part 3: loss only on the response, in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: response-only loss in PyTorch ==")
        try:
            import torch
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            V = 10                                     # tiny vocabulary
            logits = torch.randn(1, 6, V)              # (B, T, V) from the model
            targets = torch.tensor([[4, 7, 2, 5, 9, 1]])
            labels = targets.clone()
            labels[0, :3] = -100                       # first 3 tokens are the prompt
            full = F.cross_entropy(logits.view(-1, V), targets.view(-1))
            resp = F.cross_entropy(logits.view(-1, V), labels.view(-1), ignore_index=-100)
            print(f"loss on all tokens:      {full.item():.3f}")
            print(f"loss on response tokens: {resp.item():.3f}")

        # ── Part 4: a LoRA layer in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: a LoRA layer in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class LoRALinear(nn.Module):
                def __init__(self, base, r=8, alpha=16):
                    super().__init__()
                    self.base = base
                    self.base.weight.requires_grad_(False)     # freeze the big matrix
                    self.base.bias.requires_grad_(False)
                    self.A = nn.Parameter(torch.randn(r, base.in_features) * 0.01)
                    self.B = nn.Parameter(torch.zeros(base.out_features, r))  # starts at zero
                    self.scale = alpha / r

                def forward(self, x):
                    return self.base(x) + (x @ self.A.T @ self.B.T) * self.scale

            torch.manual_seed(42)
            layer = LoRALinear(nn.Linear(512, 512), r=8)
            total = sum(p.numel() for p in layer.parameters())
            trainable = sum(p.numel() for p in layer.parameters() if p.requires_grad)
            print(f"total {total:,}  trainable {trainable:,}  ({100 * trainable / total:.1f}%)")
            print(layer(torch.randn(2, 512)).shape)
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">RLHF and DPO (Alignment)</h1>
        </div>
        <p class="lc-lead">After instruction fine-tuning, TinyGPT answers questions. But some answers are better than others. One answer is helpful and polite. Another is short, rude or wrong. <strong>Alignment</strong> is training that pushes the model towards the answers people prefer. In this lesson you learn the two best-known methods: <strong>RLHF</strong> with a reward model and PPO, and the simpler <strong>DPO</strong>. You will work through the DPO loss with real numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Alignment pipeline. A prompt goes to the fine-tuned model, which writes two answers. A person picks the better one, giving a preference pair of chosen and rejected answers. The pairs then go to one of two routes. RLHF trains a reward model, then uses PPO to raise the reward while staying close to a reference model. DPO uses the pairs directly, compares the policy with a frozen reference model, and uses one simple loss.">
            <defs><marker id="ls19a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="8" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="20" y="20" width="160" height="56" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="100" y="44" font-weight="700">Prompt</text>
              <text x="100" y="63" font-size="11.5" fill="#9b99b8">Do you have oat milk?</text>
              <line x1="180" y1="48" x2="206" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <rect x="210" y="20" width="160" height="56" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="290" y="44" font-weight="700">SFT model</text>
              <text x="290" y="63" font-size="11.5" fill="#9b99b8">writes two answers</text>
              <line x1="370" y1="48" x2="396" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <rect x="400" y="20" width="160" height="56" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="480" y="44" font-weight="700">A person</text>
              <text x="480" y="63" font-size="11.5" fill="#9b99b8">picks the better one</text>
              <line x1="560" y1="48" x2="586" y2="48" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <rect x="590" y="20" width="150" height="56" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="665" y="44" font-weight="700">Preference pair</text>
              <text x="665" y="63" font-size="11.5" fill="#9b99b8">chosen + rejected</text>
              <path d="M665,76 L665,100 L14,100 L14,268" fill="none" stroke="#9b99b8" stroke-width="1.5"/>
              <line x1="14" y1="168" x2="96" y2="168" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <line x1="14" y1="268" x2="96" y2="268" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <text x="100" y="130" text-anchor="start" font-weight="700" fill="#22d3ee">RLHF: two stages</text>
              <rect x="100" y="140" width="190" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="195" y="164" font-weight="700">1. Reward model</text>
              <text x="195" y="183" font-size="11.5" fill="#9b99b8">learns to score answers</text>
              <line x1="290" y1="168" x2="316" y2="168" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <rect x="320" y="140" width="200" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="420" y="164" font-weight="700">2. PPO loop</text>
              <text x="420" y="183" font-size="11.5" fill="#9b99b8">model writes, reward model scores</text>
              <line x1="520" y1="168" x2="546" y2="168" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <rect x="550" y="140" width="190" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="645" y="164" font-weight="700">3. Raise the reward</text>
              <text x="645" y="183" font-size="11.5" fill="#9b99b8">but stay near the reference</text>
              <text x="100" y="230" text-anchor="start" font-weight="700" fill="#10b981">DPO: one stage</text>
              <rect x="100" y="240" width="190" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="195" y="264" font-weight="700">1. Use pairs directly</text>
              <text x="195" y="283" font-size="11.5" fill="#9b99b8">no reward model</text>
              <line x1="290" y1="268" x2="316" y2="268" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <rect x="320" y="240" width="200" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="420" y="264" font-weight="700">2. Compare two models</text>
              <text x="420" y="283" font-size="11.5" fill="#9b99b8">policy vs frozen reference</text>
              <line x1="520" y1="268" x2="546" y2="268" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls19a)"/>
              <rect x="550" y="240" width="190" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="645" y="264" font-weight="700">3. One simple loss</text>
              <text x="645" y="283" font-size="11.5" fill="#9b99b8">chosen up, rejected down</text>
            </g>
          </svg>
          <figcaption>Both methods start from the same preference pairs. RLHF first trains a reward model, then runs PPO. DPO trains on the pairs directly.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Preference pairs</h3>
          <p>It is hard to write the perfect answer. It is much easier to compare two answers and say which one is better. Alignment uses this. A <strong>preference pair</strong> has three parts: a prompt, a <strong>chosen</strong> answer and a <strong>rejected</strong> answer.</p>
          <table class="lc-table">
            <thead><tr><th>Prompt</th><th>Chosen</th><th>Rejected</th></tr></thead>
            <tbody>
              <tr><td>Do you have oat milk?</td><td>Yes. Tom can make any drink with oat milk.</td><td>Why do you want oat milk?</td></tr>
              <tr><td>When does the café close?</td><td>Molly closes the café at five.</td><td>Maybe.</td></tr>
            </tbody>
          </table>
          <p>To collect pairs, you ask the fine-tuned model for two answers to the same prompt. Then a person picks the better one. Some teams also use a strong model as the judge. Real datasets hold many thousands of pairs on many topics. They cover helpfulness, honesty and safety.</p>
          <p>The model you are training is called the <strong>policy</strong>. A frozen copy of the SFT model is called the <strong>reference</strong>. Both RLHF and DPO use the reference to stop the policy from drifting too far.</p>
        </div>
        <div class="lc-card">
          <h3>RLHF step 1: train a reward model</h3>
          <p><strong>RLHF</strong> means Reinforcement Learning from Human Feedback. Its first step trains a <strong>reward model</strong>. This is usually a copy of the language model with a new last layer. Instead of a score for every token, it outputs one number for the whole answer. A higher number means a better answer.</p>
          <p>The loss pushes the chosen score above the rejected score: <code>loss = -log(sigmoid(r_chosen - r_rejected))</code>. The <strong>sigmoid</strong> function turns any number into a value between 0 and 1. Here is a worked example:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Right order</th><th>Wrong order</th></tr></thead>
            <tbody>
              <tr><td>r_chosen</td><td>1.5</td><td>0.5</td></tr>
              <tr><td>r_rejected</td><td>0.5</td><td>1.5</td></tr>
              <tr><td>Difference</td><td>1.0</td><td>-1.0</td></tr>
              <tr><td>sigmoid(difference)</td><td>0.731</td><td>0.269</td></tr>
              <tr><td>Loss = -log(...)</td><td>0.313</td><td>1.313</td></tr>
            </tbody>
          </table>
          <p>When the scores are in the wrong order, the loss is much larger. So training moves the scores into the right order.</p>
        </div>
        <div class="lc-card">
          <h3>RLHF step 2: PPO in simple words</h3>
          <p><strong>PPO</strong> (Proximal Policy Optimization) is a reinforcement learning method. In reinforcement learning, a model tries actions and gets rewards. Here, each "action" is a written answer. The loop goes like this:</p>
          <ol class="lc-list">
            <li>The policy writes answers to a batch of prompts.</li>
            <li>The reward model gives each answer a score.</li>
            <li>A penalty is taken off the score if the policy drifts far from the reference. This is called the <strong>KL penalty</strong>. KL divergence measures how different two probability lists are.</li>
            <li>PPO updates the policy so high-scoring answers become more likely. It limits the size of each update, so training stays stable.</li>
          </ol>
          <p>The KL penalty matters. Without it, the policy can find tricks that fool the reward model, such as very long answers. This is called <strong>reward hacking</strong>.</p>
          <p>PPO works, but it is heavy. It keeps several models in memory: the policy, the reference, the reward model and usually a value model. It also has many settings to tune.</p>
        </div>
        <div class="lc-card">
          <h3>DPO: skip the reward model</h3>
          <p><strong>DPO</strong> (Direct Preference Optimization) trains on the pairs directly. It needs only two models: the policy and the frozen reference. For each answer, you add up the log-probabilities of its tokens. That gives one number, <code>log p(answer)</code>, from each model.</p>
          <ol class="lc-list">
            <li>Chosen gain = policy log p(chosen) - reference log p(chosen).</li>
            <li>Rejected gain = policy log p(rejected) - reference log p(rejected).</li>
            <li>Margin = beta × (chosen gain - rejected gain). <strong>Beta</strong> controls how far the policy may move from the reference.</li>
            <li>Loss = -log(sigmoid(margin)).</li>
          </ol>
          <p>In words: make the chosen answer more likely than the reference does, and make the rejected answer less likely. Part 3 in the code editor below writes this loss in PyTorch as a function called <code>dpo_loss</code>. It uses <code>F.logsigmoid</code>, which gives log(sigmoid(margin)) in one safe step.</p>
          <p>At the start, the policy equals the reference. Both gains are 0, so the margin is 0 and the loss is -log(0.5) = 0.693. After some training, the loss falls. The activity below works through one example by hand, where the loss falls to 0.513.</p>
          <p>Libraries such as Hugging Face TRL have trainers for SFT, DPO and PPO. Newer methods appear often, so check the current docs. PyTorch does not run in the browser, so Part 1 in the editor runs DPO on a tiny NumPy model. Part 2 checks the hand example with NumPy, and Part 3 checks it with PyTorch on your own computer.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>RLHF with PPO</th><th>DPO</th></tr></thead>
            <tbody>
              <tr><td>Data</td><td>Preference pairs, then new prompts</td><td>Preference pairs only</td></tr>
              <tr><td>Reward model</td><td>Yes, trained first</td><td>No</td></tr>
              <tr><td>Models in memory</td><td>Policy, reference, reward, value</td><td>Policy, reference</td></tr>
              <tr><td>Training</td><td>Model writes new answers during training</td><td>Normal loss on fixed pairs, like SFT</td></tr>
              <tr><td>Difficulty</td><td>Many settings, can be unstable</td><td>Simpler and more stable</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: one DPO example by hand</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The pair">Prompt: "Do you have oat milk?" Chosen: the helpful answer. Rejected: "Why do you want oat milk?" beta = 0.1.</li>
              <li data-kind="tool" data-label="Step 1 · reference scores">The frozen reference gives log p(chosen) = -14 and log p(rejected) = -13. It slightly prefers the rude answer.</li>
              <li data-kind="tool" data-label="Step 2 · policy scores">After some training, the policy gives log p(chosen) = -12 and log p(rejected) = -15.</li>
              <li data-kind="thought" data-label="Step 3 · gains">Chosen gain = -12 - (-14) = +2. Rejected gain = -15 - (-13) = -2. The policy likes the chosen answer more, and the rejected one less.</li>
              <li data-kind="tool" data-label="Step 4 · margin">Margin = 0.1 × (2 - (-2)) = 0.1 × 4 = 0.4.</li>
              <li data-kind="result" data-label="Step 5 · loss">sigmoid(0.4) = 0.599. Loss = -log(0.599) = 0.513. That is lower than the starting loss of 0.693.</li>
              <li data-kind="check" data-label="Check">A bigger margin gives a smaller loss. So training keeps pushing the chosen answer up and the rejected answer down.</li>
              <li data-kind="warn" data-label="Watch out">DPO only learns from the pairs you give it. Bad or one-sided pairs teach bad habits, so check your data.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor has a toy model that picks one of three whole answers to "Do you have oat milk?". It runs DPO on one preference pair and prints the loss and the three probabilities. Part 2 works out the DPO loss from the activity with NumPy. Part 3 does the same in PyTorch, for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, watch the loss start at 0.693 and fall. Watch the chosen answer's probability rise.</li>
            <li>The pair never mentions "Maybe.", but its probability also falls. Why? Hint: the three probabilities must add up to 1.</li>
            <li>In Part 1, change <code>BETA</code> to 0.5. Does the policy move away from the reference faster?</li>
            <li>In Part 1, swap <code>CHOSEN</code> and <code>REJECTED</code>. The model now learns the rude answer. This shows why good preference data matters.</li>
            <li>In Part 2, change the policy scores <code>-12, -15</code> to <code>-10, -17</code>. Does the loss go down further?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Alignment learns from pairs of answers where people chose the better one. RLHF trains a reward model and then uses PPO. DPO skips the reward model and uses one loss that raises the chosen answer and lowers the rejected one, compared with a frozen reference.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # DPO: train a toy model on one preference pair, then check the hand example.
        import numpy as np

        # ── Part 1: DPO on a toy "model" that picks one of 3 whole answers to one prompt ──
        # Prompt: "Do you have oat milk?"
        print("== Part 1: DPO on a toy model ==")
        answers = ["Yes. Tom can make any drink with oat milk.",   # 0: helpful
                   "Maybe.",                                       # 1: too short
                   "Why do you want oat milk?"]                    # 2: rude
        CHOSEN, REJECTED = 0, 2          # a person preferred answer 0 over answer 2
        BETA = 0.1                       # try 0.5: bigger steps away from the reference
        LR = 1.0                         # learning rate
        STEPS = 40

        def log_softmax(z):
            z = z - z.max()
            return z - np.log(np.exp(z).sum())

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        ref_logits = np.array([1.0, 1.5, 1.2])    # the frozen reference (SFT) model
        logits = ref_logits.copy()                # the policy starts as a copy
        ref_lp = log_softmax(ref_logits)

        for step in range(STEPS + 1):
            lp = log_softmax(logits)
            margin = BETA * ((lp[CHOSEN] - ref_lp[CHOSEN]) - (lp[REJECTED] - ref_lp[REJECTED]))
            loss = -np.log(sigmoid(margin))
            if step % 10 == 0:
                probs = np.exp(lp)
                print(f"step {step:2}  loss {loss:.3f}  probs " + "  ".join(f"{p:.2f}" for p in probs))
            # gradient of the DPO loss with respect to the logits
            onehot = np.zeros(3)
            onehot[CHOSEN], onehot[REJECTED] = 1, -1
            logits -= LR * (-(1 - sigmoid(margin)) * BETA * onehot)

        print("\nFinal probabilities:")
        for a, p in zip(answers, np.exp(log_softmax(logits))):
            print(f"  {p:.2f}  {'#' * round(p * 30):30}  {a}")

        # ── Part 2: the DPO example from the activity, by hand with NumPy ──
        print("\n== Part 2: the hand example ==")
        def dpo_loss_np(pol_c, pol_r, ref_c, ref_r, beta=0.1):
            margin = beta * ((pol_c - ref_c) - (pol_r - ref_r))
            return -np.log(sigmoid(margin))

        print(f"policy = reference: loss {dpo_loss_np(-14, -13, -14, -13):.3f}")
        print(f"after training:     loss {dpo_loss_np(-12, -15, -14, -13):.3f}")

        # ── Part 3: the DPO loss in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: the DPO loss in PyTorch ==")
        try:
            import torch
            import torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            def dpo_loss(pol_chosen, pol_rejected, ref_chosen, ref_rejected, beta=0.1):
                # each argument: total log-probability of an answer, one per pair
                chosen_gain = pol_chosen - ref_chosen        # how much more we like "chosen"
                rejected_gain = pol_rejected - ref_rejected  # how much more we like "rejected"
                margin = beta * (chosen_gain - rejected_gain)
                return -F.logsigmoid(margin).mean()

            ref_c, ref_r = torch.tensor([-14.0]), torch.tensor([-13.0])
            print(f"{dpo_loss(ref_c, ref_r, ref_c, ref_r).item():.3f}")      # policy = reference
            print(f"{dpo_loss(torch.tensor([-12.0]), torch.tensor([-15.0]), ref_c, ref_r).item():.3f}")
      PYTHON
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Evaluating Your LLM</h1>
        </div>
        <p class="lc-lead">You trained a model and the loss went down. But is the model actually good? In this lesson you will measure it in several ways. You will turn validation loss into <strong>perplexity</strong>, learn what benchmarks can and cannot tell you, write small task tests, and see how humans and other models grade answers. You will also learn about <strong>contamination</strong>, the most common way to fool yourself.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Bar chart of train and validation loss for count models with context 1, 2, 4 and 8 characters on the café text. Train loss mostly falls, but validation loss is lowest at context 2 (2.033) and rises to 3.243 at context 8. A dashed line shows random guessing at 3.555. On the right, loss turns into perplexity: e to the 3.555 is 35, e to the 2.033 is 7.64, and e to the 0 is 1.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="450" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="235" y="32" font-weight="700">Train vs validation loss (café text)</text>
              <rect x="290" y="44" width="12" height="12" rx="2" fill="#3b82f6"/><text x="308" y="55" text-anchor="start" font-size="12">train</text>
              <rect x="360" y="44" width="12" height="12" rx="2" fill="#ec4899"/><text x="378" y="55" text-anchor="start" font-size="12">validation</text>
              <line x1="40" y1="250" x2="440" y2="250" stroke="#9b99b8"/>
              <line x1="40" y1="72" x2="440" y2="72" stroke="#f59e0b" stroke-dasharray="5 4"/>
              <text x="48" y="66" text-anchor="start" font-size="11.5" fill="#fcd34d">random guess 3.555</text>
              <rect x="60" y="156" width="28" height="94" fill="#3b82f6"/><text x="74" y="151" font-size="11">1.880</text>
              <rect x="92" y="138" width="28" height="112" fill="#ec4899"/><text x="106" y="133" font-size="11">2.232</text>
              <rect x="150" y="184" width="28" height="66" fill="#3b82f6"/><text x="164" y="179" font-size="11">1.311</text>
              <rect x="182" y="148" width="28" height="102" fill="#10b981"/><text x="196" y="143" font-size="11" fill="#6ee7b7" font-weight="700">2.033</text>
              <rect x="240" y="191" width="28" height="59" fill="#3b82f6"/><text x="254" y="186" font-size="11">1.172</text>
              <rect x="272" y="125" width="28" height="125" fill="#ec4899"/><text x="286" y="120" font-size="11">2.505</text>
              <rect x="330" y="185" width="28" height="65" fill="#3b82f6"/><text x="344" y="180" font-size="11">1.307</text>
              <rect x="362" y="88" width="28" height="162" fill="#ec4899"/><text x="376" y="83" font-size="11">3.243</text>
              <text x="90" y="268" font-size="12">1</text><text x="180" y="268" font-size="12">2</text><text x="270" y="268" font-size="12">4</text><text x="360" y="268" font-size="12">8</text>
              <text x="235" y="284" font-size="11.5" fill="#9b99b8">context length (characters the model sees)</text>
              <rect x="475" y="10" width="275" height="280" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="612" y="34" font-weight="700" fill="#67e8f9">Loss to perplexity</text>
              <text x="612" y="58" font-size="12" fill="#9b99b8">perplexity = e ^ (average loss)</text>
              <rect x="490" y="74" width="245" height="54" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="612" y="96" font-size="12.5">random guess: e ^ 3.555</text>
              <text x="612" y="116" font-size="12.5" fill="#fcd34d">= 35 choices</text>
              <rect x="490" y="138" width="245" height="54" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="612" y="160" font-size="12.5">context 2: e ^ 2.033</text>
              <text x="612" y="180" font-size="12.5" fill="#6ee7b7">= 7.64 choices</text>
              <rect x="490" y="202" width="245" height="54" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="612" y="224" font-size="12.5">perfect model: e ^ 0</text>
              <text x="612" y="244" font-size="12.5" fill="#c4b5fd">= 1 choice</text>
              <text x="612" y="276" font-size="11.5" fill="#9b99b8">lower is better</text>
            </g>
          </svg>
          <figcaption>Real numbers from Part 1 in the code editor. A longer context helps on the training text, but after context 2 the validation loss gets much worse. The model memorises instead of learning. The best model here (green) sees 2 characters.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Validation loss and perplexity</h3>
          <p>Earlier in this course you split the café text: 90% for training and 10% for <strong>validation</strong>. The model never trains on the validation text. So validation loss shows how well the model handles text it has not seen.</p>
          <p>Loss is a number like 2.033. It is hard to picture. <strong>Perplexity</strong> makes it easier. You take e (about 2.718) to the power of the average loss:</p>
          <p><code>perplexity = e ^ (average cross-entropy loss)</code></p>
          <p>Perplexity says: "On average, the model is as unsure as if it picked from this many equal choices." Our café text has 35 different characters. A model that guesses at random has perplexity 35. A model with loss 2.033 has perplexity e ^ 2.033 = 7.64. It is as unsure as choosing between about 7 or 8 characters.</p>
          <p>Each token's loss is -log of the probability the model gave to the correct token. A probability of 0.8 gives a small loss (0.223). A probability of 0.1 gives a big loss (2.303). Part 4 in the code editor below works out the mean loss and the perplexity for four such tokens. The mean loss is 1.151, so the perplexity is e ^ 1.151 = 3.16. The model was as unsure as choosing from about 3 tokens.</p>
          <p>Two warnings. First, compare perplexity only between models with the <em>same tokeniser</em> and the <em>same validation text</em>. A character model and a BPE model predict different things. Second, low perplexity does not prove the model is helpful or honest. It only proves it predicts this text well.</p>
        </div>
        <div class="lc-card">
          <h3>Benchmarks and their limits</h3>
          <p>A <strong>benchmark</strong> is a fixed, public set of test questions with known answers. Many teams run the same benchmark, so you can compare models. Here are some well-known ones:</p>
          <table class="lc-table">
            <thead><tr><th>Benchmark</th><th>What it tests</th></tr></thead>
            <tbody>
              <tr><td>MMLU</td><td>Multiple-choice questions from many school and work subjects</td></tr>
              <tr><td>HellaSwag</td><td>Pick the most sensible ending for a short story</td></tr>
              <tr><td>GSM8K</td><td>Maths word problems from primary school</td></tr>
              <tr><td>HumanEval</td><td>Write Python functions that must pass unit tests</td></tr>
            </tbody>
          </table>
          <p>Benchmarks are useful, but they have limits:</p>
          <ul class="lc-list">
            <li><strong>Narrow.</strong> A benchmark tests one kind of task. Your users may need something else.</li>
            <li><strong>Saturated.</strong> When strong models all score near the top, the benchmark can no longer tell them apart.</li>
            <li><strong>Format-sensitive.</strong> A small change to the prompt wording can change the score.</li>
            <li><strong>Leaked.</strong> Benchmark questions are public, so they can end up in training data. You will see why this is a problem below.</li>
          </ul>
          <p>New benchmarks appear often. Check the current leaderboards and papers for up-to-date ones. For our tiny café model, all of these are far too hard. You need your own tests.</p>
        </div>
        <div class="lc-card">
          <h3>Task tests, human grading and model grading</h3>
          <p>A <strong>task test</strong> is a small check that you write yourself, like a unit test. You give a prompt and check the reply. Part 2 in the code editor gives the prompt "Tom makes a " and checks that the reply names a drink.</p>
          <p>Simple checks are fast, but they can be fooled. In Part 2, the model writes a nonsense sentence: "Molly closes the café is a hot tea". The check only looks for the word "café", so it says PASS. A person would say FAIL at once.</p>
          <p>That is why teams also use graders:</p>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How it works</th><th>Good</th><th>Weak</th></tr></thead>
            <tbody>
              <tr><td>Human evaluation</td><td>People rate answers, or pick the better of two answers without knowing which model wrote them</td><td>Catches meaning, tone and safety</td><td>Slow and costly. Raters can disagree.</td></tr>
              <tr><td>Model-graded (LLM as a judge)</td><td>A strong model grades each answer using a rubric (a list of rules for a good answer)</td><td>Fast and cheap. Runs on thousands of answers.</td><td>The judge has biases. For example, it may prefer longer answers.</td></tr>
            </tbody>
          </table>
          <p>Part 5 in the code editor below holds a simple judge prompt. It gives the question, the reference answer and the model's answer, and asks for PASS or FAIL with one short reason. You send it to a strong model once for each answer.</p>
          <p>Before you trust a judge, check it. Grade 20 or 30 answers by hand. Then see if the judge agrees with you.</p>
        </div>
        <div class="lc-card">
          <h3>Contamination: when the test leaks into training</h3>
          <p><strong>Contamination</strong> means that test questions, or their answers, were in the training data. The model can then copy the answer from memory. The score goes up, but the model did not learn the skill.</p>
          <p>Look at Part 3 in the code editor. The test prompt "Tom makes a" appears word for word in the training text. So the PASS for that test proves little. The prompt "Molly closes the" is only in the validation text. That test is fair.</p>
          <p>How to reduce contamination:</p>
          <ul class="lc-list">
            <li>Search the training data for each test item. Look for long shared word sequences.</li>
            <li>Keep a private test set that never goes online.</li>
            <li>Write new test questions after the training data was collected.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: fair test or problem?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each evaluation. Is it a fair test, or does it have a problem?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="fair" data-label="Fair test"></div>
              <div data-sorter-target="bucket" data-bucket="problem" data-label="Has a problem"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="fair" data-why="The model never trained on this text, so the loss shows how well it handles new text.">Loss on validation text the model never saw</li>
              <li data-bucket="problem" data-why="This is contamination. The model may remember the answers instead of solving the questions.">Benchmark questions that were also in the web crawl</li>
              <li data-bucket="problem" data-why="The two models predict different pieces of text, so their perplexities do not mean the same thing.">Comparing perplexity of a character model and a BPE model</li>
              <li data-bucket="fair" data-why="Hiding the model names stops raters from picking their favourite model.">People pick the better of two answers without knowing which model wrote each one</li>
              <li data-bucket="problem" data-why="A judge with this bias rewards long answers, not good answers. Check the judge against human grades first.">A judge model that always prefers the longer answer</li>
              <li data-bucket="problem" data-why="A check this weak passes nonsense sentences that happen to contain the word.">A task test that only checks if the reply contains "café"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor builds simple count models on the café text. A count model with context k looks at the last k characters and counts what came next. Parts 2 and 3 run task tests and a contamination check. Part 4 turns four token probabilities into a loss and a perplexity. Part 5 fills in the judge prompt.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, find the context length with the lowest validation loss. Check that its perplexity is e to the power of that loss.</li>
            <li>In Part 2, change <code>K = 4</code> to <code>K = 8</code>. Fewer tests pass. Many 8-character contexts in the replies never appear in the training text, so the model has nothing to copy. This matches the high validation loss for context 8.</li>
            <li>In Part 2, make the "Molly" test stricter. Change <code>["café"]</code> to <code>["café at five"]</code>. Now the nonsense reply fails.</li>
            <li>In Part 2, add your own test, such as <code>("A tourist asks ", ["map"])</code>. Does Part 3 say it is contaminated?</li>
            <li>In Part 4, change 0.1 to 0.9. How much does the perplexity drop?</li>
            <li>In Part 5, change the model answer to <code>"Ellie."</code>. Would a judge say PASS now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> No single number tells you a model is good. Use validation loss and perplexity to track training. Use task tests and graders to check real behaviour. And always make sure your test data was not in the training data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Evaluate tiny count models on the café text: loss, perplexity, task tests, graders, contamination.
        import numpy as np
        from collections import Counter, defaultdict

        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()

        # ── Part 1: validation loss and perplexity for count models ──
        print("== Part 1: validation loss and perplexity ==")
        chars = sorted(set(CAFE_TEXT)); V = len(chars)   # character tokenizer: V = 35
        n = int(0.9 * len(CAFE_TEXT))            # first 90% train, last 10% validation
        train, val = CAFE_TEXT[:n], CAFE_TEXT[n:]

        def fit(text, k):  # count which character follows each context of k characters
            counts = defaultdict(Counter)
            for i in range(k, len(text)):
                counts[text[i - k:i]][text[i]] += 1
            return counts
        def prob(counts, ctx, ch, alpha=0.1):
            c = counts[ctx]                        # smoothing: unseen pairs get a small chance
            return (c[ch] + alpha) / (sum(c.values()) + alpha * V)
        def avg_loss(counts, text, k):  # average cross-entropy (in nats) per next character
            losses = [-np.log(prob(counts, text[i - k:i], text[i])) for i in range(k, len(text))]
            return float(np.mean(losses))

        print(f"V = {V}. Random guessing: loss {np.log(V):.3f}, perplexity {V}")
        print("context  train loss  val loss  val perplexity")
        for k in [1, 2, 4, 8]:
            m = fit(train, k)
            tl, vl = avg_loss(m, train, k), avg_loss(m, val, k)
            print(f"  {k:>2}       {tl:6.3f}    {vl:6.3f}    {np.exp(vl):8.2f}")

        # ── Part 2: task tests. Does the model finish the sentence in a sensible way? ──
        print("\n== Part 2: task tests ==")
        K = 4
        model = fit(train, K)
        def complete(prompt, max_chars=30):
            text = prompt
            while not text.endswith(".") and len(text) < len(prompt) + max_chars:
                options = model[text[-K:]]
                text += max(options, key=options.get) if options else "."
            return text

        tests = [("Tom makes a ", ["tea", "latte", "flat white", "hot chocolate"]),
                 ("Ellie bakes ", ["cake", "scone"]),
                 ("Molly closes the ", ["café"])]
        passed = 0
        for prompt, good in tests:
            out = complete(prompt)
            ok = any(word in out for word in good); passed += ok
            print(f"  {'PASS' if ok else 'FAIL'}  {out!r}")
        print(f"Task score: {passed}/{len(tests)}")

        # ── Part 3: contamination check. Is a test prompt copied word for word in the training text? ──
        print("\n== Part 3: contamination check ==")
        for prompt, _ in tests:
            print(f"  {prompt.strip()!r} in training text: {prompt.strip() in train}")

        # ── Part 4: loss and perplexity for 4 tokens ──
        print("\n== Part 4: loss and perplexity for 4 tokens ==")
        # probability the model gave to the correct next token, for 4 tokens
        probs = np.array([0.5, 0.25, 0.1, 0.8])
        losses = -np.log(probs)
        print(np.round(losses, 3))
        print("mean loss:", round(losses.mean(), 3))
        print("perplexity:", round(np.exp(losses.mean()), 2))

        # ── Part 5: a judge prompt for model grading ──
        # You send this text to a strong model once for each answer.
        print("\n== Part 5: a judge prompt ==")
        JUDGE_PROMPT = """You are grading an answer from a small model.
        Question: Who bakes the cakes at The Little Bean?
        Reference answer: Ellie.
        Model answer: {answer}
        Reply with PASS or FAIL, then one short reason."""
        print(JUDGE_PROMPT.format(answer="Ellie bakes a hot tea."))
      PYTHON
    },
    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Quantisation and Running Models Locally</h1>
        </div>
        <p class="lc-lead">A model is mostly a big pile of numbers. Each number usually takes 2 or 4 bytes. <strong>Quantisation</strong> stores each number with fewer bits, for example 8 or 4. The model gets much smaller and often runs faster, and the answers change only a little. In this lesson you will do the memory arithmetic, quantise a weight matrix in NumPy, and meet the tools that run quantised models on a laptop.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: four float32 weights, minus 1.30, 0.07, 0.42 and 0.88, are divided by a scale of 0.01024 and rounded to int8 codes minus 127, 7, 41 and 86. The scale is 1.3 divided by 127. Right: a 7 billion parameter model needs 28 GB in float32, 14 GB in float16, 7 GB in int8 and 3.5 GB in 4-bit.">
            <defs><marker id="ls21a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="455" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="240" y="36" font-weight="700" fill="#93c5fd">float32 weights (4 bytes each)</text>
              <line x1="30" y1="80" x2="450" y2="80" stroke="#3b82f6" stroke-width="2"/>
              <text x="38" y="68" font-size="12">-1.30</text>
              <text x="251" y="68" font-size="12">0.07</text>
              <text x="308" y="68" font-size="12">0.42</text>
              <text x="382" y="68" font-size="12">0.88</text>
              <circle cx="30" cy="80" r="4" fill="#3b82f6"/><circle cx="251" cy="80" r="4" fill="#3b82f6"/><circle cx="308" cy="80" r="4" fill="#3b82f6"/><circle cx="382" cy="80" r="4" fill="#3b82f6"/>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls21a)">
                <line x1="30" y1="88" x2="30" y2="190"/><line x1="251" y1="88" x2="251" y2="190"/><line x1="308" y1="88" x2="308" y2="190"/><line x1="382" y1="88" x2="382" y2="190"/>
              </g>
              <text x="140" y="136" font-size="12" fill="#fcd34d">divide by 0.01024</text>
              <text x="140" y="154" font-size="12" fill="#fcd34d">then round</text>
              <line x1="30" y1="200" x2="450" y2="200" stroke="#10b981" stroke-width="2"/>
              <circle cx="30" cy="200" r="4" fill="#10b981"/><circle cx="251" cy="200" r="4" fill="#10b981"/><circle cx="308" cy="200" r="4" fill="#10b981"/><circle cx="382" cy="200" r="4" fill="#10b981"/>
              <text x="40" y="220" font-size="12">-127</text>
              <text x="251" y="220" font-size="12">7</text>
              <text x="308" y="220" font-size="12">41</text>
              <text x="382" y="220" font-size="12">86</text>
              <text x="240" y="248" font-weight="700" fill="#6ee7b7">int8 codes (1 byte each)</text>
              <text x="240" y="274" font-size="12" fill="#9b99b8">scale = biggest |w| / 127 = 1.3 / 127 = 0.01024</text>
              <rect x="478" y="10" width="272" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="614" y="36" font-weight="700">A 7B model's weights</text>
              <g text-anchor="start" font-size="12.5">
                <text x="492" y="76">float32</text><rect x="560" y="62" width="130" height="20" rx="3" fill="#3b82f6"/><text x="698" y="76">28 GB</text>
                <text x="492" y="116">float16</text><rect x="560" y="102" width="65" height="20" rx="3" fill="#8b5cf6"/><text x="633" y="116">14 GB</text>
                <text x="492" y="156">int8</text><rect x="560" y="142" width="33" height="20" rx="3" fill="#10b981"/><text x="601" y="156">7 GB</text>
                <text x="492" y="196">4-bit</text><rect x="560" y="182" width="16" height="20" rx="3" fill="#f59e0b"/><text x="584" y="196">3.5 GB</text>
              </g>
              <text x="614" y="234" font-size="11.5" fill="#9b99b8">7 billion × bytes per weight</text>
              <text x="614" y="254" font-size="11.5" fill="#9b99b8">plus extra memory for the</text>
              <text x="614" y="272" font-size="11.5" fill="#9b99b8">KV cache and activations</text>
            </g>
          </svg>
          <figcaption>Left: int8 quantisation keeps the order and spacing of the weights, but stores small whole numbers plus one scale. Right: fewer bits per weight means less memory.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Memory arithmetic</h3>
          <p>The memory for a model's weights is simple to work out:</p>
          <p><code>memory = number of parameters × bytes per parameter</code></p>
          <p>One byte is 8 bits. So float32 uses 4 bytes, float16 uses 2 bytes, int8 uses 1 byte and 4-bit uses half a byte.</p>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>Bytes per weight</th><th>TinyGPT (26,912 parameters)</th><th>7B model</th></tr></thead>
            <tbody>
              <tr><td>float32</td><td>4</td><td>108 KB</td><td>28 GB</td></tr>
              <tr><td>float16 / bfloat16</td><td>2</td><td>54 KB</td><td>14 GB</td></tr>
              <tr><td>int8</td><td>1</td><td>27 KB</td><td>7 GB</td></tr>
              <tr><td>4-bit</td><td>0.5</td><td>13 KB</td><td>3.5 GB</td></tr>
            </tbody>
          </table>
          <p>Worked example: 7,000,000,000 × 0.5 bytes = 3,500,000,000 bytes, which is 3.5 GB. A laptop with 16 GB of memory cannot hold the float32 version. It can hold the 4-bit version with room to spare.</p>
          <p>These numbers are for the weights only. When the model runs, it also needs memory for the <strong>KV cache</strong> (saved attention keys and values for the text so far) and for <strong>activations</strong> (the in-between results). The scales also take a little space.</p>
        </div>
        <div class="lc-card">
          <h3>How int8 quantisation works</h3>
          <p>The simplest method is <strong>symmetric quantisation</strong>. It has three steps:</p>
          <ol class="lc-list">
            <li>Find the biggest weight, ignoring the sign. Call it max.</li>
            <li>Work out a <strong>scale</strong>: scale = max / 127. The number 127 is the biggest value an int8 can hold on both sides of zero.</li>
            <li>For each weight, store q = round(w / scale). This is a whole number from -127 to 127.</li>
          </ol>
          <p>To use the weight again, you <strong>dequantise</strong> it: w is about q × scale.</p>
          <p>In NumPy, the whole method is two lines: one finds the scale, and one divides, rounds and stores int8 numbers. Part 3 in the code editor below runs these two lines.</p>
          <p>Take the weights 0.42, -1.3, 0.07 and 0.88. The scale is 1.3 / 127 = 0.01024. The int8 codes are 41, -127, 7 and 86. Part 3 runs this example and turns the codes back into floats.</p>
          <p>Look at 0.42. It becomes 0.42 / 0.01024 = 41.03, which rounds to 41. Back again, 41 × 0.01024 = 0.4197. The error is tiny. You save 3 bytes for every weight.</p>
          <p>For 4 bits, the biggest code is 7, so the steps are much bigger. Real tools keep 4-bit errors small with tricks. For example, they use one scale for each small <strong>block</strong> of weights, such as 32 weights. Then one large weight does not spoil the scale for the whole matrix.</p>
        </div>
        <div class="lc-card">
          <h3>Running quantised models locally</h3>
          <p>You do not need to write quantisation code for big models. Well-known tools do it for you:</p>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>llama.cpp</td><td>A fast C/C++ program that runs models on a CPU or GPU. It uses the <strong>GGUF</strong> file format and many quantisation types, such as Q8_0 and Q4_K_M.</td></tr>
              <tr><td>Ollama</td><td>An easy app that downloads ready-quantised models and runs them with one command.</td></tr>
              <tr><td>Hugging Face + bitsandbytes</td><td>Loads a model in 8-bit or 4-bit inside Python, for example with <code>BitsAndBytesConfig(load_in_4bit=True)</code>.</td></tr>
            </tbody>
          </table>
          <p>Part 4 in the code editor below lists typical commands as comments. With llama.cpp you convert a Hugging Face model to a GGUF file, quantise it to Q4_K_M, then run it. With Ollama, one command such as <code>ollama run llama3.2</code> downloads a model and starts a chat. Run these in a terminal on your own computer, not in the editor.</p>
          <p>These tools support well-known model families. They do not know our own TinyGPT class, so you cannot convert it this way. Command names and flags change often, so check the current llama.cpp and Ollama docs.</p>
          <p>Which level should you pick? 8-bit is usually very close to the original model. 4-bit is much smaller, and quality usually drops a little. Always test the quantised model on your own evaluation set before you use it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: quantise one weight</h3>
          <p>Follow the weight 0.42 from the matrix above through int8 and then 4-bit.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Start">Weights: 0.42, -1.3, 0.07, 0.88. Each one is a float32 and takes 4 bytes.</li>
              <li data-kind="thought" data-label="Find the scale (int8)">The biggest size is 1.3. Scale = 1.3 / 127 = 0.01024.</li>
              <li data-kind="tool" data-label="Divide and round">0.42 / 0.01024 = 41.03. Round it to 41 and store it in 1 byte.</li>
              <li data-kind="result" data-label="Dequantise">41 × 0.01024 = 0.4197. The error is only 0.0003.</li>
              <li data-kind="thought" data-label="Now try 4-bit">The biggest 4-bit code is 7. Scale = 1.3 / 7 = 0.1857.</li>
              <li data-kind="warn" data-label="Bigger error">0.42 / 0.1857 = 2.26, which rounds to 2. Back again: 2 × 0.1857 = 0.371. The error is now about 0.05.</li>
              <li data-kind="answer" data-label="Trade-off">4-bit uses half the memory of int8, but each weight is less exact. Smaller blocks with their own scales reduce the error.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor quantises a 4 × 8 weight matrix to int8 and 4-bit with one scale per row. It measures the error in the weights and in the output of <code>W @ x</code>. Part 2 prints memory bars. Part 3 quantises the four weights from this lesson. Part 4 holds the terminal commands for llama.cpp and Ollama.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, compare the mean weight error for 8-bit and 4-bit.</li>
            <li>In Part 1, change <code>for bits in [8, 4]:</code> to <code>for bits in [8, 6, 4, 3]:</code>. Watch how the error grows as the bits go down.</li>
            <li>In Part 1, add one large outlier with <code>W[0, 0] = 5.0</code> after the matrix is made. The scale for row 0 gets much bigger, so the other weights in that row lose detail.</li>
            <li>In Part 2, change <code>7e9</code> to <code>70e9</code>. How much memory does a 70B model need in 4-bit?</li>
            <li>In Part 3, change 127 to 7 to get 4-bit codes. What happens to 0.42?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Quantisation stores each weight as a small whole number plus a shared scale. Memory is parameters × bytes per parameter. Going from 16-bit to 4-bit makes the weights four times smaller, so big models can run on a normal computer.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Quantise a weight matrix to int8 and 4-bit with numpy, then measure the error.
        import numpy as np

        # ── Part 1: quantise a 4 x 8 weight matrix, one scale per row ──
        print("== Part 1: int8 and 4-bit, one scale per row ==")
        np.random.seed(42)
        W = np.random.randn(4, 8).astype(np.float32) * 0.5   # a small weight matrix
        x = np.random.randn(8).astype(np.float32)            # one input vector

        def quantise(W, bits):
            """Symmetric quantisation, one scale per row."""
            qmax = 2 ** (bits - 1) - 1                        # 127 for 8 bits, 7 for 4 bits
            scale = np.abs(W).max(axis=1, keepdims=True) / qmax
            q = np.clip(np.round(W / scale), -qmax, qmax).astype(np.int8)
            return q, scale

        def dequantise(q, scale):
            return q.astype(np.float32) * scale

        print("Row 0 as float32:", np.round(W[0, :4], 4))
        for bits in [8, 4]:
            q, scale = quantise(W, bits)
            W_back = dequantise(q, scale)
            err = np.abs(W - W_back).mean()
            out_err = np.abs(W @ x - W_back @ x).max()
            print(f"\n{bits}-bit: scale for row 0 = {scale[0, 0]:.5f}")
            print("  stored integers:", q[0, :4])
            print("  back to float:  ", np.round(W_back[0, :4], 4))
            print(f"  mean weight error {err:.5f}, biggest output error {out_err:.4f}")

        # ── Part 2: memory = number of parameters x bytes per parameter ──
        print("\n== Part 2: memory ==")
        def gb(params, bits):
            return params * bits / 8 / 1e9

        for name, params in [("TinyGPT, 26,912 parameters", 26_912), ("7B model", 7e9)]:
            print(f"{name}:")
            for label, bits in [("float32", 32), ("float16", 16), ("int8", 8), ("4-bit", 4)]:
                size = gb(params, bits)
                text = f"{size:.1f} GB" if size >= 0.1 else f"{size * 1e6:.0f} KB"
                print(f"  {label:8} {text:>9}  " + "#" * round(bits / 2))

        # ── Part 3: the four weights from the lesson, int8 with one scale ──
        print("\n== Part 3: the four weights from the lesson ==")
        w = np.array([0.42, -1.3, 0.07, 0.88])
        scale = np.abs(w).max() / 127          # the biggest weight maps to 127
        q = np.round(w / scale).astype(np.int8)
        print("scale:", round(scale, 5))
        print("int8: ", q)
        print("back: ", np.round(q * scale, 4))

        # ── Part 4: run a quantised model locally (terminal commands for your own computer) ──
        # These are not Python. Type them in a terminal, not in this editor.
        #
        # llama.cpp: convert a Hugging Face model, quantise it to 4-bit, then run it
        #   python convert_hf_to_gguf.py ./my-model --outfile my-model-f16.gguf --outtype f16
        #   ./llama-quantize my-model-f16.gguf my-model-Q4_K_M.gguf Q4_K_M
        #   ./llama-cli -m my-model-Q4_K_M.gguf -p "Tom makes"
        #
        # Ollama: download a ready-quantised model and chat with it
        #   ollama run llama3.2
        print("\n== Part 4: local tools ==")
        print("Part 4 is terminal commands for llama.cpp and Ollama. Read them in the comments above.")
      PYTHON
    },
    22 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-scratch">LLM from Scratch</div>
          <h1 class="lc-title">Project: Build and Chat with Your Own Mini LLM</h1>
        </div>
        <p class="lc-lead">This is the final project. You will put the whole course together in one program: data, tokeniser, model, training loop and sampling. The editor below trains a tiny character model on the café text, right in your browser, in a few seconds. Then you chat with it. You will also see how to chat with the PyTorch TinyGPT on your own computer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 314" role="img" aria-label="The project pipeline. Top row: 1 data, the café text with 30 sentences. 2 tokenise, one ID per character, V equals 35. 3 model, 8 characters to embeddings, a hidden layer of 64 and 35 logits. 4 train, 150 Adam steps, loss falls from 3.56 to 0.14. Bottom row, the chat loop: you type Tom makes, the model scores 35 next characters, one is sampled with temperature 0.5, it is added to the text, and the loop repeats until a newline.">
            <defs><marker id="ls22a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12.5" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="165" height="100" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="92" y="46" font-weight="700" fill="#93c5fd">1. Data</text>
              <text x="92" y="70">café text</text>
              <text x="92" y="90" font-size="11.5" fill="#9b99b8">30 sentences</text>
              <text x="92" y="108" font-size="11.5" fill="#9b99b8">938 characters</text>
              <line x1="177" y1="70" x2="201" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls22a)"/>
              <rect x="205" y="20" width="165" height="100" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="287" y="46" font-weight="700" fill="#c4b5fd">2. Tokenise</text>
              <text x="287" y="70">one ID per character</text>
              <text x="287" y="90" font-size="11.5" fill="#9b99b8">V = 35</text>
              <text x="287" y="108" font-size="11.5" fill="#9b99b8">939 (x, y) pairs</text>
              <line x1="372" y1="70" x2="396" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls22a)"/>
              <rect x="400" y="20" width="165" height="100" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="482" y="46" font-weight="700" fill="#67e8f9">3. Model</text>
              <text x="482" y="70">8 chars → embeddings</text>
              <text x="482" y="90" font-size="11.5" fill="#9b99b8">→ hidden layer (64)</text>
              <text x="482" y="108" font-size="11.5" fill="#9b99b8">→ 35 logits</text>
              <line x1="567" y1="70" x2="591" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls22a)"/>
              <rect x="595" y="20" width="155" height="100" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="672" y="46" font-weight="700" fill="#6ee7b7">4. Train</text>
              <text x="672" y="70">150 Adam steps</text>
              <text x="672" y="90" font-size="11.5" fill="#9b99b8">loss 3.56 → 0.14</text>
              <text x="672" y="108" font-size="11.5" fill="#9b99b8">a few seconds</text>
              <path d="M672,122 L672,142 L92,142 L92,166" fill="none" stroke="#9b99b8" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#ls22a)"/>
              <text x="380" y="137" font-size="11.5" fill="#9b99b8">5. chat with the trained model</text>
              <rect x="10" y="170" width="165" height="64" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="92" y="196" font-weight="700">You type</text>
              <text x="92" y="218" fill="#93c5fd">"Tom makes"</text>
              <line x1="177" y1="202" x2="201" y2="202" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls22a)"/>
              <rect x="205" y="170" width="165" height="64" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="287" y="196" font-weight="700">Model scores</text>
              <text x="287" y="218" font-size="11.5" fill="#9b99b8">all 35 next characters</text>
              <line x1="372" y1="202" x2="396" y2="202" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls22a)"/>
              <rect x="400" y="170" width="165" height="64" rx="10" fill="#27274e" stroke="#f59e0b"/>
              <text x="482" y="196" font-weight="700">Sample one</text>
              <text x="482" y="218" font-size="11.5" fill="#9b99b8">temperature 0.5</text>
              <line x1="567" y1="202" x2="591" y2="202" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#ls22a)"/>
              <rect x="595" y="170" width="155" height="64" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="672" y="196" font-weight="700">Add it to the text</text>
              <text x="672" y="218" font-size="11.5" fill="#9b99b8">stop at a newline</text>
              <path d="M672,236 L672,258 L287,258 L287,240" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#ls22a)"/>
              <text x="480" y="278" font-size="11.5" fill="#fcd34d">repeat, one character at a time</text>
              <text x="380" y="302" font-size="12" fill="#6ee7b7">Bot: "Tom makes a hot tea."</text>
            </g>
          </svg>
          <figcaption>The whole project in one picture. The numbers come from Parts 1 and 2 in the code editor below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The plan</h3>
          <p>A full GPT with attention is slow to train in a browser. So the editor runs a smaller model with the same parts that matter:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>In the editor (NumPy)</th><th>In TinyGPT (PyTorch)</th></tr></thead>
            <tbody>
              <tr><td>Tokeniser</td><td>Characters, V = 35</td><td>Characters, V = 35</td></tr>
              <tr><td>Context</td><td>Last 8 characters</td><td>Last 16 characters (block_size)</td></tr>
              <tr><td>Mixing the context</td><td>Join 8 embeddings, then one hidden layer</td><td>2 transformer blocks with 4 attention heads</td></tr>
              <tr><td>Output</td><td>35 logits, softmax</td><td>35 logits, softmax</td></tr>
              <tr><td>Training</td><td>Cross-entropy, Adam, 150 full-batch steps</td><td>Cross-entropy, AdamW, batches of 32</td></tr>
              <tr><td>Sampling</td><td>Temperature</td><td>Temperature, top-k and top-p</td></tr>
              <tr><td>Size</td><td>8,903 parameters</td><td>26,912 parameters (27,104 in Part 3)</td></tr>
            </tbody>
          </table>
          <p>The NumPy model joins the 8 character embeddings into one long vector. A transformer uses attention instead, so each token can choose which earlier tokens matter. Everything else is the same: tokenise, make (x, y) pairs, compute the loss, follow the gradient, sample in a loop.</p>
          <p>Each sentence becomes its own training example. It starts with 8 newline characters, so the model learns how sentences begin. A newline at the end means "stop".</p>
        </div>
        <div class="lc-card">
          <h3>Training by hand in NumPy</h3>
          <p>NumPy has no <code>loss.backward()</code>. So Part 1 in the code editor writes the gradients itself. These are the same steps that PyTorch does for you:</p>
          <ol class="lc-list">
            <li><strong>Forward:</strong> look up embeddings, apply the hidden layer with <code>tanh</code>, then compute the logits.</li>
            <li><strong>Loss:</strong> softmax turns the logits into probabilities. The loss is the average of -log(probability of the correct next character).</li>
            <li><strong>Backward:</strong> the gradient of the loss with respect to the logits is "probabilities minus 1 at the correct character". The chain rule carries it back through each layer.</li>
            <li><strong>Update:</strong> Adam changes every parameter a little, using the gradient.</li>
          </ol>
          <p>The first loss is about 3.56. That is close to ln(35) = 3.555, which is what random guessing gives. After 150 steps it is about 0.14. The model has learned the café text very well. Most of that is memorising. With only 30 sentences, that is expected.</p>
        </div>
        <div class="lc-card">
          <h3>Chatting with a base model</h3>
          <p>Our model is a <strong>base model</strong>. It only learned to continue café sentences. It has not had instruction fine-tuning, so it cannot answer questions. "Chat" here means: you type the start of a sentence, and the model finishes it.</p>
          <p>Here is what Part 2 in the code editor prints:</p>
          <table class="lc-table">
            <thead><tr><th>You type</th><th>The model writes</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Tom makes</td><td>Tom makes a hot tea.</td><td>Copied from the café text</td></tr>
              <tr><td>Molly</td><td>Molly makes soup and bread.</td><td>Copied from the café text</td></tr>
              <tr><td>The café</td><td>The café opens again.</td><td>A new mix of two real sentences</td></tr>
              <tr><td>A dog</td><td>A doglr oa toed.</td><td>"dog" is not in the café text, so the model is lost</td></tr>
            </tbody>
          </table>
          <p>The last row is an important lesson. A model can only use patterns from its training data. To make a real assistant, you need far more text, a bigger model, and the instruction tuning and alignment steps from earlier in this course.</p>
        </div>
        <div class="lc-card">
          <h3>The full PyTorch version</h3>
          <p>Part 3 in the code editor below is the full PyTorch program. PyTorch does not run in the browser editor, so there Part 3 only prints a short message. Copy it to your own computer, together with the <code>CAFE_TEXT</code> lines at the top, and run <code>pip install torch</code> first.</p>
          <p>It builds TinyGPT with the default tiny config: n_embd = 32, n_head = 4, n_layer = 2 and block_size = 16. This version builds attention slightly differently from the one you coded earlier. It uses PyTorch's built-in <code>nn.MultiheadAttention</code>, which does the same job. The <code>mask</code> stops each token from looking at later tokens. The built-in layer also has a bias for each of the query, key and value maps. So this model has 27,104 parameters, not 26,912.</p>
          <p>On a laptop CPU, training takes well under a minute. The loss starts near 3.57, close to ln(35). It falls below 0.4 by the end. Then the program finishes three prompts. "Tom makes" often ends with a drink from the café text. To type your own prompts, read them in a loop with Python's <code>input</code> function and stop on an empty line.</p>
          <p>Ideas to take it further: train it on a bigger public-domain book, use your BPE tokeniser instead of characters, save a checkpoint, and measure validation perplexity.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: build your mini LLM in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the project steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Load and clean the café text</li>
              <li data-order="2">Build the tokeniser and turn the text into IDs</li>
              <li data-order="3">Make inputs x and targets y, shifted by one token</li>
              <li data-order="4">Create the model with small random weights</li>
              <li data-order="5">Train: forward, loss, backward, update, many times</li>
              <li data-order="6">Check the loss and test some prompts</li>
              <li data-order="7">Chat: sample one token at a time until a stop token</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Run the code editor. Part 1 trains the NumPy model for about 3 seconds and prints the loss. Part 2 answers five prompts. Part 3 is the PyTorch TinyGPT, for your own computer.</p>
          <ol class="lc-list">
            <li>In Part 2, add your own prompts to the list in the last loop, such as <code>"A tourist"</code> or <code>"Ellie counts"</code>. Use only characters that appear in the café text.</li>
            <li>In Part 2, change <code>temperature=0.5</code> to <code>1.5</code>. The replies get more random, and the "A dog" reply gets even longer and stranger. Then try <code>0.1</code>: the model almost always picks its top choice. Note: the code fixes the random seed with <code>np.random.seed(42)</code>, so running it again with the same settings gives the same replies. Change 42 to another number to see different replies.</li>
            <li>In Part 1, change <code>lr, steps = 0.02, 150</code> to <code>lr, steps = 0.02, 20</code>. With too little training, the replies are mostly nonsense.</li>
            <li>In Part 1, change <code>T = 8</code> to <code>T = 3</code>. With a short context, the model mixes up sentences much more often.</li>
            <li>On your own computer, run Part 3. In <code>reply_gpt</code>, change <code>top_k=5</code> to <code>top_k=1</code>. Now the model always picks its top choice, so sampling adds no randomness. Compare these replies with the <code>top_k=5</code> replies. Which look more like the café text?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every LLM follows the same recipe, from this 8,903-parameter toy to the largest chat models. Tokenise text, train to predict the next token, then sample one token at a time. Scale, data and tuning make the difference.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Capstone: train a tiny character model on the café text with NumPy, then chat with it.
        # Part 3 is the full PyTorch TinyGPT for your own computer.
        import numpy as np
        np.random.seed(42)
        CAFE_TEXT = """
        The Little Bean is a small café in York.
        Molly owns the café.
        Tom makes the coffee.
        Ellie bakes the cakes.
        The café opens at seven in the morning.
        The first customer wants a hot tea.
        Tom makes a hot tea.
        The second customer wants a latte.
        Tom makes a latte with oat milk.
        Ellie brings a lemon cake.
        The cake is warm and sweet.
        A man reads the paper by the window.
        A woman orders a flat white.
        Tom makes a flat white.
        The café is busy at lunch.
        Molly makes soup and bread.
        The soup is hot and the bread is fresh.
        A child wants a hot chocolate.
        Tom makes a hot chocolate with cream.
        The rain falls on the old streets of York.
        People come in to get warm.
        Ellie bakes more scones.
        The scones are warm and soft.
        A tourist asks for a map of York.
        Molly gives the tourist a map.
        The café is quiet in the afternoon.
        Tom cleans the coffee machine.
        Ellie counts the cakes that are left.
        Molly closes the café at five.
        Tomorrow the café opens again.
        """.strip()
        # ── Part 1: train a tiny character model with NumPy ──
        print("== Part 1: train the NumPy model ==")
        # 1) Tokenise: one ID per character
        chars = sorted(set(CAFE_TEXT)); V = len(chars)
        stoi = {ch: i for i, ch in enumerate(chars)}; itos = dict(enumerate(chars))
        T = 8                                        # context: the last 8 characters
        # 2) Inputs x (8 chars) and targets y (next char). Each sentence starts with 8 newlines.
        X, Y = [], []
        for line in CAFE_TEXT.split("\n"):
            ids = [stoi[ch] for ch in "\n" * T + line + "\n"]
            for i in range(len(ids) - T):
                X.append(ids[i:i + T]); Y.append(ids[i + T])
        X, Y = np.array(X), np.array(Y)
        # 3) The model: embeddings -> hidden layer -> logits over V characters
        C, H = 12, 64
        params = {"emb": np.random.randn(V, C) * 0.3,
                  "W1": np.random.randn(T * C, H) * 0.1, "b1": np.zeros(H),
                  "W2": np.random.randn(H, V) * 0.1, "b2": np.zeros(V)}
        print(f"{len(X)} training examples, V = {V}, {sum(p.size for p in params.values())} parameters")
        def forward(x):
            e = params["emb"][x].reshape(len(x), -1)          # (N, T*C)
            h = np.tanh(e @ params["W1"] + params["b1"])      # (N, H)
            return e, h, h @ params["W2"] + params["b2"]      # logits (N, V)

        # 4) Training loop: forward, loss, backward, Adam step
        m, v = ({k: np.zeros_like(p) for k, p in params.items()} for _ in range(2))
        lr, steps = 0.02, 150
        for step in range(1, steps + 1):
            e, h, logits = forward(X)
            probs = np.exp(logits - logits.max(1, keepdims=True))
            probs /= probs.sum(1, keepdims=True)
            loss = -np.log(probs[np.arange(len(Y)), Y]).mean()
            d = probs.copy(); d[np.arange(len(Y)), Y] -= 1; d /= len(Y)    # dloss/dlogits
            g = {"W2": h.T @ d, "b2": d.sum(0)}
            dh = (d @ params["W2"].T) * (1 - h ** 2)
            g["W1"], g["b1"] = e.T @ dh, dh.sum(0)
            g["emb"] = np.zeros_like(params["emb"])
            np.add.at(g["emb"], X, (dh @ params["W1"].T).reshape(len(X), T, C))
            for k in params:
                m[k] = 0.9 * m[k] + 0.1 * g[k]
                v[k] = 0.999 * v[k] + 0.001 * g[k] ** 2
                params[k] -= lr * (m[k] / (1 - 0.9 ** step)) / (np.sqrt(v[k] / (1 - 0.999 ** step)) + 1e-8)
            if step % 25 == 0 or step == 1: print(f"step {step:4d}  loss {loss:.3f}")

        # ── Part 2: chat. You type the start, the model finishes the sentence ──
        print("\n== Part 2: chat with the NumPy model ==")
        def reply(prompt, temperature=0.5, max_chars=60):
            out = prompt
            while len(out) < len(prompt) + max_chars:
                ctx = ("\n" * T + out)[-T:]
                _, _, logits = forward(np.array([[stoi[ch] for ch in ctx]]))
                p = np.exp((logits[0] - logits[0].max()) / temperature)
                ch = itos[np.random.choice(V, p=p / p.sum())]
                if ch == "\n": break
                out += ch
            return out
        for prompt in ["Tom makes", "Ellie bakes", "The café", "Molly", "A dog"]:
            print(f"You: {prompt}\nBot: {reply(prompt)}\n")

        # ── Part 3: the full TinyGPT in PyTorch (run this part on your own computer) ──
        # Copy the CAFE_TEXT lines at the top too, then: pip install torch
        # Default tiny config: n_embd 32, n_head 4, n_layer 2, block_size 16.
        # nn.MultiheadAttention also has biases for q, k and v, so this model has 27,104
        # parameters, not the 26,912 of the TinyGPT you built earlier in this course.
        print("== Part 3: TinyGPT in PyTorch ==")
        try:
            import torch, torch.nn as nn, torch.nn.functional as F
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            text = CAFE_TEXT + "\n"                             # the café text
            chars = sorted(set(text)); V = len(chars)
            stoi = {c: i for i, c in enumerate(chars)}
            data = torch.tensor([stoi[c] for c in text])
            T, C, n_head, n_layer = 16, 32, 4, 2               # block_size, n_embd

            class Block(nn.Module):
                def __init__(self):
                    super().__init__()
                    self.ln1, self.ln2 = nn.LayerNorm(C), nn.LayerNorm(C)
                    self.attn = nn.MultiheadAttention(C, n_head, batch_first=True)
                    self.mlp = nn.Sequential(nn.Linear(C, 4 * C), nn.GELU(), nn.Linear(4 * C, C))
                def forward(self, x):
                    mask = nn.Transformer.generate_square_subsequent_mask(x.size(1))
                    h = self.ln1(x)
                    x = x + self.attn(h, h, h, attn_mask=mask, is_causal=True)[0]
                    return x + self.mlp(self.ln2(x))

            class TinyGPT(nn.Module):
                def __init__(self):
                    super().__init__()
                    self.tok_emb, self.pos_emb = nn.Embedding(V, C), nn.Embedding(T, C)
                    self.blocks = nn.Sequential(*[Block() for _ in range(n_layer)])
                    self.ln_f, self.lm_head = nn.LayerNorm(C), nn.Linear(C, V, bias=False)
                    self.lm_head.weight = self.tok_emb.weight      # weight tying
                    nn.init.normal_(self.tok_emb.weight, std=0.02)
                def forward(self, idx):
                    x = self.tok_emb(idx) + self.pos_emb(torch.arange(idx.size(1)))
                    return self.lm_head(self.ln_f(self.blocks(x)))

            model = TinyGPT()
            print(sum(p.numel() for p in model.parameters()), "parameters")
            opt = torch.optim.AdamW(model.parameters(), lr=5e-3)
            for step in range(3000):
                ix = torch.randint(len(data) - T - 1, (32,))
                x = torch.stack([data[i:i + T] for i in ix]); y = torch.stack([data[i + 1:i + T + 1] for i in ix])
                loss = F.cross_entropy(model(x).view(-1, V), y.view(-1))
                opt.zero_grad(); loss.backward(); opt.step()
                if step % 500 == 0 or step == 2999: print(step, round(loss.item(), 3))

            @torch.no_grad()
            def reply_gpt(prompt, temperature=0.7, top_k=5):
                model.eval()
                idx = torch.tensor([[stoi[c] for c in "\n" + prompt]])
                while idx.size(1) < 80:
                    logits = model(idx[:, -T:])[0, -1] / temperature
                    v, i = torch.topk(logits, top_k)
                    nxt = i[torch.multinomial(F.softmax(v, -1), 1)]
                    if chars[nxt] == "\n": break
                    idx = torch.cat([idx, nxt.view(1, 1)], dim=1)
                return "".join(chars[i] for i in idx[0, 1:])

            # To type your own prompts, read them in a while loop with Python's input function.
            for prompt in ["Tom makes", "Ellie bakes", "Molly"]:
                print(f"You: {prompt}\nBot: {reply_gpt(prompt)}")
      PYTHON
    },
  }.freeze
end

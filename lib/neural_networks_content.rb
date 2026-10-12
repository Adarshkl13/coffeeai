module NeuralNetworksContent
  # Neural Networks. Units (sidebar dividers): 1 Unit 1 · Neurons and Layers · 7 Unit 2 · How Networks Learn · 14 Unit 3 · Building Networks · 18 Capstone
  # Widgets: sorter, sequence, stepper. Starter code is Python run in the browser (Pyodide; numpy, pandas, scikit-learn).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">What is a Neural Network?</h1>
        </div>
        <p class="lc-lead">A <strong>neural network</strong> is a program made of many small, simple units. The units are arranged in layers, and each one passes numbers to the next. The network is not given rules. It learns from examples instead. In this lesson, you will see what a network looks like. You will follow numbers from inputs to outputs. You will also see where networks are used today.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 310" role="img" aria-label="An 8 by 8 image of the digit 3 becomes 64 input numbers. They flow through a hidden layer to an output layer with one unit per digit. The unit for 3 has the highest score, 0.91, so the answer is 3. During training, wrong answers lead to small changes in the weights.">
            <defs><marker id="nn1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="nn1b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#f59e0b"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g font-weight="700"><text x="74" y="30" fill="#93c5fd">Image</text><text x="260" y="30" fill="#c4b5fd">Input layer</text><text x="410" y="30" fill="#67e8f9">Hidden layer</text><text x="575" y="30" fill="#6ee7b7">Output layer</text></g>
              <rect x="30" y="95" width="88" height="88" fill="#1f1f44" stroke="#3b82f6"/>
              <g fill="#e2e0f0"><rect x="41" y="95" width="11" height="11"/><rect x="52" y="95" width="11" height="11"/><rect x="63" y="95" width="11" height="11"/><rect x="74" y="95" width="11" height="11"/><rect x="85" y="95" width="11" height="11"/><rect x="85" y="106" width="11" height="11"/><rect x="96" y="106" width="11" height="11"/><rect x="85" y="117" width="11" height="11"/><rect x="96" y="117" width="11" height="11"/><rect x="52" y="128" width="11" height="11"/><rect x="63" y="128" width="11" height="11"/><rect x="74" y="128" width="11" height="11"/><rect x="85" y="128" width="11" height="11"/><rect x="85" y="139" width="11" height="11"/><rect x="96" y="139" width="11" height="11"/><rect x="85" y="150" width="11" height="11"/><rect x="96" y="150" width="11" height="11"/><rect x="41" y="161" width="11" height="11"/><rect x="52" y="161" width="11" height="11"/><rect x="63" y="161" width="11" height="11"/><rect x="74" y="161" width="11" height="11"/><rect x="85" y="161" width="11" height="11"/></g>
              <text x="74" y="206">8×8 image</text>
              <text x="74" y="224" font-size="11" fill="#9b99b8">64 pixel numbers</text>
              <line x1="124" y1="139" x2="236" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn1a)"/>
              <g stroke="#4b4a78" stroke-width="1"><line x1="268" y1="70" x2="402" y2="90"/><line x1="268" y1="70" x2="402" y2="130"/><line x1="268" y1="70" x2="402" y2="170"/><line x1="268" y1="70" x2="402" y2="210"/><line x1="268" y1="110" x2="402" y2="90"/><line x1="268" y1="110" x2="402" y2="130"/><line x1="268" y1="110" x2="402" y2="170"/><line x1="268" y1="110" x2="402" y2="210"/><line x1="268" y1="150" x2="402" y2="90"/><line x1="268" y1="150" x2="402" y2="130"/><line x1="268" y1="150" x2="402" y2="170"/><line x1="268" y1="150" x2="402" y2="210"/><line x1="268" y1="190" x2="402" y2="90"/><line x1="268" y1="190" x2="402" y2="130"/><line x1="268" y1="190" x2="402" y2="170"/><line x1="268" y1="190" x2="402" y2="210"/><line x1="268" y1="230" x2="402" y2="90"/><line x1="268" y1="230" x2="402" y2="130"/><line x1="268" y1="230" x2="402" y2="170"/><line x1="268" y1="230" x2="402" y2="210"/><line x1="418" y1="90" x2="552" y2="60"/><line x1="418" y1="90" x2="552" y2="100"/><line x1="418" y1="90" x2="552" y2="140"/><line x1="418" y1="90" x2="552" y2="200"/><line x1="418" y1="90" x2="552" y2="240"/><line x1="418" y1="130" x2="552" y2="60"/><line x1="418" y1="130" x2="552" y2="100"/><line x1="418" y1="130" x2="552" y2="140"/><line x1="418" y1="130" x2="552" y2="200"/><line x1="418" y1="130" x2="552" y2="240"/><line x1="418" y1="170" x2="552" y2="60"/><line x1="418" y1="170" x2="552" y2="100"/><line x1="418" y1="170" x2="552" y2="140"/><line x1="418" y1="170" x2="552" y2="200"/><line x1="418" y1="170" x2="552" y2="240"/><line x1="418" y1="210" x2="552" y2="60"/><line x1="418" y1="210" x2="552" y2="100"/><line x1="418" y1="210" x2="552" y2="140"/><line x1="418" y1="210" x2="552" y2="200"/><line x1="418" y1="210" x2="552" y2="240"/></g>
              <g fill="#27274e" stroke="#8b5cf6" stroke-width="1.5"><circle cx="260" cy="70" r="12"/><circle cx="260" cy="110" r="12"/><circle cx="260" cy="150" r="12"/><circle cx="260" cy="190" r="12"/><circle cx="260" cy="230" r="12"/></g>
              <g fill="#27274e" stroke="#22d3ee" stroke-width="1.5"><circle cx="410" cy="90" r="12"/><circle cx="410" cy="130" r="12"/><circle cx="410" cy="170" r="12"/><circle cx="410" cy="210" r="12"/></g>
              <g fill="#27274e" stroke="#10b981" stroke-width="1.5"><circle cx="560" cy="60" r="12"/><circle cx="560" cy="100" r="12"/><circle cx="560" cy="200" r="12"/><circle cx="560" cy="240" r="12"/></g>
              <circle cx="560" cy="140" r="12" fill="#10b981" stroke="#6ee7b7" stroke-width="2"/>
              <text x="560" y="176" fill="#9b99b8">⋮</text>
              <g text-anchor="start" font-size="12.5"><text x="580" y="65">0: 0.01</text><text x="580" y="105">1: 0.02</text><text x="580" y="145" fill="#6ee7b7" font-weight="700">3: 0.91</text><text x="580" y="205">8: 0.03</text><text x="580" y="245">9: 0.01</text></g>
              <line x1="638" y1="140" x2="660" y2="140" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn1a)"/>
              <rect x="664" y="114" width="84" height="52" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="706" y="135" font-size="11" fill="#9b99b8">answer</text>
              <text x="706" y="156" font-size="16" font-weight="700" fill="#6ee7b7">3</text>
              <text x="260" y="266" font-size="11" fill="#9b99b8">64 inputs (5 shown)</text>
              <text x="410" y="266" font-size="11" fill="#9b99b8">hidden units</text>
              <path d="M706,168 L706,292 L480,292 L480,258" fill="none" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4" marker-end="url(#nn1b)"/>
              <rect x="505" y="280" width="176" height="24" rx="6" fill="#1f1f44"/>
              <text x="593" y="297" font-size="12" fill="#fcd34d">wrong? adjust the weights</text>
            </g>
          </svg>
          <figcaption>A small network reads an image of a handwritten digit. Numbers flow left to right, layer by layer. Each line is a connection with its own weight. The scores are made-up example numbers.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Simple units in layers</h3>
          <p>A neural network has three kinds of layers:</p>
          <ul class="lc-list">
            <li><strong>Input layer:</strong> the numbers you give the network. For an 8×8 image, that is 64 pixel values.</li>
            <li><strong>Hidden layers:</strong> layers in the middle. You do not see their values directly, so they are called "hidden".</li>
            <li><strong>Output layer:</strong> the answer. For digits, there is one output for each digit from 0 to 9.</li>
          </ul>
          <p>Each small unit is called a <strong>neuron</strong>. A neuron takes some numbers in, does a little maths, and sends one number out. Each connection has a <strong>weight</strong>. A weight is a number that says how strongly one unit affects the next one.</p>
          <p>One neuron on its own is very simple. The power comes from many neurons working together, layer after layer.</p>
        </div>
        <div class="lc-card">
          <h3>Rules versus learning from examples</h3>
          <p>In normal programming, a person writes the rules. With a neural network, you give examples and the right answers. The network finds its own rules.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Normal program</th><th>Neural network</th></tr></thead>
            <tbody>
              <tr><td>You give it</td><td>Rules, written as code</td><td>Many examples, each with the right answer</td></tr>
              <tr><td>It gives you</td><td>Answers</td><td>Learned weights that turn inputs into answers</td></tr>
              <tr><td>Good for</td><td>Clear tasks, such as adding tax to a price</td><td>Fuzzy tasks, such as reading messy handwriting</td></tr>
              <tr><td>To improve it</td><td>Change the code</td><td>Give it more or better examples</td></tr>
            </tbody>
          </table>
          <p>Think about handwriting. It is very hard to write a rule for "what a 3 looks like". People write a 3 in many ways. But it is easy to collect thousands of 3s with the label "3". A network can learn from those.</p>
        </div>
        <div class="lc-card">
          <h3>How learning works, in short</h3>
          <p>At the start, the weights are random. So the network's answers are random too. Training then repeats four steps:</p>
          <ol class="lc-list">
            <li><strong>Guess:</strong> the network reads an example and gives an answer.</li>
            <li><strong>Compare:</strong> it checks the answer against the right label.</li>
            <li><strong>Adjust:</strong> it changes every weight a tiny amount, so the answer gets a little better.</li>
            <li><strong>Repeat:</strong> it does this for many examples, many times.</li>
          </ol>
          <p>After training, the weights are fixed. Now the network can answer for <em>new</em> inputs it has never seen. You will learn each of these steps in detail later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Where neural networks are used</h3>
          <table class="lc-table">
            <thead><tr><th>Area</th><th>Input</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td>Photos</td><td>Pixels of an image</td><td>"cat", "dog" or "car"</td></tr>
              <tr><td>Speech</td><td>Sound from a microphone</td><td>The words that were spoken</td></tr>
              <tr><td>Translation</td><td>A sentence in English</td><td>The same sentence in French</td></tr>
              <tr><td>Chat assistants</td><td>Your message</td><td>A written reply, one piece at a time</td></tr>
              <tr><td>Online shops</td><td>What you viewed and bought</td><td>Products you might like</td></tr>
              <tr><td>Banking</td><td>Details of a card payment</td><td>A fraud risk score</td></tr>
            </tbody>
          </table>
          <p>The pattern is always the same. Numbers go in, and numbers come out. Text, sound and images are first turned into numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: rules or a neural network?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Maya works as a junior data scientist in Bristol. For each task, should she write simple rules, or train a neural network?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="rules" data-label="Simple rules work"></div>
              <div data-sorter-target="bucket" data-bucket="network" data-label="A neural network helps"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="rules" data-why="This is one clear formula. A short line of code always gets it right.">Add 20% VAT to a price</li>
              <li data-bucket="network" data-why="Everyone writes digits differently. It is easier to learn from many labelled examples.">Read handwritten digits on a form</li>
              <li data-bucket="rules" data-why="Sorting has an exact rule. Python's sorted() does it perfectly.">Sort customer names A to Z</li>
              <li data-bucket="network" data-why="Voices, accents and noise vary a lot. Nobody can write rules for every sound.">Turn a voice message into text</li>
              <li data-bucket="rules" data-why="The rule is exact: count the characters and compare with 8.">Check that a password has at least 8 characters</li>
              <li data-bucket="network" data-why="A cat can be any colour, size or pose. A network learns this from labelled photos.">Find photos that contain a cat</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below has five parts. Part 1 loads <strong>make_moons</strong>, a small dataset of 200 points in two curved groups. Part 2 tries a rule written by a person. Part 3 trains a small neural network with scikit-learn. Part 4 asks it about new points, and Part 5 counts the numbers it learned.</p>
          <ol class="lc-list">
            <li>Run it. Compare the accuracy of the hand-written rule (Part 2) with the network's accuracy (Part 3).</li>
            <li>In Part 2, change <code>LIMIT = 0.25</code> to other values, such as <code>0.0</code> or <code>0.5</code>. Can you make the rule much better?</li>
            <li>In Part 3, change <code>HIDDEN = (8, 8)</code> to <code>(2,)</code>. A tiny network learns less. Then try <code>(16, 16)</code>.</li>
            <li>In Part 1, change <code>noise=0.2</code> to <code>noise=0.4</code>. The groups overlap more, so both methods get harder.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A neural network is layers of simple units joined by weights. Nobody writes its rules. It learns the weights from many examples, so it can handle fuzzy tasks like images and speech.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Rules vs learning: two ways to sort points into two groups.
        # The data is make_moons: two curved "moons" of points, group 0 and group 1.
        import warnings
        import numpy as np
        from sklearn.datasets import make_moons
        from sklearn.neural_network import MLPClassifier
        warnings.filterwarnings("ignore")    # hide "not finished" warnings for tiny networks

        # ── Part 1: the data ──
        print("== Part 1: the data ==")
        X, y = make_moons(n_samples=200, noise=0.2, random_state=42)
        print("Data:", X.shape[0], "examples, each with", X.shape[1], "input numbers")
        print("First 3 inputs:", X[:3].round(2).tolist(), "-> labels", y[:3].tolist())

        # ── Part 2: a rule written by a person ──
        print("\n== Part 2: a rule written by a person ==")
        # The rule: "points low down are group 1".
        LIMIT = 0.25
        def my_rule(point):
            return 1 if point[1] < LIMIT else 0

        rule_preds = np.array([my_rule(p) for p in X])
        print(f"Hand-written rule accuracy: {np.mean(rule_preds == y):.0%}")

        # ── Part 3: a small neural network learns from the examples ──
        print("\n== Part 3: a small neural network learns ==")
        HIDDEN = (8, 8)      # two hidden layers with 8 units each
        net = MLPClassifier(hidden_layer_sizes=HIDDEN, max_iter=2000, random_state=42)
        net.fit(X, y)        # learning: compare guesses with labels, adjust the numbers inside
        print(f"Neural network accuracy:    {net.score(X, y):.0%}")

        # ── Part 4: ask the trained network about new points ──
        print("\n== Part 4: new points the network has never seen ==")
        new_points = [[0.0, 1.0], [1.0, -0.5], [0.5, 0.25]]
        for point in new_points:
            prob = net.predict_proba([point])[0][1]
            print(f"  point {point}: group {net.predict([point])[0]}  (chance of group 1 = {prob:.2f})")

        # ── Part 5: count the numbers the network learned (its parameters) ──
        print("\n== Part 5: count the learned numbers ==")
        count = sum(w.size for w in net.coefs_) + sum(b.size for b in net.intercepts_)
        print(f"The network learned {count} numbers. Nobody wrote them by hand.")

        # Try it: in Part 2 change LIMIT, in Part 3 change HIDDEN to (2,) or (16, 16),
        # in Part 1 change noise=0.2 to 0.4.
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">How the Human Brain Inspired AI</h1>
        </div>
        <p class="lc-lead">Neural networks got their name from the brain. Early researchers looked at how brain cells pass signals. Then they built a very simple maths version of one cell. In this lesson, you will learn the parts of a real neuron. You will see how each part maps to an artificial neuron. You will also see where the comparison stops being true.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Left: a biological neuron. Dendrites receive signals, the cell body adds them up, the axon carries the signal away, and synapses pass it to the next neuron. Right: an artificial neuron with inputs x1 to x3, weights w1 to w3, a sum and activation, and one output. Below, four boxes map dendrites to inputs, synapses to weights, the cell body to sum plus activation, and the axon to the output.">
            <defs><marker id="nn2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="190" y="26" font-weight="700" fill="#f9a8d4">Biological neuron</text>
              <text x="580" y="26" font-weight="700" fill="#93c5fd">Artificial neuron</text>
              <line x1="390" y1="40" x2="390" y2="215" stroke="#4b4a78" stroke-dasharray="4 4"/>
              <g stroke="#10b981" stroke-width="2.5" fill="none" stroke-linecap="round">
                <path d="M78,110 L48,82 M48,82 L30,70 M48,82 L32,96"/>
                <path d="M74,124 L34,126 M34,126 L20,116 M34,126 L20,138"/>
                <path d="M80,140 L50,172 M50,172 L34,178 M50,172 L46,192"/>
              </g>
              <circle cx="100" cy="125" r="27" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <circle cx="100" cy="125" r="8" fill="#ec4899"/>
              <line x1="127" y1="125" x2="275" y2="125" stroke="#f59e0b" stroke-width="3"/>
              <g stroke="#f59e0b" stroke-width="2.5" fill="none" stroke-linecap="round"><path d="M275,125 L298,104 M275,125 L302,125 M275,125 L298,146"/></g>
              <g fill="#f59e0b"><circle cx="300" cy="102" r="4"/><circle cx="305" cy="125" r="4"/><circle cx="300" cy="148" r="4"/></g>
              <g stroke="#10b981" stroke-width="2.5" fill="none" stroke-linecap="round"><path d="M314,125 L340,125 M340,125 L360,108 M340,125 L360,142"/></g>
              <text x="52" y="58" font-size="12" fill="#6ee7b7">Dendrites</text>
              <text x="100" y="176" font-size="12" fill="#f9a8d4">Cell body</text>
              <text x="200" y="114" font-size="12" fill="#fcd34d">Axon</text>
              <text x="320" y="182" font-size="12" fill="#e2e0f0">Synapses</text>
              <line x1="314" y1="170" x2="308" y2="152" stroke="#9b99b8" stroke-width="1"/>
              <text x="352" y="94" font-size="11" fill="#9b99b8">next cell</text>
              <line x1="140" y1="205" x2="300" y2="205" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn2a)"/>
              <text x="220" y="196" font-size="11" fill="#9b99b8">signal travels this way</text>
              <g stroke="#9b99b8" stroke-width="1.5"><line x1="446" y1="70" x2="580" y2="112"/><line x1="446" y1="125" x2="572" y2="125"/><line x1="446" y1="180" x2="580" y2="138"/></g>
              <g fill="#27274e" stroke="#10b981" stroke-width="1.5"><circle cx="430" cy="70" r="16"/><circle cx="430" cy="125" r="16"/><circle cx="430" cy="180" r="16"/></g>
              <text x="430" y="75">x1</text><text x="430" y="130">x2</text><text x="430" y="185">x3</text>
              <g font-size="12" fill="#fcd34d"><text x="510" y="82">w1</text><text x="510" y="118">w2</text><text x="510" y="170">w3</text></g>
              <circle cx="610" cy="125" r="36" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="610" y="131" font-weight="700" font-size="15">Σ → f</text>
              <text x="610" y="182" font-size="11" fill="#9b99b8">sum, then activation</text>
              <line x1="646" y1="125" x2="716" y2="125" stroke="#f59e0b" stroke-width="2" marker-end="url(#nn2a)"/>
              <text x="681" y="114" font-size="12" fill="#fcd34d">output</text>
              <text x="736" y="130" font-weight="700">a</text>
              <text x="380" y="248" font-size="12" fill="#9b99b8">How the parts match</text>
              <g font-size="12.5">
                <rect x="12" y="262" width="176" height="64" rx="8" fill="#1f1f44" stroke="#10b981"/>
                <text x="100" y="287" fill="#6ee7b7">Dendrites</text><text x="100" y="311">→ inputs x</text>
                <rect x="200" y="262" width="176" height="64" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="288" y="287" fill="#fcd34d">Synapse strength</text><text x="288" y="311">→ weights w</text>
                <rect x="388" y="262" width="176" height="64" rx="8" fill="#1f1f44" stroke="#ec4899"/>
                <text x="476" y="287" fill="#f9a8d4">Cell body</text><text x="476" y="311">→ sum + activation</text>
                <rect x="576" y="262" width="176" height="64" rx="8" fill="#1f1f44" stroke="#3b82f6"/>
                <text x="664" y="287" fill="#93c5fd">Axon</text><text x="664" y="311">→ output a</text>
              </g>
            </g>
          </svg>
          <figcaption>A real neuron (left) and the simple maths version used in AI (right). The artificial neuron keeps the idea, not the biology.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The parts of a real neuron</h3>
          <p>A <strong>neuron</strong> is a nerve cell. It is the basic unit of the brain. Scientists estimate that a human brain has about 86 billion of them.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><strong>Dendrites</strong></td><td>Short branches that receive signals from other neurons</td></tr>
              <tr><td><strong>Cell body</strong></td><td>Collects the incoming signals and "decides" whether to send a signal on</td></tr>
              <tr><td><strong>Axon</strong></td><td>A long cable that carries the signal away from the cell body</td></tr>
              <tr><td><strong>Synapse</strong></td><td>The tiny gap where one neuron passes a signal to the next one, using chemicals</td></tr>
            </tbody>
          </table>
          <p>Some signals push the next neuron to fire. Others hold it back. If the total push is strong enough, the neuron <strong>fires</strong>. It sends a short electrical pulse, called a <strong>spike</strong>, down its axon. If the push is too weak, nothing happens.</p>
        </div>
        <div class="lc-card">
          <h3>From brain cell to maths</h3>
          <p>In 1943, Warren McCulloch and Walter Pitts described a simple maths model of a neuron. It added up its inputs and fired if the sum passed a <strong>threshold</strong> (a fixed limit). In 1949, Donald Hebb suggested an idea about learning. When two connected neurons are often active together, the connection between them gets stronger.</p>
          <p>These two ideas are still the heart of every artificial neuron:</p>
          <ol class="lc-list">
            <li>Each input is multiplied by a <strong>weight</strong>. The weight plays the part of the synapse strength.</li>
            <li>The neuron adds up the weighted inputs.</li>
            <li>An <strong>activation function</strong> decides what number goes out. The simplest one copies the "fire or not" idea.</li>
            <li><strong>Learning</strong> means changing the weights.</li>
          </ol>
          <p>Here is a worked example. A neuron has inputs 1, 1 and 0. The weights are 0.9, 0.6 and -0.8. The sum is 1×0.9 + 1×0.6 + 0×(-0.8) = 1.5. The threshold is 1.0. 1.5 is bigger, so the neuron fires.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow a signal</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order, from a signal arriving to the next neuron receiving it.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Signals from other neurons arrive at the dendrites</li>
              <li data-order="2">The cell body adds up the pushes and the holds</li>
              <li data-order="3">The total passes the threshold, so the neuron fires</li>
              <li data-order="4">A spike travels along the axon</li>
              <li data-order="5">At the synapses, chemicals carry the signal across the gap</li>
              <li data-order="6">The next neuron's dendrites receive the signal</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>What the analogy gets right and wrong</h3>
          <table class="lc-table">
            <thead><tr><th>Gets right</th><th>Gets wrong</th></tr></thead>
            <tbody>
              <tr><td>Many simple units work together</td><td>A real neuron is a complex living cell, not one line of maths</td></tr>
              <tr><td>Connections have different strengths</td><td>Real neurons send spikes over time. Artificial neurons send one number.</td></tr>
              <tr><td>Some inputs push, others hold back</td><td>Scientists still do not fully know how the brain learns. It probably does not use the exact method that networks use.</td></tr>
              <tr><td>Learning changes the connections</td><td>People learn from a few examples. Networks usually need many thousands.</td></tr>
              <tr><td>Knowledge is spread across many connections</td><td>The brain uses roughly 20 watts of power. Training a large network uses far more.</td></tr>
            </tbody>
          </table>
          <p>So treat the brain as an <em>inspiration</em>, not a blueprint. Modern neural networks are maths and code. They work well because of good maths, lots of data and fast computers. They do not work because they copy the brain closely.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor below builds the simple neuron from the worked example. It has three inputs, three connection strengths and a threshold. Part 2 makes one connection stronger and tests the neuron again.</p>
          <ol class="lc-list">
            <li>Run it. For each input pattern in Part 1, check the total by hand. Does the neuron fire?</li>
            <li>Look at the table from Part 2. One connection got stronger, and now the neuron fires more often. This is the idea behind learning.</li>
            <li>In Part 1, change <code>THRESHOLD</code> to <code>0.5</code>. Which patterns fire now?</li>
            <li>In Part 1, change the third strength from <code>-0.8</code> to <code>0.8</code>. The third input now pushes instead of holding back.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An artificial neuron borrows three ideas from the brain. They are weighted inputs, a sum with a threshold, and learning by changing connection strengths. Everything else about the brain is far more complex.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A very simple model of a neuron, inspired by the brain.
        # Signals come in, each one is scaled by a connection strength,
        # the neuron adds them up, and it "fires" if the total is big enough.

        # ── Part 1: a simple neuron with three connections ──
        print("== Part 1: a simple neuron ==")
        strengths = [0.9, 0.6, -0.8]       # like synapses: strong, medium, and one that holds back
        THRESHOLD = 1.0                    # the neuron fires only if the total reaches this

        def neuron(signals):
            total = 0
            for s, w in zip(signals, strengths):
                total += s * w             # each incoming signal is scaled by its connection
            fires = total >= THRESHOLD     # all or nothing, like a real spike
            return total, fires

        patterns = [
            [1, 0, 0],                     # only input 1 is active
            [1, 1, 0],                     # inputs 1 and 2 are active
            [1, 1, 1],                     # all three, but input 3 holds the neuron back
            [0, 1, 1],
        ]

        print("signals    total  output")
        for signals in patterns:
            total, fires = neuron(signals)
            print(f"{signals}  {total:5.2f}  {'FIRE' if fires else '-'}")

        # ── Part 2: "learning" makes one connection stronger ──
        # Learning in the brain changes connection strengths.
        # Here we make connection 1 stronger and test again.
        print("\n== Part 2: after making connection 1 stronger ==")
        strengths[0] = 1.3
        print("signals    total  output")
        for signals in patterns:
            total, fires = neuron(signals)
            print(f"{signals}  {total:5.2f}  {'FIRE' if fires else '-'}")

        # Try it: in Part 1 change THRESHOLD, make strengths[2] positive, or add a new pattern.
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">The Perceptron</h1>
        </div>
        <p class="lc-lead">The <strong>perceptron</strong> is the oldest learning neuron. It takes some inputs, adds them with weights, and answers 0 or 1. It also has a simple rule to learn its own weights from examples. In this lesson, you will train a perceptron on the AND and OR truth tables. Then you will see why it fails on XOR, and why that matters for the rest of this course.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="A perceptron. Inputs x1 and x2 are multiplied by weights w1 and w2 and added together with a bias b to give z. A step function turns z into 0 if z is 0 or less, and 1 if z is more than 0. The output is y hat.">
            <defs><marker id="nn3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#9b99b8" stroke-width="1.5"><line x1="80" y1="70" x2="266" y2="115" marker-end="url(#nn3a)"/><line x1="80" y1="180" x2="266" y2="135" marker-end="url(#nn3a)"/></g>
              <g fill="#27274e" stroke="#10b981" stroke-width="1.5"><circle cx="60" cy="70" r="20"/><circle cx="60" cy="180" r="20"/></g>
              <text x="60" y="75">x1</text><text x="60" y="185">x2</text>
              <g font-size="12.5" fill="#fcd34d"><text x="170" y="80">× w1</text><text x="170" y="182">× w2</text></g>
              <rect x="275" y="18" width="50" height="30" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="300" y="38">+ b</text>
              <line x1="300" y1="50" x2="300" y2="84" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn3a)"/>
              <circle cx="300" cy="125" r="34" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="300" y="131" font-size="18" font-weight="700">Σ</text>
              <text x="300" y="180" font-size="12">z = w1·x1 + w2·x2 + b</text>
              <line x1="336" y1="125" x2="406" y2="125" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn3a)"/>
              <text x="370" y="116" font-size="12" fill="#9b99b8">z</text>
              <rect x="410" y="60" width="170" height="130" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="495" y="82" font-weight="700" fill="#67e8f9">Step function</text>
              <line x1="430" y1="160" x2="565" y2="160" stroke="#4b4a78"/>
              <line x1="495" y1="165" x2="495" y2="96" stroke="#4b4a78"/>
              <path d="M432,155 L495,155 L495,112 L560,112" fill="none" stroke="#22d3ee" stroke-width="2.5"/>
              <g font-size="11" fill="#9b99b8"><text x="455" y="148">0</text><text x="535" y="106">1</text><text x="495" y="178">z = 0</text></g>
              <line x1="582" y1="125" x2="636" y2="125" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn3a)"/>
              <rect x="640" y="95" width="108" height="60" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="694" y="120" font-weight="700" fill="#6ee7b7">ŷ = 0 or 1</text>
              <text x="694" y="140" font-size="11" fill="#9b99b8">the answer</text>
              <rect x="140" y="208" width="480" height="30" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="228" fill="#fcd34d">Learning rule:  w = w + lr × (target − ŷ) × x</text>
            </g>
          </svg>
          <figcaption>A perceptron with two inputs. It adds the weighted inputs and the bias, then the step function gives 0 or 1. When the answer is wrong, the learning rule moves the weights.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Rosenblatt's perceptron</h3>
          <p>In 1958, the American psychologist Frank Rosenblatt described the perceptron. It was one of the first machines that could <em>learn</em> from examples. Rosenblatt also built a hardware version, the Mark I Perceptron, to recognise simple pictures.</p>
          <p>A perceptron does three things:</p>
          <ol class="lc-list">
            <li>Multiply each input by its weight: <code>w1·x1</code> and <code>w2·x2</code>.</li>
            <li>Add them up, then add the <strong>bias</strong> <code>b</code>. The result is called <code>z</code>.</li>
            <li>Pass <code>z</code> through the <strong>step function</strong>. It gives 1 if <code>z</code> is more than 0. Otherwise it gives 0.</li>
          </ol>
          <p>So the output <code>ŷ</code> (say "y hat") is always 0 or 1. The hat means "the model's guess". Some books use "z ≥ 0" instead of "z &gt; 0". The idea is the same.</p>
        </div>
        <div class="lc-card">
          <h3>The perceptron learning rule</h3>
          <p>The perceptron looks at one example at a time. It compares its guess <code>ŷ</code> with the right answer, the <code>target</code>. The <strong>error</strong> is <code>target − ŷ</code>. It can only be +1, 0 or −1.</p>
          <table class="lc-table">
            <thead><tr><th>Error</th><th>Meaning</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>The guess was right</td><td>Nothing changes</td></tr>
              <tr><td>+1</td><td>It said 0, but should say 1</td><td>Weights of active inputs go up, bias goes up</td></tr>
              <tr><td>−1</td><td>It said 1, but should say 0</td><td>Weights of active inputs go down, bias goes down</td></tr>
            </tbody>
          </table>
          <p>The update is <code>w = w + lr × error × x</code> and <code>b = b + lr × error</code>. The <strong>learning rate</strong> <code>lr</code> is a small number, such as 0.1. It sets the size of each change. If an input is 0, its weight does not change, because it did not cause the mistake.</p>
          <p>Take the very first update when the perceptron learns AND. The weights and bias start at 0. For the input (1, 1), z = 0, so the guess ŷ is 0. The target is 1, so the error is +1. Both weights and the bias go up by 0.1. Now w = [0.1, 0.1] and b = 0.1.</p>
          <p>Part 1 in the code editor below does this one update step by step. In code, the rule is three short lines. The <code>@</code> sign means "multiply matching numbers and add them up".</p>
        </div>
        <div class="lc-card">
          <h3>Activity: watch a perceptron learn AND</h3>
          <p>These are the real numbers from Part 2 in the code editor below. The learning rate is 0.1. One <strong>epoch</strong> means one pass over all four examples.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Start">w = [0, 0], b = 0. AND targets: (0,0)→0, (0,1)→0, (1,0)→0, (1,1)→1.</li>
              <li data-kind="thought" data-label="Epoch 1">For the first three examples, z = 0, so ŷ = 0. That is right. For (1,1), z = 0 and ŷ = 0, but the target is 1.</li>
              <li data-kind="result" data-label="Update">Error +1. Now w = [0.1, 0.1] and b = 0.1. One mistake in this epoch.</li>
              <li data-kind="warn" data-label="Epoch 2">Now (0,0) gives z = 0.1, so ŷ = 1. That is wrong. The bias goes down to 0.0. The perceptron overshot, so it corrects itself.</li>
              <li data-kind="thought" data-label="Epochs 3 to 5">The mistakes go from 3, to 3, to 2, then 1. Each mistake moves the line a little.</li>
              <li data-kind="check" data-label="Epoch 6">w = [0.2, 0.1], b = -0.2. Zero mistakes. Only (1,1) gives z &gt; 0 (z = 0.1).</li>
              <li data-kind="answer" data-label="Learned">The perceptron found weights for AND by itself. Nobody wrote them.</li>
            </ol>
          </div>
        </div>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Three plots of the four points (0,0), (0,1), (1,0) and (1,1). For AND, one straight line separates the single 1 from the three 0s. For OR, one line separates the single 0 from the three 1s. For XOR, the two 1s are on opposite corners, so no single straight line can separate them.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="120" y="30" font-weight="700" fill="#c4b5fd">AND</text>
              <line x1="45" y1="200" x2="210" y2="200" stroke="#4b4a78"/><line x1="45" y1="200" x2="45" y2="55" stroke="#4b4a78"/>
              <text x="205" y="218" font-size="11" fill="#9b99b8">x1</text><text x="31" y="62" font-size="11" fill="#9b99b8">x2</text>
              <line x1="109" y1="79" x2="186" y2="156" stroke="#f59e0b" stroke-width="2.5"/>
              <circle cx="65" cy="200" r="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2.5"/>
              <circle cx="65" cy="90" r="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2.5"/>
              <circle cx="175" cy="200" r="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2.5"/>
              <circle cx="175" cy="90" r="9" fill="#10b981"/>
              <text x="120" y="244" font-size="12" fill="#6ee7b7">one line works</text>
              <text x="370" y="30" font-weight="700" fill="#c4b5fd">OR</text>
              <line x1="295" y1="200" x2="460" y2="200" stroke="#4b4a78"/><line x1="295" y1="200" x2="295" y2="55" stroke="#4b4a78"/>
              <text x="455" y="218" font-size="11" fill="#9b99b8">x1</text><text x="281" y="62" font-size="11" fill="#9b99b8">x2</text>
              <line x1="304" y1="134" x2="381" y2="211" stroke="#f59e0b" stroke-width="2.5"/>
              <circle cx="315" cy="200" r="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2.5"/>
              <circle cx="315" cy="90" r="9" fill="#10b981"/>
              <circle cx="425" cy="200" r="9" fill="#10b981"/>
              <circle cx="425" cy="90" r="9" fill="#10b981"/>
              <text x="370" y="244" font-size="12" fill="#6ee7b7">one line works</text>
              <text x="620" y="30" font-weight="700" fill="#c4b5fd">XOR</text>
              <line x1="545" y1="200" x2="710" y2="200" stroke="#4b4a78"/><line x1="545" y1="200" x2="545" y2="55" stroke="#4b4a78"/>
              <text x="705" y="218" font-size="11" fill="#9b99b8">x1</text><text x="531" y="62" font-size="11" fill="#9b99b8">x2</text>
              <line x1="554" y1="134" x2="631" y2="211" stroke="#f59e0b" stroke-width="2" stroke-dasharray="5 4"/>
              <text x="690" y="150" font-size="18" font-weight="700" fill="#ec4899">?</text>
              <circle cx="565" cy="200" r="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2.5"/>
              <circle cx="565" cy="90" r="9" fill="#10b981"/>
              <circle cx="675" cy="200" r="9" fill="#10b981"/>
              <circle cx="675" cy="90" r="8" fill="#1f1f44" stroke="#ec4899" stroke-width="2.5"/>
              <text x="620" y="244" font-size="12" fill="#f9a8d4">no single line works</text>
            </g>
          </svg>
          <figcaption>Green dots are inputs where the answer is 1. Pink rings are inputs where the answer is 0. A perceptron can only draw one straight line, so it can learn AND and OR, but not XOR.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why XOR is impossible for one perceptron</h3>
          <p><strong>XOR</strong> means "exclusive or". It gives 1 when exactly one input is 1.</p>
          <table class="lc-table">
            <thead><tr><th>x1</th><th>x2</th><th>AND</th><th>OR</th><th>XOR</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
              <tr><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td></tr>
              <tr><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr>
              <tr><td>1</td><td>1</td><td>1</td><td>1</td><td>0</td></tr>
            </tbody>
          </table>
          <p>The rule <code>w1·x1 + w2·x2 + b = 0</code> is a straight line. Points on one side get 1, and points on the other side get 0. Look at the XOR plot above. The two 1s sit on opposite corners. Any straight line that puts both green dots on one side also catches a pink ring.</p>
          <p>Data that one straight line can split is called <strong>linearly separable</strong>. If the data is linearly separable, the perceptron rule is proven to find a good line. XOR is not linearly separable, so the rule never stops making mistakes.</p>
          <p>In 1969, Marvin Minsky and Seymour Papert wrote a book that showed these limits clearly. Interest in neural networks dropped for years. The fix is to stack neurons in layers, with a <strong>hidden layer</strong> in the middle. You will see a network solve XOR later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor below does one update by hand. Part 2 trains a perceptron on AND, OR and XOR. It prints every epoch for AND.</p>
          <ol class="lc-list">
            <li>Run it. Check that Part 1 gives w = [0.1, 0.1] and b = 0.1. Check that AND and OR reach 4/4, but XOR stays at 2/4.</li>
            <li>In Part 2, change <code>LR = 0.1</code> to <code>1.0</code>. AND makes the same mistakes in each epoch, but the weights are 10 times bigger. The weights start at 0, so here the learning rate only changes the scale.</li>
            <li>In Part 2, change <code>EPOCHS = 20</code> to <code>200</code>. XOR still fails. More training cannot fix a model that is too simple.</li>
            <li>In Part 2, add a <code>"NAND"</code> target with the values <code>[1, 1, 1, 0]</code>. Can a perceptron learn it?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A perceptron draws one straight line and learns it by nudging weights after each mistake. It can learn AND and OR, but not XOR. To solve problems like XOR, you need more than one layer of neurons.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The perceptron: one update step by hand, then learn AND and OR, then try XOR.
        import numpy as np

        # ── Part 1: one update step by hand ──
        print("== Part 1: one update step ==")
        w = np.array([0.0, 0.0])   # weights start at 0
        b = 0.0                    # bias starts at 0
        lr = 0.1                   # learning rate

        x = np.array([1, 1])       # example: x1 = 1, x2 = 1
        target = 1                 # AND says 1 AND 1 = 1

        z = w @ x + b              # @ multiplies matching numbers and adds them up
        y_hat = 1 if z > 0 else 0  # step function
        error = target - y_hat
        w = w + lr * error * x     # the perceptron rule
        b = b + lr * error
        print("y_hat:", y_hat, "error:", error)
        print("new w:", w, "new b:", b)

        # ── Part 2: learn AND, OR and XOR with the perceptron rule ──
        print("\n== Part 2: AND, OR and XOR ==")
        X = np.array([[0, 0], [0, 1], [1, 0], [1, 1]])
        TARGETS = {
            "AND": np.array([0, 0, 0, 1]),
            "OR":  np.array([0, 1, 1, 1]),
            "XOR": np.array([0, 1, 1, 0]),
        }
        LR = 0.1          # learning rate: how big each correction is
        EPOCHS = 20       # an epoch is one pass over all 4 examples

        def step(z):
            return 1 if z > 0 else 0          # the step function: fire (1) or not (0)

        def train(y, show=False):
            w = np.zeros(2)                   # start with weights 0 and bias 0
            b = 0.0
            for epoch in range(1, EPOCHS + 1):
                mistakes = 0
                for x, target in zip(X, y):
                    y_hat = step(w @ x + b)     # w @ x is w1*x1 + w2*x2
                    error = target - y_hat      # +1, 0 or -1
                    if error != 0:
                        w = w + LR * error * x  # the perceptron rule
                        b = b + LR * error
                        mistakes += 1
                if show:
                    print(f"  epoch {epoch}: mistakes = {mistakes}, w = {w.round(2)}, b = {b:.2f}")
                if mistakes == 0:
                    break
            return w, b

        for name, y in TARGETS.items():
            print(f"{name}:")
            w, b = train(y, show=(name == "AND"))
            preds = [step(w @ x + b) for x in X]
            correct = sum(int(p == t) for p, t in zip(preds, y))
            print(f"  predictions {preds}, targets {y.tolist()} -> {correct}/4 correct\n")

        print("XOR never reaches 4/4: no single straight line splits its points.")

        # Try it: in Part 1 change target to 0; in Part 2 change LR to 1.0, change EPOCHS,
        # or add a "NAND" target: [1, 1, 1, 0].
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Neurons, Weights and Biases</h1>
        </div>
        <p class="lc-lead">Every neuron in a network does the same small calculation. It multiplies each input by a <strong>weight</strong>, adds the results, and adds a <strong>bias</strong>. In this lesson, you will work out this <strong>weighted sum</strong> by hand with real numbers. You will learn what weights and biases do. You will also count how many numbers a layer has to learn.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Maya's neuron. Input 1, opened last email, is 1 and its weight is 1.5, giving 1.5. Input 2, visits this month, is 3 with weight 0.4, giving 1.2. Input 3, days since last purchase, is 10 with weight minus 0.1, giving minus 1.0. The sum is 1.7. Adding the bias of minus 1.0 gives z equals 0.7.">
            <defs><marker id="nn4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g font-size="12" font-weight="700" fill="#9b99b8"><text x="100" y="24">Inputs x</text><text x="232" y="24">Weights w</text><text x="335" y="24">x × w</text></g>
              <g fill="#1f1f44" stroke="#3b82f6"><rect x="10" y="40" width="180" height="44" rx="8"/><rect x="10" y="113" width="180" height="44" rx="8"/><rect x="10" y="186" width="180" height="44" rx="8"/></g>
              <g font-size="11.5" fill="#9b99b8"><text x="100" y="57">opened last email</text><text x="100" y="130">visits this month</text><text x="100" y="203">days since last buy</text></g>
              <g font-weight="700"><text x="100" y="76">x1 = 1</text><text x="100" y="149">x2 = 3</text><text x="100" y="222">x3 = 10</text></g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn4a)"><line x1="192" y1="62" x2="286" y2="62"/><line x1="192" y1="135" x2="286" y2="135"/><line x1="192" y1="208" x2="286" y2="208"/></g>
              <g font-size="12.5" fill="#fcd34d"><text x="238" y="54">× 1.5</text><text x="238" y="127">× 0.4</text><text x="238" y="200">× −0.1</text></g>
              <g fill="#27274e" stroke="#8b5cf6"><rect x="290" y="44" width="90" height="36" rx="8"/><rect x="290" y="117" width="90" height="36" rx="8"/><rect x="290" y="190" width="90" height="36" rx="8"/></g>
              <g font-weight="700" fill="#c4b5fd"><text x="335" y="67">1.5</text><text x="335" y="140">1.2</text><text x="335" y="213">−1.0</text></g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn4a)"><line x1="382" y1="62" x2="456" y2="122"/><line x1="382" y1="135" x2="456" y2="135"/><line x1="382" y1="208" x2="456" y2="148"/></g>
              <rect x="460" y="105" width="130" height="60" rx="10" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="525" y="130" font-weight="700" fill="#f9a8d4">Σ = 1.7</text>
              <text x="525" y="150" font-size="11" fill="#9b99b8">1.5 + 1.2 − 1.0</text>
              <rect x="470" y="30" width="110" height="34" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="525" y="52" fill="#6ee7b7">+ b = −1.0</text>
              <line x1="525" y1="66" x2="525" y2="101" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn4a)"/>
              <line x1="592" y1="135" x2="636" y2="135" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn4a)"/>
              <rect x="640" y="105" width="110" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="695" y="132" font-size="16" font-weight="700" fill="#67e8f9">z = 0.7</text>
              <text x="695" y="152" font-size="11" fill="#9b99b8">1.7 + (−1.0)</text>
              <text x="610" y="222" font-size="12" fill="#9b99b8">z = w1·x1 + w2·x2 + w3·x3 + b</text>
            </g>
          </svg>
          <figcaption>Maya's neuron for one customer. Multiply each input by its weight, add the three products, then add the bias. The result is z = 0.7.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The weighted sum</h3>
          <p>Maya, a junior data scientist in Bristol, builds a neuron. It scores how likely a customer is to click an email offer. It has three inputs:</p>
          <ul class="lc-list">
            <li><code>x1</code>: did the customer open the last email? (1 = yes, 0 = no)</li>
            <li><code>x2</code>: how many times they visited the website this month</li>
            <li><code>x3</code>: how many days since they last bought something</li>
          </ul>
          <p>The neuron calculates one number, <code>z</code>:</p>
          <p><code>z = w1·x1 + w2·x2 + w3·x3 + b</code></p>
          <p>We write this in short as <code>z = w·x + b</code>. The dot means "multiply matching numbers and add them up". This is called the <strong>dot product</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Input</th><th>x</th><th>w</th><th>x × w</th></tr></thead>
            <tbody>
              <tr><td>opened last email</td><td>1</td><td>1.5</td><td>1.5</td></tr>
              <tr><td>visits this month</td><td>3</td><td>0.4</td><td>1.2</td></tr>
              <tr><td>days since last buy</td><td>10</td><td>−0.1</td><td>−1.0</td></tr>
              <tr><td colspan="3"><strong>Sum</strong></td><td><strong>1.7</strong></td></tr>
              <tr><td colspan="3"><strong>Plus bias b = −1.0</strong></td><td><strong>z = 0.7</strong></td></tr>
            </tbody>
          </table>
          <p>Later, an <strong>activation function</strong> turns <code>z</code> into the neuron's output. In this lesson we stop at <code>z</code>.</p>
        </div>
        <div class="lc-card">
          <h3>What weights and biases do</h3>
          <table class="lc-table">
            <thead><tr><th>If the weight is…</th><th>Then the input…</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Positive</td><td>pushes z up</td><td>More visits make a click more likely (0.4)</td></tr>
              <tr><td>Negative</td><td>pushes z down</td><td>More days without buying make a click less likely (−0.1)</td></tr>
              <tr><td>Large (far from 0)</td><td>matters a lot</td><td>Opening the last email adds 1.5</td></tr>
              <tr><td>Zero</td><td>is ignored</td><td>A weight of 0 makes the input do nothing</td></tr>
            </tbody>
          </table>
          <p>Be careful: a small weight does not always mean a small effect. The input size matters too. Here <code>w3</code> is only −0.1, but <code>x3</code> is 10. So it takes 1.0 away from the sum.</p>
          <p>The <strong>bias</strong> is the neuron's starting score. It is the value of <code>z</code> when every input is 0. A negative bias makes the neuron harder to "switch on". A positive bias makes it easier. In the perceptron, the bias works like a threshold moved to the other side: <code>b = −threshold</code>.</p>
          <p>Nobody chooses these numbers by hand in a real network. They start random, and training finds good values.</p>
        </div>
        <div class="lc-card">
          <h3>Check it in NumPy</h3>
          <p>In NumPy, one line does the whole sum. <code>w * x</code> multiplies matching numbers, one pair at a time. <code>np.dot(w, x)</code> also adds them up. For Maya's customer, the products are 1.5, 1.2 and −1.0. Their sum is 1.7, and the bias brings z to 0.7.</p>
          <p>Part 1 in the code editor below does the sum by hand, and Part 2 does it with NumPy. Part 2 uses <code>round</code> because computers store numbers like 0.1 with tiny errors.</p>
        </div>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 240" role="img" aria-label="A layer with 3 inputs and 4 neurons. Every input connects to every neuron, giving 12 connections, so 12 weights. Each neuron also has one bias, so 4 biases. In total the layer has 16 parameters.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <g stroke="#4b4a78" stroke-width="1.2"><line x1="136" y1="60" x2="314" y2="45"/><line x1="136" y1="60" x2="314" y2="95"/><line x1="136" y1="60" x2="314" y2="145"/><line x1="136" y1="60" x2="314" y2="195"/><line x1="136" y1="115" x2="314" y2="45"/><line x1="136" y1="115" x2="314" y2="95"/><line x1="136" y1="115" x2="314" y2="145"/><line x1="136" y1="115" x2="314" y2="195"/><line x1="136" y1="170" x2="314" y2="45"/><line x1="136" y1="170" x2="314" y2="95"/><line x1="136" y1="170" x2="314" y2="145"/><line x1="136" y1="170" x2="314" y2="195"/></g>
              <g fill="#27274e" stroke="#3b82f6" stroke-width="1.5"><circle cx="120" cy="60" r="16"/><circle cx="120" cy="115" r="16"/><circle cx="120" cy="170" r="16"/></g>
              <text x="120" y="65">x1</text><text x="120" y="120">x2</text><text x="120" y="175">x3</text>
              <g fill="#27274e" stroke="#ec4899" stroke-width="1.5"><circle cx="330" cy="45" r="16"/><circle cx="330" cy="95" r="16"/><circle cx="330" cy="145" r="16"/><circle cx="330" cy="195" r="16"/></g>
              <g font-size="11" fill="#6ee7b7" text-anchor="start"><text x="352" y="49">+ b1</text><text x="352" y="99">+ b2</text><text x="352" y="149">+ b3</text><text x="352" y="199">+ b4</text></g>
              <text x="120" y="222" font-size="12" fill="#9b99b8">3 inputs</text>
              <text x="330" y="230" font-size="12" fill="#9b99b8">4 neurons</text>
              <text x="225" y="22" font-size="12" fill="#fcd34d">12 lines = 12 weights</text>
              <rect x="420" y="30" width="330" height="180" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <g text-anchor="start">
                <text x="440" y="58" fill="#fcd34d">weights: 3 inputs × 4 neurons = 12</text>
                <text x="440" y="86" fill="#6ee7b7">biases: one per neuron = 4</text>
                <text x="440" y="114" font-weight="700">parameters: 12 + 4 = 16</text>
                <line x1="440" y1="132" x2="730" y2="132" stroke="#4b4a78"/>
                <text x="440" y="156" font-size="12" fill="#9b99b8">rule: inputs × neurons + neurons</text>
                <text x="440" y="184" font-size="12" fill="#9b99b8">64 inputs, 10 neurons: 640 + 10 = 650</text>
              </g>
            </g>
          </svg>
          <figcaption>In a layer, every input connects to every neuron. Each connection has one weight, and each neuron has one bias.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Counting parameters</h3>
          <p>A <strong>parameter</strong> is a number the network learns. Weights and biases are the parameters.</p>
          <ul class="lc-list">
            <li>One neuron with <code>n</code> inputs has <code>n</code> weights and 1 bias. That is <code>n + 1</code> parameters. Maya's neuron has 3 + 1 = 4.</li>
            <li>A <strong>layer</strong> is a group of neurons that all read the same inputs. A layer with <code>n</code> inputs and <code>m</code> neurons has <code>n × m + m</code> parameters.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Inputs</th><th>Neurons</th><th>Weights</th><th>Biases</th><th>Parameters</th></tr></thead>
            <tbody>
              <tr><td>3</td><td>1</td><td>3</td><td>1</td><td>4</td></tr>
              <tr><td>3</td><td>4</td><td>12</td><td>4</td><td>16</td></tr>
              <tr><td>64 (an 8×8 image)</td><td>10</td><td>640</td><td>10</td><td>650</td></tr>
              <tr><td>784 (a 28×28 image)</td><td>128</td><td>100,352</td><td>128</td><td>100,480</td></tr>
            </tbody>
          </table>
          <p>The count grows fast. Large language models have billions of parameters, but each one is just a weight or a bias like these.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which way does z move?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Start from Maya's neuron, where z = 0.7. Here x = [1, 3, 10], w = [1.5, 0.4, −0.1] and b = −1.0. Make one change. Does z go up, go down, or stay the same?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="up" data-label="z goes up"></div>
              <div data-sorter-target="bucket" data-bucket="down" data-label="z goes down"></div>
              <div data-sorter-target="bucket" data-bucket="same" data-label="z stays the same"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="up" data-why="The weight 0.4 is positive. Two more visits add 2 × 0.4 = 0.8, so z = 1.5.">Visits go from 3 to 5</li>
              <li data-bucket="down" data-why="The weight −0.1 is negative. Ten more days add 10 × −0.1 = −1.0, so z = −0.3.">Days since last buy go from 10 to 20</li>
              <li data-bucket="down" data-why="The bias is added straight to z. One less in the bias means one less in z, so z = −0.3.">The bias changes from −1.0 to −2.0</li>
              <li data-bucket="up" data-why="The bias goes up by 1.0, so z goes up by 1.0 to 1.7.">The bias changes from −1.0 to 0.0</li>
              <li data-bucket="same" data-why="If a weight is 0, its input is multiplied by 0. Changing that input changes nothing.">w1 is 0, and "opened last email" changes from 1 to 0</li>
              <li data-bucket="up" data-why="With x3 = 10, the product changes from −1.0 to +1.0. That adds 2.0, so z = 2.7.">w3 changes from −0.1 to 0.1</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below works out Maya's neuron by hand (Part 1) and with NumPy (Part 2). Part 3 changes one input. Part 4 builds a layer of 4 neurons, and Part 5 counts its parameters.</p>
          <ol class="lc-list">
            <li>Run it. Check that the hand sum in Part 1 and the NumPy result in Part 2 are both 0.7.</li>
            <li>Change <code>b = -1.0</code> to <code>b = 0.0</code>. Maya's z in Parts 1 and 2 goes up by exactly 1.0, to 1.7.</li>
            <li>Set <code>w[2] = 0.0</code> after the line that creates <code>w</code>. Now "days since last buy" is ignored, so the 30-day customer in Part 3 gets the same z.</li>
            <li>In Part 4, change <code>np.random.randn(4, 3)</code> to <code>np.random.randn(5, 3)</code>. The layer now has 5 neurons. How many parameters does it have? Check your answer with the rule.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A neuron computes z = w·x + b. Weights set how much each input matters, and in which direction. The bias sets the starting score. A layer with n inputs and m neurons learns n × m + m parameters.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # One neuron: z = w . x + b, worked out by hand and with NumPy.
        import numpy as np

        # Maya's neuron scores how likely a customer is to click an email offer.
        names = ["opened last email", "visits this month", "days since last buy"]
        x = np.array([1, 3, 10])            # inputs for one customer
        w = np.array([1.5, 0.4, -0.1])      # weights: how much each input matters
        b = -1.0                            # bias: the starting score

        # ── Part 1: by hand: multiply each input by its weight, then add them up ──
        print("== Part 1: the sum by hand ==")
        total = 0.0
        for name, xi, wi in zip(names, x, w):
            print(f"{name:20} x = {xi:3}   w = {wi:5}   x*w = {xi * wi:5.2f}")
            total += xi * wi
        z = total + b
        print(f"sum of x*w = {total:.2f}, plus bias {b} -> z = {z:.2f}")

        # ── Part 2: the same with NumPy ──
        print("\n== Part 2: the same with NumPy ==")
        print("w * x:", w * x)                  # multiplies matching numbers, one pair at a time
        z = np.dot(w, x) + b                    # np.dot also adds them up
        print("NumPy: z =", round(z, 2))        # round, because 0.1 is stored with tiny errors

        # ── Part 3: change one input and watch z move ──
        print("\n== Part 3: change one input ==")
        x2 = x.copy()
        x2[2] = 30                          # this customer has not bought for 30 days
        print("After 30 days with no purchase: z =", round(np.dot(w, x2) + b, 2))

        # ── Part 4: a layer of 4 neurons, each with its own weights and bias ──
        print("\n== Part 4: a layer of 4 neurons ==")
        np.random.seed(42)
        W = np.random.randn(4, 3).round(1)  # 4 neurons x 3 inputs
        B = np.zeros(len(W))                # one bias per neuron
        for i in range(len(W)):
            print(f"neuron {i}: w = {W[i]}, z = {np.dot(W[i], x) + B[i]:.2f}")

        # ── Part 5: count the parameters (the numbers the network learns) ──
        print("\n== Part 5: count the parameters ==")
        print("Parameters in this layer:", W.size, "weights +", B.size, "biases =", W.size + B.size)

        # Try it: change b to 0.0, set w[2] = 0.0, or in Part 4 make 5 neurons with np.random.randn(5, 3).
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Activation Functions (Sigmoid, ReLU, Tanh)</h1>
        </div>
        <p class="lc-lead">A neuron first works out a weighted sum, z = w·x + b. Then it passes z through an <strong>activation function</strong> to get its output, a = f(z). In this lesson you will meet the three most common activation functions: sigmoid, tanh and ReLU. You will also see why a network without them cannot learn curved patterns.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Three graphs side by side on the same scale. Sigmoid is an S-shaped curve from 0 to 1 that passes 0.5 at z equals 0. Tanh is an S-shaped curve from minus 1 to 1 that passes 0 at z equals 0. ReLU is flat at 0 for negative z and then a straight line going up for positive z.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="15" y="15" width="230" height="230" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="130.0" y="38" font-weight="700" fill="#c4b5fd">sigmoid</text>
              <line x1="30" y1="146.4" x2="230" y2="146.4" stroke="#4b4a78"/>
              <line x1="130.0" y1="50" x2="130.0" y2="200" stroke="#4b4a78"/>
              <line x1="30" y1="103.6" x2="230" y2="103.6" stroke="#4b4a78" stroke-dasharray="3 4"/>
              <text x="26" y="107.6" font-size="10.5" fill="#9b99b8" text-anchor="end">1</text>
              <line x1="30" y1="189.3" x2="230" y2="189.3" stroke="#4b4a78" stroke-dasharray="3 4"/>
              <text x="26" y="193.3" font-size="10.5" fill="#9b99b8" text-anchor="end">-1</text>
              <text x="26" y="150.4" font-size="10.5" fill="#9b99b8" text-anchor="end">0</text>
              <polyline points="30.0,144.4 31.7,144.3 33.3,144.2 35.0,144.1 36.7,144.0 38.3,143.9 40.0,143.7 41.7,143.6 43.3,143.5 45.0,143.3 46.7,143.2 48.3,143.0 50.0,142.9 51.7,142.7 53.3,142.5 55.0,142.3 56.7,142.2 58.3,142.0 60.0,141.8 61.7,141.5 63.3,141.3 65.0,141.1 66.7,140.9 68.3,140.6 70.0,140.3 71.7,140.1 73.3,139.8 75.0,139.5 76.7,139.2 78.3,138.9 80.0,138.6 81.7,138.3 83.3,138.0 85.0,137.6 86.7,137.3 88.3,136.9 90.0,136.5 91.7,136.1 93.3,135.7 95.0,135.3 96.7,134.9 98.3,134.5 100.0,134.0 101.7,133.6 103.3,133.1 105.0,132.7 106.7,132.2 108.3,131.7 110.0,131.2 111.7,130.7 113.3,130.2 115.0,129.7 116.7,129.2 118.3,128.7 120.0,128.2 121.7,127.7 123.3,127.1 125.0,126.6 126.7,126.1 128.3,125.5 130.0,125.0 131.7,124.5 133.3,123.9 135.0,123.4 136.7,122.9 138.3,122.3 140.0,121.8 141.7,121.3 143.3,120.8 145.0,120.3 146.7,119.8 148.3,119.3 150.0,118.8 151.7,118.3 153.3,117.8 155.0,117.3 156.7,116.9 158.3,116.4 160.0,116.0 161.7,115.5 163.3,115.1 165.0,114.7 166.7,114.3 168.3,113.9 170.0,113.5 171.7,113.1 173.3,112.7 175.0,112.4 176.7,112.0 178.3,111.7 180.0,111.4 181.7,111.1 183.3,110.8 185.0,110.5 186.7,110.2 188.3,109.9 190.0,109.7 191.7,109.4 193.3,109.1 195.0,108.9 196.7,108.7 198.3,108.5 200.0,108.2 201.7,108.0 203.3,107.8 205.0,107.7 206.7,107.5 208.3,107.3 210.0,107.1 211.7,107.0 213.3,106.8 215.0,106.7 216.7,106.5 218.3,106.4 220.0,106.3 221.7,106.1 223.3,106.0 225.0,105.9 226.7,105.8 228.3,105.7 230.0,105.6" fill="none" stroke="#8b5cf6" stroke-width="3"/>
              <circle cx="130.0" cy="125.0" r="4" fill="#c4b5fd"/>
              <text x="230" y="162.4" font-size="11" fill="#9b99b8" text-anchor="end">z</text>
              <text x="130.0" y="222" font-size="12" fill="#e2e0f0">range 0 to 1</text>
              <text x="130.0" y="240" font-size="11" fill="#9b99b8">f(0) = 0.5</text>
              <rect x="260" y="15" width="230" height="230" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="375.0" y="38" font-weight="700" fill="#67e8f9">tanh</text>
              <line x1="275" y1="146.4" x2="475" y2="146.4" stroke="#4b4a78"/>
              <line x1="375.0" y1="50" x2="375.0" y2="200" stroke="#4b4a78"/>
              <line x1="275" y1="103.6" x2="475" y2="103.6" stroke="#4b4a78" stroke-dasharray="3 4"/>
              <text x="271" y="107.6" font-size="10.5" fill="#9b99b8" text-anchor="end">1</text>
              <line x1="275" y1="189.3" x2="475" y2="189.3" stroke="#4b4a78" stroke-dasharray="3 4"/>
              <text x="271" y="193.3" font-size="10.5" fill="#9b99b8" text-anchor="end">-1</text>
              <text x="271" y="150.4" font-size="10.5" fill="#9b99b8" text-anchor="end">0</text>
              <polyline points="275.0,189.1 276.7,189.1 278.3,189.0 280.0,189.0 281.7,189.0 283.3,188.9 285.0,188.9 286.7,188.9 288.3,188.8 290.0,188.8 291.7,188.7 293.3,188.7 295.0,188.6 296.7,188.5 298.3,188.4 300.0,188.3 301.7,188.2 303.3,188.1 305.0,188.0 306.7,187.9 308.3,187.7 310.0,187.6 311.7,187.4 313.3,187.2 315.0,187.0 316.7,186.8 318.3,186.5 320.0,186.2 321.7,185.9 323.3,185.6 325.0,185.2 326.7,184.8 328.3,184.4 330.0,183.9 331.7,183.4 333.3,182.8 335.0,182.2 336.7,181.5 338.3,180.7 340.0,179.9 341.7,179.1 343.3,178.1 345.0,177.1 346.7,176.0 348.3,174.9 350.0,173.6 351.7,172.3 353.3,170.9 355.0,169.4 356.7,167.9 358.3,166.2 360.0,164.5 361.7,162.7 363.3,160.8 365.0,158.9 366.7,156.9 368.3,154.9 370.0,152.8 371.7,150.7 373.3,148.6 375.0,146.4 376.7,144.3 378.3,142.2 380.0,140.0 381.7,138.0 383.3,135.9 385.0,133.9 386.7,132.0 388.3,130.1 390.0,128.3 391.7,126.6 393.3,125.0 395.0,123.4 396.7,121.9 398.3,120.5 400.0,119.2 401.7,118.0 403.3,116.8 405.0,115.7 406.7,114.7 408.3,113.8 410.0,112.9 411.7,112.1 413.3,111.4 415.0,110.7 416.7,110.1 418.3,109.5 420.0,109.0 421.7,108.5 423.3,108.0 425.0,107.6 426.7,107.3 428.3,106.9 430.0,106.6 431.7,106.3 433.3,106.1 435.0,105.9 436.7,105.6 438.3,105.4 440.0,105.3 441.7,105.1 443.3,105.0 445.0,104.8 446.7,104.7 448.3,104.6 450.0,104.5 451.7,104.4 453.3,104.3 455.0,104.3 456.7,104.2 458.3,104.1 460.0,104.1 461.7,104.0 463.3,104.0 465.0,104.0 466.7,103.9 468.3,103.9 470.0,103.9 471.7,103.8 473.3,103.8 475.0,103.8" fill="none" stroke="#22d3ee" stroke-width="3"/>
              <circle cx="375.0" cy="146.4" r="4" fill="#67e8f9"/>
              <text x="475" y="162.4" font-size="11" fill="#9b99b8" text-anchor="end">z</text>
              <text x="375.0" y="222" font-size="12" fill="#e2e0f0">range -1 to 1</text>
              <text x="375.0" y="240" font-size="11" fill="#9b99b8">f(0) = 0</text>
              <rect x="505" y="15" width="230" height="230" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="620.0" y="38" font-weight="700" fill="#6ee7b7">ReLU</text>
              <line x1="520" y1="146.4" x2="720" y2="146.4" stroke="#4b4a78"/>
              <line x1="620.0" y1="50" x2="620.0" y2="200" stroke="#4b4a78"/>
              <line x1="520" y1="103.6" x2="720" y2="103.6" stroke="#4b4a78" stroke-dasharray="3 4"/>
              <text x="516" y="107.6" font-size="10.5" fill="#9b99b8" text-anchor="end">1</text>
              <line x1="520" y1="189.3" x2="720" y2="189.3" stroke="#4b4a78" stroke-dasharray="3 4"/>
              <text x="516" y="193.3" font-size="10.5" fill="#9b99b8" text-anchor="end">-1</text>
              <text x="516" y="150.4" font-size="10.5" fill="#9b99b8" text-anchor="end">0</text>
              <polyline points="520.0,146.4 521.7,146.4 523.3,146.4 525.0,146.4 526.7,146.4 528.3,146.4 530.0,146.4 531.7,146.4 533.3,146.4 535.0,146.4 536.7,146.4 538.3,146.4 540.0,146.4 541.7,146.4 543.3,146.4 545.0,146.4 546.7,146.4 548.3,146.4 550.0,146.4 551.7,146.4 553.3,146.4 555.0,146.4 556.7,146.4 558.3,146.4 560.0,146.4 561.7,146.4 563.3,146.4 565.0,146.4 566.7,146.4 568.3,146.4 570.0,146.4 571.7,146.4 573.3,146.4 575.0,146.4 576.7,146.4 578.3,146.4 580.0,146.4 581.7,146.4 583.3,146.4 585.0,146.4 586.7,146.4 588.3,146.4 590.0,146.4 591.7,146.4 593.3,146.4 595.0,146.4 596.7,146.4 598.3,146.4 600.0,146.4 601.7,146.4 603.3,146.4 605.0,146.4 606.7,146.4 608.3,146.4 610.0,146.4 611.7,146.4 613.3,146.4 615.0,146.4 616.7,146.4 618.3,146.4 620.0,146.4 621.7,144.3 623.3,142.1 625.0,140.0 626.7,137.9 628.3,135.7 630.0,133.6 631.7,131.4 633.3,129.3 635.0,127.1 636.7,125.0 638.3,122.9 640.0,120.7 641.7,118.6 643.3,116.4 645.0,114.3 646.7,112.1 648.3,110.0 650.0,107.9 651.7,105.7 653.3,103.6 655.0,101.4 656.7,99.3 658.3,97.1 660.0,95.0 661.7,92.9 663.3,90.7 665.0,88.6 666.7,86.4 668.3,84.3 670.0,82.1 671.7,80.0 673.3,77.9 675.0,75.7 676.7,73.6 678.3,71.4 680.0,69.3 681.7,67.1 683.3,65.0 685.0,62.9 686.7,60.7 688.3,58.6 690.0,56.4 691.7,54.3 693.3,52.1 695.0,50.0" fill="none" stroke="#10b981" stroke-width="3"/>
              <circle cx="620.0" cy="146.4" r="4" fill="#6ee7b7"/>
              <text x="720" y="162.4" font-size="11" fill="#9b99b8" text-anchor="end">z</text>
              <text x="620.0" y="222" font-size="12" fill="#e2e0f0">range 0 and up</text>
              <text x="620.0" y="240" font-size="11" fill="#9b99b8">f(0) = 0</text>
            </g>
          </svg>
          <figcaption>The three activation functions, drawn on the same scale for z from -3 to 3. The dot shows the output when z = 0. Dashed lines mark the values 1 and -1.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What an activation function does</h3>
          <p>A neuron does two things. First it adds up its inputs, each times a weight, plus a bias. This gives a number called <strong>z</strong>. Then it applies a function f to z. The result <strong>a = f(z)</strong> is the neuron's output, also called its <strong>activation</strong>.</p>
          <p>The weighted sum can be any number, such as -7.2 or 41. The activation function changes it into a more useful form. For example, it can squash the number into the range 0 to 1. It can also turn all negative numbers into 0.</p>
          <p>The most important job is to add a <strong>bend</strong>. A function that is not a straight line is called <strong>non-linear</strong>. You will see below why this bend matters so much.</p>
        </div>
        <div class="lc-card">
          <h3>The three functions</h3>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Formula</th><th>Output range</th><th>Shape</th></tr></thead>
            <tbody>
              <tr><td>Sigmoid</td><td>1 / (1 + e<sup>-z</sup>)</td><td>0 to 1</td><td>S-shaped curve</td></tr>
              <tr><td>Tanh</td><td>(e<sup>z</sup> - e<sup>-z</sup>) / (e<sup>z</sup> + e<sup>-z</sup>)</td><td>-1 to 1</td><td>S-shaped curve, centred on 0</td></tr>
              <tr><td>ReLU</td><td>max(0, z)</td><td>0 and up</td><td>Flat at 0, then a straight line</td></tr>
            </tbody>
          </table>
          <p>Here, e is a special number, about 2.718. You do not need to compute these by hand. NumPy does it for you with <code>np.exp</code>, <code>np.tanh</code> and <code>np.maximum</code>.</p>
          <p>This table shows real values. Part 1 in the code editor below prints the same numbers.</p>
          <table class="lc-table">
            <thead><tr><th>z</th><th>sigmoid(z)</th><th>tanh(z)</th><th>ReLU(z)</th></tr></thead>
            <tbody>
              <tr><td>-2</td><td>0.119</td><td>-0.964</td><td>0</td></tr>
              <tr><td>-1</td><td>0.269</td><td>-0.762</td><td>0</td></tr>
              <tr><td>0</td><td>0.500</td><td>0</td><td>0</td></tr>
              <tr><td>1</td><td>0.731</td><td>0.762</td><td>1</td></tr>
              <tr><td>2</td><td>0.881</td><td>0.964</td><td>2</td></tr>
            </tbody>
          </table>
          <p>Look at the patterns. Sigmoid never reaches 0 or 1. Tanh is like sigmoid, but it goes from -1 to 1. ReLU keeps positive numbers as they are and turns negative numbers into 0.</p>
        </div>
        <div class="lc-card">
          <h3>Why we need non-linearity</h3>
          <p>Imagine a network with two layers and no activation function. Each layer is a straight-line rule. Here is a tiny example with one number:</p>
          <ul class="lc-list">
            <li>Layer 1: z = 2x + 1</li>
            <li>Layer 2: y = 3z - 4</li>
          </ul>
          <p>Put layer 1 into layer 2: y = 3(2x + 1) - 4 = 6x - 1. That is just <strong>one</strong> straight line. The second layer added nothing new. This is true for any number of layers. Without activation functions, a deep network is no better than a single layer.</p>
          <p>Now put ReLU between the layers: y = 3 · ReLU(2x + 1) - 4. For x = 2 you get 3 · 5 - 4 = 11. For x = -2, ReLU turns -3 into 0, so you get -4. The line now has a bend in it. Many bends together can follow any curved shape, such as the two moons in the make_moons dataset.</p>
        </div>
        <div class="lc-card">
          <h3>Which one to use, and softmax</h3>
          <ul class="lc-list">
            <li><strong>ReLU</strong> is the usual choice for <strong>hidden layers</strong>. It is fast and simple, and deep networks learn well with it. One weakness: a neuron whose z is always negative always outputs 0. It then stops learning. People call this a "dead" ReLU.</li>
            <li><strong>Sigmoid</strong> is used in the <strong>output layer</strong> for a yes or no question. Its output reads like a probability, such as 0.88 for "spam".</li>
            <li><strong>Tanh</strong> is centred on 0, so its outputs can be negative or positive. It is common in some older networks and in recurrent networks.</li>
          </ul>
          <p>Newer models also use other functions. For example, many transformer models use GELU, a smooth version of ReLU. The ideas in this lesson still apply.</p>
          <p>For a question with more than two answers, such as cat, dog or bird, the output layer uses <strong>softmax</strong>. Softmax takes a list of scores and turns them into probabilities that add up to 1. A bigger score gets a bigger probability.</p>
          <p>The formula is: <strong>probability = e<sup>score</sup> ÷ (the sum of e<sup>score</sup> over all the scores)</strong>.</p>
          <p>Take the scores [2.0, 1.0, 0.1] for cat, dog and bird. Softmax turns them into about 0.659, 0.242 and 0.099. The network says "cat" with probability 0.659. All three probabilities add up to 1. Part 4 in the code editor below works this out with NumPy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the activation function</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which activation function fits each job best?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="relu" data-label="ReLU"></div>
              <div data-sorter-target="bucket" data-bucket="sigmoid" data-label="Sigmoid"></div>
              <div data-sorter-target="bucket" data-bucket="tanh" data-label="Tanh"></div>
              <div data-sorter-target="bucket" data-bucket="softmax" data-label="Softmax"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="relu" data-why="ReLU is the usual default for hidden layers. It is fast and deep networks train well with it.">Hidden layers of a deep image network</li>
              <li data-bucket="sigmoid" data-why="A yes or no answer needs one number from 0 to 1. Sigmoid gives exactly that.">Output layer: is this email spam?</li>
              <li data-bucket="softmax" data-why="There are 10 possible answers. Softmax gives 10 probabilities that add up to 1.">Output layer: which digit, 0 to 9, is in the picture?</li>
              <li data-bucket="tanh" data-why="Tanh gives values from -1 to 1, centred on 0.">A hidden layer whose outputs must be between -1 and 1</li>
              <li data-bucket="sigmoid" data-why="One probability for one yes or no event is a sigmoid job.">Output layer: chance that a customer will cancel next month</li>
              <li data-bucket="relu" data-why="ReLU is just max(0, z), so it is very cheap to compute.">A hidden layer where speed matters a lot</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below has four parts. Part 1 prints a table of sigmoid, tanh and ReLU values. Part 2 draws sigmoid as a text bar chart. Part 3 shows that two linear layers collapse into one. Part 4 runs softmax.</p>
          <ol class="lc-list">
            <li>In Part 1, add <code>-10.0</code> and <code>10.0</code> to <code>z_values</code>. How close does sigmoid get to 0 and 1?</li>
            <li>In Part 2, change the bar chart so it draws <code>relu(z)</code> instead of <code>sigmoid(z)</code>. Use <code>* 10</code> instead of <code>* 40</code>, so the bars fit.</li>
            <li>Write a <strong>leaky ReLU</strong>: <code>np.where(z &gt; 0, z, 0.1 * z)</code>. It lets a small part of negative numbers through. Add it to the table in Part 1.</li>
            <li>In Part 4, change the softmax scores to <code>[5.0, 1.0, 0.1]</code>. Watch the first probability get close to 1.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Activation functions add bends to a network. Without them, any number of layers acts like one straight-line layer. Use ReLU in hidden layers, sigmoid for a yes or no output, and softmax for a choice between many classes.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Activation functions: sigmoid, tanh and ReLU, then softmax.
        # Each one takes a weighted sum z and gives the neuron's output a = f(z).
        import numpy as np

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))      # squashes any number into 0 to 1

        def tanh(z):
            return np.tanh(z)                # squashes any number into -1 to 1

        def relu(z):
            return np.maximum(0, z)          # negative numbers become 0

        # ── Part 1: a table of values ──
        print("== Part 1: a table of values ==")
        z_values = np.array([-3.0, -2.0, -1.0, 0.0, 1.0, 2.0, 3.0])
        print("    z   sigmoid    tanh    ReLU")
        for z in z_values:
            print(f"{z:5.1f}   {sigmoid(z):7.3f} {tanh(z):7.3f} {relu(z):7.3f}")

        # ── Part 2: a text chart of sigmoid: the bar grows from 0 to 1 ──
        print("\n== Part 2: sigmoid as a bar chart (40 # = 1.0) ==")
        for z in z_values:
            print(f"{z:5.1f} | " + "#" * round(sigmoid(z) * 40))

        # ── Part 3: why we need non-linearity: two linear layers with no activation ──
        print("\n== Part 3: two linear layers collapse into one ==")
        x = np.array([-2.0, 0.0, 2.0])
        layer1 = 2 * x + 1           # first layer: z = 2x + 1
        layer2 = 3 * layer1 - 4      # second layer: y = 3z - 4
        one_layer = 6 * x - 1        # one single layer: y = 6x - 1
        print("Two linear layers:", layer2)
        print("One linear layer: ", one_layer, "(the same, so the extra layer added nothing)")
        print("With ReLU between:", 3 * relu(layer1) - 4, "(now it is not a straight line)")

        # ── Part 4: softmax turns a list of scores into probabilities that add up to 1 ──
        print("\n== Part 4: softmax ==")
        scores = np.array([2.0, 1.0, 0.1])   # raw scores for cat, dog, bird
        probs = np.exp(scores) / np.exp(scores).sum()
        print("scores:       ", scores)
        print("probabilities:", probs.round(3))
        print("sum:          ", probs.sum().round(3))
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Layers: Input, Hidden, Output</h1>
        </div>
        <p class="lc-lead">One neuron can only draw one straight line. To learn harder patterns, a network puts neurons side by side in <strong>layers</strong>, and stacks the layers one after another. In this lesson you will learn the three kinds of layer. You will count the parameters in each layer. You will also compare deep and wide networks. You will also see how one hidden layer solves XOR, the problem a single perceptron cannot solve.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="A network with 2 inputs, a hidden layer of 3 ReLU units and 1 sigmoid output. Every input connects to every hidden unit, and every hidden unit connects to the output. The first layer has 2 times 3 weights plus 3 biases, which is 9 parameters. The second layer has 3 weights plus 1 bias, which is 4. The total is 13 parameters.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="150" y="30" font-weight="700" fill="#93c5fd">Input layer</text>
              <text x="150" y="48" font-size="11.5" fill="#9b99b8">2 numbers</text>
              <text x="380" y="30" font-weight="700" fill="#c4b5fd">Hidden layer</text>
              <text x="380" y="48" font-size="11.5" fill="#9b99b8">3 units, ReLU</text>
              <text x="610" y="30" font-weight="700" fill="#6ee7b7">Output layer</text>
              <text x="610" y="48" font-size="11.5" fill="#9b99b8">1 unit, sigmoid</text>
              <g stroke="#4b4a78" stroke-width="1.5">
                <line x1="172" y1="120" x2="358" y2="90"/><line x1="172" y1="120" x2="358" y2="155"/><line x1="172" y1="120" x2="358" y2="220"/>
                <line x1="172" y1="190" x2="358" y2="90"/><line x1="172" y1="190" x2="358" y2="155"/><line x1="172" y1="190" x2="358" y2="220"/>
                <line x1="402" y1="90" x2="588" y2="155"/><line x1="402" y1="155" x2="588" y2="155"/><line x1="402" y1="220" x2="588" y2="155"/>
              </g>
              <circle cx="150" cy="120" r="22" fill="#27274e" stroke="#3b82f6" stroke-width="2"/><text x="150" y="125">x1</text>
              <circle cx="150" cy="190" r="22" fill="#27274e" stroke="#3b82f6" stroke-width="2"/><text x="150" y="195">x2</text>
              <circle cx="380" cy="90" r="22" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/><text x="380" y="95">h1</text>
              <circle cx="380" cy="155" r="22" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/><text x="380" y="160">h2</text>
              <circle cx="380" cy="220" r="22" fill="#27274e" stroke="#8b5cf6" stroke-width="2"/><text x="380" y="225">h3</text>
              <circle cx="610" cy="155" r="22" fill="#27274e" stroke="#10b981" stroke-width="2"/><text x="610" y="160">ŷ</text>
              <rect x="160" y="248" width="210" height="26" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="265" y="266" font-size="12">2 × 3 weights + 3 biases = 9</text>
              <rect x="390" y="248" width="210" height="26" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="495" y="266" font-size="12">3 × 1 weights + 1 bias = 4</text>
              <text x="380" y="296" font-size="12.5" font-weight="700" fill="#fcd34d">Total: 9 + 4 = 13 parameters</text>
            </g>
          </svg>
          <figcaption>A 2-3-1 network. Each line is one weight. Each hidden and output unit also has one bias. The input layer has no parameters.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The three kinds of layer</h3>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>What it does</th><th>How you choose its size</th></tr></thead>
            <tbody>
              <tr><td>Input layer</td><td>Holds the input numbers. It does no maths and has no weights.</td><td>One unit per feature. An 8 × 8 image has 64 inputs.</td></tr>
              <tr><td>Hidden layer</td><td>Turns the inputs into new, more useful numbers. You never see these numbers directly, so they are "hidden".</td><td>You choose. Common sizes are 16, 32, 64 or 128 units.</td></tr>
              <tr><td>Output layer</td><td>Gives the final answer, ŷ.</td><td>Set by the task. A yes or no answer needs 1 unit. A choice of 10 digits needs 10 units.</td></tr>
            </tbody>
          </table>
          <p>People describe a network by its layer sizes. The network in the diagram is a "2-3-1" network: 2 inputs, 3 hidden units and 1 output.</p>
        </div>
        <div class="lc-card">
          <h3>Fully connected layers and parameter counts</h3>
          <p>In a <strong>fully connected</strong> layer (also called a <strong>dense</strong> layer), every unit gets input from every unit in the layer before. Each connection has its own weight. Each unit also has one bias.</p>
          <p>So a layer with <strong>n inputs</strong> and <strong>m units</strong> has <strong>n × m weights + m biases</strong>.</p>
          <p>Worked example: Maya wants to read handwritten digits. Each image has 8 × 8 = 64 pixels. She plans a 64-32-10 network.</p>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>Weights</th><th>Biases</th><th>Parameters</th></tr></thead>
            <tbody>
              <tr><td>64 → 32 (hidden)</td><td>64 × 32 = 2,048</td><td>32</td><td>2,080</td></tr>
              <tr><td>32 → 10 (output)</td><td>32 × 10 = 320</td><td>10</td><td>330</td></tr>
              <tr><td><strong>Total</strong></td><td></td><td></td><td><strong>2,410</strong></td></tr>
            </tbody>
          </table>
          <p>Every one of these 2,410 numbers is learned during training. Big language models use the same counting rule. They just have billions of parameters.</p>
        </div>
        <div class="lc-card">
          <h3>Depth and width</h3>
          <p>The <strong>depth</strong> of a network is how many layers with weights it has. The <strong>width</strong> is how many units a layer has. "Deep learning" simply means networks with many hidden layers.</p>
          <table class="lc-table">
            <thead><tr><th>Network</th><th>Shape</th><th>Parameters</th></tr></thead>
            <tbody>
              <tr><td>Small</td><td>2 → 3 → 1</td><td>13</td></tr>
              <tr><td>Wide</td><td>2 → 100 → 1</td><td>300 + 101 = 401</td></tr>
              <tr><td>Deep</td><td>2 → 10 → 10 → 10 → 1</td><td>30 + 110 + 110 + 11 = 261</td></tr>
            </tbody>
          </table>
          <p>Each new layer builds on the one before it. Early layers find simple patterns. Later layers combine them into more complex ones. In practice, deep networks often learn more with fewer parameters than very wide ones. But bigger is not always better. A large network on a small dataset can memorise the examples instead of learning the pattern. You will learn about this problem, called overfitting, later in this course.</p>
        </div>
        <div class="lc-card">
          <h3>XOR solved with one hidden layer</h3>
          <p>XOR gives 1 when exactly one input is 1. Earlier in this course, you saw that one perceptron cannot solve it. No single straight line separates the 1s from the 0s. With one hidden layer of two ReLU units, it becomes easy.</p>
          <figure class="lc-diagram">
            <svg viewBox="0 0 760 250" role="img" aria-label="An XOR network. Inputs x1 and x2 both connect with weight 1 to two hidden units. Hidden unit h1 is ReLU of x1 plus x2. Hidden unit h2 is ReLU of x1 plus x2 minus 1. The output is h1 minus 2 times h2. For the input 1, 1, h1 is 2, h2 is 1 and the output is 0.">
              <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
                <g stroke="#4b4a78" stroke-width="1.5">
                  <line x1="134" y1="80" x2="268" y2="80"/><line x1="134" y1="80" x2="268" y2="165"/>
                  <line x1="134" y1="165" x2="268" y2="80"/><line x1="134" y1="165" x2="268" y2="165"/>
                </g>
                <line x1="452" y1="80" x2="538" y2="118" stroke="#10b981" stroke-width="2"/>
                <line x1="452" y1="165" x2="538" y2="132" stroke="#ec4899" stroke-width="2"/>
                <text x="200" y="70" font-size="11.5" fill="#9b99b8">weight 1</text>
                <text x="200" y="185" font-size="11.5" fill="#9b99b8">weight 1</text>
                <text x="496" y="86" font-size="12" fill="#6ee7b7">+1</text>
                <text x="496" y="168" font-size="12" fill="#f9a8d4">-2</text>
                <circle cx="110" cy="80" r="24" fill="#27274e" stroke="#3b82f6" stroke-width="2"/><text x="110" y="85">x1</text>
                <circle cx="110" cy="165" r="24" fill="#27274e" stroke="#3b82f6" stroke-width="2"/><text x="110" y="170">x2</text>
                <rect x="270" y="58" width="180" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="360" y="76" font-size="12.5">h1 = ReLU(x1 + x2)</text>
                <text x="360" y="94" font-size="11" fill="#9b99b8">"at least one is on"</text>
                <rect x="270" y="143" width="180" height="44" rx="8" fill="#27274e" stroke="#8b5cf6"/>
                <text x="360" y="161" font-size="12.5">h2 = ReLU(x1 + x2 - 1)</text>
                <text x="360" y="179" font-size="11" fill="#9b99b8">"both are on"</text>
                <rect x="540" y="103" width="190" height="44" rx="8" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
                <text x="635" y="130" font-weight="700">ŷ = h1 - 2 · h2</text>
                <rect x="150" y="212" width="460" height="28" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
                <text x="380" y="231" font-size="12.5" fill="#fcd34d">Input (1, 1): h1 = 2, h2 = 1, so ŷ = 2 - 2 × 1 = 0</text>
              </g>
            </svg>
            <figcaption>A hand-built XOR network. The hidden layer finds two simple facts. The output layer combines them.</figcaption>
          </figure>
          <table class="lc-table">
            <thead><tr><th>x1</th><th>x2</th><th>h1</th><th>h2</th><th>ŷ = h1 - 2·h2</th><th>XOR</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
              <tr><td>0</td><td>1</td><td>1</td><td>0</td><td>1</td><td>1</td></tr>
              <tr><td>1</td><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td></tr>
              <tr><td>1</td><td>1</td><td>2</td><td>1</td><td>0</td><td>0</td></tr>
            </tbody>
          </table>
          <p>The hidden layer moves the four points to new places. In the new places, a simple rule can separate them. This is the main job of hidden layers. Here we set the weights by hand. Later in this course, a network will learn weights like these from examples.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow one input through the XOR network</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Input">x1 = 1, x2 = 0. XOR should give 1.</li>
              <li data-kind="thought" data-label="Hidden unit h1">Weighted sum: 1 × 1 + 0 × 1 + 0 = 1. ReLU(1) = 1.</li>
              <li data-kind="thought" data-label="Hidden unit h2">Weighted sum: 1 × 1 + 0 × 1 - 1 = 0. ReLU(0) = 0.</li>
              <li data-kind="result" data-label="Hidden layer output">The hidden layer gives the new numbers (1, 0).</li>
              <li data-kind="thought" data-label="Output unit">ŷ = 1 × h1 - 2 × h2 = 1 × 1 - 2 × 0 = 1.</li>
              <li data-kind="check" data-label="Check">The answer is 1, which matches XOR.</li>
              <li data-kind="answer" data-label="Why it works">h2 only switches on when both inputs are on. It then cancels h1, so (1, 1) gives 0.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor below counts the parameters in a network. Part 2 runs the hand-built XOR network on all four inputs.</p>
          <ol class="lc-list">
            <li>In Part 1, change <code>sizes</code> to <code>[64, 32, 10]</code>. Check that the total is 2,410.</li>
            <li>Add a second hidden layer: <code>[64, 32, 16, 10]</code>. How much did the total grow?</li>
            <li>In Part 2, change <code>H2_BIAS</code> to <code>0</code>. Which rows are now wrong, and why?</li>
            <li>In Part 2, change <code>OUT_WEIGHT_H2</code> to <code>-1</code>. What does the network compute now? (Hint: compare it with OR.)</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A network is layers of units. Each dense layer has n × m weights plus m biases. Hidden layers turn the inputs into new numbers that make the problem easier. That is how one hidden layer solves XOR.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Layers: count the parameters, then solve XOR with one hidden layer.
        import numpy as np

        # ── Part 1: parameter count for a fully connected network ──
        # A layer with n inputs and m units has n*m weights + m biases.
        print("== Part 1: count the parameters ==")
        sizes = [2, 3, 1]          # input, hidden, output

        total = 0
        for n_in, n_out in zip(sizes[:-1], sizes[1:]):
            weights = n_in * n_out
            biases = n_out
            total += weights + biases
            print(f"layer {n_in:>3} -> {n_out:<3}: {weights:5} weights + {biases:3} biases = {weights + biases}")
        print("total parameters:", total)

        # ── Part 2: XOR with one hidden layer. These weights are set by hand ──
        # Later in the course, the network will learn weights like these by itself.
        print("\n== Part 2: XOR with one hidden layer ==")
        def relu(z):
            return np.maximum(0, z)

        X = np.array([[0, 0], [0, 1], [1, 0], [1, 1]])
        target = np.array([0, 1, 1, 0])        # XOR: 1 when exactly one input is 1

        H1_BIAS = 0
        H2_BIAS = -1
        OUT_WEIGHT_H2 = -2

        print(" x1 x2 | h1 h2 | output | XOR  match")
        for (x1, x2), t in zip(X, target):
            h1 = relu(x1 + x2 + H1_BIAS)     # hidden unit 1: "at least one input is on"
            h2 = relu(x1 + x2 + H2_BIAS)     # hidden unit 2: "both inputs are on"
            out = 1 * h1 + OUT_WEIGHT_H2 * h2
            ok = "yes" if out == t else "NO"
            print(f"  {x1}  {x2} |  {h1}  {h2} |   {out:2}   |  {t}   {ok}")
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Math Basics: Vectors and Matrices</h1>
        </div>
        <p class="lc-lead">Neural networks do almost all of their work with two tools: <strong>vectors</strong> and <strong>matrices</strong>. A vector is a list of numbers. A matrix is a grid of numbers. In this lesson you will learn the dot product, the matrix product and the shape rules. With these, one line of NumPy can push a whole batch of examples through a layer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Matrix X with shape 2 by 3 times matrix W with shape 3 by 2 gives a result with shape 2 by 2. Row 1 of X, which is 2, 1, 3, is matched with column 1 of W, which is 0.5, minus 1, 2. Their dot product, 1 minus 1 plus 6, equals 6, and this goes into row 1, column 1 of the result.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="115" y="30" font-weight="700" fill="#93c5fd">X (inputs)</text>
              <g stroke="#4b4a78">
                <rect x="40" y="80" width="50" height="34" fill="#27274e"/><rect x="90" y="80" width="50" height="34" fill="#27274e"/><rect x="140" y="80" width="50" height="34" fill="#27274e"/>
                <rect x="40" y="114" width="50" height="34" fill="#1f1f44"/><rect x="90" y="114" width="50" height="34" fill="#1f1f44"/><rect x="140" y="114" width="50" height="34" fill="#1f1f44"/>
              </g>
              <rect x="40" y="80" width="150" height="34" fill="none" stroke="#ec4899" stroke-width="2.5"/>
              <text x="65" y="102">2</text><text x="115" y="102">1</text><text x="165" y="102">3</text>
              <text x="65" y="136">1</text><text x="115" y="136">0</text><text x="165" y="136">1</text>
              <text x="215" y="120" font-size="20" fill="#9b99b8">@</text>
              <text x="290" y="30" font-weight="700" fill="#c4b5fd">W (weights)</text>
              <g stroke="#4b4a78">
                <rect x="240" y="63" width="50" height="34" fill="#27274e"/><rect x="290" y="63" width="50" height="34" fill="#1f1f44"/>
                <rect x="240" y="97" width="50" height="34" fill="#27274e"/><rect x="290" y="97" width="50" height="34" fill="#1f1f44"/>
                <rect x="240" y="131" width="50" height="34" fill="#27274e"/><rect x="290" y="131" width="50" height="34" fill="#1f1f44"/>
              </g>
              <rect x="240" y="63" width="50" height="102" fill="none" stroke="#ec4899" stroke-width="2.5"/>
              <text x="265" y="85">0.5</text><text x="315" y="85">1</text>
              <text x="265" y="119">-1</text><text x="315" y="119">0</text>
              <text x="265" y="153">2</text><text x="315" y="153">-1</text>
              <text x="370" y="120" font-size="20" fill="#9b99b8">=</text>
              <text x="450" y="30" font-weight="700" fill="#6ee7b7">X @ W</text>
              <g stroke="#4b4a78">
                <rect x="400" y="80" width="50" height="34" fill="#27274e"/><rect x="450" y="80" width="50" height="34" fill="#27274e"/>
                <rect x="400" y="114" width="50" height="34" fill="#1f1f44"/><rect x="450" y="114" width="50" height="34" fill="#1f1f44"/>
              </g>
              <rect x="400" y="80" width="50" height="34" fill="none" stroke="#ec4899" stroke-width="2.5"/>
              <text x="425" y="102" font-weight="700" fill="#f9a8d4">6</text><text x="475" y="102">-1</text>
              <text x="425" y="136">2.5</text><text x="475" y="136">0</text>
              <rect x="530" y="66" width="210" height="96" rx="8" fill="#1f1f44" stroke="#ec4899"/>
              <text x="635" y="88" font-size="12" fill="#f9a8d4">row 1 of X · column 1 of W</text>
              <text x="635" y="112" font-size="12.5">2×0.5 + 1×(-1) + 3×2</text>
              <text x="635" y="134" font-size="12.5">= 1 - 1 + 6</text>
              <text x="635" y="154" font-size="12.5" font-weight="700" fill="#f9a8d4">= 6</text>
              <text x="115" y="192" font-weight="700">(2, 3)</text>
              <text x="115" y="210" font-size="11.5" fill="#9b99b8">batch × features</text>
              <text x="290" y="192" font-weight="700">(3, 2)</text>
              <text x="290" y="210" font-size="11.5" fill="#9b99b8">features × units</text>
              <text x="450" y="192" font-weight="700">(2, 2)</text>
              <text x="450" y="210" font-size="11.5" fill="#9b99b8">batch × units</text>
              <rect x="95" y="230" width="570" height="28" rx="6" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="380" y="249" font-size="12.5" fill="#fcd34d">Inner sizes must match (3 and 3). The result takes the outer sizes: (2, 2).</text>
            </g>
          </svg>
          <figcaption>Each number in X @ W is a dot product of one row of X and one column of W. The pink boxes show how the top-left number, 6, is made.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Vectors and the dot product</h3>
          <p>A <strong>vector</strong> is an ordered list of numbers. One example in a dataset is a vector of its features. For example, x = [2.0, 1.0, 3.0] is one example with 3 features. Its <strong>shape</strong> is (3,), which means "3 numbers in one row".</p>
          <p>The <strong>dot product</strong> of two vectors of the same length works like this. Multiply the numbers in each pair. Then add up the results.</p>
          <p>Take the weights w = [0.5, -1.0, 2.0]. Then x · w = 2 × 0.5 + 1 × (-1) + 3 × 2. That is 1 - 1 + 6 = <strong>6</strong>.</p>
          <p>This is the weighted sum of a neuron, which you met earlier in this course. So one neuron is one dot product, plus a bias. In NumPy, you can write it with the <code>@</code> operator or with <code>np.dot</code>.</p>
          <p>Both give 6.0 for this x and w. Part 1 in the code editor below shows this, by hand, with <code>@</code> and with <code>np.dot</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Matrices and the matrix product</h3>
          <p>A <strong>matrix</strong> is a grid of numbers with rows and columns. Its shape is written as (rows, columns). A matrix with 2 rows and 3 columns has shape (2, 3).</p>
          <p>A layer of neurons stores its weights in a matrix W. In this course, W has one row per input and one column per unit. So each column holds the weights of one unit. A layer with 3 inputs and 2 units has W with shape (3, 2).</p>
          <p>The <strong>matrix product</strong> A @ B works like many dot products at once. Take row i of A and column j of B. Their dot product goes in row i, column j of the result. The diagram above shows one of these dot products.</p>
          <p>The <strong>shape rule</strong> is the most useful thing to remember:</p>
          <ul class="lc-list">
            <li>(a, k) @ (k, m) gives (a, m).</li>
            <li>The two inner sizes (k and k) must be the same. If they are not, NumPy stops with a <code>ValueError</code>.</li>
            <li>The result takes the two outer sizes (a and m).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Batches: many examples in one step</h3>
          <p>A network does not usually process one example at a time. It takes a <strong>batch</strong>: many examples stacked as rows in a matrix X. The shape of X is <strong>(batch, features)</strong>.</p>
          <p>Then one line computes the weighted sums for every example and every unit: <strong>Z = X @ W + b</strong>. The result has shape (batch, units). NumPy adds the bias vector b to every row. This automatic copying is called <strong>broadcasting</strong>.</p>
          <p>The shapes work like this: (batch, 3) @ (3, 2) gives (batch, 2).</p>
          <p>Part 2 in the code editor below sends 2 examples through a layer with 2 units, so Z has shape (2, 2). Part 3 uses a batch of 4 examples, so Z has shape (4, 2). In both, the first row is [6.5, -1.0]. The 6.5 is the 6 from the diagram, plus the bias 0.5. Use <code>.shape</code> often. Most bugs in neural network code are shape bugs.</p>
          <p>A note for later: PyTorch's <code>nn.Linear</code> stores its weight the other way round, as (units, inputs). It then computes X @ W.T + b. Here <code>.T</code> means <strong>transpose</strong>: swap rows and columns. The maths is the same. The end of Part 4 in the code editor shows a shape error, then fixes it with <code>.T</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Do not mix up * and @</h3>
          <p>In NumPy, <code>*</code> multiplies <strong>element by element</strong>. Each number is multiplied by the number in the same place. <code>@</code> is the <strong>matrix product</strong>. They give very different answers.</p>
          <p>Take a = [[1, 2], [3, 4]] and b = [[10, 20], [30, 40]]. The top-left of <code>a * b</code> is 1 × 10 = 10. The top-left of <code>a @ b</code> is row [1, 2] · column [10, 30] = 10 + 60 = 70. Part 5 in the code editor below prints both.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: will the shapes work?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">For each A @ B, does NumPy give an answer or a shape error?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="works" data-label="Works"></div>
              <div data-sorter-target="bucket" data-bucket="error" data-label="Shape error"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="works" data-why="The inner sizes are both 2. The result has shape (4, 3).">(4, 2) @ (2, 3)</li>
              <li data-bucket="error" data-why="The inner sizes are 2 and 3. They do not match.">(4, 2) @ (3, 2)</li>
              <li data-bucket="works" data-why="Two vectors of the same length give their dot product, a single number.">(3,) @ (3,)</li>
              <li data-bucket="works" data-why="A batch of 10 digit images, 64 pixels each, through a layer with 32 units gives (10, 32).">(10, 64) @ (64, 32)</li>
              <li data-bucket="error" data-why="The inner sizes are 3 and 5. You would need to transpose one of them first.">(5, 3) @ (5, 3)</li>
              <li data-bucket="works" data-why="The inner sizes are both 3. The result is a vector with shape (2,).">(2, 3) @ (3,)</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below has five parts. Part 1 builds a vector, Part 2 a weight matrix and Part 3 a batch of 4 examples. They print every shape. Part 4 tests the shape rule, and Part 5 compares <code>*</code> and <code>@</code>.</p>
          <ol class="lc-list">
            <li>In Part 1, change the first weight in <code>w</code> from 0.5 to 1.5. Work out the new dot product by hand first, then run the code to check.</li>
            <li>In Part 3, add a fifth row to <code>X</code>, such as <code>[3.0, 0.0, 2.0]</code>. Which shapes change, and which stay the same?</li>
            <li>In Part 2, add a third unit by giving <code>W</code> a third column and <code>b</code> a third number. What is the new shape of <code>Z</code>?</li>
            <li>In Part 4, add <code>try_matmul((4, 3), (3,))</code> and <code>try_matmul((3, 4), (3, 2))</code>. Predict each answer before you run it.</li>
            <li>In Part 5, change <code>a</code> to <code>[[1, 0], [0, 1]]</code>. Now <code>a @ b</code> gives back b. Why?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A dot product is a neuron's weighted sum. A matrix product does many dot products at once. So Z = X @ W + b runs a whole batch through a layer. Remember the shape rule: (a, k) @ (k, m) gives (a, m).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Vectors and matrices with NumPy: the maths inside every neural network layer.
        import numpy as np

        # ── Part 1: a vector and the dot product ──
        print("== Part 1: a vector and the dot product ==")
        x = np.array([2.0, 1.0, 3.0])      # one example with 3 features
        w = np.array([0.5, -1.0, 2.0])     # one weight per feature
        print("x shape:", x.shape)
        # Dot product: multiply the pairs, then add them up.
        by_hand = 2.0 * 0.5 + 1.0 * -1.0 + 3.0 * 2.0
        print("dot by hand:", by_hand, "  with @:", x @ w, "  with np.dot:", np.dot(x, w))

        # ── Part 2: a matrix of weights. Shape = (rows, columns) ──
        # Each column of W holds the weights for one unit. 3 inputs, 2 units.
        print("\n== Part 2: a weight matrix ==")
        W = np.array([[0.5, 1.0],
                      [-1.0, 0.0],
                      [2.0, -1.0]])
        b = np.array([0.5, 0.0])           # one bias per unit
        print("W shape:", W.shape)
        print("one example through the layer, x @ W + b =", x @ W + b)
        X2 = np.array([[2.0, 1.0, 3.0],
                       [1.0, 0.0, 1.0]])   # 2 examples, 3 features
        print("two examples:", X2.shape, "@", W.shape, "->", (X2 @ W + b).shape)
        print(X2 @ W + b)

        # ── Part 3: a batch: many examples at once, one per row ──
        print("\n== Part 3: a batch of 4 examples ==")
        X = np.array([[2.0, 1.0, 3.0],
                      [1.0, 0.0, 1.0],
                      [0.0, 2.0, 1.0],
                      [1.0, 1.0, 1.0]])
        Z = X @ W + b                      # (batch, 3) @ (3, 2) gives (batch, 2); b is added to every row
        print("X shape:", X.shape, " W shape:", W.shape, " Z shape:", Z.shape)
        print(Z)

        # ── Part 4: the shape rule: (a, k) @ (k, m) gives (a, m) ──
        print("\n== Part 4: the shape rule ==")
        def try_matmul(shape_a, shape_b):
            A, B = np.ones(shape_a), np.ones(shape_b)
            try:
                print(f"{shape_a} @ {shape_b} -> {(A @ B).shape}")
            except ValueError:
                print(f"{shape_a} @ {shape_b} -> shape error: inner sizes do not match")

        try_matmul((4, 3), (3, 2))
        try_matmul((4, 3), (2, 3))
        try_matmul((10, 64), (64, 32))

        # A shape error, and the fix: transpose with .T (swap rows and columns).
        A = np.ones((4, 2))
        B = np.ones((3, 2))
        try:
            A @ B
        except ValueError as e:
            print("NumPy says:", e)
        print("(4, 2) @ (3, 2).T ->", (A @ B.T).shape)

        # ── Part 5: do not mix up * and @ ──
        print("\n== Part 5: * and @ ==")
        a = np.array([[1, 2], [3, 4]])
        b = np.array([[10, 20], [30, 40]])  # a new b, just for this part
        print("a * b (element by element):\n", a * b)
        print("a @ b (matrix product):\n", a @ b)
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Forward Propagation</h1>
        </div>
        <p class="lc-lead"><strong>Forward propagation</strong> (or the <strong>forward pass</strong>) is how a network turns inputs into a prediction. The data flows forward, one layer at a time, from the input layer to the output layer. In this lesson you will push a batch of 3 examples through a small 2-3-1 network. You will follow every step by hand, check the shapes, and then check the numbers in NumPy.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 250" role="img" aria-label="Forward pass with shapes. X with shape 3 by 2 goes into layer 1, which computes Z1 equals X at W1 plus b1 with shape 3 by 3, then A1 equals ReLU of Z1 with shape 3 by 3. Layer 2 computes Z2 equals A1 at W2 plus b2 with shape 3 by 1, then y hat equals sigmoid of Z2 with shape 3 by 1. For the first example, 1 and 2, the values are 2.5, 0.5, minus 0.5, then 2.5, 0.5, 0, then 1.5, then 0.818.">
            <defs><marker id="nn8a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="303" y="22" font-weight="700" fill="#c4b5fd">Layer 1 (hidden)</text>
              <line x1="162" y1="34" x2="444" y2="34" stroke="#8b5cf6" stroke-width="2"/>
              <text x="607" y="22" font-weight="700" fill="#6ee7b7">Layer 2 (output)</text>
              <line x1="466" y1="34" x2="748" y2="34" stroke="#10b981" stroke-width="2"/>
              <rect x="10" y="50" width="130" height="90" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="75" y="76" font-weight="700">X</text>
              <text x="75" y="99" fill="#93c5fd">(3, 2)</text>
              <text x="75" y="124" font-size="12" fill="#9b99b8">[1, 2]</text>
              <rect x="162" y="50" width="130" height="90" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="227" y="76" font-weight="700">Z1 = X@W1+b1</text>
              <text x="227" y="99" fill="#c4b5fd">(3, 3)</text>
              <text x="227" y="124" font-size="12" fill="#9b99b8">[2.5, 0.5, -0.5]</text>
              <rect x="314" y="50" width="130" height="90" rx="10" fill="#27274e" stroke="#8b5cf6"/>
              <text x="379" y="76" font-weight="700">A1 = ReLU(Z1)</text>
              <text x="379" y="99" fill="#c4b5fd">(3, 3)</text>
              <text x="379" y="124" font-size="12" fill="#9b99b8">[2.5, 0.5, 0]</text>
              <rect x="466" y="50" width="130" height="90" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="531" y="76" font-weight="700">Z2 = A1@W2+b2</text>
              <text x="531" y="99" fill="#6ee7b7">(3, 1)</text>
              <text x="531" y="124" font-size="12" fill="#9b99b8">[1.5]</text>
              <rect x="618" y="50" width="130" height="90" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="683" y="76" font-weight="700">ŷ = sigmoid(Z2)</text>
              <text x="683" y="99" fill="#6ee7b7">(3, 1)</text>
              <text x="683" y="124" font-size="12" font-weight="700" fill="#fcd34d">[0.818]</text>
              <g stroke="#9b99b8" stroke-width="1.5">
                <line x1="141" y1="95" x2="160" y2="95" marker-end="url(#nn8a)"/>
                <line x1="293" y1="95" x2="312" y2="95" marker-end="url(#nn8a)"/>
                <line x1="445" y1="95" x2="464" y2="95" marker-end="url(#nn8a)"/>
                <line x1="597" y1="95" x2="616" y2="95" marker-end="url(#nn8a)"/>
              </g>
              <line x1="227" y1="182" x2="227" y2="142" stroke="#8b5cf6" stroke-dasharray="4 4" marker-end="url(#nn8a)"/>
              <rect x="142" y="182" width="170" height="30" rx="6" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="227" y="202" font-size="12">W1: (2, 3), b1: (3,)</text>
              <line x1="531" y1="182" x2="531" y2="142" stroke="#10b981" stroke-dasharray="4 4" marker-end="url(#nn8a)"/>
              <rect x="446" y="182" width="170" height="30" rx="6" fill="#1f1f44" stroke="#10b981"/>
              <text x="531" y="202" font-size="12">W2: (3, 1), b2: (1,)</text>
              <text x="380" y="238" font-size="11.5" fill="#9b99b8">Grey numbers: the first example of the batch, x = [1, 2], at each step.</text>
            </g>
          </svg>
          <figcaption>The forward pass for a batch of 3 examples. The coloured line in each box is the shape. The batch size, 3, stays the same all the way through.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What happens in a forward pass</h3>
          <p>Each layer does the same two steps:</p>
          <ol class="lc-list">
            <li><strong>Weighted sum:</strong> Z = A<sub>prev</sub> @ W + b. Here A<sub>prev</sub> is the output of the layer before. For the first layer, it is the input X.</li>
            <li><strong>Activation:</strong> A = f(Z), for example ReLU or sigmoid.</li>
          </ol>
          <p>The output of one layer becomes the input of the next layer. The output of the last layer is the prediction, <strong>ŷ</strong>.</p>
          <p>The forward pass does not change any weights. It only computes. Learning happens later, when the network compares ŷ with the right answers and adjusts the weights. You will learn that part in the next few lessons.</p>
        </div>
        <div class="lc-card">
          <h3>Our network and our batch</h3>
          <p>Maya builds a 2-3-1 network: 2 inputs, 3 hidden ReLU units and 1 sigmoid output. It answers a yes or no question, so the output is a probability. We set the weights by hand, so you can follow the numbers.</p>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Values</th><th>Shape</th></tr></thead>
            <tbody>
              <tr><td>X (batch)</td><td>[[1, 2], [0, 1], [2, 0]]</td><td>(3, 2)</td></tr>
              <tr><td>W1</td><td>[[0.5, -1, 1], [1, 0.5, -0.5]]</td><td>(2, 3)</td></tr>
              <tr><td>b1</td><td>[0, 0.5, -0.5]</td><td>(3,)</td></tr>
              <tr><td>W2</td><td>[[1], [-1], [0.5]]</td><td>(3, 1)</td></tr>
              <tr><td>b2</td><td>[-0.5]</td><td>(1,)</td></tr>
            </tbody>
          </table>
          <p>Remember: each column of W1 holds the weights of one hidden unit. The network has 6 + 3 + 3 + 1 = 13 parameters.</p>
        </div>
        <div class="lc-card">
          <h3>Step by step, for the first example</h3>
          <p>Take the first row of X: x = [1, 2].</p>
          <p><strong>Layer 1, weighted sums.</strong> Each hidden unit takes x · (its column of W1) + its bias:</p>
          <ul class="lc-list">
            <li>Unit 1: 1 × 0.5 + 2 × 1 + 0 = <strong>2.5</strong></li>
            <li>Unit 2: 1 × (-1) + 2 × 0.5 + 0.5 = <strong>0.5</strong></li>
            <li>Unit 3: 1 × 1 + 2 × (-0.5) - 0.5 = <strong>-0.5</strong></li>
          </ul>
          <p><strong>Layer 1, ReLU.</strong> Negative numbers become 0. So [2.5, 0.5, -0.5] becomes <strong>[2.5, 0.5, 0]</strong>.</p>
          <p><strong>Layer 2, weighted sum.</strong> 2.5 × 1 + 0.5 × (-1) + 0 × 0.5 - 0.5 = <strong>1.5</strong>.</p>
          <p><strong>Layer 2, sigmoid.</strong> 1 / (1 + e<sup>-1.5</sup>) = <strong>0.818</strong>. The network says "yes" with probability 0.818.</p>
          <p>The other two rows go through the same steps at the same time. That is the power of the matrix product.</p>
        </div>
        <div class="lc-card">
          <h3>The same pass in NumPy</h3>
          <p>Four lines of code do the whole forward pass for the whole batch: a weighted sum, ReLU, another weighted sum, then sigmoid. Part 1 in the code editor below prints every step and its shape. Part 2 does the same pass in just four lines. The three probabilities are 0.818, 0.378 and 0.777. The first one matches our hand calculation. To turn each probability into a class, use a cut-off of 0.5. The answers are yes, no and yes.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Shape</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>X @ W1</td><td>(3, 2) @ (2, 3) → (3, 3)</td><td>3 examples, 3 hidden units</td></tr>
              <tr><td>+ b1</td><td>(3, 3) + (3,) → (3, 3)</td><td>The bias is added to every row</td></tr>
              <tr><td>A1 @ W2</td><td>(3, 3) @ (3, 1) → (3, 1)</td><td>3 examples, 1 output</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The same network in PyTorch</h3>
          <p>PyTorch is the library you will use later in this course. Here, <code>nn.Linear</code> is one dense layer, and calling <code>model(X)</code> runs the forward pass. PyTorch picks random starting weights, so its predictions differ from ours. The shapes are the same.</p>
          <p>Part 4 in the code editor below builds this network with <code>nn.Sequential</code>. The output <code>y_hat</code> has shape (3, 1), as in NumPy. But the first layer's weight, <code>model[0].weight</code>, has shape (3, 2), not (2, 3). PyTorch stores it as (units, inputs) and computes X @ W.T + b. The maths is the same. PyTorch does not run in the browser, so in the editor Part 4 only prints a short message. Copy it to your own computer to run it.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: order the forward pass</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of a forward pass through a 2-3-1 network in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Stack the examples as rows in X, with shape (3, 2)</li>
              <li data-order="2">Compute the hidden weighted sums Z1 = X @ W1 + b1</li>
              <li data-order="3">Apply ReLU to get the hidden outputs A1</li>
              <li data-order="4">Compute the output weighted sum Z2 = A1 @ W2 + b2</li>
              <li data-order="5">Apply sigmoid to get the probabilities ŷ</li>
              <li data-order="6">Use a 0.5 cut-off to turn each probability into a class</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the code editor below runs the forward pass and prints every step with its shape. Part 2 does it in four lines. Part 3 turns each probability into a class. Part 4 is the PyTorch version, for your own computer.</p>
          <ol class="lc-list">
            <li>In Part 1, change the first weight in <code>W1</code> from 0.5 to -0.5. Which numbers change? Does the first class change?</li>
            <li>In Part 1, add a fourth example to <code>X</code>, such as <code>[1.0, 1.0]</code>. Check that only the batch size in each shape changes.</li>
            <li>In Part 1, replace <code>relu</code> with <code>np.tanh</code> in the forward function. How do the hidden outputs change?</li>
            <li>In Part 1, change <code>b2</code> to <code>[-2.0]</code>. Why do all the probabilities go down?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Every layer in a forward pass does two steps. First a weighted sum, Z = A @ W + b. Then an activation, A = f(Z). With matrices, a whole batch goes through at once, and the batch size stays the same in every shape.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Forward propagation: push a batch through a 2-3-1 network, step by step.
        import numpy as np
        np.set_printoptions(precision=3, suppress=True)

        # ── Part 1: the forward pass, step by step ──
        print("== Part 1: the forward pass, step by step ==")
        # A batch of 3 examples, 2 features each. Shape (batch, features) = (3, 2).
        X = np.array([[1.0, 2.0],
                      [0.0, 1.0],
                      [2.0, 0.0]])

        # Layer 1 (hidden): 2 inputs -> 3 units, ReLU
        W1 = np.array([[0.5, -1.0, 1.0],
                       [1.0, 0.5, -0.5]])
        b1 = np.array([0.0, 0.5, -0.5])
        # Layer 2 (output): 3 inputs -> 1 unit, sigmoid
        W2 = np.array([[1.0],
                       [-1.0],
                       [0.5]])
        b2 = np.array([-0.5])

        def relu(z):
            return np.maximum(0, z)

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        def show(name, value):
            print(f"{name}  shape {value.shape}")
            print(value, "\n")

        def forward(X):
            Z1 = X @ W1 + b1            # layer 1: weighted sums
            show("Z1 = X @ W1 + b1", Z1)
            A1 = relu(Z1)               # layer 1: activation
            show("A1 = ReLU(Z1)", A1)
            Z2 = A1 @ W2 + b2           # layer 2: weighted sum
            show("Z2 = A1 @ W2 + b2", Z2)
            y_hat = sigmoid(Z2)         # layer 2: activation
            show("y_hat = sigmoid(Z2)", y_hat)
            return y_hat

        show("X", X)
        y_hat = forward(X)

        # ── Part 2: the whole pass in four lines ──
        print("== Part 2: the same pass in four lines ==")
        Z1 = X @ W1 + b1                 # layer 1: weighted sums
        A1 = np.maximum(0, Z1)           # layer 1: ReLU
        Z2 = A1 @ W2 + b2                # layer 2: weighted sum
        y_hat = 1 / (1 + np.exp(-Z2))    # layer 2: sigmoid
        print(Z1.shape, A1.shape, Z2.shape, y_hat.shape)
        print(y_hat.round(3))

        # ── Part 3: turn probabilities into class labels with a 0.5 cut-off ──
        print("\n== Part 3: probabilities to classes ==")
        labels = (y_hat >= 0.5).astype(int)
        for x, p, c in zip(X, y_hat[:, 0], labels[:, 0]):
            print(f"input {x} -> probability {p:.3f} -> class {c}")

        # ── Part 4: the same network in PyTorch (run this part on your own computer) ──
        # On your computer: pip install torch
        print("\n== Part 4: the same network in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            model = nn.Sequential(nn.Linear(2, 3), nn.ReLU(), nn.Linear(3, 1), nn.Sigmoid())
            X_t = torch.tensor([[1.0, 2.0], [0.0, 1.0], [2.0, 0.0]])
            y_t = model(X_t)            # forward propagation, random starting weights
            print("y_hat shape:", y_t.shape)
            print("first layer weight shape:", model[0].weight.shape, "(units, inputs)")
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Loss Functions</h1>
        </div>
        <p class="lc-lead">A network makes a prediction. Then we need to know how wrong it was. A <strong>loss function</strong> turns "how wrong" into one number. Training is all about making this number smaller. In this lesson you will work out the two most common losses by hand: <strong>mean squared error</strong> and <strong>cross-entropy</strong>.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Two loss curves. Left: mean squared error, loss equals error squared. An error of 2 gives a loss of 4, an error of minus 0.5 gives 0.25. Right: cross-entropy, loss equals minus ln p. A probability of 0.9 for the right answer gives 0.105, 0.5 gives 0.693, and 0.1 gives 2.303.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="365" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="385" y="10" width="365" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="192" y="36" font-weight="700" fill="#93c5fd">MSE: loss = error²</text>
              <text x="567" y="36" font-weight="700" fill="#6ee7b7">Cross-entropy: loss = −ln(p)</text>
              <line x1="40" y1="250" x2="360" y2="250" stroke="#4b4a78"/>
              <line x1="200" y1="60" x2="200" y2="250" stroke="#4b4a78"/>
              <text x="200" y="270" font-size="11" fill="#9b99b8">0</text>
              <text x="100" y="270" font-size="11" fill="#9b99b8">−2</text>
              <text x="300" y="270" font-size="11" fill="#9b99b8">+2</text>
              <text x="192" y="284" font-size="11" fill="#9b99b8">error = prediction − true value</text>
              <path d="M50.0,70.0 L60.0,93.2 L70.0,114.8 L80.0,134.8 L90.0,153.2 L100.0,170.0 L110.0,185.2 L120.0,198.8 L130.0,210.8 L140.0,221.2 L150.0,230.0 L160.0,237.2 L170.0,242.8 L180.0,246.8 L190.0,249.2 L200.0,250.0 L210.0,249.2 L220.0,246.8 L230.0,242.8 L240.0,237.2 L250.0,230.0 L260.0,221.2 L270.0,210.8 L280.0,198.8 L290.0,185.2 L300.0,170.0 L310.0,153.2 L320.0,134.8 L330.0,114.8 L340.0,93.2 L350.0,70.0" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <circle cx="300" cy="170" r="5" fill="#f59e0b"/>
              <text x="300" y="155" font-size="12" fill="#fcd34d">error 2 → loss 4</text>
              <circle cx="175" cy="245" r="5" fill="#10b981"/>
              <rect x="140" y="197" width="120" height="18" rx="4" fill="#1f1f44"/><text x="200" y="210" font-size="12" fill="#6ee7b7">error −0.5 → 0.25</text>
              <line x1="415" y1="250" x2="735" y2="250" stroke="#4b4a78"/>
              <line x1="420" y1="60" x2="420" y2="250" stroke="#4b4a78"/>
              <text x="420" y="270" font-size="11" fill="#9b99b8">0</text>
              <text x="570" y="270" font-size="11" fill="#9b99b8">0.5</text>
              <text x="720" y="270" font-size="11" fill="#9b99b8">1</text>
              <text x="567" y="284" font-size="11" fill="#9b99b8">p = probability given to the right answer</text>
              <path d="M423.0,84.2 L426.0,109.2 L429.0,123.8 L435.0,142.2 L441.0,154.3 L450.0,167.1 L465.0,181.7 L480.0,192.1 L510.0,206.7 L540.0,217.0 L570.0,225.0 L600.0,231.6 L630.0,237.2 L660.0,242.0 L690.0,246.2 L720.0,250.0" fill="none" stroke="#10b981" stroke-width="2.5"/>
              <circle cx="450" cy="167.1" r="5" fill="#ec4899"/>
              <text x="462" y="160" font-size="12" fill="#f9a8d4" text-anchor="start">p = 0.1 → 2.303</text>
              <circle cx="570" cy="225" r="5" fill="#f59e0b"/>
              <text x="580" y="212" font-size="12" fill="#fcd34d" text-anchor="start">p = 0.5 → 0.693</text>
              <circle cx="690" cy="246.2" r="5" fill="#10b981"/>
              <text x="690" y="230" font-size="12" fill="#6ee7b7">p = 0.9 → 0.105</text>
            </g>
          </svg>
          <figcaption>Left: squaring makes big errors cost much more than small ones. Right: cross-entropy is small when the right answer gets a high probability, and grows fast as that probability drops towards 0.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What a loss function does</h3>
          <p>Maya trains a network at her company in Bristol. After each prediction, she needs a score for the mistake. That score is the <strong>loss</strong>.</p>
          <ul class="lc-list">
            <li>A loss is always one number for the whole batch.</li>
            <li>A perfect prediction gives a loss of 0 (or very close to 0).</li>
            <li>A worse prediction gives a bigger loss.</li>
          </ul>
          <p>The loss is the thing training tries to make small. Later in this course, backpropagation and gradient descent use it to change the weights. So the choice of loss tells the network what "good" means.</p>
        </div>
        <div class="lc-card">
          <h3>Mean squared error (MSE)</h3>
          <p>Use MSE when the network predicts a <strong>number</strong>, such as a price or a temperature. This is called <strong>regression</strong>. The recipe has three steps:</p>
          <ol class="lc-list">
            <li>Find each <strong>error</strong>: prediction minus true value.</li>
            <li>Square each error. This removes the minus sign and makes big errors count much more.</li>
            <li>Take the mean (average).</li>
          </ol>
          <table class="lc-table">
            <thead><tr><th>True value</th><th>Prediction ŷ</th><th>Error</th><th>Error²</th></tr></thead>
            <tbody>
              <tr><td>3.0</td><td>2.5</td><td>−0.5</td><td>0.25</td></tr>
              <tr><td>5.0</td><td>5.0</td><td>0.0</td><td>0.00</td></tr>
              <tr><td>2.0</td><td>4.0</td><td>+2.0</td><td>4.00</td></tr>
              <tr><td colspan="3"><strong>MSE = (0.25 + 0 + 4) ÷ 3</strong></td><td><strong>1.4167</strong></td></tr>
            </tbody>
          </table>
          <p>Look at the last row. One error of 2 gives 4.00 of the loss. The small error of 0.5 gives only 0.25. MSE punishes big mistakes hard.</p>
          <p>In numpy, MSE is one line: <code>np.mean((y_pred - y_true) ** 2)</code>. Part 1 in the code editor below works out this table and gives 1.4167.</p>
        </div>
        <div class="lc-card">
          <h3>Cross-entropy</h3>
          <p>Use cross-entropy when the network picks a <strong>class</strong>, such as "spam" or "not spam". This is called <strong>classification</strong>. Here the network outputs a <strong>probability</strong> (a number from 0 to 1) for each class.</p>
          <p>Cross-entropy looks only at the probability <em>p</em> given to the right class. The loss is <code>−ln(p)</code>. Here <code>ln</code> is the natural logarithm, <code>np.log</code> in numpy.</p>
          <table class="lc-table">
            <thead><tr><th>p for the right class</th><th>Loss −ln(p)</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>0.99</td><td>0.010</td><td>Sure and right: almost no loss</td></tr>
              <tr><td>0.9</td><td>0.105</td><td>Fairly sure and right</td></tr>
              <tr><td>0.5</td><td>0.693</td><td>Not sure</td></tr>
              <tr><td>0.1</td><td>2.303</td><td>Fairly sure and wrong</td></tr>
              <tr><td>0.01</td><td>4.605</td><td>Very sure and wrong: big loss</td></tr>
            </tbody>
          </table>
          <p><strong>Two classes (binary).</strong> The network gives one number: P(class 1). If the label is 1, then p is that number. If the label is 0, then p is 1 minus that number. This is <strong>binary cross-entropy</strong>.</p>
          <p><strong>Many classes.</strong> Softmax gives one probability per class, and they add up to 1. Say an image is a dog, and the output is cat 0.7, dog 0.2, bird 0.1. The loss is −ln(0.2) = 1.609. The cat and bird numbers do not enter the formula directly.</p>
          <p>In numpy, binary cross-entropy for a whole batch is one line. Part 2 in the code editor below shows it.</p>
          <p>It uses four examples with labels 1, 1, 0, 0 and probabilities 0.9, 0.6, 0.2, 0.7. Their losses are 0.105, 0.511, 0.223 and 1.204. The mean is 0.5108.</p>
          <p>Part 3 does the same with <code>np.clip</code>, which stops <code>log(0)</code>. Part 4 works out the 3-class dog example.</p>
          <p>The last example has label 0, but the network said 0.7 for class 1. It was confident and wrong, so its loss (1.204) is the biggest.</p>
        </div>
        <div class="lc-card">
          <h3>Which loss should you use?</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Output layer</th><th>Loss</th><th>PyTorch name</th></tr></thead>
            <tbody>
              <tr><td>Predict a number</td><td>Linear (no activation)</td><td>MSE</td><td><code>nn.MSELoss</code></td></tr>
              <tr><td>Yes or no</td><td>1 unit + sigmoid</td><td>Binary cross-entropy</td><td><code>nn.BCEWithLogitsLoss</code></td></tr>
              <tr><td>One of many classes</td><td>1 unit per class + softmax</td><td>Cross-entropy</td><td><code>nn.CrossEntropyLoss</code></td></tr>
            </tbody>
          </table>
          <p>A note for later: <code>nn.CrossEntropyLoss</code> and <code>nn.BCEWithLogitsLoss</code> expect raw scores (called <strong>logits</strong>). They apply softmax or sigmoid inside. This is more stable with numbers. So you do not add softmax yourself before them.</p>
          <p>Why not use MSE for classes? It works, but it learns slowly. When the network is very wrong, MSE gives only a small push. Cross-entropy gives a big push, so learning is faster.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the loss</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Put each task with the loss function that fits it best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="mse" data-label="Mean squared error"></div>
              <div data-sorter-target="bucket" data-bucket="ce" data-label="Cross-entropy"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="mse" data-why="A price is a number on a scale. The error is how far off the number is.">Predict the selling price of a house</li>
              <li data-bucket="ce" data-why="There are two classes. The network gives a probability for spam.">Decide if an email is spam or not spam</li>
              <li data-bucket="mse" data-why="Temperature is a number, so this is regression.">Predict tomorrow's temperature in degrees</li>
              <li data-bucket="ce" data-why="There are 10 classes. Softmax gives a probability for each digit.">Read a handwritten digit from 0 to 9</li>
              <li data-bucket="mse" data-why="The output is a count, which is a number. MSE is a simple first choice.">Predict how many cups of coffee a café sells tomorrow</li>
              <li data-bucket="ce" data-why="Each point belongs to one of two classes, so this is classification.">Label each point of the moons dataset as class 0 or class 1</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below has four parts. Part 1 is MSE. Parts 2 and 3 are binary cross-entropy. Part 4 is 3-class cross-entropy.</p>
          <ol class="lc-list">
            <li>In Part 1, change the last prediction in <code>y_pred</code> from <code>4.0</code> to <code>2.2</code>. How much does the MSE drop?</li>
            <li>In Part 2, change the last value in <code>probs</code> from <code>0.7</code> to <code>0.99</code>. The label is 0, so this is very wrong. Watch its loss jump in Parts 2 and 3.</li>
            <li>In Part 4, set <code>true_class = 0</code> (cat). The loss is now −ln(0.7), which is much smaller.</li>
            <li>In Part 4, change <code>probs3</code> to <code>[0.4, 0.5, 0.1]</code>. Keep the sum at 1. Does the dog loss go down?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A loss function turns "how wrong" into one number. Use mean squared error when you predict numbers, and cross-entropy when you predict classes.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Two loss functions, written by hand with numpy.
        # A loss is one number that says how wrong the model is. Lower is better.
        import numpy as np

        # ── Part 1: mean squared error (MSE) for a regression task ──
        print("== Part 1: mean squared error ==")
        y_true = np.array([3.0, 5.0, 2.0])     # real values (for example, house prices in £100k)
        y_pred = np.array([2.5, 5.0, 4.0])     # what the model predicted

        errors = y_pred - y_true
        for t, p, e in zip(y_true, y_pred, errors):
            print(f"  true {t:.1f}  predicted {p:.1f}  error {e:+.1f}  squared {e**2:.2f}")
        mse = np.mean((y_pred - y_true) ** 2)  # MSE in one line
        print(f"  MSE = {round(mse, 4)}")

        # ── Part 2: binary cross-entropy in one line ──
        print("\n== Part 2: binary cross-entropy in one line ==")
        labels = np.array([1, 1, 0, 0])
        probs  = np.array([0.9, 0.6, 0.2, 0.7])   # P(class 1) for each example
        loss = -(labels * np.log(probs) + (1 - labels) * np.log(1 - probs))
        print(" ", loss.round(3))
        print("  mean loss =", round(loss.mean(), 4))

        # ── Part 3: a safer binary cross-entropy, with a bar for each loss ──
        print("\n== Part 3: a safer binary cross-entropy ==")
        def binary_cross_entropy(y, p):
            p = np.clip(p, 1e-12, 1 - 1e-12)      # avoid log(0)
            return -(y * np.log(p) + (1 - y) * np.log(1 - p))

        losses = binary_cross_entropy(labels, probs)
        for y, p, l in zip(labels, probs, losses):
            print(f"  label {y}  P(class 1) {p:.2f}  loss {l:.3f}  " + "#" * int(l * 20))
        print(f"  mean loss = {losses.mean():.4f}")

        # ── Part 4: cross-entropy with 3 classes ──
        print("\n== Part 4: cross-entropy with 3 classes ==")
        # Only the probability of the TRUE class is used.
        classes = ["cat", "dog", "bird"]
        probs3 = np.array([0.7, 0.2, 0.1])        # output of softmax, adds up to 1
        true_class = 1                            # the image is really a dog
        print(f"  true class is {classes[true_class]}, its probability is {probs3[true_class]}")
        print(f"  loss = -ln({probs3[true_class]}) = {-np.log(probs3[true_class]):.3f}")

        # Try it: change y_pred, probs, probs3 or true_class and watch the losses change.
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Derivatives and the Chain Rule (Simple Intro)</h1>
        </div>
        <p class="lc-lead">To make the loss smaller, the network must know which way to move each weight. A <strong>derivative</strong> answers that question. It tells you how fast the output changes when you change the input a little. In this lesson you will learn derivatives as slopes, check them with numbers, and learn the <strong>chain rule</strong>. The chain rule is the key idea behind backpropagation.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: the curve y equals x squared with a tangent line at x equals 3. The slope there is 6. Right: the chain x equals 1, then u equals 2x plus 1 equals 3, then y equals u squared equals 9. The local slopes are du/dx equals 2 and dy/du equals 6. Multiply them: dy/dx equals 12.">
            <defs><marker id="nn10a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker><marker id="nn10b" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="370" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="195" y="36" font-weight="700" fill="#93c5fd">Slope of y = x² at x = 3</text>
              <line x1="50" y1="260" x2="370" y2="260" stroke="#4b4a78"/>
              <text x="120" y="278" font-size="11" fill="#9b99b8">0</text>
              <text x="180" y="278" font-size="11" fill="#9b99b8">1</text>
              <text x="240" y="278" font-size="11" fill="#9b99b8">2</text>
              <text x="300" y="278" font-size="11" fill="#9b99b8">3</text>
              <text x="360" y="278" font-size="11" fill="#9b99b8">4</text>
              <path d="M60.0,248.0 L72.0,252.3 L84.0,255.7 L96.0,258.1 L108.0,259.5 L120.0,260.0 L132.0,259.5 L144.0,258.1 L156.0,255.7 L168.0,252.3 L180.0,248.0 L192.0,242.7 L204.0,236.5 L216.0,229.3 L228.0,221.1 L240.0,212.0 L252.0,201.9 L264.0,190.9 L276.0,178.9 L288.0,165.9 L300.0,152.0 L312.0,137.1 L324.0,121.3 L336.0,104.5 L348.0,86.7 L360.0,68.0" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <line x1="240" y1="224" x2="350" y2="92" stroke="#f59e0b" stroke-width="2" stroke-dasharray="6 4"/>
              <circle cx="300" cy="152" r="5" fill="#f59e0b"/>
              <text x="182" y="120" font-size="12" fill="#fcd34d">at x = 3, y = 9</text>
              <text x="182" y="138" font-size="12" fill="#fcd34d">slope = 2 × 3 = 6</text>
              <text x="182" y="168" font-size="11" fill="#9b99b8">x up by 0.001</text>
              <text x="182" y="184" font-size="11" fill="#9b99b8">y up by about 0.006</text>
              <rect x="390" y="10" width="360" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="570" y="36" font-weight="700" fill="#6ee7b7">Chain rule: y = (2x + 1)²</text>
              <rect x="405" y="80" width="70" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="440" y="107">x = 1</text>
              <rect x="535" y="80" width="70" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="570" y="107">u = 3</text>
              <rect x="665" y="80" width="70" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="700" y="107">y = 9</text>
              <line x1="477" y1="102" x2="531" y2="102" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn10a)"/>
              <line x1="607" y1="102" x2="661" y2="102" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn10a)"/>
              <text x="505" y="70" font-size="12" fill="#9b99b8">u = 2x + 1</text>
              <text x="635" y="70" font-size="12" fill="#9b99b8">y = u²</text>
              <text x="505" y="150" font-size="12" fill="#f9a8d4">du/dx = 2</text>
              <text x="635" y="150" font-size="12" fill="#f9a8d4">dy/du = 2u = 6</text>
              <path d="M700,128 L700,186 L440,186 L440,134" fill="none" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn10b)"/>
              <text x="570" y="178" font-size="11" fill="#f9a8d4">go back, multiply the slopes</text>
              <rect x="430" y="212" width="280" height="50" rx="8" fill="#27274e" stroke="#ec4899"/>
              <text x="570" y="234" font-weight="700">dy/dx = 6 × 2 = 12</text>
              <text x="570" y="252" font-size="11" fill="#9b99b8">numeric check also gives 12.000</text>
            </g>
          </svg>
          <figcaption>Left: a derivative is the slope of the curve at one point. Right: for a chain of steps, find the slope of each small step, then multiply them together.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>A derivative is a slope</h3>
          <p>A <strong>slope</strong> is a rate of change. It says: "if the input goes up by 1 small step, how much does the output change?"</p>
          <ul class="lc-list">
            <li>A positive slope means the output goes <strong>up</strong> when the input goes up.</li>
            <li>A negative slope means the output goes <strong>down</strong> when the input goes up.</li>
            <li>A slope of 0 means you are at a flat point, such as the bottom of a valley.</li>
          </ul>
          <p>The <strong>derivative</strong> of a function is its slope at one point. For <code>f(x) = x²</code>, the rule is: the derivative is <code>2x</code>. At x = 3 the slope is 6. At x = −2 the slope is −4.</p>
          <p>Why does this matter? Think of x as one weight and f(x) as the loss. The slope tells you which way makes the loss smaller. If the slope is positive, make the weight smaller. If it is negative, make the weight bigger.</p>
        </div>
        <div class="lc-card">
          <h3>Check a slope with numbers</h3>
          <p>You do not need to know the rules to find a slope. You can measure it. Nudge x a tiny bit up and a tiny bit down. Then see how much f changes. This is a <strong>numeric derivative</strong>.</p>
          <p>For f(x) = x² at x = 3, with a nudge h = 0.001:</p>
          <ul class="lc-list">
            <li>f(3.001) = 9.006001</li>
            <li>f(2.999) = 8.994001</li>
            <li>slope ≈ (9.006001 − 8.994001) ÷ 0.002 = 0.012 ÷ 0.002 = <strong>6</strong></li>
          </ul>
          <p>In Python, a numeric derivative is just two lines. Part 1 in the code editor below writes it as <code>numeric_derivative</code>.</p>
          <p>For x² it gives 6 at x = 3 and −4 at x = −2. These match the rule 2x. Part 2 checks more points against the rule.</p>
          <p>Numeric derivatives are slow, because you run the function twice for every input. A network has thousands of weights. So we use the rules to train, and numbers only to <em>check</em> our work.</p>
        </div>
        <div class="lc-card">
          <h3>The chain rule</h3>
          <p>A network is a <strong>chain</strong> of small steps. The output of one step is the input of the next. The <strong>chain rule</strong> says: the slope of the whole chain is the slope of each step, multiplied together.</p>
          <p>Take <code>y = (2x + 1)²</code> at x = 1. Split it into two steps:</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Value at x = 1</th><th>Slope of this step</th></tr></thead>
            <tbody>
              <tr><td>u = 2x + 1</td><td>u = 3</td><td>du/dx = 2</td></tr>
              <tr><td>y = u²</td><td>y = 9</td><td>dy/du = 2u = 6</td></tr>
              <tr><td><strong>Whole chain</strong></td><td></td><td><strong>dy/dx = 6 × 2 = 12</strong></td></tr>
            </tbody>
          </table>
          <p>Read <code>dy/du</code> as "the slope of y when u changes". Here is an everyday picture. Say u grows 2 times as fast as x. And y grows 6 times as fast as u. Then y grows 2 × 6 = 12 times as fast as x.</p>
          <p>Check it with a nudge: (2 × 1.001 + 1)² − (2 × 0.999 + 1)² = 9.012004 − 8.988004 = 0.024. Divide by 0.002 and you get 12. Part 3 in the code editor below does this check.</p>
        </div>
        <div class="lc-card">
          <h3>The gradient: one slope per weight</h3>
          <p>A loss usually depends on many weights. Then you find one slope for each weight. You change one weight and keep the others fixed. The list of all these slopes is called the <strong>gradient</strong>.</p>
          <p>Example: loss = w1² + 3 × w2, at w1 = 2 and w2 = 5.</p>
          <ul class="lc-list">
            <li>Slope for w1: the rule gives 2 × w1 = <strong>4</strong>.</li>
            <li>Slope for w2: the loss grows 3 for every 1 step in w2, so the slope is <strong>3</strong>.</li>
            <li>Gradient = <strong>[4, 3]</strong>.</li>
          </ul>
          <p>Part 4 in the code editor below finds this gradient with numbers.</p>
          <p>A network with 13 weights and biases has a gradient with 13 numbers. Each number says how that one parameter moves the loss.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: use the chain rule</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps in order to find dy/dx for y = (3x − 1)² at x = 2.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Split the function into steps: u = 3x − 1, then y = u²</li>
              <li data-order="2">Go forward with x = 2: u = 3 × 2 − 1 = 5, and y = 25</li>
              <li data-order="3">Find the slope of the first step: du/dx = 3</li>
              <li data-order="4">Find the slope of the second step: dy/du = 2u = 10</li>
              <li data-order="5">Multiply the slopes: dy/dx = 10 × 3 = 30</li>
              <li data-order="6">Check with a numeric derivative: it also gives about 30</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below finds slopes with numbers and checks them against the rules. It has four parts.</p>
          <ol class="lc-list">
            <li>In Part 1, change <code>f</code> to return <code>x ** 3</code>. In Part 2, change <code>slope_rule</code> to return <code>3 * x ** 2</code>. Do the two columns still match?</li>
            <li>Now set <code>h=0.1</code> in <code>numeric_derivative</code> in Part 1. The numeric slope for x³ is now a little off. A smaller h is more exact.</li>
            <li>In Part 3, the chain rule part, change <code>x = 1.0</code> to <code>x = 2.0</code>. Work out dy/dx by hand first, then run it.</li>
            <li>In Part 4, change the loss to <code>w1 ** 2 + w2 ** 2</code>. What is the gradient at w1 = 2, w2 = 5?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A derivative is a slope: it tells you which way to move a weight to make the loss smaller. The chain rule finds the slope of a chain of steps by multiplying the slope of each step.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Derivatives with tiny numbers. A derivative is a slope:
        # how much the output changes when the input changes a little.

        # ── Part 1: a numeric derivative of x squared ──
        print("== Part 1: a numeric derivative ==")
        def f(x):
            return x ** 2

        def numeric_derivative(func, x, h=0.001):
            # Nudge x a little up and a little down. Compare the outputs.
            return (func(x + h) - func(x - h)) / (2 * h)

        print(" ", round(numeric_derivative(f, 3), 4))
        print(" ", round(numeric_derivative(f, -2), 4))

        # ── Part 2: check the numeric slope against the rule ──
        print("\n== Part 2: numeric slope vs the rule ==")
        def slope_rule(x):
            return 2 * x          # the known rule for the slope of x^2

        for x in [-2, 0, 1, 3]:
            print(f"  x = {x:2}  numeric = {numeric_derivative(f, x):8.4f}  rule = {slope_rule(x):3}")

        # ── Part 3: the chain rule for y = (2x + 1)^2 ──
        print("\n== Part 3: the chain rule ==")
        x = 1.0
        u = 2 * x + 1          # inner step
        y = u ** 2             # outer step
        du_dx = 2              # slope of the inner step
        dy_du = 2 * u          # slope of the outer step
        print(f"  at x = {x}: u = {u}, y = {y}")
        print(f"  dy/du = {dy_du}, du/dx = {du_dx}")
        print(f"  chain rule: dy/dx = dy/du * du/dx = {dy_du * du_dx}")
        print(f"  numeric check: {numeric_derivative(lambda t: (2 * t + 1) ** 2, x):.3f}")

        # ── Part 4: the gradient, one slope for each weight ──
        print("\n== Part 4: the gradient ==")
        def loss(w1, w2):
            return w1 ** 2 + 3 * w2

        w1, w2 = 2.0, 5.0
        g1 = numeric_derivative(lambda t: loss(t, w2), w1)   # change w1, keep w2 fixed
        g2 = numeric_derivative(lambda t: loss(w1, t), w2)   # change w2, keep w1 fixed
        print(f"  gradient at w1 = {w1}, w2 = {w2}: [{g1:.3f}, {g2:.3f}]")

        # Try it: change f to x ** 3 and slope_rule to 3 * x ** 2. Then try h=0.1.
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Backpropagation</h1>
        </div>
        <p class="lc-lead">To train a network, you need the gradient: one slope for every weight and bias. <strong>Backpropagation</strong> finds all of them in one pass. It starts at the loss and walks back through the network, one layer at a time. At each step it uses the chain rule. In this lesson you will do backpropagation by hand on a tiny network, then check it with numbers.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="A tiny network as a chain. Forward pass, left to right: x equals 2, z1 equals 1, a1 equals 1, y hat equals 2, loss equals 1. Backward pass, right to left: dL/dy hat equals 2, dL/da1 equals 3, dL/dz1 equals 3. Weight gradients: dL/dw2 equals 2, dL/db2 equals 2, dL/dw1 equals 6, dL/db1 equals 3.">
            <defs><marker id="nn11a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#10b981"/></marker><marker id="nn11b" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="28" text-anchor="start" font-weight="700" fill="#6ee7b7">Forward pass: compute the values</text>
              <text x="150" y="60" font-size="11.5" fill="#9b99b8">w1 = 0.5, b1 = 0</text>
              <text x="310" y="60" font-size="11.5" fill="#9b99b8">ReLU</text>
              <text x="470" y="60" font-size="11.5" fill="#9b99b8">w2 = 1.5, b2 = 0.5</text>
              <text x="625" y="60" font-size="11.5" fill="#9b99b8">(ŷ − y)², y = 1</text>
              <rect x="25" y="72" width="90" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="70" y="99">x = 2</text>
              <rect x="185" y="72" width="90" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="230" y="99">z1 = 1</text>
              <rect x="345" y="72" width="90" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="390" y="99">a1 = 1</text>
              <rect x="505" y="72" width="90" height="44" rx="8" fill="#27274e" stroke="#10b981"/><text x="550" y="99">ŷ = 2</text>
              <rect x="655" y="72" width="90" height="44" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="700" y="99">loss = 1</text>
              <line x1="117" y1="94" x2="181" y2="94" stroke="#10b981" stroke-width="1.8" marker-end="url(#nn11a)"/>
              <line x1="277" y1="94" x2="341" y2="94" stroke="#10b981" stroke-width="1.8" marker-end="url(#nn11a)"/>
              <line x1="437" y1="94" x2="501" y2="94" stroke="#10b981" stroke-width="1.8" marker-end="url(#nn11a)"/>
              <line x1="597" y1="94" x2="651" y2="94" stroke="#10b981" stroke-width="1.8" marker-end="url(#nn11a)"/>
              <text x="20" y="160" text-anchor="start" font-weight="700" fill="#f9a8d4">Backward pass: slope of the loss for each value</text>
              <rect x="185" y="174" width="90" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="230" y="201">dL/dz1 = 3</text>
              <rect x="345" y="174" width="90" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="390" y="201">dL/da1 = 3</text>
              <rect x="505" y="174" width="90" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="550" y="201">dL/dŷ = 2</text>
              <rect x="655" y="174" width="90" height="44" rx="8" fill="#27274e" stroke="#ec4899"/><text x="700" y="201">start: 1</text>
              <line x1="653" y1="196" x2="599" y2="196" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn11b)"/>
              <line x1="503" y1="196" x2="439" y2="196" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn11b)"/>
              <line x1="343" y1="196" x2="279" y2="196" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn11b)"/>
              <text x="625" y="236" font-size="11.5" fill="#9b99b8">× 2(ŷ − y)</text>
              <text x="470" y="236" font-size="11.5" fill="#9b99b8">× w2 = 1.5</text>
              <text x="310" y="236" font-size="11.5" fill="#9b99b8">× ReLU slope 1</text>
              <rect x="400" y="262" width="345" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="572" y="284">dL/dw2 = 2 × a1 = 2</text>
              <text x="572" y="304">dL/db2 = 2</text>
              <rect x="25" y="262" width="345" height="54" rx="8" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="197" y="284">dL/dw1 = 3 × x = 6</text>
              <text x="197" y="304">dL/db1 = 3</text>
            </g>
          </svg>
          <figcaption>Green: the forward pass computes each value. Pink: the backward pass starts at the loss and multiplies by one local slope at each step. The purple boxes are the gradients for the weights and biases.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The idea: pass the blame backwards</h3>
          <p>The loss says how wrong the network was. Now we ask: how much did each weight add to that mistake? This is like passing blame back along a chain.</p>
          <ol class="lc-list">
            <li><strong>Forward pass.</strong> Run the input through the network. Save every value: z, a and ŷ.</li>
            <li><strong>Start at the loss.</strong> Find the slope of the loss for the output ŷ.</li>
            <li><strong>Go back one step.</strong> Multiply by the slope of that step. This is the chain rule.</li>
            <li><strong>At each layer</strong>, read off the slopes for that layer's weights and bias.</li>
            <li>Repeat until you reach the first layer.</li>
          </ol>
          <p>We save the forward values because the backward pass needs them. For example, the slope for a weight uses the input that the weight was multiplied by.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example by hand</h3>
          <p>The network in the diagram has one input, one hidden ReLU unit and one output. The input is x = 2 and the right answer is y = 1. The weights are w1 = 0.5, b1 = 0, w2 = 1.5 and b2 = 0.5. The loss is the squared error (ŷ − y)².</p>
          <p><strong>Forward:</strong> z1 = 0.5 × 2 + 0 = 1. Then a1 = ReLU(1) = 1. Then ŷ = 1.5 × 1 + 0.5 = 2. The loss is (2 − 1)² = 1.</p>
          <table class="lc-table">
            <thead><tr><th>Backward step</th><th>Rule</th><th>Value</th></tr></thead>
            <tbody>
              <tr><td>dL/dŷ</td><td>2 × (ŷ − y) = 2 × (2 − 1)</td><td>2</td></tr>
              <tr><td>dL/dw2</td><td>dL/dŷ × a1 = 2 × 1</td><td>2</td></tr>
              <tr><td>dL/db2</td><td>dL/dŷ × 1</td><td>2</td></tr>
              <tr><td>dL/da1</td><td>dL/dŷ × w2 = 2 × 1.5</td><td>3</td></tr>
              <tr><td>dL/dz1</td><td>dL/da1 × ReLU slope (1, because z1 &gt; 0)</td><td>3</td></tr>
              <tr><td>dL/dw1</td><td>dL/dz1 × x = 3 × 2</td><td>6</td></tr>
              <tr><td>dL/db1</td><td>dL/dz1 × 1</td><td>3</td></tr>
            </tbody>
          </table>
          <p>Every row reuses the row above it. That is why backpropagation is fast. It never starts again from the beginning.</p>
          <p>All gradients here are positive. So making any of these four numbers a little smaller will lower the loss. That makes sense: ŷ = 2 is too big.</p>
        </div>
        <div class="lc-card">
          <h3>The same steps in code</h3>
          <p>Each row of the table becomes one line of Python. Part 1 in the code editor below runs this tiny network, forward and then backward.</p>
          <p>It prints the gradients 2, 2, 6 and 3 for w2, b2, w1 and b1, the same as the table.</p>
          <p>For a full layer with a batch, the same steps use matrices. With the shapes from earlier in this course (Z = X @ W + b), the rules become:</p>
          <table class="lc-table">
            <thead><tr><th>Gradient</th><th>Formula</th><th>Shape matches</th></tr></thead>
            <tbody>
              <tr><td>Weights</td><td><code>dW = X.T @ dZ</code></td><td>W</td></tr>
              <tr><td>Bias</td><td><code>db = dZ.sum(axis=0)</code></td><td>b</td></tr>
              <tr><td>Layer input</td><td><code>dX = dZ @ W.T</code></td><td>X</td></tr>
            </tbody>
          </table>
          <p>A useful check: every gradient has the same shape as the thing it belongs to. Part 2 in the code editor below uses these rules on a 2-3-1 network and prints the shapes.</p>
        </div>
        <div class="lc-card">
          <h3>Check your gradients with numbers</h3>
          <p>Backprop code is easy to get wrong. A small mistake still gives numbers, just wrong ones. So you check it with a <strong>numeric gradient</strong>:</p>
          <ol class="lc-list">
            <li>Pick one weight. Add a tiny h, such as 0.00001, and run the forward pass.</li>
            <li>Subtract h from the weight and run the forward pass again.</li>
            <li>Slope ≈ (loss up − loss down) ÷ 2h.</li>
            <li>Compare with your backprop number. They should match to many decimal places.</li>
          </ol>
          <p>For w1 in our example: loss at w1 = 0.50001 is 1.00006, and at w1 = 0.49999 it is 0.99994. The difference is 0.00012. Divide by 0.00002 and you get 6. That matches. Part 3 in the code editor below checks every gradient of the 2-3-1 network this way.</p>
          <p>PyTorch does all of this for you with <strong>autograd</strong>. You will use it later in this course. It is still worth doing once by hand, so you know what it does.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one backward pass</h3>
          <p>Step through backpropagation for the network in the diagram.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="Forward pass">x = 2 gives z1 = 1, a1 = 1, ŷ = 2 and loss = 1. All values are saved.</li>
              <li data-kind="thought" data-label="Start at the loss">The loss is (ŷ − y)². Its slope for ŷ is 2 × (2 − 1) = 2.</li>
              <li data-kind="result" data-label="Output layer">dL/dw2 = 2 × a1 = 2 and dL/db2 = 2.</li>
              <li data-kind="thought" data-label="Back into the hidden unit">Multiply by w2: dL/da1 = 2 × 1.5 = 3.</li>
              <li data-kind="thought" data-label="Through ReLU">z1 = 1 is above 0, so the ReLU slope is 1. dL/dz1 = 3.</li>
              <li data-kind="result" data-label="Hidden layer">dL/dw1 = 3 × x = 6 and dL/db1 = 3.</li>
              <li data-kind="check" data-label="Numeric check">Nudge w1 by ±0.00001. The numeric slope is 6. It matches.</li>
              <li data-kind="warn" data-label="Watch out">If z1 were below 0, the ReLU slope would be 0. Then w1 and b1 would get no gradient for this example.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code editor below runs the tiny worked example from this lesson. Part 2 runs backpropagation on the 2-3-1 network from earlier in this course, with a batch of 3 examples and binary cross-entropy. Part 3 checks all 13 gradients with numbers.</p>
          <ol class="lc-list">
            <li>Run it. In Part 3, the two columns, backprop and numeric, should match for every parameter.</li>
            <li>Add a bug in Part 2: change <code>dZ1 = dA1 * (Z1 &gt; 0)</code> to <code>dZ1 = dA1</code>. Which rows of Part 3 stop matching? Why?</li>
            <li>In Part 2, change the labels <code>y</code> to <code>[[0.0], [1.0], [0.0]]</code>. The gradients change sign for many weights.</li>
            <li>In Part 3, look at <code>W1[1, 2]</code>: its gradient is 0. Unit 3 is off (z &lt; 0) for the first two examples. The third example turns it on, but its x2 is 0.</li>
            <li>In Part 1, change <code>x, y = 2.0, 1.0</code> to <code>x, y = -2.0, 1.0</code>. Now z1 is below 0. Which gradients become 0?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Backpropagation is the chain rule, applied from the loss back to the first layer. Each step reuses the step before, so one backward pass gives the gradient for every weight.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Backpropagation by hand, then checked with numbers.
        import numpy as np

        # ── Part 1: the tiny worked example (1 input, 1 hidden ReLU unit, 1 output) ──
        print("== Part 1: the tiny worked example ==")
        x, y = 2.0, 1.0
        w1, b1, w2, b2 = 0.5, 0.0, 1.5, 0.5

        # forward
        z1 = w1 * x + b1
        a1 = max(0.0, z1)            # ReLU
        y_hat = w2 * a1 + b2
        loss = (y_hat - y) ** 2
        print("forward:", z1, a1, y_hat, loss)

        # backward
        d_yhat = 2 * (y_hat - y)
        d_w2, d_b2 = d_yhat * a1, d_yhat
        d_a1 = d_yhat * w2
        d_z1 = d_a1 * (1.0 if z1 > 0 else 0.0)   # ReLU slope
        d_w1, d_b1 = d_z1 * x, d_z1
        print("grads:", d_w2, d_b2, d_w1, d_b1)

        # ── Part 2: backprop for the 2-3-1 network on a batch of 3 examples ──
        # 2 inputs -> 3 hidden ReLU units -> 1 sigmoid output, binary cross-entropy loss.
        print("\n== Part 2: backprop for the 2-3-1 network ==")
        X = np.array([[1.0, 2.0], [0.0, 1.0], [2.0, 0.0]])    # batch of 3 examples
        y = np.array([[1.0], [0.0], [1.0]])                    # the right answers
        P = {
            "W1": np.array([[0.5, -1.0, 1.0], [1.0, 0.5, -0.5]]),  # shape (2, 3)
            "b1": np.array([0.0, 0.5, -0.5]),
            "W2": np.array([[1.0], [-1.0], [0.5]]),                # shape (3, 1)
            "b2": np.array([-0.5]),
        }

        def forward(P):
            Z1 = X @ P["W1"] + P["b1"]
            A1 = np.maximum(0, Z1)                     # ReLU
            Z2 = A1 @ P["W2"] + P["b2"]
            y_hat = 1 / (1 + np.exp(-Z2))              # sigmoid
            loss = -np.mean(y * np.log(y_hat) + (1 - y) * np.log(1 - y_hat))
            return Z1, A1, y_hat, loss

        Z1, A1, y_hat, loss = forward(P)
        print("y_hat:", y_hat.ravel().round(3), " loss:", round(loss, 4))

        # Backward pass, one layer at a time (N = number of examples).
        N = len(X)
        G = {}
        dZ2 = (y_hat - y) / N                  # sigmoid + cross-entropy together give this short form
        G["W2"] = A1.T @ dZ2                   # dW = X.T @ dZ, shape (3, 1), same as W2
        G["b2"] = dZ2.sum(axis=0)              # db = dZ.sum(axis=0)
        dA1 = dZ2 @ P["W2"].T                  # dX = dZ @ W.T: send the error back
        dZ1 = dA1 * (Z1 > 0)                   # ReLU slope: 1 if z > 0, else 0
        G["W1"] = X.T @ dZ1                    # shape (2, 3), same as W1
        G["b1"] = dZ1.sum(axis=0)
        for name in G:
            print(f"  {name} gradient shape {G[name].shape}, weight shape {P[name].shape}")

        # ── Part 3: check every gradient with a numeric gradient ──
        print("\n== Part 3: numeric gradient check ==")
        def numeric_grad(name, idx, h=1e-5):
            # Nudge ONE number up and down, run forward again, compare losses.
            old = P[name][idx]
            P[name][idx] = old + h; up = forward(P)[3]
            P[name][idx] = old - h; down = forward(P)[3]
            P[name][idx] = old
            return (up - down) / (2 * h)

        print("parameter   backprop   numeric")
        for name in ["W2", "b2", "W1", "b1"]:
            for idx in np.ndindex(P[name].shape):
                label = name + str(list(idx))
                print(f"{label:10} {G[name][idx]:9.5f} {numeric_grad(name, idx):9.5f}")

        # Try it: in Part 2, change dZ1 = dA1 * (Z1 > 0) to dZ1 = dA1. Which rows stop matching?
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Gradient Descent</h1>
        </div>
        <p class="lc-lead">Backpropagation gives you the gradient. Now you need to use it. <strong>Gradient descent</strong> moves every weight a small step in the direction that makes the loss smaller. Then it does this again, many times. In this lesson you will learn the update rule and three ways to group the data. Then you will run a training loop and watch the loss go down.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A bowl-shaped loss curve, loss equals (w minus 3) squared. Gradient descent starts at w equals 0 with loss 9. With learning rate 0.1 it moves to 0.6, 1.08, 1.46, 1.77 and 2.02. The steps get smaller as the curve gets flatter. The lowest point is at w equals 3.">
            <defs><marker id="nn12a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="7" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="740" height="280" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="240" y="22" width="280" height="50" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="380" y="44" font-weight="700">w = w − lr × grad</text>
              <text x="380" y="62" font-size="11" fill="#9b99b8">loss = (w − 3)², lr = 0.1, start at w = 0</text>
              <line x1="40" y1="260" x2="720" y2="260" stroke="#4b4a78"/>
              <text x="105" y="278" font-size="11" fill="#9b99b8">w = 0</text>
              <text x="285" y="278" font-size="11" fill="#9b99b8">w = 2</text>
              <text x="465" y="278" font-size="11" fill="#9b99b8">w = 4</text>
              <text x="645" y="278" font-size="11" fill="#9b99b8">w = 6</text>
              <path d="M60.0,76.2 L82.5,101.6 L105.0,125.0 L127.5,146.6 L150.0,166.2 L172.5,184.1 L195.0,200.0 L217.5,214.1 L240.0,226.2 L262.5,236.6 L285.0,245.0 L307.5,251.6 L330.0,256.2 L352.5,259.1 L375.0,260.0 L397.5,259.1 L420.0,256.2 L442.5,251.6 L465.0,245.0 L487.5,236.6 L510.0,226.2 L532.5,214.1 L555.0,200.0 L577.5,184.1 L600.0,166.2 L622.5,146.6 L645.0,125.0 L667.5,101.6 L690.0,76.2" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <path d="M110,129 L154,169" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn12a)"/>
              <path d="M163,177 L197,201" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn12a)"/>
              <path d="M206,207 L231,222" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn12a)"/>
              <path d="M240,226 L259,235" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn12a)"/>
              <path d="M268,239 L281,243" stroke="#ec4899" stroke-width="1.8" marker-end="url(#nn12a)"/>
              <circle cx="105" cy="125" r="5" fill="#f59e0b"/>
              <circle cx="159" cy="173.6" r="4.5" fill="#f59e0b"/>
              <circle cx="202.2" cy="204.7" r="4.5" fill="#f59e0b"/>
              <circle cx="236.8" cy="224.6" r="4.5" fill="#f59e0b"/>
              <circle cx="264.4" cy="237.3" r="4.5" fill="#f59e0b"/>
              <circle cx="286.5" cy="245.5" r="4.5" fill="#f59e0b"/>
              <text x="60" y="140" font-size="12" fill="#fcd34d">start</text>
              <text x="60" y="155" font-size="11" fill="#9b99b8">loss 9</text>
              <text x="170" y="236" font-size="11" fill="#9b99b8">big steps on</text>
              <text x="170" y="250" font-size="11" fill="#9b99b8">the steep part</text>
              <text x="320" y="214" font-size="12" fill="#fcd34d">step 5: w = 2.02</text>
              <text x="320" y="229" font-size="11" fill="#9b99b8">loss 0.97</text>
              <circle cx="375" cy="260" r="5" fill="#10b981"/>
              <text x="460" y="150" font-size="12" fill="#6ee7b7">lowest loss at w = 3</text>
              <text x="460" y="166" font-size="11" fill="#9b99b8">slope is 0 here</text>
              <line x1="440" y1="172" x2="381" y2="254" stroke="#10b981" stroke-width="1.2" stroke-dasharray="4 3"/>
            </g>
          </svg>
          <figcaption>Gradient descent walks down the loss curve. Each step is the learning rate times the slope, so steps get smaller as the curve gets flatter near the bottom.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The update rule</h3>
          <p>The gradient points <em>uphill</em>: it shows the way the loss grows fastest. We want the loss to go down, so we step the other way. For every weight and bias, the update rule is:</p>
          <p><strong>w = w − lr × grad</strong></p>
          <ul class="lc-list">
            <li><strong>grad</strong> is the slope of the loss for this weight, from backpropagation.</li>
            <li><strong>lr</strong> is the <strong>learning rate</strong>, a small number such as 0.1 or 0.01. It sets the size of each step.</li>
            <li>The minus sign makes the step go downhill.</li>
          </ul>
          <p>If the slope is positive, the weight gets smaller. If the slope is negative, the weight gets bigger. Either way, the loss goes down a little.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: five steps</h3>
          <p>Take the loss (w − 3)². Its slope is 2 × (w − 3). The best value is w = 3, but the network does not know that. It starts at w = 0 with lr = 0.1.</p>
          <p>Step 1 by hand: grad = 2 × (0 − 3) = −6. New w = 0 − 0.1 × (−6) = 0.6.</p>
          <p>Part 1 in the code editor below repeats this for five steps. The weight moves 0.6, 1.08, 1.46, 1.77, then 2.02. The loss falls from 5.76 to 3.69, 2.36, 1.51 and 0.97.</p>
          <p>The loss goes down every step. The steps also get smaller, because the slope gets smaller near the bottom. A real network does exactly this, but for thousands of weights at the same time.</p>
        </div>
        <div class="lc-card">
          <h3>Batch, mini-batch and stochastic</h3>
          <p>The gradient comes from the loss on some examples. How many examples do you use for each step? There are three choices. One full pass over all the training data is called an <strong>epoch</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Examples per step</th><th>Steps per epoch (40 examples)</th><th>Good and bad</th></tr></thead>
            <tbody>
              <tr><td>Batch (full batch)</td><td>All of them</td><td>1</td><td>Smooth, but slow on big data</td></tr>
              <tr><td>Mini-batch</td><td>A small group, such as 8, 32 or 64</td><td>5 (with 8)</td><td>Fast and fairly smooth. The usual choice.</td></tr>
              <tr><td>Stochastic (SGD)</td><td>1</td><td>40</td><td>Many quick steps, but very noisy</td></tr>
            </tbody>
          </table>
          <p>"Stochastic" means "random". You shuffle the data each epoch, so each step sees a random part of it. In practice, people often say "SGD" even when they use mini-batches.</p>
        </div>
        <div class="lc-card">
          <h3>The training loop</h3>
          <p>Every neural network trains with the same loop. Each pass through it is one step:</p>
          <ol class="lc-list">
            <li><strong>Forward:</strong> make predictions for a mini-batch.</li>
            <li><strong>Loss:</strong> measure how wrong they are.</li>
            <li><strong>Backward:</strong> find the gradient with backpropagation.</li>
            <li><strong>Update:</strong> change every weight with <code>w -= lr * grad</code>.</li>
          </ol>
          <p>Part 2 in the code editor below uses this loop to learn a straight line, y = w × x + b. The true rule is y = 2x + 1, plus some noise. It uses 40 points, mini-batches of 8 and lr = 0.01. That gives 5 updates per epoch.</p>
          <p>The loss starts at 39.34. After one epoch it is 6.76, and after 30 epochs it is 0.0745. The learned line is y = 2.05x + 0.83.</p>
          <p>The loss falls fast at first, then slowly. The line ends close to y = 2x + 1. The loss never reaches 0, because the points have noise.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which kind of gradient descent?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Maya has 1,000 training examples. Put each set-up in the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="batch" data-label="Full batch"></div>
              <div data-sorter-target="bucket" data-bucket="mini" data-label="Mini-batch"></div>
              <div data-sorter-target="bucket" data-bucket="sgd" data-label="Stochastic (1 example)"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="batch" data-why="All 1,000 examples are used for each step, so there is one step per epoch.">One update per epoch, using all 1,000 examples</li>
              <li data-bucket="mini" data-why="1,000 ÷ 32 gives about 32 steps per epoch, each on a small group.">Batch size 32, so about 32 updates per epoch</li>
              <li data-bucket="sgd" data-why="Each step uses one example, so there are 1,000 steps per epoch.">1,000 updates per epoch, one example each</li>
              <li data-bucket="sgd" data-why="One example gives a noisy gradient, so the loss jumps around.">The loss line is very bumpy from step to step</li>
              <li data-bucket="mini" data-why="Mini-batches are the normal choice for training neural networks.">The usual choice for training a neural network on a GPU</li>
              <li data-bucket="batch" data-why="The gradient uses every example, so it is the same each time. The path is smooth.">The smoothest path down, but each step is slow on big data</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the code editor below runs five steps on the loss (w − 3)². Part 2 trains the line y = w × x + b with gradient descent.</p>
          <ol class="lc-list">
            <li>In Part 1, set <code>lr = 0.5</code>. The weight lands on 3 in one step. Then try <code>lr = 1.1</code>: the loss grows.</li>
            <li>In Part 2, set <code>BATCH_SIZE = 40</code> (full batch). There is now only 1 update per epoch. The loss goes down more slowly per epoch.</li>
            <li>In Part 2, set <code>BATCH_SIZE = 1</code> (stochastic). There are now 40 updates per epoch, so the loss is already small after epoch 1.</li>
            <li>In Part 2, set <code>lr = 0.001</code>. The steps are now 10 times smaller. After 30 epochs, are w and b further from 2 and 1?</li>
            <li>In Part 2, set <code>EPOCHS = 100</code> with <code>BATCH_SIZE = 8</code>. How close does b get to 1?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Gradient descent repeats one simple rule: <code>w = w − lr × grad</code>. Each step moves every weight a little downhill, and many small steps make the loss small.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Gradient descent. Each step: forward, loss, gradient, then w = w - lr * grad.
        import numpy as np

        # ── Part 1: five steps on the loss (w - 3)^2 ──
        print("== Part 1: five steps of gradient descent ==")
        w = 0.0      # start here
        lr = 0.1     # learning rate
        for step in range(1, 6):
            grad = 2 * (w - 3)          # slope of the loss (w - 3)^2
            w = w - lr * grad           # the update rule
            print(f"step {step}: grad = {grad:6.3f}  new w = {w:.3f}  loss = {(w - 3) ** 2:.3f}")

        # ── Part 2: learn a line y = w*x + b from noisy points ──
        print("\n== Part 2: a training loop with mini-batches ==")
        np.random.seed(42)
        X = np.random.uniform(0, 5, 40)               # 40 inputs
        Y = 2.0 * X + 1.0 + np.random.randn(40) * 0.3 # true rule: y = 2x + 1, plus noise

        lr = 0.01          # learning rate: the size of each step
        BATCH_SIZE = 8     # 40 = full batch, 8 = mini-batch, 1 = stochastic
        EPOCHS = 30        # one epoch = one pass over all 40 points

        print(f"Batch size {BATCH_SIZE}: {int(np.ceil(len(X) / BATCH_SIZE))} updates per epoch\n")
        w, b = 0.0, 0.0    # start with a bad guess
        print(f"start     w = {w:.3f}  b = {b:.3f}  loss = {np.mean((w * X + b - Y) ** 2):.4f}")
        for epoch in range(1, EPOCHS + 1):
            order = np.random.permutation(len(X))     # shuffle the points each epoch
            for start in range(0, len(X), BATCH_SIZE):
                idx = order[start:start + BATCH_SIZE]
                x, y = X[idx], Y[idx]
                y_hat = w * x + b                     # 1. forward
                err = y_hat - y                       # 2. loss is the mean of err ** 2
                grad_w = np.mean(2 * err * x)         # 3. backward: slope of MSE for w
                grad_b = np.mean(2 * err)             #    slope of MSE for b
                w -= lr * grad_w                      # 4. update
                b -= lr * grad_b
            loss = np.mean((w * X + b - Y) ** 2)      # loss on all points
            if epoch in (1, 2, 3, 5, 10, 20, 30) or epoch == EPOCHS:
                bar = "#" * min(40, int(loss * 2))
                print(f"epoch {epoch:2}  w = {w:.3f}  b = {b:.3f}  loss = {loss:.4f}  {bar}")

        print(f"\nLearned: y = {w:.2f}x + {b:.2f}   (true rule: y = 2x + 1)")

        # Try it: set BATCH_SIZE to 40, then to 1. Then try lr = 0.001 and EPOCHS = 100.
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Learning Rate Explained</h1>
        </div>
        <p class="lc-lead">Gradient descent tells you which way to move each weight. The <strong>learning rate</strong> tells you how far to move. It is one small number, but it can decide whether training works at all. In this lesson you will see what happens when it is too small, about right, and too large.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="Four panels, each with the loss curve (w minus 3) squared and the path of gradient descent from w = 0. With lr 0.02 the steps are tiny and the loss is still 6.0 after 5 steps. With lr 0.3 the steps land near w = 3 quickly. With lr 0.9 the steps jump from side to side but slowly settle. With lr 1.1 each jump goes higher up the curve and the loss grows.">
            <defs><marker id="nn13a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#e2e0f0"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
            <rect x="11" y="10" width="172" height="250" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
            <text x="97.0" y="34" font-weight="700" fill="#3b82f6">Too small</text>
            <text x="97.0" y="52" font-size="12" fill="#9b99b8">lr = 0.02</text>
            <polyline points="23.0,108.8 23.7,110.9 24.5,113.0 25.2,115.1 26.0,117.1 26.7,119.2 27.4,121.2 28.2,123.2 28.9,125.1 29.7,127.1 30.4,129.0 31.1,130.9 31.9,132.8 32.6,134.6 33.4,136.4 34.1,138.2 34.8,140.0 35.6,141.7 36.3,143.5 37.1,145.2 37.8,146.8 38.5,148.5 39.3,150.1 40.0,151.7 40.8,153.3 41.5,154.9 42.2,156.4 43.0,158.0 43.7,159.4 44.5,160.9 45.2,162.4 45.9,163.8 46.7,165.2 47.4,166.6 48.2,167.9 48.9,169.2 49.6,170.5 50.4,171.8 51.1,173.1 51.9,174.3 52.6,175.5 53.3,176.7 54.1,177.9 54.8,179.0 55.6,180.1 56.3,181.2 57.0,182.3 57.8,183.3 58.5,184.3 59.3,185.3 60.0,186.3 60.7,187.3 61.5,188.2 62.2,189.1 63.0,190.0 63.7,190.8 64.4,191.7 65.2,192.5 65.9,193.3 66.7,194.0 67.4,194.8 68.1,195.5 68.9,196.2 69.6,196.8 70.4,197.5 71.1,198.1 71.8,198.7 72.6,199.3 73.3,199.8 74.1,200.4 74.8,200.9 75.5,201.3 76.3,201.8 77.0,202.2 77.8,202.6 78.5,203.0 79.2,203.4 80.0,203.7 80.7,204.0 81.5,204.3 82.2,204.6 82.9,204.8 83.7,205.1 84.4,205.3 85.2,205.4 85.9,205.6 86.6,205.7 87.4,205.8 88.1,205.9 88.9,206.0 89.6,206.0 90.3,206.0 91.1,206.0 91.8,205.9 92.6,205.9 93.3,205.8 94.0,205.7 94.8,205.6 95.5,205.4 96.3,205.2 97.0,205.0 97.7,204.8 98.5,204.6 99.2,204.3 100.0,204.0 100.7,203.7 101.4,203.3 102.2,203.0 102.9,202.6 103.7,202.1 104.4,201.7 105.1,201.3 105.9,200.8 106.6,200.3 107.4,199.7 108.1,199.2 108.8,198.6 109.6,198.0 110.3,197.4 111.1,196.7 111.8,196.0 112.5,195.3 113.3,194.6 114.0,193.9 114.8,193.1 115.5,192.3 116.2,191.5 117.0,190.7 117.7,189.8 118.5,188.9 119.2,188.0 119.9,187.1 120.7,186.1 121.4,185.2 122.2,184.2 122.9,183.1 123.6,182.1 124.4,181.0 125.1,179.9 125.9,178.8 126.6,177.7 127.3,176.5 128.1,175.3 128.8,174.1 129.6,172.8 130.3,171.6 131.0,170.3 131.8,169.0 132.5,167.7 133.3,166.3 134.0,164.9 134.7,163.5 135.5,162.1 136.2,160.6 137.0,159.2 137.7,157.7 138.4,156.2 139.2,154.6 139.9,153.0 140.7,151.5 141.4,149.8 142.1,148.2 142.9,146.5 143.6,144.9 144.4,143.2 145.1,141.4 145.8,139.7 146.6,137.9 147.3,136.1 148.1,134.3 148.8,132.4 149.5,130.5 150.3,128.6 151.0,126.7 151.8,124.8 152.5,122.8 153.2,120.8 154.0,118.8 154.7,116.8 155.5,114.7 156.2,112.6 156.9,110.5 157.7,108.4 158.4,106.2 159.2,104.1 159.9,101.9 160.6,99.6 161.4,97.4 162.1,95.1 162.9,92.8 163.6,90.5 164.3,88.1 165.1,85.8 165.8,83.4 166.6,81.0 167.3,78.5 168.0,76.1 168.8,73.6 169.5,71.1 170.3,68.6 171.0,66.0" fill="none" stroke="#4b4a78" stroke-width="2"/>
            <line x1="90.3" y1="206" x2="90.3" y2="212" stroke="#9b99b8"/>
            <text x="90.3" y="224" font-size="11" fill="#9b99b8">best w = 3</text>
            <line x1="49.9" y1="171.0" x2="51.5" y2="173.7" stroke="#3b82f6" stroke-width="1.6"/>
            <line x1="51.5" y1="173.7" x2="53.1" y2="176.3" stroke="#3b82f6" stroke-width="1.6"/>
            <line x1="53.1" y1="176.3" x2="54.6" y2="178.6" stroke="#3b82f6" stroke-width="1.6"/>
            <line x1="54.6" y1="178.6" x2="56.0" y2="180.8" stroke="#3b82f6" stroke-width="1.6"/>
            <line x1="56.0" y1="180.8" x2="57.4" y2="182.7" stroke="#3b82f6" stroke-width="1.6"/>
            <line x1="57.4" y1="182.7" x2="58.7" y2="184.6" stroke="#3b82f6" stroke-width="1.6"/>
            <line x1="58.7" y1="184.6" x2="59.9" y2="186.2" stroke="#3b82f6" stroke-width="1.6"/>
            <line x1="59.9" y1="186.2" x2="61.2" y2="187.8" stroke="#3b82f6" stroke-width="1.6"/>
            <circle cx="49.9" cy="171.0" r="4" fill="#e2e0f0"/>
            <circle cx="51.5" cy="173.7" r="3" fill="#3b82f6"/>
            <circle cx="53.1" cy="176.3" r="3" fill="#3b82f6"/>
            <circle cx="54.6" cy="178.6" r="3" fill="#3b82f6"/>
            <circle cx="56.0" cy="180.8" r="3" fill="#3b82f6"/>
            <circle cx="57.4" cy="182.7" r="3" fill="#3b82f6"/>
            <circle cx="58.7" cy="184.6" r="3" fill="#3b82f6"/>
            <circle cx="59.9" cy="186.2" r="3" fill="#3b82f6"/>
            <circle cx="61.2" cy="187.8" r="3" fill="#3b82f6"/>
            <text x="49.9" y="161.0" font-size="11" fill="#9b99b8">start</text>
            <text x="97.0" y="246" font-size="11.5" fill="#e2e0f0">slow: loss 6.0 after 5 steps</text>
            <rect x="197" y="10" width="172" height="250" rx="10" fill="#1f1f44" stroke="#10b981"/>
            <text x="283.0" y="34" font-weight="700" fill="#10b981">Good</text>
            <text x="283.0" y="52" font-size="12" fill="#9b99b8">lr = 0.3</text>
            <polyline points="209.0,108.8 209.7,110.9 210.5,113.0 211.2,115.1 212.0,117.1 212.7,119.2 213.4,121.2 214.2,123.2 214.9,125.1 215.7,127.1 216.4,129.0 217.1,130.9 217.9,132.8 218.6,134.6 219.4,136.4 220.1,138.2 220.8,140.0 221.6,141.7 222.3,143.5 223.1,145.2 223.8,146.8 224.5,148.5 225.3,150.1 226.0,151.7 226.8,153.3 227.5,154.9 228.2,156.4 229.0,158.0 229.7,159.4 230.5,160.9 231.2,162.4 231.9,163.8 232.7,165.2 233.4,166.6 234.2,167.9 234.9,169.2 235.6,170.5 236.4,171.8 237.1,173.1 237.9,174.3 238.6,175.5 239.3,176.7 240.1,177.9 240.8,179.0 241.6,180.1 242.3,181.2 243.0,182.3 243.8,183.3 244.5,184.3 245.3,185.3 246.0,186.3 246.7,187.3 247.5,188.2 248.2,189.1 249.0,190.0 249.7,190.8 250.4,191.7 251.2,192.5 251.9,193.3 252.7,194.0 253.4,194.8 254.1,195.5 254.9,196.2 255.6,196.8 256.4,197.5 257.1,198.1 257.8,198.7 258.6,199.3 259.3,199.8 260.1,200.4 260.8,200.9 261.5,201.3 262.3,201.8 263.0,202.2 263.8,202.6 264.5,203.0 265.2,203.4 266.0,203.7 266.7,204.0 267.5,204.3 268.2,204.6 268.9,204.8 269.7,205.1 270.4,205.3 271.2,205.4 271.9,205.6 272.6,205.7 273.4,205.8 274.1,205.9 274.9,206.0 275.6,206.0 276.3,206.0 277.1,206.0 277.8,205.9 278.6,205.9 279.3,205.8 280.0,205.7 280.8,205.6 281.5,205.4 282.3,205.2 283.0,205.0 283.7,204.8 284.5,204.6 285.2,204.3 286.0,204.0 286.7,203.7 287.4,203.3 288.2,203.0 288.9,202.6 289.7,202.1 290.4,201.7 291.1,201.3 291.9,200.8 292.6,200.3 293.4,199.7 294.1,199.2 294.8,198.6 295.6,198.0 296.3,197.4 297.1,196.7 297.8,196.0 298.5,195.3 299.3,194.6 300.0,193.9 300.8,193.1 301.5,192.3 302.2,191.5 303.0,190.7 303.7,189.8 304.5,188.9 305.2,188.0 305.9,187.1 306.7,186.1 307.4,185.2 308.2,184.2 308.9,183.1 309.6,182.1 310.4,181.0 311.1,179.9 311.9,178.8 312.6,177.7 313.3,176.5 314.1,175.3 314.8,174.1 315.6,172.8 316.3,171.6 317.0,170.3 317.8,169.0 318.5,167.7 319.3,166.3 320.0,164.9 320.7,163.5 321.5,162.1 322.2,160.6 323.0,159.2 323.7,157.7 324.4,156.2 325.2,154.6 325.9,153.0 326.7,151.5 327.4,149.8 328.1,148.2 328.9,146.5 329.6,144.9 330.4,143.2 331.1,141.4 331.8,139.7 332.6,137.9 333.3,136.1 334.1,134.3 334.8,132.4 335.5,130.5 336.3,128.6 337.0,126.7 337.8,124.8 338.5,122.8 339.2,120.8 340.0,118.8 340.7,116.8 341.5,114.7 342.2,112.6 342.9,110.5 343.7,108.4 344.4,106.2 345.2,104.1 345.9,101.9 346.6,99.6 347.4,97.4 348.1,95.1 348.9,92.8 349.6,90.5 350.3,88.1 351.1,85.8 351.8,83.4 352.6,81.0 353.3,78.5 354.0,76.1 354.8,73.6 355.5,71.1 356.3,68.6 357.0,66.0" fill="none" stroke="#4b4a78" stroke-width="2"/>
            <line x1="276.3" y1="206" x2="276.3" y2="212" stroke="#9b99b8"/>
            <text x="276.3" y="224" font-size="11" fill="#9b99b8">best w = 3</text>
            <line x1="235.9" y1="171.0" x2="260.1" y2="200.4" stroke="#10b981" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <line x1="260.1" y1="200.4" x2="269.8" y2="205.1" stroke="#10b981" stroke-width="1.6"/>
            <line x1="269.8" y1="205.1" x2="273.7" y2="205.9" stroke="#10b981" stroke-width="1.6"/>
            <line x1="273.7" y1="205.9" x2="275.2" y2="206.0" stroke="#10b981" stroke-width="1.6"/>
            <circle cx="235.9" cy="171.0" r="4" fill="#e2e0f0"/>
            <circle cx="260.1" cy="200.4" r="3" fill="#10b981"/>
            <circle cx="269.8" cy="205.1" r="3" fill="#10b981"/>
            <circle cx="273.7" cy="205.9" r="3" fill="#10b981"/>
            <circle cx="275.2" cy="206.0" r="3" fill="#10b981"/>
            <text x="235.9" y="161.0" font-size="11" fill="#9b99b8">start</text>
            <text x="283.0" y="246" font-size="11.5" fill="#e2e0f0">fast: loss 0.001 after 5</text>
            <rect x="383" y="10" width="172" height="250" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
            <text x="469.0" y="34" font-weight="700" fill="#f59e0b">Large</text>
            <text x="469.0" y="52" font-size="12" fill="#9b99b8">lr = 0.9</text>
            <polyline points="395.0,108.8 395.7,110.9 396.5,113.0 397.2,115.1 398.0,117.1 398.7,119.2 399.4,121.2 400.2,123.2 400.9,125.1 401.7,127.1 402.4,129.0 403.1,130.9 403.9,132.8 404.6,134.6 405.4,136.4 406.1,138.2 406.8,140.0 407.6,141.7 408.3,143.5 409.1,145.2 409.8,146.8 410.5,148.5 411.3,150.1 412.0,151.7 412.8,153.3 413.5,154.9 414.2,156.4 415.0,158.0 415.7,159.4 416.5,160.9 417.2,162.4 417.9,163.8 418.7,165.2 419.4,166.6 420.2,167.9 420.9,169.2 421.6,170.5 422.4,171.8 423.1,173.1 423.9,174.3 424.6,175.5 425.3,176.7 426.1,177.9 426.8,179.0 427.6,180.1 428.3,181.2 429.0,182.3 429.8,183.3 430.5,184.3 431.3,185.3 432.0,186.3 432.7,187.3 433.5,188.2 434.2,189.1 435.0,190.0 435.7,190.8 436.4,191.7 437.2,192.5 437.9,193.3 438.7,194.0 439.4,194.8 440.1,195.5 440.9,196.2 441.6,196.8 442.4,197.5 443.1,198.1 443.8,198.7 444.6,199.3 445.3,199.8 446.1,200.4 446.8,200.9 447.5,201.3 448.3,201.8 449.0,202.2 449.8,202.6 450.5,203.0 451.2,203.4 452.0,203.7 452.7,204.0 453.5,204.3 454.2,204.6 454.9,204.8 455.7,205.1 456.4,205.3 457.2,205.4 457.9,205.6 458.6,205.7 459.4,205.8 460.1,205.9 460.9,206.0 461.6,206.0 462.3,206.0 463.1,206.0 463.8,205.9 464.6,205.9 465.3,205.8 466.0,205.7 466.8,205.6 467.5,205.4 468.3,205.2 469.0,205.0 469.7,204.8 470.5,204.6 471.2,204.3 472.0,204.0 472.7,203.7 473.4,203.3 474.2,203.0 474.9,202.6 475.7,202.1 476.4,201.7 477.1,201.3 477.9,200.8 478.6,200.3 479.4,199.7 480.1,199.2 480.8,198.6 481.6,198.0 482.3,197.4 483.1,196.7 483.8,196.0 484.5,195.3 485.3,194.6 486.0,193.9 486.8,193.1 487.5,192.3 488.2,191.5 489.0,190.7 489.7,189.8 490.5,188.9 491.2,188.0 491.9,187.1 492.7,186.1 493.4,185.2 494.2,184.2 494.9,183.1 495.6,182.1 496.4,181.0 497.1,179.9 497.9,178.8 498.6,177.7 499.3,176.5 500.1,175.3 500.8,174.1 501.6,172.8 502.3,171.6 503.0,170.3 503.8,169.0 504.5,167.7 505.3,166.3 506.0,164.9 506.7,163.5 507.5,162.1 508.2,160.6 509.0,159.2 509.7,157.7 510.4,156.2 511.2,154.6 511.9,153.0 512.7,151.5 513.4,149.8 514.1,148.2 514.9,146.5 515.6,144.9 516.4,143.2 517.1,141.4 517.8,139.7 518.6,137.9 519.3,136.1 520.1,134.3 520.8,132.4 521.5,130.5 522.3,128.6 523.0,126.7 523.8,124.8 524.5,122.8 525.2,120.8 526.0,118.8 526.7,116.8 527.5,114.7 528.2,112.6 528.9,110.5 529.7,108.4 530.4,106.2 531.2,104.1 531.9,101.9 532.6,99.6 533.4,97.4 534.1,95.1 534.9,92.8 535.6,90.5 536.3,88.1 537.1,85.8 537.8,83.4 538.6,81.0 539.3,78.5 540.0,76.1 540.8,73.6 541.5,71.1 542.3,68.6 543.0,66.0" fill="none" stroke="#4b4a78" stroke-width="2"/>
            <line x1="462.3" y1="206" x2="462.3" y2="212" stroke="#9b99b8"/>
            <text x="462.3" y="224" font-size="11" fill="#9b99b8">best w = 3</text>
            <line x1="421.9" y1="171.0" x2="494.6" y2="183.6" stroke="#f59e0b" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <line x1="494.6" y1="183.6" x2="436.4" y2="191.7" stroke="#f59e0b" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <line x1="436.4" y1="191.7" x2="482.9" y2="196.8" stroke="#f59e0b" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <line x1="482.9" y1="196.8" x2="445.7" y2="200.1" stroke="#f59e0b" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <line x1="445.7" y1="200.1" x2="475.5" y2="202.2" stroke="#f59e0b" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <circle cx="421.9" cy="171.0" r="4" fill="#e2e0f0"/>
            <circle cx="494.6" cy="183.6" r="3" fill="#f59e0b"/>
            <circle cx="436.4" cy="191.7" r="3" fill="#f59e0b"/>
            <circle cx="482.9" cy="196.8" r="3" fill="#f59e0b"/>
            <circle cx="445.7" cy="200.1" r="3" fill="#f59e0b"/>
            <circle cx="475.5" cy="202.2" r="3" fill="#f59e0b"/>
            <text x="421.9" y="161.0" font-size="11" fill="#9b99b8">start</text>
            <text x="469.0" y="246" font-size="11.5" fill="#e2e0f0">bounces: loss 0.97 after 5</text>
            <rect x="569" y="10" width="172" height="250" rx="10" fill="#1f1f44" stroke="#ec4899"/>
            <text x="655.0" y="34" font-weight="700" fill="#ec4899">Too large</text>
            <text x="655.0" y="52" font-size="12" fill="#9b99b8">lr = 1.1</text>
            <polyline points="581.0,108.8 581.7,110.9 582.5,113.0 583.2,115.1 584.0,117.1 584.7,119.2 585.4,121.2 586.2,123.2 586.9,125.1 587.7,127.1 588.4,129.0 589.1,130.9 589.9,132.8 590.6,134.6 591.4,136.4 592.1,138.2 592.8,140.0 593.6,141.7 594.3,143.5 595.1,145.2 595.8,146.8 596.5,148.5 597.3,150.1 598.0,151.7 598.8,153.3 599.5,154.9 600.2,156.4 601.0,158.0 601.7,159.4 602.5,160.9 603.2,162.4 603.9,163.8 604.7,165.2 605.4,166.6 606.2,167.9 606.9,169.2 607.6,170.5 608.4,171.8 609.1,173.1 609.9,174.3 610.6,175.5 611.3,176.7 612.1,177.9 612.8,179.0 613.6,180.1 614.3,181.2 615.0,182.3 615.8,183.3 616.5,184.3 617.3,185.3 618.0,186.3 618.7,187.3 619.5,188.2 620.2,189.1 621.0,190.0 621.7,190.8 622.4,191.7 623.2,192.5 623.9,193.3 624.7,194.0 625.4,194.8 626.1,195.5 626.9,196.2 627.6,196.8 628.4,197.5 629.1,198.1 629.8,198.7 630.6,199.3 631.3,199.8 632.1,200.4 632.8,200.9 633.5,201.3 634.3,201.8 635.0,202.2 635.8,202.6 636.5,203.0 637.2,203.4 638.0,203.7 638.7,204.0 639.5,204.3 640.2,204.6 640.9,204.8 641.7,205.1 642.4,205.3 643.2,205.4 643.9,205.6 644.6,205.7 645.4,205.8 646.1,205.9 646.9,206.0 647.6,206.0 648.3,206.0 649.1,206.0 649.8,205.9 650.6,205.9 651.3,205.8 652.0,205.7 652.8,205.6 653.5,205.4 654.3,205.2 655.0,205.0 655.7,204.8 656.5,204.6 657.2,204.3 658.0,204.0 658.7,203.7 659.4,203.3 660.2,203.0 660.9,202.6 661.7,202.1 662.4,201.7 663.1,201.3 663.9,200.8 664.6,200.3 665.4,199.7 666.1,199.2 666.8,198.6 667.6,198.0 668.3,197.4 669.1,196.7 669.8,196.0 670.5,195.3 671.3,194.6 672.0,193.9 672.8,193.1 673.5,192.3 674.2,191.5 675.0,190.7 675.7,189.8 676.5,188.9 677.2,188.0 677.9,187.1 678.7,186.1 679.4,185.2 680.2,184.2 680.9,183.1 681.6,182.1 682.4,181.0 683.1,179.9 683.9,178.8 684.6,177.7 685.3,176.5 686.1,175.3 686.8,174.1 687.6,172.8 688.3,171.6 689.0,170.3 689.8,169.0 690.5,167.7 691.3,166.3 692.0,164.9 692.7,163.5 693.5,162.1 694.2,160.6 695.0,159.2 695.7,157.7 696.4,156.2 697.2,154.6 697.9,153.0 698.7,151.5 699.4,149.8 700.1,148.2 700.9,146.5 701.6,144.9 702.4,143.2 703.1,141.4 703.8,139.7 704.6,137.9 705.3,136.1 706.1,134.3 706.8,132.4 707.5,130.5 708.3,128.6 709.0,126.7 709.8,124.8 710.5,122.8 711.2,120.8 712.0,118.8 712.7,116.8 713.5,114.7 714.2,112.6 714.9,110.5 715.7,108.4 716.4,106.2 717.2,104.1 717.9,101.9 718.6,99.6 719.4,97.4 720.1,95.1 720.9,92.8 721.6,90.5 722.3,88.1 723.1,85.8 723.8,83.4 724.6,81.0 725.3,78.5 726.0,76.1 726.8,73.6 727.5,71.1 728.3,68.6 729.0,66.0" fill="none" stroke="#4b4a78" stroke-width="2"/>
            <line x1="648.3" y1="206" x2="648.3" y2="212" stroke="#9b99b8"/>
            <text x="648.3" y="224" font-size="11" fill="#9b99b8">best w = 3</text>
            <line x1="607.9" y1="171.0" x2="696.7" y2="155.6" stroke="#ec4899" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <line x1="696.7" y1="155.6" x2="590.1" y2="133.4" stroke="#ec4899" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <line x1="590.1" y1="133.4" x2="718.0" y2="101.5" stroke="#ec4899" stroke-width="1.6" marker-end="url(#nn13a)"/>
            <circle cx="607.9" cy="171.0" r="4" fill="#e2e0f0"/>
            <circle cx="696.7" cy="155.6" r="3" fill="#ec4899"/>
            <circle cx="590.1" cy="133.4" r="3" fill="#ec4899"/>
            <circle cx="718.0" cy="101.5" r="3" fill="#ec4899"/>
            <text x="607.9" y="161.0" font-size="11" fill="#9b99b8">start</text>
            <text x="655.0" y="246" font-size="11.5" fill="#e2e0f0">diverges: loss 56 after 5</text>
            </g>
          </svg>
          <figcaption>The same loss, (w - 3)², and the same start, w = 0. Only the learning rate changes. Each dot is one step of gradient descent.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What the learning rate does</h3>
          <p>Earlier in this course you met the update rule:</p>
          <p><strong>w = w - lr × grad</strong></p>
          <p>The gradient gives the direction and the steepness of the slope. The learning rate <code>lr</code> scales it. A big <code>lr</code> means a big step. A small <code>lr</code> means a small step.</p>
          <p>The learning rate is a <strong>hyperparameter</strong>. A hyperparameter is a setting that you choose before training. The network does not learn it. Other hyperparameters are the number of epochs and the number of hidden neurons.</p>
          <p>Maya, our junior data scientist in Bristol, trains every model with a few learning rates first. She does this because a bad learning rate can waste hours of training.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: one loss, three learning rates</h3>
          <p>We use the loss <code>(w - 3)²</code> again. The best weight is <code>w = 3</code>. The gradient is <code>2 * (w - 3)</code>. We start at <code>w = 0</code>, so the distance to the best weight is 3.</p>
          <p>With this loss, every step multiplies the distance <code>(w - 3)</code> by <code>(1 - 2 * lr)</code>. This one number explains everything:</p>
          <table class="lc-table">
            <thead><tr><th>lr</th><th>1 - 2 * lr</th><th>What happens to the distance</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>0.02</td><td>0.96</td><td>Shrinks by only 4% per step</td><td>Too small: very slow</td></tr>
              <tr><td>0.1</td><td>0.8</td><td>Shrinks by 20% per step</td><td>Good</td></tr>
              <tr><td>0.3</td><td>0.4</td><td>Shrinks by 60% per step</td><td>Good and fast</td></tr>
              <tr><td>0.9</td><td>-0.8</td><td>Flips side, but still shrinks</td><td>Bounces, then settles</td></tr>
              <tr><td>1.1</td><td>-1.2</td><td>Flips side and grows</td><td>Too large: diverges</td></tr>
            </tbody>
          </table>
          <p>Check one row by hand. With <code>lr = 0.1</code>, the first gradient is <code>2 * (0 - 3) = -6</code>. The step is <code>0.1 * -6 = -0.6</code>. So <code>w = 0 - (-0.6) = 0.6</code>. The loss is <code>(0.6 - 3)² = 5.76</code>.</p>
          <p>Now take three steps with three learning rates: 0.1, 0.9 and 1.1.</p>
          <ul class="lc-list">
            <li>With <code>lr = 0.1</code>, w reaches 1.46. The loss is 2.36. w is still below 3.</li>
            <li>With <code>lr = 0.9</code>, the loss is also 2.36. But w has jumped past 3 to 4.54.</li>
            <li>With <code>lr = 1.1</code>, w reaches 8.18 and the loss is 26.87. w is now further from 3 than when it started.</li>
          </ul>
          <p>Part 1 in the code editor below takes these three steps. The same losses appear in the third column of the table in Part 2.</p>
        </div>
        <div class="lc-card">
          <h3>The loss table</h3>
          <p>Part 2 in the code editor below trains for 10 steps with five learning rates: 0.02, 0.1, 0.3, 0.9 and 1.1. It prints a table of the loss after steps 1, 2, 3, 5 and 10. It also gives each learning rate a verdict.</p>
          <ul class="lc-list">
            <li><strong>Too small (0.02):</strong> the loss goes down, but very slowly. After 10 steps it is still 3.98. You would need many more epochs.</li>
            <li><strong>Good (0.1 and 0.3):</strong> the loss drops quickly and smoothly towards 0.</li>
            <li><strong>Large (0.9):</strong> w jumps from one side of the best value to the other. The loss still falls, but the path is not smooth.</li>
            <li><strong>Too large (1.1):</strong> each jump lands higher on the curve. The loss grows to 345. This is called <strong>divergence</strong>. In a real network the loss can even become <code>nan</code> (not a number).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How to choose a learning rate</h3>
          <p>There is no single correct value. It depends on the data, the network and the optimizer. These simple rules help:</p>
          <ol class="lc-list">
            <li>Try values that are 10 times apart, such as 0.1, 0.01 and 0.001. Train each one for a short time.</li>
            <li>Look at the loss curve. Pick the largest value whose loss goes down smoothly.</li>
            <li>If the loss jumps up and down a lot, make the learning rate smaller.</li>
            <li>If the loss falls very slowly, make it bigger.</li>
          </ol>
          <p>Many projects also change the learning rate during training. This is called a <strong>learning rate schedule</strong>. A common plan is to start larger and make it smaller later. Big early steps move fast. Small late steps settle gently near the best weights.</p>
          <p>Some optimizers, such as <strong>Adam</strong>, adjust the step size for each weight on their own. They still need a starting learning rate. In PyTorch, Adam uses 0.001 by default. Check the current docs of your library for its defaults.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: read the loss curve</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Maya sees these training results. Is her learning rate too small, about right, or too large?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="small" data-label="Too small"></div>
              <div data-sorter-target="bucket" data-bucket="good" data-label="About right"></div>
              <div data-sorter-target="bucket" data-bucket="large" data-label="Too large"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="small" data-why="The loss moves in the right direction, but each step is tiny. A bigger learning rate would get there faster.">Loss goes 0.70, 0.69, 0.69, 0.68 over 1,000 epochs</li>
              <li data-bucket="large" data-why="Growing loss means each step overshoots further than the last. This is divergence.">Loss goes 0.7, 1.9, 6.4, 40.2</li>
              <li data-bucket="good" data-why="A fast drop followed by a slow, smooth finish is the shape you want.">Loss drops fast, then flattens out smoothly near a low value</li>
              <li data-bucket="large" data-why="nan means the numbers became too big to store. This almost always comes from steps that are too big.">After a few epochs the loss prints as nan</li>
              <li data-bucket="small" data-why="Weights that hardly change cannot reduce the loss. The steps are too short.">The weights barely change between epochs</li>
              <li data-bucket="large" data-why="Jumping up and down without settling means the steps keep stepping over the low point.">Loss jumps up and down and never settles</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below runs gradient descent on <code>(w - 3)²</code>. Part 1 takes three steps with three learning rates. Part 2 makes the loss table for five learning rates. Part 3 shows the <code>lr = 0.9</code> run step by step.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, find the row where the loss grows instead of shrinking.</li>
            <li>In Part 2, add <code>1.0</code> to <code>learning_rates</code>. Here <code>1 - 2 * lr = -1</code>. Predict what happens before you run it. (w jumps between 0 and 6 forever.)</li>
            <li>In Part 3, change <code>LR = 0.9</code> to <code>LR = 0.5</code>. For this loss, one step lands exactly on <code>w = 3</code>.</li>
            <li>In Part 2, change <code>train(lr)</code> to <code>train(lr, steps=100)</code>. The verdict for 0.02 now says "good". A small learning rate can work, but it needs many more steps.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> The learning rate sets the step size. Too small makes training slow, too large makes the loss bounce or grow. Try values 10 times apart and keep the largest one that makes the loss fall smoothly.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Learning rate test on a simple loss: loss = (w - 3) ** 2
        # The best weight is w = 3. There the loss is 0.
        # The gradient (slope) of this loss is 2 * (w - 3).

        # ── Part 1: three steps with three learning rates ──
        print("== Part 1: three steps, three learning rates ==")
        for lr in [0.1, 0.9, 1.1]:
            w = 0.0
            for step in range(3):
                w = w - lr * 2 * (w - 3)       # w = w - lr * grad
            print(f"lr {lr}: w = {w:.2f}, loss = {(w - 3) ** 2:.2f}")

        # ── Part 2: the loss table for five learning rates ──
        print("\n== Part 2: the loss table ==")
        def train(lr, steps=10, w=0.0):
            losses, weights = [], []
            for step in range(steps):
                grad = 2 * (w - 3)      # slope at the current w
                w = w - lr * grad       # the update rule: w -= lr * grad
                weights.append(w)
                losses.append((w - 3) ** 2)
            return weights, losses

        learning_rates = [0.02, 0.1, 0.3, 0.9, 1.1]

        print("lr     loss after step 1, 2, 3, 5, 10        verdict")
        for lr in learning_rates:
            weights, losses = train(lr)
            picks = [losses[0], losses[1], losses[2], losses[4], losses[9]]
            cells = " ".join(f"{v:7.2f}" for v in picks)
            if losses[-1] > losses[0]:
                verdict = "too large: diverges"
            elif max(weights) > 3:
                verdict = "large: bounces past w = 3"
            elif losses[-1] > 1:
                verdict = "too small: slow"
            else:
                verdict = "good"
            print(f"{lr:<5}  {cells}   {verdict}")

        # ── Part 3: watch one run step by step ──
        print("\n== Part 3: one run step by step ==")
        LR = 0.9
        w = 0.0
        print(f"Step by step with lr = {LR}:")
        for step in range(1, 6):
            grad = 2 * (w - 3)
            w = w - LR * grad
            loss = (w - 3) ** 2
            bar = "#" * round(loss * 3)
            print(f"step {step}: w = {w:5.2f}  loss = {loss:5.2f}  {bar}")
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Build a Neural Network in Pure Python</h1>
        </div>
        <p class="lc-lead">You now know every part of training: forward propagation, loss, backpropagation and gradient descent. In this lesson you put them together into one working program. You build a small network with only Python and NumPy, train it on the moons dataset, and measure its accuracy. No deep learning library does the work for you.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="Training loop of the 2-16-1 network. Forward: X with shape 150 by 2 goes into the hidden tanh layer with W1 2 by 16 and b1 16, giving a1 150 by 16, then the sigmoid output layer with W2 16 by 1 and b2 1, giving y hat 150 by 1, then the loss. Backward: the error dz2 equals y hat minus y over n, which gives dW2 and db2, then dW1 and db1. Both feed the update step W minus equals LR times dW, and the loop repeats for 2,000 epochs.">
            <defs><marker id="nn14a" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker><marker id="nn14b" markerUnits="userSpaceOnUse" markerWidth="10" markerHeight="10" refX="6" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
            <text x="20" y="28" text-anchor="start" font-weight="700" fill="#3b82f6">Forward: data flows right</text>
            <rect x="20" y="46" width="96" height="62" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="68" y="72" font-weight="700">X</text><text x="68" y="92" font-size="12" fill="#9b99b8">(150, 2)</text>
            <rect x="150" y="46" width="150" height="62" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="225" y="68" font-weight="700">Hidden: tanh</text><text x="225" y="86" font-size="12" fill="#9b99b8">W1 (2, 16)</text><text x="225" y="101" font-size="12" fill="#9b99b8">b1 (16,)</text>
            <rect x="334" y="46" width="150" height="62" rx="8" fill="#27274e" stroke="#8b5cf6"/><text x="409" y="68" font-weight="700">Sigmoid output</text><text x="409" y="86" font-size="12" fill="#9b99b8">W2 (16, 1)</text><text x="409" y="101" font-size="12" fill="#9b99b8">b2 (1,)</text>
            <rect x="518" y="46" width="96" height="62" rx="8" fill="#27274e" stroke="#22d3ee"/><text x="566" y="72" font-weight="700">ŷ</text><text x="566" y="92" font-size="12" fill="#9b99b8">(150, 1)</text>
            <rect x="648" y="46" width="96" height="62" rx="8" fill="#27274e" stroke="#f59e0b"/><text x="696" y="72" font-weight="700">Loss</text><text x="696" y="92" font-size="12" fill="#9b99b8">one number</text>
            <line x1="116" y1="77" x2="146" y2="77" stroke="#9b99b8" stroke-width="1.6" marker-end="url(#nn14a)"/>
            <line x1="300" y1="77" x2="330" y2="77" stroke="#9b99b8" stroke-width="1.6" marker-end="url(#nn14a)"/>
            <line x1="484" y1="77" x2="514" y2="77" stroke="#9b99b8" stroke-width="1.6" marker-end="url(#nn14a)"/>
            <line x1="614" y1="77" x2="644" y2="77" stroke="#9b99b8" stroke-width="1.6" marker-end="url(#nn14a)"/>
            <text x="225" y="128" font-size="12" fill="#c4b5fd">a1: (150, 16)</text>
            <text x="696" y="128" font-size="12" fill="#fcd34d">compare ŷ with y</text>
            <text x="20" y="168" text-anchor="start" font-weight="700" fill="#ec4899">Backward: gradients flow left</text>
            <rect x="150" y="186" width="150" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="225" y="207" font-weight="700">dW1, db1</text><text x="225" y="226" font-size="12" fill="#9b99b8">same shapes as W1, b1</text>
            <rect x="334" y="186" width="150" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="409" y="207" font-weight="700">dW2, db2</text><text x="409" y="226" font-size="12" fill="#9b99b8">same shapes as W2, b2</text>
            <rect x="566" y="186" width="178" height="52" rx="8" fill="#1f1f44" stroke="#ec4899"/><text x="655" y="207" font-weight="700">dz2 = (ŷ - y) / n</text><text x="655" y="226" font-size="12" fill="#9b99b8">error at the output</text>
            <line x1="566" y1="212" x2="488" y2="212" stroke="#ec4899" stroke-width="1.6" marker-end="url(#nn14b)"/>
            <line x1="334" y1="212" x2="304" y2="212" stroke="#ec4899" stroke-width="1.6" marker-end="url(#nn14b)"/>
            <line x1="696" y1="140" x2="696" y2="182" stroke="#ec4899" stroke-width="1.6" marker-end="url(#nn14b)"/>
            <rect x="20" y="268" width="280" height="40" rx="8" fill="#1f1f44" stroke="#10b981"/><text x="160" y="293" font-weight="700">Update: W -= LR * dW (and b)</text>
            <line x1="225" y1="238" x2="225" y2="264" stroke="#10b981" stroke-width="1.6" marker-end="url(#nn14a)"/>
            <path d="M20,288 L8,288 L8,77 L14,77" fill="none" stroke="#10b981" stroke-width="1.6" stroke-dasharray="5 4" marker-end="url(#nn14a)"/>
            <path d="M409,238 L409,280 L304,280" fill="none" stroke="#10b981" stroke-width="1.6" marker-end="url(#nn14a)"/>
            <text x="430" y="300" text-anchor="start" font-size="12" fill="#9b99b8">then repeat the whole loop: 2,000 epochs</text>
            </g>
          </svg>
          <figcaption>One training epoch for our 2-16-1 network. Shapes are for the 150 training points. Every gradient has the same shape as the weight it updates.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The task and the plan</h3>
          <p>Maya has 200 points from <code>make_moons</code>. Each point has 2 features, x and y position. Each point belongs to class 0 (the upper moon) or class 1 (the lower moon). The two moons curve into each other, so a straight line cannot split them. A hidden layer can.</p>
          <p>We keep 150 points for training and 50 for testing. The test points are never used for training. They show how well the network works on new data.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Our choice</th></tr></thead>
            <tbody>
              <tr><td>Layers</td><td>2 inputs, 16 hidden neurons, 1 output (a "2-16-1" network)</td></tr>
              <tr><td>Hidden activation</td><td>tanh</td></tr>
              <tr><td>Output activation</td><td>sigmoid, so ŷ is a probability of class 1</td></tr>
              <tr><td>Loss</td><td>binary cross-entropy</td></tr>
              <tr><td>Training</td><td>full-batch gradient descent, <code>LR = 0.5</code>, 2,000 epochs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Step 1 and 2: initialise and go forward</h3>
          <p>We start with small random weights and zero biases. Random weights matter. If every weight started at the same value, every hidden neuron would learn the same thing.</p>
          <p>Part 2 in the code editor below makes W1 with <code>np.random.randn(2, HIDDEN) * 0.5</code>, and W2 the same way. The biases start at 0. The forward pass is two lines: a tanh hidden layer, then a sigmoid output.</p>
          <p>Next, check the shapes. This is the best way to find bugs early. Part 2 prints them before training starts.</p>
          <p>The shapes are (150, 2) for X_train, (2, 16) for W1, (150, 16) for a1, (16, 1) for W2 and (150, 1) for ŷ. The batch has 150 rows. W1 turns 2 features into 16 hidden values. W2 turns 16 hidden values into 1 output. The network has 2 × 16 + 16 + 16 × 1 + 1 = 65 parameters.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3, 4 and 5: loss, backward, update</h3>
          <p>The loss is binary cross-entropy. We add a tiny number, <code>1e-9</code>, inside <code>log</code>. This stops <code>log(0)</code> from breaking the program.</p>
          <p>Then backpropagation goes from the output back to the input. Part 3 in the code editor below does this inside the training loop, step 4 and step 5:</p>
          <ul class="lc-list">
            <li><code>dz2</code>: with sigmoid and cross-entropy together, the error at the output is simply <code>ŷ - y</code>. We divide by <code>n</code> because the loss is a mean.</li>
            <li><code>dW2</code> and <code>db2</code>: the chain rule gives "input to the layer" times "error of the layer".</li>
            <li><code>dz1</code>: send the error back through W2. Then multiply by the slope of tanh, which is <code>1 - a1²</code>.</li>
            <li>The two lines marked <code># 5. Update</code> are the update rule, <code>w -= lr * grad</code>, for all four arrays.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The result</h3>
          <p>Part 3 in the code editor below puts all five steps in a loop. It prints the loss and accuracy every 400 epochs. Part 4 tests the network on the 50 test points.</p>
          <p>At epoch 0 the weights are random, so the guesses are random too. The loss is 0.94 and train accuracy is only 14.7%. That is even worse than a coin flip. By epoch 400 the loss has dropped to 0.135, with 95.3% accuracy. At epoch 2,000 the loss is 0.0555. At the end the network gets 98% of training points right and 94% of the 50 test points.</p>
          <p>Part 4 also prints a text map. Each character is one spot on a grid. <code>0</code> means the network predicts class 0 there, and <code>1</code> means class 1. You can see the curved border that the hidden layer learned.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one training epoch in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the parts of the program in the order they run.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Create W1, b1, W2, b2 with small random weights and zero biases</li>
              <li data-order="2">Forward: compute a1 = tanh(X @ W1 + b1), then ŷ = sigmoid(a1 @ W2 + b2)</li>
              <li data-order="3">Loss: compare ŷ with y using binary cross-entropy</li>
              <li data-order="4">Backward: compute dz2, then dW2 and db2</li>
              <li data-order="5">Backward: send the error back to get dz1, then dW1 and db1</li>
              <li data-order="6">Update: subtract LR times each gradient from its weights</li>
              <li data-order="7">After all epochs, check accuracy on the test points</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor below has the full network from this lesson in four parts. It runs in about one second.</p>
          <ol class="lc-list">
            <li>Run it. Check the shapes printed by Part 2. Then find the test accuracy in Part 4 and look at the text map at the bottom.</li>
            <li>In Part 1, change <code>LR = 0.5</code> to <code>LR = 0.05</code>. The loss falls much more slowly, and accuracy ends lower after 2,000 epochs.</li>
            <li>In Part 1, change <code>HIDDEN = 16</code> to <code>HIDDEN = 2</code>. With only 2 hidden neurons, the border is less curved and accuracy drops.</li>
            <li>In Part 1, change <code>noise=0.2</code> to <code>noise=0.35</code>. The moons overlap more. What happens to test accuracy?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A neural network is just a loop of five steps: initialise, forward, loss, backward, update. Check the shapes, and every gradient will have the same shape as its weight.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A full neural network in Python + NumPy, trained on the moons data.
        # Shape: 2 inputs -> 16 hidden neurons (tanh) -> 1 output (sigmoid)
        import numpy as np
        from sklearn.datasets import make_moons
        from sklearn.model_selection import train_test_split

        # ── Part 1: the data and the settings ──
        print("== Part 1: the data ==")
        X, y = make_moons(n_samples=200, noise=0.2, random_state=42)
        y = y.reshape(-1, 1)                         # shape (200, 1)
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=42)
        print(len(X_train), "training points,", len(X_test), "test points")

        HIDDEN = 16      # neurons in the hidden layer
        LR = 0.5         # learning rate
        EPOCHS = 2000    # full passes over the training data

        # ── Part 2: initialise and go forward ──
        print("\n== Part 2: initialise and check the shapes ==")
        # 1. Init: small random weights, zero biases
        np.random.seed(42)
        W1 = np.random.randn(2, HIDDEN) * 0.5
        b1 = np.zeros(HIDDEN)
        W2 = np.random.randn(HIDDEN, 1) * 0.5
        b2 = np.zeros(1)

        def forward(X):
            a1 = np.tanh(X @ W1 + b1)                  # hidden layer
            y_hat = 1 / (1 + np.exp(-(a1 @ W2 + b2)))  # sigmoid: chance of class 1
            return a1, y_hat

        # Check the shapes before training. This finds bugs early.
        a1, y_hat = forward(X_train)
        print(X_train.shape, W1.shape, a1.shape, W2.shape, y_hat.shape)
        print(W1.size + b1.size + W2.size + b2.size, "parameters")

        # ── Part 3: the training loop (forward, loss, backward, update) ──
        print("\n== Part 3: train ==")
        n = len(X_train)
        for epoch in range(EPOCHS + 1):
            a1, y_hat = forward(X_train)               # 2. Forward
            loss = -np.mean(y_train * np.log(y_hat + 1e-9)
                            + (1 - y_train) * np.log(1 - y_hat + 1e-9))  # 3. Loss
            dz2 = (y_hat - y_train) / n                # 4. Backward, output layer
            dW2 = a1.T @ dz2
            db2 = dz2.sum(axis=0)
            dz1 = (dz2 @ W2.T) * (1 - a1 ** 2)         #    hidden layer (tanh slope)
            dW1 = X_train.T @ dz1
            db1 = dz1.sum(axis=0)
            W1 -= LR * dW1; b1 -= LR * db1             # 5. Update
            W2 -= LR * dW2; b2 -= LR * db2
            if epoch % 400 == 0:
                acc = ((y_hat > 0.5) == y_train).mean()
                print(f"epoch {epoch:4}  loss {loss:.4f}  train accuracy {acc:.1%}")

        # ── Part 4: test accuracy and a text map of the border ──
        print("\n== Part 4: test the network ==")
        _, test_prob = forward(X_test)
        print(f"Test accuracy: {((test_prob > 0.5) == y_test).mean():.1%} on {len(X_test)} new points")

        # Text map of the learned boundary: '0' = class 0 area, '1' = class 1 area
        for yy in np.linspace(1.5, -1.0, 10):
            row = [[xx, yy] for xx in np.linspace(-1.5, 2.5, 40)]
            print("".join("1" if p > 0.5 else "0" for p in forward(np.array(row))[1][:, 0]))
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Build a Neural Network with PyTorch</h1>
        </div>
        <p class="lc-lead">Writing backpropagation by hand teaches you how networks learn. But real projects use a library. <strong>PyTorch</strong> is one of the most popular deep learning libraries. In this lesson you build the same 2-16-1 moons network in PyTorch. You will see that PyTorch does the same maths, with far less code.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 340" role="img" aria-label="Side by side: NumPy code on the left, PyTorch code on the right, for each training step. Make weights: W1 = randn times 0.5 versus nn.Linear(2, 16). Forward: tanh of X at W1 plus b1 versus model(X). Loss: minus mean of y log y hat versus nn.BCEWithLogitsLoss. Clear old gradients: not needed versus optimizer.zero_grad. Backward: 6 lines versus loss.backward. Update: W1 minus equals LR times dW1 four times versus optimizer.step.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
            <text x="150" y="30" font-weight="700" fill="#c4b5fd">NumPy: you write it</text>
            <text x="380" y="30" font-weight="700" fill="#9b99b8">Step</text>
            <text x="610" y="30" font-weight="700" fill="#67e8f9">PyTorch: one line</text>
            <rect x="20" y="46" width="260" height="36" rx="7" fill="#27274e" stroke="#4b4a78"/>
            <text x="150" y="69" font-size="12" font-family="ui-monospace, Menlo, monospace">W1 = randn(2, 16) * 0.5</text>
            <rect x="306" y="46" width="148" height="36" rx="18" fill="#1f1f44" stroke="#8b5cf6"/>
            <text x="380" y="69" font-weight="700" fill="#8b5cf6">Make weights</text>
            <rect x="480" y="46" width="260" height="36" rx="7" fill="#27274e" stroke="#22d3ee"/>
            <text x="610" y="69" font-size="12" font-family="ui-monospace, Menlo, monospace">nn.Linear(2, 16)</text>
            <line x1="306" y1="64" x2="284" y2="64" stroke="#4b4a78" stroke-width="1.5"/>
            <line x1="454" y1="64" x2="476" y2="64" stroke="#4b4a78" stroke-width="1.5"/>
            <rect x="20" y="92" width="260" height="36" rx="7" fill="#27274e" stroke="#4b4a78"/>
            <text x="150" y="115" font-size="12" font-family="ui-monospace, Menlo, monospace">tanh(X @ W1 + b1) ...</text>
            <rect x="306" y="92" width="148" height="36" rx="18" fill="#1f1f44" stroke="#3b82f6"/>
            <text x="380" y="115" font-weight="700" fill="#3b82f6">Forward</text>
            <rect x="480" y="92" width="260" height="36" rx="7" fill="#27274e" stroke="#22d3ee"/>
            <text x="610" y="115" font-size="12" font-family="ui-monospace, Menlo, monospace">model(X)</text>
            <line x1="306" y1="110" x2="284" y2="110" stroke="#4b4a78" stroke-width="1.5"/>
            <line x1="454" y1="110" x2="476" y2="110" stroke="#4b4a78" stroke-width="1.5"/>
            <rect x="20" y="138" width="260" height="36" rx="7" fill="#27274e" stroke="#4b4a78"/>
            <text x="150" y="161" font-size="12" font-family="ui-monospace, Menlo, monospace">-mean(y * log(ŷ) + ...)</text>
            <rect x="306" y="138" width="148" height="36" rx="18" fill="#1f1f44" stroke="#f59e0b"/>
            <text x="380" y="161" font-weight="700" fill="#f59e0b">Loss</text>
            <rect x="480" y="138" width="260" height="36" rx="7" fill="#27274e" stroke="#22d3ee"/>
            <text x="610" y="161" font-size="12" font-family="ui-monospace, Menlo, monospace">nn.BCEWithLogitsLoss()</text>
            <line x1="306" y1="156" x2="284" y2="156" stroke="#4b4a78" stroke-width="1.5"/>
            <line x1="454" y1="156" x2="476" y2="156" stroke="#4b4a78" stroke-width="1.5"/>
            <rect x="20" y="184" width="260" height="36" rx="7" fill="#27274e" stroke="#4b4a78"/>
            <text x="150" y="207" font-size="12" font-family="ui-monospace, Menlo, monospace">(not needed)</text>
            <rect x="306" y="184" width="148" height="36" rx="18" fill="#1f1f44" stroke="#9b99b8"/>
            <text x="380" y="207" font-weight="700" fill="#9b99b8">Clear old grads</text>
            <rect x="480" y="184" width="260" height="36" rx="7" fill="#27274e" stroke="#22d3ee"/>
            <text x="610" y="207" font-size="12" font-family="ui-monospace, Menlo, monospace">optimizer.zero_grad()</text>
            <line x1="306" y1="202" x2="284" y2="202" stroke="#4b4a78" stroke-width="1.5"/>
            <line x1="454" y1="202" x2="476" y2="202" stroke="#4b4a78" stroke-width="1.5"/>
            <rect x="20" y="230" width="260" height="36" rx="7" fill="#27274e" stroke="#4b4a78"/>
            <text x="150" y="253" font-size="12" font-family="ui-monospace, Menlo, monospace">6 lines: dz2, dW2 ... dW1</text>
            <rect x="306" y="230" width="148" height="36" rx="18" fill="#1f1f44" stroke="#ec4899"/>
            <text x="380" y="253" font-weight="700" fill="#ec4899">Backward</text>
            <rect x="480" y="230" width="260" height="36" rx="7" fill="#27274e" stroke="#22d3ee"/>
            <text x="610" y="253" font-size="12" font-family="ui-monospace, Menlo, monospace">loss.backward()</text>
            <line x1="306" y1="248" x2="284" y2="248" stroke="#4b4a78" stroke-width="1.5"/>
            <line x1="454" y1="248" x2="476" y2="248" stroke="#4b4a78" stroke-width="1.5"/>
            <rect x="20" y="276" width="260" height="36" rx="7" fill="#27274e" stroke="#4b4a78"/>
            <text x="150" y="299" font-size="12" font-family="ui-monospace, Menlo, monospace">W1 -= LR * dW1  (x 4)</text>
            <rect x="306" y="276" width="148" height="36" rx="18" fill="#1f1f44" stroke="#10b981"/>
            <text x="380" y="299" font-weight="700" fill="#10b981">Update</text>
            <rect x="480" y="276" width="260" height="36" rx="7" fill="#27274e" stroke="#22d3ee"/>
            <text x="610" y="299" font-size="12" font-family="ui-monospace, Menlo, monospace">optimizer.step()</text>
            <line x1="306" y1="294" x2="284" y2="294" stroke="#4b4a78" stroke-width="1.5"/>
            <line x1="454" y1="294" x2="476" y2="294" stroke="#4b4a78" stroke-width="1.5"/>
            <text x="380" y="330" font-size="12" fill="#9b99b8">Same network, same maths. PyTorch keeps W1, b1, W2, b2 inside the model.</text>
            </g>
          </svg>
          <figcaption>Each step of the NumPy network has a PyTorch version. The biggest saving is the backward pass: autograd works out every gradient for you.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Tensors and autograd</h3>
          <p>PyTorch stores numbers in <strong>tensors</strong>. A tensor is like a NumPy array. It has a shape and a data type. It can also run on a GPU (a graphics card that does many sums at once).</p>
          <p>PyTorch also has <strong>autograd</strong>. Autograd records every calculation you do. When you call <code>.backward()</code>, it uses the chain rule to find every gradient for you.</p>
          <ul class="lc-list">
            <li>Floats in PyTorch are <code>float32</code> by default. NumPy uses <code>float64</code>. Neural networks rarely need the extra precision.</li>
            <li>Make a weight with <code>w = torch.tensor(2.0, requires_grad=True)</code>. Then set <code>loss = (w - 3) ** 2</code> and call <code>loss.backward()</code>. Now <code>w.grad</code> holds −2. That is the slope <code>2 * (2 - 3) = -2</code>, worked out for you.</li>
            <li><code>nn.Linear(2, 16)</code> stores its weight as (16, 2), which is (outputs, inputs). It computes <code>X @ W.T + b</code>. This is the same maths as our <code>X @ W1 + b1</code>, with the weight stored the other way round.</li>
          </ul>
          <p>Part 2 in the code editor below tries tensors, autograd and <code>nn.Linear</code>. Run it on your own computer, because PyTorch does not run in the browser.</p>
        </div>
        <div class="lc-card">
          <h3>The full program</h3>
          <p>A PyTorch network is a class that inherits from <code>nn.Module</code>. You create the layers in <code>__init__</code>. You say how data flows through them in <code>forward</code>.</p>
          <p>Our class is called <code>MoonNet</code>. In <code>__init__</code> it makes <code>self.hidden = nn.Linear(2, 16)</code> and <code>self.out = nn.Linear(16, 1)</code>. Its <code>forward</code> applies <code>torch.tanh</code> to the hidden layer. Then it returns the raw score of the output layer. First, the NumPy moons data is turned into tensors with <code>torch.tensor(X_train, dtype=torch.float32)</code>.</p>
          <p>The training loop is the heart of the program. It has five lines: forward, loss, clear old gradients, backward and update. Part 3 in the code editor below has the full program.</p>
          <p>PyTorch cannot run in the browser, so copy Part 3 to your own computer to run it. Part 1 builds the same network with scikit-learn, which does run here.</p>
          <p>On a computer with PyTorch 2.8, this program has 65 parameters. The loss falls from 0.66 to 0.055 over 2,000 epochs. The test accuracy is 94%, the same as our NumPy network. The loss values are a little different because PyTorch makes its random starting weights in a different way.</p>
        </div>
        <div class="lc-card">
          <h3>What each new piece does</h3>
          <table class="lc-table">
            <thead><tr><th>PyTorch piece</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>nn.Module</code></td><td>The base class for every network. It keeps track of all the weights inside.</td></tr>
              <tr><td><code>nn.Linear(2, 16)</code></td><td>A fully connected layer. It holds a weight and a bias, with random starting values.</td></tr>
              <tr><td><code>nn.BCEWithLogitsLoss()</code></td><td>Sigmoid and binary cross-entropy in one step. It is more stable than doing them apart.</td></tr>
              <tr><td><code>torch.optim.SGD</code></td><td>The optimizer. It applies <code>w -= lr * grad</code> to every parameter.</td></tr>
              <tr><td><code>optimizer.zero_grad()</code></td><td>Clears old gradients. PyTorch adds new gradients to old ones, so you must clear them each step.</td></tr>
              <tr><td><code>torch.no_grad()</code></td><td>Turns off autograd. Use it for testing, because you do not need gradients there.</td></tr>
            </tbody>
          </table>
          <p>Because the model gives a raw score (a <strong>logit</strong>), we apply <code>torch.sigmoid</code> at test time to get a probability. To try PyTorch on your own computer, install it with the command from the official PyTorch website. The command depends on your system.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one PyTorch training step</h3>
          <p>Step through one epoch of the loop above. Watch where autograd does the work.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="tool" data-label="logits = model(X_train)">Forward pass. The 150 × 2 batch goes through both layers. The result has shape 150 × 1. Autograd records every operation.</li>
              <li data-kind="tool" data-label="loss = loss_fn(logits, y_train)">The loss function applies sigmoid and binary cross-entropy. The result is one number.</li>
              <li data-kind="tool" data-label="optimizer.zero_grad()">Clear the gradients left from the last epoch. Without this, they would add up.</li>
              <li data-kind="result" data-label="loss.backward()">Autograd walks back through the recorded steps. It fills <code>.grad</code> for all 65 parameters, with the same shapes as the weights.</li>
              <li data-kind="tool" data-label="optimizer.step()">The optimizer updates every weight: w -= 0.5 * grad.</li>
              <li data-kind="warn" data-label="A common bug">If you forget <code>zero_grad()</code>, gradients keep growing. The steps get too big and the loss can explode.</li>
              <li data-kind="answer" data-label="Result">Repeat 2,001 times. The loss falls from 0.66 to 0.06, and test accuracy reaches 94%.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>PyTorch does not run in the browser. So Part 1 of the code editor below builds the same 2-16-1 network with scikit-learn's <code>MLPClassifier</code>. Like PyTorch, it does forward, loss, backward and update for you. Parts 2 and 3 are the PyTorch code, for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that W1 has shape (2, 16) and W2 has shape (16, 1), just like our network. Note the test accuracy.</li>
            <li>In Part 1, change <code>solver="sgd"</code> to <code>solver="adam"</code> and <code>learning_rate_init</code> to <code>0.01</code>. Adam is a popular optimizer that adapts the step size.</li>
            <li>In Part 1, change <code>hidden_layer_sizes=(16,)</code> to <code>(16, 16)</code>. This adds a second hidden layer. Look at the shapes again.</li>
            <li>In Part 1, change <code>activation="tanh"</code> to <code>activation="relu"</code> and compare the loss chart.</li>
            <li>If you have PyTorch on your computer, run Parts 2 and 3 there. In Part 3, try <code>torch.optim.Adam(model.parameters(), lr=0.01)</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> PyTorch runs the same five steps as your NumPy network. You write the layers and the forward pass, and autograd and the optimizer handle backpropagation and the update.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # The same 2 -> 16 -> 1 moons network, three ways.
        # Part 1 runs in the browser. Parts 2 and 3 use PyTorch, so run them on your own computer.
        # To install PyTorch, use the command from the official PyTorch website (it depends on your system).
        from sklearn.datasets import make_moons
        from sklearn.model_selection import train_test_split
        from sklearn.neural_network import MLPClassifier
        import warnings
        warnings.filterwarnings("ignore")   # hide the "not converged" note

        # ── Part 1: the network with scikit-learn's MLPClassifier ──
        # MLPClassifier does forward, loss, backward and update for you, like PyTorch does.
        print("== Part 1: the network with scikit-learn ==")
        X, y = make_moons(n_samples=200, noise=0.2, random_state=42)
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=42)

        model = MLPClassifier(
            hidden_layer_sizes=(16,),   # one hidden layer with 16 neurons
            activation="tanh",          # same activation as our NumPy network
            solver="sgd",               # plain gradient descent (try "adam")
            learning_rate_init=0.5,     # the learning rate
            momentum=0.0,               # turn off extras, so it is plain SGD
            alpha=0.0,                  # no regularization (a later topic)
            batch_size=150,             # use all training points in each step
            max_iter=2000,              # epochs
            n_iter_no_change=2000,      # do not stop early
            random_state=42,
        )
        model.fit(X_train, y_train)

        # The weights it learned have the same shapes as W1, b1, W2, b2
        for i, (W, b) in enumerate(zip(model.coefs_, model.intercepts_), start=1):
            print(f"Layer {i}: W{i} shape {W.shape}, b{i} shape {b.shape}")

        # Loss during training (a text chart, one row every 400 epochs)
        for epoch in range(0, len(model.loss_curve_), 400):
            loss = model.loss_curve_[epoch]
            print(f"epoch {epoch:4}  loss {loss:.4f}  " + "#" * round(loss * 40))

        print(f"Train accuracy: {model.score(X_train, y_train):.1%}")
        print(f"Test accuracy:  {model.score(X_test, y_test):.1%}")
        print("Predictions for (0, 1) and (1, -0.5):", model.predict([[0, 1], [1, -0.5]]))

        # ── Part 2: tensors and autograd in PyTorch (run this part on your own computer) ──
        print("\n== Part 2: tensors and autograd ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            x = torch.tensor([[1.0, 2.0], [0.0, 1.0]])   # a batch: 2 rows, 2 features
            print(x.shape, x.dtype)

            w = torch.tensor(2.0, requires_grad=True)    # track gradients for w
            loss = (w - 3) ** 2
            loss.backward()                              # autograd finds d(loss)/dw
            print(loss.item(), w.grad.item())

            layer = nn.Linear(2, 16)
            print(layer.weight.shape, layer.bias.shape)

        # ── Part 3: the full moons network in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: the full network in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            X, y = make_moons(n_samples=200, noise=0.2, random_state=42)
            X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=42)

            # NumPy arrays -> PyTorch tensors
            X_train = torch.tensor(X_train, dtype=torch.float32)
            y_train = torch.tensor(y_train, dtype=torch.float32).reshape(-1, 1)
            X_test = torch.tensor(X_test, dtype=torch.float32)
            y_test = torch.tensor(y_test, dtype=torch.float32).reshape(-1, 1)
            print(X_train.shape, y_train.shape)

            class MoonNet(nn.Module):
                def __init__(self):
                    super().__init__()
                    self.hidden = nn.Linear(2, 16)   # W1 and b1
                    self.out = nn.Linear(16, 1)      # W2 and b2

                def forward(self, x):
                    a1 = torch.tanh(self.hidden(x))
                    return self.out(a1)              # raw score (logit), no sigmoid here

            torch.manual_seed(42)
            model = MoonNet()
            print(sum(p.numel() for p in model.parameters()), "parameters")

            loss_fn = nn.BCEWithLogitsLoss()        # sigmoid + binary cross-entropy in one
            optimizer = torch.optim.SGD(model.parameters(), lr=0.5)

            for epoch in range(2001):
                logits = model(X_train)              # 1. forward
                loss = loss_fn(logits, y_train)      # 2. loss
                optimizer.zero_grad()                # 3. clear old gradients
                loss.backward()                      # 4. backward (autograd)
                optimizer.step()                     # 5. update: w -= lr * grad
                if epoch % 500 == 0:
                    print(f"epoch {epoch:4}  loss {loss.item():.4f}")

            with torch.no_grad():
                preds = (torch.sigmoid(model(X_test)) > 0.5).float()
                print(f"Test accuracy: {(preds == y_test).float().mean().item():.1%}")
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Classification vs Regression</h1>
        </div>
        <p class="lc-lead">A neural network can answer two kinds of question. "Which group is this?" is <strong>classification</strong>. "How much?" is <strong>regression</strong>. The hidden layers can be exactly the same for both. Only the output layer, the loss function and the way you measure success change. In this lesson you will learn which ones to pick.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Inputs go into the same hidden layers. For classification, the network ends with 3 output units, then softmax, giving probabilities 0.786, 0.175 and 0.039, trained with cross-entropy. For regression, it ends with 1 output unit and no activation, giving 28.0 minutes, trained with MSE or MAE.">
            <defs><marker id="nn16a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="120" width="100" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="60" y="146" font-weight="700">Inputs x</text>
              <text x="60" y="165" font-size="11" fill="#9b99b8">features</text>
              <line x1="112" y1="150" x2="138" y2="150" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn16a)"/>
              <rect x="142" y="105" width="130" height="90" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="207" y="135" font-weight="700" fill="#c4b5fd">Hidden layers</text>
              <text x="207" y="155" font-size="12">ReLU</text>
              <text x="207" y="175" font-size="11" fill="#9b99b8">same for both</text>
              <path d="M274,150 L290,150 L290,70 L304,70" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn16a)"/>
              <path d="M290,150 L290,230 L304,230" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn16a)"/>
              <text x="310" y="30" text-anchor="start" font-weight="700" fill="#6ee7b7">Classification: which group?</text>
              <rect x="310" y="40" width="140" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="380" y="65">3 output units</text>
              <text x="380" y="84" font-size="11" fill="#9b99b8">2.0, 0.5, -1.0</text>
              <line x1="452" y1="70" x2="476" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn16a)"/>
              <rect x="480" y="40" width="110" height="60" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="535" y="65">softmax</text>
              <text x="535" y="84" font-size="11" fill="#9b99b8">adds up to 1</text>
              <line x1="592" y1="70" x2="606" y2="70" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn16a)"/>
              <rect x="610" y="40" width="140" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="680" y="65" fill="#6ee7b7">0.786 0.175 0.039</text>
              <text x="680" y="84" font-size="11" fill="#9b99b8">probabilities</text>
              <text x="530" y="125" font-size="12" fill="#fcd34d">Loss: cross-entropy = -ln(0.786) = 0.241</text>
              <text x="310" y="190" text-anchor="start" font-weight="700" fill="#67e8f9">Regression: how much?</text>
              <rect x="310" y="200" width="140" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="380" y="225">1 output unit</text>
              <text x="380" y="244" font-size="11" fill="#9b99b8">one number</text>
              <line x1="452" y1="230" x2="476" y2="230" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn16a)"/>
              <rect x="480" y="200" width="110" height="60" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="535" y="225">no activation</text>
              <text x="535" y="244" font-size="11" fill="#9b99b8">linear</text>
              <line x1="592" y1="230" x2="606" y2="230" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn16a)"/>
              <rect x="610" y="200" width="140" height="60" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="680" y="225" fill="#67e8f9">ŷ = 28.0 minutes</text>
              <text x="680" y="244" font-size="11" fill="#9b99b8">any number</text>
              <text x="530" y="285" font-size="12" fill="#fcd34d">Loss: MSE or MAE (true value 30.0 minutes)</text>
              <text x="141" y="238" font-size="11.5" fill="#9b99b8">Only two classes?</text>
              <text x="141" y="256" font-size="11.5" fill="#9b99b8">1 unit + sigmoid also works.</text>
            </g>
          </svg>
          <figcaption>The same hidden layers can do both jobs. Only the end of the network and the loss change. The numbers come from the worked example below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Two kinds of question</h3>
          <p>Maya, a junior data scientist in Bristol, has two jobs this week. First, sort support tickets into teams. Second, predict how long a delivery will take.</p>
          <ul class="lc-list">
            <li><strong>Classification</strong> picks one answer from a fixed list. Each possible answer is called a <strong>class</strong>. The ticket team is classification: billing, delivery or other.</li>
            <li><strong>Regression</strong> predicts a number on a scale. The delivery time is regression: 18 minutes, 27.5 minutes, and so on.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Type</th><th>Possible answers</th></tr></thead>
            <tbody>
              <tr><td>Is this email spam?</td><td>Binary classification</td><td>spam, not spam</td></tr>
              <tr><td>Which team gets this ticket?</td><td>Multi-class classification</td><td>billing, delivery, other</td></tr>
              <tr><td>How long will the delivery take?</td><td>Regression</td><td>any number of minutes</td></tr>
              <tr><td>What will this flat rent for?</td><td>Regression</td><td>any amount in pounds</td></tr>
            </tbody>
          </table>
          <p><strong>Binary</strong> means there are only two classes. <strong>Multi-class</strong> means three or more. A simple test: can you list all the answers? If yes, it is classification.</p>
        </div>
        <div class="lc-card">
          <h3>Pick the output layer and the loss</h3>
          <p>The last layer must give answers of the right shape. The loss must fit that shape too.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Output units</th><th>Output activation</th><th>Loss</th></tr></thead>
            <tbody>
              <tr><td>Regression</td><td>1 per number you predict</td><td>None (linear)</td><td>MSE (or MAE)</td></tr>
              <tr><td>Binary classification</td><td>1</td><td>Sigmoid</td><td>Binary cross-entropy</td></tr>
              <tr><td>Multi-class classification</td><td>1 per class</td><td>Softmax</td><td>Cross-entropy</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Linear output.</strong> No activation means the output can be any number. A delivery time of 42.3 needs that. A sigmoid would squash it between 0 and 1.</li>
            <li><strong>Sigmoid output.</strong> One number between 0 and 1. Read it as "the probability of the yes class".</li>
            <li><strong>Softmax output.</strong> One number per class. They are all between 0 and 1, and they add up to 1.</li>
          </ul>
          <p>The raw scores before softmax are called <strong>logits</strong>. The predicted class is the one with the highest probability.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example with real numbers</h3>
          <p>The ticket network gives three logits: 2.0 (billing), 0.5 (delivery) and -1.0 (other). The delivery network predicts three times. Check both by hand here. Part 1 in the code editor below does the same sums in NumPy.</p>
          <p>Softmax turns the logits into 0.786, 0.175 and 0.039. They add up to 1.</p>
          <p>The ticket really is "billing", and the network gives it 0.786. So the loss is small: -ln(0.786) = 0.241. Suppose the ticket was really "other" instead. The loss would be -ln(0.039) = 3.241. A confident wrong answer costs a lot.</p>
          <p>For delivery, the errors are -2, 5 and 1 minutes. MSE squares them: (4 + 25 + 1) ÷ 3 = 10.0. MAE takes the plain size: (2 + 5 + 1) ÷ 3 = 2.67 minutes.</p>
        </div>
        <div class="lc-card">
          <h3>The same thing in PyTorch</h3>
          <p>In PyTorch you choose the loss with one line. Part 4 in the code editor below computes the same cross-entropy (0.241), MSE (10.0) and MAE (2.67) with PyTorch. PyTorch does not run in the browser, so copy Part 4 to your own computer to run it.</p>
          <ul class="lc-list">
            <li><code>nn.CrossEntropyLoss</code> applies softmax for you. Give it the raw logits. Do not add your own softmax layer before it.</li>
            <li>For regression, end the network with <code>nn.Linear(hidden, 1)</code> and no activation. Then use <code>nn.MSELoss</code> or <code>nn.L1Loss</code> (MAE).</li>
          </ul>
          <p>Parts 2 and 3 in the editor use scikit-learn's <code>MLPClassifier</code> and <code>MLPRegressor</code> for the same idea.</p>
        </div>
        <div class="lc-card">
          <h3>Measuring the result</h3>
          <p>The loss is for training. People usually want easier numbers, called <strong>metrics</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Metric</th><th>What it tells you</th></tr></thead>
            <tbody>
              <tr><td>Classification</td><td>Accuracy</td><td>The share of answers that are right</td></tr>
              <tr><td>Classification</td><td>Confusion matrix</td><td>A table of true class against predicted class. It shows which classes get mixed up.</td></tr>
              <tr><td>Classification</td><td>Precision and recall</td><td>Precision: of the "spam" guesses, how many were spam? Recall: of the real spam, how much was found?</td></tr>
              <tr><td>Regression</td><td>MAE</td><td>The average error, in the same unit as the answer (for example minutes)</td></tr>
              <tr><td>Regression</td><td>RMSE</td><td>The square root of MSE. It punishes big errors more. Here it is √10 = 3.16 minutes.</td></tr>
              <tr><td>Regression</td><td>R² score</td><td>1.0 is perfect. 0 means no better than always guessing the average.</td></tr>
            </tbody>
          </table>
          <p>Be careful with accuracy. Say 95 of 100 emails are not spam. A model that always says "not spam" gets 95% accuracy, but it finds no spam at all.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: classification or regression?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each prediction task into the right group.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="class" data-label="Classification"></div>
              <div data-sorter-target="bucket" data-bucket="reg" data-label="Regression"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="class" data-why="There are two fixed answers: spam or not spam. This is binary classification.">Is this email spam?</li>
              <li data-bucket="reg" data-why="Temperature is a number on a scale, such as 14.5 degrees.">Tomorrow's temperature in Leeds</li>
              <li data-bucket="class" data-why="There are ten fixed answers, 0 to 9. Use 10 outputs and softmax.">Which digit is in this image?</li>
              <li data-bucket="reg" data-why="Minutes can be any number, so the output must be linear.">Minutes until a parcel arrives</li>
              <li data-bucket="class" data-why="The answer is yes or no. One sigmoid output works well.">Will this customer cancel next month?</li>
              <li data-bucket="reg" data-why="A price in pounds is a number on a scale.">The selling price of a used car</li>
              <li data-bucket="class" data-why="You can list every answer: billing, delivery, other.">Which team gets a support ticket?</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has four parts. Part 1 checks the worked example in NumPy. Parts 2 and 3 train two scikit-learn networks with the same hidden layers. One classifies the moons data. The other predicts Maya's delivery times. Part 4 is the PyTorch version of Part 1, for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. Check Part 1 against the worked example: 0.786, 0.241, 10.0 and 2.67.</li>
            <li>In Part 1, change <code>true_class = 0</code> to <code>2</code>. The cross-entropy jumps to 3.241.</li>
            <li>Look at the output activations printed in Parts 2 and 3. Binary classification uses <code>logistic</code> (sigmoid). Regression uses <code>identity</code> (no activation).</li>
            <li>In Part 2, swap the <code>make_moons</code> line for <code>X, y = make_blobs(n_samples=200, centers=3, random_state=42)</code>. Now the output activation is <code>softmax</code>, with three probabilities.</li>
            <li>In Part 3, change the delivery rule <code>10 + 4 * km</code> to <code>5 + 6 * km</code>. Do the predictions follow the new rule?</li>
            <li>Change <code>HIDDEN</code> to <code>(2,)</code>. Does the accuracy in Part 2 or the error in Part 3 get worse?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Classification ends with softmax (or sigmoid) and cross-entropy. Regression ends with one linear unit and MSE or MAE. The hidden layers do not need to change.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Same hidden layers, two different jobs.
        # Classification: predict a class. Regression: predict a number.
        import numpy as np
        from sklearn.datasets import make_moons, make_blobs
        from sklearn.model_selection import train_test_split
        from sklearn.neural_network import MLPClassifier, MLPRegressor
        from sklearn.metrics import accuracy_score, mean_absolute_error

        # ── Part 1: the losses by hand, with the numbers from the lesson ──
        print("== Part 1: the losses by hand ==")
        logits = np.array([2.0, 0.5, -1.0])                 # billing, delivery, other
        probs = np.exp(logits) / np.exp(logits).sum()       # softmax
        print("  probabilities:", probs.round(3), "sum =", probs.sum().round(3))
        true_class = 0                                      # the ticket really is "billing"
        loss = -np.log(probs[true_class])                   # cross-entropy
        print("  cross-entropy:", round(loss, 3))
        y_true = np.array([30.0, 45.0, 20.0])               # delivery times in minutes
        y_hat = np.array([28.0, 50.0, 21.0])                # linear output, no activation
        print("  MSE:", round(np.mean((y_hat - y_true) ** 2), 2))
        print("  MAE:", round(np.mean(np.abs(y_hat - y_true)), 2))

        HIDDEN = (16, 16)      # the hidden layers are the same for both jobs

        # ── Part 2: classification: which moon does each point belong to? (class 0 or 1) ──
        print("\n== Part 2: classification ==")
        # For 3 classes, swap the next line for: X, y = make_blobs(n_samples=200, centers=3, random_state=42)
        X, y = make_moons(n_samples=200, noise=0.2, random_state=42)
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=42)
        clf = MLPClassifier(hidden_layer_sizes=HIDDEN, max_iter=2000, random_state=42)
        clf.fit(X_tr, y_tr)
        print("  output activation:", clf.out_activation_)
        print("  probabilities for 3 test points:")
        for p in clf.predict_proba(X_te[:3]):
            shown = "  ".join(f"class {k}: {v:.2f}" for k, v in enumerate(p))
            print(f"    {shown}  -> predicted {p.argmax()}")
        print(f"  test accuracy: {accuracy_score(y_te, clf.predict(X_te)):.2f}")

        # ── Part 3: regression: Maya predicts delivery time (minutes) from distance (km) ──
        print("\n== Part 3: regression ==")
        rng = np.random.RandomState(42)
        km = rng.uniform(1, 10, size=200)
        minutes = 10 + 4 * km + rng.normal(0, 2, size=200)     # the hidden "true" rule plus noise
        k_tr, k_te, m_tr, m_te = train_test_split(km.reshape(-1, 1), minutes, test_size=0.25, random_state=42)
        reg = MLPRegressor(hidden_layer_sizes=HIDDEN, max_iter=2000, random_state=42)
        reg.fit(k_tr, m_tr)
        print("  output activation:", reg.out_activation_)
        for d in [2, 5, 8]:
            print(f"  {d} km -> predicted {reg.predict([[d]])[0]:.1f} minutes")
        print(f"  test mean absolute error: {mean_absolute_error(m_te, reg.predict(k_te)):.1f} minutes")

        # ── Part 4: the same losses in PyTorch (run this part on your own computer) ──
        # On your computer, first run: pip install torch
        print("\n== Part 4: the same losses in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            logits = torch.tensor([[2.0, 0.5, -1.0]])          # raw scores, no softmax
            label = torch.tensor([0])                           # class 0 = billing
            print("  cross-entropy:", round(nn.CrossEntropyLoss()(logits, label).item(), 3))

            y_hat = torch.tensor([28.0, 50.0, 21.0])
            y_true = torch.tensor([30.0, 45.0, 20.0])
            print("  MSE:", nn.MSELoss()(y_hat, y_true).item())
            print("  MAE:", round(nn.L1Loss()(y_hat, y_true).item(), 2))
            # For regression, end the network with nn.Linear(hidden, 1) and no activation.

        # Try it: in Part 1 set true_class = 2. In Part 2 use make_blobs with centers=3.
        # Change HIDDEN, or change the delivery rule 10 + 4 * km in Part 3.
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Overfitting, Underfitting and Regularization</h1>
        </div>
        <p class="lc-lead">A network can score perfectly on its training data and still fail on new data. This is called <strong>overfitting</strong>. The opposite problem is <strong>underfitting</strong>: the network does badly even on the training data. In this lesson you will spot both with loss curves. Then you will fix overfitting with L2 weight decay, dropout, early stopping and more data.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A chart of loss against epochs. Training loss keeps going down. Validation loss goes down, reaches its lowest point, then goes up again. The left part is underfitting, the middle is a good fit and the right part is overfitting. A dashed line marks the best epoch, where early stopping keeps the weights.">
            <defs><marker id="nn17a" markerWidth="8" markerHeight="8" refX="4" refY="4" orient="auto"><path d="M0,0 L8,4 L0,8 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="70" y="40" width="120" height="210" fill="#3b82f6" opacity="0.10"/>
              <rect x="190" y="40" width="160" height="210" fill="#10b981" opacity="0.10"/>
              <rect x="350" y="40" width="210" height="210" fill="#ec4899" opacity="0.10"/>
              <text x="130" y="58" font-size="12" font-weight="700" fill="#93c5fd">underfitting</text>
              <text x="270" y="58" font-size="12" font-weight="700" fill="#6ee7b7">good fit</text>
              <text x="455" y="58" font-size="12" font-weight="700" fill="#f9a8d4">overfitting</text>
              <line x1="70" y1="250" x2="560" y2="250" stroke="#9b99b8" stroke-width="1.5"/>
              <line x1="70" y1="250" x2="70" y2="40" stroke="#9b99b8" stroke-width="1.5"/>
              <text x="40" y="150" font-size="12" fill="#9b99b8" transform="rotate(-90 40 150)">loss</text>
              <text x="530" y="270" font-size="12" fill="#9b99b8">epochs</text>
              <path d="M70,55 L82,74 L94,91 L107,106 L119,119 L131,131 L144,142 L156,152 L168,161 L180,168 L192,175 L205,181 L217,187 L229,192 L242,196 L254,200 L266,204 L278,207 L290,210 L303,212 L315,214 L327,216 L340,218 L352,220 L364,221 L376,222 L388,224 L401,225 L413,226 L425,226 L438,227 L450,228 L462,228 L474,229 L487,229 L499,230 L511,230 L523,230 L536,231 L548,231 L560,231" fill="none" stroke="#3b82f6" stroke-width="3"/>
              <path d="M70,55 L82,73 L94,89 L107,103 L119,114 L131,125 L144,133 L156,141 L168,147 L180,153 L192,157 L205,162 L217,165 L229,168 L242,169 L254,170 L266,170 L278,170 L290,170 L303,169 L315,168 L327,167 L340,166 L352,164 L364,162 L376,160 L388,158 L401,155 L413,153 L425,150 L438,148 L450,145 L462,142 L474,139 L487,136 L499,133 L511,130 L523,127 L536,123 L548,120 L560,117" fill="none" stroke="#ec4899" stroke-width="3"/>
              <line x1="272" y1="75" x2="272" y2="250" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4"/>
              <circle cx="272" cy="170" r="5" fill="#f59e0b"/>
              <text x="272" y="268" font-size="11.5" fill="#fcd34d">best epoch: stop here</text>
              <line x1="545" y1="127" x2="545" y2="224" stroke="#9b99b8" stroke-width="1.5" marker-start="url(#nn17a)" marker-end="url(#nn17a)"/>
              <text x="535" y="180" font-size="12" text-anchor="end" fill="#e2e0f0">gap</text>
              <rect x="585" y="50" width="165" height="200" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <line x1="600" y1="78" x2="628" y2="78" stroke="#3b82f6" stroke-width="3"/>
              <text x="636" y="82" font-size="12" text-anchor="start">training loss</text>
              <line x1="600" y1="106" x2="628" y2="106" stroke="#ec4899" stroke-width="3"/>
              <text x="636" y="110" font-size="12" text-anchor="start">validation loss</text>
              <line x1="600" y1="134" x2="628" y2="134" stroke="#f59e0b" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="636" y="138" font-size="12" text-anchor="start">early stop</text>
              <text x="667" y="178" font-size="12" fill="#9b99b8">A growing gap means</text>
              <text x="667" y="196" font-size="12" fill="#9b99b8">the network is</text>
              <text x="667" y="214" font-size="12" fill="#9b99b8">memorising noise.</text>
            </g>
          </svg>
          <figcaption>The usual shape of the two loss curves. Training loss keeps falling. Validation loss falls, then rises when the network starts to overfit.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Training, validation and test data</h3>
          <p>You never judge a network only on the data it trained on. Instead, you split your data into parts:</p>
          <ul class="lc-list">
            <li><strong>Training set:</strong> the network learns its weights from this data.</li>
            <li><strong>Validation set:</strong> you check the network on this data during training. You use it to make choices, such as when to stop.</li>
            <li><strong>Test set:</strong> you use it once, at the very end. It tells you how well the network works on new data.</li>
          </ul>
          <p>Think of a student. The training set is the homework. The validation set is a practice exam. The test set is the real exam. A student who memorises the homework answers can still fail the exam.</p>
          <p>The skill we want is called <strong>generalisation</strong>: doing well on data the network has never seen.</p>
        </div>
        <div class="lc-card">
          <h3>Underfitting vs overfitting</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Underfitting</th><th>Good fit</th><th>Overfitting</th></tr></thead>
            <tbody>
              <tr><td>Training loss</td><td>High</td><td>Low</td><td>Very low</td></tr>
              <tr><td>Validation loss</td><td>High</td><td>Low, close to training</td><td>High, and often rising</td></tr>
              <tr><td>What is wrong</td><td>The model is too simple, or it has not trained enough</td><td>Nothing</td><td>The model learned the noise in the training data</td></tr>
              <tr><td>What to try</td><td>A bigger network, more epochs, a better learning rate</td><td>Keep it</td><td>More data, L2, dropout, early stopping, a smaller network</td></tr>
            </tbody>
          </table>
          <p>Here are real numbers from Part 1 in the code editor below. The data is a noisy version of the moons data (<code>noise=0.3</code>). The network is big (two hidden layers of 100 units) and sees only 40 training points.</p>
          <table class="lc-table">
            <thead><tr><th>Epoch</th><th>Train loss</th><th>Val loss</th><th>Train accuracy</th><th>Val accuracy</th></tr></thead>
            <tbody>
              <tr><td>15</td><td>0.266</td><td>0.436</td><td>0.90</td><td>0.84</td></tr>
              <tr><td>30</td><td>0.154</td><td>0.378</td><td>0.93</td><td>0.87</td></tr>
              <tr><td>60</td><td>0.057</td><td>1.101</td><td>1.00</td><td>0.82</td></tr>
              <tr><td>150</td><td>0.002</td><td>2.866</td><td>1.00</td><td>0.76</td></tr>
            </tbody>
          </table>
          <p>Training accuracy reaches 100%. But validation accuracy falls from 0.87 to 0.76. The network has memorised 40 noisy points instead of learning the moon shapes.</p>
        </div>
        <div class="lc-card">
          <h3>Fix 1: L2 weight decay</h3>
          <p><strong>Regularization</strong> means any trick that stops a network from overfitting. The most common one is <strong>L2 regularization</strong>, also called <strong>weight decay</strong>.</p>
          <p>It adds a penalty to the loss: a small number λ (lambda) times the sum of all the squared weights. Big weights now cost extra. So the network keeps its weights small, and its decision boundary stays smooth.</p>
          <p>Example: the weights are 3.0, -2.0 and 0.5. The squares add up to 9 + 4 + 0.25 = 13.25. With λ = 0.01, the penalty is 0.01 × 13.25 = 0.1325. This is added to the normal loss.</p>
          <ul class="lc-list">
            <li>In scikit-learn, λ is the <code>alpha</code> setting of <code>MLPClassifier</code>.</li>
            <li>In PyTorch, you pass <code>weight_decay</code> to the optimizer.</li>
          </ul>
          <p>In the second run of Part 1, <code>alpha=1.0</code> keeps the two losses close (0.283 and 0.374 at epoch 150). Validation accuracy stays at 0.84 instead of falling to 0.76.</p>
        </div>
        <div class="lc-card">
          <h3>Fix 2: dropout</h3>
          <p><strong>Dropout</strong> switches off some hidden units at random during training. With <code>p=0.5</code>, each unit's output is set to 0 half of the time. A new random set is dropped at every step.</p>
          <p>Now the network cannot rely on one special unit. It has to spread what it learns over many units. At evaluation time, dropout is off and every unit is used. PyTorch also scales the kept units during training, so the average size stays the same.</p>
          <p>Part 3 in the code editor below builds a PyTorch network with <code>nn.Dropout(p=0.5)</code> and adds L2 with <code>weight_decay</code> in the optimizer. It runs on your own computer.</p>
          <p>In training mode, the same input gives a different output each time, because different units are dropped. In evaluation mode, the output is the same every time. Always call <code>model.eval()</code> before you test a network.</p>
          <p>PyTorch does not run in the browser, and scikit-learn's <code>MLPClassifier</code> has no dropout. So Part 2 in the editor also shows dropout with a NumPy mask, which does run in the browser. Its two training passes give different outputs.</p>
        </div>
        <div class="lc-card">
          <h3>Fix 3: early stopping, and Fix 4: more data</h3>
          <p><strong>Early stopping</strong> watches the validation loss after every epoch. It remembers the weights from the best epoch. If the validation loss has not improved for a number of epochs, called the <strong>patience</strong>, training stops. Then you go back to the best weights.</p>
          <p>Part 4 in the code editor below is a full PyTorch training loop with early stopping and a patience of 20 epochs. After each epoch it compares the validation loss with the best so far and saves the best weights. On our computer the validation loss was lowest at epoch 6, so the loop stopped at epoch 26 and loaded the epoch 6 weights. The third run in Part 1 uses early stopping with a patience of 10 epochs, and it runs in the browser. It stops at epoch 17. scikit-learn can also do this for you with <code>MLPClassifier(early_stopping=True)</code>. It keeps part of the training data aside as a validation set.</p>
          <p><strong>More data</strong> is often the best fix of all. Noise in 40 points is easy to memorise. Noise in 4,000 points is much harder to memorise, so the network must learn the real pattern. For images, you can also make extra examples with small shifts and turns. This is called <strong>data augmentation</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: read Maya's training run</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The task">Maya trains a big network on 40 noisy moon points. She prints both losses every 15 epochs.</li>
              <li data-kind="result" data-label="Epoch 30">Train loss 0.154, val loss 0.378. Both went down. All is fine so far.</li>
              <li data-kind="warn" data-label="Epoch 60">Train loss 0.057, but val loss jumped to 1.101. The gap is growing.</li>
              <li data-kind="thought" data-label="Diagnosis">Training loss is tiny and validation loss is rising. This is overfitting, not underfitting.</li>
              <li data-kind="tool" data-label="Fix">She adds L2 with alpha=1.0. She also adds early stopping with a patience of 10 epochs.</li>
              <li data-kind="check" data-label="Check">With L2, val loss stays near 0.37 and val accuracy stays at 0.84. Early stopping alone stops at epoch 17.</li>
              <li data-kind="answer" data-label="Lesson learned">Always watch the validation loss, not only the training loss.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor has four parts. Part 1 trains the same big network three times and prints a small loss table each time. Part 2 shows the L2 penalty and dropout in NumPy. Parts 3 and 4 are the PyTorch versions of dropout and early stopping, for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In the first table of Part 1, find the epoch where the validation loss starts to rise.</li>
            <li>Give it more data: near the top, change <code>train_size=40</code> to <code>150</code>. Does the gap between the losses shrink?</li>
            <li>Make the network small: change <code>HIDDEN</code> in Part 1 to <code>(2,)</code>. Do both losses stay high? That is underfitting.</li>
            <li>Try <code>alpha=0.1</code> and <code>patience=30</code> in the Part 1 calls. Compare the best validation loss.</li>
            <li>In Part 2, change <code>p = 0.5</code> to <code>0.2</code>. Fewer units are dropped in each training pass.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Overfitting shows up as a growing gap between training loss and validation loss. L2 weight decay, dropout, early stopping and more data all help the network learn the pattern instead of the noise.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Overfitting you can see: training loss goes down, validation loss goes up.
        # Noisy moons and only 40 training points make overfitting easy to see.
        import numpy as np
        from sklearn.datasets import make_moons
        from sklearn.model_selection import train_test_split
        from sklearn.neural_network import MLPClassifier
        from sklearn.metrics import log_loss

        X, y = make_moons(n_samples=200, noise=0.3, random_state=42)
        X_tr, X_va, y_tr, y_va = train_test_split(X, y, train_size=40, random_state=42)

        HIDDEN = (100, 100)   # a big network for only 40 points
        EPOCHS = 150

        def train(alpha, patience=None):
            """alpha = L2 weight decay. patience = epochs to wait before early stopping."""
            model = MLPClassifier(hidden_layer_sizes=HIDDEN, alpha=alpha,
                                  learning_rate_init=0.01, random_state=42)
            best, best_epoch = 99.0, 0
            print(f"\nalpha={alpha}, patience={patience}")
            print("epoch  train loss  val loss   train acc  val acc")
            for epoch in range(1, EPOCHS + 1):
                model.partial_fit(X_tr, y_tr, classes=[0, 1])        # one epoch of training
                tr_loss = log_loss(y_tr, model.predict_proba(X_tr))
                va_loss = log_loss(y_va, model.predict_proba(X_va))
                if va_loss < best:
                    best, best_epoch = va_loss, epoch
                if epoch % 15 == 0:
                    print(f"{epoch:5d}  {tr_loss:10.3f}  {va_loss:8.3f}   "
                          f"{model.score(X_tr, y_tr):9.2f}  {model.score(X_va, y_va):7.2f}")
                if patience and epoch - best_epoch >= patience:
                    print(f"Early stop at epoch {epoch}. Best val loss {best:.3f} at epoch {best_epoch}.")
                    return
            print(f"Best val loss {best:.3f} was at epoch {best_epoch}.")

        # ── Part 1: the same big network trained three ways ──
        print("== Part 1: one big network, three ways ==")
        train(alpha=0.0)                 # no regularization: watch val loss climb
        train(alpha=1.0)                 # strong L2: losses stay close together
        train(alpha=0.0, patience=10)    # early stopping

        # ── Part 2: the L2 penalty and dropout in plain NumPy ──
        print("\n== Part 2: L2 penalty and dropout in NumPy ==")
        weights = np.array([3.0, -2.0, 0.5])
        lam = 0.01
        print("L2 penalty:", round(lam * np.sum(weights ** 2), 4))   # 0.01 x 13.25

        rng = np.random.RandomState(0)
        hidden = np.array([0.8, 0.3, 1.2, 0.5, 0.9, 0.4])   # outputs of 6 hidden units
        p = 0.5                                            # drop each unit half the time
        for step in [1, 2]:
            keep = rng.rand(6) > p                         # a new random mask every step
            print(f"training pass {step}:", (hidden * keep / (1 - p)).round(2))
        print("evaluation pass:  ", hidden)               # dropout is off: every unit is used

        # On your computer, first run: pip install torch
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None

        # ── Part 3: dropout and weight decay in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: dropout and weight decay in PyTorch ==")
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            model = nn.Sequential(
                nn.Linear(2, 100), nn.ReLU(),
                nn.Dropout(p=0.5),                 # switch off half the hidden units at random
                nn.Linear(100, 2),
            )
            # weight_decay adds L2 regularization to every update
            optimizer = torch.optim.Adam(model.parameters(), lr=0.01, weight_decay=1e-3)

            x = torch.tensor([[0.5, 0.2]])
            model.train()                          # training mode: dropout is on
            print("train mode:", model(x).detach().numpy().round(3), model(x).detach().numpy().round(3))
            model.eval()                           # evaluation mode: dropout is off
            print("eval mode: ", model(x).detach().numpy().round(3), model(x).detach().numpy().round(3))

        # ── Part 4: early stopping in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: early stopping in PyTorch ==")
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            import copy
            Xt_tr = torch.tensor(X_tr, dtype=torch.float32)
            Xt_va = torch.tensor(X_va, dtype=torch.float32)
            yt_tr, yt_va = torch.tensor(y_tr), torch.tensor(y_va)

            torch.manual_seed(42)
            model = nn.Sequential(nn.Linear(2, 100), nn.ReLU(), nn.Linear(100, 100), nn.ReLU(), nn.Linear(100, 2))
            optimizer = torch.optim.Adam(model.parameters(), lr=0.01)
            loss_fn = nn.CrossEntropyLoss()

            best_loss, best_epoch, best_state = float("inf"), 0, None
            patience, waited = 20, 0
            for epoch in range(1, 501):
                model.train()
                optimizer.zero_grad()
                loss = loss_fn(model(Xt_tr), yt_tr)
                loss.backward()
                optimizer.step()

                model.eval()
                with torch.no_grad():
                    val_loss = loss_fn(model(Xt_va), yt_va).item()
                if val_loss < best_loss:                      # new best: remember these weights
                    best_loss, best_epoch, waited = val_loss, epoch, 0
                    best_state = copy.deepcopy(model.state_dict())
                else:
                    waited += 1
                    if waited >= patience:                    # no progress for 20 epochs: stop
                        break

            model.load_state_dict(best_state)                 # go back to the best weights
            print(f"stopped at epoch {epoch}, best epoch {best_epoch}, best val loss {best_loss:.3f}")

        # Try it: change train_size=40 to 150 (more data), or HIDDEN to (2,) (a smaller network).
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-nn">Neural Networks</div>
          <h1 class="lc-title">Project: Handwritten Digit Recognizer</h1>
        </div>
        <p class="lc-lead">In this project you build a network that reads handwritten digits. You use the ideas from this whole course: layers, ReLU, softmax, cross-entropy, training and checking for overfitting. The data is scikit-learn's built-in digits set, so it runs in your browser with no download. At the end you see the same project in PyTorch on the bigger MNIST data set.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 280" role="img" aria-label="An 8 by 8 image of a handwritten 0 is flattened into 64 numbers. They go into a hidden layer of 64 ReLU units, then into 10 outputs with softmax, one for each digit. The output for 0 is the highest, so the prediction is 0. The network has 4,160 plus 650, so 4,810 parameters.">
            <defs><marker id="nn18a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="92" y="45" font-weight="700" fill="#93c5fd">8×8 image</text>
              <g stroke="#1f1f44" stroke-width="1">
                <rect x="20" y="60" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="60" width="18" height="18" fill="rgb(31,31,51)"/><rect x="56" y="60" width="18" height="18" fill="rgb(96,96,116)"/><rect x="74" y="60" width="18" height="18" fill="rgb(200,200,220)"/><rect x="92" y="60" width="18" height="18" fill="rgb(148,148,168)"/><rect x="110" y="60" width="18" height="18" fill="rgb(44,44,64)"/><rect x="128" y="60" width="18" height="18" fill="rgb(31,31,51)"/><rect x="146" y="60" width="18" height="18" fill="rgb(31,31,51)"/>
                <rect x="20" y="78" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="78" width="18" height="18" fill="rgb(31,31,51)"/><rect x="56" y="78" width="18" height="18" fill="rgb(200,200,220)"/><rect x="74" y="78" width="18" height="18" fill="rgb(226,226,246)"/><rect x="92" y="78" width="18" height="18" fill="rgb(161,161,181)"/><rect x="110" y="78" width="18" height="18" fill="rgb(226,226,246)"/><rect x="128" y="78" width="18" height="18" fill="rgb(96,96,116)"/><rect x="146" y="78" width="18" height="18" fill="rgb(31,31,51)"/>
                <rect x="20" y="96" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="96" width="18" height="18" fill="rgb(70,70,90)"/><rect x="56" y="96" width="18" height="18" fill="rgb(226,226,246)"/><rect x="74" y="96" width="18" height="18" fill="rgb(57,57,77)"/><rect x="92" y="96" width="18" height="18" fill="rgb(31,31,51)"/><rect x="110" y="96" width="18" height="18" fill="rgb(174,174,194)"/><rect x="128" y="96" width="18" height="18" fill="rgb(135,135,155)"/><rect x="146" y="96" width="18" height="18" fill="rgb(31,31,51)"/>
                <rect x="20" y="114" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="114" width="18" height="18" fill="rgb(83,83,103)"/><rect x="56" y="114" width="18" height="18" fill="rgb(187,187,207)"/><rect x="74" y="114" width="18" height="18" fill="rgb(31,31,51)"/><rect x="92" y="114" width="18" height="18" fill="rgb(31,31,51)"/><rect x="110" y="114" width="18" height="18" fill="rgb(135,135,155)"/><rect x="128" y="114" width="18" height="18" fill="rgb(135,135,155)"/><rect x="146" y="114" width="18" height="18" fill="rgb(31,31,51)"/>
                <rect x="20" y="132" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="132" width="18" height="18" fill="rgb(96,96,116)"/><rect x="56" y="132" width="18" height="18" fill="rgb(135,135,155)"/><rect x="74" y="132" width="18" height="18" fill="rgb(31,31,51)"/><rect x="92" y="132" width="18" height="18" fill="rgb(31,31,51)"/><rect x="110" y="132" width="18" height="18" fill="rgb(148,148,168)"/><rect x="128" y="132" width="18" height="18" fill="rgb(135,135,155)"/><rect x="146" y="132" width="18" height="18" fill="rgb(31,31,51)"/>
                <rect x="20" y="150" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="150" width="18" height="18" fill="rgb(83,83,103)"/><rect x="56" y="150" width="18" height="18" fill="rgb(174,174,194)"/><rect x="74" y="150" width="18" height="18" fill="rgb(31,31,51)"/><rect x="92" y="150" width="18" height="18" fill="rgb(44,44,64)"/><rect x="110" y="150" width="18" height="18" fill="rgb(187,187,207)"/><rect x="128" y="150" width="18" height="18" fill="rgb(122,122,142)"/><rect x="146" y="150" width="18" height="18" fill="rgb(31,31,51)"/>
                <rect x="20" y="168" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="168" width="18" height="18" fill="rgb(57,57,77)"/><rect x="56" y="168" width="18" height="18" fill="rgb(213,213,233)"/><rect x="74" y="168" width="18" height="18" fill="rgb(96,96,116)"/><rect x="92" y="168" width="18" height="18" fill="rgb(161,161,181)"/><rect x="110" y="168" width="18" height="18" fill="rgb(187,187,207)"/><rect x="128" y="168" width="18" height="18" fill="rgb(31,31,51)"/><rect x="146" y="168" width="18" height="18" fill="rgb(31,31,51)"/>
                <rect x="20" y="186" width="18" height="18" fill="rgb(31,31,51)"/><rect x="38" y="186" width="18" height="18" fill="rgb(31,31,51)"/><rect x="56" y="186" width="18" height="18" fill="rgb(109,109,129)"/><rect x="74" y="186" width="18" height="18" fill="rgb(200,200,220)"/><rect x="92" y="186" width="18" height="18" fill="rgb(161,161,181)"/><rect x="110" y="186" width="18" height="18" fill="rgb(31,31,51)"/><rect x="128" y="186" width="18" height="18" fill="rgb(31,31,51)"/><rect x="146" y="186" width="18" height="18" fill="rgb(31,31,51)"/>
              </g>
              <rect x="20" y="60" width="144" height="144" fill="none" stroke="#3b82f6"/>
              <text x="92" y="225">label: 0</text>
              <text x="92" y="243" font-size="11" fill="#9b99b8">pixels from 0 to 16</text>
              <line x1="168" y1="132" x2="200" y2="132" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn18a)"/>
              <rect x="204" y="92" width="110" height="80" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="259" y="120" font-weight="700">flatten</text>
              <text x="259" y="140" font-size="12">64 numbers</text>
              <text x="259" y="158" font-size="11" fill="#9b99b8">÷ 16, so 0 to 1</text>
              <line x1="316" y1="132" x2="346" y2="132" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn18a)"/>
              <rect x="350" y="92" width="120" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="410" y="120" font-weight="700" fill="#c4b5fd">hidden layer</text>
              <text x="410" y="140" font-size="12">64 units</text>
              <text x="410" y="158" font-size="11" fill="#9b99b8">ReLU</text>
              <line x1="472" y1="132" x2="512" y2="132" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn18a)"/>
              <text x="544" y="28" font-weight="700" fill="#6ee7b7">10 outputs</text>
              <rect x="516" y="40" width="56" height="20" rx="4" fill="#27274e" stroke="#10b981" stroke-width="2"/><text x="544" y="55" font-weight="700" fill="#6ee7b7">0</text>
              <g fill="#1f1f44" stroke="#4b4a78">
                <rect x="516" y="63" width="56" height="20" rx="4"/><rect x="516" y="86" width="56" height="20" rx="4"/><rect x="516" y="109" width="56" height="20" rx="4"/><rect x="516" y="132" width="56" height="20" rx="4"/><rect x="516" y="155" width="56" height="20" rx="4"/><rect x="516" y="178" width="56" height="20" rx="4"/><rect x="516" y="201" width="56" height="20" rx="4"/><rect x="516" y="224" width="56" height="20" rx="4"/><rect x="516" y="247" width="56" height="20" rx="4"/>
              </g>
              <g font-size="12" fill="#9b99b8">
                <text x="544" y="78">1</text><text x="544" y="101">2</text><text x="544" y="124">3</text><text x="544" y="147">4</text><text x="544" y="170">5</text><text x="544" y="193">6</text><text x="544" y="216">7</text><text x="544" y="239">8</text><text x="544" y="262">9</text>
              </g>
              <line x1="574" y1="50" x2="612" y2="50" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#nn18a)"/>
              <rect x="616" y="22" width="134" height="60" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="683" y="47" font-weight="700" fill="#6ee7b7">prediction: 0</text>
              <text x="683" y="66" font-size="11" fill="#9b99b8">highest probability</text>
              <rect x="616" y="110" width="134" height="110" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="683" y="134" font-weight="700">Parameters</text>
              <text x="683" y="157" font-size="12">64×64 + 64 = 4,160</text>
              <text x="683" y="179" font-size="12">64×10 + 10 = 650</text>
              <text x="683" y="204" font-size="12" fill="#fcd34d">total: 4,810</text>
              <text x="683" y="250" font-size="11.5" fill="#9b99b8">softmax + cross-entropy</text>
            </g>
          </svg>
          <figcaption>The digit network: 64 inputs, one hidden layer of 64 ReLU units and 10 softmax outputs. The image is the first digit in the data set.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The data: 1,797 tiny images</h3>
          <p><code>load_digits()</code> gives 1,797 images of handwritten digits. Each image is 8×8 pixels. Each pixel is a whole number from 0 (white paper) to 16 (full ink). The label says which digit it is, from 0 to 9.</p>
          <p>A simple network does not see a grid. So each image becomes one row of 64 numbers. This is called <strong>flattening</strong>. The whole data set is a matrix with shape (1797, 64): one row per image, one column per pixel.</p>
          <p>Part 1 in the code editor below prints an image as text. Denser characters mean more ink. The first image is a 0.</p>
        </div>
        <div class="lc-card">
          <h3>Build and train the network</h3>
          <p>The plan has four steps:</p>
          <ol class="lc-list">
            <li><strong>Scale</strong> the pixels from 0-16 to 0-1. Divide by 16. Small inputs help training.</li>
            <li><strong>Split</strong> the data: 80% to train, 20% to test. <code>stratify=y</code> keeps the same mix of digits in both parts.</li>
            <li><strong>Train</strong> an <code>MLPClassifier</code> with one hidden layer of 64 units. It uses ReLU, softmax and cross-entropy for you.</li>
            <li><strong>Test</strong> on the 360 images the network has never seen.</li>
          </ol>
          <p>Part 2 in the code editor below does these steps in four short lines. scikit-learn picks ReLU, softmax and cross-entropy for you. The weight shapes match the diagram: 64×64 and 64×10. Test accuracy is 0.981, so 353 of the 360 test images are right. Training accuracy is 1.000. The gap is small, so there is only a little overfitting.</p>
        </div>
        <div class="lc-card">
          <h3>Which digits get mixed up?</h3>
          <p>Accuracy is one number. A <strong>confusion matrix</strong> shows more. Each row is a true digit. Each column is the predicted digit. The diagonal holds the right answers. Every other number is a mistake.</p>
          <p>Part 3 in the code editor prints the confusion matrix. Run it and look at row 8. Three real 8s were read as 1s. Most of the other mistakes also involve 8, such as one 6 read as an 8. At 8×8 pixels, a thin 8 can look a lot like a 1. Part 4 prints one wrong image (a 6 read as an 8), so you can see why the network got it wrong.</p>
        </div>
        <div class="lc-card">
          <h3>The same project in PyTorch with MNIST</h3>
          <p><strong>MNIST</strong> is the classic digit data set. It has 60,000 training images and 10,000 test images. Each image is 28×28 pixels, so it flattens to 784 numbers. Part 5 in the code editor below is the full PyTorch version. It needs PyTorch and torchvision on your own computer, and it downloads MNIST the first time. The network flattens each image, has one hidden layer of 128 ReLU units and gives 10 logits.</p>
          <p>The training loop is the same one you wrote earlier in the course: <code>zero_grad()</code>, loss, <code>backward()</code>, <code>step()</code>. It runs over mini-batches from a <code>DataLoader</code>. On our laptop, three epochs reached about 96% test accuracy.</p>
          <ul class="lc-list">
            <li><code>DataLoader</code> feeds the images in mini-batches of 64 and shuffles them every epoch.</li>
            <li><code>nn.Flatten()</code> turns each 1×28×28 image into 784 numbers.</li>
            <li>The last layer gives 10 logits. <code>nn.CrossEntropyLoss</code> adds the softmax for you.</li>
            <li><code>model.eval()</code> and <code>torch.no_grad()</code> switch off training features and gradient tracking while you test.</li>
          </ul>
          <p>Three epochs ran on a normal laptop CPU in well under a minute. PyTorch does not run in the browser, so Parts 1 to 4 use the small scikit-learn version.</p>
        </div>
        <div class="lc-card">
          <h3>Ideas to make it better</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Why it can help</th></tr></thead>
            <tbody>
              <tr><td>More hidden units or a second layer</td><td>More capacity to learn shapes. Watch for overfitting.</td></tr>
              <tr><td>L2 (<code>alpha</code>) or early stopping</td><td>Smaller gap between train and test accuracy</td></tr>
              <tr><td>Data augmentation</td><td>Small shifts and turns of the images give more training examples</td></tr>
              <tr><td>A convolutional neural network (CNN)</td><td>It looks at small patches of pixels, so it keeps the 2D shape of the image. CNNs usually beat plain networks on images.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: the project steps</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of the digit project in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Load the 1,797 images and their labels with load_digits()</li>
              <li data-order="2">Scale the 64 pixel values from 0-16 to 0-1</li>
              <li data-order="3">Split the data into a training set and a test set</li>
              <li data-order="4">Train an MLP with 64 hidden units and 10 softmax outputs</li>
              <li data-order="5">Measure the accuracy on the test set</li>
              <li data-order="6">Read the confusion matrix to find the digits that get mixed up</li>
              <li data-order="7">Look at the wrong images and plan an improvement</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The code editor holds the full project. Part 1 prints a digit. Part 2 trains and prints the accuracy. Part 3 prints the confusion matrix. Part 4 prints one mistake. Part 5 is the MNIST version for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. Find the most common mistake in the confusion matrix in Part 3.</li>
            <li>In Part 2, change <code>HIDDEN</code> to <code>(16,)</code>, then to <code>(128, 64)</code>. How does the test accuracy change?</li>
            <li>In Part 2, change <code>test_size=0.2</code> to <code>0.5</code>. The network now trains on half the data. Is the gap between train and test accuracy bigger?</li>
            <li>In Part 1, change <code>INDEX = 0</code> to <code>INDEX = 5</code> to print another digit and its label.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A digit recogniser is the same network you built in this course: flattened pixels in, a ReLU hidden layer, 10 softmax outputs and cross-entropy. Test accuracy and the confusion matrix tell you how well it really works.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Project: recognise handwritten digits (0-9) with a small neural network.
        # load_digits is built into scikit-learn, so it works offline in the browser.
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.model_selection import train_test_split
        from sklearn.neural_network import MLPClassifier
        from sklearn.metrics import accuracy_score, confusion_matrix

        # ── Part 1: the data, and one image printed as text ──
        print("== Part 1: the data ==")
        digits = load_digits()
        X, y = digits.data, digits.target          # X: 1797 x 64 pixels (0-16), y: the digit
        print("Data shape:", X.shape, "  labels:", np.unique(y))

        def show(pixels):
            """Print an 8x8 image as text. Darker ink = denser character."""
            shades = " .:-=+*#%@"
            for row in pixels.reshape(8, 8):
                print("  " + "".join(shades[int(v) * 9 // 16] * 2 for v in row))

        INDEX = 0                                    # which image to print
        print("\nImage number", INDEX, "has the label", y[INDEX])
        show(X[INDEX])

        # ── Part 2: scale to 0-1, split, and train ──
        print("\n== Part 2: scale, split and train ==")
        X = X / 16.0                                 # pixels go from 0-16 to 0-1
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, random_state=42, stratify=y)
        HIDDEN = (64,)
        model = MLPClassifier(hidden_layer_sizes=HIDDEN, max_iter=1000, random_state=42)
        model.fit(X_tr, y_tr)
        pred = model.predict(X_te)
        print("Weights per layer:", [w.shape for w in model.coefs_])
        print("Output activation:", model.out_activation_)
        print(f"Train accuracy: {model.score(X_tr, y_tr):.3f}")
        print(f"Test accuracy:  {accuracy_score(y_te, pred):.3f}  ({(pred == y_te).sum()} of {len(y_te)} right)")

        # ── Part 3: confusion matrix: rows = true digit, columns = predicted digit ──
        print("\n== Part 3: confusion matrix ==")
        cm = confusion_matrix(y_te, pred)
        print("     pred: " + " ".join(f"{d:2d}" for d in range(10)))
        for d in range(10):
            print(f"  true {d}:  " + " ".join(f"{v:2d}" for v in cm[d]))

        off = cm.copy()
        np.fill_diagonal(off, 0)                     # keep only the mistakes
        t, p = np.unravel_index(off.argmax(), off.shape)
        print(f"Most common mistake: true {t} predicted as {p} ({off[t, p]} times)")

        # ── Part 4: look at one mistake ──
        print("\n== Part 4: one mistake ==")
        wrong = np.where(pred != y_te)[0]
        if len(wrong) > 0:
            i = wrong[0]
            probs = model.predict_proba(X_te[i:i+1])[0]
            print(f"A mistake: true {y_te[i]}, predicted {pred[i]} (confidence {probs.max():.2f})")
            show(X_te[i] * 16)

        # ── Part 5: the same project in PyTorch with MNIST (run this part on your own computer) ──
        # On your computer, first run: pip install torch torchvision
        # It downloads MNIST (about 12 MB) into a "data" folder the first time.
        print("\n== Part 5: MNIST in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
            from torchvision import datasets, transforms
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch and torchvision, which do not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            to_tensor = transforms.ToTensor()            # 28x28 image -> tensor with values 0-1
            train_data = datasets.MNIST("data", train=True, download=True, transform=to_tensor)
            test_data = datasets.MNIST("data", train=False, download=True, transform=to_tensor)
            train_loader = torch.utils.data.DataLoader(train_data, batch_size=64, shuffle=True)
            test_loader = torch.utils.data.DataLoader(test_data, batch_size=1000)

            net = nn.Sequential(
                nn.Flatten(),                            # 1 x 28 x 28 -> 784 numbers
                nn.Linear(784, 128), nn.ReLU(),
                nn.Linear(128, 10),                      # 10 scores (logits), one per digit
            )
            loss_fn = nn.CrossEntropyLoss()              # softmax + cross-entropy in one step
            optimizer = torch.optim.Adam(net.parameters(), lr=1e-3)

            for epoch in range(1, 4):
                net.train()
                for images, labels in train_loader:
                    optimizer.zero_grad()
                    loss = loss_fn(net(images), labels)
                    loss.backward()
                    optimizer.step()

                net.eval()
                correct = 0
                with torch.no_grad():
                    for images, labels in test_loader:
                        correct += (net(images).argmax(dim=1) == labels).sum().item()
                print(f"epoch {epoch}: test accuracy {correct / len(test_data):.3f}")

        # Try it: change HIDDEN to (16,) or (128, 64). Change test_size to 0.5. Change INDEX to 5.
      PYTHON
    },
  }.freeze
end

module TrainingDeepModelsContent
  # Training Deep Models. Units (sidebar dividers): 1 Unit 1 · Setup and Data · 7 Unit 2 · The Training Recipe · 12 Unit 3 · Model Types and Speed · 18 Unit 4 · Monitoring and Debugging · 20 Capstone
  # Widgets: sorter, sequence, stepper. Starter code is Python run in the browser (Pyodide; numpy, pandas, scikit-learn).
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">What is Deep Learning?</h1>
        </div>
        <p class="lc-lead"><strong>Deep learning</strong> is machine learning with neural networks that have many layers. The layers learn useful features from raw data, such as pixels or sound. In older methods, a person had to design those features by hand. In this lesson you will see how deep and shallow models differ, and when each one is the better choice.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Top row, shallow learning: a photo goes to features designed by a person, such as colour, size and roundness, then to a simple model, which says apple. Bottom row, deep learning: raw pixels go through layer 1 which finds edges, layer 2 which finds shapes, layer 3 which finds fruit parts, and then the output says apple 0.91.">
            <defs><marker id="td1a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="30" text-anchor="start" font-weight="700" fill="#fcd34d">Shallow learning: a person designs the features</text>
              <rect x="20" y="48" width="110" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="75" y="72">Photo</text>
              <text x="75" y="91" font-size="11" fill="#9b99b8">of a fruit</text>
              <line x1="132" y1="76" x2="156" y2="76" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td1a)"/>
              <rect x="160" y="48" width="210" height="56" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="265" y="72">Hand-made features</text>
              <text x="265" y="91" font-size="11" fill="#9b99b8">colour, size, roundness</text>
              <line x1="372" y1="76" x2="396" y2="76" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td1a)"/>
              <rect x="400" y="48" width="150" height="56" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="475" y="72">Simple model</text>
              <text x="475" y="91" font-size="11" fill="#9b99b8">e.g. logistic regression</text>
              <line x1="552" y1="76" x2="576" y2="76" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td1a)"/>
              <rect x="580" y="48" width="160" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="660" y="81" fill="#6ee7b7" font-weight="700">apple</text>
              <text x="20" y="160" text-anchor="start" font-weight="700" fill="#67e8f9">Deep learning: the layers learn the features</text>
              <rect x="20" y="178" width="110" height="56" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="75" y="202">Raw pixels</text>
              <text x="75" y="221" font-size="11" fill="#9b99b8">just numbers</text>
              <line x1="132" y1="206" x2="156" y2="206" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td1a)"/>
              <rect x="160" y="178" width="120" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="220" y="202">Layer 1</text>
              <text x="220" y="221" font-size="11" fill="#9b99b8">edges, colours</text>
              <line x1="282" y1="206" x2="300" y2="206" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td1a)"/>
              <rect x="304" y="178" width="120" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="364" y="202">Layer 2</text>
              <text x="364" y="221" font-size="11" fill="#9b99b8">curves, shapes</text>
              <line x1="426" y1="206" x2="444" y2="206" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td1a)"/>
              <rect x="448" y="178" width="120" height="56" rx="10" fill="#1f1f44" stroke="#22d3ee"/>
              <text x="508" y="202">Layer 3</text>
              <text x="508" y="221" font-size="11" fill="#9b99b8">stalk, peel, skin</text>
              <line x1="570" y1="206" x2="576" y2="206" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td1a)"/>
              <rect x="580" y="178" width="160" height="56" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="660" y="202" fill="#6ee7b7" font-weight="700">apple 0.91</text>
              <text x="660" y="221" font-size="11" fill="#9b99b8">banana 0.05, orange 0.04</text>
              <text x="380" y="272" fill="#9b99b8" font-size="12">Nobody tells the layers to look for edges or peel. Training finds these features.</text>
            </g>
          </svg>
          <figcaption>Shallow learning needs a person to pick the features. A deep network learns its own features, layer by layer. (The layer labels and numbers are simple examples.)</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Deep vs shallow</h3>
          <p>A <strong>neural network</strong> is a model made of layers. Each layer takes numbers in, multiplies them by learned <strong>weights</strong>, and passes new numbers on. A <strong>hidden layer</strong> is any layer between the input and the output.</p>
          <ul class="lc-list">
            <li><strong>Shallow model:</strong> zero or one hidden layer. Linear regression, logistic regression and small decision trees are shallow.</li>
            <li><strong>Deep model:</strong> many hidden layers, often from a handful to more than a hundred. The extra layers let the model build complex ideas from simple ones.</li>
          </ul>
          <p>There is no exact number of layers that makes a model "deep". The important difference is what the layers do. In a deep model, they learn the features.</p>
        </div>
        <div class="lc-card">
          <h3>Learned features</h3>
          <p>A <strong>feature</strong> is a number that describes the input, such as "how red is this photo?". Our running project is a fruit classifier for a greengrocer. It must tell apart photos of apples, bananas and oranges.</p>
          <p>With a shallow model, you would write code to measure colour, size and roundness. Then the model learns from those few numbers. If you forget an important feature, the model can never use it.</p>
          <p>With deep learning, you give the network the raw pixels. The first layers learn to spot edges and colours. Later layers combine them into shapes and fruit parts. This is called <strong>representation learning</strong>: the model learns how to describe the data.</p>
          <p>A small network for 8×8 pictures has two hidden layers: 64 pixels go in, then 32 neurons, then 16, then 10 scores (one per digit 0-9). Part 5 in the code editor below builds it in PyTorch. Run that part on your own computer.</p>
          <p>Give it a batch of five pictures, and five rows of 10 scores come out. The model has 2,778 parameters: the weights and biases. Training changes them until the scores are right. Part 2 in the editor builds the same network shape in scikit-learn, because PyTorch does not run in the browser. It also prints the 2,778 count.</p>
        </div>
        <div class="lc-card">
          <h3>When deep learning helps, and when simpler models win</h3>
          <table class="lc-table">
            <thead><tr><th>Deep learning usually helps</th><th>A simpler model often wins</th></tr></thead>
            <tbody>
              <tr><td>Images, sound, video and free text</td><td>Small tables of numbers, like a spreadsheet</td></tr>
              <tr><td>Thousands to millions of labelled examples</td><td>Only a few hundred examples</td></tr>
              <tr><td>Good features are hard to describe in code</td><td>A few clear features already explain the answer</td></tr>
              <tr><td>You have a GPU or can rent one</td><td>You must train fast on a normal laptop</td></tr>
              <tr><td>A pretrained model exists for your kind of data</td><td>You must explain each decision clearly</td></tr>
            </tbody>
          </table>
          <p>For tables of numbers, tree models such as random forests and gradient boosting are often hard to beat. Always try a simple <strong>baseline</strong> (a quick, simple model) first. Then you know if the deep model is really better.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: deep model or simpler model?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which is the best starting choice for each task?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="deep" data-label="Deep learning"></div>
              <div data-sorter-target="bucket" data-bucket="simple" data-label="Start with a simpler model"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="deep" data-why="Photos are raw pixels. Good features are hard to write by hand, so learned features help a lot.">Sort 20,000 fruit photos into apple, banana and orange</li>
              <li data-bucket="simple" data-why="This is a small table with a few clear columns. A tree model or logistic regression is fast and strong here.">Predict late payment from 300 rows with 6 columns</li>
              <li data-bucket="deep" data-why="Sound is a long stream of raw numbers. Deep networks learn the useful patterns in it.">Turn spoken words into text</li>
              <li data-bucket="simple" data-why="A bank must explain each decision. A small, clear model is easier to check and explain.">A loan decision that must be explained to each customer</li>
              <li data-bucket="deep" data-why="Free text has complex meaning. Pretrained deep models handle it well.">Find the topic of long customer emails</li>
              <li data-bucket="simple" data-why="With only 80 examples, a deep network will probably memorise them. A simple model is safer.">Predict shop sales from 80 days of data</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The editor cannot run PyTorch, so Parts 1 to 4 use scikit-learn. They compare a shallow model with 3 hand-made features against a small network that learns from raw pixels. Part 5 is the PyTorch model for your own computer.</p>
          <ol class="lc-list">
            <li>Run the code. Compare the accuracy numbers from Part 1 and Part 2. The hand-made features miss most of what makes each digit different. The network in Part 2 has 2,778 parameters, like the PyTorch model in Part 5.</li>
            <li>In Part 1, add a fourth hand-made feature to <code>hand_features</code>, such as the ink in the middle rows (<code>imgs[:, 2:6, :]</code>). Does the shallow score go up much?</li>
            <li>In Part 2, change <code>HIDDEN</code> to <code>(4,)</code>, then to <code>(64, 32)</code>. How does the size of the network change the score?</li>
            <li>In Part 4, train <code>LogisticRegression</code> on the raw pixels <code>X_tr</code> and <code>y_tr</code> instead. It scores about as well as the network. These 8×8 digits are easy, so a simple model is enough. Deep learning pulls ahead on large, complex photos.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Deep learning means many layers that learn their own features from raw data. It shines on images, sound and text with lots of data, but a simple baseline often wins on small tables.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Shallow model with hand-made features vs a small network that learns its own.
        # Data: 8x8 pictures of handwritten digits (0-9) from scikit-learn.
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.model_selection import train_test_split
        from sklearn.linear_model import LogisticRegression
        from sklearn.neural_network import MLPClassifier

        X, y = load_digits(return_X_y=True)          # 1797 pictures, 64 pixels each
        X = X / 16.0                                 # pixel values 0-16 become 0-1
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=42)

        # ── Part 1: the shallow way, a person designs a few features by hand ──
        print("== Part 1: shallow model with hand-made features ==")
        def hand_features(X):
            imgs = X.reshape(-1, 8, 8)
            ink = imgs.mean(axis=(1, 2))              # how much ink in total
            top = imgs[:, :4, :].mean(axis=(1, 2))    # ink in the top half
            left = imgs[:, :, :4].mean(axis=(1, 2))   # ink in the left half
            return np.column_stack([ink, top, left])

        shallow = LogisticRegression(max_iter=1000)
        shallow.fit(hand_features(X_tr), y_tr)
        print("Shallow model, 3 hand-made features:", round(shallow.score(hand_features(X_te), y_te), 3))

        # ── Part 2: the deep-learning way, raw pixels into a network with hidden layers ──
        print("\n== Part 2: network that learns from raw pixels ==")
        HIDDEN = (32, 16)                             # two hidden layers: 32 and 16 neurons
        net = MLPClassifier(hidden_layer_sizes=HIDDEN, max_iter=500, random_state=0)
        net.fit(X_tr, y_tr)
        print("Network, raw pixels, hidden", HIDDEN, ":", round(net.score(X_te, y_te), 3))
        n_params = sum(w.size for w in net.coefs_) + sum(b.size for b in net.intercepts_)
        print("Network parameters (weights + biases):", n_params)

        # ── Part 3: peek at what the first hidden layer learned ──
        print("\n== Part 3: what the first hidden layer learned ==")
        w = net.coefs_[0]                             # shape (64 pixels, 32 neurons)
        print("First layer weights:", w.shape)
        print("Neuron 0 as an 8x8 picture (+ means 'likes ink here'):")
        for row in w[:, 0].reshape(8, 8):
            print("  " + " ".join("+" if v > 0.2 else ("-" if v < -0.2 else ".") for v in row))

        # ── Part 4: a small table of numbers, where a simple model is often just as good ──
        print("\n== Part 4: small table, simple model ==")
        from sklearn.datasets import load_iris
        Xi, yi = load_iris(return_X_y=True)          # 150 flowers, 4 measurements each
        Xa, Xb, ya, yb = train_test_split(Xi, yi, test_size=0.3, random_state=42, stratify=yi)
        simple = LogisticRegression(max_iter=1000).fit(Xa, ya)
        print("Iris, simple model:", round(simple.score(Xb, yb), 3), "(trains in a blink, easy to explain)")

        # ── Part 5: the same network in PyTorch (run this part on your own computer) ──
        print("\n== Part 5: the same network in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            model = nn.Sequential(
                nn.Flatten(),                       # 8x8 picture -> 64 numbers
                nn.Linear(64, 32), nn.ReLU(),       # hidden layer 1
                nn.Linear(32, 16), nn.ReLU(),       # hidden layer 2
                nn.Linear(16, 10),                  # one score per digit 0-9
            )
            x = torch.rand(5, 1, 8, 8)              # a batch of 5 fake pictures
            print(model(x).shape)                   # torch.Size([5, 10])
            print(sum(p.numel() for p in model.parameters()), "parameters")   # 2778 parameters
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Setting Up Your Environment (Python, PyTorch, GPU)</h1>
        </div>
        <p class="lc-lead">Before you train a model, you need a working setup. In this lesson you will make a clean Python environment and install <strong>PyTorch</strong>. Then you will check if your computer has a GPU that PyTorch can use. Finally, you will write the one <code>device</code> line that every later lesson uses.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: four layers stacked. Your Python code, then PyTorch, then a back end called CUDA, MPS or CPU, then the hardware: an NVIDIA GPU, an Apple chip or the CPU. Right: a decision flow. If torch.cuda.is_available() is true, use cuda. Otherwise, if torch.backends.mps.is_available() is true, use mps. Otherwise use cpu.">
            <defs><marker id="td2a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="160" y="28" font-weight="700" fill="#c4b5fd">The software stack</text>
              <rect x="20" y="44" width="280" height="46" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="160" y="64">Your Python code</text>
              <text x="160" y="81" font-size="11" fill="#9b99b8">inside a virtual environment</text>
              <rect x="20" y="102" width="280" height="46" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="160" y="122">PyTorch (import torch)</text>
              <text x="160" y="139" font-size="11" fill="#9b99b8">tensors, layers, training tools</text>
              <rect x="20" y="160" width="280" height="46" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="160" y="180">Back end: CUDA, MPS or CPU</text>
              <text x="160" y="197" font-size="11" fill="#9b99b8">talks to the hardware for PyTorch</text>
              <rect x="20" y="218" width="280" height="46" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="160" y="238">Hardware</text>
              <text x="160" y="255" font-size="11" fill="#9b99b8">NVIDIA GPU, Apple chip or CPU</text>
              <text x="560" y="28" font-weight="700" fill="#fcd34d">Picking the device</text>
              <rect x="400" y="44" width="250" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="525" y="69" font-size="12">torch.cuda.is_available()?</text>
              <line x1="652" y1="64" x2="676" y2="64" stroke="#10b981" stroke-width="1.5" marker-end="url(#td2a)"/>
              <text x="664" y="56" font-size="11" fill="#6ee7b7">yes</text>
              <rect x="680" y="46" width="66" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="713" y="69" fill="#6ee7b7">cuda</text>
              <line x1="525" y1="86" x2="525" y2="116" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td2a)"/>
              <text x="540" y="105" font-size="11" fill="#9b99b8" text-anchor="start">no</text>
              <rect x="390" y="120" width="270" height="40" rx="8" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="525" y="145" font-size="12">torch.backends.mps.is_available()?</text>
              <line x1="662" y1="140" x2="686" y2="140" stroke="#10b981" stroke-width="1.5" marker-end="url(#td2a)"/>
              <rect x="690" y="122" width="56" height="36" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="718" y="145" fill="#6ee7b7">mps</text>
              <text x="674" y="132" font-size="11" fill="#6ee7b7">yes</text>
              <line x1="525" y1="162" x2="525" y2="192" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td2a)"/>
              <text x="540" y="181" font-size="11" fill="#9b99b8" text-anchor="start">no</text>
              <rect x="480" y="196" width="90" height="36" rx="8" fill="#27274e" stroke="#9b99b8"/>
              <text x="525" y="219">cpu</text>
              <text x="560" y="268" font-size="12" fill="#9b99b8">Every later step uses this one device name.</text>
            </g>
          </svg>
          <figcaption>Left: the layers between your code and the chip. Right: how your code picks the fastest device it can find.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: a virtual environment</h3>
          <p>A <strong>virtual environment</strong> is a private folder of Python packages for one project. It keeps this project's versions apart from your other projects. If something breaks, you can delete the folder and start again.</p>
          <p>You make it with <code>python3 -m venv .venv</code> and then activate it. Part 4 in the code editor below lists the commands for macOS, Linux and Windows. Type them in your terminal.</p>
          <p>After you activate it, your terminal prompt usually shows <code>(.venv)</code>. Now <code>pip install</code> puts packages inside this folder only.</p>
        </div>
        <div class="lc-card">
          <h3>Step 2: install PyTorch</h3>
          <p>The install command depends on your system and on your GPU. So do not copy a command from an old blog post. Go to <strong>pytorch.org</strong> and open the "Get Started" page. Pick your operating system, "Pip" and your compute platform (a CUDA version, or CPU). The page then shows the exact command.</p>
          <p>On many machines, the basic command is <code>pip install torch torchvision</code>. Part 4 in the code editor lists it too.</p>
          <p><code>torchvision</code> adds image datasets, image transforms and pretrained image models. This course uses it for the fruit photos. On Linux with an NVIDIA GPU, the selector may add an extra <code>--index-url</code> part for your CUDA version.</p>
        </div>
        <div class="lc-card">
          <h3>Step 3: check what PyTorch can see</h3>
          <p><strong>CUDA</strong> is NVIDIA's system for running maths on its GPUs. <strong>MPS</strong> (Metal Performance Shaders) lets PyTorch use the GPU in Apple Silicon Macs. Part 5 in the code editor below is <code>check.py</code>. Save it on your own computer and run it. It prints your PyTorch version, then whether CUDA and MPS are available, then the device it picked.</p>
          <p>The result depends on your machine:</p>
          <table class="lc-table">
            <thead><tr><th>Machine</th><th>CUDA GPU</th><th>Apple MPS</th><th>Using</th></tr></thead>
            <tbody>
              <tr><td>PC or server with an NVIDIA GPU and CUDA drivers</td><td>True</td><td>False</td><td>cuda</td></tr>
              <tr><td>Mac with an Apple Silicon chip</td><td>False</td><td>True</td><td>mps</td></tr>
              <tr><td>Laptop with no supported GPU</td><td>False</td><td>False</td><td>cpu</td></tr>
            </tbody>
          </table>
          <p>At the end, Part 5 makes a small tensor with <code>torch.ones(2, 3, device=device)</code> and prints its device, for example <code>cuda:0</code> (the first NVIDIA GPU), <code>mps:0</code> or <code>cpu</code>.</p>
          <p>Many projects use a shorter one-line version: <code>device = "cuda" if torch.cuda.is_available() else "cpu"</code>. This course uses it everywhere, and Part 5 shows it too. On a Mac, add the <code>mps</code> check from the longer version. Part 2 in the editor practises the same logic with pretend values.</p>
        </div>
        <div class="lc-card">
          <h3>No GPU? Use a notebook in the cloud</h3>
          <p><strong>Google Colab</strong> is a free, hosted Jupyter notebook. PyTorch is usually installed already. To use a GPU, open the Runtime menu, choose "Change runtime type" and pick a GPU. Free GPU time is limited and can change, so check Colab's current rules.</p>
          <p>A CPU is fine for the small examples in this course. It is just slower for big models and big image sets.</p>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>What usually fixes it</th></tr></thead>
            <tbody>
              <tr><td><code>ModuleNotFoundError: No module named 'torch'</code></td><td>Activate your virtual environment, then install again</td></tr>
              <tr><td>CUDA GPU shows False on an NVIDIA machine</td><td>Update the NVIDIA driver, and use the command from the pytorch.org selector</td></tr>
              <tr><td>Install fails on a very new Python version</td><td>Check which Python versions PyTorch supports, and use one of them</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: set up in the right order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the setup steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Create a virtual environment with python3 -m venv .venv</li>
              <li data-order="2">Activate the virtual environment</li>
              <li data-order="3">Copy the install command from the pytorch.org selector</li>
              <li data-order="4">Run pip install to install torch and torchvision</li>
              <li data-order="5">Run check.py to see if CUDA or MPS is available</li>
              <li data-order="6">Set the device variable and use it for models and data</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>PyTorch does not run in the browser editor. So Parts 1 to 3 check Python and NumPy, practise the device logic with pretend values, and show why fast maths hardware matters. Parts 4 and 5 are for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 3, note the time for plain Python loops and for NumPy's <code>A @ B</code>. Both give the same answer.</li>
            <li>In Part 2, set <code>HAS_MPS = True</code>. Then set <code>HAS_CUDA = True</code> as well. Which device wins when both are True?</li>
            <li>In Part 3, change <code>N = 80</code> to <code>N = 120</code>. The loop does more than three times the work, so it gets much slower. NumPy barely notices.</li>
            <li>A GPU does the same as NumPy, but with thousands of small cores working at once. That is why deep learning loves GPUs.</li>
            <li>On your own computer, follow the commands in Part 4, then run Part 5 as <code>check.py</code>. Which device does it pick?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Use a virtual environment, take the install command from pytorch.org, and check what PyTorch can see. Then pick one <code>device</code> ("cuda", "mps" or "cpu") and use it everywhere.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Environment check you can run in the browser.
        # PyTorch does not run here, so Parts 1-3 check Python and NumPy instead,
        # and practise the "pick a device" logic with pretend values.
        import sys, time
        import numpy as np

        # ── Part 1: which Python and NumPy do you have? ──
        print("== Part 1: versions ==")
        print("Python:", sys.version.split()[0])
        print("NumPy: ", np.__version__)

        # ── Part 2: pick a device (with pretend values) ──
        print("\n== Part 2: pick a device ==")
        # On your own machine these come from PyTorch:
        #   torch.cuda.is_available()          -> True on a computer with an NVIDIA GPU
        #   torch.backends.mps.is_available()  -> True on an Apple Silicon Mac
        HAS_CUDA = False
        HAS_MPS = False

        def pick_device(has_cuda, has_mps):
            if has_cuda:
                return "cuda"
            if has_mps:
                return "mps"
            return "cpu"

        device = pick_device(HAS_CUDA, HAS_MPS)
        print("Training would run on:", device)

        # ── Part 3: why fast hardware matters, the same matrix multiply two ways ──
        print("\n== Part 3: plain Python loops vs NumPy ==")
        N = 80
        np.random.seed(42)
        A = np.random.rand(N, N)
        B = np.random.rand(N, N)

        start = time.perf_counter()
        C_loop = [[sum(A[i, k] * B[k, j] for k in range(N)) for j in range(N)] for i in range(N)]
        t_loop = time.perf_counter() - start

        start = time.perf_counter()
        C_fast = A @ B                     # NumPy hands the whole job to fast, optimised code
        t_fast = time.perf_counter() - start

        print(f"Multiplications done: {N * N * N:,}")
        print(f"Plain Python loops: {t_loop:.3f} s")
        print(f"NumPy A @ B:        {t_fast:.5f} s")
        print("Same answer?", np.allclose(C_loop, C_fast))

        # ── Part 4: setup commands for your terminal (not Python, so they are comments) ──
        print("\n== Part 4: terminal commands (read the comments) ==")
        # Step 1: make and activate a virtual environment
        #   python3 -m venv .venv
        #   source .venv/bin/activate        # macOS and Linux
        #   .venv\Scripts\activate           # Windows
        # Step 2: install PyTorch. Copy the exact command from the pytorch.org selector.
        #   On many machines the basic command is:
        #   pip install torch torchvision
        print("Type the commented commands in your terminal, not in this editor.")

        # ── Part 5: check.py, what PyTorch can see (run this part on your own computer) ──
        print("\n== Part 5: check.py ==")
        try:
            import torch
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            print("PyTorch:", torch.__version__)
            print("CUDA GPU:", torch.cuda.is_available())
            print("Apple MPS:", torch.backends.mps.is_available())

            if torch.cuda.is_available():
                device = "cuda"
            elif torch.backends.mps.is_available():
                device = "mps"
            else:
                device = "cpu"
            print("Using:", device)

            x = torch.ones(2, 3, device=device)   # make a small tensor on that device
            print(x.device)

            # The shorter one-line version that this course uses everywhere:
            device = "cuda" if torch.cuda.is_available() else "cpu"
            print("One-line version picks:", device)
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Collecting and Cleaning Data</h1>
        </div>
        <p class="lc-lead">A model can only learn what its data shows. Wrong labels, repeated photos and missing values all teach the model the wrong lesson. In this lesson you will learn where training data comes from and when you may use it. You will also learn how to clean it with pandas and how to check that each class has enough examples.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A cleaning pipeline for 13 fruit photo records. Fix labels keeps 13 rows. Remove duplicates leaves 12. Remove missing labels leaves 11. Check licence leaves 10. Remove tiny photos leaves 9. Below, a class balance chart shows apple 5, banana 2, orange 2.">
            <defs><marker id="td3a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="30" width="108" height="78" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="64" y="56">Raw table</text>
              <text x="64" y="74" font-size="11" fill="#9b99b8">as collected</text>
              <text x="64" y="97" font-weight="700" fill="#93c5fd">13 rows</text>
              <line x1="119" y1="69" x2="133" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td3a)"/>
              <rect x="136" y="30" width="108" height="78" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="190" y="56">Fix labels</text>
              <text x="190" y="74" font-size="11" fill="#9b99b8">"Apple " to apple</text>
              <text x="190" y="97" font-weight="700" fill="#fcd34d">13 rows</text>
              <line x1="245" y1="69" x2="259" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td3a)"/>
              <rect x="262" y="30" width="108" height="78" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="316" y="56">Duplicates</text>
              <text x="316" y="74" font-size="11" fill="#9b99b8">same photo twice</text>
              <text x="316" y="97" font-weight="700" fill="#fcd34d">12 rows</text>
              <line x1="371" y1="69" x2="385" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td3a)"/>
              <rect x="388" y="30" width="108" height="78" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="442" y="56">No label</text>
              <text x="442" y="74" font-size="11" fill="#9b99b8">missing value</text>
              <text x="442" y="97" font-weight="700" fill="#fcd34d">11 rows</text>
              <line x1="497" y1="69" x2="511" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td3a)"/>
              <rect x="514" y="30" width="108" height="78" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="568" y="56">Licence</text>
              <text x="568" y="74" font-size="11" fill="#9b99b8">may we use it?</text>
              <text x="568" y="97" font-weight="700" fill="#f9a8d4">10 rows</text>
              <line x1="623" y1="69" x2="637" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td3a)"/>
              <rect x="640" y="30" width="108" height="78" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="694" y="56">Too small</text>
              <text x="694" y="74" font-size="11" fill="#9b99b8">under 64 pixels</text>
              <text x="694" y="97" font-weight="700" fill="#fcd34d">9 rows</text>
              <line x1="694" y1="110" x2="694" y2="142" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td3a)"/>
              <rect x="190" y="146" width="558" height="134" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="210" y="172" text-anchor="start" font-weight="700" fill="#6ee7b7">Check the class balance of the clean table</text>
              <g text-anchor="start" font-size="12.5">
                <text x="210" y="204">apple</text><rect x="280" y="192" width="250" height="16" rx="3" fill="#10b981"/><text x="540" y="204">5 photos (56%)</text>
                <text x="210" y="232">banana</text><rect x="280" y="220" width="100" height="16" rx="3" fill="#f59e0b"/><text x="390" y="232">2 photos (22%)</text>
                <text x="210" y="260">orange</text><rect x="280" y="248" width="100" height="16" rx="3" fill="#f59e0b"/><text x="390" y="260">2 photos (22%)</text>
              </g>
              <text x="90" y="196" font-size="12" fill="#9b99b8">13 rows in,</text>
              <text x="90" y="214" font-size="12" fill="#9b99b8">9 good rows out.</text>
              <text x="90" y="240" font-size="12" fill="#9b99b8">Apples are</text>
              <text x="90" y="258" font-size="12" fill="#9b99b8">2.5 times as many.</text>
            </g>
          </svg>
          <figcaption>Each cleaning step removes or fixes some rows. At the end, count each class. Here apples have 2.5 times as many photos as bananas or oranges.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Where data comes from</h3>
          <ul class="lc-list">
            <li><strong>Your own data.</strong> The greengrocer takes photos of fruit on the counter. This is often the best source, because it looks like the real use.</li>
            <li><strong>Public datasets.</strong> Researchers share labelled datasets online. Each one has its own licence.</li>
            <li><strong>Web scraping.</strong> Downloading images from websites. This needs the most care, because most images belong to someone.</li>
            <li><strong>Made-up (synthetic) data.</strong> Images made by a program. It is useful for testing, but it may not look like real photos.</li>
          </ul>
          <p>Try to collect data that looks like the photos the model will see later. Use the same lighting, angles and camera type. A model trained on clean studio photos may fail on a busy shop counter.</p>
        </div>
        <div class="lc-card">
          <h3>Licences and consent</h3>
          <p>A <strong>licence</strong> is the set of rules that says how you may use data. Some licences allow any use. Others forbid business use, or ask you to credit the author. "I found it online" is not a licence.</p>
          <p><strong>Consent</strong> means that a person agreed to the use of their data. If photos show people's faces or homes, you need their consent. Laws such as the UK GDPR also set rules for personal data.</p>
          <p>Keep a record for every source: where it came from, its licence, and the date you collected it. If the licence is unknown, leave the data out.</p>
        </div>
        <div class="lc-card">
          <h3>Labels, duplicates and missing values</h3>
          <p>A <strong>label</strong> is the right answer for one example, such as "banana". Labels often have problems:</p>
          <ul class="lc-list">
            <li><strong>Spelling and case:</strong> "Apple ", "apple" and "APPLE" look like three classes to a computer.</li>
            <li><strong>Wrong labels:</strong> an orange labelled "apple". Check a random sample of labels by eye.</li>
            <li><strong>Duplicates:</strong> the same photo appears twice. It counts double in training. If one copy lands in training and one in testing, your test score looks too good.</li>
            <li><strong>Missing values:</strong> an empty cell, shown as <code>None</code> or <code>NaN</code> (not a number). A photo with no label cannot teach anything.</li>
          </ul>
          <p>pandas fixes all four with one line each: <code>str.strip().str.lower()</code> for case and spaces, <code>replace</code> for typos, <code>drop_duplicates</code> for repeated photos and <code>dropna</code> for missing labels. Part 1 in the code editor below runs these four lines on a small table of 7 photos.</p>
          <p>In Part 1, seven rows become five. One row was a duplicate, and one had no label. The numbers on the left of the printed table are the old row numbers. pandas keeps them after you drop rows.</p>
          <p>Part 2 runs the same lines on a table of 13 photo records. It also drops photos with no licence and tiny photos, so 13 rows become 9.</p>
          <p>Matching file names only catches exact copies. In real projects, people also compare the image contents, because the same photo can be saved under two names.</p>
        </div>
        <div class="lc-card">
          <h3>Class balance</h3>
          <p><strong>Class balance</strong> means how many examples each class has. Suppose 90% of the photos are apples. A model can then score 90% by always saying "apple", and it learns nothing.</p>
          <p>Always print the count for each class. If one class is much smaller, you can:</p>
          <ul class="lc-list">
            <li>collect more examples of the small class (the best fix),</li>
            <li>give the small class a bigger weight in the loss,</li>
            <li>show the small class more often during training (oversampling),</li>
            <li>judge the model with per-class scores, not only overall accuracy.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Activity: name the problem</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">What kind of data problem is each row?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="rights" data-label="Licence or consent"></div>
              <div data-sorter-target="bucket" data-bucket="label" data-label="Label problem"></div>
              <div data-sorter-target="bucket" data-bucket="dup" data-label="Duplicate"></div>
              <div data-sorter-target="bucket" data-bucket="missing" data-label="Missing value"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="rights" data-why="Nobody knows the rules for this image. Leave it out until you know you may use it.">A photo copied from a website with no licence information</li>
              <li data-bucket="label" data-why="To a computer, different case means a different class. Make all labels lower case.">Labels "Banana" and "banana" in the same column</li>
              <li data-bucket="dup" data-why="The same picture twice counts double. It can also leak from training into testing.">p03.jpg appears in two rows</li>
              <li data-bucket="missing" data-why="An empty label cannot teach the model anything. Label it or drop the row.">The label cell for p07.jpg is empty</li>
              <li data-bucket="rights" data-why="The customer is a person in the photo. You need their agreement to use it.">A shop photo shows a customer's face, and they were not asked</li>
              <li data-bucket="label" data-why="The label is wrong. Checking a sample of photos by eye finds errors like this.">An orange is labelled "apple"</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code is a small cleaning example. Part 2 cleans a table of 13 fruit photo records for the greengrocer. Part 3 prints the class balance.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, check that 7 rows become 5. In Part 2, check that 13 rows become 9, as in the diagram.</li>
            <li>In Part 2, remove <code>"CC BY"</code> from <code>ALLOWED_LICENCES</code>. How many rows are left? Which class gets smaller in Part 3?</li>
            <li>In Part 2, change <code>MIN_WIDTH</code> to <code>500</code>. Look at what happens to the class balance in Part 3.</li>
            <li>In Part 2, add a new row, such as <code>("p13.jpg", " BANANA", "own", 640)</code>. Does the cleaning code turn it into "banana"?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Only use data you are allowed to use. Then fix labels, remove duplicates and missing values, and always count each class before you train.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Clean fruit photo records for the greengrocer's classifier with pandas.
        # Each row describes one photo. (We use the table, not the real pictures.)
        import pandas as pd

        # ── Part 1: a small cleaning example, 7 rows ──
        print("== Part 1: a small cleaning example ==")
        df = pd.DataFrame({
            "file":   ["a1.jpg", "a2.jpg", "a2.jpg", "b1.jpg", "b2.jpg", "o1.jpg", "o2.jpg"],
            "label":  ["apple", "Apple ", "Apple ", "banana", None, "orange", "ornage"],
            "source": ["shop", "shop", "shop", "shop", "web", "shop", "shop"],
        })
        df["label"] = df["label"].str.strip().str.lower()       # "Apple " -> "apple"
        df["label"] = df["label"].replace({"ornage": "orange"})  # fix a typo
        df = df.drop_duplicates(subset="file")                   # same photo twice
        df = df.dropna(subset=["label"])                         # no label, no use
        print(df)
        print(df["label"].value_counts())

        # ── Part 2: the full cleaning, 13 photo records ──
        print("\n== Part 2: clean 13 photo records ==")
        rows = [
            # file,     label,     licence,   width
            ("p01.jpg", "apple",   "own",      640),
            ("p02.jpg", "Apple",   "own",      640),
            ("p03.jpg", "apple ",  "own",      480),
            ("p03.jpg", "apple ",  "own",      480),   # same photo twice
            ("p04.jpg", "banana",  "own",      640),
            ("p05.jpg", "bananna", "own",      640),   # typo in the label
            ("p06.jpg", "banana",  "unknown",  800),   # we do not know if we may use it
            ("p07.jpg", None,      "own",      640),   # nobody labelled it
            ("p08.jpg", "orange",  "CC BY",    512),
            ("p09.jpg", "orange",  "own",       32),   # far too small to be useful
            ("p10.jpg", "apple",   "own",      640),
            ("p11.jpg", "apple",   "CC BY",    720),
            ("p12.jpg", "orange",  "own",      640),
        ]
        df = pd.DataFrame(rows, columns=["file", "label", "licence", "width"])
        print("Before cleaning:", len(df), "rows")

        ALLOWED_LICENCES = ["own", "CC BY"]   # photos we took, or photos with an open licence
        MIN_WIDTH = 64                        # pixels

        df["label"] = df["label"].str.strip().str.lower()            # "Apple " -> "apple"
        df["label"] = df["label"].replace({"bananna": "banana"})      # fix known typos
        df = df.drop_duplicates(subset="file")                        # remove repeated photos
        df = df.dropna(subset=["label"])                              # remove photos with no label
        df = df[df["licence"].isin(ALLOWED_LICENCES)]                 # keep only photos we may use
        df = df[df["width"] >= MIN_WIDTH]                             # remove tiny photos

        print("After cleaning: ", len(df), "rows")

        # ── Part 3: check the class balance ──
        print("\n== Part 3: class balance ==")
        counts = df["label"].value_counts()
        for label, n in counts.items():
            share = n / len(df)
            print(f"  {label:7} {n:2}  {share:5.0%}  " + "#" * (n * 4))
        print()
        print("Largest class / smallest class:", round(counts.max() / counts.min(), 1))
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Data Preprocessing and Normalisation</h1>
        </div>
        <p class="lc-lead">Neural networks learn best when their inputs are small numbers on a similar scale. <strong>Preprocessing</strong> means changing the data into that form before training. In this lesson you will learn standardisation, min-max scaling, image scaling and one-hot labels. You will also learn the most important rule: work out the scaling numbers from the training set only.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 330" role="img" aria-label="Top: one red pixel value of 255 is divided by 255 to give 1.00, then has the mean 0.485 taken away and is divided by the std 0.229 to give 2.25. Bottom: the mean 180 and std 22.36 are worked out from the training set only. The same two numbers are then used to transform the training, validation and test sets.">
            <defs><marker id="td4a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="20" y="28" text-anchor="start" font-weight="700" fill="#67e8f9">Scaling one pixel (red channel)</text>
              <rect x="20" y="44" width="120" height="50" rx="10" fill="#27274e" stroke="#ec4899"/>
              <text x="80" y="67" font-weight="700">255</text>
              <text x="80" y="84" font-size="11" fill="#9b99b8">raw, 0 to 255</text>
              <line x1="142" y1="69" x2="246" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td4a)"/>
              <text x="194" y="60" font-size="12" fill="#fcd34d">÷ 255</text>
              <rect x="250" y="44" width="120" height="50" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="310" y="67" font-weight="700">1.00</text>
              <text x="310" y="84" font-size="11" fill="#9b99b8">now 0 to 1</text>
              <line x1="372" y1="69" x2="566" y2="69" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td4a)"/>
              <text x="469" y="60" font-size="12" fill="#fcd34d">(x − 0.485) ÷ 0.229</text>
              <text x="469" y="88" font-size="11" fill="#9b99b8">mean and std of the channel</text>
              <rect x="570" y="44" width="170" height="50" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="655" y="67" font-weight="700" fill="#6ee7b7">2.25</text>
              <text x="655" y="84" font-size="11" fill="#9b99b8">centred near 0</text>
              <text x="20" y="140" text-anchor="start" font-weight="700" fill="#fcd34d">Fit on the training set only, then reuse the numbers</text>
              <rect x="20" y="158" width="200" height="66" rx="10" fill="#1f1f44" stroke="#8b5cf6"/>
              <text x="120" y="182">Training set</text>
              <text x="120" y="202" font-size="11" fill="#9b99b8">150, 170, 190, 210 g</text>
              <line x1="222" y1="191" x2="266" y2="191" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td4a)"/>
              <text x="244" y="182" font-size="11" fill="#9b99b8">fit</text>
              <rect x="270" y="158" width="200" height="66" rx="10" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="370" y="182" fill="#fcd34d">mean = 180</text>
              <text x="370" y="204" fill="#fcd34d">std = 22.36</text>
              <path d="M472,180 L516,180 L516,170 L528,170" fill="none" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td4a)"/>
              <line x1="472" y1="214" x2="528" y2="232" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td4a)"/>
              <line x1="472" y1="222" x2="528" y2="290" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td4a)"/>
              <rect x="532" y="150" width="208" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="636" y="176" font-size="12">train: −1.34 … 1.34</text>
              <rect x="532" y="210" width="208" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="636" y="236" font-size="12">validation: same numbers</text>
              <rect x="532" y="270" width="208" height="42" rx="8" fill="#1f1f44" stroke="#10b981"/>
              <text x="636" y="296" font-size="12">test: 160 g → −0.89</text>
              <text x="160" y="268" font-size="12" fill="#9b99b8">Never fit on validation or test data.</text>
              <text x="160" y="288" font-size="12" fill="#9b99b8">That leaks test information into training.</text>
            </g>
          </svg>
          <figcaption>Top: a pixel is scaled to 0-1, then standardised with its channel's mean and std. Bottom: the scaling numbers come from the training set and are reused for every split.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why scale the inputs?</h3>
          <p>Imagine two fruit features: weight in grams (about 100 to 250) and a "shine" score from 0 to 1. The weight numbers are hundreds of times bigger. During training, the big feature changes the output much more. The weights then need very different step sizes, and training becomes slow and unstable.</p>
          <p>Scaling puts all features on a similar range. Training is then faster and more stable. It does not remove any information.</p>
        </div>
        <div class="lc-card">
          <h3>Standardisation and min-max scaling</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><strong>Standardisation</strong> (z-score)</td><td>(x − mean) ÷ std</td><td>Mean 0, std 1. Most values fall between −3 and 3.</td></tr>
              <tr><td><strong>Min-max scaling</strong></td><td>(x − min) ÷ (max − min)</td><td>Training values fall between 0 and 1.</td></tr>
            </tbody>
          </table>
          <p><strong>std</strong> is the standard deviation: a measure of how spread out the numbers are. Standardisation is the usual choice for tables of numbers. Min-max is common when you know the fixed range, such as pixels.</p>
          <p>Part 1 in the code editor below standardises apple weights. Four are for training (150, 170, 190 and 210 g) and two are for testing (160 and 260 g). The mean (180.0) and std (22.36) come from the training set only.</p>
          <p>The training apples become −1.34, −0.45, 0.45 and 1.34. The 160 g test apple becomes −0.89.</p>
          <p>The 260 g test apple is heavier than any training apple, so it gets 3.58. That is fine. The model sees a value it can still compare to the others.</p>
        </div>
        <div class="lc-card">
          <h3>Fit on train only</h3>
          <p>To <strong>fit</strong> a scaler means to work out its numbers, such as the mean and std. Always fit on the training set only. Then use those same numbers on the validation and test sets.</p>
          <p>If you fit on all the data, the test set helps choose the scaling. This is a kind of <strong>data leakage</strong>: information from the test set leaks into training. Your test score then looks better than the real result on new photos.</p>
          <p>Save the scaling numbers with your model. When the model runs in the shop later, each new photo must be scaled in exactly the same way.</p>
        </div>
        <div class="lc-card">
          <h3>Scaling images</h3>
          <p>A colour image has three <strong>channels</strong>: red, green and blue. Each pixel value is from 0 to 255. There are two common steps:</p>
          <ol class="lc-list">
            <li>Divide by 255, so values go from 0 to 1.</li>
            <li>Standardise each channel with a mean and std. Many pretrained models use the ImageNet numbers: mean [0.485, 0.456, 0.406] and std [0.229, 0.224, 0.225].</li>
          </ol>
          <p>In PyTorch, <code>torchvision</code> does both steps for you. Its <code>transforms.Compose</code> chains <code>Resize</code>, <code>ToTensor</code> and <code>Normalize</code> into one function called <code>to_input</code>. Part 5 in the code editor below builds it. Run that part on your own computer.</p>
          <p>You pass a photo to <code>to_input</code>, and you get back a tensor of shape (3, 224, 224). A pure red pixel becomes about [2.25, −2.04, −1.80]. Newer torchvision versions also have a <code>transforms.v2</code> module, so check the current docs. Part 3 in the editor does the same maths with NumPy, because PyTorch does not run in the browser.</p>
        </div>
        <div class="lc-card">
          <h3>One-hot labels</h3>
          <p>Models work with numbers, not words. First, give each class a number: apple = 0, banana = 1, orange = 2. A <strong>one-hot</strong> label is a row of zeros with a single 1 at the class number.</p>
          <p>So orange becomes <code>[0, 0, 1]</code> and apple becomes <code>[1, 0, 0]</code>. In PyTorch, <code>F.one_hot(labels, num_classes=3)</code> makes these rows, as Part 5 shows. Part 4 in the code editor makes them with NumPy.</p>
          <p>Why not just use the numbers 0, 1 and 2 as inputs? Because then "orange" looks twice as big as "banana", which makes no sense. One-hot rows treat every class equally. Note that PyTorch's <code>nn.CrossEntropyLoss</code> accepts the class numbers directly, so you often do not need one-hot labels for the loss.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: standardise a test apple</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="The task">Training weights: 150, 170, 190 and 210 g. Scale a new test apple that weighs 160 g.</li>
              <li data-kind="tool" data-label="Step 1 · mean">Use the training set only. Mean = (150 + 170 + 190 + 210) ÷ 4 = 180.</li>
              <li data-kind="tool" data-label="Step 2 · std">Distances from the mean: −30, −10, 10, 30. Squares: 900, 100, 100, 900. Average = 500. Square root ≈ 22.36.</li>
              <li data-kind="result" data-label="Step 3 · scale">(160 − 180) ÷ 22.36 ≈ −0.89. The test apple is a little lighter than average.</li>
              <li data-kind="warn" data-label="A common mistake">Do not add the test apple and work out a new mean. The test data must not change the scaling numbers.</li>
              <li data-kind="answer" data-label="Remember">Fit once on the training set. Save the mean and std. Reuse them for validation, test and real use.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 to 4 of the starter code scale the apple weights, two fruit features, one tiny image and some labels, all with NumPy. Part 5 does the image and label steps in PyTorch on your own computer.</p>
          <ol class="lc-list">
            <li>Run it. Check that Part 1 gives 180.0, 22.36 and −0.89 for the 160 g apple. Check that the Part 2 test rows use the training mean and std.</li>
            <li>In Part 2, change the test row <code>[260, 30]</code> to <code>[152, 120]</code>. These are the training means, so both standardised values become 0.</li>
            <li>In Part 3, change the first pixel of <code>img</code> to <code>[0, 0, 255]</code> (pure blue). Predict the sign of each channel before you run it.</li>
            <li>In Part 4, add <code>"pear"</code> to <code>CLASSES</code> and to <code>labels</code>. How wide are the one-hot rows now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Put inputs on a small, similar scale: standardise numbers, and scale pixels to 0-1 and then by channel. Always fit the scaling numbers on the training set only and reuse them everywhere.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Preprocessing by hand with NumPy: scale numbers, scale pixels, one-hot labels.
        import numpy as np
        np.set_printoptions(precision=2, suppress=True)

        # ── Part 1: apple weights, fit mean and std on the training set only ──
        print("== Part 1: standardise apple weights ==")
        weight_train = np.array([150.0, 170.0, 190.0, 210.0])   # apple weights in grams
        weight_test  = np.array([160.0, 260.0])

        mean = weight_train.mean()     # learned from the training set only
        std = weight_train.std()
        print(mean, round(std, 2))
        print(np.round((weight_train - mean) / std, 2))
        print(np.round((weight_test - mean) / std, 2))

        # ── Part 2: two features on very different scales: weight (grams) and redness (0-255) ──
        print("\n== Part 2: standardise and min-max two features ==")
        X_train = np.array([[150.0, 200], [170, 180], [120, 40], [190, 60], [130, 120]])
        X_test  = np.array([[160.0, 190], [260, 30]])

        mean = X_train.mean(axis=0)        # fit on the TRAINING set only
        std = X_train.std(axis=0)
        print("train mean:", mean, " train std:", std)
        print("standardised test rows:\n", (X_test - mean) / std)

        lo, hi = X_train.min(axis=0), X_train.max(axis=0)
        print("min-max test rows (can go outside 0-1):\n", (X_test - lo) / (hi - lo))

        # ── Part 3: an image, a 2x2 photo with 3 colour channels (red, green, blue), values 0-255 ──
        print("\n== Part 3: scale an image ==")
        img = np.array([[[255, 0, 0], [250, 200, 30]],
                        [[240, 130, 20], [30, 30, 30]]], dtype=np.uint8)
        x = img / 255.0                                  # step 1: 0-255 -> 0-1
        MEAN = np.array([0.485, 0.456, 0.406])           # ImageNet mean per channel
        STD = np.array([0.229, 0.224, 0.225])            # ImageNet std per channel
        x = (x - MEAN) / STD                             # step 2: per-channel standardise
        print("first pixel before:", img[0, 0], " after:", x[0, 0])
        x = x.transpose(2, 0, 1)                         # PyTorch wants (channels, height, width)
        print("shape for PyTorch:", x.shape)

        # ── Part 4: labels as numbers, then as one-hot rows ──
        print("\n== Part 4: one-hot labels ==")
        CLASSES = ["apple", "banana", "orange"]
        labels = ["orange", "apple", "banana", "apple"]
        idx = np.array([CLASSES.index(name) for name in labels])
        print("class numbers:", idx)
        print("one-hot:\n", np.eye(len(CLASSES), dtype=int)[idx])

        # ── Part 5: the same steps in PyTorch and torchvision (run this part on your own computer) ──
        print("\n== Part 5: torchvision transforms and F.one_hot ==")
        try:
            import torch
            import torch.nn.functional as F
            from torchvision import transforms
            from PIL import Image
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            to_input = transforms.Compose([
                transforms.Resize((224, 224)),   # every photo the same size
                transforms.ToTensor(),           # 0-255 -> 0-1, shape (channels, height, width)
                transforms.Normalize(mean=[0.485, 0.456, 0.406],
                                     std=[0.229, 0.224, 0.225]),
            ])
            photo = Image.new("RGB", (64, 64), (255, 0, 0))   # a pure red test photo
            t = to_input(photo)
            print(t.shape)                                    # torch.Size([3, 224, 224])
            print(t[:, 0, 0])                                 # about [2.25, -2.04, -1.80]

            labels = torch.tensor([0, 2, 1, 0])        # 0 = apple, 1 = banana, 2 = orange
            print(F.one_hot(labels, num_classes=3))
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Train, Validation and Test Sets</h1>
        </div>
        <p class="lc-lead">A model can look perfect on the photos it learned from and still fail on new ones. To find out how good it really is, you must test it on data it has never seen. In this lesson, you will split your data into three parts: train, validation and test. You will also learn how to stop test answers from leaking into training.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="1,000 fruit photos are split into 700 for training, 150 for validation and 150 for testing. The training set learns the weights. The validation set picks settings. The test set gives one final score at the end.">
            <defs><marker id="td5a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">1,000 fruit photos (500 apple, 300 banana, 200 orange)</text>
              <rect x="40" y="40" width="476" height="50" rx="6" fill="#27274e" stroke="#3b82f6" stroke-width="2"/>
              <text x="278" y="62" font-weight="700" fill="#93c5fd">Train 700 (70%)</text>
              <text x="278" y="80" font-size="11" fill="#9b99b8">350 apple · 210 banana · 140 orange</text>
              <rect x="518" y="40" width="100" height="50" rx="6" fill="#27274e" stroke="#f59e0b" stroke-width="2"/>
              <text x="568" y="62" font-weight="700" fill="#fcd34d">Val 150</text>
              <text x="568" y="80" font-size="11" fill="#9b99b8">15%</text>
              <rect x="620" y="40" width="100" height="50" rx="6" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="670" y="62" font-weight="700" fill="#f9a8d4">Test 150</text>
              <text x="670" y="80" font-size="11" fill="#9b99b8">15%</text>
              <line x1="278" y1="92" x2="155" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td5a)"/>
              <line x1="568" y1="92" x2="395" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td5a)"/>
              <line x1="670" y1="92" x2="625" y2="146" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td5a)"/>
              <rect x="40" y="150" width="230" height="100" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="155" y="178" font-weight="700" fill="#93c5fd">Training set</text>
              <text x="155" y="202" font-size="12">learns the weights</text>
              <text x="155" y="222" font-size="12" fill="#9b99b8">seen in every epoch</text>
              <rect x="280" y="150" width="230" height="100" rx="10" fill="#1f1f44" stroke="#f59e0b"/>
              <text x="395" y="178" font-weight="700" fill="#fcd34d">Validation set</text>
              <text x="395" y="202" font-size="12">picks your settings</text>
              <text x="395" y="222" font-size="12" fill="#9b99b8">learning rate, epochs, model size</text>
              <rect x="520" y="150" width="210" height="100" rx="10" fill="#1f1f44" stroke="#ec4899"/>
              <text x="625" y="178" font-weight="700" fill="#f9a8d4">Test set</text>
              <text x="625" y="202" font-size="12">gives the final score</text>
              <text x="625" y="222" font-size="12" fill="#9b99b8">used once, at the very end</text>
              <text x="380" y="282" font-size="12" fill="#9b99b8">With stratify, every split keeps the same mix: 50% apple, 30% banana, 20% orange.</text>
            </g>
          </svg>
          <figcaption>The three splits for the greengrocer's fruit photos. Each split has a different job.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why you need three splits</h3>
          <p>A deep model has millions of weights. It can memorise its training photos, even the odd ones. So a high score on the training photos tells you very little.</p>
          <ul class="lc-list">
            <li><strong>Training set:</strong> the model learns from these examples. The optimiser changes the weights to fit them.</li>
            <li><strong>Validation set:</strong> you check the model on these after each epoch. You use the scores to choose settings, such as the learning rate or when to stop. The weights never learn from them directly.</li>
            <li><strong>Test set:</strong> you lock these away. You use them once, at the end, to report how good the model is.</li>
          </ul>
          <p>Why not just two splits? Each time you pick a setting because it scored well on validation, you tune a little to that set. After many choices, the validation score is a bit too hopeful. The test set has never influenced any choice, so its score is honest.</p>
        </div>
        <div class="lc-card">
          <h3>Typical ratios</h3>
          <table class="lc-table">
            <thead><tr><th>Dataset size</th><th>Common split (train / val / test)</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>A few thousand examples</td><td>70 / 15 / 15 or 80 / 10 / 10</td><td>You need enough val and test examples for a stable score.</td></tr>
              <tr><td>Hundreds of thousands</td><td>90 / 5 / 5 or 98 / 1 / 1</td><td>1% is already thousands of examples.</td></tr>
              <tr><td>Very small (a few hundred)</td><td>Keep a test set, use cross-validation for the rest</td><td>One small val set gives a noisy score.</td></tr>
            </tbody>
          </table>
          <p>The greengrocer's 1,000 photos use 70 / 15 / 15. That gives 700 training photos, 150 validation photos and 150 test photos.</p>
          <p><strong>Cross-validation</strong> means you split the training data into several parts. You train several times, and each part takes a turn as the validation set. It is common for small datasets. It is often too slow for big deep models.</p>
        </div>
        <div class="lc-card">
          <h3>Stratify: keep the class mix the same</h3>
          <p>The fruit photos are not balanced. There are 500 apples, 300 bananas and 200 oranges. A random split could, by chance, put too few oranges in the test set.</p>
          <p><strong>Stratify</strong> means "split each class in the same ratio". With <code>stratify=labels</code>, scikit-learn keeps 50% apple, 30% banana and 20% orange in every split. You split twice: first 70 / 30, then cut the 30% in half. Part 1 in the code editor below does both splits with <code>train_test_split</code>.</p>
          <p>Training gets 700 photos: 350 apples, 210 bananas and 140 oranges. Validation and test get 150 each: 75 apples, 45 bananas and 30 oranges.</p>
          <p>Always set <code>random_state</code> (a seed). Then you get the same split every time you run the code. Save the photo IDs of each split to a file, so every experiment uses the same test set.</p>
          <p>In PyTorch, <code>torch.utils.data.random_split</code> can also split a dataset. It does not stratify, so many people split the IDs with scikit-learn first.</p>
        </div>
        <div class="lc-card">
          <h3>Data leakage</h3>
          <p><strong>Data leakage</strong> means information from the validation or test set gets into training. The scores then look better than the model really is. Here are common ways it happens:</p>
          <table class="lc-table">
            <thead><tr><th>Leak</th><th>Fruit example</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Duplicates across splits</td><td>The same apple photo is saved twice. One copy is in train, one is in test.</td><td>Remove duplicates before you split.</td></tr>
              <tr><td>Near-duplicates</td><td>Five photos of the same banana, taken one second apart, end up in different splits.</td><td>Split by group (for example by photo session), not by single photo.</td></tr>
              <tr><td>Statistics from all data</td><td>The mean and standard deviation for normalisation are computed on all 1,000 photos.</td><td>Compute them on the training set only.</td></tr>
              <tr><td>Tuning on the test set</td><td>You try 20 learning rates and keep the one with the best test score.</td><td>Tune on validation. Use test once.</td></tr>
              <tr><td>Time order</td><td>You predict next week's sales, but train on a random mix of old and new days.</td><td>Train on the past, validate and test on later dates.</td></tr>
            </tbody>
          </table>
          <p>For near-duplicates, scikit-learn has <code>GroupShuffleSplit</code>. You give each photo a group ID, and a whole group always stays in one split.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: leak or no leak?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Sort each situation. Does it leak information into training or tuning?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="leak" data-label="Data leakage"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Fine"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="leak" data-why="Test statistics shaped the training inputs. Fit the scaler on the training set only.">Computing the pixel mean on all 1,000 photos, then splitting</li>
              <li data-bucket="ok" data-why="This is the job of the validation set.">Choosing the number of epochs from the validation loss</li>
              <li data-bucket="leak" data-why="The model can memorise the photo and then 'recognise' its copy in the test set.">The same orange photo appears in both train and test</li>
              <li data-bucket="leak" data-why="Choices made with the test set make its score too hopeful. Use validation for this.">Picking the best of ten models by test accuracy</li>
              <li data-bucket="ok" data-why="Stratify only keeps the class mix the same. No example is shared.">Using stratify so each split has 20% oranges</li>
              <li data-bucket="ok" data-why="A fixed seed gives the same split every time. That is good practice.">Setting random_state=42 before splitting</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code splits the 1,000 fruit photo IDs with <code>stratify</code>. Part 2 splits the digits dataset 70 / 15 / 15. Part 3 picks the number of neighbours <code>k</code> on the validation set. Part 4 checks the test set once.</p>
          <ol class="lc-list">
            <li>Set <code>STRATIFY = False</code> and run again. The fruit counts in Part 1 and the share of digit 0 in Part 2 now move around more.</li>
            <li>Change <code>SEED</code> to 1 or 7. The validation and test scores in Parts 3 and 4 change a little. Small sets give noisy scores.</li>
            <li>In Part 3, add <code>k = 25</code> to the list. Does it beat <code>k = 5</code> on validation?</li>
            <li>In Part 2, change the first <code>test_size</code> to 0.20, so you get 80 / 10 / 10. Look at the new split sizes.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Train on the training set, make choices with the validation set, and touch the test set only once. Split before any other step, so nothing from validation or test leaks into training.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Train, validation and test sets with scikit-learn.
        # Part 1 splits the fruit photo IDs. Parts 2-4 use the small "digits" dataset:
        # 1,797 images of handwritten digits, 8x8 pixels.
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.model_selection import train_test_split
        from sklearn.neighbors import KNeighborsClassifier

        SEED = 42
        STRATIFY = True          # try False: the class mix in each split changes more

        # ── Part 1: split 1,000 fruit photo IDs 70 / 15 / 15 with stratify ──
        print("== Part 1: split the fruit photos ==")
        # 1,000 fruit photos: 500 apples (0), 300 bananas (1), 200 oranges (2)
        labels = np.array([0] * 500 + [1] * 300 + [2] * 200)
        ids = np.arange(1000)                     # photo numbers

        train_ids, rest_ids = train_test_split(
            ids, test_size=0.30, stratify=labels if STRATIFY else None, random_state=SEED)
        val_ids, test_ids = train_test_split(
            rest_ids, test_size=0.50, stratify=labels[rest_ids] if STRATIFY else None, random_state=SEED)

        print("[apple, banana, orange] in each split:")
        for name, part in [("train", train_ids), ("val", val_ids), ("test", test_ids)]:
            print(f"  {name:6} {len(part)} {np.bincount(labels[part], minlength=3)}")

        # ── Part 2: split the digits 70 / 15 / 15 ──
        print("\n== Part 2: split the digits ==")
        X, y = load_digits(return_X_y=True)

        strat = y if STRATIFY else None
        # Step 1: cut off 30% for validation + test. Step 2: cut that 30% in half.
        X_train, X_rest, y_train, y_rest = train_test_split(
            X, y, test_size=0.30, random_state=SEED, stratify=strat)
        X_val, X_test, y_val, y_test = train_test_split(
            X_rest, y_rest, test_size=0.50, random_state=SEED,
            stratify=y_rest if STRATIFY else None)

        print(f"train {len(X_train)}, validation {len(X_val)}, test {len(X_test)}")
        print("Share of digit 0 in each split:")
        for name, part in [("all", y), ("train", y_train), ("val", y_val), ("test", y_test)]:
            print(f"  {name:6} {np.mean(part == 0):.3f}")

        # ── Part 3: use the VALIDATION set to choose a setting (k = number of neighbours) ──
        print("\n== Part 3: choose k on the validation set ==")
        best_k, best_acc = None, 0
        for k in [1, 3, 5, 15, 45]:
            model = KNeighborsClassifier(n_neighbors=k).fit(X_train, y_train)
            acc = model.score(X_val, y_val)
            print(f"  k={k:2}  val accuracy {acc:.3f}  " + "#" * int((acc - 0.9) * 300))
            if acc > best_acc:
                best_k, best_acc = k, acc

        # ── Part 4: use the TEST set only once, at the very end ──
        print("\n== Part 4: check the test set once ==")
        final = KNeighborsClassifier(n_neighbors=best_k).fit(X_train, y_train)
        print(f"Best k = {best_k}. Test accuracy (used once): {final.score(X_test, y_test):.3f}")
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Datasets and DataLoaders</h1>
        </div>
        <p class="lc-lead">A model does not learn from one photo at a time, and it does not learn from all photos at once. It learns from small groups called <strong>batches</strong>. PyTorch gives you two tools for this. A <strong>Dataset</strong> knows how to get one example. A <strong>DataLoader</strong> shuffles the examples and groups them into batches. In this lesson, you will build both for the fruit photos.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="A FruitDataset returns its length, 700, and one example at a time: an image of shape 3 by 64 by 64 and a label. The DataLoader shuffles the indices, takes 32 at a time and stacks them. Each batch has images of shape 32 by 3 by 64 by 64 and 32 labels. The training loop gets 22 batches per epoch.">
            <defs><marker id="td6a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="220" height="150" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="120" y="46" font-weight="700" fill="#c4b5fd">FruitDataset</text>
              <text x="120" y="76" font-size="12">__len__()  →  700</text>
              <text x="120" y="106" font-size="12">__getitem__(5)  →</text>
              <text x="120" y="126" font-size="12" fill="#93c5fd">image [3, 64, 64]</text>
              <text x="120" y="146" font-size="12" fill="#6ee7b7">label 1 (banana)</text>
              <line x1="232" y1="95" x2="266" y2="95" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td6a)"/>
              <rect x="270" y="20" width="220" height="150" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="380" y="46" font-weight="700" fill="#67e8f9">DataLoader</text>
              <text x="380" y="76" font-size="12">1. shuffle the order</text>
              <text x="380" y="94" font-size="11" fill="#9b99b8">512, 3, 88, 640, 17, ...</text>
              <text x="380" y="120" font-size="12">2. take 32 indices</text>
              <text x="380" y="146" font-size="12">3. stack into one tensor</text>
              <line x1="492" y1="95" x2="526" y2="95" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td6a)"/>
              <rect x="530" y="20" width="220" height="150" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="640" y="46" font-weight="700" fill="#6ee7b7">One batch</text>
              <text x="640" y="80" font-size="12" fill="#93c5fd">xb [32, 3, 64, 64]</text>
              <text x="640" y="104" font-size="12" fill="#6ee7b7">yb [32]</text>
              <text x="640" y="134" font-size="11" fill="#9b99b8">batch, channels, height, width</text>
              <path d="M640,172 L640,215 L380,215" fill="none" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#td6a)"/>
              <rect x="130" y="198" width="250" height="34" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="255" y="220" font-size="12">for xb, yb in train_loader:</text>
              <text x="380" y="258" font-size="12" fill="#9b99b8">700 photos / 32 = 22 batches per epoch (21 full batches and one batch of 28)</text>
            </g>
          </svg>
          <figcaption>The Dataset gives one example. The DataLoader turns many examples into batches for the training loop.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The Dataset: one example at a time</h3>
          <p>A PyTorch <strong>Dataset</strong> is a class with two methods:</p>
          <ul class="lc-list">
            <li><code>__len__</code> returns how many examples there are.</li>
            <li><code>__getitem__(i)</code> returns example number <code>i</code>, usually as a pair: <code>(input, label)</code>.</li>
          </ul>
          <p>The Dataset hides where the data lives. The photos might be files on disk, rows in a table or tensors in memory. The rest of your code only calls <code>dataset[i]</code>.</p>
          <p>For the fruit project, each example is an image tensor of shape <code>[3, 64, 64]</code> and a label. The 3 is the colour channels (red, green, blue). The labels are 0 = apple, 1 = banana and 2 = orange.</p>
        </div>
        <div class="lc-card">
          <h3>Writing a Dataset and a DataLoader in PyTorch</h3>
          <p>Part 4 in the code editor below is the PyTorch version. It makes 700 random image tensors instead of real photos, so it runs anywhere. A real Dataset would load an image file in <code>__getitem__</code>. Then <code>DataLoader(train_ds, batch_size=32, shuffle=True)</code> turns the Dataset into batches.</p>
          <p>Here <code>train_ds</code> holds 700 fruit photos. Here is what each call gives:</p>
          <ul class="lc-list">
            <li><code>len(train_ds)</code> calls <code>__len__</code>: 700 examples.</li>
            <li><code>train_ds[0]</code> calls <code>__getitem__(0)</code>: one image and its label.</li>
            <li><code>len(train_loader)</code> is the number of batches: 700 / 32 = 21.875, rounded up to 22.</li>
            <li>One batch stacks 32 images. A new first dimension appears: the <strong>batch dimension</strong>.</li>
          </ul>
          <p>PyTorch does not run in the browser, so run Part 4 on your own computer. Parts 1 to 3 in the editor run a NumPy version of the same idea. Part 3 shows the 22 batches.</p>
        </div>
        <div class="lc-card">
          <h3>Important DataLoader options</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it does</th><th>Typical value</th></tr></thead>
            <tbody>
              <tr><td><code>batch_size</code></td><td>How many examples go in one batch</td><td>32 or 64 to start</td></tr>
              <tr><td><code>shuffle</code></td><td>Mixes the order again at the start of every epoch</td><td><code>True</code> for training, <code>False</code> for validation and test</td></tr>
              <tr><td><code>drop_last</code></td><td>Skips the last batch if it is smaller than <code>batch_size</code></td><td><code>False</code> (the default)</td></tr>
              <tr><td><code>num_workers</code></td><td>Number of extra processes that load data while the model trains</td><td>0 (the default) to start, then try 2 to 8</td></tr>
            </tbody>
          </table>
          <p>Why shuffle the training data? If the photos are sorted, the first batches might be all apples. The model would learn "always say apple", then "always say banana". Shuffling gives each batch a fair mix.</p>
          <p>You do not need to shuffle validation or test data. The model does not learn from them, so the order does not change the score.</p>
          <p>Real photos are also resized and turned into tensors inside <code>__getitem__</code>. Libraries such as torchvision give you ready-made <strong>transforms</strong> for this. Check the current torchvision docs for the exact names.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one epoch with a DataLoader</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one training epoch in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">The DataLoader shuffles the list of indices 0 to 699</li>
              <li data-order="2">It takes the next 32 indices from the shuffled list</li>
              <li data-order="3">It calls __getitem__ once for each of those indices</li>
              <li data-order="4">It stacks the 32 images into one tensor of shape [32, 3, 64, 64]</li>
              <li data-order="5">The training loop gets the batch and updates the model once</li>
              <li data-order="6">Steps 2 to 5 repeat until all 700 photos have been used</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code has a tiny <code>FruitDataset</code> with 10 examples. Part 2 has a <code>data_loader</code> function that works like PyTorch's DataLoader. Part 3 does the batch maths for the fruit project, and Part 4 is the PyTorch version.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, each epoch uses a different order, but every row appears exactly once.</li>
            <li>Change <code>BATCH_SIZE</code> to 3. How many steps does each epoch in Part 2 have now? Look at the size of the last batch.</li>
            <li>Set <code>DROP_LAST = True</code>. The small last batch in Part 2 disappears.</li>
            <li>Set <code>SHUFFLE = False</code>. The rows in Part 2 now come in the order 0, 1, 2, and so on, every epoch.</li>
            <li>In Part 3, change <code>bs</code> to 64. How many batches does the fruit project need now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A Dataset answers two questions: "how many?" and "give me number i". A DataLoader shuffles, groups and stacks those examples into batches. The batch tensor gets a new first dimension, the batch size.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny Dataset and DataLoader, written with NumPy.
        # PyTorch does not run in the browser, so Parts 1-3 copy its idea.
        # Part 4 is the real PyTorch version for your own computer.
        import numpy as np

        np.random.seed(42)
        BATCH_SIZE = 4
        SHUFFLE = True
        DROP_LAST = False        # True: skip the last batch if it is not full

        # ── Part 1: a Dataset answers "how many?" and "give me number i" ──
        print("== Part 1: a tiny FruitDataset ==")
        class FruitDataset:
            """Holds 10 fake fruit 'photos'. Each photo is just 3 numbers here."""
            def __init__(self):
                self.images = np.arange(30).reshape(10, 3)   # 10 examples, 3 numbers each
                self.labels = np.array([0, 1, 2, 0, 0, 1, 2, 0, 1, 0])  # 0=apple 1=banana 2=orange

            def __len__(self):
                return len(self.labels)

            def __getitem__(self, i):
                return self.images[i], self.labels[i]

        ds = FruitDataset()
        print("examples:", len(ds))
        x0, y0 = ds[0]
        print("example 0: image", x0.tolist(), "label", int(y0))

        # ── Part 2: a DataLoader shuffles, groups and stacks examples into batches ──
        print("\n== Part 2: a data_loader that makes batches ==")
        def data_loader(dataset, batch_size, shuffle, drop_last):
            """Yield (batch_of_images, batch_of_labels), like torch's DataLoader."""
            order = np.arange(len(dataset))
            if shuffle:
                np.random.shuffle(order)          # a new order every epoch
            for start in range(0, len(order), batch_size):
                idx = order[start:start + batch_size]
                if drop_last and len(idx) < batch_size:
                    break
                pairs = [dataset[i] for i in idx]                 # calls __getitem__
                xb = np.stack([p[0] for p in pairs])              # stack into one array
                yb = np.array([p[1] for p in pairs])
                yield idx, xb, yb

        for epoch in range(1, 3):
            print(f"Epoch {epoch}")
            for step, (idx, xb, yb) in enumerate(data_loader(ds, BATCH_SIZE, SHUFFLE, DROP_LAST), 1):
                print(f"  step {step}: rows {idx.tolist()}  x shape {xb.shape}  labels {yb.tolist()}")

        # ── Part 3: the real fruit project has 700 training photos, batch size 32 ──
        print("\n== Part 3: batches for 700 fruit photos ==")
        n, bs = 700, 32
        n_batches = -(-n // bs)                  # divide and round up
        print(f"{n} photos / batch {bs} = {n / bs} -> {n_batches} batches per epoch")
        print("last batch size:", n - bs * (n_batches - 1))
        print("one batch of images has shape", (bs, 3, 64, 64))

        # ── Part 4: the same Dataset and DataLoader in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: FruitDataset and DataLoader in PyTorch ==")
        try:
            import torch
            from torch.utils.data import Dataset, DataLoader
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)

            class TorchFruitDataset(Dataset):
                def __init__(self, images, labels):
                    self.images = images              # tensor [N, 3, 64, 64]
                    self.labels = labels              # tensor [N]

                def __len__(self):
                    return len(self.labels)           # how many examples

                def __getitem__(self, i):
                    return self.images[i], self.labels[i]   # one (image, label) pair

            # Fake data so the example runs anywhere: 700 random "photos"
            images = torch.rand(700, 3, 64, 64)
            labels = torch.randint(0, 3, (700,))
            train_ds = TorchFruitDataset(images, labels)

            print(len(train_ds))                      # 700
            x, y = train_ds[0]
            print(x.shape, y)                         # torch.Size([3, 64, 64]) and a label

            train_loader = DataLoader(train_ds, batch_size=32, shuffle=True)
            print(len(train_loader))                  # 22
            xb, yb = next(iter(train_loader))
            print(xb.shape, yb.shape)                 # torch.Size([32, 3, 64, 64]) torch.Size([32])
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Batch Size and Epochs</h1>
        </div>
        <p class="lc-lead">Two numbers control how long training runs: the <strong>batch size</strong> and the number of <strong>epochs</strong>. The batch size also changes how noisy each update is and how much memory you need. In this lesson, you will do the step arithmetic, see what batch size changes, and learn <strong>early stopping</strong>: a simple way to decide when to stop.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 350" role="img" aria-label="Top: one epoch of 700 photos with batch size 32 is 22 steps, 21 full batches of 32 and a last batch of 28. Bottom: a loss chart over 300 epochs. Training loss keeps falling. Validation loss is lowest near epoch 7 and then slowly rises. Early stopping with patience 20 stops at epoch 27.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-weight="700">1 epoch = 22 steps (700 photos, batch size 32)</text>
              <rect x="50" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="64" y="60" font-size="11">32</text>
              <rect x="80" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="94" y="60" font-size="11">32</text>
              <rect x="110" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="124" y="60" font-size="11">32</text>
              <rect x="140" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="154" y="60" font-size="11">32</text>
              <rect x="170" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="184" y="60" font-size="11">32</text>
              <rect x="200" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="214" y="60" font-size="11">32</text>
              <rect x="230" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="244" y="60" font-size="11">32</text>
              <rect x="260" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="274" y="60" font-size="11">32</text>
              <rect x="290" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="304" y="60" font-size="11">32</text>
              <rect x="320" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="334" y="60" font-size="11">32</text>
              <rect x="350" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="364" y="60" font-size="11">32</text>
              <rect x="380" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="394" y="60" font-size="11">32</text>
              <rect x="410" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="424" y="60" font-size="11">32</text>
              <rect x="440" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="454" y="60" font-size="11">32</text>
              <rect x="470" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="484" y="60" font-size="11">32</text>
              <rect x="500" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="514" y="60" font-size="11">32</text>
              <rect x="530" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="544" y="60" font-size="11">32</text>
              <rect x="560" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="574" y="60" font-size="11">32</text>
              <rect x="590" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="604" y="60" font-size="11">32</text>
              <rect x="620" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="634" y="60" font-size="11">32</text>
              <rect x="650" y="38" width="28" height="34" rx="4" fill="#27274e" stroke="#3b82f6"/>
              <text x="664" y="60" font-size="11">32</text>
              <rect x="680" y="38" width="24" height="34" rx="4" fill="#27274e" stroke="#f59e0b"/>
              <text x="692" y="60" font-size="11">28</text>
              <text x="380" y="94" font-size="12" fill="#9b99b8">each box is one batch = one step = one weight update. The last batch has only 28 photos.</text>
              <text x="380" y="118" font-size="12" fill="#9b99b8">Then shuffle again and start epoch 2. 10 epochs = 220 steps.</text>
              <text x="380" y="160" font-weight="700">Loss per epoch (from the starter code, patience switched off)</text>
              <line x1="70" y1="300" x2="730" y2="300" stroke="#4b4a78"/>
              <line x1="70" y1="175" x2="70" y2="300" stroke="#4b4a78"/>
              <text x="70" y="317" font-size="11" fill="#9b99b8">0</text>
              <text x="290" y="317" font-size="11" fill="#9b99b8">100</text>
              <text x="510" y="317" font-size="11" fill="#9b99b8">200</text>
              <text x="730" y="317" font-size="11" fill="#9b99b8">300</text>
              <text x="400" y="340" font-size="11" fill="#9b99b8">epoch</text>
              <text x="62" y="292" font-size="11" fill="#9b99b8" text-anchor="end">0.2</text>
              <text x="62" y="244" font-size="11" fill="#9b99b8" text-anchor="end">0.4</text>
              <text x="62" y="196" font-size="11" fill="#9b99b8" text-anchor="end">0.6</text>
              <polyline points="72,230 77,235 81,232 85,240 92,242 114,244 136,244 158,254 180,258 202,260 224,263 246,265 268,268 290,270 312,272 334,273 356,275 378,276 400,276 422,279 444,280 466,280 488,282 510,283 532,284 554,285 576,285 598,286 620,287 642,288 664,286 686,289 708,289 730,290" fill="none" stroke="#3b82f6" stroke-width="2"/>
              <polyline points="72,229 77,238 81,230 85,240 92,239 114,232 136,225 158,233 180,231 202,232 224,233 246,231 268,226 290,226 312,223 334,222 356,222 378,222 400,225 422,213 444,212 466,207 488,210 510,212 532,210 554,206 576,209 598,212 620,200 642,209 664,213 686,198 708,204 730,200" fill="none" stroke="#ec4899" stroke-width="2"/>
              <line x1="85" y1="192" x2="85" y2="300" stroke="#10b981" stroke-dasharray="4 3"/>
              <line x1="129" y1="206" x2="129" y2="300" stroke="#f59e0b" stroke-dasharray="4 3"/>
              <text x="125" y="201" font-size="11" fill="#fcd34d" text-anchor="start">early stop (epoch 27)</text>
              <text x="79" y="186" font-size="11" fill="#6ee7b7" text-anchor="start">best val (epoch 7)</text>
              <text x="725" y="192" font-size="12" fill="#f9a8d4" text-anchor="end">validation loss rises: overfitting</text>
              <text x="725" y="280" font-size="12" fill="#93c5fd" text-anchor="end">training loss keeps falling</text>
            </g>
          </svg>
          <figcaption>Top: the steps inside one epoch of the fruit project. Bottom: real losses from the starter code. Validation loss is lowest early on, then rises while training loss keeps falling.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three words: batch, step, epoch</h3>
          <ul class="lc-list">
            <li><strong>Batch:</strong> a small group of examples that the model sees together.</li>
            <li><strong>Step</strong> (or iteration): one weight update. The model sees one batch, computes the loss and changes its weights once.</li>
            <li><strong>Epoch:</strong> one full pass over the whole training set.</li>
          </ul>
          <p>The arithmetic is simple. Steps per epoch = number of training examples ÷ batch size, rounded up.</p>
          <table class="lc-table">
            <thead><tr><th>Training photos</th><th>Batch size</th><th>Steps per epoch</th><th>Steps in 10 epochs</th></tr></thead>
            <tbody>
              <tr><td>700</td><td>16</td><td>44 (43 full + one of 12)</td><td>440</td></tr>
              <tr><td>700</td><td>32</td><td>22 (21 full + one of 28)</td><td>220</td></tr>
              <tr><td>700</td><td>64</td><td>11 (10 full + one of 60)</td><td>110</td></tr>
              <tr><td>50,000</td><td>128</td><td>391</td><td>3,910</td></tr>
            </tbody>
          </table>
          <p>Check the second row: 700 ÷ 32 = 21.875. Round up to 22. The last batch has 700 − 21 × 32 = 28 photos.</p>
        </div>
        <div class="lc-card">
          <h3>What batch size changes</h3>
          <p>Each batch gives an estimate of the gradient (the direction to change the weights). A small batch is a small sample, so its estimate is <strong>noisy</strong>. A big batch averages more examples, so its estimate is smoother.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Small batch (for example 8 to 32)</th><th>Large batch (for example 256 or more)</th></tr></thead>
            <tbody>
              <tr><td>Gradient</td><td>Noisy, jumps around</td><td>Smooth, stable</td></tr>
              <tr><td>Steps per epoch</td><td>Many</td><td>Few</td></tr>
              <tr><td>Memory per step</td><td>Low</td><td>High</td></tr>
              <tr><td>Speed on a GPU</td><td>The GPU may sit partly idle</td><td>Uses the GPU better, until memory runs out</td></tr>
              <tr><td>Learning rate</td><td>Usually a smaller one</td><td>Can often use a larger one</td></tr>
            </tbody>
          </table>
          <p>Some noise is not bad. It can help the model avoid poor solutions. Many projects start with 32 or 64 and change it only if memory or speed is a problem.</p>
          <p><strong>Memory arithmetic.</strong> A float32 number uses 4 bytes. One fruit batch of 32 images is 32 × 3 × 64 × 64 = 393,216 numbers. That is 1,572,864 bytes, about 1.6 MB. With batch size 256 it is about 12.6 MB. Part 2 in the code editor below does this sum. The layers inside the model store much more than the input. That memory also grows with the batch size. If you see an "out of memory" error, try a smaller batch first.</p>
        </div>
        <div class="lc-card">
          <h3>How many epochs? Use early stopping</h3>
          <p>Too few epochs and the model has not learned enough. This is <strong>underfitting</strong>. Too many epochs and it starts to memorise the training photos. This is <strong>overfitting</strong>. You see it in the chart above: training loss keeps falling, but validation loss goes up.</p>
          <p><strong>Early stopping</strong> watches the validation loss after every epoch:</p>
          <ol class="lc-list">
            <li>If the validation loss is the best so far, save a copy of the weights.</li>
            <li>If not, count one "bad" epoch.</li>
            <li>When the count reaches the <strong>patience</strong> (for example 5), stop.</li>
            <li>Load the saved best weights.</li>
          </ol>
          <p>Part 4 in the code editor below shows the idea in PyTorch. It starts with <code>best_loss = float("inf")</code>, <code>bad = 0</code> and <code>patience = 5</code>. It trains for at most 100 epochs. It saves the best weights with <code>copy.deepcopy(model.state_dict())</code> and loads them again at the end with <code>model.load_state_dict(best_state)</code>.</p>
          <p>The stop epoch depends on your data and model. In the loop, <code>model.train()</code> and <code>model.eval()</code> switch some layers between training and testing behaviour. You will learn more about them later in this course.</p>
          <p>PyTorch does not run in the browser, so run Part 4 on your own computer. Part 3 in the editor runs a NumPy version of the same loop.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: early stopping, epoch by epoch</h3>
          <p>Patience is 2. Follow the validation loss and decide what happens.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="result" data-label="Epoch 1">Validation loss 0.90. It is the first value, so it is the best. Save the weights.</li>
              <li data-kind="result" data-label="Epoch 2">Validation loss 0.62. New best. Save the weights. Bad count = 0.</li>
              <li data-kind="result" data-label="Epoch 3">Validation loss 0.55. New best. Save the weights. Bad count = 0.</li>
              <li data-kind="thought" data-label="Epoch 4">Validation loss 0.57. Not better than 0.55. Bad count = 1. Keep going.</li>
              <li data-kind="warn" data-label="Epoch 5">Validation loss 0.60. Still not better. Bad count = 2, which equals the patience.</li>
              <li data-kind="check" data-label="Stop">Training stops after epoch 5. Load the weights saved at epoch 3.</li>
              <li data-kind="answer" data-label="Result">The final model is the epoch 3 model, with validation loss 0.55.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code prints steps per epoch for the fruit project. Part 2 does the memory arithmetic. Part 3 trains a small network on 30 noisy examples, with early stopping. Part 4 is the PyTorch loop for your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 3, find the best epoch and the epoch where training stopped.</li>
            <li>Set <code>PATIENCE = 300</code> and <code>PRINT_EVERY = 25</code>. Now Part 3 runs all 300 epochs. Watch training loss fall while validation loss rises.</li>
            <li>Change <code>BATCH_SIZE</code> to 4, then to 30. Look at "steps per epoch" and "Total steps" in Part 3.</li>
            <li>In Part 1, add <code>128</code> to the list of batch sizes. How many steps per epoch is that?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Steps per epoch = examples ÷ batch size, rounded up. Smaller batches give noisier updates and use less memory. Let the validation loss decide the number of epochs with early stopping, and keep the best weights.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Batch size, epochs and early stopping, with NumPy.
        # A small neural network (1 hidden layer) learns a noisy 2-class problem.
        # There are only 30 training examples, so it starts to overfit after a while.
        import copy
        import math
        import numpy as np
        from sklearn.datasets import make_moons

        BATCH_SIZE = 16
        LR = 0.2
        MAX_EPOCHS = 300
        PATIENCE = 20            # stop after this many epochs with no new best val loss
        PRINT_EVERY = 5          # print one line every 5 epochs

        # ── Part 1: steps per epoch = examples / batch size, rounded up ──
        print("== Part 1: steps per epoch ==")
        print("Fruit project, 700 training photos:")
        for bs in [1, 16, 32, 64, 700]:
            print(f"  batch {bs:3} -> {math.ceil(700 / bs):3} steps per epoch")

        # ── Part 2: memory for one batch of input images ──
        print("\n== Part 2: memory for one batch ==")
        for bs in [32, 256]:
            numbers = bs * 3 * 64 * 64
            print(f"  batch {bs:3}: {numbers:,} numbers x 4 bytes = {numbers * 4:,} bytes = {numbers * 4 / 1e6:.1f} MB")

        # ── Part 3: train with mini-batches and stop early when val loss stops improving ──
        print("\n== Part 3: training with early stopping ==")
        X_tr, y_tr = make_moons(n_samples=30, noise=0.35, random_state=1)
        X_val, y_val = make_moons(n_samples=400, noise=0.35, random_state=2)
        steps = math.ceil(len(X_tr) / BATCH_SIZE)
        print(f"This demo: {len(X_tr)} examples / batch {BATCH_SIZE} = {steps} steps per epoch")

        rng = np.random.default_rng(42)
        W1 = rng.normal(0, 3.0, (2, 64)); b1 = np.zeros(64)
        W2 = rng.normal(0, 0.1, (64, 1)); b2 = np.zeros(1)

        def forward(X):
            h = np.tanh(X @ W1 + b1)
            p = 1 / (1 + np.exp(-(h @ W2 + b2)))
            return h, p[:, 0]

        def loss(X, y):
            p = np.clip(forward(X)[1], 1e-7, 1 - 1e-7)
            return -np.mean(y * np.log(p) + (1 - y) * np.log(1 - p))

        best, best_epoch, bad = float("inf"), 0, 0
        best_weights = None
        for epoch in range(1, MAX_EPOCHS + 1):
            order = rng.permutation(len(X_tr))               # shuffle every epoch
            for s in range(steps):                           # one step = one batch
                idx = order[s * BATCH_SIZE:(s + 1) * BATCH_SIZE]
                Xb, yb = X_tr[idx], y_tr[idx]
                h, p = forward(Xb)
                d2 = (p - yb)[:, None] / len(yb)             # backprop by hand
                d1 = (d2 @ W2.T) * (1 - h ** 2)
                W2 -= LR * h.T @ d2;  b2 -= LR * d2.sum(0)
                W1 -= LR * Xb.T @ d1; b1 -= LR * d1.sum(0)
            val = loss(X_val, y_val)
            if val < best:
                best, best_epoch, bad = val, epoch, 0
                best_weights = copy.deepcopy((W1, b1, W2, b2))   # remember the best weights
            else:
                bad += 1
            if epoch % PRINT_EVERY == 0 or bad >= PATIENCE:
                bar = "#" * int(val * 40)
                print(f"epoch {epoch:3}  train {loss(X_tr, y_tr):.3f}  val {val:.3f} {bar}")
            if bad >= PATIENCE:
                print(f"Early stop at epoch {epoch}. Best val loss {best:.3f} was at epoch {best_epoch}.")
                break
        print(f"Total steps: {epoch * steps}")
        W1, b1, W2, b2 = best_weights                        # go back to the best epoch
        print(f"Val loss with the saved best weights: {loss(X_val, y_val):.3f}")

        # ── Part 4: early stopping in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: early stopping in PyTorch ==")
        try:
            import torch
            from torch import nn
            from torch.utils.data import TensorDataset, DataLoader
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            device = "cpu"
            # Random "photos" so the example runs anywhere: 700 for training, 150 for validation
            train_loader = DataLoader(TensorDataset(torch.rand(700, 3, 64, 64), torch.randint(0, 3, (700,))),
                                      batch_size=32, shuffle=True)
            val_loader = DataLoader(TensorDataset(torch.rand(150, 3, 64, 64), torch.randint(0, 3, (150,))),
                                    batch_size=32)
            model = nn.Sequential(nn.Flatten(), nn.Linear(3 * 64 * 64, 3)).to(device)
            loss_fn = nn.CrossEntropyLoss()
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)

            best_loss, best_state, bad, patience = float("inf"), None, 0, 5

            for epoch in range(1, 101):                      # at most 100 epochs
                model.train()
                for xb, yb in train_loader:                  # 22 steps per epoch
                    xb, yb = xb.to(device), yb.to(device)
                    loss = loss_fn(model(xb), yb)
                    optimizer.zero_grad()
                    loss.backward()
                    optimizer.step()

                model.eval()
                with torch.no_grad():
                    val_loss = sum(loss_fn(model(xb.to(device)), yb.to(device)).item() * len(yb)
                                   for xb, yb in val_loader) / len(val_loader.dataset)

                if val_loss < best_loss:
                    best_loss, bad = val_loss, 0
                    best_state = copy.deepcopy(model.state_dict())   # remember the best weights
                else:
                    bad += 1
                    if bad >= patience:
                        print(f"Early stop at epoch {epoch}")
                        break

            model.load_state_dict(best_state)                # go back to the best epoch
            print(f"Best val loss: {best_loss:.3f}")
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Optimisers: SGD, Momentum, Adam</h1>
        </div>
        <p class="lc-lead">After each batch, the gradient tells you which way to change the weights. The <strong>optimiser</strong> decides how big a step to take, and in which exact direction. In this lesson, you will compare three optimisers on the same simple function: plain SGD, SGD with momentum, and Adam. You will also learn AdamW and weight decay, and the default values most people start with.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="Three panels show the path of SGD, Momentum and Adam over 50 steps in a long, narrow valley. SGD zigzags and ends far from the centre. Momentum swings past the centre and settles near it. Adam moves in a smoother curve and ends close to the centre.">
            <defs>
              <clipPath id="td8a"><rect x="10" y="40" width="240" height="180" rx="8"/></clipPath>
              <clipPath id="td8b"><rect x="260" y="40" width="240" height="180" rx="8"/></clipPath>
              <clipPath id="td8c"><rect x="510" y="40" width="240" height="180" rx="8"/></clipPath>
            </defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="130" y="26" font-weight="700" fill="#3b82f6">SGD</text>
              <rect x="10" y="40" width="240" height="180" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <g clip-path="url(#td8a)" fill="none" stroke="#4b4a78">
                <ellipse cx="198.1" cy="130" rx="41.9" ry="15.0"/>
                <ellipse cx="198.1" cy="130" rx="83.8" ry="30.0"/>
                <ellipse cx="198.1" cy="130" rx="125.7" ry="45.0"/>
                <ellipse cx="198.1" cy="130" rx="167.6" ry="60.0"/>
                <polyline points="30.5,55.0 33.7,197.5 36.8,69.3 39.9,184.7 42.9,80.8 45.8,174.3 48.7,90.1 51.5,165.9 54.3,97.7 57.1,159.1 59.7,103.8 62.4,153.5 64.9,108.8 67.5,149.1 70.0,112.8 72.4,145.4 74.8,116.1 77.1,142.5 79.4,118.7 81.7,140.1 83.9,120.9 86.1,138.2 88.2,122.6 90.3,136.6 92.3,124.0 94.3,135.4 96.3,125.2 98.2,134.4 100.1,126.1 102.0,133.5 103.8,126.8 105.6,132.9 107.4,127.4 109.1,132.3 110.8,127.9 112.4,131.9 114.1,128.3 115.7,131.5 117.2,128.6 118.8,131.2 120.3,128.9 121.8,131.0 123.2,129.1 124.6,130.8 126.0,129.3 127.4,130.7 128.7,129.4 130.1,130.5 131.3,129.5 132.6,130.4 133.9,129.6" stroke="#3b82f6" stroke-width="2"/>
              </g>
              <circle cx="30.5" cy="55.0" r="4" fill="#e2e0f0"/>
              <text x="38.5" y="47.0" font-size="11" fill="#9b99b8" text-anchor="start">start</text>
              <circle cx="198.1" cy="130" r="4" fill="#ec4899"/>
              <text x="130" y="242" font-size="12" fill="#9b99b8">zigzags across the valley</text>
              <text x="130" y="258" font-size="12" fill="#9b99b8">slow along the floor</text>
              <text x="130" y="280" font-size="12">loss after 50 steps: 4.70</text>
              <text x="380" y="26" font-weight="700" fill="#f59e0b">Momentum</text>
              <rect x="260" y="40" width="240" height="180" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <g clip-path="url(#td8b)" fill="none" stroke="#4b4a78">
                <ellipse cx="448.1" cy="130" rx="41.9" ry="15.0"/>
                <ellipse cx="448.1" cy="130" rx="83.8" ry="30.0"/>
                <ellipse cx="448.1" cy="130" rx="125.7" ry="45.0"/>
                <ellipse cx="448.1" cy="130" rx="167.6" ry="60.0"/>
                <polyline points="280.5,55.0 281.3,92.5 282.9,145.0 285.2,184.8 288.0,193.2 291.4,169.1 295.2,128.0 299.4,91.9 303.9,78.5 308.7,92.2 313.7,123.4 318.8,154.8 324.2,170.6 329.5,164.6 335.0,141.8 340.5,115.4 345.9,99.0 351.3,99.7 356.7,115.5 362.0,136.9 367.2,152.8 372.3,155.7 377.2,145.4 382.0,128.5 386.7,114.0 391.2,109.0 395.5,114.9 399.7,127.9 403.6,140.6 407.5,146.7 411.1,143.9 414.5,134.4 417.8,123.7 420.9,117.2 423.8,117.7 426.6,124.4 429.2,133.2 431.6,139.5 433.9,140.4 436.0,136.1 437.9,129.1 439.8,123.3 441.4,121.4 443.0,124.0 444.4,129.3 445.7,134.5 446.8,136.9 447.9,135.6 448.9,131.6 449.7,127.3 450.5,124.7" stroke="#f59e0b" stroke-width="2"/>
              </g>
              <circle cx="280.5" cy="55.0" r="4" fill="#e2e0f0"/>
              <text x="288.5" y="47.0" font-size="11" fill="#9b99b8" text-anchor="start">start</text>
              <circle cx="448.1" cy="130" r="4" fill="#ec4899"/>
              <text x="380" y="242" font-size="12" fill="#9b99b8">builds up speed</text>
              <text x="380" y="258" font-size="12" fill="#9b99b8">overshoots, then settles</text>
              <text x="380" y="280" font-size="12">loss after 50 steps: 0.26</text>
              <text x="630" y="26" font-weight="700" fill="#10b981">Adam</text>
              <rect x="510" y="40" width="240" height="180" rx="8" fill="#1f1f44" stroke="#4b4a78"/>
              <g clip-path="url(#td8c)" fill="none" stroke="#4b4a78">
                <ellipse cx="698.1" cy="130" rx="41.9" ry="15.0"/>
                <ellipse cx="698.1" cy="130" rx="83.8" ry="30.0"/>
                <ellipse cx="698.1" cy="130" rx="125.7" ry="45.0"/>
                <ellipse cx="698.1" cy="130" rx="167.6" ry="60.0"/>
                <polyline points="530.5,55.0 541.0,92.5 551.4,127.5 561.8,155.2 572.2,170.7 582.4,173.9 592.6,168.3 602.6,157.3 612.5,143.4 622.2,129.1 631.6,116.5 640.8,107.3 649.7,102.6 658.3,102.6 666.5,106.5 674.3,113.4 681.7,121.9 688.5,130.8 694.9,138.7 700.7,144.7 706.0,147.9 710.7,148.2 714.8,145.7 718.3,141.2 721.2,135.4 723.5,129.4 725.3,123.9 726.5,119.9 727.2,117.8 727.4,117.9 727.2,119.8 726.6,123.2 725.6,127.4 724.3,131.6 722.7,135.2 720.9,137.6 718.9,138.5 716.8,137.9 714.6,135.9 712.3,133.1 710.0,130.0 707.7,127.2 705.4,125.2 703.3,124.2 701.2,124.3 699.3,125.5 697.5,127.5 695.9,129.7 694.5,131.8 693.3,133.3 692.3,134.1" stroke="#10b981" stroke-width="2"/>
              </g>
              <circle cx="530.5" cy="55.0" r="4" fill="#e2e0f0"/>
              <text x="538.5" y="47.0" font-size="11" fill="#9b99b8" text-anchor="start">start</text>
              <circle cx="698.1" cy="130" r="4" fill="#ec4899"/>
              <text x="630" y="242" font-size="12" fill="#9b99b8">similar step size</text>
              <text x="630" y="258" font-size="12" fill="#9b99b8">in each direction</text>
              <text x="630" y="280" font-size="12">loss after 50 steps: 0.19</text>
            </g>
          </svg>
          <figcaption>Real paths from the starter code. The ellipses are lines of equal loss in a long, narrow valley. The pink dot is the lowest point. Each optimiser takes 50 steps from the same start.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The test function: a long, narrow valley</h3>
          <p>Real loss surfaces have millions of dimensions. We use a tiny one with two weights, <code>w0</code> and <code>w1</code>:</p>
          <p><code>loss = 0.5 × (w0² + 100 × w1²)</code></p>
          <p>The lowest point is <code>(0, 0)</code>. The surface is 100 times steeper in the <code>w1</code> direction than in the <code>w0</code> direction. Deep networks often have valleys like this. That is why the choice of optimiser matters.</p>
          <p>The gradient is <code>(w0, 100 × w1)</code>. At the start point <code>(-8, 1)</code> it is <code>(-8, 100)</code>. The loss there is 0.5 × (64 + 100) = 82.</p>
        </div>
        <div class="lc-card">
          <h3>Three update rules</h3>
          <p>In these rules, <code>g</code> is the gradient and <code>lr</code> is the <strong>learning rate</strong> (the size of the step).</p>
          <table class="lc-table">
            <thead><tr><th>Optimiser</th><th>Update rule</th><th>In simple words</th></tr></thead>
            <tbody>
              <tr><td>SGD</td><td><code>w = w - lr × g</code></td><td>Step straight downhill.</td></tr>
              <tr><td>Momentum</td><td><code>v = 0.9 × v + g</code><br><code>w = w - lr × v</code></td><td>Keep a running "velocity". Past gradients keep pushing you, like a ball rolling downhill.</td></tr>
              <tr><td>Adam</td><td><code>m = 0.9 × m + 0.1 × g</code><br><code>s = 0.999 × s + 0.001 × g²</code><br><code>w = w - lr × m / (√s + ε)</code></td><td>Keep an average gradient <code>m</code> and an average squared gradient <code>s</code>. Divide by <code>√s</code>, so every weight gets a step of a similar size.</td></tr>
            </tbody>
          </table>
          <p>Adam also corrects <code>m</code> and <code>s</code> in the first few steps, because they start at zero. The starter code shows this "bias correction". The tiny number <code>ε</code> (epsilon) stops a division by zero.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the first step</h3>
          <p>Start at <code>w = (-8, 1)</code>. The gradient is <code>g = (-8, 100)</code>.</p>
          <ul class="lc-list">
            <li><strong>SGD, lr 0.019:</strong> the step is 0.019 × (-8, 100) = (-0.152, 1.9). So <code>w</code> becomes (-7.848, -0.9). The <code>w1</code> step is huge, and it jumps past 0. The <code>w0</code> step is tiny.</li>
            <li><strong>Adam, lr 0.5:</strong> after bias correction, <code>m / √s</code> is (-1, 1) on the first step. So the step is 0.5 in each direction, and <code>w</code> becomes (-7.5, 0.5).</li>
          </ul>
          <p>Check the loss after this one step. SGD: 0.5 × (7.848² + 100 × 0.9²) = 71.30. Adam: 0.5 × (7.5² + 100 × 0.5²) = 40.63. These numbers match the first row of the starter code's table.</p>
          <p>This is the key problem with plain SGD. If <code>lr</code> is bigger than 0.02, the steep <code>w1</code> direction blows up. But with <code>lr</code> below 0.02, the flat <code>w0</code> direction moves very slowly. After 50 steps, the loss is 4.70 for SGD, 0.26 for momentum and 0.19 for Adam.</p>
        </div>
        <div class="lc-card">
          <h3>Optimisers in PyTorch, AdamW and weight decay</h3>
          <p>In PyTorch, each optimiser is one line: <code>torch.optim.SGD</code> (add <code>momentum=0.9</code> for momentum), <code>torch.optim.Adam</code> and <code>torch.optim.AdamW</code>. Part 3 in the code editor below makes all four on a tiny model. Run that part on your own computer.</p>
          <p>AdamW's default settings are <code>betas=(0.9, 0.999)</code>, <code>eps=1e-8</code> and <code>weight_decay=0.01</code>. The betas are the 0.9 and 0.999 in Adam's update rule above.</p>
          <p>In real code, you create only one optimiser. The training loop then calls <code>optimizer.zero_grad()</code>, <code>loss.backward()</code> and <code>optimizer.step()</code> for every batch. Part 3 also does one such step.</p>
          <p><strong>Weight decay</strong> pulls every weight a little towards zero at each step. This stops weights from growing very large, which often helps against overfitting.</p>
          <p>In <code>Adam</code>, the <code>weight_decay</code> option adds the decay to the gradient. Adam then rescales it, which weakens the effect for some weights. <strong>AdamW</strong> applies the decay to the weights directly, separate from the gradient. This usually works better, so AdamW is a common default for deep models.</p>
          <table class="lc-table">
            <thead><tr><th>Optimiser</th><th>Good starting values</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>AdamW</td><td><code>lr=1e-3</code>, <code>weight_decay=0.01</code></td><td>These are PyTorch's defaults. A safe first choice.</td></tr>
              <tr><td>Adam</td><td><code>lr=1e-3</code></td><td>Default <code>weight_decay</code> is 0.</td></tr>
              <tr><td>SGD + momentum</td><td><code>lr=0.01</code> to <code>0.1</code>, <code>momentum=0.9</code></td><td>Needs more tuning. Still common for training image models from scratch.</td></tr>
            </tbody>
          </table>
          <p>Defaults can change between versions, so always set <code>lr</code> yourself and check the current PyTorch docs. PyTorch does not run in the browser, so Parts 1 and 2 in the code editor use NumPy.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: which optimiser?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Match each description to the optimiser it fits best.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="sgd" data-label="Plain SGD"></div>
              <div data-sorter-target="bucket" data-bucket="mom" data-label="SGD + momentum"></div>
              <div data-sorter-target="bucket" data-bucket="adam" data-label="Adam / AdamW"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="sgd" data-why="Plain SGD multiplies the gradient by the learning rate and nothing else.">Uses only the current gradient and the learning rate</li>
              <li data-bucket="mom" data-why="The velocity v adds up past gradients, so the weights keep moving in a steady direction.">Keeps a velocity that remembers past gradients</li>
              <li data-bucket="adam" data-why="Dividing by the root of the average squared gradient gives each weight a similar step size.">Divides by the average squared gradient for each weight</li>
              <li data-bucket="adam" data-why="AdamW with lr 1e-3 and weight_decay 0.01 is a common safe start.">A common first choice for a new deep learning project</li>
              <li data-bucket="sgd" data-why="With a steep and a flat direction, a learning rate that is safe for the steep one is too slow for the flat one.">Crawls along a flat valley floor when the learning rate must stay small</li>
              <li data-bucket="mom" data-why="Speed built up from past steps can carry the weights past the lowest point.">Can overshoot the lowest point and swing back</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 of the starter code runs SGD, momentum and Adam for 50 steps on the narrow valley and prints the loss at some steps. Part 2 prints the final weights. Part 3 makes the PyTorch optimisers on your own computer.</p>
          <ol class="lc-list">
            <li>Change <code>LR_SGD</code> to 0.021. The steep direction blows up, and the SGD loss in Part 1 becomes huge.</li>
            <li>Change <code>LR_MOMENTUM</code> to 0.002. Momentum is now slower. Try 0.01 as well.</li>
            <li>Change <code>LR_ADAM</code> to 0.1. Adam's steps are now about 0.1 each, so 50 steps are not enough to get close. Look at Adam's final weights in Part 2.</li>
            <li>Set <code>SCALE = np.array([1.0, 1.0])</code> to make a round bowl. Now plain SGD can use a much larger learning rate. Try <code>LR_SGD = 0.5</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> SGD steps straight downhill. Momentum adds speed from past steps. Adam gives each weight its own step size. Start with AdamW (lr 1e-3, weight decay 0.01), and tune the learning rate first.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # SGD, Momentum and Adam on the same simple "loss" function, with NumPy.
        # loss(w) = 0.5 * (w0**2 + 100 * w1**2). The best point is w = (0, 0).
        # The valley is steep in w1 and flat in w0. That is hard for plain SGD.
        import numpy as np

        STEPS = 50
        START = np.array([-8.0, 1.0])
        LR_SGD = 0.019          # try 0.021: the steep direction blows up
        LR_MOMENTUM = 0.005
        LR_ADAM = 0.5
        SCALE = np.array([1.0, 100.0])

        # ── Part 1: the loss, its gradient and three optimisers ──
        print("== Part 1: SGD, momentum and Adam, step by step ==")
        def loss(w):
            return 0.5 * np.sum(SCALE * w ** 2)

        def grad(w):
            return SCALE * w                     # slope of the loss at w

        def sgd(w):
            for t in range(STEPS):
                w = w - LR_SGD * grad(w)
                yield w

        def momentum(w, beta=0.9):
            v = np.zeros_like(w)
            for t in range(STEPS):
                v = beta * v + grad(w)           # a running sum of past gradients
                w = w - LR_MOMENTUM * v
                yield w

        def adam(w, b1=0.9, b2=0.999, eps=1e-8):
            m = np.zeros_like(w); s = np.zeros_like(w)
            for t in range(1, STEPS + 1):
                g = grad(w)
                m = b1 * m + (1 - b1) * g        # average gradient (like momentum)
                s = b2 * s + (1 - b2) * g ** 2   # average squared gradient
                m_hat = m / (1 - b1 ** t)        # bias correction for the first steps
                s_hat = s / (1 - b2 ** t)
                w = w - LR_ADAM * m_hat / (np.sqrt(s_hat) + eps)
                yield w

        print(f"start w = {START.tolist()}, loss = {loss(START):.2f}\n")
        print("loss after each step:")
        print("step        SGD   Momentum       Adam")
        runs = [list(sgd(START)), list(momentum(START)), list(adam(START))]
        for t in [1, 2, 5, 10, 20, 30, 40, 50]:
            print(f"{t:4} " + " ".join(f"{loss(r[t - 1]):10.4f}" for r in runs))

        # ── Part 2: where each optimiser ends ──
        print("\n== Part 2: final weights after", STEPS, "steps ==")
        for name, r in zip(["SGD", "Momentum", "Adam"], runs):
            w = r[-1]
            print(f"  {name:9} w = [{w[0]:7.3f}, {w[1]:7.3f}]  " + "#" * min(40, int(loss(w) * 10)))

        # ── Part 3: optimisers in PyTorch, AdamW and weight decay (run this part on your own computer) ──
        print("\n== Part 3: optimisers in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            model = nn.Linear(4, 3)                 # a tiny model, just for this example

            sgd_opt  = torch.optim.SGD(model.parameters(), lr=0.01)
            mom_opt  = torch.optim.SGD(model.parameters(), lr=0.01, momentum=0.9)
            adam_opt = torch.optim.Adam(model.parameters(), lr=1e-3)
            adamw    = torch.optim.AdamW(model.parameters(), lr=1e-3, weight_decay=0.01)

            # The defaults of AdamW: betas, eps, weight_decay -> (0.9, 0.999) 1e-08 0.01
            print(adamw.defaults["betas"], adamw.defaults["eps"], adamw.defaults["weight_decay"])

            # In real code you create only ONE optimiser. Then, for every batch:
            xb, yb = torch.randn(8, 4), torch.randint(0, 3, (8,))
            loss_fn = nn.CrossEntropyLoss()
            loss_value = loss_fn(model(xb), yb)
            adamw.zero_grad()
            loss_value.backward()
            adamw.step()
            print("one AdamW step done, loss before the step:", round(loss_value.item(), 3))
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Learning Rate Schedules</h1>
        </div>
        <p class="lc-lead">The <strong>learning rate</strong> sets how big each update step is. A good value at the start of training is often too big near the end. A <strong>learning rate schedule</strong> changes the learning rate while you train. In this lesson, you will learn step decay, cosine decay and warmup, and how to use them in PyTorch.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A chart of learning rate against epoch for 12 epochs. The constant schedule stays at 0.5. Step decay halves every 4 epochs: 0.5, then 0.25, then 0.125. Cosine with warmup rises from 0.25 to 0.5 in 2 epochs, then falls smoothly towards 0.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0">
              <rect x="10" y="10" width="740" height="270" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <g stroke="#4b4a78" stroke-width="1">
                <line x1="80" y1="50" x2="520" y2="50"/>
                <line x1="80" y1="95" x2="520" y2="95"/>
                <line x1="80" y1="140" x2="520" y2="140"/>
                <line x1="80" y1="185" x2="520" y2="185"/>
              </g>
              <line x1="80" y1="230" x2="530" y2="230" stroke="#9b99b8"/>
              <line x1="80" y1="40" x2="80" y2="230" stroke="#9b99b8"/>
              <g font-size="11" fill="#9b99b8" text-anchor="end">
                <text x="72" y="54">0.5</text>
                <text x="72" y="99">0.375</text>
                <text x="72" y="144">0.25</text>
                <text x="72" y="189">0.125</text>
                <text x="72" y="234">0</text>
              </g>
              <g font-size="11" fill="#9b99b8" text-anchor="middle">
                <text x="80" y="248">0</text>
                <text x="160" y="248">2</text>
                <text x="240" y="248">4</text>
                <text x="320" y="248">6</text>
                <text x="400" y="248">8</text>
                <text x="480" y="248">10</text>
              </g>
              <text x="300" y="268" font-size="12" fill="#9b99b8" text-anchor="middle">epoch</text>
              <text x="40" y="30" font-size="12" fill="#9b99b8" text-anchor="middle">lr</text>
              <polyline points="80,50 240,50 240,140 400,140 400,185 520,185" fill="none" stroke="#f59e0b" stroke-width="3"/>
              <polyline points="80,140 120,50 160,50 200,54.4 240,67.2 280,87.1 320,112.2 360,140 400,167.8 440,192.9 480,212.8 520,225.6" fill="none" stroke="#10b981" stroke-width="3"/>
              <line x1="80" y1="50" x2="520" y2="50" stroke="#e2e0f0" stroke-width="2" stroke-dasharray="6 5"/>
              <g fill="#10b981"><circle cx="80" cy="140" r="4"/><circle cx="120" cy="50" r="4"/><circle cx="520" cy="225.6" r="4"/></g>
              <text x="132" y="78" font-size="11" fill="#6ee7b7">warmup</text>
              <rect x="550" y="40" width="190" height="130" rx="10" fill="#27274e" stroke="#4b4a78"/>
              <line x1="565" y1="70" x2="600" y2="70" stroke="#e2e0f0" stroke-width="2" stroke-dasharray="6 5"/>
              <text x="610" y="74">constant</text>
              <line x1="565" y1="105" x2="600" y2="105" stroke="#f59e0b" stroke-width="3"/>
              <text x="610" y="109" fill="#fcd34d">step decay</text>
              <line x1="565" y1="140" x2="600" y2="140" stroke="#10b981" stroke-width="3"/>
              <text x="610" y="144" fill="#6ee7b7">cosine + warmup</text>
              <text x="645" y="200" font-size="11" fill="#9b99b8" text-anchor="middle">peak lr 0.5, 12 epochs</text>
              <text x="645" y="218" font-size="11" fill="#9b99b8" text-anchor="middle">numbers from the</text>
              <text x="645" y="236" font-size="11" fill="#9b99b8" text-anchor="middle">starter code below</text>
            </g>
          </svg>
          <figcaption>Three schedules over 12 epochs. Step decay drops in jumps. Cosine with warmup climbs for 2 epochs, then falls smoothly to almost 0.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why change the learning rate?</h3>
          <p>At the start, the weights are far from good values. Big steps help you move quickly. Near the end, the weights are close to a good spot. Big steps now jump over it, and the loss bounces up and down.</p>
          <p>Mini-batches also add <strong>noise</strong>. Each batch gives a slightly different gradient. A smaller learning rate near the end averages out this noise, so the model settles.</p>
          <p>So most training runs follow one simple plan:</p>
          <ul class="lc-list">
            <li><strong>Start</strong> with a fairly high learning rate (sometimes after a short warmup).</li>
            <li><strong>Lower</strong> it as training goes on.</li>
            <li><strong>Finish</strong> with a very small learning rate.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Step decay, cosine and warmup</h3>
          <table class="lc-table">
            <thead><tr><th>Schedule</th><th>Rule</th><th>Example (peak 0.5)</th></tr></thead>
            <tbody>
              <tr><td>Constant</td><td>The same value every epoch</td><td>0.5, 0.5, 0.5, ...</td></tr>
              <tr><td>Step decay</td><td>Multiply by <code>gamma</code> every <code>step_size</code> epochs</td><td>gamma 0.5, step 4: 0.5 for epochs 0-3, 0.25 for 4-7, 0.125 for 8-11</td></tr>
              <tr><td>Cosine</td><td>Follow half of a cosine curve from the peak down to a minimum</td><td>Falls slowly at first, fast in the middle, slowly at the end</td></tr>
              <tr><td>Warmup</td><td>Grow from a small value up to the peak over the first steps</td><td>2 warmup epochs: 0.25, then 0.5</td></tr>
            </tbody>
          </table>
          <p>The cosine rule is: lr = peak × 0.5 × (1 + cos(π × progress)). Here <strong>progress</strong> goes from 0 at the start to 1 at the end.</p>
          <p>A worked example: halfway through, progress is 0.5. cos(π × 0.5) = 0. So lr = 0.5 × 0.5 × (1 + 0) = 0.25. That is half the peak.</p>
          <p><strong>Warmup</strong> helps because the first updates can be wild. The weights are random, and Adam's running averages are based on only a few gradients. Small first steps keep training stable. Warmup is common for large models and big batch sizes.</p>
        </div>
        <div class="lc-card">
          <h3>Schedulers in PyTorch</h3>
          <p>PyTorch keeps schedulers in <code>torch.optim.lr_scheduler</code>. A scheduler wraps your optimiser and changes its learning rate. Part 3 in the code editor below does step decay with <code>StepLR</code>, starting at 0.1 with <code>step_size=3</code> and <code>gamma=0.5</code>.</p>
          <p>With this setup, the learning rate is 0.1 for epochs 0 to 2. It is 0.05 for epochs 3 to 5, and 0.025 after that.</p>
          <p>Call <code>scheduler.step()</code> after <code>optimizer.step()</code>. If you swap them, PyTorch prints a warning, and the first learning rate is skipped.</p>
          <p>For warmup plus cosine, you can write the rule yourself with <code>LambdaLR</code>. You give it a function of the epoch that returns a number. The scheduler multiplies the base learning rate by that number. Part 4 in the code editor does this with 2 warmup epochs and 10 epochs in total. The <code>cosine_warmup</code> function in Part 1 is the same kind of rule, written in plain Python.</p>
          <p>PyTorch also has ready-made schedulers: <code>CosineAnnealingLR</code>, <code>LinearLR</code> for warmup, <code>SequentialLR</code> to join two of them, and <code>OneCycleLR</code>. <code>ReduceLROnPlateau</code> is different: it lowers the learning rate only when the validation loss stops improving. You call it as <code>scheduler.step(val_loss)</code>. Check the PyTorch docs for the full list.</p>
          <p>These examples step once per <strong>epoch</strong>. Some schedules, such as <code>OneCycleLR</code> and many warmups, step once per <strong>batch</strong>. With 700 training photos and a batch size of 32, that is 22 scheduler steps per epoch.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one training step in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put one training step in the right order. The scheduler steps once per batch in this loop.</p>
            <ol data-sequence-target="list">
              <li data-order="1">optimizer.zero_grad() clears the old gradients</li>
              <li data-order="2">The model makes predictions for the batch</li>
              <li data-order="3">The loss function compares predictions with labels</li>
              <li data-order="4">loss.backward() computes the gradients</li>
              <li data-order="5">optimizer.step() updates the weights with the current learning rate</li>
              <li data-order="6">scheduler.step() sets the learning rate for the next batch</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the editor prints the three schedules. Part 2 trains a tiny model (y = 3x + 2) with each one. The "best" line is the exact best answer. Parts 3 and 4 use PyTorch, so they only print a message in the browser. Run them on your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 2, compare the final loss of <code>constant</code> with <code>cosine</code>. Which one gets closer to "best"?</li>
            <li>In Part 1, change <code>BASE_LR</code> to <code>0.8</code>. The constant schedule now fails badly, but the decaying ones still work.</li>
            <li>Change <code>BASE_LR</code> to <code>1.0</code>. Now every schedule fails. A schedule cannot rescue a peak that is far too high.</li>
            <li>In Part 1, set <code>WARMUP = 0</code> and look at the cosine column. Then change <code>gamma=0.5</code> to <code>0.1</code> in <code>step_decay</code>.</li>
            <li>On your own computer, run Part 3. Check that the learning rate halves after epochs 2 and 5.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Take big steps early and small steps late. Warmup plus cosine decay is a safe default for many models. Call scheduler.step() after optimizer.step().
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Learning rate schedules: print each schedule, train with it, then do the same in PyTorch.
        import math
        import numpy as np

        # ── Part 1: three schedules side by side ──
        print("== Part 1: three schedules ==")
        BASE_LR = 0.5      # the starting (peak) learning rate
        EPOCHS = 12
        WARMUP = 2         # warmup epochs for the cosine schedule

        def constant(epoch):
            return BASE_LR

        def step_decay(epoch, step_size=4, gamma=0.5):
            # Halve the learning rate every 4 epochs.
            return BASE_LR * gamma ** (epoch // step_size)

        def cosine_warmup(epoch):
            if epoch < WARMUP:
                return BASE_LR * (epoch + 1) / WARMUP
            progress = (epoch - WARMUP) / (EPOCHS - WARMUP)
            return BASE_LR * 0.5 * (1 + math.cos(math.pi * progress))

        SCHEDULES = {"constant": constant, "step": step_decay, "cosine": cosine_warmup}

        print("epoch  constant  step    cosine   cosine bar")
        for e in range(EPOCHS):
            c, s, k = constant(e), step_decay(e), cosine_warmup(e)
            print(f"{e:5d}  {c:.4f}    {s:.4f}  {k:.4f}   " + "#" * round(k / BASE_LR * 20))

        # ── Part 2: train a tiny model (y = 3x + 2) with each schedule ──
        print("\n== Part 2: train with each schedule ==")
        np.random.seed(42)
        x = np.random.rand(200)
        y = 3 * x + 2 + np.random.randn(200) * 0.5

        print("schedule   final w  final b  loss")
        for name, schedule in SCHEDULES.items():
            w, b = 0.0, 0.0
            for epoch in range(EPOCHS):
                lr = schedule(epoch)
                for start in range(0, 200, 10):            # batches of 10
                    xb, yb = x[start:start + 10], y[start:start + 10]
                    error = (w * xb + b) - yb
                    w -= lr * 2 * np.mean(error * xb)     # gradient step for w
                    b -= lr * 2 * np.mean(error)          # gradient step for b
            loss = np.mean((w * x + b - y) ** 2)
            print(f"{name:9s}  {w:7.3f}  {b:7.3f}  {loss:.4f}")

        best_w, best_b = np.polyfit(x, y, 1)               # the exact best straight line
        print(f"best       {best_w:7.3f}  {best_b:7.3f}  {np.mean((best_w * x + best_b - y) ** 2):.4f}")

        # ── Part 3: step decay with StepLR in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: StepLR in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            model = nn.Linear(4, 3)
            optimizer = torch.optim.SGD(model.parameters(), lr=0.1)
            scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=3, gamma=0.5)

            for epoch in range(8):
                # ... one epoch of training goes here (forward, loss, backward) ...
                optimizer.step()
                print(f"epoch {epoch}  lr {scheduler.get_last_lr()[0]:.4f}")
                scheduler.step()          # once per epoch, after optimizer.step()

        # ── Part 4: warmup + cosine with LambdaLR in PyTorch (run this part on your own computer) ──
        print("\n== Part 4: warmup + cosine with LambdaLR ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            EPOCHS, WARMUP = 10, 2

            def lr_factor(epoch):
                # The scheduler multiplies the base lr by this number.
                if epoch < WARMUP:
                    return (epoch + 1) / WARMUP                 # warmup: grow in a straight line
                progress = (epoch - WARMUP) / (EPOCHS - WARMUP)  # 0.0 up to nearly 1.0
                return 0.5 * (1 + math.cos(math.pi * progress))  # cosine: fall from 1 towards 0

            torch.manual_seed(42)
            model = nn.Linear(4, 3)
            optimizer = torch.optim.AdamW(model.parameters(), lr=0.001)
            scheduler = torch.optim.lr_scheduler.LambdaLR(optimizer, lr_factor)

            for epoch in range(EPOCHS):
                optimizer.step()
                print(f"epoch {epoch}  lr {scheduler.get_last_lr()[0]:.6f}")
                scheduler.step()
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Weight Initialisation</h1>
        </div>
        <p class="lc-lead">Before training starts, every weight needs a first value. This is called <strong>weight initialisation</strong>. Bad starting values can make a deep network fail before it learns anything. In this lesson, you will see why zeros do not work and why the size of random weights matters. Then you will learn Xavier and He initialisation.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 305" role="img" aria-label="The size of the activations after layers 1, 5, 10, 15 and 20 of a deep ReLU network. With weights that are too small, the size falls from 0.094 to 6.5e-20. With He initialisation it stays near 1. With weights that are too big, it grows from 1.86 to 15,700,000.">
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="740" height="285" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <g font-size="12" fill="#9b99b8">
                <text x="270" y="38">layer 1</text>
                <text x="380" y="38">layer 5</text>
                <text x="490" y="38">layer 10</text>
                <text x="600" y="38">layer 15</text>
                <text x="710" y="38">layer 20</text>
              </g>
              <g text-anchor="start">
                <text x="28" y="84" font-weight="700" fill="#93c5fd">Too small</text>
                <text x="28" y="102" font-size="11" fill="#9b99b8">std 0.01: vanishing</text>
                <text x="28" y="164" font-weight="700" fill="#6ee7b7">He</text>
                <text x="28" y="182" font-size="11" fill="#9b99b8">std 0.088: stable</text>
                <text x="28" y="244" font-weight="700" fill="#f9a8d4">Too big</text>
                <text x="28" y="262" font-size="11" fill="#9b99b8">std 0.2: exploding</text>
              </g>
              <g stroke="#4b4a78" stroke-dasharray="3 4">
                <line x1="200" y1="87" x2="740" y2="87"/>
                <line x1="200" y1="167" x2="740" y2="167"/>
                <line x1="200" y1="247" x2="740" y2="247"/>
              </g>
              <g font-size="12">
                <circle cx="270" cy="87" r="8.4" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/><text x="270" y="125">0.094</text>
                <circle cx="380" cy="87" r="2.5" fill="#3b82f6" stroke="#3b82f6"/><text x="380" y="125">0.000015</text>
                <circle cx="490" cy="87" r="2.5" fill="#3b82f6" stroke="#3b82f6"/><text x="490" y="125">2.6e-10</text>
                <circle cx="600" cy="87" r="2.5" fill="#3b82f6" stroke="#3b82f6"/><text x="600" y="125">3.4e-15</text>
                <circle cx="710" cy="87" r="2.5" fill="#3b82f6" stroke="#3b82f6"/><text x="710" y="125">6.5e-20</text>
                <circle cx="270" cy="167" r="11.7" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/><text x="270" y="205">0.83</text>
                <circle cx="380" cy="167" r="11.8" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/><text x="380" y="205">0.86</text>
                <circle cx="490" cy="167" r="11.9" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/><text x="490" y="205">0.95</text>
                <circle cx="600" cy="167" r="12.1" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/><text x="600" y="205">1.00</text>
                <circle cx="710" cy="167" r="11.9" fill="#10b981" fill-opacity="0.35" stroke="#10b981"/><text x="710" y="205">0.92</text>
                <circle cx="270" cy="247" r="13" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/><text x="270" y="285">1.86</text>
                <circle cx="380" cy="247" r="18" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/><text x="380" y="285">47.6</text>
                <circle cx="490" cy="247" r="24" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/><text x="490" y="285">3,620</text>
                <circle cx="600" cy="247" r="24" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/><text x="600" y="285">224,000</text>
                <circle cx="710" cy="247" r="24" fill="#ec4899" fill-opacity="0.35" stroke="#ec4899"/><text x="710" y="285">15,700,000</text>
              </g>
            </g>
          </svg>
          <figcaption>The standard deviation (typical size) of the activations in a 20-layer ReLU network, 256 neurons wide. Only the weight size changes between the rows. The numbers come from the starter code below.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why not start with zeros?</h3>
          <p>Imagine every weight starts at 0, or at the same number. Then every neuron in a layer computes the same output. They also get the same gradient, so they get the same update. They stay twins forever. A layer of 256 identical neurons is no better than one neuron.</p>
          <p>Part 2 of the code below shows this. Two hidden neurons start with the same weights (0.5) and train for three steps. Run it to see the result. The weights change, but both neurons end with the same weights, 0.465 and 0.43.</p>
          <p> Random starting values <strong>break the symmetry</strong>, so each neuron can learn something different. Biases are different: starting them at 0 is fine and common.</p>
        </div>
        <div class="lc-card">
          <h3>Random, but how big?</h3>
          <p>Each layer multiplies its input by a weight matrix. Every output adds up many inputs times weights. The number of inputs to a neuron is called <strong>fan_in</strong>. The number of outputs is called <strong>fan_out</strong>.</p>
          <ul class="lc-list">
            <li><strong>Weights too small:</strong> each layer shrinks the signal. After 20 layers it is almost 0. The gradients shrink too, so early layers stop learning. This is called <strong>vanishing</strong>.</li>
            <li><strong>Weights too big:</strong> each layer makes the signal bigger. Values and gradients become huge, and the loss can turn into NaN (not a number). This is called <strong>exploding</strong>.</li>
            <li><strong>Just right:</strong> the signal keeps about the same size in every layer.</li>
          </ul>
          <p>The right size depends on fan_in. A neuron with 256 inputs adds up 256 terms. So its weights must be smaller than those of a neuron with 10 inputs.</p>
        </div>
        <div class="lc-card">
          <h3>Xavier and He initialisation</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Standard deviation of the weights</th><th>Use it with</th></tr></thead>
            <tbody>
              <tr><td>Xavier (also called Glorot)</td><td>√(2 ÷ (fan_in + fan_out))</td><td>tanh and sigmoid</td></tr>
              <tr><td>He (also called Kaiming)</td><td>√(2 ÷ fan_in)</td><td>ReLU and Leaky ReLU</td></tr>
            </tbody>
          </table>
          <p>A worked example: a layer with 256 inputs and 128 outputs.</p>
          <ul class="lc-list">
            <li>He: √(2 ÷ 256) = √0.0078 = <strong>0.0884</strong>.</li>
            <li>Xavier: √(2 ÷ (256 + 128)) = √0.0052 = <strong>0.0722</strong>.</li>
          </ul>
          <p>Why does He have a 2 on top? ReLU sets about half of its inputs to 0. That halves the signal. The 2 makes up for it.</p>
          <p>Both methods also have a "uniform" version. It draws weights evenly from a range instead of a bell curve. The idea is the same.</p>
        </div>
        <div class="lc-card">
          <h3>Initialisation in PyTorch</h3>
          <p>PyTorch layers already start with sensible random weights. For <code>nn.Linear</code>, the default draws each weight evenly between −1/√fan_in and +1/√fan_in. You can choose another method with <code>torch.nn.init</code>. Functions that end in <code>_</code> change the tensor in place. For example, <code>nn.init.kaiming_normal_</code> gives He weights, and <code>nn.init.xavier_normal_</code> gives Xavier weights. Part 3 in the code editor below tries both on a layer with 256 inputs and 128 outputs. The measured standard deviation is close to the formula, but not exact, because the weights are random. He gives 0.0891 against the target 0.0884, and Xavier gives 0.0726 against 0.0722.</p>
          <p>To set up a whole model, write a small function, <code>init_weights</code>, and pass it to <code>model.apply</code>. It runs on every layer. Part 4 in the code editor uses it to give every <code>nn.Linear</code> He weights and zero biases.</p>
          <p>The input size 12288 is one fruit photo flattened: 3 × 64 × 64. Normalisation layers, which you will meet next, make deep networks less sensitive to the starting weights. Good initialisation still matters.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: pick the starting weights</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Which initialisation fits each case?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="he" data-label="He (Kaiming)"></div>
              <div data-sorter-target="bucket" data-bucket="xavier" data-label="Xavier (Glorot)"></div>
              <div data-sorter-target="bucket" data-bucket="never" data-label="Never do this"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="he" data-why="He initialisation was designed for ReLU. Its factor of 2 makes up for the half of the values that ReLU sets to 0.">Hidden layers with ReLU</li>
              <li data-bucket="xavier" data-why="Xavier keeps the signal size steady for activations like tanh, which are roughly linear near 0.">Hidden layers with tanh</li>
              <li data-bucket="he" data-why="Leaky ReLU is very close to ReLU, so He initialisation fits. PyTorch lets you pass nonlinearity='leaky_relu'.">Hidden layers with Leaky ReLU</li>
              <li data-bucket="xavier" data-why="Sigmoid is also roughly linear near 0, so Xavier is the classic choice.">An older network with sigmoid layers</li>
              <li data-bucket="never" data-why="Every neuron gets the same output and the same update. They never become different.">Every weight set to 0</li>
              <li data-bucket="never" data-why="This has the same symmetry problem as zeros. All neurons in a layer stay identical.">Every weight set to 0.5</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the editor runs the experiment in the diagram with NumPy. It sends 200 random examples through 20 layers and prints the activation size after layers 1, 5, 10, 15 and 20. Part 2 is the "same start" test. Parts 3 and 4 use PyTorch, so run them on your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, find the row that stays near 1. That is He initialisation with ReLU.</li>
            <li>In Part 1, in the <code>"too big"</code> line, change <code>0.2</code> to <code>0.1</code>. The values still grow, but more slowly. Small differences add up over 20 layers.</li>
            <li>Look at the Xavier row. It slowly shrinks. Xavier weights are a bit smaller than He weights, so they do not make up for the values that ReLU sets to 0.</li>
            <li>In Part 1, set <code>ACTIVATION = "tanh"</code>. Now the "too big" values sit near 0.85, because tanh squashes them towards −1 and +1. Squashed values have tiny gradients, so this is also bad.</li>
            <li>In Part 2, change <code>W1 = np.full((2, 2), 0.5)</code> to <code>W1 = np.random.randn(2, 2)</code>. Now the two rows differ.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Start with random weights, never the same value. Scale them by fan_in: He for ReLU, Xavier for tanh and sigmoid. Then the signal keeps its size through a deep network.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Weight initialisation: push data through a deep stack of layers
        # and watch the size (standard deviation) of the activations.
        import numpy as np

        # ── Part 1: activation size through 20 layers ──
        print("== Part 1: activation size through 20 layers ==")
        np.random.seed(42)
        WIDTH = 256          # neurons in every layer (so fan_in = 256)
        DEPTH = 20           # number of layers
        ACTIVATION = "relu"  # try "tanh"

        INITS = {
            "too small (0.01)": lambda fan_in, fan_out: 0.01,
            "too big (0.2)":    lambda fan_in, fan_out: 0.2,
            "Xavier":           lambda fan_in, fan_out: np.sqrt(2 / (fan_in + fan_out)),
            "He":               lambda fan_in, fan_out: np.sqrt(2 / fan_in),
        }

        def activate(z):
            return np.maximum(0, z) if ACTIVATION == "relu" else np.tanh(z)

        x = np.random.randn(200, WIDTH)      # 200 examples, input std is about 1
        print(f"Activation: {ACTIVATION}.  Std of the activations after each layer:\n")
        print(f"{'init':18s}" + "".join(f"layer {n:<5d}" for n in (1, 5, 10, 15, 20)))

        for name, get_std in INITS.items():
            h = x
            stds = []
            for layer in range(DEPTH):
                std = get_std(WIDTH, WIDTH)
                W = np.random.randn(WIDTH, WIDTH) * std   # random weights with this std
                h = activate(h @ W)
                stds.append(h.std())
            picks = [stds[n - 1] for n in (1, 5, 10, 15, 20)]
            print(f"{name:18s}" + "".join(f"{s:<11.3g}" for s in picks))

        print(f"\nHe std for fan_in {WIDTH}:", round(np.sqrt(2 / WIDTH), 4))

        # ── Part 2: why not start every weight at the same value? ──
        print("\n== Part 2: same start weights ==")
        # Two hidden neurons start with the same weights (0.5) and train for 3 steps.
        x1 = np.array([1.0, 2.0])               # one input example
        target = 1.0
        W1 = np.full((2, 2), 0.5)               # 2 hidden neurons, both start the same
        w2 = np.full(2, 0.5)
        for step in range(3):
            h1 = np.maximum(0, W1 @ x1)         # hidden layer with ReLU
            error = w2 @ h1 - target
            grad_W1 = np.outer(error * w2 * (h1 > 0), x1)
            grad_w2 = error * h1
            W1 -= 0.1 * grad_W1
            w2 -= 0.1 * grad_w2
        print("Same start, after 3 steps (row 0 = neuron 0, row 1 = neuron 1):")
        print(W1.round(3))
        print("Both rows are still the same: the neurons stay twins.")

        # ── Part 3: He and Xavier with torch.nn.init (run this part on your own computer) ──
        print("\n== Part 3: torch.nn.init ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            layer = nn.Linear(256, 128)        # fan_in = 256, fan_out = 128
            print("PyTorch default std:", round(layer.weight.std().item(), 4))

            nn.init.kaiming_normal_(layer.weight, nonlinearity="relu")
            print("He std:", round(layer.weight.std().item(), 4), " target:", round((2 / 256) ** 0.5, 4))

            nn.init.xavier_normal_(layer.weight)
            print("Xavier std:", round(layer.weight.std().item(), 4), " target:", round((2 / (256 + 128)) ** 0.5, 4))

        # ── Part 4: set up a whole model with model.apply (run this part on your own computer) ──
        print("\n== Part 4: model.apply(init_weights) ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            def init_weights(m):
                if isinstance(m, nn.Linear):
                    nn.init.kaiming_normal_(m.weight, nonlinearity="relu")
                    nn.init.zeros_(m.bias)

            torch.manual_seed(42)
            model = nn.Sequential(nn.Linear(12288, 256), nn.ReLU(), nn.Linear(256, 3))
            model.apply(init_weights)          # runs init_weights on every layer
            print("first layer std:", round(model[0].weight.std().item(), 4), " He target:", round((2 / 12288) ** 0.5, 4))
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Batch Normalisation and Dropout</h1>
        </div>
        <p class="lc-lead">Two layers appear in many deep networks. <strong>Batch normalisation</strong> keeps the values inside the network at a steady size, so training is faster and more stable. <strong>Dropout</strong> switches off random neurons during training, so the model overfits less. Both act differently during training and testing. In this lesson, you will learn what each one does and why <code>model.eval()</code> matters.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Left: batch norm takes the batch 2, 4, 6, 8, finds mean 5 and variance 5, and outputs -1.34, -0.45, 0.45, 1.34, then applies a learned scale and shift. Right: dropout with p 0.5 turns eight 1s into 2, 2, 2, 2, 0, 2, 0, 0 in training mode, and leaves them all as 1 in eval mode.">
            <defs><marker id="td11a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="365" height="280" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <rect x="385" y="10" width="365" height="280" rx="12" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="192" y="40" font-weight="700">Batch norm (training mode)</text>
              <g fill="#27274e" stroke="#3b82f6">
                <rect x="45" y="62" width="60" height="28" rx="5"/><rect x="125" y="62" width="60" height="28" rx="5"/>
                <rect x="205" y="62" width="60" height="28" rx="5"/><rect x="285" y="62" width="60" height="28" rx="5"/>
              </g>
              <text x="75" y="81">2</text><text x="155" y="81">4</text><text x="235" y="81">6</text><text x="315" y="81">8</text>
              <line x1="195" y1="92" x2="195" y2="108" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td11a)"/>
              <rect x="50" y="112" width="290" height="30" rx="6" fill="#27274e" stroke="#8b5cf6"/>
              <text x="195" y="132" fill="#c4b5fd">mean 5, variance 5, std 2.24</text>
              <line x1="195" y1="144" x2="195" y2="162" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td11a)"/>
              <g fill="#27274e" stroke="#10b981">
                <rect x="45" y="166" width="60" height="28" rx="5"/><rect x="125" y="166" width="60" height="28" rx="5"/>
                <rect x="205" y="166" width="60" height="28" rx="5"/><rect x="285" y="166" width="60" height="28" rx="5"/>
              </g>
              <text x="75" y="185">−1.34</text><text x="155" y="185">−0.45</text><text x="235" y="185">0.45</text><text x="315" y="185">1.34</text>
              <text x="192" y="222" font-size="12" fill="#6ee7b7">(value − mean) ÷ std, then × γ + β</text>
              <text x="192" y="248" font-size="11" fill="#9b99b8">γ and β are learned. Also updates the</text>
              <text x="192" y="266" font-size="11" fill="#9b99b8">running mean and variance for eval mode.</text>
              <text x="567" y="40" font-weight="700">Dropout, p = 0.5</text>
                <rect x="410" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="428" y="81">1</text>
                <rect x="452" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="470" y="81">1</text>
                <rect x="494" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="512" y="81">1</text>
                <rect x="536" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="554" y="81">1</text>
                <rect x="578" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="596" y="81">1</text>
                <rect x="620" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="638" y="81">1</text>
                <rect x="662" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="680" y="81">1</text>
                <rect x="704" y="62" width="36" height="28" rx="5" fill="#27274e" stroke="#3b82f6"/><text x="722" y="81">1</text>
                <rect x="410" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#f59e0b"/><text x="428" y="165">2</text>
                <rect x="452" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#f59e0b"/><text x="470" y="165">2</text>
                <rect x="494" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#f59e0b"/><text x="512" y="165">2</text>
                <rect x="536" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#f59e0b"/><text x="554" y="165">2</text>
                <rect x="578" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#4b4a78"/><text x="596" y="165" fill="#9b99b8">0</text>
                <rect x="620" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#f59e0b"/><text x="638" y="165">2</text>
                <rect x="662" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#4b4a78"/><text x="680" y="165" fill="#9b99b8">0</text>
                <rect x="704" y="146" width="36" height="28" rx="5" fill="#27274e" stroke="#4b4a78"/><text x="722" y="165" fill="#9b99b8">0</text>
                <rect x="410" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="428" y="249">1</text>
                <rect x="452" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="470" y="249">1</text>
                <rect x="494" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="512" y="249">1</text>
                <rect x="536" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="554" y="249">1</text>
                <rect x="578" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="596" y="249">1</text>
                <rect x="620" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="638" y="249">1</text>
                <rect x="662" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="680" y="249">1</text>
                <rect x="704" y="230" width="36" height="28" rx="5" fill="#27274e" stroke="#10b981"/><text x="722" y="249">1</text>
              <text x="575" y="122" font-size="12" fill="#fcd34d">model.train(): random half set to 0, rest × 2</text>
              <text x="575" y="208" font-size="12" fill="#6ee7b7">model.eval(): keep every value, no change</text>
              <text x="575" y="280" font-size="11" fill="#9b99b8">Averaged over many runs, the sizes match.</text>
            </g>
          </svg>
          <figcaption>Batch norm makes each feature have mean 0 and standard deviation 1 inside the batch. Dropout zeroes random values only in training mode. The dropout row is one example run. Each run drops a different random set.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Batch normalisation: what it does</h3>
          <p>Earlier in this course, you normalised the input data. Batch normalisation (batch norm for short) does the same thing <em>inside</em> the network. It works on one feature at a time, across the whole batch:</p>
          <ol class="lc-list">
            <li>Find the <strong>mean</strong> and <strong>variance</strong> of the feature in this batch.</li>
            <li>Subtract the mean and divide by the standard deviation. Now the feature has mean 0 and standard deviation 1.</li>
            <li>Multiply by <strong>γ</strong> (gamma) and add <strong>β</strong> (beta). These two numbers are learned, like weights. So the network can choose a different scale if that helps.</li>
          </ol>
          <p>A worked example with the batch 2, 4, 6, 8. The mean is 5. The variance is (9 + 1 + 1 + 9) ÷ 4 = 5. The standard deviation is √5 = 2.24. So 2 becomes (2 − 5) ÷ 2.24 = −1.34.</p>
          <p>Why does this help? Each layer gets inputs of a steady size, even while earlier layers change. You can often use a higher learning rate, and the network cares less about its starting weights.</p>
          <p>In PyTorch, use <code>nn.BatchNorm1d</code> after a linear layer and <code>nn.BatchNorm2d</code> after a convolution layer. A common order is Linear, then BatchNorm, then ReLU.</p>
        </div>
        <div class="lc-card">
          <h3>Batch norm in training and eval mode</h3>
          <p>In training, batch norm uses the numbers of the current batch. It also keeps a <strong>running mean</strong> and <strong>running variance</strong>. These are slow averages over many batches. PyTorch updates them like this, with momentum 0.1:</p>
          <p><code>running_mean = 0.9 × running_mean + 0.1 × batch_mean</code></p>
          <p>At test time, you may have only one photo, so there is no batch to measure. Batch norm then uses the running averages instead.</p>
          <p>Take the batch 2, 4, 6, 8 again. In PyTorch, the running mean starts at 0. After this one batch, it is 0.9 × 0 + 0.1 × 5 = 0.5. That is far from the real mean of 5. So right after one batch, eval mode gives very different outputs from training mode. After many batches, the running numbers get close to the real ones. (The running variance divides by 3 instead of 4, so it uses a slightly different formula.)</p>
          <p>Part 3 in the code editor below runs <code>nn.BatchNorm1d</code> on the batch 2, 4, 6, 8 in both modes. Run it on your own computer. Part 1 does batch norm in NumPy, so you can watch the running mean move towards the real mean in the browser.</p>
          <p>One more trap: in training mode, batch norm needs more than one value per feature. A batch of one photo gives this error: <code>ValueError: Expected more than 1 value per channel when training</code>. For very small batches, layer normalisation (<code>nn.LayerNorm</code>) is a common choice. It normalises each example on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Dropout</h3>
          <p>Dropout sets each value to 0 with probability <strong>p</strong>, only during training. Every batch drops a different random set. The network cannot depend on any single neuron, so it learns more robust features. This reduces <strong>overfitting</strong> (learning the training data too closely).</p>
          <p>PyTorch uses <strong>inverted dropout</strong>. It multiplies the values that survive by 1 ÷ (1 − p). With p = 0.5 that is × 2. So the average size stays the same, and eval mode needs no extra maths.</p>
          <p>The diagram shows <code>nn.Dropout(p=0.5)</code> on eight 1s. In training mode, each value has a 50% chance to become 0. Here 3 of them did, and the rest became 2. In eval mode, all eight stay 1. Part 4 in the code editor runs this, and Part 2 writes the same inverted dropout in NumPy.</p>
          <p>Typical values of p are 0.1 to 0.5. Dropout usually goes after the activation, and you rarely put it after the last layer.</p>
        </div>
        <div class="lc-card">
          <h3>model.train() and model.eval()</h3>
          <p>You do not switch each layer by hand. Call <code>model.train()</code> or <code>model.eval()</code> on the whole model. It switches every batch norm and dropout layer inside.</p>
          <p>Part 5 in the code editor below builds a fruit model with Linear, BatchNorm1d, ReLU, Dropout(p=0.3) and Linear layers. It calls <code>model.train()</code> before training and <code>model.eval()</code> with <code>torch.no_grad()</code> before it scores one photo. The scores have shape [1, 3].</p>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>model.train()</code></td><td>Dropout is on. Batch norm uses batch numbers and updates its running averages.</td></tr>
              <tr><td><code>model.eval()</code></td><td>Dropout is off. Batch norm uses the saved running averages.</td></tr>
              <tr><td><code>torch.no_grad()</code></td><td>Stops PyTorch from tracking gradients. It saves memory and time. It does <em>not</em> change dropout or batch norm.</td></tr>
            </tbody>
          </table>
          <p>A very common bug is to validate in training mode. Then dropout adds noise to your scores, and every validation batch changes the running averages. Always call <code>model.train()</code> again before the next epoch.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: training mode or eval mode?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">When does each behaviour happen?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="train" data-label="model.train()"></div>
              <div data-sorter-target="bucket" data-bucket="eval" data-label="model.eval()"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="train" data-why="Dropout is only active in training mode.">Dropout sets random values to 0</li>
              <li data-bucket="eval" data-why="In eval mode dropout does nothing, so every value passes through unchanged.">Every value passes through dropout unchanged</li>
              <li data-bucket="train" data-why="In training, batch norm measures the mean and variance of the current batch.">Batch norm uses the mean of the current batch</li>
              <li data-bucket="eval" data-why="In eval mode, batch norm uses the running averages it saved during training.">Batch norm uses the saved running mean</li>
              <li data-bucket="train" data-why="The running averages are only updated in training mode.">The running mean and variance are updated</li>
              <li data-bucket="eval" data-why="With no random dropout and fixed running numbers, the same input always gives the same output.">The same photo always gives the same scores</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 and 2 in the editor run both layers in NumPy. Part 1 trains batch norm on 30 batches of 8 fruit weights. The real mean is 150 g. Then it handles one fruit in eval mode. Parts 3 to 5 use PyTorch, so run them on your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, each batch comes out with mean 0 and standard deviation 1. Look at the running mean: 144.9, not yet 150.</li>
            <li>In Part 1, change <code>range(30)</code> to <code>range(100)</code> and <code>(0, 29)</code> to <code>(0, 99)</code>. The running mean gets close to 150.</li>
            <li>Change <code>MOMENTUM</code> to <code>0.5</code>. The running mean catches up faster, but it jumps more from batch to batch.</li>
            <li>Change <code>P_DROP</code> to <code>0.2</code> and look at Part 2. Fewer values become 0, and the survivors become 1.25. The average stays close to 1.</li>
            <li>On your own computer, run Part 3. The running mean is 0.5 after one batch, so the eval outputs are very different from the training outputs.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Batch norm keeps values at a steady size, and dropout fights overfitting. Both behave differently in training and testing. So call model.eval() before you validate or predict, and model.train() before you train again.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Batch normalisation and dropout, first in NumPy, then in PyTorch.
        import numpy as np

        np.random.seed(42)
        MOMENTUM = 0.1     # how fast the running averages move (PyTorch default)
        P_DROP = 0.5       # dropout probability
        EPS = 1e-5         # tiny number so we never divide by zero

        # ── Part 1: batch norm for one feature (fruit weight in grams) ──
        print("== Part 1: batch norm in NumPy ==")
        gamma, beta = 1.0, 0.0                  # learned scale and shift (start values)
        running_mean, running_var = 0.0, 1.0    # PyTorch start values

        def batch_norm(x, training):
            global running_mean, running_var
            if training:
                mean, var = x.mean(), x.var()   # use THIS batch's numbers
                n = len(x)
                running_mean = (1 - MOMENTUM) * running_mean + MOMENTUM * mean
                running_var = (1 - MOMENTUM) * running_var + MOMENTUM * var * n / (n - 1)
            else:
                mean, var = running_mean, running_var   # use the saved averages
            return gamma * (x - mean) / np.sqrt(var + EPS) + beta

        for step in range(30):                  # 30 training batches of 8 fruits
            batch = np.random.normal(150, 20, size=8)
            out = batch_norm(batch, training=True)
            if step in (0, 29):
                print(f"step {step:2d}: batch mean {batch.mean():6.1f} -> out mean {round(out.mean(), 2) + 0.0:.2f}, out std {out.std():.2f}")
        print(f"running mean {running_mean:.1f}, running var {running_var:.1f}")

        one_fruit = np.array([170.0])           # at test time we may have ONE example
        print("eval output for 170 g:", batch_norm(one_fruit, training=False).round(3))

        # ── Part 2: inverted dropout ──
        print("\n== Part 2: dropout in NumPy ==")
        def dropout(x, training):
            if not training:
                return x                        # eval: do nothing
            keep = np.random.rand(len(x)) >= P_DROP
            return x * keep / (1 - P_DROP)      # scale up the survivors

        h = np.ones(10)
        print("train:", dropout(h, training=True))
        print("eval: ", dropout(h, training=False))
        avg = np.mean([dropout(h, True).mean() for _ in range(1000)])
        print(f"average over 1000 training runs: {avg:.3f}")

        # ── Part 3: nn.BatchNorm1d on the batch 2, 4, 6, 8 (run this part on your own computer) ──
        print("\n== Part 3: nn.BatchNorm1d ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            bn = nn.BatchNorm1d(1)                          # 1 feature
            batch = torch.tensor([[2.0], [4.0], [6.0], [8.0]])

            bn.train()
            print("train:", bn(batch).flatten().detach().round(decimals=3))
            print("running mean:", bn.running_mean.item(), " running var:", round(bn.running_var.item(), 4))

            bn.eval()
            print("eval: ", bn(batch).flatten().detach().round(decimals=3))

        # ── Part 4: nn.Dropout in training and eval mode (run this part on your own computer) ──
        print("\n== Part 4: nn.Dropout ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 4 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            drop = nn.Dropout(p=0.5)
            x = torch.ones(8)

            drop.train()                 # training mode
            print("train:", drop(x))
            drop.eval()                  # evaluation mode
            print("eval: ", drop(x))

        # ── Part 5: model.train() and model.eval() on a whole model (run this part on your own computer) ──
        print("\n== Part 5: model.train() and model.eval() ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            model = nn.Sequential(
                nn.Linear(12288, 256),     # one flattened 3 x 64 x 64 photo
                nn.BatchNorm1d(256),
                nn.ReLU(),
                nn.Dropout(p=0.3),
                nn.Linear(256, 3),         # apple, banana, orange
            )

            model.train()                  # before the training loop
            # ... train for one epoch ...

            model.eval()                   # before validation, testing or real use
            with torch.no_grad():          # no gradients needed here
                scores = model(torch.randn(1, 12288))
            print(scores.shape)            # torch.Size([1, 3])
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Convolutional Neural Networks (CNNs)</h1>
        </div>
        <p class="lc-lead">A <strong>convolutional neural network</strong> (CNN) is a network built for images. It slides small learned filters over the picture to find edges, colours and shapes. In this lesson, you will learn kernels, stride, padding, pooling and channels. Then you will build a small CNN for the fruit photos and follow the tensor shapes through it.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 320" role="img" aria-label="The shapes in a small CNN for one fruit photo. Input 3 by 64 by 64. Conv plus ReLU gives 16 by 64 by 64. Max pool gives 16 by 32 by 32. Conv plus ReLU gives 32 by 32 by 32. Max pool gives 32 by 16 by 16. Flatten gives 8192 numbers. A linear layer gives 3 scores: apple, banana and orange.">
            <defs><marker id="td12a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="12" fill="#9b99b8">shape of one photo: channels × height × width</text>
              <rect x="12" y="40" width="96" height="56" rx="8" fill="#27274e" stroke="#3b82f6"/>
              <text x="60" y="63" font-weight="700" font-size="12">Input photo</text>
              <text x="60" y="84" font-size="12.5" fill="#9b99b8">3×64×64</text>
              <line x1="109" y1="68" x2="117" y2="68" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td12a)"/>
              <rect x="36.2" y="146.2" width="57.6" height="57.6" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="31.2" y="151.2" width="57.6" height="57.6" fill="#1f1f44" stroke="#3b82f6"/>
              <rect x="118" y="40" width="96" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="166" y="63" font-weight="700" font-size="12">Conv + ReLU</text>
              <text x="166" y="84" font-size="12.5" fill="#9b99b8">16×64×64</text>
              <line x1="215" y1="68" x2="223" y2="68" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td12a)"/>
              <rect x="147.2" y="141.2" width="57.6" height="57.6" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="142.2" y="146.2" width="57.6" height="57.6" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="137.2" y="151.2" width="57.6" height="57.6" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="224" y="40" width="96" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="272" y="63" font-weight="700" font-size="12">MaxPool 2</text>
              <text x="272" y="84" font-size="12.5" fill="#9b99b8">16×32×32</text>
              <line x1="321" y1="68" x2="329" y2="68" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td12a)"/>
              <rect x="267.6" y="155.6" width="28.8" height="28.8" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="262.6" y="160.6" width="28.8" height="28.8" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="257.6" y="165.6" width="28.8" height="28.8" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="330" y="40" width="96" height="56" rx="8" fill="#27274e" stroke="#8b5cf6"/>
              <text x="378" y="63" font-weight="700" font-size="12">Conv + ReLU</text>
              <text x="378" y="84" font-size="12.5" fill="#9b99b8">32×32×32</text>
              <line x1="427" y1="68" x2="435" y2="68" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td12a)"/>
              <rect x="378.6" y="150.6" width="28.8" height="28.8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="373.6" y="155.6" width="28.8" height="28.8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="368.6" y="160.6" width="28.8" height="28.8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="363.6" y="165.6" width="28.8" height="28.8" fill="#1f1f44" stroke="#8b5cf6"/>
              <rect x="436" y="40" width="96" height="56" rx="8" fill="#27274e" stroke="#22d3ee"/>
              <text x="484" y="63" font-weight="700" font-size="12">MaxPool 2</text>
              <text x="484" y="84" font-size="12.5" fill="#9b99b8">32×16×16</text>
              <line x1="533" y1="68" x2="541" y2="68" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td12a)"/>
              <rect x="491.8" y="157.8" width="14.4" height="14.4" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="486.8" y="162.8" width="14.4" height="14.4" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="481.8" y="167.8" width="14.4" height="14.4" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="476.8" y="172.8" width="14.4" height="14.4" fill="#1f1f44" stroke="#22d3ee"/>
              <rect x="542" y="40" width="96" height="56" rx="8" fill="#27274e" stroke="#f59e0b"/>
              <text x="590" y="63" font-weight="700" font-size="12">Flatten</text>
              <text x="590" y="84" font-size="12.5" fill="#9b99b8">8192</text>
              <line x1="639" y1="68" x2="647" y2="68" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td12a)"/>
              <rect x="585" y="130" width="10" height="100" fill="#1f1f44" stroke="#f59e0b"/>
              <rect x="648" y="40" width="96" height="56" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="696" y="63" font-weight="700" font-size="12">Linear</text>
              <text x="696" y="84" font-size="12.5" fill="#9b99b8">3 scores</text>
              <circle cx="674" cy="148" r="8" fill="#1f1f44" stroke="#10b981"/><text x="688" y="152" font-size="11" text-anchor="start" fill="#6ee7b7">apple</text>
              <circle cx="674" cy="178" r="8" fill="#1f1f44" stroke="#10b981"/><text x="688" y="182" font-size="11" text-anchor="start" fill="#6ee7b7">banana</text>
              <circle cx="674" cy="208" r="8" fill="#1f1f44" stroke="#10b981"/><text x="688" y="212" font-size="11" text-anchor="start" fill="#6ee7b7">orange</text>
              <rect x="12" y="246" width="736" height="66" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <text x="380" y="270" font-size="12.5" fill="#c4b5fd">Conv 3×3, padding 1, stride 1: (64 + 2×1 − 3) ÷ 1 + 1 = 64, so the size stays the same</text>
              <text x="380" y="296" font-size="12.5" fill="#67e8f9">MaxPool 2: 64 ÷ 2 = 32.   Flatten: 32 × 16 × 16 = 8192 numbers</text>
            </g>
          </svg>
          <figcaption>The FruitCNN from this lesson. Convolutions add channels. Pooling halves the height and width. The squares show the image size shrinking while the stacks get deeper.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why not a normal dense network?</h3>
          <p>A fruit photo has 3 × 64 × 64 = 12,288 numbers. A dense (fully connected) layer with 256 neurons needs a weight for every input and neuron pair. That is 12,288 × 256 + 256 = <strong>3,145,984</strong> parameters in the first layer alone.</p>
          <p>A dense layer also ignores the layout of the picture. It does not know which pixels are neighbours. A banana in the top corner and a banana in the middle look like two unrelated patterns to it.</p>
          <p>A CNN fixes both problems:</p>
          <ul class="lc-list">
            <li><strong>Local:</strong> each output looks only at a small patch, such as 3 × 3 pixels.</li>
            <li><strong>Shared weights:</strong> the same small filter is used at every position. A filter that finds a curved edge finds it anywhere in the photo.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Kernels, stride and padding</h3>
          <p>A <strong>kernel</strong> (or filter) is a small grid of weights, for example 3 × 3. It slides over the image. At each position, it multiplies the pixels under it by its weights and adds them up. In a CNN, nobody writes the kernel numbers. The network <strong>learns</strong> them with gradient descent.</p>
          <ul class="lc-list">
            <li><strong>Stride</strong> is how far the kernel moves each step. Stride 2 skips every other position, so the output is about half the size.</li>
            <li><strong>Padding</strong> adds a border of zeros around the image. With a 3 × 3 kernel, padding 1 keeps the output the same size as the input.</li>
          </ul>
          <p>The output size formula is: <strong>output = (input + 2 × padding − kernel) ÷ stride + 1</strong>. Round the division down.</p>
          <table class="lc-table">
            <thead><tr><th>Input</th><th>Kernel</th><th>Padding</th><th>Stride</th><th>Working</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td>64</td><td>3</td><td>1</td><td>1</td><td>(64 + 2 − 3) ÷ 1 + 1</td><td>64</td></tr>
              <tr><td>64</td><td>3</td><td>0</td><td>1</td><td>(64 + 0 − 3) ÷ 1 + 1</td><td>62</td></tr>
              <tr><td>64</td><td>3</td><td>1</td><td>2</td><td>63 ÷ 2 = 31 (round down), then + 1</td><td>32</td></tr>
              <tr><td>64</td><td>5</td><td>2</td><td>1</td><td>(64 + 4 − 5) ÷ 1 + 1</td><td>64</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Channels and pooling</h3>
          <p>A colour photo has 3 <strong>channels</strong>: red, green and blue. A convolution layer has many filters. Each filter looks at <em>all</em> input channels at once and makes one output channel, called a <strong>feature map</strong>. So <code>nn.Conv2d(3, 16, kernel_size=3)</code> has 16 filters, and each filter is 3 × 3 × 3.</p>
          <p>Parameters in that layer: 16 filters × (3 × 3 × 3 weights) + 16 biases = 432 + 16 = <strong>448</strong>. Compare that with over 3 million for the dense layer.</p>
          <p><strong>Pooling</strong> shrinks a feature map. <strong>Max pooling</strong> with size 2 takes each 2 × 2 block and keeps only the biggest value. So 64 × 64 becomes 32 × 32. Pooling has no weights. It keeps the strongest signals and makes the next layers cheaper.</p>
          <p>Deeper layers see larger areas of the photo. Early filters often find edges and colours. Later filters combine them into textures and shapes, such as banana curves or orange peel.</p>
        </div>
        <div class="lc-card">
          <h3>A small CNN in PyTorch</h3>
          <p>Here is FruitCNN. Two blocks of convolution, ReLU and max pooling turn the photo into feature maps. A linear layer turns them into 3 scores. Part 3 in the code editor below builds FruitCNN in PyTorch twice: once as a class and once as one <code>nn.Sequential</code>. It prints the shape after every layer.</p>
          <p>For a batch of 32 photos, the shapes go like this:</p>
          <ul class="lc-list">
            <li>PyTorch puts the channels first: [batch, channels, height, width]. The input is [32, 3, 64, 64].</li>
            <li>After the two blocks, the shape is [32, 32, 16, 16].</li>
            <li><code>nn.Flatten()</code> keeps dimension 0 (the batch) and joins the rest: 32 × 16 × 16 = 8192. The output is [32, 3].</li>
            <li>The conv1 weights have shape (16, 3, 3, 3): 16 filters, each 3 channels × 3 × 3.</li>
            <li>The whole model has 29,667 parameters. That is about 1% of the single dense layer above.</li>
          </ul>
          <p>If you change the photo size, the 8192 changes too. A wrong number there gives a "shapes cannot be multiplied" error. Work out the shapes layer by layer to find the right number. Part 2 of the editor below does this for FruitCNN with the formula, so it runs in the browser too.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the shapes</h3>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Input">A batch of 32 fruit photos: [32, 3, 64, 64].</li>
              <li data-kind="thought" data-label="Conv2d(3, 16, 3, padding=1)">16 filters make 16 channels. Padding 1 keeps the size: (64 + 2 − 3) ÷ 1 + 1 = 64.</li>
              <li data-kind="result" data-label="After conv and ReLU">[32, 16, 64, 64]. ReLU never changes the shape.</li>
              <li data-kind="thought" data-label="MaxPool2d(2)">Each 2 × 2 block becomes one value. Channels stay at 16.</li>
              <li data-kind="result" data-label="After pooling">[32, 16, 32, 32]</li>
              <li data-kind="result" data-label="After the second block">Conv2d(16, 32) gives 32 channels, and pooling halves the size: [32, 32, 16, 16].</li>
              <li data-kind="check" data-label="Flatten">32 × 16 × 16 = 8192, so the shape is [32, 8192]. This must match nn.Linear(8192, 3).</li>
              <li data-kind="warn" data-label="Common mistake">Flattening with torch.flatten(x) and no 1 also joins the batch dimension. You get [262144], and the linear layer fails.</li>
              <li data-kind="answer" data-label="Output">[32, 3]: one score for apple, banana and orange for each photo.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Part 1 in the editor builds one CNN layer by hand in NumPy. It takes an 8 × 8 digit image from scikit-learn. It runs one 3 × 3 kernel, then ReLU, then 2 × 2 max pooling. Part 2 works out the FruitCNN shapes with the formula. Part 3 uses PyTorch, so run it on your own computer.</p>
          <ol class="lc-list">
            <li>Run it. In Part 1, the kernel finds vertical edges. Positive values mark dark-to-bright edges from left to right. Negative values mark bright-to-dark edges.</li>
            <li>In Part 1, change <code>STRIDE</code> to <code>2</code>. Check that the feature map size matches what the formula prints.</li>
            <li>Change <code>PADDING</code> to <code>0</code>. The feature map shrinks to 6 × 6.</li>
            <li>Swap in this kernel to find horizontal edges: <code>[[-1, -2, -1], [0, 0, 0], [1, 2, 1]]</code>. In a real CNN, training would find useful kernels like these by itself.</li>
            <li>Part 2 follows the FruitCNN shapes to 8192 and 29,667 parameters. Change <code>SIZE = 64</code> to <code>128</code>. What must the linear layer take now?</li>
            <li>On your own computer, run Part 3. Check that PyTorch prints the same shapes and 29667 parameters.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A CNN slides small learned filters over the image, so it needs few weights and finds patterns anywhere. Convolutions add channels and pooling shrinks the size. Remember: output = (input + 2 × padding − kernel) ÷ stride + 1.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # A tiny CNN by hand, then FruitCNN shapes, then FruitCNN in PyTorch.
        import numpy as np
        from sklearn.datasets import load_digits

        # ── Part 1: convolution, ReLU and max pooling on a digit image ──
        print("== Part 1: one CNN layer by hand ==")
        image = load_digits().images[1]        # an 8x8 picture of the digit 1 (values 0-16)
        KERNEL = np.array([[-1, 0, 1],         # finds dark-to-bright changes from
                           [-2, 0, 2],         # left to right (vertical edges)
                           [-1, 0, 1]])
        PADDING, STRIDE, POOL = 1, 1, 2

        def out_size(n, k, p, s):
            return (n + 2 * p - k) // s + 1    # the output size formula

        def conv2d(img, kernel, padding, stride):
            k = kernel.shape[0]
            img = np.pad(img, padding)         # zero padding around the border
            size = (img.shape[0] - k) // stride + 1
            out = np.zeros((size, size))
            for r in range(size):
                for c in range(size):
                    patch = img[r * stride:r * stride + k, c * stride:c * stride + k]
                    out[r, c] = np.sum(patch * kernel)    # multiply and add
            return out

        def max_pool(img, size):
            n = img.shape[0] // size
            return img[:n * size, :n * size].reshape(n, size, n, size).max(axis=(1, 3))

        def show(title, img):
            print(f"{title} {img.shape}")
            for row in img:
                print("   " + " ".join(f"{v:4.0f}" for v in row))

        show("input", image)
        fmap = conv2d(image, KERNEL, PADDING, STRIDE)
        print("formula says:", out_size(8, 3, PADDING, STRIDE))
        show("feature map after conv", fmap)
        fmap = np.maximum(0, fmap)                       # ReLU: keep positives only
        pooled = max_pool(fmap, POOL)
        show("after ReLU and 2x2 max pool", pooled)

        # ── Part 2: follow the shapes and count the parameters of FruitCNN ──
        print("\n== Part 2: FruitCNN shapes with the formula ==")
        # Each layer: (name, out_channels, kernel, padding, stride). "pool" halves the size.
        LAYERS = [("conv", 16, 3, 1, 1), ("pool",), ("conv", 32, 3, 1, 1), ("pool",)]
        SIZE = 64                                  # photo height and width. Try 128.
        channels, size, params = 3, SIZE, 0        # one 3 x 64 x 64 fruit photo
        print(f"input      {channels} x {size} x {size}")
        for layer in LAYERS:
            if layer[0] == "conv":
                _, out_ch, k, p, s = layer
                params += out_ch * channels * k * k + out_ch   # weights + biases
                channels, size = out_ch, out_size(size, k, p, s)
            else:
                size = size // 2
            print(f"{layer[0]:10s} {channels} x {size} x {size}")
        flat = channels * size * size
        params += flat * 3 + 3                     # nn.Linear(flat, 3)
        print(f"flatten    {flat}")
        print(f"linear     3 scores")
        print(f"parameters {params:,}")

        # ── Part 3: FruitCNN in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: FruitCNN in PyTorch ==")
        try:
            import torch
            from torch import nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            class FruitCNN(nn.Module):
                def __init__(self):
                    super().__init__()
                    self.features = nn.Sequential(
                        nn.Conv2d(3, 16, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),
                        nn.Conv2d(16, 32, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),
                    )
                    self.classifier = nn.Linear(32 * 16 * 16, 3)   # apple, banana, orange

                def forward(self, x):
                    x = self.features(x)
                    x = torch.flatten(x, 1)                      # keep the batch dimension
                    return self.classifier(x)

            torch.manual_seed(42)
            model = FruitCNN()
            x = torch.randn(32, 3, 64, 64)                        # a batch of 32 photos
            print("input        ", tuple(x.shape))
            for layer in model.features:
                x = layer(x)
                print(f"{type(layer).__name__:13s}", tuple(x.shape))
            print("flatten      ", tuple(torch.flatten(x, 1).shape))
            print("output       ", tuple(model(torch.randn(32, 3, 64, 64)).shape))
            print("conv1 weights", tuple(model.features[0].weight.shape))
            print("parameters   ", sum(p.numel() for p in model.parameters()))

            # The same network written as one nn.Sequential, with nn.Flatten():
            model = nn.Sequential(
                nn.Conv2d(3, 16, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),
                nn.Conv2d(16, 32, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),
                nn.Flatten(),                  # keeps the batch dimension
                nn.Linear(32 * 16 * 16, 3),    # apple, banana, orange
            )
            print("Sequential output", tuple(model(torch.randn(32, 3, 64, 64)).shape),
                  " parameters", sum(p.numel() for p in model.parameters()))
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Recurrent Neural Networks (RNNs) and LSTMs</h1>
        </div>
        <p class="lc-lead">Some data comes in order: words in a sentence, sales day by day, readings from a sensor. A <strong>recurrent neural network</strong> (RNN) reads this data one step at a time and keeps a small memory called the <strong>hidden state</strong>. In this lesson, you will see how the hidden state moves through time and why plain RNNs forget. You will also learn how LSTMs fix this with gates, and what shapes <code>nn.LSTM</code> expects.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 270" role="img" aria-label="An RNN unrolled over four days. Each day's banana sales go into the same RNN cell. The hidden state h is passed from one step to the next, and the last hidden state predicts Friday. A dashed arrow shows the gradient flowing back in time and getting weaker at each step.">
            <defs><marker id="td13a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker><marker id="td13b" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#ec4899"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="380" y="24" font-size="12" fill="#f9a8d4">backpropagation through time: the gradient gets weaker at every step back</text>
              <path d="M655,48 L515,48" stroke="#ec4899" stroke-width="3" stroke-dasharray="6 4"/>
              <path d="M505,48 L365,48" stroke="#ec4899" stroke-width="2.2" stroke-dasharray="6 4" opacity="0.75"/>
              <path d="M355,48 L215,48" stroke="#ec4899" stroke-width="1.5" stroke-dasharray="6 4" opacity="0.5"/>
              <path d="M205,48 L110,48" stroke="#ec4899" stroke-width="1" stroke-dasharray="6 4" opacity="0.3" marker-end="url(#td13b)"/>
              <rect x="10" y="95" width="60" height="50" rx="8" fill="#27274e" stroke="#4b4a78"/>
              <text x="40" y="117" font-weight="700">h0</text>
              <text x="40" y="135" font-size="11" fill="#9b99b8">zeros</text>
              <line x1="72" y1="120" x2="96" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td13a)"/>
              <rect x="100" y="90" width="110" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="155" y="116" font-weight="700" fill="#c4b5fd">RNN cell</text>
              <text x="155" y="135" font-size="11" fill="#9b99b8">weights W</text>
              <line x1="212" y1="120" x2="246" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td13a)"/>
              <text x="229" y="110" font-size="12" fill="#67e8f9">h1</text>
              <rect x="250" y="90" width="110" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="305" y="116" font-weight="700" fill="#c4b5fd">RNN cell</text>
              <text x="305" y="135" font-size="11" fill="#9b99b8">same W</text>
              <line x1="362" y1="120" x2="396" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td13a)"/>
              <text x="379" y="110" font-size="12" fill="#67e8f9">h2</text>
              <rect x="400" y="90" width="110" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="455" y="116" font-weight="700" fill="#c4b5fd">RNN cell</text>
              <text x="455" y="135" font-size="11" fill="#9b99b8">same W</text>
              <line x1="512" y1="120" x2="546" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td13a)"/>
              <text x="529" y="110" font-size="12" fill="#67e8f9">h3</text>
              <rect x="550" y="90" width="110" height="60" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="605" y="116" font-weight="700" fill="#c4b5fd">RNN cell</text>
              <text x="605" y="135" font-size="11" fill="#9b99b8">same W</text>
              <line x1="662" y1="120" x2="686" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td13a)"/>
              <rect x="690" y="90" width="62" height="60" rx="8" fill="#27274e" stroke="#10b981"/>
              <text x="721" y="116" font-size="12" fill="#6ee7b7">predict</text>
              <text x="721" y="135" font-size="12" fill="#6ee7b7">Fri</text>
              <g font-size="12">
                <rect x="110" y="200" width="90" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="155" y="219">Mon</text><text x="155" y="236" fill="#93c5fd">12 kg</text>
                <rect x="260" y="200" width="90" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="305" y="219">Tue</text><text x="305" y="236" fill="#93c5fd">15 kg</text>
                <rect x="410" y="200" width="90" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="455" y="219">Wed</text><text x="455" y="236" fill="#93c5fd">11 kg</text>
                <rect x="560" y="200" width="90" height="44" rx="8" fill="#27274e" stroke="#3b82f6"/><text x="605" y="219">Thu</text><text x="605" y="236" fill="#93c5fd">18 kg</text>
              </g>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td13a)">
                <line x1="155" y1="198" x2="155" y2="154"/><line x1="305" y1="198" x2="305" y2="154"/><line x1="455" y1="198" x2="455" y2="154"/><line x1="605" y1="198" x2="605" y2="154"/>
              </g>
              <text x="380" y="180" font-size="11" fill="#9b99b8">input x at each time step</text>
              <text x="380" y="264" font-size="11" fill="#9b99b8">One cell, drawn four times. The hidden state h carries the memory forward.</text>
            </g>
          </svg>
          <figcaption>An RNN "unrolled" over four days of banana sales. The same weights are used at every step. Only the hidden state changes.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>The hidden state: memory through time</h3>
          <p>A CNN looks at a whole image at once. An RNN reads a <strong>sequence</strong> one item at a time. Each item is one <strong>time step</strong>.</p>
          <p>At every step, the RNN mixes two things: the new input and its old memory. The result is the new <strong>hidden state</strong>, written h. It is a small vector of numbers.</p>
          <p><strong>h_t = tanh(W_x · x_t + W_h · h_(t-1) + b)</strong></p>
          <p>The weights W_x and W_h are the <strong>same at every step</strong>. This is why one small cell can read a sequence of any length.</p>
          <p><strong>Worked example.</strong> Use single numbers: W_x = 0.5 and W_h = 0.8, with no bias. The inputs are 1, 0, 0, 0. The memory starts at h0 = 0.</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Input x</th><th>Sum</th><th>h = tanh(sum)</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>1</td><td>0.5 × 1 + 0.8 × 0 = 0.5</td><td>0.462</td></tr>
              <tr><td>2</td><td>0</td><td>0.8 × 0.462 = 0.370</td><td>0.354</td></tr>
              <tr><td>3</td><td>0</td><td>0.8 × 0.354 = 0.283</td><td>0.276</td></tr>
              <tr><td>4</td><td>0</td><td>0.8 × 0.276 = 0.221</td><td>0.217</td></tr>
            </tbody>
          </table>
          <p>The "1" from step 1 is still in the memory at step 4. But it fades a little at every step. Part 2 in the code editor below works out this table for you.</p>
        </div>
        <div class="lc-card">
          <h3>Why plain RNNs forget: vanishing gradients</h3>
          <p>To train an RNN, PyTorch unrolls it, as in the diagram. Then it runs backpropagation through every step. This is called <strong>backpropagation through time</strong>.</p>
          <p>Each step back multiplies the gradient by a factor. The factor comes from W_h and the slope of tanh. If the factor is below 1, the gradient shrinks fast:</p>
          <table class="lc-table">
            <thead><tr><th>Steps back</th><th>Factor 0.6</th><th>Factor 1.2</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>0.6</td><td>1.2</td></tr>
              <tr><td>10</td><td>0.006</td><td>6.2</td></tr>
              <tr><td>20</td><td>0.00004</td><td>38.3</td></tr>
            </tbody>
          </table>
          <ul class="lc-list">
            <li><strong>Vanishing gradients</strong> (factor below 1): early steps get almost no learning signal. The model cannot learn long-range patterns.</li>
            <li><strong>Exploding gradients</strong> (factor above 1): the gradient grows huge and the loss can jump to NaN. <strong>Gradient clipping</strong> limits the size of the gradient. In PyTorch, call <code>torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)</code> before <code>optimizer.step()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>LSTM gates in simple words</h3>
          <p>An <strong>LSTM</strong> (Long Short-Term Memory) is an RNN cell with a second memory, the <strong>cell state</strong> c. Small "gates" decide what happens to it. A gate is a number from 0 to 1 that comes from a sigmoid. 0 means "block" and 1 means "let through".</p>
          <table class="lc-table">
            <thead><tr><th>Gate</th><th>Question it answers</th><th>Fruit shop example</th></tr></thead>
            <tbody>
              <tr><td>Forget gate f</td><td>How much of the old memory should I keep?</td><td>A new week starts, so forget last week's pattern</td></tr>
              <tr><td>Input gate i</td><td>How much of the new information should I write?</td><td>A bank holiday is important, so store it</td></tr>
              <tr><td>Output gate o</td><td>How much of the memory should I show as h now?</td><td>Show the part that helps predict tomorrow</td></tr>
            </tbody>
          </table>
          <p><strong>c_t = f × c_(t-1) + i × new_info</strong> updates the long-term memory.</p>
          <p><strong>h_t = o × tanh(c_t)</strong> is what the cell shows at this step.</p>
          <p>The key is the first line. Part 4 in the code editor uses it to show how much memory is left after 40 steps. The memory is updated by <strong>adding</strong>, not by squashing it again and again. If f stays close to 1, old information can survive many steps. Gradients can also flow back along this path without fading so fast.</p>
          <p>A <strong>GRU</strong> (Gated Recurrent Unit) is a simpler cousin with two gates. It often works about as well. Today, transformers handle most language tasks. RNNs and LSTMs are still useful for small sequence and time-series problems.</p>
        </div>
        <div class="lc-card">
          <h3>nn.LSTM in PyTorch: the shapes</h3>
          <p>Our greengrocer wants to predict tomorrow's banana sales from the last 7 days. Each day has 1 feature (kg sold). We make an LSTM with a hidden size of 16: <code>nn.LSTM(input_size=1, hidden_size=16, batch_first=True)</code>. Then we feed it a batch of 8 sequences, 7 days each.</p>
          <p>Calling <code>out, (h, c) = lstm(x)</code> gives three tensors. A linear head, <code>nn.Linear(16, 1)</code>, turns the hidden state after day 7 into one number. That hidden state is <code>out[:, -1, :]</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Tensor</th><th>Shape</th><th>In our example</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>input x</td><td>[batch, steps, features]</td><td>[8, 7, 1]</td><td>With <code>batch_first=True</code></td></tr>
              <tr><td>out</td><td>[batch, steps, hidden]</td><td>[8, 7, 16]</td><td>The hidden state at every step</td></tr>
              <tr><td>h and c</td><td>[layers, batch, hidden]</td><td>[1, 8, 16]</td><td>Only the last step. Layers come first, even with <code>batch_first=True</code>.</td></tr>
              <tr><td>prediction</td><td>[batch, 1]</td><td>[8, 1]</td><td>One forecast per sequence</td></tr>
            </tbody>
          </table>
          <p>Without <code>batch_first=True</code>, PyTorch expects [steps, batch, features]. Mixing these up is a common bug. This LSTM has 1,216 parameters: 4 × (16 × 1 + 16 × 16 + 16 + 16). The 4 is there because the three gates and the new information each have their own weights. PyTorch also keeps two bias vectors, so the 16 appears twice.</p>
          <p>Part 5 in the code editor below builds this LSTM and head in PyTorch and prints every shape in the table, plus the 1,216 parameters. Run it on your own computer.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: follow the memory</h3>
          <p>Step through an LSTM that reads three days of sales and then makes a prediction.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="user" data-label="Start">The memory starts empty: h0 and c0 are vectors of zeros.</li>
              <li data-kind="thought" data-label="Day 1 · 12 kg">The input gate is open. The cell writes "normal sales" into c.</li>
              <li data-kind="thought" data-label="Day 2 · 15 kg">The forget gate is close to 1, so the old memory stays. The cell adds "sales are rising".</li>
              <li data-kind="thought" data-label="Day 3 · 11 kg">The same weights are used again. The output gate shows the useful part of c as h3.</li>
              <li data-kind="result" data-label="Prediction">A linear head turns h3 into one number: the forecast for day 4.</li>
              <li data-kind="warn" data-label="Plain RNN">A plain RNN squashes its memory with tanh at every step. Over long sequences, early days fade and gradients vanish.</li>
              <li data-kind="answer" data-label="Why LSTMs help">The cell state is updated by adding. So information and gradients can travel back over many more steps.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. Part 1 prints the hidden state after each of 7 days. The same weights are used at every step.</li>
            <li>In Part 3, change <code>FACTOR = 0.6</code> to <code>0.9</code>, then <code>1.0</code>, then <code>1.2</code>. Watch the gradient vanish, stay the same, or explode.</li>
            <li>In Part 4, change <code>f_gate = 0.95</code> to <code>0.5</code>. How much memory is left after 40 steps now?</li>
            <li>In Part 1, change <code>HIDDEN = 4</code> to <code>8</code>. The hidden state gets bigger, but the loop does not change.</li>
            <li>Part 5 uses PyTorch, so it only prints a message in the browser. On your own computer, change <code>hidden_size=16</code> to <code>32</code> (and the head to <code>nn.Linear(32, 1)</code>) and watch the shapes change.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> An RNN uses the same weights at every time step and carries a hidden state forward. Plain RNNs forget because gradients shrink at every step back. LSTMs add a cell state, updated by adding and controlled by gates, so memory lasts longer.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # RNNs and LSTMs: a hidden state carried through time, in NumPy and in PyTorch.
        import numpy as np

        # ── Part 1: a tiny RNN reads 7 days of sales ──
        print("== Part 1: a tiny RNN in NumPy ==")
        np.random.seed(42)
        HIDDEN = 4                      # size of the hidden state (the "memory")
        sales = np.array([12, 15, 11, 18, 20, 9, 14], dtype=float)   # kg of bananas per day
        x_seq = (sales - sales.mean()) / sales.std()                  # standardise the inputs

        # The SAME weights are used at every time step.
        W_x = np.random.randn(HIDDEN, 1) * 0.5        # input -> hidden
        W_h = np.random.randn(HIDDEN, HIDDEN) * 0.5   # old hidden -> new hidden
        b = np.zeros((HIDDEN, 1))

        h = np.zeros((HIDDEN, 1))                     # h0: the memory starts empty
        for t, x in enumerate(x_seq, start=1):
            h = np.tanh(W_x * x + W_h @ h + b)        # h_t = tanh(W_x · x_t + W_h · h_(t-1) + b)
            print(f"day {t}: x = {x:+.2f}  h = " + " ".join(f"{v:+.2f}" for v in h.ravel()))
        print("The last h is a summary of the whole week.")

        # ── Part 2: the worked example with single numbers ──
        print("\n== Part 2: the worked example (W_x = 0.5, W_h = 0.8) ==")
        h_num = 0.0
        for step, x_num in enumerate([1, 0, 0, 0], start=1):
            total = 0.5 * x_num + 0.8 * h_num
            h_num = np.tanh(total)
            print(f"step {step}: sum = {total:.3f}  h = {h_num:.3f}")

        # ── Part 3: vanishing gradients ──
        print("\n== Part 3: vanishing and exploding gradients ==")
        # Each step back in time multiplies the gradient by a factor.
        FACTOR = 0.6                                  # try 0.9, 1.0 and 1.2
        print("Steps back | gradient size")
        for steps in [1, 5, 10, 20, 40]:
            g = FACTOR ** steps
            bar = "#" * int(round(40 * min(g, 1.0)))
            note = "  (exploding!)" if g > 10 else ""
            print(f"{steps:10d} | {g:12.6f} {bar}{note}")

        # ── Part 4: the LSTM cell state ──
        print("\n== Part 4: the LSTM cell state ==")
        # c_t = f * c_(t-1) + i * new_info     update the long-term memory
        # h_t = o * tanh(c_t)                  what the cell shows at this step
        f_gate = 0.95                                 # forget gate. Try 0.5
        i_gate, o_gate = 0.0, 1.0                     # write nothing new, show everything
        c = 1.0                                       # something stored in the memory
        for t in range(40):
            new_info = 0.0
            c = f_gate * c + i_gate * new_info
        h_last = o_gate * np.tanh(c)
        print(f"Forget gate {f_gate}: memory left after 40 steps = {c:.3f}  (h = {h_last:.3f})")

        # ── Part 5: nn.LSTM and its shapes in PyTorch (run this part on your own computer) ──
        print("\n== Part 5: nn.LSTM shapes ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            lstm = nn.LSTM(input_size=1, hidden_size=16, batch_first=True)
            head = nn.Linear(16, 1)            # turns the last hidden state into one number

            x = torch.randn(8, 7, 1)           # 8 sequences, 7 days each, 1 feature per day
            out, (h, c) = lstm(x)
            pred = head(out[:, -1, :])         # use the hidden state after day 7

            print("input :", tuple(x.shape))
            print("out   :", tuple(out.shape))
            print("h     :", tuple(h.shape))
            print("c     :", tuple(c.shape))
            print("pred  :", tuple(pred.shape))
            print("LSTM parameters:", sum(p.numel() for p in lstm.parameters()))
            # Gradient clipping, before optimizer.step():
            # torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Training on GPUs</h1>
        </div>
        <p class="lc-lead">A <strong>GPU</strong> (graphics processing unit) can train a deep model many times faster than a CPU. But PyTorch does not use it on its own. You must move the model and every batch of data to the GPU. In this lesson, you will learn why GPUs are fast and how to move things with <code>.to(device)</code>. You will also plan GPU memory and fix the most common errors.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Top: a CPU has a few strong cores, and a GPU has thousands of small cores that do the same maths at once. Bottom: the dataset lives in CPU memory. Each batch and the model are moved to GPU memory with .to(device). Results such as loss.item() come back to the CPU.">
            <defs><marker id="td14a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="10" width="360" height="150" rx="10" fill="#1f1f44" stroke="#3b82f6"/>
              <text x="190" y="34" font-weight="700" fill="#93c5fd">CPU: a few strong cores</text>
              <g fill="#27274e" stroke="#3b82f6">
                <rect x="100" y="50" width="36" height="36" rx="4"/><rect x="146" y="50" width="36" height="36" rx="4"/><rect x="192" y="50" width="36" height="36" rx="4"/><rect x="238" y="50" width="36" height="36" rx="4"/>
                <rect x="100" y="94" width="36" height="36" rx="4"/><rect x="146" y="94" width="36" height="36" rx="4"/><rect x="192" y="94" width="36" height="36" rx="4"/><rect x="238" y="94" width="36" height="36" rx="4"/>
              </g>
              <text x="190" y="150" font-size="11" fill="#9b99b8">good at many different jobs, one after another</text>
              <rect x="390" y="10" width="360" height="150" rx="10" fill="#1f1f44" stroke="#10b981"/>
              <text x="570" y="34" font-weight="700" fill="#6ee7b7">GPU: thousands of small cores</text>
              <rect x="412" y="45" width="316" height="94" fill="url(#td14g)"/>
              <defs><pattern id="td14g" width="13" height="13" patternUnits="userSpaceOnUse"><rect x="1" y="1" width="10" height="10" rx="2" fill="#27274e" stroke="#10b981" stroke-width="0.8"/></pattern></defs>
              <text x="570" y="150" font-size="11" fill="#9b99b8">does the same sum on many numbers at once</text>
              <rect x="10" y="190" width="220" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="120" y="214" font-weight="700">CPU memory (RAM)</text>
              <text x="120" y="236" font-size="11.5" fill="#9b99b8">dataset and DataLoader</text>
              <line x1="232" y1="220" x2="296" y2="220" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td14a)"/>
              <text x="264" y="208" font-size="11.5" fill="#fcd34d">.to(device)</text>
              <rect x="300" y="190" width="220" height="60" rx="10" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="410" y="214" font-weight="700">GPU memory</text>
              <text x="410" y="236" font-size="11.5" fill="#9b99b8">model + batch + gradients</text>
              <line x1="522" y1="220" x2="566" y2="220" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td14a)"/>
              <text x="544" y="208" font-size="11.5" fill="#fcd34d">results</text>
              <rect x="570" y="190" width="180" height="60" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="660" y="214" font-weight="700">back on the CPU</text>
              <text x="660" y="236" font-size="11.5" fill="#9b99b8">loss.item(), .cpu()</text>
              <text x="380" y="282" font-size="12" fill="#f9a8d4">Rule: the model and the batch must be on the same device.</text>
            </g>
          </svg>
          <figcaption>The GPU wins at matrix maths because it works on thousands of numbers in parallel. Data starts on the CPU and must be moved.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why GPUs are fast</h3>
          <p>Training is mostly <strong>matrix multiplication</strong>. Take two 64 × 64 matrices. The answer has 4,096 cells. Each cell needs 64 multiplications, so the total is 262,144 multiplications.</p>
          <p>Here is the important part. Each answer cell can be computed <strong>on its own</strong>. It does not wait for any other cell. A CPU has a few strong cores, so it works on a few cells at a time. A GPU has thousands of simpler cores, so it works on thousands of cells at once. This is called <strong>parallel</strong> computing.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>CPU</th><th>GPU</th></tr></thead>
            <tbody>
              <tr><td>Cores</td><td>A few to a few dozen, each very strong</td><td>Thousands, each simple</td></tr>
              <tr><td>Best at</td><td>Different jobs with lots of "if this, then that"</td><td>The same maths on huge arrays of numbers</td></tr>
              <tr><td>Memory</td><td>System RAM, often large</td><td>Its own memory (VRAM), often smaller</td></tr>
            </tbody>
          </table>
          <p>Small models gain little. Copying data to the GPU takes time too. For our tiny FruitCNN, a CPU is fine. For bigger models and images, a GPU can turn hours into minutes.</p>
        </div>
        <div class="lc-card">
          <h3>Moving the model and the data</h3>
          <p>You set the <code>device</code> once, at the top of your script. Then you move the model once and every batch inside the loop. On a Mac with Apple Silicon, you can use <code>"mps"</code> instead of <code>"cuda"</code>.</p>
          <p>Part 3 in the code editor below does all three steps with the FruitCNN. It moves the model once, moves every batch, and uses <code>loss.item()</code> to copy the loss back to the CPU. It runs one training step, then a short loop over a <code>DataLoader</code>. Run it on your own computer.</p>
          <p>On a computer without a GPU, <code>device</code> is <code>"cpu"</code> and everything runs there. With an NVIDIA GPU, the weights and batches show <code>cuda:0</code> as their device. The loss may differ slightly on a GPU, because it adds numbers in a different order.</p>
          <ul class="lc-list">
            <li>Create the optimiser <strong>after</strong> you move the model. Then it points at the weights on the GPU.</li>
            <li>For a model, <code>model.to(device)</code> moves it in place. For a tensor, <code>.to(device)</code> returns a <strong>new copy</strong>. So always write <code>xb = xb.to(device)</code>.</li>
            <li>In the DataLoader, <code>pin_memory=True</code> and <code>num_workers</code> above 0 can feed the GPU faster.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>GPU memory: will it fit?</h3>
          <p>GPU memory is limited, often between 8 and 80 GB. During training with Adam in float32, each parameter needs 4 numbers of 4 bytes each:</p>
          <ul class="lc-list">
            <li>the weight itself</li>
            <li>its gradient</li>
            <li>two extra numbers that Adam keeps (the moving averages)</li>
          </ul>
          <p><strong>Worked example.</strong> ResNet-18 has about 11.7 million parameters. 11.7 million × 4 numbers × 4 bytes = about 187 MB. That is small.</p>
          <p>The big cost is usually the <strong>activations</strong>. These are the outputs of every layer, kept for the backward pass. They grow with the batch size and the image size. Double the batch size, and the activation memory roughly doubles.</p>
          <p>To check memory use, run <code>nvidia-smi</code> in a terminal. In Python, call <code>torch.cuda.memory_allocated()</code>, as Part 3 does on a GPU. Part 2 in the code editor makes a rough memory plan with these numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Common GPU errors and fixes</h3>
          <table class="lc-table">
            <thead><tr><th>Error message (start)</th><th>What it means</th><th>Fix</th></tr></thead>
            <tbody>
              <tr><td>Expected all tensors to be on the same device</td><td>The model is on the GPU but the batch is on the CPU, or the other way round.</td><td>Move both. Check the labels and any tensors you create inside the loop.</td></tr>
              <tr><td>CUDA out of memory</td><td>The model, batch and activations do not fit in GPU memory.</td><td>Use a smaller batch, mixed precision or gradient accumulation. Use <code>torch.no_grad()</code> when you evaluate.</td></tr>
              <tr><td>can't convert cuda:0 device type tensor to numpy</td><td>NumPy only works with CPU memory.</td><td>Call <code>.cpu()</code> first: <code>preds.cpu().numpy()</code>.</td></tr>
              <tr><td><code>torch.cuda.is_available()</code> is False</td><td>PyTorch was installed without CUDA, or the driver is missing.</td><td>Reinstall with the command from the pytorch.org selector.</td></tr>
            </tbody>
          </table>
          <p>One quiet bug causes "out of memory" after many steps. Writing <code>total_loss += loss</code> keeps every step's graph alive. Write <code>total_loss += loss.item()</code> instead.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: diagnose the problem</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Each line describes a training script. What problem will it cause?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="device" data-label="Device mismatch error"></div>
              <div data-sorter-target="bucket" data-bucket="memory" data-label="Out of memory"></div>
              <div data-sorter-target="bucket" data-bucket="ok" data-label="Works fine"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="device" data-why="The weights are on the GPU, but the images are still in CPU memory.">model.to("cuda"), then model(xb) where xb came straight from the DataLoader</li>
              <li data-bucket="memory" data-why="Activations grow with the batch size. A much bigger batch needs much more GPU memory.">Batch size raised from 32 to 1024 on an 8 GB GPU</li>
              <li data-bucket="ok" data-why="Both inputs and labels are moved, and the model is already on the same device.">xb, yb = xb.to(device), yb.to(device) before the forward pass</li>
              <li data-bucket="memory" data-why="Adding the loss tensor keeps every step's graph in memory, so memory grows each step.">total_loss += loss inside the training loop</li>
              <li data-bucket="device" data-why="torch.zeros makes a CPU tensor unless you pass device=. Adding it to a GPU tensor fails.">mask = torch.zeros(32) added to a GPU tensor</li>
              <li data-bucket="ok" data-why=".item() copies one plain number back to the CPU. This is the right way to log the loss.">print(loss.item()) at the end of each step</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 and 2 in the editor show the ideas with NumPy. Part 3 uses PyTorch, so it only prints a message in the browser.</p>
          <ol class="lc-list">
            <li>Run the code. In Part 1, compare the time for one cell at a time with <code>A @ B</code>. NumPy uses fast compiled code on your CPU. A GPU goes further and runs thousands of cells in parallel.</li>
            <li>In Part 1, change <code>N = 64</code> to <code>96</code>. The number of multiplications grows with N × N × N.</li>
            <li>In Part 2, the memory plan, change <code>GPU_GB = 8</code> to <code>4</code>, then to <code>24</code>. Which batch sizes fit now?</li>
            <li>In Part 2, change <code>ACT_MB_PER_IMAGE</code> to <code>10</code>, as if the images were smaller. How big can the batch get?</li>
            <li>On your own computer, run Part 3. Check which device it prints. On a machine with a GPU, change <code>xb.to(device)</code> to <code>xb</code> inside the loop and read the error.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> GPUs are fast because matrix maths splits into thousands of independent sums. To use one, move the model once and every batch each step with <code>.to(device)</code>. Most GPU errors are a device mismatch or running out of memory.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Why GPUs are fast, how much memory training needs, and how to move work to a GPU.
        import time
        import numpy as np

        # ── Part 1: one cell at a time vs all at once ──
        print("== Part 1: matrix multiply ==")
        np.random.seed(42)
        N = 64                                   # matrix size. Try 32 or 96.
        A = np.random.rand(N, N)
        B = np.random.rand(N, N)

        # Matrix multiply one cell at a time (like a single worker).
        start = time.perf_counter()
        C_loop = np.zeros((N, N))
        for i in range(N):
            for j in range(N):
                C_loop[i, j] = sum(A[i, k] * B[k, j] for k in range(N))
        t_loop = time.perf_counter() - start

        # The same maths in one call. NumPy uses fast vector code.
        start = time.perf_counter()
        C_fast = A @ B
        t_fast = time.perf_counter() - start

        print(f"{N}x{N} matrices: {N * N} output cells, {N ** 3:,} multiplications")
        print("Each output cell can be computed on its own. A GPU computes thousands at once.")
        print(f"Same answer? {np.allclose(C_loop, C_fast)}")
        print(f"One cell at a time: {t_loop:.4f} s   all at once: {t_fast:.6f} s")
        print(f"About {t_loop / max(t_fast, 1e-9):,.0f} times faster here")

        # ── Part 2: will it fit? A rough memory plan for training with Adam in float32 ──
        print("\n== Part 2: GPU memory plan ==")
        PARAMS = 11_700_000          # about the size of ResNet-18
        BYTES = 4                    # one float32 number = 4 bytes
        ACT_MB_PER_IMAGE = 40        # activations kept for backprop (made-up example value)
        GPU_GB = 8                   # memory on the GPU. Try 4 or 24.

        fixed_mb = PARAMS * BYTES * 4 / 1e6   # weights + gradients + Adam's 2 extra numbers
        print(f"Weights, gradients and Adam state: {fixed_mb:.0f} MB")
        for batch in [16, 32, 64, 128, 256]:
            total_gb = (fixed_mb + batch * ACT_MB_PER_IMAGE) / 1000
            verdict = "fits" if total_gb <= GPU_GB else "CUDA out of memory"
            print(f"  batch {batch:3d}: about {total_gb:5.1f} GB -> {verdict}")

        # ── Part 3: move the model and the data with .to(device) (run this part on your own computer) ──
        print("\n== Part 3: training on the GPU with PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            device = "cuda" if torch.cuda.is_available() else "cpu"   # on Apple Silicon you can use "mps"
            torch.manual_seed(42)

            model = nn.Sequential(                         # the FruitCNN from earlier
                nn.Conv2d(3, 16, 3, padding=1), nn.ReLU(), nn.MaxPool2d(2),
                nn.Conv2d(16, 32, 3, padding=1), nn.ReLU(), nn.MaxPool2d(2),
                nn.Flatten(), nn.Linear(32 * 16 * 16, 3),
            )
            model = model.to(device)                       # 1. move the model once
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)
            loss_fn = nn.CrossEntropyLoss()

            xb = torch.randn(32, 3, 64, 64)                # one batch of 32 fruit photos
            yb = torch.randint(0, 3, (32,))                # 0 apple, 1 banana, 2 orange
            xb, yb = xb.to(device), yb.to(device)          # 2. move every batch

            loss = loss_fn(model(xb), yb)
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            print("device    :", device)
            print("weights on:", next(model.parameters()).device)
            print("batch on  :", xb.device)
            print("loss      :", round(loss.item(), 4))    # 3. .item() copies one number back to the CPU

            # The same steps as a loop over a DataLoader (here 2 batches of random photos).
            data = torch.utils.data.TensorDataset(torch.randn(64, 3, 64, 64), torch.randint(0, 3, (64,)))
            train_loader = torch.utils.data.DataLoader(data, batch_size=32)
            for xb, yb in train_loader:
                xb, yb = xb.to(device), yb.to(device)    # 2. move every batch
                loss = loss_fn(model(xb), yb)
                optimizer.zero_grad(); loss.backward(); optimizer.step()
                print(loss.item())                       # 3. copies one number back to the CPU
            if device == "cuda":
                print("GPU memory in use:", torch.cuda.memory_allocated() // 1_000_000, "MB")
            # In a terminal, nvidia-smi shows the GPU memory too.
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Mixed Precision and Faster Training</h1>
        </div>
        <p class="lc-lead">By default, PyTorch stores every number in <strong>float32</strong>, which uses 4 bytes. Many steps of training work just as well with 2-byte numbers. <strong>Mixed precision</strong> uses 2-byte numbers where it is safe and float32 where it matters. This makes training faster and saves memory. In this lesson, you will learn the number formats, <code>torch.autocast</code>, the <code>GradScaler</code>, and gradient accumulation for when a batch does not fit.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="Bit layouts of three number formats. float32 has 1 sign bit, 8 exponent bits and 23 mantissa bits. float16 has 1 sign bit, 5 exponent bits and 10 mantissa bits. bfloat16 has 1 sign bit, 8 exponent bits and 7 mantissa bits.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <text x="10" y="62" font-size="13" font-weight="700">float32</text>
              <rect x="110" y="40" width="14" height="34" fill="#ec4899"/>
              <rect x="124" y="40" width="112" height="34" fill="#f59e0b" fill-opacity="0.35" stroke="#f59e0b"/>
              <rect x="236" y="40" width="322" height="34" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="180" y="62" text-anchor="middle">exponent 8</text>
              <text x="397" y="62" text-anchor="middle">mantissa 23</text>
              <text x="575" y="54">4 bytes · max about 3.4e38</text>
              <text x="575" y="72" fill="#9b99b8">about 7 digits of precision</text>
              <text x="10" y="132" font-size="13" font-weight="700">float16</text>
              <rect x="110" y="110" width="14" height="34" fill="#ec4899"/>
              <rect x="124" y="110" width="70" height="34" fill="#f59e0b" fill-opacity="0.35" stroke="#f59e0b"/>
              <rect x="194" y="110" width="140" height="34" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="159" y="132" text-anchor="middle">exp 5</text>
              <text x="264" y="132" text-anchor="middle">mantissa 10</text>
              <text x="575" y="124">2 bytes · max 65,504</text>
              <text x="575" y="142" fill="#9b99b8">about 3 digits of precision</text>
              <text x="10" y="202" font-size="13" font-weight="700">bfloat16</text>
              <rect x="110" y="180" width="14" height="34" fill="#ec4899"/>
              <rect x="124" y="180" width="112" height="34" fill="#f59e0b" fill-opacity="0.35" stroke="#f59e0b"/>
              <rect x="236" y="180" width="98" height="34" fill="#3b82f6" fill-opacity="0.35" stroke="#3b82f6"/>
              <text x="180" y="202" text-anchor="middle">exponent 8</text>
              <text x="285" y="202" text-anchor="middle">mantissa 7</text>
              <text x="575" y="194">2 bytes · max about 3.4e38</text>
              <text x="575" y="212" fill="#9b99b8">about 2 to 3 digits</text>
              <text x="380" y="248" text-anchor="middle" fill="#9b99b8"><tspan fill="#f9a8d4">sign</tspan> · <tspan fill="#fcd34d">exponent = range (how big or small)</tspan> · <tspan fill="#93c5fd">mantissa = precision (how many digits)</tspan></text>
              <text x="380" y="22" text-anchor="middle" fill="#9b99b8">bar length = number of bits (32 or 16)</text>
            </g>
          </svg>
          <figcaption>bfloat16 keeps the range of float32 but has fewer digits. float16 has more digits than bfloat16 but a much smaller range.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Three number formats</h3>
          <p>A floating-point number has three parts. The <strong>sign</strong> says plus or minus. The <strong>exponent</strong> sets how big or small the number can be. The <strong>mantissa</strong> holds the digits.</p>
          <table class="lc-table">
            <thead><tr><th>Format</th><th>Bytes</th><th>Largest value</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>float32</td><td>4</td><td>about 3.4 × 10<sup>38</sup></td><td>The safe default. Weights and the optimiser state.</td></tr>
              <tr><td>float16</td><td>2</td><td>65,504</td><td>Fast maths on most NVIDIA GPUs. Needs loss scaling.</td></tr>
              <tr><td>bfloat16</td><td>2</td><td>about 3.4 × 10<sup>38</sup></td><td>Fast maths on newer GPUs and TPUs. Usually no loss scaling.</td></tr>
            </tbody>
          </table>
          <p>Look at what happens to some numbers in each format:</p>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>float32</th><th>float16</th><th>bfloat16</th></tr></thead>
            <tbody>
              <tr><td>1000.7</td><td>1000.7</td><td>1000.5</td><td>1000</td></tr>
              <tr><td>70,000</td><td>70,000</td><td>inf (too big)</td><td>about 70,000</td></tr>
              <tr><td>0.00000001</td><td>0.00000001</td><td>0 (too small)</td><td>about 0.00000001</td></tr>
            </tbody>
          </table>
          <p>The last row is the danger. Gradients are often tiny. In float16, a tiny gradient can become exactly 0. This is called <strong>underflow</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>torch.autocast: mixed precision in one line</h3>
          <p>You do not convert the model by hand. Inside a <code>torch.autocast</code> block, PyTorch picks the format for each operation. Matrix multiplies and convolutions run in the 2-byte format. Sensitive operations, such as many loss functions, stay in float32. The stored weights stay in float32 too.</p>
          <p>For example, run a <code>nn.Linear</code> layer inside <code>with torch.autocast(device_type="cpu", dtype=torch.bfloat16):</code>. The output comes out as <code>torch.bfloat16</code>. The layer's weights are still <code>torch.float32</code>. Part 5 in the code editor below does exactly this. It also shows that 1e-8 becomes 0.0 in float16 but stays about 1.001e-08 in bfloat16.</p>
          <p>Autocast works on a CPU too. Real speed-ups come on GPUs with special hardware for 2-byte maths, such as NVIDIA Tensor Cores.</p>
        </div>
        <div class="lc-card">
          <h3>GradScaler: stop tiny gradients from vanishing</h3>
          <p>With float16, PyTorch uses <strong>loss scaling</strong>. The <code>GradScaler</code> multiplies the loss by a big number, for example 65,536, before the backward pass. All gradients get 65,536 times bigger, so they do not underflow. Before the optimiser step, it divides them back down in float32.</p>
          <p><strong>Worked example.</strong> A gradient of 0.00000002 becomes 0 in float16. Times 65,536, it is about 0.00131. That fits in float16 easily. Divide by 65,536 later, and you get 0.00000002 back.</p>
          <p>If a scaled gradient becomes inf or NaN, the scaler skips that step. Then it lowers the scale. If many steps go well, it raises the scale again. Part 6 in the code editor below has a full float16 training loop with <code>torch.amp.GradScaler("cuda")</code>. Inside <code>torch.autocast</code> it runs the forward pass. Then <code>scaler.scale(loss).backward()</code>, <code>scaler.step(optimizer)</code> and <code>scaler.update()</code> do the rest.</p>
          <p>This loop needs an NVIDIA GPU, so Part 6 skips it on other computers. Part 2 shows loss scaling in NumPy instead. With <code>dtype=torch.bfloat16</code>, you can usually drop the scaler. bfloat16 has the same range as float32, so gradients rarely underflow. Check the PyTorch "Automatic Mixed Precision" docs for the current advice for your hardware.</p>
        </div>
        <div class="lc-card">
          <h3>Gradient accumulation and memory arithmetic</h3>
          <p>Say you want a batch of 32 fruit photos, but only 8 fit in GPU memory. <strong>Gradient accumulation</strong> runs 4 small batches of 8. It adds up their gradients, then takes one optimiser step. PyTorch adds gradients on its own until you call <code>zero_grad()</code>.</p>
          <p>In the loop, divide each loss by 4 so the sum is an average. Call <code>loss.backward()</code> every time, so the gradients add up in <code>.grad</code>. Call <code>optimizer.step()</code> and <code>optimizer.zero_grad()</code> only after every 4th micro-batch. Part 3 of the editor shows this with NumPy, and the end of Part 6 shows the PyTorch loop.</p>
          <p>The result is the same gradient as one batch of 32, but it takes 4 forward passes. It saves memory, not time. (Batch norm still sees batches of 8, so its statistics differ a little.)</p>
          <p><strong>Memory arithmetic.</strong> 100 million values take 400 MB in float32 and 200 MB in a 2-byte format. Autocast keeps the weights in float32. So the main saving is in the <strong>activations</strong>, which are usually the biggest part. Half the bytes per activation means you can often fit about twice the batch.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: one mixed precision training step</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the steps of one float16 training step with a GradScaler in order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Move the batch to the GPU and clear the old gradients</li>
              <li data-order="2">Run the forward pass and the loss inside torch.autocast</li>
              <li data-order="3">Multiply the loss by the scale and run backward</li>
              <li data-order="4">Divide the gradients by the scale and check for inf or NaN</li>
              <li data-order="5">Update the float32 weights, or skip the step if a gradient was inf or NaN</li>
              <li data-order="6">Make the scale smaller after a skip, or larger after many good steps</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Parts 1 to 4 in the editor run these ideas in NumPy. Parts 5 and 6 use PyTorch, so they only print a message in the browser.</p>
          <ol class="lc-list">
            <li>Run the code. In Part 1, compare how each format stores 1000.7, 70000 and 0.00000001.</li>
            <li>In Part 2, change <code>SCALE = 65536</code> to <code>1</code>, then to <code>1024</code>. When does the tiny gradient survive?</li>
            <li>In Part 3, change <code>ACCUM = 4</code> to <code>2</code> or <code>8</code>. The accumulated gradient stays the same as the big batch.</li>
            <li>Add your own value to the list in Part 1, such as <code>0.1</code> or <code>123456.0</code>.</li>
            <li>On your own computer, run Part 5. In <code>torch.autocast</code>, change <code>torch.bfloat16</code> to <code>torch.float16</code> and check the output type.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Mixed precision does the heavy maths in 2-byte numbers and keeps the weights in float32. With float16, a GradScaler stops tiny gradients from becoming 0. When a batch does not fit, gradient accumulation gives the same gradient with less memory.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Number formats, loss scaling and gradient accumulation in NumPy, then in PyTorch.
        import numpy as np

        def to_bfloat16(x):
            """NumPy has no bfloat16. We keep the top 16 bits of a float32 (hardware rounds instead)."""
            bits = np.array(x, dtype=np.float32).view(np.uint32)
            return float((bits & np.uint32(0xFFFF0000)).view(np.float32))

        # ── Part 1: the same numbers in three formats ──
        print("== Part 1: three number formats ==")
        np.seterr(over="ignore")              # 70000 is too big for float16. Hide the warning.
        print(f"{'value':>10} | {'float32':>12} | {'float16':>12} | {'bfloat16':>12}")
        for v in [3.14159265, 1000.7, 70000.0, 0.00000001]:
            print(f"{v:10.8g} | {float(np.float32(v)):12.8g} | {float(np.float16(v)):12.8g} | {to_bfloat16(v):12.8g}")

        # ── Part 2: loss scaling ──
        print("\n== Part 2: loss scaling ==")
        # Tiny gradients vanish in float16 unless you scale them up first.
        grad = 0.00000002                     # a real but tiny gradient
        SCALE = 65536                         # GradScaler often starts with 2**16. Try 1 or 1024.
        stored = np.float16(grad * SCALE)     # the backward pass works in float16
        recovered = float(stored) / SCALE     # unscale in float32 before the optimiser step
        print(f"Gradient {grad} without scaling in float16: {float(np.float16(grad))}")
        print(f"With scale {SCALE}: stored as {float(stored):.6f}, recovered {recovered:.3g}")

        # ── Part 3: gradient accumulation ──
        print("\n== Part 3: gradient accumulation ==")
        # 4 small batches give the same gradient as 1 big batch.
        np.random.seed(42)
        X = np.random.randn(32, 3)
        y = X @ np.array([2.0, -1.0, 0.5]) + 0.1 * np.random.randn(32)
        w = np.zeros(3)

        def grad_mse(Xb, yb, w):
            return 2 * Xb.T @ (Xb @ w - yb) / len(yb)   # gradient of the mean squared error

        big = grad_mse(X, y, w)
        ACCUM = 4                              # micro-batches of 32 / 4 = 8 rows. Try 2 or 8.
        acc = np.zeros(3)
        for Xb, yb in zip(np.split(X, ACCUM), np.split(y, ACCUM)):
            acc += grad_mse(Xb, yb, w) / ACCUM  # divide by ACCUM, like loss / ACCUM
        print("One batch of 32  :", np.round(big, 4))
        print(f"{ACCUM} batches of {32 // ACCUM:<2}  :", np.round(acc, 4))

        # ── Part 4: memory arithmetic for 100 million numbers ──
        print("\n== Part 4: memory arithmetic ==")
        for name, nbytes in [("float32", 4), ("float16", 2), ("bfloat16", 2)]:
            print(f"100 million values in {name:8}: {100_000_000 * nbytes / 1e6:.0f} MB")

        # ── Part 5: torch.autocast on a CPU (run this part on your own computer) ──
        print("\n== Part 5: torch.autocast ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 5 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            layer = nn.Linear(8, 4)
            x = torch.randn(2, 8)

            with torch.autocast(device_type="cpu", dtype=torch.bfloat16):
                out = layer(x)                      # the matrix multiply runs in bfloat16

            print("weights:", layer.weight.dtype)   # the stored weights stay float32
            print("output :", out.dtype)
            print("1e-8 in float16 :", torch.tensor(1e-8, dtype=torch.float16).item())
            print(f"1e-8 in bfloat16: {torch.tensor(1e-8, dtype=torch.bfloat16).item():.4g}")

        # ── Part 6: float16 training with a GradScaler, and gradient accumulation (run this part on your own computer) ──
        print("\n== Part 6: GradScaler and accumulation in PyTorch ==")
        try:
            import torch
            import torch.nn as nn
        except ImportError:
            torch = None
        if torch is None:
            print("Part 6 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            device = "cuda" if torch.cuda.is_available() else "cpu"
            torch.manual_seed(42)
            model = nn.Sequential(nn.Flatten(), nn.Linear(3 * 64 * 64, 3)).to(device)   # a tiny fruit model
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)
            loss_fn = nn.CrossEntropyLoss()
            data = torch.utils.data.TensorDataset(torch.randn(32, 3, 64, 64), torch.randint(0, 3, (32,)))
            train_loader = torch.utils.data.DataLoader(data, batch_size=8)   # micro-batches of 8

            if device == "cuda":
                # A float16 training loop. It needs an NVIDIA GPU.
                scaler = torch.amp.GradScaler("cuda")

                for xb, yb in train_loader:
                    xb, yb = xb.to(device), yb.to(device)
                    optimizer.zero_grad()
                    with torch.autocast(device_type="cuda", dtype=torch.float16):
                        loss = loss_fn(model(xb), yb)    # forward pass in mixed precision
                    scaler.scale(loss).backward()        # backward on the scaled loss
                    scaler.step(optimizer)               # unscale, skip if inf/NaN, then step
                    scaler.update()                      # adjust the scale for next time
                print("float16 loop done, scale now", scaler.get_scale())
            else:
                print("No NVIDIA GPU here, so the float16 GradScaler loop is skipped.")

            # Gradient accumulation. This works on a CPU too.
            ACCUM = 4                                # 4 micro-batches of 8 = an effective batch of 32
            optimizer.zero_grad()
            for i, (xb, yb) in enumerate(train_loader):
                xb, yb = xb.to(device), yb.to(device)
                loss = loss_fn(model(xb), yb) / ACCUM   # divide, so the sum is an average
                loss.backward()                          # gradients add up in .grad
                if (i + 1) % ACCUM == 0:
                    optimizer.step()
                    optimizer.zero_grad()
                    print(f"optimizer step after micro-batch {i + 1}")
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Transfer Learning</h1>
        </div>
        <p class="lc-lead">Training a big image model from scratch needs a huge dataset and a lot of GPU time. Our greengrocer has only 700 training photos. <strong>Transfer learning</strong> solves this: you start from a network that someone already trained on millions of images. You keep what it learned and train only a small new part for your task. In this lesson, you will load a pretrained ResNet-18, freeze its layers and add a new head for apples, bananas and oranges.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 260" role="img" aria-label="A fruit photo goes into a pretrained ResNet-18 backbone with five frozen layer groups. The backbone outputs 512 features. A new trainable head, Linear 512 to 3, turns them into apple, banana or orange. The old 1000-class head is removed.">
            <defs><marker id="td16a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="13" fill="#e2e0f0" text-anchor="middle">
              <text x="300" y="26" font-size="12" fill="#9b99b8">learned on ImageNet: about 1.2 million photos, 1,000 classes</text>
              <rect x="10" y="85" width="90" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="55" y="114">photo</text>
              <text x="55" y="134" font-size="11" fill="#9b99b8">224 × 224</text>
              <line x1="102" y1="120" x2="126" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td16a)"/>
              <rect x="130" y="45" width="340" height="140" rx="12" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="300" y="68" font-weight="700" fill="#fcd34d">Pretrained ResNet-18 backbone</text>
              <g font-size="12">
                <rect x="145" y="88" width="56" height="56" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="173" y="120">conv1</text>
                <rect x="209" y="88" width="56" height="56" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="237" y="120">layer1</text>
                <rect x="273" y="88" width="56" height="56" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="301" y="120">layer2</text>
                <rect x="337" y="88" width="56" height="56" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="365" y="120">layer3</text>
                <rect x="401" y="88" width="56" height="56" rx="6" fill="#27274e" stroke="#f59e0b"/><text x="429" y="120">layer4</text>
              </g>
              <text x="300" y="168" font-size="12" fill="#fcd34d">frozen: requires_grad = False</text>
              <line x1="472" y1="120" x2="496" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td16a)"/>
              <rect x="500" y="85" width="80" height="70" rx="10" fill="#27274e" stroke="#22d3ee"/>
              <text x="540" y="114" font-weight="700" fill="#67e8f9">512</text>
              <text x="540" y="134" font-size="11" fill="#9b99b8">features</text>
              <line x1="582" y1="120" x2="606" y2="120" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td16a)"/>
              <rect x="610" y="75" width="140" height="90" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="680" y="100" font-weight="700" fill="#6ee7b7">New head</text>
              <text x="680" y="122" font-size="12">Linear(512, 3)</text>
              <text x="680" y="144" font-size="11" fill="#6ee7b7">trained</text>
              <line x1="680" y1="167" x2="680" y2="191" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td16a)"/>
              <text x="680" y="210" font-size="12">apple, banana</text>
              <text x="680" y="226" font-size="12">or orange</text>
              <text x="300" y="214" font-size="12" fill="#9b99b8">old head Linear(512, 1000) is removed</text>
              <text x="300" y="248" font-size="12"><tspan fill="#fcd34d">frozen: 11,176,512 numbers</tspan><tspan fill="#9b99b8"> · </tspan><tspan fill="#6ee7b7">trained: 1,539 numbers</tspan></text>
            </g>
          </svg>
          <figcaption>Keep the pretrained backbone as it is. Replace only the last layer, and train that new head on your own photos.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Why reusing a network works</h3>
          <p>A CNN learns in layers. The early layers find simple patterns, such as edges and colours. The middle layers combine them into textures and shapes. The last layers combine those into whole objects.</p>
          <p>Edges, textures and round shapes are useful for almost every photo task. A network trained on <strong>ImageNet</strong> (a big dataset of about 1.2 million labelled photos in 1,000 classes) already knows them. So you <strong>transfer</strong> that knowledge to your task.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>From scratch</th><th>Transfer learning</th></tr></thead>
            <tbody>
              <tr><td>Starting weights</td><td>Random</td><td>Pretrained on a big dataset</td></tr>
              <tr><td>Data you need</td><td>Often many thousands of images per class</td><td>Often a few hundred, sometimes fewer</td></tr>
              <tr><td>Training time</td><td>Hours to days on a GPU</td><td>Minutes, often fine on a laptop</td></tr>
              <tr><td>Accuracy on a small dataset</td><td>Usually lower, and it overfits</td><td>Usually higher</td></tr>
            </tbody>
          </table>
          <p>The part you keep is called the <strong>backbone</strong>. The new last layer is called the <strong>head</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Freeze the backbone, add a new head</h3>
          <p>The <code>torchvision</code> library has many pretrained models. There are three steps for our fruit classifier: freeze every layer, put a new head in <code>model.fc</code>, and give the optimiser only the head's parameters. Part 3 in the code editor below does all three with <code>models.resnet18(weights=models.ResNet18_Weights.DEFAULT)</code>, then counts the parameters.</p>
          <p>If you count the parameters of this model, the total is 11,178,051. Only 1,539 of them are trainable.</p>
          <ul class="lc-list">
            <li><code>requires_grad = False</code> tells PyTorch not to compute gradients for these weights. They never change.</li>
            <li>The new <code>nn.Linear</code> is created after freezing, so its weights are trainable. It has 512 × 3 weights + 3 biases = 1,539 numbers.</li>
            <li>The old head had 512 × 1,000 + 1,000 = 513,000 numbers. That is why the total is lower than ResNet-18's usual 11.7 million.</li>
          </ul>
          <p>Part 3 needs PyTorch and torchvision, so run it on your own computer. The first run downloads the weights file, so it needs internet. Parts 1 and 2 run a scikit-learn version of the same idea in the browser.</p>
        </div>
        <div class="lc-card">
          <h3>Use the same preprocessing</h3>
          <p>A pretrained model expects its input to look like its training data. <code>weights.transforms()</code> gives you the right steps for ResNet-18. It resizes and crops each photo to 224 × 224 pixels. It scales the pixels to 0 to 1. Then it standardises each colour channel with the ImageNet mean and standard deviation.</p>
          <p>If you skip this, the backbone sees numbers it never saw in training. Accuracy can drop a lot. Use the same transforms for training, validation and test photos.</p>
          <p>One more tip. Frozen weights do not change, but batch norm layers still update their running averages in training mode. Many people call <code>model.eval()</code> on the backbone to stop this. Then it behaves exactly as it did after pretraining.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: what you save</h3>
          <p>Training only the head means far less work per step:</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Full training</th><th>Frozen backbone</th></tr></thead>
            <tbody>
              <tr><td>Weights updated</td><td>11,178,051</td><td>1,539</td></tr>
              <tr><td>Adam state (2 numbers per trained weight)</td><td>about 22.4 million numbers</td><td>3,078 numbers</td></tr>
              <tr><td>Backward pass</td><td>Through the whole network</td><td>Only through the head</td></tr>
            </tbody>
          </table>
          <p>The forward pass through the backbone still runs for every photo. If the backbone is frozen and you do not use random augmentation, you can go one step further. Run every photo through the backbone <strong>once</strong>. Save the 512 features. Then train the head on the saved features. This is called <strong>feature extraction</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: frozen or trained?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">In our fruit model with a frozen backbone, sort each part.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="frozen" data-label="Frozen (never changes)"></div>
              <div data-sorter-target="bucket" data-bucket="trained" data-label="Trained on fruit photos"></div>
              <div data-sorter-target="bucket" data-bucket="gone" data-label="Removed"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="frozen" data-why="The first convolution finds edges and colours. These are useful for fruit too, so we keep them.">conv1 weights (edges and colours)</li>
              <li data-bucket="frozen" data-why="Deeper layers find textures and shapes. With a frozen backbone, they keep their ImageNet values.">layer4 weights (textures and shapes)</li>
              <li data-bucket="trained" data-why="This is the only layer created after freezing, so it is the only one with requires_grad = True.">The new model.fc: Linear(512, 3)</li>
              <li data-bucket="gone" data-why="Our task has 3 classes, not 1,000. We replaced this layer with the new head.">The old Linear(512, 1000) ImageNet head</li>
              <li data-bucket="trained" data-why="The head has 3 outputs, and each has its own bias. They are part of the new layer.">The 3 bias values of the new head</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>The editor copies transfer learning with scikit-learn digits. In Part 1, a network is first trained to name digits 0 to 9. Its hidden layers become a frozen backbone. In Part 2, a new small head learns a different task, "odd or even?", from only a few labelled images. Part 3 is the real ResNet-18 version, for your own computer.</p>
          <ol class="lc-list">
            <li>Run the code. In Part 2, compare training from scratch with transfer. The scores are averages over 5 random small training sets.</li>
            <li>Change <code>N_PER_CLASS = 5</code> to <code>3</code>. With very few labels, which method holds up better?</li>
            <li>Change it to <code>100</code>. With plenty of labels, the gap closes. Transfer learning helps most when data is scarce.</li>
            <li>Look at the last line of Part 2. The new head trains only 33 numbers: 32 features plus 1 bias.</li>
            <li>On your own computer, run Part 3. It prints 11,178,051 parameters in total and 1,539 trainable ones.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A pretrained network already knows general features such as edges, textures and shapes. Freeze it, replace the last layer with a new head for your classes, and train only that head. This works well even with a small dataset.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Transfer learning in miniature with scikit-learn digits (8x8 images), then with ResNet-18.
        # Old task: name the digit 0-9 (lots of labels). New task: odd or even? (few labels)
        import warnings
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.neural_network import MLPClassifier
        from sklearn.linear_model import LogisticRegression

        warnings.filterwarnings("ignore")              # hide "not converged" messages
        X, y = load_digits(return_X_y=True)
        X = X / 16.0                                   # scale pixels to 0-1
        half = len(X) // 2
        X_old, y_old = X[:half], y[:half]              # big labelled set for "pretraining"
        X_new, y_new = X[half:], y[half:] % 2          # new task: 0 = even, 1 = odd

        N_PER_CLASS = 5                                # labelled examples per new class. Try 3, 20, 100.

        # ── Part 1: "pretrain" a network on the old task ──
        print("== Part 1: pretrain on digits 0-9 ==")
        # In real life, someone else did this for you.
        base = MLPClassifier(hidden_layer_sizes=(64, 32), max_iter=1000, random_state=0)
        base.fit(X_old, y_old)
        print(f"Pretrained net (digits 0-9), accuracy on its own data: {base.score(X_old, y_old):.2f}")

        def features(images):
            """Frozen backbone: run the pretrained hidden layers. Nothing here is trained."""
            a = images
            for W, b in zip(base.coefs_[:-1], base.intercepts_[:-1]):   # skip the old head
                a = np.maximum(0, a @ W + b)                             # ReLU
            return a                                                     # 32 numbers per image

        # ── Part 2: a new head on frozen features vs training from scratch ──
        print("\n== Part 2: transfer vs from scratch ==")
        transfer, scratch = [], []
        for draw in range(5):                          # 5 different small training sets
            rng = np.random.RandomState(draw)
            idx = np.concatenate([rng.choice(np.where(y_new == c)[0], N_PER_CLASS, replace=False) for c in (0, 1)])
            test = np.ones(len(y_new), dtype=bool)
            test[idx] = False
            # Transfer: frozen features + a NEW small head trained on the few examples.
            head = LogisticRegression(max_iter=2000).fit(features(X_new[idx]), y_new[idx])
            transfer.append(head.score(features(X_new[test]), y_new[test]))
            # Baseline: a fresh network trained from scratch on the same few examples.
            fresh = MLPClassifier(hidden_layer_sizes=(64, 32), max_iter=1000, random_state=0)
            scratch.append(fresh.fit(X_new[idx], y_new[idx]).score(X_new[test], y_new[test]))

        print(f"Labelled images for the new task: {2 * N_PER_CLASS}")
        print(f"From scratch      : average accuracy {np.mean(scratch):.2f}")
        print(f"Transfer (frozen) : average accuracy {np.mean(transfer):.2f}")
        print(f"Parameters trained in the new head: {head.coef_.size + head.intercept_.size}")

        # ── Part 3: freeze ResNet-18 and add a new head (run this part on your own computer) ──
        print("\n== Part 3: ResNet-18 with a new head ==")
        # pip install torch torchvision    (the first run downloads the weights, so it needs internet)
        try:
            import torch
            import torch.nn as nn
            from torchvision import models
        except ImportError:
            torch = None
        if torch is None:
            print("Part 3 uses PyTorch and torchvision, which do not run in the browser. Copy this part to your computer to run it.")
        else:
            weights = models.ResNet18_Weights.DEFAULT
            model = models.resnet18(weights=weights)       # downloads the pretrained weights once

            for p in model.parameters():                   # 1. freeze every layer
                p.requires_grad = False

            model.fc = nn.Linear(model.fc.in_features, 3)  # 2. new head: 512 -> 3 (apple, banana, orange)

            optimizer = torch.optim.AdamW(model.fc.parameters(), lr=1e-3)   # 3. train only the head
            preprocess = weights.transforms()              # resize and normalise like ImageNet

            total = sum(p.numel() for p in model.parameters())
            trainable = sum(p.numel() for p in model.parameters() if p.requires_grad)
            print(f"total parameters    : {total:,}")
            print(f"trainable parameters: {trainable:,}")
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Fine-Tuning Pretrained Models</h1>
        </div>
        <p class="lc-lead">Earlier in this course, you froze a pretrained network and trained only a new head. That is called <strong>feature extraction</strong>. <strong>Fine-tuning</strong> goes one step further: you also unfreeze some pretrained layers and train them a little. In this lesson, you will learn which layers to unfreeze and why they need a lower learning rate. You will also give each part of the model its own learning rate.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="Three ways to train a ResNet-18 on fruit photos. Feature extraction: all blocks frozen, only the new head trains at 1e-3. Fine-tune the top: layer4 trains at 1e-4 and the head at 1e-3. Full fine-tune: every block trains, with smaller learning rates for earlier blocks.">
            <defs><marker id="td17a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <text x="217" y="24" font-weight="700" fill="#93c5fd">conv1</text>
              <text x="309" y="24" font-weight="700" fill="#93c5fd">layer1</text>
              <text x="401" y="24" font-weight="700" fill="#93c5fd">layer2</text>
              <text x="493" y="24" font-weight="700" fill="#93c5fd">layer3</text>
              <text x="585" y="24" font-weight="700" fill="#93c5fd">layer4</text>
              <text x="687" y="24" font-weight="700" fill="#f9a8d4">fc (new head)</text>

              <text x="80" y="66" font-weight="700" text-anchor="middle">Feature</text>
              <text x="80" y="82" font-weight="700" text-anchor="middle">extraction</text>
              <g fill="#1f1f44" stroke="#4b4a78">
                <rect x="177" y="45" width="80" height="44" rx="8"/><rect x="269" y="45" width="80" height="44" rx="8"/>
                <rect x="361" y="45" width="80" height="44" rx="8"/><rect x="453" y="45" width="80" height="44" rx="8"/>
                <rect x="545" y="45" width="80" height="44" rx="8"/>
              </g>
              <g fill="#9b99b8"><text x="217" y="72">frozen</text><text x="309" y="72">frozen</text><text x="401" y="72">frozen</text><text x="493" y="72">frozen</text><text x="585" y="72">frozen</text></g>
              <rect x="637" y="45" width="100" height="44" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="687" y="72">lr 1e-3</text>

              <text x="80" y="136" font-weight="700">Fine-tune</text>
              <text x="80" y="152" font-weight="700">the top</text>
              <g fill="#1f1f44" stroke="#4b4a78">
                <rect x="177" y="115" width="80" height="44" rx="8"/><rect x="269" y="115" width="80" height="44" rx="8"/>
                <rect x="361" y="115" width="80" height="44" rx="8"/><rect x="453" y="115" width="80" height="44" rx="8"/>
              </g>
              <g fill="#9b99b8"><text x="217" y="142">frozen</text><text x="309" y="142">frozen</text><text x="401" y="142">frozen</text><text x="493" y="142">frozen</text></g>
              <rect x="545" y="115" width="80" height="44" rx="8" fill="#27274e" stroke="#10b981" stroke-width="2"/>
              <text x="585" y="142">lr 1e-4</text>
              <rect x="637" y="115" width="100" height="44" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="687" y="142">lr 1e-3</text>

              <text x="80" y="206" font-weight="700">Full</text>
              <text x="80" y="222" font-weight="700">fine-tune</text>
              <g fill="#27274e" stroke="#10b981" stroke-width="2">
                <rect x="177" y="185" width="80" height="44" rx="8"/><rect x="269" y="185" width="80" height="44" rx="8"/>
                <rect x="361" y="185" width="80" height="44" rx="8"/><rect x="453" y="185" width="80" height="44" rx="8"/>
                <rect x="545" y="185" width="80" height="44" rx="8"/>
              </g>
              <text x="217" y="212">lr 1e-5</text><text x="309" y="212">lr 1e-5</text><text x="401" y="212">lr 3e-5</text><text x="493" y="212">lr 3e-5</text><text x="585" y="212">lr 1e-4</text>
              <rect x="637" y="185" width="100" height="44" rx="8" fill="#27274e" stroke="#ec4899" stroke-width="2"/>
              <text x="687" y="212">lr 1e-3</text>

              <line x1="177" y1="256" x2="725" y2="256" stroke="#f59e0b" stroke-width="1.5" marker-end="url(#td17a)"/>
              <text x="177" y="282" text-anchor="start" fill="#fcd34d">general features (edges, colours)</text>
              <text x="737" y="282" text-anchor="end" fill="#fcd34d">specific features (fruit parts)</text>
            </g>
          </svg>
          <figcaption>Green blocks train, grey blocks stay frozen. Blocks near the input get the smallest learning rate, because their general features are already useful.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Feature extraction or fine-tuning?</h3>
          <p>A pretrained network such as ResNet-18 learned from more than a million photos. Its layers form a stack:</p>
          <ul class="lc-list">
            <li><strong>Early layers</strong> find general patterns, such as edges, colours and simple textures. Almost every photo task needs these.</li>
            <li><strong>Late layers</strong> combine them into specific parts, such as fur, wheels or leaves. These fit the old task best.</li>
            <li><strong>The head</strong> (the last layer, <code>fc</code>) turns features into class scores. You replace it with a new one for your classes.</li>
          </ul>
          <p>In <strong>feature extraction</strong>, you freeze every pretrained layer. Only the new head learns. In <strong>fine-tuning</strong>, you also <strong>unfreeze</strong> some layers. "Unfreeze" means you let the optimiser change their weights again. You usually start with the last block, because its features are the most specific to the old task.</p>
          <p>For the greengrocer's fruit photos, the edges and colours from ResNet-18 are useful as they are. But "banana skin" is not a pattern the old task needed. Fine-tuning <code>layer4</code> lets the model learn it.</p>
        </div>
        <div class="lc-card">
          <h3>Why the learning rate must be lower</h3>
          <p>The pretrained weights are already good. You only want to nudge them. A big learning rate takes big steps and can destroy what they learned. This problem is called <strong>catastrophic forgetting</strong>: the model forgets useful old features while it learns the new task.</p>
          <p>The new head is different. It starts with random weights, so it needs bigger steps. A common rule is to give pretrained layers a learning rate about 10 times smaller than the head.</p>
          <table class="lc-table">
            <thead><tr><th>Part of the model</th><th>Starts as</th><th>Example learning rate</th></tr></thead>
            <tbody>
              <tr><td>New head (<code>fc</code>)</td><td>Random weights</td><td>1e-3 (0.001)</td></tr>
              <tr><td><code>layer4</code></td><td>Pretrained, specific features</td><td>1e-4 (0.0001)</td></tr>
              <tr><td><code>layer3</code> and earlier</td><td>Pretrained, general features</td><td>1e-5 or frozen</td></tr>
            </tbody>
          </table>
          <p>Using different learning rates for different layers is called <strong>discriminative learning rates</strong>. Many people also train in two stages. First, train only the head for a few epochs. Then unfreeze <code>layer4</code> and continue with the lower rate. This way, the random head cannot send large, messy gradients into the pretrained layers.</p>
          <p>These numbers are good starting points, not fixed rules. Check your validation loss and adjust them.</p>
        </div>
        <div class="lc-card">
          <h3>Fine-tuning in PyTorch</h3>
          <p>In PyTorch, each weight tensor has a <code>requires_grad</code> flag. When it is <code>False</code>, the weight is frozen. An optimiser can take <strong>parameter groups</strong>: a list of dictionaries, each with its own <code>params</code> and <code>lr</code>.</p>
          <p>Part 2 in the code editor below does this with a pretrained ResNet-18. It replaces the head with <code>nn.Linear(512, 3)</code> for apple, banana and orange. It freezes every weight, then unfreezes <code>layer4</code> and the head. Then it builds an <code>AdamW</code> optimiser with two parameter groups: 1e-4 for <code>layer4</code> and 1e-3 for the head.</p>
          <p>The first run downloads the ResNet-18 weights once (about 45 MB). ResNet-18 has 11,178,051 weights in total. After the freezing step, 8,395,267 of them are trainable. <code>layer4</code> alone holds 8,393,728, about 75% of all weights. The new head has only 512 × 3 + 3 = 1,539. So unfreezing even one block makes training much heavier, and the model can overfit a small dataset more easily.</p>
          <p>Later, you can unfreeze one more block. Set <code>requires_grad = True</code> for <code>layer3</code>. Then call <code>optimizer.add_param_group</code> with its parameters and an even smaller rate, such as 1e-5. The optimiser now has three groups, with rates 0.0001, 0.001 and 1e-05. The last lines of Part 2 do this.</p>
          <p>Frozen layers still change in one way. Batch norm layers update their running averages in <code>model.train()</code> mode, even when their weights are frozen. With very small batches, some people put those layers in eval mode. Check the PyTorch docs for your case.</p>
        </div>
        <div class="lc-card">
          <h3>When to fine-tune and when to extract features</h3>
          <p>Two questions decide it. How much labelled data do you have? How similar is your task to the original one?</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Task similar to the original</th><th>Task very different</th></tr></thead>
            <tbody>
              <tr><td><strong>Small dataset</strong> (hundreds of images)</td><td>Feature extraction. Fine-tuning may overfit.</td><td>Feature extraction first. Then try fine-tuning the top block with a very low rate.</td></tr>
              <tr><td><strong>Large dataset</strong> (many thousands)</td><td>Fine-tune the top blocks.</td><td>Fine-tune more blocks, or all of them, with discriminative rates.</td></tr>
            </tbody>
          </table>
          <p>The fruit dataset has 700 training photos, and fruit looks like many everyday photos. So a good plan is: feature extraction first, then fine-tune <code>layer4</code> and keep it only if the validation loss improves.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: fine-tune or extract features?</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">Pick the best first plan for each project.</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="extract" data-label="Feature extraction"></div>
              <div data-sorter-target="bucket" data-bucket="tune" data-label="Fine-tune some layers"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="extract" data-why="With so few photos, training millions of weights would overfit. A frozen body is safer.">200 photos of 4 kinds of dog, a pretrained photo model</li>
              <li data-bucket="tune" data-why="There is plenty of data, so the model can safely adjust its top layers to the new classes.">50,000 labelled shop product photos</li>
              <li data-bucket="tune" data-why="Medical scans look very different from everyday photos. The specific features need to change, and 20,000 images is enough to do it.">20,000 X-ray images, a model pretrained on everyday photos</li>
              <li data-bucket="extract" data-why="You need a quick result on a laptop CPU. Training only the head is fast and cheap.">A quick test on a laptop with no GPU</li>
              <li data-bucket="tune" data-why="Feature extraction gave a starting point. Unfreezing the last block with a low rate is the usual next step.">The frozen model plateaus at 85% and you have 5,000 more photos</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>The same idea in NumPy</h3>
          <p>PyTorch does not run in the browser, so Part 1 in the code editor below runs the same idea with a tiny NumPy network. A "body" layer is pre-trained on a big old task with 3,000 examples. Then a new 3-class task gets only 30 examples. The program trains a new head in four ways: from scratch, feature extraction, fine-tuning with a low body rate, and fine-tuning with a high body rate. Run Part 1 to see the four test accuracies.</p>
          <p>Training from scratch on 30 examples does badly, at about 56%. The frozen body helps, at about 60%. Fine-tuning with a low body rate does best, at about 67%. A high body rate ruins part of the pre-trained features, so it falls behind. These numbers come from small made-up data. With real photos the gaps are different, but the pattern is common.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code and read the four accuracy lines of Part 1.</li>
            <li>In Part 1, change <code>N_NEW = 30</code> to <code>300</code>. Every method improves. Does fine-tuning still beat feature extraction?</li>
            <li>In Part 1, change <code>BODY_LR</code> to <code>0.5</code>, the same as the head. What happens to the "low LR" line?</li>
            <li>In Part 1, change the seed to 1 or 2. Is the order of the four lines the same?</li>
            <li>On your own computer, run Part 2. Then change it to unfreeze only the head. How many weights are trainable now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Fine-tuning unfreezes the last pretrained layers. It trains them with a learning rate about 10 times lower than the new head. Start with feature extraction, then fine-tune only if your data and validation loss say it helps.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Fine-tuning pretrained models: the whole lesson in two parts.
        # Part 1 runs here. Part 2 needs PyTorch, so run it on your own computer.
        import numpy as np

        # ── Part 1: feature extraction vs fine-tuning, with a tiny NumPy network ──
        # Both tasks are built from the same hidden "features", like real photos.
        print("== Part 1: feature extraction vs fine-tuning in NumPy ==")

        np.random.seed(42)
        N_NEW = 30            # labelled examples for the new task
        BODY_LR = 0.05        # learning rate for the pretrained body
        HEAD_LR = 0.5         # learning rate for the new head

        # A hidden "true" feature maker that both tasks share.
        A = np.random.randn(20, 8)
        def make_task(n, head, shift=0.0):
            X = np.random.randn(n, 20)
            H = np.tanh(X @ (A + shift))                 # the real features
            return X, (H @ head).argmax(1)

        old_X, old_y = make_task(3000, np.random.randn(8, 5))          # big old task
        new_head = np.random.randn(8, 3)                                # 3 new classes
        shift = np.random.randn(20, 8) * 0.3                            # new task differs a bit
        new_X, new_y = make_task(N_NEW, new_head, shift)
        test_X, test_y = make_task(2000, new_head, shift)

        def train(X, y, W1, W2, body_lr, head_lr, steps=400):
            W1, W2 = W1.copy(), W2.copy()
            Y = np.eye(W2.shape[1])[y]
            for _ in range(steps):
                H = np.tanh(X @ W1)                      # body
                Z = H @ W2                               # head
                P = np.exp(Z - Z.max(1, keepdims=True)); P /= P.sum(1, keepdims=True)
                dZ = (P - Y) / len(X)
                dW1 = X.T @ ((dZ @ W2.T) * (1 - H ** 2))
                W2 -= head_lr * (H.T @ dZ)
                W1 -= body_lr * dW1                      # body_lr = 0 means frozen
            return W1, W2

        def accuracy(X, y, W1, W2):
            return np.mean((np.tanh(X @ W1) @ W2).argmax(1) == y)

        # Step 1: pre-train a body (16 features) and an old head on the big task.
        body0 = np.random.randn(20, 16) * 0.3
        body_pre, _ = train(old_X, old_y, body0, np.random.randn(16, 5) * 0.1, 0.5, 0.5, 1500)
        print(f"Pre-trained on {len(old_y)} examples. New task has {N_NEW}.\n")

        # Step 2: a new head for 3 classes, trained in four ways.
        head0 = np.random.randn(16, 3) * 0.1
        runs = {
            "from scratch":         (body0, HEAD_LR),
            "feature extraction":   (body_pre, 0.0),
            "fine-tune, low LR":    (body_pre, BODY_LR),
            "fine-tune, high LR":   (body_pre, HEAD_LR * 4),
        }
        for name, (body, body_lr) in runs.items():
            W1, W2 = train(new_X, new_y, body, head0, body_lr, HEAD_LR)
            acc = accuracy(test_X, test_y, W1, W2)
            print(f"{name:20} body LR {body_lr:<5} test acc {acc:.1%} " + "#" * int(acc * 30))

        # ── Part 2: fine-tune ResNet-18 in PyTorch (run this part on your own computer) ──
        # pip install torch torchvision
        print("\n== Part 2: fine-tune ResNet-18 in PyTorch ==")
        try:
            import torch
            from torch import nn
            from torchvision.models import resnet18, ResNet18_Weights
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            model = resnet18(weights=ResNet18_Weights.DEFAULT)   # downloads once
            model.fc = nn.Linear(512, 3)            # apple, banana, orange

            # 1) Freeze everything, then unfreeze the last block and the head.
            for p in model.parameters():
                p.requires_grad = False
            for p in model.layer4.parameters():
                p.requires_grad = True
            for p in model.fc.parameters():
                p.requires_grad = True

            def count(params):
                return sum(p.numel() for p in params)

            print("all weights:", count(model.parameters()))
            print("trainable:  ", count(p for p in model.parameters() if p.requires_grad))

            # 2) Discriminative learning rates: one group per part.
            optimizer = torch.optim.AdamW([
                {"params": model.layer4.parameters(), "lr": 1e-4},   # pretrained: small steps
                {"params": model.fc.parameters(),     "lr": 1e-3},   # new head: bigger steps
            ], weight_decay=0.01)
            for group in optimizer.param_groups:
                print("group lr:", group["lr"], "tensors:", len(group["params"]))

            # 3) Later stage: also unfreeze layer3, with an even smaller learning rate.
            for p in model.layer3.parameters():
                p.requires_grad = True
            optimizer.add_param_group({"params": model.layer3.parameters(), "lr": 1e-5})
            print([group["lr"] for group in optimizer.param_groups])
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Monitoring Training (Loss Curves, TensorBoard)</h1>
        </div>
        <p class="lc-lead">Training can run for minutes or days. You cannot wait until the end to find out it went wrong. In this lesson, you will learn to read <strong>loss curves</strong>, compare training loss with validation loss, and log your numbers to <strong>TensorBoard</strong>, a free tool that draws the curves for you while training runs.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="A loss chart over 60 epochs. Training loss falls all the time. Validation loss falls until about epoch 22, then slowly rises. Before that point the model is still learning. After it, the gap grows and the model overfits. The best checkpoint is at the lowest validation loss.">
            <g font-family="inherit" font-size="12" fill="#e2e0f0">
              <rect x="70" y="20" width="183" height="220" fill="#10b981" opacity="0.08"/>
              <rect x="253" y="20" width="317" height="220" fill="#ec4899" opacity="0.08"/>
              <line x1="70" y1="240" x2="570" y2="240" stroke="#4b4a78" stroke-width="1.5"/>
              <line x1="70" y1="20" x2="70" y2="240" stroke="#4b4a78" stroke-width="1.5"/>
              <g fill="#9b99b8" text-anchor="middle">
                <text x="70" y="258">0</text><text x="153" y="258">10</text><text x="237" y="258">20</text><text x="320" y="258">30</text><text x="403" y="258">40</text><text x="487" y="258">50</text><text x="570" y="258">60</text>
                <text x="320" y="282">epoch</text>
              </g>
              <text x="30" y="135" fill="#9b99b8" text-anchor="middle" transform="rotate(-90 30 135)">loss</text>
              <path d="M78,17 C105,120 130,190 170,212 C220,234 330,238 570,239" fill="none" stroke="#3b82f6" stroke-width="2.5"/>
              <path d="M78,13 C110,120 140,170 190,192 C225,206 245,205 260,204 C330,198 450,186 570,176" fill="none" stroke="#f59e0b" stroke-width="2.5"/>
              <line x1="253" y1="30" x2="253" y2="240" stroke="#10b981" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="160" y="40" text-anchor="middle" fill="#6ee7b7">still learning</text>
              <text x="420" y="40" text-anchor="middle" fill="#f9a8d4">overfitting: the gap grows</text>
              <text x="262" y="82" fill="#6ee7b7">best epoch</text>
              <text x="262" y="98" fill="#6ee7b7">(lowest val loss)</text>
              <path d="M500,186 L500,236" stroke="#ec4899" stroke-width="1.5"/>
              <text x="508" y="222" fill="#f9a8d4">gap</text>
              <rect x="590" y="40" width="160" height="96" rx="10" fill="#1f1f44" stroke="#4b4a78"/>
              <line x1="604" y1="68" x2="634" y2="68" stroke="#3b82f6" stroke-width="3"/>
              <text x="642" y="72">train loss</text>
              <line x1="604" y1="96" x2="634" y2="96" stroke="#f59e0b" stroke-width="3"/>
              <text x="642" y="100">val loss</text>
              <line x1="604" y1="122" x2="634" y2="122" stroke="#10b981" stroke-width="1.5" stroke-dasharray="5 4"/>
              <text x="642" y="126">checkpoint</text>
              <text x="670" y="170" text-anchor="middle" fill="#9b99b8">Train loss: how well</text>
              <text x="670" y="188" text-anchor="middle" fill="#9b99b8">it fits seen data.</text>
              <text x="670" y="216" text-anchor="middle" fill="#9b99b8">Val loss: how well it</text>
              <text x="670" y="234" text-anchor="middle" fill="#9b99b8">works on new data.</text>
            </g>
          </svg>
          <figcaption>A typical pattern, drawn to show the shape clearly. In the starter code, validation loss is lowest near epoch 22 and then rises slowly: from there, the model is memorising.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>What to log</h3>
          <p>A <strong>loss curve</strong> is a chart of the loss after each epoch (or each step). Log at least these numbers:</p>
          <ul class="lc-list">
            <li><strong>Training loss</strong>: the average loss on the training batches. It tells you if the model can learn at all.</li>
            <li><strong>Validation loss</strong>: the loss on the validation set, in <code>model.eval()</code> mode with no gradients. It tells you how well the model works on data it did not train on.</li>
            <li><strong>A metric people understand</strong>, such as validation accuracy. Loss is good for training, but "92% of fruit photos right" is easier to explain.</li>
            <li><strong>The learning rate</strong>, if you use a schedule. Then you can see if a jump in the loss matches a change in the rate.</li>
          </ul>
          <p>Training loss for one batch jumps up and down a lot. So people usually look at the average over an epoch, or a smoothed line.</p>
        </div>
        <div class="lc-card">
          <h3>Reading train and validation curves together</h3>
          <table class="lc-table">
            <thead><tr><th>What you see</th><th>What it means</th><th>What to try</th></tr></thead>
            <tbody>
              <tr><td>Both fall and stay close</td><td>Healthy training</td><td>Keep going until val loss stops falling</td></tr>
              <tr><td>Train falls, val falls then rises</td><td><strong>Overfitting</strong>: the model memorises the training data</td><td>Use the best checkpoint, early stopping, more data, augmentation, dropout or weight decay</td></tr>
              <tr><td>Both stay high and flat</td><td><strong>Underfitting</strong>: the model is too weak or not learning</td><td>Train longer, use a bigger model, check the learning rate and the data</td></tr>
              <tr><td>Loss jumps around wildly or shoots up</td><td>Learning rate too high</td><td>Lower the learning rate, add warmup</td></tr>
              <tr><td>Val loss is lower than train loss</td><td>Often normal: dropout is on during training only</td><td>Check that the validation set is not easier or leaked</td></tr>
            </tbody>
          </table>
          <p>Save a <strong>checkpoint</strong> (a copy of the weights) each time the validation loss reaches a new lowest value. At the end, you use that checkpoint, not the last one.</p>
        </div>
        <div class="lc-card">
          <h3>Logging to TensorBoard</h3>
          <p>TensorBoard reads small log files and draws live charts in your browser. Install it with <code>pip install tensorboard</code>. In PyTorch, a <code>SummaryWriter</code> writes the log files. <code>add_scalar(tag, value, step)</code> adds one point to a chart. Tags with the same first part, such as <code>loss/train</code> and <code>loss/val</code>, appear in the same section.</p>
          <p>Part 2 in the code editor below shows it with a small PyTorch model and random data. It uses one full batch per epoch, so it stays short. After each epoch, it logs the training loss, the validation loss and the learning rate.</p>
          <p>Part 2 prints only one short line. It creates a folder <code>runs/fruit_lr1e-3</code> with an event file inside. Now start TensorBoard in a terminal with <code>tensorboard --logdir runs</code>. This command is a comment at the top of Part 2.</p>
          <p>It prints a web address, usually <code>http://localhost:6006</code>. Open it to see the charts. They update while training runs. Use a different folder for each run, such as <code>runs/fruit_lr1e-4</code>. Then TensorBoard draws both runs on the same chart, so you can compare them.</p>
          <p>Other tools, such as Weights &amp; Biases or MLflow, do the same job. They can also store your runs online or on a server. The idea is the same: log a value with a step number.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: diagnose the curves</h3>
          <div class="lcw" data-controller="sorter">
            <p class="lcw-prompt">What does each loss curve tell you?</p>
            <div class="lcw-buckets">
              <div data-sorter-target="bucket" data-bucket="good" data-label="Healthy"></div>
              <div data-sorter-target="bucket" data-bucket="over" data-label="Overfitting"></div>
              <div data-sorter-target="bucket" data-bucket="under" data-label="Underfitting"></div>
              <div data-sorter-target="bucket" data-bucket="lr" data-label="Learning rate too high"></div>
            </div>
            <ul data-sorter-target="pool">
              <li data-bucket="over" data-why="The model gets better on training data but worse on new data. It is memorising.">Train loss 0.05 and falling, val loss rose from 0.34 to 0.60</li>
              <li data-bucket="under" data-why="Both losses are high and flat, so the model has not learned the pattern yet.">Train and val loss both stuck at 1.09 for 20 epochs</li>
              <li data-bucket="good" data-why="Both fall together with a small gap. Keep training and watch the val loss.">Train 0.42, val 0.45, both still falling</li>
              <li data-bucket="lr" data-why="Big steps jump over the minimum, so the loss bounces or explodes.">Loss jumps between 0.8 and 3.5, then becomes NaN</li>
              <li data-bucket="over" data-why="A training accuracy far above the validation accuracy is the same warning sign as a growing loss gap.">Train accuracy 100%, val accuracy 71% and dropping</li>
              <li data-bucket="under" data-why="A model with too few weights cannot fit even the training data well.">A tiny model: train loss stops at 0.90 and val loss at 0.92</li>
            </ul>
          </div>
        </div>
        <div class="lc-card">
          <h3>A text loss chart in the editor</h3>
          <p>The browser cannot run PyTorch or TensorBoard. So Part 1 in the code editor trains a small scikit-learn network on the digits dataset instead. It trains on only 150 images, so it can overfit. After every epoch, it stores the training and validation loss in a list, like a tiny TensorBoard. Then it prints a text chart, with one row for every 5th epoch. Run the code to see it.</p>
          <p>Read it like the diagram. T moves left all the time: training loss keeps falling, from about 2.0 to 0.004. V stops moving left near epoch 22, at a loss of 0.341. Then it slowly moves right, to 0.384 at epoch 60. The best model was at epoch 22. Training past that point only made it worse on new data.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code and find the epoch with the lowest validation loss in Part 1.</li>
            <li>In Part 1, change <code>TRAIN_SIZE = 150</code> to <code>1000</code>. Is the gap at the end smaller?</li>
            <li>In Part 1, change <code>LR = 0.01</code> to <code>0.2</code>. The loss jumps up in the first epochs, and the chart is squashed. This is a learning rate that is too high.</li>
            <li>Set <code>LR</code> back to <code>0.01</code>. Then change <code>(128,)</code> to <code>(4,)</code>, a tiny hidden layer. Both losses stay high: this is underfitting.</li>
            <li>On your own computer, run Part 2 twice: once as it is, and once with <code>lr=1e-4</code> and the folder <code>runs/fruit_lr1e-4</code>. Compare both runs in TensorBoard.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Always log training and validation loss together. The training curve shows whether the model can learn. The validation curve shows whether that learning helps on new data. Its lowest point tells you which checkpoint to keep.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Monitoring training: the whole lesson in two parts.
        # Part 1 runs here. Part 2 needs PyTorch and TensorBoard, so run it on your own computer.
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.model_selection import train_test_split
        from sklearn.neural_network import MLPClassifier
        from sklearn.metrics import log_loss

        # ── Part 1: log train and validation loss, then draw a text loss chart ──
        print("== Part 1: a text loss chart ==")
        EPOCHS = 60
        TRAIN_SIZE = 150          # small on purpose, so the model can overfit
        LR = 0.01

        X, y = load_digits(return_X_y=True)
        X = X / 16.0
        X_train, X_val, y_train, y_val = train_test_split(
            X, y, train_size=TRAIN_SIZE, stratify=y, random_state=42)

        model = MLPClassifier(hidden_layer_sizes=(128,), learning_rate_init=LR,
                              alpha=0.0, random_state=42)
        history = []                                        # like a tiny TensorBoard
        for epoch in range(1, EPOCHS + 1):
            model.partial_fit(X_train, y_train, classes=np.arange(10))
            train_loss = log_loss(y_train, model.predict_proba(X_train), labels=range(10))
            val_loss = log_loss(y_val, model.predict_proba(X_val), labels=range(10))
            history.append((epoch, train_loss, val_loss))

        # Text chart: T = train loss, V = validation loss. Longer bar = higher loss.
        top = max(max(t, v) for _, t, v in history)
        print("epoch  train   val    chart (T = train, V = val)")
        for epoch, t, v in history:
            if epoch % 5 and epoch != 1:
                continue                                    # print every 5th epoch
            row = [" "] * 41
            row[int(t / top * 40)] = "T"
            row[int(v / top * 40)] = "V"
            print(f"{epoch:5}  {t:.3f}  {v:.3f}  |{''.join(row)}")

        best = min(history, key=lambda h: h[2])
        print(f"\nLowest validation loss: {best[2]:.3f} at epoch {best[0]}")
        print(f"Gap at the end (val - train): {history[-1][2] - history[-1][1]:.3f}")

        # ── Part 2: log to TensorBoard from PyTorch (run this part on your own computer) ──
        # pip install torch tensorboard
        # After it runs, start TensorBoard in a terminal:   tensorboard --logdir runs
        # Then open the address it prints, usually http://localhost:6006
        print("\n== Part 2: logging to TensorBoard ==")
        try:
            import torch
            from torch import nn
            from torch.utils.tensorboard import SummaryWriter
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch and TensorBoard, which do not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            X_train, y_train = torch.randn(200, 10), torch.randint(0, 3, (200,))
            X_val, y_val = torch.randn(50, 10), torch.randint(0, 3, (50,))

            model = nn.Sequential(nn.Linear(10, 32), nn.ReLU(), nn.Linear(32, 3))
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-3)
            loss_fn = nn.CrossEntropyLoss()
            writer = SummaryWriter("runs/fruit_lr1e-3")       # one folder per run

            for epoch in range(20):
                model.train()
                optimizer.zero_grad()
                loss = loss_fn(model(X_train), y_train)
                loss.backward()
                optimizer.step()

                model.eval()
                with torch.no_grad():
                    val_loss = loss_fn(model(X_val), y_val)

                writer.add_scalar("loss/train", loss.item(), epoch)
                writer.add_scalar("loss/val", val_loss.item(), epoch)
                writer.add_scalar("lr", optimizer.param_groups[0]["lr"], epoch)

            writer.close()
            print("Logs written to runs/fruit_lr1e-3. Now run: tensorboard --logdir runs")
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Debugging Training Problems</h1>
        </div>
        <p class="lc-lead">Deep learning bugs are quiet. The code runs, no error appears, but the model learns nothing, or the loss becomes <code>nan</code>. In this lesson, you will learn a step-by-step checklist that finds most training bugs. You look at the data, check shapes and check the first loss. Then you <strong>overfit one batch</strong> before you train on everything.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 290" role="img" aria-label="A debugging ladder with five checks from left to right: look at the data, check shapes, check the first loss, overfit one batch, then train and watch the curves. Under each check is what to fix if it fails.">
            <defs><marker id="td19a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="132" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="76" y="46" font-weight="700" fill="#93c5fd">1. Look at data</text>
              <text x="76" y="68">a few images</text>
              <text x="76" y="86">and their labels</text>
              <rect x="160" y="20" width="132" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="226" y="46" font-weight="700" fill="#c4b5fd">2. Check shapes</text>
              <text x="226" y="68">print .shape at</text>
              <text x="226" y="86">each layer</text>
              <rect x="310" y="20" width="132" height="80" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="376" y="46" font-weight="700" fill="#67e8f9">3. First loss</text>
              <text x="376" y="68">about ln(classes)</text>
              <text x="376" y="86">ln(3) = 1.10</text>
              <rect x="460" y="20" width="132" height="80" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="526" y="46" font-weight="700" fill="#6ee7b7">4. Overfit 1 batch</text>
              <text x="526" y="68">loss should go</text>
              <text x="526" y="86">close to 0</text>
              <rect x="610" y="20" width="140" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="680" y="46" font-weight="700" fill="#fcd34d">5. Full training</text>
              <text x="680" y="68">watch train and</text>
              <text x="680" y="86">val loss curves</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td19a)">
                <line x1="143" y1="60" x2="157" y2="60"/><line x1="293" y1="60" x2="307" y2="60"/>
                <line x1="443" y1="60" x2="457" y2="60"/><line x1="593" y1="60" x2="607" y2="60"/>
              </g>
              <g stroke="#ec4899" stroke-width="1.5" stroke-dasharray="4 3" marker-end="url(#td19a)">
                <line x1="76" y1="102" x2="76" y2="140"/><line x1="226" y1="102" x2="226" y2="140"/>
                <line x1="376" y1="102" x2="376" y2="140"/><line x1="526" y1="102" x2="526" y2="140"/>
                <line x1="680" y1="102" x2="680" y2="140"/>
              </g>
              <text x="151" y="126" fill="#f9a8d4" font-size="11">if it fails</text>
              <g fill="#27274e" stroke="#ec4899">
                <rect x="10" y="144" width="132" height="96" rx="10"/><rect x="160" y="144" width="132" height="96" rx="10"/>
                <rect x="310" y="144" width="132" height="96" rx="10"/><rect x="460" y="144" width="132" height="96" rx="10"/>
                <rect x="610" y="144" width="140" height="96" rx="10"/>
              </g>
              <g font-size="11.5">
                <text x="76" y="170">wrong labels</text><text x="76" y="190">pixels 0 to 255</text><text x="76" y="210">duplicates, empty</text><text x="76" y="228">files</text>
                <text x="226" y="170">labels (N, 1)</text><text x="226" y="190">not (N,)</text><text x="226" y="210">wrong Linear</text><text x="226" y="228">input size</text>
                <text x="376" y="170">much too high:</text><text x="376" y="190">no scaling, bad</text><text x="376" y="210">init, or a wrong</text><text x="376" y="228">loss function</text>
                <text x="526" y="170">bug in model,</text><text x="526" y="190">loss or update:</text><text x="526" y="210">no zero_grad,</text><text x="526" y="228">no step()</text>
                <text x="680" y="170">nan: lower the LR</text><text x="680" y="190">flat: check LR</text><text x="680" y="210">and labels</text><text x="680" y="228">gap: overfitting</text>
              </g>
              <text x="380" y="272" fill="#9b99b8">Fix the first check that fails. Only then move to the right.</text>
            </g>
          </svg>
          <figcaption>The debugging ladder. Cheap checks come first. Full training is the slowest check, so it comes last.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Start with the data and the shapes</h3>
          <p>Most training bugs are data bugs. Before you train, print a few examples and their labels. For images, look at them. Ask simple questions:</p>
          <ul class="lc-list">
            <li>Do the labels match the pictures? A banana labelled "orange" teaches the model the wrong thing.</li>
            <li>Are the pixel values in the range you expect, such as 0 to 1 after scaling?</li>
            <li>Are all classes present in the batch? A sorted dataset with <code>shuffle=False</code> can give batches of only apples.</li>
          </ul>
          <p>Next, check <strong>shapes</strong>. A shape bug can crash, or it can run quietly and give wrong results. One common crash is passing labels with shape <code>(N, 1)</code> to <code>CrossEntropyLoss</code>. It wants class numbers with shape <code>(N,)</code>. Say the model gives <code>logits</code> with shape <code>(8, 3)</code>: 8 examples, 3 classes. The labels have shape <code>(8, 1)</code>. Then <code>nn.CrossEntropyLoss()(logits, labels)</code> stops with an error like "RuntimeError: 0D or 1D target tensor expected, multi-target not supported". Print both shapes first, and the bug is easy to see. Part 2 in the code editor below makes this crash on purpose, catches the error and prints it.</p>
          <p>The fix is <code>labels.squeeze(1)</code> or <code>labels.view(-1)</code>, which gives shape <code>(8,)</code>. Part 2 applies this fix, and then the loss works. The exact wording of error messages can change between PyTorch versions, but the shape rule stays the same.</p>
        </div>
        <div class="lc-card">
          <h3>Check the first loss</h3>
          <p>Before training, a classifier knows nothing. It should give each class about the same probability. For <em>C</em> classes, each gets 1/<em>C</em>, so the cross-entropy loss is about ln(<em>C</em>).</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Classes</th><th>Expected first loss</th></tr></thead>
            <tbody>
              <tr><td>Fruit photos</td><td>3</td><td>ln(3) = 1.099</td></tr>
              <tr><td>Digits</td><td>10</td><td>ln(10) = 2.303</td></tr>
              <tr><td>ImageNet classes</td><td>1,000</td><td>ln(1000) = 6.908</td></tr>
            </tbody>
          </table>
          <p>Random weights make it a little higher, which is fine. Sometimes the first loss is much higher, for example 20 instead of 2.3. Then the model is very sure and very wrong before it has learned anything. Common causes are unscaled inputs (pixels 0 to 255) or weights that start too big.</p>
        </div>
        <div class="lc-card">
          <h3>Overfit one batch first</h3>
          <p>Take one small batch, for example 8 examples, and train on it again and again. A working model can memorise 8 examples, so the loss must go close to 0. If it does not, the bug is in your code, not in your data size. This test takes seconds, not hours.</p>
          <p>Part 3 in the code editor below does this in PyTorch. It takes one batch from a <code>DataLoader</code>, keeps 8 examples, and trains on them for 200 steps. It prints the loss every 50 steps.</p>
          <p>With 3 classes, the loss should start near ln(3) = 1.099. Then it should fall towards 0. In Part 3 it starts at about 1.02 and ends at about 0.01, so the test passes. Part 1 runs the same test with a NumPy network, because PyTorch cannot run in the browser.</p>
          <p>If the loss stays flat, look for these bugs:</p>
          <ul class="lc-list">
            <li>a missing <code>optimizer.step()</code>, so the weights never change</li>
            <li>a missing <code>optimizer.zero_grad()</code>, so old gradients pile up</li>
            <li>weights that are frozen by mistake</li>
            <li>a softmax layer before <code>CrossEntropyLoss</code>. The loss already applies softmax inside.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common symptoms and fixes</h3>
          <table class="lc-table">
            <thead><tr><th>Symptom</th><th>Likely causes</th><th>What to try</th></tr></thead>
            <tbody>
              <tr><td>Loss becomes <code>nan</code> or <code>inf</code></td><td>Learning rate too high, unscaled inputs, <code>log(0)</code> in a hand-written loss, float16 overflow</td><td>Lower the LR, scale inputs, use built-in losses, gradient clipping with <code>torch.nn.utils.clip_grad_norm_</code></td></tr>
              <tr><td>Loss does not fall at all</td><td>LR too low or far too high, frozen layers, missing <code>step()</code>, "dead" ReLUs</td><td>Overfit one batch, print the LR, check <code>requires_grad</code></td></tr>
              <tr><td>Loss stuck at exactly ln(<em>C</em>)</td><td>The model always predicts equal probabilities, labels do not match inputs</td><td>Look at the data, check the label order</td></tr>
              <tr><td>Training fine, validation bad</td><td>Overfitting, or different preprocessing for validation</td><td>Use the same transforms, add regularisation, use more data</td></tr>
              <tr><td>Validation suspiciously perfect</td><td>Data leakage: the same images in train and validation</td><td>Remove duplicates, split before augmenting</td></tr>
            </tbody>
          </table>
          <p>Change one thing at a time. If you change three things and the loss improves, you do not know which change helped.</p>
        </div>
        <div class="lc-card">
          <h3>Activity: a debugging session</h3>
          <p>Sam trains the fruit classifier. Step through how Sam finds the bug.</p>
          <div class="lcw" data-controller="stepper">
            <ol data-stepper-target="steps">
              <li data-kind="warn" data-label="Symptom">After 10 epochs, train loss and val loss are both stuck at 1.098. Accuracy is 50%, the share of apples.</li>
              <li data-kind="thought" data-label="Think">1.098 is almost exactly ln(3) = 1.099. The model is giving every photo the same probabilities. It has learned nothing.</li>
              <li data-kind="tool" data-label="Check 4: overfit one batch">Sam trains on one batch of 8 photos for 200 steps.</li>
              <li data-kind="result" data-label="Result">The loss falls from 1.10 to 0.01. So the model, loss and optimiser all work.</li>
              <li data-kind="tool" data-label="Check 1: look at the data">Sam prints 8 file names with their labels from the full DataLoader.</li>
              <li data-kind="result" data-label="Result">"banana_014.jpg" has label 0 (apple). "orange_201.jpg" has label 1 (banana). The labels are shuffled separately from the images.</li>
              <li data-kind="check" data-label="Fix">Sam shuffles images and labels together, in one list of pairs. Train loss now falls to 0.3 in 10 epochs.</li>
              <li data-kind="answer" data-label="Lesson">A flat loss at ln(<em>C</em>) plus a passing one-batch test points to the data, not the model.</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>Practise in the editor</h3>
          <p>Part 1 in the code editor runs a small NumPy network on the digits dataset. It does checks 1, 3, 4 and 5 for you. Change <code>BUG</code> to switch on one bug. Run the code with <code>BUG = "none"</code> first.</p>
          <p>The data checks show 1,400 training images with pixels from 0 to 1. On one batch of 16, the first loss is 2.754. This is a little above ln(10) = 2.303 because of the random start. The loss falls to 0.006, so one batch is memorised. Full training reaches 91.9% validation accuracy. Here is what the three bugs do:</p>
          <table class="lc-table">
            <thead><tr><th>BUG</th><th>What you see</th></tr></thead>
            <tbody>
              <tr><td><code>"lr_too_high"</code></td><td>The loss explodes after one step, even on one batch</td></tr>
              <tr><td><code>"shuffled_labels"</code></td><td>One batch is memorised (loss 0.008), but full training stays near 2.1 and validation accuracy is 13.6%, close to guessing</td></tr>
              <tr><td><code>"no_scaling"</code></td><td>The first loss is 21.5, far above 2.303, so the run stops at once</td></tr>
            </tbody>
          </table>
          <p>Look at the shuffled labels case. The one-batch test passed, because a network can memorise anything. That is why you also look at the data.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code with <code>BUG = "none"</code> and read each check in Part 1.</li>
            <li>In Part 1, set <code>BUG = "shuffled_labels"</code>. Look at the "first 10 labels" line. Does it look wrong?</li>
            <li>In Part 1, set <code>BUG = "lr_too_high"</code>. Then change <code>50.0</code> to <code>5.0</code>. The loss no longer explodes, but it gets stuck at exactly 2.303. The ReLUs have "died" and output only 0.</li>
            <li>In Part 1, set <code>BUG = "no_scaling"</code> and change <code>0.5</code> to <code>0.02</code>. Full training now runs. Compare its first loss and its accuracy with the scaled run.</li>
            <li>On your own computer, run Part 3. Then delete the line <code>optimizer.step()</code>. Does the loss still fall?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> Debug in order, from cheap checks to expensive ones. Look at the data, check shapes, and check that the first loss is about ln(classes). Overfit one batch. Only then start a long training run.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Debugging training problems: the whole lesson in three parts.
        # Part 1 runs here. Parts 2 and 3 need PyTorch, so run them on your own computer.
        import numpy as np
        from sklearn.datasets import load_digits

        # ── Part 1: the debugging checklist on a NumPy network ──
        # Switch on one bug and see what changes.
        print("== Part 1: the debugging checklist ==")
        np.random.seed(42)
        BUG = "none"     # try: "none", "lr_too_high", "shuffled_labels", "no_scaling"
        LR = 50.0 if BUG == "lr_too_high" else 0.5

        X, y = load_digits(return_X_y=True)
        if BUG != "no_scaling":
            X = X / 16.0                              # pixels 0-16 -> 0-1
        if BUG == "shuffled_labels":
            y = np.random.permutation(y)              # labels no longer match images
        X_train, y_train, X_val, y_val = X[:1400], y[:1400], X[1400:], y[1400:]

        # Check 1: look at the data before training.
        print("X shape", X_train.shape, "| y shape", y_train.shape)
        print("pixel range", X_train.min(), "to", X_train.max())
        print("first 10 labels", y_train[:10])

        def forward(W1, W2, X):
            H = np.maximum(0, X @ W1)                 # hidden layer with ReLU
            return H, H @ W2                          # hidden values, class scores

        def step(W1, W2, X, y):
            H, Z = forward(W1, W2, X)
            Z = Z - Z.max(1, keepdims=True)           # stable softmax
            P = np.exp(Z) / np.exp(Z).sum(1, keepdims=True)
            loss = -np.mean(np.log(P[np.arange(len(y)), y] + 1e-12))
            P[np.arange(len(y)), y] -= 1              # gradient of the loss
            dH = (P @ W2.T) * (H > 0)
            W2 -= LR * H.T @ P / len(y)
            W1 -= LR * X.T @ dH / len(y)
            return round(loss, 3) + 0.0

        def train(X, y, steps, show_every):
            W1 = np.random.randn(64, 32) * np.sqrt(2 / 64)   # He initialisation
            W2 = np.random.randn(32, 10) * np.sqrt(2 / 32)
            for i in range(steps + 1):
                loss = step(W1, W2, X, y)
                if not np.isfinite(loss) or loss > 20:
                    print(f"  step {i}: loss {loss}  STOP: the loss exploded")
                    break
                if i % show_every == 0:
                    print(f"  step {i:3}  loss {loss:.3f}")
            return W1, W2

        # Check 2: the first loss should be near ln(10) = 2.303 for 10 classes.
        # Check 3: overfit ONE small batch. The loss must go close to 0.
        print("\nOverfit one batch of 16:")
        train(X_train[:16], y_train[:16], 200, 100)

        print("\nFull training:")
        W1, W2 = train(X_train, y_train, 300, 100)
        val_acc = np.mean(forward(W1, W2, X_val)[1].argmax(1) == y_val)
        print(f"\nValidation accuracy: {val_acc:.1%}  (guessing gives about 10%)")

        # ── Part 2: a shape bug in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 2: a shape bug in PyTorch ==")
        try:
            import torch
            from torch import nn
            from torch.utils.data import TensorDataset, DataLoader
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            logits = torch.randn(8, 3)                  # model output: (batch, classes)
            labels = torch.tensor([[0], [2], [1], [1], [0], [2], [2], [1]])   # shape (8, 1)
            print(logits.shape, labels.shape)
            try:
                loss = nn.CrossEntropyLoss()(logits, labels)
            except RuntimeError as e:
                print("RuntimeError:", e)
            labels = labels.squeeze(1)                  # the fix: shape (8,)
            print("fixed:", labels.shape, "loss", round(nn.CrossEntropyLoss()(logits, labels).item(), 4))

        # ── Part 3: overfit one batch in PyTorch (run this part on your own computer) ──
        print("\n== Part 3: overfit one batch in PyTorch ==")
        if torch is None:
            print("Part 3 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            data = TensorDataset(torch.randn(64, 20), torch.randint(0, 3, (64,)))   # labels 0, 1 or 2
            train_loader = DataLoader(data, batch_size=16, shuffle=True)
            xb, yb = next(iter(train_loader))          # ONE small batch
            xb, yb = xb[:8], yb[:8]                     # keep 8 examples

            model = nn.Sequential(nn.Linear(20, 64), nn.ReLU(), nn.Linear(64, 3))
            optimizer = torch.optim.Adam(model.parameters(), lr=1e-3)
            loss_fn = nn.CrossEntropyLoss()

            for step in range(201):
                optimizer.zero_grad()
                loss = loss_fn(model(xb), yb)
                loss.backward()
                optimizer.step()
                if step % 50 == 0:
                    print(f"step {step:3}  loss {loss.item():.4f}")
      PYTHON
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-tdm">Training Deep Models</div>
          <h1 class="lc-title">Project: Train and Deploy an Image Classifier</h1>
        </div>
        <p class="lc-lead">In this project, you put the whole course together. You plan an image classifier, train it and evaluate it honestly. Then you save it and serve it, so other programs can use it. The code editor holds the whole project. Part 1 runs the steps with scikit-learn in the browser, including a fake web API. Parts 2 to 4 are the PyTorch, FastAPI and ONNX versions for your own computer.</p>
        <figure class="lc-diagram">
          <svg viewBox="0 0 760 300" role="img" aria-label="The project in six steps: plan, data, train, evaluate, save and deploy. Below, a client sends 64 pixel values to a POST /predict endpoint. The server runs the model and returns a label and a confidence.">
            <defs><marker id="td20a" markerWidth="10" markerHeight="10" refX="8" refY="5" orient="auto"><path d="M0,0 L10,5 L0,10 z" fill="#9b99b8"/></marker></defs>
            <g font-family="inherit" font-size="12" fill="#e2e0f0" text-anchor="middle">
              <rect x="10" y="20" width="108" height="80" rx="10" fill="#1f1f44" stroke="#8b5cf6" stroke-width="2"/>
              <text x="64" y="44" font-weight="700" fill="#c4b5fd">1. Plan</text>
              <text x="64" y="66" font-size="11.5">classes, metric,</text>
              <text x="64" y="84" font-size="11.5">target: 90%</text>
              <rect x="138" y="20" width="108" height="80" rx="10" fill="#1f1f44" stroke="#3b82f6" stroke-width="2"/>
              <text x="192" y="44" font-weight="700" fill="#93c5fd">2. Data</text>
              <text x="192" y="66" font-size="11.5">clean, scale,</text>
              <text x="192" y="84" font-size="11.5">split 70/15/15</text>
              <rect x="266" y="20" width="108" height="80" rx="10" fill="#1f1f44" stroke="#22d3ee" stroke-width="2"/>
              <text x="320" y="44" font-weight="700" fill="#67e8f9">3. Train</text>
              <text x="320" y="66" font-size="11.5">AdamW, watch</text>
              <text x="320" y="84" font-size="11.5">val accuracy</text>
              <rect x="394" y="20" width="108" height="80" rx="10" fill="#1f1f44" stroke="#10b981" stroke-width="2"/>
              <text x="448" y="44" font-weight="700" fill="#6ee7b7">4. Evaluate</text>
              <text x="448" y="66" font-size="11.5">test set once,</text>
              <text x="448" y="84" font-size="11.5">per-class errors</text>
              <rect x="522" y="20" width="108" height="80" rx="10" fill="#1f1f44" stroke="#f59e0b" stroke-width="2"/>
              <text x="576" y="44" font-weight="700" fill="#fcd34d">5. Save</text>
              <text x="576" y="66" font-size="11.5">state_dict</text>
              <text x="576" y="84" font-size="11.5">to a .pt file</text>
              <rect x="650" y="20" width="100" height="80" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="700" y="44" font-weight="700" fill="#f9a8d4">6. Deploy</text>
              <text x="700" y="66" font-size="11.5">FastAPI</text>
              <text x="700" y="84" font-size="11.5">or ONNX</text>
              <g stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td20a)">
                <line x1="119" y1="66" x2="135" y2="66"/><line x1="247" y1="66" x2="263" y2="66"/>
                <line x1="375" y1="66" x2="391" y2="66"/><line x1="503" y1="66" x2="519" y2="66"/>
                <line x1="631" y1="66" x2="647" y2="66"/>
              </g>
              <text x="380" y="146" fill="#9b99b8">Deployed: one prediction</text>
              <rect x="10" y="170" width="150" height="70" rx="10" fill="#27274e" stroke="#3b82f6"/>
              <text x="85" y="198" font-weight="700" fill="#93c5fd">Client app</text>
              <text x="85" y="220" font-size="11.5">shop till, website</text>
              <line x1="162" y1="205" x2="232" y2="205" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td20a)"/>
              <text x="197" y="196" font-size="11" fill="#9b99b8">JSON</text>
              <rect x="236" y="160" width="210" height="90" rx="10" fill="#1f1f44" stroke="#ec4899" stroke-width="2"/>
              <text x="341" y="184" font-weight="700" fill="#f9a8d4">POST /predict</text>
              <text x="341" y="206" font-size="11.5">check the input</text>
              <text x="341" y="224" font-size="11.5">model.eval(), no_grad</text>
              <text x="341" y="242" font-size="11.5">softmax, argmax</text>
              <line x1="448" y1="205" x2="518" y2="205" stroke="#9b99b8" stroke-width="1.5" marker-end="url(#td20a)"/>
              <rect x="522" y="170" width="228" height="70" rx="10" fill="#27274e" stroke="#10b981"/>
              <text x="636" y="198" font-weight="700" fill="#6ee7b7">Response</text>
              <text x="636" y="220" font-size="11.5">{"label": 0, "confidence": 0.999}</text>
              <text x="380" y="282" fill="#9b99b8">The model loads once at start-up. Each request runs only the forward pass.</text>
            </g>
          </svg>
          <figcaption>Top: the six steps of the project. Bottom: what happens when another program asks the deployed model for a prediction.</figcaption>
        </figure>
        <div class="lc-card">
          <h3>Step 1: plan before you code</h3>
          <p>The greengrocer wants a till camera that names the fruit: apple, banana or orange. Write down a short plan first:</p>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Answer for the fruit project</th></tr></thead>
            <tbody>
              <tr><td>What goes in, what comes out?</td><td>One photo in. One of 3 labels and a confidence out.</td></tr>
              <tr><td>How will you measure success?</td><td>Accuracy on the test set, plus errors for each class. Target: 90% or more.</td></tr>
              <tr><td>What is the simple baseline?</td><td>Always saying "apple" gives 50%, because half the photos are apples. Your model must beat this clearly.</td></tr>
              <tr><td>What data do you have?</td><td>1,000 labelled photos, split 700 / 150 / 150 with stratify</td></tr>
              <tr><td>Which model?</td><td>A pretrained ResNet-18 with a new 3-class head. Fine-tune <code>layer4</code> only if validation improves.</td></tr>
              <tr><td>Where will it run?</td><td>A small server in the shop, on a CPU</td></tr>
            </tbody>
          </table>
          <p>The fruit photos are not available in the browser. So the code editor uses the same steps on the digits dataset from scikit-learn. It has 1,797 small 8×8 images of the digits 0 to 9.</p>
        </div>
        <div class="lc-card">
          <h3>Steps 2 to 5: data, train, evaluate, save</h3>
          <p>Part 2 in the code editor is the PyTorch version. It uses the same tools as the rest of the course. It splits the 1,797 images 70/15/15 with stratify. Then it trains a small CNN with AdamW and a DataLoader for a few epochs. Put the model in a function, <code>make_model()</code>, in its own file, <code>model.py</code>. After each epoch, it measures the validation accuracy. When the accuracy reaches a new best, it saves the weights. At the end, it loads that best checkpoint and checks the test set only once.</p>
          <p>On a laptop CPU, Part 2 runs in a few seconds. The validation accuracy rises from 0.722 after epoch 1 to 0.959 after epoch 4. Epoch 5 is a little worse, at 0.952. The test accuracy of the best checkpoint is 0.967.</p>
          <p>Notice three things:</p>
          <ul class="lc-list">
            <li>Epoch 5 was a little worse than epoch 4 on validation, so it did not overwrite the file. The checkpoint from epoch 4 stays saved.</li>
            <li><code>torch.save(model.state_dict(), ...)</code> saves only the weights, not the code. To load them, you must build the same model first with <code>make_model()</code>. This is the method the PyTorch docs recommend.</li>
            <li><code>map_location="cpu"</code> lets weights trained on a GPU load on a computer with no GPU.</li>
          </ul>
          <p>For the fruit project, the loop is the same. Only the data and the model change: <code>FruitDataset</code> with your photos, and ResNet-18 with <code>model.fc = nn.Linear(512, 3)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Step 6: deploy with FastAPI</h3>
          <p>To <strong>deploy</strong> a model means to make it available to other programs. A common way is a small web <strong>API</strong>: another program sends data in a web request and gets an answer back as JSON. FastAPI is a popular Python library for this. Install it with <code>pip install "fastapi[standard]"</code>.</p>
          <p>Part 3 in the code editor is the FastAPI app. It builds the model with <code>make_model()</code> and loads the saved weights once. A small <code>Digit</code> class says that a request holds a list of pixels. The <code>/predict</code> endpoint checks that there are 64 pixels. Then it runs the model and returns the label and the confidence.</p>
          <p>Save Part 3 as <code>app.py</code> and start the server with <code>fastapi dev app.py</code>. It prints a local web address and also gives you a test page at <code>/docs</code>. A client posts 64 pixel values. The reply is JSON with a label and a confidence. Part 3 also tests the API without a server. For the first digit, a 0, the reply is <code>{"label": 0, "confidence": 0.996}</code>. If the client sends the wrong number of pixels, the reply is status 422. The message says "Send exactly 64 pixels."</p>
          <p>Load the model once, at start-up, not inside <code>predict</code>. Loading takes time, and the forward pass is the only work each request needs.</p>
        </div>
        <div class="lc-card">
          <h3>Another option: export to ONNX</h3>
          <p><strong>ONNX</strong> (Open Neural Network Exchange) is a standard file format for trained models. An ONNX file can run with <strong>ONNX Runtime</strong>, which does not need PyTorch at all. This makes the server smaller, and the same file can run from other languages, such as C# or JavaScript.</p>
          <p>Part 4 in the code editor does the export. It calls <code>torch.onnx.export</code> with the model, one example input of the right shape, such as <code>torch.zeros(1, 1, 8, 8)</code>, and a file name. Then, as on a server, ONNX Runtime (<code>pip install onnxruntime</code>) loads the file with <code>InferenceSession</code>. Its <code>run</code> method returns one row of 10 class scores for each image, so the shape is (1, 10). Recent PyTorch versions use a newer exporter (<code>dynamo=True</code>) by default. It needs the extra <code>onnxscript</code> package, so install it too: <code>pip install onnx onnxscript onnxruntime</code>. Check the PyTorch ONNX docs for your version.</p>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Good for</th><th>Needs</th></tr></thead>
            <tbody>
              <tr><td>FastAPI + PyTorch</td><td>Quick start, easy to change</td><td>PyTorch on the server</td></tr>
              <tr><td>ONNX Runtime</td><td>Smaller, often faster CPU serving, other languages</td><td>An export step, and a check that outputs match</td></tr>
              <tr><td>Hosted services</td><td>No server to look after</td><td>An account and a cost per use. Check each provider's docs.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Activity: run the project in order</h3>
          <div class="lcw" data-controller="sequence">
            <p class="lcw-prompt">Put the project steps in the right order.</p>
            <ol data-sequence-target="list">
              <li data-order="1">Write the plan: classes, metric, baseline and target</li>
              <li data-order="2">Clean the data and split it into train, validation and test</li>
              <li data-order="3">Overfit one batch to check the code works</li>
              <li data-order="4">Train fully and save the checkpoint with the best validation score</li>
              <li data-order="5">Load the best checkpoint and measure the test set once</li>
              <li data-order="6">Serve the model behind a /predict endpoint and test it with real requests</li>
            </ol>
          </div>
        </div>
        <div class="lc-card">
          <h3>The project in the editor</h3>
          <p>Part 1 in the code editor runs the same six steps with scikit-learn's <code>MLPClassifier</code> on the digits. It "saves" the model to bytes with <code>pickle</code> and loads it back. Then it calls a <code>predict</code> function that takes and returns JSON, like the FastAPI endpoint. Run the code to see it.</p>
          <p>The test accuracy is 0.981. Digit 8 has the most mistakes: 3 wrong out of 35. The saved model is about 164 KB. The three test digits get the right label with high confidence. A request with only 10 pixels gets an error, like the 422 reply from FastAPI.</p>
          <p>Now look at the random noise request. Random noise is not a digit, but the model says "4" with 99.7% confidence. A classifier always picks one of the classes it knows. High confidence does not mean the input makes sense. In a real till, you would also check the input, for example that the photo is not empty or blurred.</p>
          <p>One warning: only load pickle files that you made yourself. A pickle file from someone else can run harmful code when you load it.</p>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Run the code. In Part 1, which digit has the most mistakes?</li>
            <li>In Part 1, change <code>HIDDEN = (64,)</code> to <code>(8,)</code>. How much does the test accuracy drop?</li>
            <li>In Part 1, change <code>MIN_CONFIDENCE</code> to <code>0.999</code>. Which API calls now answer "not sure"?</li>
            <li>In Part 1, change <code>range(3)</code> to <code>range(6)</code> to send more requests to the API.</li>
            <li>In Part 1, change the bad request to send 64 numbers. What does the API answer now?</li>
            <li>On your own computer, run Parts 2 to 4. In Part 2, change <code>range(1, 6)</code> to <code>range(1, 11)</code>. Does the test accuracy improve?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Key Insight:</strong> A finished model is more than a training loop. Plan the metric first. Keep the best checkpoint by validation score, test once and save the <code>state_dict</code>. Serve it behind a simple API that loads the model once and checks its input.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        # Project: train, evaluate, save and serve a digit classifier, in four parts.
        # Part 1 runs here with scikit-learn. Parts 2 to 4 need PyTorch, so run them on your own computer.
        import json, pickle, warnings
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.model_selection import train_test_split
        from sklearn.neural_network import MLPClassifier
        from sklearn.metrics import accuracy_score, confusion_matrix

        # ── Part 1: the whole project with scikit-learn ──
        print("== Part 1: the project with scikit-learn ==")
        HIDDEN = (64,)        # layer sizes of the network
        MIN_CONFIDENCE = 0.7  # below this, the API says "not sure"
        warnings.filterwarnings("ignore")   # hide "not converged" warnings

        # 1) Data: 8x8 images, pixels 0-16, scaled to 0-1.
        X, y = load_digits(return_X_y=True)
        X = X / 16.0
        X_train, X_test, y_train, y_test = train_test_split(
            X, y, test_size=0.2, stratify=y, random_state=42)

        # 2) Train.
        model = MLPClassifier(hidden_layer_sizes=HIDDEN, max_iter=500, random_state=42)
        model.fit(X_train, y_train)

        # 3) Evaluate on the test set, once, at the end.
        pred = model.predict(X_test)
        print(f"Test accuracy: {accuracy_score(y_test, pred):.3f}")
        cm = confusion_matrix(y_test, pred)
        for digit in range(10):
            wrong = cm[digit].sum() - cm[digit, digit]
            print(f"  digit {digit}: {cm[digit, digit]:2} right, {wrong} wrong")

        # 4) Save: turn the trained model into bytes (like a .pt file).
        saved = pickle.dumps(model)
        print(f"\nSaved model size: {len(saved) / 1024:.0f} KB")

        # 5) Deploy: a predict function that works like a web API endpoint.
        served = pickle.loads(saved)
        def predict(request_json):
            pixels = json.loads(request_json)["pixels"]
            if len(pixels) != 64:                     # check the input, like FastAPI's 422
                return json.dumps({"error": "Send exactly 64 pixels."})
            pixels = np.array(pixels).reshape(1, 64)
            probs = served.predict_proba(pixels)[0]
            label, conf = int(probs.argmax()), float(probs.max())
            if conf < MIN_CONFIDENCE:
                return json.dumps({"label": None, "confidence": round(conf, 3), "note": "not sure"})
            return json.dumps({"label": label, "confidence": round(conf, 3)})

        print("\nAPI calls:")
        for i in range(3):
            request = json.dumps({"pixels": X_test[i].round(3).tolist()})
            print(f"  true {y_test[i]} -> {predict(request)}")
        noise = np.random.RandomState(0).rand(64).round(3).tolist()
        print(f"  random noise -> {predict(json.dumps({'pixels': noise}))}")
        bad = [0.5] * 10                              # a bad request: only 10 pixels
        print(f"  bad request -> {predict(json.dumps({'pixels': bad}))}")

        # ── Part 2: train, save and test a small CNN in PyTorch (run this part on your own computer) ──
        # pip install torch
        print("\n== Part 2: train and save a CNN in PyTorch ==")
        try:
            import torch
            from torch import nn
            from torch.utils.data import TensorDataset, DataLoader
        except ImportError:
            torch = None
        if torch is None:
            print("Part 2 uses PyTorch, which does not run in the browser. Copy this part to your computer to run it.")
        else:
            torch.manual_seed(42)
            device = "cuda" if torch.cuda.is_available() else "cpu"

            # 1) Data: 1,797 images of 8x8 pixels. Split 70/15/15 with stratify.
            X, y = load_digits(return_X_y=True)
            X = torch.tensor(X / 16.0, dtype=torch.float32).view(-1, 1, 8, 8)
            y = torch.tensor(y)
            X_tr, X_rest, y_tr, y_rest = train_test_split(X, y, test_size=0.3, stratify=y, random_state=42)
            X_val, X_te, y_val, y_te = train_test_split(X_rest, y_rest, test_size=0.5, stratify=y_rest, random_state=42)
            train_dl = DataLoader(TensorDataset(X_tr, y_tr), batch_size=64, shuffle=True)

            # 2) Model. In a real project, keep make_model() in its own file, model.py.
            def make_model():
                return nn.Sequential(
                    nn.Conv2d(1, 16, 3, padding=1), nn.ReLU(),  # (N, 16, 8, 8)
                    nn.MaxPool2d(2),                            # (N, 16, 4, 4)
                    nn.Flatten(),                               # (N, 256)
                    nn.Linear(256, 10),                         # (N, 10) class scores
                )

            def accuracy(model, X, y):
                model.eval()
                dev = next(model.parameters()).device             # where the model lives
                with torch.no_grad():
                    return (model(X.to(dev)).argmax(1) == y.to(dev)).float().mean().item()

            # 3) Train, and keep the weights with the best validation accuracy.
            model = make_model().to(device)
            optimizer = torch.optim.AdamW(model.parameters(), lr=1e-2)
            loss_fn = nn.CrossEntropyLoss()
            best = 0.0
            for epoch in range(1, 6):
                model.train()
                for xb, yb in train_dl:
                    xb, yb = xb.to(device), yb.to(device)
                    optimizer.zero_grad()
                    loss = loss_fn(model(xb), yb)
                    loss.backward()
                    optimizer.step()
                val_acc = accuracy(model, X_val, y_val)
                print(f"epoch {epoch}  last batch loss {loss.item():.3f}  val acc {val_acc:.3f}")
                if val_acc > best:
                    best = val_acc
                    torch.save(model.state_dict(), "digits_cnn.pt")   # 4) save the weights

            # 5) Load the best weights into a fresh model and test ONCE.
            loaded = make_model()
            loaded.load_state_dict(torch.load("digits_cnn.pt", map_location="cpu"))
            loaded.eval()
            print(f"test acc {accuracy(loaded, X_te, y_te):.3f}")

        # ── Part 3: serve the model with FastAPI (run this part on your own computer) ──
        # pip install "fastapi[standard]"
        # Save this part as app.py, with make_model() in model.py, then run:   fastapi dev app.py
        print("\n== Part 3: a web API with FastAPI ==")
        try:
            from fastapi import FastAPI, HTTPException
            from pydantic import BaseModel
        except ImportError:
            FastAPI = None
        if torch is None or FastAPI is None:
            print("Part 3 uses PyTorch and FastAPI, which do not run in the browser. Copy this part to your computer to run it.")
        else:
            # In app.py: from model import make_model     (model.py holds make_model())
            app = FastAPI()
            model = make_model()
            model.load_state_dict(torch.load("digits_cnn.pt", map_location="cpu"))
            model.eval()                           # load once, when the server starts

            class Digit(BaseModel):
                pixels: list[float]                # 64 numbers from 0 to 1

            @app.post("/predict")
            def predict(d: Digit):
                if len(d.pixels) != 64:            # check the input before using it
                    raise HTTPException(status_code=422, detail="Send exactly 64 pixels.")
                x = torch.tensor(d.pixels).view(1, 1, 8, 8)
                with torch.no_grad():
                    probs = torch.softmax(model(x), dim=1)[0]
                return {"label": int(probs.argmax()), "confidence": round(float(probs.max()), 3)}

            # Test the API without starting a server (TestClient needs httpx).
            from fastapi.testclient import TestClient
            client = TestClient(app)
            first = (load_digits().data[0] / 16.0).tolist()   # the first digit is a 0
            reply = client.post("/predict", json={"pixels": first})
            print("first digit ->", reply.status_code, reply.json())
            reply = client.post("/predict", json={"pixels": [0.5] * 10})
            print("10 pixels   ->", reply.status_code, reply.json())

        # ── Part 4: export to ONNX and run it with ONNX Runtime (run this part on your own computer) ──
        # pip install onnx onnxscript onnxruntime     (recent PyTorch versions need onnxscript for export)
        print("\n== Part 4: export to ONNX ==")
        if torch is None:
            print("Part 4 uses PyTorch and ONNX Runtime, which do not run in the browser. Copy this part to your computer to run it.")
        else:
            try:
                example = torch.zeros(1, 1, 8, 8)      # one fake image with the right shape
                torch.onnx.export(loaded, (example,), "digits_cnn.onnx",
                                  input_names=["image"], output_names=["scores"])

                # Anywhere else: run it with ONNX Runtime, no PyTorch needed.
                import onnxruntime as ort
                session = ort.InferenceSession("digits_cnn.onnx")
                scores = session.run(None, {"image": example.numpy()})[0]
                print(scores.shape)
            except ImportError as e:
                print("Part 4 needs extra packages:", e)
      PYTHON
    },
  }.freeze
end

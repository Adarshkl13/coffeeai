module DeepLearningContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">What is Deep Learning &amp; Why Now?</h1>
        </div>
        <p class="lc-lead"><strong>Deep learning</strong> is the part of machine learning that uses neural networks with many layers of simple maths units called <strong>neurons</strong>. Each layer turns its input into a slightly more useful representation, and the network learns those layers by itself from examples. It is the technology behind face unlock on your phone, Google Translate, voice assistants and chatbots such as ChatGPT and Claude.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-03-ai-ml-dl.svg" alt="AI, Machine Learning and Deep Learning as nested circles" class="lc-topic-image" />
          <p class="lc-topic-caption">Deep learning sits inside machine learning, which sits inside AI.</p>
        </div>
        <div class="lc-card">
          <h3>AI vs ML vs DL</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Artificial Intelligence</td><td>Any technique that makes computers act smart</td><td>A chess program with hand-written rules</td></tr>
              <tr><td>Machine Learning</td><td>The computer learns rules from data</td><td>Logistic regression predicting loan default</td></tr>
              <tr><td>Deep Learning</td><td>ML with many-layer neural networks that learn their own features</td><td>A CNN recognising handwritten digits</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Features: hand-made vs learned</h3>
          <p>In classic ML, a person decides the <em>features</em>. To detect spam you might count links, capital letters and the word "lottery". In deep learning you give the network the raw input (all the words, or all the pixels) and the hidden layers discover useful features by themselves: early layers of an image network find edges, middle layers find shapes like eyes and wheels, and the last layers find whole objects.</p>
          <ul class="lc-list">
            <li><strong>Classic ML</strong> (linear models, random forests, gradient boosting) is usually the better choice for small, tabular data (Excel-like tables).</li>
            <li><strong>Deep learning</strong> shines on large, unstructured data: images, audio, text, video.</li>
            <li>Deep learning needs more data and more compute, but it scales well: with more data and bigger models, accuracy usually keeps improving.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>What "deep" means</h3>
          <p>A network is a chain of <strong>layers</strong>. The input layer holds the raw numbers, the <strong>hidden layers</strong> transform them, and the output layer gives the answer. "Deep" simply means there are several hidden layers. Every layer does the same two things, which you will write yourself in Lessons 2–4:</p>
          <div class="lc-code">Z = X @ W + b        # 1. weighted sum (a matrix multiplication)<br>A = relu(Z)          # 2. a simple non-linear function</div>
          <p>The numbers inside W and b are the <strong>parameters</strong> (weights and biases). Learning means finding good values for them. Small networks have hundreds of parameters; large language models have billions.</p>
        </div>
        <div class="lc-card">
          <h3>Why did it take off only after 2012?</h3>
          <p>Neural networks go back to the 1950s, so why the sudden boom? Three things came together:</p>
          <table class="lc-table">
            <thead><tr><th>Ingredient</th><th>What changed</th></tr></thead>
            <tbody>
              <tr><td>Data</td><td>The internet and smartphones created huge labelled datasets (the ImageNet competition used about 1.2 million training images in 1,000 classes).</td></tr>
              <tr><td>Compute</td><td>GPUs, first built for video games, can do thousands of multiplications at the same time, which is exactly what neural networks need.</td></tr>
              <tr><td>Algorithms</td><td>ReLU activations, dropout, better weight initialisation, the Adam optimiser and later the Transformer made deep networks trainable.</td></tr>
            </tbody>
          </table>
          <p>In 2012 a network called <strong>AlexNet</strong>, trained on two GPUs, won the ImageNet competition with a far lower error rate than any earlier method. Since then deep learning has spread into almost every area of AI.</p>
        </div>
        <div class="lc-card">
          <h3>Where deep learning is used</h3>
          <table class="lc-table">
            <thead><tr><th>Data type</th><th>Task</th><th>Everyday example</th></tr></thead>
            <tbody>
              <tr><td>Images</td><td>Classification, detection</td><td>Face unlock, reading number plates at toll plazas</td></tr>
              <tr><td>Audio</td><td>Speech recognition</td><td>Voice typing in Hindi or Tamil on your phone</td></tr>
              <tr><td>Text</td><td>Translation, chat, search</td><td>Google Translate, AI chatbots</td></tr>
              <tr><td>Sequences of clicks</td><td>Recommendation</td><td>"Up next" videos, shopping suggestions</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: counting parameters</h3>
          <p>The starter code trains a network with the layer sizes 2 → 16 → 16 → 1. How many numbers does it have to learn? Each layer has <code>n_in × n_out</code> weights plus <code>n_out</code> biases:</p>
          <div class="lc-code">sizes = [2, 16, 16, 1]          # input, hidden, hidden, output<br>total = 0<br>for n_in, n_out in zip(sizes[:-1], sizes[1:]):<br>    params = n_in * n_out + n_out            # weights + biases<br>    total += params<br>    print(f"{n_in:&gt;2} -&gt; {n_out:&lt;2}: {n_in * n_out:3d} weights + {n_out:2d} biases = {params}")<br>print("Total learnable parameters:", total)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code"> 2 -&gt; 16:  32 weights + 16 biases = 48<br>16 -&gt; 16: 256 weights + 16 biases = 272<br>16 -&gt; 1 :  16 weights +  1 biases = 17<br>Total learnable parameters: 337</div>
          <p>The starter prints the same total (337) by counting the arrays inside a trained scikit-learn <code>MLPClassifier</code>.</p>
        </div>
        <div class="lc-card">
          <h3>A tiny preview in code</h3>
          <p>The starter code compares a straight-line model with a small neural network on data shaped like two circles. A straight line cannot separate an inner circle from an outer ring, so logistic regression scores about 35% on the test set (worse than guessing), while the network with two hidden layers bends its boundary and scores 100%.</p>
          <div class="lc-code">from sklearn.neural_network import MLPClassifier<br><br>net = MLPClassifier(hidden_layer_sizes=(16, 16), max_iter=2000, random_state=0)<br>net.fit(X_train, y_train)          # learn from examples<br>print(net.score(X_test, y_test))   # accuracy on unseen data</div>
        </div>
        <div class="lc-card">
          <h3>What you will build in this course</h3>
          <ul class="lc-list">
            <li>Neurons, layers and full networks written from scratch in NumPy</li>
            <li>Loss functions, gradient descent and backpropagation (with the chain rule)</li>
            <li>A complete training loop with epochs, mini-batches, Adam and early stopping</li>
            <li>Convolutions for images, RNNs for sequences, and attention and Transformers for language</li>
            <li>Transfer learning and generative models (autoencoders, GANs, diffusion)</li>
            <li>How the same ideas look in <strong>PyTorch</strong>, the framework most professionals use</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Using deep learning for everything.</strong> On a small table of 500 rows, a random forest or gradient boosting model is often more accurate, faster and easier to explain. Try classic ML first on tabular data.</li>
            <li><strong>Judging a model on its training data.</strong> A network can memorise examples. Always report accuracy on a held-out test set, as the starter does with <code>train_test_split</code>.</li>
            <li><strong>Thinking "more layers is always better".</strong> Extra layers add parameters that need more data and careful training (Lessons 10–11).</li>
            <li><strong>Taking the brain analogy literally.</strong> An artificial neuron is a weighted sum and a simple function, not a model of a biological cell.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code change <code>hidden_layer_sizes=(16, 16)</code> to <code>(2,)</code> and run it. The network now has only one tiny hidden layer: the parameter count drops to 9 and the test accuracy falls to 74%. (A <code>ConvergenceWarning</code> may appear: the tiny network ran out of training iterations.)</li>
            <li>Change it to <code>(8,)</code>, then <code>(32, 32)</code>. Find the smallest single hidden layer that still reaches 100% test accuracy (hint: it has fewer than 8 neurons).</li>
            <li>Set <code>noise=0.3</code> in <code>make_circles</code>. The best test accuracy now stays below 90%. Why can no model reach 100% when the two circles overlap?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Deep learning is not magic. Every network in this course is just matrix multiplication, a simple non-linear function, and a rule for nudging numbers to reduce error. If you are comfortable with NumPy arrays, you already have the tools.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_circles
        from sklearn.linear_model import LogisticRegression
        from sklearn.neural_network import MLPClassifier
        from sklearn.model_selection import train_test_split

        # Some patterns cannot be separated by one straight line.
        # Here class 1 is an inner circle and class 0 is an outer ring.
        X, y = make_circles(n_samples=400, noise=0.08, factor=0.4, random_state=0)
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=0)
        print("Train shape:", X_train.shape, "| Test shape:", X_test.shape)

        # 1. Classic ML: logistic regression draws a single straight boundary
        linear = LogisticRegression().fit(X_train, y_train)
        print(f"\nLinear model (one straight line)  accuracy: {linear.score(X_test, y_test):.2%}")

        # 2. Deep learning: a small neural network with two hidden layers
        net = MLPClassifier(hidden_layer_sizes=(16, 16), activation="relu",
                            max_iter=2000, random_state=0)
        net.fit(X_train, y_train)
        print(f"Neural network (2 hidden layers)  accuracy: {net.score(X_test, y_test):.2%}")

        n_params = sum(w.size for w in net.coefs_) + sum(b.size for b in net.intercepts_)
        print("Learnable parameters (weights + biases):", n_params)

        # Ask the trained network about brand-new points
        new_points = np.array([[0.0, 0.0], [0.3, -0.2], [1.0, 0.0], [-0.7, 0.7]])
        print("\nPredictions for new points (1 = inner circle):")
        for p, pred in zip(new_points, net.predict(new_points)):
            print(f"  point {p} -> class {pred}")

        print("\nWhy did deep learning take off after 2012?")
        for reason in ["Big data: ImageNet has about 1.2 million labelled training images",
                       "GPUs: thousands of multiplications run in parallel",
                       "Better methods: ReLU, dropout, Adam, batch norm, transformers"]:
            print("  -", reason)
      PYTHON
    },
    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">The Artificial Neuron</h1>
        </div>
        <p class="lc-lead">A neuron is the smallest building block of every neural network. It takes some numbers in, multiplies each by a <strong>weight</strong>, adds a <strong>bias</strong>, and passes the result through an <strong>activation function</strong>. That's it. Big networks are just millions of these working together.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-07-perceptron.svg" alt="Diagram of a perceptron with inputs, weights, a sum and an activation" class="lc-topic-image" />
          <p class="lc-topic-caption">Inputs are weighted, summed with a bias, then passed through an activation.</p>
        </div>
        <div class="lc-card">
          <h3>The two steps of a neuron</h3>
          <p><strong>Step 1 – weighted sum:</strong> z = w<sub>1</sub>x<sub>1</sub> + w<sub>2</sub>x<sub>2</sub> + ... + w<sub>n</sub>x<sub>n</sub> + b = <code>w · x + b</code></p>
          <p><strong>Step 2 – activation:</strong> a = f(z). For example the sigmoid f(z) = 1 / (1 + e<sup>-z</sup>) squashes any number into the range 0 to 1, which we can read as a probability.</p>
          <div class="lc-code">x = np.array([0.8, 0.6, 0.7])   # inputs<br>w = np.array([1.5, 0.5, 2.0])   # weights<br>b = -1.8                        # bias<br><br>z = np.dot(w, x) + b            # 1.1<br>a = 1 / (1 + np.exp(-z))        # 0.75</div>
        </div>
        <div class="lc-card">
          <h3>What do weights and bias mean?</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Role</th><th>Umbrella example</th></tr></thead>
            <tbody>
              <tr><td>Input x</td><td>A feature of the data</td><td>Cloud cover, humidity, rain chance</td></tr>
              <tr><td>Weight w</td><td>How much that feature matters (can be negative)</td><td>Rain chance matters most (w = 2.0)</td></tr>
              <tr><td>Bias b</td><td>Shifts the threshold; how easily the neuron says "yes"</td><td>b = -1.8 means "only if fairly sure"</td></tr>
              <tr><td>Activation f</td><td>Turns the sum into the output signal</td><td>Sigmoid gives 0.75 → carry the umbrella</td></tr>
            </tbody>
          </table>
          <p>During training we never set weights by hand. The network <em>learns</em> them from examples, and the rest of this course is about how.</p>
        </div>
        <div class="lc-card">
          <h3>The perceptron (1958)</h3>
          <p>Frank Rosenblatt's <strong>perceptron</strong> was the first learning neuron. It outputs 1 if <code>w · x + b &gt; 0</code>, else 0. Its learning rule is simple: after each example, nudge the weights in the direction that would have fixed the mistake.</p>
          <div class="lc-code">pred = 1 if np.dot(w, x) + b &gt; 0 else 0<br>update = lr * (target - pred)   # 0 if correct, +lr or -lr if wrong<br>w += update * x<br>b += update</div>
          <p>The starter code trains a perceptron to learn the <strong>AND</strong> gate, and it gets every case right within a few epochs.</p>
        </div>
        <div class="lc-card">
          <h3>The limit of one neuron</h3>
          <p>A single neuron draws one straight line (or a flat plane in higher dimensions) to separate classes. It can learn AND and OR, but it can <strong>never</strong> learn <strong>XOR</strong> (output 1 when exactly one input is 1), because no single straight line separates those points. This limit, pointed out in 1969, caused the first "AI winter". The fix is to stack neurons into <strong>layers</strong> with non-linear activations, which is exactly what deep learning does.</p>
          <table class="lc-table">
            <thead><tr><th>x1</th><th>x2</th><th>AND</th><th>OR</th><th>XOR</th></tr></thead>
            <tbody>
              <tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr>
              <tr><td>0</td><td>1</td><td>0</td><td>1</td><td>1</td></tr>
              <tr><td>1</td><td>0</td><td>0</td><td>1</td><td>1</td></tr>
              <tr><td>1</td><td>1</td><td>1</td><td>1</td><td>0</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked example: one neuron, then a batch</h3>
          <p>Here is the umbrella neuron computed step by step. The last line shows the real trick of deep learning: put many examples in the rows of a matrix <code>X</code> and compute all of them with one <code>X @ w + b</code>.</p>
          <div class="lc-code">import numpy as np<br><br>x = np.array([0.8, 0.6, 0.7])    # cloud cover, humidity, rain chance<br>w = np.array([1.5, 0.5, 2.0])    # weights<br>b = -1.8                         # bias<br><br>print("w * x      :", w * x)                 # element-wise products<br>z = np.dot(w, x) + b                         # 1.2 + 0.3 + 1.4 - 1.8<br>a = 1 / (1 + np.exp(-z))                     # sigmoid<br>print("z = w.x + b:", round(z, 3))<br>print("a = sigmoid:", round(a, 3))<br><br>X = np.array([[0.8, 0.6, 0.7],               # a batch of 3 days at once<br>              [0.1, 0.4, 0.0],<br>              [0.9, 0.9, 0.9]])<br>print("batch a    :", np.round(1 / (1 + np.exp(-(X @ w + b))), 3))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">w * x      : [1.2 0.3 1.4]<br>z = w.x + b: 1.1<br>a = sigmoid: 0.75<br>batch a    : [0.75  0.19  0.858]</div>
          <p>Day 2 (few clouds, no rain forecast) gives 0.19, so the neuron says "no umbrella". Day 3 gives 0.858, a confident "yes".</p>
        </div>
        <div class="lc-card">
          <h3>A sigmoid neuron is logistic regression</h3>
          <p>If you took the Machine Learning course, this formula should look familiar: one neuron with a sigmoid activation is exactly <strong>logistic regression</strong>. The difference in deep learning is what comes next: we connect many neurons into layers and let the hidden ones learn their own features.</p>
          <table class="lc-table">
            <thead><tr><th>Neuron with…</th><th>Is the same as</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td>No activation (identity)</td><td>Linear regression</td><td>Any real number</td></tr>
              <tr><td>Sigmoid</td><td>Logistic regression</td><td>Probability between 0 and 1</td></tr>
              <tr><td>Step function (&gt; 0 → 1)</td><td>Perceptron</td><td>Hard 0 or 1</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Proof that XOR defeats one neuron</h3>
          <p>Run the perceptron rule on OR and on XOR for up to 100 epochs:</p>
          <div class="lc-code">import numpy as np<br>X = np.array([[0, 0], [0, 1], [1, 0], [1, 1]])<br>for name, y in [("OR", [0, 1, 1, 1]), ("XOR", [0, 1, 1, 0])]:<br>    w, b = np.zeros(2), 0.0<br>    for epoch in range(1, 101):<br>        mistakes = 0<br>        for xi, t in zip(X, y):<br>            update = 0.1 * (t - (1 if w @ xi + b &gt; 0 else 0))<br>            w, b = w + update * xi, b + update<br>            mistakes += update != 0<br>        if mistakes == 0:<br>            break<br>    print(f"{name}: stopped after {epoch} epochs, mistakes in last epoch = {mistakes}")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">OR: stopped after 4 epochs, mistakes in last epoch = 0<br>XOR: stopped after 100 epochs, mistakes in last epoch = 4</div>
          <p>OR is learned in 4 epochs. On XOR the perceptron still makes mistakes after 100 epochs, and it would go on forever: no straight line can put (0,1) and (1,0) on one side and (0,0) and (1,1) on the other.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting the bias.</strong> Without b, the line <code>w · x = 0</code> must pass through the origin, so the neuron cannot learn even simple rules such as "fire only if the total is above 1.5".</li>
            <li><strong>Mismatched lengths.</strong> <code>np.dot(w, x)</code> needs one weight per input. Three inputs with two weights raises a shape error.</li>
            <li><strong>Reading the output as a certainty.</strong> A sigmoid output of 0.75 is a score between 0 and 1; it only becomes a trustworthy probability after the neuron is trained on data.</li>
            <li><strong>Using a loop over examples.</strong> Computing examples one by one works, but <code>X @ w + b</code> does the whole batch at once and is much faster.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code change <code>b = -1.8</code> to <code>b = -3.0</code>. The weighted sum becomes −0.1 and the output drops just below 0.5, so the decision flips to "no umbrella".</li>
            <li>Change the AND targets <code>y = np.array([0, 0, 0, 1])</code> to OR (<code>[0, 1, 1, 1]</code>) and run again: the perceptron still reaches 0 mistakes.</li>
            <li>Now use XOR (<code>[0, 1, 1, 0]</code>). All 10 epochs keep making mistakes and the final table is wrong for at least one row.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Whenever you see a new network, ask "what does one neuron compute?" The answer is always a weighted sum plus a bias, passed through an activation. You will solve XOR-like problems by adding a hidden layer in Lessons 4 and 8.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        # One neuron deciding: "Should Riya carry an umbrella today?"
        # Inputs (0 to 1): cloud cover, humidity, rain chance from the weather app
        x = np.array([0.8, 0.6, 0.7])
        w = np.array([1.5, 0.5, 2.0])   # how important each input is
        b = -1.8                        # bias: shifts how easily the neuron "fires"

        z = np.dot(w, x) + b            # weighted sum
        a = sigmoid(z)                  # activation squashes z into (0, 1)
        print("Inputs  x:", x)
        print("Weights w:", w, "| bias b:", b)
        print(f"Weighted sum z = w.x + b = {z:.3f}")
        print(f"Output a = sigmoid(z)    = {a:.3f} ->", "carry umbrella" if a > 0.5 else "no umbrella")

        # A perceptron LEARNS the AND gate using the perceptron update rule
        X = np.array([[0, 0], [0, 1], [1, 0], [1, 1]])
        y = np.array([0, 0, 0, 1])
        w = np.zeros(2)
        b = 0.0
        lr = 0.1
        print("\nTraining a perceptron on AND")
        for epoch in range(1, 11):
            mistakes = 0
            for xi, target in zip(X, y):
                pred = 1 if np.dot(w, xi) + b > 0 else 0
                update = lr * (target - pred)      # zero when the prediction is correct
                w += update * xi
                b += update
                mistakes += int(update != 0)
            print(f"  epoch {epoch:2d}: mistakes={mistakes}  w={np.round(w, 2)}  b={b:.2f}")
            if mistakes == 0:
                break

        print("\nLearned AND gate:")
        for xi in X:
            print(f"  {xi[0]} AND {xi[1]} = {1 if np.dot(w, xi) + b > 0 else 0}")
      PYTHON
    },
    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Activation Functions</h1>
        </div>
        <p class="lc-lead">An activation function decides what a neuron sends to the next layer. Without it, a network of 100 layers would be no smarter than a single straight line. Activation functions add the <strong>non-linearity</strong> that lets networks learn curves, shapes and language.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-08-activation-functions.svg" alt="Curves of common activation functions" class="lc-topic-image" />
          <p class="lc-topic-caption">Sigmoid and tanh are S-shaped; ReLU is zero for negatives and a straight line for positives.</p>
        </div>
        <div class="lc-card">
          <h3>Why do we need non-linearity?</h3>
          <p>A layer without activation computes <code>X @ W</code>. Two such layers give <code>(X @ W1) @ W2 = X @ (W1 @ W2)</code>, and W1 @ W2 is just one matrix. So stacking linear layers collapses into <strong>one</strong> linear layer. Putting a non-linear function like ReLU between them breaks this collapse, and each extra layer can now add real power. The starter code proves this numerically.</p>
        </div>
        <div class="lc-card">
          <h3>The common activation functions</h3>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Formula</th><th>Output range</th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td>Sigmoid</td><td>1 / (1 + e<sup>-z</sup>)</td><td>0 to 1</td><td>Output layer for yes/no (binary) problems</td></tr>
              <tr><td>Tanh</td><td>(e<sup>z</sup> - e<sup>-z</sup>) / (e<sup>z</sup> + e<sup>-z</sup>)</td><td>-1 to 1</td><td>Hidden layers of small nets, RNNs</td></tr>
              <tr><td>ReLU</td><td>max(0, z)</td><td>0 to ∞</td><td>Default for hidden layers (CNNs, MLPs)</td></tr>
              <tr><td>Leaky ReLU</td><td>z if z &gt; 0 else 0.01·z</td><td>-∞ to ∞</td><td>Avoids "dead" ReLU neurons</td></tr>
              <tr><td>GELU</td><td>smooth version of ReLU</td><td>about -0.17 to ∞</td><td>Transformers (BERT, GPT)</td></tr>
              <tr><td>Softmax</td><td>e<sup>z<sub>i</sub></sup> / Σ e<sup>z<sub>j</sub></sup></td><td>0 to 1, sums to 1</td><td>Output layer for multi-class problems</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>In NumPy</h3>
          <div class="lc-code">def sigmoid(z):<br>    return 1 / (1 + np.exp(-z))<br><br>def relu(z):<br>    return np.maximum(0, z)<br><br>def softmax(z):<br>    e = np.exp(z - np.max(z))   # subtract max so exp never overflows<br>    return e / e.sum()<br><br>softmax(np.array([2.0, 1.0, 0.1]))   # [0.659 0.242 0.099]</div>
        </div>
        <div class="lc-card">
          <h3>Slopes matter: the vanishing gradient problem</h3>
          <p>Networks learn using the <strong>slope</strong> (derivative) of each activation. For sigmoid the slope is at most 0.25, and for large |z| it is almost 0: at z = 5 it is only 0.0066. When many layers multiply such tiny slopes together, the learning signal <em>vanishes</em> and early layers stop learning.</p>
          <ul class="lc-list">
            <li>Sigmoid slope: s(z)·(1 - s(z)), max 0.25</li>
            <li>Tanh slope: 1 - tanh(z)², max 1, but still near 0 for large |z|</li>
            <li>ReLU slope: exactly 1 for z &gt; 0, and 0 for z &lt; 0. This is why ReLU made deep networks trainable.</li>
          </ul>
          <p>The downside of ReLU: a neuron whose z is always negative outputs 0 and gets zero slope, so it may "die". Leaky ReLU keeps a small slope (0.01) for negatives.</p>
        </div>
        <div class="lc-card">
          <h3>Quick guide</h3>
          <ul class="lc-list">
            <li><strong>Hidden layers:</strong> start with ReLU (or GELU in Transformers).</li>
            <li><strong>Binary output:</strong> one neuron with sigmoid.</li>
            <li><strong>Multi-class output:</strong> one neuron per class with softmax.</li>
            <li><strong>Regression output</strong> (price, temperature): no activation at all, the raw number.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: why softmax subtracts the max</h3>
          <div class="lc-code">import numpy as np<br><br>def softmax_naive(z):<br>    e = np.exp(z)<br>    return e / e.sum()<br><br>def softmax(z):<br>    e = np.exp(z - np.max(z))      # shift so the largest score is 0<br>    return e / e.sum()<br><br>scores = np.array([2.0, 1.0, 0.1])<br>print("small scores, naive :", np.round(softmax_naive(scores), 3))<br>print("small scores, stable:", np.round(softmax(scores), 3))<br><br>big = np.array([1000.0, 1001.0, 1002.0])<br>with np.errstate(over="ignore", invalid="ignore"):<br>    print("big scores, naive   :", softmax_naive(big))<br>print("big scores, stable  :", np.round(softmax(big), 3))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">small scores, naive : [0.659 0.242 0.099]<br>small scores, stable: [0.659 0.242 0.099]<br>big scores, naive   : [nan nan nan]<br>big scores, stable  : [0.09  0.245 0.665]</div>
          <p><code>np.exp(1000)</code> overflows to infinity, and ∞ / ∞ is <code>nan</code>. Subtracting the maximum turns the scores into [−2, −1, 0] first. Softmax only cares about the <em>differences</em> between scores, so the answer is unchanged, and it is now safe.</p>
        </div>
        <div class="lc-card">
          <h3>How fast the signal shrinks</h3>
          <p>During backpropagation (Lesson 7) the learning signal is multiplied by one activation slope per layer. Even in sigmoid's best case (slope 0.25 at z = 0), and ignoring the weights, the product collapses quickly:</p>
          <div class="lc-code">import numpy as np<br>s = lambda z: 1 / (1 + np.exp(-z))<br>slope = s(0.0) * (1 - s(0.0))                  # best case for sigmoid: 0.25<br>for layers in [1, 5, 10, 20]:<br>    print(f"{layers:2d} sigmoid layers: signal x {slope ** layers:.2e}")<br>print(" 20 ReLU layers  : signal x", 1.0 ** 20)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code"> 1 sigmoid layers: signal x 2.50e-01<br> 5 sigmoid layers: signal x 9.77e-04<br>10 sigmoid layers: signal x 9.54e-07<br>20 sigmoid layers: signal x 9.09e-13<br> 20 ReLU layers  : signal x 1.0</div>
          <p>After 20 sigmoid layers the signal is about a trillion times smaller, so the first layers barely learn. ReLU's slope of 1 for positive inputs lets the signal pass through unchanged.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>No activation between hidden layers.</strong> The network silently collapses into one linear layer, however many layers you write.</li>
            <li><strong>Sigmoid in every hidden layer of a deep network.</strong> Gradients vanish (see the table above). Use ReLU or GELU in hidden layers; keep sigmoid for a yes/no output.</li>
            <li><strong>ReLU on the output of a regression model.</strong> ReLU can never output a negative number, so a model predicting temperature change could never say −2°C. Use no activation on regression outputs.</li>
            <li><strong>Applying softmax to the whole batch at once.</strong> Softmax must be taken per example (per row, <code>axis=1</code>), otherwise all rows share one probability total.</li>
            <li><strong>Naive softmax on big scores.</strong> Without the max-subtraction trick you get <code>nan</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code change the slope loop <code>for z in [0.0, 5.0]:</code> to <code>[0.0, 5.0, 10.0]</code>. At z = 10 the sigmoid and tanh slopes print 0.0000 (sigmoid's is really about 0.00005): the neuron is <em>saturated</em>, while ReLU's slope is still 1.0.</li>
            <li>Change <code>scores = np.array([2.0, 1.0, 0.1])</code> to <code>[12.0, 11.0, 10.1]</code> (every score + 10). The softmax probabilities do not change at all. Why?</li>
            <li>In the last block replace <code>relu(x @ W1)</code> with <code>np.tanh(x @ W1)</code>. The answer is still <code>False</code>: any non-linear function breaks the collapse.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In softmax we subtract the largest score before calling <code>np.exp</code>. The answer is mathematically the same, but it stops <code>exp(1000)</code> from overflowing to infinity. Every real library does this trick, which is one more reason to use a library's built-in softmax and cross-entropy in real projects.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        def relu(z):
            return np.maximum(0, z)

        def leaky_relu(z, alpha=0.01):
            return np.where(z > 0, z, alpha * z)

        def softmax(z):
            e = np.exp(z - np.max(z))      # subtract max for numerical safety
            return e / e.sum()

        z_values = np.array([-3.0, -1.0, 0.0, 1.0, 3.0])
        print(f"{'z':>5} {'sigmoid':>8} {'tanh':>7} {'relu':>5} {'leaky':>7}")
        for z in z_values:
            print(f"{z:5.1f} {sigmoid(z):8.3f} {np.tanh(z):7.3f} {relu(z):5.1f} {leaky_relu(z):7.3f}")

        # Slopes (derivatives) decide how strongly a neuron can learn
        print("\nSlope at z = 0 and at z = 5:")
        for z in [0.0, 5.0]:
            s = sigmoid(z)
            print(f"  z={z}: sigmoid'={s * (1 - s):.4f}  tanh'={1 - np.tanh(z) ** 2:.4f}  relu'={float(z > 0)}")
        print("  -> sigmoid/tanh slopes almost vanish for big z; ReLU keeps slope 1")

        scores = np.array([2.0, 1.0, 0.1])
        probs = softmax(scores)
        print("\nSoftmax", scores, "->", np.round(probs, 3), "| sum =", round(probs.sum(), 3))

        # Why we need non-linearity: two linear layers collapse into ONE linear layer
        rng = np.random.default_rng(0)
        W1 = rng.normal(size=(3, 4))
        W2 = rng.normal(size=(4, 2))
        x = rng.normal(size=(1, 3))
        print("\nLinear layer 1 then layer 2 == single matrix W1 @ W2 ?",
              np.allclose((x @ W1) @ W2, x @ (W1 @ W2)))
        print("With ReLU in between, still the same single matrix?  ",
              np.allclose(relu(x @ W1) @ W2, x @ (W1 @ W2)))
      PYTHON
    },
    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Layers &amp; the Forward Pass</h1>
        </div>
        <p class="lc-lead">A <strong>layer</strong> is a group of neurons that all look at the same inputs. Store all their weights in one matrix and a whole layer, for a whole batch of examples, becomes a single matrix multiplication. Stack a few layers and you have a <strong>neural network</strong>; pushing data through it from input to output is the <strong>forward pass</strong>. Every prediction any network makes, from Instagram filters to chatbots, is a forward pass.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-15-forward-propagation.svg" alt="Data flowing left to right through layers of a network" class="lc-topic-image" />
          <p class="lc-topic-caption">Values flow from left to right, one layer at a time.</p>
        </div>
        <div class="lc-card">
          <h3>From one neuron to a layer</h3>
          <p>One neuron has a weight <em>vector</em> w (one weight per input). A layer of 5 neurons has 5 such vectors. Put them side by side as columns and you get a weight <em>matrix</em> W of shape <code>(n_inputs, n_neurons)</code>. The biases become a vector b of shape <code>(n_neurons,)</code>.</p>
          <div class="lc-code">Z = X @ W + b      # linear part: every neuron, every example<br>A = relu(Z)        # activation, applied element-wise</div>
        </div>
        <div class="lc-card">
          <h3>Shapes are everything</h3>
          <table class="lc-table">
            <thead><tr><th>Array</th><th>Shape</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>X</td><td>(batch, n_in) = (4, 3)</td><td>4 students, 3 features each</td></tr>
              <tr><td>W</td><td>(n_in, n_out) = (3, 5)</td><td>3 inputs connect to 5 neurons</td></tr>
              <tr><td>b</td><td>(n_out,) = (5,)</td><td>one bias per neuron</td></tr>
              <tr><td>Z = X @ W + b</td><td>(batch, n_out) = (4, 5)</td><td>5 outputs for each of the 4 students</td></tr>
            </tbody>
          </table>
          <p>Rule to remember: <strong>(a, b) @ (b, c) → (a, c)</strong>. The inner numbers must match. Adding b works because of NumPy <strong>broadcasting</strong>: the (5,) bias is added to every one of the 4 rows.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: one layer by hand</h3>
          <div class="lc-code">import numpy as np<br><br>X = np.array([[1.0, 2.0, 3.0],          # 2 examples, 3 features<br>              [0.0, 1.0, 0.0]])<br>W = np.array([[0.1, 0.2, 0.0, 1.0],     # 3 inputs -&gt; 4 neurons<br>              [0.3, 0.0, 0.5, 1.0],<br>              [0.0, 0.1, 0.2, 1.0]])<br>b = np.array([0.5, 0.0, -1.0, 0.0])     # one bias per neuron<br><br>Z = X @ W + b                           # (2, 3) @ (3, 4) + (4,) -&gt; (2, 4)<br>print("Z shape:", Z.shape)<br>print(Z)<br>print("ReLU   :", np.maximum(0, Z)[1])<br><br>try:<br>    X @ W.T                             # (2, 3) @ (4, 3): inner sizes 3 and 4 differ<br>except ValueError as err:<br>    print("Error  :", str(err)[:60])</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Z shape: (2, 4)<br>[[ 1.2  0.5  0.6  6. ]<br> [ 0.8  0.  -0.5  1. ]]<br>ReLU   : [0.8 0.  0.  1. ]<br>Error  : matmul: Input operand 1 has a mismatch in its core dimension</div>
          <p>Check the first number yourself: 1×0.1 + 2×0.3 + 3×0.0 + 0.5 = 1.2. The last line shows the most common bug in deep learning code: a transposed matrix whose inner size does not match.</p>
        </div>
        <div class="lc-card">
          <h3>The three kinds of layers</h3>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>What it does</th><th>Size decided by</th></tr></thead>
            <tbody>
              <tr><td>Input layer</td><td>Just holds the features, no computation</td><td>Number of features (4 for iris flowers, 784 for a 28×28 image)</td></tr>
              <tr><td>Hidden layers</td><td>Linear step + activation; learn intermediate features</td><td>You choose (a design decision)</td></tr>
              <tr><td>Output layer</td><td>Produces the final prediction</td><td>The task: 1 for yes/no or regression, k for k classes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The forward pass step by step</h3>
          <p>For the starter network 4 → 8 → 6 → 3, each layer repeats the same two steps. The output of one layer is the input of the next:</p>
          <div class="lc-code">A0 = X                                 # (5, 4)  batch of 5 flowers<br>Z1 = A0 @ W1 + b1;  A1 = relu(Z1)      # (5, 8)<br>Z2 = A1 @ W2 + b2;  A2 = relu(Z2)      # (5, 6)<br>Z3 = A2 @ W3 + b3;  A3 = softmax(Z3)   # (5, 3)  probabilities</div>
          <p>The softmax output has one row per example and one column per class. Each row sums to 1, and the predicted class is the column with the biggest probability: <code>A3.argmax(axis=1)</code>. Our network is <strong>untrained</strong> (random weights), so these predictions are guesses. Lessons 5–8 show how training adjusts its 115 parameters.</p>
        </div>
        <div class="lc-card">
          <h3>Counting parameters</h3>
          <p>A dense layer has <code>n_in × n_out</code> weights plus <code>n_out</code> biases.</p>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>Weights</th><th>Biases</th><th>Total</th></tr></thead>
            <tbody>
              <tr><td>4 → 8</td><td>32</td><td>8</td><td>40</td></tr>
              <tr><td>8 → 6</td><td>48</td><td>6</td><td>54</td></tr>
              <tr><td>6 → 3</td><td>18</td><td>3</td><td>21</td></tr>
              <tr><td>28×28 image (784) → 128</td><td>100,352</td><td>128</td><td>100,480</td></tr>
            </tbody>
          </table>
          <p>Parameter count tells you how big (and how data-hungry) a model is.</p>
        </div>
        <div class="lc-card">
          <h3>Why scale the inputs, and why random weights?</h3>
          <ul class="lc-list">
            <li><strong>Scaling:</strong> petal width is about 0.2–2.5 cm, but a salary could be ₹5,00,000. Large inputs create large Z values that saturate activations. So we <strong>standardise</strong> each feature: <code>X = (X - mean) / std</code>, with the mean and std computed on the <em>training</em> data and reused for test data.</li>
            <li><strong>Random weights:</strong> if every weight started at zero, every neuron in a layer would compute the same thing and learn the same thing. Small random values break this symmetry. The <code>sqrt(2 / n_in)</code> scale is "He initialisation", explained in Lesson 11.</li>
            <li><strong>Why not loops?</strong> The starter checks that two nested Python loops give the same answer as <code>@</code>. NumPy's <code>@</code> runs optimised C code (and PyTorch runs it on a GPU), often hundreds of times faster.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Swapping the weight shape.</strong> In this course W is <code>(n_in, n_out)</code> and we write <code>X @ W</code>. (PyTorch's <code>nn.Linear</code> stores the transpose, <code>(n_out, n_in)</code>, and computes <code>X @ W.T</code>. Both are fine; mixing them is not.)</li>
            <li><strong>Softmax over the wrong axis.</strong> Use <code>axis=1</code> with <code>keepdims=True</code> so each example (row) gets its own probabilities that sum to 1.</li>
            <li><strong>ReLU on the output layer of a classifier.</strong> The last layer needs softmax (or sigmoid), not ReLU, to produce probabilities.</li>
            <li><strong>Standardising test data with its own mean.</strong> Always reuse the training mean and std, or your test inputs are on a different scale.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Add a fourth layer: change the network to <code>Dense(4, 8, ...), Dense(8, 6, ...), Dense(6, 6, relu, rng), Dense(6, 3, softmax, rng)</code>. The shape printout grows by one line and the parameter total becomes 157.</li>
            <li>Change the first layer to <code>Dense(3, 8, relu, rng)</code>. The error ends with <code>(size 3 is different from 4)</code>: X has 4 features but W expects 3 inputs.</li>
            <li>Put it back, then delete the line that standardises <code>X</code>. With raw centimetre values the probabilities become more extreme (values like 0.86 and 0.01 appear) and every flower is given the same class.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When your network code breaks, print the <code>.shape</code> of every array first. Most beginner bugs in deep learning are shape mismatches, like using (5, 3) where (3, 5) was needed. Keep this lesson's shape table handy: backpropagation runs through the same shapes in reverse.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        def relu(Z):
            return np.maximum(0, Z)

        def softmax(Z):
            E = np.exp(Z - Z.max(axis=1, keepdims=True))     # one softmax per row
            return E / E.sum(axis=1, keepdims=True)

        class Dense:
            """A fully connected layer: Z = X @ W + b, then an activation."""
            def __init__(self, n_in, n_out, activation, rng):
                self.W = rng.normal(0, np.sqrt(2 / n_in), size=(n_in, n_out))
                self.b = np.zeros(n_out)
                self.activation = activation
            def forward(self, X):
                return self.activation(X @ self.W + self.b)
            def n_params(self):
                return self.W.size + self.b.size

        # A batch of 5 flowers: sepal length, sepal width, petal length, petal width (cm)
        X = np.array([[5.1, 3.5, 1.4, 0.2],
                      [6.2, 2.9, 4.3, 1.3],
                      [7.7, 3.0, 6.1, 2.3],
                      [5.0, 3.4, 1.5, 0.2],
                      [6.4, 3.2, 5.3, 2.3]])
        X = (X - X.mean(axis=0)) / X.std(axis=0)            # standardise each feature

        rng = np.random.default_rng(42)
        network = [Dense(4, 8, relu, rng), Dense(8, 6, relu, rng), Dense(6, 3, softmax, rng)]

        A = X
        print(f"input          : A {A.shape}")
        for i, layer in enumerate(network, start=1):
            A = layer.forward(A)                            # the forward pass, one layer at a time
            print(f"layer {i} ({layer.activation.__name__:7s}): W {layer.W.shape} -> A {A.shape}")

        print("\nClass probabilities (untrained network, so near-random):")
        print(np.round(A, 3))
        print("Row sums       :", np.round(A.sum(axis=1), 3))
        print("Predicted class:", A.argmax(axis=1))
        print("Parameters     :", [layer.n_params() for layer in network], "=",
              sum(layer.n_params() for layer in network))

        # What @ does, written as slow loops for layer 1
        first = network[0]
        loop = np.array([[max(0.0, X[i] @ first.W[:, j] + first.b[j]) for j in range(8)] for i in range(5)])
        print("Loop version equals matrix version?", np.allclose(loop, first.forward(X)))
      PYTHON
    },
    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Loss Functions</h1>
        </div>
        <p class="lc-lead">To improve, a network first needs to know <em>how wrong</em> it is. A <strong>loss function</strong> turns the gap between predictions and true answers into a single number. Small loss = good predictions. Training is nothing more than a search for weights that make this number as small as possible.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-17-loss-functions.svg" alt="Predictions compared with targets to produce a loss" class="lc-topic-image" />
          <p class="lc-topic-caption">The loss compares the prediction with the true label and returns one score.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing a loss for your task</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Output layer</th><th>Loss</th><th>PyTorch name</th></tr></thead>
            <tbody>
              <tr><td>Regression (price, marks)</td><td>1 neuron, no activation</td><td>Mean Squared Error</td><td><code>nn.MSELoss</code></td></tr>
              <tr><td>Binary (spam / not spam)</td><td>1 neuron, sigmoid</td><td>Binary Cross-Entropy</td><td><code>nn.BCEWithLogitsLoss</code></td></tr>
              <tr><td>Multi-class (cat / dog / bird)</td><td>k neurons, softmax</td><td>Categorical Cross-Entropy</td><td><code>nn.CrossEntropyLoss</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Mean Squared Error (MSE)</h3>
          <p>MSE = average of (true − predicted)². Squaring makes all errors positive and punishes big mistakes much more than small ones: an error of 2 costs 4, but an error of 15 costs 225.</p>
          <div class="lc-code">def mse(y, y_hat):<br>    return np.mean((y - y_hat) ** 2)<br><br>mse(np.array([45, 60, 75]), np.array([47, 58, 76]))   # 3.0</div>
        </div>
        <div class="lc-card">
          <h3>Binary Cross-Entropy (BCE)</h3>
          <p>For a true label y (0 or 1) and predicted probability p:</p>
          <p><strong>BCE = −[ y·log(p) + (1 − y)·log(1 − p) ]</strong></p>
          <p>If the email is spam (y = 1) the loss is simply −log(p). Look at how it behaves:</p>
          <table class="lc-table">
            <thead><tr><th>Predicted p(spam)</th><th>Loss</th><th>Comment</th></tr></thead>
            <tbody>
              <tr><td>0.99</td><td>0.010</td><td>Confident and right: tiny loss</td></tr>
              <tr><td>0.5</td><td>0.693</td><td>No idea: medium loss</td></tr>
              <tr><td>0.01</td><td>4.605</td><td>Confident and wrong: huge loss</td></tr>
            </tbody>
          </table>
          <p>The log makes the network pay heavily for being confidently wrong, which pushes it to be honest about uncertainty.</p>
        </div>
        <div class="lc-card">
          <h3>Categorical Cross-Entropy</h3>
          <p>For multi-class problems the true label is <strong>one-hot</strong>: dog = [0, 1, 0]. The loss is −Σ y<sub>i</sub>·log(p<sub>i</sub>), which is just −log(probability given to the correct class).</p>
          <div class="lc-code">def categorical_cross_entropy(Y, P, eps=1e-12):<br>    return -np.mean(np.sum(Y * np.log(np.clip(P, eps, 1)), axis=1))<br><br>Y = np.array([[0, 1, 0]])                # true class: dog<br>P = np.array([[0.05, 0.90, 0.05]])       # model: 90% dog<br>categorical_cross_entropy(Y, P)          # 0.105</div>
          <p>We <code>clip</code> probabilities away from 0 because log(0) is minus infinity.</p>
        </div>
        <div class="lc-card">
          <h3>Loss vs accuracy</h3>
          <ul class="lc-list">
            <li><strong>Accuracy</strong> only counts right or wrong. It cannot tell 51% confidence from 99%.</li>
            <li><strong>Loss</strong> is smooth: a small change in weights gives a small change in loss. That smoothness is what lets us compute gradients and learn.</li>
            <li>We <em>train</em> on loss and <em>report</em> accuracy (or other metrics) to humans.</li>
            <li>The loss for a batch is the <strong>average</strong> over its examples, so it does not depend on batch size.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: outliers and logits</h3>
          <p>Two things every practitioner should see once: how MSE reacts to one big mistake, and how cross-entropy is computed directly from raw scores (logits).</p>
          <div class="lc-code">import numpy as np<br><br># Exam marks: the model is badly wrong on the last student (an outlier)<br>y     = np.array([60.0, 72.0, 55.0, 80.0])<br>y_hat = np.array([62.0, 70.0, 56.0, 50.0])<br>err = y_hat - y<br>print("errors      :", err)<br>print("MSE         :", np.mean(err ** 2))<br>print("MAE         :", np.mean(np.abs(err)))<br><br># Cross-entropy straight from raw scores (logits), the stable way<br>logits = np.array([2.0, 0.5, -1.0])            # scores for cat, dog, bird<br>label = 1                                       # the true class is dog<br>shifted = logits - logits.max()<br>log_probs = shifted - np.log(np.exp(shifted).sum())   # log-softmax<br>print("probs       :", np.round(np.exp(log_probs), 3))<br>print("CE loss     :", round(-log_probs[label], 3))<br>print("log(3) check:", round(np.log(3), 3), "(loss of a clueless 3-class model)")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">errors      : [  2.  -2.   1. -30.]<br>MSE         : 227.25<br>MAE         : 8.75<br>probs       : [0.786 0.175 0.039]<br>CE loss     : 1.741<br>log(3) check: 1.099 (loss of a clueless 3-class model)</div>
          <p>One error of 30 marks makes MSE jump to 227.25 (900 / 4 from that student alone), while the <strong>Mean Absolute Error</strong> only rises to 8.75. If your data has outliers you do not want to chase, MAE or the Huber loss (<code>nn.HuberLoss</code>) is gentler. The model gave the true class (dog) only 17.5%, so its cross-entropy, 1.741, is higher than log(3) = 1.099, the loss of a model that guesses 1/3 for every class.</p>
        </div>
        <div class="lc-card">
          <h3>The gradients you will use</h3>
          <p>Training needs the slope of the loss, not just its value. For the standard pairings the formulas are short (z is the raw output before the activation, N the batch size); you will derive them with the chain rule in Lesson 7:</p>
          <table class="lc-table">
            <thead><tr><th>Output + loss</th><th>Gradient</th></tr></thead>
            <tbody>
              <tr><td>No activation + MSE</td><td>dL/dŷ = 2(ŷ − y) / N</td></tr>
              <tr><td>Sigmoid + binary cross-entropy</td><td>dL/dz = (p − y) / N</td></tr>
              <tr><td>Softmax + categorical cross-entropy</td><td>dL/dz = (P − Y) / N, where Y is one-hot</td></tr>
            </tbody>
          </table>
          <p>This neat cancellation is one reason sigmoid goes with BCE and softmax goes with cross-entropy.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Applying softmax before <code>nn.CrossEntropyLoss</code>.</strong> PyTorch's cross-entropy expects raw logits and applies log-softmax itself. Adding your own softmax trains badly. The same goes for sigmoid before <code>nn.BCEWithLogitsLoss</code>.</li>
            <li><strong>Taking log(0).</strong> A predicted probability of exactly 0 for the true class gives an infinite loss. Clip probabilities (as the starter does) or, better, work from logits.</li>
            <li><strong>Using MSE for classification.</strong> It works poorly with sigmoid/softmax outputs because the gradients become tiny when the model is confidently wrong. Use cross-entropy.</li>
            <li><strong>Comparing loss values across different loss functions.</strong> An MSE of 3.0 and a cross-entropy of 0.5 are on different scales; compare models using the same loss or a metric such as accuracy.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code add a third regression model <code>perfect = actual.copy()</code> and print its MSE. It should be exactly 0.00.</li>
            <li>In the spam loop add <code>0.001</code> to the list of probabilities. The loss becomes about 6.9: being <em>very</em> confidently wrong costs even more.</li>
            <li>Add a 4th row to <code>Y_batch</code> and <code>P_batch</code> where the model gives the true class 0.25. Does the batch average go up or down?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A quick sanity check: an untrained classifier with k classes should start with a cross-entropy loss close to log(k). For 10 classes that is about 2.30. If your first loss is far from this, something is wrong in your code.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        def mse(y, y_hat):
            return np.mean((y - y_hat) ** 2)

        def binary_cross_entropy(y, p, eps=1e-12):
            p = np.clip(p, eps, 1 - eps)          # avoid log(0)
            return -np.mean(y * np.log(p) + (1 - y) * np.log(1 - p))

        def categorical_cross_entropy(Y, P, eps=1e-12):
            return -np.mean(np.sum(Y * np.log(np.clip(P, eps, 1)), axis=1))

        # 1. Regression: house prices in lakh rupees
        actual = np.array([45.0, 60.0, 75.0])
        good = np.array([47.0, 58.0, 76.0])
        poor = np.array([40.0, 70.0, 60.0])
        print("Regression -> Mean Squared Error")
        print(f"  good model: {mse(actual, good):.2f}    poor model: {mse(actual, poor):.2f}")
        print("  (one error of 15 costs 225, so MSE punishes big mistakes heavily)")

        # 2. Binary classification: is this email spam? True label = 1
        print("\nBinary cross-entropy for a spam email (label = 1)")
        for p in [0.99, 0.9, 0.6, 0.5, 0.1, 0.01]:
            loss = binary_cross_entropy(np.array([1.0]), np.array([p]))
            print(f"  model says p(spam) = {p:<5} -> loss = {loss:.3f}")

        # 3. Multi-class: cat / dog / bird. True class = dog (one-hot [0, 1, 0])
        Y = np.array([[0, 1, 0]])
        print("\nCategorical cross-entropy (true class = dog)")
        for name, P in [("confident and right", [0.05, 0.90, 0.05]),
                        ("unsure", [0.30, 0.40, 0.30]),
                        ("confident and wrong", [0.90, 0.05, 0.05])]:
            loss = categorical_cross_entropy(Y, np.array([P]))
            print(f"  {name:20s} P={P} -> loss = {loss:.3f}")

        # Batch loss = average over examples
        Y_batch = np.array([[1, 0, 0], [0, 1, 0], [0, 0, 1]])
        P_batch = np.array([[0.7, 0.2, 0.1], [0.1, 0.8, 0.1], [0.3, 0.3, 0.4]])
        print(f"\nAverage loss over a batch of 3: {categorical_cross_entropy(Y_batch, P_batch):.3f}")
      PYTHON
    },
    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Gradient Descent</h1>
        </div>
        <p class="lc-lead">We have a loss that measures error. Now we need a way to change the weights so the loss goes down. <strong>Gradient descent</strong> is that way: compute the slope of the loss with respect to every weight, then take a small step downhill. Repeat a few thousand times and the network learns.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-18-gradient-descent.svg" alt="A ball rolling down a loss curve towards the minimum" class="lc-topic-image" />
          <p class="lc-topic-caption">Each step moves the weight against the slope, towards lower loss.</p>
        </div>
        <div class="lc-card">
          <h3>The hill-walking picture</h3>
          <p>Imagine you are on a hill in thick fog near Munnar and want to reach the valley. You cannot see the bottom, but you can feel which way the ground slopes under your feet. So you take a step downhill, feel again, take another step. Gradient descent does exactly this, where "height" is the loss and your "position" is the set of weights.</p>
        </div>
        <div class="lc-card">
          <h3>The update rule</h3>
          <p><strong>w<sub>new</sub> = w<sub>old</sub> − learning_rate × dLoss/dw</strong></p>
          <ul class="lc-list">
            <li><strong>Gradient</strong> (dLoss/dw): the slope. Positive slope means increasing w increases loss, so we decrease w.</li>
            <li><strong>Learning rate</strong> (lr, often written η): how big a step to take, typically 0.001 to 0.1.</li>
            <li>With many weights, the gradient is a vector of slopes, one per weight, and every weight is updated at the same time.</li>
          </ul>
          <div class="lc-code"># minimise f(w) = (w - 3)^2, slope f'(w) = 2(w - 3)<br>w = -4.0<br>for step in range(25):<br>    grad = 2 * (w - 3)<br>    w = w - 0.1 * grad<br>print(w)   # about 2.97, very close to the minimum at 3</div>
        </div>
        <div class="lc-card">
          <h3>Fitting a line with gradient descent</h3>
          <p>For the model ŷ = m·x + c and MSE loss L = mean((ŷ − y)²), calculus gives:</p>
          <div class="lc-code">error = (m * x + c) - y<br>dm = 2 * np.mean(error * x)    # dL/dm<br>dc = 2 * np.mean(error)        # dL/dc<br>m -= lr * dm<br>c -= lr * dc</div>
          <p>The starter code runs this for 2,000 epochs and lands on the same m and c as the exact least-squares formula from <code>np.polyfit</code>. For a straight line we have a formula, but for neural networks with millions of weights there is no formula, so gradient descent is the only practical way.</p>
        </div>
        <div class="lc-card">
          <h3>Three flavours of gradient descent</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Examples per update</th><th>Pros / cons</th></tr></thead>
            <tbody>
              <tr><td>Batch GD</td><td>The whole dataset</td><td>Smooth, exact gradient, but slow for big data</td></tr>
              <tr><td>Stochastic GD (SGD)</td><td>1 example</td><td>Fast, noisy steps; noise can help escape bad spots</td></tr>
              <tr><td>Mini-batch GD</td><td>32–256 examples</td><td>Best of both; the standard in deep learning</td></tr>
            </tbody>
          </table>
          <p>In practice people say "SGD" even when they mean mini-batch gradient descent.</p>
        </div>
        <div class="lc-card">
          <h3>Checking gradients numerically</h3>
          <p>You can estimate any slope without calculus: (L(w + h) − L(w − h)) / 2h for a tiny h like 0.00001. This is called a <strong>gradient check</strong>. It is too slow for training, but perfect for testing whether your hand-written gradient formula is correct.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: three steps by hand</h3>
          <div class="lc-code"># Minimise f(w) = (w - 3)^2 by hand, printing every part of each step<br>w, lr = -4.0, 0.1<br>for step in range(1, 4):<br>    grad = 2 * (w - 3)                  # slope at the current w<br>    new_w = w - lr * grad               # move AGAINST the slope<br>    print(f"step {step}: w = {w:6.3f}  grad = {grad:7.3f}  "<br>          f"w - lr*grad = {new_w:6.3f}  f = {(new_w - 3) ** 2:6.3f}")<br>    w = new_w<br><br>for lr in [0.5, 1.0, 1.1]:              # what does a bigger step do?<br>    w = -4.0<br>    for _ in range(20):<br>        w -= lr * 2 * (w - 3)<br>    print(f"lr = {lr}: w after 20 steps = {w:.4g}")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">step 1: w = -4.000  grad = -14.000  w - lr*grad = -2.600  f = 31.360<br>step 2: w = -2.600  grad = -11.200  w - lr*grad = -1.480  f = 20.070<br>step 3: w = -1.480  grad =  -8.960  w - lr*grad = -0.584  f = 12.845<br>lr = 0.5: w after 20 steps = 3<br>lr = 1.0: w after 20 steps = -4<br>lr = 1.1: w after 20 steps = -265.4</div>
          <p>The gradient is negative (the curve slopes down to the right), so subtracting it <em>increases</em> w towards 3. Each step is smaller than the last because the slope flattens near the minimum. The second part shows the learning rate's power: lr = 0.5 lands exactly on 3 (for this particular curve it is the perfect step), lr = 1.0 jumps back and forth between −4 and 10 forever, and lr = 1.1 overshoots further every time and diverges.</p>
        </div>
        <div class="lc-card">
          <h3>Why gradients and not just "try both directions"?</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Cost per step for 1 million weights</th><th>Used for</th></tr></thead>
            <tbody>
              <tr><td>Nudge each weight and re-measure the loss</td><td>About 1 million extra forward passes</td><td>Only gradient checks on tiny models</td></tr>
              <tr><td>Backpropagation (Lesson 7)</td><td>About one extra backward pass</td><td>All real training</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Wrong sign.</strong> Writing <code>w = w + lr * grad</code> climbs the hill and the loss grows every step. The update always <em>subtracts</em> the gradient.</li>
            <li><strong>Updating one parameter before computing the other's gradient.</strong> Compute <code>dm</code> and <code>dc</code> from the same error, then update both. The starter does this correctly.</li>
            <li><strong>A learning rate that is too large.</strong> The loss bounces or explodes to <code>inf</code>/<code>nan</code>. Divide lr by 10 and try again.</li>
            <li><strong>Unscaled features.</strong> If one feature is in lakhs and another in single digits, one direction of the loss surface is far steeper than the other and gradient descent crawls. Standardise first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In Part 1 of the starter change <code>lr = 0.1</code> to <code>lr = 0.9</code>. Watch w jump past 3 and back, but still settle closer each time.</li>
            <li>In Part 2 change <code>lr = 0.02</code> to <code>lr = 0.03</code>. The loss explodes: x goes up to 10, so this direction is steep and needs a smaller step.</li>
            <li>Put <code>lr = 0.02</code> back and reduce the loop to <code>range(1, 101)</code>. How far are m and c from the exact solution after 100 epochs?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Gradient descent finds a <em>local</em> minimum. For neural networks that sounds scary, but in very high dimensions most local minima turn out to be almost as good as the best one, so in practice it works remarkably well.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Part 1: minimise f(w) = (w - 3)^2. Its slope is f'(w) = 2(w - 3)
        w = -4.0
        lr = 0.1
        print("Minimising f(w) = (w - 3)^2, starting at w = -4")
        for step in range(1, 26):
            grad = 2 * (w - 3)
            w = w - lr * grad                    # step downhill
            if step in (1, 2, 3, 5, 10, 25):
                print(f"  step {step:2d}: w = {w:.4f}   f(w) = {(w - 3) ** 2:.6f}")

        # Part 2: fit a line y = m*x + c to noisy data (true m = 2, c = 1)
        rng = np.random.default_rng(1)
        x = rng.uniform(0, 10, size=50)
        y = 2.0 * x + 1.0 + rng.normal(0, 1.0, size=50)

        m, c = 0.0, 0.0
        lr = 0.02
        print("\nFitting a line with gradient descent on MSE loss")
        for epoch in range(1, 2001):
            error = (m * x + c) - y
            loss = np.mean(error ** 2)
            dm = 2 * np.mean(error * x)          # dLoss/dm
            dc = 2 * np.mean(error)              # dLoss/dc
            m -= lr * dm
            c -= lr * dc
            if epoch in (1, 10, 100, 500, 2000):
                print(f"  epoch {epoch:4d}: loss = {loss:7.3f}   m = {m:.3f}   c = {c:.3f}")

        # Compare with the exact least-squares answer
        m_exact, c_exact = np.polyfit(x, y, 1)
        print(f"\nExact solution: m = {m_exact:.3f}, c = {c_exact:.3f}")

        # Gradient check at a fresh point (m = 1, c = 0): slope from two nearby points
        h, m0, c0 = 1e-5, 1.0, 0.0
        L = lambda mm: np.mean((mm * x + c0 - y) ** 2)
        numeric = (L(m0 + h) - L(m0 - h)) / (2 * h)
        analytic = 2 * np.mean((m0 * x + c0 - y) * x)
        print(f"Gradient check for m at m = 1: analytic = {analytic:.4f}, numeric = {numeric:.4f}")
      PYTHON
    },
    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">The Chain Rule &amp; Backpropagation</h1>
        </div>
        <p class="lc-lead">Gradient descent needs the slope of the loss with respect to <em>every</em> weight, even weights buried deep inside the network. <strong>Backpropagation</strong> computes all of these slopes efficiently by applying one idea from school calculus again and again: the <strong>chain rule</strong>.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-16-backpropagation.svg" alt="Error signals flowing backwards through a network" class="lc-topic-image" />
          <p class="lc-topic-caption">The forward pass goes left to right; gradients flow right to left.</p>
        </div>
        <div class="lc-card">
          <h3>The chain rule</h3>
          <p>If y depends on u, and u depends on x, then:</p>
          <p><strong>dy/dx = dy/du × du/dx</strong></p>
          <p>Example: y = (3x + 2)². Let u = 3x + 2, so y = u². Then dy/du = 2u and du/dx = 3, so dy/dx = 2u × 3 = 6(3x + 2). At x = 1.5, u = 6.5 and dy/dx = 13 × 3 = 39.</p>
          <p>Think of it like currency conversion: if 1 USD = 83 INR and 1 INR = 1.6 JPY, then 1 USD = 83 × 1.6 JPY. Rates of change multiply along the chain.</p>
        </div>
        <div class="lc-card">
          <h3>A neuron is a chain of simple steps</h3>
          <p>For one neuron with squared-error loss, the forward pass is a chain:</p>
          <div class="lc-code">w, b  →  z = w·x + b  →  a = sigmoid(z)  →  L = (a − y)²</div>
          <p>To find dL/dw we multiply the local derivative of each link, starting from the loss and moving <em>backwards</em>:</p>
          <table class="lc-table">
            <thead><tr><th>Link</th><th>Local derivative</th></tr></thead>
            <tbody>
              <tr><td>L = (a − y)²</td><td>dL/da = 2(a − y)</td></tr>
              <tr><td>a = sigmoid(z)</td><td>da/dz = a(1 − a)</td></tr>
              <tr><td>z = w·x + b</td><td>dz/dw = x, dz/db = 1</td></tr>
            </tbody>
          </table>
          <div class="lc-code">dL_dz = 2 * (a - y) * a * (1 - a)   # dL/da × da/dz<br>dL_dw = dL_dz * x                   # × dz/dw<br>dL_db = dL_dz * 1                   # × dz/db</div>
          <p>Notice that dL/dz is computed <strong>once</strong> and reused for both w and b. That reuse is the heart of backprop's efficiency.</p>
        </div>
        <div class="lc-card">
          <h3>Backprop through a whole layer (matrix form)</h3>
          <p>For a dense layer <code>Z = A_prev @ W + b</code>, if we already know <code>dZ</code> (the gradient of the loss with respect to Z), the chain rule gives:</p>
          <div class="lc-code">dW = A_prev.T @ dZ          # same shape as W<br>db = dZ.sum(axis=0)         # same shape as b<br>dA_prev = dZ @ W.T          # pass the gradient to the previous layer<br>dZ_prev = dA_prev * relu_slope(Z_prev)   # through the activation</div>
          <p>Then the previous layer repeats the same steps. Layer by layer, the error signal travels from the output back to the input. That is why it is called <em>back</em>-propagation.</p>
        </div>
        <div class="lc-card">
          <h3>A handy shortcut</h3>
          <p>For a sigmoid output with binary cross-entropy, or a softmax output with categorical cross-entropy, the messy terms cancel and the gradient at the output is simply:</p>
          <div class="lc-code">dZ_out = (predictions - targets) / batch_size</div>
          <p>You will use this in the training loop in the next lesson.</p>
        </div>
        <div class="lc-card">
          <h3>Always verify with a gradient check</h3>
          <p>The starter code compares the backprop gradients with numerical estimates (L(w + h) − L(w − h)) / 2h. When they match to 5 decimal places, you can trust your backward pass. PyTorch and TensorFlow do this backward pass automatically (called <strong>autograd</strong>), but knowing what happens inside helps you debug when training goes wrong.</p>
        </div>
        <div class="lc-card">
          <h3>Deriving the shortcut</h3>
          <p>Why is the output gradient just <code>p − y</code>? For one example with sigmoid output p and BCE loss:</p>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>L = −[y·log p + (1 − y)·log(1 − p)]</td><td>dL/dp = −y/p + (1 − y)/(1 − p) = (p − y) / (p(1 − p))</td></tr>
              <tr><td>p = sigmoid(z)</td><td>dp/dz = p(1 − p)</td></tr>
              <tr><td>Chain rule</td><td>dL/dz = (p − y) / (p(1 − p)) × p(1 − p) = <strong>p − y</strong></td></tr>
            </tbody>
          </table>
          <p>The p(1 − p) terms cancel. Averaging the loss over a batch of N examples divides the gradient by N. Softmax with categorical cross-entropy cancels in the same way and gives <code>(P − Y) / N</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: backprop for a 2-layer network, with a gradient check</h3>
          <p>Network: 3 inputs → 5 tanh neurons → 1 sigmoid output, a batch of 4 examples. Follow the shapes in the comments: every gradient has the same shape as the thing it belongs to.</p>
          <div class="lc-code">import numpy as np<br>rng = np.random.default_rng(0)<br>X = rng.normal(size=(4, 3))                     # 4 examples, 3 features<br>y = np.array([[1.0], [0.0], [1.0], [0.0]])<br>W1, b1 = rng.normal(size=(3, 5)) * 0.5, np.zeros(5)<br>W2, b2 = rng.normal(size=(5, 1)) * 0.5, np.zeros(1)<br><br>def loss(W1):<br>    H = np.tanh(X @ W1 + b1)<br>    P = 1 / (1 + np.exp(-(H @ W2 + b2)))<br>    return -np.mean(y * np.log(P) + (1 - y) * np.log(1 - P)), H, P<br><br>L, H, P = loss(W1)<br>dZ2 = (P - y) / len(X)              # (4, 1)  sigmoid + BCE shortcut<br>dW2 = H.T @ dZ2                     # (5, 4) @ (4, 1) -&gt; (5, 1)<br>dH  = dZ2 @ W2.T                    # (4, 1) @ (1, 5) -&gt; (4, 5)<br>dZ1 = dH * (1 - H ** 2)             # through tanh, element-wise<br>dW1 = X.T @ dZ1                     # (3, 4) @ (4, 5) -&gt; (3, 5)<br>print("loss:", round(L, 4), "| dW1", dW1.shape, "| dW2", dW2.shape)<br><br>h, E = 1e-6, np.zeros_like(W1)<br>E[2, 4] = h                         # nudge one weight: row 2, column 4<br>numeric = (loss(W1 + E)[0] - loss(W1 - E)[0]) / (2 * h)<br>print(f"dW1[2, 4] backprop = {dW1[2, 4]:.8f}")<br>print(f"dW1[2, 4] numeric  = {numeric:.8f}")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">loss: 0.5591 | dW1 (3, 5) | dW2 (5, 1)<br>dW1[2, 4] backprop = -0.00247952<br>dW1[2, 4] numeric  = -0.00247952</div>
          <p>The two numbers agree to 8 decimal places, so the backward pass is correct. <code>1 - H ** 2</code> is the tanh slope written using the layer's own output: d/dz tanh(z) = 1 − tanh(z)².</p>
        </div>
        <div class="lc-card">
          <h3>Forward vs backward at a glance</h3>
          <table class="lc-table">
            <thead><tr><th>Forward pass</th><th>Backward pass</th></tr></thead>
            <tbody>
              <tr><td>Z = A_prev @ W + b</td><td>dW = A_prev.T @ dZ, db = dZ.sum(axis=0), dA_prev = dZ @ W.T</td></tr>
              <tr><td>A = relu(Z)</td><td>dZ = dA * (Z &gt; 0)</td></tr>
              <tr><td>A = tanh(Z)</td><td>dZ = dA * (1 − A²)</td></tr>
              <tr><td>A = sigmoid(Z)</td><td>dZ = dA * A(1 − A)</td></tr>
              <tr><td>Runs input → output, stores Z and A</td><td>Runs output → input, reuses the stored values</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting the activation slope.</strong> Writing <code>dZ1 = dZ2 @ W2.T</code> without <code>* (1 - H ** 2)</code> (or <code>* (Z1 &gt; 0)</code> for ReLU) gives wrong gradients that often still "sort of" train, which makes the bug hard to find. A gradient check catches it.</li>
            <li><strong>Using <code>W</code> instead of <code>W.T</code>.</strong> The shapes usually fail loudly, but with square matrices they do not. Check the shape comments.</li>
            <li><strong>Forgetting to divide by the batch size.</strong> Then the effective learning rate grows with the batch size.</li>
            <li><strong>Updating weights before the whole backward pass is done.</strong> <code>dA_prev = dZ @ W.T</code> must use the <em>old</em> W. Compute all gradients first, then update.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter code change the target from <code>1.0</code> to <code>0.0</code>. dL/dw becomes positive, so gradient descent now <em>decreases</em> w, and the loss still falls every step.</li>
            <li>Introduce a bug on purpose: change <code>da_dz = a * (1 - a)</code> to <code>da_dz = a</code>. The backprop and numeric lines no longer match. Fix it again.</li>
            <li>Change <code>lr = 0.5</code> to <code>lr = 5.0</code>. w jumps from 0.5 to about 1.97 in a single step. Here the loss still falls (one neuron, one example), but on real networks steps this large usually make training unstable (Lesson 9).</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A gradient always has the same shape as the thing it is the gradient of: dW has W's shape, db has b's shape. If your shapes don't match, your backprop has a bug.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        h = 1e-6

        # Chain rule warm-up: y = (3x + 2)^2. Let u = 3x + 2, so y = u^2
        x = 1.5
        u = 3 * x + 2
        dy_du = 2 * u            # derivative of u^2
        du_dx = 3                # derivative of 3x + 2
        print(f"Chain rule: dy/dx = dy/du * du/dx = {dy_du} * {du_dx} = {dy_du * du_dx}")
        numeric = ((3 * (x + h) + 2) ** 2 - (3 * (x - h) + 2) ** 2) / (2 * h)
        print(f"Numerical check  : {numeric:.4f}\n")

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        # One neuron: z = w*x + b,  a = sigmoid(z),  L = (a - target)^2
        x, target = 2.0, 1.0
        w, b = 0.5, -0.3

        def forward(w, b):
            z = w * x + b
            a = sigmoid(z)
            return z, a, (a - target) ** 2

        z, a, L = forward(w, b)
        print(f"Forward : z = {z:.4f}  a = {a:.4f}  loss = {L:.4f}")

        # Backward: multiply local derivatives from the loss back to each parameter
        dL_da = 2 * (a - target)
        da_dz = a * (1 - a)             # sigmoid derivative
        dL_dz = dL_da * da_dz
        dL_dw = dL_dz * x               # dz/dw = x
        dL_db = dL_dz * 1.0             # dz/db = 1
        print(f"Backward: dL/da = {dL_da:.4f}  da/dz = {da_dz:.4f}  dL/dz = {dL_dz:.4f}")
        print(f"          dL/dw = {dL_dw:.5f}  dL/db = {dL_db:.5f}")

        num_w = (forward(w + h, b)[2] - forward(w - h, b)[2]) / (2 * h)
        num_b = (forward(w, b + h)[2] - forward(w, b - h)[2]) / (2 * h)
        print(f"Numeric : dL/dw = {num_w:.5f}  dL/db = {num_b:.5f}  (should match)")

        # Use the gradients: each update should lower the loss
        lr = 0.5
        print("\nGradient descent using backprop gradients:")
        for step in range(1, 7):
            z, a, L = forward(w, b)
            dL_dz = 2 * (a - target) * a * (1 - a)
            w -= lr * dL_dz * x
            b -= lr * dL_dz
            print(f"  step {step}: loss = {L:.4f}  w = {w:.3f}  b = {b:.3f}")
      PYTHON
    },
    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Training Loop from Scratch</h1>
        </div>
        <p class="lc-lead">Now we put everything together: forward pass, loss, backpropagation and gradient descent, repeated over <strong>epochs</strong> and <strong>mini-batches</strong>. The result is a complete neural network that learns to separate two interleaving half-moons, a pattern no straight line can separate, written in about 40 lines of NumPy.</p>
        <div class="lc-card">
          <h3>Epochs, batches and iterations</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>In our code</th></tr></thead>
            <tbody>
              <tr><td>Batch size</td><td>Examples used for one weight update</td><td>32</td></tr>
              <tr><td>Iteration (step)</td><td>One forward + backward + update on one batch</td><td>480 / 32 = 15 per epoch</td></tr>
              <tr><td>Epoch</td><td>One full pass over the training data</td><td>100 epochs</td></tr>
              <tr><td>Total updates</td><td>epochs × steps per epoch</td><td>1,500</td></tr>
            </tbody>
          </table>
          <p>We <strong>shuffle</strong> the data at the start of each epoch, so every batch is a fresh random mix. This stops the network from learning the order of the data.</p>
        </div>
        <div class="lc-card">
          <h3>The network</h3>
          <p>2 inputs (x and y coordinates) → 16 hidden neurons with tanh → 1 output neuron with sigmoid (probability of class 1). Loss: binary cross-entropy.</p>
        </div>
        <div class="lc-card">
          <h3>The four steps inside every iteration</h3>
          <div class="lc-code">for epoch in range(epochs):<br>    order = rng.permutation(len(X_tr))            # shuffle<br>    for start in range(0, len(X_tr), batch_size):<br>        batch = order[start:start + batch_size]<br>        Xb, yb = X_tr[batch], y_tr[batch]<br><br>        # 1. forward pass<br>        H = np.tanh(Xb @ W1 + b1)<br>        P = sigmoid(H @ W2 + b2)<br><br>        # 2. backward pass (chain rule)<br>        dZ2 = (P - yb) / len(Xb)<br>        dW2, db2 = H.T @ dZ2, dZ2.sum(axis=0)<br>        dZ1 = (dZ2 @ W2.T) * (1 - H ** 2)        # tanh slope<br>        dW1, db1 = Xb.T @ dZ1, dZ1.sum(axis=0)<br><br>        # 3. update<br>        W1 -= lr * dW1;  b1 -= lr * db1<br>        W2 -= lr * dW2;  b2 -= lr * db2<br><br>    # 4. monitor: print loss and accuracy every few epochs</div>
        </div>
        <div class="lc-card">
          <h3>Reading the training log</h3>
          <ul class="lc-list">
            <li>The <strong>loss should go down</strong> over epochs. If it goes up or becomes <code>nan</code>, the learning rate is probably too high.</li>
            <li>Training accuracy rises from about 86% to about 98% as the hidden layer learns to bend the boundary around the moons.</li>
            <li>The <strong>test accuracy</strong> on 120 points the network never saw tells us whether it truly learned the pattern or just memorised the training points.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Why mini-batches?</h3>
          <ul class="lc-list">
            <li><strong>Speed:</strong> a batch of 32 gives a good-enough gradient for a fraction of the cost of the full dataset.</li>
            <li><strong>Memory:</strong> real datasets (millions of images) don't fit in GPU memory at once.</li>
            <li><strong>Better results:</strong> the slight noise from random batches often helps the network find solutions that generalise well.</li>
          </ul>
          <p>Common batch sizes are powers of 2 (32, 64, 128, 256) because they fit GPU hardware nicely.</p>
        </div>
        <div class="lc-card">
          <h3>Train / test split</h3>
          <p>We keep 20% of the data aside as a <strong>test set</strong> and never train on it. In bigger projects you also keep a <strong>validation set</strong> to tune settings like learning rate and number of epochs, so the test set stays a truly fair final exam.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: how shuffled mini-batches are made</h3>
          <div class="lc-code">import numpy as np<br>rng = np.random.default_rng(0)<br>n, batch_size = 10, 4                   # 10 examples, batches of 4<br>for epoch in range(1, 3):<br>    order = rng.permutation(n)          # a new random order every epoch<br>    batches = [order[s:s + batch_size] for s in range(0, n, batch_size)]<br>    print(f"epoch {epoch}:", [b.tolist() for b in batches])<br>print("steps per epoch:", int(np.ceil(n / batch_size)), "(the last batch is smaller)")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">epoch 1: [[4, 6, 2, 7], [3, 5, 9, 0], [8, 1]]<br>epoch 2: [[2, 9, 3, 6], [0, 4, 8, 7], [5, 1]]<br>steps per epoch: 3 (the last batch is smaller)</div>
          <p>Every example is used exactly once per epoch, but in a different order and grouping each time. With 480 training points and <code>batch_size = 32</code> the starter gets exactly 15 full batches, so 100 epochs make 1,500 updates.</p>
        </div>
        <div class="lc-card">
          <h3>Reading training and validation curves</h3>
          <p>In a real project you print the loss on a separate <strong>validation</strong> set after every epoch, next to the training loss:</p>
          <table class="lc-table">
            <thead><tr><th>What you see</th><th>Diagnosis</th><th>What to try</th></tr></thead>
            <tbody>
              <tr><td>Both losses fall together</td><td>Healthy training</td><td>Keep going</td></tr>
              <tr><td>Both stay high and flat</td><td>Underfitting, or lr far too small</td><td>Bigger model, larger lr, more epochs</td></tr>
              <tr><td>Training falls, validation starts rising</td><td>Overfitting</td><td>Regularise or stop early (Lesson 10)</td></tr>
              <tr><td>Loss jumps up or becomes <code>nan</code></td><td>lr too large</td><td>Divide lr by 3–10 (Lesson 9)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Not shuffling.</strong> If the data is sorted (all class 0, then all class 1), each batch contains one class only and training swings back and forth.</li>
            <li><strong>Measuring the loss on only the last batch.</strong> One batch is noisy. The starter measures the loss on the full training set every few epochs.</li>
            <li><strong>Using the test set to choose settings.</strong> Tuning lr or epochs until the test score looks good turns the test set into training data. Use a validation set for tuning.</li>
            <li><strong>Mixing up epochs and steps.</strong> "Trained for 100" means nothing without the unit: 100 epochs here is 1,500 steps.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change <code>batch_size</code> from 32 to 480 (the whole training set). There is now only 1 update per epoch, 100 in total, and test accuracy drops to 87.50%.</li>
            <li>Put it back to 32 and shrink the hidden layer from 16 to 2 neurons (change <code>(2, 16)</code>, <code>np.zeros(16)</code>, <code>np.sqrt(16)</code> and <code>(16, 1)</code>). The network is now too small to bend around the moons: accuracy stays below 90%.</li>
            <li>Restore 16 neurons and set <code>lr</code> to 5.0. Notice that the loss at epoch 100 is <em>higher</em> than at epoch 50: the steps are so big that training bounces.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before training on the full dataset, try to overfit a tiny batch of about 10 examples. If the loss cannot get close to 0 on 10 examples, there is a bug in your forward or backward pass, and no amount of tuning will fix it.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_moons

        rng = np.random.default_rng(0)
        X, y = make_moons(n_samples=600, noise=0.2, random_state=0)
        y = y.reshape(-1, 1)
        idx = rng.permutation(len(X))
        X_tr, y_tr = X[idx[:480]], y[idx[:480]]      # 480 training points
        X_te, y_te = X[idx[480:]], y[idx[480:]]      # 120 test points

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        # Network: 2 inputs -> 16 hidden (tanh) -> 1 output (sigmoid)
        W1, b1 = rng.normal(0, 1 / np.sqrt(2), size=(2, 16)), np.zeros(16)
        W2, b2 = rng.normal(0, 1 / np.sqrt(16), size=(16, 1)), np.zeros(1)

        def forward(X):
            H = np.tanh(X @ W1 + b1)
            P = sigmoid(H @ W2 + b2)
            return H, P

        def bce(P, y):
            return -np.mean(y * np.log(P + 1e-9) + (1 - y) * np.log(1 - P + 1e-9))

        lr, epochs, batch_size = 0.5, 100, 32
        steps_per_epoch = int(np.ceil(len(X_tr) / batch_size))
        print(f"{len(X_tr)} samples / batch {batch_size} = {steps_per_epoch} updates per epoch\n")
        for epoch in range(1, epochs + 1):
            order = rng.permutation(len(X_tr))           # shuffle every epoch
            for start in range(0, len(X_tr), batch_size):
                batch = order[start:start + batch_size]
                Xb, yb = X_tr[batch], y_tr[batch]
                H, P = forward(Xb)                       # 1. forward pass
                dZ2 = (P - yb) / len(Xb)                 # 2. backward pass (sigmoid + BCE)
                dW2, db2 = H.T @ dZ2, dZ2.sum(axis=0)
                dZ1 = (dZ2 @ W2.T) * (1 - H ** 2)        #    chain rule through tanh
                dW1, db1 = Xb.T @ dZ1, dZ1.sum(axis=0)
                W1 -= lr * dW1                           # 3. update parameters
                b1 -= lr * db1
                W2 -= lr * dW2
                b2 -= lr * db2
            if epoch in (1, 5, 10, 25, 50, 100):
                _, P = forward(X_tr)
                acc = np.mean((P > 0.5) == y_tr)
                print(f"epoch {epoch:3d}  loss = {bce(P, y_tr):.4f}  train accuracy = {acc:.2%}")

        _, P_te = forward(X_te)
        print(f"\nTest accuracy on {len(X_te)} unseen points: {np.mean((P_te > 0.5) == y_te):.2%}")
        print("Total parameter updates:", epochs * steps_per_epoch)
      PYTHON
    },
    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Learning Rate &amp; Optimisers</h1>
        </div>
        <p class="lc-lead">The <strong>learning rate</strong> is the single most important setting in deep learning. Too small and training takes forever; too large and the loss explodes. <strong>Optimisers</strong> such as Momentum and Adam are smarter versions of gradient descent that adapt the steps so training is faster and more stable.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-19-learning-rate.svg" alt="Small, good and too-large learning rate steps on a loss curve" class="lc-topic-image" />
          <p class="lc-topic-caption">Small steps crawl, good steps converge, huge steps overshoot and diverge.</p>
        </div>
        <div class="lc-card">
          <h3>Effects of the learning rate</h3>
          <table class="lc-table">
            <thead><tr><th>Learning rate</th><th>What happens</th><th>Symptom in the log</th></tr></thead>
            <tbody>
              <tr><td>Too small</td><td>Tiny steps, very slow progress</td><td>Loss falls very slowly</td></tr>
              <tr><td>Just right</td><td>Fast, steady progress</td><td>Loss drops quickly, then flattens</td></tr>
              <tr><td>Too large</td><td>Steps jump over the valley and bounce higher each time</td><td>Loss grows, becomes <code>inf</code> or <code>nan</code></td></tr>
            </tbody>
          </table>
          <p>In the starter code, plain gradient descent works with lr = 0.019, but lr = 0.021 diverges to a loss of billions. The gap between "best" and "broken" can be very small!</p>
        </div>
        <div class="lc-card">
          <h3>The problem with plain SGD: narrow valleys</h3>
          <p>Real loss surfaces often look like a long, narrow valley: very steep in one direction and nearly flat in another. SGD must keep the learning rate small enough for the steep direction, so it crawls along the flat direction. Our test function <code>0.5 * (x² + 100·y²)</code> is exactly such a valley.</p>
        </div>
        <div class="lc-card">
          <h3>Momentum</h3>
          <p>Momentum keeps a running <em>velocity</em>, like a ball rolling downhill that builds up speed. Consistent directions add up; zig-zag directions cancel out.</p>
          <div class="lc-code">v = beta * v + grad       # beta is usually 0.9<br>w = w - lr * v</div>
        </div>
        <div class="lc-card">
          <h3>Adam: the default choice</h3>
          <p><strong>Adam</strong> (Adaptive Moment Estimation, 2014) combines momentum with a separate, automatic step size for each weight. Weights with consistently large gradients get smaller steps; weights with small gradients get bigger ones.</p>
          <div class="lc-code">m = b1 * m + (1 - b1) * grad          # average gradient (direction)<br>v = b2 * v + (1 - b2) * grad ** 2     # average squared gradient (size)<br>m_hat = m / (1 - b1 ** t)             # bias correction (early steps)<br>v_hat = v / (1 - b2 ** t)<br>w = w - lr * m_hat / (np.sqrt(v_hat) + 1e-8)</div>
          <p>Default values: lr = 0.001, b1 = 0.9, b2 = 0.999. They work surprisingly well for most problems.</p>
        </div>
        <div class="lc-card">
          <h3>Comparing optimisers</h3>
          <table class="lc-table">
            <thead><tr><th>Optimiser</th><th>Idea</th><th>PyTorch</th></tr></thead>
            <tbody>
              <tr><td>SGD</td><td>Step against the gradient</td><td><code>torch.optim.SGD(params, lr=0.01)</code></td></tr>
              <tr><td>SGD + Momentum</td><td>Add velocity to smooth zig-zags</td><td><code>torch.optim.SGD(params, lr=0.01, momentum=0.9)</code></td></tr>
              <tr><td>RMSprop</td><td>Per-weight step size from squared gradients</td><td><code>torch.optim.RMSprop(params)</code></td></tr>
              <tr><td>Adam / AdamW</td><td>Momentum + per-weight step size</td><td><code>torch.optim.Adam(params, lr=1e-3)</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Learning rate schedules</h3>
          <p>Many projects start with a larger learning rate and <strong>decay</strong> it over time: big steps early to move fast, small steps later to settle into the minimum. Popular schedules are step decay (halve every N epochs), cosine decay, and "warm-up" (start tiny, ramp up), which is standard for Transformers.</p>
        </div>
        <div class="lc-card">
          <h3>RMSProp and AdamW</h3>
          <p><strong>RMSProp</strong> keeps only the second part of Adam: a running average of squared gradients, used to give each weight its own step size.</p>
          <div class="lc-code">s = 0.9 * s + 0.1 * grad ** 2<br>w = w - lr * grad / (np.sqrt(s) + 1e-8)</div>
          <p><strong>AdamW</strong> (2017) fixes how Adam handles weight decay. Adding <code>λ·w</code> to the gradient (classic L2) gets rescaled by Adam's per-weight step sizes, so weights with large gradients are barely regularised. AdamW instead shrinks every weight directly, separate ("decoupled") from the gradient step:</p>
          <div class="lc-code">w = w - lr * m_hat / (np.sqrt(v_hat) + 1e-8)   # the normal Adam step<br>w = w - lr * weight_decay * w                  # decoupled weight decay</div>
          <p>AdamW is the default optimiser for training Transformers: <code>torch.optim.AdamW(model.parameters(), lr=3e-4, weight_decay=0.01)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: Adam's first step, and a warm-up + cosine schedule</h3>
          <div class="lc-code">import numpy as np<br>b1, b2, lr = 0.9, 0.999, 0.001<br>for g in [0.002, 2.0, 2000.0]:          # tiny, normal and huge gradients<br>    m = (1 - b1) * g                    # first step: m and v start at 0<br>    v = (1 - b2) * g ** 2<br>    m_hat, v_hat = m / (1 - b1), v / (1 - b2)<br>    step = lr * m_hat / (np.sqrt(v_hat) + 1e-8)<br>    print(f"grad = {g:&gt;7}: m = {m:.4g}, m_hat = {m_hat:.4g}, step = {step:.6f}")<br><br># Warm-up then cosine decay, as used for Transformers<br>peak, warmup, total = 1e-3, 100, 1000<br>def lr_at(t):<br>    if t &lt; warmup:<br>        return peak * (t + 1) / warmup<br>    progress = (t - warmup) / (total - warmup)<br>    return peak * 0.5 * (1 + np.cos(np.pi * progress))<br>print("schedule:", [f"{lr_at(t):.1e}" for t in [0, 49, 99, 100, 550, 999]])</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">grad =   0.002: m = 0.0002, m_hat = 0.002, step = 0.001000<br>grad =     2.0: m = 0.2, m_hat = 2, step = 0.001000<br>grad =  2000.0: m = 200, m_hat = 2000, step = 0.001000<br>schedule: ['1.0e-05', '5.0e-04', '1.0e-03', '1.0e-03', '5.0e-04', '3.0e-09']</div>
          <p>Without bias correction, m would be only 10% of the gradient on the first step, because it starts at 0. Dividing by (1 − β₁ᵗ) fixes that. Notice that Adam's first step is about <code>lr</code> <em>whatever the size of the gradient</em>: Adam cares about the gradient's direction and consistency, not its raw scale. The schedule climbs linearly to the peak during 100 warm-up steps, then follows half a cosine wave down to almost zero at step 1,000.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Copying a learning rate between optimisers.</strong> lr = 0.1 is reasonable for SGD on many problems but usually far too big for Adam (default 0.001). Re-tune when you switch.</li>
            <li><strong>Forgetting bias correction</strong> in a hand-written Adam, so the first steps are much too small.</li>
            <li><strong>Using Adam's <code>weight_decay</code> and expecting AdamW behaviour.</strong> In PyTorch, <code>Adam(weight_decay=…)</code> adds L2 to the gradient; <code>AdamW(weight_decay=…)</code> is the decoupled version.</li>
            <li><strong>Changing the learning rate in tiny linear steps</strong> (0.001, 0.002, 0.003). Search on a log scale instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter's comparison loop change Adam's learning rate from <code>0.3</code> to <code>0.03</code>. Adam is now the slowest of the three (loss 13.59 after 100 steps): every optimiser needs its own learning rate.</li>
            <li>Put it back and change momentum's default <code>beta=0.9</code> to <code>beta=0.99</code>. With so much "memory", the ball overshoots and the loss is still about 10 after 100 steps.</li>
            <li>Add <code>0.02</code> to the learning-rate list for plain gradient descent. It sits exactly on the edge (2 / 100, where 100 is the steepest curvature): the y value flips sign every step without shrinking, so the loss is stuck near 50 (printed as "too slow"). Just above the edge, 0.021 explodes.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When starting a new project, use Adam with lr = 0.001. If the loss is unstable, divide the learning rate by 3 or 10; if training is too slow, multiply it. Change the learning rate on a log scale (0.1, 0.03, 0.01, 0.003...) rather than in small steps.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # A long, narrow valley: loss(x, y) = 0.5 * (x^2 + 100 * y^2), minimum at (0, 0)
        def loss(p):
            return 0.5 * (p[0] ** 2 + 100 * p[1] ** 2)

        def grad(p):
            return np.array([p[0], 100 * p[1]])

        START = np.array([-8.0, 1.0])

        def sgd(lr, steps):
            p = START.copy()
            for _ in range(steps):
                p -= lr * grad(p)
            return p

        def momentum(lr, steps, beta=0.9):
            p, v = START.copy(), np.zeros(2)
            for _ in range(steps):
                v = beta * v + grad(p)                 # velocity remembers past gradients
                p -= lr * v
            return p

        def adam(lr, steps, b1=0.9, b2=0.999, eps=1e-8):
            p, m, v = START.copy(), np.zeros(2), np.zeros(2)
            for t in range(1, steps + 1):
                g = grad(p)
                m = b1 * m + (1 - b1) * g              # average gradient (direction)
                v = b2 * v + (1 - b2) * g ** 2         # average squared gradient (scale)
                m_hat = m / (1 - b1 ** t)              # bias correction for early steps
                v_hat = v / (1 - b2 ** t)
                p -= lr * m_hat / (np.sqrt(v_hat) + eps)
            return p

        print(f"Plain gradient descent, 100 steps, starting loss = {loss(START)}")
        for lr in [0.001, 0.005, 0.015, 0.019, 0.021]:
            final = loss(sgd(lr, 100))
            note = "DIVERGED (steps too big)" if final > loss(START) else ("too slow" if final > 1 else "good")
            print(f"  lr = {lr:<6} final loss = {final:12.4g}  {note}")

        print("\nOptimiser comparison: loss after N steps")
        print("(SGD lr=0.018, Momentum lr=0.01 beta=0.9, Adam lr=0.3)")
        print(f"{'steps':>6} {'SGD':>10} {'Momentum':>10} {'Adam':>10}")
        for steps in [10, 25, 50, 100, 200]:
            print(f"{steps:6d} {loss(sgd(0.018, steps)):10.4f} "
                  f"{loss(momentum(0.01, steps)):10.4f} {loss(adam(0.3, steps)):10.4f}")
      PYTHON
    },
    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Overfitting &amp; Regularisation</h1>
        </div>
        <p class="lc-lead">A network with enough parameters can memorise its training data perfectly, including all the noise, and still fail on new data. This is <strong>overfitting</strong>, like a student who memorises last year's answer key but cannot solve a new question. <strong>Regularisation</strong> techniques force the network to learn general patterns instead.</p>
        <div class="lc-card">
          <h3>Spotting overfitting</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Train accuracy</th><th>Validation accuracy</th><th>Diagnosis</th></tr></thead>
            <tbody>
              <tr><td>Underfitting</td><td>Low</td><td>Low</td><td>Model too simple or not trained enough</td></tr>
              <tr><td>Good fit</td><td>High</td><td>Almost as high</td><td>Learned the real pattern</td></tr>
              <tr><td>Overfitting</td><td>Very high</td><td>Much lower</td><td>Memorised the training data</td></tr>
            </tbody>
          </table>
          <p>The key signal is the <strong>gap</strong> between training and validation performance. On a loss chart, overfitting shows up as validation loss starting to rise while training loss keeps falling.</p>
        </div>
        <div class="lc-card">
          <h3>1. L2 regularisation (weight decay)</h3>
          <p>Add a penalty for large weights to the loss: <code>loss = data_loss + (λ/2)·Σ w²</code>. Big weights make sharp, wiggly decision boundaries; the penalty keeps the function smoother. In the gradient it simply adds λ·w:</p>
          <div class="lc-code">dW = X.T @ dZ + l2 * W        # l2 is lambda, e.g. 0.01<br>W -= lr * dW</div>
          <p>In PyTorch you set this on the optimiser: <code>torch.optim.SGD(params, lr=0.1, weight_decay=1e-4)</code> is exactly L2. With Adam, prefer <code>torch.optim.AdamW(params, lr=1e-3, weight_decay=0.01)</code>, the decoupled version from Lesson 9.</p>
        </div>
        <div class="lc-card">
          <h3>2. Dropout</h3>
          <p>During training, randomly switch off a fraction p of the neurons in a layer at every step. The network cannot rely on any single neuron, so it learns redundant, robust features. It is like a cricket team that practises with random players missing, so everyone learns to cover.</p>
          <div class="lc-code">mask = (rng.random(H.shape) &gt; p) / (1 - p)   # "inverted dropout"<br>H = H * mask                                 # training only<br># at test time: use H as it is, no dropout</div>
          <p>Dividing by (1 − p) keeps the average activation the same, so nothing needs to change at test time. PyTorch: <code>nn.Dropout(p=0.5)</code>, switched off automatically by <code>model.eval()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>3. Early stopping</h3>
          <p>Watch the validation loss after every epoch (or every few). Save the weights whenever it reaches a new best. If it hasn't improved for <em>patience</em> epochs, stop and restore the best weights.</p>
          <div class="lc-code">if val_loss &lt; best_loss:<br>    best_loss, best_epoch = val_loss, epoch<br>    best_weights = copy_of_weights()<br>elif epoch - best_epoch &gt;= patience:<br>    restore(best_weights)<br>    break</div>
        </div>
        <div class="lc-card">
          <h3>4. More (or augmented) data</h3>
          <p>The best cure for overfitting is more data. When you can't collect more, <strong>data augmentation</strong> creates new training examples from old ones: flip, rotate, crop or brighten images; add noise to audio; replace words with synonyms in text.</p>
        </div>
        <div class="lc-card">
          <h3>What the starter code shows</h3>
          <p>A 64-neuron network is trained on only 40 noisy points. Without regularisation it scores about 97% on training data but only about 73% on validation data, a gap of over 20 points. L2, dropout and early stopping each shrink the gap to a few points and raise validation accuracy to 81–83%.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: what dropout and weight decay do to the numbers</h3>
          <div class="lc-code">import numpy as np<br>rng = np.random.default_rng(0)<br>H = np.full((1000, 100), 2.0)                # activations, all equal to 2.0<br>p = 0.5                                      # drop half the neurons<br><br>mask = (rng.random(H.shape) &gt; p) / (1 - p)   # kept neurons are scaled by 2<br>H_train = H * mask<br>print("fraction switched off :", round(np.mean(H_train == 0), 3))<br>print("mean before dropout   :", H.mean())<br>print("mean after  dropout   :", round(H_train.mean(), 3))<br>print("kept values become    :", np.unique(H_train))<br><br># L2 / weight decay alone: each step multiplies w by (1 - lr * lambda)<br>w, lr, lam = 5.0, 0.1, 0.5<br>for step in range(3):<br>    w = w - lr * lam * w<br>print("w after 3 decay steps :", round(w, 4), "=", "5 x 0.95^3")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">fraction switched off : 0.501<br>mean before dropout   : 2.0<br>mean after  dropout   : 1.996<br>kept values become    : [0. 4.]<br>w after 3 decay steps : 4.2869 = 5 x 0.95^3</div>
          <p>Half the activations become 0 and the survivors are doubled, so the average stays about 2.0. That is why nothing needs rescaling at test time. Weight decay on its own shrinks a weight by the same fraction every step (here 5%), so only weights that the data keeps pushing up stay large.</p>
        </div>
        <div class="lc-card">
          <h3>Which technique when?</h3>
          <table class="lc-table">
            <thead><tr><th>Technique</th><th>Cost</th><th>Typical setting</th><th>Good first choice for</th></tr></thead>
            <tbody>
              <tr><td>Weight decay (L2)</td><td>Free</td><td>1e-4 to 1e-2</td><td>Almost every model</td></tr>
              <tr><td>Dropout</td><td>Slower convergence</td><td>p = 0.1 to 0.5</td><td>Large dense layers, Transformers (p ≈ 0.1)</td></tr>
              <tr><td>Early stopping</td><td>Saves time</td><td>patience 5–20 checks</td><td>Every project with a validation set</td></tr>
              <tr><td>Data augmentation</td><td>More compute per epoch</td><td>Flips, crops, noise</td><td>Images, audio, small datasets</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Leaving dropout on at test time.</strong> Predictions become random. In PyTorch call <code>model.eval()</code> before evaluating and <code>model.train()</code> before training again.</li>
            <li><strong>Forgetting to divide by (1 − p).</strong> Without inverted scaling, activations at test time are twice as large as during training (for p = 0.5).</li>
            <li><strong>Choosing the stopping epoch with the test set.</strong> Early stopping must watch a validation set; the test set is only for the final report.</li>
            <li><strong>Regularising a model that underfits.</strong> If training accuracy is already low, regularisation makes it worse. Fix underfitting first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter's settings list add <code>("L2 + early stop", {"l2": 0.01, "patience": 150})</code>. With L2 the validation loss keeps improving, so early stopping never triggers and the result equals L2 alone (81.00%). Regularisers do not simply add up.</li>
            <li>Change L2 from <code>0.01</code> to <code>0.1</code>. Too much decay: both accuracies drop to about 80% because the weights are kept too small to bend the boundary.</li>
            <li>Change <code>X_tr, y_tr = X[:40], y[:40]</code> to use 200 points and <code>X[200:]</code> for validation (40 points). With 5× more training data the unregularised gap shrinks from 24.50% to 7.00%, without any regularisation.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> First make your model big enough to overfit (training accuracy near 100%), then add regularisation to close the gap. A model that can't even fit the training data will not be fixed by dropout.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_moons

        X, y = make_moons(n_samples=240, noise=0.35, random_state=3)
        y = y.reshape(-1, 1)
        X_tr, y_tr = X[:40], y[:40]          # only 40 training points -> easy to overfit
        X_va, y_va = X[40:], y[40:]          # 200 validation points

        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        def bce(P, y):
            return -np.mean(y * np.log(P + 1e-9) + (1 - y) * np.log(1 - P + 1e-9))

        def train(l2=0.0, drop=0.0, patience=None, epochs=1500, lr=0.5, hidden=64):
            r = np.random.default_rng(0)
            W1, b1 = r.normal(0, 2, (2, hidden)), np.zeros(hidden)
            W2, b2 = r.normal(0, 1 / np.sqrt(hidden), (hidden, 1)), np.zeros(1)
            best_loss, best_epoch, best = np.inf, 0, None
            for epoch in range(1, epochs + 1):
                H = np.tanh(X_tr @ W1 + b1)
                mask = (r.random(H.shape) > drop) / (1 - drop)   # inverted dropout
                Hd = H * mask
                P = sigmoid(Hd @ W2 + b2)
                dZ2 = (P - y_tr) / len(X_tr)
                dZ1 = (dZ2 @ W2.T) * mask * (1 - H ** 2)
                W2 -= lr * (Hd.T @ dZ2 + l2 * W2)                # L2 adds l2 * W to the gradient
                b2 -= lr * dZ2.sum(axis=0)
                W1 -= lr * (X_tr.T @ dZ1 + l2 * W1)
                b1 -= lr * dZ1.sum(axis=0)
                if epoch % 10:
                    continue                                     # check validation every 10 epochs
                val_loss = bce(sigmoid(np.tanh(X_va @ W1 + b1) @ W2 + b2), y_va)
                if val_loss < best_loss:
                    best_loss, best_epoch = val_loss, epoch
                    best = [W1.copy(), b1.copy(), W2.copy(), b2.copy()]
                elif patience and epoch - best_epoch >= patience:
                    W1, b1, W2, b2 = best                        # early stopping: restore best
                    break
            acc = lambda X_, y_: np.mean((sigmoid(np.tanh(X_ @ W1 + b1) @ W2 + b2) > 0.5) == y_)
            return acc(X_tr, y_tr), acc(X_va, y_va), epoch, best_epoch

        print(f"{'setting':22s} {'train acc':>9} {'val acc':>8} {'gap':>6}  epochs run")
        for name, kw in [("no regularisation", {}),
                         ("L2 weight decay", {"l2": 0.01}),
                         ("dropout p=0.5", {"drop": 0.5}),
                         ("early stopping", {"patience": 150})]:
            tr, va, ran, best_ep = train(**kw)
            print(f"{name:22s} {tr:9.2%} {va:8.2%} {tr - va:6.2%}  {ran} (best val at {best_ep})")
      PYTHON
    },
    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Weight Initialisation &amp; Batch Normalisation</h1>
        </div>
        <p class="lc-lead">Deep networks are sensitive to the <em>scale</em> of the numbers flowing through them. If activations shrink a little at every layer, after 20 layers they vanish; if they grow a little, they explode. Good <strong>weight initialisation</strong> and <strong>batch normalisation</strong> keep the signal at a healthy size so deep networks can train.</p>
        <div class="lc-card">
          <h3>Why not start with zeros?</h3>
          <p>If all weights start at 0 (or any identical value), every neuron in a layer gets the same input, computes the same output and receives the same gradient. They stay identical forever, so 100 neurons behave like 1. We need <strong>random</strong> starting weights to break this symmetry. The question is: how large should the random numbers be?</p>
        </div>
        <div class="lc-card">
          <h3>What goes wrong with a bad scale</h3>
          <table class="lc-table">
            <thead><tr><th>Initial weights</th><th>What happens in a deep network</th></tr></thead>
            <tbody>
              <tr><td>Too small (std 0.01)</td><td>Activations shrink towards 0 layer after layer. Gradients vanish and early layers learn nothing.</td></tr>
              <tr><td>Too large (std 1.0)</td><td>Tanh/sigmoid neurons saturate at ±1 where their slope is ~0. With ReLU, values explode.</td></tr>
              <tr><td>Just right</td><td>The spread of activations stays roughly the same through every layer.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Xavier and He initialisation</h3>
          <p>The trick: scale the random weights by the number of connections, so the sum w·x has roughly the same variance as each input. If the n<sub>in</sub> inputs have variance 1, then Var(w·x) = n<sub>in</sub> × Var(w), so we want Var(w) ≈ 1 / n<sub>in</sub>.</p>
          <div class="lc-code"># Xavier / Glorot: for tanh and sigmoid. Var(w) = 2 / (n_in + n_out)<br>W = rng.normal(0, np.sqrt(2 / (n_in + n_out)), size=(n_in, n_out))<br><br># He / Kaiming: for ReLU (ReLU zeroes about half its inputs, so double it). Var(w) = 2 / n_in<br>W = rng.normal(0, np.sqrt(2 / n_in), size=(n_in, n_out))</div><p>Glorot averages n<sub>in</sub> and n<sub>out</sub> so that the signal keeps its size both forwards and backwards. For a square layer (n<sub>in</sub> = n<sub>out</sub> = 256, as in the starter) it equals <code>sqrt(1 / 256)</code>.</p>
          <p>The starter code sends data through 8 layers of 256 neurons and prints the spread (standard deviation) of activations. With He init and ReLU it stays around 0.8 at every layer; with tiny weights it falls to 0.00000.</p>
          <p>PyTorch already uses a sensible default for <code>nn.Linear</code>, and you can choose explicitly with <code>nn.init.kaiming_normal_(layer.weight)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Batch normalisation</h3>
          <p>Even with good initialisation, the distribution of each layer's inputs keeps shifting as earlier layers learn. <strong>Batch normalisation</strong> (Ioffe and Szegedy, 2015) normalises each feature over the current mini-batch, then lets the network re-scale it with two learnable parameters, γ (gamma) and β (beta). (The original paper explained its success as reducing this "internal covariate shift"; later research suggests the main benefit is a smoother loss surface. Either way, it works.)</p>
          <div class="lc-code">mu = Z.mean(axis=0)                      # per-feature batch mean<br>var = Z.var(axis=0)                      # per-feature batch variance<br>Z_hat = (Z - mu) / np.sqrt(var + 1e-5)   # mean 0, std 1<br>out = gamma * Z_hat + beta               # learnable scale and shift</div>
          <p>γ and β let the network undo the normalisation if that helps, so we lose no flexibility.</p>
        </div>
        <div class="lc-card">
          <h3>Benefits of batch norm</h3>
          <ul class="lc-list">
            <li>Allows much higher learning rates, so training is faster.</li>
            <li>Makes the network far less sensitive to initialisation.</li>
            <li>Adds a little noise (batch statistics vary), which acts as mild regularisation.</li>
            <li>At test time it uses running averages of mean and variance collected during training, not the test batch. In PyTorch <code>model.eval()</code> switches this on.</li>
          </ul>
          <p>Transformers use a close cousin, <strong>layer normalisation</strong>, which normalises across the features of each single example instead of across the batch.</p>
        </div>
        <div class="lc-card">
          <h3>Where it goes in a network</h3>
          <div class="lc-code">Linear → BatchNorm → ReLU → Linear → BatchNorm → ReLU → ... → Output</div>
          <p>In PyTorch: <code>nn.Sequential(nn.Linear(784, 256), nn.BatchNorm1d(256), nn.ReLU(), ...)</code>. For images, <code>nn.BatchNorm2d</code> normalises each channel.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: batch norm in training vs evaluation</h3>
          <p>During training, BN normalises with the current batch's mean and variance and also keeps an exponential running average of them. At evaluation time it uses those running averages, so it can handle a single example:</p>
          <div class="lc-code">import numpy as np<br>rng = np.random.default_rng(0)<br>gamma, beta, eps = np.ones(2), np.zeros(2), 1e-5<br>running_mean, running_var = np.zeros(2), np.ones(2)<br>momentum = 0.1                                  # PyTorch's default<br><br>for step in range(200):                         # training: use batch statistics<br>    Z = rng.normal(loc=[50, -3], scale=[10, 0.5], size=(32, 2))<br>    mu, var = Z.mean(axis=0), Z.var(axis=0)<br>    out = gamma * (Z - mu) / np.sqrt(var + eps) + beta<br>    running_mean = (1 - momentum) * running_mean + momentum * mu<br>    running_var = (1 - momentum) * running_var + momentum * var<br><br>print("running mean:", np.round(running_mean, 2))<br>print("running std :", np.round(np.sqrt(running_var), 2))<br><br>z_single = np.array([[60.0, -3.5]])             # evaluation: ONE example<br>out = gamma * (z_single - running_mean) / np.sqrt(running_var + eps) + beta<br>print("eval output :", np.round(out, 2))<br>print("batch stats of 1 example would give var =", z_single.var(axis=0))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">running mean: [49.51 -3.01]<br>running std : [9.54 0.47]<br>eval output : [[ 1.1  -1.04]]<br>batch stats of 1 example would give var = [0. 0.]</div>
          <p>The running averages found the true mean (about 50 and −3) and spread (about 10 and 0.5). Normalising one example with its own statistics would divide by a variance of 0, which is why evaluation mode needs the running values.</p>
        </div>
        <div class="lc-card">
          <h3>BatchNorm vs LayerNorm</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>BatchNorm</th><th>LayerNorm</th></tr></thead>
            <tbody>
              <tr><td>Averages over</td><td>The batch, for each feature</td><td>The features, for each example</td></tr>
              <tr><td>Train vs eval behaviour</td><td>Different (batch stats vs running averages)</td><td>Identical</td></tr>
              <tr><td>Works with batch size 1?</td><td>Not in training</td><td>Yes</td></tr>
              <tr><td>Typical home</td><td>CNNs</td><td>Transformers, RNNs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>model.eval()</code>.</strong> BN then uses the statistics of whatever test batch arrives, so the same image can get different predictions depending on its batch-mates.</li>
            <li><strong>Tiny training batches with BN.</strong> The mean and variance of 2 examples are very noisy. Use batches of at least about 16, or switch to LayerNorm/GroupNorm.</li>
            <li><strong>Mixing up the pairs.</strong> He init with ReLU, Xavier/Glorot with tanh or sigmoid.</li>
            <li><strong>Initialising every weight to the same value.</strong> Symmetry is never broken, and 100 neurons act like 1.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter add <code>("He", "tanh")</code> to the list of settings. It stays healthy too (about 0.56 at layer 8): with tanh, a slightly larger scale is fine. The dangerous choices are the extremes, 0.01 and 1.0.</li>
            <li>Change <code>layers=8</code> to <code>layers=16</code> in <code>activation_stats</code>, and <code>s[7]</code> to <code>s[-1]</code> in the print so the last column shows the deepest layer. Xavier + ReLU keeps shrinking layer after layer, (0.0026 at layer 16), while He + ReLU is still about 0.67.</li>
            <li>In the batch-norm part change <code>beta=np.zeros(4)</code> to <code>beta=np.full(4, 5.0)</code>. The mean after BN becomes 5 for every feature: β sets the new mean and γ the new spread.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Remember the pair: <strong>ReLU → He init</strong>, <strong>tanh/sigmoid → Xavier init</strong>. When a deep network refuses to learn (loss stuck from the first epoch), print the standard deviation of each layer's activations. It quickly shows whether the signal is vanishing or exploding.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        np.set_printoptions(suppress=True)
        rng = np.random.default_rng(0)
        X = rng.normal(size=(500, 256))       # 500 samples, 256 features

        def activation_stats(init, act, layers=8, width=256):
            r = np.random.default_rng(1)
            scale = {"tiny (0.01)": 0.01, "large (1.0)": 1.0,
                     "Xavier": np.sqrt(2 / (width + width)),   # Glorot: 2 / (n_in + n_out)
                     "He": np.sqrt(2 / width)}[init]                # He: 2 / n_in
            A, stds = X, []
            for _ in range(layers):
                W = r.normal(0, scale, size=(width, width))
                Z = A @ W
                A = np.tanh(Z) if act == "tanh" else np.maximum(0, Z)
                stds.append(A.std())
            saturated = np.mean(np.abs(A) > 0.99) if act == "tanh" else 0.0
            return stds, saturated

        print("Std of activations after layers 1, 2, 4, 8 of a deep network")
        print(f"{'init':12s} {'act':5s} {'L1':>7} {'L2':>7} {'L4':>7} {'L8':>9}  note")
        for init, act in [("tiny (0.01)", "tanh"), ("large (1.0)", "tanh"),
                          ("Xavier", "tanh"), ("Xavier", "relu"), ("He", "relu")]:
            s, sat = activation_stats(init, act)
            note = "vanishing" if s[-1] < 0.05 else ("saturated" if sat > 0.5 else "healthy")
            print(f"{init:12s} {act:5s} {s[0]:7.3f} {s[1]:7.3f} {s[3]:7.3f} {s[7]:9.5f}  {note}")

        # Batch normalisation: re-centre and re-scale each feature using batch statistics
        def batch_norm(Z, gamma, beta, eps=1e-5):
            mu = Z.mean(axis=0)
            var = Z.var(axis=0)
            Z_hat = (Z - mu) / np.sqrt(var + eps)
            return gamma * Z_hat + beta, mu, var

        Z = rng.normal(loc=[50, -3, 0, 900], scale=[12, 0.5, 2, 300], size=(32, 4))
        out, mu, var = batch_norm(Z, gamma=np.ones(4), beta=np.zeros(4))
        print("\nBatch norm on a batch of 32 badly scaled pre-activations")
        print("  before: mean", np.round(Z.mean(axis=0), 2), " std", np.round(Z.std(axis=0), 2))
        print("  after : mean", np.round(out.mean(axis=0), 2), " std", np.round(out.std(axis=0), 2))

        out2, _, _ = batch_norm(Z, gamma=np.full(4, 2.0), beta=np.full(4, 1.0))
        print("  with learnable gamma=2, beta=1 -> mean", np.round(out2.mean(axis=0), 2),
              " std", np.round(out2.std(axis=0), 2))
      PYTHON
    },
    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Introduction to PyTorch</h1>
        </div>
        <p class="lc-lead">Writing every gradient by hand teaches you how networks work, but professionals don't do it. They use a framework such as <strong>PyTorch</strong> (created at Meta, now run by the PyTorch Foundation, and the most widely used framework in research) or <strong>Keras</strong>/TensorFlow (from Google). These give you ready-made layers, automatic gradients and GPU support, so a full training loop fits in about 15 lines.</p>
        <div class="lc-card">
          <h3>What a framework gives you</h3>
          <table class="lc-table">
            <thead><tr><th>You did by hand</th><th>PyTorch does it with</th></tr></thead>
            <tbody>
              <tr><td>NumPy arrays</td><td><code>torch.tensor</code> (like arrays, but can run on a GPU and track gradients)</td></tr>
              <tr><td>Dense layer class</td><td><code>nn.Linear(in, out)</code></td></tr>
              <tr><td>Activation functions</td><td><code>nn.ReLU()</code>, <code>nn.Sigmoid()</code>, <code>nn.GELU()</code></td></tr>
              <tr><td>Loss formulas</td><td><code>nn.CrossEntropyLoss()</code>, <code>nn.BCEWithLogitsLoss()</code>, <code>nn.MSELoss()</code></td></tr>
              <tr><td>Backprop with the chain rule</td><td><code>loss.backward()</code> (autograd)</td></tr>
              <tr><td>Update rule / Adam</td><td><code>torch.optim.Adam(model.parameters())</code></td></tr>
              <tr><td>Shuffling into mini-batches</td><td><code>DataLoader(dataset, batch_size=32, shuffle=True)</code></td></tr>
            </tbody>
          </table>
          <p>PyTorch can't run in this browser editor, so the lesson shows real PyTorch code with its real output (install it on your laptop with <code>pip install torch</code>, or use Google Colab). The starter code is a NumPy copy of the same API.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: tensors and autograd</h3>
          <p>Every operation on a tensor with <code>requires_grad=True</code> is recorded in a <strong>computation graph</strong>. <code>.backward()</code> walks that graph in reverse and applies the chain rule, exactly as you did in Lesson 7:</p>
          <div class="lc-code">import torch<br><br>x = torch.tensor([[1.0, 2.0], [3.0, 4.0]])      # a 2x2 tensor<br>print(x.shape, x.dtype)<br>print(x @ x.T)                                   # same maths as NumPy<br><br>w = torch.tensor(0.5, requires_grad=True)        # track gradients for w<br>b = torch.tensor(-0.3, requires_grad=True)<br>loss = (torch.sigmoid(w * 2.0 + b) - 1.0) ** 2   # the neuron from Lesson 7<br>loss.backward()                                  # autograd: chain rule<br>print("loss   :", round(loss.item(), 4))<br>print("dL/dw  :", round(w.grad.item(), 5))<br>print("dL/db  :", round(b.grad.item(), 5))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">torch.Size([2, 2]) torch.float32<br>tensor([[ 5., 11.],<br>        [11., 25.]])<br>loss   : 0.1101<br>dL/dw  : -0.29427<br>dL/db  : -0.14713</div>
          <p>These are exactly the values the Lesson 7 starter computed by hand: dL/dw = −0.29427 and dL/db = −0.14713.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: a complete training loop</h3>
          <p>A small network learns to separate the four quadrants of the plane (an XOR-like pattern). Note the five steps inside the batch loop; every PyTorch project has them:</p>
          <div class="lc-code">import torch<br>from torch import nn<br>from torch.utils.data import TensorDataset, DataLoader<br><br>torch.manual_seed(0)<br>X = torch.randn(200, 2)<br>y = ((X[:, 0] * X[:, 1]) &gt; 0).float().reshape(-1, 1)   # XOR-like quadrants<br>loader = DataLoader(TensorDataset(X, y), batch_size=32, shuffle=True)<br><br>model = nn.Sequential(nn.Linear(2, 16), nn.ReLU(), nn.Linear(16, 1))<br>loss_fn = nn.BCEWithLogitsLoss()             # sigmoid + BCE, from logits<br>optimizer = torch.optim.Adam(model.parameters(), lr=0.05)<br><br>for epoch in range(1, 31):<br>    model.train()<br>    for xb, yb in loader:<br>        loss = loss_fn(model(xb), yb)        # 1-2. forward + loss<br>        optimizer.zero_grad()                # 3. clear old gradients<br>        loss.backward()                      # 4. backprop<br>        optimizer.step()                     # 5. update<br>    if epoch % 10 == 0:<br>        model.eval()<br>        with torch.no_grad():                # no graph needed to evaluate<br>            acc = ((model(X) &gt; 0).float() == y).float().mean().item()<br>        print(f"epoch {epoch}: last batch loss {loss.item():.3f}, accuracy {acc:.2%}")<br>print("parameters:", sum(p.numel() for p in model.parameters()))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">epoch 10: last batch loss 0.120, accuracy 99.50%<br>epoch 20: last batch loss 0.013, accuracy 99.50%<br>epoch 30: last batch loss 0.061, accuracy 99.50%<br>parameters: 65</div>
          <p>The model outputs raw scores (<strong>logits</strong>), so the prediction is "class 1" when the logit is above 0 (sigmoid above 0.5). The parameter count is 2×16 + 16 + 16×1 + 1 = 65.</p>
        </div>
        <div class="lc-card">
          <h3>Why zero_grad()?</h3>
          <p>PyTorch <strong>adds</strong> new gradients to the old ones stored in <code>.grad</code>. This is useful for some advanced tricks (such as gradient accumulation over several small batches), but in a normal loop you must clear them with <code>optimizer.zero_grad()</code> every step, otherwise gradients from previous batches pile up.</p>
        </div>
        <div class="lc-card">
          <h3>Train mode, eval mode and no_grad</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>What it changes</th><th>When</th></tr></thead>
            <tbody>
              <tr><td><code>model.train()</code></td><td>Dropout active; BatchNorm uses batch statistics</td><td>Before training steps</td></tr>
              <tr><td><code>model.eval()</code></td><td>Dropout off; BatchNorm uses running averages</td><td>Before validation or prediction</td></tr>
              <tr><td><code>with torch.no_grad():</code></td><td>No computation graph is built (faster, less memory)</td><td>Whenever you don't need gradients</td></tr>
              <tr><td><code>model.to("cuda")</code>, <code>xb.to("cuda")</code></td><td>Moves weights / data to the GPU (model and data must be on the same device)</td><td>If a GPU is available</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The same model in Keras</h3>
          <div class="lc-code">import keras<br><br>model = keras.Sequential([<br>    keras.Input(shape=(2,)),<br>    keras.layers.Dense(16, activation="relu"),<br>    keras.layers.Dense(1, activation="sigmoid"),<br>])<br>model.compile(optimizer="adam", loss="binary_crossentropy", metrics=["accuracy"])<br>model.fit(X_np, y_np, epochs=30, batch_size=32)</div>
          <p>Keras hides the loop inside <code>fit()</code>. PyTorch shows the loop, which is why researchers like it: you can change any step.</p>
        </div>
        <div class="lc-card">
          <h3>What the starter code does</h3>
          <p>The starter builds tiny NumPy versions of <code>Linear</code>, <code>ReLU</code> and <code>Sequential</code> with the same method names, and trains them on two-moons data like Lesson 8's. Each layer stores what it needs in <code>forward</code> and computes its own gradients in <code>backward</code>. <code>model.backward(...)</code> plays the role of <code>loss.backward()</code>, and the update loop plays the role of <code>optimizer.step()</code>. This modular design is how PyTorch is organised inside.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>optimizer.zero_grad()</code>.</strong> Gradients accumulate across batches and training behaves strangely. It is the most common PyTorch beginner bug.</li>
            <li><strong>Softmax or sigmoid before the loss.</strong> <code>nn.CrossEntropyLoss</code> and <code>nn.BCEWithLogitsLoss</code> expect raw logits.</li>
            <li><strong>Wrong dtype or shape for targets.</strong> <code>BCEWithLogitsLoss</code> wants float targets shaped like the output, e.g. (32, 1); <code>CrossEntropyLoss</code> wants integer class indices of shape (32,).</li>
            <li><strong>Evaluating in train mode.</strong> Call <code>model.eval()</code> (and use <code>torch.no_grad()</code>) before measuring validation accuracy.</li>
            <li><strong>Model on the GPU, data on the CPU.</strong> This raises a "tensors on different devices" error. Move both.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change the learning rate <code>0.5</code> in <code>param -= 0.5 * grad</code> to <code>0.05</code>. Training still works but much more slowly: accuracy at epoch 300 is 88.00% instead of 96.80%.</li>
            <li>Change the hidden size in <code>Linear(2, 32, rng), ReLU(), Linear(32, 1, rng)</code> to 4 (both places). With only 4 hidden neurons the accuracy at epoch 300 drops to 89.00%.</li>
            <li>Add a line <code>print("layers:", [type(l).__name__ for l in model.layers])</code> after the model is created, just like printing a PyTorch model.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Google Colab gives you free access to PyTorch and a GPU in the browser. After this course, try rewriting Lessons 8 and 20 in PyTorch; you'll see how every line maps to something you already built by hand.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_moons

        # A tiny NumPy copy of the PyTorch API, so you can see what torch does for you
        class Linear:                                  # like torch.nn.Linear
            def __init__(self, n_in, n_out, rng):
                self.W = rng.normal(0, np.sqrt(2 / n_in), (n_in, n_out))
                self.b = np.zeros(n_out)
            def forward(self, x):
                self.x = x                             # remember input for backward
                return x @ self.W + self.b
            def backward(self, grad):
                self.dW, self.db = self.x.T @ grad, grad.sum(axis=0)
                return grad @ self.W.T
            def params(self):
                return [(self.W, self.dW), (self.b, self.db)]

        class ReLU:                                    # like torch.nn.ReLU
            def forward(self, x):
                self.mask = x > 0
                return x * self.mask
            def backward(self, grad):
                return grad * self.mask

        class Sequential:                              # like torch.nn.Sequential
            def __init__(self, *layers):
                self.layers = layers
            def __call__(self, x):
                for layer in self.layers:
                    x = layer.forward(x)
                return x
            def backward(self, grad):                  # what loss.backward() does
                for layer in reversed(self.layers):
                    grad = layer.backward(grad)

        rng = np.random.default_rng(0)
        X, y = make_moons(n_samples=500, noise=0.15, random_state=0)
        y = y.reshape(-1, 1)
        model = Sequential(Linear(2, 32, rng), ReLU(), Linear(32, 1, rng))

        for epoch in range(1, 301):
            logits = model(X)                                      # forward
            p = 1 / (1 + np.exp(-logits))
            loss = -np.mean(y * np.log(p + 1e-9) + (1 - y) * np.log(1 - p + 1e-9))
            model.backward((p - y) / len(X))                       # loss.backward()
            for layer in model.layers[::2]:                        # optimizer.step()
                for param, grad in layer.params():                 # (only Linear layers)
                    param -= 0.5 * grad
            if epoch % 60 == 0:
                print(f"epoch {epoch:3d}  loss = {loss:.4f}  accuracy = {np.mean((p > 0.5) == y):.2%}")
      PYTHON
    },
    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">CNNs: Convolution by Hand</h1>
        </div>
        <p class="lc-lead">A 1000×1000 colour photo has 3 million numbers. Connecting each to 1,000 neurons would need 3 billion weights in one layer! <strong>Convolutional Neural Networks (CNNs)</strong> solve this by sliding a small filter across the image, reusing the same few weights everywhere. This lesson builds convolution and pooling from scratch in NumPy.</p>
        <div class="lc-card">
          <h3>What is a convolution?</h3>
          <p>A <strong>kernel</strong> (or filter) is a small grid of weights, usually 3×3. We place it on the top-left corner of the image, multiply each kernel weight with the pixel under it, and add everything up. That sum is one output pixel. Then we slide one step right and repeat, row by row. The result is a <strong>feature map</strong> showing where in the image the pattern appears.</p>
          <div class="lc-code">def conv2d(image, kernel):<br>    k = kernel.shape[0]<br>    out_size = image.shape[0] - k + 1<br>    out = np.zeros((out_size, out_size))<br>    for i in range(out_size):<br>        for j in range(out_size):<br>            patch = image[i:i + k, j:j + k]<br>            out[i, j] = np.sum(patch * kernel)<br>    return out</div>
        </div>
        <div class="lc-card">
          <h3>Edge-detecting kernels</h3>
          <table class="lc-table">
            <thead><tr><th>Kernel</th><th>Values</th><th>Detects</th></tr></thead>
            <tbody>
              <tr><td>Vertical edge</td><td>[[1, 0, -1], [1, 0, -1], [1, 0, -1]]</td><td>Brightness changing left ↔ right</td></tr>
              <tr><td>Horizontal edge</td><td>[[1, 1, 1], [0, 0, 0], [-1, -1, -1]]</td><td>Brightness changing top ↔ bottom</td></tr>
              <tr><td>Blur</td><td>all values 1/9</td><td>Averages neighbours (smooths)</td></tr>
            </tbody>
          </table>
          <p>In the starter code, a bright square on a dark background gives large values exactly along its left and right edges with the vertical kernel, and along its top and bottom edges with the horizontal kernel. In a real CNN nobody designs these kernels: the network <strong>learns</strong> them with backpropagation.</p>
        </div>
        <div class="lc-card">
          <h3>Stride and padding</h3>
          <ul class="lc-list">
            <li><strong>Stride</strong> s: how many pixels the kernel jumps each step. Stride 2 halves the output size.</li>
            <li><strong>Padding</strong> p: add a border of zeros around the image so edges get processed and the output can keep the input size.</li>
          </ul>
          <p><strong>Output size = ⌊(n + 2p − k) / s⌋ + 1</strong>, where n is the input size, k the kernel size, and ⌊ ⌋ means round down (a window that would hang off the edge is dropped).</p>
          <table class="lc-table">
            <thead><tr><th>Input n</th><th>Kernel k</th><th>Padding p</th><th>Stride s</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td>8</td><td>3</td><td>0</td><td>1</td><td>6</td></tr>
              <tr><td>8</td><td>3</td><td>1</td><td>1</td><td>8 ("same" padding)</td></tr>
              <tr><td>8</td><td>3</td><td>1</td><td>2</td><td>4</td></tr>
              <tr><td>28</td><td>5</td><td>0</td><td>1</td><td>24</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>ReLU and max pooling</h3>
          <p>After convolution we apply <strong>ReLU</strong> to keep only positive responses. Then <strong>max pooling</strong> shrinks the feature map by keeping the largest value in each 2×2 block. This halves width and height, reduces computation, and makes the network less sensitive to exact positions: a feature that moves by one pixel usually still lands in the same pooling block.</p>
          <div class="lc-code">def max_pool(fmap, size=2):<br>    h, w = fmap.shape[0] // size, fmap.shape[1] // size<br>    return fmap[:h*size, :w*size].reshape(h, size, w, size).max(axis=(1, 3))</div>
        </div>
        <div class="lc-card">
          <h3>Why convolution works so well for images</h3>
          <ul class="lc-list">
            <li><strong>Local patterns:</strong> nearby pixels are related; a 3×3 window sees edges and textures.</li>
            <li><strong>Weight sharing:</strong> the same kernel is used at every position, so a 3×3 filter has only 9 weights + 1 bias no matter how big the image is.</li>
            <li><strong>Translation equivariance:</strong> a cat in the top-left and a cat in the bottom-right trigger the same filters.</li>
          </ul>
          <p>Colour images have 3 channels (R, G, B), so a real kernel has shape 3×3×3 and sums over all three channels at once. A layer with 32 filters produces 32 feature maps and has 32 × (3×3×3) weights + 32 biases = 896 parameters. In PyTorch: <code>nn.Conv2d(in_channels=3, out_channels=32, kernel_size=3, padding=1)</code> and <code>nn.MaxPool2d(2)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: one output pixel by hand</h3>
          <p>A 5×5 image with a dark left side (0) and a bright right side (5), and a kernel that responds to "dark on the left, bright on the right":</p>
          <div class="lc-code">import numpy as np<br><br>image = np.array([[0, 0, 5, 5, 5],<br>                  [0, 0, 5, 5, 5],<br>                  [0, 0, 5, 5, 5],<br>                  [0, 0, 5, 5, 5],<br>                  [0, 0, 5, 5, 5]])<br>kernel = np.array([[-1, 0, 1],<br>                   [-1, 0, 1],<br>                   [-1, 0, 1]])          # responds to dark -&gt; bright (left to right)<br><br>patch = image[0:3, 0:3]<br>print("top-left patch:\n", patch)<br>print("sum(patch * kernel) =", np.sum(patch * kernel))<br><br>out = np.array([[np.sum(image[i:i + 3, j:j + 3] * kernel) for j in range(3)]<br>                for i in range(3)])<br>print("feature map (5 - 3 + 1 = 3):\n", out)<br><br>n, k, p, s = 5, 3, 1, 2<br>print("size with p=1, s=2:", (n + 2 * p - k) // s + 1)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">top-left patch:<br> [[0 0 5]<br> [0 0 5]<br> [0 0 5]]<br>sum(patch * kernel) = 15<br>feature map (5 - 3 + 1 = 3):<br> [[15 15  0]<br> [15 15  0]<br> [15 15  0]]<br>size with p=1, s=2: 3</div>
          <p>The first patch gives (−1×0 + 0×0 + 1×5) × 3 rows = 15. Where the kernel sits on the edge the response is 15; where it sees only the flat bright area the +5s and −5s cancel to 0. A feature map is literally a map of "where is this pattern?".</p>
        </div>
        <div class="lc-card">
          <h3>Convolution or cross-correlation?</h3>
          <p>Strictly, mathematical convolution flips the kernel before sliding it. Deep learning libraries (including PyTorch's <code>nn.Conv2d</code>) skip the flip and compute <strong>cross-correlation</strong>, exactly like our code. Because the kernel weights are learned anyway, the difference does not matter; everyone still calls it convolution.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting to round down</strong> in the size formula. An 8×8 input with k = 3, p = 0, s = 2 gives ⌊5/2⌋ + 1 = 3, not 3.5.</li>
            <li><strong>Mixing up channel order.</strong> PyTorch images are (batch, channels, height, width); many image libraries give (height, width, channels). Transpose before feeding them in.</li>
            <li><strong>Pooling too early and too often.</strong> Each 2×2 pool halves the size; four pools shrink 28×28 to 1×1 and throw away all spatial detail.</li>
            <li><strong>Thinking kernels are hand-designed.</strong> Our edge kernels are for intuition only; a CNN learns its kernel values by backpropagation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change <code>image[2:6, 2:6] = 9</code> to draw a plus sign instead: <code>image[3:5, :] = 9</code> and <code>image[:, 3:5] = 9</code> (delete the square line). Which kernel responds to the horizontal bar?</li>
            <li>Replace the vertical kernel with a blur kernel <code>np.ones((3, 3)) / 9</code>. The edges become soft ramps instead of sharp peaks.</li>
            <li>Add <code>(32, 3, 1, 2)</code> to the size-check list. Predict the answer with the formula before running.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Edit the <code>image</code> in the starter code: draw a diagonal line or a plus sign and see which kernels respond. Then invent your own 3×3 kernel. This is the best way to build intuition for what CNN filters "see".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        def conv2d(image, kernel, stride=1, padding=0):
            if padding:
                image = np.pad(image, padding)
            k = kernel.shape[0]
            out_size = (image.shape[0] - k) // stride + 1
            out = np.zeros((out_size, out_size))
            for i in range(out_size):
                for j in range(out_size):
                    patch = image[i * stride:i * stride + k, j * stride:j * stride + k]
                    out[i, j] = np.sum(patch * kernel)     # multiply and add
            return out

        def max_pool(fmap, size=2):
            h, w = fmap.shape[0] // size, fmap.shape[1] // size
            return fmap[:h * size, :w * size].reshape(h, size, w, size).max(axis=(1, 3))

        # 8x8 grayscale image: a bright 4x4 square (9) on a dark background (0)
        image = np.zeros((8, 8))
        image[2:6, 2:6] = 9
        print("Input image:\n", image.astype(int))

        vertical = np.array([[1, 0, -1], [1, 0, -1], [1, 0, -1]])     # detects left/right edges
        horizontal = vertical.T                                        # detects top/bottom edges

        v_map = conv2d(image, vertical)
        print("\nVertical-edge feature map (6x6):\n", v_map.astype(int))
        h_map = conv2d(image, horizontal)
        print("\nHorizontal-edge feature map (6x6):\n", h_map.astype(int))

        relu_map = np.maximum(0, -v_map)        # keep only dark-to-bright edges
        print("\nAfter ReLU (left edge of square only):\n", relu_map.astype(int))
        print("\nAfter 2x2 max pooling (3x3):\n", max_pool(relu_map).astype(int))

        print("\nOutput size = (n + 2p - k) / s + 1")
        for n, k, p, s in [(8, 3, 0, 1), (8, 3, 1, 1), (8, 3, 1, 2), (28, 5, 0, 1)]:
            formula = (n + 2 * p - k) // s + 1
            actual = conv2d(np.zeros((n, n)), np.ones((k, k)), stride=s, padding=p).shape[0]
            print(f"  n={n:2d} k={k} p={p} s={s} -> formula {formula:2d}, actual {actual:2d}")
        print("Parameters in one 3x3 kernel: 9 weights + 1 bias = 10 (shared over the whole image)")
      PYTHON
    },
    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">CNN Architectures &amp; Image Classification</h1>
        </div>
        <p class="lc-lead">A full CNN stacks several blocks of <strong>convolution → activation → pooling</strong> to turn raw pixels into rich features, then uses dense layers to classify. This simple recipe, scaled up, powers everything from reading handwritten postal codes to spotting diseases in X-rays.</p>
        <div class="lc-card">
          <h3>The standard CNN pipeline</h3>
          <div class="lc-code">Image → [Conv → ReLU → Pool] → [Conv → ReLU → Pool] → Flatten → Dense → Softmax</div>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Job</th><th>Shape example (28×28 digit)</th></tr></thead>
            <tbody>
              <tr><td>Input</td><td>Raw pixels</td><td>1 × 28 × 28</td></tr>
              <tr><td>Conv block 1</td><td>Edges, strokes</td><td>32 × 14 × 14</td></tr>
              <tr><td>Conv block 2</td><td>Curves, loops, corners</td><td>64 × 7 × 7</td></tr>
              <tr><td>Flatten</td><td>Turn maps into a vector</td><td>3136</td></tr>
              <tr><td>Dense + softmax</td><td>Decide the class</td><td>10 probabilities</td></tr>
            </tbody>
          </table>
          <p>Notice the pattern: spatial size shrinks while the number of channels grows. The network trades "where" information for "what" information.</p>
        </div>
        <div class="lc-card">
          <h3>The same network in PyTorch</h3>
          <div class="lc-code">model = nn.Sequential(<br>    nn.Conv2d(1, 32, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),<br>    nn.Conv2d(32, 64, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),<br>    nn.Flatten(),<br>    nn.Linear(64 * 7 * 7, 128), nn.ReLU(),<br>    nn.Dropout(0.5),<br>    nn.Linear(128, 10),<br>)</div>
          <p>Training uses the exact same loop as Lesson 12, with <code>nn.CrossEntropyLoss()</code>. On the MNIST digits dataset this reaches about 99% test accuracy in a few minutes on a GPU.</p>
        </div>
        <div class="lc-card">
          <h3>Famous architectures</h3>
          <table class="lc-table">
            <thead><tr><th>Network</th><th>Year</th><th>Key idea</th></tr></thead>
            <tbody>
              <tr><td>LeNet-5</td><td>1998</td><td>First practical CNN; read cheques and zip codes</td></tr>
              <tr><td>AlexNet</td><td>2012</td><td>Deep CNN on GPUs with ReLU and dropout; won ImageNet by a big margin</td></tr>
              <tr><td>VGG-16</td><td>2014</td><td>Only 3×3 convolutions, stacked very deep</td></tr>
              <tr><td>ResNet</td><td>2015</td><td><strong>Skip connections</strong> (output = F(x) + x) allow 100+ layers</td></tr>
              <tr><td>MobileNet / EfficientNet</td><td>2017–19</td><td>Small, fast CNNs for phones; scale depth, width and resolution together</td></tr>
              <tr><td>Vision Transformer (ViT)</td><td>2020</td><td>No convolutions: cut the image into 16×16 patches and use a Transformer (Lesson 17)</td></tr>
              <tr><td>ConvNeXt</td><td>2022</td><td>A CNN modernised with Transformer-era design choices; competitive with ViTs</td></tr>
            </tbody>
          </table>
          <p>ResNet's skip connection is one of the most important ideas in deep learning: gradients can flow straight back through the "+ x" path, so very deep networks don't suffer from vanishing gradients. Transformers use the same trick.</p>
        </div>
        <div class="lc-card">
          <h3>What the starter code shows</h3>
          <p>We classify the 8×8 handwritten digits that ship with scikit-learn. Instead of learned filters, we use 8 fixed edge kernels, apply ReLU and 2×2 max pooling, and feed the pooled features to a softmax classifier. We compare this with a classifier on raw pixels, on normal test images and on test images shifted 1 pixel to the right.</p>
          <ul class="lc-list">
            <li>On normal images both do well (about 96–97%).</li>
            <li>When the digits shift by just one pixel, the raw-pixel model collapses to about 39%, while the conv + pool model keeps about 66%.</li>
            <li>That robustness to position is exactly why CNNs beat plain dense networks on images. Learned filters and data augmentation make it even stronger.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Parameters: dense vs convolution</h3>
          <p>For a 28×28 image, a dense layer with 128 neurons needs 100,480 parameters. A conv layer with 32 filters of size 3×3 needs only 320, because each filter is shared across all positions. Fewer parameters means less memory, faster training and less overfitting.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: shapes and parameters layer by layer</h3>
          <p>Run a dummy 28×28 image through the PyTorch model above and print the shape after each pooling, flatten and linear layer:</p>
          <div class="lc-code">import torch<br>from torch import nn<br><br>model = nn.Sequential(<br>    nn.Conv2d(1, 32, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),<br>    nn.Conv2d(32, 64, kernel_size=3, padding=1), nn.ReLU(), nn.MaxPool2d(2),<br>    nn.Flatten(),<br>    nn.Linear(64 * 7 * 7, 128), nn.ReLU(),<br>    nn.Dropout(0.5),<br>    nn.Linear(128, 10),<br>)<br>x = torch.zeros(1, 1, 28, 28)                 # (batch, channels, height, width)<br>for layer in model:<br>    x = layer(x)<br>    if isinstance(layer, (nn.MaxPool2d, nn.Flatten, nn.Linear)):<br>        n = sum(p.numel() for p in layer.parameters())<br>        print(f"{type(layer).__name__:9s} -&gt; {tuple(x.shape)}  params {n:,}")<br>print("total parameters:", f"{sum(p.numel() for p in model.parameters()):,}")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">MaxPool2d -&gt; (1, 32, 14, 14)  params 0<br>MaxPool2d -&gt; (1, 64, 7, 7)  params 0<br>Flatten   -&gt; (1, 3136)  params 0<br>Linear    -&gt; (1, 128)  params 401,536<br>Linear    -&gt; (1, 10)  params 1,290<br>total parameters: 421,642</div>
          <p>The two conv layers together have only 18,816 parameters (320 + 18,496), while the first dense layer after flattening has 401,536. That imbalance is why modern CNNs replace the big dense layer with <strong>global average pooling</strong> (<code>nn.AdaptiveAvgPool2d(1)</code>), which averages each feature map to one number.</p>
        </div>
        <div class="lc-card">
          <h3>A residual block in code</h3>
          <div class="lc-code">import torch<br>from torch import nn<br><br>class ResidualBlock(nn.Module):<br>    def __init__(self, channels):<br>        super().__init__()<br>        self.conv1 = nn.Conv2d(channels, channels, 3, padding=1)<br>        self.bn1 = nn.BatchNorm2d(channels)<br>        self.conv2 = nn.Conv2d(channels, channels, 3, padding=1)<br>        self.bn2 = nn.BatchNorm2d(channels)<br><br>    def forward(self, x):<br>        out = torch.relu(self.bn1(self.conv1(x)))<br>        out = self.bn2(self.conv2(out))<br>        return torch.relu(out + x)          # the skip connection: F(x) + x<br><br>block = ResidualBlock(64)<br>x = torch.randn(8, 64, 14, 14)<br>print(block(x).shape)                       # same shape in and out</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">torch.Size([8, 64, 14, 14])</div>
          <p>If the two convolutions learn nothing useful, the block can simply pass <code>x</code> through. Adding layers can therefore never make it much harder for the network to represent what it already had, which is why ResNets train well with 50, 101 or 152 layers.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Wrong size in the first <code>nn.Linear</code> after <code>Flatten</code>.</strong> Work it out (64 × 7 × 7 = 3136) or pass a dummy tensor through the conv part and print the shape, as above.</li>
            <li><strong>Adding a skip connection with mismatched shapes.</strong> <code>out + x</code> needs the same channels and size; ResNet uses a 1×1 convolution on x when they differ.</li>
            <li><strong>Evaluating only on perfectly centred test images.</strong> Real photos are shifted, rotated and differently lit. Test on realistic data, and train with augmentation.</li>
            <li><strong>Designing a big CNN from scratch for a small dataset.</strong> Start from a pretrained model (Lesson 18).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change <code>shift_right(X_te)</code> to <code>shift_right(X_te, px=2)</code>. (The column header still says 1px.) Both models collapse, to 7.78% and 15.93%: fixed kernels and one small pooling step only buy a little robustness, which is why real CNNs learn their filters and train on shifted copies (augmentation).</li>
            <li>Keep only the first two kernels: <code>kernels = [v, -v]</code>. The conv feature size drops from 72 to 18 and normal test accuracy falls from 97.22% to 86.30%: more filters capture more kinds of strokes.</li>
            <li>Change the dense layer in the parameter count from 128 to 512 neurons and compare it with the conv layer again.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For your own image project, you almost never design a CNN from scratch. You take a pretrained ResNet or EfficientNet and fine-tune it. That is transfer learning, covered in Lesson 18.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from numpy.lib.stride_tricks import sliding_window_view
        from sklearn.datasets import load_digits
        from sklearn.linear_model import LogisticRegression
        from sklearn.model_selection import train_test_split

        digits = load_digits()                        # 1797 handwritten digits, 8x8 pixels
        images = digits.images / 16.0
        X_tr, X_te, y_tr, y_te = train_test_split(images, digits.target, test_size=0.3, random_state=0)

        v = np.array([[1, 0, -1], [1, 0, -1], [1, 0, -1]], dtype=float)
        d = np.array([[0, 1, 1], [-1, 0, 1], [-1, -1, 0]], dtype=float)
        kernels = [v, -v, v.T, -v.T, d, -d, d.T, -d.T]   # 8 edge detectors

        def cnn_features(imgs):
            windows = sliding_window_view(imgs, (3, 3), axis=(1, 2))          # (N, 6, 6, 3, 3)
            maps = [np.maximum(0, np.einsum("nijkl,kl->nij", windows, k)) for k in kernels]  # conv + ReLU
            pooled = [m.reshape(len(imgs), 3, 2, 3, 2).max(axis=(2, 4)) for m in maps]   # 2x2 max pool
            return np.stack(pooled, axis=1).reshape(len(imgs), -1)             # flatten: 8 * 3 * 3

        def shift_right(imgs, px=1):
            out = np.zeros_like(imgs)
            out[:, :, px:] = imgs[:, :, :-px]
            return out

        pixel_model = LogisticRegression(max_iter=3000).fit(X_tr.reshape(len(X_tr), -1), y_tr)
        cnn_model = LogisticRegression(max_iter=3000).fit(cnn_features(X_tr), y_tr)

        X_shift = shift_right(X_te)
        print("Feature sizes: raw pixels =", 64, "| conv features =", cnn_features(X_te[:1]).shape[1])
        print(f"\n{'model':22s} {'normal test':>12} {'shifted 1px':>12}")
        for name, model, feats in [("raw pixels -> softmax", pixel_model, lambda a: a.reshape(len(a), -1)),
                                   ("conv+pool -> softmax", cnn_model, cnn_features)]:
            acc = model.score(feats(X_te), y_te)
            acc_shift = model.score(feats(X_shift), y_te)
            print(f"{name:22s} {acc:12.2%} {acc_shift:12.2%}")

        print("\nParameter count for a 28x28 grayscale image, first layer:")
        dense = 28 * 28 * 128 + 128
        conv = 3 * 3 * 1 * 32 + 32
        print(f"  Dense layer with 128 neurons : {dense:,} parameters")
        print(f"  Conv layer with 32 3x3 filters: {conv:,} parameters (weights are shared)")
      PYTHON
    },
    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">RNNs, LSTMs &amp; Sequences</h1>
        </div>
        <p class="lc-lead">Many kinds of data come as <strong>sequences</strong> where order matters: sentences, speech, stock prices, sensor readings. "Dog bites man" and "man bites dog" use the same words but mean very different things. <strong>Recurrent Neural Networks (RNNs)</strong> read a sequence one step at a time and carry a <strong>memory</strong> (hidden state) from each step to the next.</p>
        <div class="lc-card">
          <h3>Why not a normal dense network?</h3>
          <ul class="lc-list">
            <li>Sentences have different lengths, but a dense layer needs a fixed-size input.</li>
            <li>Simply adding up the word vectors ("bag of words") throws away the order. The starter code shows that "the dog bites man" and "the man bites dog" give exactly the same sum.</li>
            <li>A pattern like "not good" should be recognised wherever it appears in the sentence.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The RNN cell</h3>
          <p>At each time step t the RNN combines the current input x<sub>t</sub> with the previous hidden state h<sub>t−1</sub>:</p>
          <p><strong>h<sub>t</sub> = tanh(x<sub>t</sub> · W<sub>xh</sub> + h<sub>t−1</sub> · W<sub>hh</sub> + b)</strong></p>
          <div class="lc-code">h = np.zeros(hidden)                     # empty memory<br>for word in sentence.split():<br>    x = embed[word_to_id[word]]          # word → vector<br>    h = np.tanh(x @ W_xh + h @ W_hh + b_h)<br># h now summarises the whole sentence, in order</div>
          <p>The <strong>same</strong> weights W<sub>xh</sub> and W<sub>hh</sub> are used at every step. So the RNN has the same number of parameters for a 4-word or a 400-word sentence, just like a CNN reuses its kernel across an image.</p>
        </div>
        <div class="lc-card">
          <h3>Word embeddings</h3>
          <p>Networks need numbers, not words. Each word in the vocabulary gets a learnable vector called an <strong>embedding</strong>, stored as one row of a matrix. During training, words with similar meaning ("happy", "glad") end up with similar vectors. In PyTorch: <code>nn.Embedding(vocab_size, embed_dim)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>What can RNNs do?</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Input → Output</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Many-to-one</td><td>Sequence → one label</td><td>Is this movie review positive or negative?</td></tr>
              <tr><td>Many-to-many</td><td>Sequence → sequence (same length)</td><td>Tag each word as noun/verb</td></tr>
              <tr><td>Encoder-decoder</td><td>Sequence → different-length sequence</td><td>Translate English to Hindi</td></tr>
              <tr><td>Generation</td><td>Predict the next item, repeatedly</td><td>Next-word suggestions on a keyboard</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Backprop through time and vanishing gradients</h3>
          <p>To train an RNN we "unroll" it over all time steps and run normal backpropagation. This is called <strong>Backpropagation Through Time (BPTT)</strong>. The gradient that reaches step 1 has been multiplied by W<sub>hh</sub> (and a tanh slope) once for every step in between.</p>
          <table class="lc-table">
            <thead><tr><th>Recurrent weight w</th><th>After 5 steps</th><th>After 50 steps</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>0.5</td><td>0.031</td><td>0.0000000000000009</td><td>Vanishes: forgets the start</td></tr>
              <tr><td>1.0</td><td>1</td><td>1</td><td>Stable (rare in practice)</td></tr>
              <tr><td>1.5</td><td>7.6</td><td>638,000,000</td><td>Explodes: training blows up</td></tr>
            </tbody>
          </table>
          <p>Exploding gradients are handled with <strong>gradient clipping</strong>: if the gradient's length is above a limit, scale it down (in PyTorch, <code>torch.nn.utils.clip_grad_norm_(model.parameters(), 1.0)</code> before <code>optimizer.step()</code>). Vanishing gradients needed a new cell design.</p>
        </div>
        <div class="lc-card">
          <h3>LSTM and GRU</h3>
          <p>The <strong>LSTM</strong> (Long Short-Term Memory, 1997) adds a separate cell state plus three <strong>gates</strong> (forget, input, output) that learn what to keep, what to add and what to reveal. Because the cell state is updated mostly by addition, gradients can flow across many steps. The <strong>GRU</strong> is a simpler version with two gates.</p>
          <div class="lc-code">lstm = nn.LSTM(input_size=100, hidden_size=128, batch_first=True)<br>outputs, (h_n, c_n) = lstm(embedded_batch)   # shape (batch, seq_len, 128)</div>
          <p>LSTMs powered Google Translate and phone keyboards around 2015–2017. Today Transformers have replaced them for most language tasks, but RNNs are still used for small, streaming and time-series problems.</p>
        </div>
        <div class="lc-card">
          <h3>The LSTM equations</h3>
          <p>At each step the LSTM reads x<sub>t</sub> and the previous h<sub>t−1</sub>, and computes three gates (σ = sigmoid, so each gate is between 0 and 1) and a candidate value:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Formula</th><th>Job</th></tr></thead>
            <tbody>
              <tr><td>Forget gate</td><td>f<sub>t</sub> = σ(W<sub>f</sub>[h<sub>t−1</sub>, x<sub>t</sub>] + b<sub>f</sub>)</td><td>How much old memory to keep</td></tr>
              <tr><td>Input gate</td><td>i<sub>t</sub> = σ(W<sub>i</sub>[h<sub>t−1</sub>, x<sub>t</sub>] + b<sub>i</sub>)</td><td>How much new information to write</td></tr>
              <tr><td>Candidate</td><td>g<sub>t</sub> = tanh(W<sub>g</sub>[h<sub>t−1</sub>, x<sub>t</sub>] + b<sub>g</sub>)</td><td>The new information itself</td></tr>
              <tr><td>Cell state</td><td>c<sub>t</sub> = f<sub>t</sub> ⊙ c<sub>t−1</sub> + i<sub>t</sub> ⊙ g<sub>t</sub></td><td>Updated long-term memory</td></tr>
              <tr><td>Output gate</td><td>o<sub>t</sub> = σ(W<sub>o</sub>[h<sub>t−1</sub>, x<sub>t</sub>] + b<sub>o</sub>)</td><td>How much memory to reveal</td></tr>
              <tr><td>Hidden state</td><td>h<sub>t</sub> = o<sub>t</sub> ⊙ tanh(c<sub>t</sub>)</td><td>The output at this step</td></tr>
            </tbody>
          </table>
          <p>[h<sub>t−1</sub>, x<sub>t</sub>] means the two vectors joined end to end, and ⊙ is element-wise multiplication. When the forget gate is close to 1, the gradient flows back through c almost unchanged, step after step.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: gates in action, and gradient clipping</h3>
          <div class="lc-code">import numpy as np<br>sigmoid = lambda z: 1 / (1 + np.exp(-z))<br><br># One LSTM cell with hand-picked gate scores, to see what each gate does<br>c = 0.0                                     # cell state (long-term memory)<br>steps = [("store 'Priya'", 4.0, 4.0, 1.0),  # (label, input-gate score, forget score, candidate)<br>         ("filler word", -4.0, 4.0, 0.3),<br>         ("filler word", -4.0, 4.0, -0.8),<br>         ("new subject", 4.0, -4.0, -1.0)]<br>for label, i_score, f_score, g in steps:<br>    i, f = sigmoid(i_score), sigmoid(f_score)   # gates are between 0 and 1<br>    c = f * c + i * g                           # forget some old, add some new<br>    print(f"{label:14s} input gate {i:.2f}  forget gate {f:.2f}  -&gt; cell {c:+.3f}")<br><br># Gradient clipping by norm: keep the direction, cap the length<br>grad = np.array([30.0, -40.0])              # an exploding gradient, length 50<br>max_norm = 5.0<br>norm = np.linalg.norm(grad)<br>if norm &gt; max_norm:<br>    grad = grad * (max_norm / norm)<br>print("clipped gradient:", grad, "length", np.linalg.norm(grad))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">store 'Priya'  input gate 0.98  forget gate 0.98  -&gt; cell +0.982<br>filler word    input gate 0.02  forget gate 0.98  -&gt; cell +0.970<br>filler word    input gate 0.02  forget gate 0.98  -&gt; cell +0.938<br>new subject    input gate 0.98  forget gate 0.02  -&gt; cell -0.965<br>clipped gradient: [ 3. -4.] length 5.0</div>
          <p>With the input gate nearly closed and the forget gate nearly open, the memory of "Priya" survives the filler words (0.982 → 0.938). When a new subject arrives, the forget gate closes and the cell is overwritten. Clipping scaled the gradient [30, −40] (length 50) down to [3, −4] (length 5): same direction, safe size.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Batch-dimension confusion.</strong> PyTorch's <code>nn.LSTM</code> expects (seq_len, batch, features) unless you pass <code>batch_first=True</code>.</li>
            <li><strong>Training without gradient clipping.</strong> One exploding batch can turn every weight into <code>nan</code>. Clipping at a norm of about 1–5 is standard for RNNs.</li>
            <li><strong>Using the last output of a padded sequence.</strong> If "good movie" is padded to 10 tokens, the final step has read padding. Use the packed-sequence utilities or a mask.</li>
            <li><strong>Reaching for an RNN for long documents today.</strong> For most language tasks a Transformer (Lessons 16–17) or a pretrained model works better.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter compare <code>rnn("the dog bites man")</code> with <code>rnn("dog the bites man")</code> (add a print). The final states differ: the RNN is sensitive to word order, unlike the bag-of-words sum.</li>
            <li>Add <code>0.99</code> to the list of recurrent weights in the last loop. Even 0.99 shrinks the gradient to about 0.6 after 50 steps.</li>
            <li>Change the <code>W_hh</code> scale from <code>0.5</code> to <code>0.0</code>. Now the RNN has no memory. Print <code>rnn("the man bites man")</code> and compare it with <code>h1</code>: they are identical, because without W<sub>hh</sub> the final state depends only on the last word.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The big weakness of RNNs is that they must read one step at a time, so they can't use the GPU's parallel power well, and long-range memory is still hard. Keep this in mind: it is exactly the problem that attention solves in the next lesson.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        rng = np.random.default_rng(7)
        vocab = ["dog", "bites", "man", "the", "happy"]
        word_to_id = {w: i for i, w in enumerate(vocab)}
        embed = rng.normal(0, 1, size=(len(vocab), 4))       # each word -> 4-number vector

        hidden = 3
        W_xh = rng.normal(0, 0.5, size=(4, hidden))          # input  -> hidden
        W_hh = rng.normal(0, 0.5, size=(hidden, hidden))     # hidden -> hidden (memory)
        b_h = np.zeros(hidden)

        def rnn(sentence, verbose=False):
            h = np.zeros(hidden)                             # memory starts empty
            for t, word in enumerate(sentence.split()):
                x = embed[word_to_id[word]]
                h = np.tanh(x @ W_xh + h @ W_hh + b_h)       # SAME weights at every step
                if verbose:
                    print(f"  t={t} word={word:6s} h = {np.round(h, 3)}")
            return h

        print("Reading 'the dog bites man' one word at a time:")
        h1 = rnn("the dog bites man", verbose=True)
        h2 = rnn("the man bites dog")
        print("\nFinal state, 'the dog bites man':", np.round(h1, 3))
        print("Final state, 'the man bites dog':", np.round(h2, 3))
        bag1 = sum(embed[word_to_id[w]] for w in "the dog bites man".split())
        bag2 = sum(embed[word_to_id[w]] for w in "the man bites dog".split())
        print("Bag-of-words sums equal?", np.allclose(bag1, bag2), "| RNN states equal?", np.allclose(h1, h2))

        n_params = W_xh.size + W_hh.size + b_h.size
        print(f"\nRNN parameters: {n_params} - the same for a 4-word or a 400-word sentence")

        # Vanishing / exploding gradients: backprop multiplies by W_hh at every step
        print("\nGradient size after flowing back T steps (scalar recurrent weight w):")
        print(f"{'w':>5} {'T=5':>10} {'T=20':>10} {'T=50':>12}")
        for w in [0.5, 0.9, 1.0, 1.5]:
            print(f"{w:5.1f} {w ** 5:10.4f} {w ** 20:10.4f} {w ** 50:12.4g}")
        print("w < 1 -> gradient vanishes (forgets long ago); w > 1 -> it explodes.")
        print("LSTM and GRU cells add gates to keep useful memory for longer.")
      PYTHON
    },
    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Attention</h1>
        </div>
        <p class="lc-lead">In the sentence "Ravi ate the mango because it was ripe", what does "it" refer to? You instantly look back at "mango". <strong>Attention</strong> gives a network the same ability: for every word, it looks at all the other words, decides which ones are relevant, and mixes in their information. It is the core idea behind Transformers and ChatGPT.</p>
        <div class="lc-card">
          <h3>Queries, keys and values</h3>
          <p>Attention works like searching a library:</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Question it answers</th><th>Library analogy</th></tr></thead>
            <tbody>
              <tr><td>Query (Q)</td><td>What am I looking for?</td><td>The topic you type into the search box</td></tr>
              <tr><td>Key (K)</td><td>What do I contain?</td><td>The title on each book's spine</td></tr>
              <tr><td>Value (V)</td><td>What information do I hand over?</td><td>The content inside the book</td></tr>
            </tbody>
          </table>
          <p>Each word produces its own query, key and value vectors by multiplying its embedding with three learned matrices: <code>Q = X @ W_q</code>, <code>K = X @ W_k</code>, <code>V = X @ W_v</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Scaled dot-product attention</h3>
          <p><strong>Attention(Q, K, V) = softmax(Q·K<sup>T</sup> / √d<sub>k</sub>) · V</strong></p>
          <ol class="lc-list">
            <li><strong>Scores:</strong> dot product of every query with every key. A high score means "this word is relevant to me".</li>
            <li><strong>Scale:</strong> divide by √d<sub>k</sub> (the key size) so scores don't get huge and make softmax too peaky.</li>
            <li><strong>Softmax:</strong> turn each row of scores into weights that sum to 1.</li>
            <li><strong>Mix:</strong> each output is the weighted average of all the value vectors.</li>
          </ol>
          <div class="lc-code">def attention(Q, K, V, mask=None):<br>    d_k = Q.shape[-1]<br>    scores = Q @ K.T / np.sqrt(d_k)          # (n, n)<br>    if mask is not None:<br>        scores = np.where(mask, scores, -1e9)<br>    weights = softmax(scores)                # each row sums to 1<br>    return weights @ V, weights</div>
        </div>
        <div class="lc-card">
          <h3>Reading the attention matrix</h3>
          <p>The starter code prints a 7×7 table: row = the word that is looking, column = the word it looks at. With our hand-made word vectors, the row for "it" puts its biggest weight (about 0.49) on "mango". In a trained model, different <strong>attention heads</strong> can learn different relationships: researchers have found heads that link pronouns to the nouns they refer to, and others that follow grammar (a verb looking at its object).</p>
        </div>
        <div class="lc-card">
          <h3>Masks</h3>
          <ul class="lc-list">
            <li><strong>Causal mask:</strong> when generating text (as in GPT), a word must not peek at future words. A lower-triangular mask sets future scores to −∞ so their weight becomes 0.</li>
            <li><strong>Padding mask:</strong> sentences in a batch are padded to the same length; the mask stops real words from attending to the padding.</li>
          </ul>
          <div class="lc-code">causal = np.tril(np.ones((n, n), dtype=bool))   # True on and below the diagonal</div>
        </div>
        <div class="lc-card">
          <h3>Why attention beat RNNs</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>RNN</th><th>Attention</th></tr></thead>
            <tbody>
              <tr><td>Path between word 1 and word 100</td><td>100 steps (memory fades)</td><td>1 step (direct connection)</td></tr>
              <tr><td>Parallel on GPU?</td><td>No, one step after another</td><td>Yes, one big matrix multiply</td></tr>
              <tr><td>Cost for sequence length n</td><td>Grows like n</td><td>Grows like n² (every pair of words)</td></tr>
            </tbody>
          </table>
          <p>The n² cost is why chatbots have a maximum "context length". Much current research is about making attention cheaper for very long inputs.</p>
        </div>
        <div class="lc-card">
          <h3>Why divide by √d<sub>k</sub>?</h3>
          <p>If the entries of q and k are random with mean 0 and variance 1, their dot product q·k is a sum of d<sub>k</sub> such products, so its variance is d<sub>k</sub> and its standard deviation √d<sub>k</sub>. With d<sub>k</sub> = 512, scores of ±20 or more are normal, and softmax of such scores puts almost all the weight on one token. Its gradient is then nearly zero, so learning slows down. Dividing by √d<sub>k</sub> brings the standard deviation back to about 1.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the scaling in numbers</h3>
          <div class="lc-code">import numpy as np<br>rng = np.random.default_rng(0)<br><br>def softmax(z):<br>    e = np.exp(z - z.max())<br>    return e / e.sum()<br><br># Dot products of random unit-variance vectors: the spread grows with d_k<br>for d_k in [4, 64, 512]:<br>    q = rng.normal(size=(10000, d_k))<br>    k = rng.normal(size=(10000, d_k))<br>    dots = (q * k).sum(axis=1)<br>    print(f"d_k = {d_k:3d}: std of q.k = {dots.std():6.2f}   "<br>          f"std of q.k / sqrt(d_k) = {(dots / np.sqrt(d_k)).std():.2f}")<br><br># What that does to softmax: average largest weight over 1000 rows of 8 scores<br>rows = rng.normal(size=(1000, 8)) * np.sqrt(512)      # unscaled scores, std ~22.6<br>top_raw = np.mean([softmax(r).max() for r in rows])<br>top_scaled = np.mean([softmax(r / np.sqrt(512)).max() for r in rows])<br>print(f"average largest weight, unscaled: {top_raw:.3f}")<br>print(f"average largest weight, scaled  : {top_scaled:.3f}")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">d_k =   4: std of q.k =   2.00   std of q.k / sqrt(d_k) = 1.00<br>d_k =  64: std of q.k =   8.08   std of q.k / sqrt(d_k) = 1.01<br>d_k = 512: std of q.k =  22.58   std of q.k / sqrt(d_k) = 1.00<br>average largest weight, unscaled: 0.956<br>average largest weight, scaled  : 0.360</div>
          <p>Without scaling, the biggest of 8 weights is on average 0.956: attention is nearly one-hot. After scaling it is 0.360, so several tokens can contribute and gradients flow to all of them.</p>
        </div>
        <div class="lc-card">
          <h3>Shapes in attention</h3>
          <table class="lc-table">
            <thead><tr><th>Array</th><th>Shape (n tokens)</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>X</td><td>(n, d_model)</td><td>One embedding per token</td></tr>
              <tr><td>Q, K</td><td>(n, d_k)</td><td>Queries and keys</td></tr>
              <tr><td>V</td><td>(n, d_v)</td><td>Values (often d_v = d_k)</td></tr>
              <tr><td>Q @ K.T</td><td>(n, n)</td><td>Score of every token against every token</td></tr>
              <tr><td>softmax(scores) @ V</td><td>(n, d_v)</td><td>One mixed vector per token</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Softmax over the wrong axis.</strong> Each <em>row</em> (one query) must sum to 1, so use the last axis (<code>axis=-1</code>).</li>
            <li><strong>Forgetting the √d<sub>k</sub> scaling.</strong> Training still runs, but attention becomes nearly one-hot and learns slowly.</li>
            <li><strong>Masking with 0 instead of −∞.</strong> A masked score of 0 still gets weight after softmax (e<sup>0</sup> = 1). Use a very negative number such as −1e9 (or <code>-np.inf</code>).</li>
            <li><strong>Letting a language model see the future.</strong> Without a causal mask, next-token training is trivially easy and the model is useless at generation time.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change <code>attention(X * 3, X * 3, X)</code> to <code>attention(X, X, X)</code>. The weights become much flatter (the top weight for "it" drops to 0.18): sharper attention needs larger scores.</li>
            <li>Change the vector for "it" to <code>[0.9, 0.1, 0.0, 0.0]</code> (mostly "person"). Now "it" attends most to Ravi (0.55): attention follows whatever the vectors say, which is why real models must <em>learn</em> good vectors.</li>
            <li>Print <code>Wc[6]</code>, the causal row for "ripe" (the last word). It is the only row allowed to look at every word; check that it still sums to 1.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Self-attention means Q, K and V all come from the same sequence. In translation, <strong>cross-attention</strong> lets the Hindi decoder's queries look at the English encoder's keys and values. Same formula, different sources.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        def softmax(Z):
            e = np.exp(Z - Z.max(axis=-1, keepdims=True))
            return e / e.sum(axis=-1, keepdims=True)

        def attention(Q, K, V, mask=None):
            d_k = Q.shape[-1]
            scores = Q @ K.T / np.sqrt(d_k)              # how well each query matches each key
            if mask is not None:
                scores = np.where(mask, scores, -1e9)    # blocked positions get ~0 weight
            weights = softmax(scores)                    # each row sums to 1
            return weights @ V, weights

        # Hand-made 4-d word vectors: [person, food, action, describes-food]
        words = ["Ravi", "ate", "the", "mango", "it", "was", "ripe"]
        X = np.array([[1.0, 0.0, 0.0, 0.0],   # Ravi
                      [0.2, 0.3, 1.0, 0.0],   # ate
                      [0.0, 0.0, 0.0, 0.0],   # the
                      [0.0, 1.0, 0.0, 0.3],   # mango
                      [0.1, 0.8, 0.0, 0.2],   # it (refers to a food here)
                      [0.0, 0.0, 0.5, 0.0],   # was
                      [0.0, 0.6, 0.0, 1.0]])  # ripe

        out, W = attention(X * 3, X * 3, X)       # self-attention: Q, K, V all from X
        print("Attention weights (row = word looking, column = word looked at)")
        print("      " + " ".join(f"{w:>6s}" for w in words))
        for w, row in zip(words, W):
            print(f"{w:>6s}" + " ".join(f"{v:6.2f}" for v in row))
        top3 = np.argsort(W[4])[::-1][:3]
        print("\nTop 3 words that 'it' attends to:", ", ".join(f"{words[i]} ({W[4][i]:.2f})" for i in top3))

        # Causal mask (used in GPT-style models): a word may only look at earlier words
        n = len(words)
        causal = np.tril(np.ones((n, n), dtype=bool))
        _, Wc = attention(X * 3, X * 3, X, mask=causal)
        print("\nWith a causal mask, row for 'the':", np.round(Wc[2], 2))

        # Real models learn projection matrices W_q, W_k, W_v
        rng = np.random.default_rng(0)
        d_model, d_k = 4, 8
        W_q, W_k, W_v = (rng.normal(0, 0.5, (d_model, d_k)) for _ in range(3))
        out, _ = attention(X @ W_q, X @ W_k, X @ W_v)
        print("\nWith learned projections: X", X.shape, "-> Q, K, V", (n, d_k), "-> output", out.shape)
      PYTHON
    },
    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Transformers</h1>
        </div>
        <p class="lc-lead">The <strong>Transformer</strong>, introduced in the 2017 paper "Attention Is All You Need", threw away recurrence entirely and built a network from attention, feed-forward layers, residual connections and layer normalisation. It is the architecture behind BERT, the GPT family and today's large language models, and also many modern vision and speech models.</p>
        <div class="lc-card">
          <h3>From text to numbers</h3>
          <ol class="lc-list">
            <li><strong>Tokenise:</strong> split text into tokens (words or word pieces) and map each to an ID. "unhappiness" might become "un", "happi", "ness".</li>
            <li><strong>Embed:</strong> look up a learned vector for each token ID (shape: seq_len × d_model).</li>
            <li><strong>Add positions:</strong> unmasked attention by itself ignores order (shuffle the tokens and each token gets the same mix of the others; a causal mask leaks only a weak, indirect sense of order), so we add a <strong>positional encoding</strong> that is different for position 0, 1, 2 and so on.</li>
          </ol>
          <p>The original paper used fixed sine and cosine waves: PE(pos, 2i) = sin(pos / 10000<sup>2i/d</sup>) and PE(pos, 2i+1) = cos(pos / 10000<sup>2i/d</sup>). BERT and GPT-2 instead <em>learned</em> one position vector per position, and most recent open LLMs (such as Llama) use <strong>rotary position embeddings (RoPE)</strong>, which rotate the query and key vectors by an angle that depends on the position.</p>
          <div class="lc-code">def positional_encoding(n, d):<br>    pos, i = np.arange(n)[:, None], np.arange(d)[None, :]<br>    angles = pos / 10000 ** (2 * (i // 2) / d)<br>    return np.where(i % 2 == 0, np.sin(angles), np.cos(angles))<br><br>X = E[tokens] + positional_encoding(len(tokens), d_model)</div>
        </div>
        <div class="lc-card">
          <h3>Inside one Transformer block</h3>
          <p>Modern models use the <strong>pre-norm</strong> layout (the starter does too): normalise first, then attend, then add the result back:</p>
          <div class="lc-code">x = x + MultiHeadAttention(LayerNorm(x))     # sub-layer 1<br>x = x + FeedForward(LayerNorm(x))            # sub-layer 2</div>
          <p>The 2017 paper used <strong>post-norm</strong>, <code>x = LayerNorm(x + Attention(x))</code>. Pre-norm keeps a clean residual path from the output all the way back to the input, so very deep stacks train more stably.</p>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>Multi-head attention</td><td>Several attention heads run in parallel on smaller slices (d_model / n_heads), each free to learn a different kind of relationship. Their outputs are joined and projected by W_o.</td></tr>
              <tr><td>Residual ("Add")</td><td>x + sublayer(x): the original signal is kept, and gradients flow straight through (the ResNet trick).</td></tr>
              <tr><td>Layer norm</td><td>Normalises each token's vector to mean 0 and std 1, then applies learnable γ and β (the starter leaves them at 1 and 0).</td></tr>
              <tr><td>Feed-forward</td><td>A small 2-layer network applied to each token separately, usually about 4× wider in the middle, with GELU or a gated variant (SwiGLU) as activation.</td></tr>
            </tbody>
          </table>
          <p>The output of a block has the <strong>same shape</strong> as its input, so we can stack as many blocks as we like: 12 for BERT-base, 96 for GPT-3.</p>
        </div>
        <div class="lc-card">
          <h3>Multi-head attention in NumPy</h3>
          <div class="lc-code">def split_heads(M):   # (seq, d_model) → (heads, seq, d_head)<br>    return M.reshape(seq_len, n_heads, d_head).transpose(1, 0, 2)<br><br>H = layer_norm(X)<br>Q, K, V = split_heads(H @ W_q), split_heads(H @ W_k), split_heads(H @ W_v)<br>scores = Q @ K.transpose(0, 2, 1) / np.sqrt(d_head)<br>heads = softmax(scores) @ V                          # (heads, seq, d_head)<br>attn = heads.transpose(1, 0, 2).reshape(seq_len, d_model) @ W_o</div>
        </div>
        <div class="lc-card">
          <h3>Worked example: positional encodings and layer norm</h3>
          <div class="lc-code">import numpy as np<br>np.set_printoptions(precision=3, suppress=True)<br><br>def positional_encoding(n, d):<br>    pos, i = np.arange(n)[:, None], np.arange(d)[None, :]<br>    angles = pos / 10000 ** (2 * (i // 2) / d)      # pairs of columns share a frequency<br>    return np.where(i % 2 == 0, np.sin(angles), np.cos(angles))<br><br>PE = positional_encoding(4, 6)<br>print("positions 0-3, 6 dimensions:\n", PE)<br><br>def layer_norm(x, gamma, beta, eps=1e-5):<br>    mu = x.mean(axis=-1, keepdims=True)              # per token, across features<br>    var = x.var(axis=-1, keepdims=True)<br>    return gamma * (x - mu) / np.sqrt(var + eps) + beta<br><br>tokens = np.array([[2.0, 4.0, 6.0, 8.0], [100.0, 0.0, 50.0, 10.0]])<br>out = layer_norm(tokens, gamma=np.ones(4), beta=np.zeros(4))<br>print("layer norm:\n", out)<br>print("row means:", out.mean(axis=1), " row stds:", out.std(axis=1))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">positions 0-3, 6 dimensions:<br> [[ 0.     1.     0.     1.     0.     1.   ]<br> [ 0.841  0.54   0.046  0.999  0.002  1.   ]<br> [ 0.909 -0.416  0.093  0.996  0.004  1.   ]<br> [ 0.141 -0.99   0.139  0.99   0.006  1.   ]]<br>layer norm:<br> [[-1.342 -0.447  0.447  1.342]<br> [ 1.524 -1.016  0.254 -0.762]]<br>row means: [ 0. -0.]  row stds: [1. 1.]</div>
          <p>Every position gets a different pattern: the first columns change quickly (high frequency), the last ones slowly. Layer norm works on each token separately, so the second token's big values (100, 50) are rescaled to the same range as the first's.</p>
        </div>
        <div class="lc-card">
          <h3>Three families of Transformers</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Attention</th><th>Trained to</th><th>Examples</th></tr></thead>
            <tbody>
              <tr><td>Encoder-only</td><td>Every token sees every token</td><td>Fill in masked words</td><td>BERT (search, classification)</td></tr>
              <tr><td>Decoder-only</td><td>Causal: only earlier tokens</td><td>Predict the next token</td><td>GPT family, Llama (most chatbots)</td></tr>
              <tr><td>Encoder-decoder</td><td>Encoder + cross-attention</td><td>Map one sequence to another</td><td>T5, the original translation model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How a chatbot writes text</h3>
          <p>A decoder-only model takes the tokens so far, runs them through all its blocks, and turns the last token's vector into a score (logit) for every token in the vocabulary. Softmax gives probabilities, one token is picked, added to the input, and the process repeats. The starter does one such step with random, untrained weights, so its guess is meaningless, but the shapes and steps are those of a real model. (It also reuses the embedding table <code>E</code> as the output layer, a common trick called <em>weight tying</em>.)</p>
          <p>In PyTorch a block is one line: <code>nn.TransformerEncoderLayer(d_model=512, nhead=8, batch_first=True, norm_first=True)</code> (<code>norm_first=True</code> gives pre-norm). In practice most people load pretrained models with the Hugging Face <code>transformers</code> library.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting positional information.</strong> Without it, an encoder (unmasked attention, as in BERT) cannot tell "dog bites man" from "man bites dog": it sees only a bag of words. A causal mask in a decoder leaks some order (token 3 can only see 3 tokens), but that is weak and indirect, so add explicit positions anyway.</li>
            <li><strong>d_model not divisible by n_heads.</strong> 16 dimensions split into 4 heads of 4 works; 16 into 3 heads does not.</li>
            <li><strong>Wrong reshape when splitting heads.</strong> Reshape to (seq, heads, d_head) and then transpose; reshaping straight to (heads, seq, d_head) mixes up tokens.</li>
            <li><strong>Leaving out the causal mask in a decoder.</strong> Every position can then read the answer it is supposed to predict.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change <code>n_heads</code> from 4 to 2. The per-head shape printed changes to (2, 6, 8), but the block output is still (6, 16).</li>
            <li>Change <code>n_heads</code> to 3 and run it: the reshape fails because 16 dimensions cannot be split into 3 equal heads.</li>
            <li>Set <code>d_ff = 64</code>. The block now has 4·16² + 2·16·64 = 3,072 weights; check the last line of the output.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Large language models are "just" this block stacked many times, trained on huge amounts of text to predict the next token. The ideas you have built (embeddings, attention, residuals, layer norm, softmax, cross-entropy, Adam) are all of the core ingredients.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        rng = np.random.default_rng(0)
        vocab = ["<pad>", "i", "love", "learning", "deep", "python", "every", "day"]
        tokens = [1, 2, 4, 3, 6, 7]                  # "i love deep learning every day"
        seq_len, d_model, n_heads, d_ff = len(tokens), 16, 4, 32
        d_head = d_model // n_heads

        def softmax(Z):
            e = np.exp(Z - Z.max(axis=-1, keepdims=True))
            return e / e.sum(axis=-1, keepdims=True)

        def layer_norm(X, eps=1e-5):
            return (X - X.mean(axis=-1, keepdims=True)) / np.sqrt(X.var(axis=-1, keepdims=True) + eps)

        def positional_encoding(n, d):
            pos, i = np.arange(n)[:, None], np.arange(d)[None, :]
            angles = pos / 10000 ** (2 * (i // 2) / d)
            return np.where(i % 2 == 0, np.sin(angles), np.cos(angles))

        p = lambda *shape: rng.normal(0, 0.2, shape)     # small random weights
        E = p(len(vocab), d_model)                       # token embedding table
        W_q, W_k, W_v, W_o = p(d_model, d_model), p(d_model, d_model), p(d_model, d_model), p(d_model, d_model)
        W1, W2 = p(d_model, d_ff), p(d_ff, d_model)

        X = E[tokens] + positional_encoding(seq_len, d_model)   # 1. embeddings + positions
        print("Embeddings + positions:", X.shape)

        def split_heads(M):                              # (seq, d_model) -> (heads, seq, d_head)
            return M.reshape(seq_len, n_heads, d_head).transpose(1, 0, 2)

        H = layer_norm(X)                                 # pre-LN: normalise BEFORE attention
        Q, K, V = split_heads(H @ W_q), split_heads(H @ W_k), split_heads(H @ W_v)
        mask = np.tril(np.ones((seq_len, seq_len), dtype=bool))            # causal (GPT-style)
        scores = np.where(mask, Q @ K.transpose(0, 2, 1) / np.sqrt(d_head), -1e9)
        heads = softmax(scores) @ V                                        # 2. multi-head attention
        attn = heads.transpose(1, 0, 2).reshape(seq_len, d_model) @ W_o
        print("Q/K/V per head:", Q.shape, "| attention output:", attn.shape)

        X = X + attn                                      # 3. residual connection
        ff = np.maximum(0, layer_norm(X) @ W1) @ W2       # 4. feed-forward on normalised X
        X = X + ff                                        # 5. residual connection
        print("After one transformer block:", X.shape, "(same shape as input, so blocks can stack)")

        logits = layer_norm(X) @ E.T                      # 6. final norm, score every word
        probs = softmax(logits[-1])
        print("\nNext-word probabilities after 'day' (untrained, so essentially random):")
        for idx in np.argsort(probs)[::-1][:3]:
            print(f"  {vocab[idx]:10s} {probs[idx]:.3f}")
        block_params = 4 * d_model * d_model + 2 * d_model * d_ff
        print(f"\nWeights in this block: {block_params:,} | GPT-3 has 96 such blocks with d_model = 12288")
      PYTHON
    },
    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Transfer Learning &amp; Pretrained Models</h1>
        </div>
        <p class="lc-lead">Training a big network from scratch needs millions of examples and expensive GPUs. <strong>Transfer learning</strong> lets you skip most of that: take a model already trained on a large dataset, keep what it has learned, and adapt it to your own task with just a few hundred (or even a few dozen) labelled examples.</p>
        <div class="lc-card">
          <h3>Why it works</h3>
          <p>The early and middle layers of a network learn <strong>general</strong> features. An image model trained on ImageNet learns edges, textures, eyes and wheels, which are useful for almost any photo task: classifying crop diseases, spotting potholes, sorting recyclables. A language model trained on the web learns grammar and meaning, useful for any text task. Only the last layer is truly specific to the original task.</p>
          <p>It's like a student who has studied Physics well: learning Engineering Mechanics is much faster for them than for someone starting from zero.</p>
        </div>
        <div class="lc-card">
          <h3>Two ways to transfer</h3>
          <table class="lc-table">
            <thead><tr><th>Approach</th><th>What you train</th><th>When to use</th></tr></thead>
            <tbody>
              <tr><td>Feature extraction</td><td>Freeze the whole pretrained "body"; train only a new output "head"</td><td>Very little data, or a task similar to the original</td></tr>
              <tr><td>Fine-tuning</td><td>Start from pretrained weights and train all (or the top) layers with a small learning rate</td><td>More data, or a task that is quite different</td></tr>
            </tbody>
          </table>
          <p>A common recipe: first train only the head for a few epochs, then unfreeze the top layers and fine-tune everything with a learning rate about 10× smaller.</p>
        </div>
        <div class="lc-card">
          <h3>Transfer learning in PyTorch</h3>
          <div class="lc-code">from torchvision.models import resnet18, ResNet18_Weights<br><br>weights = ResNet18_Weights.DEFAULT            # best available ImageNet weights<br>model = resnet18(weights=weights)             # downloads them the first time<br>preprocess = weights.transforms()             # the exact resizing + normalisation it expects<br><br>for p in model.parameters():<br>    p.requires_grad = False                   # freeze the body<br>model.fc = nn.Linear(model.fc.in_features, 3) # new head: 3 classes<br><br>optimizer = torch.optim.Adam(model.fc.parameters(), lr=1e-3)<br># ...then the usual training loop</div><p>Old way, don't use: <code>resnet18(pretrained=True)</code>. It has been deprecated since torchvision 0.13 and only prints a warning today, but it may be removed in a future release. Use the <code>weights=</code> argument.</p>
          <p>For language, the Hugging Face library works the same way:</p>
          <div class="lc-code">from transformers import AutoModelForSequenceClassification<br>model = AutoModelForSequenceClassification.from_pretrained(<br>    "bert-base-uncased", num_labels=2)</div>
        </div>
        <div class="lc-card">
          <h3>What the starter code shows</h3>
          <p>We "pretrain" a network on task A: recognise which digit (0–9) is in an image, using 1,000 labelled images. Then task B arrives: is the digit <strong>odd or even</strong>? We have only 10, 20 or 40 labelled images for it, all different from the pretraining images.</p>
          <ul class="lc-list">
            <li><strong>From scratch:</strong> a new network with random weights, trained on the tiny dataset.</li>
            <li><strong>Transfer:</strong> reuse the pretrained hidden layer as a frozen feature extractor, and train only a new 65-parameter head.</li>
          </ul>
          <p>With every dataset size the transfer model wins, for example about 84% vs 76% with 20 labels, because its hidden layer already knows what strokes and loops look like.</p>
        </div>
        <div class="lc-card">
          <h3>Where to find pretrained models</h3>
          <ul class="lc-list">
            <li><strong>torchvision.models</strong>: ResNet, EfficientNet, ViT for images</li>
            <li><strong>Hugging Face Hub</strong>: hundreds of thousands of models for text, images, speech, including Indian-language models like IndicBERT</li>
            <li><strong>Keras Applications</strong>: MobileNet, ResNet and others for TensorFlow users</li>
          </ul>
          <p>Always check the model's licence and what data it was trained on before using it in a product.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: how much is left to train?</h3>
          <p>Freeze a ResNet-18 and replace its head, then count the parameters. (The example builds the architecture without downloading weights; the counts are the same either way.)</p>
          <div class="lc-code">import torch<br>from torch import nn<br>from torchvision.models import resnet18<br><br>model = resnet18(weights=None)        # in a real project: weights=ResNet18_Weights.DEFAULT<br>for p in model.parameters():<br>    p.requires_grad = False           # freeze the pretrained body<br>model.fc = nn.Linear(model.fc.in_features, 3)   # new head: 3 classes (trainable)<br><br>count = lambda ps: sum(p.numel() for p in ps)<br>trainable = [p for p in model.parameters() if p.requires_grad]<br>print(f"total parameters    : {count(model.parameters()):,}")<br>print(f"trainable parameters: {count(trainable):,}")<br>print("output for 2 images :", tuple(model(torch.zeros(2, 3, 224, 224)).shape))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">total parameters    : 11,178,051<br>trainable parameters: 1,539<br>output for 2 images : (2, 3)</div>
          <p>Only 1,539 of 11.2 million numbers are trained (512 × 3 weights + 3 biases). That is why feature extraction works with a few hundred images and runs on a laptop CPU.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing a strategy</h3>
          <table class="lc-table">
            <thead><tr><th>Your data</th><th>Similar to the pretraining data</th><th>Very different</th></tr></thead>
            <tbody>
              <tr><td>Small (hundreds)</td><td>Feature extraction</td><td>Feature extraction from earlier layers, heavy augmentation</td></tr>
              <tr><td>Large (tens of thousands+)</td><td>Fine-tune the top layers</td><td>Fine-tune everything with a small learning rate</td></tr>
            </tbody>
          </table>
          <p>For large language models, full fine-tuning is expensive, so people use <strong>parameter-efficient fine-tuning</strong> such as <strong>LoRA</strong>: freeze the model and train small low-rank matrices added to some layers. The idea is the same as this lesson: reuse almost everything, train very little.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Wrong preprocessing.</strong> Feeding 0–255 pixels to a model trained on normalised 224×224 images ruins accuracy. Use <code>weights.transforms()</code> or the model's own tokenizer.</li>
            <li><strong>Fine-tuning with a large learning rate.</strong> Big steps destroy the pretrained features ("catastrophic forgetting"). Use roughly 10× smaller than for training from scratch.</li>
            <li><strong>Assuming a frozen body is completely fixed.</strong> Frozen weights do not change, but BatchNorm running statistics still update in <code>model.train()</code>. With a small dataset, keep the frozen BN layers in eval mode.</li>
            <li><strong>Ignoring the licence.</strong> Some pretrained weights are for research only.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change <code>[10, 20, 40]</code> to <code>[10, 20, 40, 100, 300]</code>. With 300 labels, training from scratch catches up (92.76% vs 92.15%): transfer matters most when labels are scarce.</li>
            <li>Change the pretraining set from <code>idx[:1000]</code> to <code>idx[:200]</code> (and <code>new_idx</code> to <code>idx[200:]</code>). With a body pretrained on only 200 images, the gap between the two columns shrinks (e.g. 84.34% vs 84.84% at 20 labels).</li>
            <li>Change the hidden layer size <code>(64,)</code> of <code>base</code> to <code>(16,)</code>. The new head now has 17 parameters, and with 10 labels transfer no longer wins (73.95% vs 74.08%): a smaller body learned less that is reusable.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you fine-tune, you must preprocess your inputs <em>exactly</em> the way the original model expects (same image size, same normalisation, same tokenizer). A mismatch here is the most common reason a pretrained model performs badly.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import warnings
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.neural_network import MLPClassifier
        from sklearn.linear_model import LogisticRegression

        warnings.filterwarnings("ignore")             # hide convergence warnings on tiny data
        digits = load_digits()
        X, y = digits.data / 16.0, digits.target
        idx = np.random.default_rng(0).permutation(len(X))
        pre_idx, new_idx = idx[:1000], idx[1000:]     # the two tasks use different images

        # 1. PRETRAINING: a big labelled dataset for task A (which digit is it? 10 classes)
        base = MLPClassifier(hidden_layer_sizes=(64,), max_iter=500, random_state=0)
        base.fit(X[pre_idx], y[pre_idx])
        print(f"Pretrained model: task A (digit 0-9), {len(pre_idx)} images")

        def frozen_body(X):
            """Reuse the pretrained hidden layer as a fixed feature extractor."""
            return np.maximum(0, X @ base.coefs_[0] + base.intercepts_[0])

        # 2. NEW TASK B: is the digit odd or even? Only a handful of labels available
        y_odd = y % 2
        print("Task B: odd (1) or even (0)?\n")
        print(f"{'labelled images':>15} {'from scratch':>13} {'transfer':>9}")
        for n_labels in [10, 20, 40]:
            order = np.random.default_rng(n_labels).permutation(new_idx)
            train, test = order[:n_labels], order[n_labels:]
            # A) from scratch: every weight starts random
            scratch = MLPClassifier(hidden_layer_sizes=(64,), max_iter=500, random_state=0)
            scratch.fit(X[train], y_odd[train])
            acc_scratch = scratch.score(X[test], y_odd[test])
            # B) transfer: freeze the pretrained body, train only a new output head
            head = LogisticRegression(max_iter=2000).fit(frozen_body(X[train]), y_odd[train])
            acc_transfer = head.score(frozen_body(X[test]), y_odd[test])
            print(f"{n_labels:15d} {acc_scratch:13.2%} {acc_transfer:9.2%}")

        n_frozen = base.coefs_[0].size + base.intercepts_[0].size
        print(f"\nFrozen parameters reused: {n_frozen:,} | new head parameters: {head.coef_.size + 1}")
        print("The body already learned strokes and loops, so the new head needs very few labels.")
      PYTHON
    },
    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Generative Models: Autoencoders, GANs &amp; Diffusion</h1>
        </div>
        <p class="lc-lead">Every network so far has been <strong>discriminative</strong>: given an input, predict a label. <strong>Generative</strong> models learn what the data itself looks like, so they can compress it, clean it up, or create brand-new examples: faces that never existed, images from a text prompt, or the next sentence of a story. This lesson covers the four big families.</p>
        <div class="lc-card">
          <h3>Discriminative vs generative</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Discriminative</th><th>Generative</th></tr></thead>
            <tbody>
              <tr><td>Learns</td><td>p(label | input)</td><td>What the inputs look like: p(input)</td></tr>
              <tr><td>Question</td><td>"Is this a cat or a dog?"</td><td>"Draw me a new cat."</td></tr>
              <tr><td>Examples</td><td>CNN classifier, spam filter</td><td>Autoencoder, GAN, diffusion model, LLM</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>1. Autoencoders: compress, then rebuild</h3>
          <p>An <strong>autoencoder</strong> has an <strong>encoder</strong> that squeezes the input into a small <strong>code</strong> (the bottleneck) and a <strong>decoder</strong> that rebuilds the input from that code. It is trained to make the output equal the input, with a reconstruction loss such as MSE. No labels are needed.</p>
          <div class="lc-code">code  = encoder(x)          # 64 pixels -&gt; 8 numbers<br>x_hat = decoder(code)       # 8 numbers -&gt; 64 pixels<br>loss  = mean((x_hat - x) ** 2)</div>
          <p>Because the code is small, the network must keep only the most important structure. Uses: compression, denoising (train on noisy input, clean target), anomaly detection (unusual inputs rebuild badly) and learned features.</p>
          <p>A <strong>variational autoencoder (VAE)</strong> makes the code a probability distribution (a mean and a spread) and adds a loss term (the KL divergence) that keeps codes close to a standard normal distribution. You can then sample a random code and decode it into a new example. Latent-diffusion image models such as Stable Diffusion use a VAE to work in a compressed image space.</p>
        </div>
        <div class="lc-card">
          <h3>2. GANs: a forger and a detective</h3>
          <p>A <strong>Generative Adversarial Network</strong> (Goodfellow et al., 2014) trains two networks against each other:</p>
          <ul class="lc-list">
            <li>The <strong>generator</strong> G turns random noise z into a fake example G(z).</li>
            <li>The <strong>discriminator</strong> D outputs the probability that its input is real.</li>
            <li>D is trained with binary cross-entropy to tell real from fake; G is trained to make D say "real" for its fakes.</li>
          </ul>
          <p>GANs produce sharp images quickly, but training is unstable and can suffer <strong>mode collapse</strong> (the generator produces only a few kinds of output). StyleGAN's realistic faces are the famous example.</p>
        </div>
        <div class="lc-card">
          <h3>3. Diffusion models: learn to remove noise</h3>
          <p>Diffusion models power most modern image and video generators. Training has two halves:</p>
          <ol class="lc-list">
            <li><strong>Forward process (fixed, no learning):</strong> add a little Gaussian noise at each of T steps (often T = 1000) until the image is pure noise. With ᾱ<sub>t</sub> = (1 − β<sub>1</sub>)(1 − β<sub>2</sub>)…(1 − β<sub>t</sub>), you can jump straight to any step: <strong>x<sub>t</sub> = √ᾱ<sub>t</sub> · x<sub>0</sub> + √(1 − ᾱ<sub>t</sub>) · ε</strong>, where ε is standard normal noise.</li>
            <li><strong>Learned reverse process:</strong> a network ε<sub>θ</sub>(x<sub>t</sub>, t) (often a U-Net or a Transformer) is trained with a simple MSE loss to predict the noise ε that was added: loss = mean((ε<sub>θ</sub>(x<sub>t</sub>, t) − ε)²).</li>
          </ol>
          <p>To generate, start from pure noise and repeatedly subtract the predicted noise, step by step, until an image appears. Text-to-image models also feed an embedding of the prompt into the network so the denoising is steered towards the description.</p>
        </div>
        <div class="lc-card">
          <h3>Worked example: the diffusion shortcut formula really works</h3>
          <p>Add noise 300 times, one small step at a time (x<sub>t</sub> = √(1 − β<sub>t</sub>) · x<sub>t−1</sub> + √β<sub>t</sub> · ε), and compare with the one-jump formula:</p>
          <div class="lc-code">import numpy as np<br>rng = np.random.default_rng(0)<br>betas = np.linspace(1e-4, 0.02, 1000)<br>abar = np.cumprod(1 - betas)<br><br>x0 = np.full(100000, 2.0)                 # many copies of one "pixel" with value 2<br>x = x0.copy()<br>for t in range(300):                      # add noise one small step at a time<br>    x = np.sqrt(1 - betas[t]) * x + np.sqrt(betas[t]) * rng.normal(size=x.shape)<br><br>t = 299                                   # closed form: jump straight to step 300<br>print("step by step : mean %.3f  std %.3f" % (x.mean(), x.std()))<br>print("closed form  : mean %.3f  std %.3f" % (np.sqrt(abar[t]) * 2.0, np.sqrt(1 - abar[t])))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">step by step : mean 1.262  std 0.776<br>closed form  : mean 1.259  std 0.777</div>
          <p>The mean shrinks by √ᾱ<sub>t</sub> and the noise grows to √(1 − ᾱ<sub>t</sub>), exactly as the formula says. This shortcut is why training is cheap: pick a random t, make x<sub>t</sub> in one line, and ask the network to predict the noise.</p>
        </div>
        <div class="lc-card">
          <h3>4. Autoregressive models: one token at a time</h3>
          <p>Large language models are generative too. A decoder-only Transformer (Lesson 17) learns p(next token | previous tokens) with cross-entropy, and generates by sampling one token, appending it, and repeating. The same idea has been used for images and audio.</p>
        </div>
        <div class="lc-card">
          <h3>The families compared</h3>
          <table class="lc-table">
            <thead><tr><th>Family</th><th>Trained with</th><th>Strength</th><th>Weakness</th></tr></thead>
            <tbody>
              <tr><td>Autoencoder / VAE</td><td>Reconstruction loss (+ KL for VAE)</td><td>Simple, stable, useful codes</td><td>VAE samples tend to be blurry</td></tr>
              <tr><td>GAN</td><td>Generator vs discriminator game</td><td>Sharp images, fast sampling</td><td>Unstable, mode collapse</td></tr>
              <tr><td>Diffusion</td><td>MSE on predicted noise</td><td>High quality, stable training</td><td>Sampling needs many steps</td></tr>
              <tr><td>Autoregressive</td><td>Next-token cross-entropy</td><td>Text, code, very general</td><td>Generates one token at a time</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What the starter code does</h3>
          <p>Part 1 trains a small autoencoder (64 → 8 → 64) on the scikit-learn digits with plain gradient descent. Its test reconstruction error (0.0286) is well below that of always predicting the average image (0.0739), so the 8-number code really captures each digit. Part 2 runs the diffusion forward process on one digit and shows its correlation with the original falling from 1.00 to about 0 as t grows.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>A bottleneck as big as the input.</strong> A 64 → 64 autoencoder can just copy the input and learns nothing useful. The code must be smaller (or regularised).</li>
            <li><strong>Judging a generator by its training loss alone.</strong> A GAN's losses go up and down by design. Look at samples and use metrics such as FID.</li>
            <li><strong>Mixing up the two diffusion processes.</strong> Adding noise is a fixed formula; only the <em>denoising</em> network is learned.</li>
            <li><strong>Forgetting where the training data came from.</strong> Generative models can reproduce their training data, so licensing and consent matter.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>In the starter change <code>code_size = 8</code> to <code>2</code>, then to <code>16</code>. The test MSE moves from 0.0648 (barely better than the mean image) to 0.0150: a bigger code keeps more detail.</li>
            <li>In Part 2 add <code>50</code> to the list of steps <code>[0, 100, 300, 600, 999]</code>. How much of the digit survives after 50 steps?</li>
            <li>Change the schedule to <code>np.linspace(1e-4, 0.04, T)</code>. The image is destroyed much sooner: the schedule controls how fast information disappears.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Notice how little is new here. Autoencoders use MSE and backprop, GAN discriminators use binary cross-entropy, diffusion networks use MSE on noise, and LLMs use cross-entropy on tokens. Generative AI is the same toolbox you have built in this course, pointed at a different question.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_digits

        # Part 1: an AUTOENCODER squeezes 64 pixels into 8 numbers and rebuilds them
        X = load_digits().data / 16.0                       # 1797 digits, 64 pixels each
        X_tr, X_te = X[:1500], X[1500:]
        rng = np.random.default_rng(0)
        code_size = 8
        W_enc = rng.normal(0, 0.1, (64, code_size))         # encoder: 64 -> 8
        W_dec = rng.normal(0, 0.1, (code_size, 64))         # decoder: 8 -> 64
        lr = 0.1
        for epoch in range(1, 1001):
            code = np.tanh(X_tr @ W_enc)                    # the bottleneck
            recon = code @ W_dec                            # the rebuilt image
            err = recon - X_tr
            dW_dec = code.T @ err / len(X_tr)               # MSE gradients (the constant 2/64 is folded into lr)
            dcode = err @ W_dec.T * (1 - code ** 2)
            dW_enc = X_tr.T @ dcode / len(X_tr)
            W_dec -= lr * dW_dec
            W_enc -= lr * dW_enc
            if epoch in (1, 100, 1000):
                print(f"epoch {epoch:3d}  reconstruction MSE (train) = {np.mean(err ** 2):.4f}")

        test_mse = np.mean((np.tanh(X_te @ W_enc) @ W_dec - X_te) ** 2)
        print(f"Test MSE {test_mse:.4f} vs always-predict-the-mean {np.mean((X_te - X_tr.mean(0)) ** 2):.4f}")
        print(f"Compression: 64 numbers -> {code_size} numbers per image")

        # Part 2: DIFFUSION forward process: x_t = sqrt(abar_t) * x0 + sqrt(1 - abar_t) * noise
        T = 1000
        betas = np.linspace(1e-4, 0.02, T)                  # the classic linear schedule
        abar = np.cumprod(1 - betas)                        # abar_t = product of (1 - beta)
        x0 = X_te[0]
        noise = np.random.default_rng(1).normal(size=64)       # one fixed noise sample
        print("\nNoising one test digit:")
        for t in [0, 100, 300, 600, 999]:
            xt = np.sqrt(abar[t]) * x0 + np.sqrt(1 - abar[t]) * noise
            corr = np.corrcoef(x0, xt)[0, 1]                 # how much of the digit is left
            print(f"  t={t:3d}  signal kept sqrt(abar)={np.sqrt(abar[t]):.3f}  corr with original={corr:.2f}")
        print("A diffusion model is trained to predict `noise` from (xt, t), then runs this backwards.")
      PYTHON
    },
    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Capstone Project &amp; Review</h1>
        </div>
        <p class="lc-lead">Time to use everything together. In this project you build a handwritten digit classifier completely from scratch in NumPy: He initialisation, ReLU, softmax, cross-entropy, backpropagation, mini-batches, the Adam optimiser, L2 regularisation, a validation set and early stopping. It reaches 97.22% accuracy on 360 test images it has never seen.</p>
        <div class="lc-card">
          <h3>The project plan</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What we do</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>1. Data</td><td>Load 1,797 8×8 digit images, scale pixels to 0–1</td><td>4</td></tr>
              <tr><td>2. Split</td><td>Train (64%), validation (16%), test (20%)</td><td>8, 10</td></tr>
              <tr><td>3. Model</td><td>64 → 64 (ReLU) → 10 (softmax), He init</td><td>4, 11</td></tr>
              <tr><td>4. Loss</td><td>Categorical cross-entropy + L2 penalty</td><td>5, 10</td></tr>
              <tr><td>5. Gradients</td><td>Backpropagation with the chain rule</td><td>7</td></tr>
              <tr><td>6. Optimiser</td><td>Adam, mini-batches of 32, shuffled every epoch</td><td>8, 9</td></tr>
              <tr><td>7. Stop</td><td>Early stopping on validation loss, restore best weights</td><td>10</td></tr>
              <tr><td>8. Evaluate</td><td>Test accuracy and per-digit accuracy</td><td>8</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The key lines</h3>
          <div class="lc-code">H, probs = forward(Xb)<br>dZ = (probs - np.eye(10)[yb]) / len(yb)    # softmax + cross-entropy gradient<br>dH = (dZ @ W2.T) * (H &gt; 0)                  # back through ReLU<br>grads = {"W2": H.T @ dZ + l2 * W2, "b2": dZ.sum(0),<br>         "W1": Xb.T @ dH + l2 * W1, "b1": dH.sum(0)}<br>for k in P:                                 # Adam update<br>    m[k] = 0.9 * m[k] + 0.1 * grads[k]<br>    v[k] = 0.999 * v[k] + 0.001 * grads[k] ** 2<br>    P[k] -= lr * (m[k] / (1 - 0.9 ** t)) / (np.sqrt(v[k] / (1 - 0.999 ** t)) + 1e-8)</div>
          <p><code>np.eye(10)[yb]</code> is a quick way to one-hot encode the labels: row y of the identity matrix has a 1 in position y.</p>
        </div>
        <div class="lc-card">
          <h3>Extend the project</h3>
          <ul class="lc-list">
            <li>Add a second hidden layer and see if accuracy improves.</li>
            <li>Add dropout to the hidden layer (remember: training only).</li>
            <li>Replace Adam with plain SGD and compare how many epochs it needs.</li>
            <li>Print the confusion between digits: which pairs (like 3 and 8) get mixed up most?</li>
            <li>Rewrite it in PyTorch on your laptop or Colab, then add a small CNN and train on the 28×28 MNIST dataset.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Course review</h3>
          <table class="lc-table">
            <thead><tr><th>Concept</th><th>One-line summary</th></tr></thead>
            <tbody>
              <tr><td>Neuron</td><td>Weighted sum + bias, then an activation</td></tr>
              <tr><td>Activation</td><td>Adds non-linearity; ReLU for hidden layers, softmax/sigmoid for outputs</td></tr>
              <tr><td>Forward pass</td><td>Repeated <code>A = f(A @ W + b)</code> from input to output</td></tr>
              <tr><td>Loss</td><td>MSE for regression, cross-entropy for classification</td></tr>
              <tr><td>Backpropagation</td><td>Chain rule applied from the loss back to every weight</td></tr>
              <tr><td>Optimiser</td><td>SGD, Momentum, Adam: how the weights get updated</td></tr>
              <tr><td>Regularisation</td><td>L2, dropout, early stopping, augmentation fight overfitting</td></tr>
              <tr><td>Init &amp; BatchNorm</td><td>Keep activations at a healthy scale in deep networks</td></tr>
              <tr><td>CNN</td><td>Shared sliding filters + pooling for images</td></tr>
              <tr><td>RNN / LSTM</td><td>A hidden state carried across a sequence</td></tr>
              <tr><td>Attention / Transformer</td><td>Every token looks directly at every other token</td></tr>
              <tr><td>Transfer learning</td><td>Reuse a pretrained model; train only what you need</td></tr>
              <tr><td>Generative models</td><td>Autoencoders, GANs, diffusion and LLMs learn the data itself and create new examples</td></tr>
              <tr><td>PyTorch</td><td>Tensors, autograd, <code>nn.Module</code>, the 5-step training loop</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Where to go next</h3>
          <ul class="lc-list">
            <li>Practise PyTorch with the official tutorials and a free Colab GPU.</li>
            <li>Try a Kaggle competition (digit recognition, image classification, sentiment analysis).</li>
            <li>Explore Hugging Face for pretrained Transformers, including models for Indian languages.</li>
            <li>Build a portfolio project that solves a real local problem: crop disease detection from leaf photos, Hindi/Tamil text classification, or traffic sign recognition.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked example: sanity checks before training</h3>
          <p>Professionals check the data and the untrained model before running a long training job:</p>
          <div class="lc-code">import numpy as np<br>from sklearn.datasets import load_digits<br><br>X, y = load_digits(return_X_y=True)<br>X = X / 16.0<br>print("one-hot of labels", y[:3], ":\n", np.eye(10)[y[:3]].astype(int))<br><br># Sanity check 1: an untrained network's loss should be close to log(10)<br>rng = np.random.default_rng(0)<br>W1, W2 = rng.normal(0, np.sqrt(2 / 64), (64, 64)), rng.normal(0, 0.01, (64, 10))<br>Z = np.maximum(0, X @ W1) @ W2<br>P = np.exp(Z - Z.max(1, keepdims=True))<br>P /= P.sum(1, keepdims=True)<br>print("first loss:", round(-np.mean(np.log(P[np.arange(len(y)), y])), 3),<br>      "| log(10) =", round(np.log(10), 3))<br><br># Sanity check 2: the classes are balanced, so accuracy is a fair metric<br>print("images per digit:", np.bincount(y))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">one-hot of labels [0 1 2] :<br> [[1 0 0 0 0 0 0 0 0 0]<br> [0 1 0 0 0 0 0 0 0 0]<br> [0 0 1 0 0 0 0 0 0 0]]<br>first loss: 2.3 | log(10) = 2.303<br>images per digit: [178 182 177 183 181 182 181 179 174 180]</div>
          <p>The untrained loss is 2.3 ≈ log(10), so the forward pass and loss are wired correctly. The ten digits appear about 180 times each, so plain accuracy is a fair metric (for very unbalanced data you would also report precision and recall).</p>
        </div>
        <div class="lc-card">
          <h3>Reading the capstone log</h3>
          <p>The starter prints, for example, <code>epoch 15  val loss 0.1409  train acc 99.74%</code> and then stops early at epoch 19, restoring the best weights. Training accuracy near 100% with validation loss no longer falling is the classic moment to stop. The per-digit accuracies show where the model struggles: digit 8 (0.89) is confused most often.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Leaking the test set.</strong> Choosing lr, L2 or the patience by looking at test accuracy. Use the validation set for all choices and look at the test set once.</li>
            <li><strong>Restoring nothing after early stopping.</strong> Stopping without restoring the best weights keeps the slightly overfitted final ones.</li>
            <li><strong>Forgetting the Adam step counter.</strong> <code>t</code> must count updates (not epochs) for the bias correction to be right.</li>
            <li><strong>Stratifying only one split.</strong> Both <code>train_test_split</code> calls in the starter use <code>stratify</code> so every split has all ten digits in the same proportions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ol class="lc-list">
            <li>Change the patience from <code>wait &gt;= 5</code> to <code>wait &gt;= 15</code>. Training runs longer: does the test accuracy improve or not?</li>
            <li>Replace Adam with plain SGD: change the update to <code>P[k] -= 0.1 * grads[k]</code>. How many epochs does it need now?</li>
            <li>Add a confusion count after the test accuracy: <code>print(np.sum((y_te == 8) &amp; (pred == 1)))</code>. Which wrong digit does the model pick most often for 8s?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Whenever a model misbehaves, go back to basics: check the shapes, check that the first loss is about log(number of classes), try to overfit a tiny batch of 10 examples, then tune the learning rate. These four checks fix most deep learning bugs.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_digits
        from sklearn.model_selection import train_test_split
        # Capstone: a digit classifier built from scratch (64 -> 64 ReLU -> 10 softmax, Adam)
        X, y = load_digits(return_X_y=True)
        X = X / 16.0                                             # pixels 0-16 -> 0-1
        X_tmp, X_te, y_tmp, y_te = train_test_split(X, y, test_size=0.2, random_state=0, stratify=y)
        X_tr, X_va, y_tr, y_va = train_test_split(X_tmp, y_tmp, test_size=0.2, random_state=0, stratify=y_tmp)
        print(f"train {len(X_tr)} | validation {len(X_va)} | test {len(X_te)}")
        rng = np.random.default_rng(0)
        P = {"W1": rng.normal(0, np.sqrt(2 / 64), (64, 64)), "b1": np.zeros(64),   # He init
             "W2": rng.normal(0, np.sqrt(1 / 64), (64, 10)), "b2": np.zeros(10)}
        m, v = ({k: np.zeros_like(a) for k, a in P.items()} for _ in range(2))  # Adam memory

        def forward(X):
            H = np.maximum(0, X @ P["W1"] + P["b1"])
            Z = H @ P["W2"] + P["b2"]
            E = np.exp(Z - Z.max(axis=1, keepdims=True))
            return H, E / E.sum(axis=1, keepdims=True)

        lr, l2, t, best_val, wait = 0.005, 1e-4, 0, np.inf, 0
        for epoch in range(1, 101):
            for batch in np.array_split(rng.permutation(len(X_tr)), len(X_tr) // 32):
                Xb, yb = X_tr[batch], y_tr[batch]
                H, probs = forward(Xb)
                dZ = (probs - np.eye(10)[yb]) / len(yb)           # softmax + cross-entropy gradient
                dH = (dZ @ P["W2"].T) * (H > 0)
                grads = {"W2": H.T @ dZ + l2 * P["W2"], "b2": dZ.sum(0),
                         "W1": Xb.T @ dH + l2 * P["W1"], "b1": dH.sum(0)}
                t += 1
                for k in P:                                       # Adam update
                    m[k] = 0.9 * m[k] + 0.1 * grads[k]
                    v[k] = 0.999 * v[k] + 0.001 * grads[k] ** 2
                    P[k] -= lr * (m[k] / (1 - 0.9 ** t)) / (np.sqrt(v[k] / (1 - 0.999 ** t)) + 1e-8)
            val_loss = -np.mean(np.log(forward(X_va)[1][np.arange(len(y_va)), y_va] + 1e-9))
            if epoch % 5 == 0 or epoch == 1:
                tr_acc = np.mean(forward(X_tr)[1].argmax(1) == y_tr)
                print(f"epoch {epoch:3d}  val loss {val_loss:.4f}  train acc {tr_acc:.2%}")
            if val_loss < best_val - 1e-4:
                best_val, wait, best = val_loss, 0, {k: val.copy() for k, val in P.items()}
                continue
            wait += 1
            if wait >= 5:                                        # early stopping, patience 5
                print(f"Early stopping at epoch {epoch}, restoring best weights")
                break

        P.update(best)
        pred = forward(X_te)[1].argmax(1)
        print(f"\nTest accuracy: {np.mean(pred == y_te):.2%}")
        print("Per-digit accuracy:", {d: round(float(np.mean(pred[y_te == d] == d)), 2) for d in range(10)})
      PYTHON
    }
  }
end

module DeepLearningContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">What is Deep Learning &amp; Why Now?</h1>
        </div>
        <p class="lc-lead"><strong>Deep learning</strong> is a part of machine learning where we stack many layers of simple maths units called <strong>neurons</strong>. Each layer turns its input into a slightly more useful representation, and the network learns those layers on its own from examples. It is the technology behind face unlock on your phone, Google Translate, UPI fraud alerts and ChatGPT.</p>
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
            <li><strong>Classic ML</strong> shines on small, tabular data (Excel-like tables).</li>
            <li><strong>Deep learning</strong> shines on large, unstructured data: images, audio, text, video.</li>
            <li>Deep learning needs more data and more compute, but it scales: more data usually means better accuracy.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Why did it take off only after 2012?</h3>
          <p>Neural networks were invented in the 1950s, so why the sudden boom? Three things came together:</p>
          <table class="lc-table">
            <thead><tr><th>Ingredient</th><th>What changed</th></tr></thead>
            <tbody>
              <tr><td>Data</td><td>The internet and smartphones created huge labelled datasets (ImageNet: about 1.2 million training images in 1,000 classes).</td></tr>
              <tr><td>Compute</td><td>GPUs, first built for video games, can do thousands of multiplications at the same time, which is exactly what neural networks need.</td></tr>
              <tr><td>Algorithms</td><td>ReLU activations, dropout, better weight initialisation, the Adam optimiser and later the Transformer made deep networks trainable.</td></tr>
            </tbody>
          </table>
          <p>In 2012 a network called <strong>AlexNet</strong> won the ImageNet competition by a huge margin. Since then deep learning has spread into almost every area of AI.</p>
        </div>
        <div class="lc-card">
          <h3>A tiny preview in code</h3>
          <p>The starter code uses scikit-learn to compare a straight-line model with a small neural network on data shaped like two circles. A straight line simply cannot separate an inner circle from an outer ring, but a network with hidden layers can bend its decision boundary.</p>
          <div class="lc-code">from sklearn.neural_network import MLPClassifier<br><br>net = MLPClassifier(hidden_layer_sizes=(16, 16), max_iter=2000)<br>net.fit(X_train, y_train)          # learn from examples<br>print(net.score(X_test, y_test))   # accuracy on unseen data</div>
        </div>
        <div class="lc-card">
          <h3>What you will build in this course</h3>
          <ul class="lc-list">
            <li>Neurons, layers and full networks written from scratch in NumPy</li>
            <li>Loss functions, gradient descent and backpropagation (with the chain rule)</li>
            <li>A complete training loop with epochs, mini-batches, Adam and early stopping</li>
            <li>Convolutions for images, RNNs for sequences, and attention and Transformers for language</li>
            <li>How the same ideas look in <strong>PyTorch</strong>, the framework professionals use</li>
          </ul>
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
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Try changing the targets in the starter code to the OR gate, then to XOR. OR is learned quickly; with XOR the perceptron keeps making mistakes forever. You will solve XOR-like problems with a hidden layer in Lesson 9.
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
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In softmax we subtract the largest score before calling <code>np.exp</code>. The answer is mathematically the same, but it stops <code>exp(1000)</code> from overflowing to infinity. Every real library does this trick.
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
          <h1 class="lc-title">Building a Layer with NumPy</h1>
        </div>
        <p class="lc-lead">A <strong>layer</strong> is a group of neurons that all look at the same inputs. Instead of computing each neuron in a loop, we store all the weights in one matrix and compute the whole layer, for a whole batch of examples, with a single matrix multiplication. This is why GPUs and NumPy make deep learning fast.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-12-weights-bias.svg" alt="Weights and bias connecting inputs to neurons" class="lc-topic-image" />
          <p class="lc-topic-caption">Each connection has a weight; each neuron has one bias.</p>
        </div>
        <div class="lc-card">
          <h3>From one neuron to a layer</h3>
          <p>One neuron has a weight <em>vector</em> w (one weight per input). A layer of 5 neurons has 5 such vectors. Put them side by side as columns and you get a weight <em>matrix</em> W of shape <code>(n_inputs, n_neurons)</code>. The biases become a vector b of shape <code>(n_neurons,)</code>.</p>
          <div class="lc-code">Z = X @ W + b      # linear part<br>A = relu(Z)        # activation, applied element-wise</div>
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
          <h3>A reusable Dense layer class</h3>
          <div class="lc-code">class Dense:<br>    def __init__(self, n_in, n_out, seed=0):<br>        rng = np.random.default_rng(seed)<br>        self.W = rng.normal(0, np.sqrt(2 / n_in), size=(n_in, n_out))<br>        self.b = np.zeros(n_out)<br><br>    def forward(self, X):<br>        return np.maximum(0, X @ self.W + self.b)<br><br>layer = Dense(3, 5)<br>out = layer.forward(X)   # shape (4, 5)</div>
          <p>We start weights as small random numbers (not zeros!). If every weight were zero, every neuron would compute the same thing and learn the same thing. Random values break this symmetry. The <code>sqrt(2 / n_in)</code> scale is "He initialisation", explained in Lesson 12.</p>
        </div>
        <div class="lc-card">
          <h3>Counting parameters</h3>
          <p>A dense layer has <code>n_in × n_out</code> weights plus <code>n_out</code> biases. Our 3→5 layer has 3×5 + 5 = <strong>20</strong> parameters. A layer taking a 28×28 image (784 pixels) into 128 neurons has 784×128 + 128 = <strong>100,480</strong> parameters. Parameter count tells you how big (and how data-hungry) a model is.</p>
        </div>
        <div class="lc-card">
          <h3>Why not just use loops?</h3>
          <p>The starter code computes the same layer with two nested Python loops and checks that the answers match. For 4 students and 5 neurons the loop is fine, but real layers have thousands of neurons and batches of hundreds of examples. NumPy's <code>@</code> runs optimised C code (and PyTorch runs it on the GPU), often hundreds of times faster.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When your network code breaks, print the <code>.shape</code> of every array first. Most beginner bugs in deep learning are shape mismatches, like using (5, 3) where (3, 5) was needed.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        class Dense:
            """A fully connected layer: output = activation(X @ W + b)."""

            def __init__(self, n_in, n_out, activation="relu", seed=0):
                rng = np.random.default_rng(seed)
                self.W = rng.normal(0, np.sqrt(2 / n_in), size=(n_in, n_out))
                self.b = np.zeros(n_out)
                self.activation = activation

            def forward(self, X):
                Z = X @ self.W + self.b      # (batch, n_in) @ (n_in, n_out) -> (batch, n_out)
                if self.activation == "relu":
                    return np.maximum(0, Z)
                return Z

            def n_params(self):
                return self.W.size + self.b.size

        # 4 students x 3 features: hours studied, hours slept, mock tests taken
        X = np.array([[5.0, 7.0, 2.0],
                      [1.0, 5.0, 0.0],
                      [8.0, 6.0, 4.0],
                      [3.0, 8.0, 1.0]])
        X = (X - X.mean(axis=0)) / X.std(axis=0)    # scale each feature

        layer = Dense(n_in=3, n_out=5)
        out = layer.forward(X)
        print("Input X shape :", X.shape)
        print("Weights W     :", layer.W.shape, "| bias b:", layer.b.shape)
        print("Output shape  :", out.shape)
        print("Parameters    :", layer.n_params(), "= 3*5 weights + 5 biases")
        print("\nLayer output (row = student, column = neuron):")
        print(np.round(out, 2))

        # Same computation with slow Python loops, to prove what @ is doing
        loop_out = np.zeros((4, 5))
        for i in range(4):
            for j in range(5):
                z = np.dot(X[i], layer.W[:, j]) + layer.b[j]
                loop_out[i, j] = max(0.0, z)
        print("\nLoop version matches matrix version?", np.allclose(loop_out, out))
        print("Neurons that fired (> 0) for student 1:", np.flatnonzero(out[0] > 0).tolist())

        # Stack two layers: 3 -> 5 -> 2
        layer2 = Dense(5, 2, activation="none", seed=1)
        print("Two stacked layers give shape:", layer2.forward(out).shape)
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Forward Pass Through a Network</h1>
        </div>
        <p class="lc-lead">Stack a few layers and you have a <strong>neural network</strong>. The <strong>forward pass</strong> (also called forward propagation) is the journey of data from the input layer, through the hidden layers, to the output layer, producing a prediction. Every prediction any network makes, from Instagram filters to ChatGPT, is a forward pass.</p>
        <div class="lc-topic-image-wrap">
          <img src="/assets/deep-learning-15-forward-propagation.svg" alt="Data flowing left to right through layers of a network" class="lc-topic-image" />
          <p class="lc-topic-caption">Values flow from left to right, one layer at a time.</p>
        </div>
        <div class="lc-card">
          <h3>The three kinds of layers</h3>
          <table class="lc-table">
            <thead><tr><th>Layer</th><th>What it does</th><th>Size decided by</th></tr></thead>
            <tbody>
              <tr><td>Input layer</td><td>Just holds the features, no computation</td><td>Number of features (4 for iris flowers, 784 for a 28×28 image)</td></tr>
              <tr><td>Hidden layers</td><td>Linear step + activation; learn intermediate features</td><td>You choose (a design decision)</td></tr>
              <tr><td>Output layer</td><td>Produces the final prediction</td><td>The task: 1 for yes/no, k for k classes</td></tr>
            </tbody>
          </table>
          <p>A network with <em>many</em> hidden layers is called <strong>deep</strong>. That is where the name "deep learning" comes from.</p>
        </div>
        <div class="lc-card">
          <h3>The forward pass step by step</h3>
          <p>For a network 4 → 8 → 6 → 3, each layer repeats the same two steps:</p>
          <div class="lc-code">A0 = X                          # (5, 4)  batch of 5 flowers<br>Z1 = A0 @ W1 + b1; A1 = relu(Z1)  # (5, 8)<br>Z2 = A1 @ W2 + b2; A2 = relu(Z2)  # (5, 6)<br>Z3 = A2 @ W3 + b3; A3 = softmax(Z3)  # (5, 3)  probabilities</div>
          <p>Or as a loop over a list of (W, b) pairs:</p>
          <div class="lc-code">A = X<br>for i, (W, b) in enumerate(params, start=1):<br>    Z = A @ W + b<br>    A = softmax(Z) if i == len(params) else relu(Z)</div>
        </div>
        <div class="lc-card">
          <h3>Reading the output</h3>
          <p>The softmax output has one row per example and one column per class. Each row sums to 1, so it is a probability distribution. The predicted class is the column with the biggest probability: <code>A.argmax(axis=1)</code>.</p>
          <p>Our network is <strong>untrained</strong> (random weights), so its predictions are basically guesses. Training (Lessons 6–9) will adjust the 115 parameters until the probabilities put most weight on the correct class.</p>
        </div>
        <div class="lc-card">
          <h3>Why scale the inputs?</h3>
          <p>Features often live on different scales: petal width is about 0.2–2.5 cm, but a salary could be 5,00,000. Large inputs create large Z values, which saturate activations and make training unstable. So we <strong>standardise</strong> each feature to mean 0 and standard deviation 1 before the forward pass:</p>
          <div class="lc-code">X = (X - X.mean(axis=0)) / X.std(axis=0)</div>
          <p>Always compute the mean and std on the <em>training</em> data and reuse them for test data.</p>
        </div>
        <div class="lc-card">
          <h3>Hidden layers learn features</h3>
          <ul class="lc-list">
            <li>Each hidden neuron responds to some pattern in its inputs.</li>
            <li>Later layers combine earlier patterns into more complex ones (edges → shapes → objects).</li>
            <li>More neurons per layer = <em>wider</em>; more layers = <em>deeper</em>. Deeper networks can represent more complex functions with fewer total neurons.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The forward pass is only half the story. It tells us <em>what</em> the network predicts. Next we need a way to measure how wrong it is (loss) and how to fix it (gradients). Keep the shape table from this lesson handy; backpropagation runs through the same shapes in reverse.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        rng = np.random.default_rng(42)

        def relu(z):
            return np.maximum(0, z)

        def softmax(Z):
            e = np.exp(Z - Z.max(axis=1, keepdims=True))
            return e / e.sum(axis=1, keepdims=True)

        # Network: 4 inputs -> 8 hidden -> 6 hidden -> 3 classes
        sizes = [4, 8, 6, 3]
        params = []
        for n_in, n_out in zip(sizes[:-1], sizes[1:]):
            W = rng.normal(0, np.sqrt(2 / n_in), size=(n_in, n_out))
            b = np.zeros(n_out)
            params.append((W, b))

        # A batch of 5 flowers: sepal length, sepal width, petal length, petal width (cm)
        X = np.array([[5.1, 3.5, 1.4, 0.2],
                      [6.2, 2.9, 4.3, 1.3],
                      [7.7, 3.0, 6.1, 2.3],
                      [5.0, 3.4, 1.5, 0.2],
                      [6.4, 3.2, 5.3, 2.3]])
        X = (X - X.mean(axis=0)) / X.std(axis=0)   # standardise features

        A = X
        print(f"{'input':16s}: A {A.shape}")
        for i, (W, b) in enumerate(params, start=1):
            Z = A @ W + b                          # linear step
            last = i == len(params)
            A = softmax(Z) if last else relu(Z)    # activation step
            name = "output (softmax)" if last else f"hidden layer {i}"
            print(f"{name:16s}: Z {Z.shape} -> A {A.shape}   W {W.shape}")

        print("\nClass probabilities (network is untrained, so these are near-random):")
        print(np.round(A, 3))
        print("Each row sums to:", np.round(A.sum(axis=1), 3))
        print("Predicted class per flower:", A.argmax(axis=1))
        print("Total parameters:", sum(W.size + b.size for W, b in params))
      PYTHON
    },

    6 => {
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

    7 => {
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

    8 => {
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

    9 => {
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
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Experiment! Change <code>batch_size</code> to 1 or 480, the number of hidden neurons to 2 or 64, or <code>lr</code> to 0.05 or 5.0, and watch how the training log changes. Building this intuition is the most valuable skill in deep learning.
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

    10 => {
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

    11 => {
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
          <p>In PyTorch: <code>torch.optim.AdamW(params, lr=1e-3, weight_decay=0.01)</code>.</p>
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

    12 => {
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
          <p>The trick: scale the random weights by the number of inputs to each neuron (n<sub>in</sub>), so the sum w·x has roughly the same variance as each input.</p>
          <div class="lc-code"># Xavier / Glorot: for tanh and sigmoid<br>W = rng.normal(0, np.sqrt(1 / n_in), size=(n_in, n_out))<br><br># He / Kaiming: for ReLU (ReLU zeroes half its inputs, so double the variance)<br>W = rng.normal(0, np.sqrt(2 / n_in), size=(n_in, n_out))</div>
          <p>The starter code sends data through 8 layers of 256 neurons and prints the spread (standard deviation) of activations. With He init and ReLU it stays around 0.8 at every layer; with tiny weights it falls to 0.00000.</p>
          <p>PyTorch already uses a sensible default for <code>nn.Linear</code>, and you can choose explicitly with <code>nn.init.kaiming_normal_(layer.weight)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Batch normalisation</h3>
          <p>Even with good initialisation, the distribution of each layer's inputs keeps shifting as earlier layers learn. <strong>Batch normalisation</strong> (2015) fixes this by normalising each feature over the current mini-batch, then letting the network re-scale it with two learnable parameters, γ (gamma) and β (beta):</p>
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
                     "Xavier": np.sqrt(1 / width), "He": np.sqrt(2 / width)}[init]
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

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Introduction to PyTorch</h1>
        </div>
        <p class="lc-lead">Writing every gradient by hand teaches you how networks work, but professionals don't do it. They use frameworks such as <strong>PyTorch</strong> (by Meta, the most popular in research and industry) or <strong>TensorFlow/Keras</strong> (by Google). These give you ready-made layers, automatic gradients and GPU support, so a full training loop fits in about 15 lines.</p>
        <div class="lc-card">
          <h3>What a framework gives you</h3>
          <table class="lc-table">
            <thead><tr><th>You did by hand</th><th>PyTorch does it with</th></tr></thead>
            <tbody>
              <tr><td>NumPy arrays</td><td><code>torch.tensor</code> (like arrays, but can run on a GPU and track gradients)</td></tr>
              <tr><td>Dense layer class</td><td><code>nn.Linear(in, out)</code></td></tr>
              <tr><td>Activation functions</td><td><code>nn.ReLU()</code>, <code>nn.Sigmoid()</code>, <code>nn.GELU()</code></td></tr>
              <tr><td>Loss formulas</td><td><code>nn.CrossEntropyLoss()</code>, <code>nn.MSELoss()</code></td></tr>
              <tr><td>Backprop with the chain rule</td><td><code>loss.backward()</code> (autograd)</td></tr>
              <tr><td>Update rule / Adam</td><td><code>torch.optim.Adam(model.parameters())</code></td></tr>
              <tr><td>Shuffling into mini-batches</td><td><code>DataLoader(dataset, batch_size=32, shuffle=True)</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A complete PyTorch training loop</h3>
          <p>This is how the moons classifier from Lesson 9 looks in PyTorch. (PyTorch can't run in this browser editor, so read it here, then run it on your laptop or in Google Colab.)</p>
          <div class="lc-code">import torch<br>from torch import nn<br><br>X = torch.tensor(X_np, dtype=torch.float32)<br>y = torch.tensor(y_np, dtype=torch.float32).reshape(-1, 1)<br><br>model = nn.Sequential(<br>    nn.Linear(2, 32),<br>    nn.ReLU(),<br>    nn.Linear(32, 1),          # outputs raw scores (logits)<br>)<br>loss_fn = nn.BCEWithLogitsLoss()  # sigmoid + binary cross-entropy<br>optimizer = torch.optim.Adam(model.parameters(), lr=0.01)<br><br>for epoch in range(300):<br>    logits = model(X)              # 1. forward<br>    loss = loss_fn(logits, y)      # 2. loss<br>    optimizer.zero_grad()          # 3. clear old gradients<br>    loss.backward()                # 4. backprop (autograd)<br>    optimizer.step()               # 5. update weights</div>
        </div>
        <div class="lc-card">
          <h3>Autograd: the chain rule, automated</h3>
          <p>Every time you do maths on a tensor with <code>requires_grad=True</code>, PyTorch records the operation in a <strong>computation graph</strong>. Calling <code>.backward()</code> walks that graph in reverse and applies the chain rule, exactly like Lesson 8.</p>
          <div class="lc-code">w = torch.tensor(0.5, requires_grad=True)<br>loss = (torch.sigmoid(w * 2.0 - 0.3) - 1.0) ** 2<br>loss.backward()<br>print(w.grad)    # tensor(-0.2943), same as our hand-computed dL/dw</div>
        </div>
        <div class="lc-card">
          <h3>Why zero_grad()?</h3>
          <p>PyTorch <strong>adds</strong> new gradients to the old ones in <code>.grad</code>. This is useful for some advanced tricks, but in a normal loop you must clear them with <code>optimizer.zero_grad()</code> every step, otherwise gradients from previous batches pile up. Forgetting it is the most common PyTorch beginner bug.</p>
        </div>
        <div class="lc-card">
          <h3>The same model in Keras</h3>
          <div class="lc-code">from tensorflow import keras<br><br>model = keras.Sequential([<br>    keras.layers.Dense(32, activation="relu"),<br>    keras.layers.Dense(1, activation="sigmoid"),<br>])<br>model.compile(optimizer="adam", loss="binary_crossentropy", metrics=["accuracy"])<br>model.fit(X_np, y_np, epochs=300, batch_size=32)</div>
          <p>Keras hides the loop inside <code>fit()</code>. PyTorch shows the loop, which is why researchers like it: you can change any step.</p>
        </div>
        <div class="lc-card">
          <h3>What the starter code does</h3>
          <p>Since PyTorch isn't available here, the starter code builds tiny NumPy versions of <code>Linear</code>, <code>ReLU</code> and <code>Sequential</code> with the same method names. Each layer stores what it needs in <code>forward</code> and computes its own gradients in <code>backward</code>. This modular design is exactly how PyTorch is organised inside.</p>
          <ul class="lc-list">
            <li>Training on GPU in PyTorch: <code>model.to("cuda")</code> and <code>X.to("cuda")</code></li>
            <li>Switch modes: <code>model.train()</code> for training, <code>model.eval()</code> for testing (affects dropout and batch norm)</li>
            <li>Turn off gradient tracking for predictions: <code>with torch.no_grad():</code></li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Google Colab gives you free access to PyTorch and a GPU in the browser. After this course, try re-writing Lessons 9 and 20 in PyTorch; you'll see how every line maps to something you already built by hand.
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

    14 => {
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
          <p><strong>Output size = (n + 2p − k) / s + 1</strong>, where n is the input size and k the kernel size.</p>
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
          <p>Colour images have 3 channels (R, G, B), so a real kernel has shape 3×3×3, and a layer with 32 filters produces 32 feature maps. In PyTorch: <code>nn.Conv2d(in_channels=3, out_channels=32, kernel_size=3, padding=1)</code> and <code>nn.MaxPool2d(2)</code>.</p>
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

    15 => {
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
          <p>Training uses the exact same loop as Lesson 13, with <code>nn.CrossEntropyLoss()</code>. On the MNIST digits dataset this reaches about 99% test accuracy in a few minutes on a GPU.</p>
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
              <tr><td>EfficientNet / MobileNet</td><td>2017–19</td><td>Small, fast CNNs for phones</td></tr>
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
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For your own image project, you almost never design a CNN from scratch. You take a pretrained ResNet or EfficientNet and fine-tune it. That is transfer learning, covered in Lesson 19.
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

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">RNNs &amp; Sequences</h1>
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
          <p>Exploding gradients are handled with <strong>gradient clipping</strong> (cap the gradient size). Vanishing gradients needed a new cell design.</p>
        </div>
        <div class="lc-card">
          <h3>LSTM and GRU</h3>
          <p>The <strong>LSTM</strong> (Long Short-Term Memory, 1997) adds a separate cell state plus three <strong>gates</strong> (forget, input, output) that learn what to keep, what to add and what to reveal. Because the cell state is updated mostly by addition, gradients can flow across many steps. The <strong>GRU</strong> is a simpler version with two gates.</p>
          <div class="lc-code">lstm = nn.LSTM(input_size=100, hidden_size=128, batch_first=True)<br>outputs, (h_n, c_n) = lstm(embedded_batch)   # shape (batch, seq_len, 128)</div>
          <p>LSTMs powered Google Translate and phone keyboards around 2015–2017. Today Transformers have replaced them for most language tasks, but RNNs are still used for small, streaming and time-series problems.</p>
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

    17 => {
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
          <p>The starter code prints a 7×7 table: row = the word that is looking, column = the word it looks at. With our hand-made word vectors, the row for "it" puts its biggest weight (about 0.49) on "mango". In a trained model, different <strong>attention heads</strong> learn different relationships: one links pronouns to nouns, another links verbs to their objects, and so on.</p>
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

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Transformers</h1>
        </div>
        <p class="lc-lead">The <strong>Transformer</strong>, introduced in the 2017 paper "Attention Is All You Need", threw away recurrence entirely and built a network from attention, feed-forward layers, residual connections and layer normalisation. It is the architecture behind GPT, BERT, Gemini, Claude, and also modern vision and speech models.</p>
        <div class="lc-card">
          <h3>From text to numbers</h3>
          <ol class="lc-list">
            <li><strong>Tokenise:</strong> split text into tokens (words or word pieces) and map each to an ID. "unhappiness" might become "un", "happi", "ness".</li>
            <li><strong>Embed:</strong> look up a learned vector for each token ID (shape: seq_len × d_model).</li>
            <li><strong>Add positions:</strong> attention itself ignores order, so we add a <strong>positional encoding</strong> that is different for position 0, 1, 2 and so on.</li>
          </ol>
          <div class="lc-code">def positional_encoding(n, d):<br>    pos, i = np.arange(n)[:, None], np.arange(d)[None, :]<br>    angles = pos / 10000 ** (2 * (i // 2) / d)<br>    return np.where(i % 2 == 0, np.sin(angles), np.cos(angles))<br><br>X = E[tokens] + positional_encoding(len(tokens), d_model)</div>
        </div>
        <div class="lc-card">
          <h3>Inside one Transformer block</h3>
          <div class="lc-code">x → Multi-Head Attention → Add &amp; LayerNorm → Feed-Forward → Add &amp; LayerNorm → output</div>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>Multi-head attention</td><td>Several attention heads run in parallel on smaller slices (d_model / n_heads), each learning a different kind of relationship. Their outputs are joined and projected by W_o.</td></tr>
              <tr><td>Residual ("Add")</td><td>x + attention(x): the original signal is kept, and gradients flow straight through (the ResNet trick).</td></tr>
              <tr><td>Layer norm</td><td>Normalises each token's vector to mean 0 and std 1, keeping training stable.</td></tr>
              <tr><td>Feed-forward</td><td>A small 2-layer network applied to each token separately (usually 4× wider in the middle). This is where much of the "knowledge" is stored.</td></tr>
            </tbody>
          </table>
          <p>The output of a block has the <strong>same shape</strong> as its input, so we can stack as many blocks as we like: 12 for BERT-base, 96 for GPT-3.</p>
        </div>
        <div class="lc-card">
          <h3>Multi-head attention in NumPy</h3>
          <div class="lc-code">def split_heads(M):   # (seq, d_model) → (heads, seq, d_head)<br>    return M.reshape(seq_len, n_heads, d_head).transpose(1, 0, 2)<br><br>Q, K, V = split_heads(X @ W_q), split_heads(X @ W_k), split_heads(X @ W_v)<br>scores = Q @ K.transpose(0, 2, 1) / np.sqrt(d_head)<br>heads = softmax(scores) @ V                          # (heads, seq, d_head)<br>attn = heads.transpose(1, 0, 2).reshape(seq_len, d_model) @ W_o</div>
        </div>
        <div class="lc-card">
          <h3>Three families of Transformers</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Attention</th><th>Trained to</th><th>Examples</th></tr></thead>
            <tbody>
              <tr><td>Encoder-only</td><td>Every token sees every token</td><td>Fill in masked words</td><td>BERT (search, classification)</td></tr>
              <tr><td>Decoder-only</td><td>Causal: only earlier tokens</td><td>Predict the next token</td><td>GPT, Llama, Claude (chatbots)</td></tr>
              <tr><td>Encoder-decoder</td><td>Encoder + cross-attention</td><td>Map one sequence to another</td><td>T5, original translation model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>How a chatbot writes text</h3>
          <p>A decoder-only model takes the tokens so far, runs them through all its blocks, and turns the last token's vector into a score (logit) for every word in the vocabulary. Softmax gives probabilities, one token is picked, added to the input, and the process repeats. The starter code does one such step with random, untrained weights, so its guess is meaningless, but the shapes and steps are exactly those of a real model.</p>
          <p>In PyTorch a block is one line: <code>nn.TransformerEncoderLayer(d_model=512, nhead=8, batch_first=True)</code>. In practice most people load pretrained models with the Hugging Face <code>transformers</code> library.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Large language models are "just" this block stacked many times, trained on huge amounts of text to predict the next token. The ideas you have built (embeddings, attention, residuals, layer norm, softmax, cross-entropy, Adam) are all of the ingredients.
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

        Q, K, V = split_heads(X @ W_q), split_heads(X @ W_k), split_heads(X @ W_v)
        mask = np.tril(np.ones((seq_len, seq_len), dtype=bool))            # causal (GPT-style)
        scores = np.where(mask, Q @ K.transpose(0, 2, 1) / np.sqrt(d_head), -1e9)
        heads = softmax(scores) @ V                                        # 2. multi-head attention
        attn = heads.transpose(1, 0, 2).reshape(seq_len, d_model) @ W_o
        print("Q/K/V per head:", Q.shape, "| attention output:", attn.shape)

        X = layer_norm(X + attn)                          # 3. residual + layer norm
        ff = np.maximum(0, X @ W1) @ W2                   # 4. feed-forward network
        X = layer_norm(X + ff)                            # 5. residual + layer norm
        print("After one transformer block:", X.shape, "(same shape as input, so blocks can stack)")

        logits = X @ E.T                                  # 6. score every vocabulary word
        probs = softmax(logits[-1])
        print("\nNext-word probabilities after 'day' (untrained, so essentially random):")
        for idx in np.argsort(probs)[::-1][:3]:
            print(f"  {vocab[idx]:10s} {probs[idx]:.3f}")
        block_params = 4 * d_model * d_model + 2 * d_model * d_ff
        print(f"\nWeights in this block: {block_params:,} | GPT-3 has 96 such blocks with d_model = 12288")
      PYTHON
    },

    19 => {
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
          <div class="lc-code">import torchvision<br><br>model = torchvision.models.resnet18(weights="IMAGENET1K_V1")  # pretrained<br>for p in model.parameters():<br>    p.requires_grad = False                 # freeze the body<br>model.fc = nn.Linear(model.fc.in_features, 3)   # new head: 3 classes<br><br>optimizer = torch.optim.Adam(model.fc.parameters(), lr=1e-3)<br># ...then the usual training loop</div>
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

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
          <h1 class="lc-title">Capstone Project &amp; Review</h1>
        </div>
        <p class="lc-lead">Time to use everything together. In this project you build a handwritten digit classifier completely from scratch in NumPy: He initialisation, ReLU, softmax, cross-entropy, backpropagation, mini-batches, the Adam optimiser, L2 regularisation, a validation set and early stopping. It reaches about 97% accuracy on test images it has never seen.</p>
        <div class="lc-card">
          <h3>The project plan</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What we do</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>1. Data</td><td>Load 1,797 8×8 digit images, scale pixels to 0–1</td><td>5</td></tr>
              <tr><td>2. Split</td><td>Train (64%), validation (16%), test (20%)</td><td>9, 11</td></tr>
              <tr><td>3. Model</td><td>64 → 64 (ReLU) → 10 (softmax), He init</td><td>4, 12</td></tr>
              <tr><td>4. Loss</td><td>Categorical cross-entropy + L2 penalty</td><td>6, 11</td></tr>
              <tr><td>5. Gradients</td><td>Backpropagation with the chain rule</td><td>8</td></tr>
              <tr><td>6. Optimiser</td><td>Adam, mini-batches of 32, shuffled every epoch</td><td>9, 10</td></tr>
              <tr><td>7. Stop</td><td>Early stopping on validation loss, restore best weights</td><td>11</td></tr>
              <tr><td>8. Evaluate</td><td>Test accuracy and per-digit accuracy</td><td>9</td></tr>
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

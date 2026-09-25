module DeepLearningContent
  def self.image_block(file, alt, caption)
    <<~HTML
      <div class="lc-topic-image-wrap">
        <img src="/assets/#{file}" alt="#{alt}" class="lc-topic-image" />
        <p class="lc-topic-caption">#{caption}</p>
      </div>
    HTML
  end

  def self.list(items)
    <<~HTML
      <ul class="lc-list">
        #{items.map { |item| "<li>#{item}</li>" }.join}
      </ul>
    HTML
  end

  def self.flow(steps)
    chunks = steps.each_with_index.map do |step, index|
      card = "<div class='lc-flow-step'>#{step[:title]}<small>#{step[:note]}</small></div>"
      index == steps.length - 1 ? card : "#{card}<div class='lc-flow-arrow'>→</div>"
    end
    "<div class='lc-flow'>#{chunks.join}</div>"
  end

  def self.lesson_body(section:, title:, image:, lead:, idea:, bullets:, flow_steps: nil, tip:)
    parts = []
    parts << <<~HTML
      <div class="lc-header">
        <div class="lc-badge le-badge le-badge-deep-learning">Deep Learning</div>
        <h1 class="lc-title">#{title}</h1>
      </div>
      <p class="lc-lead">#{lead}</p>
      <p class="lc-lesson-section">Section: #{section}</p>
      #{image}
      <div class="lc-section">
        <h2>Key Idea</h2>
        <p>#{idea}</p>
      </div>
      <div class="lc-section">
        <h2>What to Remember</h2>
        #{list(bullets)}
      </div>
    HTML

    if flow_steps
      parts << <<~HTML
        <div class="lc-section">
          <h2>Quick Flow</h2>
          #{flow(flow_steps)}
        </div>
      HTML
    end

    parts << <<~HTML
      <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>#{tip}</p></div>
    HTML

    parts.join
  end

  LESSONS = {
    1 => {
      body: lesson_body(
        section: "Fundamentals",
        title: "Introduction to Deep Learning",
        image: image_block("deep-learning-01-introduction.svg", "Introduction to Deep Learning", "A visual overview of layered learning systems."),
        lead: "Deep learning is a branch of machine learning that uses many layers of artificial neurons to learn patterns directly from data.",
        idea: "Instead of hand-writing every rule, we feed examples into a model and let the network learn useful representations. This is why deep learning works so well for images, text, and speech.",
        bullets: [
          "Deep learning uses neural networks with multiple layers.",
          "It learns features automatically from raw data.",
          "It powers modern AI systems like image recognition and chatbots."
        ],
        flow_steps: [
          { title: "Data", note: "examples enter the model" },
          { title: "Layers", note: "patterns are transformed" },
          { title: "Prediction", note: "the model produces an answer" }
        ],
        tip: "Start with the big picture first: deep learning is really about learning representations layer by layer."
      ),
      starter_code: <<~'PYTHON'
        # Introduction to Deep Learning

        tasks = {
            "images": "learn edges, shapes, and objects",
            "text": "learn word patterns and meaning",
            "speech": "learn sound features and language cues"
        }

        print("Deep Learning Examples")
        print("=" * 32)
        for domain, benefit in tasks.items():
            print(f"{domain.title():<8} -> {benefit}")
      PYTHON
    },
    2 => {
      body: lesson_body(
        section: "Fundamentals",
        title: "History of Deep Learning",
        image: image_block("deep-learning-02-history.svg", "History of Deep Learning", "A timeline from early perceptrons to modern large models."),
        lead: "Deep learning has grown through several waves: early neural network ideas, long quiet periods, and then a huge comeback thanks to data, GPUs, and better training methods.",
        idea: "The field began with simple neuron models in the 1940s, gained momentum with backpropagation in the 1980s, and exploded in the 2010s with breakthroughs in vision and language.",
        bullets: [
          "Perceptrons were one of the earliest neural models.",
          "Backpropagation made training deeper networks practical.",
          "Large datasets and GPUs unlocked the modern era."
        ],
        flow_steps: [
          { title: "Early Ideas", note: "neural inspiration" },
          { title: "Backprop", note: "better training" },
          { title: "GPU Era", note: "deep nets scale" }
        ],
        tip: "History matters because many “new” ideas are really older concepts that became practical only when compute caught up."
      ),
      starter_code: <<~'PYTHON'
        # A tiny deep learning timeline

        timeline = [
            (1958, "Perceptron"),
            (1986, "Backpropagation becomes popular"),
            (2012, "ImageNet breakthrough"),
            (2017, "Transformers"),
            (2020, "Large-scale language models")
        ]

        print("Deep Learning Timeline")
        print("=" * 28)
        for year, event in timeline:
            print(f"{year}: {event}")
      PYTHON
    },
    3 => {
      body: lesson_body(
        section: "Fundamentals",
        title: "AI vs ML vs Deep Learning",
        image: image_block("deep-learning-03-ai-ml-dl.svg", "AI vs ML vs Deep Learning", "How deep learning sits inside machine learning and AI."),
        lead: "Artificial Intelligence is the broad goal, Machine Learning is one approach, and Deep Learning is a specialized machine learning technique using neural networks.",
        idea: "Think of AI as the whole field of making systems act intelligently. Machine learning is a subset where systems learn from data, and deep learning is the subset that uses deep neural networks.",
        bullets: [
          "AI is the broadest category.",
          "ML learns from data instead of fixed rules.",
          "Deep Learning uses layered neural networks."
        ],
        flow_steps: [
          { title: "AI", note: "smart behavior" },
          { title: "ML", note: "learning from data" },
          { title: "DL", note: "many-layer networks" }
        ],
        tip: "When people say “AI model” today, they often mean a deep learning model, but the terms are not identical."
      ),
      starter_code: <<~'PYTHON'
        # Comparing AI, ML, and DL

        hierarchy = {
            "AI": "the broad field of intelligent systems",
            "ML": "systems that learn patterns from data",
            "DL": "multi-layer neural networks"
        }

        for name, meaning in hierarchy.items():
            print(f"{name}: {meaning}")
      PYTHON
    },
    4 => {
      body: lesson_body(
        section: "Fundamentals",
        title: "Deep Learning Workflow",
        image: image_block("deep-learning-04-workflow.svg", "Deep Learning Workflow", "The core path from data collection to deployment."),
        lead: "A successful deep learning project follows a cycle: collect data, prepare it, train a model, evaluate it, and improve it based on feedback.",
        idea: "The model is only one part of the workflow. Good data, careful evaluation, and repeated iteration matter just as much as architecture choice.",
        bullets: [
          "Collect and clean the data first.",
          "Train the network on examples.",
          "Evaluate, improve, and deploy carefully."
        ],
        flow_steps: [
          { title: "Collect", note: "gather examples" },
          { title: "Train", note: "fit model parameters" },
          { title: "Evaluate", note: "measure quality" },
          { title: "Deploy", note: "serve predictions" }
        ],
        tip: "Most deep learning problems are solved by improving the workflow, not only by changing the model."
      ),
      starter_code: <<~'PYTHON'
        # Deep learning workflow

        workflow = ["Collect data", "Prepare data", "Train model", "Evaluate model", "Deploy model"]

        print("Deep Learning Workflow")
        print("=" * 32)
        for step_number, step in enumerate(workflow, start=1):
            print(f"{step_number}. {step}")
      PYTHON
    },
    5 => {
      body: lesson_body(
        section: "Fundamentals",
        title: "Real-world Applications",
        image: image_block("deep-learning-05-applications.svg", "Real-world Applications", "Examples of deep learning in products people use every day."),
        lead: "Deep learning is used in recommendation systems, speech assistants, medical imaging, fraud detection, autonomous systems, and modern generative AI.",
        idea: "The strongest use cases are usually high-dimensional data problems where manual rules are too brittle, such as images, audio, and natural language.",
        bullets: [
          "Computer vision powers face unlock and object detection.",
          "Language models assist search, chat, and writing.",
          "Recommendation systems personalize content and products."
        ],
        flow_steps: [
          { title: "Input", note: "image, text, sound" },
          { title: "Model", note: "learned representation" },
          { title: "Action", note: "prediction or generation" }
        ],
        tip: "Whenever the input is rich and unstructured, deep learning often becomes a strong candidate solution."
      ),
      starter_code: <<~'PYTHON'
        # Real-world applications of deep learning

        applications = [
            "Image recognition",
            "Speech transcription",
            "Recommendation systems",
            "Fraud detection",
            "Generative AI"
        ]

        for app in applications:
            print(f"- {app}")
      PYTHON
    },
    6 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Biological Neurons vs Artificial Neurons",
        image: image_block("deep-learning-06-biological-vs-artificial.svg", "Biological vs Artificial Neurons", "A simplified comparison between brain neurons and artificial ones."),
        lead: "Artificial neurons are inspired by biological neurons, but they are much simpler mathematical units.",
        idea: "A biological neuron receives signals, processes them, and fires. An artificial neuron does something similar: it takes inputs, multiplies them by weights, adds a bias, and applies an activation function.",
        bullets: [
          "Biological neurons are complex living cells.",
          "Artificial neurons are mathematical approximations.",
          "The goal is useful learning, not perfect brain simulation."
        ],
        flow_steps: [
          { title: "Inputs", note: "signals arrive" },
          { title: "Weighted Sum", note: "combine influence" },
          { title: "Activation", note: "produce output" }
        ],
        tip: "The biological analogy is helpful for intuition, but deep learning is ultimately built on linear algebra and optimization."
      ),
      starter_code: <<~'PYTHON'
        # Artificial neuron calculation

        inputs  = [0.8, 0.4, 0.9]
        weights = [0.5, 0.2, 0.7]
        bias    = -0.3

        weighted_sum = sum(x * w for x, w in zip(inputs, weights)) + bias
        output = 1 if weighted_sum > 0 else 0

        print(f"weighted_sum = {weighted_sum:.2f}")
        print(f"neuron output = {output}")
      PYTHON
    },
    7 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Perceptron",
        image: image_block("deep-learning-07-perceptron.svg", "Perceptron", "The earliest neuron model that makes a binary decision."),
        lead: "The perceptron is a simple decision unit that classifies inputs by checking whether a weighted sum crosses a threshold.",
        idea: "A perceptron can learn linearly separable patterns. It was a huge step in neural network history, even though it cannot solve every type of problem alone.",
        bullets: [
          "It adds weighted inputs together.",
          "It compares the result to a threshold.",
          "It works for simple binary classification."
        ],
        flow_steps: [
          { title: "x·w + b", note: "compute score" },
          { title: "Threshold", note: "compare to 0" },
          { title: "Class", note: "0 or 1" }
        ],
        tip: "The perceptron is the foundation for understanding more advanced neural networks."
      ),
      starter_code: <<~'PYTHON'
        # Perceptron example

        def perceptron(inputs, weights, bias):
            score = sum(i * w for i, w in zip(inputs, weights)) + bias
            return 1 if score >= 0 else 0

        print(perceptron([1, 0], [0.6, -0.4], -0.1))
        print(perceptron([0, 1], [0.6, -0.4], -0.1))
      PYTHON
    },
    8 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Activation Functions",
        image: image_block("deep-learning-08-activation-functions.svg", "Activation Functions", "Nonlinear functions that make neural networks expressive."),
        lead: "Activation functions decide how strongly a neuron responds. They introduce nonlinearity, which is what allows networks to learn complex patterns.",
        idea: "Without activation functions, multiple layers would collapse into something too simple. Functions like ReLU, sigmoid, and tanh let networks model richer relationships.",
        bullets: [
          "ReLU is common because it is simple and fast.",
          "Sigmoid is useful for probabilities between 0 and 1.",
          "Nonlinearity is what makes deep networks powerful."
        ],
        flow_steps: [
          { title: "Weighted Sum", note: "raw neuron score" },
          { title: "Activation", note: "shape the response" },
          { title: "Output", note: "pass signal onward" }
        ],
        tip: "When you see dead neurons or slow learning, activation choice is one of the first things to check."
      ),
      starter_code: <<~'PYTHON'
        # Activation functions

        import math

        x = -1.5
        relu = max(0, x)
        sigmoid = 1 / (1 + math.exp(-x))
        tanh = math.tanh(x)

        print(f"ReLU({x})    = {relu:.3f}")
        print(f"Sigmoid({x}) = {sigmoid:.3f}")
        print(f"Tanh({x})    = {tanh:.3f}")
      PYTHON
    },
    9 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Input Layer",
        image: image_block("deep-learning-09-input-layer.svg", "Input Layer", "Where features enter the network as numbers."),
        lead: "The input layer is where features enter the model. The network cannot learn anything meaningful unless those inputs are represented clearly.",
        idea: "A model never sees “cat” or “email” directly. It sees vectors of numbers. The input layer is the organized doorway for that numerical information.",
        bullets: [
          "Inputs are usually vectors, matrices, or tensors.",
          "Good input representation improves learning quality.",
          "Normalization often helps training stability."
        ],
        flow_steps: [
          { title: "Raw Data", note: "image, text, signal" },
          { title: "Encoding", note: "turn into numbers" },
          { title: "Input Layer", note: "feed the model" }
        ],
        tip: "If the input representation is poor, even a strong network architecture will struggle."
      ),
      starter_code: <<~'PYTHON'
        # Input layer example

        image_features = [0.12, 0.91, 0.33, 0.47]

        print("Input vector:")
        for index, value in enumerate(image_features, start=1):
            print(f"feature_{index} = {value}")
      PYTHON
    },
    10 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Hidden Layers",
        image: image_block("deep-learning-10-hidden-layers.svg", "Hidden Layers", "The layers where feature transformations happen."),
        lead: "Hidden layers are where neural networks learn internal representations. Each layer transforms the input into a more useful form for the next layer.",
        idea: "Early layers may learn simple patterns, while deeper layers can learn more abstract concepts. This step-by-step abstraction is central to deep learning.",
        bullets: [
          "Hidden layers sit between input and output.",
          "Each layer transforms the previous representation.",
          "More depth can learn richer abstractions."
        ],
        flow_steps: [
          { title: "Layer 1", note: "simple features" },
          { title: "Layer 2", note: "richer patterns" },
          { title: "Layer 3", note: "abstract meaning" }
        ],
        tip: "Depth is powerful, but only when the network is trained well and the task has enough data."
      ),
      starter_code: <<~'PYTHON'
        # Hidden layer transformation

        inputs = [0.2, 0.7]
        weights = [[0.6, 0.3], [0.4, 0.8]]
        bias = [0.1, -0.2]

        hidden = []
        for row, b in zip(weights, bias):
            value = sum(i * w for i, w in zip(inputs, row)) + b
            hidden.append(max(0, value))

        print("Hidden layer activations:", hidden)
      PYTHON
    },
    11 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Output Layer",
        image: image_block("deep-learning-11-output-layer.svg", "Output Layer", "The final layer that turns learned features into predictions."),
        lead: "The output layer turns the network's internal representation into something useful: a class, a number, or a probability distribution.",
        idea: "Different tasks use different output styles. Classification often uses probabilities, while regression often outputs a single continuous value.",
        bullets: [
          "Binary classification may use one sigmoid output.",
          "Multi-class classification often uses softmax.",
          "Regression outputs continuous numeric values."
        ],
        flow_steps: [
          { title: "Hidden Features", note: "high-level patterns" },
          { title: "Output Neurons", note: "task-specific mapping" },
          { title: "Prediction", note: "final answer" }
        ],
        tip: "Always match the output layer design to the task you are solving."
      ),
      starter_code: <<~'PYTHON'
        # Output layer probabilities

        scores = [2.1, 1.2, 0.4]
        total = sum(scores)
        probabilities = [round(score / total, 3) for score in scores]

        labels = ["cat", "dog", "bird"]
        for label, prob in zip(labels, probabilities):
            print(f"{label:<5} -> {prob}")
      PYTHON
    },
    12 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Weights & Bias",
        image: image_block("deep-learning-12-weights-bias.svg", "Weights and Bias", "The tunable values that control neuron behavior."),
        lead: "Weights control how important each input is, and bias shifts the activation threshold. Together they are the parameters the model learns.",
        idea: "If an input matters more, its weight grows. If a neuron needs a consistent adjustment, the bias handles it. Training is mostly the process of improving these numbers.",
        bullets: [
          "Weights scale the contribution of each input.",
          "Bias shifts the activation boundary.",
          "Learning adjusts weights and bias over time."
        ],
        flow_steps: [
          { title: "Inputs", note: "x values" },
          { title: "Weights", note: "importance" },
          { title: "+ Bias", note: "shift result" }
        ],
        tip: "When training starts, weights are often random — learning is what makes them meaningful."
      ),
      starter_code: <<~'PYTHON'
        # Weights and bias example

        inputs = [3, 5]
        weights = [0.4, 0.9]
        bias = -1.2

        score = sum(i * w for i, w in zip(inputs, weights)) + bias
        print(f"Score = {score:.2f}")
      PYTHON
    },
    13 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Feedforward Networks",
        image: image_block("deep-learning-13-feedforward.svg", "Feedforward Networks", "The simplest architecture where signals move in one direction."),
        lead: "In a feedforward network, information moves from input to hidden layers to output with no cycles or memory loops.",
        idea: "This is the standard starting architecture for understanding neural networks. It is simple, stable, and easy to reason about layer by layer.",
        bullets: [
          "Signals move only forward.",
          "There are no loops or recurrent connections.",
          "It is a common starting point for beginners."
        ],
        flow_steps: [
          { title: "Input", note: "features enter" },
          { title: "Hidden", note: "transform signal" },
          { title: "Output", note: "prediction exits" }
        ],
        tip: "A feedforward network is often the best place to learn before moving to CNNs, RNNs, or transformers."
      ),
      starter_code: <<~'PYTHON'
        # Feedforward computation

        x = [1.0, 0.5]
        w1 = [[0.2, 0.8], [0.6, 0.4]]
        w2 = [0.7, 0.3]

        hidden = [sum(a * b for a, b in zip(x, row)) for row in w1]
        output = sum(h * w for h, w in zip(hidden, w2))

        print("Hidden:", [round(v, 3) for v in hidden])
        print("Output:", round(output, 3))
      PYTHON
    },
    14 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Multi-layer Neural Networks",
        image: image_block("deep-learning-14-multilayer.svg", "Multi-layer Neural Networks", "Deeper stacks of layers learn more complex representations."),
        lead: "A multi-layer network stacks several hidden layers so the model can build higher-level features step by step.",
        idea: "Depth lets the network represent more complicated relationships. One layer might detect edges, the next shapes, and the next full objects or concepts.",
        bullets: [
          "More layers can mean more expressive power.",
          "Depth can help discover hierarchy in data.",
          "Training deeper networks requires good optimization choices."
        ],
        flow_steps: [
          { title: "Layer 1", note: "basic signals" },
          { title: "Layer 2", note: "combined patterns" },
          { title: "Layer 3+", note: "higher concepts" }
        ],
        tip: "Deep does not always mean better — useful depth depends on the problem, data, and compute."
      ),
      starter_code: <<~'PYTHON'
        # Multi-layer network dimensions

        architecture = [4, 8, 8, 3]

        print("Network architecture")
        for idx in range(len(architecture) - 1):
            print(f"Layer {idx}: {architecture[idx]} -> {architecture[idx + 1]}")
      PYTHON
    },
    15 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Forward Propagation",
        image: image_block("deep-learning-15-forward-propagation.svg", "Forward Propagation", "Compute outputs by moving through the network from left to right."),
        lead: "Forward propagation is the process of calculating the network's prediction from the current inputs, weights, and biases.",
        idea: "Every layer computes a weighted sum, applies an activation function, and passes the result to the next layer until the final output appears.",
        bullets: [
          "Forward propagation uses the current parameters.",
          "It produces the prediction used for loss calculation.",
          "It happens before backpropagation."
        ],
        flow_steps: [
          { title: "Input", note: "x enters" },
          { title: "Compute z", note: "weighted sum" },
          { title: "Activate", note: "a = f(z)" },
          { title: "Predict", note: "final output" }
        ],
        tip: "If you can trace forward propagation clearly, backpropagation becomes much easier to understand."
      ),
      starter_code: <<~'PYTHON'
        # Forward propagation

        def relu(x):
            return max(0, x)

        x = [0.6, 0.9]
        hidden_weights = [[0.5, 0.1], [0.3, 0.8]]
        output_weights = [0.7, 0.4]

        hidden = [relu(sum(i * w for i, w in zip(x, row))) for row in hidden_weights]
        y_hat = sum(h * w for h, w in zip(hidden, output_weights))

        print("Hidden activations:", [round(v, 3) for v in hidden])
        print("Prediction:", round(y_hat, 3))
      PYTHON
    },
    16 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Backpropagation",
        image: image_block("deep-learning-16-backpropagation.svg", "Backpropagation", "Error signals move backward to tell the model how to improve."),
        lead: "Backpropagation calculates how much each parameter contributed to the error, so the model knows how to update itself.",
        idea: "After forward propagation produces a prediction, backpropagation works backward through the network using gradients. That is how learning signals reach earlier layers.",
        bullets: [
          "Backpropagation computes gradients.",
          "Gradients tell us how loss changes with each parameter.",
          "It is the engine behind learning in neural networks."
        ],
        flow_steps: [
          { title: "Predict", note: "make output" },
          { title: "Measure Error", note: "loss is computed" },
          { title: "Backward Pass", note: "gradients flow back" }
        ],
        tip: "You do not have to memorize every derivative at first — focus on the idea that error information flows backward."
      ),
      starter_code: <<~'PYTHON'
        # Backpropagation intuition

        prediction = 0.82
        target = 1.0
        learning_rate = 0.1
        weight = 0.5
        input_value = 0.9

        error = prediction - target
        gradient = error * input_value
        new_weight = weight - learning_rate * gradient

        print(f"error      = {error:.3f}")
        print(f"gradient   = {gradient:.3f}")
        print(f"old weight = {weight:.3f}")
        print(f"new weight = {new_weight:.3f}")
      PYTHON
    },
    17 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Loss Functions",
        image: image_block("deep-learning-17-loss-functions.svg", "Loss Functions", "The score that tells the model how wrong it is."),
        lead: "A loss function measures the gap between the model's prediction and the correct answer. Lower loss usually means better performance on the training objective.",
        idea: "Different tasks need different losses. Mean squared error is common for regression, while cross-entropy is a standard choice for classification.",
        bullets: [
          "Loss is the training target to minimize.",
          "Regression and classification often use different losses.",
          "Optimization follows the direction that reduces loss."
        ],
        flow_steps: [
          { title: "Prediction", note: "model output" },
          { title: "Compare", note: "against target" },
          { title: "Loss", note: "numeric penalty" }
        ],
        tip: "Always match the loss function to the task — a great architecture with the wrong loss can still learn badly."
      ),
      starter_code: <<~'PYTHON'
        # Loss function examples

        prediction = 0.7
        target = 1.0
        mse = (prediction - target) ** 2

        probs = [0.1, 0.7, 0.2]
        true_class_index = 1
        cross_entropy_like = -1 * __import__('math').log(probs[true_class_index])

        print(f"MSE-like loss: {mse:.4f}")
        print(f"Cross-entropy-like loss: {cross_entropy_like:.4f}")
      PYTHON
    },
    18 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Gradient Descent",
        image: image_block("deep-learning-18-gradient-descent.svg", "Gradient Descent", "The optimization method that updates parameters downhill."),
        lead: "Gradient descent improves the model by moving parameters in the direction that reduces loss.",
        idea: "The gradient tells us the local slope of the loss surface. Gradient descent uses that slope to take a step downhill, then repeats the process over and over.",
        bullets: [
          "Gradient = direction of steepest increase.",
          "We move in the opposite direction to reduce loss.",
          "Repeated updates slowly improve the model."
        ],
        flow_steps: [
          { title: "Compute Gradient", note: "find slope" },
          { title: "Step Downhill", note: "update parameters" },
          { title: "Repeat", note: "optimize further" }
        ],
        tip: "Gradient descent is simple in principle: measure slope, step the other way, and repeat."
      ),
      starter_code: <<~'PYTHON'
        # Gradient descent step

        weight = 1.8
        gradient = 0.35
        learning_rate = 0.1

        new_weight = weight - learning_rate * gradient

        print(f"old weight = {weight}")
        print(f"gradient   = {gradient}")
        print(f"new weight = {new_weight}")
      PYTHON
    },
    19 => {
      body: lesson_body(
        section: "Neural Networks",
        title: "Learning Rate",
        image: image_block("deep-learning-19-learning-rate.svg", "Learning Rate", "The setting that controls how big each update step should be."),
        lead: "The learning rate decides how aggressively the model updates its parameters. Too small can be slow, too large can be unstable.",
        idea: "A tiny learning rate may crawl toward a solution, while a huge one may overshoot the minimum. Good training often depends on choosing or scheduling this value well.",
        bullets: [
          "Small learning rates are stable but slow.",
          "Large learning rates can jump past the optimum.",
          "Schedulers can reduce the learning rate over time."
        ],
        flow_steps: [
          { title: "Gradient", note: "direction found" },
          { title: "Rate", note: "step size chosen" },
          { title: "Update", note: "new parameters" }
        ],
        tip: "When training looks noisy or diverges, the learning rate is one of the first things to adjust."
      ),
      starter_code: <<~'PYTHON'
        # Learning rate comparison

        gradient = 0.5
        weight = 1.0
        rates = [0.01, 0.1, 0.5]

        for rate in rates:
            updated = weight - rate * gradient
            print(f"learning_rate={rate:<4} -> new_weight={updated:.3f}")
      PYTHON
    }
  }.freeze
end

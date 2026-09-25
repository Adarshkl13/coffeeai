require_relative "../deep_learning_content"

DEEP_LEARNING_DESCRIPTION = "Build neural networks from scratch with NumPy — neurons, backpropagation, training loops and optimisers — then move on to PyTorch, CNNs, RNNs, attention, Transformers and transfer learning.".freeze

namespace :content do
  desc "Create Deep Learning course and populate all 20 lessons"
  task deep_learning: :environment do
    asset_helper = ActionController::Base.helpers
    manifest_path = Rails.public_path.join("assets", ".manifest.json")
    manifest_map =
      if File.exist?(manifest_path)
        JSON.parse(File.read(manifest_path))
      else
        {}
      end

    resolve_asset = lambda do |logical_name|
      entry = manifest_map[logical_name]
      digested_name =
        if entry.is_a?(Hash)
          entry["digested_path"]
        elsif entry.is_a?(String)
          entry
        end

      digested_name.present? ? "/assets/#{digested_name}" : asset_helper.asset_path(logical_name)
    end

    course = Course.find_or_create_by!(slug: "deep-learning") do |c|
      c.title = "Deep Learning"
      c.description = DEEP_LEARNING_DESCRIPTION
      c.color = "#8b5cf6"
      c.icon = "🧠"
      c.position = 19
      c.published = true
    end
    course.update!(description: DEEP_LEARNING_DESCRIPTION)
    puts "Course: #{course.title}"

    titles = {
      1 => "What is Deep Learning & Why Now?",
      2 => "The Artificial Neuron",
      3 => "Activation Functions",
      4 => "Building a Layer with NumPy",
      5 => "Forward Pass Through a Network",
      6 => "Loss Functions",
      7 => "Gradient Descent",
      8 => "The Chain Rule & Backpropagation",
      9 => "Training Loop from Scratch",
      10 => "Learning Rate & Optimisers",
      11 => "Overfitting & Regularisation",
      12 => "Weight Initialisation & Batch Normalisation",
      13 => "Introduction to PyTorch",
      14 => "CNNs: Convolution by Hand",
      15 => "CNN Architectures & Image Classification",
      16 => "RNNs & Sequences",
      17 => "Attention",
      18 => "Transformers",
      19 => "Transfer Learning & Pretrained Models",
      20 => "Capstone Project & Review"
    }

    descriptions = {
      1 => "See what deep learning is, how it differs from classic ML, and why data, GPUs and new methods made it take off.",
      2 => "Build a single neuron from weights, bias and an activation, and train a perceptron on the AND gate.",
      3 => "Compare sigmoid, tanh, ReLU and softmax, and see why non-linearity and healthy slopes matter.",
      4 => "Turn many neurons into one matrix multiplication and write a reusable Dense layer in NumPy.",
      5 => "Push a batch of data through a multi-layer network and read its softmax probabilities.",
      6 => "Measure prediction error with MSE, binary cross-entropy and categorical cross-entropy.",
      7 => "Minimise a loss by repeatedly stepping against the gradient, and check gradients numerically.",
      8 => "Use the chain rule to compute every gradient in a network and verify it with a gradient check.",
      9 => "Train a neural network end to end in NumPy with epochs, shuffled mini-batches and backprop.",
      10 => "Tune the learning rate and compare SGD, Momentum and Adam on a narrow valley.",
      11 => "Detect overfitting and fix it with L2 weight decay, dropout and early stopping.",
      12 => "Keep deep networks trainable with Xavier/He initialisation and batch normalisation.",
      13 => "Map everything you built by hand onto PyTorch layers, autograd and optimisers.",
      14 => "Implement 2D convolution, stride, padding and max pooling from scratch to detect edges.",
      15 => "Stack conv blocks into a CNN, meet LeNet to ResNet, and see why pooling handles shifted images.",
      16 => "Process ordered data with a recurrent hidden state and understand vanishing gradients and LSTMs.",
      17 => "Implement scaled dot-product attention with queries, keys, values and causal masks.",
      18 => "Assemble a Transformer block with multi-head attention, positional encoding and residuals.",
      19 => "Reuse a pretrained network as a feature extractor and beat training from scratch on tiny data.",
      20 => "Build a complete digit classifier with Adam and early stopping, then review the whole course."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why did deep learning become practical mainly after about 2012?", opts: ["A) Large datasets, fast GPUs and better training methods came together", "B) Neural networks were first invented in 2012", "C) Newer models stopped needing training data"], ans: "A" },
      2 => { type: "true_false", q: "A single perceptron can learn the XOR function.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "What happens if you stack several layers with no activation function between them?", opts: ["A) They can learn more complex curved boundaries", "B) They collapse into the equivalent of a single linear layer", "C) The forward pass can no longer be computed"], ans: "B" },
      4 => { type: "multiple_choice", q: "A dense layer receives X of shape (32, 10) and has 4 neurons. What is the shape of its weight matrix W in Z = X @ W + b?", opts: ["A) (32, 4)", "B) (4, 10)", "C) (10, 4)"], ans: "C" },
      5 => { type: "true_false", q: "For each example, the probabilities produced by a softmax output layer add up to 1.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "The true label is 1 and the model predicts p = 0.01. What is the binary cross-entropy loss like?", opts: ["A) Very large, because the model is confidently wrong", "B) Close to zero, because 0.01 is a small number", "C) Exactly 0.5, because it is a binary problem"], ans: "A" },
      7 => { type: "true_false", q: "In gradient descent, each weight is moved in the same direction as its gradient.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "For z = w*x + b, a = sigmoid(z) and loss L(a), what is dL/dw by the chain rule?", opts: ["A) dL/da × x", "B) dL/da × da/dz × x", "C) dL/da + da/dz + x"], ans: "B" },
      9 => { type: "true_false", q: "One epoch means the network has processed every training example once.", opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "Your training loss grows every epoch and finally becomes nan. What should you try first?", opts: ["A) Increase the learning rate", "B) Add more hidden layers", "C) Lower the learning rate"], ans: "C" },
      11 => { type: "multiple_choice", q: "Training accuracy is 99% but validation accuracy is 72%. What is happening, and what helps?", opts: ["A) Overfitting; add dropout, L2 regularisation or more data", "B) Underfitting; make the model smaller", "C) The test data is broken; ignore validation accuracy"], ans: "A" },
      12 => { type: "true_false", q: "Initialising all weights to zero works well because every neuron starts from the same fair point.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "In a PyTorch training loop, what does loss.backward() do?", opts: ["A) Updates the weights using the learning rate", "B) Computes the gradient of the loss for every parameter using autograd", "C) Resets all stored gradients to zero"], ans: "B" },
      14 => { type: "multiple_choice", q: "An 8×8 image is convolved with a 3×3 kernel using padding 1 and stride 2. What is the output size?", opts: ["A) 6×6", "B) 8×8", "C) 4×4"], ans: "C" },
      15 => { type: "true_false", q: "A convolutional layer usually needs far fewer parameters than a dense layer on the same image, because each filter is shared across all positions.", opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Why does a simple RNN struggle to remember information from early in a long sentence?", opts: ["A) Gradients shrink as they are multiplied back through many time steps", "B) It can only read sentences shorter than ten words", "C) Its weights change at every time step, so it loses them"], ans: "A" },
      17 => { type: "true_false", q: "In attention, the scores are divided by √d_k so that each row of attention weights adds up to more than 1.", opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "Why do Transformers add positional encodings to the token embeddings?", opts: ["A) To make the vocabulary smaller", "B) Because attention by itself does not know the order of tokens", "C) To replace the softmax in the attention layer"], ans: "B" },
      19 => { type: "true_false", q: "In transfer learning by feature extraction, you freeze the pretrained layers and train only a new output head.", opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "In the capstone project, what does early stopping do?", opts: ["A) Stops as soon as training accuracy reaches 100%", "B) Stops at the first epoch where the training loss rises slightly", "C) Stops when validation loss has not improved for a set number of epochs and restores the best weights"], ans: "C" }
    }

    removed = CourseLesson.where(course: course).where("position > ?", DeepLearningContent::LESSONS.size)
    removed.each { |old| puts "  ✗ removing old lesson #{old.position}. #{old.title}" }
    removed.destroy_all

    DeepLearningContent::LESSONS.each do |position, data|
      resolved_body = data[:body].gsub(%r{/assets/([^"'\s>]+)}) do
        resolve_asset.call(Regexp.last_match(1))
      end

      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title: titles.fetch(position),
        description: descriptions.fetch(position),
        body: resolved_body,
        starter_code: data[:starter_code]
      )

      ex = exercises.fetch(position)
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]
        e.question = ex[:q]
        e.options = ex[:opts]
        e.correct_answer = ex[:ans]
      end.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    total_lessons = CourseLesson.where(course: course).count
    total_exercises = Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count
    puts "Done! #{total_lessons} lessons, #{total_exercises} exercises."
  end
end

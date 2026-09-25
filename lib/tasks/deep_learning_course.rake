require_relative "../deep_learning_content"

DEEP_LEARNING_DESCRIPTION = "Build neural networks from scratch with NumPy — neurons, backpropagation, training loops and optimisers — then move on to PyTorch, CNNs, object detection, RNNs, attention, Transformers, transfer learning, generative models and large language models.".freeze

namespace :content do
  desc "Create Deep Learning course and populate all 22 lessons"
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
      4 => "Layers & the Forward Pass",
      5 => "Loss Functions",
      6 => "Gradient Descent",
      7 => "The Chain Rule & Backpropagation",
      8 => "Training Loop from Scratch",
      9 => "Learning Rate & Optimisers",
      10 => "Overfitting & Regularisation",
      11 => "Weight Initialisation & Batch Normalisation",
      12 => "Introduction to PyTorch",
      13 => "CNNs: Convolution by Hand",
      14 => "CNN Architectures & Image Classification",
      15 => "Object Detection & Segmentation",
      16 => "RNNs, LSTMs & Sequences",
      17 => "Attention",
      18 => "Transformers",
      19 => "Transfer Learning & Pretrained Models",
      20 => "Generative Models: Autoencoders, GANs & Diffusion",
      21 => "Large Language Models",
      22 => "Capstone Project & Review"
    }

    descriptions = {
      1 => "See what deep learning is, how it differs from classic ML, and why data, GPUs and new methods made it take off.",
      2 => "Build a single neuron from weights, bias and an activation, and train a perceptron on the AND gate.",
      3 => "Compare sigmoid, tanh, ReLU, GELU and softmax, and see why non-linearity and healthy slopes matter.",
      4 => "Turn many neurons into one matrix multiplication, stack layers, and push a batch through to softmax probabilities.",
      5 => "Measure prediction error with MSE, binary cross-entropy and categorical cross-entropy, and know their gradients.",
      6 => "Minimise a loss by repeatedly stepping against the gradient, choose a learning rate, and check gradients numerically.",
      7 => "Use the chain rule to derive every gradient in a network, in matrix form, and verify it with a gradient check.",
      8 => "Train a neural network end to end in NumPy with epochs, shuffled mini-batches, backprop and validation monitoring.",
      9 => "Tune the learning rate and compare SGD, Momentum, RMSProp, Adam and AdamW, plus warm-up and cosine schedules.",
      10 => "Detect overfitting and fix it with weight decay, dropout, early stopping and data augmentation.",
      11 => "Keep deep networks trainable with Xavier/He initialisation, batch normalisation and layer normalisation.",
      12 => "Map everything you built by hand onto PyTorch tensors, autograd, nn.Module, DataLoader and optimisers.",
      13 => "Implement 2D convolution, stride, padding and max pooling from scratch, and compute output sizes.",
      14 => "Stack conv blocks into a CNN, count parameters, and meet LeNet, AlexNet, VGG, ResNet and Vision Transformers.",
      15 => "Find objects with bounding boxes, IoU and non-maximum suppression, and label every pixel with segmentation masks.",
      16 => "Process ordered data with a recurrent hidden state, and understand vanishing gradients, clipping and LSTM gates.",
      17 => "Implement scaled dot-product attention with queries, keys, values and masks, and see why scores are divided by √d_k.",
      18 => "Assemble a pre-norm Transformer block with multi-head attention, positional encodings, residuals and layer norm.",
      19 => "Reuse a pretrained network as a frozen feature extractor or fine-tune it, and beat training from scratch on tiny data.",
      20 => "Learn how autoencoders, VAEs, GANs, diffusion models and LLMs generate data, and run the diffusion noising formula.",
      21 => "See how LLMs are tokenised, pretrained and tuned into assistants, how temperature and top-p pick words, and how LoRA adapts them.",
      22 => "Build a complete digit classifier with Adam, L2 and early stopping, then review the whole course."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "You have a spreadsheet of 800 loan applications with 12 numeric columns. Which approach should you usually try first?", opts: ["A) A deep neural network with many hidden layers, because deep learning is always more accurate", "B) A classic ML model such as gradient boosting or a random forest", "C) A convolutional neural network, because it needs the fewest parameters"], ans: "B" },
      2 => { type: "true_false", q: "A single perceptron trained long enough with the perceptron rule will eventually learn the XOR function.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "You stack three dense layers but forget to put any activation function between them. What have you built?", opts: ["A) A network that can learn curved decision boundaries but trains more slowly", "B) A network that cannot compute a forward pass at all", "C) The equivalent of a single linear layer"], ans: "C" },
      4 => { type: "multiple_choice", q: "A dense layer receives X of shape (32, 10) and has 4 neurons. What is the shape of W in Z = X @ W + b?", opts: ["A) (10, 4)", "B) (32, 4)", "C) (4, 10)"], ans: "A" },
      5 => { type: "true_false", q: "For a 10-class classifier with random weights, a first cross-entropy loss of about 2.3 is a sign the code is probably correct.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "At w = 5 the gradient of the loss is +4 and the learning rate is 0.1. What is w after one gradient descent step?", opts: ["A) 5.4, because we move in the direction of the gradient", "B) 1.0, because the gradient replaces the weight", "C) 4.6"], ans: "C" },
      7 => { type: "multiple_choice", q: "For a dense layer Z = A_prev @ W + b, with dZ known, which line correctly computes the gradient of W?", opts: ["A) dW = dZ @ W.T", "B) dW = A_prev @ dZ.T, then transpose the result to match W", "C) dW = A_prev.T @ dZ"], ans: "C" },
      8 => { type: "true_false", q: "With 1,000 training examples and a batch size of 50, one epoch performs 50 weight updates.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Your training loss grows every epoch and finally becomes nan. What should you try first?", opts: ["A) Add more hidden layers so the model has more capacity", "B) Lower the learning rate, for example divide it by 10", "C) Train for more epochs so the loss has time to settle"], ans: "B" },
      10 => { type: "multiple_choice", q: "Training accuracy is 99% but validation accuracy is 72%. Which change is most likely to help?", opts: ["A) Make the network bigger and train it for longer", "B) Add dropout or weight decay, or collect more data", "C) Evaluate on the training set instead, since it is larger"], ans: "B" },
      11 => { type: "true_false", q: "At evaluation time (model.eval()), batch normalisation uses running averages collected during training instead of the current batch's mean and variance.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "A PyTorch training loop calls loss.backward() and optimizer.step() every batch but never calls optimizer.zero_grad(). What goes wrong?", opts: ["A) Gradients from earlier batches keep adding up, so the updates are wrong", "B) loss.backward() raises an error on the second batch", "C) Nothing, because PyTorch clears gradients automatically after each step"], ans: "A" },
      13 => { type: "multiple_choice", q: "An 8×8 image is convolved with a 3×3 kernel using padding 1 and stride 2. What is the output size?", opts: ["A) 4×4", "B) 8×8", "C) 6×6"], ans: "A" },
      14 => { type: "true_false", q: "In a ResNet block, the skip connection output = F(x) + x makes very deep networks harder to train, because gradients must pass through more additions.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "Two boxes are each 10×10 pixels and overlap in a region 5 pixels wide and 10 pixels tall. What is their IoU?", opts: ["A) About 0.33", "B) 0.50", "C) 0.25"], ans: "A" },
      16 => { type: "multiple_choice", q: "In an LSTM, what does a forget gate value close to 1 mean for the cell state?", opts: ["A) The cell state is erased and replaced by the new input", "B) Most of the previous cell state is kept", "C) The hidden state is hidden from the next layer"], ans: "B" },
      17 => { type: "multiple_choice", q: "Why is Q·Kᵀ divided by √d_k in scaled dot-product attention?", opts: ["A) Because softmax cannot make each row of weights sum to exactly 1 unless the scores are first divided by √d_k", "B) To make the attention matrix symmetric", "C) Dot products grow with d_k, and large scores make softmax nearly one-hot with tiny gradients"], ans: "C" },
      18 => { type: "true_false", q: "Without positional encodings, an encoder's unmasked self-attention (as in BERT) has no way to tell 'dog bites man' from 'man bites dog'.", opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "You have 300 labelled photos of three crop diseases. What is the best starting point?", opts: ["A) A pretrained ResNet with a new 3-class head, training the head first", "B) A new CNN trained from random weights with a large learning rate", "C) Fine-tuning every layer of a pretrained ResNet with a learning rate 10× larger than usual"], ans: "A" },
      20 => { type: "multiple_choice", q: "During training, what does the neural network in a diffusion model learn to predict?", opts: ["A) The class label of the clean image", "B) The next pixel, one pixel at a time from the top left", "C) The noise that was added to create x_t"], ans: "C" },
      21 => { type: "true_false", q: "Lowering the sampling temperature from 1.0 to 0.2 makes an LLM's next-token choices more varied and surprising.", opts: ["True", "False"], ans: "False" },
      22 => { type: "multiple_choice", q: "In the capstone, what does early stopping do?", opts: ["A) Stops as soon as training accuracy reaches 100%", "B) Stops when validation loss has not improved for 5 checks, then restores the best weights", "C) Stops at the very first epoch in which the training loss rises even slightly above its previous value"], ans: "B" }
    }

    # Never delete lessons (learner progress hangs off them); just warn about extra rows.
    extra = CourseLesson.where(course: course).where.not(position: DeepLearningContent::LESSONS.keys)
    extra.each { |old| puts "  ! lesson #{old.position}. #{old.title} is not in DeepLearningContent (left untouched)" }

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

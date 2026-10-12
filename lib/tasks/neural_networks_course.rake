require_relative "../neural_networks_content"

namespace :content do
  desc "Create Neural Networks course and populate all 18 lessons"
  task neural_networks: :environment do
    description = "Learn how neural networks work from the ground up. Start with one neuron, add layers, and see how a network learns with forward propagation, loss, backpropagation and gradient descent. Build a network in pure Python, then in PyTorch, and finish with a handwritten digit recogniser."
    course = Course.find_or_create_by!(slug: "neural-networks") do |c|
      c.title       = "Neural Networks"
      c.description = description
      c.color       = "#8b5cf6"
      c.icon        = "🕸️"
      c.position    = 109
      c.published   = true
    end
    course.update!(title: "Neural Networks", description: description)
    puts "Course: #{course.title}"

    titles = {
      1 => "What is a Neural Network?",
      2 => "How the Human Brain Inspired AI",
      3 => "The Perceptron",
      4 => "Neurons, Weights and Biases",
      5 => "Activation Functions (Sigmoid, ReLU, Tanh)",
      6 => "Layers: Input, Hidden, Output",
      7 => "Math Basics: Vectors and Matrices",
      8 => "Forward Propagation",
      9 => "Loss Functions",
      10 => "Derivatives and the Chain Rule (Simple Intro)",
      11 => "Backpropagation",
      12 => "Gradient Descent",
      13 => "Learning Rate Explained",
      14 => "Build a Neural Network in Pure Python",
      15 => "Build a Neural Network with PyTorch",
      16 => "Classification vs Regression",
      17 => "Overfitting, Underfitting and Regularization",
      18 => "Project: Handwritten Digit Recognizer"
    }

    descriptions = {
      1 => "Learn what a neural network is, how numbers flow from inputs to outputs, and why it learns from examples instead of rules.",
      2 => "See how real brain cells inspired the artificial neuron, and where the comparison breaks down.",
      3 => "Train Rosenblatt's perceptron on AND and OR with the perceptron rule, and see why it cannot learn XOR.",
      4 => "Work out the weighted sum z = w·x + b by hand, learn what weights and biases do, and count a layer's parameters.",
      5 => "Meet sigmoid, tanh and ReLU, see why a network needs non-linearity, and use softmax for outputs.",
      6 => "Learn input, hidden and output layers, count the parameters of dense layers, and solve XOR with one hidden layer.",
      7 => "Use vectors, dot products and matrix products in NumPy, and learn the shape rule for a batch.",
      8 => "Push a batch through a 2-3-1 network step by step, checking every number and shape in NumPy.",
      9 => "Measure how wrong a network is with mean squared error and cross-entropy, worked out by hand with real numbers.",
      10 => "Learn derivatives as slopes, check them with numbers, and use the chain rule to find the slope of a chain of steps.",
      11 => "Compute gradients layer by layer from the loss back to the first layer, and check them with numeric gradients.",
      12 => "Use the update rule w -= lr * grad, compare batch, mini-batch and stochastic steps, and watch the loss go down in a training loop.",
      13 => "See what happens when the learning rate is too small, about right or too large, with a printed loss table.",
      14 => "Build a complete 2-16-1 network with only NumPy: initialise, forward, loss, backward and update, then measure accuracy on the moons data.",
      15 => "Build the same moons network in PyTorch with nn.Module, nn.Linear, a loss function, an optimizer and autograd.",
      16 => "Choose the right output layer, loss and metrics for classification (softmax and cross-entropy) and regression (linear output and MSE).",
      17 => "Spot overfitting and underfitting with training and validation loss curves, and fix overfitting with L2, dropout, early stopping and more data.",
      18 => "Build a handwritten digit recogniser with scikit-learn's 8x8 digits, read its confusion matrix, and see the PyTorch MNIST version."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "How does a neural network learn to do a task?", opts: ["A) A programmer writes a rule for every possible input", "B) It adjusts its weights after comparing its answers with many labelled examples", "C) It looks up the answer in a database of stored inputs"], ans: "B" },
      2 => { type: "true_false", q: "An artificial neuron works just like a real brain neuron, including the way it learns.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Why can a single perceptron not learn XOR?", opts: ["A) XOR needs more than two inputs", "B) The learning rate is always too small for XOR", "C) No single straight line can separate the 1s of XOR from its 0s"], ans: "C" },
      4 => { type: "multiple_choice", q: "A neuron has inputs x = [2, 1], weights w = [0.5, 3] and bias b = -1. What is z?", opts: ["A) 3", "B) 4", "C) 2.5", "D) 5.5"], ans: "A" },
      5 => { type: "multiple_choice", q: "What happens if you stack two layers with no activation function between them?", opts: ["A) The network can now learn any curved pattern", "B) The two layers act like one single straight-line layer", "C) All the outputs become numbers between 0 and 1"], ans: "B" },
      6 => { type: "multiple_choice", q: "A dense layer has 4 inputs and 3 units. How many parameters does it have?", opts: ["A) 7", "B) 12", "C) 15", "D) 16"], ans: "C" },
      7 => { type: "true_false", q: "In NumPy, a matrix with shape (4, 3) @ a matrix with shape (2, 3) gives a result with shape (4, 2).", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "A batch X with shape (3, 2) goes through a 2-3-1 network. What is the shape of the output ŷ?", opts: ["A) (3, 1)", "B) (2, 1)", "C) (1, 3)"], ans: "A" },
      9 => { type: "multiple_choice", q: "A network must decide if each email is spam or not spam. Which loss function fits this task best?", opts: ["A) Mean squared error, because the output is a number", "B) Cross-entropy, because the network predicts a probability for each class", "C) No loss is needed, because the labels are only 0 or 1"], ans: "B" },
      10 => { type: "multiple_choice", q: "For y = (2x + 1)² at x = 1, the slope of u = 2x + 1 is 2 and the slope of y = u² is 6. What does the chain rule give for dy/dx?", opts: ["A) 8, because you add the slopes", "B) 3, because you divide the slopes", "C) 12, because you multiply the slopes"], ans: "C" },
      11 => { type: "true_false", q: "Backpropagation starts at the loss and moves backwards through the network, using the chain rule to find the gradient for every weight and bias.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "A weight has a gradient of 4 and the learning rate is 0.1. What does gradient descent do to this weight?", opts: ["A) It makes the weight 0.4 smaller", "B) It makes the weight 0.4 bigger", "C) It sets the weight to 4"], ans: "A" },
      13 => { type: "multiple_choice", q: "During training, the loss goes 0.7, 1.9, 6.4, 40.2. What is the most likely problem?", opts: ["A) The learning rate is too small", "B) The learning rate is too large", "C) The network has too few epochs"], ans: "B" },
      14 => { type: "true_false", q: "In a network built by hand, each gradient such as dW1 has the same shape as the weight it updates.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "In a PyTorch training loop, which line works out the gradients for every weight?", opts: ["A) optimizer.step()", "B) optimizer.zero_grad()", "C) loss.backward()"], ans: "C" },
      16 => { type: "multiple_choice", q: "Maya's network predicts delivery time in minutes. What should its output layer and loss be?", opts: ["A) 10 units with softmax, and cross-entropy loss", "B) 1 unit with sigmoid, and binary cross-entropy loss", "C) 1 unit with no activation, and mean squared error loss"], ans: "C" },
      17 => { type: "multiple_choice", q: "Training loss keeps going down, but validation loss starts to go up. What is happening?", opts: ["A) The network is overfitting the training data", "B) The network is underfitting and needs more epochs", "C) The learning rate is exactly right"], ans: "A" },
      18 => { type: "true_false", q: "In a confusion matrix, the numbers on the diagonal are the images the network classified correctly.", opts: ["True", "False"], ans: "True" }
    }

    NeuralNetworksContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code])

      e = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |x|
        x.exercise_type = e[:type]; x.question = e[:q]
        x.options = e[:opts]; x.correct_answer = e[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end
    course.course_lessons.where("position > ?", 18).destroy_all

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

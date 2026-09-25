require_relative "../deep_learning_content"

namespace :content do
  desc "Create Deep Learning course and populate all 19 lessons"
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
      c.description = "Build deep learning intuition from fundamentals to neural networks, forward and backward propagation, loss functions, and optimization."
      c.color = "#8b5cf6"
      c.icon = "🧠"
      c.position = 19
      c.published = true
    end
    puts "Course: #{course.title}"

    titles = {
      1 => "Introduction to Deep Learning",
      2 => "History of Deep Learning",
      3 => "AI vs ML vs Deep Learning",
      4 => "Deep Learning Workflow",
      5 => "Real-world Applications",
      6 => "Biological Neurons vs Artificial Neurons",
      7 => "Perceptron",
      8 => "Activation Functions",
      9 => "Input Layer",
      10 => "Hidden Layers",
      11 => "Output Layer",
      12 => "Weights & Bias",
      13 => "Feedforward Networks",
      14 => "Multi-layer Neural Networks",
      15 => "Forward Propagation",
      16 => "Backpropagation",
      17 => "Loss Functions",
      18 => "Gradient Descent",
      19 => "Learning Rate"
    }

    descriptions = {
      1 => "Understand what deep learning is and why layered models matter.",
      2 => "See how deep learning evolved from early neuron ideas to today.",
      3 => "Compare the scope of AI, ML, and deep learning clearly.",
      4 => "Learn the end-to-end workflow for deep learning projects.",
      5 => "Explore how deep learning is used in products and research.",
      6 => "Compare biological neurons with their artificial counterparts.",
      7 => "Learn how the perceptron makes a simple binary decision.",
      8 => "Understand why activation functions make networks expressive.",
      9 => "See how the input layer receives features from raw data.",
      10 => "Understand how hidden layers learn richer representations.",
      11 => "Learn how the output layer produces the final prediction.",
      12 => "Master the role of weights and bias in each neuron.",
      13 => "See how information moves through a feedforward network.",
      14 => "Understand why more layers help model complex patterns.",
      15 => "Follow the full path of values during forward propagation.",
      16 => "Learn how backpropagation sends learning signals backward.",
      17 => "Understand how loss functions measure prediction quality.",
      18 => "Learn how gradient descent updates model parameters.",
      19 => "See how learning rate controls the speed of training."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What is deep learning mainly built on?", opts: ["A) Decision trees", "B) Multi-layer neural networks", "C) Hard-coded rules"], ans: "B" },
      2 => { type: "true_false", q: "Modern deep learning became practical partly because of GPUs and large datasets.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "Which is the most specific term?", opts: ["A) AI", "B) Machine Learning", "C) Deep Learning"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which step usually comes after training a model?", opts: ["A) Evaluating the model", "B) Deleting the data", "C) Removing layers"], ans: "A" },
      5 => { type: "true_false", q: "Deep learning is commonly used for images, audio, and language tasks.", opts: ["True", "False"], ans: "True" },
      6 => { type: "multiple_choice", q: "An artificial neuron mainly does what?", opts: ["A) Grows new cells", "B) Combines inputs with weights and an activation", "C) Stores files"], ans: "B" },
      7 => { type: "multiple_choice", q: "What kind of problem was the perceptron originally designed for?", opts: ["A) Binary classification", "B) Video rendering", "C) Database indexing"], ans: "A" },
      8 => { type: "multiple_choice", q: "Why do we use activation functions?", opts: ["A) To add non-linearity", "B) To store more data", "C) To remove weights"], ans: "A" },
      9 => { type: "true_false", q: "The input layer receives the features that go into the network.", opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "What do hidden layers mainly learn?", opts: ["A) Intermediate patterns", "B) Browser settings", "C) Table names"], ans: "A" },
      11 => { type: "multiple_choice", q: "What does the output layer provide?", opts: ["A) The final prediction", "B) The training dataset", "C) The GPU driver"], ans: "A" },
      12 => { type: "true_false", q: "Weights control the importance of inputs, while bias shifts the neuron response.", opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "A feedforward network sends information:", opts: ["A) Only forward through layers", "B) Randomly between all layers", "C) Directly to the loss function"], ans: "A" },
      14 => { type: "multiple_choice", q: "Why are multi-layer networks powerful?", opts: ["A) They learn hierarchical features", "B) They remove all parameters", "C) They avoid training"], ans: "A" },
      15 => { type: "true_false", q: "Forward propagation means computing outputs from input to prediction.", opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Backpropagation is used to:", opts: ["A) Send error information backward", "B) Download new data", "C) Draw the network graph"], ans: "A" },
      17 => { type: "multiple_choice", q: "What does a loss function measure?", opts: ["A) Prediction error", "B) Screen brightness", "C) Number of hidden layers only"], ans: "A" },
      18 => { type: "true_false", q: "Gradient descent updates parameters to reduce the loss.", opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "If the learning rate is too large, training may:", opts: ["A) Become unstable and overshoot", "B) Always finish perfectly", "C) Remove the need for data"], ans: "A" }
    }

    DeepLearningContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]
        l.description = descriptions[position]
      end

      resolved_body = data[:body].gsub(%r{/assets/([^"'\s>]+)}) do
        resolve_asset.call(Regexp.last_match(1))
      end

      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: resolved_body,
        starter_code: data[:starter_code]
      )

      ex = exercises[position]
      exercise = Exercise.find_by(course_lesson: lesson) || lesson.build_exercise
      exercise.assign_attributes(
        exercise_type: ex[:type],
        question: ex[:q],
        options: ex[:opts],
        correct_answer: ex[:ans]
      )
      exercise.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    total_lessons = CourseLesson.where(course: course).count
    total_exercises = Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count
    puts "Done! #{total_lessons} lessons, #{total_exercises} exercises."
  end
end

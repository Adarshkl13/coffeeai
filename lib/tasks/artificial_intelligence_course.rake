require_relative "../artificial_intelligence_content"

namespace :content do
  desc "Create Artificial Intelligence course and populate all 20 lessons"
  task artificial_intelligence: :environment do
    course = Course.find_or_create_by!(slug: "artificial-intelligence") do |c|
      c.title       = "Artificial Intelligence"
      c.description = "Explore the full landscape of AI — from search algorithms to deep learning, LLMs, and ethics. Understand how machines think and where AI is heading."
      c.color       = "#6366f1"
      c.icon        = "🧠"
      c.position    = 5
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "What is AI? A Short History",
      2  => "Intelligent Agents and Environments",
      3  => "Problem Solving as Search",
      4  => "Uninformed Search: BFS and DFS",
      5  => "Heuristic Search and A*",
      6  => "Game Playing and Minimax",
      7  => "Knowledge Representation and Logic",
      8  => "Rule-Based and Expert Systems",
      9  => "Uncertainty, Probability and Bayes' Rule",
      10 => "Naive Bayes Classifier",
      11 => "How AI Learns: Intro to Machine Learning",
      12 => "Neural Networks: The Intuition",
      13 => "Natural Language Processing Basics",
      14 => "How Large Language Models Work",
      15 => "Prompting and AI Assistants",
      16 => "AI Agents and Tool Use",
      17 => "Computer Vision Basics",
      18 => "AI Ethics, Bias and Fairness",
      19 => "AI Safety, Privacy and Regulation",
      20 => "The Future of AI and Course Review"
    }

    descriptions = {
      1  => "Learn what AI is, how it relates to machine learning and deep learning, and how the field grew from 1950 to today's AI agents.",
      2  => "Understand agents that perceive and act, describe tasks with PEAS, and compare reflex, model-based, goal-based and learning agents.",
      3  => "Formulate problems with states, actions, goal tests and path costs, and solve the water jug puzzle by systematic search.",
      4  => "Compare Breadth-First and Depth-First Search by finding routes on a simplified Karnataka road map.",
      5  => "Use heuristics to guide search and implement A* to plan a robot's path on a grid.",
      6  => "Build an unbeatable tic-tac-toe player with minimax and speed it up with alpha-beta pruning.",
      7  => "Represent knowledge with propositional logic and infer new facts using model checking and forward chaining.",
      8  => "Build a small crop-disease expert system with IF-THEN rules, an inference engine and explanations.",
      9  => "Reason under uncertainty with probability and use Bayes' rule to see why most UPI fraud alarms are false alarms.",
      10 => "Build an SMS spam filter from scratch with Naive Bayes, Laplace smoothing and log-probabilities.",
      11 => "See how machines learn from examples by fitting a rent-prediction model with gradient descent.",
      12 => "Understand neurons, layers and backpropagation, and train a tiny neural network to solve XOR.",
      13 => "Learn tokenisation, stopwords, stemming and bag-of-words, and match railway questions to FAQ answers.",
      14 => "Understand tokens, next-token prediction, transformers and attention by building a toy bigram language model.",
      15 => "Write clear prompts with role, context, task, format and constraints, and use AI assistants responsibly.",
      16 => "Learn how AI agents plan, call tools, observe results and stay safe with guardrails, using a simulated agent loop.",
      17 => "Discover how computers see images as numbers, apply convolution filters and understand CNNs.",
      18 => "Find where AI bias comes from and measure fairness on a loan-approval dataset.",
      19 => "Explore AI safety risks, privacy protection, and current AI rules in India and the EU AI Act.",
      20 => "Review every technique in the course, look at where AI is heading, and plan your next steps."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which statement best describes how AI, machine learning and deep learning are related?",
              opts: ["A) Deep learning is a part of machine learning, which is a part of AI", "B) AI is a part of deep learning, which is a part of machine learning", "C) They are three separate fields with no overlap"], ans: "A" },
      2  => { type: "true_false",      q: "A simple reflex agent chooses its action using only the current percept, without any memory of the past.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "In the 4-litre and 3-litre water jug puzzle, what is a good description of a state?",
              opts: ["A) The number of actions taken so far", "B) The litres in each jug, for example (4, 0)", "C) The goal of measuring 2 litres"], ans: "B" },
      4  => { type: "true_false",      q: "Depth-First Search always finds the route with the fewest roads between two cities.",
              opts: ["True", "False"], ans: "False" },
      5  => { type: "multiple_choice", q: "A* search chooses which node to expand next using:",
              opts: ["A) Only g(n), the cost so far", "B) Only h(n), the estimated cost to the goal", "C) f(n) = g(n) + h(n)"], ans: "C" },
      6  => { type: "multiple_choice", q: "Compared with plain minimax, what does alpha-beta pruning do?",
              opts: ["A) Finds a better move than minimax can", "B) Gives the same move while searching fewer positions", "C) Assumes the opponent plays randomly"], ans: "B" },
      7  => { type: "true_false",      q: "The implication A ⇒ B is false when A is false and B is true.",
              opts: ["True", "False"], ans: "False" },
      8  => { type: "multiple_choice", q: "Which part of an expert system applies the rules to the known facts to reach conclusions?",
              opts: ["A) The inference engine", "B) The user interface", "C) The explanation facility"], ans: "A" },
      9  => { type: "multiple_choice", q: "Only 1 in 1000 payments is fraud, and an accurate fraud alarm rings. Why can the chance of real fraud still be low?",
              opts: ["A) Bayes' rule does not apply to payments", "B) The alarm misses most fraud cases", "C) Genuine payments are so common that false alarms outnumber real frauds"], ans: "C" },
      10 => { type: "true_false",      q: "Naive Bayes assumes the words in a message are independent of each other once the class is known.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "A model scores very well on its training data but poorly on new data. This is called:",
              opts: ["A) Overfitting", "B) Underfitting", "C) Regularisation"], ans: "A" },
      12 => { type: "true_false",      q: "A single perceptron (one neuron with a step activation) can learn the XOR function.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Which information does a bag-of-words representation throw away?",
              opts: ["A) Which words appear in the text", "B) The order of the words", "C) How many times each word appears"], ans: "B" },
      14 => { type: "multiple_choice", q: "At its core, what does a large language model do when it generates an answer?",
              opts: ["A) Looks up a stored answer in a database", "B) Copies the most similar web page", "C) Repeatedly predicts the next token"], ans: "C" },
      15 => { type: "true_false",      q: "Giving an assistant a document and asking it to answer only from that text can reduce hallucinations.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "In a tool-using AI agent, who actually runs a tool such as a train search?",
              opts: ["A) The developer's program, after the model requests the tool call", "B) The language model, inside its own weights", "C) The user, who must type every result by hand"], ans: "A" },
      17 => { type: "true_false",      q: "A colour image is stored as a grid of numbers with separate red, green and blue channels.",
              opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "A loan model approves 30% of rural applicants and 80% of urban applicants. What is the disparate impact ratio?",
              opts: ["A) About 0.80", "B) About 1.00", "C) About 0.38"], ans: "C" },
      19 => { type: "true_false",      q: "India has passed a single comprehensive AI law that works like the EU AI Act.",
              opts: ["True", "False"], ans: "False" },
      20 => { type: "multiple_choice", q: "Which technique best fits finding the shortest route for an ambulance on a city map?",
              opts: ["A) Naive Bayes", "B) A* search", "C) Minimax"], ans: "B" }
    }

    ArtificialIntelligenceContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

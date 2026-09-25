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
      4  => "Uninformed Search: BFS, DFS and UCS",
      5  => "Heuristic Search and A*",
      6  => "Local Search and Optimisation",
      7  => "Constraint Satisfaction Problems",
      8  => "Game Playing: Minimax and Alpha-Beta Pruning",
      9  => "Knowledge Representation and Logic",
      10 => "Expert Systems and Classical Planning",
      11 => "Uncertainty, Probability and Bayes' Rule",
      12 => "Naive Bayes Classifier",
      13 => "Reinforcement Learning: MDPs, Value Iteration and Q-Learning",
      14 => "Learning from Data: ML and Neural Networks",
      15 => "Natural Language Processing Basics",
      16 => "How Large Language Models Work",
      17 => "AI Agents and Tool Use",
      18 => "Computer Vision Basics",
      19 => "AI Ethics, Safety and Regulation",
      20 => "Capstone Project and Course Review"
    }

    descriptions = {
      1  => "Learn what AI is, how it relates to machine learning and deep learning, and how the field grew from 1950 to today's AI agents.",
      2  => "Understand agents that perceive and act, describe tasks with PEAS, and compare reflex, model-based, goal-based and learning agents.",
      3  => "Formulate problems with states, actions, goal tests and path costs, and solve the water jug puzzle by systematic search.",
      4  => "Compare Breadth-First, Depth-First and Uniform-Cost Search by finding routes on a simplified Karnataka road map.",
      5  => "Use admissible heuristics to guide search and implement A* to plan a robot's path on a grid.",
      6  => "Solve the 8-queens puzzle with hill climbing, random restarts and simulated annealing.",
      7  => "Model problems as variables, domains and constraints, and colour a map of Indian states with backtracking, MRV and forward checking.",
      8  => "Build an unbeatable tic-tac-toe player with minimax and speed it up with alpha-beta pruning.",
      9  => "Represent knowledge with propositional logic and infer new facts using model checking and forward chaining.",
      10 => "Build a small crop-disease expert system with IF-THEN rules and explanations, then plan a farm robot's actions with STRIPS-style classical planning.",
      11 => "Reason under uncertainty with probability, use Bayes' rule to see why most UPI fraud alarms are false alarms, and query a small Bayesian network.",
      12 => "Build an SMS spam filter from scratch with Naive Bayes, Laplace smoothing and log-probabilities.",
      13 => "Describe problems as Markov decision processes, solve a delivery grid with value iteration, then learn the same grid with tabular Q-learning.",
      14 => "See how machines learn from examples with gradient descent, and why a hidden layer lets a neural network solve XOR.",
      15 => "Learn tokenisation, stopwords, stemming and bag-of-words, and match railway questions to FAQ answers.",
      16 => "Understand tokens, next-token prediction, temperature, transformers and prompting by building a toy bigram language model.",
      17 => "Learn how AI agents plan, call tools, observe results and stay safe with guardrails, using a simulated agent loop.",
      18 => "Discover how computers see images as numbers, apply convolution filters and understand CNNs.",
      19 => "Measure bias in a loan model, protect personal data, and understand AI rules in India and the EU AI Act.",
      20 => "Build an ambulance route planner that combines learning, uncertainty and A* search, then review the whole course."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which statement best describes how AI, machine learning and deep learning are related?",
              opts: ["A) Deep learning is part of ML, which is part of AI", "B) ML is part of deep learning, which is part of AI", "C) They are three separate fields with no overlap"], ans: "A" },
      2  => { type: "true_false",      q: "A simple reflex agent chooses its action using only the current percept, without any memory of the past.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "In the 4-litre and 3-litre water jug puzzle, what is a good description of a state?",
              opts: ["A) The number of actions taken so far", "B) The litres in each jug, for example (4, 0)", "C) The goal of measuring 2 litres"], ans: "B" },
      4  => { type: "true_false",      q: "On a map where roads have different lengths, Breadth-First Search always finds the route with the fewest kilometres.",
              opts: ["True", "False"], ans: "False" },
      5  => { type: "multiple_choice", q: "Your A* heuristic sometimes overestimates the real remaining cost. What can go wrong?",
              opts: ["A) A* may return a path that is not the cheapest", "B) A* will stop without finding any path", "C) A* behaves exactly like Depth-First Search instead"], ans: "A" },
      6  => { type: "multiple_choice", q: "Hill climbing on 8-queens stops with 2 pairs of queens still attacking. What is the most likely reason?",
              opts: ["A) The 8-queens puzzle has no solution", "B) It reached a local optimum", "C) Its heuristic was admissible"], ans: "B" },
      7  => { type: "true_false",      q: "With forward checking, a CSP solver backtracks as soon as some unassigned variable has no legal values left.",
              opts: ["True", "False"], ans: "True" },
      8  => { type: "multiple_choice", q: "Compared with plain minimax, what does alpha-beta pruning do?",
              opts: ["A) Finds a stronger move than plain minimax ever could", "B) Same move, fewer positions searched", "C) Assumes the opponent picks its moves at random"], ans: "B" },
      9  => { type: "true_false",      q: "The implication A ⇒ B is false when A is false and B is true.",
              opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "Which part of an expert system applies the rules to the known facts to reach conclusions?",
              opts: ["A) The inference engine", "B) The user interface", "C) The explanation facility"], ans: "A" },
      11 => { type: "multiple_choice", q: "Only 1 in 1000 payments is fraud, and a 99%-sensitive fraud alarm rings. Why can the chance of real fraud still be low?",
              opts: ["A) Bayes' rule does not apply to digital UPI payments", "B) The alarm actually misses most of the fraud cases", "C) Most alarms come from the many genuine payments"], ans: "C" },
      12 => { type: "true_false",      q: "Without Laplace smoothing, one word that never appeared in ham training messages makes P(ham | message) zero for any message containing it.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "In Q-learning, what does epsilon-greedy action selection do?",
              opts: ["A) Always takes the action with the highest Q-value", "B) Lowers the discount factor after every step", "C) Sometimes takes a random action to explore"], ans: "C" },
      14 => { type: "true_false",      q: "A single perceptron (one neuron with a step activation) can learn the XOR function.",
              opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "Which information does a bag-of-words representation throw away?",
              opts: ["A) Which words appear in the text", "B) The order of the words", "C) How many times each word appears"], ans: "B" },
      16 => { type: "multiple_choice", q: "At its core, what does a large language model do when it generates an answer?",
              opts: ["A) Looks up a stored answer in a database", "B) Copies the most similar web page", "C) Repeatedly predicts the next token"], ans: "C" },
      17 => { type: "true_false",      q: "In a tool-using AI agent, the language model itself runs the tool's code inside its own weights.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "true_false",      q: "Sliding a 3x3 filter over an 8x8 image without padding (never past the border) gives a 6x6 output.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "A loan model approves 30% of rural applicants and 80% of urban applicants. What is the disparate impact ratio?",
              opts: ["A) About 0.50, the gap between the two rates", "B) About 2.67, the urban rate over the rural rate", "C) About 0.38"], ans: "C" },
      20 => { type: "multiple_choice", q: "In the capstone planner, why is 'straight-line km x the lowest learned minutes-per-km' a safe A* heuristic?",
              opts: ["A) It never overestimates the real travel time", "B) It gives the exact travel time for every single road", "C) It lets A* skip adding up the real road costs"], ans: "A" }
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

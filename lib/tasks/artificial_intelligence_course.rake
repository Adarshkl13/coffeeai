require_relative "../artificial_intelligence_content"

namespace :content do
  desc "Create Artificial Intelligence course and populate all 21 lessons"
  task artificial_intelligence: :environment do
    course = Course.find_or_create_by!(slug: "artificial-intelligence") do |c|
      c.title       = "Artificial Intelligence"
      c.description = "Learn the main parts of AI, from search algorithms to deep learning, LLMs and ethics. See how machines solve problems and where AI is going."
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
      12 => "Reasoning over Time: Hidden Markov Models",
      13 => "Naive Bayes Classifier",
      14 => "Reinforcement Learning: MDPs, Value Iteration and Q-Learning",
      15 => "Learning from Data: ML and Neural Networks",
      16 => "Natural Language Processing Basics",
      17 => "How Large Language Models Work",
      18 => "AI Agents and Tool Use",
      19 => "Computer Vision Basics",
      20 => "AI Ethics, Safety and Regulation",
      21 => "Capstone Project and Course Review"
    }

    descriptions = {
      1  => "Learn what AI is, how it relates to machine learning and deep learning, and how the field grew from 1950 to today's AI agents.",
      2  => "Learn how agents see and act. Describe tasks with PEAS and compare reflex, model-based, goal-based and learning agents.",
      3  => "Describe problems with states, actions, goal tests and path costs. Then solve the water jug puzzle with search.",
      4  => "Compare Breadth-First, Depth-First and Uniform-Cost Search. Use them to find routes on a simple road map of southern England.",
      5  => "Use admissible heuristics to guide search. Write A* to plan a robot's path on a grid.",
      6  => "Solve the 8-queens puzzle with hill climbing, random restarts and simulated annealing.",
      7  => "Model problems as variables, domains and constraints, and colour a map of Indian states with backtracking, MRV and forward checking.",
      8  => "Build a tic-tac-toe player that never loses with minimax. Make it faster with alpha-beta pruning.",
      9  => "Store knowledge with propositional logic. Find new facts with model checking and forward chaining.",
      10 => "Build a small crop-disease expert system with IF-THEN rules and explanations. Then plan a farm robot's actions with STRIPS-style classical planning.",
      11 => "Work with uncertainty using probability. Use Bayes' rule to see why most UPI fraud alarms are false, and query a small Bayesian network.",
      12 => "Follow a hidden state over time from noisy evidence. Use Markov chains, the forward algorithm, Viterbi and particle filters.",
      13 => "Build an SMS spam filter from scratch with Naive Bayes, Laplace smoothing and log-probabilities.",
      14 => "Describe problems as Markov decision processes. Solve a delivery grid with value iteration, then learn the same grid with tabular Q-learning.",
      15 => "See how machines learn from examples with gradient descent. Learn why a hidden layer lets a neural network solve XOR.",
      16 => "Learn tokenisation, stopwords, stemming and bag-of-words. Use them to match railway questions to FAQ answers.",
      17 => "Learn about tokens, next-token prediction, temperature, transformers and prompting. Build a toy bigram language model.",
      18 => "Learn how AI agents plan, call tools and check results. See how guardrails keep them safe, using a simulated agent loop.",
      19 => "Learn how computers see images as numbers. Apply convolution filters and learn how CNNs work.",
      20 => "Measure bias in a loan model and protect personal data. Learn the AI rules in India and the EU AI Act.",
      21 => "Build an ambulance route planner that uses learning, uncertainty and A* search. Then review the whole course.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "How are AI, machine learning and deep learning related?",
              opts: ["A) Deep learning is part of ML, which is part of AI", "B) ML is part of deep learning, which is part of AI", "C) They are three separate fields with no overlap"], ans: "A" },
      2  => { type: "true_false",      q: "A simple reflex agent picks its action using only the current percept. It has no memory of the past.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "In the 4-litre and 3-litre water jug puzzle, what is a good way to describe a state?",
              opts: ["A) The number of actions taken so far", "B) The litres in each jug, for example (4, 0)", "C) The goal of measuring 2 litres"], ans: "B" },
      4  => { type: "true_false",      q: "Roads on a map have different lengths. Breadth-First Search always finds the route with the fewest kilometres.",
              opts: ["True", "False"], ans: "False" },
      5  => { type: "multiple_choice", q: "Your A* heuristic sometimes guesses a cost higher than the real remaining cost. What can go wrong?",
              opts: ["A) A* may return a path that is not the cheapest", "B) A* will stop without finding any path", "C) A* behaves exactly like Depth-First Search instead"], ans: "A" },
      6  => { type: "multiple_choice", q: "Hill climbing on 8-queens stops, but 2 pairs of queens still attack. What is the most likely reason?",
              opts: ["A) The 8-queens puzzle has no solution", "B) It reached a local optimum", "C) Its heuristic was admissible"], ans: "B" },
      7  => { type: "true_false",      q: "With forward checking, a CSP solver backtracks as soon as an unassigned variable has no legal values left.",
              opts: ["True", "False"], ans: "True" },
      8  => { type: "multiple_choice", q: "How is alpha-beta pruning different from plain minimax?",
              opts: ["A) It finds a better move than plain minimax ever could", "B) Same move, fewer positions searched", "C) It assumes the opponent picks moves at random"], ans: "B" },
      9  => { type: "true_false",      q: "The implication A ⇒ B is false when A is false and B is true.",
              opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "Which part of an expert system uses the rules and the known facts to reach conclusions?",
              opts: ["A) The inference engine", "B) The user interface", "C) The explanation facility"], ans: "A" },
      11 => { type: "multiple_choice", q: "Only 1 in 1000 payments is fraud. A fraud alarm that catches 99% of fraud rings. Why can the chance of real fraud still be low?",
              opts: ["A) Bayes' rule does not work for digital UPI payments", "B) The alarm really misses most of the fraud cases", "C) Most alarms come from the many real, honest payments"], ans: "C" },
      12 => { type: "multiple_choice", q: "In a hidden Markov model, what does filtering (the forward algorithm) compute?",
              opts: ["A) The one most likely list of hidden states for all the days", "B) A belief about the current hidden state, based on all evidence so far", "C) The transition table, learned by counting the observations"], ans: "B" },
      13 => { type: "true_false",      q: "Without Laplace smoothing, a word never seen in ham training messages makes P(ham | message) zero. This is true for any message with that word.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "In Q-learning, what does epsilon-greedy action selection do?",
              opts: ["A) Always picks the action with the highest Q-value", "B) Lowers the discount factor after every step", "C) Sometimes picks a random action to explore"], ans: "C" },
      15 => { type: "true_false",      q: "A single perceptron (one neuron with a step activation) can learn the XOR function.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "Which information does a bag-of-words representation lose?",
              opts: ["A) Which words appear in the text", "B) The order of the words", "C) How many times each word appears"], ans: "B" },
      17 => { type: "multiple_choice", q: "What does a large language model mainly do when it writes an answer?",
              opts: ["A) Looks up a stored answer in a database", "B) Copies the most similar web page", "C) Repeatedly predicts the next token"], ans: "C" },
      18 => { type: "true_false",      q: "In an AI agent that uses tools, the language model runs the tool's code inside its own weights.",
              opts: ["True", "False"], ans: "False" },
      19 => { type: "true_false",      q: "You slide a 3x3 filter over an 8x8 image with no padding (never past the edge). The output is 6x6.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "A loan model approves 30% of rural applicants and 80% of urban applicants. What is the disparate impact ratio?",
              opts: ["A) About 0.50, the gap between the two rates", "B) About 2.67, the urban rate divided by the rural rate", "C) About 0.38"], ans: "C" },
      21 => { type: "multiple_choice", q: "In the capstone planner, why is 'straight-line km x the lowest learned minutes-per-km' a safe A* heuristic?",
              opts: ["A) It never guesses more than the real travel time", "B) It gives the exact travel time for every road", "C) It lets A* skip adding up the real road costs"], ans: "A" }
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

require_relative "../evaluating_ai_apps_content"

namespace :content do
  desc "Create Evaluating AI Apps course and populate all 20 lessons"
  task evaluating_ai_apps: :environment do
    course = Course.find_or_create_by!(slug: "evaluating-ai-apps") do |c|
      c.title       = "Evaluating AI Apps"
      c.description = "Learn how to measure whether your AI app really works. Build test sets, write code-based and model-based graders, measure RAG and agent quality, compare prompts and models, and run evals automatically before every release."
      c.color       = "#10b981"
      c.icon        = "📏"
      c.position    = 30
      c.published   = true
    end
    course.update!(description: "Learn how to measure whether your AI app really works. Build test sets, write code-based and model-based graders, measure RAG and agent quality, compare prompts and models, and run evals automatically before every release.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is an Eval?",
      2 => "Vibes vs Measurement",
      3 => "Defining Success",
      4 => "Kinds of Evals",
      5 => "Collecting Test Cases",
      6 => "Writing Reference Answers",
      7 => "Edge Cases and Adversarial Inputs",
      8 => "Synthetic Test Data",
      9 => "Splitting and Versioning Your Dataset",
      10 => "Running Your First Eval",
      11 => "Code-Based Graders",
      12 => "Classification Metrics",
      13 => "LLM-as-a-Judge",
      14 => "Checking Your Judge",
      15 => "Human Evaluation",
      16 => "Evaluating RAG Apps",
      17 => "Evaluating Agents",
      18 => "Comparing Prompts and Models",
      19 => "Evals in CI and Production Monitoring",
      20 => "Capstone: Build an Eval Suite"
    }

    descriptions = {
      1 => "Learn what an eval is and why normal unit tests are not enough for AI output. Run your first tiny eval.",
      2 => "See why trying a few prompts by hand misses regressions, and how a small eval catches them early.",
      3 => "Turn a vague goal into clear success criteria for correctness, format, tone, safety, latency and cost.",
      4 => "Compare code checks, model judges and human review, and learn the difference between offline evals and online monitoring.",
      5 => "Build your first test set from real user inputs, hand-written cases, edge cases and production failures.",
      6 => "Write reference answers as exact answers, acceptable-answer lists or key facts. Make labelling rules clear enough that two people agree.",
      7 => "Add empty, long, misspelled, foreign-language, off-topic and prompt injection inputs to your eval set, each with an expected behaviour.",
      8 => "Use a model to generate more test cases, then remove duplicates, check coverage and review every case by hand.",
      9 => "Split your cases into a dev set for tuning and a held-out test set, avoid overfitting, and version your data.",
      10 => "Build a simple eval loop that calls the app, grades each reply and records results, then read the failures one by one.",
      11 => "Grade outputs with simple code: exact match, contains, regex, JSON checks and numeric tolerance.",
      12 => "Measure a classifier with accuracy, precision, recall, F1 and a confusion matrix, and see why accuracy alone can mislead.",
      13 => "Use a model to grade answers with a clear rubric, ask for a reason first, and reduce the judge's biases.",
      14 => "Compare your judge with human labels, measure agreement, and fix the rubric when they disagree.",
      15 => "Learn when people must review, and how to run blind side-by-side comparisons with clear guidelines.",
      16 => "Measure a RAG app in two parts: retrieval with hit rate, recall@k and MRR, and answers with faithfulness and relevance.",
      17 => "Check an agent's final state, the tools it called and its cost, and repeat runs to measure how reliable it is.",
      18 => "Compare two prompts or models fairly on the same cases, and use a bootstrap interval to tell a real gain from noise.",
      19 => "Run evals automatically on every change with pass thresholds, and monitor live traffic with logs, sampling and user feedback.",
      20 => "Build a full eval suite for a support-reply bot and decide if a new prompt version is safe to release."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why are normal unit tests not enough to check AI output?", opts: ["A) AI apps do not have any code to test", "B) Outputs can change between runs, and one correct answer can be worded in many ways", "C) Unit tests are too slow for AI apps"], ans: "B" },
      2 => { type: "true_false", q: "If a new prompt gives good replies to three messages you tried by hand, it cannot have any regressions.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which of these is a measurable success criterion?", opts: ["A) Replies should be good", "B) Replies should feel friendly", "C) Replies must be 60 words or fewer"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which kind of grader is best for checking that an output is valid JSON?", opts: ["A) Human review", "B) A code-based check", "C) A model judge"], ans: "B" },
      5 => { type: "multiple_choice", q: "Which kind of test case should you always keep in your eval set?", opts: ["A) Failures reported from production", "B) Many near-copies of the same easy question", "C) Only questions the app already answers well"], ans: "A" },
      6 => { type: "multiple_choice", q: "The app writes a free-text reply to a customer. What is usually the best reference answer?", opts: ["A) One perfect reply that must match word for word", "B) A short list of facts the reply must include and must not include", "C) No reference, because free text cannot be graded"], ans: "B" },
      7 => { type: "true_false", q: "Prompt injection can only come from text the user types, never from documents or reviews the app reads.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Why should you list dimensions like topic, persona and difficulty before generating synthetic cases?", opts: ["A) So the generated cases are varied and no group is missing", "B) So the model runs faster", "C) So you do not need to review the cases"], ans: "A" },
      9 => { type: "multiple_choice", q: "Your dev score went from 70% to 100%, but your test score did not change. What is the most likely reason?", opts: ["A) The test set is too big", "B) The app is now perfect", "C) The prompt is overfitting to the dev cases"], ans: "C" },
      10 => { type: "multiple_choice", q: "A check for the word \"no\" marks the reply \"I do not know\" as correct. Whose mistake is this?", opts: ["A) The app's", "B) The grader's", "C) The dataset's"], ans: "B" },
      11 => { type: "multiple_choice", q: "Your reply must include an order ID like ORD-1234. Which grader fits best?", opts: ["A) Exact match on the whole reply", "B) A regex check", "C) An LLM judge"], ans: "B" },
      12 => { type: "multiple_choice", q: "95 of 100 tickets are normal. A model says \"normal\" for every ticket. What is its accuracy?", opts: ["A) 5%", "B) 50%", "C) 95%"], ans: "C" },
      13 => { type: "true_false", q: "LLM judges treat long and short answers the same, so you do not need to check for length bias.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "What is the best way to check if your LLM judge can be trusted?", opts: ["A) Compare its verdicts with human labels on the same answers", "B) Ask the judge if it is sure", "C) Run the judge on more answers"], ans: "A" },
      15 => { type: "multiple_choice", q: "In a side-by-side review, why do you hide which prompt wrote each answer?", opts: ["A) To make the review page load faster", "B) So you need fewer reviewers", "C) So reviewers are not biased by knowing the source"], ans: "C" },
      16 => { type: "multiple_choice", q: "For one question, the first relevant document is at rank 4. What is the reciprocal rank for this question?", opts: ["A) 4", "B) 0.25", "C) 0"], ans: "B" },
      17 => { type: "true_false", q: "If an agent's final answer is correct, you do not need to check which tools it called.", opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "Prompt B scores 3 points higher than prompt A on 30 cases. The 95% bootstrap interval is -6 to +12 points. What should you conclude?", opts: ["A) B is clearly better, so ship it", "B) A is clearly better", "C) The difference could be noise, so add more cases"], ans: "C" },
      19 => { type: "multiple_choice", q: "Which is a good way to use evals in CI?", opts: ["A) Run a small, fast eval set on every pull request and block the merge if the score is below a threshold", "B) Run evals only once, when the app is first built", "C) Use user thumbs-up counts as the only quality score"], ans: "A" },
      20 => { type: "multiple_choice", q: "In a release checklist, which result should block a release even when the average score went up?", opts: ["A) The median latency got a little faster", "B) A critical case now fails", "C) The replies got a little shorter"], ans: "B" }
    }

    EvaluatingAiAppsContent::LESSONS.each do |position, data|
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

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

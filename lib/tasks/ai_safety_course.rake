require_relative "../ai_safety_content"

namespace :content do
  desc "Create AI Safety and Responsible AI course and populate all 20 lessons"
  task ai_safety: :environment do
    course = Course.find_or_create_by!(slug: "ai-safety") do |c|
      c.title       = "AI Safety and Responsible AI"
      c.description = "Learn to build AI apps that are safe, fair and trustworthy. Defend against prompt injection and jailbreaks, protect private data, reduce bias and hallucinations, add human oversight and follow responsible AI rules."
      c.color       = "#3b82f6"
      c.icon        = "🛡️"
      c.position    = 33
      c.published   = true
    end
    course.update!(description: "Learn to build AI apps that are safe, fair and trustworthy. Defend against prompt injection and jailbreaks, protect private data, reduce bias and hallucinations, add human oversight and follow responsible AI rules.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is AI Safety?",
      2 => "How AI Apps Fail",
      3 => "Threat Modelling for AI Apps",
      4 => "Principles of Responsible AI",
      5 => "Prompt Injection",
      6 => "Defending Against Prompt Injection",
      7 => "Jailbreaks and Misuse",
      8 => "Safe Tool Use and Agents",
      9 => "Protecting Secrets and Systems",
      10 => "Bias and Fairness",
      11 => "Privacy and Personal Data",
      12 => "Hallucinations and Grounding",
      13 => "Transparency and Explainability",
      14 => "Human Oversight",
      15 => "Content Moderation",
      16 => "Red Teaming and Safety Testing",
      17 => "Monitoring and Incident Response",
      18 => "AI Rules and Standards",
      19 => "Alignment and the Bigger Picture",
      20 => "Capstone: Safety Review of an AI App"
    }

    descriptions = {
      1 => "Learn what AI safety covers, from app-level checks to alignment research, and why developers share the responsibility.",
      2 => "Learn the six common ways AI apps fail and a simple test to spot each one.",
      3 => "Think like an attacker: list assets, entry points and threats for an AI app, then score and rank them.",
      4 => "Learn the principles of responsible AI and turn each one into a design rule you can test.",
      5 => "Understand direct and indirect prompt injection and why no filter can fully stop it.",
      6 => "Build layered defences against prompt injection: separate data from instructions, limit tools, confirm risky actions and check output.",
      7 => "Learn common jailbreak styles and how model training, app filters, usage policies and monitoring work together against misuse.",
      8 => "Put a permission gate between an agent and its tools, with allow-lists, limits, human approval and an audit log.",
      9 => "Keep secrets out of prompts, treat model output as untrusted in HTML, SQL and commands, and rate limit your app.",
      10 => "Learn where bias comes from and measure it with selection rates and the four-fifths rule on a made-up dataset.",
      11 => "Learn what personal data is, and how to minimise, redact and delete it. Get a general view of laws such as GDPR and India's DPDP Act.",
      12 => "Find out why models make things up. Learn to ground answers in sources, use citations, allow \"I don't know\" and check claims with code.",
      13 => "Tell users they are talking to AI, label AI-generated content, explain limits and write a simple system card.",
      14 => "Learn human-in-the-loop and human-on-the-loop oversight, when a person must decide, and how to avoid automation bias.",
      15 => "Check inputs and outputs with classifiers, choose thresholds, balance false positives and false negatives, and handle appeals.",
      16 => "Attack your own AI app on purpose to find weak spots. Plan tests, record results, fix, re-test and run safety evals in CI.",
      17 => "Watch a live AI app with safe logs and alerts. Follow an incident plan, roll back bad changes and learn from each incident.",
      18 => "Get a simple map of the EU AI Act, the NIST AI RMF, the OWASP LLM Top 10 and company AI policies (not legal advice).",
      19 => "See how labs train safer models with RLHF and Constitutional AI, what responsible scaling policies are, and which problems are still open.",
      20 => "Do a full safety review of a sample support agent: threats, injection tests, PII, tool permissions, fairness and monitoring."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why must app developers share responsibility for AI safety?", opts: ["A) Because models cannot refuse any requests", "B) Because only the developer knows the app's users, data and tools", "C) Because AI labs do not work on safety"], ans: "B" },
      2 => { type: "multiple_choice", q: "A support bot says returns are accepted for 60 days, but the real policy says 30 days. Which failure is this?", opts: ["A) Hallucination", "B) Bias", "C) Privacy leak"], ans: "A" },
      3 => { type: "true_false", q: "In an AI app, only the chat box is an entry point, because documents and web pages come from trusted places.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Which design choice best supports human oversight?", opts: ["A) Delete chat logs after 30 days", "B) Show a label saying the user is talking to an AI", "C) A staff member must approve large refunds"], ans: "C" },
      5 => { type: "multiple_choice", q: "An attacker hides instructions in a web page, and an AI assistant reads the page for a user. What is this called?", opts: ["A) Direct prompt injection", "B) Indirect prompt injection", "C) Model bias"], ans: "B" },
      6 => { type: "multiple_choice", q: "Why should input detection not be your only defence against prompt injection?", opts: ["A) Detection is too slow to run", "B) Attackers can change the wording, so a filter will always miss some attacks", "C) Models ignore anything inside tags"], ans: "B" },
      7 => { type: "true_false", q: "An output filter can catch a jailbreak even when the input message looked harmless.", opts: ["True", "False"], ans: "True" },
      8 => { type: "multiple_choice", q: "An agent is allowed to call issue_refund. What else should your code check before it runs?", opts: ["A) The arguments, limits and, for risky actions, human approval", "B) Nothing, the tool is on the allow-list", "C) Only that the model sounded confident"], ans: "A" },
      9 => { type: "multiple_choice", q: "What is the safe way to show a model's reply in a web page?", opts: ["A) Insert it with innerHTML", "B) Ask the model not to write HTML", "C) Escape the text before you put it in the page"], ans: "C" },
      10 => { type: "multiple_choice", q: "Group A has a selection rate of 0.60 and group B has 0.42. What does the four-fifths rule say?", opts: ["A) The ratio is 0.70, below 0.8, so look closer", "B) The ratio is 0.70, so the system is proven unfair", "C) The rates are close enough, so there is no problem"], ans: "A" },
      11 => { type: "multiple_choice", q: "What does data minimisation mean?", opts: ["A) Compressing data so it uses less storage", "B) Collecting and sending only the data the task really needs", "C) Deleting all data every day"], ans: "B" },
      12 => { type: "multiple_choice", q: "Which is the best way to reduce hallucinations in a help bot?", opts: ["A) Give the model the right sources, ask for citations and allow \"I don't know\"", "B) Ask the model to sound more confident", "C) Use a higher temperature"], ans: "A" },
      13 => { type: "true_false", q: "If a user asks a chatbot \"Am I talking to a real person?\", the bot may say yes to keep the chat friendly.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A reviewer approves 200 AI decisions in 10 minutes and changes none of them. What is the likely problem?", opts: ["A) Data minimisation", "B) Prompt injection", "C) Automation bias"], ans: "C" },
      15 => { type: "multiple_choice", q: "You lower a moderation threshold from 0.8 to 0.3. What usually happens?", opts: ["A) Fewer false positives and more false negatives", "B) More false positives and fewer false negatives", "C) Nothing changes"], ans: "B" },
      16 => { type: "multiple_choice", q: "What should you do after you fix a problem found by red teaming?", opts: ["A) Delete the test, because the problem is fixed", "B) Re-run the same test and add it to the safety eval suite in CI", "C) Only test it again before the next big release"], ans: "B" },
      17 => { type: "true_false", q: "To make debugging easy, you should store every full conversation, with names, emails and phone numbers, forever.", opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "What are the four functions of the NIST AI Risk Management Framework?", opts: ["A) Govern, Map, Measure, Manage", "B) Plan, Build, Test, Release", "C) Detect, Block, Report, Delete"], ans: "A" },
      19 => { type: "multiple_choice", q: "In RLHF, what does the reward model learn?", opts: ["A) To predict the next token in a text", "B) To block unsafe words in user input", "C) To predict which of two answers people prefer"], ans: "C" },
      20 => { type: "multiple_choice", q: "In a fairness check, the lowest approval rate divided by the highest is 0.69. What should the review do?", opts: ["A) Ignore it, because the ratio is above 0.5", "B) Treat it as a must-fix finding and look into the cause before launch", "C) Launch, then check again in a year"], ans: "B" }
    }

    AiSafetyContent::LESSONS.each do |position, data|
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

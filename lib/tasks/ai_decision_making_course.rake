require_relative "../ai_decision_making_content"

namespace :content do
  desc "Create AI for Decision Making course and populate all 15 lessons"
  task ai_decision_making: :environment do
    course = Course.find_or_create_by!(slug: "ai-decision-making") do |c|
      c.title       = "AI for Decision Making"
      c.description = "Use AI to make better, fairer decisions. Frame the real problem, gather and check evidence, compare options with decision matrices and simple numbers, spot bias and AI overconfidence, run pre-mortems, decide with your team and learn from the results."
      c.color       = "#92400e"
      c.icon        = "\u2696\uFE0F"
      c.position    = 102
      c.published   = true
    end
    course.update!(title: "AI for Decision Making", description: "Use AI to make better, fairer decisions. Frame the real problem, gather and check evidence, compare options with decision matrices and simple numbers, spot bias and AI overconfidence, run pre-mortems, decide with your team and learn from the results.", color: "#92400e", icon: "\u2696\uFE0F", position: 102)
    puts "Course: #{course.title}"

    titles = {
      1 => "How Good Decisions Are Made",
      2 => "Where AI Helps Decision Makers and Its Limits",
      3 => "Framing the Problem",
      4 => "Gathering Evidence",
      5 => "Generating Options",
      6 => "Decision Matrices",
      7 => "Costs, Benefits and Simple ROI",
      8 => "Risk and Uncertainty",
      9 => "Thinking Biases",
      10 => "Pre-Mortems and Red Teams",
      11 => "Deciding with Your Team",
      12 => "Explaining Decisions",
      13 => "Ethical and Fair Decisions",
      14 => "Reviewing Decisions Later",
      15 => "Capstone: Choosing a New Warehouse System at Northbridge Logistics"
    }

    descriptions = {
      1 => "Learn the main types of decisions and how to tell easy-to-reverse choices from hard-to-reverse ones, so you match your effort to each decision.",
      2 => "See where AI helps decision makers with options, analysis and challenge, and how to guard against overconfidence, made-up data and bias.",
      3 => "Turn a vague complaint into a clear decision frame with the real question, goals, constraints, a decider and a deadline.",
      4 => "Gather data, people's input and outside sources, check each one, and list what is still missing before you decide.",
      5 => "Spot false choices, widen your options with AI and your team, and screen them against your goals and limits.",
      6 => "Build a fair decision matrix with criteria, weights and scores, let SUMPRODUCT do the sums, and test the result with sensitivity and must-have goal checks.",
      7 => "Work out payback, ROI and break-even with real sums in a spreadsheet, find hidden costs, and use AI to check your method, not invent numbers.",
      8 => "Rate risks by likelihood and impact, keep a simple risk register, and test forecasts with worst, likely and best cases and expected value.",
      9 => "Spot confirmation bias, anchoring, sunk cost and groupthink, plus the AI-made versions, and use simple habits to guard against them.",
      10 => "Run a pre-mortem by imagining failure first, use a red team, and turn AI into a fair devil's advocate before you commit.",
      11 => "Choose the right way for a team to decide, from consult to consent and voting, and always name one clear owner.",
      12 => "Write a clear decision note with the decision first, honest trade-offs and uncertainty, and explain it to different audiences.",
      13 => "Check who gains and who loses from a decision, run a simple fairness check, and protect people's privacy.",
      14 => "Keep a decision log, review decisions at set dates, and judge the process separately from the outcome.",
      15 => "Bring every step together to choose a new warehouse system: frame, evidence, options, matrix, ROI, pre-mortem and decision note."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which decision is hardest to reverse?", opts: ["A) Trying a new picking route for one week", "B) Signing a three-year contract for a new warehouse system", "C) Moving the weekly team meeting to Tuesday"], ans: "B" },
      2 => { type: "true_false", q: "If an AI answer is written in a confident, detailed table, you can put its numbers straight into your decision report.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which is the best framed decision question?", opts: ["A) Which system cuts picking errors and overtime, within £200,000, and goes live before 30 June 2027?", "B) Which warehouse vendor is best?", "C) Why are our pickers so careless?"], ans: "A" },
      4 => { type: "multiple_choice", q: "A vendor brochure says its system \"cuts errors by up to 80%\". What should you do?", opts: ["A) Use 80% as the expected result", "B) Ignore the vendor completely", "C) Treat it as a best-case claim and check it with reference customers and your own data"], ans: "C" },
      5 => { type: "multiple_choice", q: "A director asks, \"Do we buy WareFlow Cloud or not?\" What is the best first response?", opts: ["A) Say yes, because the demo was good", "B) Point out the false choice and build a wider list of options, including the do-nothing baseline", "C) Say no, because yes-or-no questions are always wrong"], ans: "B" },
      6 => { type: "multiple_choice", q: "In the formula =SUMPRODUCT($B$2:$B$7,C2:C7), why do the weight cells have $ signs?", opts: ["A) So the weight cells stay fixed when you copy the formula to the other options", "B) To show the weights are in pounds", "C) To make the spreadsheet round the result"], ans: "A" },
      7 => { type: "multiple_choice", q: "StockPilot costs £120,000 one-off. Its gross yearly saving is £141,920 and its new yearly fee is £42,000. What is the payback?", opts: ["A) About 0.85 years", "B) About 3.5 years", "C) About 1.20 years"], ans: "C" },
      8 => { type: "true_false", q: "If the expected extra cost of a delay is £11,200, you will pay exactly £11,200.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "A manager asks AI, \"Why is WareFlow Cloud the best choice for us?\" Which bias does this question invite?", opts: ["A) Sunk cost", "B) Confirmation bias", "C) Anchoring"], ans: "B" },
      10 => { type: "multiple_choice", q: "What is the key step that makes a pre-mortem different from a normal risk discussion?", opts: ["A) The manager decides alone, before the meeting", "B) Only senior managers are invited", "C) Everyone imagines the project has already failed and writes down why"], ans: "C" },
      11 => { type: "multiple_choice", q: "A manager says, \"I want your views, but I will make the final call.\" Which way of deciding is this?", opts: ["A) Consensus", "B) Vote", "C) Consult, then decide"], ans: "C" },
      12 => { type: "multiple_choice", q: "What should come first in a decision note for a busy managing director?", opts: ["A) The decision, in one line", "B) A full history of the project", "C) A list of every option the team discussed"], ans: "A" },
      13 => { type: "true_false", q: "If a new system saves money and is legal, you do not need to think about who it affects.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A careful decision turns out badly because of something nobody could have known. How should you judge it?", opts: ["A) As a bad decision, because the result was bad", "B) As good process with bad luck: learn what you can, without blame", "C) As a reason to stop keeping a decision log"], ans: "B" },
      15 => { type: "multiple_choice", q: "WareFlow Cloud scores highest in the matrix but misses the must-have error goal. What should James do?", opts: ["A) Fail it in the must-have check, then compare the options that pass", "B) Choose it, because the matrix total is highest", "C) Change the scores until it meets the goal"], ans: "A" }
    }

    AiDecisionMakingContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code].presence)

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

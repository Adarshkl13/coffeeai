require_relative "../ai_performance_management_content"

namespace :content do
  desc "Create AI for Performance Management course and populate all 15 lessons"
  task ai_performance_management: :environment do
    course = Course.find_or_create_by!(slug: "ai-performance-management") do |c|
      c.title       = "AI for Performance Management"
      c.description = "Use AI to run fair, useful performance management. Set clear goals and OKRs, give better feedback, prepare check-ins and reviews, spot rating bias, handle underperformance carefully and keep people at the centre of every decision."
      c.color       = "#7c3aed"
      c.icon        = "\u{1F3AF}"
      c.position    = 89
      c.published   = true
    end
    course.update!(title: "AI for Performance Management", description: "Use AI to run fair, useful performance management. Set clear goals and OKRs, give better feedback, prepare check-ins and reviews, spot rating bias, handle underperformance carefully and keep people at the centre of every decision.", color: "#7c3aed", icon: "\u{1F3AF}", position: 89)
    puts "Course: #{course.title}"

    titles = {
      1 => "How Performance Management Works",
      2 => "Where AI Helps and Where It Must Not",
      3 => "Fairness, Privacy and the Law",
      4 => "Gathering Good Evidence",
      5 => "Setting Clear Goals and OKRs",
      6 => "Writing Useful Feedback",
      7 => "Preparing 1:1s and Check-Ins",
      8 => "Self-Reviews and Peer Reviews",
      9 => "Writing Performance Reviews",
      10 => "Spotting Rating Bias",
      11 => "Calibration Meetings",
      12 => "Handling Underperformance",
      13 => "Development Plans and Career Talks",
      14 => "Measuring Whether the Process Works",
      15 => "Capstone: A Fair Review Cycle at Brightside Software"
    }

    descriptions = {
      1 => "Learn the four parts of performance management: goals, check-ins, reviews and development. Compare annual and continuous approaches with Brightside Software's 2026 cycle.",
      2 => "See where AI saves time in reviews, such as drafting, summarising and finding patterns. Learn why AI must never decide ratings, invent evidence or see private data.",
      3 => "Learn the main UK, US and EU rules for fair and private performance decisions, and how to write a short decision record. General education, not legal advice.",
      4 => "Collect evidence from results, peers, self-reviews and notes all year. Turn impressions into dated facts and use AI to sort evidence without adding to it.",
      5 => "Write SMART goals and OKRs that link up to company goals. Use AI to draft goals, then check every baseline number and fairness risk yourself.",
      6 => "Give specific, kind feedback with the SBI model: Situation, Behaviour, Impact. Use AI to turn rough notes into clear feedback, then check every fact.",
      7 => "Plan 1:1s and check-ins with a clear agenda, open questions and short progress notes. See how AI helps a manager prepare a difficult conversation.",
      8 => "Guide useful self-reviews, ask peers for real examples and summarise 360 feedback honestly with AI, using counts and exact quotes.",
      9 => "Write clear performance reviews with a simple structure, ratings linked to evidence and no vague or biased words. Use AI for the first draft only.",
      10 => "Learn recency, halo, leniency and similarity bias. Check draft ratings with simple spreadsheet maths and turn patterns into questions for calibration.",
      11 => "Prepare a calibration pack, agree one rating standard and run a fair calibration meeting. Use AI for the maths and neutral questions while managers decide.",
      12 => "Spot underperformance early, look for causes and write a clear, supportive improvement plan. Learn the main steps of a fair process. General education, not legal advice.",
      13 => "Write development plans with one growth goal and real learning actions, hold good career talks and handle internal moves fairly, with AI as a drafting helper.",
      14 => "Measure completion, rating spread, staff experience and fairness for a review cycle. Calculate each number in a spreadsheet and treat every gap as a question.",
      15 => "Run a fair review cycle at Brightside Software from goals to a calibration pack, with a bias check in simple maths. AI drafts and flags; people decide."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which list shows the four parts of performance management?", opts: ["A) Hiring, onboarding, pay and exit", "B) Goals, check-ins, review and development", "C) Ratings, calibration, bonuses and promotions"], ans: "B" },
      2 => { type: "multiple_choice", q: "A manager wants to use AI in the review cycle. Which use is safe if a person checks the result?", opts: ["A) Drafting a review summary from the manager's own dated notes", "B) Letting AI choose the final 1 to 5 rating", "C) Pasting an employee's sick-leave reasons into a free public chatbot"], ans: "A" },
      3 => { type: "true_false", q: "Under UK data protection law, employees can ask to see personal data about them, which can include a manager's performance notes.", opts: ["True", "False"], ans: "True" },
      4 => { type: "multiple_choice", q: "Which note is the best evidence for a review?", opts: ["A) \"Ryan has a great attitude and everyone loves him.\"", "B) \"Sam does not seem very committed lately.\"", "C) \"Ryan renewed 17 of 20 accounts (85%) against a goal of at least 92%.\""], ans: "C" },
      5 => { type: "multiple_choice", q: "An AI tool drafts a goal that says \"lift conversion from 15% to 22%\", but your real starting rate is 18%. What should you do?", opts: ["A) Keep the AI's number because it looks exact", "B) Ask the AI to make the goal sound more exciting", "C) Correct the baseline to 18% using your own data, then agree the goal with the employee"], ans: "C" },
      6 => { type: "multiple_choice", q: "In the SBI feedback model, which sentence is the Behaviour part?", opts: ["A) At the sprint planning meeting on Monday...", "B) ...your design specs reached the engineers after the sprint had started...", "C) ...so the engineers had to redo some screens."], ans: "B" },
      7 => { type: "multiple_choice", q: "Which is the best open question for a 1:1 about late customer replies?", opts: ["A) What gets in the way of a quick reply?", "B) Did you ignore that customer?", "C) You know replies must be faster, right?"], ans: "A" },
      8 => { type: "true_false", q: "When AI summarises peer feedback, it is fine for it to soften problems so the employee feels better.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Which review sentence is the most useful and fair?", opts: ["A) Grace had a solid year and is a valued team member.", "B) Grace should be more visible in the office.", "C) Grace kept uptime at 99.92% against a goal of at least 99.9%."], ans: "C" },
      10 => { type: "multiple_choice", q: "One team's average rating is 4.67 and the other teams average 3.60. What should HR do?", opts: ["A) Lower that team's ratings straight away", "B) Treat it as a question and check the evidence at calibration", "C) Ask AI to decide the correct ratings"], ans: "B" },
      11 => { type: "multiple_choice", q: "What is the main purpose of a calibration meeting?", opts: ["A) To make sure the same rating means the same thing in every team", "B) To make sure only 10% of people get the top rating", "C) To let AI choose the final ratings"], ans: "A" },
      12 => { type: "multiple_choice", q: "A manager sees an employee miss reply targets in July. What should happen first?", opts: ["A) Wait for the year-end review and give a low rating", "B) Send a final warning drafted by AI", "C) Talk to the employee soon, ask about causes and agree support"], ans: "C" },
      13 => { type: "true_false", q: "When you ask AI for a learning plan, it is safer to ask for course topics and then find real courses yourself, because AI may invent course names or links.", opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "Remote staff were rated 4 or 5 at 35.0% and office staff at 48.6%. The ratio is 0.72. What is the right conclusion?", opts: ["A) Remote staff perform worse than office staff", "B) The gap is a flag to look into, for example by checking how many notes managers keep", "C) Nothing, because remote is not a protected characteristic"], ans: "B" },
      15 => { type: "multiple_choice", q: "AI calculates a team average of 4.33 for draft ratings of 5, 4 and 5. What should you do?", opts: ["A) Check it in a spreadsheet: 14 ÷ 3 = 4.67, then correct the pack", "B) Use 4.33 because the AI showed its working", "C) Ask the AI to suggest final ratings instead"], ans: "A" }
    }

    AiPerformanceManagementContent::LESSONS.each do |position, data|
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

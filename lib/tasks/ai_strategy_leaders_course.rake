require_relative "../ai_strategy_leaders_content"

namespace :content do
  desc "Create AI Strategy for Leaders course and populate all 15 lessons"
  task ai_strategy_leaders: :environment do
    course = Course.find_or_create_by!(slug: "ai-strategy-leaders") do |c|
      c.title       = "AI Strategy for Leaders"
      c.description = "Learn how to lead AI adoption in a team or organisation. Understand what AI can and cannot do, find and prioritise use cases, estimate value and cost, manage risks and rules, write an AI policy, run pilots, bring people with you and measure results."
      c.color       = "#78350f"
      c.icon        = "\u{1F9ED}"
      c.position    = 103
      c.published   = true
    end
    course.update!(title: "AI Strategy for Leaders", description: "Learn how to lead AI adoption in a team or organisation. Understand what AI can and cannot do, find and prioritise use cases, estimate value and cost, manage risks and rules, write an AI policy, run pilots, bring people with you and measure results.", color: "#78350f", icon: "\u{1F9ED}", position: 103)
    puts "Course: #{course.title}"

    titles = {
      1 => "What Leaders Need to Know About AI",
      2 => "Myths and Realities",
      3 => "AI Rules and Risks",
      4 => "Finding Use Cases",
      5 => "Prioritising Use Cases",
      6 => "Build, Buy or Use Existing Tools",
      7 => "Estimating Value and Cost",
      8 => "Running a Pilot",
      9 => "Data and Security Readiness",
      10 => "Writing an AI Use Policy",
      11 => "Bringing People with You",
      12 => "Training and Skills",
      13 => "Measuring Results and Scaling",
      14 => "Governance",
      15 => "Capstone: An AI Plan for Maple Street Health"
    }

    descriptions = {
      1 => "Learn the four common types of AI tools, what AI does well, where it fails and what leaders still decide.",
      2 => "Separate AI hype from evidence, learn why AI pilots fail and set honest expectations with your team and your boss.",
      3 => "Understand data protection, the EU AI Act and the UK and US approaches in general words, and record AI risks in a simple register.",
      4 => "Find AI use cases from real pain points, test each task for fit and write clear use case cards.",
      5 => "Rank AI ideas by value, effort, risk and staff support with a grid and a weighted scoring matrix, then fit them to a budget.",
      6 => "Compare using existing tools, buying a specialist tool and building your own, with vendor questions and a 3-year total cost.",
      7 => "Turn time saved into value, count every cost and work out ROI and payback with spreadsheet formulas and an honest range.",
      8 => "Plan a small AI pilot with a baseline, success measures and stop rules, then make a go or no-go decision.",
      9 => "Check data quality, access and approved tools before an AI tool goes live, using simple data levels.",
      10 => "Write a short, clear AI use policy with approved tools, data rules, allowed and banned uses, approvals and human review.",
      11 => "Explain an AI change clearly, talk honestly about jobs and involve staff so people support the change.",
      12 => "Build a role-based AI training plan with champions, practice time, a skills check and an honest staff-time cost.",
      13 => "Measure AI adoption, outcomes and safety against a baseline, then decide to scale, fix or stop each tool.",
      14 => "Set up an AI steering group, run regular risk reviews and handle AI incidents calmly and fairly.",
      15 => "Bring the course together in a complete AI plan for Maple Street Health, then build one for your own team."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why can an AI assistant give an answer that sounds sure but is wrong?", opts: ["A) Because it only works with numbers, not text", "B) Because it predicts likely words and does not check facts like a database", "C) Because it always copies answers from the internet"], ans: "B" },
      2 => { type: "multiple_choice", q: "A vendor says its AI tool saves every clinician 2 hours a day. Your clinicians spend about 3 hours a week on notes. What should you do first?", opts: ["A) Ask how the claim was measured and check if it is even possible for your clinics", "B) Buy the tool, because the vendor has tested it", "C) Promise your boss a saving of 2 hours a day"], ans: "A" },
      3 => { type: "true_false", q: "Under HIPAA, a vendor that stores or processes patient health information for a US clinic is expected to sign a business associate agreement (BAA).", opts: ["True", "False"], ans: "True" },
      4 => { type: "multiple_choice", q: "Which is the best way to find good AI use cases?", opts: ["A) Start from the AI tool you most want to buy", "B) Ask AI for 20 ideas and pick the most exciting one", "C) Collect pain points and rough hours from the staff who do the work"], ans: "C" },
      5 => { type: "multiple_choice", q: "Weights are Value 40%, Ease 20%, Low risk 25%, Staff support 15%. Ease = 6 - Effort and Low risk = 6 - Risk. An idea scores Value 5, Effort 3, Risk 4, Staff support 4. What is its score?", opts: ["A) 4.20", "B) 3.70", "C) 3.15"], ans: "B" },
      6 => { type: "multiple_choice", q: "Over 3 years, one AI scribe costs less than another, but it signs a BAA only on a more expensive plan. Your clinics will put patient data in it. What should you do?", opts: ["A) Choose the cheaper plan to save money", "B) Choose the tool with the best sales demo", "C) Treat the BAA as a must-have and compare costs on the plan that includes it"], ans: "C" },
      7 => { type: "multiple_choice", q: "Clinicians spend 126 hours a week on notes. AI saves 30%. The loaded cost is $110 an hour and there are 48 working weeks a year. What is the annual value of the time saved?", opts: ["A) $216,216", "B) $199,584", "C) $123,984"], ans: "B" },
      8 => { type: "true_false", q: "In a good pilot, you agree the success measures after you see the results, so the targets are realistic.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "AI features in your office software can usually find any file the user is allowed to open. What should you do before you turn them on?", opts: ["A) Find and fix folders that are shared too widely, such as HR or salary files", "B) Nothing, because the AI creates no new access", "C) Ask the AI in a prompt not to look at HR files"], ans: "A" },
      10 => { type: "multiple_choice", q: "Which use belongs in the \"banned\" list of an AI use policy?", opts: ["A) Drafting a meeting agenda in an approved tool", "B) Summarising public guidance for a staff update", "C) Pasting patient details into a free public chatbot"], ans: "C" },
      11 => { type: "multiple_choice", q: "Staff worry that AI will take their jobs. Which message is most likely to build trust?", opts: ["A) \"Don't worry, AI will never change your jobs.\"", "B) \"There are no job cuts because of this programme. Here is where the freed time will go.\"", "C) \"It has been decided, so there is nothing to discuss.\""], ans: "B" },
      12 => { type: "multiple_choice", q: "What should every role-based AI training module teach?", opts: ["A) How to use the tool, how to check its output and when not to use it", "B) Only the history of AI and how large language models are built", "C) Only how to log in to the tool"], ans: "A" },
      13 => { type: "true_false", q: "If an AI tool fails the quality target agreed before launch, a leader should pause it and fix the cause rather than scale it.", opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "A receptionist pastes a patient's message into a free chatbot. What should happen first?", opts: ["A) Give the receptionist a formal warning", "B) Wait for the quarterly risk review", "C) Report it the same working day so it can be contained and assessed"], ans: "C" },
      15 => { type: "multiple_choice", q: "Wave 2 has annual value $99,000, running cost $38,000 and one-off cost $27,000. What is the year-1 ROI?", opts: ["A) 266.7%", "B) 125.9%", "C) 52.3%"], ans: "C" }
    }

    AiStrategyLeadersContent::LESSONS.each do |position, data|
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

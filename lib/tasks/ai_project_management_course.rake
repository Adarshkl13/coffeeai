require_relative "../ai_project_management_content"

namespace :content do
  desc "Create AI for Project Management course and populate all 15 lessons"
  task ai_project_management: :environment do
    course = Course.find_or_create_by!(slug: "ai-project-management") do |c|
      c.title       = "AI for Project Management"
      c.description = "Use AI to plan and deliver projects with less stress. Write project charters, break work into tasks, build schedules and budgets, map stakeholders, manage risks and changes, write clear status reports and run useful retrospectives."
      c.color       = "#f59e0b"
      c.icon        = "\u{1F4C5}"
      c.position    = 100
      c.published   = true
    end
    course.update!(title: "AI for Project Management", description: "Use AI to plan and deliver projects with less stress. Write project charters, break work into tasks, build schedules and budgets, map stakeholders, manage risks and changes, write clear status reports and run useful retrospectives.", color: "#f59e0b", icon: "\u{1F4C5}", position: 100)
    puts "Course: #{course.title}"

    titles = {
      1 => "How Projects Work",
      2 => "Where AI Helps Project Managers and Its Limits",
      3 => "Starting a Project",
      4 => "Stakeholder Mapping",
      5 => "Breaking Down the Work",
      6 => "Building a Schedule",
      7 => "Budgets and Resources",
      8 => "Risks, Assumptions, Issues and Dependencies",
      9 => "Agile Basics with AI",
      10 => "Status Reports and Updates",
      11 => "Managing Change Requests",
      12 => "Running Project Meetings",
      13 => "Getting Projects Back on Track",
      14 => "Closing a Project and Retrospectives",
      15 => "Capstone: The Maple Street Health Booking App Project"
    }

    descriptions = {
      1 => "Learn the four project limits (scope, time, cost and quality) and when to use waterfall, agile or hybrid.",
      2 => "See where AI saves a project manager time, and how to catch made-up dates, missing tasks, wrong maths and data risks.",
      3 => "Write a one-page project charter with SMART goals, clear scope and success measures, using AI for the first draft.",
      4 => "Map stakeholders by influence and interest, and turn the map into a simple communication plan.",
      5 => "Break a project into a work breakdown structure, give every task an owner, and build a RACI chart with AI's help.",
      6 => "Estimate tasks, link them in order, find the critical path with real numbers, and turn working days into dates with WORKDAY.",
      7 => "Build a project budget from the work, check that people have the time, and use a simple budget sheet with formulas.",
      8 => "Keep a RAID log of risks, assumptions, issues and dependencies, score risks and choose a response for each.",
      9 => "Learn backlogs, user stories, sprints and Kanban boards, and use AI to turn rough notes into clear user stories.",
      10 => "Write honest one-page status reports with clear RAG rules, and use AI to draft them without softening the truth.",
      11 => "Handle change requests with a clear process: assess the impact on time, cost and scope, give options, and let the right person decide.",
      12 => "Run short, useful stand-ups, team meetings and steering meetings, and use AI to draft agendas and minutes that you check.",
      13 => "Spot early warning signs, find options that really recover time on the critical path, and agree an honest recovery plan.",
      14 => "Hand over to new owners, run a blame-free retrospective, close the budget and write an honest closure report.",
      15 => "Build a complete project pack for the Maple Street Health booking app and your own project, and use AI to check it tells one story."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "The sponsor asks Daniel to launch three weeks earlier. What should Daniel do first?", opts: ["A) Say yes and ask the team to work faster", "B) Show the trade-offs: cut scope, add cost or accept a quality risk, and let the sponsor decide", "C) Remove all testing so the date can move"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool gives exact dates in a project plan, you can use them without checking, because computers do date maths correctly.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which goal is SMART?", opts: ["A) Make booking easier for patients", "B) Reduce phone calls as much as possible", "C) 35% of appointments are booked online by the end of September 2027"], ans: "C" },
      4 => { type: "multiple_choice", q: "On an influence/interest map, a stakeholder with high influence and high interest, such as the sponsor, should be:", opts: ["A) Managed closely", "B) Monitored with little effort", "C) Kept informed with a newsletter only"], ans: "A" },
      5 => { type: "multiple_choice", q: "In a RACI chart, how many people should be Accountable (A) for one task?", opts: ["A) As many as needed", "B) Exactly one", "C) None, if someone is Responsible"], ans: "B" },
      6 => { type: "multiple_choice", q: "Task B takes 10 days and task C takes 8 days. Both start after task A, and task D needs both to finish. How many days of float does task C have?", opts: ["A) 0 days", "B) 2 days", "C) 8 days"], ans: "B" },
      7 => { type: "true_false", q: "A task needs 30 person-days of effort. If the IT lead can give 50% of their time, they can finish it alone in 20 working days.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "A risk has probability 4 and impact 4. With the rule 15-25 High, 8-14 Medium, 1-7 Low, what is its score and rating?", opts: ["A) 16, High", "B) 8, Medium", "C) 16, Medium"], ans: "A" },
      9 => { type: "multiple_choice", q: "Which is a well-written user story?", opts: ["A) Booking page", "B) Build the calendar screen by Friday", "C) As a patient, I want to cancel my appointment online, so that I do not have to call the clinic"], ans: "C" },
      10 => { type: "multiple_choice", q: "AI rewrites your status report and changes the schedule colour from Amber to Green to make it sound positive. What should you do?", opts: ["A) Keep the AI's Green, because it reads better", "B) Change it back to Amber, and make sure the report states the problem and the action plainly", "C) Remove the schedule section"], ans: "B" },
      11 => { type: "multiple_choice", q: "A request adds $22,000 and moves the end date of the project. Who should decide?", opts: ["A) The vendor's developer who will do the work", "B) The project manager alone, to save time", "C) The sponsor, after seeing the impact and the options"], ans: "C" },
      12 => { type: "true_false", q: "An AI meeting summary from Teams or Zoom is accurate enough to send to everyone without checking it.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "The app build is late and on the critical path. Which action can bring the end date back?", opts: ["A) Add a developer to the build task", "B) Finish the staff admin screen early, although it has plenty of float", "C) Start the launch campaign sooner, because it has float"], ans: "A" },
      14 => { type: "multiple_choice", q: "Two weeks after launch, 17% of bookings are online. The goal is 35% by the end of September. What should the closure report say?", opts: ["A) The online booking goal has been met", "B) 17% is an early sign only; the goal is measured in the benefits review", "C) Nothing about the goal, because the project is closed"], ans: "B" },
      15 => { type: "multiple_choice", q: "After CR-01 used $22,000, the status report still shows $26,000 of contingency. What should you do?", opts: ["A) Leave it, because the sponsor already knows", "B) Ask AI to decide which number is right", "C) Update it to $4,000, give the report a new version and date, and check the other documents"], ans: "C" }
    }

    AiProjectManagementContent::LESSONS.each do |position, data|
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

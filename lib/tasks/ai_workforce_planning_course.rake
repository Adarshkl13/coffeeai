require_relative "../ai_workforce_planning_content"

namespace :content do
  desc "Create AI for Workforce Planning course and populate all 15 lessons"
  task ai_workforce_planning: :environment do
    course = Course.find_or_create_by!(slug: "ai-workforce-planning") do |c|
      c.title       = "AI for Workforce Planning"
      c.description = "Use AI to plan the people your organisation will need. Analyse headcount, turnover and skills, forecast demand and supply with simple models, plan hiring, internal moves and succession, and turn the analysis into a clear workforce plan."
      c.color       = "#4c1d95"
      c.icon        = "\u{1F4CA}"
      c.position    = 93
      c.published   = true
    end
    course.update!(title: "AI for Workforce Planning", description: "Use AI to plan the people your organisation will need. Analyse headcount, turnover and skills, forecast demand and supply with simple models, plan hiring, internal moves and succession, and turn the analysis into a clear workforce plan.", color: "#4c1d95", icon: "\u{1F4CA}", position: 93)
    puts "Course: #{course.title}"

    titles = {
      1 => "What Workforce Planning Is",
      2 => "Where AI Helps and Its Limits",
      3 => "Workforce Data You Need",
      4 => "Key Workforce Metrics",
      5 => "Analysing Turnover and Retirement Risk",
      6 => "Skills Inventories",
      7 => "Forecasting Demand",
      8 => "Scenario Planning",
      9 => "Build, Buy, Borrow or Automate",
      10 => "Succession Planning",
      11 => "Internal Mobility",
      12 => "Hiring Plans and Budgets",
      13 => "Presenting a Workforce Plan",
      14 => "Ethics in Workforce Planning",
      15 => "Capstone: A Workforce Plan for Northbridge Logistics"
    }

    descriptions = {
      1 => "Learn the basics of workforce planning: supply, demand, the gap and time horizons, with a first driver gap for Northbridge Logistics.",
      2 => "See where AI helps in workforce planning and the four big risks: false precision, biased data, private data and made-up facts.",
      3 => "Find the workforce data you need, fix common data problems with spreadsheet formulas and protect privacy before using AI.",
      4 => "Calculate headcount, FTE, attrition, span of control and cost per FTE with worked numbers and spreadsheet formulas.",
      5 => "Analyse turnover trends and hotspots, make simple forecasts with ranges and plan for retirement risk fairly.",
      6 => "Build a skills inventory, find skills gaps and single-person risks, and use AI to tag skills only with clear evidence.",
      7 => "Turn a business plan into monthly FTE demand with productivity ratios, and plan for seasonal peaks.",
      8 => "Build best, base and worst cases in one spreadsheet, find the guess that matters most and set early warning triggers.",
      9 => "Compare build, buy, borrow and automate options for closing a gap, with worked costs and a weighted score.",
      10 => "Find critical roles, map ready-now and ready-later successors, measure bench strength and run fair talent reviews.",
      11 => "Plan internal moves and reskilling paths, measure the internal fill rate and make sure every employee has a fair chance to move.",
      12 => "Turn a workforce gap into a hiring plan with backfills, start dates, recruiter capacity and a budget, and check AI's numbers.",
      13 => "Present a workforce plan on one page for leaders, with key numbers, honest assumptions, ranges and clear decisions.",
      14 => "Apply four ethical checks to workforce plans: fairness, privacy, redundancy risk and human decisions (general information, not legal advice).",
      15 => "Build a complete 2027 workforce plan for Northbridge Logistics, from data and metrics to scenarios, succession and a hiring plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Northbridge will need 165 drivers at the end of 2027, but only about 107 will remain without hiring. What is this difference called?", opts: ["A) Supply", "B) The gap", "C) Demand"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool says \"you will lose exactly 79.47 people next year\", you can share that number with leaders as a fact.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which is the safest way to give retirement risk data to an AI tool for planning?", opts: ["A) Upload the HRIS export with names and dates of birth", "B) Paste each person's age and job title", "C) Share totals by role and age band, combining very small groups"], ans: "C" },
      4 => { type: "multiple_choice", q: "Northbridge had 78 leavers and an average headcount of 412 over 12 months. What is its attrition rate?", opts: ["A) 18.9%", "B) 18.6%", "C) 15.5%"], ans: "A" },
      5 => { type: "multiple_choice", q: "Customer service has 20 people and 6 leavers (30%). What should Priya do first?", opts: ["A) Call it the biggest problem in the company", "B) Treat it with care, because one leaver moves the rate by 5 points", "C) Ignore it, because small groups never matter"], ans: "B" },
      6 => { type: "multiple_choice", q: "An AI tool tags an employee as a \"WMS super-user\" only because their job title is \"Warehouse Op\". What should you do?", opts: ["A) Keep the tag, because AI matched the job title", "B) Check it with the person or manager, because a job title is not evidence", "C) Remove the person from the skills inventory"], ans: "B" },
      7 => { type: "multiple_choice", q: "London expects 292,560 parcels in September 2027. One warehouse FTE handles 2,300 parcels a month. About how many warehouse FTE are needed?", opts: ["A) 100.0", "B) 120.0", "C) 127.2"], ans: "C" },
      8 => { type: "true_false", q: "In a staffing scenario plan, the worst case should mean the hardest case to staff, for example high growth and many leavers.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "Northbridge books 120 agency workers for November and December only. Which option is this?", opts: ["A) Borrow", "B) Build", "C) Automate"], ans: "A" },
      10 => { type: "multiple_choice", q: "Northbridge has 5 critical roles. 2 have a ready-now successor. What is its bench strength?", opts: ["A) 20%", "B) 40%", "C) 60%"], ans: "B" },
      11 => { type: "multiple_choice", q: "Northbridge made 8 internal moves and 94 external hires last year. What is its internal fill rate?", opts: ["A) 8.5%", "B) 7.8%", "C) 92.2%"], ans: "B" },
      12 => { type: "multiple_choice", q: "An AI tool says Northbridge needs 137 external hires, but 15 people will move into new jobs inside the company. What did the AI most likely forget?", opts: ["A) The backfills for the jobs those 15 people leave", "B) The agency workers at the Christmas peak", "C) The people who will retire"], ans: "A" },
      13 => { type: "true_false", q: "On a one-page plan for leaders, you should hide weak assumptions so the plan looks more certain.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Part-timers are 20% of the Manchester warehouse and 10.7% of the company. Why did Priya drop the option \"cut part-time hours first\"?", opts: ["A) Part-timers cost more per hour", "B) The law bans all changes to part-time hours", "C) It would hit part-timers hardest and could be unfair to them"], ans: "C" },
      15 => { type: "multiple_choice", q: "Northbridge has 420 people, plans 152 external hires and expects 78 leavers in 2027. What headcount should the plan show at the end of 2027?", opts: ["A) 529", "B) 572", "C) 494"], ans: "C" }
    }

    AiWorkforcePlanningContent::LESSONS.each do |position, data|
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

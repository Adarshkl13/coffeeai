require_relative "../ai_employee_experience_content"

namespace :content do
  desc "Create AI for Employee Experience course and populate all 15 lessons"
  task ai_employee_experience: :environment do
    course = Course.find_or_create_by!(slug: "ai-employee-experience") do |c|
      c.title       = "AI for Employee Experience"
      c.description = "Use AI to make work better for employees. Plan onboarding, answer policy questions with HR chatbots, write clear communications, run surveys, understand feedback, support managers and protect employee privacy."
      c.color       = "#c084fc"
      c.icon        = "🤝"
      c.position    = 53
      c.published   = true
    end
    course.update!(description: "Use AI to make work better for employees. Plan onboarding, answer policy questions with HR chatbots, write clear communications, run surveys, understand feedback, support managers and protect employee privacy.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Employee Experience Is",
      2 => "Where AI Helps HR Teams",
      3 => "Mapping the Employee Journey",
      4 => "Writing Clear HR Communications",
      5 => "Pre-Boarding and Onboarding Plans",
      6 => "Onboarding Content with AI",
      7 => "HR Policy Chatbots",
      8 => "Leave, Payroll and Benefits Questions",
      9 => "Manager Support",
      10 => "Employee Surveys",
      11 => "Analysing Survey Comments with AI",
      12 => "Wellbeing and Inclusion",
      13 => "Recognition and Engagement Ideas",
      14 => "Exits and Offboarding",
      15 => "Capstone: An Employee Experience Plan"
    }

    descriptions = {
      1 => "Learn what employee experience is, the journey from offer to exit, the moments that matter and how to calculate the attrition rate.",
      2 => "See which HR tasks AI does well, which need careful checks and which only people should do, and how to protect employee privacy.",
      3 => "Build an employee journey map with stages, touchpoints and pain points from real employee notes, and check what AI adds.",
      4 => "Write clear HR messages that answer five questions, choose the right channel and tone, and check AI drafts and translations.",
      5 => "Plan pre-boarding and the first 90 days for two different roles, with checklists, owners, a buddy and an AI-drafted plan.",
      6 => "Create welcome guides, role guides, FAQs and quizzes with AI from an HR fact sheet, and check every fact before new joiners see them.",
      7 => "Set up an HR chatbot that answers only from your handbook, names its source, and hands sensitive questions to a person.",
      8 => "Answer leave, payroll and benefits questions clearly from your own policy, check every number, and keep personal pay data private.",
      9 => "Help managers with AI-planned one-to-ones, fair SBI feedback, specific recognition and preparation for difficult conversations.",
      10 => "Plan engagement and pulse surveys, write clear questions with AI, protect anonymity and improve response rates.",
      11 => "Use AI to sort survey comments into themes, check its counts and quotes, and protect anonymity in small groups.",
      12 => "Plan wellbeing and inclusion for shift and office staff, learn POSH Act basics, and see where AI must stop.",
      13 => "Design a fair recognition programme and write specific, personal thank-you messages with AI.",
      14 => "Build exit checklists, plan knowledge handovers, run exit interviews and calculate attrition correctly.",
      15 => "Build a full employee experience plan for Swift Mart: journey map, onboarding, chatbot rules, survey and action plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "In September, Swift Mart's warehouse had 440 staff at the start and 460 at the end, and 27 people left. What is the attrition rate for the month?", opts: ["A) 27 ÷ 440 × 100 = 6.1%", "B) 27 ÷ 450 × 100 = 6.0%", "C) 27 ÷ 460 × 100 = 5.9%"], ans: "B" },
      2 => { type: "true_false", q: "An AI tool can reliably tell if an employee is lying from their voice on a video call, so HR can use it in investigations.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "On a journey map, what is a pain point?", opts: ["A) Any place where the employee meets the company, such as an SMS or a form", "B) The person or team who can fix a problem", "C) Something that causes trouble, delay or worry for the employee"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which line from an HR message is the clearest?", opts: ["A) \"From Monday 2 November 2026, book your cab in the app before 6 pm.\"", "B) \"All eligible personnel must comply with the revised SOP with immediate effect.\"", "C) \"The policy will be effective shortly as per management discretion.\""], ans: "A" },
      5 => { type: "multiple_choice", q: "Who is the best onboarding buddy for Ramesh, a new morning-shift warehouse associate?", opts: ["A) His shift lead, who is also his manager", "B) A patient associate on the same morning shift who has worked there for over a year", "C) An HR executive who works in the office from 9 am to 6 pm"], ans: "B" },
      6 => { type: "multiple_choice", q: "Why should an onboarding prompt tell the AI to write [ASK HR] when a fact is missing?", opts: ["A) It makes the guide shorter", "B) It turns a hidden guess into a visible gap that HR can fill", "C) It makes the AI translate the guide"], ans: "B" },
      7 => { type: "true_false", q: "An HR policy chatbot should always give an answer, even when the handbook does not cover the question.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Ramesh joined on 5 October. His made-up monthly gross pay is Rs 22,000, and Swift Mart pays the first month by calendar days. What is his October gross pay?", opts: ["A) Rs 19,800", "B) Rs 22,000", "C) Rs 19,161"], ans: "C" },
      9 => { type: "multiple_choice", q: "Which sentence is written in the SBI (Situation, Behaviour, Impact) style?", opts: ["A) \"On the 13 Oct morning shift, you set aside three damaged crates, so customers got fresh stock.\"", "B) \"You are a very careful worker.\"", "C) \"Good job, keep it up.\""], ans: "A" },
      10 => { type: "multiple_choice", q: "450 warehouse staff are invited to a survey and 288 answer. What is the response rate?", opts: ["A) About 36%", "B) 64%", "C) About 67%"], ans: "B" },
      11 => { type: "multiple_choice", q: "Only 4 people from one night shift answered a survey. What should you do with their comments in the report?", opts: ["A) Show them as a separate group so leaders see every shift", "B) Merge them into a larger group, such as all night shifts", "C) Ask AI to guess who wrote each comment"], ans: "B" },
      12 => { type: "true_false", q: "An HR chatbot may summarise a sexual harassment complaint for HR, as long as it removes the names first.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Which recognition message is the best?", opts: ["A) \"Pooja, on 12 Sep you spotted the cold room alarm and saved 40 milk orders. Thank you!\"", "B) \"Great job, everyone, keep it up!\"", "C) \"Thanks to the warehouse team for another good month.\""], ans: "A" },
      14 => { type: "multiple_choice", q: "A team started the quarter with 420 staff and ended with 460. 66 people left. What is the quarterly attrition rate?", opts: ["A) About 14.3% (66 ÷ 460)", "B) About 15.7% (66 ÷ 420)", "C) 15% (66 ÷ 440, the average headcount)"], ans: "C" },
      15 => { type: "multiple_choice", q: "In the capstone plan, where should the actions in the action plan come from?", opts: ["A) Popular ideas that AI suggests for any company", "B) Themes that employees actually raised in the survey", "C) Whatever the cheapest options are"], ans: "B" }
    }

    AiEmployeeExperienceContent::LESSONS.each do |position, data|
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

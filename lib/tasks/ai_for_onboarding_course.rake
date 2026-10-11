require_relative "../ai_for_onboarding_content"

namespace :content do
  desc "Create AI for Onboarding course and populate all 15 lessons"
  task ai_for_onboarding: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-onboarding") do |c|
      c.title       = "AI for Onboarding"
      c.description = "Use AI to give every new joiner a great start. Plan pre-boarding, first-day and first-week schedules, 30-60-90 day plans, welcome packs, buddy programmes and new-joiner FAQs, then measure and improve the experience."
      c.color       = "#8b5cf6"
      c.icon        = "\u{1F44B}"
      c.position    = 90
      c.published   = true
    end
    course.update!(title: "AI for Onboarding", description: "Use AI to give every new joiner a great start. Plan pre-boarding, first-day and first-week schedules, 30-60-90 day plans, welcome packs, buddy programmes and new-joiner FAQs, then measure and improve the experience.", color: "#8b5cf6", icon: "\u{1F44B}", position: 90)
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Onboarding Matters",
      2 => "Where AI Helps in Onboarding",
      3 => "Rules and Paperwork",
      4 => "Mapping the New Joiner Journey",
      5 => "Pre-Boarding",
      6 => "The First Day and First Week",
      7 => "30-60-90 Day Plans",
      8 => "Welcome Packs and Handbooks",
      9 => "Buddy and Mentor Programmes",
      10 => "New Joiner FAQs and Chat Helpers",
      11 => "Remote and Hybrid Onboarding",
      12 => "Onboarding for Different Roles",
      13 => "Measuring Onboarding",
      14 => "Improving the Programme",
      15 => "Capstone: An Onboarding Programme for Northbridge Logistics"
    }

    descriptions = {
      1 => "Learn the onboarding stages from offer to day 90, and how to calculate the early leaver rate and time to productivity.",
      2 => "See which onboarding tasks AI can draft, which need a careful check, and which a person must do, with a safe way to work.",
      3 => "Learn the main UK and US onboarding paperwork and its deadlines in general terms, and use AI to build a checked tracker.",
      4 => "Build a new-joiner journey map with touchpoints, owners, feelings and gaps, and see why each role needs its own map.",
      5 => "Plan pre-boarding with owners and due dates, use WORKDAY to set dates, and draft a welcome email with AI that you check.",
      6 => "Plan a first day and first week with introductions, quick wins and short check-ins, and use AI to draft a schedule that avoids overload.",
      7 => "Write 30-60-90 day plans with clear goals for three roles, and set review dates with a formula that skips bank holidays.",
      8 => "Turn long policies into a short welcome pack with AI, then check every line against the real policy and keep it up to date.",
      9 => "Learn the difference between buddies, mentors and managers, choose buddies fairly, work out how many you need and write a buddy guide.",
      10 => "Build approved FAQ answers with sources, set handover rules for an AI chat helper and test it before new joiners use it.",
      11 => "Plan online first days, hybrid weeks and shared hours across time zones, and help remote joiners feel part of the team.",
      12 => "Shape onboarding for warehouse, office, manager and graduate roles, and plan accessibility and reasonable adjustments with each joiner.",
      13 => "Define and calculate the early leaver rate, time to productivity, day-one readiness and survey results, and catch AI number mistakes.",
      14 => "Turn feedback into themes, choose fixes by impact and effort, run a pilot and keep onboarding content up to date with a register.",
      15 => "Build a complete onboarding programme for Northbridge Logistics: journey maps, schedules, 30-60-90 plans, welcome pack, FAQ and measurement plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A company hired 96 warehouse operatives. 24 of them left within 90 days of starting. What is the early leaver rate?", opts: ["A) 24.0%", "B) 25.0%", "C) 4.0%"], ans: "B" },
      2 => { type: "multiple_choice", q: "An AI chat helper answers a new joiner's question about shift swaps, but it was given no policy text. What is the safest fix?", opts: ["A) Trust the answer because it sounds confident", "B) Let new joiners decide if the answer is right", "C) Give the helper the real policy text and tell it to say \"ask HR\" when the text does not answer"], ans: "C" },
      3 => { type: "true_false", q: "In the UK, it is fine to do the right-to-work check during the new joiner's first week, after they have started work.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "In a new-joiner journey map, what is an owner?", opts: ["A) The one named person or team who makes sure a touchpoint happens", "B) Every manager in the company", "C) The AI tool that drafted the map"], ans: "A" },
      5 => { type: "multiple_choice", q: "A new joiner starts on Monday 2 November 2026. Which spreadsheet formula gives the date 3 working days before the start, if the start date is in B2?", opts: ["A) =B2-3", "B) =TODAY()-3", "C) =WORKDAY(B2,-3)"], ans: "C" },
      6 => { type: "multiple_choice", q: "Which plan for a warehouse new joiner's first week best avoids overload?", opts: ["A) One new system or machine per day, no pick-rate target, and a short check-in each shift", "B) All systems and machines on day one, so the rest of the week is free", "C) A 3-hour slide talk on day one, then work alone from day two"], ans: "A" },
      7 => { type: "multiple_choice", q: "Start date is in B2 and a range called Holidays lists bank holidays. Which formula gives the last working day on or before day 60?", opts: ["A) =B2+60", "B) =WORKDAY(B2,60)", "C) =WORKDAY(B2+60+1,-1,Holidays)"], ans: "C" },
      8 => { type: "true_false", q: "If an AI summary of a policy reads clearly and sounds sure, you do not need to check it against the policy text.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "What is the main job of a buddy?", opts: ["A) To judge the new joiner's performance and report to the manager", "B) To give everyday, practical help to a new joiner for the first few weeks", "C) To agree reasonable adjustments with the new joiner"], ans: "B" },
      10 => { type: "multiple_choice", q: "A new joiner tells the chat helper: \"My payslip is £85 short.\" What should the helper do?", opts: ["A) Hand the question over to a named person in Payroll or HR", "B) Tell them to wait for next week's pay", "C) Guess the reason from general tax rules"], ans: "A" },
      11 => { type: "multiple_choice", q: "A remote new hire works in Denver, which is 2 hours behind New York. The welcome call is at 11:00 New York time. What time is it for the new hire?", opts: ["A) 09:00", "B) 13:00", "C) 11:00"], ans: "A" },
      12 => { type: "true_false", q: "HR should decide what adjustments a new joiner needs by looking at them, without asking the joiner.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "16 new joiners answered a survey on a 1 to 5 scale. 6 chose 4 or 5, and 4 chose 3. If \"agree\" means 4 or 5, what percentage agree?", opts: ["A) 62.5%", "B) 6.0%", "C) 37.5%"], ans: "C" },
      14 => { type: "multiple_choice", q: "Which fix is a quick win?", opts: ["A) Buying a new onboarding app that nobody asked for", "B) Adding an example shift week to every offer letter, after 7 leavers said the shift was not as explained", "C) Rebuilding the whole safety training in one weekend"], ans: "B" },
      15 => { type: "multiple_choice", q: "Priya uses AI to draft each part of the onboarding programme. What keeps the facts the same in every part?", opts: ["A) Pasting one fact sheet into every prompt and checking the parts against each other", "B) Asking the AI to remember the company from last month", "C) Letting each manager use their own numbers"], ans: "A" }
    }

    AiForOnboardingContent::LESSONS.each do |position, data|
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

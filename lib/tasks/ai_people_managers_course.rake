require_relative "../ai_people_managers_content"

namespace :content do
  desc "Create AI for People Managers course and populate all 15 lessons"
  task ai_people_managers: :environment do
    course = Course.find_or_create_by!(slug: "ai-people-managers") do |c|
      c.title       = "AI for People Managers"
      c.description = "Use AI to be a better manager without losing the human touch. Prepare great 1:1s, set clear goals, give honest feedback, plan difficult conversations, recognise good work, support wellbeing and grow your team, while you make the decisions about people."
      c.color       = "#d97706"
      c.icon        = "\u{1F9D1}\u200D\u{1F91D}\u200D\u{1F9D1}"
      c.position    = 99
      c.published   = true
    end
    course.update!(title: "AI for People Managers", description: "Use AI to be a better manager without losing the human touch. Prepare great 1:1s, set clear goals, give honest feedback, plan difficult conversations, recognise good work, support wellbeing and grow your team, while you make the decisions about people.", color: "#d97706", icon: "\u{1F9D1}\u200D\u{1F91D}\u200D\u{1F9D1}", position: 99)
    puts "Course: #{course.title}"

    titles = {
      1 => "What Good People Managers Do",
      2 => "Where AI Helps Managers and Where It Must Not",
      3 => "Using AI Fairly and Safely with Team Information",
      4 => "Knowing Your Team",
      5 => "Great 1:1s",
      6 => "Setting Clear Goals and Expectations",
      7 => "Giving Feedback",
      8 => "Recognising Good Work",
      9 => "Running Team Meetings",
      10 => "Difficult Conversations",
      11 => "Supporting Wellbeing and Preventing Burnout",
      12 => "Handling Conflict in the Team",
      13 => "Coaching and Career Growth",
      14 => "Hiring and Onboarding for Your Team",
      15 => "Capstone: A 90-Day Plan for Hannah's Team at Bluefern Digital"
    }

    descriptions = {
      1 => "Learn the six main jobs of a people manager and why trust and clarity sit under all of them.",
      2 => "Use a simple traffic-light rule to see where AI helps managers and which decisions about people must stay with you.",
      3 => "Learn what never to paste into AI, how to rewrite notes safely, how to check answers for bias and how to be open with your team.",
      4 => "Build a simple team profile of strengths, motivations and working styles, with each person's help and without AI guesses.",
      5 => "Plan great 1:1s with a shared agenda, good questions, clear notes and follow-ups, using AI to prepare.",
      6 => "Turn vague goals into SMART goals, make roles clear with a RACI table and set priorities your team can follow.",
      7 => "Give clear praise and growth feedback with the SBI model, at the right time, and use AI to remove labels from your words.",
      8 => "Make recognition specific and fair, check who you thank with a simple spreadsheet and plan celebrations that include everyone.",
      9 => "Run team meetings with a clear purpose, a timed agenda, a decision log and action items, and check AI meeting recaps.",
      10 => "Prepare a difficult conversation on one page, practise it with AI role-play and stay fair, with HR involved when needed.",
      11 => "Spot workload signals, start a kind check-in, change the work and point people to real help, without guessing anyone's health.",
      12 => "Handle team conflict by listening to each side, checking the facts and agreeing clear rules together, with AI as a neutral helper.",
      13 => "Use the GROW model and open questions to coach people, and write one-page development plans in their own words.",
      14 => "Write a role profile, plan fair structured interviews and build a first-week plan, while people make every hiring decision.",
      15 => "Bring the course together in a 90-day plan for Hannah's team: profile, 1:1s, goals, feedback, a hard conversation and growth."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Hannah's team keeps arguing about late design changes because nobody agreed when a design is signed off. Which manager job fixes this best?", opts: ["A) Giving more praise in the team meeting", "B) Making roles and rules clear, such as who signs off a design and when", "C) Asking AI to decide who is to blame"], ans: "B" },
      2 => { type: "true_false", q: "It is fine to let an AI tool rank your team by productivity and decide who gets a promotion, as long as you give it your Jira data.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which of these should a manager never paste into an AI tool, even an approved one?", opts: ["A) A request for a team meeting agenda about quarterly goals", "B) General coaching questions for a junior developer", "C) A note that a team member is seeing their doctor about stress"], ans: "C" },
      4 => { type: "multiple_choice", q: "Hannah asks AI to turn her 1:1 notes into a team profile. One cell has no information. What should the table say?", opts: ["A) \"Ask in next 1:1\", so the gap is clear", "B) The AI's best guess about the person's personality", "C) A typical answer for people in that job role"], ans: "A" },
      5 => { type: "multiple_choice", q: "In a good 30-minute 1:1, what usually comes first?", opts: ["A) The manager's status update questions", "B) The team member's own topics", "C) A review of everyone's Jira tickets"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which of these is a SMART goal?", opts: ["A) Cut bugs found after release from 18 in Q3 to 10 or fewer in Q4. Owner: Oliver.", "B) Make our releases better this year.", "C) Everyone tries harder with testing from now on."], ans: "A" },
      7 => { type: "multiple_choice", q: "In the SBI feedback model, which sentence is the Behaviour part?", opts: ["A) You were not prepared.", "B) In your rehearsal on Tuesday,", "C) You showed screens for all 15 minutes and did not say why the buttons are bigger."], ans: "C" },
      8 => { type: "multiple_choice", q: "Hannah's tracker shows Nadia, who works remotely, got 0 public thank-yous in September. What is the best next step?", opts: ["A) Use the tracker as evidence in Nadia's performance review", "B) Look closely at Nadia's real work and thank her for something specific, in the way she prefers", "C) Ask AI to write five general thank-you messages for Nadia"], ans: "B" },
      9 => { type: "true_false", q: "A team meeting is finished when the discussion ends. Writing down decisions and action owners is optional.", opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "How should a manager use AI role-play before a difficult conversation?", opts: ["A) Practise the opening words using roles, not names, and still listen to the real person", "B) Paste the person's HR file so the AI can copy them exactly", "C) Let the AI decide what the outcome of the conversation should be"], ans: "A" },
      11 => { type: "multiple_choice", q: "Aisha logs 46 hours a week, messages late at night and cancelled two 1:1s. What should Hannah do first?", opts: ["A) Ask AI to read Aisha's messages and say if she is unwell", "B) Ask kindly for a private talk at a time and format that suits Aisha", "C) Tell the team that Aisha is struggling so they can help"], ans: "B" },
      12 => { type: "multiple_choice", q: "Two senior team members keep arguing about late design changes. What is the best first step?", opts: ["A) Call a team meeting so everyone can say who is right", "B) Ask AI to decide who is to blame from their Slack messages", "C) Talk to each person alone and listen, then check the facts"], ans: "C" },
      13 => { type: "true_false", q: "\"Don't you think presenting to the client would be good for you?\" is a good open coaching question.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "What makes a structured interview fairer?", opts: ["A) Every candidate gets the same questions, scored against a guide agreed in advance", "B) An AI tool scores each candidate's CV before the interview", "C) Each interviewer asks whatever feels right on the day"], ans: "A" },
      15 => { type: "multiple_choice", q: "Which detail should stay out of Hannah's shared 90-day plan?", opts: ["A) The Thames Valley launch date of 26 November", "B) The reason a team member was struggling with their health", "C) The goal of 10 or fewer bugs after release"], ans: "B" }
    }

    AiPeopleManagersContent::LESSONS.each do |position, data|
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

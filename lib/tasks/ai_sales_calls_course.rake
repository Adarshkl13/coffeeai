require_relative "../ai_sales_calls_content"

namespace :content do
  desc "Create AI for Sales Calls course and populate all 15 lessons"
  task ai_sales_calls: :environment do
    course = Course.find_or_create_by!(slug: "ai-sales-calls") do |c|
      c.title       = "AI for Sales Calls"
      c.description = "Use AI to prepare for, run and learn from sales calls. Plan discovery calls, ask better questions, handle objections, write call notes and follow-ups, and use call recordings to coach yourself and your team."
      c.color       = "#fb923c"
      c.icon        = "📞"
      c.position    = 49
      c.published   = true
    end
    course.update!(description: "Use AI to prepare for, run and learn from sales calls. Plan discovery calls, ask better questions, handle objections, write call notes and follow-ups, and use call recordings to coach yourself and your team.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Types of Sales Calls",
      2 => "Where AI Helps with Calls",
      3 => "Preparing for a Call with AI",
      4 => "Discovery Questions",
      5 => "Running a Discovery Call",
      6 => "Giving a Great Demo",
      7 => "Handling Objections on the Call",
      8 => "Call Notes and Summaries with AI",
      9 => "Follow-Up Emails After a Call",
      10 => "Call Recording and Transcripts",
      11 => "Finding Patterns in Many Calls",
      12 => "Coaching with Call Reviews",
      13 => "Negotiation and Closing Calls",
      14 => "Ethics on Sales Calls",
      15 => "Capstone: Plan, Run and Review a Sales Call"
    }

    descriptions = {
      1 => "Learn the four types of sales calls (discovery, demo, negotiation and closing), the goal of each, and what makes a call good.",
      2 => "See where AI helps before, during and after a call, what a person must still do, and why you ask before recording.",
      3 => "Build a one-page call prep brief with AI: account, attendees, goal, agenda and likely objections, with a source for every fact.",
      4 => "Ask open discovery questions about current process, pain, impact and decision process, and build a question bank with AI.",
      5 => "Run a discovery call with a clear agenda, active listening and a healthy talk-to-listen ratio, and take notes that matter.",
      6 => "Plan a demo around the buyer's pain, check their understanding and handle questions calmly, with AI helping you draft the plan.",
      7 => "Answer common objections with a calm five-step method, know when to pause and follow up, and practise with AI playing the buyer.",
      8 => "Turn a call transcript into a clear summary with AI, then check numbers, names, dates and promises before it goes into your CRM.",
      9 => "Write a short, honest follow-up email the same day, with a recap, value, next steps and the right attachments.",
      10 => "Ask for consent before recording, understand how recording rules differ, fix transcript errors with Indian accents and languages, and keep recordings private.",
      11 => "Find common objections, competitor mentions and customer questions across many calls. Remove private data, let AI tag themes, and count the results yourself in a spreadsheet.",
      12 => "Build a simple call scorecard, use AI to draft reviews with evidence, give feedback that helps, and practise with AI role-play.",
      13 => "Plan negotiation and closing calls with real discount maths, give-and-get trade-offs, calm closing questions and no over-promising.",
      14 => "Keep sales calls honest: true claims, no pressure tactics, and the basics of recording, calling and data rules (general education, not legal advice).",
      15 => "Plan, run and review one sales call from start to finish: prep brief, question plan, call summary, follow-up email and coaching scorecard."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Kavya wants to learn how Tulsi Textiles closes its books each month and where time is lost. Which type of call is this?", opts: ["A) Discovery", "B) Negotiation", "C) Closing"], ans: "A" },
      2 => { type: "true_false", q: "If a buyer says no to recording, you can still turn on the AI note-taker as long as you delete the recording later.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Your AI-made call brief says \"The company has three factories\", but none of your notes say this. What should you do?", opts: ["A) Keep it, because AI usually knows these things", "B) Delete it or turn it into a question to ask on the call", "C) Mention it early on the call to sound prepared"], ans: "B" },
      4 => { type: "multiple_choice", q: "Meena's team handles 400 invoices a month, and each takes about 4 minutes. About how many hours a month is that?", opts: ["A) About 16 hours", "B) About 40 hours", "C) About 27 hours"], ans: "C" },
      5 => { type: "multiple_choice", q: "On a 30-minute call, the rep talked for 12 minutes and the buyer for 18 minutes. What is the rep's talk share?", opts: ["A) 40%", "B) 60%", "C) 12%"], ans: "A" },
      6 => { type: "multiple_choice", q: "What is the best way to start a demo for a buyer like Meena Shah?", opts: ["A) Show every feature of the product, one by one", "B) Recap her pain in her own words, such as the 10-day close", "C) Talk about the history of your company"], ans: "B" },
      7 => { type: "true_false", q: "If you do not know the answer to a buyer's objection, it is best to guess so the call keeps moving.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "An AI summary says \"Meena agreed to a trial in November\". In the transcript, Meena said \"Maybe in November\". What should you do?", opts: ["A) Keep it, because it is close enough", "B) Delete the whole summary and write it again from memory", "C) Change it to a MAYBE, because nothing was agreed"], ans: "C" },
      9 => { type: "multiple_choice", q: "When should you send a follow-up email after a sales call?", opts: ["A) The same day, from checked notes", "B) After a week, so you do not seem too keen", "C) Only if the buyer asks for one"], ans: "A" },
      10 => { type: "true_false", q: "Even where only one person on a call needs to agree to a recording, it is good practice to tell everyone and ask first.", opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Rohit reviews 40 calls. The \"rate per parcel too high\" objection appears in 14 of them. What share of calls is that?", opts: ["A) 14%", "B) 35%", "C) 54%"], ans: "B" },
      12 => { type: "true_false", q: "A good coaching review gives the rep a long list of every mistake at once, so nothing is missed.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "The Tulsi Textiles plan costs ₹1,20,000 a year. Kavya offers 10% off in return for a two-year term. What is the new price per year?", opts: ["A) ₹1,08,000", "B) ₹96,000", "C) ₹1,10,000"], ans: "A" },
      14 => { type: "multiple_choice", q: "Which of these is a pressure tactic on a sales call?", opts: ["A) Asking the customer if it is OK to record the call", "B) Explaining a real order deadline and the reason for it", "C) Saying \"Only 2 slots are left\" when there are many free slots"], ans: "C" },
      15 => { type: "multiple_choice", q: "The AI's call summary says Meena will send 50 sample invoices. The transcript says 20. What should Kavya do?", opts: ["A) Keep 50, because the AI read the whole transcript", "B) Change it to 20 before the email and CRM notes, and check the other numbers and dates too", "C) Delete the summary and write nothing"], ans: "B" }
    }

    AiSalesCallsContent::LESSONS.each do |position, data|
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

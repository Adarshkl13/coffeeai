require_relative "../ai_sales_outreach_content"

namespace :content do
  desc "Create AI for Sales Outreach course and populate all 15 lessons"
  task ai_sales_outreach: :environment do
    course = Course.find_or_create_by!(slug: "ai-sales-outreach") do |c|
      c.title       = "AI for Sales Outreach"
      c.description = "Use AI to write outreach that gets replies. Research prospects, write cold emails and LinkedIn messages that feel personal, build follow-up sequences, handle objections and test what works, without spam or false claims."
      c.color       = "#f97316"
      c.icon        = "📨"
      c.position    = 47
      c.published   = true
    end
    course.update!(description: "Use AI to write outreach that gets replies. Research prospects, write cold emails and LinkedIn messages that feel personal, build follow-up sequences, handle objections and test what works, without spam or false claims.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Sales Outreach Works",
      2 => "Where AI Helps in Outreach",
      3 => "Research Before You Write",
      4 => "Your Value Proposition",
      5 => "Cold Emails That Get Replies",
      6 => "Personalisation at Scale",
      7 => "LinkedIn Connection Requests and Messages",
      8 => "Cold Calls and Voicemail Scripts",
      9 => "WhatsApp and Other Channels",
      10 => "Follow-Up Sequences",
      11 => "Handling Objections",
      12 => "Booking the Meeting",
      13 => "Testing and Improving Outreach",
      14 => "Deliverability and Rules",
      15 => "Capstone: A Complete Outreach Campaign"
    }

    descriptions = {
      1 => "Learn how cold and warm outreach work, which channel to use when, and how to calculate reply rate and meeting rate.",
      2 => "See where AI helps in outreach, and how to catch fake personalisation, invented facts and spam before you send.",
      3 => "Find three true facts and a reason to reach out now, with a source for each, and use AI to sum up only what you found.",
      4 => "Turn product features into outcomes buyers care about, add real proof, and build a value proposition canvas with AI.",
      5 => "Write short cold emails with a clear subject, a first line about the reader, one outcome, one ask and an easy way to say no.",
      6 => "Use templates with one real personal line, merge fields and AI drafting to personalise many emails without faking research or being creepy.",
      7 => "Prepare your profile, write short LinkedIn connection notes and follow-ups with AI, and follow LinkedIn's rules against bots and scraping.",
      8 => "Prepare permission-based openers, discovery questions and voicemail scripts with AI, and learn India's DND rules for sales calls.",
      9 => "Learn when WhatsApp is the right channel, what opt-in means, the main business messaging rules and the right tone for chat messages.",
      10 => "Plan a 5-touch follow-up sequence with growing gaps, a new angle each time, clear stop rules and honest AI-drafted messages.",
      11 => "Answer common objections with listen, acknowledge, ask and answer. Build an honest objection guide and practise with AI role-play.",
      12 => "Turn interested replies into held meetings with clear asks, scheduling links, and kind confirmation, reminder and no-show messages.",
      13 => "Run fair A/B tests on subject lines and openers, calculate reply rates correctly, and learn why small tests can fool you.",
      14 => "Keep cold emails out of spam with authentication, a slow sending pace and easy opt-outs, and learn the main consent rules in general terms.",
      15 => "Plan a full outreach campaign for Nimbus Logistics: research 5 prospects, write the email, LinkedIn note and call script, and build a follow-up sequence."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Kavya contacted 200 prospects and got 18 replies. What is her reply rate?", opts: ["A) 18%", "B) 9%", "C) 4%"], ans: "B" },
      2 => { type: "true_false", q: "If an AI draft says \"congratulations on your award\", you can send it as long as the rest of the email is good.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which fact is best to use in the first line of a cold email?", opts: ["A) A recent LinkedIn post where the prospect wrote about a work problem", "B) The prospect's family holiday photos on Instagram", "C) A revenue number an AI chat gave you with no source"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which of these is an outcome, not a feature?", opts: ["A) Bank entry matching", "B) GST invoice templates", "C) The owner closes the month faster"], ans: "C" },
      5 => { type: "multiple_choice", q: "How many asks should a cold email usually have?", opts: ["A) Three, so the reader can choose", "B) One clear, easy ask", "C) None, just share information"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which opening line is the best kind of personalisation?", opts: ["A) \"I see you are a business in Denver.\"", "B) \"Hope your family trip to Miami was fun.\"", "C) \"Saw GreenLeaf is hiring an accounts assistant. Growing teams often need simpler billing.\""], ans: "C" },
      7 => { type: "true_false", q: "Using a browser extension that sends LinkedIn invitations for you is fine, as long as the notes are personal.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "What does a permission-based cold call opener do?", opts: ["A) Says who you are and why you called, then lets the person choose to continue", "B) Starts with \"How are you today?\" to build trust", "C) Explains every product feature before the person can say no"], ans: "A" },
      9 => { type: "multiple_choice", q: "Sweet Crumbs collected a manager's visiting card at an event. Can they send her WhatsApp offers?", opts: ["A) Yes, because she shared her number", "B) Not yet. A card is not opt-in, so they should email or call and ask first", "C) Yes, if the message is short and friendly"], ans: "B" },
      10 => { type: "multiple_choice", q: "40 prospects got touch 1 of a sequence and 3 replied. What is the reply rate for touch 1?", opts: ["A) 3%", "B) 13.3%", "C) 7.5%"], ans: "C" },
      11 => { type: "multiple_choice", q: "A prospect says, \"It is too expensive.\" What should you do first?", opts: ["A) Offer a discount at once", "B) Acknowledge it and ask a question to find the real reason", "C) Repeat the list of features"], ans: "B" },
      12 => { type: "multiple_choice", q: "Rohit booked 22 meetings in July and 3 were no-shows. What was his show rate?", opts: ["A) 13.6%", "B) 75.0%", "C) 86.4%"], ans: "C" },
      13 => { type: "multiple_choice", q: "Version A got 9 replies from 150 delivered emails. Version B got 15 replies from 150. What is the best conclusion?", opts: ["A) B looks better, but the test is too small to be sure", "B) B is proven to be 66.7% better", "C) A is better because it had fewer replies to handle"], ans: "A" },
      14 => { type: "true_false", q: "Using the subject line \"Re: our call\" for someone you have never spoken to is a good way to get more opens.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "In your capstone research, AI adds \"They ship about 2,000 orders a month\", but this was not in your notes. What should you do?", opts: ["A) Keep it, because it sounds realistic", "B) Round it to 1,500 to be safe", "C) Delete it, unless you can find and check a real source"], ans: "C" }
    }

    AiSalesOutreachContent::LESSONS.each do |position, data|
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

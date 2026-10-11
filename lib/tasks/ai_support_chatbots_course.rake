require_relative "../ai_support_chatbots_content"

namespace :content do
  desc "Create AI Support Chatbots course and populate all 15 lessons"
  task ai_support_chatbots: :environment do
    course = Course.find_or_create_by!(slug: "ai-support-chatbots") do |c|
      c.title       = "AI Support Chatbots"
      c.description = "Plan, build and improve AI support chatbots without coding. Choose what the bot should handle, build a knowledge base, write bot instructions, design human handover, launch on your website and WhatsApp, and measure quality safely."
      c.color       = "#06b6d4"
      c.icon        = "🤖"
      c.position    = 56
      c.published   = true
    end
    course.update!(description: "Plan, build and improve AI support chatbots without coding. Choose what the bot should handle, build a knowledge base, write bot instructions, design human handover, launch on your website and WhatsApp, and measure quality safely.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Support Chatbots Work",
      2 => "Where AI Chatbots Help and Where They Fail",
      3 => "Choosing What Your Bot Handles",
      4 => "No-Code Chatbot Tools",
      5 => "Building a Knowledge Base",
      6 => "Writing Bot Instructions",
      7 => "Conversation Design",
      8 => "Human Handover",
      9 => "Testing Your Chatbot",
      10 => "WhatsApp and Website Bots",
      11 => "Actions: Orders, Bookings and Accounts",
      12 => "Measuring Chatbot Quality",
      13 => "Improving From Conversations",
      14 => "Safety, Privacy and Honesty",
      15 => "Capstone: Design a Support Bot"
    }

    descriptions = {
      1 => "Learn how rule-based bots and AI bots work, how an AI bot answers from your own help articles (RAG), and what bots are good and bad at.",
      2 => "See which support requests a bot can answer, which it should only collect details for, and which must go straight to a person.",
      3 => "Count your top contact reasons, rate the risk of each one, and build a scope table with a real time-saving estimate.",
      4 => "Learn the main types of no-code chatbot tools, what to compare, and how to run a fair trial with a weighted scoring sheet.",
      5 => "Build a knowledge base that works for bots and people, use AI to turn messy notes into clean articles, and keep them up to date.",
      6 => "Write clear bot instructions with a role, tone, topics, allowed facts, a Never list, handover rules and a reply format, using Swifty as the example.",
      7 => "Design greetings, clarifying questions, short answers and fallbacks, and learn when to use buttons or free text.",
      8 => "Decide when the bot hands over to a person, pass a clear summary to the agent and tell the customer honestly what happens next.",
      9 => "Build a test set with edge cases, rude messages and harmless prompt injection tests, then score a test round against a launch rule.",
      10 => "Learn WhatsApp Business Platform basics (opt-in, templates, the 24-hour window, pricing model) and how to place a website widget and handle many languages.",
      11 => "Design safe bot actions such as order look-ups and slot changes: check who the customer is, confirm before changes, and never ask for an OTP or password.",
      12 => "Measure containment, deflection, handover rate and CSAT exactly, and read a sample of chats to find wrong answers, using Swifty's first-month numbers.",
      13 => "Review failed chats, tag why each one failed, and fix the right thing: an article, the bot instructions or the flow. Then retest and log each change.",
      14 => "Keep four promises: say it is a bot, protect personal data, promise only what is true and never block a complaint. Includes a general look at Indian rules (not legal advice).",
      15 => "Put the course together in a six-part design pack for a support bot: scope, knowledge base, instructions, handover rules, a test set and a launch checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does a knowledge-based (RAG) support bot do before it writes an answer?", opts: ["A) It searches your knowledge base for the most relevant articles", "B) It shows a fixed reply from a button menu", "C) It waits for a human agent to write the reply"], ans: "A" },
      2 => { type: "true_false", q: "If a customer sends a photo of a damaged item, the bot may tell them \"Your refund is approved.\"", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Swift Mart gets 12,000 chats a month, and 3,600 of them are about order status. What share of all chats is that?", opts: ["A) 12%", "B) 36%", "C) 30%"], ans: "C" },
      4 => { type: "multiple_choice", q: "In a trial, Tool A scores 60 out of 75 and Tool B scores 55, but Tool B gives better answers. What should the team do?", opts: ["A) Always buy the tool with the higher score", "B) Use the scores as input, look at the weak spots, then decide", "C) Ignore the trial and choose the tool with the best demo"], ans: "B" },
      5 => { type: "multiple_choice", q: "Where should an internal rule such as \"agents can approve refunds up to ₹500\" go?", opts: ["A) In the article's short answer, so the bot can share it", "B) In the article title", "C) In an internal note that the bot never shows to customers"], ans: "C" },
      6 => { type: "multiple_choice", q: "Where should the fact \"bank refunds take 5 to 7 working days\" live?", opts: ["A) In the Never list of the bot instructions", "B) In the knowledge base article, with the instructions telling the bot to use the articles", "C) In the bot's greeting message"], ans: "B" },
      7 => { type: "true_false", q: "A good fallback keeps saying \"Sorry, I did not understand\" until the customer finds the right words.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "An order was delivered at 8 pm yesterday. The customer reports a missing item at 10:20 pm today. The rule is 48 hours. What should the handover summary say?", opts: ["A) 26 hours 20 minutes after delivery, inside the window", "B) 38 hours 20 minutes after delivery, inside the window", "C) 50 hours after delivery, outside the window"], ans: "A" },
      9 => { type: "multiple_choice", q: "In round 1, 52 of 60 tests pass, and one prompt injection test leaks an internal refund limit. The launch rule is 90% and no must-never failures. What should the team do?", opts: ["A) Launch, because 86.7% is close to 90%", "B) Delete the failed test and launch", "C) Fix the leak and the failures, then run the whole test set again"], ans: "C" },
      10 => { type: "multiple_choice", q: "A customer's last WhatsApp message was 30 hours ago. An agent wants to ask them for a photo. What is needed?", opts: ["A) Nothing, a free-form message is fine", "B) An approved message template", "C) A phone call, because WhatsApp does not allow it at all"], ans: "B" },
      11 => { type: "multiple_choice", q: "A customer on WhatsApp asks the bot to change the delivery slot for their order. What should the bot do before it changes the slot?", opts: ["A) Ask the customer to type the OTP sent to their phone", "B) Check the WhatsApp number matches the account, then ask the customer to confirm the new slot", "C) Change the slot at once to save time"], ans: "B" },
      12 => { type: "multiple_choice", q: "A bot had 12,000 chats. 6,360 had no handover, but 960 of those customers left with no answer and 1,440 came back within 72 hours. What is the true resolution rate?", opts: ["A) 33.0%", "B) 53.0%", "C) 47.0%"], ans: "A" },
      13 => { type: "true_false", q: "If the right article exists but the bot picked the wrong one, the best fix is always to write a new article.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Which bot reply is a dark pattern?", opts: ["A) \"I am Swifty, a virtual assistant. Type 'agent' to reach a person.\"", "B) \"Choose your refund: wallet at once, or bank in 5 to 7 working days.\"", "C) \"Are you sure? Real food lovers never cancel.\""], ans: "C" },
      15 => { type: "multiple_choice", q: "Swifty's test set has 30 safety questions. What is the go-live bar for them?", opts: ["A) At least 27 of 30 must pass", "B) All 30 must pass", "C) An average score of 90% across all 120 questions is enough"], ans: "B" }
    }

    AiSupportChatbotsContent::LESSONS.each do |position, data|
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

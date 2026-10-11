require_relative "../ai_patient_chatbots_content"

namespace :content do
  desc "Create AI Patient Chatbots course and populate all 15 lessons"
  task ai_patient_chatbots: :environment do
    course = Course.find_or_create_by!(slug: "ai-patient-chatbots") do |c|
      c.title       = "AI Patient Chatbots"
      c.description = "Design patient chatbots that help without causing harm. Plan the scope, build booking and FAQ flows, set clear triage limits and emergency messages, hand over to people at the right time, write and test the chatbot's instructions, and monitor it after launch."
      c.color       = "#f87171"
      c.icon        = "💬"
      c.position    = 72
      c.published   = true
    end
    course.update!(description: "Design patient chatbots that help without causing harm. Plan the scope, build booking and FAQ flows, set clear triage limits and emergency messages, hand over to people at the right time, write and test the chatbot's instructions, and monitor it after launch.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Patient Chatbots Do",
      2 => "Where AI Helps and Where It Must Stop",
      3 => "Rules and Responsibility",
      4 => "Planning the Chatbot's Scope",
      5 => "Appointment Booking Flows",
      6 => "Answering FAQs Safely",
      7 => "Symptom Questions and Triage Limits",
      8 => "Handover to a Human",
      9 => "Tone, Language and Accessibility",
      10 => "Writing the Chatbot's Instructions",
      11 => "Testing a Patient Chatbot",
      12 => "Privacy and Data in Chat",
      13 => "Monitoring After Launch",
      14 => "Improving the Chatbot Over Time",
      15 => "Capstone: A Safe Chatbot for Nirmal Family Clinic"
    }

    descriptions = {
      1 => "Learn what patient chatbots do well, such as bookings, FAQs, reminders and report status, and what they must never do.",
      2 => "Compare rule-based and AI chatbots, learn the three big risks, and see a safe design where fixed rules decide safety.",
      3 => "Learn in general words what the Telemedicine Practice Guidelines, the DPDP Act and Rules, medical device rules and WhatsApp policies mean for a chatbot.",
      4 => "Plan a chatbot's scope from real message counts, with in-scope and out-of-scope lists, channels and languages.",
      5 => "Design booking, rescheduling and cancelling flows, write private reminders, and measure the no-show rate.",
      6 => "Build an approved FAQ answer library with sources, owners and review dates, and write honest \"I don't know\" answers.",
      7 => "Learn why a chatbot must never diagnose or triage, write red-flag rules that send emergencies to 108 / 112, and pass other symptoms to staff.",
      8 => "Plan when and how the chatbot hands over to a person, with warm handover notes, honest reply times and call-backs.",
      9 => "Write kind, clear chatbot messages in Hindi, English and Hinglish, and make the chatbot easy for elderly patients.",
      10 => "Write the chatbot's system prompt with rules, guardrails and refusal messages, then test it with tricky prompts.",
      11 => "Build a test script with red-flag, tricky, Hindi and English tests, read made-up results, and get a doctor's sign-off before launch.",
      12 => "Collect only the data a chat needs, write a clear consent message, and plan how chats are stored and deleted.",
      13 => "Track containment, handover, booking completion, no-shows and complaints, review chats every week, and handle an incident.",
      14 => "Turn feedback and chat reviews into safe fixes, update approved answers, and keep a version log.",
      15 => "Put it all together: a complete, safe chatbot design for Nirmal Family Clinic, from scope and red flags to tests and monitoring."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which job should a family clinic's patient chatbot NOT do?", opts: ["A) Book an appointment", "B) Say whether a lab report is ready", "C) Explain what a high sugar result means"], ans: "C" },
      2 => { type: "true_false", q: "In a safe hybrid chatbot, the red-flag check runs before the AI writes any reply.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "Under India's Telemedicine Practice Guidelines 2020, what may an AI tool do?", opts: ["A) Prescribe medicines to patients", "B) Support a doctor, who gives the final advice", "C) Counsel patients on its own"], ans: "B" },
      4 => { type: "multiple_choice", q: "A clinic gets 3,120 messages in a month: 936 bookings, 624 about timings and fees, and 312 to reschedule or cancel. What share can the chatbot fully handle?", opts: ["A) 60%", "B) 40%", "C) 30%"], ans: "A" },
      5 => { type: "multiple_choice", q: "A clinic had 800 booked appointments and 120 no-shows in a month. What is the no-show rate?", opts: ["A) 12%", "B) 20%", "C) 15%"], ans: "C" },
      6 => { type: "multiple_choice", q: "A patient asks the chatbot something that is not in the approved answer library. What should it do?", opts: ["A) Write the best answer it can from what it knows", "B) Say it does not have that information and pass the question to staff", "C) Ignore the message"], ans: "B" },
      7 => { type: "true_false", q: "If the chatbot is not sure whether a message is a red flag, it should ask a few more questions before showing the emergency message.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Which of these is a warm handover?", opts: ["A) The bot passes a short note to Pinky and tells the patient she will reply here within about 15 minutes", "B) The bot says \"Please call the clinic\"", "C) The bot keeps trying to answer until the patient gives up"], ans: "A" },
      9 => { type: "multiple_choice", q: "A worried patient writes in Hindi (Devanagari) about a cough. Which reply is best?", opts: ["A) \"Don't worry, it is probably nothing\" in English", "B) A long English message with five questions", "C) A short, kind Hindi reply in Devanagari that gives no advice and offers a visit"], ans: "C" },
      10 => { type: "multiple_choice", q: "Why should a clinic keep a fixed red-flag check even after writing a good system prompt?", opts: ["A) Because the AI can still break a rule or be tricked, so the prompt is only one safety layer", "B) Because system prompts do not work in Hindi", "C) Because the law bans system prompts"], ans: "A" },
      11 => { type: "multiple_choice", q: "A chatbot passes 53 of 60 tests, but 2 red-flag tests fail. What should the clinic do?", opts: ["A) Launch, because 88% is a good pass rate", "B) Fix the failures, run all tests again and launch only when every red-flag test passes", "C) Launch, and fix the red flags next month"], ans: "B" },
      12 => { type: "multiple_choice", q: "Which piece of data should a clinic booking chatbot never ask for?", opts: ["A) The patient's Aadhaar number", "B) The patient's name", "C) The mobile number for the confirmation"], ans: "A" },
      13 => { type: "multiple_choice", q: "In one month a chatbot had 2,340 conversations. It finished 1,548 with no person needed. What is the containment rate?", opts: ["A) 30.3%", "B) 82.0%", "C) 66.2%"], ans: "C" },
      14 => { type: "true_false", q: "After fixing one failed test, you only need to run that one test again before releasing the new version.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "In a safe patient chatbot design, what runs first on every message?", opts: ["A) The booking flow", "B) The red-flag check", "C) The FAQ library search"], ans: "B" }
    }

    AiPatientChatbotsContent::LESSONS.each do |position, data|
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

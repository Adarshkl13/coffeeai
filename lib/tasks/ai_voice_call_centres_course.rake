require_relative "../ai_voice_call_centres_content"

namespace :content do
  desc "Create AI for Voice and Call Centres course and populate all 15 lessons"
  task ai_voice_call_centres: :environment do
    course = Course.find_or_create_by!(slug: "ai-voice-call-centres") do |c|
      c.title       = "AI for Voice and Call Centres"
      c.description = "Learn how AI is changing call centres and how to use it well. Understand call centre metrics, use call transcripts and summaries, support agents in real time, design voice bots and IVR, and run fair quality checks."
      c.color       = "#0e7490"
      c.icon        = "🎧"
      c.position    = 58
      c.published   = true
    end
    course.update!(description: "Learn how AI is changing call centres and how to use it well. Understand call centre metrics, use call transcripts and summaries, support agents in real time, design voice bots and IVR, and run fair quality checks.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Call Centres Work",
      2 => "Where AI Helps in Call Centres",
      3 => "Call Centre Metrics",
      4 => "Call Recording, Consent and Privacy",
      5 => "Speech-to-Text and Transcripts",
      6 => "After-Call Summaries with AI",
      7 => "Agent Assist During Calls",
      8 => "Call Scripts and Talk Tracks",
      9 => "Handling Difficult Calls",
      10 => "IVR and Call Flows",
      11 => "Voice Bots",
      12 => "Quality Assurance with AI",
      13 => "Coaching Agents",
      14 => "Fair and Safe Use of Voice AI",
      15 => "Capstone: Improve a Call Centre Process"
    }

    descriptions = {
      1 => "Learn how a call centre works: inbound and outbound calls, the IVR, queues, agents, supervisors and staff planning.",
      2 => "See where AI helps in a call centre, from transcripts to voice bots, and where people must keep control.",
      3 => "Calculate AHT, first call resolution, service level, abandonment and occupancy with a worked bank example.",
      4 => "Learn how to announce call recording, store and delete recordings safely, and the basics of India's DPDP law (not legal advice).",
      5 => "Understand how speech-to-text works, why Indian languages and accents cause errors, and how to check transcripts.",
      6 => "Use AI to draft after-call summaries and disposition codes, and check every draft against the call before saving.",
      7 => "Learn what agent assist does during live calls, how to set its rules, and when agents should ignore it.",
      8 => "Write call scripts and talk tracks with AI: openings, verification, real empathy lines and safe closings.",
      9 => "Calm angry callers, spot vulnerable customers and scams, and escalate at the right time.",
      10 => "Design a short IVR menu, read IVR data, set up routing and offer callbacks, with help from AI.",
      11 => "Choose what a voice bot should handle from your call reasons, design conversations for the ear, and hand callers to agents smoothly.",
      12 => "Build a QA form, use AI to score calls with evidence, and check AI scores with people through calibration.",
      13 => "Use call data to choose what to coach, hold clear feedback conversations, and let agents practise hard calls with AI role-play.",
      14 => "Question emotion-detection claims, understand voice cloning fraud, and keep voice AI honest and fair across languages.",
      15 => "Build a six-month plan for a bank helpline: metrics review, AI summaries, a new call flow, a voice bot scope and a QA plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "In a call centre, what does the ACD do?", opts: ["A) It records the menu message that callers hear", "B) It puts callers in queues and sends each call to a free agent with the right skill", "C) It scores each call against a quality checklist"], ans: "B" },
      2 => { type: "multiple_choice", q: "Which AI use is the safest first pilot for a bank helpline?", opts: ["A) A voice bot that approves fraud claims", "B) A bot that promises refund dates to callers", "C) Draft after-call summaries that agents read and edit before saving"], ans: "C" },
      3 => { type: "multiple_choice", q: "A centre gets 45,000 calls offered. 32,400 are answered within 20 seconds. Using calls offered, what is the service level?", opts: ["A) 72%", "B) 76.6%", "C) 80%"], ans: "A" },
      4 => { type: "true_false", q: "If an AI vendor stores and transcribes the bank's call recordings, the vendor becomes fully responsible for the data and the bank is no longer responsible.", opts: ["True", "False"], ans: "False" },
      5 => { type: "multiple_choice", q: "A transcript shows \"pachas hazaar\" (₹50,000), but you are not sure what the customer said. What should you do?", opts: ["A) Change it to the amount that seems most likely", "B) Mark it to check, then listen to the audio and check the transaction record", "C) Delete the amount from the transcript"], ans: "B" },
      6 => { type: "multiple_choice", q: "An AI summary says \"Fee will be reversed within 7 days\", but the agent only said the charges team will reply within 7 working days. What should the agent do?", opts: ["A) Save it, because the timeline is almost the same", "B) Change the promise to match what was said, and check the other facts before saving", "C) Delete the summary and save no note"], ans: "B" },
      7 => { type: "true_false", q: "Agents should be scored on how often they use the AI's suggested replies during calls.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Which part of a call should use exact, approved words every time?", opts: ["A) Empathy lines", "B) Questions about the customer's problem", "C) Verification questions and the safety line about OTP, PIN and CVV"], ans: "C" },
      9 => { type: "multiple_choice", q: "An elderly caller says a \"police officer\" on a video call told him to move his savings to a \"safe account\". What should the agent do first?", opts: ["A) Follow the fraud steps now: protect the account, bring in the fraud team and mention the 1930 helpline", "B) Help him move the money, because he asked for it", "C) Ask him to call back tomorrow when he is calmer"], ans: "A" },
      10 => { type: "multiple_choice", q: "Option 5 of an IVR gets 19,350 of the 45,000 calls that reach agents. What share is that?", opts: ["A) 19%", "B) 43%", "C) 57%"], ans: "B" },
      11 => { type: "multiple_choice", q: "A caller tells the voice bot: \"There is a debit I did not make.\" What should the bot do?", opts: ["A) Ask for the OTP to check the account", "B) Move the caller at once to the priority fraud queue, passing on what was said", "C) Tell the caller the refund will arrive in three days"], ans: "B" },
      12 => { type: "multiple_choice", q: "In calibration, the AI scores Marathi calls much lower than people do. What is the best action?", opts: ["A) Use the AI scores anyway, because the AI is more consistent", "B) Stop checking Marathi calls", "C) Have people check Marathi calls, find the cause, fix the AI's instructions and calibrate again"], ans: "C" },
      13 => { type: "true_false", q: "In one coaching session, you should give an agent feedback on as many problems as possible.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Which use of voice AI is safe for a bank?", opts: ["A) A voice match alone approves a money transfer", "B) Calls where the customer says \"fraud\" are flagged for a supervisor to listen to", "C) Agents are ranked by an empathy score taken from their voice tone"], ans: "B" },
      15 => { type: "multiple_choice", q: "A bot will take 5,760 calls a month. AI summaries save 23 seconds on each answered call. Why can't you just add the bot saving to 42,300 x 23 seconds?", opts: ["A) Because the summaries would then be counted on calls the bot already took", "B) Because summaries do not save any time", "C) Because the bot saving is always zero"], ans: "A" }
    }

    AiVoiceCallCentresContent::LESSONS.each do |position, data|
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

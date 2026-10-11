require_relative "../generative_ai_professionals_content"

namespace :content do
  desc "Create Generative AI for Professionals course and populate all 15 lessons"
  task generative_ai_professionals: :environment do
    course = Course.find_or_create_by!(slug: "generative-ai-professionals") do |c|
      c.title       = "Generative AI for Professionals"
      c.description = "Use generative AI to do excellent professional work. Follow workplace AI rules, write expert prompts, check and own AI output, and use AI for emails, reports, research, presentations, meetings, planning and client work, with clear ethics and personal workflows."
      c.color       = "#a21caf"
      c.icon        = "\u{1F4BC}"
      c.position    = 108
      c.published   = true
    end
    course.update!(title: "Generative AI for Professionals", description: "Use generative AI to do excellent professional work. Follow workplace AI rules, write expert prompts, check and own AI output, and use AI for emails, reports, research, presentations, meetings, planning and client work, with clear ethics and personal workflows.", color: "#a21caf", icon: "\u{1F4BC}", position: 108)
    puts "Course: #{course.title}"

    titles = {
      1 => "How Generative AI Is Changing Work",
      2 => "Your Workplace AI Rules",
      3 => "Prompting for Professional Work",
      4 => "Checking and Owning AI Output",
      5 => "Emails and Messages",
      6 => "Reports and Documents",
      7 => "Research and Analysis",
      8 => "Presentations and Storytelling",
      9 => "Meetings",
      10 => "Planning and Problem Solving",
      11 => "Client and Customer Work",
      12 => "Learning and Upskilling with AI",
      13 => "Building Personal AI Workflows",
      14 => "Ethics, Bias and Professional Responsibility",
      15 => "Capstone: Your AI Work Plan at Crestline Consulting"
    }

    descriptions = {
      1 => "Learn which work tasks generative AI helps with, which need human judgement, and why AI should augment your work, not replace it.",
      2 => "Learn how workplace AI policies, approved tools and data classes work, how to protect client confidentiality, and when to stop and ask.",
      3 => "Brief AI like a new colleague with a goal, context, audience, format, example and limits, improve answers step by step, and build a team prompt library.",
      4 => "Use a five-step routine to check AI facts, numbers and sources, deal with made-up citations, and say clearly when you used AI.",
      5 => "Use AI to draft clear emails and replies, get the tone right in difficult messages, and keep every message accurate, personal and yours.",
      6 => "Use AI to plan outlines, draft sections from your notes, summarise long documents with page references and edit reports for clarity.",
      7 => "Use AI to summarise sources, compare options fairly and read data carefully, while keeping facts apart from AI guesses.",
      8 => "Build a clear storyline, draft slides and speaker notes with AI, and present numbers honestly.",
      9 => "Use AI for agendas, meeting notes, action lists and follow-up emails, and always ask for consent before recording.",
      10 => "Use AI to brainstorm, structure problems, weigh options and run a pre-mortem, while you make the final decision.",
      11 => "Use AI to draft proposals, FAQs and personalised messages, keep every promise checked, and be honest with clients about how AI helped.",
      12 => "Use AI as a patient tutor to explain jargon, quiz you and plan your learning, and check every fact against an official source.",
      13 => "Build personal AI workflows with custom instructions, projects and templates, and measure honestly whether they save time.",
      14 => "Protect confidentiality, spot bias, follow your profession's rules, be open about AI use, and know when not to use AI.",
      15 => "Bring the course together: audit your tasks, design three AI workflows, set a checking routine and write a 30-day plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which task should a professional NOT hand over to AI to do alone?", opts: ["A) Writing a first draft of a meeting summary", "B) Deciding which recommendation is right for the client", "C) Rewriting a paragraph in plain English"], ans: "B" },
      2 => { type: "multiple_choice", q: "Olivia wants AI to summarise complaint letters that include tenants' names and addresses. Under Crestline's policy, what should she do?", opts: ["A) Paste them into Crestline Assist, because it is approved", "B) Use a free AI app on her phone instead", "C) Remove or anonymise the personal details first, or do the task by hand"], ans: "C" },
      3 => { type: "true_false", q: "A good work prompt only needs the task. Extra context about the goal, audience and format usually makes the answer worse.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "An AI draft says \"on-time repairs were 82%\". You see it averaged three percentages. What should you do?", opts: ["A) Recalculate the figure from the job counts before you use it", "B) Use it, because AI is good at maths", "C) Round it to 80% to be safe"], ans: "A" },
      5 => { type: "multiple_choice", q: "What should you always do before you send an email that AI drafted?", opts: ["A) Let the AI send it for you to save time", "B) Check names, dates, facts and promises, and make it sound like you", "C) Add \"written by AI\" to the subject line"], ans: "B" },
      6 => { type: "multiple_choice", q: "Olivia asks AI to summarise a 46-page policy. What makes the summary easiest to check?", opts: ["A) Asking for a page number and exact quote for each point", "B) Asking for the shortest possible summary", "C) Asking the AI to say how confident it is overall"], ans: "A" },
      7 => { type: "multiple_choice", q: "Monthly complaints fell from 112 to 88, but the number of repairs also fell. What should you work out before saying the service is improving?", opts: ["A) The average of the monthly complaint counts", "B) Complaints per 1,000 repairs for each month", "C) The total number of complaints for the year"], ans: "B" },
      8 => { type: "true_false", q: "Satisfaction fell from 71% to 63%. It is correct to say it fell by 8%.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Under Crestline's policy, when may a client meeting be recorded or have AI notes?", opts: ["A) Whenever the meeting tool shows a notice to attendees", "B) When the meeting organiser decides it is useful", "C) Only when every attendee agrees, asked at the start"], ans: "C" },
      10 => { type: "multiple_choice", q: "AI gives three options weighted scores. What is the best way to use the scores?", opts: ["A) Pick the top score, because the maths is objective", "B) Treat scores and weights as judgements, test other weights, and let the people who carry the risk decide", "C) Ask the AI to choose, then present its choice to the client"], ans: "B" },
      11 => { type: "multiple_choice", q: "AI drafted an FAQ answer that promises tenants £10 for a missed appointment. The client's repairs policy has no such rule. What should you do?", opts: ["A) Remove it, and send any unanswered questions to the client to decide", "B) Keep it, because many landlords offer compensation", "C) Change it to £5 to be safe"], ans: "A" },
      12 => { type: "true_false", q: "When AI explains a rule or law as a tutor, you can use its answer at work without checking an official source.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Olivia wants to know if her AI workflow really saves time. What is the most honest way to measure it?", opts: ["A) Count only the time the AI took to write the draft", "B) Use a statistic from the internet about AI time savings", "C) Log time before AI and time with AI including checking, plus tasks where AI did not help"], ans: "C" },
      14 => { type: "multiple_choice", q: "A client asks you to use AI to rank named staff by performance. What should you do first?", opts: ["A) Run the ranking quickly in an approved tool", "B) Stop, and ask your risk and HR contacts before doing anything", "C) Use a free AI tool so the firm's tool is not involved"], ans: "B" },
      15 => { type: "multiple_choice", q: "In an AI work plan, which task should usually get the most checks?", opts: ["A) A short internal to-do list", "B) Your own meeting notes", "C) A client deliverable with numbers that tenants will read"], ans: "C" }
    }

    GenerativeAiProfessionalsContent::LESSONS.each do |position, data|
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

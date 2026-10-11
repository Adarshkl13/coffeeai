require_relative "../ai_meetings_communication_content"

namespace :content do
  desc "Create AI for Meetings and Communication course and populate all 15 lessons"
  task ai_meetings_communication: :environment do
    course = Course.find_or_create_by!(slug: "ai-meetings-communication") do |c|
      c.title       = "AI for Meetings and Communication"
      c.description = "Use AI to run better meetings and communicate clearly. Decide when a meeting is needed, write agendas, take notes and actions, write clear emails, announcements and reports, adapt messages for different audiences and handle sensitive messages with care."
      c.color       = "#b45309"
      c.icon        = "\u{1F4AC}"
      c.position    = 101
      c.published   = true
    end
    course.update!(title: "AI for Meetings and Communication", description: "Use AI to run better meetings and communicate clearly. Decide when a meeting is needed, write agendas, take notes and actions, write clear emails, announcements and reports, adapt messages for different audiences and handle sensitive messages with care.", color: "#b45309", icon: "\u{1F4AC}", position: 101)
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Clear Communication Matters at Work",
      2 => "Where AI Helps and Its Limits",
      3 => "Choosing the Right Channel",
      4 => "Do You Need a Meeting?",
      5 => "Writing Agendas",
      6 => "Running Inclusive Meetings",
      7 => "AI Meeting Notes and Action Items",
      8 => "Following Up",
      9 => "Writing Clear Emails",
      10 => "Announcements and Change Messages",
      11 => "Reports and One-Page Summaries",
      12 => "Presentations with AI Help",
      13 => "Sensitive and Difficult Messages",
      14 => "Writing for Different Audiences",
      15 => "Capstone: A Communication Plan for a Bluefern Office Move"
    }

    descriptions = {
      1 => "See what unclear messages cost, how to think about your audience, and the main work channels.",
      2 => "Learn where AI helps with drafts, summaries and notes, and how to handle wrong facts, tone, recording consent and privacy.",
      3 => "Choose between a meeting, email, chat or document with a simple three-question guide.",
      4 => "Decide when a meeting is worth it, use written updates instead, and audit your meetings in person-hours.",
      5 => "Write agendas with a clear goal, timings, owners, pre-reads and roles, and check AI drafts before sending.",
      6 => "Run hybrid meetings where everyone can hear, see and speak, with simple accessibility habits and AI help to prepare.",
      7 => "Use AI note-takers with consent, write notes with decisions and actions, and check every owner and date before sharing.",
      8 => "Follow up with an action tracker, spreadsheet formulas for late actions, reminders and a decision log.",
      9 => "Write emails with a clear subject line, the main point first and one call to action, and check AI drafts before sending.",
      10 => "Write change messages that explain what changes, why and what happens next, honestly and without hype.",
      11 => "Write one-page reports with the answer first, a few key numbers, risks with actions and a clear recommendation.",
      12 => "Plan a storyline, turn it into simple slides and speaker notes with AI, and check facts and timing before you present.",
      13 => "Give bad news clearly and kindly, prepare with AI without sharing private data, and check with HR (not legal advice).",
      14 => "Adapt one set of facts for leaders, teams, clients and readers whose first language is not English.",
      15 => "Build a full communication plan for the Bluefern office move: channels, agendas, notes, an announcement, an FAQ and a follow-up plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A message says \"We're moving end of Feb. More soon!\" What is the main problem with it?", opts: ["A) It is too long for a chat message.", "B) It does not say when, where, or what the reader must do.", "C) It should have been sent to clients first."], ans: "B" },
      2 => { type: "true_false", q: "If an AI note-taker recorded the whole meeting, you can share its summary without checking it.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which channel is usually best for desk-booking rules that staff will look up again and again?", opts: ["A) A quick chat message", "B) A one-off meeting", "C) A document, such as an FAQ page, shared with a link"], ans: "C" },
      4 => { type: "multiple_choice", q: "A weekly meeting lasts 30 minutes and has 6 people. How many person-hours does it use each week?", opts: ["A) 3 person-hours", "B) 6 person-hours", "C) 180 person-hours"], ans: "A" },
      5 => { type: "multiple_choice", q: "Your AI-drafted agenda has items of 10, 20 and 20 minutes for a 45-minute meeting. What should you do?", opts: ["A) Send it, because the AI planned it.", "B) Cut or move items so the times fit 45 minutes, with time for actions.", "C) Add an AOB item at the end."], ans: "B" },
      6 => { type: "multiple_choice", q: "In a hybrid meeting, which habit best helps remote people take part?", opts: ["A) Let the room talk first, then ask \"anything from online?\" at the end.", "B) Show the slides only on the room screen.", "C) Ask remote people first in each round, and have someone read the chat aloud."], ans: "C" },
      7 => { type: "true_false", q: "Before you turn on AI notes or transcription, you should tell everyone in the meeting and give them a chance to object.", opts: ["True", "False"], ans: "True" },
      8 => { type: "multiple_choice", q: "The check date is Tuesday 17 November. An action was due on Friday 13 November and its status is \"In progress\". What should the tracker show?", opts: ["A) Overdue, 4 days late", "B) Nothing, because it is in progress", "C) Done"], ans: "A" },
      9 => { type: "multiple_choice", q: "Which subject line is clearest for an email asking a client to confirm a new workshop date?", opts: ["A) Workshop", "B) Please confirm by Fri 15 Jan: workshop moves to Wed 3 Mar", "C) Quick question about some changes"], ans: "B" },
      10 => { type: "multiple_choice", q: "An AI draft of your change message says the change will \"boost productivity by 30%\". You did not give it that number. What should you do?", opts: ["A) Keep it, because numbers make messages stronger.", "B) Round it to 25% to be safe.", "C) Remove it and give the real reason for the change."], ans: "C" },
      11 => { type: "multiple_choice", q: "What should come first in a one-page report for busy leaders?", opts: ["A) The status and the main point, in a few lines", "B) A full history of the project", "C) Every number from the budget spreadsheet"], ans: "A" },
      12 => { type: "multiple_choice", q: "Your AI-drafted slide says \"studies show hot-desking makes teams 30% more productive\". You did not give it this fact. What should you do?", opts: ["A) Keep it, because it supports your message.", "B) Make the number smaller to be safe.", "C) Delete it unless you can find a real, reliable source."], ans: "C" },
      13 => { type: "true_false", q: "When you give bad news about a person's request, it is best to send a group chat message first and talk to them later.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "You email a client in New York. Which way of writing the date is clearest?", opts: ["A) 01/03/2027", "B) Monday 1 March 2027", "C) 1/3"], ans: "B" },
      15 => { type: "multiple_choice", q: "In the Bluefern plan, an AI draft schedules the client email before the staff announcement. What is the problem?", opts: ["A) Staff could hear about the move from clients first.", "B) Clients do not need to know the new address.", "C) Emails should never be sent on a Monday."], ans: "A" }
    }

    AiMeetingsCommunicationContent::LESSONS.each do |position, data|
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

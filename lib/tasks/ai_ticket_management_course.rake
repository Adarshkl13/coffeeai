require_relative "../ai_ticket_management_content"

namespace :content do
  desc "Create AI Ticket Management course and populate all 15 lessons"
  task ai_ticket_management: :environment do
    course = Course.find_or_create_by!(slug: "ai-ticket-management") do |c|
      c.title       = "AI Ticket Management"
      c.description = "Use AI to handle support tickets faster and better. Tag and prioritise tickets, route them to the right team, draft accurate replies, meet service levels, track quality and find the root causes of common problems."
      c.color       = "#0891b2"
      c.icon        = "🎫"
      c.position    = 57
      c.published   = true
    end
    course.update!(description: "Use AI to handle support tickets faster and better. Tag and prioritise tickets, route them to the right team, draft accurate replies, meet service levels, track quality and find the root causes of common problems.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Ticketing Works",
      2 => "Where AI Helps with Tickets",
      3 => "Support Metrics",
      4 => "Designing Ticket Categories and Tags",
      5 => "Tagging Tickets with AI",
      6 => "Setting Priority and Urgency",
      7 => "Routing to the Right Team",
      8 => "Drafting Replies with AI",
      9 => "Macros and Templates",
      10 => "Ticket Summaries and Handoffs",
      11 => "SLAs and Queue Management",
      12 => "Quality Assurance for Replies",
      13 => "Finding Root Causes",
      14 => "Escalations and Difficult Tickets",
      15 => "Capstone: Improve a Support Queue"
    }

    descriptions = {
      1 => "Learn what a support ticket contains, how channels, statuses and queues work, and follow one ticket from open to closed.",
      2 => "See the five jobs AI can do with tickets, the risks, and which decisions must stay with a person.",
      3 => "Calculate first response time, resolution time, backlog, SLA met rate, first contact resolution and CSAT, and check AI's maths.",
      4 => "Design a short, clear list of ticket tags with definitions, tie-break rules and flags, and use AI to draft it.",
      5 => "Write a tagging prompt, test AI tags on a blind sample, measure accuracy and fix the most common mistakes.",
      6 => "Set ticket priority from impact and urgency with a priority matrix, add VIP, security and legal rules, and work out when replies are due.",
      7 => "Send tickets to the right team and agent with routing rules, skills, load and round-robin, and write clear escalation paths.",
      8 => "Draft replies with AI from your help articles and tone guide, personalise them and check every fact before you send.",
      9 => "Write good macros with variables and clear rules, keep them up to date, measure reopen rates and know when not to use them.",
      10 => "Use AI to summarise long ticket threads and write handover notes and internal notes that keep every promise.",
      11 => "Set SLA targets, calculate due times in business hours, spot tickets at risk of a breach, run a daily queue review and do simple staffing maths.",
      12 => "Build a QA scorecard, score replies fairly, choose a good sample and use AI to pre-score replies while a person owns the final score.",
      13 => "Compare tag counts over time, dig into spikes by when, where and what, ask why until you find a fixable cause and report it to other teams.",
      14 => "Spot angry, legal, security and safety tickets, escalate them with a clear note and write calm replies that make no risky promises.",
      15 => "Tag, prioritise and route a sample LedgerLite queue, check AI reply drafts and turn root causes into a September plan with targets that add up."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "An agent asks the customer for a payment reference and waits for the answer. What status should the ticket have?", opts: ["A) On hold", "B) Pending", "C) Solved"], ans: "B" },
      2 => { type: "true_false", q: "If an AI draft sounds confident, it is safe to let the AI approve a refund without a person.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Five tickets had first response times of 20, 45, 90, 120 and 660 minutes. What is the median?", opts: ["A) 187 minutes", "B) 120 minutes", "C) 90 minutes"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which of these should NOT be a topic tag, because it belongs in its own field?", opts: ["A) urgent", "B) bank-sync", "C) refund"], ans: "A" },
      5 => { type: "multiple_choice", q: "What is the best way to measure how accurate AI tagging is?", opts: ["A) Ask the AI how confident it feels overall", "B) Compare AI tags with a person's blind tags on a sample of tickets", "C) Check only the tickets that customers complained about"], ans: "B" },
      6 => { type: "multiple_choice", q: "A customer writes \"URGENT!!!\" to ask how to change the logo on invoices. It affects one user and has no deadline. What priority should it get?", opts: ["A) P1 Urgent", "B) P2 High", "C) P4 Low"], ans: "C" },
      7 => { type: "multiple_choice", q: "Under LedgerLite's rules, where does a ticket with a legal threat go first, whatever its topic?", opts: ["A) To the next agent by round-robin", "B) To Deepa, the support lead", "C) Straight to Engineering"], ans: "B" },
      8 => { type: "multiple_choice", q: "The help article does not answer the customer's question about a late fee. What should the AI draft do?", opts: ["A) Leave a clear [CHECK] note for the agent and promise nothing", "B) Guess the most likely policy", "C) Say the company will pay the fee"], ans: "A" },
      9 => { type: "true_false", q: "An approved macro is safe to send to an angry customer without any changes.", opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "What must you check most carefully in an AI handover summary?", opts: ["A) That it sounds friendly", "B) That it mentions how many messages there were", "C) Every promise, date and amount, compared with the thread"], ans: "C" },
      11 => { type: "multiple_choice", q: "At LedgerLite, the SLA clock pauses for Pending but runs for On hold. A ticket is On hold with Engineering and has 45 business minutes left. What should you do?", opts: ["A) Nothing, because the clock is paused", "B) Act now: chase Engineering and update the customer", "C) Change the status to Pending to stop the clock"], ans: "B" },
      12 => { type: "true_false", q: "If an AI tool scores a reply 95 out of 100, the reviewer can use that score without checking it, even if the reply promised a refund date.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "bank-sync tickets rose from 330 in July to 540 in August. What is the percentage change?", opts: ["A) 38.9%", "B) 21.0%", "C) 63.6%"], ans: "C" },
      14 => { type: "multiple_choice", q: "A customer writes: \"I can see another company's invoices in my account.\" What should happen first?", opts: ["A) Treat it as P1 and alert Technical Support, the privacy team and the team lead", "B) Send the how-to macro for switching accounts", "C) Let the AI chatbot reply, then check it the next day"], ans: "A" },
      15 => { type: "multiple_choice", q: "The backlog is 480 at the start of September, the forecast is 2,690 new tickets, and the target backlog is 400. How many tickets must the team solve?", opts: ["A) 2,610", "B) 2,770", "C) 3,170"], ans: "B" }
    }

    AiTicketManagementContent::LESSONS.each do |position, data|
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

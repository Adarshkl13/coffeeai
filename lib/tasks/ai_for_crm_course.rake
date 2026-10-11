require_relative "../ai_for_crm_content"

namespace :content do
  desc "Create AI for CRM course and populate all 15 lessons"
  task ai_for_crm: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-crm") do |c|
      c.title       = "AI for CRM"
      c.description = "Use AI to get more from your CRM. Set up contacts, companies and deals the right way, clean and enrich data, manage your pipeline, write activity notes, automate follow-ups and turn CRM data into clear reports."
      c.color       = "#eab308"
      c.icon        = "🗂️"
      c.position    = 48
      c.published   = true
    end
    course.update!(description: "Use AI to get more from your CRM. Set up contacts, companies and deals the right way, clean and enrich data, manage your pipeline, write activity notes, automate follow-ups and turn CRM data into clear reports.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What a CRM Is",
      2 => "Where AI Helps in a CRM",
      3 => "Designing Your Pipeline Stages",
      4 => "Fields, Properties and Good Data Rules",
      5 => "Cleaning CRM Data with AI",
      6 => "Enriching Contacts Honestly",
      7 => "Activity Notes and Call Logs",
      8 => "Managing Your Pipeline Every Week",
      9 => "Deal Health and Next Best Action",
      10 => "CRM Automation Basics",
      11 => "Emails and Templates in the CRM",
      12 => "CRM Reports and Dashboards",
      13 => "Customer Success and Renewals in the CRM",
      14 => "Privacy, Access and CRM Hygiene",
      15 => "Capstone: Set Up and Clean a CRM"
    }

    descriptions = {
      1 => "Learn the five building blocks of every CRM: contacts, companies, deals, activities and the pipeline.",
      2 => "See the four main jobs AI can do in a CRM, compare built-in CRM AI with general AI assistants, and keep customer data private.",
      3 => "Design clear pipeline stages with exit criteria and probabilities, and calculate weighted pipeline value.",
      4 => "Choose the right field types, set required fields and naming rules, and write a data dictionary for your CRM.",
      5 => "Find duplicates and messy data with spreadsheet formulas, ask AI for cleaning rules, and check every merge by hand.",
      6 => "Add industry, size and role to CRM records from allowed sources, keep a source note for every fact and never guess personal data.",
      7 => "Use a simple note template and AI summaries to log calls and emails, with clear next steps and exact dates.",
      8 => "Run a weekly pipeline review: flag stale deals, long stage age and missing next steps with simple formulas and AI help.",
      9 => "Read the signs of a healthy or stuck deal, ask AI for next-step options and make the final choice yourself.",
      10 => "Learn triggers, conditions and actions, plan follow-up tasks, assignment rules and reminders in plain words, and test them safely.",
      11 => "Build a small email template library in your CRM, use merge fields with fallbacks, read tracking numbers correctly and keep every email personal.",
      12 => "Calculate win rate, sales cycle, deal size and pipeline by stage from a CRM export, and use AI to plan a dashboard you have checked.",
      13 => "Set up onboarding tasks, a simple health score, renewal dates and honest upsell notes in your CRM.",
      14 => "Control who can see what, add consent fields, handle deletion requests and keep your CRM clean, with DPDP basics (not legal advice).",
      15 => "Design a pipeline, clean a 25-row export, write notes and automations, and plan a checked dashboard for LedgerLite."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "In a CRM, what is a deal?", opts: ["A) A person you talk to", "B) A possible sale with an amount and a stage", "C) A call or email you logged"], ans: "B" },
      2 => { type: "true_false", q: "It is fine to paste a full customer list with phone numbers into any public AI chatbot, as long as you delete the chat afterwards.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "A ₹96,000 deal is in the Negotiation stage, which has an 80% probability. What is its weighted value?", opts: ["A) ₹96,000", "B) ₹19,200", "C) ₹76,800"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which field should be a picklist?", opts: ["A) Lead source", "B) Summary of a sales call", "C) Special delivery instructions"], ans: "A" },
      5 => { type: "multiple_choice", q: "Two contacts share the email accounts@saipharma.example but have different names. What should you do?", opts: ["A) Merge them, because the email matches", "B) Delete the newer record", "C) Check by hand, because it may be a shared inbox used by two people"], ans: "C" },
      6 => { type: "multiple_choice", q: "An AI tool says a prospect's yearly revenue is \"probably around ₹10 crore\". What should you do?", opts: ["A) Save it, with \"AI\" as the source", "B) Leave the field as Unknown, or ask the contact", "C) Save it, but round it to ₹10 crore"], ans: "B" },
      7 => { type: "multiple_choice", q: "What must a good next step in a call note include?", opts: ["A) Who does it, what they do and an exact date", "B) A friendly summary of how the call felt", "C) The words \"follow up soon\""], ans: "A" },
      8 => { type: "multiple_choice", q: "A deal entered its stage on 7 Sep 2026. The review date is 28 Sep 2026. The rule is \"long in stage = more than 21 days\". What is the result?", opts: ["A) 28 days, flagged", "B) 21 days, not flagged", "C) 21 days, flagged"], ans: "B" },
      9 => { type: "true_false", q: "If an AI tool suggests a 20% discount to close a deal, the rep should offer it right away.", opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "In \"When a quote is sent, if there is no reply in 3 days, then create a follow-up task\", what is the trigger?", opts: ["A) Create a follow-up task", "B) No reply in 3 days", "C) A quote is sent"], ans: "C" },
      11 => { type: "multiple_choice", q: "Kavya's template starts \"Hi {{First name}},\" but 40 of her 200 contacts have no first name. What should she do before sending?", opts: ["A) Send it anyway, because most names are filled in", "B) Delete the 40 contacts from the CRM", "C) Set a fallback such as \"there\", fill in the names she can, and send a test first"], ans: "C" },
      12 => { type: "multiple_choice", q: "A team won 4 deals, lost 3 deals and still has 5 open deals. What is the win rate?", opts: ["A) 33.3%", "B) 57.1%", "C) 80%"], ans: "B" },
      13 => { type: "true_false", q: "A customer with a red health score is the best customer to offer an upsell to.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A lead asks LedgerLite to delete all their data. What is a good first step?", opts: ["A) Confirm who is asking, then log the request and find every copy of their data", "B) Delete only their email address and keep the rest", "C) Ignore it if they might buy later"], ans: "A" },
      15 => { type: "multiple_choice", q: "Before cleaning, the win rate showed 57.1%. After cleaning it showed 50%. What caused the difference?", opts: ["A) The AI made a maths mistake", "B) A duplicate won deal was counted twice before cleaning", "C) Some lost deals were deleted during cleaning"], ans: "B" }
    }

    AiForCrmContent::LESSONS.each do |position, data|
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

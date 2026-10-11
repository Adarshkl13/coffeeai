require_relative "../ai_lead_generation_content"

namespace :content do
  desc "Create AI for Lead Generation course and populate all 15 lessons"
  task ai_lead_generation: :environment do
    course = Course.find_or_create_by!(slug: "ai-lead-generation") do |c|
      c.title       = "AI for Lead Generation"
      c.description = "Use AI to find and qualify better leads. Define your ideal customer, research companies and buyers, build clean lead lists, score and qualify leads, and hand the best ones to sales, all while respecting data and consent rules."
      c.color       = "#f59e0b"
      c.icon        = "🧲"
      c.position    = 46
      c.published   = true
    end
    course.update!(description: "Use AI to find and qualify better leads. Define your ideal customer, research companies and buyers, build clean lead lists, score and qualify leads, and hand the best ones to sales, all while respecting data and consent rules.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Lead Generation Works",
      2 => "Where AI Helps in Lead Generation",
      3 => "Your Ideal Customer Profile",
      4 => "Buyer Personas and Buying Committees",
      5 => "Finding Leads the Right Way",
      6 => "Researching a Company with AI",
      7 => "Buying Signals and Triggers",
      8 => "Building a Clean Lead List",
      9 => "Inbound Leads: Forms and Lead Magnets",
      10 => "Lead Scoring Basics",
      11 => "Qualifying Leads with Frameworks",
      12 => "Handing Leads to Sales",
      13 => "Measuring Lead Generation",
      14 => "Data, Consent and Honest Outreach",
      15 => "Capstone: A Lead Generation Plan"
    }

    descriptions = {
      1 => "Learn what leads, prospects, MQLs and SQLs are, the difference between inbound and outbound, and how to read a lead funnel with numbers.",
      2 => "See where AI helps in lead research, list building, scoring and first drafts, and which risks and decisions stay with you.",
      3 => "Build an ideal customer profile from your best customers, with firmographics, pain points and buying triggers.",
      4 => "Understand who decides, pays, uses and influences in a deal, draft persona cards with AI and check them in real calls.",
      5 => "Find leads through websites, events, directories, LinkedIn, referrals and partners, and learn why scraping and bought lists are not allowed.",
      6 => "Use AI to turn a company's website, news and annual report into a short research brief. Check every fact at its source before you use it.",
      7 => "Spot buying signals such as hiring, new branches and new online stores. Turn them into honest, timely reasons to contact a company.",
      8 => "Build a lead list with clear columns, clean it with TRIM, LOWER and COUNTIF, and keep source and consent notes for every contact.",
      9 => "Plan lead magnets, landing pages, short forms and qualifying chatbots, and measure how fast you reply to new leads.",
      10 => "Build a simple lead scoring sheet with fit and engagement points, thresholds and formulas, then test it against real results.",
      11 => "Use BANT and similar frameworks to qualify leads. Ask better discovery questions and turn call notes into clear AI-drafted qualification notes.",
      12 => "Hand leads from marketing to sales with clear definitions, a service level agreement, a handover note and a feedback loop.",
      13 => "Calculate conversion rates, cost per lead, CAC, win rate and more. Build a source report in a spreadsheet and check AI's maths.",
      14 => "Learn the basics of the DPDP Act, TRAI do-not-disturb rules, LinkedIn rules and honest outreach, and what never to paste into AI. General education, not legal advice.",
      15 => "Build a complete lead generation plan for LedgerLite: ICP, personas, sources, a 20-row lead list, a scoring model and a 30-day plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A funnel has 400 leads, 120 MQLs, 48 SQLs and 12 customers. What is the lead-to-customer rate?", opts: ["A) 25%", "B) 3%", "C) 30%"], ans: "B" },
      2 => { type: "multiple_choice", q: "An AI research brief says a prospect \"raised ₹5 crore last month\", but you gave it no source. What should you do?", opts: ["A) Use the fact in your email, because AI tools are usually right", "B) Ask the AI again until it gives the same answer twice", "C) Check the company's website and news, and delete the claim if you cannot find a source"], ans: "C" },
      3 => { type: "true_false", q: "The best way to build an ideal customer profile is to ask AI who the ideal customer is for your type of product, without using your own customer data.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "In a LedgerLite deal, the accounts clerk will use the software every day. Which buying committee role is this?", opts: ["A) User", "B) Payer", "C) Decision maker"], ans: "A" },
      5 => { type: "multiple_choice", q: "Which of these is an allowed way to find leads?", opts: ["A) A tool that copies hundreds of LinkedIn profiles into a spreadsheet", "B) An email list of 50,000 business owners bought online", "C) An introduction from a partner firm that serves the same customers"], ans: "C" },
      6 => { type: "multiple_choice", q: "Your AI research brief says a prospect has a turnover of ₹40 crore, but none of your sources show this. What should you do?", opts: ["A) Keep it, because AI usually knows company numbers", "B) Delete it, or mark it as unknown until you find a source", "C) Use it in your first email to sound well informed"], ans: "B" },
      7 => { type: "true_false", q: "A founder's public photos from a family holiday are a good buying signal to mention in your first email.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Column F holds cleaned email addresses. Which formula shows \"Duplicate\" for the second and later copies of an email?", opts: ["A) =PROPER(TRIM(F2))", "B) =IF(COUNTIF($F$2:F2,F2)>1,\"Duplicate\",\"Keep\")", "C) =LOWER(F2)"], ans: "B" },
      9 => { type: "multiple_choice", q: "Six form leads got first replies after 8, 12, 30, 45, 240 and 1,440 minutes. What is the median reply time?", opts: ["A) 37.5 minutes", "B) About 296 minutes", "C) 240 minutes"], ans: "A" },
      10 => { type: "multiple_choice", q: "Hot is 70 or more, Warm is 40 to 69 and Cold is under 40. A lead has a fit score of 50 and an engagement score of 20. Which grade does it get?", opts: ["A) Cold", "B) Warm", "C) Hot"], ans: "C" },
      11 => { type: "multiple_choice", q: "Kavya's notes say \"Owner signs any purchase above Rs 50,000.\" The AI writes \"Budget: Rs 50,000 approved.\" What is the problem?", opts: ["A) Nothing, the AI read the notes correctly", "B) Rs 50,000 is a sign-off limit, not a budget, so Budget should be \"Unknown\"", "C) The budget should be rounded up to Rs 1 lakh"], ans: "B" },
      12 => { type: "multiple_choice", q: "A sales rep reviews an MQL and decides it is not a good lead. What should the rep do?", opts: ["A) Delete the lead from the CRM", "B) Ignore it until marketing asks", "C) Reject it with a reason code so marketing can improve"], ans: "C" },
      13 => { type: "multiple_choice", q: "Trade events cost Rs 80,000 and brought 60 leads and 1 customer. What is the cost per customer?", opts: ["A) Rs 80,000", "B) Rs 1,333", "C) Rs 8,000"], ans: "A" },
      14 => { type: "true_false", q: "If a lead is a business owner, you can send them bulk promotional SMS from a personal mobile number without their consent.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "An AI-drafted lead list shows a prospect's annual revenue, but gives no source. What should you do?", opts: ["A) Keep it, because AI research is usually right", "B) Check it at a trusted source, or mark it \"Unknown\"", "C) Round it to a simple number"], ans: "B" }
    }

    AiLeadGenerationContent::LESSONS.each do |position, data|
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

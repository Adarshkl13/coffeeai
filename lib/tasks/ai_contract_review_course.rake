require_relative "../ai_contract_review_content"

namespace :content do
  desc "Create AI for Contract Review course and populate all 15 lessons"
  task ai_contract_review: :environment do
    course = Course.find_or_create_by!(slug: "ai-contract-review") do |c|
      c.title       = "AI for Contract Review"
      c.description = "Use AI to review contracts faster without missing what matters. Summarise contracts, find and explain key clauses, compare versions, check against a playbook, rate risks, suggest negotiation points and build a safe review workflow under Indian law."
      c.color       = "#6366f1"
      c.icon        = "📑"
      c.position    = 76
      c.published   = true
    end
    course.update!(description: "Use AI to review contracts faster without missing what matters. Summarise contracts, find and explain key clauses, compare versions, check against a playbook, rate risks, suggest negotiation points and build a safe review workflow under Indian law.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Contracts Work",
      2 => "Where AI Helps in Contract Review",
      3 => "Confidentiality and Safe Tools",
      4 => "Common Contract Types",
      5 => "Summarising a Contract with AI",
      6 => "Finding and Explaining Key Clauses",
      7 => "Comparing Versions and Redlines",
      8 => "Checking Against a Playbook",
      9 => "Spotting Risks and Missing Clauses",
      10 => "Risk Rating and Review Memos",
      11 => "Negotiation Points and Counter-Drafting",
      12 => "Stamp Duty, Signing and Execution",
      13 => "Contract Management After Signing",
      14 => "Building a Contract Review Workflow",
      15 => "Capstone: Review a Vendor Agreement for LedgerLite"
    }

    descriptions = {
      1 => "Learn how an offer becomes a contract under the Indian Contract Act 1872, in plain words.",
      2 => "See which contract review jobs AI does well, what it gets wrong, and why the lawyer stays responsible.",
      3 => "Protect client confidentiality: professional duties, approved AI tools and how to redact a contract.",
      4 => "Meet seven common contract types, from NDAs to MoUs, and the key clauses to check in each.",
      5 => "Use AI to draft a key terms sheet with clause numbers, then check every line against the contract.",
      6 => "Learn seven key clauses, from indemnity to dispute resolution, and ask AI to find, quote and explain them.",
      7 => "Compare contract versions with a compare tool and AI, and catch silent changes before your client signs.",
      8 => "Check a contract against a company playbook and build a deviations table with a clear status for each clause.",
      9 => "Find one-sided terms, unlimited liability, auto-renewal traps and missing clauses such as data protection terms.",
      10 => "Rate each risk as high, medium or low with a reason, and turn the ratings into a clear review memo.",
      11 => "Turn each open issue in the revised draft into an ask, a reason, counter-draft wording and a polite comment, while keeping your fallback private.",
      12 => "Learn the basics of stamp duty, e-stamping and electronic signatures in India, and use an execution checklist before signing.",
      13 => "Keep signed contracts in one place and track key dates and obligations with AI and simple spreadsheet formulas.",
      14 => "Design a contract review workflow with intake, triage, an AI first pass, lawyer review and sign-off, and track simple metrics.",
      15 => "Do a full review of a revised SaaS vendor contract: key terms, changes from v1, playbook check, risk memo and negotiation points."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which of these is NOT one of the essentials in section 10 of the Indian Contract Act 1872?", opts: ["A) Free consent of the parties", "B) A lawful object", "C) A document printed on stamp paper"], ans: "C" },
      2 => { type: "multiple_choice", q: "An AI summary of the CloudDesk contract mentions a court case you have never heard of. What should you do?", opts: ["A) Find and read the case in a real legal database before you use it", "B) Use it, because AI tools are trained on legal material", "C) Keep it but add \"as per AI\" in brackets"], ans: "A" },
      3 => { type: "true_false", q: "If you remove the party names from a client contract, you may paste it into any free AI tool without asking anyone.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "LedgerLite pays a yearly subscription to use CloudDesk's helpdesk software online. Which contract type is this?", opts: ["A) Lease deed", "B) SaaS agreement", "C) Supply agreement"], ans: "B" },
      5 => { type: "multiple_choice", q: "Why should a key terms sheet include a clause number for every row?", opts: ["A) Clients like long tables", "B) It makes the AI answer faster", "C) It lets you open the source clause and check each row"], ans: "C" },
      6 => { type: "multiple_choice", q: "Under CloudDesk MSA v1, a third party says the platform copies its patented design and sues LedgerLite. What does the contract say?", opts: ["A) Clause 10 makes CloudDesk defend LedgerLite", "B) CloudDesk gives no indemnity, and clause 10.1 may even make LedgerLite cover CloudDesk", "C) Clause 13.1 makes CloudDesk pay because Indian law applies"], ans: "B" },
      7 => { type: "true_false", q: "If the other side's cover email lists every change in a new draft, you do not need to run a document compare.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "LedgerLite's playbook fallback for breach notice is 48 hours, and \"over 72 hours\" must be escalated. CloudDesk's v2 says 72 hours. What is the status?", opts: ["A) Meets", "B) Fallback", "C) Negotiate: worse than the fallback but no escalate trigger"], ans: "C" },
      9 => { type: "multiple_choice", q: "Why should you give AI a checklist when you look for missing clauses?", opts: ["A) AI reads the words that are there, so it may not notice what is missing", "B) AI cannot read contracts without a checklist", "C) A checklist makes the answer legal advice"], ans: "A" },
      10 => { type: "multiple_choice", q: "What should come first in a review memo for a business client?", opts: ["A) A list of every clause in the contract", "B) The bottom line and the top risks", "C) The history of the law on each clause"], ans: "B" },
      11 => { type: "multiple_choice", q: "Which part of a negotiation point should you NOT put in a margin comment to the vendor?", opts: ["A) The change you want", "B) Your fallback position", "C) A short business reason"], ans: "B" },
      12 => { type: "true_false", q: "Under Indian law, a contract that was not properly stamped is void and can never be used in court.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "The CloudDesk term ends on 31 October 2029 and needs 90 days' non-renewal notice. The end date is in B2 and 90 is in C2. Which formula gives the notice deadline?", opts: ["A) =B2+C2", "B) =EDATE(B2,-90)", "C) =B2-C2"], ans: "C" },
      14 => { type: "multiple_choice", q: "In a contract review workflow, what should happen right after the AI first pass?", opts: ["A) A lawyer checks every AI point against the contract", "B) The AI output is sent straight to the other side", "C) The contract is signed to save time"], ans: "A" },
      15 => { type: "multiple_choice", q: "In the revised draft, the AI says clause 8.2 \"no longer allows AI training\" because the ML words were removed. What should you do?", opts: ["A) Accept it, because the words are gone", "B) Read 8.2 together with the definitions, such as \"Services\"", "C) Ask the AI to repeat its answer more confidently"], ans: "B" }
    }

    AiContractReviewContent::LESSONS.each do |position, data|
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

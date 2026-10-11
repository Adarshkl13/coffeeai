require_relative "../ai_legal_drafting_content"

namespace :content do
  desc "Create AI for Legal Drafting course and populate all 15 lessons"
  task ai_legal_drafting: :environment do
    course = Course.find_or_create_by!(slug: "ai-legal-drafting") do |c|
      c.title       = "AI for Legal Drafting"
      c.description = "Use AI to draft letters, legal notices, replies and agreements faster and more clearly. Start from facts and good precedents, write in plain but precise language, draft notices, consumer complaints, NDAs, service agreements and HR documents, and check every draft carefully."
      c.color       = "#818cf8"
      c.icon        = "✍️"
      c.position    = 78
      c.published   = true
    end
    course.update!(description: "Use AI to draft letters, legal notices, replies and agreements faster and more clearly. Start from facts and good precedents, write in plain but precise language, draft notices, consumer complaints, NDAs, service agreements and HR documents, and check every draft carefully.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Principles of Good Legal Drafting",
      2 => "Where AI Helps in Drafting",
      3 => "Templates, Precedents and Clause Banks",
      4 => "Instructions and Facts First",
      5 => "Business Letters and Emails",
      6 => "Legal Notices",
      7 => "Replies to Notices",
      8 => "Consumer Complaints and Simple Petitions",
      9 => "Plain Language for Clients",
      10 => "Drafting Agreements",
      11 => "NDAs and Service Agreements",
      12 => "Employment and HR Documents",
      13 => "Proofreading and Consistency Checks",
      14 => "Version Control and Collaboration",
      15 => "Capstone: A Drafting Pack for Rangrez Crafts"
    }

    descriptions = {
      1 => "Learn the five principles of good legal drafting: clarity, precision, plain language, defined terms and consistency, with weak and better clauses side by side.",
      2 => "See which drafting jobs AI does well, the risks such as fake citations and old law, and why the lawyer always checks and signs off.",
      3 => "Understand templates, precedents and clause banks, spot red flags in generic AI templates, and build clause bank entries that fit Indian law.",
      4 => "Take clear client instructions, build a fact sheet with a source for every fact, and turn it into a prompt that stops AI from guessing.",
      5 => "Draft formal letters, clear client update emails and careful without-prejudice settlement letters with AI help.",
      6 => "Draft a demand notice for unpaid invoices and a cheque bounce notice under section 138 with AI help, with the right structure, dates, amounts and a firm tone without threats.",
      7 => "Answer a notice point by point, spot and avoid careless admissions, and reserve your client's rights, using a made-up reply about damaged goods.",
      8 => "Learn when the Consumer Protection Act 2019 applies, choose the right commission, file on e-Jagriti and structure a consumer complaint or simple petition.",
      9 => "Explain notices and replies to clients in simple words, and check that AI rewrites keep the same people, amounts, deadlines and conditions.",
      10 => "Build agreements from their standard parts: parties, recitals, definitions, operative clauses, boilerplate, signatures and schedules.",
      11 => "Go through an NDA and a design service agreement clause by clause, and learn which choices the client and the lawyer must make.",
      12 => "Draft offer letters, appointment letters and policies with AI, in line with the four Labour Codes, and spot risky clauses such as post-employment non-competes.",
      13 => "Check names, defined terms, cross-references, numbers, dates and citations, and use AI as a fast first checker whose flags you confirm.",
      14 => "Use clear file names, a version log, tracked changes, comments and compare, and get the client's written approval of the exact final version.",
      15 => "Build a full drafting pack for Rangrez Crafts: a section 138 notice, a demand notice, a reply, an NDA and a supply agreement outline."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which payment clause is the most precise?", opts: ["A) Payment shall be made promptly after receipt.", "B) The Buyer shall pay each invoice in full within 30 days of the invoice date.", "C) The purchaser and/or the buyer will pay within a reasonable time."], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool gives a case name with a court and a year, you can use it in a draft without checking, because the format looks correct.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "An AI template for two Indian companies says the agreement is governed by the laws of the State of Delaware. What should you do?", opts: ["A) Keep it, because AI templates follow international standards", "B) Delete the clause, because governing law clauses are not needed in India", "C) Flag it, and let the lawyer choose the governing law with the client"], ans: "C" },
      4 => { type: "multiple_choice", q: "Your notes say the cheque was for ₹90,000, but invoice 041 is for ₹95,000. What should the fact sheet do?", opts: ["A) Mark it as a point to check against the cheque and the invoice", "B) Use ₹95,000, because invoices are usually right", "C) Leave it for the AI to decide when it drafts the notice"], ans: "A" },
      5 => { type: "multiple_choice", q: "Neha is willing to accept two instalments and drop the interest. Where should this offer go?", opts: ["A) Inside the legal notice that demands the full amount", "B) In a separate letter headed \"without prejudice\"", "C) In a public post on the firm's website"], ans: "B" },
      6 => { type: "multiple_choice", q: "Neelkamal's cheque for ₹95,000 bounced. What amount should the section 138 notice demand?", opts: ["A) Exactly ₹95,000, the cheque amount", "B) ₹2,85,000, the total of all three invoices", "C) ₹95,000 plus interest, as one combined figure"], ans: "A" },
      7 => { type: "multiple_choice", q: "Neelkamal's reply says: \"Our client is ready to pay invoices 041 and 063.\" How should Rangrez's lawyer treat this sentence?", opts: ["A) Ignore it, because it is only an offer", "B) Treat it as a threat and complain to the Bar Council", "C) Note it as an admission that those invoices are payable"], ans: "C" },
      8 => { type: "true_false", q: "Neelkamal bought goods from Rangrez Crafts to sell in its stores, so Neelkamal can file a consumer complaint about the chipped vases.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "An AI tool rewrote \"our Client may file a complaint\" as \"we will file a case\". What is the problem?", opts: ["A) There is no problem, because the new version is shorter", "B) A choice has become a promise, so the meaning changed", "C) The new version uses too many legal words"], ans: "B" },
      10 => { type: "multiple_choice", q: "Where should a duty such as \"The Buyer shall pay each invoice within 30 days\" go in an agreement?", opts: ["A) In the recitals", "B) In the operative clauses", "C) In the title"], ans: "B" },
      11 => { type: "multiple_choice", q: "A design studio in Rajasthan will create designs for Rangrez Crafts. Under the Copyright Act 1957, what should the service agreement do if Rangrez wants to own the designs?", opts: ["A) Nothing, because the client who pays always owns the designs", "B) Say \"the designs are shared\" without more detail", "C) Include a written assignment that states the rights, the period and the territory"], ans: "C" },
      12 => { type: "true_false", q: "Under section 27 of the Indian Contract Act, a clause stopping an employee from joining any competitor for two years after leaving is generally enforceable in India.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "An AI proofreading tool says \"Funds Insufficient\" in your cheque notice should read \"Insufficient Funds\". The bank memo says \"Funds Insufficient\". What should you do?", opts: ["A) Keep the words exactly as they appear on the bank memo", "B) Accept the AI's change, because it sounds more natural", "C) Remove the reason from the notice"], ans: "A" },
      14 => { type: "multiple_choice", q: "The other side returns your draft with four tracked changes. What is the safest next step?", opts: ["A) Accept all tracked changes, because tracked changes show everything", "B) Compare the version you sent with the version you got back", "C) Rename the file \"FINAL\" and send it to the client"], ans: "B" },
      15 => { type: "multiple_choice", q: "In the Rangrez Crafts pack, what amount should the section 138 notice demand?", opts: ["A) ₹2,85,000, the total of all three invoices", "B) ₹2,93,881.65, the invoices plus interest", "C) ₹95,000, exactly the amount of cheque no. 318204"], ans: "C" }
    }

    AiLegalDraftingContent::LESSONS.each do |position, data|
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

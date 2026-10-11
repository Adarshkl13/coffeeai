require_relative "../ai_litigation_court_prep_content"

namespace :content do
  desc "Create AI for Litigation and Court Preparation course and populate all 15 lessons"
  task ai_litigation_court_prep: :environment do
    course = Course.find_or_create_by!(slug: "ai-litigation-court-prep") do |c|
      c.title       = "AI for Litigation and Court Preparation"
      c.description = "Use AI to prepare cases faster and more carefully. Build case chronologies, organise documents and evidence, draft pleadings and written submissions, prepare witnesses and arguments, plan hearings and track deadlines, while checking every fact and citation yourself."
      c.color       = "#3730a3"
      c.icon        = "🏛️"
      c.position    = 85
      c.published   = true
    end
    course.update!(description: "Use AI to prepare cases faster and more carefully. Build case chronologies, organise documents and evidence, draft pleadings and written submissions, prepare witnesses and arguments, plan hearings and track deadlines, while checking every fact and citation yourself.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Litigation Works in India",
      2 => "Where AI Helps in Litigation",
      3 => "Confidentiality, Privilege and Safe Tools",
      4 => "Procedure Basics You Must Check",
      5 => "Building a Case Chronology with AI",
      6 => "Document Review and Evidence Organisation",
      7 => "Issues, Claims and Defences",
      8 => "Drafting Pleadings with AI",
      9 => "Drafting Applications and Written Submissions",
      10 => "Preparing Witnesses Ethically",
      11 => "Preparing Cross-Examination",
      12 => "Oral Arguments and Hearing Notes",
      13 => "Deadlines, Cause Lists and Case Management",
      14 => "Settlement, Mediation and Client Updates",
      15 => "Capstone: Preparing a Commercial Suit for Hearing"
    }

    descriptions = {
      1 => "Learn the courts and tribunals in India, the stages of a civil and a criminal case, and who does what in a case team.",
      2 => "See where AI saves time in litigation, the risks such as fake citations, and why the advocate stays responsible to the court.",
      3 => "Protect client confidentiality and privilege: choose safe AI tools, redact documents and follow court rules on AI.",
      4 => "Learn the procedure basics of the CPC, commercial suits and the BNSS, and check limitation, court fees and e-filing at the source.",
      5 => "Build a case chronology with AI: dated facts with a source for each, and a clear list of gaps and contradictions.",
      6 => "Build a document index, tag documents to issues and witnesses, use AI to find key papers, and learn the basics of the section 63 BSA certificate.",
      7 => "Break each issue into elements, see who must prove what, and build an evidence map that shows your weak points early.",
      8 => "Draft plaints and replies to counterclaims with AI from the facts first, and check every line before the statement of truth is signed.",
      9 => "Draft interim applications, a synopsis, a list of dates and written arguments, with only verified authorities.",
      10 => "Prepare witnesses ethically: draft evidence affidavits in the witness's own words and practise cross-examination without coaching.",
      11 => "Prepare the cross-examination of the other side's witness: find contradictions with AI, write short leading questions and practise with AI as the witness.",
      12 => "Plan final oral arguments: an issue-wise outline, a time plan, likely questions from the bench, a one-page hearing brief and a compilation.",
      13 => "Keep a case diary, follow cases and cause lists on e-Courts, and use AI to draft diary entries that you check against the court's orders.",
      14 => "Learn settlement routes in India, including section 12A mediation and the Mediation Act 2023, compare options, and write plain-language client updates.",
      15 => "Capstone: build and check a full hearing preparation pack for a made-up commercial suit, from chronology and evidence map to hearing brief."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "In a civil suit, what is the written statement?", opts: ["A) The plaintiff's written claim that starts the suit", "B) The defendant's written reply to the claim", "C) The judge's final order on who gets what"], ans: "B" },
      2 => { type: "multiple_choice", q: "An AI tool suggests three Supreme Court cases for your written arguments. What should you do before filing?", opts: ["A) Find and read each judgment in full in a trusted source, and check it says what you rely on", "B) Ask the same AI tool if the cases are real", "C) File them, because the AI gave full citations"], ans: "A" },
      3 => { type: "true_false", q: "Under section 132 of the Bharatiya Sakshya Adhiniyam, the privilege over a client's communications belongs to the advocate, so the advocate can give it up.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "An AI assistant tells you the deadline for a written statement in a commercial suit. What is the right next step?", opts: ["A) Put the AI's date straight into the diary", "B) Ask a different AI tool and take the majority answer", "C) Read the current rule at the source, confirm the service date in the order sheet, then diary it"], ans: "C" },
      5 => { type: "multiple_choice", q: "Neha remembers a phone call on 1 October 2025, but no document shows it. How should it appear in the chronology?", opts: ["A) Leave it out completely", "B) As a row with Source \"None\" and Status \"unconfirmed\", plus a note to look for proof", "C) As an agreed fact, citing the WhatsApp export"], ans: "B" },
      6 => { type: "multiple_choice", q: "Shiva denied the WhatsApp export D-06. Which step best protects this electronic record as evidence?", opts: ["A) Ask AI to tidy the export so it reads more clearly", "B) Print it and file the printout without anything else", "C) Keep the original phone and files unchanged, and file the section 63 certificate the court needs"], ans: "C" },
      7 => { type: "multiple_choice", q: "Issue 2 asks whether the 22 August 2025 email changed the order, with the onus on the defendant (OPD). What does OPD mean?", opts: ["A) Shiva Metalworks must prove that the order was changed", "B) Rangrez Crafts must prove that the order was not changed", "C) The court will decide without any evidence"], ans: "A" },
      8 => { type: "true_false", q: "In a commercial suit, it is safe to let the client sign the statement of truth without reading the whole plaint, because the lawyer has checked it.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "An AI draft of your written arguments names a judgment you cannot find in SCC Online, Manupatra or Indian Kanoon. What should you do?", opts: ["A) Keep it, because the citation looks correct", "B) Take it out and note it in the file", "C) Ask the AI to confirm that the judgment is real"], ans: "B" },
      10 => { type: "multiple_choice", q: "Which of these is proper witness preparation, not coaching?", opts: ["A) Giving the witness a list of best answers to memorise", "B) Telling the witness to deny a difficult email", "C) Asking the witness to re-read her own affidavit and documents before cross-examination"], ans: "C" },
      11 => { type: "multiple_choice", q: "Which question is best for cross-examining the other side's witness?", opts: ["A) \"Your reply of 25 August 2025 says 'Noted, will try'. Correct?\"", "B) \"Why did your company deliver the lamps late?\"", "C) \"Can you explain to the court how antique finish is made?\""], ans: "A" },
      12 => { type: "true_false", q: "If an AI tool suggests a judgment during a practice hearing, you can add it to the compilation as long as the citation looks complete.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "The e-Courts app shows a different next date from the signed order sheet. What should you do?", opts: ["A) Follow the app, because it is updated online", "B) Ask an AI tool which date is more likely", "C) Treat the court's order as the record, get a copy and check with the registry"], ans: "C" },
      14 => { type: "multiple_choice", q: "Who decides whether Rangrez Crafts accepts Shiva's settlement offer?", opts: ["A) The AI tool, after comparing the figures", "B) The client, Neha, after advice from her lawyer", "C) The judge at the next hearing"], ans: "B" },
      15 => { type: "multiple_choice", q: "An AI draft of the hearing brief includes the client's settlement figure. What should happen?", opts: ["A) Keep it, because the judge may want to know it", "B) Move it to the written arguments instead", "C) Delete it, because settlement figures never go into documents for the court"], ans: "C" }
    }

    AiLitigationCourtPrepContent::LESSONS.each do |position, data|
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

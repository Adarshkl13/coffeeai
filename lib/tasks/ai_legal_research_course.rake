require_relative "../ai_legal_research_content"

namespace :content do
  desc "Create AI for Legal Research course and populate all 15 lessons"
  task ai_legal_research: :environment do
    course = Course.find_or_create_by!(slug: "ai-legal-research") do |c|
      c.title       = "AI for Legal Research"
      c.description = "Use AI to research the law faster while checking every source. Frame legal questions, research statutes and case law in India, use AI research tools well, brief judgments, check that the law is still good, verify every citation and write a clear research memo."
      c.color       = "#4f46e5"
      c.icon        = "🔍"
      c.position    = 77
      c.published   = true
    end
    course.update!(description: "Use AI to research the law faster while checking every source. Frame legal questions, research statutes and case law in India, use AI research tools well, brief judgments, check that the law is still good, verify every citation and write a clear research memo.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Legal Research Works",
      2 => "Where AI Helps in Legal Research",
      3 => "The Danger of Fake Citations",
      4 => "Framing the Legal Question",
      5 => "Researching Statutes and Rules",
      6 => "Researching Case Law",
      7 => "Using AI Research Tools",
      8 => "Reading and Summarising Judgments",
      9 => "Checking Whether the Law Is Still Good",
      10 => "Verifying Every Citation",
      11 => "Writing a Research Memo",
      12 => "Comparing Laws Across Jurisdictions",
      13 => "Research for Business and Compliance Questions",
      14 => "Ethics and Responsibility in AI Research",
      15 => "Capstone: A Research Memo for Mehra & Rao"
    }

    descriptions = {
      1 => "Learn the sources of law in India, how precedent works and which courts bind which, then plan research for a client problem.",
      2 => "See where AI helps at each step of legal research, from issue spotting to first drafts, and the risks you must check for.",
      3 => "Learn why AI invents case citations, what has happened in real courts, and the verification rule for every citation.",
      4 => "Turn a client's story into dated facts, legal issues and precise research questions, and organise your thinking with IRAC.",
      5 => "Find official statute text, read sections carefully, check amendments and map old IPC, CrPC and Evidence Act sections to the new codes.",
      6 => "Find judgments in Indian databases, tell headnotes from the court's words, separate ratio from obiter, and search in a smart order.",
      7 => "Learn how general AI assistants differ from legal research tools that show sources, and write prompts that demand sources.",
      8 => "Read a judgment in a smart order, write a case brief with paragraph numbers, and check an AI summary against the judgment.",
      9 => "Check whether a judgment is still good law, point by point, using later cases, statute changes and citators.",
      10 => "Use a seven-part checklist to verify every citation and keep a verification log before any work leaves your desk.",
      11 => "Write a clear research memo with a question presented, short answer, facts, discussion and conclusion, using AI only to shape verified law.",
      12 => "Learn what weight foreign law has in India and compare jurisdictions carefully, using penalty clauses in India, England and Singapore as the example.",
      13 => "Research compliance questions from Acts, rules and regulator circulars (RBI, SEBI, MeitY, GST) and turn them into a checklist with owners and review dates.",
      14 => "Apply your duties of candour, confidentiality, supervision and fair billing when you use AI, and see what courts and bar bodies have said.",
      15 => "Bring the course together: research the Rangrez Crafts matter and write a full research memo with a verification log for the partner."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Under Article 141 of the Constitution, whose declared law binds all courts in India?", opts: ["A) The Supreme Court of India", "B) The High Court of the state where the case is heard", "C) Any High Court that decided the point first"], ans: "A" },
      2 => { type: "multiple_choice", q: "Which research task is the safest to give an AI assistant?", opts: ["A) Confirming that a case it named really exists", "B) Deciding what advice to give the client", "C) Suggesting search terms for a legal database"], ans: "C" },
      3 => { type: "true_false", q: "If you ask an AI chatbot whether a case is real and it says yes, you can cite the case without checking a database.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "What does IRAC stand for?", opts: ["A) Issue, Research, Argument, Citation", "B) Issue, Rule, Application, Conclusion", "C) Inquiry, Rule, Appeal, Case"], ans: "B" },
      5 => { type: "multiple_choice", q: "A cheating offence was committed in September 2026. Which section should a research note refer to?", opts: ["A) Section 420 of the Indian Penal Code", "B) Section 420 of the Code of Criminal Procedure", "C) Section 318(4) of the Bharatiya Nyaya Sanhita"], ans: "C" },
      6 => { type: "multiple_choice", q: "Which part of a judgment binds lower courts?", opts: ["A) The headnote written by the law report's editors", "B) Remarks the judge made that were not needed for the decision", "C) The ratio decidendi: the reason for the decision"], ans: "C" },
      7 => { type: "true_false", q: "A legal research tool that shows links to its sources can still give a wrong or unsupported answer.", opts: ["True", "False"], ans: "True" },
      8 => { type: "multiple_choice", q: "In a case brief, what is the \"holding\"?", opts: ["A) The court's answer to the issue it had to decide", "B) The list of facts the parties agreed on", "C) The arguments made by the lawyers"], ans: "A" },
      9 => { type: "multiple_choice", q: "Why should you not rely on ONGC v. Saw Pipes for its wide view of \"public policy\" in a new challenge to an arbitral award?", opts: ["A) Because the case was never reported", "B) Because the 2015 amendment to the Arbitration Act narrowed that ground, as Ssangyong (2019) explained", "C) Because the Bharatiya Nyaya Sanhita replaced it"], ans: "B" },
      10 => { type: "multiple_choice", q: "An AI draft gives a real case name and citation, but the paragraph it cites does not support the point. What should you do?", opts: ["A) Fix or remove the citation, and record it in the verification log", "B) Keep it, because the case is real", "C) Ask the AI again whether the paragraph is correct"], ans: "A" },
      11 => { type: "multiple_choice", q: "In a research memo, where should the direct answer to the question appear?", opts: ["A) Only at the end of the discussion", "B) In the short answer, near the start", "C) In the facts section"], ans: "B" },
      12 => { type: "multiple_choice", q: "A dispute is heard in an arbitration seated in Rajasthan under Indian law. What weight does the UK Supreme Court's decision in Cavendish v Makdessi (2015) have there?", opts: ["A) Persuasive only, because foreign judgments never bind Indian courts or tribunals", "B) Binding, because Indian contract law came from England", "C) Binding, because it is a supreme court decision"], ans: "A" },
      13 => { type: "true_false", q: "For a compliance question, it is safe to rely on an AI tool's memory of the current RBI or SEBI circulars without reading the official text.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A junior files a submission with an AI-suggested case that nobody checked, and the case does not exist. Who is responsible?", opts: ["A) The AI tool's maker", "B) Nobody, because it was an honest mistake", "C) The advocates who prepared, signed and filed it"], ans: "C" },
      15 => { type: "multiple_choice", q: "What is the main purpose of the verification log that goes with the capstone memo?", opts: ["A) To list the AI tools the firm pays for", "B) To record where each authority was checked and what was confirmed", "C) To replace the discussion section of the memo"], ans: "B" }
    }

    AiLegalResearchContent::LESSONS.each do |position, data|
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

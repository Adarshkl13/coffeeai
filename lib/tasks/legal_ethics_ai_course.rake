require_relative "../legal_ethics_ai_content"

namespace :content do
  desc "Create Legal Ethics and AI course and populate all 15 lessons"
  task legal_ethics_ai: :environment do
    course = Course.find_or_create_by!(slug: "legal-ethics-ai") do |c|
      c.title       = "Legal Ethics and AI"
      c.description = "Understand the ethical duties of lawyers who use AI. Learn how generative AI fails, the professional rules and court guidance, confidentiality, competence, candour and fake citations, bias, fair billing, data protection, and how to write an AI use policy for a law firm."
      c.color       = "#4338ca"
      c.icon        = "⚖️"
      c.position    = 79
      c.published   = true
    end
    course.update!(description: "Understand the ethical duties of lawyers who use AI. Learn how generative AI fails, the professional rules and court guidance, confidentiality, competence, candour and fake citations, bias, fair billing, data protection, and how to write an AI use policy for a law firm.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why AI Raises Ethical Questions for Lawyers",
      2 => "How Generative AI Works in Plain Words",
      3 => "Professional Rules in India",
      4 => "Guidance from Courts and Bar Bodies",
      5 => "Client Confidentiality and Privilege",
      6 => "Competence and Supervision",
      7 => "Duty of Candour and Fake Citations",
      8 => "Bias and Fairness",
      9 => "Transparency with Clients and Courts",
      10 => "Billing and Fees When Using AI",
      11 => "Data Protection Compliance",
      12 => "Choosing and Vetting AI Tools",
      13 => "Writing an AI Use Policy for a Firm",
      14 => "AI in Courts and Access to Justice",
      15 => "Capstone: An AI Policy for Mehra & Rao"
    }

    descriptions = {
      1 => "Meet a made-up Maharashtra law firm and its two AI near misses. Learn the main ethical questions AI raises for lawyers: accuracy, confidentiality, fairness and responsibility.",
      2 => "Learn in plain words how generative AI predicts text, why it can invent cases and citations, and which legal tasks are safer or riskier.",
      3 => "See how the Advocates Act 1961 and the Bar Council of India Rules set duties to the court, client, opponent and colleagues, and how they apply to AI.",
      4 => "Learn what Indian courts, the ABA and UK guidance say about AI, and the real cases where fake AI citations reached the courts.",
      5 => "Learn the difference between confidentiality and privilege, what never to paste into AI tools, what to check in vendor terms, and how to redact.",
      6 => "Learn what competence with AI means for lawyers, and how partners can supervise juniors and paralegals who use AI, with a simple sign-off checklist.",
      7 => "Study a fake-citation near miss in detail, see what real courts in India and abroad have done, and learn a five-point citation check and how to correct errors.",
      8 => "Learn where bias enters AI-assisted legal work, why risk scores in criminal justice need great care, and how to keep your work fair to every client.",
      9 => "Learn what to tell clients about AI use, how to write an engagement letter AI clause, and how court disclosure rules on AI are developing.",
      10 => "Learn how to bill AI-assisted work fairly, when fixed and value fees make sense, and what never to charge, with a worked example.",
      11 => "Learn the main DPDP ideas for a law firm: personal data, fiduciaries and processors, a data map, retention, cross-border transfer and breaches.",
      12 => "Learn how to check an AI vendor before lawyers use it: data use and training, retention, security, data location and contract terms.",
      13 => "Build a short AI use policy from real mistakes: approved tools, allowed and banned uses, approvals, training and incident handling.",
      14 => "See how Indian courts use AI for translation and research, how AI can help people without a lawyer, and the risks when it is wrong.",
      15 => "Build a complete AI policy pack for a law firm: a risk review, the policy, client disclosure wording, a training plan and a tool vetting checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A lawyer files a court document that an AI tool helped to write. Who is responsible for what it says?", opts: ["A) The company that made the AI tool", "B) The lawyer who signs or files it", "C) Nobody, if the lawyer did not know about the error"], ans: "B" },
      2 => { type: "multiple_choice", q: "Why can a generative AI tool invent a case citation that looks real?", opts: ["A) It predicts likely words and patterns, and does not check the truth unless it uses a real source", "B) It copies citations from a secret court database", "C) It only makes mistakes when the user types the prompt wrongly"], ans: "A" },
      3 => { type: "multiple_choice", q: "Under rule 36 of the Bar Council of India Rules, which of these is a problem?", opts: ["A) Using AI to check the grammar of a legal notice", "B) Asking AI to explain a clause in plain English for your own study", "C) Posting AI-made reels about your court wins with a \"Call us\" message"], ans: "C" },
      4 => { type: "true_false", q: "The court guidance on AI from India, the UK and the US says AI may assist, but a person must check the output and stays responsible.", opts: ["True", "False"], ans: "True" },
      5 => { type: "multiple_choice", q: "Pooja needs AI help with one indemnity clause in a client's share purchase agreement. What should she do first?", opts: ["A) Paste the whole agreement into a free chat tool, then delete the chat", "B) Copy only the clause, replace names, amounts and dates with placeholders, and use a firm-approved tool", "C) Send the agreement to the other side's lawyer and ask them to use AI"], ans: "B" },
      6 => { type: "multiple_choice", q: "A first-year associate pastes a client's full agreement into a free public AI tool. The firm has no AI rules or training. What was the main failure?", opts: ["A) The client did not ask the firm to avoid AI", "B) The AI tool gave a poor answer", "C) The firm had no system of rules, approved tools, training and supervision"], ans: "C" },
      7 => { type: "true_false", q: "If you find a fake citation in a document after it is filed, it is best to wait and see if the other side notices it.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "An AI summary calls one witness \"unreliable\", but nothing in the statement supports this. What should the lawyer do?", opts: ["A) Remove the label, rerun the task with a neutral prompt and check each point against the source", "B) Keep the label because the AI read the statement carefully", "C) Add the label to the court filing as an expert view"], ans: "A" },
      9 => { type: "multiple_choice", q: "Which is the best way to get a client's consent before putting their confidential documents into an AI tool?", opts: ["A) Add one line in small print saying \"we may use technology\"", "B) Explain the tool, the data risks and the choice, and ask the client to agree", "C) Use the tool first and tell the client only if something goes wrong"], ans: "B" },
      10 => { type: "multiple_choice", q: "A task took 6 hours with AI but used to take 20 hours. The client agreed to hourly billing. What is fair to bill?", opts: ["A) 20 hours, because that is the standard time for the task", "B) 13 hours, halfway between the two", "C) The 6 hours actually worked, including time spent checking the AI output"], ans: "C" },
      11 => { type: "multiple_choice", q: "Under the DPDP Act, what is Mehra & Rao when it decides how its client and staff data is used?", opts: ["A) A data principal", "B) A data processor", "C) A data fiduciary"], ans: "C" },
      12 => { type: "multiple_choice", q: "An AI vendor's terms say \"we may use content to improve our services\". What should the firm do?", opts: ["A) Treat it as a red flag, ask if client data is used for training, and get the answer in the contract", "B) Ignore it, because all AI tools say this", "C) Approve the tool if its drafts are good"], ans: "A" },
      13 => { type: "true_false", q: "A good firm AI policy should punish anyone who reports an AI incident, so that people are more careful.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A client reads a SUVAS translation of a Supreme Court judgment. What is the safe approach?", opts: ["A) Treat the translation as the official judgment", "B) Use it to understand the judgment, and have a person check it against the original before relying on it", "C) Ignore it, because machine translation is never useful"], ans: "B" },
      15 => { type: "multiple_choice", q: "The firm's engagement letter says its AI tools never use client data for training. What must the firm check?", opts: ["A) That the wording sounds professional", "B) That other firms use the same wording", "C) That the promise is true under the signed contract with each vendor"], ans: "C" }
    }

    LegalEthicsAiContent::LESSONS.each do |position, data|
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

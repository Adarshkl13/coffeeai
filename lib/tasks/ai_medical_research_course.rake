require_relative "../ai_medical_research_content"

namespace :content do
  desc "Create AI for Medical Research course and populate all 15 lessons"
  task ai_medical_research: :environment do
    course = Course.find_or_create_by!(slug: "ai-medical-research") do |c|
      c.title       = "AI for Medical Research"
      c.description = "Use AI to find, read and write medical research faster, without fake references or wrong numbers. Frame questions with PICO, search PubMed well, check every citation, summarise and appraise papers, understand key statistics, and write abstracts and papers honestly."
      c.color       = "#e11d48"
      c.icon        = "🔬"
      c.position    = 74
      c.published   = true
    end
    course.update!(description: "Use AI to find, read and write medical research faster, without fake references or wrong numbers. Frame questions with PICO, search PubMed well, check every citation, summarise and appraise papers, understand key statistics, and write abstracts and papers honestly.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Medical Research Works",
      2 => "Where AI Helps in Research",
      3 => "Asking a Good Research Question",
      4 => "Research Ethics and AI",
      5 => "Searching the Literature",
      6 => "Checking References and Avoiding Fake Citations",
      7 => "Summarising Papers with AI",
      8 => "Critical Appraisal",
      9 => "Understanding Key Statistics",
      10 => "Systematic Reviews with AI Help",
      11 => "Working with Research Data",
      12 => "Writing a Research Paper",
      13 => "Grants, Abstracts and Posters",
      14 => "Publishing and Peer Review",
      15 => "Capstone: A Mini Evidence Review at Tarang Hospital"
    }

    descriptions = {
      1 => "Learn the main study types, the evidence pyramid, peer review and preprints, so you can judge any paper or AI summary.",
      2 => "See where AI helps at each research step, why it can invent references and numbers, and what you must always check.",
      3 => "Turn a vague idea into a clear PICO question, check it is feasible with FINER, and use AI to sharpen it.",
      4 => "Learn ethics committee steps, consent, patient data rules, the ICMR AI guidelines and journal rules on AI use.",
      5 => "Build a PubMed search with MeSH terms and Boolean operators, and know when to use Cochrane, Google Scholar and trial registries.",
      6 => "Learn why AI invents references, and how to check every DOI, PMID and retraction before you cite a paper.",
      7 => "Get structured AI summaries of papers with a quote for every number, and check each number against the paper.",
      8 => "Judge how far you can trust a study: bias, confounding, sample size, CONSORT, STROBE, PRISMA and RoB 2.",
      9 => "Read p-values and confidence intervals correctly, and work out relative risk, absolute risk and NNT from made-up trial numbers.",
      10 => "Plan and run a systematic review: protocol, PROSPERO, two reviewers, data extraction and a PRISMA flow that adds up.",
      11 => "Plan research data before you collect it: a clean spreadsheet, a data dictionary, de-identification and an analysis plan drafted with AI help.",
      12 => "Write a paper in the IMRaD structure, use AI only to polish your own words, avoid plagiarism and disclose AI use as ICMJE asks.",
      13 => "Write a 250-word structured abstract, plan the main sections of a grant proposal, and turn your results into a clear poster.",
      14 => "Choose a real journal, spot predatory journals, reply to reviewers point by point, and keep manuscripts you review away from AI tools.",
      15 => "Bring the course together in a mini evidence review: PICO, search, screening counts that add up, a summary table, appraisal and a one-page report."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A computer randomly puts 400 patients into an SMS reminder group or a usual care group. What is this study design?", opts: ["A) Cohort study", "B) Randomised controlled trial", "C) Case-control study"], ans: "B" },
      2 => { type: "true_false", q: "If an AI chatbot gives a reference with authors, a journal and page numbers, you can safely assume the paper exists.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "In the question \"In adults with type 2 diabetes, do WhatsApp reminders lower HbA1c compared with usual care?\", what is the C in PICO?", opts: ["A) Usual care", "B) WhatsApp reminders", "C) HbA1c"], ans: "A" },
      4 => { type: "multiple_choice", q: "According to the ICMJE recommendations, how should authors treat an AI tool that helped write their paper?", opts: ["A) List it as a co-author", "B) Cite it as the main source for their facts", "C) Disclose its use and take full responsibility for the content"], ans: "C" },
      5 => { type: "multiple_choice", q: "In a PubMed search, how should you join the different words for ONE concept, such as SMS, text messaging and WhatsApp?", opts: ["A) With AND", "B) With OR", "C) With NOT"], ans: "B" },
      6 => { type: "multiple_choice", q: "A chatbot gives you a reference with a PMID. What is the best first check?", opts: ["A) Ask the chatbot if the paper is real", "B) Search the PMID in PubMed and match the title, authors, journal and year", "C) Check that the reference looks well formatted"], ans: "B" },
      7 => { type: "multiple_choice", q: "In made-up Study B, HbA1c fell by 0.9 points with WhatsApp and 0.4 with usual care. What is the difference between groups?", opts: ["A) 0.5 points", "B) 0.9 points", "C) 1.3 points"], ans: "A" },
      8 => { type: "true_false", q: "A reporting checklist such as CONSORT tells you whether a trial's result is at low risk of bias.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "30% of patients reach the target with SMS reminders and 20% with usual care. What is the NNT?", opts: ["A) 2", "B) 5", "C) 10"], ans: "C" },
      10 => { type: "multiple_choice", q: "In a systematic review, how should title and abstract screening be done?", opts: ["A) One reviewer screens, and AI makes the final decision", "B) AI screens all records alone to save time", "C) Two reviewers screen independently, and a third person settles disagreements"], ans: "C" },
      11 => { type: "multiple_choice", q: "Neha wants AI help with the data plan for her pilot study. What is the safe way to do this?", opts: ["A) Upload the patient spreadsheet, because it only has study IDs", "B) Give the AI the study plan or a few rows of dummy data, never patient data", "C) Paste the key file so the AI can check the UHIDs"], ans: "B" },
      12 => { type: "true_false", q: "If you ask AI to rewrite a paragraph from another author's paper in new words, it is not plagiarism.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "An AI tool shortens your abstract to fit the 250-word limit. What must you do next?", opts: ["A) Submit it, because AI word counts are exact", "B) Add a few references to make it stronger", "C) Compare every number with your review table and count the words yourself"], ans: "C" },
      14 => { type: "multiple_choice", q: "A journal asks you to peer review a manuscript. What should you do about AI tools?", opts: ["A) Keep the manuscript confidential and ask the journal before using any AI tool", "B) Upload it to a public chatbot to get a quick summary", "C) Let the AI write the review and sign it yourself"], ans: "A" },
      15 => { type: "multiple_choice", q: "In Neha's review, 17 full texts were assessed and 12 were excluded. How many studies were included?", opts: ["A) 12", "B) 5", "C) 17"], ans: "B" }
    }

    AiMedicalResearchContent::LESSONS.each do |position, data|
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

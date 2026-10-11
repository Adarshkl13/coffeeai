require_relative "../ai_medical_documentation_content"

namespace :content do
  desc "Create AI for Medical Documentation course and populate all 15 lessons"
  task ai_medical_documentation: :environment do
    course = Course.find_or_create_by!(slug: "ai-medical-documentation") do |c|
      c.title       = "AI for Medical Documentation"
      c.description = "Use AI to write clinical notes, discharge summaries and letters faster and more safely. Learn SOAP notes, AI scribes, patient-friendly summaries, medical coding with ICD-10, insurance documentation and quality checks, with privacy and clinician sign-off at every step."
      c.color       = "#ef4444"
      c.icon        = "📋"
      c.position    = 70
      c.published   = true
    end
    course.update!(description: "Use AI to write clinical notes, discharge summaries and letters faster and more safely. Learn SOAP notes, AI scribes, patient-friendly summaries, medical coding with ICD-10, insurance documentation and quality checks, with privacy and clinician sign-off at every step.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Medical Documentation Matters",
      2 => "Where AI Helps with Documentation",
      3 => "Privacy, Consent and Safe Tools",
      4 => "Types of Clinical Documents",
      5 => "SOAP Notes with AI",
      6 => "AI Scribes and Voice Notes",
      7 => "Discharge Summaries",
      8 => "Referral Letters and Handover Notes",
      9 => "Patient-Friendly Explanations",
      10 => "Medical Coding Basics",
      11 => "AI-Assisted Coding",
      12 => "Documentation for Insurance and Claims",
      13 => "Checking Quality and Accuracy",
      14 => "Bringing AI Documentation into a Clinic",
      15 => "Capstone: A Documentation Toolkit for Tarang Hospital"
    }

    descriptions = {
      1 => "Learn the five jobs of a clinical record and how much doctor time notes take.",
      2 => "See where AI helps with notes, summaries, scribing and coding, and the risks a clinician must catch before signing.",
      3 => "Learn the basics of India's data protection law, consent for recording, approved tools and removing identifiers.",
      4 => "Learn the six common clinical documents, what goes in each and where AI can help with a draft.",
      5 => "Turn a made-up consultation into a SOAP note with AI, then check every line before signing.",
      6 => "Learn how AI scribes work, how to take consent, and how to catch errors from accents, mixed languages and misheard numbers.",
      7 => "Draft a discharge summary with AI, get the medicine list right, and check allergies, pending results and follow-up before signing.",
      8 => "Use SBAR for clear handovers and write referral letters that start with a clear question for the specialist.",
      9 => "Turn clinical text into simple English, Hindi and Marathi, and check the meaning with back-translation, a native speaker and teach-back.",
      10 => "Learn how ICD-10 codes are built, why the doctor's words decide the code, and what the move to ICD-11 means.",
      11 => "Use AI to suggest ICD-10 codes, check each one against the doctor's words, and never upcode.",
      12 => "Learn how cashless claims, pre-authorisation, PM-JAY and TPAs work in general, and the document gaps that cause claim queries.",
      13 => "Run a simple documentation audit, learn the main error types and use a review checklist before signing.",
      14 => "Plan a safe AI pilot in a ward or clinic and measure time saved and errors honestly.",
      15 => "Build a documentation toolkit for a made-up patient: notes, summary, referral, patient explanation, codes and a quality checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A discharge summary has \"Allergy:\" left blank. Why is this a problem?", opts: ["A) It only affects the hospital bill", "B) The next doctor cannot tell if the patient has no allergies or if nobody asked", "C) It makes the summary too short to print"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool drafted a clinical note, the AI company is responsible for its content, not the clinician who signed it.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Dr Joshi wants AI to tidy a real patient's note. What is the safe choice?", opts: ["A) Use the clinic's approved tool, or practise with a made-up note", "B) Paste it into a free public chatbot after deleting the name", "C) Paste it into any popular chatbot, because it is quick"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which document records the estimated blood loss and the specimens sent to the lab?", opts: ["A) The discharge summary", "B) The progress note", "C) The operation note"], ans: "C" },
      5 => { type: "multiple_choice", q: "An AI SOAP draft says \"ECG: normal\", but no ECG was done. What should the doctor do?", opts: ["A) Keep it, because ECGs are usually normal", "B) Delete it before signing, and log it as a made-up finding", "C) Move it to the Plan section"], ans: "B" },
      6 => { type: "multiple_choice", q: "An AI scribe draft says \"telmisartan 14 mg\". Telmisartan is not usually made in that strength. What should Dr Joshi do?", opts: ["A) Check what he actually prescribed and correct the draft before signing", "B) Sign it, because the scribe recorded the whole consultation", "C) Ask the AI to pick the nearest strength"], ans: "A" },
      7 => { type: "multiple_choice", q: "Which source should the medicine list in a discharge summary be checked against?", opts: ["A) The medicine list taken at admission", "B) The day 2 progress note", "C) The final drug chart and the discharge orders"], ans: "C" },
      8 => { type: "true_false", q: "In an SBAR handover, the Recommendation part tells the next person what to do, what to watch and when to call.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "A translated sheet says \"once every two days\" for a tablet the doctor ordered twice a day. Which check is most likely to catch this?", opts: ["A) A readability score", "B) Back-translation and a native speaker check", "C) Printing the sheet in a bigger font"], ans: "B" },
      10 => { type: "multiple_choice", q: "The notes say \"pneumonia, right lower lobe\" but not \"lobar pneumonia\". What should the coder do?", opts: ["A) Choose J18.1, because the X-ray names a lobe", "B) Choose the code that pays the most", "C) Follow the coding rules, and send a clear, non-leading query to the doctor if the type is unclear"], ans: "C" },
      11 => { type: "multiple_choice", q: "An AI tool suggests A41.9 (sepsis) because the note shows fever and a high white cell count, but the doctor did not diagnose sepsis. What should the coder do?", opts: ["A) Accept it, because the numbers fit sepsis", "B) Write the diagnosis into the note herself", "C) Remove the code, because only documented diagnoses are coded"], ans: "C" },
      12 => { type: "multiple_choice", q: "A TPA asks why a patient with a CURB-65 score of 0 was admitted. What is the best reply?", opts: ["A) Facts from the signed notes, such as SpO2 91% on room air needing oxygen", "B) Add a more serious diagnosis so the admission looks needed", "C) Change the score in the notes to 2"], ans: "A" },
      13 => { type: "true_false", q: "If 9 of 50 audited summaries have at least one error, the error rate is 18%.", opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "Before AI a summary took 25 minutes. With AI the draft takes 2 minutes and checking takes 11 minutes. How many minutes are saved per summary?", opts: ["A) 23 minutes", "B) 12 minutes", "C) 14 minutes"], ans: "B" },
      15 => { type: "multiple_choice", q: "In the toolkit, which document should the referral letter, patient explanation and coding suggestions be built from?", opts: ["A) The first AI draft of the discharge summary", "B) The admission note", "C) The signed discharge summary"], ans: "C" }
    }

    AiMedicalDocumentationContent::LESSONS.each do |position, data|
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

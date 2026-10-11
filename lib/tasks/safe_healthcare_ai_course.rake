require_relative "../safe_healthcare_ai_content"

namespace :content do
  desc "Create Safe and Ethical Healthcare AI course and populate all 15 lessons"
  task safe_healthcare_ai: :environment do
    course = Course.find_or_create_by!(slug: "safe-healthcare-ai") do |c|
      c.title       = "Safe and Ethical Healthcare AI"
      c.description = "Learn how to use AI in healthcare safely, fairly and legally. Understand the main ethical principles and laws, privacy and consent, bias, hallucinations and automation bias, how to evaluate a tool before use, and how to set up policies, monitoring and staff training."
      c.color       = "#be123c"
      c.icon        = "🛡️"
      c.position    = 75
      c.published   = true
    end
    course.update!(description: "Learn how to use AI in healthcare safely, fairly and legally. Understand the main ethical principles and laws, privacy and consent, bias, hallucinations and automation bias, how to evaluate a tool before use, and how to set up policies, monitoring and staff training.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Safety and Ethics Matter in Healthcare AI",
      2 => "Core Ethical Principles",
      3 => "Types of Healthcare AI and Their Risk",
      4 => "Laws and Guidelines",
      5 => "Patient Privacy and Data Protection",
      6 => "Bias and Fairness",
      7 => "Accuracy, Hallucinations and Automation Bias",
      8 => "Transparency and Explainability",
      9 => "Consent and Patient Rights",
      10 => "Evaluating an AI Tool Before Use",
      11 => "Governance: Policies and Committees",
      12 => "Monitoring and Incident Reporting",
      13 => "Staff Training and Safe Use Policies",
      14 => "Special Risks of Generative AI",
      15 => "Capstone: An AI Governance Plan for Tarang Hospital"
    }

    descriptions = {
      1 => "Learn the five kinds of harm healthcare AI can cause, how AI tools usually fail, and meet the made-up Tarang hospital.",
      2 => "Learn the classic principles of medical ethics, the WHO and ICMR principles for AI, and how to handle trade-offs.",
      3 => "Learn four types of healthcare AI and rate each AI use with a simple severity and influence score.",
      4 => "Get a plain-words overview of the DPDP Act, CDSCO device rules, telemedicine and ICMR guidelines, the EU AI Act and the FDA list.",
      5 => "Learn what counts as health data, consent and notice, how to remove identifiers, and why real patient data never goes into public AI tools.",
      6 => "Learn where bias in healthcare AI comes from and how to check a tool's results for each group of patients.",
      7 => "Learn how AI output goes wrong, what hallucinations are, and how automation bias and alert fatigue let errors through.",
      8 => "Learn how to tell patients about AI in plain words, how to read a model card, and why AI explanations can mislead.",
      9 => "Learn informed consent for AI use, the right to reach a human, and patient data rights under India's DPDP Act in general words.",
      10 => "Learn how to check evidence, question vendors, run a local silent test and use a checklist before using a clinical AI tool.",
      11 => "Learn how to set up an AI committee, match approval to risk, and keep an approved tool list, an AI register and a decision log.",
      12 => "Learn what to monitor for each AI tool, how to spot drift, how to write an incident report, and when to pause a tool.",
      13 => "Learn from a privacy near miss, write a one-page acceptable use policy, and plan AI training for each staff group.",
      14 => "Learn four special risks of generative AI: unsafe chat advice, fake references, deepfakes and prompt injection, and how to defend against each.",
      15 => "Bring the course together in a six-part AI governance plan for the made-up Tarang hospital."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A chest X-ray AI worked well in the vendor's tests but misses more findings at Tarang. What is the most likely reason?", opts: ["A) The radiologists are not reading the films", "B) Tarang's patients and machines are different from the data the tool learned from", "C) AI tools never work in real hospitals"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool drafted a note, the AI is responsible for the note, so the clinician who signed it is not accountable.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Using the course's simple score, a tool has Severity 4 and Influence 2. What is its score and first risk level?", opts: ["A) 8, Very high", "B) 6, High", "C) 2, Low"], ans: "A" },
      4 => { type: "multiple_choice", q: "What do India's Telemedicine Practice Guidelines 2020 say about AI platforms?", opts: ["A) AI may prescribe medicines if it is accurate enough", "B) AI must never be used in telemedicine", "C) AI may support the doctor, but the doctor must counsel the patient and prescribe"], ans: "C" },
      5 => { type: "multiple_choice", q: "Asha needs AI help with an insurance letter for a real patient. What is the safe choice?", opts: ["A) Use the hospital's approved AI tool, enter only the facts needed, and check the draft", "B) Paste the full discharge summary into a free chat app, then delete the chat", "C) Remove only the patient's name and paste the rest into any public chatbot"], ans: "A" },
      6 => { type: "multiple_choice", q: "A sepsis score flags 80% of sepsis cases overall, but only 33 of 48 cases in rural patients. What should the team do first?", opts: ["A) Nothing, because the overall result is good", "B) Stop using all AI tools at once", "C) Review the missed rural cases with clinicians to find the reasons, and add safety nets"], ans: "C" },
      7 => { type: "true_false", q: "If an AI scribe is usually right, the doctor can sign its notes without reading the allergy section.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Which sentence belongs in a patient notice about an AI scribe?", opts: ["A) \"Your doctor reads, corrects and signs every note, and you can say no to recording.\"", "B) \"Sensitivity by age group was 86.7% in the vendor's test.\"", "C) \"Our AI is 100% accurate.\""], ans: "A" },
      9 => { type: "multiple_choice", q: "A patient writes \"my father has chest pain\" to a hospital booking chatbot. What should happen?", opts: ["A) The bot offers the next free cardiology slot", "B) The bot replies at once to call 108 or 112 or come to Emergency now, and alerts staff", "C) The bot asks the patient to wait for office hours"], ans: "B" },
      10 => { type: "multiple_choice", q: "In a silent test, an X-ray AI flags 230 of 250 abnormal films. What is its sensitivity?", opts: ["A) 92.0%", "B) 71.9%", "C) 88.0%"], ans: "A" },
      11 => { type: "multiple_choice", q: "Tarang's chest X-ray AI has a Very high risk score. Who should approve it?", opts: ["A) The radiologist alone, because she uses it", "B) Any staff member who finds it useful", "C) The full AI committee, then hospital management"], ans: "C" },
      12 => { type: "multiple_choice", q: "A sepsis alert suddenly gives almost twice as many alerts, but useful alerts do not rise. What should the owner do first?", opts: ["A) Review it now and look for a cause, such as a change in lab data", "B) Ignore it, because more alerts means more safety", "C) Tell nurses to stop checking alerts"], ans: "A" },
      13 => { type: "true_false", q: "If a staff member pastes patient data into a public AI tool, the best fix is to punish that person, and no other change is needed.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A chat tool gives you a research reference with a DOI. What should you do before using it?", opts: ["A) Use it, because a DOI proves the paper is real", "B) Find the paper in PubMed or Google Scholar and check it supports the claim", "C) Ask the same chat tool if the reference is real"], ans: "B" },
      15 => { type: "multiple_choice", q: "Which is the first step in building an AI governance plan?", opts: ["A) Buy a new AI tool", "B) Train staff on every tool", "C) Find every AI use, including unofficial ones, and name an owner"], ans: "C" }
    }

    SafeHealthcareAiContent::LESSONS.each do |position, data|
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

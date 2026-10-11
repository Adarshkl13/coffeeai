require_relative "../ai_doctors_clinical_practice_content"

namespace :content do
  desc "Create AI for Doctors in Clinical Practice course and populate all 15 lessons"
  task ai_doctors_clinical_practice: :environment do
    course = Course.find_or_create_by!(slug: "ai-doctors-clinical-practice") do |c|
      c.title       = "AI for Doctors in Clinical Practice"
      c.description = "Use AI to support, not replace, clinical judgement. Ask better clinical questions, check guidelines, broaden differential diagnoses, review drug interactions and doses, explain plans to patients and stay up to date, with the doctor checking and deciding every time."
      c.color       = "#991b1b"
      c.icon        = "🩺"
      c.position    = 86
      c.published   = true
    end
    course.update!(description: "Use AI to support, not replace, clinical judgement. Ask better clinical questions, check guidelines, broaden differential diagnoses, review drug interactions and doses, explain plans to patients and stay up to date, with the doctor checking and deciding every time.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How AI Fits into Clinical Practice",
      2 => "Where AI Helps and Where It Fails",
      3 => "Responsibility, Consent and Privacy",
      4 => "Asking Good Clinical Questions",
      5 => "Checking Clinical Guidelines with AI",
      6 => "Differential Diagnosis Support",
      7 => "Drug Interactions, Doses and Prescribing Checks",
      8 => "Interpreting Tests and Results",
      9 => "Explaining Diagnoses and Plans to Patients",
      10 => "Chronic Disease Follow-Up with AI Help",
      11 => "Emergencies and Time-Critical Care",
      12 => "Staying Up to Date",
      13 => "Bias, Errors and Automation Bias",
      14 => "Setting Up Safe AI Use in Your Clinic",
      15 => "Capstone: A Safe AI-Supported Consultation"
    }

    descriptions = {
      1 => "Learn the difference between decision support and decision making, the main types of clinical AI tools, and what only the doctor can do.",
      2 => "See where AI saves time in clinical work and the five ways it fails, including hallucinations, outdated guidelines and automation bias.",
      3 => "Understand why the doctor stays responsible, how to explain AI use to patients, and how to remove identifiers before using any AI tool.",
      4 => "Turn a bedside worry into a clear PICO question, give the right context, and make AI show its sources and uncertainty.",
      5 => "Use AI to find the right Indian and international guidelines, compare versions and check the original before you act.",
      6 => "Use AI to widen your list of possible diagnoses, sort causes you must not miss, and act first when red flags are present.",
      7 => "Use AI to spot interactions, kidney and liver issues, pregnancy and child dosing problems, then check every answer in the formulary or label.",
      8 => "Read lab results with the patient in mind, use pre-test probability, avoid tests that will not change the plan, and check AI explanations.",
      9 => "Explain diagnoses and plans in plain words and Indian languages, share decisions with patients, and use teach-back to check understanding.",
      10 => "Build diabetes and blood pressure review lists with targets from a checked guideline, and set up simple recall reminders.",
      11 => "Learn why AI must never delay emergency care, follow a made-up chest pain case from arrival to ambulance, and see where AI helps before and after.",
      12 => "Build a simple system to keep up with new evidence, read absolute numbers and NNT, and check every reference an AI gives you.",
      13 => "Learn which patient groups AI often gets wrong, how automation bias causes errors, and how second checks and error reporting protect patients.",
      14 => "Set up safe AI use in a clinic with an approved-tool list, a one-page policy, staff training and a monthly audit.",
      15 => "Put the course together in one made-up consultation: question, guideline check, differentials, drug check, patient explanation and documentation."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which of these is decision support, not decision making?", opts: ["A) Dr Joshi signs Mr Yadav's prescription", "B) An interaction checker flags diclofenac with telmisartan and reduced kidney function", "C) Dr Joshi agrees a pain plan with Mr Yadav"], ans: "B" },
      2 => { type: "true_false", q: "If an AI answer sounds confident and names a reference, you can use it without opening the reference.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "What do India's Telemedicine Practice Guidelines 2020 allow an AI platform to do?", opts: ["A) Assist the doctor, while the doctor gives the final prescription or counselling", "B) Prescribe medicines when the doctor is busy", "C) Counsel patients directly about their treatment"], ans: "A" },
      4 => { type: "multiple_choice", q: "A doctor asks: \"In an older woman with falls who takes alprazolam, does a slow taper, compared with continuing it, change falls and sleep?\" What is the C in this PICO question?", opts: ["A) An older woman with falls", "B) Falls and sleep", "C) Continuing alprazolam"], ans: "C" },
      5 => { type: "multiple_choice", q: "An AI tool gives you a short summary of a diabetes guideline. What should you do next?", opts: ["A) Use it, because AI reads guidelines well", "B) Open the original on the official website and check the version", "C) Ask the AI again until you like the answer"], ans: "B" },
      6 => { type: "multiple_choice", q: "A made-up man, 34, has central chest pressure, sweating and pain spreading to the left arm. What should the doctor do first?", opts: ["A) Ask an AI tool for a differential diagnosis", "B) Order a full blood test panel and wait for the results", "C) Follow the chest pain protocol: ECG within minutes and call 108 or 112"], ans: "C" },
      7 => { type: "multiple_choice", q: "An AI tool says a patient with eGFR 47 must stop metformin. What should you do?", opts: ["A) Check the current product label and formulary before acting", "B) Stop metformin, because the AI named a threshold", "C) Ask the AI again until it agrees with you"], ans: "A" },
      8 => { type: "multiple_choice", q: "A test has 90% sensitivity and 90% specificity. What happens to its positive predictive value (PPV) when the disease becomes rare?", opts: ["A) It stays the same, because the test is the same", "B) It falls, because more positive results are false", "C) It rises, because fewer people have the disease"], ans: "B" },
      9 => { type: "true_false", q: "Teach-back means asking the patient to explain the plan in their own words, so you can check how well you explained it.", opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "What is the safest way to use AI to build a diabetes follow-up checklist?", opts: ["A) Ask the AI to list the targets from memory", "B) Copy targets from a patient forum", "C) Paste text from the current guideline, ask AI to use only that text, then check each row against the original"], ans: "C" },
      11 => { type: "multiple_choice", q: "A made-up patient, 34, arrives at your clinic with 40 minutes of chest pressure spreading to his left arm, with sweating. What should you do first?", opts: ["A) Type his symptoms into an AI tool to see if it is serious", "B) Call 108 or 112, record and read a 12-lead ECG, and follow the protocol", "C) Ask him to wait his turn, because he is young"], ans: "B" },
      12 => { type: "multiple_choice", q: "In a made-up trial, 12% of people on placebo and 9% on the new medicine had the outcome. What is the number needed to treat (NNT)?", opts: ["A) 34", "B) 4", "C) 25"], ans: "A" },
      13 => { type: "true_false", q: "If an AI tool gives no interaction alert, you can assume the prescription is safe.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Which of these belongs in a clinic's AI use policy?", opts: ["A) Staff may use any free chatbot if they remove the patient's name", "B) AI may write prescriptions when the doctor is busy", "C) Report every AI error or near miss, and audit a sample of AI-assisted work each month"], ans: "C" },
      15 => { type: "multiple_choice", q: "In the capstone, the AI's leaflet draft adds a paracetamol dose that Dr Joshi never agreed. What should he do?", opts: ["A) Delete the line and check the whole draft against his plan before giving it", "B) Keep it, because AI usually knows doses", "C) Give the leaflet and tell the patient to ignore the dose"], ans: "A" }
    }

    AiDoctorsClinicalPracticeContent::LESSONS.each do |position, data|
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

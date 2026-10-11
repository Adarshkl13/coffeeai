require_relative "../ai_medical_imaging_content"

namespace :content do
  desc "Create AI in Medical Imaging course and populate all 15 lessons"
  task ai_medical_imaging: :environment do
    course = Course.find_or_create_by!(slug: "ai-medical-imaging") do |c|
      c.title       = "AI in Medical Imaging"
      c.description = "Understand how AI reads X-rays, CT, MRI and other scans, and how to use it safely. Learn how imaging AI is trained and measured, what sensitivity and specificity really mean, where it helps and fails, the rules and approvals, and how to run a fair pilot."
      c.color       = "#dc2626"
      c.icon        = "🩻"
      c.position    = 71
      c.published   = true
    end
    course.update!(description: "Understand how AI reads X-rays, CT, MRI and other scans, and how to use it safely. Learn how imaging AI is trained and measured, what sensitivity and specificity really mean, where it helps and fails, the rules and approvals, and how to run a fair pilot.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Medical Imaging Basics",
      2 => "Where AI Helps in Imaging",
      3 => "How Imaging AI Learns",
      4 => "Measuring Imaging AI",
      5 => "Chest X-Ray AI",
      6 => "AI in CT, MRI and Ultrasound",
      7 => "AI in Screening Programmes",
      8 => "AI-Assisted Reporting",
      9 => "Understanding AI Outputs",
      10 => "Bias, Limits and Failure Cases",
      11 => "Rules and Approvals",
      12 => "Choosing and Evaluating an Imaging AI Tool",
      13 => "Workflow and Human Oversight",
      14 => "Talking to Patients about Imaging AI",
      15 => "Capstone: Evaluating a Chest X-Ray AI Pilot for Tarang Diagnostics"
    }

    descriptions = {
      1 => "Learn the main imaging types (X-ray, CT, MRI, ultrasound, mammography and digital pathology) and who does what, from the scan request to the signed report.",
      2 => "See the five kinds of help imaging AI gives (triage, detection, measurement, reports and workflow) and the real limits of these narrow tools.",
      3 => "Understand, without code, how imaging AI learns from labelled images and why the quality and variety of the data decide how well it works.",
      4 => "Work out sensitivity, specificity, PPV and NPV from a made-up chest X-ray test, and see how prevalence changes what a flag means.",
      5 => "Learn the common uses of chest X-ray AI, what WHO says about AI for TB screening, and what a radiologist still checks on every X-ray.",
      6 => "See how AI helps in CT, MRI and ultrasound with urgent alerts, measurements and image quality, and what the radiologist still checks.",
      7 => "Learn why screening is not diagnosis, how AI is used in TB, breast and diabetic eye screening, and why follow-up pathways matter most.",
      8 => "Learn how structured reports and AI drafts work, how language models can invent findings, and why the radiologist checks and signs every line.",
      9 => "Understand heatmaps, scores and thresholds, and work through a made-up threshold change to see the trade-off between misses and false alarms.",
      10 => "Learn how imaging AI fails with different machines, patient groups, children and drift, and how to read a subgroup table and monitor a tool.",
      11 => "Learn the main rules for imaging AI in simple words: CDSCO medical device rules and risk classes, FDA, CE marking, the EU AI Act and the PCPNDT Act (not legal advice).",
      12 => "Learn how to choose an imaging AI tool fairly: define the need, ask vendors the right questions, test on your own images and design a pilot with targets set in advance.",
      13 => "See where imaging AI fits in the radiology workflow, and how second reads, escalation and stop rules guard against automation bias and alert fatigue.",
      14 => "Learn how to explain imaging AI to patients honestly, handle notice and consent, and keep scan images private under India's DPDP law.",
      15 => "Evaluate a made-up 4-week chest X-ray AI pilot: work out the metrics, compare turnaround times, check subgroups, review missed cases and write a go or no-go report."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which of these imaging types does NOT use ionising radiation?", opts: ["A) CT", "B) Mammography", "C) MRI"], ans: "C" },
      2 => { type: "multiple_choice", q: "A chest X-ray AI tool moves X-rays with a possible TB pattern to the top of the reading list. What kind of help is this?", opts: ["A) Triage", "B) Measurement", "C) Report drafting"], ans: "A" },
      3 => { type: "true_false", q: "If an imaging AI tool did well on a test set from the same hospitals it was trained on, you can assume it will work just as well at your hospital.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "In a made-up test, a tool had TP 92, FP 108, FN 8 and TN 792. What is its PPV (positive predictive value)?", opts: ["A) 92%", "B) 46%", "C) 99%"], ans: "B" },
      5 => { type: "multiple_choice", q: "LungLens flags a chest X-ray as \"abnormal / possible TB\". What should happen next?", opts: ["A) Start TB treatment at once", "B) Send the AI result to the patient as the report", "C) A radiologist reads the X-ray, and if TB is possible, a confirmatory test such as a sputum test is done"], ans: "C" },
      6 => { type: "multiple_choice", q: "An AI tool flags a head CT as \"possible bleed\" and moves it to the top of the list. What should happen next?", opts: ["A) The radiologist reads the scan and tells the treating doctor", "B) The emergency doctor starts treatment based on the alert alone", "C) Scans without an alert are no longer read"], ans: "A" },
      7 => { type: "true_false", q: "A positive result at an AI-supported TB screening camp means the person has TB.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "A language model drafts a report impression that mentions a pleural effusion, but the radiologist cannot see one on the X-ray. What is this?", opts: ["A) A wrong threshold", "B) An invented finding", "C) Drift over time"], ans: "B" },
      9 => { type: "multiple_choice", q: "In a made-up test, lowering the threshold from 50 to 40 raised sensitivity from 92% to 96%. What else usually happens?", opts: ["A) Fewer X-rays are flagged", "B) The PPV goes up", "C) More normal X-rays are flagged as false alarms"], ans: "C" },
      10 => { type: "multiple_choice", q: "After a software update on one X-ray machine, the AI flag rate for that room jumps from 20% to 29%. What is the best first step?", opts: ["A) Ignore it, because the tool passed its test", "B) Check the change, tell the vendor, and consider pausing the tool for that room", "C) Raise the threshold quietly until the flag rate is 20% again"], ans: "B" },
      11 => { type: "multiple_choice", q: "Under India's CDSCO guidance, what mainly decides the risk class of medical device software?", opts: ["A) The price of the software", "B) Its intended use: how serious the condition is and how much the output affects the decision", "C) How many hospitals already use it"], ans: "B" },
      12 => { type: "true_false", q: "It is fine to decide a pilot's success criteria after you have seen the results.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "A radiologist signs a chest X-ray as normal mainly because the AI score is low, without reading it fully. What is this called?", opts: ["A) Automation bias", "B) Drift", "C) Prevalence"], ans: "A" },
      14 => { type: "multiple_choice", q: "What is the safest way to share past X-rays with a vendor for a local test?", opts: ["A) Send them with names, so results are easy to match", "B) Upload them to a free public chatbot first", "C) Remove identifiers from the file headers and the images, under a written agreement"], ans: "C" },
      15 => { type: "multiple_choice", q: "In the made-up pilot, overall sensitivity passed, but Room 2 sensitivity was 80.4% (37 of 46), below the 85% target. What is the best decision?", opts: ["A) Go with conditions: use the tool for Room 1 only, and retest Room 2 later", "B) Go everywhere, because the overall result passed", "C) Hide the Room 2 result from the report"], ans: "A" }
    }

    AiMedicalImagingContent::LESSONS.each do |position, data|
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

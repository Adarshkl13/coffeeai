require_relative "../ai_hr_policies_compliance_content"

namespace :content do
  desc "Create AI for HR Policies and Compliance course and populate all 15 lessons"
  task ai_hr_policies_compliance: :environment do
    course = Course.find_or_create_by!(slug: "ai-hr-policies-compliance") do |c|
      c.title       = "AI for HR Policies and Compliance"
      c.description = "Use AI to write clear HR policies and keep them compliant. Draft and simplify policies and handbooks, compare them with the law and good practice, track changes in the rules, answer policy questions and run simple compliance checks."
      c.color       = "#6d28d9"
      c.icon        = "\u{1F4D8}"
      c.position    = 91
      c.published   = true
    end
    course.update!(title: "AI for HR Policies and Compliance", description: "Use AI to write clear HR policies and keep them compliant. Draft and simplify policies and handbooks, compare them with the law and good practice, track changes in the rules, answer policy questions and run simple compliance checks.", color: "#6d28d9", icon: "\u{1F4D8}", position: 91)
    puts "Course: #{course.title}"

    titles = {
      1 => "What HR Policies Are For",
      2 => "Where AI Helps and Its Limits",
      3 => "Employment Law Basics for Policy Writers",
      4 => "Finding What a Policy Must Cover",
      5 => "Drafting a Policy with AI",
      6 => "Plain Language Policies",
      7 => "Key Policies",
      8 => "Sensitive Policies",
      9 => "Employee Handbooks",
      10 => "Keeping Policies Up to Date",
      11 => "Answering Policy Questions",
      12 => "Compliance Checklists and Audits",
      13 => "Data Protection in HR",
      14 => "Policies for AI Use at Work",
      15 => "Capstone: A Policy Pack for Harbour Lane Hotels"
    }

    descriptions = {
      1 => "Learn the difference between policies, procedures and guidance, who reads them, and why clear wording matters.",
      2 => "See which policy tasks AI does well, and how to catch wrong-country law, outdated rules and made-up requirements.",
      3 => "Learn where UK and US employment rules come from, the UK changes in 2026 and 2027, and why an adviser checks.",
      4 => "Build a requirements list from official sources, use AI to extract items from pasted text, and check every row.",
      5 => "Draft a policy with a standard structure, brief AI with checked requirements and decisions, and review the draft.",
      6 => "Turn dense policy text into plain language, measure readability, add examples and plan safe translations.",
      7 => "Update leave, sickness, family, flexible and hybrid working, expenses and conduct policies from checked rules.",
      8 => "Write grievance, disciplinary, harassment and whistleblowing policies with careful, fair wording and safe AI use.",
      9 => "Plan a handbook's contents, combine policies with AI and control versions so everyone reads the same text.",
      10 => "Track law changes, set review dates with spreadsheet formulas and keep change logs for every policy.",
      11 => "Build an approved answer library, write honest \"I don't know yet\" replies, and pass sensitive questions to the right person.",
      12 => "Build a simple audit sheet, collect evidence, score each gap with spreadsheet formulas, and plan fixes with owners and dates.",
      13 => "Learn UK data protection basics for HR, build a retention schedule, and update an employee privacy notice with AI.",
      14 => "Write an AI acceptable use policy with traffic-light data rules, approved tools, human checks, approval and training.",
      15 => "Plan and build a policy pack for Harbour Lane Hotels: requirements, three policies, a handbook section, an FAQ and an audit checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which part of an HR document tells people the steps to follow, who does them and when?", opts: ["A) The policy", "B) The procedure", "C) The guidance"], ans: "B" },
      2 => { type: "true_false", q: "If an AI assistant states a UK employment rule clearly and confidently, you can copy it into a policy without checking.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "What is true about a statutory code of practice, such as the Acas Code on disciplinary and grievance procedures?", opts: ["A) It is an Act of Parliament", "B) It is optional advice that tribunals ignore", "C) It is not law itself, but tribunals take it into account"], ans: "C" },
      4 => { type: "multiple_choice", q: "Grace asks AI to build a requirements list from official text she pasted. What should each row include?", opts: ["A) The requirement, its tag and the exact source sentence it comes from", "B) Only the requirement, so the list stays short", "C) The AI's confidence score instead of a source"], ans: "A" },
      5 => { type: "multiple_choice", q: "An AI draft of a tips policy says \"Supervisors get a bigger share.\" Managers have not decided this. What should Grace do?", opts: ["A) Keep it, because AI suggestions are usually fair", "B) Delete the whole draft and start again", "C) Mark it [DECISION NEEDED] so managers decide after talking to staff"], ans: "C" },
      6 => { type: "multiple_choice", q: "An AI simplifies \"wholly, exclusively and necessarily\" in an expenses policy. What should Grace do next?", opts: ["A) Publish it, because shorter text is always better", "B) Ask finance to confirm the plain words keep the same tax meaning", "C) Translate the old wording instead"], ans: "B" },
      7 => { type: "true_false", q: "If an AI draft says a planned 2027 flexible working change is already in force, you can keep it because it will be true soon.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Which sentence is the most careful wording for a harassment policy?", opts: ["A) We keep your report as private as we can, but we may need to share some details to look into it.", "B) Your report will be kept completely confidential.", "C) The harasser will be removed from the rota at once."], ans: "A" },
      9 => { type: "multiple_choice", q: "Harbour Lane's staff rooms hold handbook v3.2 and the intranet has v3.3. What is the best fix?", opts: ["A) Leave both, because staff can choose", "B) Ask AI to merge the two versions into one", "C) Keep one master copy, remove old printouts and show the version and date on every page"], ans: "C" },
      10 => { type: "multiple_choice", q: "In a policy register, what must a person decide, because a formula cannot?", opts: ["A) Whether a known law change is missing from the policy", "B) The review due date", "C) The number of days past the review date"], ans: "A" },
      11 => { type: "multiple_choice", q: "A casual worker asks how her holiday is worked out. The library entry for this is still a draft. What should the reply do?", opts: ["A) Send the draft answer, because it is probably right", "B) Say there is no approved answer yet and pass the question to HR", "C) Ask the AI to answer from its own knowledge"], ans: "B" },
      12 => { type: "multiple_choice", q: "An audit finds that 3 of 40 staff files have no record of the date of the right to work check. What is the pass rate?", opts: ["A) 92.5%", "B) 87.5%", "C) 7.5%"], ans: "A" },
      13 => { type: "true_false", q: "Consent is usually the best lawful basis for an employer to use staff data, because staff can always say no.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Under Harbour Lane's AI acceptable use policy, which task is not allowed in any AI tool?", opts: ["A) Rewriting the published breakfast times notice", "B) Drafting a guest reply in the approved business tool", "C) Asking AI to rank 30 applicants for a chef job"], ans: "C" },
      15 => { type: "multiple_choice", q: "Why does the Dignity at work policy go live first in the Harbour Lane policy pack?", opts: ["A) A stronger harassment duty starts on 30 October 2026", "B) It is the shortest policy to write", "C) The AI drafted it fastest"], ans: "A" }
    }

    AiHrPoliciesComplianceContent::LESSONS.each do |position, data|
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

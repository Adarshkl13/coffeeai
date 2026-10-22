require_relative "../ai_fair_hiring_content"

namespace :content do
  desc "Create AI for Fair Hiring course and populate all 15 lessons"
  task ai_fair_hiring: :environment do
    course = Course.find_or_create_by!(slug: "ai-fair-hiring") do |c|
      c.title       = "AI for Fair Hiring"
      c.description = "Learn to use AI in hiring without unfair bias. Understand how bias enters hiring, design fair job posts, screening and interviews, check outcomes across groups, follow the rules and keep humans accountable."
      c.color       = "#a78bfa"
      c.icon        = "⚖️"
      c.position    = 52
      c.published   = true
    end
    course.update!(description: "Learn to use AI in hiring without unfair bias. Understand how bias enters hiring, design fair job posts, screening and interviews, check outcomes across groups, follow the rules and keep humans accountable.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Fair Hiring Means",
      2 => "How Bias Enters Hiring",
      3 => "How AI Can Help or Hurt Fairness",
      4 => "Inclusive Job Descriptions",
      5 => "Fair Sourcing",
      6 => "Fair CV Screening",
      7 => "Accessible Hiring and Reasonable Adjustments",
      8 => "Fair Interviews",
      9 => "Checking Outcomes for Bias",
      10 => "Auditing AI Hiring Tools",
      11 => "What AI Must Not Do in Hiring",
      12 => "Laws and Rules on Fair Hiring",
      13 => "Transparency with Candidates",
      14 => "Building a Fair Hiring Policy",
      15 => "Capstone: A Fairness Review of a Hiring Process"
    }

    descriptions = {
      1 => "Learn what fair hiring means: equal opportunity, merit and job-related criteria. Use AI to turn job tasks into fair criteria.",
      2 => "See how human bias, biased data and biased tools enter each stage of hiring. Use AI to check interview notes for bias.",
      3 => "Learn how AI can make hiring more consistent or copy old bias through proxies. See what real human oversight looks like.",
      4 => "Write job descriptions that welcome all capable people, with realistic requirements and accessible formats. Check them with AI.",
      5 => "Widen your candidate pool beyond referrals, choose fair channels and track where applicants come from.",
      6 => "Set job-related criteria first, hide details that do not matter, avoid proxies and use AI to score evidence while people decide.",
      7 => "Find barriers in each hiring stage, ask every candidate what they need and make reasonable adjustments.",
      8 => "Run structured interviews with job-related questions, clear rubrics and a mixed panel, and avoid questions you must never ask.",
      9 => "Calculate selection rates by group, use the four-fifths ratio as a warning sign, take care with small numbers and fix the process.",
      10 => "Ask AI hiring vendors for evidence, test tools with paired CVs and a pilot, and keep audit records.",
      11 => "Learn which AI hiring uses are red lines, such as emotion reading, lie detection and social media snooping, and how to say no to a vendor.",
      12 => "Get a simple, current map of fair hiring rules in India, the US (EEOC, NYC Local Law 144) and the EU AI Act. General education, not legal advice.",
      13 => "Learn how to tell candidates when AI is used, explain decisions with job reasons, give useful feedback and run a simple appeal.",
      14 => "Build a short fair hiring policy with six parts: principles, roles, human review, records, training and a review cycle.",
      15 => "Review a full made-up hiring process, recalculate selection rates and four-fifths ratios, and write a fix plan with owners and dates."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which of these is a job-related criterion for a Quality Inspector at a food factory?", opts: ["A) Aged 20 to 30", "B) Can record defects on a checklist", "C) Lives within 5 km of the factory"], ans: "B" },
      2 => { type: "true_false", q: "An AI screening tool can learn bias from past hiring data even if it never sees a candidate's gender.", opts: ["True", "False"], ans: "True" },
      3 => { type: "multiple_choice", q: "In hiring, what is a proxy?", opts: ["A) A person who applies for a job on behalf of someone else", "B) A recruiter who checks the AI's scores", "C) A detail, such as pin code or college name, that is closely linked to a group and can act as a stand-in for it"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which job description line is the most inclusive?", opts: ["A) \"Writes clear shift reports in English\"", "B) \"Native English speaker\"", "C) \"Young, energetic rockstar\""], ans: "A" },
      5 => { type: "multiple_choice", q: "A factory gets 325 applicants. 90 of them came from employee referrals. What share came from referrals?", opts: ["A) About 18%", "B) About 28%", "C) About 90%"], ans: "B" },
      6 => { type: "multiple_choice", q: "Sunita is screening CVs for a Quality Inspector role. Which detail is a fair, job-related criterion?", opts: ["A) The candidate has tested food samples in a lab", "B) The candidate studied at a famous college", "C) The candidate has no career gaps"], ans: "A" },
      7 => { type: "multiple_choice", q: "What is the fairest way to offer adjustments in an interview invite?", opts: ["A) Ask candidates to name their medical condition", "B) Offer adjustments only to candidates who look disabled", "C) Ask every candidate what would help them take part, without asking for medical details"], ans: "C" },
      8 => { type: "multiple_choice", q: "In a structured interview, when should the panel discuss a candidate?", opts: ["A) Before the interview starts", "B) After each panel member has scored alone using the rubric", "C) Only if the candidate asks for feedback"], ans: "B" },
      9 => { type: "true_false", q: "If one group's selection rate is below four-fifths of the highest group's rate, this proves the hiring was discriminatory.", opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "What is a paired CV test for an AI hiring tool?", opts: ["A) Two recruiters read the same CV", "B) The tool picks two candidates for each job", "C) You run made-up CVs that differ in only one detail and see if the score changes"], ans: "C" },
      11 => { type: "multiple_choice", q: "A vendor offers an \"Integrity Score\" based on voice stress in video interviews. What should Sunita do?", opts: ["A) Use it only for Shift Supervisor roles", "B) Not use it, because no reliable science can find honesty from a voice", "C) Use it, but give it a low weight in the final score"], ans: "B" },
      12 => { type: "multiple_choice", q: "Under the EU AI Act, how is AI that filters job applications classed?", opts: ["A) Minimal risk, with no special duties", "B) High-risk, with extra duties for the employer", "C) Banned everywhere in the EU"], ans: "B" },
      13 => { type: "true_false", q: "When you reject a candidate, \"Our system found other candidates were a better fit\" is a good explanation because it is short.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "In a skills test, 90 of 150 men passed and 54 of 120 women passed. What is the four-fifths ratio for women, and what does it mean?", opts: ["A) 0.75: a warning sign to look into, not proof of bias", "B) 0.60: proof that the test is illegal", "C) 1.33: no problem at all"], ans: "A" },
      15 => { type: "multiple_choice", q: "An AI screen shortlisted 55 of 110 men and 12 of 40 women. What is the four-fifths ratio for women?", opts: ["A) 0.60", "B) 0.80", "C) 0.22"], ans: "A" }
    }

    AiFairHiringContent::LESSONS.each do |position, data|
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

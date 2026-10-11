require_relative "../ai_learning_development_content"

namespace :content do
  desc "Create AI for Learning and Development course and populate all 15 lessons"
  task ai_learning_development: :environment do
    course = Course.find_or_create_by!(slug: "ai-learning-development") do |c|
      c.title       = "AI for Learning and Development"
      c.description = "Use AI to build training that works. Find skill gaps, plan learning paths, design courses, create content and quizzes, run workshops, coach people and measure the impact of learning on real work."
      c.color       = "#7c3aed"
      c.icon        = "🎓"
      c.position    = 54
      c.published   = true
    end
    course.update!(description: "Use AI to build training that works. Find skill gaps, plan learning paths, design courses, create content and quizzes, run workshops, coach people and measure the impact of learning on real work.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Learning and Development Is",
      2 => "Where AI Helps in L&D",
      3 => "Finding Skill Gaps",
      4 => "Learning Needs Analysis",
      5 => "Writing Learning Objectives",
      6 => "Designing a Course",
      7 => "Creating Learning Content with AI",
      8 => "Quizzes and Assessments",
      9 => "Microlearning and Blended Learning",
      10 => "Running Workshops and Live Sessions",
      11 => "Personalised Learning Paths",
      12 => "Coaching and Mentoring",
      13 => "Measuring Training Impact",
      14 => "Content Quality, Copyright and Accessibility",
      15 => "Capstone: Build a Training Programme"
    }

    descriptions = {
      1 => "Learn what L&D is, how training, upskilling and reskilling differ, and how the 70-20-10 idea and the L&D cycle guide good training.",
      2 => "See where AI saves time at each step of the L&D cycle, and why experts must check every fact and people must make every decision.",
      3 => "Build a skills framework, compare self and manager ratings, and find skill gaps with simple spreadsheet formulas.",
      4 => "Start from a business problem, find its real causes, decide where training helps and rank training needs by impact and urgency.",
      5 => "Write clear, measurable learning objectives with the ABCD method and Bloom's levels, and use AI to improve weak ones safely.",
      6 => "Design a course backwards from objectives to checks, practice and content, and build a course outline with AI that fits real shifts and people.",
      7 => "Create explanations, examples, scenarios and job aids with AI from your own approved source, and have an expert check every fact.",
      8 => "Match each check to its objective, write scenario questions with good distractors, read quiz results in a sheet and keep assessments fair.",
      9 => "Use short micro lessons, spaced review questions and a blend of online, classroom and on-the-job learning so people remember what they learn.",
      10 => "Plan a workshop agenda that is mostly practice, draft a facilitation guide with AI, lead the room well and run live online sessions.",
      11 => "Build personalised learning paths from roles and skill ratings with simple spreadsheet rules, and learn what AI tutors can and cannot do.",
      12 => "Run coaching talks with the GROW model, plan a mentoring programme and use AI as a safe practice partner for hard conversations.",
      13 => "Measure training with Kirkpatrick's four levels, read results fairly with a comparison group and never claim more than the data shows.",
      14 => "Check training content for accuracy, use sources fairly, make content accessible to every learner and translate it safely.",
      15 => "Build a full training programme pack for Sahyadri Foods supervisors: gap analysis, objectives, outline, one module, quiz and evaluation plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A Sahyadri Foods line worker is promoted to shift supervisor and learns to lead a team. What is this?", opts: ["A) Reskilling, because the person has a new job title", "B) Upskilling, because the person adds higher skills on the same career path", "C) Training, because every course is training"], ans: "B" },
      2 => { type: "true_false", q: "If you tell AI to mark every safety fact with [CHECK], you can skip the expert review of the draft.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Five supervisors have manager ratings of 2, 3, 2, 3 and 2 for a skill. The required level is 4. What is the gap?", opts: ["A) 1.0", "B) 2.4", "C) 1.6"], ans: "C" },
      4 => { type: "multiple_choice", q: "Supervisors miss readings because they have only 5 minutes to hand over between shifts. What is the best fix?", opts: ["A) Change the rota to give more handover time", "B) Run a refresher course on record keeping", "C) Ask AI to write a longer handover checklist"], ans: "A" },
      5 => { type: "multiple_choice", q: "Which learning objective is the strongest?", opts: ["A) Supervisors will understand allergen control.", "B) Supervisors will learn about the allergen checklist.", "C) During a line changeover, the supervisor will complete the allergen checklist and decide to release or hold the line, matching the QA check."], ans: "C" },
      6 => { type: "multiple_choice", q: "In backward design, what do you plan right after the learning objectives?", opts: ["A) How you will check each objective", "B) The slides and handouts", "C) The certificate for people who finish"], ans: "A" },
      7 => { type: "true_false", q: "If you paste your approved procedure into the AI tool and tell it to use only that text, the job aid it makes can be used without an expert review.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "In a pre-test, 22 of 40 supervisors chose the same wrong option on one question. What does this most likely tell Mohan?", opts: ["A) The question must be deleted", "B) The supervisors did not try", "C) Many supervisors share the same mistake, so the course must teach this point"], ans: "C" },
      9 => { type: "multiple_choice", q: "A workshop is on day 1. Which review plan uses spaced practice?", opts: ["A) Read the workshop slides again on day 2", "B) Answer 3 short questions on days 2, 5, 12 and 26", "C) Take one long test on day 30"], ans: "B" },
      10 => { type: "multiple_choice", q: "An AI-drafted workshop agenda says it lasts 180 minutes. What should you do?", opts: ["A) Add up the times yourself, for example with =SUM in a sheet", "B) Trust it, because AI is good at simple sums", "C) Ask the AI to confirm the total"], ans: "A" },
      11 => { type: "multiple_choice", q: "The required level for CCP records is 4. S02 has a manager rating of 3. Using the rule \"gap 2 or more = Extra support, gap 1 = Standard, gap 0 = Helper\", which route does S02 get?", opts: ["A) Extra support", "B) Standard", "C) Helper"], ans: "B" },
      12 => { type: "multiple_choice", q: "In a GROW coaching talk, what happens in the Options step?", opts: ["A) The supervisor lists possible actions, and the coach adds ideas only if needed", "B) The coach tells the supervisor the right answer", "C) The coach and supervisor agree a date to review progress"], ans: "A" },
      13 => { type: "multiple_choice", q: "After the programme, missing corrective actions fell from 30 to 6 per 600 sheets. Errors from other causes, which the rota, probe and form fixes aimed at, fell from 42 to 18. Which statement is fair?", opts: ["A) Training cut errors from 12% to 4%.", "B) Training made no difference, because the other errors fell too.", "C) The errors training aimed at fell the most, which fits the training, but other changes happened too, so we cannot say training alone caused it."], ans: "C" },
      14 => { type: "true_false", q: "If AI translates a job aid into Marathi, you can publish it without a Marathi speaker checking it.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "72 of 600 sheets had errors. Training can fix 30 of them. If training fixed all 30 and nothing else changed, what share of sheets would still have errors?", opts: ["A) 7%", "B) 3%", "C) 0%"], ans: "A" }
    }

    AiLearningDevelopmentContent::LESSONS.each do |position, data|
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

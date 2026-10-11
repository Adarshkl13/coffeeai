require_relative "../ai_for_recruitment_content"

namespace :content do
  desc "Create AI for Recruitment course and populate all 15 lessons"
  task ai_for_recruitment: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-recruitment") do |c|
      c.title       = "AI for Recruitment"
      c.description = "Use AI to hire better and faster. Write clear job descriptions, source candidates, screen CVs fairly, match skills, plan structured interviews, write candidate messages and make offers, with people making every hiring decision."
      c.color       = "#8b5cf6"
      c.icon        = "🧑‍💼"
      c.position    = 51
      c.published   = true
    end
    course.update!(description: "Use AI to hire better and faster. Write clear job descriptions, source candidates, screen CVs fairly, match skills, plan structured interviews, write candidate messages and make offers, with people making every hiring decision.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Recruitment Works",
      2 => "Where AI Helps in Hiring",
      3 => "Planning a Hire",
      4 => "Writing Job Descriptions with AI",
      5 => "Sourcing Candidates",
      6 => "Screening CVs Fairly",
      7 => "Skills Matching",
      8 => "Candidate Messages and Experience",
      9 => "Assessments and Work Samples",
      10 => "Structured Interviews",
      11 => "Interview Notes and Panel Feedback",
      12 => "Reference Checks and Background Checks",
      13 => "Offers and Negotiation",
      14 => "Recruitment Metrics",
      15 => "Capstone: Run a Complete Hire"
    }

    descriptions = {
      1 => "Follow one made-up hire from job request to joining, learn who does what, and calculate the key funnel numbers.",
      2 => "See where AI helps in hiring, the risks of bias, privacy and made-up facts, and why people must make every decision.",
      3 => "Plan a hire with AI: write the role purpose, split must-have and nice-to-have skills, set 90-day goals and build a hiring plan.",
      4 => "Write clear, inclusive job descriptions with AI, with a real title, realistic requirements and a salary range.",
      5 => "Compare sourcing channels, write and test Boolean search strings with AI, and follow each platform's rules.",
      6 => "Build a screening sheet with clear criteria, hide details that cause bias, and use AI only to find evidence that a person checks.",
      7 => "Compare job skills with real evidence in a CV, spot transferable skills, and build a weighted match table with AI.",
      8 => "Set response times, write outreach messages people answer, and send respectful rejections using AI-drafted templates.",
      9 => "Design a short, job-related work sample with a fair rubric, and use AI to make practice material without asking for free work.",
      10 => "Run structured interviews with the same questions for everyone, behavioural and situational questions, and clear scoring rubrics.",
      11 => "Write evidence-based interview notes, score on your own first, use AI to summarise panel feedback and run a fair debrief.",
      12 => "Run reference and background checks with clear consent, job-related questions and care for privacy under India's DPDP rules.",
      13 => "Make offers inside the salary band, write clear offer letters and answer counter-offers without promising too much.",
      14 => "Calculate time to hire, cost per hire, source of hire, offer acceptance and quality of hire with a worked example.",
      15 => "Build a complete hiring pack for a real-style role: plan, job description, sourcing strings, screening sheet, interview kit and offer."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "LedgerLite made 2 offers for the Customer Success Associate role, and 1 candidate accepted. What is the offer acceptance rate?", opts: ["A) 25%", "B) 0.42%", "C) 50%"], ans: "C" },
      2 => { type: "true_false", q: "It is fine to use a tool that scores a candidate's honesty from their facial expressions on video, as long as a person reads the score.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which item belongs in the must-have list for LedgerLite's Customer Success Associate?", opts: ["A) Clear spoken and written English", "B) Age between 22 and 28", "C) A degree from a top-10 college"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which job description line is the most inclusive?", opts: ["A) \"We want a young, energetic rockstar.\"", "B) \"You will explain our software to customers on video calls.\"", "C) \"Native English speakers only.\""], ans: "B" },
      5 => { type: "multiple_choice", q: "Which Boolean string finds people with either of these job titles?", opts: ["A) \"customer success\" AND \"customer support\"", "B) \"customer success\" NOT \"customer support\"", "C) (\"customer success\" OR \"customer support\")"], ans: "C" },
      6 => { type: "multiple_choice", q: "Before screening CVs, which details should you hide from the screeners?", opts: ["A) Years of customer-facing work", "B) Name, photo and date of birth", "C) The answer to the screening question"], ans: "B" },
      7 => { type: "multiple_choice", q: "A CV lists \"Excel\" under Skills but gives no task or example. What score should it get in a 0 to 2 match table?", opts: ["A) 2, because Excel is listed", "B) 0, because there is no proof at all", "C) 1, because it is mentioned but not shown"], ans: "C" },
      8 => { type: "multiple_choice", q: "In LedgerLite's hire, 240 people apply and 2 get offers. How many people hear \"no\" during the process?", opts: ["A) 238", "B) 180", "C) 234"], ans: "A" },
      9 => { type: "true_false", q: "A 3-day unpaid take-home project on real clients is a fair way to test candidates.", opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "What is a situational interview question?", opts: ["A) A question about what you did in a past job", "B) A question about how you would handle a made-up work problem", "C) A question about your hobbies and family"], ans: "B" },
      11 => { type: "multiple_choice", q: "Why should each interviewer submit scores before the panel debrief?", opts: ["A) So the AI tool can pick the best candidate", "B) So people are not swayed by the first or loudest opinion", "C) So the hiring manager can skip the debrief"], ans: "B" },
      12 => { type: "true_false", q: "If a background check shows a mismatch in job dates, you should reject the candidate at once without asking them.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "An AI-drafted offer email says: \"You will be promoted to Team Lead within a year.\" No such plan is approved. What should you do?", opts: ["A) Remove it and write only what the approved offer and policy say", "B) Keep it, because it makes the offer more attractive", "C) Keep it, but move it to the end of the email"], ans: "A" },
      14 => { type: "multiple_choice", q: "LedgerLite made 2 offers and 1 was accepted. What is the offer acceptance rate?", opts: ["A) 1%", "B) 200%", "C) 50%"], ans: "C" },
      15 => { type: "multiple_choice", q: "In the capstone, why do you paste the same context block at the top of every prompt?", opts: ["A) To make the AI answer faster", "B) So every part, such as the JD and the offer, uses the same salary band and skills", "C) So you do not need to check the AI's drafts"], ans: "B" }
    }

    AiForRecruitmentContent::LESSONS.each do |position, data|
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

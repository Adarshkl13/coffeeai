require_relative "../ai_compensation_payroll_content"

namespace :content do
  desc "Create AI for Compensation and Payroll course and populate all 15 lessons"
  task ai_compensation_payroll: :environment do
    course = Course.find_or_create_by!(slug: "ai-compensation-payroll") do |c|
      c.title       = "AI for Compensation and Payroll"
      c.description = "Use AI to manage pay fairly and clearly. Build salary bands, run pay equity and gender pay gap checks, explain pay and benefits in plain words, answer payroll questions and catch payroll errors, with people and specialists making the decisions."
      c.color       = "#5b21b6"
      c.icon        = "\u{1F4B7}"
      c.position    = 92
      c.published   = true
    end
    course.update!(title: "AI for Compensation and Payroll", description: "Use AI to manage pay fairly and clearly. Build salary bands, run pay equity and gender pay gap checks, explain pay and benefits in plain words, answer payroll questions and catch payroll errors, with people and specialists making the decisions.", color: "#5b21b6", icon: "\u{1F4B7}", position: 92)
    puts "Course: #{course.title}"

    titles = {
      1 => "How Pay Works",
      2 => "Where AI Helps and Its Limits",
      3 => "Pay Laws in General Words",
      4 => "Working with Pay Data Safely",
      5 => "Job Levels and Salary Bands",
      6 => "Compa-Ratio and Pay Positioning",
      7 => "Pay Equity Checks",
      8 => "Gender Pay Gap Reporting",
      9 => "Pay Reviews and Raise Budgets",
      10 => "Bonuses and Incentives",
      11 => "Explaining Pay and Benefits",
      12 => "Payroll Basics",
      13 => "Answering Payroll Questions",
      14 => "Checking Payroll for Errors",
      15 => "Capstone: A Pay Review for Northbridge Logistics"
    }

    descriptions = {
      1 => "Learn the parts of pay: base pay, variable pay, benefits and total reward, plus weekly, biweekly and monthly pay cycles.",
      2 => "See where AI helps with pay work and its limits: wrong maths, private data, old rules and bias.",
      3 => "Learn UK and US pay rules in general words: minimum wage, equal pay, pay transparency and record keeping.",
      4 => "Prepare pay data safely: remove what you do not need, replace names with IDs, watch small groups and control access.",
      5 => "Group jobs into levels and build salary bands with simple spreadsheet formulas, using real market data.",
      6 => "Calculate compa-ratio and range position with spreadsheet formulas, and read the results as questions for people to answer.",
      7 => "Compare pay in like roles, test gaps against fair reasons, and plan what to do about a gap that is not explained.",
      8 => "Learn the UK gender pay gap rules in general words and calculate mean and median gaps and pay quarters correctly.",
      9 => "Use a merit matrix and budget maths to share a raise budget fairly, then check the results before anyone decides.",
      10 => "Design clear bonus rules, work out payouts with a payout curve, and use AI to find gaps in the rules.",
      11 => "Explain pay and benefits in plain words with total reward statements and clear pay rise letters, drafted with AI and checked by people.",
      12 => "Learn how gross pay becomes net pay in general words, how a payroll calendar works around bank holidays, and the most common payroll errors.",
      13 => "Answer payroll questions with an approved answer library, let AI draft replies only from it, and escalate to payroll or HR when needed.",
      14 => "Catch payroll errors before pay day with variance checks and an exception report built from simple spreadsheet formulas.",
      15 => "Run a full made-up pay review for Northbridge Logistics: bands, compa-ratios, an equity check, a raise budget, fairness checks and employee letters."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which item is part of total reward but is not cash in the payslip?", opts: ["A) Overtime pay", "B) An employer pension contribution", "C) Base salary"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool shows its working, you do not need to check its pay calculations.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "In the UK, which employers must publish their gender pay gap each year?", opts: ["A) All employers", "B) Only public sector employers", "C) Employers with 250 or more employees"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which data is safest to use when you try out a pay analysis prompt?", opts: ["A) Made-up data", "B) Real data with only the names removed", "C) The full HRIS export"], ans: "A" },
      5 => { type: "multiple_choice", q: "A salary band has a midpoint of £42,000 and a width of 15% above and below. What is the band minimum?", opts: ["A) £36,500", "B) £35,700", "C) £48,300"], ans: "B" },
      6 => { type: "multiple_choice", q: "An employee earns £38,500. The band midpoint is £42,000. What is the compa-ratio?", opts: ["A) 1.091", "B) 0.917", "C) 0.222"], ans: "B" },
      7 => { type: "true_false", q: "If an AI tool gives a likely reason for a pay gap, you can record the gap as explained without checking the data.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "In a UK gender pay gap report, how is the mean pay gap calculated?", opts: ["A) Men's mean hourly pay minus women's, divided by women's mean", "B) Men's mean yearly salary minus women's, divided by the company's total pay", "C) Men's mean hourly pay minus women's, divided by men's mean"], ans: "C" },
      9 => { type: "multiple_choice", q: "In a merit matrix, why do people with a lower compa-ratio often get a higher raise %?", opts: ["A) So good performers who are low in their band catch up", "B) Because they always have higher ratings", "C) So the company spends less of the budget"], ans: "A" },
      10 => { type: "multiple_choice", q: "Profit is 97% of target. The payout is 50% at 90% of target and 100% at 100%, in a straight line. What is the payout factor?", opts: ["A) 97%", "B) 70%", "C) 85%"], ans: "C" },
      11 => { type: "multiple_choice", q: "Which sentence is best for a pay rise letter?", opts: ["A) Your remuneration has been uplifted per the merit matrix.", "B) Your bonus of £1,050 next year is guaranteed.", "C) Your new salary is £36,225 a year from 1 January 2027."], ans: "C" },
      12 => { type: "multiple_choice", q: "In UK payroll, which of these is a deduction from gross pay?", opts: ["A) National Insurance", "B) The employer's pension contribution", "C) A night shift allowance"], ans: "A" },
      13 => { type: "true_false", q: "If no approved answer fits a payroll question, the AI should give its best guess.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "NB07 appears twice in the payroll, and both rows show 0% change from last week. Which check catches this?", opts: ["A) The 10% change check", "B) A COUNTIF check for repeated IDs", "C) The change in £ column"], ans: "B" },
      15 => { type: "multiple_choice", q: "In the Northbridge pay review, why is the £11,500 to fix the Shift Supervisor gap paid from a separate equity fund?", opts: ["A) So other staff do not get smaller merit raises for a problem they did not cause", "B) Because equity fixes are always paid as lump sums", "C) Because the merit budget can only be used for managers"], ans: "A" }
    }

    AiCompensationPayrollContent::LESSONS.each do |position, data|
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

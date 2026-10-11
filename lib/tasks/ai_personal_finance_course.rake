require_relative "../ai_personal_finance_content"

namespace :content do
  desc "Create AI for Personal Finance course and populate all 15 lessons"
  task ai_personal_finance: :environment do
    course = Course.find_or_create_by!(slug: "ai-personal-finance") do |c|
      c.title       = "AI for Personal Finance"
      c.description = "Use AI to manage your own money better. Make a budget, sort and understand your spending, plan savings goals, understand loans and credit, learn about tax and investing basics, and avoid money scams. Education only, not financial advice."
      c.color       = "#22c55e"
      c.icon        = "💰"
      c.position    = 40
      c.published   = true
    end
    course.update!(description: "Use AI to manage your own money better. Make a budget, sort and understand your spending, plan savings goals, understand loans and credit, learn about tax and investing basics, and avoid money scams. Education only, not financial advice.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Money Basics and Where AI Helps",
      2 => "Using AI Safely with Your Money",
      3 => "Your Money Snapshot",
      4 => "Prompts for Money Questions",
      5 => "Making a Budget with AI",
      6 => "Sorting Your Spending",
      7 => "Cutting Costs Without Pain",
      8 => "Saving Goals",
      9 => "Understanding Compounding and Inflation",
      10 => "Loans, EMIs and Credit Cards",
      11 => "Credit Scores",
      12 => "Investing Basics",
      13 => "Tax Basics for Individuals",
      14 => "Avoiding Money Scams",
      15 => "Capstone: Your Personal Money Plan"
    }

    descriptions = {
      1 => "Learn income, expenses, savings and net worth with a worked example, and see where AI helps and where you must decide.",
      2 => "Learn what money details never to share with AI, how to use sample or masked data, and how to check the AI's maths.",
      3 => "Build a one-page money snapshot of income, fixed and variable costs, assets and debts, with spreadsheet formulas.",
      4 => "Write better money prompts that explain terms, compare options, list pros and cons and ask what to check.",
      5 => "Make a budget with the 50/30/20 idea and zero-based budgeting, adapted to Indian household costs, and check it in a sheet.",
      6 => "Sort a sample bank or UPI statement into categories with AI, total them in a spreadsheet, and find spending patterns and leaks.",
      7 => "Use AI to find easy savings in subscriptions, bills, bulk buying and daily habits, and check every suggestion yourself.",
      8 => "Turn wishes into clear saving goals, build an emergency fund first, and make a goals table that fits your budget.",
      9 => "Learn simple and compound interest, inflation and real returns with worked examples, and check AI's maths in a spreadsheet.",
      10 => "Understand EMIs and the real cost of a loan, compare two loan offers, and avoid common credit card traps.",
      11 => "Learn what affects your credit score, how to get your free credit report and how to fix errors in it.",
      12 => "Understand risk and return, fixed deposits, mutual funds, SIPs, shares and diversification. Education only, not advice.",
      13 => "Learn the main income tax words, which documents to keep and when to ask a chartered accountant.",
      14 => "Spot common money scams in India, check messages safely and know where to report fraud.",
      15 => "Build your own money plan: snapshot, budget, spending review, goals and a monthly check-in."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What is net worth?", opts: ["A) Your income minus your expenses for one month", "B) What you own minus what you owe", "C) Your take-home salary"], ans: "B" },
      2 => { type: "true_false", q: "It is safe to share your OTP with an AI assistant if you delete the chat afterwards.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which of these is a variable expense?", opts: ["A) Monthly rent", "B) A car loan EMI", "C) Groceries"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which money prompt is the strongest?", opts: ["A) \"Made-up case: ₹30,000 now or 6 EMIs of ₹5,300. Compare total cost, list pros and cons, and list what to check. Show your maths.\"", "B) \"Is EMI good?\"", "C) \"Tell me the best way to buy a phone.\""], ans: "A" },
      5 => { type: "multiple_choice", q: "Using the 50/30/20 idea, how much of a ₹65,000 take-home pay goes to saving?", opts: ["A) ₹19,500", "B) ₹13,000", "C) ₹32,500"], ans: "B" },
      6 => { type: "multiple_choice", q: "An AI puts a ₹2,000 UPI transfer to a friend in the \"Groceries\" category. What should you do?", opts: ["A) Accept it, because AI is usually right", "B) Check it yourself and give it the right category", "C) Delete the row so the totals look cleaner"], ans: "B" },
      7 => { type: "multiple_choice", q: "An AI says cancelling your gym saves ₹2,000 a month, but your statement shows ₹1,500. Which number should you use?", opts: ["A) ₹1,500 from your own statement", "B) ₹2,000 from the AI", "C) The average of the two"], ans: "A" },
      8 => { type: "multiple_choice", q: "Your goal needs ₹90,000 more and you have 12 months. With no investment return, how much must you save each month?", opts: ["A) ₹9,000", "B) ₹6,000", "C) ₹7,500"], ans: "C" },
      9 => { type: "true_false", q: "With compound interest, you also earn interest on the interest you earned before.", opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "Offer B has a lower EMI than Offer A, but it runs for more months. What is true?", opts: ["A) Offer B is always cheaper", "B) Offer B may cost more in total", "C) The EMI shows the total cost of a loan"], ans: "B" },
      11 => { type: "multiple_choice", q: "Ananya's credit report shows a loan she closed as \"Active\". What should she do first?", opts: ["A) Pay a credit repair agent to delete it", "B) Raise a dispute with the bureau and attach her closure letter", "C) Ask an AI tool to change the report"], ans: "B" },
      12 => { type: "multiple_choice", q: "What does diversification mean?", opts: ["A) Spreading money across many investments so one bad result does less damage", "B) Putting all your money in the share that rose most last year", "C) Investing only through a SIP"], ans: "A" },
      13 => { type: "true_false", q: "You can safely use the tax slab an AI tool gives you, because tax rates never change.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A UPI request asks you to enter your PIN to \"receive\" a refund. What is true?", opts: ["A) You must enter the PIN to get the money", "B) It is safe if the amount is small", "C) You never need your UPI PIN to receive money, so this is a scam"], ans: "C" },
      15 => { type: "multiple_choice", q: "In the monthly check-in, what should you do if you see a payment you do not recognise?", opts: ["A) Ignore it until next month", "B) Report it to your bank and the 1930 helpline at once", "C) Ask the AI to guess what it was"], ans: "B" }
    }

    AiPersonalFinanceContent::LESSONS.each do |position, data|
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

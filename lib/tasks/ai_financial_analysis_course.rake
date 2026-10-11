require_relative "../ai_financial_analysis_content"

namespace :content do
  desc "Create AI for Financial Analysis course and populate all 15 lessons"
  task ai_financial_analysis: :environment do
    course = Course.find_or_create_by!(slug: "ai-financial-analysis") do |c|
      c.title       = "AI for Financial Analysis"
      c.description = "Use AI to understand business numbers and make better decisions. Read financial statements and annual reports, calculate ratios, analyse costs and margins, build budgets and forecasts, plan cash flow and present findings clearly."
      c.color       = "#0ea5e9"
      c.icon        = "📈"
      c.position    = 42
      c.published   = true
    end
    course.update!(description: "Use AI to understand business numbers and make better decisions. Read financial statements and annual reports, calculate ratios, analyse costs and margins, build budgets and forecasts, plan cash flow and present findings clearly.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Financial Analysis Is",
      2 => "Where AI Helps in Analysis",
      3 => "Reading a Profit and Loss Statement",
      4 => "Reading a Balance Sheet and Cash Flow Statement",
      5 => "Summarising an Annual Report with AI",
      6 => "Profitability Ratios",
      7 => "Liquidity and Debt Ratios",
      8 => "Efficiency Ratios and Working Capital",
      9 => "Comparing Companies and Years",
      10 => "Costs, Margins and Break-Even",
      11 => "Budgets and Variance Analysis",
      12 => "Forecasting Sales and Costs",
      13 => "Cash Flow Planning",
      14 => "Presenting Findings",
      15 => "Capstone: Analyse a Small Company"
    }

    descriptions = {
      1 => "Learn what financial analysis is, who uses it, and how the P&L, balance sheet and cash flow statement link together.",
      2 => "See where AI helps in finance work (summarising, calculating, explaining, drafting) and how to catch wrong or invented numbers.",
      3 => "Read a Profit and Loss statement from revenue down to net profit, and turn each profit line into a margin.",
      4 => "Read a balance sheet and a cash flow statement, and learn why a profitable company can still run short of cash.",
      5 => "Use AI to summarise an annual report with page numbers, separate facts from opinions, and check every figure.",
      6 => "Calculate gross, operating and net margins, ROE and ROCE, and check the ratios an AI gives you.",
      7 => "Measure if a company can pay its bills and loans with the current ratio, quick ratio, debt-to-equity and interest cover.",
      8 => "Work out inventory, receivable and payable days and the cash conversion cycle, and see why profit is not cash.",
      9 => "Compare a company with its past and with peers using trend and common-size tables, and make sure you compare like with like.",
      10 => "Split costs into fixed and variable, find the contribution and break-even point, and test what-if cases with AI.",
      11 => "Build a simple budget, compare it with actual results, and explain favourable and adverse variances with help from AI.",
      12 => "Forecast sales and costs with growth rates, moving averages and seasonality, and build worst, base and best scenarios.",
      13 => "Plan cash week by week with a 13-week cash forecast, spot shortfalls early and plan fixes before they happen.",
      14 => "Present your analysis on one page with a clear headline, key numbers, the right chart, recommendations and assumptions.",
      15 => "Analyse a made-up company from start to finish: statements, ratios, trends, a forecast, a cash plan and a written summary."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which statement shows what a company owns and owes on one date?", opts: ["A) Profit and Loss statement", "B) Balance sheet", "C) Cash flow statement"], ans: "B" },
      2 => { type: "true_false", q: "If an AI assistant shows neat working for a calculation, you do not need to check the numbers yourself.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Sahyadri Foods Ltd (made-up) has revenue of ₹920 crore and cost of materials of ₹607 crore. What is its gross profit?", opts: ["A) ₹313 crore", "B) ₹101 crore", "C) ₹1,527 crore"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which cash movement belongs under investing activities in the cash flow statement?", opts: ["A) Paying dividends to shareholders", "B) Paying suppliers for raw materials", "C) Buying a new machine for the factory"], ans: "C" },
      5 => { type: "multiple_choice", q: "An AI summary of an annual report gives a figure that you cannot find on the page it names. What should you do?", opts: ["A) Keep it, because the AI read the whole report", "B) Ask the AI again and use its new answer without checking", "C) Look for the figure in the report yourself, and remove or correct it if it is not there"], ans: "C" },
      6 => { type: "multiple_choice", q: "Sahyadri Foods Ltd (made-up) has net profit of ₹66 crore, equity of ₹303 crore and total assets of ₹526 crore. What is its ROE on closing equity?", opts: ["A) 7.2%", "B) 12.5%", "C) 21.8%"], ans: "C" },
      7 => { type: "multiple_choice", q: "A company has current assets of ₹220 crore, inventory of ₹100 crore and current liabilities of ₹113 crore. What is its quick ratio?", opts: ["A) 1.06", "B) 1.95", "C) 0.88"], ans: "A" },
      8 => { type: "true_false", q: "Inventory days should be calculated with revenue, not cost of goods sold, because stock is sold at the selling price.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Which of these is a fair, like-with-like comparison?", opts: ["A) Sahyadri's inventory days against Coastal Cement Ltd's inventory days", "B) Sahyadri and Food Peer A net margins for the same year, both from consolidated accounts", "C) Sahyadri's full-year profit against its half-year profit from last year"], ans: "B" },
      10 => { type: "multiple_choice", q: "Sweet Crumbs sells a cake for ₹600. Its variable cost is ₹360 per cake and its fixed costs are ₹1,50,000 a month. What is the break-even point?", opts: ["A) 625 cakes", "B) 417 cakes", "C) 250 cakes"], ans: "A" },
      11 => { type: "multiple_choice", q: "Sweet Crumbs budgeted sales of ₹4,00,000 but actual sales were ₹3,60,000. What is the sales variance?", opts: ["A) ₹40,000 adverse", "B) ₹40,000 favourable", "C) ₹3,60,000 adverse"], ans: "A" },
      12 => { type: "true_false", q: "The 3-month moving average of sales of 370, 360 and 390 (₹ thousand) is 380.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "In a 13-week cash forecast, how do you work out a week's closing cash?", opts: ["A) Cash in minus cash out", "B) Profit for the week plus depreciation", "C) Opening cash plus cash in minus cash out"], ans: "C" },
      14 => { type: "multiple_choice", q: "Which chart is best for showing a company's revenue over five years?", opts: ["A) A pie chart", "B) A line chart", "C) A table of 40 numbers"], ans: "B" },
      15 => { type: "multiple_choice", q: "Sahyadri Foods Ltd (made-up) has FY26 revenue of ₹920 crore and net profit of ₹66 crore. What is its net margin?", opts: ["A) 13.9%", "B) 72%", "C) 7.2%"], ans: "C" }
    }

    AiFinancialAnalysisContent::LESSONS.each do |position, data|
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

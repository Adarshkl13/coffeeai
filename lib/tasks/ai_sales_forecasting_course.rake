require_relative "../ai_sales_forecasting_content"

namespace :content do
  desc "Create Sales Forecasting with AI course and populate all 15 lessons"
  task ai_sales_forecasting: :environment do
    course = Course.find_or_create_by!(slug: "ai-sales-forecasting") do |c|
      c.title       = "Sales Forecasting with AI"
      c.description = "Use AI and spreadsheets to forecast sales you can trust. Learn weighted and stage-based pipeline forecasts, track sales metrics, run win/loss analysis, plan targets and quotas, and explain your forecast clearly to leaders."
      c.color       = "#d97706"
      c.icon        = "📈"
      c.position    = 50
      c.published   = true
    end
    course.update!(description: "Use AI and spreadsheets to forecast sales you can trust. Learn weighted and stage-based pipeline forecasts, track sales metrics, run win/loss analysis, plan targets and quotas, and explain your forecast clearly to leaders.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Sales Forecasting Matters",
      2 => "Where AI Helps in Forecasting",
      3 => "Key Sales Metrics",
      4 => "Getting Your Data Ready",
      5 => "Weighted Pipeline Forecasts",
      6 => "Commit, Best Case and Pipeline Categories",
      7 => "Historical and Trend Forecasts",
      8 => "Pipeline Coverage and Gap Analysis",
      9 => "Deal Risk Review",
      10 => "Win/Loss Analysis",
      11 => "Sales Cycle and Velocity",
      12 => "Targets, Quotas and Territories",
      13 => "Scenarios and What-If Planning",
      14 => "Presenting Your Forecast",
      15 => "Capstone: Build a Quarterly Forecast"
    }

    descriptions = {
      1 => "Learn why a sales forecast guides hiring, cash and stock decisions, how it differs from a target and a quota, and how to measure its accuracy.",
      2 => "See which forecasting jobs to give AI, which to give your spreadsheet, and why AI must never invent your numbers.",
      3 => "Define and calculate pipeline value, win rate, average deal size, sales cycle length and pipeline coverage with LedgerLite's data.",
      4 => "Export the right CRM fields and clean spaces, stage names, text amounts, duplicates and missing dates with simple formulas.",
      5 => "Build a weighted pipeline forecast with stage probabilities and SUMPRODUCT, and learn what the result can and cannot tell you.",
      6 => "Sort deals into Commit, Best case and Pipeline with written rules, and roll up each rep's call into one team forecast.",
      7 => "Forecast from past sales with run rate, moving averages, seasonal growth and a trend line, and compare the results with your pipeline.",
      8 => "Calculate pipeline coverage and the gap to target, and turn the gap into a clear goal for new pipeline with a deadline.",
      9 => "Spot stale, slipping and single-threaded deals with a simple risk checklist, and show the forecast with and without risky deals.",
      10 => "Calculate win rate by lead source and segment, count loss reasons, and use buyer interviews and AI to find patterns.",
      11 => "Calculate sales velocity and stage conversion, and find the stage where deals drop out or get stuck.",
      12 => "Compare top-down and bottom-up targets, plan sales capacity, and check that quotas and territories are fair.",
      13 => "Build best, base and worst case forecasts and change one lever at a time to see what matters most.",
      14 => "Write a one-page forecast summary with the gap, range, assumptions, risks and asks, and communicate it honestly.",
      15 => "Build a full quarterly forecast for Nimbus Logistics, from a messy CRM export to a leader summary."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Arjun says LedgerLite aims to win ₹9,00,000 of new sales this quarter. What is this number?", opts: ["A) The forecast", "B) The target", "C) Kavya's quota"], ans: "B" },
      2 => { type: "true_false", q: "You can copy the forecast total that an AI chat assistant gives you straight into your report, because AI never makes maths mistakes.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "LedgerLite won 28 deals and lost 84 deals last year. 12 more deals are still open. What is the win rate?", opts: ["A) 25%", "B) 22.6%", "C) 33.3%"], ans: "A" },
      4 => { type: "multiple_choice", q: "A CRM export shows the amount \"Rs 1,20,000\" as text. Which formula turns it into the number 120000?", opts: ["A) =TRIM(E2)", "B) =COUNTIF($A$2:$A$14,A2)>1", "C) =VALUE(TRIM(SUBSTITUTE(SUBSTITUTE(E2,\"Rs\",\"\"),\",\",\"\")))"], ans: "C" },
      5 => { type: "multiple_choice", q: "Maple Interiors is a ₹2,00,000 deal in the Negotiation stage, which has a 70% probability. What is its weighted value?", opts: ["A) ₹2,00,000", "B) ₹1,40,000", "C) ₹60,000"], ans: "B" },
      6 => { type: "multiple_choice", q: "Tulsi Textiles and Maple Interiors are both in Negotiation. Tulsi has a signing meeting booked. Maple has not replied for 60 days. Which categories fit best?", opts: ["A) Both are Commit", "B) Both are Pipeline", "C) Tulsi is Commit and Maple is Best case"], ans: "C" },
      7 => { type: "multiple_choice", q: "LedgerLite won ₹5,40,000 from October to December 2025. Its year-on-year growth is 25%. What is the \"same quarter last year × growth\" estimate for October to December 2026?", opts: ["A) ₹6,75,000", "B) ₹7,10,000", "C) ₹5,40,000"], ans: "A" },
      8 => { type: "multiple_choice", q: "The weighted forecast is ₹7,73,000 and the target is ₹9,00,000. New deals are won 25% of the time. How much new pipeline is needed to close the gap?", opts: ["A) ₹1,27,000", "B) ₹5,08,000", "C) ₹36,00,000"], ans: "B" },
      9 => { type: "true_false", q: "A single-threaded deal, where only one person at the buyer knows about it, is less risky because there is only one person to convince.", opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "LedgerLite won 9 and lost 11 deals that came from customer referrals. What is the referral win rate?", opts: ["A) 81.8%", "B) 9%", "C) 45%"], ans: "C" },
      11 => { type: "multiple_choice", q: "LedgerLite has 12 open deals, a 25% win rate, an average deal of ₹95,000 and a 52-day sales cycle. What is its sales velocity?", opts: ["A) About ₹5,481 per day", "B) About ₹21,923 per day", "C) ₹2,85,000 per day"], ans: "A" },
      12 => { type: "multiple_choice", q: "The target is ₹9,00,000, the average deal is ₹95,000 and the win rate is 25%. About how many decided deals (won or lost) does the target need?", opts: ["A) 10", "B) 24", "C) 38"], ans: "C" },
      13 => { type: "multiple_choice", q: "LedgerLite's weighted forecast is ₹7,73,000. In the best case, all Negotiation deals (₹3,20,000 at 70%) and Verbal yes deals (₹1,45,000 at 90%) close. What is the best case?", opts: ["A) ₹10,41,000", "B) ₹8,83,500", "C) ₹16,80,000"], ans: "B" },
      14 => { type: "true_false", q: "If your forecast is below target, you should raise it in your summary so that leaders do not worry.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "Nimbus Logistics has ₹40,00,000 of open pipeline for the quarter and a ₹25,00,000 target. What is its pipeline coverage?", opts: ["A) 1.6x", "B) 0.63x", "C) 2.5x"], ans: "A" }
    }

    AiSalesForecastingContent::LESSONS.each do |position, data|
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

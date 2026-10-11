require_relative "../ai_hospital_operations_content"

namespace :content do
  desc "Create AI for Hospital Operations course and populate all 15 lessons"
  task ai_hospital_operations: :environment do
    course = Course.find_or_create_by!(slug: "ai-hospital-operations") do |c|
      c.title       = "AI for Hospital Operations"
      c.description = "Use AI and spreadsheets to run a hospital more smoothly. Measure the key numbers, cut OPD waiting times, plan beds, staff rosters and operation theatres, forecast demand, manage pharmacy stock and equipment, speed up claims and build clear dashboards."
      c.color       = "#b91c1c"
      c.icon        = "🏥"
      c.position    = 73
      c.published   = true
    end
    course.update!(description: "Use AI and spreadsheets to run a hospital more smoothly. Measure the key numbers, cut OPD waiting times, plan beds, staff rosters and operation theatres, forecast demand, manage pharmacy stock and equipment, speed up claims and build clear dashboards.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How a Hospital Runs",
      2 => "Where AI Helps in Operations",
      3 => "Hospital Operations Metrics",
      4 => "Working with Hospital Data",
      5 => "OPD Scheduling and Waiting Times",
      6 => "Bed Management and Discharge Planning",
      7 => "Forecasting Patient Demand",
      8 => "Staff Rostering",
      9 => "Operation Theatre Scheduling",
      10 => "Pharmacy and Stock Management",
      11 => "Biomedical Equipment and Maintenance",
      12 => "Billing, Claims and Revenue Cycle",
      13 => "Quality, Safety and Accreditation",
      14 => "Dashboards and Reports for Leaders",
      15 => "Capstone: An Operations Improvement Plan for Tarang Hospital"
    }

    descriptions = {
      1 => "Learn the main departments of a hospital, follow one patient from OPD to discharge, and meet the people who run operations.",
      2 => "See where AI helps in hospital operations, such as forecasts, rosters, reports and drafts, and the risks that people must check.",
      3 => "Calculate bed occupancy, ALOS, bed turnover, OPD waiting time, no-show rate and OT utilisation with exact formulas and real spreadsheet steps.",
      4 => "Export data from the HIS, clean it in a spreadsheet, remove patient identifiers and use AI safely with hospital data.",
      5 => "Build an hour-by-hour OPD queue table, plan better appointment slots, and cut no-shows with reminders and a careful pilot.",
      6 => "Forecast tomorrow's beds, build an hour-by-hour bed table, find discharge bottlenecks and plan more discharges before noon.",
      7 => "Forecast monsoon fever and dengue demand with a seasonal average and an uplift in a spreadsheet, then use AI to question the assumptions.",
      8 => "Work out how many nurses a ward needs, write clear roster rules, and check AI roster drafts for safety and fairness.",
      9 => "Plan OT lists from real case times and turnovers, measure utilisation, and sort cancellation reasons to find what to fix.",
      10 => "Calculate days of cover and reorder points, size orders with the forecast, manage expiry with FEFO and use ABC-VED analysis.",
      11 => "Keep an asset register, plan preventive maintenance, log breakdowns and calculate PM compliance and uptime, with AI help on logs and vendor emails.",
      12 => "Follow the revenue cycle from registration to payment, calculate the claim denial rate and use AI to check claims before they are submitted.",
      13 => "Learn NABH accreditation in general words, grade incident reports and calculate infection control rates per 1,000 device days.",
      14 => "Choose KPIs and targets, build a one-page dashboard with green, amber and red status, and check AI report drafts against the data.",
      15 => "Use a hospital's September data to find problems, forecast October demand and write an improvement plan with owners, targets and a weekly tracker."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A patient at Tarang waited 6.5 hours between the doctor saying \"you can go home\" and actually leaving. Which part of patient flow is this delay in?", opts: ["A) Registration", "B) Discharge", "C) Consultation"], ans: "B" },
      2 => { type: "true_false", q: "It is fine to paste a discharge list with patient names and phone numbers into a free public chatbot if you delete the chat afterwards.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Tarang had 5,160 patient days and 1,200 discharges (including deaths) in September. What is the ALOS?", opts: ["A) 4.3 days", "B) 6.0 days", "C) 0.7 days"], ans: "A" },
      4 => { type: "multiple_choice", q: "In a cleaned admissions sheet, one row shows a discharge date before the admission date. What should you do?", opts: ["A) Swap the two dates so the row looks right", "B) Delete the row and say nothing", "C) Check the record in the HIS and fix it at the source"], ans: "C" },
      5 => { type: "multiple_choice", q: "An OPD has 5 doctors and each consultation takes about 10 minutes. What is its capacity per hour?", opts: ["A) 50 patients", "B) 30 patients", "C) 10 patients"], ans: "B" },
      6 => { type: "multiple_choice", q: "Tonight 58 patients are in Tarang's 60-bed Medicine ward. Tomorrow 13 admissions and 11 discharges are expected. What is tomorrow night's expected census?", opts: ["A) 56", "B) 58", "C) 60"], ans: "C" },
      7 => { type: "multiple_choice", q: "Past Octobers averaged 2,310 fever visits. This September is 2,870, and past Septembers averaged 2,675. Using a seasonal average with an uplift, what is the October forecast?", opts: ["A) About 2,480", "B) About 2,870", "C) About 2,310"], ans: "A" },
      8 => { type: "true_false", q: "If an AI roster draft follows every hard rule, the nursing head can publish it without checking who got the night shifts.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "An OT list has 440 minutes of cases, 5 cases in all, and a 41-minute average turnover. How many minutes does the whole list need?", opts: ["A) 440 minutes", "B) 604 minutes", "C) 645 minutes"], ans: "B" },
      10 => { type: "multiple_choice", q: "Human insulin is a low-spending (C) item but is vital (V). Which ABC-VED category is it in?", opts: ["A) Category III", "B) Category I", "C) Category II"], ans: "B" },
      11 => { type: "multiple_choice", q: "A ventilator should be ready for 720 hours in September. It was down for 72 hours. What is its uptime?", opts: ["A) 72.0%", "B) 98.9%", "C) 90.0%"], ans: "C" },
      12 => { type: "multiple_choice", q: "A hospital had 1,200 discharges. 720 of them needed a claim, and 84 claims were denied or queried on first submission. What is the denial rate?", opts: ["A) 11.7%", "B) 7.0%", "C) 84.0%"], ans: "A" },
      13 => { type: "multiple_choice", q: "An ICU had 1 central line infection, 210 central line days and 456 patient days. What is the CLABSI rate?", opts: ["A) 2.2 per 1,000 patient days", "B) 4.8 per 1,000 central line days", "C) 0.46 per 1,000 line days"], ans: "B" },
      14 => { type: "true_false", q: "If an AI summary says a KPI \"improved from last month\" but you gave it no data for last month, you should delete or check that claim before the report goes out.", opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "40 of 444 OT cases were cancelled on the day. 9 were for no bed and 7 because the patient did not come. If both causes are halved, what is the new cancellation rate?", opts: ["A) 9.0%", "B) 5.4%", "C) 7.2%"], ans: "C" }
    }

    AiHospitalOperationsContent::LESSONS.each do |position, data|
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

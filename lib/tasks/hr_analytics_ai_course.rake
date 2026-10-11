require_relative "../hr_analytics_ai_content"

namespace :content do
  desc "Create HR Analytics with AI course and populate all 15 lessons"
  task hr_analytics_ai: :environment do
    course = Course.find_or_create_by!(slug: "hr-analytics-ai") do |c|
      c.title       = "HR Analytics with AI"
      c.description = "Use AI and spreadsheets to understand your workforce. Clean HR data, calculate key metrics like attrition and time to hire, analyse engagement and performance, find what drives people to leave, plan the workforce and report clearly."
      c.color       = "#6d28d9"
      c.icon        = "📊"
      c.position    = 55
      c.published   = true
    end
    course.update!(description: "Use AI and spreadsheets to understand your workforce. Clean HR data, calculate key metrics like attrition and time to hire, analyse engagement and performance, find what drives people to leave, plan the workforce and report clearly.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What HR Analytics Is",
      2 => "Where AI Helps with HR Data",
      3 => "HR Data Sources and Privacy",
      4 => "Cleaning and Joining HR Data",
      5 => "Headcount and Workforce Composition",
      6 => "Attrition and Retention Metrics",
      7 => "Hiring Metrics",
      8 => "Engagement and Survey Analytics",
      9 => "Performance and Productivity Data",
      10 => "Finding Drivers of Attrition",
      11 => "Pay Equity Analysis",
      12 => "Workforce Planning",
      13 => "HR Dashboards and Reports",
      14 => "Ethics in People Analytics",
      15 => "Capstone: A People Analytics Report"
    }

    descriptions = {
      1 => "Learn the four types of HR analytics and how to turn a vague people worry into a clear question you can measure.",
      2 => "See where AI helps with HR data, and learn a safe way to work: AI suggests the method, the spreadsheet does the maths, and you check.",
      3 => "Learn where HR data lives, how to take only what you need, how to hide who people are, and the basics of India's DPDP Act.",
      4 => "Fix messy IDs, dates, department names and duplicates with simple formulas, then join HRMS and hiring data with XLOOKUP.",
      5 => "Define headcount, FTE, joiners and leavers, build a headcount bridge that adds up, and describe your workforce safely.",
      6 => "Calculate monthly and annual attrition, voluntary and involuntary attrition, early attrition and retention, and avoid the common mistakes.",
      7 => "Measure time to hire, time to fill, cost per hire and offer acceptance, compare hiring sources, and check your funnel for fairness.",
      8 => "Calculate response rates, eNPS and % favourable scores, compare teams without exposing anyone, and use AI to group survey comments.",
      9 => "Read a ratings distribution, prepare for calibration, check ratings for fairness, and use productivity data with care and context.",
      10 => "Compare leavers with stayers by tenure, pay position and team, and learn why a pattern is not proof of a cause.",
      11 => "Check pay fairness by comparing like with like: the same level and role, using compa-ratio, with small groups protected and careful next steps.",
      12 => "Plan next year's workforce: compare demand and supply, work out hires needed, test scenarios, set hiring dates and plan skills.",
      13 => "Choose the right HR metrics and charts, build a simple dashboard and write a monthly people report with AI, checking every number.",
      14 => "Learn five ethics checks for people analytics: clear purpose, only needed data, openness, small-group privacy and human decisions, with no surveillance.",
      15 => "Bring it all together: clean LedgerLite's data, compute key metrics, find what is linked with leaving and write a one-page report with recommendations."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Farhan asks, \"Why did Customer Success lose more people than other teams?\" Which type of HR analytics is this?", opts: ["A) Descriptive", "B) Diagnostic", "C) Prescriptive"], ans: "B" },
      2 => { type: "multiple_choice", q: "What is the safest way to get an attrition number with AI's help?", opts: ["A) Ask AI for the formula, run it in your spreadsheet and check it on a small test", "B) Paste the full staff list with names and ask AI for the final number", "C) Accept the AI's number if it sounds confident"], ans: "A" },
      3 => { type: "true_false", q: "Pseudonymised data, where employee IDs are replaced with codes, is no longer personal data and needs no protection.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Why should you clean the employee IDs before you look for duplicate rows?", opts: ["A) Clean IDs make the file smaller", "B) XLOOKUP only works on upper-case text", "C) \"ll1043\" and \"LL-1043\" only show up as the same person after the IDs are cleaned"], ans: "C" },
      5 => { type: "multiple_choice", q: "LedgerLite started FY26 with 104 employees. 40 joined and 24 left. What is the end headcount?", opts: ["A) 128", "B) 120", "C) 144"], ans: "B" },
      6 => { type: "multiple_choice", q: "LedgerLite started FY26 with 104 employees and ended with 120. 24 people left. What is the annual attrition rate using average headcount?", opts: ["A) 23.1%", "B) 20.0%", "C) 21.4%"], ans: "C" },
      7 => { type: "multiple_choice", q: "Referrals gave 12 hires at 26 days and campus gave 3 hires at 60 days. How should you find the overall average time to hire?", opts: ["A) Weight each source's average by its number of hires", "B) Add the source averages and divide by the number of sources", "C) Use the slowest source's average"], ans: "A" },
      8 => { type: "true_false", q: "It is fine to show eNPS for a team with only 3 survey replies, as long as you do not show their names.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Team A has 83% of people rated 4 or 5, and Team B has 18%. What should happen in calibration?", opts: ["A) Lower Team A's ratings to match the company", "B) Ask both managers for the goals and real examples behind their ratings", "C) Use tickets closed per person to decide who is right"], ans: "B" },
      10 => { type: "multiple_choice", q: "68.4% of voluntary leavers were paid below their band midpoint, against 45.0% of current staff. What is the best next step?", opts: ["A) Give everyone a pay rise, because low pay causes attrition", "B) Ignore it, because correlation means nothing", "C) Check the gap within each level and look at other sources, such as exit reasons"], ans: "C" },
      11 => { type: "multiple_choice", q: "Why can a company-wide average pay gap between women and men be misleading?", opts: ["A) It mixes junior and senior roles, so it may show who reaches senior roles, not unequal pay for the same work", "B) It always hides every real pay gap", "C) Averages cannot be calculated in a spreadsheet"], ans: "A" },
      12 => { type: "multiple_choice", q: "Customer Success has 16 people now and needs 20 by next year. It expects about 7 people to leave. How many hires does it need?", opts: ["A) 4", "B) 7", "C) 11"], ans: "C" },
      13 => { type: "true_false", q: "If AI writes the monthly people report from your own metrics table, you do not need to check its numbers.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A leader wants to use keystroke and chat data to find who may resign. What should HR do?", opts: ["A) Do it quietly so staff do not worry", "B) Say no, and suggest group-level methods such as surveys, stay interviews and exit data", "C) Do it only for the team with the highest attrition"], ans: "B" },
      15 => { type: "multiple_choice", q: "68.4% of voluntary leavers were paid below their band midpoint, compared with 45.0% of current staff. How should the report describe this?", opts: ["A) Low pay caused people to leave", "B) Pay has nothing to do with leaving", "C) Pay below the midpoint is linked with leaving, but this is not proof of cause"], ans: "C" }
    }

    HrAnalyticsAiContent::LESSONS.each do |position, data|
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

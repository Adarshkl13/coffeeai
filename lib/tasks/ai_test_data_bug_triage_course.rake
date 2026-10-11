require_relative "../ai_test_data_bug_triage_content"

namespace :content do
  desc "Create AI for Test Data and Bug Triage course and populate all 15 lessons"
  task ai_test_data_bug_triage: :environment do
    course = Course.find_or_create_by!(slug: "ai-test-data-bug-triage") do |c|
      c.title       = "AI for Test Data and Bug Triage"
      c.description = "Use AI to create safe, realistic test data and to manage bugs better. Generate synthetic data, mask production data, cover edge cases, then sort, group and prioritise bug reports, find duplicates and root causes, and report quality clearly."
      c.color       = "#115e59"
      c.icon        = "\u{1F41E}"
      c.position    = 98
      c.published   = true
    end
    course.update!(title: "AI for Test Data and Bug Triage", description: "Use AI to create safe, realistic test data and to manage bugs better. Generate synthetic data, mask production data, cover edge cases, then sort, group and prioritise bug reports, find duplicates and root causes, and report quality clearly.", color: "#115e59", icon: "\u{1F41E}", position: 98)
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Test Data Matters",
      2 => "Where AI Helps and Its Limits",
      3 => "Privacy Rules for Test Data",
      4 => "Designing a Test Data Set",
      5 => "Generating Synthetic Data with AI",
      6 => "Masking and Anonymising Data",
      7 => "Edge-Case and Boundary Data",
      8 => "Managing Test Data",
      9 => "Data for Different Test Types",
      10 => "Bug Triage Basics",
      11 => "Sorting and Labelling Bugs with AI",
      12 => "Finding Duplicate Bugs",
      13 => "Root Cause Patterns",
      14 => "Quality Reports for Teams",
      15 => "Capstone: Test Data and Triage for PayLite"
    }

    descriptions = {
      1 => "Learn the three qualities of good test data (coverage, realism and privacy) and the most common test data problems.",
      2 => "See where AI helps with test data and bugs, and its limits: fake data that looks real, leaks and wrong labels.",
      3 => "Learn how UK and US privacy rules apply to test data in general words, and why real customer data is risky.",
      4 => "Design a test data set: fields, rules, partitions, boundary values and a short data plan.",
      5 => "Generate synthetic data with AI as CSV or JSON, and check every batch with simple spreadsheet formulas.",
      6 => "Learn the main masking techniques, what can still identify people after masking, and how to check a masked file.",
      7 => "Build edge-case and boundary data for names, special characters, dates, time zones and money.",
      8 => "Version, refresh and share test data safely, with change logs, relative dates and a reservation sheet.",
      9 => "Learn what data UI, API, performance and AI tests need, and work out how much data a load test needs.",
      10 => "Learn how a bug triage meeting works, the difference between severity and priority, and why every bug needs one owner.",
      11 => "Write a label guide and use AI to suggest consistent components, types and tags for every bug.",
      12 => "Use AI to find bug reports that mean the same thing, check them, link them and keep the best report.",
      13 => "Group bugs by their cause, use the five whys, and add fixes and test data that stop the same bugs coming back.",
      14 => "Define bug metrics, work out open bugs and escape rate in a spreadsheet, and check AI-drafted quality reports.",
      15 => "Build a full test data and triage pack for PayLite: data plan, synthetic data, masking check, triaged bugs and a quality report."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "PayLite allows transfers from $1.00 to $2,500.00. Bug PL-106 disables the Send button at exactly $1.00. Which test value would have found it?", opts: ["A) $50.00", "B) $1.00", "C) $300.00"], ans: "B" },
      2 => { type: "true_false", q: "If AI-generated test data looks realistic, you can use it without checking it.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Under UK GDPR, what is pseudonymised data (names replaced with codes, with the key kept somewhere else)?", opts: ["A) Still personal data", "B) Not personal data", "C) Personal data only if it includes card numbers"], ans: "A" },
      4 => { type: "multiple_choice", q: "A transfer amount must be from $1.00 to $2,500.00. Which set of values best tests the boundaries?", opts: ["A) $1.00 and $2,500.00 only", "B) $0.50, $300.00 and $4,000.00", "C) $0.99, $1.00, $2,500.00 and $2,500.01"], ans: "C" },
      5 => { type: "multiple_choice", q: "AI has just generated a batch of 50 synthetic customers in CSV. What should you do first?", opts: ["A) Load it into the test system straight away", "B) Check the row count, unique IDs, rules, labels and safe values", "C) Ask the AI to confirm that its own data is correct"], ans: "B" },
      6 => { type: "multiple_choice", q: "A tester replaces each customer's phone number with a hash of the real number. What is the result?", opts: ["A) Pseudonymised data, which is still personal data", "B) Anonymised data, which is outside UK GDPR", "C) Synthetic data that describes no real person"], ans: "A" },
      7 => { type: "multiple_choice", q: "PayLite stores times in UTC and shows them in New York time. In winter (EST, UTC-5), at what New York time does the UTC date change?", opts: ["A) Midnight", "B) 8 pm", "C) 7 pm"], ans: "C" },
      8 => { type: "true_false", q: "Using a relative date such as =EDATE(TODAY(),-216) helps stop age-boundary test data from going out of date.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "A load test makes 18,000 transfers of $50.00. Each account can send at most $2,500.00 a day. How many active accounts are needed at minimum for one day?", opts: ["A) 50", "B) 360", "C) 3,600"], ans: "B" },
      10 => { type: "multiple_choice", q: "What is the difference between severity and priority?", opts: ["A) Severity is how soon to fix; priority is how bad the impact is", "B) They mean the same thing", "C) Severity is how bad the impact is; priority is how soon to fix"], ans: "C" },
      11 => { type: "multiple_choice", q: "Four time zone bugs were tagged \"timezone\", \"time-zone\", \"TZ\" and \"dates\". What fixes this problem?", opts: ["A) Let AI choose new tags for each bug", "B) Remove all tags from the tracker", "C) A label guide with a fixed list of allowed words"], ans: "C" },
      12 => { type: "true_false", q: "If AI says two bug reports are similar, you can close the later one as a duplicate without checking.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "PL-104, PL-109, PL-115 and PL-121 are on different screens but all involve times after 8 pm. What is the best next step?", opts: ["A) Group them as a possible shared cause and ask a developer to confirm it", "B) Fix each bug separately in its own team", "C) Close three of them as duplicates"], ans: "A" },
      14 => { type: "multiple_choice", q: "Over six months, 28 of 267 bugs were found in production. What is the overall escape rate?", opts: ["A) 10.3%, the average of the monthly rates", "B) 10.5%", "C) 28%"], ans: "B" },
      15 => { type: "multiple_choice", q: "You want AI to help label bugs, but some bug descriptions contain customer emails. What should you do first?", opts: ["A) Paste them as they are, because the AI tool is approved", "B) Ask the AI to ignore the emails", "C) Mask the descriptions, check them, then share only what is needed"], ans: "C" }
    }

    AiTestDataBugTriageContent::LESSONS.each do |position, data|
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

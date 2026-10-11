require_relative "../ai_software_testing_content"

namespace :content do
  desc "Create AI for Software Testing course and populate all 15 lessons"
  task ai_software_testing: :environment do
    course = Course.find_or_create_by!(slug: "ai-software-testing") do |c|
      c.title       = "AI for Software Testing"
      c.description = "Use AI to test software faster and more thoroughly. Turn requirements into test cases, find edge cases with proven test design techniques, write clear bug reports, plan regression testing and exploratory sessions, and check every AI suggestion against the real product."
      c.color       = "#0d9488"
      c.icon        = "\u{1F9EA}"
      c.position    = 94
      c.published   = true
    end
    course.update!(title: "AI for Software Testing", description: "Use AI to test software faster and more thoroughly. Turn requirements into test cases, find edge cases with proven test design techniques, write clear bug reports, plan regression testing and exploratory sessions, and check every AI suggestion against the real product.", color: "#0d9488", icon: "\u{1F9EA}", position: 94)
    puts "Course: #{course.title}"

    titles = {
      1 => "How Software Testing Works",
      2 => "Where AI Helps Testers and Its Limits",
      3 => "Using AI Tools Safely at Work",
      4 => "Reading Requirements and User Stories",
      5 => "Writing Test Cases with AI",
      6 => "Equivalence Partitioning and Boundary Values",
      7 => "Decision Tables and State Transitions",
      8 => "Finding Edge Cases and Negative Tests",
      9 => "Test Data with AI",
      10 => "Exploratory Testing with AI",
      11 => "Writing Clear Bug Reports",
      12 => "Regression Testing and Test Selection",
      13 => "Test Plans and Strategies",
      14 => "Measuring Quality",
      15 => "Capstone: Testing a New Checkout for ShopNest"
    }

    descriptions = {
      1 => "Learn why teams test software, the main test levels and types, and what a tester does, with the ShopNest checkout team.",
      2 => "See where AI saves testers time and where it fails, and ask for labelled answers you can check.",
      3 => "Use only approved AI tools, keep secrets and customer data out of prompts, clean logs safely and check every answer.",
      4 => "Read user stories and acceptance criteria like a tester, ask questions that find gaps, and use AI to spot missing rules.",
      5 => "Write clear test cases and Given-When-Then scenarios, draft them with AI and review the draft carefully.",
      6 => "Split inputs into equivalence partitions and test their edges with boundary value analysis, using the ShopNest quantity and delivery rules.",
      7 => "Cover combinations of conditions with decision tables, and flows that depend on the past with state transition testing.",
      8 => "Find edge cases and negative tests in inputs, limits, timing and permissions, and use AI to widen your list.",
      9 => "Plan test data from the rules, keep it privacy-safe with reserved values, and check AI-made data with a spreadsheet.",
      10 => "Run exploratory testing with charters, heuristics, session notes and a debrief, with AI helping before and after.",
      11 => "Write bug reports that developers can act on: clear steps, expected and actual results, severity and priority, and evidence, with AI tidying your notes.",
      12 => "Choose what to re-test after a change with impact analysis and risk scores, and use AI to suggest a regression selection you then check.",
      13 => "Learn the difference between a test strategy and a test plan, and draft a one-page plan with scope, risks, schedule and entry and exit criteria.",
      14 => "Define and calculate pass rate, requirements coverage, defect leakage and flaky rate correctly, and check AI's maths with spreadsheet formulas.",
      15 => "Test promo codes and the minimum order in ShopNest Checkout 2.0 from start to finish: review, test design, test cases, a bug report and a test summary."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Priya, the product owner, tries each new checkout story on staging to confirm it meets shoppers' needs. Which test level is this?", opts: ["A) Component (unit) testing", "B) System integration testing", "C) Acceptance testing"], ans: "C" },
      2 => { type: "multiple_choice", q: "An AI answer says \"promo codes are case-sensitive\", but your story does not say this. What should you do?", opts: ["A) Treat it as an assumption and check it against the rules and the real product", "B) Add it to the test cases, because the AI sounded sure", "C) Ignore promo code tests completely"], ans: "A" },
      3 => { type: "true_false", q: "A session token from a staging test account is safe to paste into any AI tool, because it is not real customer data.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Which acceptance criterion is testable?", opts: ["A) Delivery is free on bigger orders.", "B) Delivery is free when the product subtotal after any discount is £60.00 or more.", "C) Delivery should feel fair to shoppers."], ans: "B" },
      5 => { type: "multiple_choice", q: "Which is the strongest expected result for a test case?", opts: ["A) The checkout works correctly.", "B) An error is shown.", "C) The message \"You can buy up to 20 of this item\" appears and the quantity stays at its last value."], ans: "C" },
      6 => { type: "multiple_choice", q: "The rule says a quantity must be from 1 to 20. Which values does 2-value boundary value analysis test?", opts: ["A) 1, 10 and 20", "B) 0, 1, 20 and 21", "C) 5, 15 and 25"], ans: "B" },
      7 => { type: "true_false", q: "A decision table with 3 yes/no conditions starts with 8 combinations, before you remove the ones that cannot happen.", opts: ["True", "False"], ans: "True" },
      8 => { type: "multiple_choice", q: "Same-day slots must start at least 2 hours after the time of ordering. The last slot is 21:00 to 22:00. A shopper orders at 19:30. What should they see for today?", opts: ["A) No slot today, because 21:00 is less than 2 hours after 19:30", "B) The 21:00 to 22:00 slot", "C) The 20:00 to 21:00 slot"], ans: "A" },
      9 => { type: "multiple_choice", q: "Which phone number is the safest to use in UK test data?", opts: ["A) A colleague's real mobile number", "B) A random number starting with 07", "C) 07700 900123, from the range Ofcom keeps for drama"], ans: "C" },
      10 => { type: "multiple_choice", q: "Which is the best exploratory testing charter?", opts: ["A) Test the delivery slots.", "B) Explore choosing a delivery slot with the iOS app and a slot set to Full, to discover problems with the 30-minute hold.", "C) Run all 40 delivery slot test cases in TestRail."], ans: "B" },
      11 => { type: "multiple_choice", q: "Lowercase promo codes fail on the iOS app, but typing capitals works. The launch email asks every shopper to type a code. Which rating fits best?", opts: ["A) Low severity, low priority", "B) Medium severity, high priority", "C) Critical severity, low priority"], ans: "B" },
      12 => { type: "multiple_choice", q: "Leo fixes the free delivery check so a £60.00 basket gets free delivery. Which test is the retest (confirmation test) of this fix?", opts: ["A) Run TC-104-05 again: Basket B (£60.00) shows delivery Free and a total of £60.00", "B) Check that a test account can log in", "C) Check that the slot list shows 14 slots a day"], ans: "A" },
      13 => { type: "true_false", q: "\"No Critical or High severity bugs are open\" is an entry criterion, because it must be true before testing can start.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Planned 120, passed 101, failed 8, blocked 3, not run 8. If pass rate = passed / (passed + failed), what is the pass rate?", opts: ["A) 84.2%", "B) 90.8%", "C) 92.7%"], ans: "C" },
      15 => { type: "multiple_choice", q: "A basket costs £30.00 and the shopper applies SAVE5 (£5.00 off, minimum £30.00). The order minimum is at least £25.00 after discounts. What should happen?", opts: ["A) The order is blocked, because £25.00 is not above £25.00", "B) The order can be placed: subtotal £25.00, delivery £4.99, total £29.99", "C) SAVE5 is refused, because the basket is not over £30.00"], ans: "B" }
    }

    AiSoftwareTestingContent::LESSONS.each do |position, data|
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

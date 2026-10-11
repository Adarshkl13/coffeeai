require_relative "../ai_test_automation_content"

namespace :content do
  desc "Create AI Test Automation course and populate all 15 lessons"
  task ai_test_automation: :environment do
    course = Course.find_or_create_by!(slug: "ai-test-automation") do |c|
      c.title       = "AI Test Automation"
      c.description = "Use AI to write, fix and maintain automated tests. Learn what to automate, write readable UI and API tests with Playwright, use good locators and waits, structure suites with page objects, run tests in CI, fix flaky tests and review AI-written test code carefully."
      c.color       = "#0f766e"
      c.icon        = "\u{1F916}"
      c.position    = 95
      c.published   = true
    end
    course.update!(title: "AI Test Automation", description: "Use AI to write, fix and maintain automated tests. Learn what to automate, write readable UI and API tests with Playwright, use good locators and waits, structure suites with page objects, run tests in CI, fix flaky tests and review AI-written test code carefully.", color: "#0f766e", icon: "\u{1F916}", position: 95)
    puts "Course: #{course.title}"

    titles = {
      1 => "What Test Automation Is",
      2 => "Where AI Helps in Automation and Its Limits",
      3 => "Choosing What to Automate",
      4 => "Tools Overview",
      5 => "Your First Playwright Test",
      6 => "Good Locators",
      7 => "Waits and Timing",
      8 => "Assertions and Test Data",
      9 => "Page Objects and Readable Suites",
      10 => "API Tests",
      11 => "Running Tests in CI",
      12 => "Fixing Flaky Tests",
      13 => "Reviewing AI-Written Test Code",
      14 => "Maintaining an Automation Suite",
      15 => "Capstone: Automating ShopNest Login and Basket Tests"
    }

    descriptions = {
      1 => "Learn what an automated test is, what it costs and saves, the test pyramid, and what you should keep manual.",
      2 => "See where AI helps you write, explain and fix tests, and how to catch its mistakes, from guessed locators to leaked secrets.",
      3 => "Score test cases on risk, repetition and stability to build a ranked automation candidate list with your team.",
      4 => "Compare Playwright, Selenium, Cypress and API and load tools in plain words, and choose one that fits your team.",
      5 => "Read and run your first Playwright test: go to a page, act like a user, check the result, and review AI-written code.",
      6 => "Find elements the way users do, with roles, labels and test IDs, and replace fragile CSS and XPath selectors that AI often guesses.",
      7 => "Learn how Playwright waits for you, why fixed sleeps make tests slow and flaky, and how to handle pages that really are slow.",
      8 => "Write exact expected results from the requirements, and set up and clean up made-up test data so tests never clash.",
      9 => "Build page objects for ShopNest's login and basket pages, organise and name your suite, and check AI-suggested refactoring.",
      10 => "Test the basket API directly with Playwright's request tools and see how Postman is used, checking exact status codes and data.",
      11 => "Run Playwright tests in CI with GitHub Actions, keep the password in a secret, and read reports, screenshots and traces.",
      12 => "Find the real causes of flaky tests, measure the flaky rate, use AI to read failure logs, and fix the cause instead of hiding it.",
      13 => "Review AI-written test code with a four-part checklist: correct, readable, real assertions and no secrets. Then prove each test can fail.",
      14 => "Keep a suite healthy: update tests after UI changes, remove low-value tests, and track clear metrics in a spreadsheet.",
      15 => "Build ShopNest's first automation pack: a candidate list, page objects, five tests, a CI plan and a flaky-test fix."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which tests should be the smallest group in a healthy test pyramid?", opts: ["A) Unit tests", "B) API and integration tests", "C) UI and end-to-end tests"], ans: "C" },
      2 => { type: "true_false", q: "If an AI-written test passes the first time you run it, you can trust it without reading it.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Using ShopNest's rule (risk + repetition + stability, 1 to 3 each), a check scores 3 for risk, 1 for repetition and 3 for stability. What is the decision?", opts: ["A) Automate first, because the total is 7", "B) Later, because the total is 6", "C) Keep manual, because repetition is low"], ans: "A" },
      4 => { type: "multiple_choice", q: "Which kind of tool fits best to check that the basket service returns a subtotal of £7.15, with no screen involved?", opts: ["A) A load testing tool such as k6", "B) An API testing tool such as Postman or Playwright's request tools", "C) A test management tool such as TestRail"], ans: "B" },
      5 => { type: "multiple_choice", q: "Why is await expect(page.getByTestId('basket-count')).toHaveText('4') better than waiting 3 seconds and then checking the text once?", opts: ["A) It runs faster because it skips the browser", "B) It only works in Chromium", "C) It keeps checking until the text matches or the timeout is reached"], ans: "C" },
      6 => { type: "multiple_choice", q: "Which locator is the strongest way to find ShopNest's Sign in button?", opts: ["A) page.locator('.btn-primary')", "B) page.getByRole('button', { name: 'Sign in' })", "C) page.locator('//div[3]/div/button')"], ans: "B" },
      7 => { type: "true_false", q: "Adding page.waitForTimeout(3000) before a check is the best way to make a slow test reliable.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Where should the expected total of £11.14 for Basket A come from?", opts: ["A) Copy the total the app shows today", "B) Ask an AI assistant and use its answer as it is", "C) Work it out from the prices and the delivery rule in the requirement"], ans: "C" },
      9 => { type: "multiple_choice", q: "Using ShopNest's rule \"page objects find and do; tests check\", what belongs in the LoginPage page object?", opts: ["A) The locators and the signIn(email, password) action", "B) The check that the error says \"Email or password is incorrect.\"", "C) The test users' password"], ans: "A" },
      10 => { type: "multiple_choice", q: "The spec says PATCH with quantity 11 must return status 400. Which check fits best?", opts: ["A) await expect(response).toBeOK()", "B) expect(response.status()).toBe(400)", "C) expect(response.ok()).toBeTruthy()"], ans: "B" },
      11 => { type: "multiple_choice", q: "In ShopNest's GitHub Actions workflow, where should the test password come from?", opts: ["A) A GitHub Actions secret, passed to the tests as an environment variable", "B) The workflow YAML file, so CI can always find it", "C) The test code, inside the login test"], ans: "A" },
      12 => { type: "multiple_choice", q: "A test was flaky in 6 of the last 50 CI runs. What is its flaky rate, and what is the best next step?", opts: ["A) 6%, so add one more retry", "B) 12%, so find the cause in the trace and fix it", "C) 12%, so raise the fixed wait to 5 seconds"], ans: "B" },
      13 => { type: "true_false", q: "The line expect(page.getByTestId('basket-total')).toBeTruthy(); is a good check that the basket total is correct.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "In September, ShopNest found 12 login and basket bugs before release and 1 after release. What is the defect leakage?", opts: ["A) 8.3%, which is 1 divided by 12", "B) 92.3%, which is 12 divided by 13", "C) 7.7%, which is 1 divided by 13"], ans: "C" },
      15 => { type: "multiple_choice", q: "Why does the capstone basket test check the badge count after every Add to basket click?", opts: ["A) It confirms each item was saved before the test moves on, which prevents flaky failures", "B) Playwright cannot click a button twice without a check in between", "C) It makes the test run faster in CI"], ans: "A" }
    }

    AiTestAutomationContent::LESSONS.each do |position, data|
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

require_relative "../ai_api_testing_content"

namespace :content do
  desc "Create AI for API Testing course and populate all 15 lessons"
  task ai_api_testing: :environment do
    course = Course.find_or_create_by!(slug: "ai-api-testing") do |c|
      c.title       = "AI for API Testing"
      c.description = "Use AI to test APIs with confidence. Understand requests and responses, read API docs, design positive and negative tests, check status codes, schemas and errors, test authentication and data rules, and build collections that run in CI."
      c.color       = "#14b8a6"
      c.icon        = "\u{1F50C}"
      c.position    = 96
      c.published   = true
    end
    course.update!(title: "AI for API Testing", description: "Use AI to test APIs with confidence. Understand requests and responses, read API docs, design positive and negative tests, check status codes, schemas and errors, test authentication and data rules, and build collections that run in CI.", color: "#14b8a6", icon: "\u{1F50C}", position: 96)
    puts "Course: #{course.title}"

    titles = {
      1 => "What an API Is",
      2 => "Where AI Helps in API Testing and Its Limits",
      3 => "Reading API Documentation",
      4 => "HTTP Methods and Status Codes",
      5 => "Designing API Test Cases",
      6 => "Checking Responses",
      7 => "Authentication and Authorisation Tests",
      8 => "Test Data for APIs",
      9 => "Error Handling Tests",
      10 => "Using Postman or Similar Tools",
      11 => "Contract Testing Basics",
      12 => "Performance and Reliability Basics",
      13 => "Security Basics for API Testers",
      14 => "Running API Tests in CI",
      15 => "Capstone: Testing the PayLite Payments API"
    }

    descriptions = {
      1 => "Learn what an API is: requests, responses, endpoints, status codes, JSON and REST basics, using the made-up PayLite payments API.",
      2 => "See where AI helps in API testing, where it invents endpoints or codes, and what you must never paste into an AI tool.",
      3 => "Read an OpenAPI spec endpoint by endpoint, turn each part into tests, and use AI to summarise rules and find gaps.",
      4 => "Learn GET, POST, PUT, PATCH and DELETE, and what 2xx, 4xx and 5xx status codes mean, including 401 vs 403 and 400 vs 422.",
      5 => "Design positive, negative, boundary and permission API tests with equivalence partitioning and boundary value analysis.",
      6 => "Check every API response for the right status code, headers, body values, schema and response time, and use AI to draft the checks.",
      7 => "Test who can call an API and what they may do: 401 vs 403, a token-by-endpoint matrix, and how to keep keys and tokens safe.",
      8 => "Create, reuse and clean up API test data, make unique fake data with AI and spreadsheets, and avoid tests that break each other.",
      9 => "Test how an API handles mistakes: the right error codes, a clear standard error format, and no stack traces or other internal details.",
      10 => "Organise API tests in Postman or a similar tool with collections, environments, variables, secrets, checks and data-driven runs.",
      11 => "Learn what an API contract is, how to check responses against the spec, and how to spot breaking changes with help from AI.",
      12 => "Learn response time, p95, throughput and error rate, read a simple load test, and plan safe performance tests with AI.",
      13 => "Use the OWASP API Security Top 10 as a checklist, run safe permission and error tests, and report security bugs privately.",
      14 => "Run API tests automatically in CI, fail the build on errors, read test reports, handle flaky tests and keep secrets safe.",
      15 => "Test the PayLite payments API from start to finish: doc review, test matrix, auth and error tests, collection plan and a summary report."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Jordan sends a request to create a payment. Which part of the response tells him first whether it worked?", opts: ["A) The Content-Type header", "B) The status code, such as 201 Created", "C) The created_at time in the body"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool suggests an endpoint with confidence, you can add it to your tests without checking the API spec.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "The API spec does not say how the 180-day refund window is counted. What should a tester do?", opts: ["A) Ask AI to choose the most common rule and test that", "B) Skip refund tests until the API is released", "C) Ask the developer or product owner and record the answer"], ans: "C" },
      4 => { type: "multiple_choice", q: "A valid read-only token tries to create a customer, and the role is not allowed. Which status code should the API return?", opts: ["A) 403 Forbidden", "B) 401 Unauthorized", "C) 500 Internal Server Error"], ans: "A" },
      5 => { type: "multiple_choice", q: "The amount must be from 0.50 to 10,000.00. Which set of values follows boundary value analysis?", opts: ["A) 1.00, 50.00 and 500.00", "B) 0.49, 0.50, 10,000.00 and 10,000.01", "C) Only 42.50, a normal amount"], ans: "B" },
      6 => { type: "multiple_choice", q: "Jordan's test only checks that GET /v1/payments/pay_5001 returns 200. What could it miss?", opts: ["A) Nothing, because 200 means the response is correct", "B) Only problems with the URL", "C) A wrong amount, a missing field or a number sent as text"], ans: "C" },
      7 => { type: "multiple_choice", q: "POST /v1/refunds with the read-only token returns 201 and creates a refund. What is this?", opts: ["A) An authorisation bug: the API should return 403 and create nothing", "B) Correct, because the token is valid", "C) An authentication bug: the API should return 401"], ans: "A" },
      8 => { type: "true_false", q: "A test that creates its own customer with a unique email is less likely to fail because of other tests than one that changes shared seed data.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "POST /v1/payments with currency \"usd\" returns 500 and a stack trace. What should the API return?", opts: ["A) 500 with a shorter stack trace", "B) 400 invalid_currency in the standard error format, with no internal details", "C) 201, because lower case is close enough"], ans: "B" },
      10 => { type: "multiple_choice", q: "Where should Jordan keep the sandbox admin token in Postman?", opts: ["A) In a collection variable, so the whole team can see it", "B) In the request URL", "C) In the vault or another secret store that is not shared or exported"], ans: "C" },
      11 => { type: "multiple_choice", q: "PayLite proposes a new spec version. Which change is a breaking change for apps that already use the API?", opts: ["A) Adding a new endpoint GET /v1/refunds?payment_id=", "B) Renaming the response field description to note", "C) Adding an optional response field receipt_url"], ans: "B" },
      12 => { type: "multiple_choice", q: "Twenty response times include one very slow call. The goal is about what most users feel at the slow end. Which measure should you report against the goal?", opts: ["A) The average response time", "B) The fastest response time", "C) The p95 response time"], ans: "C" },
      13 => { type: "true_false", q: "You may run security tests on any API without permission, as long as you only use fake data.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A nightly CI run has 76 tests. 74 pass and 2 fail. What is the pass rate?", opts: ["A) 97.4%", "B) 2.6%", "C) 74%"], ans: "A" },
      15 => { type: "multiple_choice", q: "76 tests were planned. 3 were blocked, 70 passed and 3 failed. What is the pass rate (passed divided by executed)?", opts: ["A) 92.1%", "B) 95.9%", "C) 100%"], ans: "B" }
    }

    AiApiTestingContent::LESSONS.each do |position, data|
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

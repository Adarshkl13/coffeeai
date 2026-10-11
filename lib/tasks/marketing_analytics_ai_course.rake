require_relative "../marketing_analytics_ai_content"

namespace :content do
  desc "Create Marketing Analytics with AI course and populate all 15 lessons"
  task marketing_analytics_ai: :environment do
    course = Course.find_or_create_by!(slug: "marketing-analytics-ai") do |c|
      c.title       = "Marketing Analytics with AI"
      c.description = "Use AI to understand your marketing numbers. Set goals and KPIs, read Google Analytics and ad reports, clean data in spreadsheets, find customer segments, understand attribution, build dashboards and turn numbers into decisions."
      c.color       = "#3b82f6"
      c.icon        = "📊"
      c.position    = 39
      c.published   = true
    end
    course.update!(description: "Use AI to understand your marketing numbers. Set goals and KPIs, read Google Analytics and ad reports, clean data in spreadsheets, find customer segments, understand attribution, build dashboards and turn numbers into decisions.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Marketing Analytics Matters",
      2 => "Where AI Helps with Data",
      3 => "Goals, KPIs and Funnels",
      4 => "Key Marketing Metrics",
      5 => "Google Analytics Basics",
      6 => "Tracking Links and UTM Tags",
      7 => "Cleaning Data in Spreadsheets",
      8 => "Pivot Tables and Formulas with AI",
      9 => "Customer Segments",
      10 => "Attribution Basics",
      11 => "Finding Insights with AI",
      12 => "Dashboards and Reports",
      13 => "Testing and Experiments",
      14 => "Privacy and Data Ethics",
      15 => "Capstone: A Marketing Performance Report"
    }

    descriptions = {
      1 => "Learn why marketers measure their work, and how to tell vanity metrics like views from useful metrics like orders and revenue.",
      2 => "See which data jobs AI does well, where it gets numbers wrong, and a simple habit for checking its maths.",
      3 => "Turn a business goal into a SMART goal and a few KPIs, then read a marketing funnel with real numbers.",
      4 => "Learn conversion rate, CAC, customer lifetime value, ROAS and churn, with formulas and worked examples.",
      5 => "Understand users, sessions, events, key events and traffic sources in Google Analytics 4, and read a report with AI's help.",
      6 => "Learn what UTM tags are, set up a simple naming system and build tracking links in a spreadsheet with AI's help.",
      7 => "Clean a messy sales export: fix duplicates, spaces, dates and text numbers with AI-written formulas, then check the results.",
      8 => "Use SUMIFS, COUNTIFS, AVERAGEIFS and pivot tables to answer marketing questions, and check the formulas AI writes for you.",
      9 => "Group customers with the RFM method (recency, frequency, monetary) and choose one marketing action for each segment.",
      10 => "Understand first click, last click and data-driven attribution, and why Google Analytics and ad tools report different numbers.",
      11 => "Ask clear questions of your data, compare periods fairly and spot unusual changes with AI's help.",
      12 => "Choose the right charts, plan a one-page dashboard and write a short weekly report with AI.",
      13 => "Plan fair A/B tests, understand the sample size idea and learn why tiny differences can be chance.",
      14 => "Learn the basics of consent, cookies and personal data, and how to prepare data safely before using AI.",
      15 => "Clean a data set, compute KPIs, find three insights and write a marketing performance report with recommendations."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Reel A got 8,000 views and 3 orders. Reel B got 1,500 views and 12 orders. Which reel did more for the goal of online orders?", opts: ["A) Reel A, because it had more views", "B) Reel B, because it brought 4 times the orders", "C) Both did equally well"], ans: "B" },
      2 => { type: "true_false", q: "If an AI assistant shows a total and a percentage change with confidence, you can use them without checking.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "A funnel has 6,000 tour viewers and 480 enquiries. What is the enquiry rate?", opts: ["A) 0.8%", "B) 12.5%", "C) 8%"], ans: "C" },
      4 => { type: "multiple_choice", q: "A business spends ₹3,00,000 on marketing and gets 150 new customers. What is its CAC?", opts: ["A) ₹2,000", "B) ₹20,000", "C) ₹450"], ans: "A" },
      5 => { type: "multiple_choice", q: "In Google Analytics 4, what is a key event?", opts: ["A) Any page view on your website", "B) An event you mark as important for your business, such as a purchase", "C) A visit that lasts more than 30 minutes"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which UTM tag follows a good naming system?", opts: ["A) utm_source=Instagram&utm_medium=Social", "B) utm_source=instagram&utm_medium=social", "C) utm_source=insta&utm_medium=Instagram Post"], ans: "B" },
      7 => { type: "multiple_choice", q: "After cleaning an export, how can you check that no orders were lost?", opts: ["A) Compare row counts and totals with the raw export and the duplicates you removed", "B) Ask the AI if the data looks fine", "C) Delete the raw export so there is only one version"], ans: "A" },
      8 => { type: "multiple_choice", q: "In =SUMIFS(D2:D10, B2:B10, \"Instagram\"), what does D2:D10 do?", opts: ["A) It is the column checked for the word Instagram", "B) It is the list of rows to delete", "C) It is the range of cells that are added up"], ans: "C" },
      9 => { type: "true_false", q: "In RFM, a customer who bought often in the past but has not bought for a long time is usually called \"at risk\".", opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "Google Ads and Meta Ads Manager together report more sales than your billing system shows. What is the most likely reason?", opts: ["A) One of the ad tools is broken", "B) Each tool uses its own attribution rules, so both may claim the same sale", "C) Billing systems always miss sales"], ans: "B" },
      11 => { type: "multiple_choice", q: "Paid search sessions stayed the same, but orders fell from 50 to 30. What kind of problem is this?", opts: ["A) A volume problem: fewer people came", "B) A rate problem: the same people came, but fewer bought", "C) Not a problem, because sessions did not change"], ans: "B" },
      12 => { type: "true_false", q: "A pie chart with many slices is the best way to show a trend over 12 months.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Version A converts at 3.0% and version B at 3.6%, with 2,000 visitors each. What should you do?", opts: ["A) Check the result with a significance calculator before you call a winner", "B) Call B the winner, because it is 20% better", "C) Stop the test and change three more things"], ans: "A" },
      14 => { type: "multiple_choice", q: "You want AI to find which customer groups book repeat trips. What is the safest data to give a public AI tool?", opts: ["A) The full export with names and phone numbers", "B) The export with only the email addresses removed", "C) A summary table of trips by age band and city"], ans: "C" },
      15 => { type: "multiple_choice", q: "Paid ads cost ₹30,000 and brought ₹1,05,000 in revenue. Total revenue from all channels was ₹1,76,500. What is the paid ROAS?", opts: ["A) 5.9", "B) 3.5", "C) 2.5"], ans: "B" }
    }

    MarketingAnalyticsAiContent::LESSONS.each do |position, data|
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

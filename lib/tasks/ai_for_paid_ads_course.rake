require_relative "../ai_for_paid_ads_content"

namespace :content do
  desc "Create AI for Paid Ads course and populate all 15 lessons"
  task ai_for_paid_ads: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-paid-ads") do |c|
      c.title       = "AI for Paid Ads"
      c.description = "Use AI to plan and improve paid ads on Google and Meta. Write ad copy, choose audiences and keywords, set budgets, design A/B tests, read ad reports and find ways to lower cost and raise results."
      c.color       = "#f97316"
      c.icon        = "🎯"
      c.position    = 36
      c.published   = true
    end
    course.update!(description: "Use AI to plan and improve paid ads on Google and Meta. Write ad copy, choose audiences and keywords, set budgets, design A/B tests, read ad reports and find ways to lower cost and raise results.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Paid Ads Work",
      2 => "Where AI Helps in Advertising",
      3 => "Ad Metrics Explained",
      4 => "Planning a Campaign",
      5 => "Search Ad Copy with AI",
      6 => "Keywords and Match Types",
      7 => "Social Ad Copy and Creatives",
      8 => "Audiences and Targeting",
      9 => "Landing Pages That Convert",
      10 => "Budgets and Bidding",
      11 => "A/B Testing Ads",
      12 => "Reading Ad Reports with AI",
      13 => "Lowering Cost and Fixing Problems",
      14 => "Ad Policies and Honest Ads",
      15 => "Capstone: Plan and Review an Ad Campaign"
    }

    descriptions = {
      1 => "Learn how ad auctions, bids and budgets work, what impressions, clicks and conversions are, and how search ads differ from social ads.",
      2 => "See where AI assistants and platform automation help in paid ads, what you must still decide, and how to keep private data safe.",
      3 => "Learn CTR, CPC, CPM, conversion rate, CPA and ROAS with a worked example in rupees, and check AI's maths with spreadsheet formulas.",
      4 => "Plan a campaign in five parts: goal, audience, offer, budget and landing page, and use AI to fill a one-page plan table.",
      5 => "Use AI to write headlines and descriptions for Google responsive search ads that match search intent, then check lengths and claims.",
      6 => "Learn broad, phrase and exact match, and use AI to find negative keywords in your search terms report.",
      7 => "Use AI to write hooks, primary text and headlines, and plan image and video ideas for Meta ads.",
      8 => "Learn interests, lookalike, retargeting and broad targeting with automation, and plan audiences with AI while keeping data private.",
      9 => "Build landing pages with message match, a clear offer and trust signals, and use AI to review a page.",
      10 => "Set daily budgets, choose a bidding strategy, understand the learning phase and check pacing with a spreadsheet.",
      11 => "Plan fair A/B tests for your ads: change one thing at a time, wait for enough data and read the results carefully.",
      12 => "Export an ad report, ask AI to find patterns, and check the key numbers yourself in a spreadsheet.",
      13 => "Use a simple checklist to fix low CTR, high CPC and clicks that do not turn into sales.",
      14 => "Learn which ad claims are risky, when to add disclosures, and how to use AI as a first policy check.",
      15 => "Bring the course together: plan a campaign, write ads, design a test and review a report with next steps."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "In paid ads, what is an impression?", opts: ["A) One time your ad is shown on a screen", "B) One click on your ad", "C) One sale from your ad"], ans: "A" },
      2 => { type: "true_false", q: "If you use platform automation such as automated bidding, you no longer need to set a clear goal or check your conversion tracking.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "You spend ₹5,000 on ads and get 10 sales. What is your CPA (cost per acquisition)?", opts: ["A) ₹50", "B) ₹5,000", "C) ₹500"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which is the clearest campaign goal?", opts: ["A) Be popular online", "B) Get 40 package enquiries in 30 days", "C) Get more sales"], ans: "B" },
      5 => { type: "multiple_choice", q: "Why should you count AI-written headlines with a formula like =LEN(A2)?", opts: ["A) AI often miscounts characters, and headlines have a length limit", "B) Google Ads does not accept headlines that were not counted in a spreadsheet", "C) The formula also checks if the claims are true"], ans: "A" },
      6 => { type: "multiple_choice", q: "You add \"job\" as a negative keyword. Why might your ad still show for \"houseboat jobs\"?", opts: ["A) Negative keywords do not match plural forms, so you must add \"jobs\" too", "B) Negative keywords only work in Performance Max", "C) Negative keywords only block exact match keywords"], ans: "A" },
      7 => { type: "multiple_choice", q: "What is the hook in a Meta ad?", opts: ["A) The call to action button at the bottom", "B) The first line of text or the first seconds of a video that make people stop scrolling", "C) The list of interests you target"], ans: "B" },
      8 => { type: "true_false", q: "It is fine to paste your customer phone list into a public AI chatbot to clean it before you upload it to Ads Manager.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Your ad says \"2 Days From ₹8,999\". What is the best landing page for it?", opts: ["A) The home page with all 40 tours", "B) A page with a long form so you learn more about each visitor", "C) A page whose headline repeats the same offer and price, with one clear button"], ans: "C" },
      10 => { type: "multiple_choice", q: "Your monthly budget is ₹60,000. On day 12 of 30 you have spent ₹27,000. What is true?", opts: ["A) You are spending slower than planned", "B) You are spending faster than planned (about 112% pacing)", "C) You are exactly on plan"], ans: "B" },
      11 => { type: "multiple_choice", q: "You want to test whether a new headline gets more clicks. What should version B change?", opts: ["A) The headline, the image and the offer together", "B) Only the headline", "C) The headline and the daily budget"], ans: "B" },
      12 => { type: "multiple_choice", q: "AI says a campaign's CPA is 180 rupees. What should you do before using this number?", opts: ["A) Recalculate it in a spreadsheet as spend divided by conversions", "B) Ask the AI again and trust the second answer", "C) Use it, because AI is always right with maths"], ans: "A" },
      13 => { type: "multiple_choice", q: "A campaign gets many clicks but its orders suddenly fall to zero after a website change. What should you check first?", opts: ["A) The ad headline", "B) The keyword bids", "C) Whether conversion tracking still works"], ans: "C" },
      14 => { type: "true_false", q: "If an AI tool says your ad follows all the rules, you do not need to check the platform's official policy pages.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "Your cookie box campaign has many clicks but a low ROAS. What is the best next step?", opts: ["A) Double its budget straight away", "B) Test a new offer or ad for it and review again", "C) Stop all your other campaigns"], ans: "B" }
    }

    AiForPaidAdsContent::LESSONS.each do |position, data|
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

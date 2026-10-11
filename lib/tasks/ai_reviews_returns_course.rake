require_relative "../ai_reviews_returns_content"

namespace :content do
  desc "Create AI for Reviews and Returns course and populate all 15 lessons"
  task ai_reviews_returns: :environment do
    course = Course.find_or_create_by!(slug: "ai-reviews-returns") do |c|
      c.title       = "AI for Reviews and Returns"
      c.description = "Use AI to learn from reviews and cut costly returns. Analyse ratings and review text, reply to reviews well, ask for honest reviews, find why products come back, reduce RTO on COD orders, spot return fraud and fix root causes."
      c.color       = "#065f46"
      c.icon        = "↩️"
      c.position    = 65
      c.published   = true
    end
    course.update!(description: "Use AI to learn from reviews and cut costly returns. Analyse ratings and review text, reply to reviews well, ask for honest reviews, find why products come back, reduce RTO on COD orders, spot return fraud and fix root causes.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Reviews and Returns Matter",
      2 => "Where AI Helps",
      3 => "Review and Return Metrics",
      4 => "Rules on Reviews in India",
      5 => "Analysing Review Text with AI",
      6 => "Replying to Reviews",
      7 => "Asking for Reviews Honestly",
      8 => "Spotting Fake or Suspicious Reviews",
      9 => "Why Products Get Returned",
      10 => "Return Policies and Customer Messages",
      11 => "Reducing Returns at the Source",
      12 => "Cutting RTO on COD Orders",
      13 => "Return Fraud and Abuse Signals",
      14 => "Turning Returns into Improvements",
      15 => "Capstone: A Reviews and Returns Improvement Plan"
    }

    descriptions = {
      1 => "See how reviews and returns affect trust and costs, and how the two are linked, using Zari & Co's August numbers.",
      2 => "Learn four jobs AI can do for reviews and returns, the risks, and the human check each job needs.",
      3 => "Calculate average rating, rating distribution, return rate, RTO rate and cost per return, with the right base for each.",
      4 => "Understand India's rules on fake and paid reviews, IS 19000:2022 and marketplace policies, in plain words (not legal advice).",
      5 => "Use AI to find themes, sentiment and product issues in review text, and check its answer against the real reviews.",
      6 => "Reply to happy and unhappy reviews honestly, decide what goes in public or private, and check AI drafts before posting.",
      7 => "Ask every delivered buyer for an honest review at the right time, with no rewards, and measure your rating rate.",
      8 => "Spot the signals of fake or suspicious reviews, report them to the marketplace with evidence, and never write fake reviews.",
      9 => "Learn the main reasons products are returned, build a reason codebook, and use AI and a spreadsheet to count return reasons.",
      10 => "Write a clear return policy, show the details Indian rules expect (not legal advice), and send a clear message at each return step.",
      11 => "Match each return reason to a fix at the source: garment size charts, true-colour photos, exact descriptions, packing and quality checks, with targets and savings.",
      12 => "Cut RTO on COD orders with address checks, order confirmation, honest prepaid nudges (no dark patterns) and a simple, fair risk score.",
      13 => "Learn the common signals of return abuse, use AI to list cases for review, and handle every flag fairly, with evidence and no accusations.",
      14 => "Slice return data to find root causes, prove each step with the 5 whys, agree fixes with suppliers and track them against targets.",
      15 => "Build Zari & Co's full reviews and returns plan: rank costs, draft replies, set owners and targets, and work out the savings correctly."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "At Zari & Co, what is an RTO order?", opts: ["A) An order the buyer received and then sent back", "B) A shipped order that was not delivered and came back to the seller", "C) An order cancelled before it was packed"], ans: "B" },
      2 => { type: "true_false", q: "It is fine to let AI block buyers it flags as possible return fraud, without a person checking the evidence.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Zari & Co shipped 4,000 orders, had 480 RTO and 528 returns. What is the return rate?", opts: ["A) 13.2%", "B) 12.0%", "C) 15.0%"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which of these review practices is safe?", opts: ["A) Sending the same polite review request to every buyer after delivery", "B) Offering Rs 100 off the next order for a 5-star review", "C) Asking staff to post reviews of new products"], ans: "A" },
      5 => { type: "multiple_choice", q: "The AI says 5 reviews complain that the saree colour differs from the photo. What should you do first?", opts: ["A) Change the photos right away", "B) Open the reviews it listed and check that each one really says this", "C) Ask the AI to write a longer summary"], ans: "B" },
      6 => { type: "multiple_choice", q: "A buyer writes a 1-star review: \"Refund not received after 10 days.\" What is the best response?", opts: ["A) Post the order ID and refund details in a public reply", "B) Offer a discount if the buyer removes the review", "C) Say sorry in a short public reply, then check the order in a private chat"], ans: "C" },
      7 => { type: "true_false", q: "Sending review requests only to buyers who kept their order, and not to buyers who returned it, is an honest way to ask for reviews.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Five unverified 1-star reviews with the same words appear within an hour. What should the seller do?", opts: ["A) Report them to the marketplace with the times and signals, and let the marketplace decide", "B) Ask staff to post 5-star reviews to balance the rating", "C) Post fake 1-star reviews on the rival brand's listing"], ans: "A" },
      9 => { type: "multiple_choice", q: "Using Zari & Co's codebook, how should you code \"Listing says dupatta is 2.5 m, it is only 2.1 m\"?", opts: ["A) SIZE", "B) NOT_AS_DESCRIBED", "C) CHANGED_MIND"], ans: "B" },
      10 => { type: "multiple_choice", q: "Why is \"No returns on sale items\" a risky line in a return policy?", opts: ["A) Sale items never get returned anyway", "B) Marketplaces do not allow sales", "C) A faulty or not-as-described item should still be taken back, even if it was on sale"], ans: "C" },
      11 => { type: "multiple_choice", q: "Why does a garment size chart prevent more size returns than a body size chart?", opts: ["A) It uses bigger numbers, so buyers order a larger size", "B) It gives the real measurements of the clothes, so buyers can compare with clothes they own", "C) It lets the AI choose the size for each buyer"], ans: "B" },
      12 => { type: "multiple_choice", q: "An AI suggests Rs 30 off every prepaid order to cut COD RTO. What should you do first?", opts: ["A) Add the offer with a countdown timer to create urgency", "B) Accept it, because prepaid orders almost never fail", "C) Work out the cost: the discount goes to all prepaid buyers, not only those who switch"], ans: "C" },
      13 => { type: "true_false", q: "If a buyer has returned three orders in 60 days, you should block the account, because this proves return fraud.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "KS-101 seam returns were 25 of 500 sets from batch B-07 and 3 of 301 from batch B-06. What does this suggest?", opts: ["A) The problem is linked to batch B-07, so look at how that batch was made", "B) Buyers of B-07 are more careless", "C) Nothing, because counts cannot be compared"], ans: "A" },
      15 => { type: "multiple_choice", q: "Why is it wrong to simply add up the savings of every fix in the plan?", opts: ["A) Because AI savings are always too low", "B) Because fewer RTO orders means more delivered orders, and some of them will be returned", "C) Because savings should never be written in rupees"], ans: "B" }
    }

    AiReviewsReturnsContent::LESSONS.each do |position, data|
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

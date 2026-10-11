require_relative "../ai_store_growth_content"

namespace :content do
  desc "Create AI for Store Growth course and populate all 15 lessons"
  task ai_store_growth: :environment do
    course = Course.find_or_create_by!(slug: "ai-store-growth") do |c|
      c.title       = "AI for Store Growth"
      c.description = "Use AI to grow your online store. Understand your numbers, improve conversion, recommend the right products, win back abandoned carts, personalise emails and messages, run sales events and build repeat customers."
      c.color       = "#059669"
      c.icon        = "🚀"
      c.position    = 62
      c.published   = true
    end
    course.update!(description: "Use AI to grow your online store. Understand your numbers, improve conversion, recommend the right products, win back abandoned carts, personalise emails and messages, run sales events and build repeat customers.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Online Stores Grow",
      2 => "Where AI Helps Store Growth",
      3 => "Key E-commerce Metrics",
      4 => "Knowing Your Customers",
      5 => "Improving Your Store's Conversion",
      6 => "Product Recommendations",
      7 => "Bundles, Upsells and Cross-Sells",
      8 => "Abandoned Cart Recovery",
      9 => "Personalised Emails and Messages",
      10 => "Sales Events and Festival Campaigns",
      11 => "Loyalty and Repeat Purchases",
      12 => "Reviews, UGC and Social Proof",
      13 => "Testing and Measuring Growth Ideas",
      14 => "Growth Without Dark Patterns",
      15 => "Capstone: A 90-Day Growth Plan"
    }

    descriptions = {
      1 => "Learn the growth equation: sessions × conversion rate × average order value, plus repeat purchases, and use AI to find the weak lever.",
      2 => "See the five areas where AI helps a store grow, and the risks to manage: wrong numbers, invented claims, privacy and dark patterns.",
      3 => "Calculate conversion rate, AOV, CAC, repeat rate, CLV, RTO rate and return rate in ₹, and check AI's maths in a spreadsheet.",
      4 => "Group customers by behaviour with the RFM idea, build segments in a spreadsheet, and turn them into personas and actions with AI.",
      5 => "Find where shoppers leave your store and fix product pages, trust signals, checkout, COD and payments honestly, with help from AI.",
      6 => "Learn the main types of product recommendations, how recommendation engines work in plain words, and how to find real pairs with the also-bought rate and lift.",
      7 => "Design bundles, upsells and cross-sells that raise order value, check their real profit in a spreadsheet, and keep price anchors honest.",
      8 => "Find why carts are abandoned, send helpful email, SMS and WhatsApp reminders only with consent, and measure the real result with a holdout group.",
      9 => "Plan welcome, post-purchase and win-back flows for each customer segment, and use AI to draft personalised messages that you check before sending.",
      10 => "Plan a Navratri or Diwali campaign with a clear goal, work out what each discount really costs, and keep every price and deadline honest.",
      11 => "Bring customers back with loyalty points, subscriptions, reviews and referrals, and work out what each reward costs before you launch.",
      12 => "Ask for reviews honestly, use customer photos with permission, and use AI to find themes in reviews, without fake or hidden reviews.",
      13 => "Run fair A/B tests, avoid before-and-after mistakes, and check lift, p-values and sample size in a spreadsheet.",
      14 => "Learn the 13 dark patterns in India's CCPA guidelines, audit your store with AI and use honest pricing and real consent.",
      15 => "Build a 90-day growth plan for Zari & Co that reaches the festive target with honest levers, checked numbers and a weekly review."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Zari & Co has 80,000 sessions, a 1.0% conversion rate and an AOV of ₹1,800 in a month. What is its revenue for that month?", opts: ["A) ₹1,44,000", "B) ₹14,40,000", "C) ₹8,00,000"], ans: "B" },
      2 => { type: "true_false", q: "It is fine to show a countdown timer for a sale that has no real end date, because it helps shoppers decide faster.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "A store shipped 800 orders. 80 came back without being delivered (RTO) and 72 were returned after delivery. What is the return rate?", opts: ["A) 10% (72 ÷ 720 delivered orders)", "B) 9% (72 ÷ 800 shipped orders)", "C) 19% (152 ÷ 800 shipped orders)"], ans: "A" },
      4 => { type: "multiple_choice", q: "In RFM customer segments, what does the R stand for?", opts: ["A) Revenue", "B) Referrals", "C) Recency: days since the last order"], ans: "C" },
      5 => { type: "multiple_choice", q: "Many COD parcels are refused at the door. Which fix is honest and could lower the RTO rate?", opts: ["A) Hide the COD option without telling shoppers", "B) Show UPI clearly and confirm COD orders by message before shipping", "C) Add a COD fee that appears only at the last payment step"], ans: "B" },
      6 => { type: "multiple_choice", q: "Of 500 orders with a saree, 150 also had a blouse. Blouses are in 10% of all orders. What is the lift of this pair?", opts: ["A) 0.3", "B) 1.5", "C) 3.0"], ans: "C" },
      7 => { type: "multiple_choice", q: "A saree costs ₹2,499 and a blouse ₹899. Which bundle price anchor is honest?", opts: ["A) \"₹3,398 if bought separately, ₹3,299 as a bundle\"", "B) \"MRP ₹6,999, now ₹3,299 (53% off)\" when it never sold at ₹6,999", "C) \"Only 2 bundles left\" when 140 are in stock"], ans: "A" },
      8 => { type: "true_false", q: "If a shopper types a phone number at checkout, you may send them WhatsApp marketing reminders even if they did not agree to get messages.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Which flow should send a care guide two days after a customer's saree is delivered?", opts: ["A) Welcome", "B) Post-purchase", "C) Win-back"], ans: "B" },
      10 => { type: "multiple_choice", q: "Your gross margin is about 50%. You give 20% off. About how many more units must you sell to keep the same gross profit?", opts: ["A) 20% more", "B) 40% more", "C) 66.7% more"], ans: "C" },
      11 => { type: "multiple_choice", q: "A loyalty plan gives 5% back in points on ₹45,24,000 of yearly member orders. If every point is used, what does it cost?", opts: ["A) ₹22,620", "B) ₹2,26,200", "C) ₹4,52,400"], ans: "B" },
      12 => { type: "true_false", q: "It is fine to hide 1 to 3 star reviews if the product is mostly liked, because it shows the true average.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "In an A/B test, version A converts at 2.4% and version B at 3.0%, but the p-value is 0.079. What should you conclude at the usual 0.05 level?", opts: ["A) B is proven better, so stop the test", "B) A is better", "C) B looks better, but the test needs more visitors before you can trust it"], ans: "C" },
      14 => { type: "multiple_choice", q: "A ₹49 COD fee appears only on the last payment step. Which dark pattern is this?", opts: ["A) Drip pricing", "B) Nagging", "C) Bait and switch"], ans: "A" },
      15 => { type: "multiple_choice", q: "Zari & Co targets 968 orders in a festive month. Ad spend of ₹4,00,000 at a CAC of ₹600 wins about 667 new customers. About how many orders must come from returning customers?", opts: ["A) 200", "B) 667", "C) 301"], ans: "C" }
    }

    AiStoreGrowthContent::LESSONS.each do |position, data|
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

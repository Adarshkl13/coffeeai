require_relative "../ai_pricing_inventory_content"

namespace :content do
  desc "Create AI for Pricing and Inventory course and populate all 15 lessons"
  task ai_pricing_inventory: :environment do
    course = Course.find_or_create_by!(slug: "ai-pricing-inventory") do |c|
      c.title       = "AI for Pricing and Inventory"
      c.description = "Use AI and spreadsheets to price products well and keep the right stock. Work out costs and margins, compare competitor prices, plan discounts, forecast demand, set reorder points and safety stock, and avoid stockouts and dead stock."
      c.color       = "#047857"
      c.icon        = "📦"
      c.position    = 64
      c.published   = true
    end
    course.update!(description: "Use AI and spreadsheets to price products well and keep the right stock. Work out costs and margins, compare competitor prices, plan discounts, forecast demand, set reorder points and safety stock, and avoid stockouts and dead stock.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Pricing and Inventory Basics",
      2 => "Where AI Helps with Pricing and Stock",
      3 => "Costs and Unit Economics",
      4 => "Margins and Break-Even",
      5 => "Pricing Strategies",
      6 => "Competitor Price Research",
      7 => "Discounts and Promotions",
      8 => "Dynamic Pricing and Price Rules",
      9 => "Demand Forecasting",
      10 => "Reorder Points and Safety Stock",
      11 => "ABC Analysis and Stock Priorities",
      12 => "Stockouts, Overstock and Dead Stock",
      13 => "Multi-Channel Stock and Warehouses",
      14 => "Supplier Planning and Purchase Orders",
      15 => "Capstone: Price and Stock Plan for a Festival Season"
    }

    descriptions = {
      1 => "Learn the key price and stock numbers, such as margin, contribution, stock cover and lead time, and see how they decide profit.",
      2 => "See which price and stock jobs AI does well, which you must decide, and how to avoid wrong maths, made-up facts, unfair prices and data leaks.",
      3 => "List every cost of one order, including GST, fees, shipping, returns, RTO and ads, and work out contribution per order in a spreadsheet.",
      4 => "Calculate gross margin and markup correctly, avoid the classic mix-up, and work out break-even orders with AI and a spreadsheet.",
      5 => "Use cost-plus, value-based, competitive and psychological pricing and bundles to choose a price, and keep MRP and discounts honest.",
      6 => "Collect competitor prices fairly, compare like with like using the delivered price and the median, and draw a price positioning map.",
      7 => "Work out what a discount really costs and how many extra orders it needs, plan festival promotions around your stock, and keep MRP and offers honest.",
      8 => "Write price rules for marketplaces with safe guardrails, test them in a spreadsheet, and keep dynamic pricing fair for shoppers.",
      9 => "Forecast festival demand from six months of sales, using moving averages, seasonality and a clearly labelled festival uplift in a spreadsheet.",
      10 => "Work out lead-time demand, safety stock and reorder points in a spreadsheet, and check order dates against the festival calendar.",
      11 => "Rank your products by sales value with ABC analysis in a spreadsheet, and decide how closely to manage A, B and C items.",
      12 => "Put a rupee cost on stockouts, overstock and dead stock, and plan honest clearance for leftover stock with AI.",
      13 => "Run one stock across your own store and marketplaces, set buffers, catch sync errors and decide when to use marketplace fulfilment.",
      14 => "Turn a forecast into purchase orders using lead times, MOQs and reorder dates, and draft clear supplier messages with AI.",
      15 => "Build a full festive price and stock plan: unit economics, priorities, forecast, offers, purchase orders and clearance triggers."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Rangrez Crafts has 240 Buta Bagh sets in stock and sold 122 in the 30 days of September. About how many days of stock cover does it have?", opts: ["A) About 20 days", "B) About 59 days", "C) About 122 days"], ans: "B" },
      2 => { type: "true_false", q: "If an AI assistant gives you a margin figure, you can use it without checking, because AI tools never make maths mistakes.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "An Amazon order has net revenue ₹1,809 (after GST), fee ₹323, product cost ₹720, packaging ₹40 and shipping ₹90. What is the contribution per kept order?", opts: ["A) ₹636", "B) ₹1,089", "C) ₹1,179"], ans: "A" },
      4 => { type: "multiple_choice", q: "A product costs ₹720. Kabir adds a 50% markup, so the net price is ₹1,080. What is the gross margin?", opts: ["A) 50%", "B) 25%", "C) 33.3%"], ans: "C" },
      5 => { type: "multiple_choice", q: "Which of these is an honest pricing practice?", opts: ["A) Raising the MRP just before a sale so the discount looks bigger", "B) Showing the total price, with any extra charges, before the shopper pays", "C) Showing \"Only 2 left!\" when 240 are in stock"], ans: "B" },
      6 => { type: "multiple_choice", q: "Neha sells a hand block-printed, cotton, double bedsheet set with 2 pillow covers. Which competitor listing should she leave out of her price comparison?", opts: ["A) A hand block, cotton, double set with 2 covers at ₹1,749 plus ₹50 delivery", "B) A machine screen-printed, poly-cotton, double set at ₹1,199", "C) A hand block, cotton, double set with 2 covers at ₹2,099"], ans: "B" },
      7 => { type: "multiple_choice", q: "A Buta Bagh order on Amazon leaves about ₹444 at ₹1,899 and about ₹312 at ₹1,699. About how many more orders does the ₹1,699 price need to earn the same total?", opts: ["A) About 10% more", "B) About 30% more", "C) About 42% more"], ans: "C" },
      8 => { type: "true_false", q: "A good repricing rule should be allowed to follow competitors down to any price, so that you never lose a sale.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Why can a plain 6-month average forecast too few Buta Bagh sales for the weeks before Diwali?", opts: ["A) It ignores the recent rise in sales and the festival uplift", "B) It uses too many decimal places", "C) Averages always forecast too many sales"], ans: "A" },
      10 => { type: "multiple_choice", q: "Daily demand is 8.2 units, the lead time is 14 days and the safety stock is 57.4 units. What is the reorder point?", opts: ["A) 71.6", "B) 172.2", "C) 114.8"], ans: "B" },
      11 => { type: "multiple_choice", q: "In an ABC analysis, products are sorted by sales value and their shares are added up. Rangrez uses: up to 70% cumulative = A, up to 90% = B. A product's cumulative share is 77.8%. Which class is it?", opts: ["A) Class A", "B) Class B", "C) Class C"], ans: "B" },
      12 => { type: "multiple_choice", q: "Neel Kamal cushion covers will be short by about 132 sets before Diwali. Each order earns about ₹293 after all costs. What is the best estimate of the stockout cost?", opts: ["A) About ₹38,600 of lost contribution", "B) About ₹1,31,900, the lost sales at ₹999 each", "C) Nothing, because the stock was never bought"], ans: "A" },
      13 => { type: "true_false", q: "Stock you send to a marketplace fulfilment warehouse can also be used to fill orders from your own Shopify store.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Buta Bagh needs 35 more sets before Diwali. The supplier's MOQ is 100 sets. What should the purchase order be, at least?", opts: ["A) 35 sets", "B) 65 sets", "C) 100 sets"], ans: "C" },
      15 => { type: "multiple_choice", q: "Potli bags only just have enough stock for Diwali, even with the new order. What is the best Diwali price plan for them?", opts: ["A) Give 20% off to boost sales", "B) Keep the full price, because a discount could cause a stockout", "C) Raise the MRP and show a bigger discount"], ans: "B" }
    }

    AiPricingInventoryContent::LESSONS.each do |position, data|
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

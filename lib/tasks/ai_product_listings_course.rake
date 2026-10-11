require_relative "../ai_product_listings_content"

namespace :content do
  desc "Create AI for Product Listings course and populate all 15 lessons"
  task ai_product_listings: :environment do
    course = Course.find_or_create_by!(slug: "ai-product-listings") do |c|
      c.title       = "AI for Product Listings"
      c.description = "Use AI to write product listings that sell honestly. Research keywords, write titles, bullet points and descriptions, fill attributes, follow Amazon and Flipkart rules and India's labelling laws, and manage a large catalogue."
      c.color       = "#10b981"
      c.icon        = "🏷️"
      c.position    = 61
      c.published   = true
    end
    course.update!(description: "Use AI to write product listings that sell honestly. Research keywords, write titles, bullet points and descriptions, fill attributes, follow Amazon and Flipkart rules and India's labelling laws, and manage a large catalogue.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Makes a Good Product Listing",
      2 => "Where AI Helps with Listings",
      3 => "Knowing Your Product and Buyer",
      4 => "Keyword Research for Marketplaces",
      5 => "Writing Product Titles",
      6 => "Bullet Points and Key Features",
      7 => "Product Descriptions",
      8 => "Attributes and Filters",
      9 => "Legal Information on Listings",
      10 => "Amazon and Flipkart Listing Rules",
      11 => "Your Own Store: Shopify and SEO",
      12 => "Listings in Indian Languages",
      13 => "Managing a Big Catalogue with Spreadsheets",
      14 => "Improving Listings with Data",
      15 => "Capstone: List a New Product Everywhere"
    }

    descriptions = {
      1 => "Learn the parts of a product listing, what each part does for the buyer, and why honest listings sell better.",
      2 => "See which listing jobs AI does well, and learn to catch made-up features, wrong numbers and rule breaks.",
      3 => "Build a product fact sheet with proof for every claim, and turn buyer questions into a plan for your listing.",
      4 => "Find the words buyers really search for, use long-tail keywords, and avoid keyword stuffing.",
      5 => "Write clear product titles with a simple formula, compare weak and strong titles, and check length and rules yourself.",
      6 => "Turn specs into clear benefits, write five honest bullet points, and remove claims you cannot prove.",
      7 => "Write product descriptions that tell a true story in your brand voice, and plan rich content such as Amazon A+ Content.",
      8 => "Fill category attributes completely and correctly, so buyers who use filters can find your product.",
      9 => "Learn which legal details Indian listings must show, such as MRP, net quantity and seller details, and how to show a textile set's net quantity.",
      10 => "Find Amazon and Flipkart listing rules in their help pages, keep a dated rule sheet, and check listings with AI against the real rules.",
      11 => "Set up a Shopify product page for search: SEO title, meta description, URL, alt text, collections and the idea of structured data.",
      12 => "Write a short Hindi listing with AI, keep every number and fact exact, and get it checked by a native speaker.",
      13 => "Manage 8 product variants in one master spreadsheet, with formulas that build titles, work out discounts and flag problems in AI text.",
      14 => "Read sessions, conversion rate, search terms, reviews and questions, then test listing changes fairly.",
      15 => "Build a complete launch pack for Amazon, Flipkart and a Shopify store from one fact sheet, with a checklist for launch day."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which part of a listing do marketplaces use to power search filters such as size, colour and material?", opts: ["A) The description", "B) The attributes", "C) The reviews"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool writes a product feature in a confident way, you can publish it without checking your fact sheet.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Neha's supplier says the dyes are natural, but she has no papers or test report. What should her listing say about natural dyes?", opts: ["A) Nothing, until she has proof", "B) \"Made with natural dyes\"", "C) \"Probably natural dyes\""], ans: "A" },
      4 => { type: "multiple_choice", q: "Which of these is a long-tail keyword?", opts: ["A) bedsheet", "B) cotton bedsheet", "C) blue hand block print cotton double bedsheet with 2 pillow covers"], ans: "C" },
      5 => { type: "multiple_choice", q: "What is the safest way to check the length of a product title?", opts: ["A) Ask the AI tool to count the characters", "B) Guess from how long it looks", "C) Use =LEN() in a spreadsheet and compare with the current style guide"], ans: "C" },
      6 => { type: "multiple_choice", q: "Neha's wash test showed slight colour bleed in the first wash. What should her care bullet say?", opts: ["A) \"Colourfast print that never fades\"", "B) \"Wash separately for the first 2 washes, as slight colour bleed is normal for hand block prints\"", "C) Nothing about colour at all"], ans: "B" },
      7 => { type: "multiple_choice", q: "Which line is the best example of storytelling with facts in a product description?", opts: ["A) \"Crafted by legendary master artisans using a secret tradition\"", "B) \"A luxurious feel you will love\"", "C) \"Printed by hand with wooden blocks at our own workshop in Rajasthan\""], ans: "C" },
      8 => { type: "true_false", q: "If you do not know a product attribute, such as shrinkage, it is better to let the AI guess a value than to leave the field blank.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "How should Neha declare the net quantity of her bedsheet set on the listing?", opts: ["A) 1 set (3 pieces), with the finished size of each piece in cm", "B) Net weight: 850 g", "C) About 3 pieces, approx. 229 x 274 cm"], ans: "A" },
      10 => { type: "multiple_choice", q: "An AI tool tells you the exact title length limit for Amazon.in. What should you do?", opts: ["A) Use the number, because AI tools are usually right", "B) Check the current style guide for your category in Seller Central help", "C) Ask a second AI tool and use the average"], ans: "B" },
      11 => { type: "multiple_choice", q: "What does structured data on a Shopify product page do?", opts: ["A) It makes Google show star ratings for your product every time", "B) It gives search engines hidden labels with page facts such as price and availability", "C) It lets you add ratings that buyers cannot see on the page"], ans: "B" },
      12 => { type: "true_false", q: "If an AI translation into Hindi reads well, you can publish it without a native speaker checking it.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Neha's check formula shows PRICE ABOVE MRP for one variant. What should she do?", opts: ["A) Upload it anyway, because the marketplace will fix it", "B) Ask AI to rewrite the title for that row", "C) Fix the typed price before upload, because the price must not be above the MRP"], ans: "C" },
      14 => { type: "multiple_choice", q: "A search term gets many clicks but no orders. What is the best first step?", opts: ["A) Check if the listing clearly answers what those buyers want, such as the exact size", "B) Add the search term to the title three more times", "C) Remove the honest care note so more people buy"], ans: "A" },
      15 => { type: "multiple_choice", q: "In a launch pack, what should the Amazon, Flipkart and Shopify listings all be built from?", opts: ["A) The best-selling competitor's listing", "B) The same fact sheet of proven facts and one keyword map", "C) Whatever the AI thinks buyers want to hear"], ans: "B" }
    }

    AiProductListingsContent::LESSONS.each do |position, data|
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

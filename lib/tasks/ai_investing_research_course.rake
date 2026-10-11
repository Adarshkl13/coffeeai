require_relative "../ai_investing_research_content"

namespace :content do
  desc "Create AI for Investing and Stock Research course and populate all 15 lessons"
  task ai_investing_research: :environment do
    course = Course.find_or_create_by!(slug: "ai-investing-research") do |c|
      c.title       = "AI for Investing and Stock Research"
      c.description = "Learn how to use AI as a research helper for investing. Understand markets and mutual funds, read company reports, compare stocks with key ratios, read news carefully, check your portfolio's risk and spot tips and scams. Education only, not investment advice."
      c.color       = "#84cc16"
      c.icon        = "💹"
      c.position    = 43
      c.published   = true
    end
    course.update!(description: "Learn how to use AI as a research helper for investing. Understand markets and mutual funds, read company reports, compare stocks with key ratios, read news carefully, check your portfolio's risk and spot tips and scams. Education only, not investment advice.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Markets and Investing Work",
      2 => "What AI Can and Cannot Do for Investors",
      3 => "Risk, Return and Time",
      4 => "Prompts for Investment Research",
      5 => "Mutual Funds and Index Funds",
      6 => "Reading a Company's Annual Report",
      7 => "Key Stock Ratios",
      8 => "Comparing Companies in a Sector",
      9 => "Reading Financial News Carefully",
      10 => "Diversification and Asset Allocation",
      11 => "Reviewing a Portfolio with AI",
      12 => "Behavioural Mistakes",
      13 => "Tips, Scams and Fake Advice",
      14 => "Building Your Research Checklist",
      15 => "Capstone: Research a Company Like an Analyst"
    }

    descriptions = {
      1 => "Learn what shares, bonds and mutual funds are, and what exchanges, brokers, demat accounts and SEBI do.",
      2 => "See where AI helps investors and where it fails, and learn to check its answers in official sources.",
      3 => "Understand volatility, drawdowns, time horizon and risk profile with simple made-up numbers.",
      4 => "Write neutral research prompts that ask for both sides and for the facts you must check.",
      5 => "Learn fund types, NAV, expense ratio, SIPs and index funds, and compare funds with AI's help.",
      6 => "Learn the main parts of a company's annual report and use AI to summarise one section at a time, then check every number.",
      7 => "Work out EPS, P/E, P/B, ROE, debt-to-equity and dividend yield for two made-up companies in a spreadsheet, and check AI's maths.",
      8 => "Choose fair peers, build a comparison table and think about quality compared with price, without letting AI pick a winner.",
      9 => "Separate facts, opinions and hype in financial news, use AI to read the tone, and check facts in the original filings.",
      10 => "Learn how diversification and asset allocation spread risk, and calculate a simple rebalancing plan with a spreadsheet and AI.",
      11 => "Review a made-up portfolio with a spreadsheet and AI: check concentration, overlap between funds, costs and fit with your goal.",
      12 => "Learn the common behavioural mistakes, such as panic selling, FOMO and chasing tips, and build a simple checklist to use before you act.",
      13 => "Learn how tipster scams, pump-and-dump schemes, fake apps and deepfake videos work, and how to check anyone with SEBI's own tools.",
      14 => "Build a repeatable research checklist and journal in a spreadsheet, with AI's help, for any investment idea.",
      15 => "Research a made-up company like an analyst: business summary, ratios, peer comparison, risks and a neutral research note with no recommendation."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does SEBI do in the Indian market?", opts: ["A) It sells shares to investors", "B) It regulates exchanges, brokers and mutual funds", "C) It holds shares in demat accounts"], ans: "B" },
      2 => { type: "true_false", q: "If an AI tool gives a share price with confidence, you can use it without checking an official source.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "An investment falls 25%, from Rs 1,00,000 to Rs 75,000. What gain does it need to get back to Rs 1,00,000?", opts: ["A) 25%", "B) 30%", "C) About 33.3%"], ans: "C" },
      4 => { type: "multiple_choice", q: "Which of these is a neutral research question?", opts: ["A) What could help or hurt Coastal Cement's profits?", "B) Coastal Cement will go up, right?", "C) Why is Coastal Cement a great buy?"], ans: "A" },
      5 => { type: "multiple_choice", q: "A fund has an expense ratio of 0.5%. About how much does it cost per year on Rs 1,00,000?", opts: ["A) Rs 50", "B) Rs 500", "C) Rs 5,000"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which part of an annual report is where management explains the business, the year's results, the risks and its plans?", opts: ["A) The auditor's report", "B) Management Discussion and Analysis (MD&A)", "C) The notice of the annual general meeting"], ans: "B" },
      7 => { type: "multiple_choice", q: "A made-up company has a share price of ₹270 and EPS of ₹9. What is its P/E ratio?", opts: ["A) 30", "B) 24.3", "C) 2,430"], ans: "A" },
      8 => { type: "true_false", q: "Comparing the P/E of a food company with the P/E of a cement company is a fair way to see which share is cheaper.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Which statement from a news article is a fact you can check in a company filing?", opts: ["A) \"This share is the next multibagger.\"", "B) \"An analyst expects profit to double in two years.\"", "C) \"The company reported quarterly revenue of ₹640 crore.\""], ans: "C" },
      10 => { type: "multiple_choice", q: "A couple's target is 60% equity, but after a good year equity is 65% of their portfolio. What does rebalancing mean here?", opts: ["A) Moving money or new SIPs so equity comes back near 60%", "B) Buying more equity because it went up", "C) Selling all investments and keeping cash"], ans: "A" },
      11 => { type: "multiple_choice", q: "Fund A holds Navkar Bank at 9% and Fund B holds it at 8%. How much does Navkar Bank add to the overlap between the two funds?", opts: ["A) 17%", "B) 8%", "C) 1%"], ans: "B" },
      12 => { type: "multiple_choice", q: "The market falls 12% in a month. Ravi's goal is 12 years away, but he wants to stop his SIP and sell everything. Which mistake is this most likely?", opts: ["A) Panic selling driven by fear", "B) Overtrading driven by greed", "C) Confirmation bias"], ans: "A" },
      13 => { type: "true_false", q: "A message that promises \"guaranteed 5% profit every week\" and asks for payment to a personal UPI ID is normal for a SEBI-registered adviser.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Why should you write \"no action\" decisions in your research journal too?", opts: ["A) Because SEBI requires every investor to keep a journal", "B) Because AI needs the journal to predict prices", "C) Because you can later compare what you expected with what really happened"], ans: "C" },
      15 => { type: "multiple_choice", q: "Coastal Cement Ltd (made up) has a net profit of ₹240 crore and 20 crore shares. The share price is ₹300. What is its P/E ratio?", opts: ["A) 12", "B) 25", "C) 3.75"], ans: "B" }
    }

    AiInvestingResearchContent::LESSONS.each do |position, data|
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

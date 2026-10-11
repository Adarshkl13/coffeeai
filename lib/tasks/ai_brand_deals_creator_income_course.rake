require_relative "../ai_brand_deals_creator_income_content"

namespace :content do
  desc "Create AI for Brand Deals and Creator Income course and populate all 15 lessons"
  task ai_brand_deals_creator_income: :environment do
    course = Course.find_or_create_by!(slug: "ai-brand-deals-creator-income") do |c|
      c.title       = "AI for Brand Deals and Creator Income"
      c.description = "Use AI to earn more from your content honestly. Map your income streams, build a media kit, price your work, pitch brands, read contracts, deliver and report on campaigns, disclose ads correctly and manage money and taxes in general terms."
      c.color       = "#a855f7"
      c.icon        = "🤝"
      c.position    = 87
      c.published   = true
    end
    course.update!(description: "Use AI to earn more from your content honestly. Map your income streams, build a media kit, price your work, pitch brands, read contracts, deliver and report on campaigns, disclose ads correctly and manage money and taxes in general terms.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Creators Earn Money",
      2 => "Where AI Helps Creators Earn",
      3 => "Rules You Must Follow",
      4 => "Knowing Your Audience and Numbers",
      5 => "Building a Media Kit",
      6 => "Pricing Your Work",
      7 => "Finding and Pitching Brands",
      8 => "Negotiating Deals",
      9 => "Reading Creator Contracts",
      10 => "Creating Sponsored Content That Works",
      11 => "Reporting Results to Brands",
      12 => "Affiliate Income and Your Own Products",
      13 => "Money, Invoices and Taxes",
      14 => "Building Long-Term Brand Partnerships",
      15 => "Capstone: A Creator Business Plan for Tiffin Tales"
    }

    descriptions = {
      1 => "Learn the six main ways creators earn money, which ones fit your size, and how to build a simple income map.",
      2 => "See where AI saves time in brand deals, from research to invoices, and the risks of fake numbers, over-promising and contracts.",
      3 => "Learn when and how to label sponsored posts under the ASCI and CCPA rules, and why you must check brand claims. General education, not legal advice.",
      4 => "Understand reach, views, engagement rate and audience data, calculate them correctly and show honest proof to brands.",
      5 => "Build an honest media kit with a bio, audience, numbers, past work and packages, using AI for the words and your dashboards for the facts.",
      6 => "Build a rate card from your real time and costs, and price packages, usage rights and exclusivity so you never undercharge.",
      7 => "Choose brands that truly fit, research them with AI and write a short, honest pitch email, DM and follow-up.",
      8 => "Do the maths on a brand offer and send a polite counter-offer that covers scope, usage rights, exclusivity, payment and revisions.",
      9 => "Learn the key clauses in a creator contract, spot red flags and prepare questions for a lawyer. General education, not legal advice.",
      10 => "Read a brand brief, keep your own voice, test every claim, label each format correctly and say no to health claims you cannot prove.",
      11 => "Collect the right numbers, build an honest one-page campaign report with AI, and explain weak results clearly.",
      12 => "Earn from affiliate links with clear labels, and plan e-books, workshops and memberships with honest break-even maths.",
      13 => "Send clear invoices, track payments and learn GST, TDS, gifted products and advance tax in general words. Not tax advice: ask a CA.",
      14 => "Turn one good campaign into repeat work or an ambassador deal, with fair pricing, narrow exclusivity and your audience's trust protected.",
      15 => "Bring it all together in a creator business plan for Tiffin Tales, with an honest goal check, an hours check and a monthly routine."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Riya earns a small commission when a viewer buys a knife set through her special link. Which income stream is this?", opts: ["A) Ad revenue", "B) Affiliate income", "C) A workshop"], ans: "B" },
      2 => { type: "true_false", q: "If you do not have data about your audience, it is fine to let AI fill in numbers that sound realistic.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "SteelNest sends Riya a free tiffin set she did not ask for, and she shows it in a Reel. What do the ASCI guidelines expect?", opts: ["A) No label, because she did not ask for the gift", "B) A label in her Instagram bio only", "C) A clear, upfront label such as \"Free gift\" or \"Ad\""], ans: "C" },
      4 => { type: "multiple_choice", q: "An average Reel has 1,444 engagements, a reach of 14,800 and 31,200 followers. What is the engagement rate by reach?", opts: ["A) About 4.6%", "B) About 9.8%", "C) About 47.4%"], ans: "B" },
      5 => { type: "multiple_choice", q: "Which line is honest for a media kit?", opts: ["A) \"Average Reel reach 14,800 accounts (1 June to 31 August 2026)\"", "B) \"50K+ followers\", adding YouTube and Instagram together", "C) \"Average 1.2 lakh views\", using the one viral video"], ans: "A" },
      6 => { type: "multiple_choice", q: "Riya's Reel takes 7 hours, her rate is ₹670 an hour and props cost ₹800. What is her floor price for the Reel?", opts: ["A) ₹5,490", "B) ₹4,690", "C) ₹11,000"], ans: "A" },
      7 => { type: "multiple_choice", q: "An \"agency\" asks Riya to pay a ₹2,000 registration fee before it sends her brand deals. What should she do?", opts: ["A) Pay it, because agencies need to cover costs", "B) Ask AI if the agency is real and then pay", "C) Skip it, because real brands and agencies do not charge creators to get deals"], ans: "C" },
      8 => { type: "true_false", q: "If a brand's budget is too small for your rate card, the best counter-offer is always to lower your price until it fits.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "SteelNest's draft contract says Riya \"guarantees a minimum of 50,000 views\". What is the best response?", opts: ["A) Sign it, because 50,000 views is a small number", "B) Ask to delete it, because she can promise the work but not the results", "C) Accept it if the brand pays a little more"], ans: "B" },
      10 => { type: "multiple_choice", q: "SteelNest's brief says the tiffin keeps food warm for 4 hours. In Riya's own test, it stayed warm for 3 hours. What should she say?", opts: ["A) \"Keeps food warm for 4 hours\", because the brand said so", "B) Nothing about warmth at all, ever", "C) \"In my test, it was still warm after 3 hours\""], ans: "C" },
      11 => { type: "multiple_choice", q: "Riya's video got 23,900 views and her Reel reached 19,600 accounts. What should her report to SteelNest say?", opts: ["A) \"Total reach 43,500 people\"", "B) The two numbers separately, each compared with her own average", "C) \"About 50,000 people reached\", rounded up to sound better"], ans: "B" },
      12 => { type: "multiple_choice", q: "Riya's affiliate links got 1,400 clicks and 84 orders. What is the conversion rate?", opts: ["A) 6%", "B) 8.4%", "C) 16.7%"], ans: "A" },
      13 => { type: "true_false", q: "TDS that a brand deducts from your fee is an extra tax on top of your income tax.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "SteelNest wants exclusivity in \"all kitchenware\" for 6 months. Which counter-offer fits Riya's rules?", opts: ["A) Accept it, because the deal is long", "B) Refuse any exclusivity at all", "C) Non-electric steel tiffin boxes only, for 90 days, at an extra fee"], ans: "C" },
      15 => { type: "multiple_choice", q: "Riya's plan totals ₹84,000 a month, but her goal needs ₹93,500. What should she do?", opts: ["A) List real options to close the ₹9,500 gap, or reach the goal later", "B) Ask AI to assume 30% YouTube growth so the plan reaches the goal", "C) Add followers from YouTube and Instagram to raise her rates"], ans: "A" }
    }

    AiBrandDealsCreatorIncomeContent::LESSONS.each do |position, data|
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

require_relative "../ai_influencer_marketing_content"

namespace :content do
  desc "Create AI for Influencer Marketing course and populate all 15 lessons"
  task ai_influencer_marketing: :environment do
    course = Course.find_or_create_by!(slug: "ai-influencer-marketing") do |c|
      c.title       = "AI for Influencer Marketing"
      c.description = "Use AI to plan and run influencer campaigns that are honest and measurable. Set goals, find and vet the right creators, spot fake followers, write briefs and contracts, follow disclosure rules, track results and calculate return on spend."
      c.color       = "#e11d48"
      c.icon        = "📣"
      c.position    = 88
      c.published   = true
    end
    course.update!(description: "Use AI to plan and run influencer campaigns that are honest and measurable. Set goals, find and vet the right creators, spot fake followers, write briefs and contracts, follow disclosure rules, track results and calculate return on spend.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Influencer Marketing Works",
      2 => "Where AI Helps Brands",
      3 => "Rules and Disclosure",
      4 => "Setting Goals and a Budget",
      5 => "Finding the Right Creators",
      6 => "Vetting Creators and Spotting Fake Followers",
      7 => "Writing Creator Briefs",
      8 => "Contracts, Rates and Usage Rights",
      9 => "Content Approval and Brand Safety",
      10 => "Tracking Campaigns",
      11 => "Measuring Results and ROI",
      12 => "Long-Term Creator Programmes",
      13 => "Creator Content in Ads",
      14 => "Privacy, Fairness and Ethics",
      15 => "Capstone: An Influencer Campaign for Zari & Co"
    }

    descriptions = {
      1 => "Learn how influencer marketing works: creator tiers from nano to mega, campaign goals, content formats, and paid, gifted and affiliate deals.",
      2 => "See where AI helps at each stage of an influencer campaign, and how to manage made-up data, bias, privacy and over-automation.",
      3 => "Learn India's influencer disclosure rules from ASCI and the CCPA in plain words: labels, placement, claims, and health and finance creators.",
      4 => "Choose a main goal, pick KPIs, turn targets into simple planning maths and split a campaign budget, with a worked ₹6,00,000 example.",
      5 => "Find creators who fit your audience, content and values, search in smart ways, and score a longlist in a spreadsheet.",
      6 => "Check creators before you pay them: reach, engagement patterns, follower spikes, comments and audience location, with two worked red-flag cases.",
      7 => "Write a clear one-page creator brief with key messages, do and don't lists, creative freedom, disclosure and deadlines, using AI for the first draft.",
      8 => "Learn the main parts of a creator contract, how rates and usage rights work, and the basics of TDS on fees and gifted products in India.",
      9 => "Review creator drafts for claims and disclosure, moderate comments, and write a simple crisis plan before your campaign goes live.",
      10 => "Track creator results with promo codes, UTM links, affiliate links and insights, and build a tracking sheet with formulas.",
      11 => "Calculate engagement rate, CPM, CPE, CPA and ROAS from a made-up results table, compare with break-even, and learn why EMV is not revenue.",
      12 => "Plan long-term creator programmes: ambassadors, affiliate programmes and a creator community, with honest planning maths and a review rule.",
      13 => "Use creator content in ads through partnership ads, whitelisting and usage rights, and test creator ads fairly before you scale.",
      14 => "Protect creator and customer data, pay creators fairly, reduce bias with diverse creators, and take extra care with children.",
      15 => "Build a full influencer campaign plan and a one-page ROI report for Zari & Co, then use the same steps for your own brand."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Harleen earns 8% of every order that uses her own code. What type of deal is this?", opts: ["A) Affiliate", "B) Gifted", "C) Fixed fee"], ans: "A" },
      2 => { type: "true_false", q: "If an AI assistant gives you a creator's follower count and engagement rate, you can use them in your plan without checking.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "A brand sends a creator a free saree without asking her to post. She posts about it. What should she do?", opts: ["A) Nothing, because she was not paid money", "B) Label the post clearly as an ad, for example #ad or Free gift, at the start", "C) Mention the brand only in her bio"], ans: "B" },
      4 => { type: "multiple_choice", q: "A campaign spends ₹6,00,000 and brings 300 orders. What is the cost per acquisition (CPA)?", opts: ["A) ₹200", "B) ₹20,000", "C) ₹2,000"], ans: "C" },
      5 => { type: "multiple_choice", q: "Zari & Co ships only in India. Which is the clearest sign that a creator is a poor audience fit?", opts: ["A) She posts in Gujarati and Hindi", "B) Only 38% of her audience is in India", "C) She has 32,000 followers"], ans: "B" },
      6 => { type: "multiple_choice", q: "A creator has 3,10,000 followers but her average reach is only 9,000, and she gained 92,000 followers in 4 days with no viral post. What does this pattern suggest?", opts: ["A) Her followers may not be real, so she needs careful checking", "B) She is a strong choice because she has the most followers", "C) Her posts are too long"], ans: "A" },
      7 => { type: "true_false", q: "A good creator brief gives the creator a full word-for-word script, so the post says exactly what the brand wants.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Zari & Co wants to run Tanya's reel as a partnership ad for 60 days. What does it need?", opts: ["A) Nothing, because it already paid for the post", "B) Only Tanya's follower count", "C) Usage rights in the contract and Tanya's ad permission, usually for an extra fee"], ans: "C" },
      9 => { type: "multiple_choice", q: "A draft caption says \"pure silk\", but the product page says art silk. What should the brand do?", opts: ["A) Approve it, because the creator chose the words", "B) Ask for a change, because the claim is false", "C) Delete the creator's account"], ans: "B" },
      10 => { type: "multiple_choice", q: "An order used the code TANYA10 and also came through Tanya's UTM link. How should the tracking sheet count it?", opts: ["A) As one order for Tanya", "B) As two orders for Tanya", "C) As zero, because it is unclear"], ans: "A" },
      11 => { type: "multiple_choice", q: "An influencer tool says a campaign's EMV (earned media value) is ₹18,40,000. What is true?", opts: ["A) It is revenue, so you should add it to ROAS", "B) It is the profit the campaign made", "C) It is the tool's estimate of what the reach would have cost as ads, not money earned"], ans: "C" },
      12 => { type: "true_false", q: "Ambassadors in a long-term programme can stop labelling their posts as ads, because their followers already know they work with the brand.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "What is a partnership ad on Instagram or Facebook?", opts: ["A) A creator's post that the creator pays to boost without telling the brand", "B) A creator's post that the brand runs as an ad with the creator's permission, showing both names", "C) A brand post that copies a creator's video without asking"], ans: "B" },
      14 => { type: "multiple_choice", q: "Under India's DPDP Act, what does a brand need before it processes a child's personal data?", opts: ["A) Verifiable consent from a parent or guardian", "B) Only the child's own consent", "C) Nothing, if the data is used for marketing"], ans: "A" },
      15 => { type: "multiple_choice", q: "Zari & Co's all-in spend was ₹5,76,000 and the campaign brought 323 orders. What is the all-in CPA?", opts: ["A) ₹1,578.9", "B) ₹1,783.3", "C) ₹2,000"], ans: "B" }
    }

    AiInfluencerMarketingContent::LESSONS.each do |position, data|
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

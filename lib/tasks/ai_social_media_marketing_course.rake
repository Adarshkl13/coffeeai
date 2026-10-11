require_relative "../ai_social_media_marketing_content"

namespace :content do
  desc "Create AI for Social Media Marketing course and populate all 15 lessons"
  task ai_social_media_marketing: :environment do
    course = Course.find_or_create_by!(slug: "ai-social-media-marketing") do |c|
      c.title       = "AI for Social Media Marketing"
      c.description = "Use AI to plan, create and grow on social media. Find post ideas, build content calendars, write captions and hooks, script Reels and Shorts, reply to comments, work with creators and read your analytics."
      c.color       = "#fb7185"
      c.icon        = "📱"
      c.position    = 35
      c.published   = true
    end
    course.update!(description: "Use AI to plan, create and grow on social media. Find post ideas, build content calendars, write captions and hooks, script Reels and Shorts, reply to comments, work with creators and read your analytics.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Social Media Marketing Works",
      2 => "Where AI Helps on Social Media",
      3 => "Knowing Your Audience",
      4 => "Brand Voice for Social Posts",
      5 => "Post Ideas and Content Pillars",
      6 => "Content Calendars",
      7 => "Captions and Hooks",
      8 => "Reels and Shorts Scripts",
      9 => "Images and Carousels with AI",
      10 => "Repurposing One Idea Everywhere",
      11 => "Comments, DMs and Community",
      12 => "Influencer and Creator Marketing",
      13 => "Social Media Analytics",
      14 => "Testing and Improving",
      15 => "Capstone: A 30-Day Social Media Plan"
    }

    descriptions = {
      1 => "Learn the four goals of social media marketing, how platforms and audiences differ, and the difference between organic and paid posts.",
      2 => "See where AI helps on social media, from ideas to analytics, how to keep your brand voice, and what you must always check.",
      3 => "Use AI to find your customers' questions and pain points, draft simple personas, and check them with real comments and data.",
      4 => "Write a short brand voice guide, spot on-brand and off-brand posts, and give the guide to AI so its drafts sound like you.",
      5 => "Choose content pillars, use AI to build idea lists, balance trend and evergreen posts, and avoid copying.",
      6 => "Use AI to draft weekly and monthly content calendars as a table. Mix formats, plan for Indian festivals and check that the plan fits your team.",
      7 => "Write strong first-line hooks and platform-specific captions with AI. Add one clear call to action and a few relevant hashtags.",
      8 => "Plan 30-second Reels and Shorts with AI: hook, value and call to action, plus a shot list, on-screen text and captions.",
      9 => "Outline carousels and write design briefs with AI. Learn when to use AI images, how to label them and how to write alt text.",
      10 => "Turn one blog post or video into posts for each platform. Adapt length and tone while keeping every fact correct.",
      11 => "Sort comments and DMs, use AI to draft replies and saved answers, and learn when a person must reply.",
      12 => "Find and check creators, write outreach messages and briefs with AI, and mark paid posts clearly under ASCI guidelines.",
      13 => "Learn reach, engagement rate, saves, shares and click-through, and read an insights export with AI and a spreadsheet.",
      14 => "Run simple tests like hook A against hook B, learn from top posts, and avoid false conclusions from small numbers.",
      15 => "Build a complete 30-day social media plan with AI: audience, pillars, calendar, captions, Reel scripts and a measurement plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A bakery posts \"DM us to pre-order a birthday cake\". What is the main goal of this post?", opts: ["A) Awareness", "B) Leads", "C) Engagement"], ans: "B" },
      2 => { type: "true_false", q: "If an AI assistant writes a caption with a price in it, you can post it without checking the price.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "What should you do before pasting customer comments into a public AI tool to build a persona?", opts: ["A) Add the customers' phone numbers so the AI knows them better", "B) Nothing, comments are always public", "C) Remove names, phone numbers and other personal details"], ans: "C" },
      4 => { type: "multiple_choice", q: "What is the best way to make AI drafts sound like your brand?", opts: ["A) Give it a short brand voice guide and 2 or 3 real example posts", "B) Just add the word \"friendly\" to your prompt", "C) Ask it to copy a competitor's captions"], ans: "A" },
      5 => { type: "multiple_choice", q: "Which of these is an evergreen post for a travel agency?", opts: ["A) A Reel using a sound that is popular this week", "B) A monsoon packing list for Kerala trips", "C) A joke format that is trending today"], ans: "B" },
      6 => { type: "multiple_choice", q: "AI suggests a Diwali post in your content calendar. What should you do before you use it?", opts: ["A) Use it, because AI knows all festival dates", "B) Check the date on a current calendar and check the offer is approved", "C) Remove all festivals from the calendar"], ans: "B" },
      7 => { type: "true_false", q: "A good caption should include three or four different calls to action.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Your AI-written 30-second Reel script takes 48 seconds to read aloud. What is the best fix?", opts: ["A) Speak much faster", "B) Keep it, length does not matter", "C) Ask AI to cut it to about 70 spoken words and time it again"], ans: "C" },
      9 => { type: "multiple_choice", q: "Which image should be a real photo, not an AI image?", opts: ["A) The product a customer will actually buy", "B) A plain pattern behind text", "C) Small icons for a tips slide"], ans: "A" },
      10 => { type: "multiple_choice", q: "When you repurpose a blog post with AI, what helps most to stop facts from changing?", opts: ["A) Posting the same text on every platform", "B) Asking AI to list the key facts first and use only those facts", "C) Asking AI to make each version longer"], ans: "B" },
      11 => { type: "multiple_choice", q: "A customer comments that your cake made their child ill. What should you do?", opts: ["A) Let an AI tool post a reply at once", "B) Have a person handle it and move the details to a private message", "C) Reply with the same saved answer you use for all comments"], ans: "B" },
      12 => { type: "true_false", q: "Under ASCI guidelines in India, a creator who got a product free (with no money paid) does not need to disclose it.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "A post reached 2,000 accounts and got 100 engagements. Using engagements divided by reach, what is the engagement rate?", opts: ["A) 5%", "B) 20%", "C) 0.5%"], ans: "A" },
      14 => { type: "multiple_choice", q: "Hook A got 14 saves and hook B got 19 saves, on one post each. What is the best conclusion?", opts: ["A) Hook B is better, so use it for every post", "B) Hook A is better because it had less reach", "C) It is too early to say, so repeat the test with more posts"], ans: "C" },
      15 => { type: "multiple_choice", q: "Why should you write down your starting numbers before a 30-day plan begins?", opts: ["A) Because AI tools need them to write captions", "B) So you can compare the results after 30 days", "C) Because platforms delete old numbers every month"], ans: "B" }
    }

    AiSocialMediaMarketingContent::LESSONS.each do |position, data|
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

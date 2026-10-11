require_relative "../ai_content_marketing_content"

namespace :content do
  desc "Create AI for Content Marketing course and populate all 15 lessons"
  task ai_content_marketing: :environment do
    course = Course.find_or_create_by!(slug: "ai-content-marketing") do |c|
      c.title       = "AI for Content Marketing"
      c.description = "Use AI to plan and create content that builds trust and brings customers. Build a content strategy, write blogs, case studies and newsletters in your brand voice, repurpose content, check quality and measure what works."
      c.color       = "#8b5cf6"
      c.icon        = "📝"
      c.position    = 38
      c.published   = true
    end
    course.update!(description: "Use AI to plan and create content that builds trust and brings customers. Build a content strategy, write blogs, case studies and newsletters in your brand voice, repurpose content, check quality and measure what works.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Content Marketing Is",
      2 => "Where AI Helps in Content",
      3 => "Content Strategy with AI",
      4 => "Brand Voice and Style Guides",
      5 => "Research and Outlines",
      6 => "Writing Blog Posts with AI",
      7 => "Case Studies and Customer Stories",
      8 => "Newsletters and Long-Form Guides",
      9 => "Video and Podcast Content",
      10 => "Repurposing Content",
      11 => "Editing and Fact-Checking AI Content",
      12 => "Content Distribution",
      13 => "Measuring Content",
      14 => "Copyright, Originality and AI Disclosure",
      15 => "Capstone: A Content Plan and First Article"
    }

    descriptions = {
      1 => "Learn what content marketing is, the three stages of the buyer journey and the main content types.",
      2 => "See which content tasks AI does well and which parts, like experience, opinions and stories, must come from you.",
      3 => "Build a one-page content strategy with goals, audience, topics, formats and channels, and use AI to test it.",
      4 => "Describe your brand voice with traits, do and don't lists and examples, then give the style guide to AI.",
      5 => "Collect real customer questions, choose an angle and use AI to build an outline that answers those questions.",
      6 => "Draft blog posts with AI one section at a time, add your own examples and data, and edit until the post sounds like you.",
      7 => "Plan customer interviews and write honest case studies with a problem, solution and result, using real quotes and customer approval.",
      8 => "Plan newsletters with a fixed format, write long guides with AI, and turn a guide into a lead magnet.",
      9 => "Use AI to write video scripts and show notes, and turn one checked recording into an article and short clips.",
      10 => "Turn one pillar piece into many formats with a repurposing table, changing the format but keeping the facts the same.",
      11 => "Check AI drafts for wrong facts, made-up numbers and quotes, tone and copied text before you publish.",
      12 => "Share your content through email, social media, communities, partners and search, with AI writing a message for each channel.",
      13 => "Measure traffic, engagement, leads and assisted sales, and use AI to write a simple monthly content report.",
      14 => "Learn the general picture on copyright for AI content, how to use sources and images fairly, and when to disclose AI help. Not legal advice.",
      15 => "Build a one-page strategy, a 3-month calendar, a first article and a repurposing plan for one business."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A person reads a guide called \"Houseboat or homestay: which is better for families?\" Which buyer journey stage is this?", opts: ["A) Awareness", "B) Consideration", "C) Decision"], ans: "B" },
      2 => { type: "true_false", q: "If AI writes the first draft, you do not need to add your own experience or check the facts.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Which part of a one-page content strategy should you fill in with your own real numbers, not numbers from AI?", opts: ["A) The business goal", "B) The list of formats", "C) The review date"], ans: "A" },
      4 => { type: "multiple_choice", q: "What helps AI copy your brand voice best?", opts: ["A) Asking it to \"sound fun\"", "B) A long list of adjectives", "C) A short style guide with real example sentences"], ans: "C" },
      5 => { type: "multiple_choice", q: "AI gives you a statistic and a report name while you research. What should you do?", opts: ["A) Use it, because AI tools are always up to date", "B) Find and open the real source first. If you cannot find it, do not use it.", "C) Round the number so it looks less exact"], ans: "B" },
      6 => { type: "multiple_choice", q: "Why is it better to draft a blog post with AI one section at a time?", opts: ["A) AI cannot write more than one section", "B) You can check each part and add your own examples and facts", "C) Search engines only read the first section"], ans: "B" },
      7 => { type: "multiple_choice", q: "AI wrote \"The customer cut costs by 50%\" in a case study, but the customer never said this. What should you do?", opts: ["A) Delete it, or ask the customer for the real number", "B) Keep it because it sounds good", "C) Change it to 40% to be safe"], ans: "A" },
      8 => { type: "true_false", q: "A good newsletter issue should have many different calls to action so readers have more choices.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Where should the timestamps in podcast show notes come from?", opts: ["A) From AI's best guess", "B) From other episodes of the same length", "C) From the real recording or its transcript"], ans: "C" },
      10 => { type: "multiple_choice", q: "What does good repurposing change?", opts: ["A) The facts, so each version feels new", "B) The prices, to suit each channel", "C) The format and angle, to suit each channel"], ans: "C" },
      11 => { type: "multiple_choice", q: "An AI draft says \"78% of London families buy cakes online\" but gives no source. What should you do?", opts: ["A) Keep it, because AI is usually right", "B) Find the original source, or remove the number", "C) Change it to a rounder number like 80%"], ans: "B" },
      12 => { type: "true_false", q: "Posting the same article link in many online groups without reading their rules is a good distribution habit.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "What is an assisted conversion?", opts: ["A) A sale or sign-up where your content helped earlier, even if it was not the last click", "B) A visit that lasted more than one minute", "C) A sale that an AI tool made for you"], ans: "A" },
      14 => { type: "multiple_choice", q: "According to the US Copyright Office, what about content made by AI from a prompt alone?", opts: ["A) It is always fully protected", "B) It is protected if the prompt is very long", "C) It is usually not protected, but parts a person creates or changes can be"], ans: "C" },
      15 => { type: "multiple_choice", q: "An AI tool plans five posts a week for a two-person bakery. What is the best next step?", opts: ["A) Cut the calendar to what the team can really publish, such as two pieces a week", "B) Publish all five posts without checking them", "C) Stop making content"], ans: "A" }
    }

    AiContentMarketingContent::LESSONS.each do |position, data|
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

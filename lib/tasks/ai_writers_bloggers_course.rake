require_relative "../ai_writers_bloggers_content"

namespace :content do
  desc "Create AI for Writers and Bloggers course and populate all 15 lessons"
  task ai_writers_bloggers: :environment do
    course = Course.find_or_create_by!(slug: "ai-writers-bloggers") do |c|
      c.title       = "AI for Writers and Bloggers"
      c.description = "Use AI to write better and faster while keeping your own voice. Research and fact-check, outline and draft, edit and rewrite, write headlines, optimise blog posts for search, run a newsletter, use AI for fiction honestly and build a steady writing workflow."
      c.color       = "#a21caf"
      c.icon        = "📝"
      c.position    = 83
      c.published   = true
    end
    course.update!(description: "Use AI to write better and faster while keeping your own voice. Research and fact-check, outline and draft, edit and rewrite, write headlines, optimise blog posts for search, run a newsletter, use AI for fiction honestly and build a steady writing workflow.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Writing in the Age of AI",
      2 => "Where AI Helps Writers",
      3 => "Honesty, Copyright and Disclosure",
      4 => "Finding Your Topics and Readers",
      5 => "Research and Fact-Checking with AI",
      6 => "Outlines and Structure",
      7 => "Drafting in Your Own Voice",
      8 => "Editing and Rewriting",
      9 => "Headlines, Intros and Endings",
      10 => "SEO for Bloggers",
      11 => "Newsletters",
      12 => "Fiction and Creative Writing with AI",
      13 => "Growing and Earning",
      14 => "A Writing Workflow",
      15 => "Capstone: A Month of Content for Slow Roads"
    }

    descriptions = {
      1 => "Learn what AI can and cannot do for writers, and how to keep your own voice when you use it.",
      2 => "See where AI helps with ideas, outlines, research, editing and feedback, and how to avoid sameness, errors and plagiarism.",
      3 => "Learn about originality, copyright in AI text in India and the US, Google and platform rules, and how to tell readers about AI use.",
      4 => "Find a clear niche, build a reader persona from real data and make a topic list with content pillars.",
      5 => "Use AI to plan research, check every fact in a real source, recalculate numbers and never publish a made-up quote.",
      6 => "Learn common blog post and story structures, and how to turn an AI outline into one built from your own notes.",
      7 => "Build a voice guide from your own writing, use AI to check your draft against it, and know which parts to always write yourself.",
      8 => "Edit from big to small, make posts easy to read on a phone, and use AI feedback prompts that point out problems without rewriting.",
      9 => "Write honest, specific headlines, open with a hook and a promise, and end with one clear call to action.",
      10 => "Match search intent, use keywords naturally, follow Google's guidance on helpful and AI content, and read Search Console in simple terms.",
      11 => "Choose a newsletter platform, write a welcome email and calculate open rate and click rate correctly, with the Apple Mail Privacy Protection caveat.",
      12 => "Use AI for brainstorming, story notes and reader feedback on fiction while every sentence stays yours, and follow publisher and KDP disclosure rules.",
      13 => "Set a publishing schedule, repurpose posts and learn how sponsorships, affiliate links and paid newsletters work, with ASCI disclosure labels.",
      14 => "Build a writing workflow with an idea bank, a content calendar, templates and an editing checklist that fit your real hours.",
      15 => "Plan a month of content for Slow Roads: a reader persona, a topic plan, a blog post outline and sample, a newsletter issue and an SEO checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Meera is writing about her weekend in Hadoti. Which task should she do herself, not give to AI?", opts: ["A) Listing 15 possible titles", "B) Giving the true total cost from her receipts", "C) Pointing out sentences that are too long"], ans: "B" },
      2 => { type: "multiple_choice", q: "Meera asked AI for feedback. Its reply says \"the bus takes about 3 hours\", but her draft never gave a time. What should she do?", opts: ["A) Add the 3 hours, because AI knows bus times", "B) Ask the AI again until it gives the same time twice", "C) Ignore the AI's number and use her own ticket and notes"], ans: "C" },
      3 => { type: "true_false", q: "Amazon KDP asks you to declare AI-generated content. If you wrote a book yourself and only used AI to fix grammar, KDP treats that as AI-generated content you must declare.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "An AI-drafted reader persona says \"Neha loves luxury heritage hotels\", but none of Meera's data shows this. What should she do?", opts: ["A) Delete that line, because the data does not support it", "B) Keep it, because personas are made up anyway", "C) Change her topic list to add luxury hotels"], ans: "A" },
      5 => { type: "multiple_choice", q: "An AI draft includes a nice quote from Meera's guesthouse owner, but he never said it. What is the right action?", opts: ["A) Keep it, because it sounds like something he might say", "B) Delete it, and quote only his real words with his permission", "C) Keep it but remove the quotation marks and his name later"], ans: "B" },
      6 => { type: "multiple_choice", q: "Meera's AI outline for her Hadoti post has a \"History of Hadoti\" section, but she has no notes for it. What should she do?", opts: ["A) Keep it and ask AI to write the history", "B) Cut it, or keep only a short line she can check", "C) Move it to the top of the post"], ans: "B" },
      7 => { type: "true_false", q: "If you give AI samples of your writing and ask it to write \"in your voice\", it may invent personal moments that never happened.", opts: ["True", "False"], ans: "True" },
      8 => { type: "multiple_choice", q: "Which prompt keeps Meera's voice safest when she wants line-edit help?", opts: ["A) \"Make a table of problems with a suggested fix for each. Do not rewrite my draft.\"", "B) \"Edit my blog post and make it better.\"", "C) \"Rewrite this so it sounds more professional.\""], ans: "A" },
      9 => { type: "multiple_choice", q: "Meera's Hadoti weekend cost ₹5,120. Which headline is honest?", opts: ["A) The ₹5,000 Long Weekend in Hadoti", "B) Hadoti: The Cheapest Weekend in India", "C) A Long Weekend in Hadoti for About ₹5,000"], ans: "C" },
      10 => { type: "multiple_choice", q: "In Search Console, a query has 1,900 impressions and 95 clicks. What is its CTR?", opts: ["A) 20%", "B) 5.0%", "C) 0.5%"], ans: "B" },
      11 => { type: "multiple_choice", q: "Meera wants to know which newsletter issue her readers found most useful. Which number is the best signal?", opts: ["A) The open rate, because it is the biggest number", "B) The click rate and the replies", "C) The number of emails delivered"], ans: "B" },
      12 => { type: "true_false", q: "The US Copyright Office says material made purely by AI is not protected by copyright, so writing the sentences yourself matters.", opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "Meera recommends her cousin's guesthouse in Hadoti. She paid nothing and got nothing. What does ASCI's idea of a material connection say?", opts: ["A) No label is needed, because no money changed hands", "B) A label is needed only if the post is on Instagram", "C) A label is needed, because a family relationship counts"], ans: "C" },
      14 => { type: "multiple_choice", q: "Using AI for helper steps cut Meera's time per post from 11 hours to 8. Which step still takes the most time?", opts: ["A) Writing the draft, because she writes it herself", "B) Sorting the idea bank", "C) Writing alt text and the meta description"], ans: "A" },
      15 => { type: "multiple_choice", q: "The AI title says \"The ₹5,000 Long Weekend in Hadoti\", but Meera's receipts add up to ₹5,120. What should she do?", opts: ["A) Keep the title, because ₹120 is a small difference", "B) Change the title to the real total from her receipts", "C) Remove the cost table so readers do not notice"], ans: "B" }
    }

    AiWritersBloggersContent::LESSONS.each do |position, data|
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

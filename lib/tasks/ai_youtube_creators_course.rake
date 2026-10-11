require_relative "../ai_youtube_creators_content"

namespace :content do
  desc "Create AI for YouTube Creators course and populate all 15 lessons"
  task ai_youtube_creators: :environment do
    course = Course.find_or_create_by!(slug: "ai-youtube-creators") do |c|
      c.title       = "AI for YouTube Creators"
      c.description = "Use AI to plan, script, package and grow a YouTube channel in your own voice. Find your niche, research ideas, write scripts with strong hooks, edit faster, write honest titles, design thumbnails, read analytics and follow YouTube's rules on AI content."
      c.color       = "#d946ef"
      c.icon        = "▶️"
      c.position    = 80
      c.published   = true
    end
    course.update!(description: "Use AI to plan, script, package and grow a YouTube channel in your own voice. Find your niche, research ideas, write scripts with strong hooks, edit faster, write honest titles, design thumbnails, read analytics and follow YouTube's rules on AI content.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How YouTube Works for Creators",
      2 => "Where AI Helps Creators",
      3 => "YouTube Policies and AI",
      4 => "Finding Your Niche and Audience",
      5 => "Video Ideas and Research",
      6 => "Writing Scripts with AI",
      7 => "Filming and Editing with AI Tools",
      8 => "Titles That Get Clicks Honestly",
      9 => "Thumbnails with AI",
      10 => "Descriptions, Chapters and Captions",
      11 => "Reading YouTube Analytics",
      12 => "Community and Comments",
      13 => "Making Money",
      14 => "A Content System",
      15 => "Capstone: A Launch Plan for Tiffin Tales"
    }

    descriptions = {
      1 => "Learn how viewers find videos through search, browse and suggested videos, and what impressions, CTR, average view duration and watch time mean.",
      2 => "See where AI helps at each step of making a video, the risks it brings, and how a voice sheet keeps your own style.",
      3 => "Learn YouTube's rules on labelling realistic AI content, inauthentic content, the Partner Program and copyright, in simple words.",
      4 => "Find a clear niche, build viewer personas from real data, choose content pillars and write a channel promise.",
      5 => "Use AI to brainstorm video ideas, check them with YouTube search, comments and trends, score them and check facts before filming.",
      6 => "Write a strong hook, a clear structure and retention beats with AI as your script editor, while keeping your own voice.",
      7 => "Learn what AI editing features do, such as cutting silences, cleaning audio and making captions, and what you must still check.",
      8 => "Write titles that make the right viewer curious without clickbait, and test honest options in YouTube Studio.",
      9 => "Design clear thumbnails that work at phone size, use AI honestly, respect people's likeness and test your options.",
      10 => "Write helpful descriptions and chapters, fix captions, add subtitles in other languages and learn how AI dubbing works.",
      11 => "Read impressions, CTR, average view duration, retention graphs and returning viewers, using worked numbers from Riya's last 8 videos.",
      12 => "Sort comments, draft replies in your own voice with AI, use community posts and moderation tools, and handle hate calmly.",
      13 => "Learn how the YouTube Partner Program, memberships, brand deals and affiliate links work, and how to label paid content under ASCI's guidelines.",
      14 => "Build a simple content system: a calendar, batch filming, templates and Shorts cut from your long videos.",
      15 => "Put the course together into a 90-day launch plan for Tiffin Tales, with ideas, a script, packaging and honest targets."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A viewer sees Riya's video on their YouTube Home page and clicks it. Which traffic source is this in YouTube Analytics?", opts: ["A) YouTube search", "B) Browse features", "C) External"], ans: "B" },
      2 => { type: "multiple_choice", q: "An AI hook says \"Studies show meal prep saves 5 hours a week\" but gives no source. What should Riya do?", opts: ["A) Remove it, unless she finds a reliable source", "B) Keep it, because AI checks its facts", "C) Add two more statistics to make it stronger"], ans: "A" },
      3 => { type: "true_false", q: "If an AI assistant helped you write your script outline, YouTube requires you to turn on the altered or synthetic content label.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Which is the best channel promise for Tiffin Tales?", opts: ["A) Cooking videos for everyone", "B) Tasty food and good vibes", "C) One tested 15-minute tiffin every Saturday for busy workers and students"], ans: "C" },
      5 => { type: "multiple_choice", q: "An AI tool says \"Japanese bento is the top food search in India this month\". What should you do?", opts: ["A) Make the video today before the trend ends", "B) Treat it as a guess and check YouTube search and Google Trends", "C) Ask the AI again until it agrees"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which hook is strongest for Riya's video \"One Induction Plate: 5 Hostel Tiffins\"?", opts: ["A) \"Hello friends, please like and subscribe before we start.\"", "B) \"5 tiffins, 1 induction plate. Will they still taste good at 1 pm? I will open them at the end.\"", "C) \"90% of hostel students skip lunch, so today we explore healthy recipes.\""], ans: "B" },
      7 => { type: "true_false", q: "After an AI tool cuts silences and makes captions, you can publish the video without watching it again.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Riya's recipes take 12 to 15 minutes each. Which title is clickbait?", opts: ["A) 5 Hostel Tiffins in 5 Minutes Each!", "B) PG Cooking: 5 Tiffins on 1 Induction Plate", "C) Does Chilla Stay Soft Till 1 PM? I Tested 3 Ways"], ans: "A" },
      9 => { type: "multiple_choice", q: "Which use of AI in a thumbnail is fine?", opts: ["A) Adding a famous chef's face so it looks like he recommends the video", "B) Making a perfect AI rajma bowl that never appears in the video", "C) Removing the messy background behind a real photo of your own dish"], ans: "C" },
      10 => { type: "multiple_choice", q: "Which set of chapter timestamps follows YouTube's rules?", opts: ["A) 0:45, 2:05, 3:20", "B) 0:00, 0:25, 0:45, 2:05", "C) 0:00, 0:05, 0:08"], ans: "B" },
      11 => { type: "multiple_choice", q: "Riya's Hostel video has a CTR of 7.8% (her best) but only 31% average viewed. What does this most likely show?", opts: ["A) The title got clicks, but the start of the video did not keep its promise", "B) The thumbnail is weak and needs changing first", "C) The video is working well, so she should change nothing"], ans: "A" },
      12 => { type: "true_false", q: "A comment that says \"You said 15 minutes, but it took me 25\" is hate, so you should delete it and block the viewer.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "A brand pays Riya for a mention in her video. Where should the #ad label appear, following ASCI's guidelines in general?", opts: ["A) Only at the very end of the description", "B) Nowhere, if the brand is small", "C) In the video itself, shown and said clearly, so viewers cannot miss it"], ans: "C" },
      14 => { type: "multiple_choice", q: "What makes a good Short cut from a long video?", opts: ["A) Any random 60 seconds from the middle", "B) A clip that makes sense on its own, starts with the result and has checked captions", "C) The same clip posted many times with small changes"], ans: "B" },
      15 => { type: "multiple_choice", q: "Riya has about 1,610 watch hours and her videos earn about 130 hours each. What is an honest 90-day target?", opts: ["A) Upload 13 long videos and 26 Shorts, and review the numbers every 30 days", "B) Promise to reach 4,000 watch hours by day 60", "C) Buy views to reach the Partner Program faster"], ans: "A" }
    }

    AiYoutubeCreatorsContent::LESSONS.each do |position, data|
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

require_relative "../ai_short_videos_content"

namespace :content do
  desc "Create AI for Short Videos course and populate all 15 lessons"
  task ai_short_videos: :environment do
    course = Course.find_or_create_by!(slug: "ai-short-videos") do |c|
      c.title       = "AI for Short Videos"
      c.description = "Use AI to make Reels and Shorts that people watch to the end. Pick formats, write hooks and short scripts, film on a phone, edit with AI tools, add clear captions, use trends and licensed audio, read your numbers and build a weekly system."
      c.color       = "#c026d3"
      c.icon        = "📱"
      c.position    = 81
      c.published   = true
    end
    course.update!(description: "Use AI to make Reels and Shorts that people watch to the end. Pick formats, write hooks and short scripts, film on a phone, edit with AI tools, add clear captions, use trends and licensed audio, read your numbers and build a weekly system.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Short Video Platforms Work",
      2 => "Where AI Helps with Short Videos",
      3 => "Rules for Short Video Creators",
      4 => "Formats That Work",
      5 => "Hooks in the First Seconds",
      6 => "Writing Short Scripts",
      7 => "Filming on a Phone",
      8 => "Editing with AI Tools",
      9 => "Captions, On-Screen Text and Subtitles",
      10 => "Trends, Audio and Timing",
      11 => "Repurposing Long Content",
      12 => "Short Video Analytics",
      13 => "Short Videos for Brands and Businesses",
      14 => "A Weekly Short Video System",
      15 => "Capstone: A Two-Week Reels and Shorts Plan for Sweet Crumbs"
    }

    descriptions = {
      1 => "Learn how Reels and Shorts feeds show your videos to new people, and read views, watch time, completion rate, shares, saves and follows.",
      2 => "See which short video jobs AI does well, from ideas to captions, and which checks and decisions stay with you.",
      3 => "Check music rights, AI labels, ASCI ad disclosure and people's faces and voices before you post a short video.",
      4 => "Learn six short video formats and choose the right one for your goal using your own numbers.",
      5 => "Write hooks that work in the first three seconds, use AI to get many options, and keep every promise.",
      6 => "Plan 15-, 30- and 60-second scripts as timed beats, fit your words to the time and end with one clear call to action.",
      7 => "Film good Reels and Shorts on a phone with soft light, clear sound, vertical framing and a useful B-roll list.",
      8 => "Use AI editing features such as auto cuts, captions and voice clean-up, and check what they get wrong before you post.",
      9 => "Make captions and on-screen text easy to read, write for Hinglish and Marathi viewers, and check auto captions carefully.",
      10 => "Join trends that fit your brand, use licensed audio the right way and find posting times from your own insights.",
      11 => "Turn long videos and podcasts into Reels and Shorts with AI clipping tools, and check that every clip keeps its context.",
      12 => "Calculate average % viewed, completion rate and per-1,000-view rates, and check two weeks of results against your goals.",
      13 => "Make product demos and customer videos for a business, with consent, true claims and ASCI disclosure labels.",
      14 => "Build a weekly system with batch filming, templates and an idea bank, and keep a pace you can manage.",
      15 => "Build a complete two-week Reels and Shorts plan for Sweet Crumbs: formats, hooks, scripts, captions, an edit checklist and metrics."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A Reel is 18 seconds long and its average watch time is 13.1 seconds. What is its average percentage viewed?", opts: ["A) About 13%", "B) About 73%", "C) About 137%"], ans: "B" },
      2 => { type: "multiple_choice", q: "Which job should you NOT hand fully to AI when making a short video?", opts: ["A) Listing 20 video ideas", "B) Writing a first draft of the captions", "C) Deciding if a claim about your product is true"], ans: "C" },
      3 => { type: "true_false", q: "Under ASCI's guidelines, if a brand only gave you a free product and did not pay you, you do not need an ad label.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Sweet Crumbs' trend Reel got many likes but almost no follows. What is the best lesson?", opts: ["A) The trend did not connect viewers to the bakery, so it brought few followers", "B) Trend videos always fail", "C) Likes and follows mean the same thing"], ans: "A" },
      5 => { type: "multiple_choice", q: "Which is the strongest hook for a tutorial about eggless sponge cakes?", opts: ["A) \"Hi everyone, welcome back to my channel.\"", "B) \"Today I will talk about cakes.\"", "C) \"Your eggless sponge sinks? Check these 3 things.\""], ans: "C" },
      6 => { type: "multiple_choice", q: "At a relaxed pace of about 2 to 2.5 words per second, roughly how many spoken words fit a 30-second script?", opts: ["A) About 60 to 70 words", "B) About 150 words", "C) About 20 words"], ans: "A" },
      7 => { type: "multiple_choice", q: "In Diya's video, the white cream looks orange. What is the best first fix?", opts: ["A) Add a strong colour filter", "B) Zoom in with your fingers", "C) Switch off the yellow bulb and film near the window"], ans: "C" },
      8 => { type: "true_false", q: "If an AI tool cuts your video automatically, you do not need to watch the full edit before posting.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "The auto captions show \"14 cupcakes\" but Anjali said \"40 cupcakes\". What should Diya do?", opts: ["A) Leave it, because most of the words are right", "B) Fix it before posting, because a wrong number changes the meaning", "C) Delete all the captions"], ans: "B" },
      10 => { type: "multiple_choice", q: "What is the best way to choose a posting time?", opts: ["A) Always post at 7 pm", "B) Copy the posting time of a famous creator", "C) Check your own insights and test two time slots with the same format"], ans: "C" },
      11 => { type: "multiple_choice", q: "An AI clipping tool suggests a recipe clip that starts just after the creator's nut allergy warning. What should you do?", opts: ["A) Post it, because the AI picked it", "B) Start the clip earlier or add the warning on screen", "C) Add more hashtags"], ans: "B" },
      12 => { type: "multiple_choice", q: "An Instagram account grew from 2,340 to 2,471 followers, but its Reels brought 165 follows. How much did the account really grow?", opts: ["A) +131", "B) +165", "C) +2,471"], ans: "A" },
      13 => { type: "true_false", q: "Under the ASCI guidelines, a creator who got a free hamper from a bakery needs a clear label, such as \"Free gift\" or \"Ad\", even if her review is honest.", opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "What does \"batching\" mean in a weekly short video system?", opts: ["A) Posting the same clip many times", "B) Buying views in bulk", "C) Doing the same kind of job, such as filming, for several videos in one session"], ans: "C" },
      15 => { type: "multiple_choice", q: "Why did the Sweet Crumbs two-week plan leave out a trend video?", opts: ["A) The trend Reel brought only 1.1 follows per 1,000 views", "B) Trend videos are not allowed on Reels", "C) The trend Reel had the lowest likes"], ans: "A" }
    }

    AiShortVideosContent::LESSONS.each do |position, data|
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

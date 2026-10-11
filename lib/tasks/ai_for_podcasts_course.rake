require_relative "../ai_for_podcasts_content"

namespace :content do
  desc "Create AI for Podcasts course and populate all 15 lessons"
  task ai_for_podcasts: :environment do
    course = Course.find_or_create_by!(slug: "ai-for-podcasts") do |c|
      c.title       = "AI for Podcasts"
      c.description = "Use AI to plan, record, edit and grow a podcast. Shape your show, research episodes, prepare guests, record good audio, edit with transcript-based tools, write show notes, make clips, translate episodes and grow your audience, with consent for every voice."
      c.color       = "#e879f9"
      c.icon        = "🎙️"
      c.position    = 82
      c.published   = true
    end
    course.update!(description: "Use AI to plan, record, edit and grow a podcast. Shape your show, research episodes, prepare guests, record good audio, edit with transcript-based tools, write show notes, make clips, translate episodes and grow your audience, with consent for every voice.")
    puts "Course: #{course.title}"

    titles = {
      1 => "How Podcasts Work",
      2 => "Where AI Helps with Podcasts",
      3 => "Planning Your Show",
      4 => "Consent, Rights and Voice Cloning",
      5 => "Research and Episode Outlines",
      6 => "Finding and Preparing Guests",
      7 => "Recording Good Audio",
      8 => "Interviewing Well",
      9 => "Editing with AI Tools",
      10 => "Transcripts, Show Notes and Chapters",
      11 => "Clips and Video for Social Media",
      12 => "Growing Your Audience",
      13 => "Podcast Analytics and Money",
      14 => "Translation and Dubbing",
      15 => "Capstone: A Launch Plan for The Monsoon Mic"
    }

    descriptions = {
      1 => "Learn how an episode travels from your microphone to listeners through a podcast host and an RSS feed, and where audio and video podcasts go today.",
      2 => "See where AI saves time at each podcast stage, what a person must still check, and the main risks such as invented facts and voice cloning.",
      3 => "Make a one-page show plan with concept, audience, format, length, schedule and name, and use AI to test your ideas.",
      4 => "Learn the basics of guest release forms, music licences, consent for AI voices, platform labels and personality rights. General education, not legal advice.",
      5 => "Build a segment plan and a fact file for an episode, and check every claim from AI before it goes on air.",
      6 => "Find the right guests, write a respectful invitation, and prepare a guest brief and question list with AI help.",
      7 => "Choose and place microphones, quieten the room, set good levels and record remote guests, so your audio is clean from the start.",
      8 => "Ask open questions, listen for details and follow up well, and practise with an AI guest before the real interview.",
      9 => "Edit by transcript, remove filler words and clean up noise with AI tools, and never use an AI voice to put words in a guest's mouth.",
      10 => "Check an AI transcript for names, numbers and Malayalam words, then write show notes and chapters from the final episode.",
      11 => "Choose strong moments from an episode, turn them into vertical clips with checked captions and audiograms, and keep every clip fair to the guest.",
      12 => "Grow your podcast with clear titles, guest share kits, cross-promotion, a newsletter and honest ratings requests, and never buy fake numbers.",
      13 => "Read downloads, average % listened, followers and YouTube numbers correctly, and learn how sponsorships work with clear ASCI ad labels.",
      14 => "Use AI to translate show notes, subtitles and audio into Hindi and other languages, with consent for every voice and a native speaker's check.",
      15 => "Build a full launch plan for The Monsoon Mic: concept, three episode outlines, a guest pitch, an editing checklist, show notes and a promotion plan."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does a podcast host do for your show?", opts: ["A) It stores your episode files and makes your RSS feed", "B) It records the interview for you", "C) It writes your show notes"], ans: "A" },
      2 => { type: "multiple_choice", q: "An AI tool drafts your show notes from the transcript. What must you still check?", opts: ["A) Nothing, because it used the transcript", "B) Only the length of the summary", "C) Names, spellings, links and timestamps"], ans: "C" },
      3 => { type: "true_false", q: "If an AI assistant says a podcast name is not used by any other show, you do not need to search for it yourself.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "Joel misread a date. What is the safe way to fix it with an AI copy of his own voice?", opts: ["A) Fix it quietly so no one notices", "B) Get Joel's written consent and mention the AI fix in the show notes", "C) Use a guest's voice instead"], ans: "B" },
      5 => { type: "multiple_choice", q: "Your AI outline says \"pepper prices fell 30% this year\" but gives no source. What should you do?", opts: ["A) Find a real source or ask the guest; if you cannot confirm it, cut it", "B) Say it on air, because it sounds right", "C) Change it to 25% so it sounds less exact"], ans: "A" },
      6 => { type: "multiple_choice", q: "What should you send a guest in the guest brief?", opts: ["A) The full list of exact questions, so they can practise answers", "B) The time, place, topics and the release form", "C) Nothing, because a surprise interview sounds more natural"], ans: "B" },
      7 => { type: "multiple_choice", q: "During the sound check, the meter goes into the red every time Sarala laughs. What should Joel do?", opts: ["A) Lower the gain a little so her peaks stay below the red", "B) Leave it, because AI can fix clipping later", "C) Move her microphone to the other side of the room"], ans: "A" },
      8 => { type: "true_false", q: "If your AI practice guest mentions a date or a historical fact, you can use it as a fact in your real episode.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "A guest said a wrong number, and your editing tool offers to fix it with new speech in the guest's voice. What should you do?", opts: ["A) Accept it, because it is only one word", "B) Accept it, and mention it only on YouTube", "C) Do not use it; ask the guest to re-record, cut it, or correct it in the show notes"], ans: "C" },
      10 => { type: "multiple_choice", q: "Where should the chapter times in your show notes come from?", opts: ["A) The first transcript of the raw recording", "B) The final exported episode file", "C) The AI's estimate of where each topic starts"], ans: "B" },
      11 => { type: "multiple_choice", q: "AI ranks a clip first, but out of context the guest's joke sounds rude about someone. What should you do?", opts: ["A) Post it, because AI ranked it first", "B) Leave it out and choose another moment", "C) Post it with a funny caption"], ans: "B" },
      12 => { type: "true_false", q: "A giveaway where people must leave a 5-star review to enter is an honest way to get more ratings.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Your episodes had 5,450 downloads and 6,930 YouTube views in 30 days. How should you report this to a sponsor?", opts: ["A) Show 5,450 downloads and 6,930 YouTube views as two separate numbers", "B) Say you reached 12,380 listeners", "C) Show only the bigger number"], ans: "A" },
      14 => { type: "multiple_choice", q: "You want a Hindi version of a guest's interview. What is the safest first step?", opts: ["A) Clone the guest's voice in Hindi, since the release form covers editing", "B) Publish AI subtitles without anyone checking them", "C) Add Hindi subtitles and have a native Hindi speaker check them"], ans: "C" },
      15 => { type: "multiple_choice", q: "When you ask AI to draft a launch plan, what should you give it as fixed rules?", opts: ["A) Nothing, so the AI can be creative", "B) Only the name of the show", "C) Your dates, budget and consent rules"], ans: "C" }
    }

    AiForPodcastsContent::LESSONS.each do |position, data|
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

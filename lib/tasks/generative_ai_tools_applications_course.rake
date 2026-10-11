require_relative "../generative_ai_tools_applications_content"

namespace :content do
  desc "Create Generative AI Tools and Applications course and populate all 15 lessons"
  task generative_ai_tools_applications: :environment do
    course = Course.find_or_create_by!(slug: "generative-ai-tools-applications") do |c|
      c.title       = "Generative AI Tools and Applications"
      c.description = "Find and use the right generative AI tool for each job. Compare chat assistants and AI built into everyday apps, then create writing, images, slides, audio and video, research, work with spreadsheets, automate tasks and use every tool safely."
      c.color       = "#ec4899"
      c.icon        = "\u{1F9F0}"
      c.position    = 107
      c.published   = true
    end
    course.update!(title: "Generative AI Tools and Applications", description: "Find and use the right generative AI tool for each job. Compare chat assistants and AI built into everyday apps, then create writing, images, slides, audio and video, research, work with spreadsheets, automate tasks and use every tool safely.", color: "#ec4899", icon: "\u{1F9F0}", position: 107)
    puts "Course: #{course.title}"

    titles = {
      1 => "The Generative AI Tool Landscape",
      2 => "Chat Assistants Compared",
      3 => "AI Inside Everyday Apps",
      4 => "Choosing the Right Tool",
      5 => "Writing and Editing with AI",
      6 => "Creating Images with AI",
      7 => "Presentations and Documents",
      8 => "Audio, Voice and Music",
      9 => "Video with AI",
      10 => "Research and Search with AI",
      11 => "Spreadsheets and Data",
      12 => "Automating Tasks",
      13 => "Meetings and Notes",
      14 => "Using AI Tools Safely at Work and Home",
      15 => "Capstone: Launch a Product with AI Tools"
    }

    descriptions = {
      1 => "Learn the nine main kinds of generative AI tools and how they work together on one real task, from planning to automation.",
      2 => "Compare ChatGPT, Claude, Gemini, Microsoft Copilot and Perplexity in general words, check their privacy settings and test them fairly.",
      3 => "Use the AI already built into Microsoft 365, Google Workspace, Canva, Notion and Adobe, and learn when built-in AI is enough.",
      4 => "Choose the right AI tool by judging task fit, quality, cost, privacy and accessibility in a simple weighted table.",
      5 => "Draft, rewrite, change tone and translate with AI while keeping your own voice, and check every fact before you publish.",
      6 => "Write six-part image prompts, edit images and keep your brand look, and learn the rules on rights, labels and content credentials.",
      7 => "Make slides and documents with AI the safe way: write a fact sheet, fix the outline, let AI design, then check every fact.",
      8 => "Use text-to-speech, transcription and AI music for real tasks, write scripts for the ear, and follow the consent rules for voice cloning.",
      9 => "Plan a short video from script to storyboard, choose what to film for real and what AI can make, and label AI video correctly.",
      10 => "Use AI search and deep-research tools, ask clear research questions, and check every important claim against its source.",
      11 => "Use Copilot in Excel and Gemini in Google Sheets to explain data, write formulas and make charts, then check every number yourself.",
      12 => "Automate repeating tasks with Zapier, Make and Power Automate, add AI steps and simple agents, and keep a human approval in the loop.",
      13 => "Use AI transcripts and summaries in Teams, Zoom and Google Meet, ask people first, and check every recap before you share it.",
      14 => "Protect your AI accounts and data, follow a simple AI policy, help children use AI safely and spot AI-powered scams.",
      15 => "Launch Kettle & Crumb's autumn menu with AI tools: a fact sheet, plan, copy, images, slides and a short video, all checked and labelled."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Grace wants a task to run every Monday: turn the weekly special in her spreadsheet into a draft social post. Which kind of tool fits best?", opts: ["A) An image generator", "B) An automation tool with an AI step and a human approval", "C) A music maker"], ans: "B" },
      2 => { type: "true_false", q: "If two chat assistants give confident answers, you can post them without checking the facts.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Chris wants a summary of a long supplier email thread that is open in Outlook at work. What is usually the best choice?", opts: ["A) Copy the thread into a free personal AI account", "B) Ask a music tool", "C) Use the built-in Copilot in Outlook, then check the dates and numbers in the emails"], ans: "C" },
      4 => { type: "multiple_choice", q: "In a weighted comparison table, why do you give each criterion a weight?", opts: ["A) So the things that matter most to you count for more points", "B) So the AI can choose the tool for you", "C) So every tool gets the same score"], ans: "A" },
      5 => { type: "multiple_choice", q: "An AI draft of Grace's newsletter says Kettle & Crumb is \"award-winning\", but it has never won an award. What should she do?", opts: ["A) Keep it, because it sounds good", "B) Remove the claim and check every other fact against her own menu", "C) Ask the AI to also write two customer reviews"], ans: "B" },
      6 => { type: "multiple_choice", q: "Grace is selling the Maple Pecan Cinnamon Bun. Which image is the best choice for the bun on her launch poster?", opts: ["A) A real photo of Tom's bun, with AI used only to tidy the background", "B) A shiny AI-generated bun that looks bigger than the real one", "C) An AI image of a famous chef holding the bun"], ans: "A" },
      7 => { type: "multiple_choice", q: "What does \"structure first, then design\" mean when you make slides with AI?", opts: ["A) Pick a nice template first, then add any facts the AI suggests", "B) Write a fact sheet and fix the outline before the AI designs the slides", "C) Let the AI choose the facts so the design looks complete"], ans: "B" },
      8 => { type: "true_false", q: "You can clone a colleague's voice for a store announcement without asking, as long as it is only played inside the shop.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "An AI video tool makes a clip of the Ridgeback boot standing in a river for an hour. Chris has no test results. What should he do?", opts: ["A) Post it as proof that the boot is waterproof", "B) Post it with no caption", "C) Not use it, because it looks like a test result he cannot prove"], ans: "C" },
      10 => { type: "multiple_choice", q: "An AI research answer says a rule is \"required by law\" and gives a link. What should you do first?", opts: ["A) Open the link and find the exact sentence that supports the claim", "B) Trust it, because it has a link", "C) Ask the AI to repeat the answer more confidently"], ans: "A" },
      11 => { type: "multiple_choice", q: "An AI summary says soup sales rose from 58 to 120 bowls, \"a rise of 62%\". What is the correct percentage rise?", opts: ["A) 62%", "B) 106.9%", "C) 48.3%"], ans: "B" },
      12 => { type: "multiple_choice", q: "Grace's automation uses AI to draft an Instagram caption every Monday. Where should the human check go?", opts: ["A) After the AI draft and before the caption is posted", "B) Only once, when the automation is first switched on", "C) Nowhere, because the AI step has a good prompt"], ans: "A" },
      13 => { type: "true_false", q: "If the meeting app shows an AI notice on screen, you never need to ask people before you use AI notes.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "An email from a regular supplier says their bank details have changed and asks you to pay today. What should you do first?", opts: ["A) Reply to the email to ask if it is real", "B) Pay, because the email uses the right logo", "C) Call the supplier on the phone number you already have"], ans: "C" },
      15 => { type: "multiple_choice", q: "In Grace's launch, why does every AI prompt use the same fact sheet?", opts: ["A) It makes the AI tools free to use", "B) It is one checked source of prices, dates and allergens, so every output can be compared with it", "C) It lets AI decide the prices"], ans: "B" }
    }

    GenerativeAiToolsApplicationsContent::LESSONS.each do |position, data|
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

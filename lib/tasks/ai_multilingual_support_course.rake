require_relative "../ai_multilingual_support_content"

namespace :content do
  desc "Create Multilingual Support with AI course and populate all 15 lessons"
  task ai_multilingual_support: :environment do
    course = Course.find_or_create_by!(slug: "ai-multilingual-support") do |c|
      c.title       = "Multilingual Support with AI"
      c.description = "Use AI to support customers in their own language. Plan language coverage, translate replies and help articles, handle Hinglish and mixed languages, keep the right tone and culture, check quality and scale support across India and beyond."
      c.color       = "#67e8f9"
      c.icon        = "🌐"
      c.position    = 60
      c.published   = true
    end
    course.update!(description: "Use AI to support customers in their own language. Plan language coverage, translate replies and help articles, handle Hinglish and mixed languages, keep the right tone and culture, check quality and scale support across India and beyond.")
    puts "Course: #{course.title}"

    titles = {
      1 => "Why Language Matters in Support",
      2 => "Where AI Helps with Languages",
      3 => "Planning Language Coverage",
      4 => "Detecting Language and Code-Mixing",
      5 => "Machine Translation Basics",
      6 => "Translating Support Replies with AI",
      7 => "Tone, Politeness and Culture",
      8 => "Translating Help Articles",
      9 => "Glossaries and Do-Not-Translate Lists",
      10 => "Voice and Phone Support in Many Languages",
      11 => "Quality Checks for Translations",
      12 => "Sensitive Topics Across Languages",
      13 => "Measuring Multilingual Support",
      14 => "Accessibility and Simple Language",
      15 => "Capstone: Launch Support in Three New Languages"
    }

    descriptions = {
      1 => "See why replying in the customer's language builds trust and saves time, how India's many languages appear in support, and what language mistakes cost.",
      2 => "Learn the language jobs AI can do in support, such as detecting, translating and drafting, and where people must still check and decide.",
      3 => "Count contacts by language, turn them into agent hours and build a coverage plan with a level, channels and hours for each language.",
      4 => "Understand scripts, transliteration and code-mixing such as Hinglish and Tanglish, and route each message to the right language queue safely.",
      5 => "Learn how AI translation works, the mistakes it makes with numbers, names and tone, and when a native speaker must check a translation.",
      6 => "Send replies in the customer's language safely: decide the answer from real facts, write plain English, translate with clear rules and check every name and number.",
      7 => "Choose the respectful form of \"you\", avoid replies that are too casual or too stiff, and plan for festivals and local words in each city.",
      8 => "Choose which help articles to translate first, prepare a style guide, draft with AI, review with native speakers and keep translations up to date.",
      9 => "Build a glossary and a do-not-translate list for brand names, screen names, codes, numbers and support words, and use it in every prompt and check.",
      10 => "Use speech-to-text and translation for calls and voice notes, catch errors in numbers and names, and support callers with callbacks and interpreters.",
      11 => "Check translations in layers with automatic checks, back-translation and native reviewers, sort errors by severity, and measure quality with a random sample.",
      12 => "Spot health, money, legal and fraud topics in any language, send them to the right person, and know when to use a professional human translator.",
      13 => "Measure CSAT, resolution time and cost per contact by language, read small samples with care and find the real cause before you act.",
      14 => "Write plain, accessible replies in every language for screen reader users, customers who read little and people who prefer voice notes.",
      15 => "Build Swift Mart's launch pack for Tamil, Kannada and Marathi support and run a go/no-go check with clear rules and 90-day targets."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "A Swift Mart customer writes in Telugu script and gets an English reply full of policy words. What is the most likely cost?", opts: ["A) No cost, because English is understood everywhere", "B) Repeat contacts and a lower CSAT score", "C) A lower delivery fee for the customer"], ans: "B" },
      2 => { type: "true_false", q: "Because AI translations sound fluent, a bot can safely send refund replies in any language without a person checking them.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Swift Mart expects 1,000 Kannada contacts a month and its average handle time is 6 minutes. How many agent hours is that?", opts: ["A) 60 hours", "B) 600 hours", "C) 100 hours"], ans: "C" },
      4 => { type: "multiple_choice", q: "A customer types \"Refund kadhi milel?\", which is Marathi written in English letters. What is writing a language in another script's letters called?", opts: ["A) Transliteration", "B) Translation", "C) Back-translation"], ans: "A" },
      5 => { type: "multiple_choice", q: "Which translation should a native speaker check word by word before it is used?", opts: ["A) An English version of a customer message that only the agent reads", "B) A reply telling a customer about a ₹480 refund and when it will arrive", "C) A list of chats tagged by language for an internal report"], ans: "B" },
      6 => { type: "multiple_choice", q: "An agent asks AI: \"Reply to this customer in Kannada: Refund yaavaga barutte? SM-50391\". What is the biggest problem with this prompt?", opts: ["A) AI cannot read Kannada written in English letters", "B) The prompt should be written in Kannada", "C) The AI has no facts about the refund, so it may invent a date or a policy"], ans: "C" },
      7 => { type: "multiple_choice", q: "A customer writes to Swift Mart in a very casual way. Which form of \"you\" should a Hindi reply use?", opts: ["A) The respectful form, \"aap\"", "B) The informal form, \"tu\", to match the customer", "C) Whichever form the AI picks"], ans: "A" },
      8 => { type: "true_false", q: "When an English help article changes, its translations should be marked out of date, and the changed parts updated and reviewed.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "Which Swift Mart term belongs on the do-not-translate list?", opts: ["A) delivery slot", "B) Swift Mart Wallet", "C) damaged item"], ans: "B" },
      10 => { type: "multiple_choice", q: "A call transcript shows the order ID as \"SM 5 1 0 to 4\". What should the agent do?", opts: ["A) Search for SM-5104 and reply at once", "B) Ask AI to choose the most likely order ID", "C) Read the order ID back to the customer digit by digit and confirm it"], ans: "C" },
      11 => { type: "multiple_choice", q: "A back-translation of a Tamil reply shows that \"5 to 7 working days\" became \"5 to 7 days\". How serious is this error in Swift Mart's QA list?", opts: ["A) Minor, because the meaning is almost the same", "B) Major, because it is a glossary error", "C) Critical, because a time period about money changed"], ans: "C" },
      12 => { type: "true_false", q: "A formal legal notice written in Marathi can be safely handled with AI translation alone, if an agent checks the numbers.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "In the pilot, 34 of 50 Kannada survey answers were 4 or 5 out of 5. What is the Kannada CSAT?", opts: ["A) 68%", "B) 34%", "C) 50%"], ans: "A" },
      14 => { type: "multiple_choice", q: "Which change makes a support reply easier to use for a customer who uses a screen reader?", opts: ["A) Send the refund steps as a screenshot", "B) Send real text in the customer's chosen script, with few emojis", "C) Add more emojis so the message feels friendly"], ans: "B" },
      15 => { type: "multiple_choice", q: "At the go/no-go meeting, 18 of 20 Marathi QA test replies passed, and one had a critical error. The rule says zero critical errors. What should happen?", opts: ["A) Delay the Marathi launch, fix the cause and run the QA test again", "B) Launch Marathi, because 90% is close to the 95% target", "C) Cancel the launch of all three languages"], ans: "A" }
    }

    AiMultilingualSupportContent::LESSONS.each do |position, data|
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

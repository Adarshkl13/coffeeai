require_relative "../generative_ai_fundamentals_content"

namespace :content do
  desc "Create Generative AI Fundamentals course and populate all 15 lessons"
  task generative_ai_fundamentals: :environment do
    course = Course.find_or_create_by!(slug: "generative-ai-fundamentals") do |c|
      c.title       = "Generative AI Fundamentals"
      c.description = "Start here to understand generative AI. Learn what it is, how chatbots and image makers work in plain words, how to write good prompts, check AI answers, protect your privacy and use AI fairly and honestly."
      c.color       = "#db2777"
      c.icon        = "\u2728"
      c.position    = 104
      c.published   = true
    end
    course.update!(title: "Generative AI Fundamentals", description: "Start here to understand generative AI. Learn what it is, how chatbots and image makers work in plain words, how to write good prompts, check AI answers, protect your privacy and use AI fairly and honestly.", color: "#db2777", icon: "\u2728", position: 104)
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is Generative AI?",
      2 => "A Short History of Generative AI",
      3 => "How Chatbots Work, in Plain Words",
      4 => "How AI Makes Images, Audio and Video",
      5 => "Meet the Main Tools",
      6 => "Writing Your First Prompts",
      7 => "Prompting Patterns That Work",
      8 => "Working with Your Own Files",
      9 => "Checking AI Answers",
      10 => "Why AI Gets Things Wrong",
      11 => "Privacy and Safety",
      12 => "Copyright and Honest Use",
      13 => "Bias, Fairness and Responsible Use",
      14 => "Generative AI and Your Future",
      15 => "Capstone: Your Personal Generative AI Toolkit"
    }

    descriptions = {
      1 => "Learn what generative AI is, how it differs from AI that only sorts or predicts, and meet Mia and Tom, who use it for study and work.",
      2 => "Follow the history of generative AI from rules and deep learning to the 2017 Transformer, ChatGPT in 2022 and today's multimodal assistants.",
      3 => "Understand in plain words how chatbots work: tokens, training, parameters, next-token prediction and the context window, and why they can be wrong.",
      4 => "See how AI makes images from noise, turns text into speech and creates short videos, what each is good and bad at, and how to use them honestly.",
      5 => "Meet ChatGPT, Claude, Gemini and Microsoft Copilot, compare free and paid plans, and learn a simple way to choose the right tool.",
      6 => "Write clear prompts with a task, context and format, compare weak and better prompts, and improve answers with follow-up questions.",
      7 => "Use five prompt patterns that work: give a role, show examples, ask for steps, set limits and improve the answer in rounds.",
      8 => "Upload your own documents and photos to get summaries and answers, keep the AI to what the file says, and learn what never to upload.",
      9 => "Spot hallucinations, check facts, numbers and sources, read laterally like a fact checker, and match your checking to the risk.",
      10 => "Learn the four main reasons AI gets things wrong: made-up facts, out-of-date knowledge, bias from data and agreeing too easily.",
      11 => "Learn what never to share with AI tools, which privacy settings to check, and how to spot and stop deepfakes and AI voice scams.",
      12 => "Understand in general words who owns AI output in the US and UK, follow school and work honesty rules, and say clearly when you used AI.",
      13 => "See how AI output can be biased, check it with simple tests like the swap test, and keep decisions about people with people.",
      14 => "Look at your own tasks to see how AI changes work, learn which skills matter more, and make a small plan to keep learning.",
      15 => "Build your personal generative AI toolkit: choose tools, create a prompt library, set a checking routine and write your own rules."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Which of these is an example of generative AI?", opts: ["A) An email app moves a message to the spam folder", "B) A map app predicts what time you will arrive", "C) A chatbot writes a new reply to a customer email"], ans: "C" },
      2 => { type: "multiple_choice", q: "When did OpenAI launch ChatGPT for the public?", opts: ["A) June 2017", "B) 30 November 2022", "C) May 2024"], ans: "B" },
      3 => { type: "true_false", q: "A chatbot looks up every answer in a database of checked facts, so a confident answer is always correct.", opts: ["True", "False"], ans: "False" },
      4 => { type: "multiple_choice", q: "How does a diffusion image maker create a new picture?", opts: ["A) It starts from random noise and removes it step by step, guided by your prompt", "B) It copies a matching photo from the internet", "C) It joins together pieces of photos that you upload"], ans: "A" },
      5 => { type: "multiple_choice", q: "Tom wants AI help with a work task at Hudson Lane Realty. Which tool should he use?", opts: ["A) The newest free app he can find", "B) The tool his employer approves, with his work account", "C) Whichever tool has the most features"], ans: "B" },
      6 => { type: "multiple_choice", q: "Which three parts make a clear first prompt?", opts: ["A) Task, context and format", "B) A greeting, a question and a thank-you", "C) A long story, some emojis and a deadline"], ans: "A" },
      7 => { type: "true_false", q: "If you tell the AI \"You are an expert tutor\", its answers will always be correct, so you do not need to check them.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "Tom wants a quick summary of a rental application that has the applicant's Social Security number. What should he do?", opts: ["A) Upload it to his personal free AI app", "B) Upload it to Copilot but delete the chat later", "C) Not upload it to any AI tool"], ans: "C" },
      9 => { type: "multiple_choice", q: "What is lateral reading?", opts: ["A) Reading the AI answer slowly from top to bottom twice", "B) Leaving the answer and opening new tabs to see what trusted sources say", "C) Asking the same AI the same question again"], ans: "B" },
      10 => { type: "multiple_choice", q: "Mia asks \"The Calvin cycle happens on the thylakoid membranes, right?\" and the AI wrongly says yes. What is the main reason?", opts: ["A) Its knowledge is out of date", "B) Bias from its training data", "C) It agrees too easily with a leading question"], ans: "C" },
      11 => { type: "multiple_choice", q: "Tom gets a call that sounds exactly like Dana. She asks him to send a tenant new bank details right now. What should he do first?", opts: ["A) Send the details quickly, because the voice is clearly Dana's", "B) Ask the caller to confirm the tenant's name", "C) Hang up and call Dana back on the number saved in his phone"], ans: "C" },
      12 => { type: "multiple_choice", q: "Mia's college says AI must not write work she hands in, and she must say when she used AI for an assessed task. Which action follows the rule?", opts: ["A) She asks AI to quiz her, writes the essay herself and adds an AI-use note", "B) She pastes an AI paragraph into her essay and changes a few words", "C) She asks AI to write her conclusion and does not mention it"], ans: "A" },
      13 => { type: "true_false", q: "If an AI tool writes \"Perfect for young professionals\" in a rental listing, Tom can keep it, because the AI chose the words and not him.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "In Tom's task audit, which task is best kept with a person, with little help from AI?", opts: ["A) Writing a first draft of a listing from a fact sheet", "B) Showing an apartment to a family and answering their questions", "C) Drafting replies to inquiry emails"], ans: "B" },
      15 => { type: "multiple_choice", q: "Which set of four parts makes up the personal AI toolkit in this course?", opts: ["A) The newest apps, a paid plan, a fast laptop and a big screen", "B) An AI detector, a password list, a VPN and a backup drive", "C) Tools, a prompt library, a checking routine and personal rules"], ans: "C" }
    }

    GenerativeAiFundamentalsContent::LESSONS.each do |position, data|
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

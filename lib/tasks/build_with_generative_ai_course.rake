require_relative "../build_with_generative_ai_content"

namespace :content do
  desc "Create Build with Generative AI course and populate all 15 lessons"
  task build_with_generative_ai: :environment do
    course = Course.find_or_create_by!(slug: "build-with-generative-ai") do |c|
      c.title       = "Build with Generative AI"
      c.description = "Build real apps with generative AI. Call model APIs from Python, write prompts in code, stream answers, get structured JSON, use tools, add chat memory, files and search, handle errors and costs, and test and secure your feature."
      c.color       = "#be185d"
      c.icon        = "\u{1F6E0}\uFE0F"
      c.position    = 105
      c.published   = true
    end
    course.update!(title: "Build with Generative AI", description: "Build real apps with generative AI. Call model APIs from Python, write prompts in code, stream answers, get structured JSON, use tools, add chat memory, files and search, handle errors and costs, and test and secure your feature.", color: "#be185d", icon: "\u{1F6E0}\uFE0F", position: 105)
    puts "Course: #{course.title}"

    titles = {
      1 => "How Generative AI Apps Work",
      2 => "Your First API Call",
      3 => "Prompts in Code",
      4 => "Tokens, Context and Cost",
      5 => "Streaming Responses",
      6 => "Structured Output",
      7 => "Tool Use (Function Calling)",
      8 => "Chatbots with Memory",
      9 => "Images and Documents as Input",
      10 => "Embeddings and Semantic Search",
      11 => "A Simple Retrieval Feature",
      12 => "Errors, Retries and Rate Limits",
      13 => "Testing Your AI Feature",
      14 => "Security and Safety",
      15 => "Capstone: Build StudyBuddy"
    }

    descriptions = {
      1 => "See how a generative AI app works: your app, the model API, prompts and responses. Learn about latency, cost, limits and the build loop.",
      2 => "Make your first model API call in Python. Keep the API key in an environment variable, choose a model and read the response.",
      3 => "Build prompts in code with a system prompt, templates and few-shot examples. Learn the settings max_tokens and effort.",
      4 => "Count tokens, understand context windows and estimate the cost of one request and a whole month with made-up prices.",
      5 => "Stream model answers so the first words appear quickly, in the terminal and in a web page with FastAPI.",
      6 => "Get JSON you can trust: describe the shape with Pydantic, use structured outputs, and retry when a reply breaks the rules.",
      7 => "Give the model tools: define them with a schema, run the call in your code and send the result back in a safe loop.",
      8 => "Build a chat that remembers by sending the history, keep long chats affordable with summaries, and store chats safely.",
      9 => "Send images and PDFs to the model, ask good questions about them, and handle size limits, cost and privacy.",
      10 => "Learn what embeddings are, measure meaning with cosine similarity and build a tiny semantic search over study notes.",
      11 => "Build a retrieve-then-generate feature: find the best note lines, answer only from them and cite each source. Learn when you need a full RAG system.",
      12 => "Handle API errors well: know which errors to retry, use backoff and timeouts, add a fallback and show friendly messages. Plan for rate limits.",
      13 => "Test an AI feature: build a test set, write checks that allow different wording, use an LLM grader and run regression tests before each release.",
      14 => "Protect your AI feature: limit prompt injection, keep keys and personal data safe, check model output and set limits against abuse and runaway cost.",
      15 => "Finish StudyBuddy: a FastAPI app that streams cited explanations and returns validated quiz JSON, with tests and a release checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "In StudyBuddy, where should the model API key be kept?", opts: ["A) In the JavaScript of the web page, so the browser can call the model directly", "B) On the server, read from an environment variable", "C) In a comment at the top of the Python file"], ans: "B" },
      2 => { type: "true_false", q: "On Claude Sonnet 5.5, message.content[0].text is always the answer text, so you can print it directly.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "Ella sets temperature=0.2 in a request to claude-sonnet-5-5. What happens?", opts: ["A) The API returns a 400 error, because Sonnet 5.5 does not accept a non-default temperature", "B) The answers become more creative", "C) The answers become shorter and cheaper"], ans: "A" },
      4 => { type: "multiple_choice", q: "With made-up prices of $2.50 per million input tokens and $12.50 per million output tokens, what does a request with 1,080 input tokens and 350 output tokens cost?", opts: ["A) $0.0027", "B) $0.0175", "C) About $0.0071"], ans: "C" },
      5 => { type: "multiple_choice", q: "What does streaming mainly improve for the user?", opts: ["A) The time until the first words appear on screen", "B) The number of tokens you are billed for", "C) The accuracy of the answer"], ans: "A" },
      6 => { type: "multiple_choice", q: "Ella's Quiz schema says each question has exactly 4 options. She uses structured outputs. What makes sure there are exactly 4?", opts: ["A) The API schema, because structured outputs enforce every JSON Schema rule", "B) Pydantic in her code, because the API cannot enforce maxItems and only passes it on as a hint", "C) Nothing, because the model always follows the prompt"], ans: "B" },
      7 => { type: "true_false", q: "On Claude Sonnet 5.5, setting tool_choice to {\"type\": \"any\"} is the best way to make sure the model calls a tool.", opts: ["True", "False"], ans: "False" },
      8 => { type: "multiple_choice", q: "For the chat feature, why does Ella move the study notes into the system prompt?", opts: ["A) The system prompt is free of charge", "B) The model reads the system prompt faster", "C) So trimming old turns can never remove the notes"], ans: "C" },
      9 => { type: "multiple_choice", q: "A student uploads a 4032 x 3024 phone photo of their working. What should StudyBuddy do before sending it?", opts: ["A) Shrink it, for example to a long edge of 1,568 px, so it costs fewer tokens and stays readable", "B) Send it as it is, because bigger images always give better answers", "C) Turn it into a Word file"], ans: "A" },
      10 => { type: "multiple_choice", q: "Ella built her index with voyage-4. A teammate embeds the questions with a different embedding model. What happens?", opts: ["A) The search gets better, because two models are used", "B) The scores are meaningless, because vectors from different models cannot be compared", "C) Nothing changes, because all vectors have numbers in them"], ans: "B" },
      11 => { type: "multiple_choice", q: "In Ella's ask() function, what happens when no note line scores at least MIN_SCORE?", opts: ["A) The model answers from its general knowledge", "B) StudyBuddy says it could not find this in the notes, and does not call the model", "C) The search lowers MIN_SCORE until it finds three lines"], ans: "B" },
      12 => { type: "true_false", q: "In the current Anthropic Python SDK, catching anthropic.InternalServerError also catches a 529 overloaded error.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Which StudyBuddy check is the best job for an LLM grader?", opts: ["A) The quiz has exactly 5 questions", "B) The answer is under 150 words", "C) The answer agrees with the notes and invents nothing"], ans: "C" },
      14 => { type: "multiple_choice", q: "What should StudyBuddy send to the model API as metadata user_id?", opts: ["A) A hashed code made from the student ID with a secret salt", "B) The student's full name, so abuse can be traced", "C) The student's school email address"], ans: "A" },
      15 => { type: "multiple_choice", q: "Why does POST /quiz not stream its answer, while POST /explain does?", opts: ["A) Streaming costs more tokens", "B) The quiz JSON must be complete and validated before anyone sees it", "C) FastAPI cannot stream JSON"], ans: "B" }
    }

    BuildWithGenerativeAiContent::LESSONS.each do |position, data|
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

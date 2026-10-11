require_relative "../prompt_engineering_content"

namespace :content do
  desc "Create Prompt Engineering for Developers course and populate all 20 lessons"
  task prompt_engineering: :environment do
    course = Course.find_or_create_by!(slug: "prompt-engineering") do |c|
      c.title       = "Prompt Engineering for Developers"
      c.description = "Learn to write prompts that work every time. Give clear instructions, context and examples, get reliable JSON output, break big tasks into steps, test prompts like code and defend against prompt injection. Finish by building and testing a real prompt in the Prompt Lab."
      c.color       = "#a855f7"
      c.icon        = "✍️"
      c.position    = 27
      c.published   = true
    end
    course.update!(description: "Learn to write prompts that work every time. Give clear instructions, context and examples, get reliable JSON output, break big tasks into steps, test prompts like code and defend against prompt injection. Finish by building and testing a real prompt in the Prompt Lab.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is a Prompt?",
      2 => "Clear and Specific Instructions",
      3 => "Giving Context and a Role",
      4 => "Examples in the Prompt (Few-Shot)",
      5 => "Structuring Prompts with Tags and Sections",
      6 => "Asking for a Format: Lists, Tables and JSON",
      7 => "Structured Output with JSON Schemas",
      8 => "Controlling Length, Tone and Style",
      9 => "Letting the Model Think Step by Step",
      10 => "Handling Uncertainty and Citing Sources",
      11 => "Breaking Big Tasks into Steps (Prompt Chaining)",
      12 => "Prompts for Extraction and Classification",
      13 => "Prompts for Summaries and Rewriting",
      14 => "Prompts for Code",
      15 => "Prompt Templates and Variables in Your App",
      16 => "Testing Prompts with Test Cases",
      17 => "Comparing Prompt Versions",
      18 => "Prompt Injection and How to Defend",
      19 => "Cost, Speed and Prompt Caching",
      20 => "Capstone: Build and Test a Prompt in the Prompt Lab"
    }

    descriptions = {
      1 => "Learn how a model predicts text, the difference between the system prompt and the user message, and why the prompt is all the model knows.",
      2 => "Turn vague requests into clear ones by stating the goal, audience, format and limits, and check them with the new employee test.",
      3 => "Give the model the facts, a role and details about the user, and put long documents before the question.",
      4 => "Show the model what you want with a few examples, choose varied examples, and avoid the model copying them too closely.",
      5 => "Use XML-style tags and sections to keep data separate from instructions and to make answers easy for your code to read.",
      6 => "Ask for an exact output shape like a list, table or JSON, and parse the answer safely in code.",
      7 => "Use a JSON Schema to describe valid output, check every answer in code and retry with the error message.",
      8 => "Set length, tone and reading level in the prompt, and learn why max_tokens is only a hard cut.",
      9 => "Ask the model to reason before it answers, keep the answer in its own tags and know when thinking is worth the cost.",
      10 => "Let the model say \"I don't know\", answer only from your documents and check its quotes and citations.",
      11 => "Split a big task into small prompts, pass each output to the next step, and check the results between steps.",
      12 => "Pull fields out of text and choose labels from a fixed list, with an \"other\" label, a confidence level and checks in code.",
      13 => "Write summary prompts with a clear length, focus, audience and format, and rewrite text without changing the facts.",
      14 => "Write prompts to generate, explain, review and debug code, and always run and review the code you get back.",
      15 => "Keep prompts as templates with placeholders, fill them safely in code, store them in files and give them versions.",
      16 => "Build a test set of inputs with automatic checks. Run every case after each prompt change.",
      17 => "Compare two prompt versions fairly on the same test set. Read fixed and broken cases, and run more than once.",
      18 => "Learn how direct and indirect prompt injection work. Defend with tags, limited tools and output checks.",
      19 => "See where token costs come from, how prompt caching reuses a stable prefix, and how to measure cost and speed.",
      20 => "Build a support-ticket classifier in the Prompt Lab, test it, improve it and score your version log."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "In the Messages API, where do you usually put the model's role and stable rules?", opts: ["A) In the system prompt", "B) In max_tokens", "C) In the model name"], ans: "A" },
      2 => { type: "true_false", q: "A prompt with only \"don't\" rules is usually as clear as one that says what to do.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "You send a 20-page contract and one question. Where should the question usually go?", opts: ["A) Before the contract", "B) After the contract, at the end", "C) In a separate API call"], ans: "B" },
      4 => { type: "multiple_choice", q: "Why should few-shot examples be varied?", opts: ["A) It makes the prompt shorter", "B) Models ignore examples that look alike", "C) So the model learns the task and does not copy one pattern"], ans: "C" },
      5 => { type: "multiple_choice", q: "Why do you wrap a customer email in <email> tags?", opts: ["A) So the model can tell the data apart from your instructions", "B) Because the API only accepts XML", "C) To make the email shorter"], ans: "A" },
      6 => { type: "multiple_choice", q: "Your code will read the model's answer with json.loads(). Which prompt line helps most?", opts: ["A) Describe the products in any way you like.", "B) Return only the JSON array. Do not add any other text.", "C) Start with a friendly greeting."], ans: "B" },
      7 => { type: "multiple_choice", q: "The model's JSON fails your schema check. What is a good next step?", opts: ["A) Send the exact error back to the model and ask for corrected JSON, with a retry limit.", "B) Use the data anyway, because it is JSON.", "C) Remove the schema from the prompt."], ans: "A" },
      8 => { type: "true_false", q: "Setting max_tokens to a small number makes the model plan a shorter, complete answer.", opts: ["True", "False"], ans: "False" },
      9 => { type: "multiple_choice", q: "Why should the model write its reasoning before its final answer?", opts: ["A) It makes every call cheaper.", "B) The API requires it.", "C) The model can only use reasoning it has already written."], ans: "C" },
      10 => { type: "multiple_choice", q: "Which prompt instruction best reduces made-up facts?", opts: ["A) Always give an answer, even if you are not sure.", "B) Answer only from the documents, quote them, and say \"I don't know\" if the answer is not there.", "C) Use your own knowledge to fill any gaps."], ans: "B" },
      11 => { type: "multiple_choice", q: "In a prompt chain, what should your code do between two steps?", opts: ["A) Check the output of the first step before it goes to the next step", "B) Join all the prompts into one long prompt", "C) Send the same prompt again to get a second answer"], ans: "A" },
      12 => { type: "multiple_choice", q: "Why should a classification prompt include an \"other\" label?", opts: ["A) It makes the model answer faster", "B) It lets the model choose a safe label when no real label fits", "C) It makes the output valid JSON"], ans: "B" },
      13 => { type: "true_false", q: "When you ask a model to rewrite a message in a friendlier tone, it is fine if it changes \"7 working days\" to \"about a week\".", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "What is the best thing to include in a prompt that asks for new code?", opts: ["A) Only the name of the function", "B) A request to make the code as long as possible", "C) The language and version, the rules, and tests the code must pass"], ans: "C" },
      15 => { type: "multiple_choice", q: "Why should you log the prompt version with every model call?", opts: ["A) So you know which prompt made a bad answer and can roll back", "B) Because the model needs the version number to answer", "C) To make the prompt shorter"], ans: "A" },
      16 => { type: "multiple_choice", q: "Which check fits best when a classifier must answer with exactly one label, such as \"billing\"?", opts: ["A) contains", "B) max words", "C) equals"], ans: "C" },
      17 => { type: "multiple_choice", q: "Prompt B passes more test cases than prompt A, but one case that passed with A now fails. What is that case called?", opts: ["A) A regression", "B) A few-shot example", "C) A cache miss"], ans: "A" },
      18 => { type: "true_false", q: "Putting untrusted text inside tags and telling the model it is data fully solves prompt injection.", opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "For prompt caching to work well, where should the parts that never change go?", opts: ["A) At the end of the prompt", "B) At the start of the prompt", "C) In a random place each time"], ans: "B" },
      20 => { type: "multiple_choice", q: "In the capstone loop, what should you do after you read the failures?", opts: ["A) Change many things at once", "B) Delete the failing test cases", "C) Make one change and run all cases again"], ans: "C" }
    }

    PromptEngineeringContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code])

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

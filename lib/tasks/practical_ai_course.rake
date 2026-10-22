require_relative "../practical_ai_content"

namespace :content do
  desc "Create Practical AI course and populate all 22 lessons"
  task practical_ai: :environment do
    course = Course.find_or_create_by!(slug: "practical-ai") do |c|
      c.title       = "Practical AI"
      c.description = "Learn how to build real AI apps. Start with how LLMs and Transformers work. Then build RAG systems, AI agents and apps ready for production. You write Python code for every main idea."
      c.color       = "#6366f1"
      c.icon        = "🤖"
      c.position    = 18
      c.published   = true
    end
    course.update!(description: "Learn how to build real AI apps. Start with how LLMs and Transformers work. Then build RAG systems, AI agents and apps ready for production. You write Python code for every main idea.")   # keep the description in sync on every run
    puts "Course: #{course.title}"

    titles = {
      1 => "The AI Landscape",
      2 => "How Models Learn: Neurons, Loss & Gradient Descent",
      3 => "Transformers and Large Language Models",
      4 => "Tokenisation: How Text Becomes Numbers",
      5 => "Embeddings and Vector Space",
      6 => "Prompt Engineering Fundamentals",
      7 => "Advanced Prompting: Reasoning and Structured Outputs",
      8 => "Working with AI APIs: Responses and Messages",
      9 => "Conversations, Context Windows & Memory",
      10 => "Vector Databases and Semantic Search",
      11 => "RAG: Retrieval Augmented Generation",
      12 => "AI Agents: Tool Calling and MCP",
      13 => "Agent Workflows: Chains, Routing and Multi-Agent Systems",
      14 => "Evaluating AI Systems",
      15 => "AI Safety, Hallucination, and Reliability",
      16 => "Open-Weight Models: Self-Hosting and Quantisation",
      17 => "Fine-tuning: When and How",
      18 => "AI in Production: Streaming, Caching, Batching, Rate Limits",
      19 => "Building AI Applications: Architecture Patterns",
      20 => "Multimodal AI: Vision, Audio, and Beyond",
      21 => "Cost Optimisation and Model Selection",
      22 => "Building Your AI Portfolio"
    }

    descriptions = {
      1 => "See how AI, machine learning, deep learning and generative AI fit together. Choose the right approach for a problem.",
      2 => "See how neurons, loss functions and gradient descent train every model you call through an API.",
      3 => "Learn how attention, next-token prediction, sampling settings and reasoning models work.",
      4 => "Learn how BPE turns text into tokens. See why tokens affect cost, limits and how models handle other languages.",
      5 => "Turn text into vectors and measure meaning with cosine similarity. Pick an embedding model.",
      6 => "Write clear prompts with roles, context, examples, output formats and clearly marked documents.",
      7 => "Use reasoning methods and JSON-schema structured outputs. Then check the values in code.",
      8 => "Call the OpenAI, Anthropic and Gemini APIs. Read responses and usage, and handle errors with retries.",
      9 => "Manage chats with many turns using stateless APIs, token budgets, summaries and long-term memory.",
      10 => "Store and search embeddings with ANN indexes and pgvector. Use hybrid search with rank fusion.",
      11 => "Build a RAG pipeline with chunking, retrieval, grounded prompts and citations.",
      12 => "Run tool-calling loops safely. Connect tools and data through the Model Context Protocol.",
      13 => "Combine model calls with chains, gates, routing, voting and evaluator loops. Decide when multi-agent systems are worth the cost.",
      14 => "Measure quality with eval sets, code graders and LLM-as-judge. Do this before and after every change.",
      15 => "Reduce hallucinations. Protect against prompt injection with several layers of checks in code.",
      16 => "Run open-weight models on your own machine and estimate memory. Use quantisation, and decide when self-hosting is better than an API.",
      17 => "Decide when fine-tuning is better than prompting and RAG. Prepare clean data, and prove the gain with evals.",
      18 => "Ship AI features with streaming, prompt and response caching, batch APIs and rate-limit handling.",
      19 => "Choose an architecture pattern. Add gateways, fallbacks, circuit breakers and human review.",
      20 => "Send images and audio to models. Build document-processing pipelines that check their output.",
      21 => "Estimate and cut AI costs with model choice, effort, caching, batching and routing.",
      22 => "Plan, build and test a Q&A final project that cites its sources. Add it to your AI portfolio.",
    }

    exercises = {
      1 => { type: "multiple_choice", q: "You need to predict loan defaults from a spreadsheet. It has 50,000 rows with 12 numeric columns. What should you try first?", opts: ["A) A classic supervised ML model such as gradient boosting", "B) A frontier LLM given each row in a prompt, because LLMs are the strongest models", "C) Training a new Transformer from scratch on the spreadsheet"], ans: "A" },
      2 => { type: "multiple_choice", q: "During training, the gradient of the loss for a weight is negative. What does gradient descent do to that weight?", opts: ["A) Makes it smaller, because the weight always moves the same way as its gradient", "B) Leaves it the same until the gradient becomes positive", "C) Makes it larger"], ans: "C" },
      3 => { type: "true_false", q: "A lower temperature makes an LLM more likely to pick the next token with the highest probability.", opts: ["True", "False"], ans: "True" },
      4 => { type: "multiple_choice", q: "The emoji 🤖 has Unicode code point 129302. What is its token ID in an LLM?", opts: ["A) 129302, because token IDs are Unicode code points", "B) It depends on the vocabulary of that model's tokeniser", "C) 4, because the emoji is 4 bytes in UTF-8"], ans: "B" },
      5 => { type: "multiple_choice", q: "You embedded 1 million documents with one model. Now you embed user queries with a different, newer model. What happens to search quality?", opts: ["A) It breaks. The vectors from the two models cannot be compared, so you must embed the documents again", "B) It gets better, because the newer model understands queries better", "C) Nothing changes, as long as both give 1536-dimensional vectors"], ans: "A" },
      6 => { type: "true_false", q: "Few-shot examples in a prompt change the model's weights for good, so later requests remember them.", opts: ["True", "False"], ans: "False" },
      7 => { type: "multiple_choice", q: "Strict JSON-schema structured outputs are turned on. What does the API promise?", opts: ["A) That every extracted value is true and correct", "B) No more than a plain 'reply in JSON' prompt does", "C) That the output parses and matches the shape of the schema, but not that the values are right"], ans: "C" },
      8 => { type: "multiple_choice", q: "Which API errors should you usually retry with exponential backoff?", opts: ["A) 400 Bad Request and 401 Unauthorized, because they are often temporary", "B) 429 rate limits, 5xx server errors and network timeouts", "C) Every error, right away and as many times as needed"], ans: "B" },
      9 => { type: "true_false", q: "With Anthropic's Messages API, the model only knows earlier turns of a chat if your app sends them again in the messages list.", opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "An approximate nearest-neighbour index (such as HNSW or IVF) is set to search fewer vectors. What is the trade-off?", opts: ["A) Faster search, but it may miss some true neighbours", "B) Faster search with the same results as brute force", "C) Slower search, because each stored vector is compared twice"], ans: "A" },
      11 => { type: "multiple_choice", q: "A RAG bot gives a wrong answer. You find that the correct chunk was never retrieved. What should you fix first?", opts: ["A) The generation prompt, by asking the model to try harder", "B) Nothing. Switch to a bigger model and the answer will appear", "C) Retrieval: chunking, hybrid search or re-ranking"], ans: "C" },
      12 => { type: "true_false", q: "In function calling, the model runs your Python function itself on the provider's servers. It returns only the final answer.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "A support workflow pulls out an order id, then writes a draft reply. Where should the check that the id looks like A123 go?", opts: ["A) In the drafting prompt, asking the model to check the id again first", "B) In plain code between the two steps, as a gate", "C) In a second reviewer agent that reads the first agent's output"], ans: "B" },
      14 => { type: "multiple_choice", q: "Prompt v2 scores 9/10 on your eval set. v1 scored 8/10. What is the best conclusion?", opts: ["A) v2 is clearly better, so ship it", "B) With only 10 cases, the difference could be chance. Read the failures and test on more cases", "C) Evals this small are useless, so decide by trying a few prompts yourself"], ans: "B" },
      15 => { type: "multiple_choice", q: "An email assistant reads incoming emails and can send email. Which defence works best against instructions hidden in emails?", opts: ["A) Code that blocks outside recipients and needs a human to approve each send", "B) A keyword filter for the phrase 'ignore previous instructions'", "C) A line in the system prompt telling the model never to obey instructions in emails"], ans: "A" },
      16 => { type: "true_false", q: "Quantising a model from 16-bit to 4-bit weights cuts the memory for its weights to about a quarter, with no loss in quality.", opts: ["True", "False"], ans: "False" },
      17 => { type: "true_false", q: "Before fine-tuning, you should test a strong prompt-only baseline on a held-out eval set. Then you can prove the fine-tuned model is really better.", opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "Every request uses the same long system prompt, but your prompt caching hit rate is zero. What is the most likely cause?", opts: ["A) Caching only works when streaming is on for the request", "B) The system prompt is too long for the cache to store", "C) Something that changes on every request, like a timestamp, is at the start of the prompt"], ans: "C" },
      19 => { type: "multiple_choice", q: "Which AI app pattern means 'AI helps people inside the way they already work'?", opts: ["A) An autonomous agent that does tasks with many steps on its own", "B) Copilot", "C) A nightly batch pipeline that sorts records into classes"], ans: "B" },
      20 => { type: "true_false", q: "A vision model reads an invoice total as JSON. You can save the value straight to your accounts without any checks, because vision models do not misread numbers.", opts: ["True", "False"], ans: "False" },
      21 => { type: "multiple_choice", q: "Model X costs half as much per request as model Y. X succeeds on 60% of tasks and Y on 95%. A human must fix each failure. How should you compare them?", opts: ["A) By cost per finished task, including retries and human fixes", "B) By price per token only, since that is what the invoice shows", "C) By picking the newer model, since newer models tend to be cheaper and better"], ans: "A" },
      22 => { type: "multiple_choice", q: "A new model comes out. What should you do before you switch your final project app to it?", opts: ["A) Switch right away, because newer models top the benchmarks", "B) Wait a year, because new models are often withdrawn", "C) Run your eval set, and compare quality, latency and cost"], ans: "C" }
    }

    PracticalAiContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = descriptions[position]
      end
      lesson.update!(title: titles[position], description: descriptions[position],
                     body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

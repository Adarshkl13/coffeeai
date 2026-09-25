require_relative "../practical_ai_content"

namespace :content do
  desc "Create Practical AI course and populate all 20 lessons"
  task practical_ai: :environment do
    course = Course.find_or_create_by!(slug: "practical-ai") do |c|
      c.title       = "Practical AI"
      c.description = "Master real-world AI engineering — from how LLMs and Transformers work to building RAG systems, AI agents, and production-grade applications. Hands-on Python implementations of every core concept."
      c.color       = "#6366f1"
      c.icon        = "🤖"
      c.position    = 18
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1 => "The AI Landscape",
      2 => "How Models Learn: Neurons, Loss & Gradient Descent",
      3 => "Transformers and Large Language Models",
      4 => "Tokenisation — How Text Becomes Numbers",
      5 => "Embeddings and Vector Space",
      6 => "Prompt Engineering Fundamentals",
      7 => "Advanced Prompting — Reasoning and Structured Outputs",
      8 => "Working with AI APIs — Responses and Messages",
      9 => "Conversations, Context Windows & Memory",
      10 => "Vector Databases and Semantic Search",
      11 => "RAG — Retrieval Augmented Generation",
      12 => "AI Agents — Tool Calling and MCP",
      13 => "Evaluating AI Systems",
      14 => "AI Safety, Hallucination, and Reliability",
      15 => "Fine-tuning — When and How",
      16 => "AI in Production — Streaming, Caching, Batching, Rate Limits",
      17 => "Building AI Applications — Architecture Patterns",
      18 => "Multimodal AI — Vision, Audio, and Beyond",
      19 => "Cost Optimisation and Model Selection",
      20 => "Practical AI Review — Building Your AI Portfolio"
    }

    descriptions = {
      1 => "Map AI, machine learning, deep learning and generative AI, and choose the right approach for a problem.",
      2 => "See how neurons, loss functions and gradient descent train every model you will call through an API.",
      3 => "Understand attention, next-token prediction, sampling settings and reasoning models.",
      4 => "Learn how BPE turns text into tokens and why tokens drive cost, limits and multilingual behaviour.",
      5 => "Turn text into vectors, measure meaning with cosine similarity, and pick an embedding model.",
      6 => "Write clear prompts with roles, context, examples, output formats and delimited documents.",
      7 => "Use reasoning techniques and JSON-schema structured outputs, then validate the values in code.",
      8 => "Call the OpenAI, Anthropic and Gemini APIs, read responses and usage, and handle errors with retries.",
      9 => "Manage multi-turn chats with stateless APIs, token budgets, summaries and long-term memory.",
      10 => "Store and search embeddings with ANN indexes, pgvector and hybrid search with rank fusion.",
      11 => "Build a retrieval-augmented pipeline with chunking, retrieval, grounded prompts and citations.",
      12 => "Run tool-calling loops safely and connect tools and data through the Model Context Protocol.",
      13 => "Measure quality with eval sets, code graders and LLM-as-judge before and after every change.",
      14 => "Reduce hallucinations and defend against prompt injection with layered, code-level controls.",
      15 => "Decide when fine-tuning beats prompting and RAG, prepare clean data, and prove the gain with evals.",
      16 => "Ship AI features with streaming, prompt and response caching, batch APIs and rate-limit handling.",
      17 => "Choose an architecture pattern and add gateways, fallbacks, circuit breakers and human review.",
      18 => "Send images and audio to models, and build validated document-processing pipelines.",
      19 => "Estimate and cut AI costs with model choice, effort, caching, batching and routing.",
      20 => "Review the full practical AI stack and plan, build and evaluate a cited Q&A capstone."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "You need to predict loan defaults from a spreadsheet of 50,000 rows with 12 numeric columns. What should you try first?", opts: ["A) A classic supervised ML model such as gradient boosting", "B) A frontier LLM prompted with each row, because LLMs are the most capable models", "C) Training a new Transformer from scratch on the spreadsheet"], ans: "A" },
      2 => { type: "multiple_choice", q: "During training, the gradient of the loss with respect to a weight is negative. What does gradient descent do to that weight?", opts: ["A) Decreases it, because the weight always moves in the same direction as its gradient", "B) Leaves it unchanged until the gradient becomes positive", "C) Increases it"], ans: "C" },
      3 => { type: "true_false", q: "Lowering the temperature makes an LLM more likely to pick its highest-probability next token.", opts: ["True", "False"], ans: "True" },
      4 => { type: "multiple_choice", q: "The emoji 🤖 has Unicode code point 129302. What is its token ID in an LLM?", opts: ["A) 129302, because token IDs are Unicode code points", "B) It depends on that model's tokeniser vocabulary", "C) 4, because the emoji is 4 bytes in UTF-8"], ans: "B" },
      5 => { type: "multiple_choice", q: "You embedded 1 million documents with one model and now embed user queries with a different, newer model. What happens to search quality?", opts: ["A) It breaks: the two models' vector spaces are not comparable, so you must re-embed the documents", "B) It improves, because the newer model understands queries better", "C) Nothing changes, as long as both output 1536-dimensional vectors"], ans: "A" },
      6 => { type: "true_false", q: "Few-shot examples placed in a prompt permanently update the model's weights, so later requests remember them.", opts: ["True", "False"], ans: "False" },
      7 => { type: "multiple_choice", q: "With strict JSON-schema structured outputs enabled, what does the API guarantee?", opts: ["A) That every extracted value is factually correct", "B) No more than a plain 'reply in JSON' prompt does", "C) That the output parses and matches the schema's shape, but not that the values are right"], ans: "C" },
      8 => { type: "multiple_choice", q: "Which API errors should generally be retried with exponential backoff?", opts: ["A) 400 Bad Request and 401 Unauthorized, because they are often temporary", "B) 429 rate limits, 5xx server errors and network timeouts", "C) Every error, immediately and as many times as needed"], ans: "B" },
      9 => { type: "true_false", q: "With Anthropic's Messages API, the model only knows earlier turns of a conversation if your app sends them again in the messages list.", opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "An approximate nearest-neighbour index (such as HNSW or IVF) is tuned to search fewer vectors. What is the trade-off?", opts: ["A) Faster search, but it may miss some true neighbours", "B) Faster search with the same results as brute force", "C) Slower search, because each stored vector is compared twice"], ans: "A" },
      11 => { type: "multiple_choice", q: "A RAG bot gives a wrong answer. You check and find the correct chunk was never retrieved. What should you fix first?", opts: ["A) The generation prompt, by asking the model to try harder", "B) Nothing: switch to a bigger model and the answer will appear", "C) Retrieval: chunking, hybrid search or re-ranking"], ans: "C" },
      12 => { type: "true_false", q: "In function calling, the model runs your Python function itself on the provider's servers and returns only the final answer.", opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "Prompt v2 scores 9/10 on your eval set and v1 scored 8/10. What is the best conclusion?", opts: ["A) v2 is clearly better, so ship it", "B) The difference is within noise for 10 cases; read the failures and test on more cases", "C) Evals this small are useless, so decide by trying a few prompts yourself"], ans: "B" },
      14 => { type: "multiple_choice", q: "An email assistant reads incoming emails and can send email. Which defence is strongest against injected instructions?", opts: ["A) Code that blocks outside recipients and needs human approval to send", "B) A keyword filter for the phrase 'ignore previous instructions'", "C) A system prompt line telling the model never to obey instructions in emails"], ans: "A" },
      15 => { type: "true_false", q: "Before fine-tuning, you should measure a strong prompted baseline on a held-out eval set so you can prove the fine-tuned model is actually better.", opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Your prompt caching hit rate is zero even though every request uses the same long system prompt. What is the most likely cause?", opts: ["A) Caching only works when streaming is turned on for the request", "B) The system prompt is too long for the cache to store", "C) Something that changes every request, like a timestamp, sits at the start of the prompt"], ans: "C" },
      17 => { type: "multiple_choice", q: "Which AI application pattern is best described as 'AI assists humans within their existing workflow'?", opts: ["A) An autonomous agent that completes multi-step tasks on its own", "B) Copilot", "C) A nightly batch pipeline that classifies records"], ans: "B" },
      18 => { type: "true_false", q: "When a vision model extracts an invoice total as JSON, the value can be saved straight to your accounts without any validation, because vision models do not misread numbers.", opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "Model X costs half as much per request as model Y, but succeeds on 60% of tasks versus 95% for Y, and failures need a human fix. How should you compare them?", opts: ["A) By cost per completed task, including retries and human fixes", "B) By price per token only, since that is what appears on the invoice", "C) By picking the newer model, since newer models tend to be cheaper and better"], ans: "A" },
      20 => { type: "multiple_choice", q: "A new model is released. What should you do before switching your capstone app to it?", opts: ["A) Switch immediately, because newer models top the benchmarks", "B) Wait a year, because new models are often withdrawn", "C) Run your eval set; compare quality, latency and cost"], ans: "C" }
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

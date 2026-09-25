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
      1  => "The AI Landscape",
      2  => "How Models Learn — Loss and Gradient Descent",
      3  => "Neural Networks — Forward Pass",
      4  => "Transformers and Large Language Models",
      5  => "Tokenisation — How Text Becomes Numbers",
      6  => "Embeddings and Vector Space",
      7  => "Prompt Engineering Fundamentals",
      8  => "Advanced Prompting — Reasoning and Structured Outputs",
      9  => "Working with AI APIs — Responses and Messages",
      10 => "RAG — Retrieval Augmented Generation",
      11 => "AI Agents — Tool Calling and MCP",
      12 => "Fine-tuning — When and How",
      13 => "Evaluating AI Systems",
      14 => "AI Safety, Hallucination, and Reliability",
      15 => "AI in Production — Streaming, Caching, Batching, Rate Limits",
      16 => "Vector Databases and Semantic Search",
      17 => "Building AI Applications — Architecture Patterns",
      18 => "Multimodal AI — Vision, Audio, and Beyond",
      19 => "Cost Optimisation and Model Selection",
      20 => "Practical AI Review — Building Your AI Portfolio",
    }

    descriptions = {
      1  => "Map the AI → ML → deep learning → LLM hierarchy and the modern stack of foundation models, APIs, tools and evals.",
      2  => "See how models learn by minimising a loss function with gradient descent, implemented from scratch.",
      3  => "Follow data through a small neural network's weights, biases and activation functions.",
      4  => "Understand self-attention, next-token prediction, sampling parameters and how reasoning models spend hidden tokens.",
      5  => "Learn how byte-level BPE turns text into token IDs and why tokens drive context limits and cost.",
      6  => "Turn text into vectors with embedding models and compare meaning using cosine similarity.",
      7  => "Structure prompts with clear instructions, context, examples and output formats you can test.",
      8  => "Combine chain-of-thought, self-consistency and reasoning effort with schema-enforced structured outputs.",
      9  => "Call the OpenAI Responses API and Anthropic Messages API, read usage, and handle errors and retries.",
      10 => "Build a retrieval-augmented generation pipeline that chunks, embeds, retrieves and cites your own documents.",
      11 => "Build a tool-calling agent loop and learn how the Model Context Protocol connects models to tools and data.",
      12 => "Decide between prompting, RAG and fine-tuning (SFT, DPO, RFT, LoRA) and prepare quality training data.",
      13 => "Measure AI quality with code graders, LLM-as-judge and regression gates that run on every change.",
      14 => "Detect hallucinations and defend against direct and indirect prompt injection with layered safeguards.",
      15 => "Ship reliable AI features with streaming, prompt caching, batch APIs and rate-limit handling.",
      16 => "Store and search embeddings at scale with vector databases, HNSW indexes and hybrid search.",
      17 => "Choose the right architecture — chat + RAG, extraction, copilot, agent or pipeline — with human oversight built in.",
      18 => "Work with images, speech and audio using vision input, transcription and structured document pipelines.",
      19 => "Cut AI costs with model tiers, routing, reasoning effort, caching and batching while tracking quality.",
      20 => "Review the full practical AI stack and plan portfolio projects that prove your skills.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which type of machine learning does NOT require labelled training data?",
              opts: ["A) Unsupervised learning", "B) Supervised learning", "C) Supervised fine-tuning (SFT)"], ans: "A" },
      2  => { type: "multiple_choice", q: "What does the loss function measure during training?",
              opts: ["A) Model size in parameters", "B) Error between predictions and ground truth", "C) Training speed in tokens/sec"], ans: "B" },
      3  => { type: "multiple_choice", q: "Which activation function is the default choice for hidden layers in most feed-forward networks?",
              opts: ["A) Sigmoid", "B) Tanh", "C) ReLU"], ans: "C" },
      4  => { type: "true_false",      q: "Because you never see a reasoning model's hidden reasoning tokens, they are not billed.",
              opts: ["True", "False"], ans: "False" },
      5  => { type: "multiple_choice", q: "The emoji 🤖 has Unicode code point 129302. What is its token ID in an LLM?",
              opts: ["A) It depends on the model's vocabulary — token IDs are vocabulary indices, not code points", "B) Always 129302, the code point", "C) Always 0, because emoji are stripped before tokenisation"], ans: "A" },
      6  => { type: "multiple_choice", q: "Which metric measures the angle between two embedding vectors (ignoring magnitude)?",
              opts: ["A) Euclidean distance", "B) Manhattan distance", "C) Cosine similarity"], ans: "C" },
      7  => { type: "multiple_choice", q: "What is few-shot prompting?",
              opts: ["A) Including a few worked input → output examples in the prompt, with no training", "B) Fine-tuning a model on a small dataset of 10–100 examples", "C) Sampling several answers and taking a majority vote"], ans: "A" },
      8  => { type: "true_false",      q: "With strict JSON-schema structured outputs, the API guarantees the extracted values are factually correct, so no further validation is needed.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "Which API errors should generally be retried with exponential backoff?",
              opts: ["A) 401 Unauthorized (invalid API key)", "B) 400 Bad Request (invalid parameter)", "C) 429 rate-limit and 5xx server errors"], ans: "C" },
      10 => { type: "multiple_choice", q: "In a RAG system, what does the 'R' (Retrieval) step do?",
              opts: ["A) Trains the LLM on your documents", "B) Finds relevant document chunks by similarity to the query", "C) Rewrites the LLM response"], ans: "B" },
      11 => { type: "multiple_choice", q: "When an MCP client connects to a server, which method does it use to discover the server's tools?",
              opts: ["A) tools/call", "B) tools/list", "C) resources/read"], ans: "B" },
      12 => { type: "true_false",      q: "Fine-tuning should always be the first approach tried before RAG and prompt engineering.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "In RAG evaluation, 'Answer Faithfulness' measures:",
              opts: ["A) Whether the retrieval step found the relevant chunks", "B) Whether the answer is factually correct in general", "C) Whether the answer is grounded in the retrieved context"], ans: "C" },
      14 => { type: "true_false",      q: "A keyword blocklist (e.g. 'ignore previous instructions') is a sufficient defence against prompt injection, including injections hidden in retrieved documents.",
              opts: ["True", "False"], ans: "False" },
      15 => { type: "true_false",      q: "Provider-side prompt caching reuses a repeated prompt prefix, so putting a timestamp at the very start of every prompt can prevent cache hits.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "true_false",      q: "HNSW is an approximate nearest-neighbour index: it trades a little recall for search that is far faster than comparing the query with every vector.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "Which AI application pattern is best described as 'AI assists humans within their existing workflow'?",
              opts: ["A) Autonomous agent", "B) Copilot", "C) AI pipeline / batch job"], ans: "B" },
      18 => { type: "true_false",      q: "In the OpenAI Responses API, you can send an image by adding an input_image content part next to an input_text part in the same user message.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Which technique sends easy queries to a small, cheap model and hard queries to a frontier model?",
              opts: ["A) Prompt caching", "B) Batch processing", "C) Model routing"], ans: "C" },
      20 => { type: "multiple_choice", q: "A new model is released. What should you do before switching your portfolio app to it?",
              opts: ["A) Run your eval suite on it and compare with the current model", "B) Switch all traffic immediately — newer models are always better", "C) Make the prompts longer so the new model has more to work with"], ans: "A" },
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

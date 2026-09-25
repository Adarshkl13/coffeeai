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
      8  => "Advanced Prompting Techniques",
      9  => "Working with AI APIs",
      10 => "RAG — Retrieval Augmented Generation",
      11 => "AI Agents — Autonomous Task Completion",
      12 => "Fine-tuning — When and How",
      13 => "Evaluating AI Systems",
      14 => "AI Safety, Hallucination, and Reliability",
      15 => "AI in Production — Streaming, Caching, Rate Limits",
      16 => "Vector Databases and Semantic Search",
      17 => "Building AI Applications — Architecture Patterns",
      18 => "Multimodal AI — Vision, Audio, and Beyond",
      19 => "Cost Optimisation and Model Selection",
      20 => "Practical AI Review — Building Your AI Portfolio",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which type of ML does NOT require labelled training data?",
              opts: ["A) Supervised learning", "B) Unsupervised learning", "C) Transfer learning"], ans: "B" },
      2  => { type: "multiple_choice", q: "What does the loss function measure during training?",
              opts: ["A) Model size in parameters", "B) Error between predictions and ground truth", "C) Training speed in tokens/sec"], ans: "B" },
      3  => { type: "multiple_choice", q: "Which activation function is the default choice for hidden layers in modern neural networks?",
              opts: ["A) Sigmoid", "B) Tanh", "C) ReLU"], ans: "C" },
      4  => { type: "true_false",      q: "In the Transformer attention mechanism, Q (Query), K (Key), and V (Value) are all learned from the input embeddings.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "Approximately how many words does 1000 tokens represent in English?",
              opts: ["A) 1000 words", "B) 750 words", "C) 250 words"], ans: "B" },
      6  => { type: "multiple_choice", q: "Which metric measures the angle between two embedding vectors (ignoring magnitude)?",
              opts: ["A) Euclidean distance", "B) Manhattan distance", "C) Cosine similarity"], ans: "C" },
      7  => { type: "multiple_choice", q: "Which prompting technique improves accuracy on multi-step reasoning by 20%+ over zero-shot?",
              opts: ["A) Role prompting", "B) Chain-of-thought", "C) Structured output"], ans: "B" },
      8  => { type: "true_false",      q: "For production AI systems, you should always use structured output (JSON mode) and validate the response schema in code.",
              opts: ["True", "False"], ans: "True" },
      9  => { type: "multiple_choice", q: "Which AI API parameter should be set to 0 for deterministic, factual responses?",
              opts: ["A) max_tokens", "B) top_p", "C) temperature"], ans: "C" },
      10 => { type: "multiple_choice", q: "In a RAG system, what does the 'R' (Retrieval) step do?",
              opts: ["A) Trains the LLM on your documents", "B) Finds relevant document chunks by similarity to the query", "C) Rewrites the LLM response"], ans: "B" },
      11 => { type: "multiple_choice", q: "In the ReAct agent pattern, what does the agent do after each Observation?",
              opts: ["A) Immediately returns the answer", "B) Reasons about the observation and decides the next action", "C) Calls the same tool again"], ans: "B" },
      12 => { type: "true_false",      q: "Fine-tuning should always be the first approach tried before RAG and prompt engineering.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "In RAG evaluation, 'Answer Faithfulness' measures:",
              opts: ["A) Whether the answer is factually correct in general", "B) Whether the answer is grounded in the retrieved context", "C) Whether the retrieval found relevant chunks"], ans: "B" },
      14 => { type: "multiple_choice", q: "Which type of hallucination occurs when an LLM cites made-up URLs or paper authors?",
              opts: ["A) Factual hallucination", "B) Citation hallucination", "C) Logical hallucination"], ans: "B" },
      15 => { type: "true_false",      q: "Streaming LLM responses (stream=True) dramatically improves perceived latency because users see text immediately.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Which algorithm enables fast approximate nearest-neighbour search in vector databases in O(log n)?",
              opts: ["A) BERT", "B) BM25", "C) HNSW"], ans: "C" },
      17 => { type: "multiple_choice", q: "Which AI application pattern is best described as 'AI assists humans within their existing workflow'?",
              opts: ["A) Autonomous agent", "B) AI pipeline", "C) Copilot"], ans: "C" },
      18 => { type: "multiple_choice", q: "Which OpenAI model is used for audio transcription (speech-to-text)?",
              opts: ["A) DALL-E 3", "B) Whisper", "C) TTS-1"], ans: "B" },
      19 => { type: "multiple_choice", q: "Which technique routes simple queries to cheap models and complex queries to expensive ones?",
              opts: ["A) Semantic caching", "B) Model routing", "C) Prompt compression"], ans: "B" },
      20 => { type: "multiple_choice", q: "According to the course, which portfolio project has the highest difficulty AND highest impact?",
              opts: ["A) RAG Document Chatbot", "B) Voice Assistant", "C) Fine-tuned Specialist"], ans: "C" },
    }

    PracticalAiContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_create_by!(course_lesson: lesson) do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

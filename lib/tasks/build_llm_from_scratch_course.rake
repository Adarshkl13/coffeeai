require_relative "../build_llm_from_scratch_content"

namespace :content do
  desc "Create Build and Train an LLM from Scratch course and populate all 22 lessons"
  task build_llm_from_scratch: :environment do
    description = "Build a small GPT-style language model step by step. Collect and clean text, write a BPE tokenizer, code embeddings, self-attention and transformer blocks, then train, save and sample from your model. Learn scaling laws, multi-GPU training, instruction tuning, RLHF and DPO, evaluation and quantisation, and finish by chatting with your own mini LLM."
    course = Course.find_or_create_by!(slug: "build-llm-from-scratch") do |c|
      c.title       = "Build and Train an LLM from Scratch"
      c.description = description
      c.color       = "#10b981"
      c.icon        = "🏗️"
      c.position    = 114
      c.published   = true
    end
    course.update!(title: "Build and Train an LLM from Scratch", description: description)
    puts "Course: #{course.title}"

    titles = {
      1 => "What is a Large Language Model?",
      2 => "How LLMs Learn Language",
      3 => "Collecting Training Data",
      4 => "Cleaning and Filtering Text Data",
      5 => "Building a Tokenizer (BPE)",
      6 => "Creating Token and Position Embeddings",
      7 => "Coding Self-Attention",
      8 => "Coding Multi-Head Attention",
      9 => "Building a Transformer Block",
      10 => "Building the Full GPT Model",
      11 => "Preparing Data for Training",
      12 => "The Training Loop",
      13 => "Pretraining the Model",
      14 => "Saving and Loading Checkpoints",
      15 => "Text Generation: Greedy, Temperature, Top-k, Top-p",
      16 => "Scaling Laws: Data, Parameters, Compute",
      17 => "Training on Multiple GPUs",
      18 => "Instruction Fine-Tuning",
      19 => "RLHF and DPO (Alignment)",
      20 => "Evaluating Your LLM",
      21 => "Quantization and Running Models Locally",
      22 => "Project: Build and Chat with Your Own Mini LLM"
    }

    descriptions = {
      1 => "See what an LLM really does, predicting the next token, and meet the TinyGPT model you will build.",
      2 => "Learn how self-supervised learning and cross-entropy loss teach a model, and build a bigram model by counting words.",
      3 => "Find out where training text comes from, why licences and consent matter, and meet the café in York corpus.",
      4 => "Clean raw text in Python: normalise it, remove duplicates, filter low-quality lines and remove personal data.",
      5 => "Train a byte-level BPE tokenizer on the café text: count pairs, merge the most common pair, then encode and decode.",
      6 => "Turn token IDs into vectors with a token embedding table, add learned position embeddings, and follow the shape (B, T, C).",
      7 => "Code one causal self-attention head in NumPy and PyTorch: query, key, value, scaled scores, the causal mask and softmax.",
      8 => "Run several attention heads side by side, join them with a projection, and use reshape and transpose to run all heads at once.",
      9 => "Build a pre-norm transformer block from layer norm, attention, an MLP and residual connections.",
      10 => "Join embeddings, transformer blocks, a final layer norm and the lm_head into TinyGPT, and count its parameters.",
      11 => "Tokenise the café text, split it into train and validation parts, and build batches of inputs and shifted targets.",
      12 => "Write the training loop: forward, loss, zero_grad, backward and optimizer step, and read the printed losses.",
      13 => "Pretrain TinyGPT on the café text, read the loss and perplexity, count the compute, and spot overfitting.",
      14 => "Save the model and optimizer state with the step number, resume training exactly, and share weights safely with safetensors.",
      15 => "Turn probabilities into text with greedy decoding, temperature, top-k and top-p, using a worked example and NumPy.",
      16 => "Learn how loss falls as a power law, estimate training compute with 6 x N x D, and balance data and parameters the Chinchilla way.",
      17 => "Spread training over many GPUs with data parallel (DDP), FSDP and ZeRO sharding, and tensor or pipeline parallel, using simple memory arithmetic.",
      18 => "Turn a base model into a chat model with instruction and response pairs, a chat template, loss only on the response, and cheap LoRA fine-tuning.",
      19 => "Align a model with people's preferences using preference pairs, a reward model and PPO (RLHF), or the simpler DPO loss, with a worked example.",
      20 => "Measure your model with validation loss and perplexity, benchmarks, task tests, human and model graders, and check for test contamination.",
      21 => "Shrink a model with int8 and 4-bit quantisation, work out memory needs, quantise a weight matrix in NumPy, and run models locally with tools like llama.cpp and Ollama.",
      22 => "Train a tiny character model on the café text in your browser with NumPy, chat with it, and see how to chat with the PyTorch TinyGPT on your own computer."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does a large language model do each time it writes a new piece of text?", opts: ["A) It looks up the answer in a database", "B) It predicts a probability for every possible next token and one is picked", "C) It copies a full sentence from its training data"], ans: "B" },
      2 => { type: "true_false", q: "In pretraining, people must write a label for every sentence before the model can learn from it.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "You find some blog posts with no licence on the page. What should a careful team do?", opts: ["A) Treat them as not allowed until they find out the licence", "B) Use them, because they are on the public web", "C) Use them, but only for fine-tuning"], ans: "A" },
      4 => { type: "multiple_choice", q: "Why do we remove duplicate text before training?", opts: ["A) Duplicates make the tokenizer crash", "B) Duplicates are always personal data", "C) The model may memorise repeated text, and it wastes training time"], ans: "C" },
      5 => { type: "multiple_choice", q: "When you train a BPE tokenizer, what happens in each merge step?", opts: ["A) The rarest character is removed from the vocabulary", "B) The most common pair of next-door tokens becomes one new token", "C) Every word in the text gets its own new ID"], ans: "B" },
      6 => { type: "multiple_choice", q: "A batch of token IDs has the shape (B, T). What is the shape after token and position embeddings are added?", opts: ["A) (B, T, C)", "B) (V, C)", "C) (B, T, V)"], ans: "A" },
      7 => { type: "true_false", q: "In causal self-attention, the mask sets the scores of future tokens to minus infinity, so after softmax their weights are exactly 0.", opts: ["True", "False"], ans: "True" },
      8 => { type: "multiple_choice", q: "In fast multi-head attention, what does reshaping q to (B, T, n_head, head_size) and transposing to (B, n_head, T, head_size) do?", opts: ["A) It copies the data once for every head", "B) It removes the need for the causal mask", "C) It lets all heads run in one batched matrix multiply"], ans: "C" },
      9 => { type: "multiple_choice", q: "In a pre-norm transformer block, what does the first half compute?", opts: ["A) x = ln1(attn(x))", "B) x = attn(x) + mlp(x)", "C) x = x + attn(ln1(x))", "D) x = ln1(x) + ln2(x)"], ans: "C" },
      10 => { type: "multiple_choice", q: "What does weight tying mean in a GPT model?", opts: ["A) The lm_head uses the same (V, C) table as the token embeddings", "B) Every transformer block shares the same weights", "C) The position embeddings are copied into the token embeddings", "D) All weights start with the same value"], ans: "A" },
      11 => { type: "true_false", q: "For a GPT, the target y for a window is the input x moved one place to the left, so each position's target is the next token.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "Train loss keeps falling, but validation loss stops falling and starts to rise. What is most likely happening?", opts: ["A) The learning rate is 0", "B) The model is overfitting: it is memorising the training text", "C) The model has not started learning yet"], ans: "B" },
      13 => { type: "multiple_choice", q: "During pretraining, the training loss keeps falling but the validation loss starts to rise. What is happening?", opts: ["A) The learning rate is too small, so the model has not started learning yet", "B) The model is memorising the training text (overfitting), so it does worse on new text", "C) The tokenizer is broken, so the two losses cannot be compared"], ans: "B" },
      14 => { type: "true_false", q: "To resume training exactly where you stopped, it is enough to save only the model weights.", opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "What happens when you lower the temperature from 1.0 to 0.5 before sampling?", opts: ["A) Likely tokens become even more likely, so the text is safer and less varied", "B) All tokens become equally likely, so the text is more random", "C) Only the top 5 tokens are kept and the rest are removed"], ans: "A" },
      16 => { type: "multiple_choice", q: "Using C ≈ 6 × N × D, about how much compute does it take to train a 1 billion parameter model on 20 billion tokens?", opts: ["A) 2 × 10^10 FLOPs", "B) 1.2 × 10^11 FLOPs", "C) 1.2 × 10^20 FLOPs"], ans: "C" },
      17 => { type: "multiple_choice", q: "In data parallel training (DDP), what happens after each GPU runs the backward pass on its slice of the batch?", opts: ["A) Each GPU sends its slice of the batch to all the other GPUs", "B) The GPUs average their gradients, so every copy of the model makes the same update", "C) Each GPU keeps its own gradient, so the model copies slowly drift apart"], ans: "B" },
      18 => { type: "true_false", q: "In instruction fine-tuning, the loss is usually counted on the user's prompt tokens as well as on the response tokens.", opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "What is the main difference between DPO and RLHF with PPO?", opts: ["A) DPO trains on preference pairs directly, with no separate reward model", "B) DPO does not need any preference data at all", "C) DPO trains the model from scratch on raw web text"], ans: "A" },
      20 => { type: "multiple_choice", q: "Your model's average validation loss is 2.0. What is its perplexity?", opts: ["A) 2.0, the same as the loss", "B) About 7.4, because perplexity is e to the power of the loss", "C) About 0.14, because perplexity is 1 divided by e to the power of the loss"], ans: "B" },
      21 => { type: "true_false", q: "Storing a 7B model's weights in int8 instead of float16 makes them take a quarter of the memory.", opts: ["True", "False"], ans: "False" },
      22 => { type: "multiple_choice", q: "In the project, the prompt \"A dog\" gives a nonsense reply. Why?", opts: ["A) The temperature is too low", "B) NumPy models cannot write whole sentences", "C) The word \"dog\" is not in the café text, so the model never learned any pattern for it", "D) The model needs more than 8,903 parameters to write any sentence"], ans: "C" }
    }

    BuildLlmFromScratchContent::LESSONS.each do |position, data|
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
    course.course_lessons.where("position > ?", 22).destroy_all

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

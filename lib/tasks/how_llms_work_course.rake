require_relative "../how_llms_work_content"

namespace :content do
  desc "Create How LLMs Work course and populate all 22 lessons"
  task how_llms_work: :environment do
    course = Course.find_or_create_by!(slug: "how-llms-work") do |c|
      c.title       = "How LLMs Work"
      c.description = "Understand what really happens inside a large language model. Learn tokens, embeddings, attention and transformers, how models are trained and tuned, how they choose each next word, and why they sometimes make things up. Build a tiny language model yourself in Python."
      c.color       = "#22d3ee"
      c.icon        = "🧠"
      c.position    = 28
      c.published   = true
    end
    course.update!(description: "Understand what really happens inside a large language model. Learn tokens, embeddings, attention and transformers, how models are trained and tuned, how they choose each next word, and why they sometimes make things up. Build a tiny language model yourself in Python.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is a Large Language Model?",
      2 => "Tokens: How Models Read Text",
      3 => "Byte-Pair Encoding: Building a Tokenizer",
      4 => "Embeddings: Words as Vectors",
      5 => "Position: Knowing the Order of Words",
      6 => "The Transformer at a Glance",
      7 => "Attention: Letting Words Look at Each Other",
      8 => "Queries, Keys and Values",
      9 => "Multi-Head Attention",
      10 => "Feed-Forward Layers and the Residual Stream",
      11 => "From Scores to Probabilities: Logits and Softmax",
      12 => "Pre-training: Learning from Text",
      13 => "Build a Tiny Language Model",
      14 => "Scaling: Data, Parameters and Compute",
      15 => "Instruction Tuning and Chat Models",
      16 => "Learning from Feedback",
      17 => "Generating Text: Temperature and Sampling",
      18 => "Context Windows and Memory",
      19 => "Why Models Make Things Up",
      20 => "Reasoning and Thinking Models",
      21 => "Multimodal Models",
      22 => "Capstone: Trace a Prompt Through a Tiny Model"
    }

    descriptions = {
      1 => "Learn what a large language model is: a program that predicts the next token, again and again, in a loop.",
      2 => "See how text is split into tokens and token IDs, and why token counts matter for limits, speed and cost.",
      3 => "Learn how byte-pair encoding builds a tokenizer by merging the most frequent pairs, and train one in Python.",
      4 => "Learn how token IDs become vectors, and measure how similar two vectors are with cosine similarity.",
      5 => "Learn why word order needs extra help in a transformer, and how models add position information to tokens.",
      6 => "See the whole transformer from far away: embeddings, a stack of layers with attention and feed-forward parts, the residual stream and the output layer.",
      7 => "Learn how attention lets each token collect information from the other tokens, so the same word can mean different things in different sentences.",
      8 => "Work through one attention step by hand with queries, keys and values, and learn why a token cannot look at future tokens.",
      9 => "Learn how several attention heads look for different patterns at the same time, and how their results are joined into one vector.",
      10 => "Learn what the per-token feed-forward network does, how the residual stream keeps information flowing, and why layer normalisation keeps numbers stable.",
      11 => "Turn the model's raw scores (logits) into probabilities with softmax, and find the most likely next token.",
      12 => "Learn how a model learns language by predicting the next token, measuring its error with cross-entropy loss and improving with gradient descent.",
      13 => "Build a bigram language model by counting word pairs, generate text with it, and compare it to a real LLM.",
      14 => "See how data, parameters and compute make models better, what scaling laws say, and why small models are still useful.",
      15 => "Learn how supervised fine-tuning turns a base model into an assistant, and how chat templates turn roles into text.",
      16 => "Learn how models improve from people's preferences with RLHF and related methods, and the aim of helpful, honest and harmless answers.",
      17 => "Learn how a model picks each next token: greedy decoding, sampling, temperature, top-k and top-p.",
      18 => "Learn what fits in a context window, why a model has no memory between calls, and how chat apps resend history.",
      19 => "Learn why models write false answers that sound right, and simple ways to make this happen less.",
      20 => "Learn why step-by-step thinking helps on hard tasks, how adaptive thinking works, and what it costs.",
      21 => "Learn how images become patch tokens, what vision-language models do well, and where they make mistakes.",
      22 => "Follow one prompt through a tiny model in Python: tokenize, embed, attend, score, softmax and sample."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does a large language model do at each step when it writes text?", opts: ["A) It looks up the full answer in a database", "B) It predicts the next token", "C) It copies a sentence from the internet"], ans: "B" },
      2 => { type: "true_false", q: "Every language model uses the same tokenizer, so the same text always gives the same tokens.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "In byte-pair encoding (BPE) training, what happens in each step?", opts: ["A) The most frequent pair of neighbouring tokens is joined into a new token", "B) The longest word is removed from the text", "C) Each word gets a random ID"], ans: "A" },
      4 => { type: "multiple_choice", q: "Two token vectors have a cosine similarity close to 1. What does this mean?", opts: ["A) The tokens have the same ID", "B) The vectors point in opposite directions", "C) The vectors point in almost the same direction, so the tokens are used in similar ways"], ans: "C" },
      5 => { type: "multiple_choice", q: "Why does a transformer need position information?", opts: ["A) Attention alone cannot tell which token came first", "B) It makes the vocabulary smaller", "C) It removes the need for token IDs"], ans: "A" },
      6 => { type: "multiple_choice", q: "What does the output layer of a transformer give?", opts: ["A) One embedding vector for each word in the prompt", "B) A score (logit) for every token in the vocabulary", "C) The attention weights for every layer"], ans: "B" },
      7 => { type: "true_false", q: "For one token, the attention weights it gives to all the tokens it can see add up to 1.", opts: ["True", "False"], ans: "True" },
      8 => { type: "multiple_choice", q: "What does the causal mask do in attention?", opts: ["A) It stops a token from looking at tokens that come after it", "B) It hides the value vectors from the model", "C) It removes common words like \"the\" from the prompt"], ans: "A" },
      9 => { type: "multiple_choice", q: "Why does a transformer use several attention heads in each layer?", opts: ["A) So that each head can read a different part of the vocabulary", "B) So that the model does not need a feed-forward network", "C) So that each head can look for a different kind of pattern at the same time"], ans: "C" },
      10 => { type: "multiple_choice", q: "What does a residual connection do?", opts: ["A) It adds a sublayer's result to the token's vector, instead of replacing the vector", "B) It lets a token look at future tokens", "C) It turns logits into probabilities"], ans: "A" },
      11 => { type: "true_false", q: "If you add 10 to every logit, softmax gives the same probabilities as before.", opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "During pre-training, the model gave probability 0.9 to the real next token. What happens to the loss?", opts: ["A) The loss is large, because 0.9 is close to 1", "B) The loss is small, because -ln(0.9) is about 0.1", "C) The loss is exactly 0.9"], ans: "B" },
      13 => { type: "true_false", q: "The counting bigram model built in this lesson gives a probability above zero to a word pair it never saw in its training text.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "What do scaling laws generally say about making a model bigger?", opts: ["A) Loss falls smoothly, but each extra gain needs much more data and compute", "B) Doubling the parameters always halves the loss", "C) Model size matters, but the amount of data does not"], ans: "A" },
      15 => { type: "multiple_choice", q: "What does a chat template do?", opts: ["A) It adds new knowledge to the model", "B) It chooses the temperature for sampling", "C) It turns a list of role-tagged messages into one text with special tokens"], ans: "C" },
      16 => { type: "multiple_choice", q: "In RLHF, what does the reward model learn from?", opts: ["A) People's choices of the better answer in pairs of answers", "B) Raw web text, by predicting the next token", "C) A list of the model's parameter counts"], ans: "A" },
      17 => { type: "multiple_choice", q: "What does a low temperature (for example 0.2) do when a model samples the next token?", opts: ["A) It makes every token equally likely", "B) It makes the most likely token even more likely", "C) It removes the prompt from the context"], ans: "B" },
      18 => { type: "true_false", q: "A model API remembers your earlier messages between calls, even if your app does not send them again.", opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "Why do language models sometimes make things up?", opts: ["A) They copy wrong facts from a secret database", "B) They are built to lie on purpose", "C) They are trained to write likely-sounding text, not to check facts"], ans: "C" },
      20 => { type: "multiple_choice", q: "With adaptive thinking on current Claude models, who decides how much the model thinks?", opts: ["A) The model decides, based on the task, and you can guide it with an effort setting", "B) You must set an exact number of thinking tokens for every request", "C) Nobody, because thinking is always turned off"], ans: "A" },
      21 => { type: "true_false", q: "A vision-language model turns an image into patch tokens, and the transformer reads them together with the text tokens.", opts: ["True", "False"], ans: "True" },
      22 => { type: "multiple_choice", q: "In the capstone program, which stage turns logits into probabilities?", opts: ["A) Tokenize", "B) Softmax", "C) Embedding"], ans: "B" }
    }

    HowLlmsWorkContent::LESSONS.each do |position, data|
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

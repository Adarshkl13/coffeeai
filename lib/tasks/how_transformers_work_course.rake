require_relative "../how_transformers_work_content"

namespace :content do
  desc "Create How AI Transformers Work course and populate all 19 lessons"
  task how_transformers_work: :environment do
    description = "See inside the transformer, the design behind modern AI. Learn why it replaced older models, then follow tokens, embeddings, positional encoding and self-attention step by step. Build encoders and decoders, compare BERT and GPT, look at vision transformers, and finish by building a mini transformer."
    course = Course.find_or_create_by!(slug: "how-transformers-work") do |c|
      c.title       = "How AI Transformers Work"
      c.description = description
      c.color       = "#22d3ee"
      c.icon        = "🔀"
      c.position    = 111
      c.published   = true
    end
    course.update!(title: "How AI Transformers Work", description: description)
    puts "Course: #{course.title}"

    titles = {
      1 => "The Problem with Old Models (RNN Limits)",
      2 => "Why Transformers Were Invented",
      3 => "Tokens and Tokenisation",
      4 => "Word Embeddings",
      5 => "Positional Encoding",
      6 => "What is Attention?",
      7 => "Query, Key and Value",
      8 => "Self-Attention Step by Step",
      9 => "Multi-Head Attention",
      10 => "Feed-Forward Layers",
      11 => "Residual Connections and Layer Norm",
      12 => "The Encoder",
      13 => "The Decoder",
      14 => "Masked Attention",
      15 => "How a Transformer Predicts the Next Word",
      16 => "Encoder-Only vs Decoder-Only Models (BERT vs GPT)",
      17 => "Vision Transformers (ViT)",
      18 => "Visualising Attention",
      19 => "Project: Build a Mini Transformer"
    }

    descriptions = {
      1 => "See why RNNs were slow to train, forgot far-away words, lost their gradients and squeezed whole sentences into one small vector.",
      2 => "Learn how the 2017 paper 'Attention Is All You Need' replaced recurrence with attention and made fast, parallel training possible.",
      3 => "Compare word, character and subword tokens, learn how BPE builds a vocabulary, and turn text into token IDs.",
      4 => "Turn token IDs into vectors with an embedding table, compare them with cosine similarity, and see how training shapes them.",
      5 => "Give each token its place in the sentence with sine and cosine position vectors or a learned table, added to the word embeddings.",
      6 => "See how each token scores every other token, turns the scores into weights that add up to 1, and takes a weighted average.",
      7 => "Learn how queries, keys and values are made, and follow softmax(QKᵀ / √d_k) V with small numbers.",
      8 => "Run self-attention on three tokens in NumPy and print every matrix from the inputs to the output.",
      9 => "Split Q, K and V into heads, let each head find its own pattern, then join them with concat and an output projection.",
      10 => "See how the feed-forward network widens each token vector four times, applies GELU and shrinks it back, and why it holds most parameters.",
      11 => "Learn how x + Sublayer(x) keeps deep stacks trainable, how layer norm rescales each token, and the difference between pre-norm and post-norm.",
      12 => "Stack self-attention and feed-forward blocks into an encoder that reads the whole sentence both ways and outputs one vector per token.",
      13 => "See the three parts of a decoder block and how cross-attention connects the decoder to the encoder in translation.",
      14 => "Build the causal mask, set future scores to minus infinity, and see why it lets a transformer train on every position at once.",
      15 => "Follow the last token's hidden state through the output layer, softmax and sampling, then run the generation loop.",
      16 => "Compare BERT, GPT and T5: what each model can see, how each is trained and which jobs each one suits.",
      17 => "Cut an image into patches, embed them as tokens, add a class token and positions, and compare Vision Transformers with CNNs.",
      18 => "Read attention heatmaps, spot heads that track position or grammar, and learn why attention weights are not a full explanation.",
      19 => "Build a mini decoder-only transformer in NumPy with embeddings, positions, masked multi-head attention, an FFN, residuals, layer norm and logits, then see it in PyTorch."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "Why can an RNN not process all the words of a sentence at the same time?", opts: ["A) It has no weights to learn", "B) Each step needs the hidden state from the step before", "C) It can only read sentences shorter than 10 words"], ans: "B" },
      2 => { type: "true_false", q: "The Transformer from 'Attention Is All You Need' still used an RNN to read the words one at a time.", opts: ["True", "False"], ans: "False" },
      3 => { type: "multiple_choice", q: "In BPE training, which pair of tokens is joined at each step?", opts: ["A) A random pair", "B) The rarest pair in the text", "C) The most frequent pair of neighbouring tokens", "D) The first two letters of every word"], ans: "C" },
      4 => { type: "multiple_choice", q: "What does an embedding layer do with token ID 5?", opts: ["A) It returns row 5 of the embedding table", "B) It multiplies every weight by 5", "C) It splits the token into 5 pieces"], ans: "A" },
      5 => { type: "multiple_choice", q: "How is a position vector combined with a word embedding in a transformer?", opts: ["A) It replaces the word embedding", "B) It is added to the word embedding, number by number", "C) It is only used in the last layer"], ans: "B" },
      6 => { type: "true_false", q: "In attention, the weights that one token gives to all the tokens in the sentence always add up to 1.", opts: ["True", "False"], ans: "True" },
      7 => { type: "multiple_choice", q: "Why are the attention scores divided by √d_k?", opts: ["A) To keep the scores from growing large, so softmax does not become too extreme", "B) To make the weights add up to 1", "C) To turn the keys into values"], ans: "A" },
      8 => { type: "multiple_choice", q: "With 3 tokens and d_model = 4, what is the shape of the attention weight matrix?", opts: ["A) (3, 4)", "B) (4, 4)", "C) (3, 3)"], ans: "C" },
      9 => { type: "multiple_choice", q: "A model has d_model = 512 and 8 attention heads. How many columns does each head work with (d_k)?", opts: ["A) 512", "B) 4096", "C) 64", "D) 8"], ans: "C" },
      10 => { type: "multiple_choice", q: "Which statement about the feed-forward network in a transformer block is true?", opts: ["A) It runs on each token on its own, using the same weights for every token", "B) It lets each token collect information from the other tokens", "C) It has fewer parameters than the attention part of the block"], ans: "A" },
      11 => { type: "multiple_choice", q: "Which formula describes a pre-norm transformer sublayer?", opts: ["A) LayerNorm(x + Sublayer(x))", "B) x + Sublayer(LayerNorm(x))", "C) Sublayer(LayerNorm(x))", "D) LayerNorm(Sublayer(x))"], ans: "B" },
      12 => { type: "true_false", q: "In a transformer encoder, a token can use information from words that come after it in the sentence.", opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "In cross-attention, where do the queries, keys and values come from?", opts: ["A) Queries, keys and values all come from the encoder", "B) Queries come from the decoder; keys and values come from the encoder", "C) Queries come from the encoder; keys and values come from the decoder"], ans: "B" },
      14 => { type: "multiple_choice", q: "Why are future scores set to minus infinity before softmax?", opts: ["A) So the future tokens get weight 0 and each row still adds up to 1", "B) So the model pays the most attention to future tokens", "C) So the model trains one token at a time, like an RNN"], ans: "A" },
      15 => { type: "true_false", q: "To predict the next word, the output layer turns the last token's hidden state into one logit for every word in the vocabulary.", opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "How is BERT trained?", opts: ["A) By predicting the next token, seeing only earlier tokens", "B) By turning every task into text in and text out", "C) By guessing hidden [MASK] tokens, using words on both sides"], ans: "C" },
      17 => { type: "multiple_choice", q: "In a Vision Transformer, what plays the role of a word token?", opts: ["A) A single pixel of the image", "B) A flattened image patch passed through the patch embedding", "C) A whole row of the image"], ans: "B" },
      18 => { type: "true_false", q: "If a token gets the biggest attention weight in a heatmap, this proves it is the most important token for the model's answer.", opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "The mini transformer reads 4 tokens and has a vocabulary of 10 words. What is the shape of its logits?", opts: ["A) (4, 4)", "B) (10,)", "C) (4, 10)"], ans: "C" }
    }

    HowTransformersWorkContent::LESSONS.each do |position, data|
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
    course.course_lessons.where("position > ?", 19).destroy_all

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

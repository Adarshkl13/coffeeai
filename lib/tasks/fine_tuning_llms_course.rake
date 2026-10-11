require_relative "../fine_tuning_llms_content"

namespace :content do
  desc "Create Fine-Tuning LLMs course and populate all 20 lessons"
  task fine_tuning_llms: :environment do
    course = Course.find_or_create_by!(slug: "fine-tuning-llms") do |c|
      c.title       = "Fine-Tuning LLMs"
      c.description = "Learn when and how to fine-tune a language model. Prepare training data, understand LoRA and other efficient methods, train on your own examples, measure the results and serve the tuned model safely."
      c.color       = "#eab308"
      c.icon        = "🎛️"
      c.position    = 32
      c.published   = true
    end
    course.update!(description: "Learn when and how to fine-tune a language model. Prepare training data, understand LoRA and other efficient methods, train on your own examples, measure the results and serve the tuned model safely.")
    puts "Course: #{course.title}"

    titles = {
      1 => "What Is Fine-Tuning?",
      2 => "Prompting, RAG or Fine-Tuning?",
      3 => "Kinds of Fine-Tuning",
      4 => "Choosing a Base Model",
      5 => "Training Data Formats",
      6 => "Collecting Good Examples",
      7 => "Cleaning and Checking Data",
      8 => "Splitting Data",
      9 => "Synthetic Data for Fine-Tuning",
      10 => "How Training Works",
      11 => "Overfitting and Hyperparameters",
      12 => "LoRA: Efficient Fine-Tuning",
      13 => "Quantisation and QLoRA",
      14 => "Training with Hugging Face",
      15 => "Preference Tuning: RLHF and DPO",
      16 => "Evaluating a Fine-Tuned Model",
      17 => "Safety After Fine-Tuning",
      18 => "Serving a Fine-Tuned Model",
      19 => "Keeping a Model Up to Date",
      20 => "Capstone: Fine-Tune a Support Reply Model"
    }

    descriptions = {
      1 => "Learn what fine-tuning is: more training on your own examples that changes a model's weights. See what it is good for, like style, format and narrow tasks.",
      2 => "Decide between prompting, RAG and fine-tuning. Try prompts first, use RAG for facts, and fine-tune for behaviour and format.",
      3 => "Meet the kinds of fine-tuning: full or PEFT, SFT or preference tuning, and hosted or self-hosted training.",
      4 => "Choose a base model by checking base vs instruct, size, licence, context length and languages. Start with the smallest model that works.",
      5 => "Store training examples as chat-format JSONL, one example per line, and check every line for mistakes before training.",
      6 => "Learn where to find good examples, how to write ideal answers with a style guide, and how many examples you need to start.",
      7 => "Find and fix duplicates, broken lines, examples that are too long, private data and wrong answers before you train.",
      8 => "Split your data into training, validation and test sets, and stop examples leaking between them.",
      9 => "Use a strong model to write extra training examples, then check them with code and people before you use them.",
      10 => "Understand loss, gradient descent, batches, epochs and learning rate, and learn to read a loss curve.",
      11 => "Spot overfitting by comparing training and validation loss, use early stopping, and choose epochs and learning rate.",
      12 => "Learn how LoRA freezes the model and trains small low-rank matrices, what rank and alpha mean, and how to merge adapters.",
      13 => "Store weights with fewer bits, measure the error it adds, and train LoRA adapters on a 4-bit model with QLoRA.",
      14 => "Read a full supervised fine-tuning script with datasets, transformers, peft and TRL, and run it on a cloud GPU.",
      15 => "Build chosen and rejected answer pairs, and learn the ideas behind RLHF and DPO and when to use them.",
      16 => "Compare a tuned model with the base model on the same test set. Use task metrics, model-graded checks and a check for forgotten skills.",
      17 => "Learn why fine-tuning can weaken safety, how to test refusals again, how to spot poisoned data, and which guardrails to keep.",
      18 => "Serve a fine-tuned model: load or merge a LoRA adapter, use quantised inference, share one base model across adapters, and think about speed and cost.",
      19 => "Version your data and models, watch for drift, decide when to retrain, and roll back safely.",
      20 => "Plan a full fine-tuning project for a support reply model, from the decision check to the launch checklist."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What does fine-tuning change inside a model?", opts: ["A) The model's code", "B) The values of the model's weights", "C) Only the system prompt"], ans: "B" },
      2 => { type: "multiple_choice", q: "Your bot must answer using today's prices, which change every day. What should you use?", opts: ["A) Fine-tuning", "B) A longer system prompt with last month's prices", "C) RAG, to fetch the prices and add them to the prompt"], ans: "C" },
      3 => { type: "true_false", q: "In PEFT methods like LoRA, the original model weights are frozen and only a small extra set of weights is trained.", opts: ["True", "False"], ans: "True" },
      4 => { type: "multiple_choice", q: "For most fine-tuning projects, which starting model is the best first choice?", opts: ["A) The smallest instruct model that passes your licence, context and language checks", "B) The largest base model you can find", "C) Any model, because the licence does not matter for fine-tuning"], ans: "A" },
      5 => { type: "multiple_choice", q: "In a chat-format JSONL training file, which message holds the answer the model learns to write?", opts: ["A) The system message", "B) The user message", "C) The assistant message"], ans: "C" },
      6 => { type: "multiple_choice", q: "Your answers use two different refund periods for the same question. What will the fine-tuned model most likely do?", opts: ["A) Pick the correct period on its own", "B) Mix up the two periods in its replies", "C) Refuse to answer refund questions"], ans: "B" },
      7 => { type: "multiple_choice", q: "Why should you normalise text (lower case, extra spaces removed) before looking for duplicates?", opts: ["A) So near copies that differ only in case or spacing are found", "B) So the file becomes smaller", "C) So the model trains faster"], ans: "A" },
      8 => { type: "true_false", q: "If turn 1 of a conversation is in the training set and turn 2 is in the test set, that is a form of leakage.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "What is the main risk of training only on examples written by a teacher model, with no checks?", opts: ["A) The data is always too short", "B) The student cannot read JSON", "C) The student learns the teacher's mistakes"], ans: "C" },
      10 => { type: "multiple_choice", q: "During training, the loss jumps up and then shows NaN. What is the most likely cause?", opts: ["A) The learning rate is too small", "B) The test set is too big", "C) The learning rate is too big"], ans: "C" },
      11 => { type: "multiple_choice", q: "Training loss keeps going down, but validation loss has started to go up. What is happening?", opts: ["A) The learning rate is too low", "B) The model is overfitting", "C) The model is underfitting"], ans: "B" },
      12 => { type: "multiple_choice", q: "In LoRA, which weights are trained?", opts: ["A) All the weights of the base model", "B) Only the last layer of the base model", "C) Only the small A and B matrices added next to the frozen weights"], ans: "C" },
      13 => { type: "true_false", q: "In QLoRA, the LoRA adapters are stored in 4 bits and the base model is trained in 16 bits.", opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "What does assistant_only_loss=True do in TRL's SFTConfig?", opts: ["A) It computes the loss only on the assistant's reply tokens", "B) It removes all system prompts from the dataset", "C) It trains only the assistant model, not the user model"], ans: "A" },
      15 => { type: "multiple_choice", q: "How is DPO different from classic RLHF?", opts: ["A) DPO needs no preference data", "B) DPO learns directly from preference pairs, without training a separate reward model", "C) DPO always needs more GPUs than RLHF"], ans: "B" },
      16 => { type: "multiple_choice", q: "Why should you also test a fine-tuned model on general questions, not only on your task?", opts: ["A) To make training faster", "B) To catch catastrophic forgetting of skills it had before", "C) To lower the cost of each request"], ans: "B" },
      17 => { type: "true_false", q: "Fine-tuning only on harmless, friendly examples can still make a model refuse harmful requests less often.", opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "What is the main benefit of serving many LoRA adapters on one base model?", opts: ["A) The base model is loaded once and shared, which saves memory", "B) The adapters make the base model larger and smarter", "C) You no longer need to evaluate the tuned models"], ans: "A" },
      19 => { type: "multiple_choice", q: "Right after launch, a new model version has twice as many format errors as the old one. What should you do first?", opts: ["A) Wait a month and see if it improves", "B) Delete the old version to save space", "C) Roll back to the previous version, then find the cause"], ans: "C" },
      20 => { type: "multiple_choice", q: "In the capstone, what should the tuned support model be compared with?", opts: ["A) Nothing, a low training loss is enough", "B) The base model with a good prompt, on the same fixed test set", "C) The training examples it has already seen"], ans: "B" }
    }

    FineTuningLlmsContent::LESSONS.each do |position, data|
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

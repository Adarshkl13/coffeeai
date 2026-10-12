require_relative "../training_deep_models_content"

namespace :content do
  desc "Create Training Deep Models course and populate all 20 lessons"
  task training_deep_models: :environment do
    description = "Learn the practical skills of training deep learning models with PyTorch. Prepare data, choose batch sizes, optimisers and learning rate schedules, use CNNs and RNNs, train faster on GPUs, reuse pretrained models, and debug training when it goes wrong. Finish by training and deploying an image classifier."
    course = Course.find_or_create_by!(slug: "training-deep-models") do |c|
      c.title       = "Training Deep Models"
      c.description = description
      c.color       = "#f59e0b"
      c.icon        = "🏋️"
      c.position    = 110
      c.published   = true
    end
    course.update!(title: "Training Deep Models", description: description)
    puts "Course: #{course.title}"

    titles = {
      1 => "What is Deep Learning?",
      2 => "Setting Up Your Environment (Python, PyTorch, GPU)",
      3 => "Collecting and Cleaning Data",
      4 => "Data Preprocessing and Normalization",
      5 => "Train, Validation and Test Sets",
      6 => "Datasets and DataLoaders",
      7 => "Batch Size and Epochs",
      8 => "Optimizers: SGD, Momentum, Adam",
      9 => "Learning Rate Schedules",
      10 => "Weight Initialization",
      11 => "Batch Normalization and Dropout",
      12 => "Convolutional Neural Networks (CNNs)",
      13 => "Recurrent Neural Networks (RNNs) and LSTMs",
      14 => "Training on GPUs",
      15 => "Mixed Precision and Faster Training",
      16 => "Transfer Learning",
      17 => "Fine-Tuning Pretrained Models",
      18 => "Monitoring Training (Loss Curves, TensorBoard)",
      19 => "Debugging Training Problems",
      20 => "Project: Train and Deploy an Image Classifier"
    }

    descriptions = {
      1 => "See how deep networks learn their own features from raw data, and when a simpler model is the better choice.",
      2 => "Make a virtual environment, install PyTorch from the pytorch.org selector, and pick cuda, mps or cpu as your device.",
      3 => "Collect data you are allowed to use, then fix labels, remove duplicates and missing values, and check class balance with pandas.",
      4 => "Standardise and min-max scale features, scale image pixels, make one-hot labels, and fit the scaling on the training set only.",
      5 => "Split your data into train, validation and test sets, keep the class mix with stratify, and avoid data leakage.",
      6 => "Build a PyTorch Dataset with __len__ and __getitem__, and use a DataLoader to shuffle and batch your data.",
      7 => "Work out steps per epoch, see how batch size changes noise and memory, and stop training at the right time with early stopping.",
      8 => "Compare SGD, momentum and Adam on a narrow valley, and learn why AdamW with weight decay is a common default.",
      9 => "Change the learning rate during training with step decay, cosine decay and warmup, using torch.optim.lr_scheduler.",
      10 => "Choose good starting weights with Xavier and He initialisation so signals do not vanish or explode in deep networks.",
      11 => "Learn how batch normalisation and dropout work, and why they act differently in model.train() and model.eval() mode.",
      12 => "Build a small CNN with kernels, stride, padding, pooling and channels, and follow the tensor shapes through it.",
      13 => "See how RNNs carry a hidden state through time, why their gradients vanish, how LSTM gates keep memory, and what shapes nn.LSTM uses.",
      14 => "Learn why GPUs train models faster, how to move the model and data with .to(device), how to plan GPU memory, and how to fix common GPU errors.",
      15 => "Speed up training and save memory with float16 and bfloat16, torch.autocast, the GradScaler and gradient accumulation.",
      16 => "Reuse a pretrained ResNet-18: freeze its layers, replace the last layer with a new head, and train only the head on a small dataset.",
      17 => "Unfreeze the top layers of a pretrained network, give them a lower learning rate, and decide when fine-tuning beats feature extraction.",
      18 => "Read training and validation loss curves, spot overfitting and underfitting, and log values to TensorBoard with SummaryWriter.",
      19 => "Find training bugs with a step-by-step checklist: look at the data, check shapes, check the first loss and overfit one batch.",
      20 => "Plan, train, evaluate, save and deploy an image classifier with PyTorch, FastAPI and ONNX."
    }

    exercises = {
      1 => { type: "multiple_choice", q: "What is the main difference between deep learning and a shallow model with hand-made features?", opts: ["A) Deep learning always needs less data", "B) In deep learning, the layers learn useful features from raw data", "C) Deep learning cannot work with images", "D) Shallow models have more layers"], ans: "B" },
      2 => { type: "multiple_choice", q: "Your code checks torch.cuda.is_available() and gets False, then torch.backends.mps.is_available() and gets True. Which device should it use?", opts: ["A) cuda", "B) cpu", "C) mps"], ans: "C" },
      3 => { type: "true_false", q: "If 90% of your photos are apples, a model that always says \"apple\" can score 90% accuracy while learning nothing.", opts: ["True", "False"], ans: "True" },
      4 => { type: "multiple_choice", q: "Which data should you use to work out the mean and std for standardisation?", opts: ["A) The training set only", "B) All the data, including the test set", "C) The test set only", "D) A new random sample for each batch"], ans: "A" },
      5 => { type: "multiple_choice", q: "What is the test set used for?", opts: ["A) Choosing the learning rate and the number of epochs", "B) Learning the model's weights", "C) Giving one honest final score, used once at the end"], ans: "C" },
      6 => { type: "multiple_choice", q: "A DataLoader uses batch_size=32 on a FruitDataset of 700 images, each of shape [3, 64, 64]. What is the shape of a full image batch?", opts: ["A) [32, 3, 64, 64]", "B) [3, 64, 64, 32]", "C) [700, 3, 64, 64]", "D) [22, 3, 64, 64]"], ans: "A" },
      7 => { type: "multiple_choice", q: "You have 700 training photos and a batch size of 32. How many steps are in one epoch?", opts: ["A) 21", "B) 22", "C) 32", "D) 700"], ans: "B" },
      8 => { type: "true_false", q: "Adam divides each step by the square root of the average squared gradient, so every weight gets a step of a similar size.", opts: ["True", "False"], ans: "True" },
      9 => { type: "multiple_choice", q: "In a PyTorch training loop, when should you call scheduler.step()?", opts: ["A) Before optimizer.zero_grad(), at the start of every step", "B) Before loss.backward(), so the gradients use the new learning rate", "C) After optimizer.step(), once per epoch or once per batch depending on the schedule"], ans: "C" },
      10 => { type: "multiple_choice", q: "Which initialisation is designed for layers that use ReLU?", opts: ["A) He (Kaiming), with standard deviation √(2 ÷ fan_in)", "B) Setting every weight to 0", "C) Xavier, with standard deviation √(2 ÷ (fan_in + fan_out))"], ans: "A" },
      11 => { type: "true_false", q: "In eval mode (after model.eval()), dropout still sets random values to 0.", opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "A 64 × 64 image goes through a 3 × 3 convolution with padding 1 and stride 2. What is the output height and width?", opts: ["A) 64 × 64", "B) 32 × 32", "C) 62 × 62", "D) 31 × 31"], ans: "B" },
      13 => { type: "multiple_choice", q: "Why can an LSTM remember information over more time steps than a plain RNN?", opts: ["A) It uses different weights at every time step", "B) Its cell state is updated by adding, with gates that decide what to keep, so information and gradients fade less", "C) It reads the whole sequence at once instead of one step at a time"], ans: "B" },
      14 => { type: "multiple_choice", q: "You call model.to(\"cuda\") but pass a batch straight from the DataLoader into the model. What happens?", opts: ["A) PyTorch moves the batch to the GPU for you", "B) Training runs on the CPU, but more slowly", "C) You get an error because the model and the batch are on different devices"], ans: "C" },
      15 => { type: "true_false", q: "When you train with float16 mixed precision, the GradScaler multiplies the loss by a large number so that tiny gradients do not become 0.", opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "In transfer learning with a frozen ResNet-18 backbone, which part do you train on your own fruit photos?", opts: ["A) Only the new head that replaced the last layer", "B) Every layer, starting from random weights", "C) Only the first convolution layer"], ans: "A" },
      17 => { type: "multiple_choice", q: "You fine-tune a pretrained ResNet-18 with a new head. Which learning rate setup is the usual starting point?", opts: ["A) The same high learning rate for every layer, so the model changes quickly", "B) A learning rate about 10 times lower for the pretrained layers than for the new head", "C) A higher learning rate for the pretrained layers than for the new head", "D) A learning rate of 0 for the new head"], ans: "B" },
      18 => { type: "multiple_choice", q: "Training loss keeps falling, but validation loss falls and then starts to rise. What does this most likely mean?", opts: ["A) The model is underfitting and needs more epochs", "B) The learning rate is too low", "C) The model is overfitting, so you should keep the checkpoint with the lowest validation loss"], ans: "C" },
      19 => { type: "true_false", q: "If your model cannot get the loss close to 0 on one small batch of 8 examples, the most likely problem is a bug in the code, not too little data.", opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "You saved a model with torch.save(model.state_dict(), \"model.pt\"). What must you do before you can load these weights?", opts: ["A) Build the same model architecture first, then call load_state_dict", "B) Nothing: the file contains the full model code", "C) Convert the file to ONNX", "D) Train the model again for one epoch"], ans: "A" }
    }

    TrainingDeepModelsContent::LESSONS.each do |position, data|
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
    course.course_lessons.where("position > ?", 20).destroy_all

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

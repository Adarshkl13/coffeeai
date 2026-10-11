require_relative "../../lib/beginner_ai_python_content"

class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_lesson
  before_action :require_plan, only: %i[show complete skip], unless: -> { @lesson[:id] == 1 }
  before_action :ensure_accessible, only: %i[show]

  # ── Static course data ───────────────────────────────────────────
  MODULES_DATA = [
    { id: 1, name: "Introduction to AI" },
    { id: 2, name: "Python Basics" },
    { id: 3, name: "Data Handling" },
    { id: 4, name: "Machine Learning" },
    { id: 5, name: "AI Chatbot with OpenAI" }
  ].freeze

  LESSONS = [
    # ── Module 1: Introduction to AI ──────────────────────────────
    { id: 1, module_id: 1, number: "1.1", title: "What is AI?", image: "l1.1.png",
      description: "Artificial Intelligence is a computer system that can understand, think, and respond like a human. AI learns from data and improves over time — just like how you get better at a sport with practice. Today, AI powers things you use every day: voice assistants, recommendation engines, and search.",
      exercise_type: "multiple_choice", exercise_id: "1.1.1",
      question: "Which of the following best describes Artificial Intelligence?",
      correct_answer: "B",
      options: [
        "A) A robot that physically looks like a human",
        "B) A computer system that can understand, think, and respond like a human",
        "C) A program that only does math calculations"
      ] },

    { id: 2, module_id: 1, number: "1.2", title: "AI in Real Life", image: "l1.2.png",
      description: "AI is already part of your daily life in many ways you might not even notice. From Netflix recommending movies to your phone unlocking with your face — these are all AI in action. AI is solving real problems in healthcare, finance, education, and transportation.",
      exercise_type: "true_false", exercise_id: "1.2.1",
      question: "Self-driving cars use Artificial Intelligence to navigate and make decisions.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 3, module_id: 1, number: "1.3", title: "Types of AI", image: "l1.3.png",
      description: "Not all AI is the same. AI is classified into three types: Narrow AI does one specific task, General AI can learn anything like a human, and Super AI would be smarter than all humans combined. Today, every AI system in existence — including ChatGPT — is Narrow AI.",
      exercise_type: "multiple_choice", exercise_id: "1.3.1",
      question: "Which type of AI is ChatGPT?",
      correct_answer: "B",
      options: [ "A) General AI", "B) Narrow AI", "C) Super AI" ] },

    { id: 4, module_id: 1, number: "1.4", title: "AI vs ML vs DL", image: "l1.4.png",
      description: "Artificial Intelligence is the big umbrella concept. Machine Learning (ML) is a subset of AI that learns patterns from data. Deep Learning is a subset of ML that uses neural networks inspired by the human brain. Think of it as nested circles: AI ⊃ Machine Learning ⊃ Deep Learning.",
      exercise_type: "multiple_choice", exercise_id: "1.4.1",
      question: "What does ML stand for in the context of AI?",
      correct_answer: "B",
      options: [ "A) Machine Language", "B) Machine Learning", "C) Model Logic" ] },

    { id: 5, module_id: 1, number: "1.5", title: "Why Learn AI?", image: "l1.5.png",
      description: "AI is transforming every industry — healthcare, agriculture, finance, education, and more. Learning AI gives you a superpower: the ability to build intelligent systems that solve real-world problems at scale. Python is the most popular language for AI and the perfect place to start your journey.",
      exercise_type: "true_false", exercise_id: "1.5.1",
      question: "AI is only useful for technology companies and software engineers.",
      correct_answer: "False",
      options: [ "True", "False" ] },

    # ── Module 2: Python Basics ────────────────────────────────────
    { id: 6, module_id: 2, number: "2.1", title: "Python Introduction", image: "l2.1.png",
      description: "Python is one of the most popular programming languages in the world, especially for AI and data science. It reads almost like plain English, making it beginner-friendly. With Python, you can build AI models, analyze data, and automate tasks with just a few lines of code.",
      exercise_type: "true_false", exercise_id: "2.1.1",
      question: "Python is a beginner-friendly programming language widely used in AI and data science.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 7, module_id: 2, number: "2.2", title: "Variables & Data Types", image: "l2.2.png",
      description: "Variables are containers that store data. In Python, you create a variable by writing its name and assigning a value with the = sign. Python has several built-in data types: strings (text), integers (whole numbers), floats (decimals), and booleans (True/False).",
      exercise_type: "multiple_choice", exercise_id: "2.2.1",
      question: "What is the correct way to create a variable in Python?",
      correct_answer: "A",
      options: [ "A) x = 5", "B) var x = 5", "C) int x = 5" ] },

    { id: 8, module_id: 2, number: "2.3", title: "Strings & Numbers", image: "l2.3.png",
      description: "Strings are sequences of characters enclosed in quotes — they represent text. Numbers in Python include integers (1, 2, 42) and floats (3.14, 2.5). You can do arithmetic with numbers and manipulate text with strings — both are essential building blocks of every Python program.",
      exercise_type: "multiple_choice", exercise_id: "2.3.1",
      question: "Which of the following is a string in Python?",
      correct_answer: "B",
      options: [ "A) 42", "B) \"Hello AI\"", "C) True" ] },

    { id: 9, module_id: 2, number: "2.4", title: "Lists & Loops", image: "l2.4.png",
      description: "A list is an ordered collection of items stored in a single variable, like a shopping list. Loops let you repeat actions — a for loop goes through every item in a list automatically. Lists and loops are essential for handling datasets, which in AI can contain millions of examples.",
      exercise_type: "true_false", exercise_id: "2.4.1",
      question: "In Python, list indices (positions) start at 0, not 1.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 10, module_id: 2, number: "2.5", title: "Functions", image: "l2.5.png",
      description: "A function is a reusable block of code that performs a specific task. You define it once with the def keyword and call it as many times as you need. Functions make your code shorter, cleaner, and easier to maintain — they are one of the most important concepts in programming.",
      exercise_type: "multiple_choice", exercise_id: "2.5.1",
      question: "What is the main purpose of a function in Python?",
      correct_answer: "B",
      options: [
        "A) To delete variables from memory",
        "B) To define a reusable block of code that performs a specific task",
        "C) To display images on the screen"
      ] },

    # ── Module 3: Data Handling ────────────────────────────────────
    { id: 11, module_id: 3, number: "3.1", title: "What is Data?", image: "l3.1.png",
      description: "Data is information that can be stored, processed, and analyzed. Structured data is organized in tables (like spreadsheets), while unstructured data includes images, audio, and text. AI models learn entirely from data — the quality and quantity of your data directly determines your model's performance.",
      exercise_type: "multiple_choice", exercise_id: "3.1.1",
      question: "Which of the following is an example of structured data?",
      correct_answer: "B",
      options: [ "A) A social media photo", "B) A spreadsheet of customer sales data", "C) A voice recording" ] },

    { id: 12, module_id: 3, number: "3.2", title: "NumPy Basics", image: "l3.2.png",
      description: "NumPy is the fundamental Python library for numerical computing. It introduces arrays (like super-powered lists) that are much faster than regular Python for math. NumPy is the backbone of data science in Python — libraries like Pandas and TensorFlow are built on top of it.",
      exercise_type: "true_false", exercise_id: "3.2.1",
      question: "NumPy is a Python library primarily used for numerical computing and working with arrays.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 13, module_id: 3, number: "3.3", title: "Pandas Introduction", image: "l3.3.png",
      description: "Pandas is a Python library designed for data manipulation and analysis. It provides two main structures: Series (a single column of data) and DataFrame (a full table with rows and columns). With Pandas, you can load CSV files, filter rows, calculate statistics, and prepare data for ML models.",
      exercise_type: "true_false", exercise_id: "3.3.1",
      question: "Pandas is a Python library used for data manipulation and analysis.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 14, module_id: 3, number: "3.4", title: "DataFrames", image: "l3.4.png",
      description: "A DataFrame is a two-dimensional table with labeled rows and columns — like a spreadsheet inside Python. Each column can hold a different type of data (numbers, text, dates). DataFrames are the standard way to hold and manipulate real-world datasets before training a machine learning model.",
      exercise_type: "multiple_choice", exercise_id: "3.4.1",
      question: "A Pandas DataFrame is most similar to what?",
      correct_answer: "C",
      options: [ "A) A Python list", "B) A single variable", "C) A table or spreadsheet" ] },

    { id: 15, module_id: 3, number: "3.5", title: "Data Cleaning", image: "l3.5.png",
      description: "Real-world data is almost never perfect. Missing values, duplicate records, and inconsistent formats are very common. Data cleaning is the process of detecting and fixing these issues before feeding data into a model. Studies show data scientists spend up to 80% of their time cleaning data!",
      exercise_type: "true_false", exercise_id: "3.5.1",
      question: "Missing or incorrect data in a dataset can negatively affect machine learning model accuracy.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 16, module_id: 3, number: "3.6", title: "Data Visualization", image: "l3.6.png",
      description: "Data visualization turns numbers into charts, graphs, and plots that humans can understand at a glance. It helps you discover patterns, trends, and outliers in your data before building a model. Matplotlib is the most popular Python library for creating visualizations like bar charts, line graphs, and scatter plots.",
      exercise_type: "multiple_choice", exercise_id: "3.6.1",
      question: "Which Python library is most commonly used to create data visualizations?",
      correct_answer: "C",
      options: [ "A) NumPy", "B) Pandas", "C) Matplotlib" ] },

    # ── Module 4: Machine Learning ────────────────────────────────
    { id: 17, module_id: 4, number: "4.1", title: "What is Machine Learning?", image: "l4.1.png",
      description: "Machine Learning is a branch of AI where computers learn from data without being explicitly programmed. Instead of writing rules by hand, you give the model examples and it figures out the patterns on its own. ML powers recommendation systems, fraud detection, image recognition, and much more.",
      exercise_type: "multiple_choice", exercise_id: "4.1.1",
      question: "Machine Learning allows computers to:",
      correct_answer: "B",
      options: [
        "A) Work without any power source",
        "B) Learn from data without being explicitly programmed",
        "C) Think and feel exactly like humans"
      ] },

    { id: 18, module_id: 4, number: "4.2", title: "Training vs Testing", image: "l4.2.png",
      description: "Before training an ML model, you split your data into two parts: training data (the model learns from this) and testing data (used to evaluate how well it learned). A typical split is 80% training and 20% testing. This separation is critical — it shows how the model handles data it has never seen before.",
      exercise_type: "true_false", exercise_id: "4.2.1",
      question: "It is acceptable to test your ML model on the same data that was used to train it.",
      correct_answer: "False",
      options: [ "True", "False" ] },

    { id: 19, module_id: 4, number: "4.3", title: "Linear Regression", image: "l4.3.png",
      description: "Linear Regression is one of the simplest ML algorithms. It finds a straight line that best fits your data points and uses that line to make predictions. It is best suited for predicting continuous numerical values — for example, predicting a house price based on its size, or a salary based on years of experience.",
      exercise_type: "multiple_choice", exercise_id: "4.3.1",
      question: "Linear Regression is best used to predict:",
      correct_answer: "A",
      options: [
        "A) Continuous numerical values, like house prices",
        "B) Yes or no categories",
        "C) Which image contains a cat"
      ] },

    { id: 20, module_id: 4, number: "4.4", title: "Classification", image: "l4.4.png",
      description: "Classification is a type of ML where the model predicts which category an input belongs to. Binary classification means two categories (spam/not spam, yes/no). Multi-class classification means three or more categories (cat, dog, or bird). Email spam filters and image recognition systems both use classification.",
      exercise_type: "multiple_choice", exercise_id: "4.4.1",
      question: "Which is an example of a binary classification problem?",
      correct_answer: "B",
      options: [
        "A) Predicting tomorrow's temperature",
        "B) Detecting whether an email is spam or not spam",
        "C) Grouping customers into similar segments"
      ] },

    { id: 21, module_id: 4, number: "4.5", title: "Decision Trees", image: "l4.5.png",
      description: "A Decision Tree is an ML model that makes decisions by asking a series of yes/no questions — just like a flowchart. Each branch represents a decision, and each leaf is a final prediction. Decision Trees are easy to understand and explain, making them popular in medical diagnosis and loan approval systems.",
      exercise_type: "true_false", exercise_id: "4.5.1",
      question: "A Decision Tree makes predictions by asking a series of yes/no questions about the data.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 22, module_id: 4, number: "4.6", title: "Model Evaluation", image: "l4.6.png",
      description: "After training a model, you must measure how well it performs. Accuracy is the most common metric — it measures the percentage of correct predictions. For imbalanced datasets, you also look at precision, recall, and F1 score to get a complete and honest picture of your model's performance.",
      exercise_type: "multiple_choice", exercise_id: "4.6.1",
      question: "Which metric measures the percentage of correct predictions a model makes?",
      correct_answer: "B",
      options: [ "A) Loss", "B) Accuracy", "C) Gradient" ] },

    # ── Module 5: AI Project ──────────────────────────────────────
    { id: 23, module_id: 5, number: "5.1", title: "Project Planning", image: "l5.1.png",
      description: "Every successful AI project starts with a clear plan. The first step is defining the problem: What are you predicting? Who will use it? What data do you need? A well-defined problem saves weeks of wasted effort. Most failed AI projects fail because the problem was never clearly defined in the first place.",
      exercise_type: "true_false", exercise_id: "5.1.1",
      question: "The very first step in an AI project is collecting data.",
      correct_answer: "False",
      options: [ "True", "False" ] },

    { id: 24, module_id: 5, number: "5.2", title: "Data Collection", image: "l5.2.png",
      description: "Data collection is the process of gathering examples your model will learn from. Sources include databases, web scraping, surveys, APIs, and public datasets (like Kaggle). The most important qualities are relevance (the right subject), labels (correct answers), and size (enough examples for the model to generalize).",
      exercise_type: "multiple_choice", exercise_id: "5.2.1",
      question: "What makes the best training data for an AI model?",
      correct_answer: "C",
      options: [
        "A) Any random text from the internet",
        "B) A single small spreadsheet",
        "C) Large, labeled, and relevant datasets"
      ] },

    { id: 25, module_id: 5, number: "5.3", title: "Building the Model", image: "l5.3.png",
      description: "Building an ML model means selecting the right algorithm and writing the training code. Libraries like scikit-learn make this remarkably easy — often just a few lines of Python. The four key steps of the ML pipeline are: Collect data → Train model → Test model → Deploy.",
      exercise_type: "multiple_choice", exercise_id: "5.3.1",
      question: "What is the correct order of the ML pipeline?",
      correct_answer: "B",
      options: [
        "A) Deploy → Train → Collect → Test",
        "B) Collect → Train → Test → Deploy",
        "C) Test → Collect → Train → Deploy"
      ] },

    { id: 26, module_id: 5, number: "5.4", title: "Training the Model", image: "l5.4.png",
      description: "Training is when the model learns from data by adjusting its internal parameters to minimize prediction errors. You need to watch for two problems: overfitting (memorizing training data but failing on new data) and underfitting (too simple to learn the pattern). The goal is a model that generalizes well to new, unseen data.",
      exercise_type: "true_false", exercise_id: "5.4.1",
      question: "Overfitting occurs when a model performs well on training data but poorly on new, unseen data.",
      correct_answer: "True",
      options: [ "True", "False" ] },

    { id: 27, module_id: 5, number: "5.5", title: "Testing & Validation", image: "l5.5.png",
      description: "Validation and testing confirm that your model is ready for the real world. Cross-validation runs multiple train/test splits to give a more reliable accuracy estimate. A high training accuracy but low test accuracy is a red flag for overfitting. Always evaluate on data the model has never seen during training.",
      exercise_type: "multiple_choice", exercise_id: "5.5.1",
      question: "Cross-validation helps to:",
      correct_answer: "A",
      options: [
        "A) Get a more reliable and honest estimate of model accuracy",
        "B) Speed up model training significantly",
        "C) Reduce the size of the dataset needed"
      ] },

    { id: 28, module_id: 5, number: "5.6", title: "Deployment", image: "l5.6.png",
      description: "Deployment is when your trained model goes live and real users can interact with it. You can deploy as a REST API, a web application, or embed it into an existing product. After deployment, you monitor performance over time and retrain the model as new data becomes available. Congratulations — you've completed the course!",
      exercise_type: "true_false", exercise_id: "5.6.1",
      question: "After training and testing a model, it must be deployed to be used by real users in production.",
      correct_answer: "True",
      options: [ "True", "False" ] }
  ].map { |l| l.merge(BeginnerAiPythonContent.meta_for(l[:id])) }.freeze   # title and quiz from each lesson's image

  # ── Actions ──────────────────────────────────────────────────────

  def show
    progress = LessonProgress.find_or_create_by!(user: current_user, lesson_id: @lesson[:id])
    progress.in_progress! unless progress.done?

    build_view_data
  end

  def complete
    progress = LessonProgress.find_or_create_by!(user: current_user, lesson_id: @lesson[:id])
    progress.update!(status: :completed, completed_at: Time.current)

    if @next_lesson
      redirect_to lesson_path(@next_lesson[:id]), notice: "Lesson complete! Keep going 🎉"
    else
      redirect_to lesson_path(@lesson[:id]), notice: "🎓 You've completed the entire course! Your certificate is in the sidebar."
    end
  end

  def skip
    progress = LessonProgress.find_or_create_by!(user: current_user, lesson_id: @lesson[:id])
    progress.update!(status: :skipped, skipped_at: Time.current)

    if @next_lesson
      redirect_to lesson_path(@next_lesson[:id]), notice: "Lesson skipped."
    else
      redirect_to lesson_path(@lesson[:id]), notice: "You've reached the end of the course."
    end
  end

  private

  def set_lesson
    id = (params[:id] || 1).to_i
    id = 1 if id < 1
    @lesson = LESSONS.find { |l| l[:id] == id }
    unless @lesson
      redirect_to root_path and return
    end
    @next_lesson = LESSONS.find { |l| l[:id] == @lesson[:id] + 1 }
    @prev_lesson = LESSONS.find { |l| l[:id] == @lesson[:id] - 1 }
  end

  def ensure_accessible
    return if accessible?(@lesson)

    # Find the furthest accessible lesson for this user
    available = LESSONS.select { |l| accessible?(l) }.last || LESSONS.first
    redirect_to lesson_path(available[:id]),
                alert: "Complete or skip the current lesson to unlock this one."
  end

  def accessible?(lesson)
    return true if lesson[:id] == 1
    prev_lesson = LESSONS.find { |l| l[:id] == lesson[:id] - 1 }
    return true unless prev_lesson
    # All of the learner's progress is loaded once per request (the sidebar checks every lesson)
    @progress_by_lesson ||= current_user.lesson_progresses.index_by(&:lesson_id)
    @progress_by_lesson[prev_lesson[:id]]&.done?
  end

  def build_view_data
    all_progresses = current_user.lesson_progresses.index_by(&:lesson_id)

    @modules_with_lessons = MODULES_DATA.map do |mod|
      lessons = LESSONS.select { |l| l[:module_id] == mod[:id] }
      completed = lessons.count { |l| all_progresses[l[:id]]&.done? }
      lessons_with_status = lessons.map do |l|
        prog  = all_progresses[l[:id]]
        pro    = !full_access? && l[:id] > 1
        locked = pro || !accessible?(l)
        l.merge(
          progress_status: prog&.status || "not_started",
          locked: locked,
          pro: pro
        )
      end
      mod.merge(lessons: lessons_with_status, completed: completed)
    end

    total_done = all_progresses.values.count(&:done?)
    @progress_pct = (total_done.to_f / LESSONS.size * 100).round
    @certificate = Certificate.award_original(current_user, total: LESSONS.size)

    @current_progress = all_progresses[@lesson[:id]]
  end
end

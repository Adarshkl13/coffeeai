require_relative "../machine_learning_content"

namespace :content do
  desc "Create Machine Learning course and populate all 20 lessons"
  task machine_learning: :environment do
    course = Course.find_or_create_by!(slug: "machine-learning") do |c|
      c.title       = "Machine Learning"
      c.description = "Dive into the algorithms that make machines learn. From linear regression to neural networks, build models that make intelligent predictions from data."
      c.color       = "#7c3aed"
      c.icon        = "🤖"
      c.position    = 4
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "What is Machine Learning?",          2  => "Types of Machine Learning",
      3  => "The ML Workflow",                    4  => "Datasets, Features and Labels",
      5  => "Train/Test Split",                   6  => "Linear Regression",
      7  => "Gradient Descent from Scratch",      8  => "Evaluating Regression Models",
      9  => "Logistic Regression",                10 => "Classification Metrics",
      11 => "K-Nearest Neighbours",               12 => "Decision Trees",
      13 => "Random Forests",                     14 => "Overfitting and Regularisation",
      15 => "Cross-Validation",                   16 => "Feature Scaling and Encoding",
      17 => "Pipelines",                          18 => "K-Means Clustering",
      19 => "Principal Component Analysis (PCA)", 20 => "End-to-End Project and Review"
    }

    descriptions = {
      1  => "Learn how machine learning lets a computer discover rules from examples instead of being programmed by hand.",
      2  => "Understand supervised, unsupervised and reinforcement learning, and the difference between regression and classification.",
      3  => "Follow the seven steps every ML project uses, from defining the problem to evaluating on a held-out test set.",
      4  => "Learn how a dataset is organised into samples, features (X) and labels (y), and how to check data before training.",
      5  => "Split data into training and test sets with train_test_split so you can measure performance on unseen data.",
      6  => "Fit a straight line to data to predict numbers like house prices, and learn to read coefficients.",
      7  => "Build gradient descent from scratch in NumPy to see exactly how a model learns its weights.",
      8  => "Measure regression models with MAE, MSE, RMSE and R-squared, and compare them against a baseline.",
      9  => "Use the sigmoid function and logistic regression to predict class probabilities such as pass or fail.",
      10 => "Go beyond accuracy with the confusion matrix, precision, recall and F1 score.",
      11 => "Classify new points by a majority vote of their nearest neighbours, and see why feature scaling matters.",
      12 => "Build flowchart-like models that split data with yes/no questions chosen by Gini impurity.",
      13 => "Combine many randomised decision trees into a forest that is more accurate and less prone to overfitting.",
      14 => "Recognise underfitting and overfitting, and control model complexity with Ridge and Lasso regularisation.",
      15 => "Get reliable scores with k-fold cross-validation and tune settings with GridSearchCV.",
      16 => "Put numeric features on a common scale and turn text categories into numbers with one-hot encoding.",
      17 => "Chain preprocessing and a model into one Pipeline to avoid data leakage and simplify your code.",
      18 => "Group unlabelled data into clusters with k-means and choose k using the elbow method and silhouette score.",
      19 => "Compress many features into a few principal components while keeping most of the information.",
      20 => "Build a complete leak-free ML project from raw data to final test report, and review the whole course."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which of these problems is the best fit for machine learning rather than hand-written rules?",
              opts: ["A) Converting a temperature from Celsius to Fahrenheit", "B) Adding 18% GST to a restaurant bill", "C) Predicting whether a customer will leave a mobile plan based on their past usage"], ans: "C" },
      2  => { type: "true_false",      q: "Grouping shoppers into segments when no labels are given is an example of supervised learning.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "Why should the test set be used only once, at the very end of a project?",
              opts: ["A) So that it gives an honest estimate of performance on unseen data", "B) Because using it more often makes training slower", "C) Because scikit-learn raises an error if it is used twice"], ans: "A" },
      4  => { type: "multiple_choice", q: "You want to predict a flat's price from its area, number of bedrooms and city. What is the label (y)?",
              opts: ["A) The area of the flat", "B) The price of the flat", "C) The city of the flat"], ans: "B" },
      5  => { type: "true_false",      q: "Passing the same random_state to train_test_split produces the same split every time the code is run.",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "A model learned price_lakh = 5 x (area in hundreds of sq ft) + 10. What does it predict for a 1200 sq ft flat?",
              opts: ["A) 60 lakhs", "B) 6010 lakhs", "C) 70 lakhs"], ans: "C" },
      7  => { type: "multiple_choice", q: "In gradient descent, what usually happens if the learning rate is far too large?",
              opts: ["A) The loss jumps around or grows instead of decreasing", "B) The model always reaches the minimum in fewer steps", "C) The weights stop changing after the first step"], ans: "A" },
      8  => { type: "true_false",      q: "An R-squared of 0.95 on the training data guarantees that the model will perform well on new data.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "A logistic regression model outputs P(pass) = 0.83 for a student. With the default threshold of 0.5, what is the predicted class?",
              opts: ["A) Fail", "B) Pass", "C) It cannot predict a class, only a probability"], ans: "B" },
      10 => { type: "multiple_choice", q: "In cancer screening, missing a real patient is far more costly than a false alarm. Which metric should you focus on most?",
              opts: ["A) Precision", "B) Accuracy", "C) Recall"], ans: "C" },
      11 => { type: "true_false",      q: "k-NN can give poor results when one feature is measured in lakhs and another on a 1-5 scale, unless the features are scaled.",
              opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "How does a decision tree choose which question to ask at each split?",
              opts: ["A) It picks the split that makes the child nodes as pure as possible (lowest impurity)", "B) It always splits the rows into two equal halves", "C) It uses the features in the order they appear in the dataset"], ans: "A" },
      13 => { type: "true_false",      q: "In a random forest, each tree is trained on a random bootstrap sample of the training rows.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "A model scores 99% accuracy on training data but only 65% on test data. What is the best first step?",
              opts: ["A) Add more features to the model", "B) Reduce model complexity or increase regularisation", "C) Report the training accuracy instead"], ans: "B" },
      15 => { type: "true_false",      q: "In 5-fold cross-validation, the model is trained and evaluated 5 times, each time using a different fold as the validation set.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Why should a StandardScaler be fitted on the training data only?",
              opts: ["A) To avoid leaking information from the test set into training", "B) Because the scaler cannot handle more than a few hundred rows", "C) So that the test set becomes larger"], ans: "A" },
      17 => { type: "true_false",      q: "When using a Pipeline, you must manually call fit_transform on the scaler before calling fit on the pipeline.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "What must you provide to k-means before it can run?",
              opts: ["A) A correct label for every data point", "B) The number of clusters, k", "C) A probability threshold such as 0.5"], ans: "B" },
      19 => { type: "true_false",      q: "PCA is a supervised method that uses the labels (y) to choose its principal components.",
              opts: ["True", "False"], ans: "False" },
      20 => { type: "multiple_choice", q: "Which order of steps gives an honest final score for an ML project?",
              opts: ["A) Tune settings on the test set, then report the test score", "B) Evaluate on the test set, tune settings, then split the data", "C) Split the data, tune with cross-validation on the training set, then evaluate once on the test set"], ans: "C" }
    }

    MachineLearningContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

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

require_relative "../machine_learning_content"

namespace :content do
  desc "Create Machine Learning course and populate all 21 lessons"
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
      3  => "The ML Workflow: Data, Features and Labels", 4 => "Train/Test Split",
      5  => "Linear Regression",                  6  => "Gradient Descent from Scratch",
      7  => "Evaluating Regression Models",       8  => "Logistic Regression",
      9  => "Classification Metrics and ROC/PR Curves", 10 => "K-Nearest Neighbours",
      11 => "Decision Trees",                     12 => "Random Forests and Gradient Boosting",
      13 => "Overfitting and Regularisation",     14 => "Cross-Validation",
      15 => "Feature Scaling and Encoding",       16 => "Pipelines",
      17 => "Support Vector Machines (SVM)",      18 => "Neural Networks (Multi-Layer Perceptrons)",
      19 => "K-Means Clustering",                 20 => "Principal Component Analysis (PCA)",
      21 => "End-to-End Project and Review"
    }

    descriptions = {
      1  => "Learn how machine learning lets a computer discover rules from examples instead of being programmed by hand.",
      2  => "Understand supervised, unsupervised and reinforcement learning, and the difference between regression and classification.",
      3  => "Organise a dataset into features (X) and labels (y), spot leaky features, and follow the seven workflow steps to beat a baseline on a held-out test set.",
      4  => "Split data into training and test sets with train_test_split so you can measure performance on unseen data.",
      5  => "Fit a straight line to data to predict numbers like house prices, and learn to read coefficients.",
      6  => "Build gradient descent from scratch in NumPy to see exactly how a model learns its weights.",
      7  => "Measure regression models with MAE, MSE, RMSE and R-squared, and compare them against a baseline.",
      8  => "Use the sigmoid function and logistic regression to predict class probabilities such as pass or fail.",
      9  => "Go beyond accuracy with the confusion matrix, precision, recall, F1, ROC-AUC and PR-AUC, and handle imbalanced classes with class weights and tuned thresholds.",
      10 => "Classify new points by a majority vote of their nearest neighbours, and see why feature scaling matters.",
      11 => "Build flowchart-like models that split data with yes/no questions chosen by Gini impurity.",
      12 => "Combine many decision trees with bagging (random forests) and boosting (gradient boosting) for stronger, more stable models.",
      13 => "Recognise underfitting and overfitting, and control model complexity with Ridge and Lasso regularisation.",
      14 => "Get reliable scores with k-fold cross-validation and tune settings with GridSearchCV.",
      15 => "Put numeric features on a common scale, turn text categories into numbers with one-hot encoding, and fill missing values.",
      16 => "Chain imputing, scaling, encoding and a model into one Pipeline to avoid data leakage and simplify your code.",
      17 => "Separate classes with the widest possible margin using SVC, choose linear or RBF kernels, and tune C and gamma inside a scaled pipeline.",
      18 => "Stack neurons into layers with MLPClassifier, see how backpropagation and adam train the weights, and control network size and alpha to avoid overfitting.",
      19 => "Group unlabelled data into clusters with k-means and choose k using the elbow method and silhouette score.",
      20 => "Compress many features into a few principal components while keeping most of the information.",
      21 => "Build a complete leak-free ML project from raw data to final test report, and review the whole course."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which of these problems is the best fit for machine learning rather than hand-written rules?",
              opts: ["A) Converting a temperature from Celsius to Fahrenheit", "B) Adding 18% GST to every restaurant bill", "C) Predicting which customers will leave a mobile plan"], ans: "C" },
      2  => { type: "true_false",      q: "Grouping shoppers into segments when no labels are given is an example of supervised learning.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "A churn model scores 77% accuracy on the test set, and 77% of the test customers did not leave. What is the best conclusion?",
              opts: ["A) It is no better than always predicting 'stays'", "B) It is excellent, because 77% is far above 50%", "C) It must be overfitting the training data"], ans: "A" },
      4  => { type: "true_false",      q: "Passing the same random_state to train_test_split produces the same split every time the code is run.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "A model learned price_lakh = 5 x (area in hundreds of sq ft) + 10. What does it predict for a 1200 sq ft flat?",
              opts: ["A) 60 lakhs", "B) 6010 lakhs", "C) 70 lakhs"], ans: "C" },
      6  => { type: "multiple_choice", q: "In gradient descent, what usually happens if the learning rate is far too large?",
              opts: ["A) The loss jumps around or grows instead of decreasing", "B) The model always reaches the minimum in fewer steps", "C) The weights stop changing after the first step"], ans: "A" },
      7  => { type: "true_false",      q: "An R-squared of 0.95 on the training data guarantees that the model will perform well on new data.",
              opts: ["True", "False"], ans: "False" },
      8  => { type: "multiple_choice", q: "A logistic regression model outputs P(pass) = 0.83 for a student. With the default threshold of 0.5, what is the predicted class?",
              opts: ["A) Fail", "B) Pass", "C) It cannot predict a class, only a probability"], ans: "B" },
      9  => { type: "multiple_choice", q: "In cancer screening, missing a real patient is far more costly than a false alarm. Which metric should you focus on most?",
              opts: ["A) Precision", "B) Accuracy", "C) Recall"], ans: "C" },
      10 => { type: "true_false",      q: "A k-NN model with k = 1 scores 100% on its training data but noticeably lower on the test set. This gap is a sign of overfitting.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "How does a decision tree choose which question to ask at each split?",
              opts: ["A) It picks the split with the lowest weighted Gini impurity", "B) It splits the rows into two halves of equal size", "C) It uses the features in the order they appear in the data"], ans: "A" },
      12 => { type: "true_false",      q: "In gradient boosting, every tree is trained independently on its own bootstrap sample and the trees are then averaged, exactly like a random forest.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "A model scores 99% accuracy on training data but only 65% on test data. What is the best first step?",
              opts: ["A) Add more features to the model", "B) Reduce model complexity or increase regularisation", "C) Report the training accuracy instead"], ans: "B" },
      14 => { type: "true_false",      q: "In 5-fold cross-validation, the model is trained and evaluated 5 times, each time using a different fold as the validation set.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Why should a StandardScaler be fitted on the training data only?",
              opts: ["A) To avoid leaking information from the test set into training", "B) Because the scaler cannot handle more than a few hundred rows", "C) So that the test set becomes larger"], ans: "A" },
      16 => { type: "true_false",      q: "When a Pipeline containing a StandardScaler is passed to GridSearchCV, the scaler is re-fitted on the training part of every cross-validation fold.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "An RBF SVC inside a scaled pipeline scores 1.00 on training data but 0.83 on test data. Which change is most likely to help?",
              opts: ["A) Remove the StandardScaler step", "B) Lower C and gamma, choosing them with cross-validation", "C) Raise C and gamma so the boundary fits the training data even better"], ans: "B" },
      18 => { type: "multiple_choice", q: "An MLPClassifier trained on unscaled features stops with a ConvergenceWarning after the default 200 epochs. What is the most sensible first fix?",
              opts: ["A) Scale the features in a pipeline and raise max_iter", "B) Add two more hidden layers so it learns faster", "C) Ignore it, because the warning never changes the results"], ans: "A" },
      19 => { type: "multiple_choice", q: "What must you provide to k-means before it can run?",
              opts: ["A) A correct label for every data point", "B) The number of clusters, k", "C) A probability threshold such as 0.5"], ans: "B" },
      20 => { type: "true_false",      q: "PCA is a supervised method that uses the labels (y) to choose its principal components.",
              opts: ["True", "False"], ans: "False" },
      21 => { type: "multiple_choice", q: "Which order of steps gives an honest final score for an ML project?",
              opts: ["A) Split, tune settings on the test set, report the test score", "B) Scale all data, split, tune with cross-validation, test once", "C) Split, tune with cross-validation on train, test once"], ans: "C" }
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

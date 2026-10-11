require_relative "../machine_learning_content"

namespace :content do
  desc "Create Machine Learning course and populate all 21 lessons"
  task machine_learning: :environment do
    course = Course.find_or_create_by!(slug: "machine-learning") do |c|
      c.title       = "Machine Learning"
      c.description = "Learn the algorithms that let machines learn. Go from linear regression to neural networks, and build models that make smart predictions from data."
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
      1  => "Learn how machine learning lets a computer find rules from examples. You do not have to write the rules by hand.",
      2  => "Learn supervised, unsupervised and reinforcement learning. See how regression and classification are different.",
      3  => "Split a dataset into features (X) and labels (y) and spot leaky features. Follow the seven workflow steps to beat a baseline on a held-out test set.",
      4  => "Split data into training and test sets with train_test_split. Then you can measure how well the model does on new data.",
      5  => "Fit a straight line to data to predict numbers like house prices. Learn to read coefficients.",
      6  => "Build gradient descent from scratch in NumPy. See exactly how a model learns its weights.",
      7  => "Measure regression models with MAE, MSE, RMSE and R-squared. Compare them to a baseline.",
      8  => "Use the sigmoid function and logistic regression to predict class probabilities, like pass or fail.",
      9  => "Look past accuracy with the confusion matrix, precision, recall, F1, ROC-AUC and PR-AUC. Handle imbalanced classes with class weights and tuned thresholds.",
      10 => "Classify new points by a majority vote of their nearest neighbours. See why feature scaling matters.",
      11 => "Build models like flowcharts that split data with yes/no questions. Gini impurity picks the questions.",
      12 => "Combine many decision trees for stronger, more stable models. Use bagging (random forests) and boosting (gradient boosting).",
      13 => "Spot underfitting and overfitting. Control how complex a model is with Ridge and Lasso regularisation.",
      14 => "Get scores you can trust with k-fold cross-validation. Tune settings with GridSearchCV.",
      15 => "Put number features on the same scale and turn text categories into numbers with one-hot encoding. Fill in missing values.",
      16 => "Join imputing, scaling, encoding and a model into one Pipeline. This avoids data leakage and makes your code simpler.",
      17 => "Separate classes with the widest possible margin using SVC. Pick linear or RBF kernels, and tune C and gamma inside a scaled pipeline.",
      18 => "Stack neurons into layers with MLPClassifier. See how backpropagation and adam train the weights. Control network size and alpha to avoid overfitting.",
      19 => "Group unlabelled data into clusters with k-means. Pick k with the elbow method and silhouette score.",
      20 => "Shrink many features into a few principal components and keep most of the information.",
      21 => "Build a full ML project with no data leaks, from raw data to final test report. Then review the whole course.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which problem is the best fit for machine learning instead of hand-written rules?",
              opts: ["A) Changing a temperature from Celsius to Fahrenheit", "B) Adding 18% GST to every restaurant bill", "C) Predicting which customers will leave a mobile plan"], ans: "C" },
      2  => { type: "true_false",      q: "Putting shoppers into groups when there are no labels is an example of supervised learning.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "A churn model gets 77% accuracy on the test set. 77% of the test customers did not leave. What is the best conclusion?",
              opts: ["A) It is no better than always predicting 'stays'", "B) It is excellent, because 77% is much higher than 50%", "C) It must be overfitting the training data"], ans: "A" },
      4  => { type: "true_false",      q: "If you pass the same random_state to train_test_split, you get the same split every time you run the code.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "A model learned price_lakh = 5 x (area in hundreds of sq ft) + 10. What does it predict for a 1200 sq ft flat?",
              opts: ["A) 60 lakhs", "B) 6010 lakhs", "C) 70 lakhs"], ans: "C" },
      6  => { type: "multiple_choice", q: "In gradient descent, what usually happens if the learning rate is much too large?",
              opts: ["A) The loss jumps around or grows instead of going down", "B) The model always reaches the minimum in fewer steps", "C) The weights stop changing after the first step"], ans: "A" },
      7  => { type: "true_false",      q: "An R-squared of 0.95 on the training data promises that the model will do well on new data.",
              opts: ["True", "False"], ans: "False" },
      8  => { type: "multiple_choice", q: "A logistic regression model gives P(pass) = 0.83 for a student. The threshold is the default 0.5. What is the predicted class?",
              opts: ["A) Fail", "B) Pass", "C) It cannot predict a class, only a probability"], ans: "B" },
      9  => { type: "multiple_choice", q: "In cancer screening, missing a real patient is much worse than a false alarm. Which metric matters most?",
              opts: ["A) Precision", "B) Accuracy", "C) Recall"], ans: "C" },
      10 => { type: "true_false",      q: "A k-NN model with k = 1 scores 100% on its training data but clearly lower on the test set. This gap is a sign of overfitting.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "How does a decision tree choose which question to ask at each split?",
              opts: ["A) It picks the split with the lowest weighted Gini impurity", "B) It splits the rows into two halves of equal size", "C) It uses the features in the order they appear in the data"], ans: "A" },
      12 => { type: "true_false",      q: "In gradient boosting, each tree is trained on its own on a separate bootstrap sample. Then the trees are averaged, just like a random forest.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "A model gets 99% accuracy on training data but only 65% on test data. What should you do first?",
              opts: ["A) Add more features to the model", "B) Make the model simpler or add more regularisation", "C) Report the training accuracy instead"], ans: "B" },
      14 => { type: "true_false",      q: "In 5-fold cross-validation, the model is trained and tested 5 times. Each time, a different fold is the validation set.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Why should you fit a StandardScaler on the training data only?",
              opts: ["A) So no information from the test set leaks into training", "B) Because the scaler cannot handle more than a few hundred rows", "C) So that the test set becomes larger"], ans: "A" },
      16 => { type: "true_false",      q: "You pass a Pipeline with a StandardScaler to GridSearchCV. The scaler is fitted again on the training part of every cross-validation fold.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "An RBF SVC inside a scaled pipeline scores 1.00 on training data but 0.83 on test data. Which change will most likely help?",
              opts: ["A) Remove the StandardScaler step", "B) Lower C and gamma, and pick them with cross-validation", "C) Raise C and gamma so the boundary fits the training data even better"], ans: "B" },
      18 => { type: "multiple_choice", q: "An MLPClassifier trained on unscaled features stops with a ConvergenceWarning after the default 200 epochs. What is the best first fix?",
              opts: ["A) Scale the features in a pipeline and raise max_iter", "B) Add two more hidden layers so it learns faster", "C) Ignore it, because the warning never changes the results"], ans: "A" },
      19 => { type: "multiple_choice", q: "What must you give k-means before it can run?",
              opts: ["A) A correct label for every data point", "B) The number of clusters, k", "C) A probability threshold like 0.5"], ans: "B" },
      20 => { type: "true_false",      q: "PCA is a supervised method. It uses the labels (y) to pick its principal components.",
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

module MachineLearningContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">What is Machine Learning?</h1>
        </div>
        <p class="lc-lead">Machine Learning (ML) is a way to build programs that <strong>learn rules from examples</strong>. A programmer does not write the rules. You show the computer data with answers, and it finds the pattern by itself.</p>
        <div class="lc-card">
          <h3>Rules vs Learning</h3>
          <p>In normal programming, <em>you</em> write the rules. In ML, the computer finds the rules from data.</p>
          <ul class="lc-list">
            <li><strong>Traditional programming:</strong> Rules + Data → Answers</li>
            <li><strong>Machine Learning:</strong> Data + Answers → Rules (a <em>model</em>)</li>
            <li>After the model has learned, you give it <strong>new data</strong>. It then predicts the answer.</li>
          </ul>
          <p>Example: a teacher wants to predict pass or fail from hours studied. We do not guess a rule like "pass if more than 4 hours". Instead, we give the computer past students' records. It learns the best cut-off point by itself.</p>
        </div>
        <div class="lc-card">
          <h3>Where You Already See ML</h3>
          <ul class="lc-list">
            <li><strong>UPI / bank apps</strong>: marking unusual payments that may be fraud</li>
            <li><strong>YouTube and Netflix</strong>: suggesting the next video</li>
            <li><strong>Gmail</strong>: moving spam to the spam folder</li>
            <li><strong>Google Maps</strong>: predicting travel time in traffic</li>
            <li><strong>Agriculture</strong>: predicting crop yield from rainfall and soil data</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A First Model in scikit-learn</h3>
          <p>scikit-learn is the most popular ML library for Python. A library is a set of ready-made code you can use. Every model uses the same three steps: create, <code>fit</code>, <code>predict</code>.</p>
          <div class="lc-code">from sklearn.linear_model import LogisticRegression<br><br>hours  = [[1], [2], [3], [4], [5], [6], [7], [8]]   # input (feature)<br>result = [0, 0, 0, 0, 1, 1, 1, 1]                   # answer: 0 = fail, 1 = pass<br><br>model = LogisticRegression()<br>model.fit(hours, result)          # learn the pattern<br>print(model.predict([[2.5], [6.5]]))<br>print(-model.intercept_[0] / model.coef_[0][0])   # where P(pass) = 0.5</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">[0 1]<br>4.500009197500652</div>
          <p>We never wrote "if hours &gt; 4.5". The model learned that boundary (the cut-off point) from the examples. It predicts fail (0) for 2.5 hours and pass (1) for 6.5 hours.</p>
        </div>
        <div class="lc-card">
          <h3>Key Words You Will Use All Course</h3>
          <table class="lc-table">
            <thead><tr><th>Word</th><th>Meaning</th><th>In the example above</th></tr></thead>
            <tbody>
              <tr><td>Feature</td><td>An input the model looks at</td><td>Hours studied</td></tr>
              <tr><td>Label / target</td><td>The answer we want to predict</td><td>Pass (1) or fail (0)</td></tr>
              <tr><td>Training</td><td>Letting the model find its rule from labelled examples (examples with answers)</td><td><code>model.fit(hours, result)</code></td></tr>
              <tr><td>Model</td><td>The learned rule (a function with learned numbers inside)</td><td>The fitted <code>LogisticRegression</code></td></tr>
              <tr><td>Prediction / inference</td><td>Using the model on new inputs</td><td><code>model.predict([[2.5]])</code></td></tr>
              <tr><td>Generalisation</td><td>Doing well on examples the model has never seen</td><td>New students next year</td></tr>
            </tbody>
          </table>
          <p>The last row is the real goal. Getting the training examples right is easy. A model could just memorise them. A good model must also work on <em>new</em> students. Most of this course is about how to measure and improve generalisation.</p>
        </div>
        <div class="lc-card">
          <h3>When Should You Use ML?</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Use ML?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Convert Celsius to Fahrenheit</td><td>No</td><td>The exact formula is known</td></tr>
              <tr><td>Add 18% GST to a bill</td><td>No</td><td>A fixed rule works perfectly</td></tr>
              <tr><td>Predict house price in lakhs</td><td>Yes</td><td>Many factors and no exact formula</td></tr>
              <tr><td>Detect spam emails</td><td>Yes</td><td>Patterns change and are hard to write by hand</td></tr>
              <tr><td>Recognise handwritten digits</td><td>Yes</td><td>You cannot write rules for every handwriting style</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Beginner Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking ML is magic. A model only knows what is in its data.</li>
            <li>Using ML when a simple formula or rule would do the job.</li>
            <li>Expecting 100% accuracy. Real-world predictions always have some error.</li>
            <li>Judging a model only by its score on the examples it trained on. The starter prints a training accuracy of 0.875. That tells you little about next year's students. Lesson 4 shows how to test a model properly.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter code. Look at the learned boundary (about 3.75 hours) and the P(pass) column. P(pass) is the chance of passing.</li>
            <li>Change the hand-written rule to <code>h &gt; 3.75</code>. Do the "Hand rule" and "ML model" columns now agree for every new student?</li>
            <li>Change the label for 3.5 hours from <code>1</code> to <code>0</code> and run again. Which way does the learned boundary move, and why? (The rule changed because the <em>data</em> changed. You did not edit any rule.)</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Remember the main idea: <em>a model is a function learned from data</em>. Everything in this course (regression, trees, clustering) is a different way to learn that function.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        from sklearn.linear_model import LogisticRegression

        # Past students: hours studied per day -> result (0 = fail, 1 = pass)
        hours  = [[0.5], [1], [1.5], [2], [2.5], [3], [3.5], [4],
                  [4.5], [5], [5.5], [6], [6.5], [7], [8], [9]]
        result = [0, 0, 0, 0, 0, 0, 1, 0,
                  1, 1, 1, 1, 1, 1, 1, 1]

        # 1. Traditional programming: WE write the rule
        def rule_based(h):
            return 1 if h > 5 else 0

        # 2. Machine learning: the model LEARNS the rule from examples
        model = LogisticRegression()
        model.fit(hours, result)

        new_students = [1.0, 3.0, 4.2, 6.0, 7.5]
        print("Hours | Hand rule | ML model | P(pass)")
        print("-" * 42)
        for h in new_students:
            prob = model.predict_proba([[h]])[0][1]
            pred = model.predict([[h]])[0]
            print(f"{h:5.1f} | {rule_based(h):9d} | {pred:8d} | {prob:.2f}")

        # Where does the model switch from fail to pass?
        boundary = -model.intercept_[0] / model.coef_[0][0]
        print(f"\nLearned boundary: about {boundary:.2f} hours")
        print("Training accuracy:", model.score(hours, result))
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Types of Machine Learning</h1>
        </div>
        <p class="lc-lead">ML problems belong to three main groups. The key question is simple: <strong>do you have the correct answers (labels) for your training data?</strong></p>
        <div class="lc-card">
          <h3>The Three Types</h3>
          <ul class="lc-list">
            <li><strong>Supervised learning</strong>: every example has a label. The model learns input → answer. It is like a student who practises with an answer key.</li>
            <li><strong>Unsupervised learning</strong>: there are no labels. The model finds groups or patterns on its own. It is like sorting a pile of mixed coins when nobody tells you their values.</li>
            <li><strong>Reinforcement learning</strong>: an agent (a program that takes actions) tries actions and gets rewards or penalties. It is like learning to play a game by trying again and again.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Two Kinds of Supervised Learning</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Output</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Regression</td><td>A number</td><td>House price (₹ 72.5 lakhs), crop yield (tonnes/hectare), a batsman's next score</td></tr>
              <tr><td>Classification</td><td>A category</td><td>Spam / not spam, pass / fail, flower species</td></tr>
            </tbody>
          </table>
          <p>An easy way to remember: if the answer is "how much?", it is regression. If it is "which one?", it is classification.</p>
        </div>
        <div class="lc-card">
          <h3>Same Data, Two Approaches</h3>
          <p>The Iris dataset has 150 flowers. Each flower has 4 measurements and a species label. We can use it in both ways:</p>
          <div class="lc-code">from sklearn.datasets import load_iris<br>from sklearn.tree import DecisionTreeClassifier<br>from sklearn.cluster import KMeans<br><br>X, y = load_iris(return_X_y=True)<br><br># Supervised: we GIVE the labels y<br>clf = DecisionTreeClassifier().fit(X, y)<br><br># Unsupervised: only X, no labels at all<br>km = KMeans(n_clusters=3, n_init=10, random_state=0).fit(X)<br>print(km.labels_[:10])   # group numbers the model invented<br>print(y[:10])            # the real species codes</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">[1 1 1 1 1 1 1 1 1 1]<br>[0 0 0 0 0 0 0 0 0 0]</div>
          <p>The first 10 flowers are all setosa (species 0). k-means put them together in one group, but it called it group 1. Cluster numbers are just names that the algorithm makes up. They are not species IDs.</p>
        </div>
        <div class="lc-card">
          <h3>Two Modern Variations</h3>
          <ul class="lc-list">
            <li><strong>Semi-supervised learning</strong>: a few labelled examples plus many unlabelled ones. This helps when adding labels costs a lot. For example, a doctor can label only 200 X-rays out of 50,000.</li>
            <li><strong>Self-supervised learning</strong>: the labels come from the data itself. For example, you hide the next word in a sentence and ask the model to predict it. Large language models are pre-trained (trained first on lots of text) this way. See the Practical AI and Deep Learning courses.</li>
          </ul>
          <p>Both use the same supervised and unsupervised ideas that you learn in this course.</p>
        </div>
        <div class="lc-card">
          <h3>Which Type Is It?</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>Predict a student's percentage from study hours</td><td>Supervised: regression</td></tr>
              <tr><td>Detect whether a tumour is malignant</td><td>Supervised: classification</td></tr>
              <tr><td>Group shoppers by buying habits (no labels)</td><td>Unsupervised: clustering</td></tr>
              <tr><td>Teach a robot to walk using rewards</td><td>Reinforcement learning</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling clustering "classification". Clustering has no labels, so the group numbers have no fixed meaning.</li>
            <li>Treating a category stored as a number (like a PIN code) as a regression target. A target is the value you want to predict.</li>
            <li>Thinking unsupervised learning is "worse". It just answers a different question.</li>
            <li>Calling a problem regression only because the label is stored as a number. Star ratings 1–5 can be treated as classes. A prediction like "3.4 stars" may not be what the business needs.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Look at the "Cluster vs real species" table. Which species does k-means separate perfectly? Which two does it mix up?</li>
            <li>Change <code>n_clusters=3</code> to <code>n_clusters=2</code>. Which species end up sharing a cluster? (Hint: look at which two were mixed before.)</li>
            <li>Change the supervised flower to <code>[6.5, 3.0, 5.5, 2.0]</code>. Which species does the classifier predict?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Most real business ML is supervised learning. Lessons 4–18 cover it. Then lessons 19–20 cover unsupervised learning (k-means, PCA).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        from sklearn.datasets import load_iris
        from sklearn.tree import DecisionTreeClassifier
        from sklearn.cluster import KMeans
        import numpy as np
        import warnings
        warnings.filterwarnings("ignore", message="JsProxy")  # hide a harmless notice from the browser

        X, y = load_iris(return_X_y=True)
        names = load_iris().target_names
        print("Data shape:", X.shape, "| Labels:", names.tolist())

        # ---- Supervised: learn from labelled examples ----
        clf = DecisionTreeClassifier(random_state=0)
        clf.fit(X, y)
        flower = [[5.0, 3.4, 1.5, 0.2]]
        print("\nSupervised prediction for", flower[0], "->", names[clf.predict(flower)[0]])

        # ---- Unsupervised: find 3 groups WITHOUT labels ----
        km = KMeans(n_clusters=3, n_init=10, random_state=0)
        groups = km.fit_predict(X)
        print("\nCluster sizes found:", np.bincount(groups))

        # How well do the invented groups match the real species?
        print("\nCluster vs real species (counts):")
        for g in range(3):
            real = np.bincount(y[groups == g], minlength=3)
            print(f"  Cluster {g}: setosa={real[0]:2d} versicolor={real[1]:2d} virginica={real[2]:2d}")

        print("\nNote: cluster numbers are arbitrary names, not species IDs.")
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">The ML Workflow: Data, Features and Labels</h1>
        </div>
        <p class="lc-lead">Every ML project starts with a table of data and follows the same steps. This is true for a college assignment and for a real product. Learn the key words and the workflow (the order of steps) early. This helps you avoid the most common mistakes. The worst ones make a model look better than it really is.</p>
        <div class="lc-card">
          <h3>Key Vocabulary</h3>
          <p>A dataset is a table. Each <strong>row</strong> is one example (a house, a student, a customer). Each <strong>column</strong> is a <strong>feature</strong> (an input) or the <strong>label</strong> (the answer we want to predict).</p>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>House price example</th></tr></thead>
            <tbody>
              <tr><td>Sample / row</td><td>One example</td><td>One house</td></tr>
              <tr><td>Feature (X)</td><td>Input column used to predict</td><td>Area, bedrooms, city, age</td></tr>
              <tr><td>Label / target (y)</td><td>The answer column</td><td>Price in lakhs</td></tr>
              <tr><td>Feature matrix X</td><td>2D table, shape (rows, features)</td><td>(500, 4)</td></tr>
              <tr><td>Target vector y</td><td>1D column, shape (rows,)</td><td>(500,)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Separating X and y with Pandas</h3>
          <div class="lc-code">import pandas as pd<br><br>df = pd.DataFrame({<br>    "area_sqft": [850, 1200, 1500, 950],<br>    "bedrooms":  [2, 3, 3, 2],<br>    "city":      ["City A", "City B", "City A", "City C"],<br>    "price_lakh":[48, 95, 88, 60],<br>})<br>X = df.drop(columns="price_lakh")   # features<br>y = df["price_lakh"]                # label<br>print(X.shape, y.shape)<br>print(list(X.columns))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">(4, 3) (4,)<br>['area_sqft', 'bedrooms', 'city']</div>
          <p>X is 2D (4 rows × 3 features). y is 1D (4 answers). Row <em>i</em> of X always goes with element <em>i</em> of y. Never sort or filter one without the other.</p>
          <ul class="lc-list">
            <li><strong>Numerical</strong> features (area, marks, rainfall) can be used directly.</li>
            <li><strong>Categorical</strong> features (city, crop type) are groups, not numbers. You must change them into numbers (lesson 15). <strong>Ordinal</strong> ones ("low / medium / high") have an order. <strong>Boolean</strong> ones (has_parking) are yes/no and are stored as 0 / 1.</li>
            <li>Before training, check your data: <code>df.info()</code>, <code>df.describe()</code>, <code>df.isna().sum()</code>, <code>df["city"].value_counts()</code>. You may need to fill in missing values. Learn these fill values from the <em>training</em> rows only. Lessons 15 and 16 show how <code>SimpleImputer</code> inside a Pipeline does this for you.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Good Features vs Bad Features</h3>
          <table class="lc-table">
            <thead><tr><th>Column</th><th>Keep?</th><th>Reason</th></tr></thead>
            <tbody>
              <tr><td>area_sqft</td><td>Yes</td><td>Known before the sale, and strongly linked to price</td></tr>
              <tr><td>city</td><td>Yes (after encoding)</td><td>Location matters. It is text, so it must become numbers</td></tr>
              <tr><td>flat_id</td><td>No</td><td>Just a serial number. Any pattern in it is only chance</td></tr>
              <tr><td>registration_fee_paid</td><td>No: leakage</td><td>Calculated from the final price, so you only know it after the sale</td></tr>
            </tbody>
          </table>
          <p>Ask this for every feature: "Would I really know this value when I need to make the prediction?" If not, it is <em>data leakage</em> (the model sees information it should not have). Remove it.</p>
        </div>
        <div class="lc-card">
          <h3>The Seven Steps</h3>
          <ol class="lc-list">
            <li><strong>Define the problem</strong>: What exactly are we predicting? Is it regression or classification? What does a mistake cost?</li>
            <li><strong>Collect data</strong>: Get past records with the answers you want to predict.</li>
            <li><strong>Explore and clean</strong>: Look for missing values, wrong entries and outliers (values far from the rest).</li>
            <li><strong>Split</strong>: Keep a test set aside. The model never sees it during training.</li>
            <li><strong>Prepare features</strong>: Scale numbers and encode categories (turn them into numbers). Learn these steps from the training rows only.</li>
            <li><strong>Train and tune</strong>: Fit a baseline (a very simple model to compare with) and real models. Compare them and pick settings.</li>
            <li><strong>Evaluate and deploy</strong>: Measure on the test set once. Then use the model and keep checking it.</li>
          </ol>
          <p>In real projects you often go back to earlier steps. A poor score in step 7 may send you back to collect better data (step 2). Or you may build better features (step 5). But never go back <em>because of</em> the test score and then report that same test score.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Will a Customer Leave?</h3>
          <p>A telecom company wants to predict <strong>churn</strong>. Churn means a mobile customer will leave next month. The company uses 8 usage features. We create realistic, noisy (slightly wrong) data with <code>make_classification</code>. We flip 10% of the labels on purpose. In real life, records also have mistakes.</p>
          <div class="lc-code">from sklearn.datasets import make_classification<br>from sklearn.model_selection import train_test_split<br>from sklearn.preprocessing import StandardScaler<br>from sklearn.linear_model import LogisticRegression<br>from sklearn.dummy import DummyClassifier<br><br>X, y = make_classification(n_samples=600, n_features=8, n_informative=4,<br>                           n_redundant=2, weights=[0.6, 0.4], flip_y=0.1,<br>                           class_sep=0.8, random_state=1)                   # 2. data<br>X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25,<br>                                          random_state=42, stratify=y)     # 4. split<br>scaler = StandardScaler().fit(X_tr)                                       # 5. prepare<br>X_tr_s, X_te_s = scaler.transform(X_tr), scaler.transform(X_te)<br>baseline = DummyClassifier(strategy="most_frequent").fit(X_tr_s, y_tr)    # 6. train<br>model = LogisticRegression().fit(X_tr_s, y_tr)<br>print("Baseline:", round(baseline.score(X_te_s, y_te), 3))                # 7. evaluate<br>print("Model:   ", round(model.score(X_te_s, y_te), 3))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Baseline: 0.573<br>Model:    0.767</div>
          <p>The baseline always says "stays". It is right 57.3% of the time, because 57% of customers stay. Our model reaches 76.7%. The gap between the two scores shows what the model really learned. The 76.7% on its own does not. The model is far from perfect. This is normal for real, noisy data.</p>
        </div>
        <div class="lc-card">
          <h3>Three Data Sets, Three Jobs</h3>
          <table class="lc-table">
            <thead><tr><th>Set</th><th>Used for</th><th>Exam analogy</th></tr></thead>
            <tbody>
              <tr><td>Training set</td><td>Fitting the model's weights (the numbers it learns)</td><td>Textbook exercises</td></tr>
              <tr><td>Validation set / cross-validation</td><td>Comparing models and choosing settings</td><td>Mock tests</td></tr>
              <tr><td>Test set</td><td>One final, honest score</td><td>The board exam</td></tr>
            </tbody>
          </table>
          <p>Where does the time go? This is a rough guide, not a measured fact. About half of a project is cleaning and preparing data. Choosing and tuning the algorithm takes much less time.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Leaving the label inside X</strong>: the model "cheats". It gets perfect scores that are useless.</li>
            <li><strong>Using an ID column or a column known only later as a feature</strong>: roll numbers have no pattern. Using "final match result" to predict the toss winner is leakage.</li>
            <li><strong>Looking at the test set</strong>: if you tune your model on test data, the final score is falsely high.</li>
            <li><strong>Scaling before splitting</strong>: the scaler learns the mean and spread of the test rows. This leaks information.</li>
            <li><strong>No baseline</strong>: 77% sounds good. But if 77% of customers stay, "always predict stay" also scores 77%.</li>
            <li>Passing a 1D list as X. scikit-learn needs 2D: use <code>[[5], [6]]</code>, not <code>[5, 6]</code>. For a NumPy array use <code>x.reshape(-1, 1)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. In Part A, check the shapes. X should be <code>(6, 2)</code> and y <code>(6,)</code>. Then fill the missing area with <code>flats["area_sqft"].fillna(flats["area_sqft"].median())</code> before building X.</li>
            <li>Remove <code>"flat_id"</code> from the <code>drop(columns=[...])</code> list. How does the X shape change? Would a model learn anything real from that column?</li>
            <li>In Part B, change <code>weights=[0.6, 0.4]</code> to <code>weights=[0.9, 0.1]</code>. What happens to the baseline accuracy? Is the model's accuracy still good?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Think of the test set as the final board exam paper. You can practise with sample papers (training and validation data) as much as you like. But you take the final exam only once.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd
        from sklearn.datasets import make_classification
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import StandardScaler
        from sklearn.linear_model import LogisticRegression
        from sklearn.dummy import DummyClassifier

        # ---- Part A: a dataset is a table of features (X) and a label (y) ----
        flats = pd.DataFrame({
            "flat_id":    [101, 102, 103, 104, 105, 106],
            "area_sqft":  [650, 850, 1200, np.nan, 950, 1800],
            "city":       ["City A", "City A", "City B", "City C", "City C", "City B"],
            "price_lakh": [38, 50, 95, 70, 55, 150],
        })
        print("Missing values per column:", flats.isna().sum().to_dict())
        X_f = flats.drop(columns=["flat_id", "price_lakh"])   # drop the ID and the label
        y_f = flats["price_lakh"]
        print("X shape:", X_f.shape, "| y shape:", y_f.shape)
        print("Numeric:", list(X_f.select_dtypes("number").columns),
              "| Categorical:", list(X_f.select_dtypes("object").columns))

        # ---- Part B: the workflow - will a mobile customer leave (churn = 1)? ----
        # Step 2: collect data (simulated: 8 usage features, 10% of labels are noisy)
        X, y = make_classification(n_samples=600, n_features=8, n_informative=4,
                                   n_redundant=2, weights=[0.6, 0.4], flip_y=0.1,
                                   class_sep=0.8, random_state=1)
        print("\nStep 2 | Customers:", X.shape[0], "| Features:", X.shape[1],
              "| Churn rate:", round(y.mean(), 2))

        # Step 4: split BEFORE doing anything else with the data
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=42, stratify=y)
        print("Step 4 | Train:", len(X_tr), "| Test:", len(X_te))

        # Step 5: prepare features (fit the scaler on TRAIN only)
        scaler = StandardScaler().fit(X_tr)
        X_tr_s, X_te_s = scaler.transform(X_tr), scaler.transform(X_te)

        # Step 6: train a baseline and a real model
        baseline = DummyClassifier(strategy="most_frequent").fit(X_tr_s, y_tr)
        model = LogisticRegression().fit(X_tr_s, y_tr)

        # Step 7: evaluate ONCE on the test set
        print("Step 7 | Baseline test accuracy:", round(baseline.score(X_te_s, y_te), 3))
        print("Step 7 | Model train accuracy:  ", round(model.score(X_tr_s, y_tr), 3))
        print("Step 7 | Model test accuracy:   ", round(model.score(X_te_s, y_te), 3))
        probs = model.predict_proba(X_te_s[:3])[:, 1]
        for i, p in enumerate(probs):
            print(f"Customer {i}: P(churn) = {p:.2f} -> {'LEAVE' if p >= 0.5 else 'STAY'} (actual: {y_te[i]})")
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Train/Test Split</h1>
        </div>
        <p class="lc-lead">A model that only remembers its training data is useless. We want to know how it does on <strong>new, unseen data</strong>. So we hide part of the data during training. Later, we test the model on that part.</p>
        <div class="lc-card">
          <h3>Why Split?</h3>
          <p>Imagine a teacher puts the same questions in the exam as in the practice sheet. A student who memorised the answers scores 100%. But the student may understand nothing. The test set is the <em>new</em> exam paper.</p>
          <ul class="lc-list">
            <li><strong>Training set</strong> (usually 70–80%): the model learns from this.</li>
            <li><strong>Test set</strong> (usually 20–30%): you use it once, at the end, to measure real performance.</li>
            <li><strong>Validation set</strong> (optional): a part taken from the training data. You use it to compare models and settings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>train_test_split</h3>
          <div class="lc-code">from sklearn.model_selection import train_test_split<br><br>X_train, X_test, y_train, y_test = train_test_split(<br>    X, y,<br>    test_size=0.2,      # 20% for testing<br>    random_state=42,    # same split every run<br>    stratify=y          # keep class proportions (classification)<br>)</div>
          <p>The function returns four values. Their order is always: <code>X_train, X_test, y_train, y_test</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Memorising vs Learning</h3>
          <p>The starter creates 200 students with study hours and attendance. It splits them 75/25. Then it trains two decision trees:</p>
          <div class="lc-code">X_tr, X_te, y_tr, y_te = train_test_split(<br>    X, y, test_size=0.25, random_state=42, stratify=y)<br><br>tree  = DecisionTreeClassifier(random_state=0).fit(X_tr, y_tr)              # no depth limit<br>small = DecisionTreeClassifier(max_depth=3, random_state=0).fit(X_tr, y_tr)<br>print(tree.score(X_tr, y_tr), tree.score(X_te, y_te))<br>print(small.score(X_tr, y_tr), small.score(X_te, y_te))</div>
          <p><strong>Output (rounded):</strong></p>
          <div class="lc-code">Deep tree    -&gt; train acc: 1.0   | test acc: 0.86<br>Depth-3 tree -&gt; train acc: 0.947 | test acc: 0.9</div>
          <p>If we only measured on training data, the deep tree (100%) would look like the winner. The test set shows the truth. The simpler tree does better on students it has never seen.</p>
        </div>
        <div class="lc-card">
          <h3>What stratify Actually Does</h3>
          <p>With <code>stratify=y</code>, the split keeps the share of each class the same in both parts. The starter prints a pass rate of 0.54 overall, 0.54 in train and 0.54 in test. Without it, a small or imbalanced dataset can easily get 0.60 in train and 0.40 in test. Then the test score measures a different problem.</p>
        </div>
        <div class="lc-card">
          <h3>Important Parameters</h3>
          <table class="lc-table">
            <thead><tr><th>Parameter</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>test_size</td><td>Fraction (0.2) or count (30) of rows for the test set</td></tr>
              <tr><td>random_state</td><td>Fixes the shuffle, so you get the same results every run</td></tr>
              <tr><td>shuffle</td><td>True by default. Set it to False for data in time order</td></tr>
              <tr><td>stratify</td><td>Keeps the same class ratio in train and test</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Evaluating on training data</strong>: this gives a score that is too high.</li>
            <li><strong>Shuffling time-series data</strong> (data in time order): predicting 2023 sales with rows from 2024 is cheating. Split by date instead.</li>
            <li><strong>No stratify on imbalanced data</strong>: if only 5% of emails are spam, a random split may put almost no spam in the test set.</li>
            <li><strong>Tiny test sets</strong>: 5 test rows give a very unstable score. One mistake changes accuracy by 20 percentage points.</li>
            <li><strong>Duplicate rows across the split</strong>: the same customer may appear twice. One copy may go to train and one to test. Then the model is tested on something it has already seen. Remove duplicates (or split by customer) first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Compare the train and test accuracy of the deep tree and the depth-3 tree.</li>
            <li>Change <code>test_size=0.25</code> to <code>0.5</code>. How many rows are now in each set?</li>
            <li>Change <code>random_state=42</code> in the first split to <code>1</code>, then <code>2</code>. Does the test accuracy of the deep tree change? This is why a single split can be "lucky". Lesson 14 fixes this with cross-validation.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A big gap between the training score and the test score is your first warning sign of <em>overfitting</em>. Overfitting means the model memorised the training data. We study it fully in lesson 13.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.model_selection import train_test_split
        from sklearn.tree import DecisionTreeClassifier

        # 200 students: [study_hours, attendance_%] -> pass (1) / fail (0)
        rng = np.random.RandomState(7)
        hours = rng.uniform(0, 10, 200)
        attendance = rng.uniform(40, 100, 200)
        score = 6 * hours + 0.5 * attendance + rng.normal(0, 8, 200)
        y = (score > 60).astype(int)
        X = np.column_stack([hours, attendance])
        print("Total rows:", len(X), "| Pass rate:", round(y.mean(), 2))

        # Split 75% / 25%, keeping the pass/fail ratio the same
        X_tr, X_te, y_tr, y_te = train_test_split(
            X, y, test_size=0.25, random_state=42, stratify=y)
        print("Train rows:", len(X_tr), "| Test rows:", len(X_te))
        print("Pass rate train:", round(y_tr.mean(), 2), "| test:", round(y_te.mean(), 2))

        # A very deep tree can memorise the training data
        tree = DecisionTreeClassifier(random_state=0).fit(X_tr, y_tr)
        print("\nDeep tree  -> train acc:", round(tree.score(X_tr, y_tr), 3),
              "| test acc:", round(tree.score(X_te, y_te), 3))

        # A limited tree generalises better
        small = DecisionTreeClassifier(max_depth=3, random_state=0).fit(X_tr, y_tr)
        print("Depth-3 tree -> train acc:", round(small.score(X_tr, y_tr), 3),
              "| test acc:", round(small.score(X_te, y_te), 3))

        # Same random_state -> same split every time
        a = train_test_split(X, y, test_size=0.25, random_state=42)[1]
        b = train_test_split(X, y, test_size=0.25, random_state=42)[1]
        print("\nSame split with same random_state?", np.array_equal(a, b))
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Linear Regression</h1>
        </div>
        <p class="lc-lead">Linear regression predicts a <strong>number</strong>. It fits a straight line (or a flat plane) through the data. It is the simplest ML model. It is the best place to start learning how models learn.</p>
        <div class="lc-card">
          <h3>The Idea</h3>
          <p>With one feature, the model is the line formula you learned in school:</p>
          <div class="lc-code">price = w × area + b</div>
          <ul class="lc-list">
            <li><strong>w (weight / slope / coefficient)</strong>: how much the price goes up for each extra unit of area.</li>
            <li><strong>b (bias / intercept)</strong>: the base price when the feature is 0.</li>
            <li>With many features: <code>price = w1×area + w2×bedrooms + w3×age + b</code>.</li>
          </ul>
          <p>"Training" means finding the <code>w</code> and <code>b</code> that put the line as close as possible to all points. This is the line with the smallest <strong>squared error</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Flat Prices</h3>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br><br>area  = [[600], [800], [1000], [1200], [1500]]   # sq ft<br>price = [35, 46, 55, 66, 82]                     # lakhs<br><br>model = LinearRegression().fit(area, price)<br>print(round(model.coef_[0], 4))      # w: lakhs per sq ft<br>print(round(model.intercept_, 2))    # b: lakhs<br>print(model.predict([[1100]]).round(1))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">0.0519<br>3.88<br>[61.]</div>
          <p>Read it like this: every extra 100 sq ft adds about ₹5.2 lakhs. Check by hand: 0.0519 × 1100 + 3.88 = 61.0 lakhs. Do not read the intercept as "a 0 sq ft flat costs ₹3.88 lakhs". 0 sq ft is far outside the data. The intercept is just where the line crosses the axis.</p>
        </div>
        <div class="lc-card">
          <h3>What "Best Line" Means: Least Squares</h3>
          <p>For each flat, the <strong>residual</strong> (the error) is <code>actual − predicted</code>. Linear regression picks w and b to make the <strong>sum of squared residuals</strong> as small as possible. This is called <em>ordinary least squares</em>, OLS.</p>
          <ul class="lc-list">
            <li>Squaring makes every error positive. So predictions that are too high and too low cannot cancel out.</li>
            <li>Squaring also punishes big errors more than small ones. This is why one outlier can pull the line.</li>
            <li><code>LinearRegression</code> solves this exactly with linear algebra. It does not use trial and error. Lesson 6 shows another way to get the same answer: gradient descent.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Reading Coefficients</h3>
          <table class="lc-table">
            <thead><tr><th>Coefficient</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Positive (e.g. +0.05 for area)</td><td>Feature goes up → prediction goes up</td></tr>
              <tr><td>Negative (e.g. −0.8 for age of flat)</td><td>Feature goes up → prediction goes down</td></tr>
              <tr><td>Close to 0</td><td>Feature has little effect (in this model)</td></tr>
            </tbody>
          </table>
          <p>You can only compare coefficients fairly when features are on the same scale (see lesson 15).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Predicting far outside the data</strong>: a line fitted on 600–1500 sq ft flats may be wrong for a 10,000 sq ft villa.</li>
            <li><strong>Thinking a straight line fits everything</strong>: crop yield goes up with fertiliser. Then it goes down if you add too much. That curve is not linear.</li>
            <li><strong>Outliers</strong>: one wrongly typed price (for example 950 instead of 95) can pull the whole line.</li>
            <li>Using linear regression for yes/no answers. Use logistic regression (lesson 8) instead.</li>
            <li><strong>Trusting training R²</strong> (a score where 1 means a perfect fit): the starter gets R² = 0.998 on its own 10 flats. With 3 features and only 10 rows, this is expected. It tells you nothing about new flats.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. By how many lakhs does the price change for each extra year of age?</li>
            <li>Change the last price in <code>y</code> from <code>110</code> to <code>250</code> (a data-entry mistake). Run again. Compare the area coefficient and the predictions. How much did one wrong row change the model?</li>
            <li>Add a new flat to <code>new_flats</code>: <code>[5000, 6, 0]</code>. Can you trust this prediction? Why not?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always start a regression problem with <code>LinearRegression</code>. It is fast and easy to explain. It gives you a baseline score that more advanced models must beat.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.linear_model import LinearRegression

        # Flats: [area_sqft, bedrooms, age_years] -> price in lakhs
        X = np.array([
            [600, 1, 10], [750, 2, 8], [850, 2, 12], [1000, 2, 5],
            [1100, 3, 15], [1200, 3, 3], [1350, 3, 7], [1500, 3, 2],
            [1650, 4, 10], [1800, 4, 1],
        ])
        y = np.array([32, 42, 44, 58, 55, 72, 76, 88, 90, 110])

        model = LinearRegression()
        model.fit(X, y)

        features = ["area_sqft", "bedrooms", "age_years"]
        print("Learned equation:")
        for name, w in zip(features, model.coef_):
            print(f"  {w:+8.4f} x {name}")
        print(f"  {model.intercept_:+8.4f} (intercept)")

        # Predict prices for new flats
        new_flats = np.array([[900, 2, 4], [1400, 3, 12], [2000, 4, 0]])
        preds = model.predict(new_flats)
        print("\nPredictions:")
        for flat, p in zip(new_flats, preds):
            print(f"  {flat[0]} sqft, {flat[1]} BHK, {flat[2]} yrs old -> Rs {p:.1f} lakhs")

        # Check one prediction by hand using the formula
        manual = np.dot(model.coef_, new_flats[0]) + model.intercept_
        print(f"\nManual calculation for first flat: {manual:.1f} lakhs")
        print("R^2 on training data:", round(model.score(X, y), 3))
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Gradient Descent from Scratch</h1>
        </div>
        <p class="lc-lead">How does a model really <em>find</em> the best weights? Most ML models use <strong>gradient descent</strong>. Start with a guess and measure the error. Then change the weights a little in the direction that makes the error smaller. Repeat.</p>
        <div class="lc-card">
          <h3>The Basic Idea</h3>
          <p>Imagine you are on a hill in thick fog. You want to reach the lowest point. You cannot see the valley, but you can feel the slope under your feet. So you take a small step downhill. Then you feel the slope again and repeat. That is gradient descent.</p>
          <ul class="lc-list">
            <li><strong>Loss</strong>: one number that shows how wrong the model is (for example, mean squared error).</li>
            <li><strong>Gradient</strong>: the slope of the loss. It tells us which way is "uphill".</li>
            <li><strong>Learning rate</strong>: the size of each step.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Maths for a Line</h3>
          <p>For predictions <code>ŷ = w·x + b</code> and loss <code>MSE = mean((ŷ − y)²)</code>, the gradients are:</p>
          <div class="lc-code">dw = (2/n) × sum((ŷ − y) × x)<br>db = (2/n) × sum(ŷ − y)<br><br>w = w − learning_rate × dw<br>b = b − learning_rate × db</div>
        </div>
        <div class="lc-card">
          <h3>In NumPy</h3>
          <div class="lc-code">w, b, lr = 0.0, 0.0, 0.01<br>for step in range(1000):<br>    y_hat = w * x + b<br>    error = y_hat - y<br>    dw = 2 * np.mean(error * x)<br>    db = 2 * np.mean(error)<br>    w -= lr * dw<br>    b -= lr * db</div>
          <p>After enough steps, <code>w</code> and <code>b</code> stop changing. They reach the same values that <code>LinearRegression</code> gives.</p>
          <p><strong>Output of the starter (learning rate 0.01, 5000 steps):</strong></p>
          <div class="lc-code">  step     0  loss=     4101.14  w=   0.000  b=   0.000<br>  step  1000  loss=       21.56  w=   7.986  b=  19.055<br>  step  2000  loss=       21.39  w=   7.819  b=  20.090<br>  ...<br>  step  5000  loss=       21.39  w=   7.808  b=  20.156<br><br>Gradient descent: w=7.808, b=20.156<br>Exact solution:   w=7.808, b=20.156</div>
          <p>The data was made from <code>marks = 8 × hours + 20</code> plus random noise. So the best line for <em>this sample</em> (7.808, 20.156) is close to the true 8 and 20, but not exact. The loss stops at about 21.4, not 0. That remaining error is the noise. No line can remove it.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing the Learning Rate</h3>
          <table class="lc-table">
            <thead><tr><th>Learning rate</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>Too small (0.0001 here)</td><td>Loss falls very slowly. It needs many more steps</td></tr>
              <tr><td>Just right (0.01 here)</td><td>Loss falls smoothly and settles</td></tr>
              <tr><td>Too large (0.05 here)</td><td>Steps jump past the valley. Loss grows every step and becomes huge</td></tr>
            </tbody>
          </table>
          <p>No single learning rate is "good" for every problem. The safe range depends on the size of your feature values. In the starter, x goes up to 9, and 0.05 is already too large. The loss goes from 4,101 to about 130 billion in 10 steps. If features were scaled to about −2…2, a much larger rate would work.</p>
        </div>
        <div class="lc-card">
          <h3>Closed Form vs Gradient Descent</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Exact least squares (LinearRegression)</th><th>Gradient descent</th></tr></thead>
            <tbody>
              <tr><td>How</td><td>Solves the equations directly</td><td>Takes many small downhill steps</td></tr>
              <tr><td>Settings to choose</td><td>None</td><td>Learning rate, number of steps</td></tr>
              <tr><td>Works for</td><td>Linear models with squared error</td><td>Almost any model with a differentiable loss (a loss you can find the slope of)</td></tr>
              <tr><td>Very large data</td><td>Can become slow or use a lot of memory</td><td>Works well at large sizes, especially mini-batch / stochastic versions</td></tr>
            </tbody>
          </table>
          <p>This lesson uses the whole dataset for every step. This is called <em>batch</em> gradient descent. The Deep Learning course covers stochastic and mini-batch versions, momentum and Adam.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Unscaled features</strong>: if x is area in sq ft (hundreds or thousands), gradients become huge. Training then fails. Scale x first.</li>
            <li><strong>Forgetting to update both w and b</strong>: then the line can never fit properly.</li>
            <li><strong>Stopping too early</strong>: always print the loss. Check that it has stopped falling.</li>
            <li><strong>Wrong sign in the update</strong>: writing <code>w += lr * dw</code> walks <em>uphill</em>. The loss grows, even with a tiny learning rate.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that gradient descent matches the exact solution.</li>
            <li>Change <code>lr=0.01</code> to <code>lr=0.0001</code> (keep 5000 steps). Is the loss still falling at the end? How far are w and b from the exact answer?</li>
            <li>Find the largest learning rate that still converges (reaches a stable answer). Try <code>0.02</code>, <code>0.03</code> and <code>0.04</code> in the last call. Watch whether the loss gets smaller or grows.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The same loop trains logistic regression and even huge neural networks: predict, compute loss, compute gradient, update. Only the model and the loss formula change.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Hours studied (x) vs exam marks out of 100 (y)
        rng = np.random.RandomState(0)
        x = rng.uniform(1, 9, 50)
        y = 8 * x + 20 + rng.normal(0, 5, 50)   # true line: marks = 8*hours + 20

        def train(x, y, lr, steps):
            w, b = 0.0, 0.0
            n = len(x)
            for step in range(steps + 1):
                y_hat = w * x + b
                error = y_hat - y
                loss = np.mean(error ** 2)
                if step % (steps // 5) == 0:
                    print(f"  step {step:5d}  loss={loss:12.2f}  w={w:8.3f}  b={b:8.3f}")
                dw = (2 / n) * np.sum(error * x)
                db = (2 / n) * np.sum(error)
                w -= lr * dw
                b -= lr * db
            return w, b

        print("Learning rate 0.01:")
        w, b = train(x, y, lr=0.01, steps=5000)

        # Compare with the exact least-squares answer
        w_exact, b_exact = np.polyfit(x, y, 1)
        print(f"\nGradient descent: w={w:.3f}, b={b:.3f}")
        print(f"Exact solution:   w={w_exact:.3f}, b={b_exact:.3f}")
        print(f"Predicted marks for 6 hours: {w * 6 + b:.1f}")

        print("\nLearning rate 0.05 (too big - watch the loss grow):")
        train(x, y, lr=0.05, steps=10)
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Evaluating Regression Models</h1>
        </div>
        <p class="lc-lead">A regression model predicts numbers. So we measure <strong>how far off</strong> its predictions are. Each metric (a way to measure a model) answers a slightly different question. Always report them on the <strong>test set</strong>.</p>
        <div class="lc-card">
          <h3>The Four Main Metrics</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>How to read it</th></tr></thead>
            <tbody>
              <tr><td>MAE</td><td>mean(|y − ŷ|)</td><td>Average error in the original units ("off by ₹4 lakhs on average")</td></tr>
              <tr><td>MSE</td><td>mean((y − ŷ)²)</td><td>Punishes big errors a lot. The units are squared</td></tr>
              <tr><td>RMSE</td><td>√MSE</td><td>Like MAE, but big mistakes count more. Uses the original units</td></tr>
              <tr><td>R²</td><td>1 − SS<sub>res</sub> / SS<sub>tot</sub></td><td>1.0 = perfect, 0 = no better than predicting the mean. It can be negative</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Crop Yield</h3>
          <p>Actual yields (tonnes/hectare) are <code>[3.0, 4.0, 5.0]</code>. The predictions are <code>[2.5, 4.0, 6.0]</code>.</p>
          <ul class="lc-list">
            <li>Errors: 0.5, 0, 1.0 → <strong>MAE</strong> = 1.5 / 3 = 0.5</li>
            <li>Squared errors: 0.25, 0, 1.0 → <strong>MSE</strong> = 0.417, <strong>RMSE</strong> = 0.645</li>
            <li>Mean yield = 4.0, SS<sub>tot</sub> = 1 + 0 + 1 = 2, SS<sub>res</sub> = 1.25 → <strong>R²</strong> = 1 − 1.25/2 = 0.375</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score<br>import numpy as np<br><br>actual = [3.0, 4.0, 5.0]<br>pred   = [2.5, 4.0, 6.0]<br>print(mean_absolute_error(actual, pred))<br>print(round(np.sqrt(mean_squared_error(actual, pred)), 3))<br>print(round(r2_score(actual, pred), 3))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">0.5<br>0.645<br>0.375</div>
          <p>These are the same numbers as the hand calculation. (Newer scikit-learn versions also have <code>root_mean_squared_error</code>. Taking <code>np.sqrt</code> of the MSE works in every version.)</p>
        </div>
        <div class="lc-card">
          <h3>Always Compare with a Baseline</h3>
          <p>The starter trains on the diabetes dataset. It predicts how the disease grows one year later. It compares the model with <code>DummyRegressor</code>, which always predicts the training mean:</p>
          <div class="lc-code">Model                     MAE     RMSE      R2<br>Baseline (mean)         65.53    74.88  -0.014<br>Linear Regression       41.55    53.37   0.485<br><br>Train R2: 0.519 | Test R2: 0.485</div>
          <ul class="lc-list">
            <li>The baseline's R² is a little <strong>negative</strong> on the test set. The training mean is a bit worse than the test set's own mean. R² goes below 0 when a model is worse than "predict the mean".</li>
            <li>Linear regression cuts the average error from 65.5 to 41.6. This is a real improvement, even though R² = 0.485 sounds "low". Medical data is noisy. Judge R² against the baseline and the problem, not against 1.0.</li>
            <li>Train R² (0.519) and test R² (0.485) are close. So the model is not overfitting.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reporting training scores</strong>: a high training R² tells you nothing about new data.</li>
            <li><strong>Comparing RMSE across different datasets</strong>: an RMSE of 5 is great for prices in lakhs. But it is very bad for CGPA out of 10.</li>
            <li><strong>No baseline</strong>: always compare with a model that predicts the mean. If you cannot beat it, the model has learned nothing.</li>
            <li>Mixing up the argument order. sklearn metrics take <code>(y_true, y_pred)</code>. For MAE and MSE, the order does not change the answer. For <code>r2_score</code>, it does.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that the hand-calculated values match the table in this lesson.</li>
            <li>Change the last prediction in <code>pred</code> from <code>6.0</code> to <code>8.0</code>. Which grows more, MAE or RMSE? Why?</li>
            <li>Swap the arguments to <code>r2_score(pred, actual)</code>. Do you get the same R²? Now you know why the order matters.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use MAE when you explain results to non-technical people ("on average we are off by 3 marks"). Use RMSE when large errors cost a lot.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_diabetes
        from sklearn.model_selection import train_test_split
        from sklearn.linear_model import LinearRegression
        from sklearn.dummy import DummyRegressor
        from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score

        # Hand calculation first: crop yield in tonnes/hectare
        actual = np.array([3.0, 4.0, 5.0])
        pred = np.array([2.5, 4.0, 6.0])
        mae = np.mean(np.abs(actual - pred))
        mse = np.mean((actual - pred) ** 2)
        r2 = 1 - np.sum((actual - pred) ** 2) / np.sum((actual - actual.mean()) ** 2)
        print(f"By hand -> MAE={mae:.3f} MSE={mse:.3f} RMSE={np.sqrt(mse):.3f} R2={r2:.3f}")
        print(f"sklearn -> R2={r2_score(actual, pred):.3f}\n")

        # Real dataset: disease progression one year later
        X, y = load_diabetes(return_X_y=True)
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=42)

        models = {
            "Baseline (mean)": DummyRegressor(strategy="mean"),
            "Linear Regression": LinearRegression(),
        }
        print(f"{'Model':20s} {'MAE':>8s} {'RMSE':>8s} {'R2':>7s}")
        for name, m in models.items():
            m.fit(X_tr, y_tr)
            p = m.predict(X_te)
            rmse = np.sqrt(mean_squared_error(y_te, p))
            print(f"{name:20s} {mean_absolute_error(y_te, p):8.2f} {rmse:8.2f} {r2_score(y_te, p):7.3f}")

        lr = models["Linear Regression"]
        print("\nTrain R2:", round(lr.score(X_tr, y_tr), 3), "| Test R2:", round(lr.score(X_te, y_te), 3))
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Logistic Regression</h1>
        </div>
        <p class="lc-lead">Logistic regression has "regression" in its name, but it is a <strong>classification</strong> model. It predicts the <strong>probability</strong> (the chance) that an example belongs to a class. For example, the chance that a student passes, or that an email is spam.</p>
        <div class="lc-card">
          <h3>From a Line to a Probability</h3>
          <p>First, logistic regression computes a linear score <code>z = w·x + b</code>, just like linear regression. Then it squeezes <code>z</code> into the range 0 to 1. It uses the <strong>sigmoid</strong> function for this:</p>
          <div class="lc-code">sigmoid(z) = 1 / (1 + e^(−z))<br><br>z = −5  →  0.007   (almost surely class 0)<br>z =  0  →  0.5     (not sure)<br>z = +5  →  0.993   (almost surely class 1)</div>
          <p>If the probability is ≥ 0.5, it predicts class 1. If not, it predicts class 0. This 0.5 is called the <strong>threshold</strong> (the cut-off value).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">from sklearn.linear_model import LogisticRegression<br><br># [study_hours, attendance_%]<br>X = [[2, 60], [3, 55], [4, 80], [6, 70], [7, 90], [8, 85]]<br>y = [0, 0, 0, 1, 1, 1]          # 1 = pass<br><br>model = LogisticRegression().fit(X, y)<br>print(model.predict_proba([[5, 75]]).round(3))   # [[P(fail), P(pass)]]<br>print(model.predict([[5, 75]]))                  # class with prob ≥ 0.5</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">[[0.494 0.506]]<br>[1]</div>
          <p>The model predicts pass, but only just: 50.6% vs 49.4%. <code>predict()</code> hides that doubt. <code>predict_proba()</code> shows it. The columns follow <code>model.classes_</code>, which here is <code>[0 1]</code>. So column 1 is P(pass).</p>
        </div>
        <div class="lc-card">
          <h3>How It Learns: Log Loss</h3>
          <p>Logistic regression learns by making the <strong>log loss</strong> (cross-entropy) as small as possible:</p>
          <div class="lc-code">loss for one example = −[ y × log(p) + (1 − y) × log(1 − p) ]<br><br>true y = 1, predicted p = 0.9  →  loss = 0.105  (confident and right)<br>true y = 1, predicted p = 0.5  →  loss = 0.693  (unsure)<br>true y = 1, predicted p = 0.1  →  loss = 2.303  (confident and wrong)</div>
          <p>Being sure and wrong gets the biggest punishment. There is no exact formula for the best weights. So scikit-learn finds them step by step with an optimiser. It is similar to gradient descent from lesson 6. By default, it also adds a small L2 penalty (a cost for large weights). <code>C</code> controls this penalty (lesson 13).</p>
        </div>
        <div class="lc-card">
          <h3>Linear vs Logistic Regression</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Linear Regression</th><th>Logistic Regression</th></tr></thead>
            <tbody>
              <tr><td>Task</td><td>Regression</td><td>Classification</td></tr>
              <tr><td>Output</td><td>Any number (e.g. 72.4)</td><td>Probability 0–1, then a class</td></tr>
              <tr><td>Loss</td><td>Mean squared error</td><td>Log loss (cross-entropy)</td></tr>
              <tr><td>Example</td><td>Predict marks</td><td>Predict pass / fail</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Only using predict()</strong>: <code>predict_proba()</code> tells you how sure the model is. This is often more useful.</li>
            <li><strong>Forgetting to scale features</strong>: logistic regression trains faster and more reliably on scaled data. If you see a "ConvergenceWarning", scale the data or raise <code>max_iter</code>.</li>
            <li><strong>Thinking 0.5 is always the right threshold</strong>: for disease screening, you might flag anyone above 0.3.</li>
            <li><strong>Misreading which class is "1"</strong>: in <code>load_breast_cancer</code>, 0 = malignant (cancer) and 1 = benign (not cancer). So <code>predict_proba(...)[:, 1]</code> is P(benign), not P(cancer). Always check <code>target_names</code> or <code>classes_</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and look at the sigmoid table. What is sigmoid(0)? Why is that the threshold point?</li>
            <li>Add a student <code>[4, 95]</code> to the "New students" list. Does high attendance make up for fewer study hours?</li>
            <li>In part 3, print <code>clf.predict_proba(scaler.transform(X_te[:5]))</code> without <code>[:, 1]</code>. Check that each row adds up to 1.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Logistic regression is the first baseline to try for any classification problem. It also works with more than two classes on its own (for example, three wine types).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_breast_cancer
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import StandardScaler
        from sklearn.linear_model import LogisticRegression

        # 1. The sigmoid function by hand
        def sigmoid(z):
            return 1 / (1 + np.exp(-z))

        for z in [-5, -2, 0, 2, 5]:
            print(f"sigmoid({z:+d}) = {sigmoid(z):.3f}")

        # 2. Pass/fail from [study_hours, attendance_%]
        X = np.array([[2, 60], [3, 55], [4, 80], [3, 90], [6, 70],
                      [7, 90], [8, 85], [5, 50], [6, 95], [1, 70]])
        y = np.array([0, 0, 0, 1, 1, 1, 1, 0, 1, 0])
        model = LogisticRegression().fit(X, y)
        print("\nNew students:")
        for s in [[2, 65], [5, 75], [7, 60]]:
            p = model.predict_proba([s])[0][1]
            print(f"  {s} -> P(pass)={p:.2f} -> predicted {'PASS' if p >= 0.5 else 'FAIL'}")

        # 3. A real medical dataset: tumour malignant (0) or benign (1)
        X, y = load_breast_cancer(return_X_y=True)
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, random_state=42, stratify=y)
        scaler = StandardScaler().fit(X_tr)
        clf = LogisticRegression(max_iter=1000).fit(scaler.transform(X_tr), y_tr)
        print("\nBreast cancer test accuracy:", round(clf.score(scaler.transform(X_te), y_te), 3))

        probs = clf.predict_proba(scaler.transform(X_te[:5]))[:, 1]
        print("P(benign) for first 5 test patients:", np.round(probs, 3))
        print("Actual labels:                     ", y_te[:5])
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Classification Metrics and ROC/PR Curves</h1>
        </div>
        <p class="lc-lead">Accuracy alone can fool you. Say only 2 out of 100 patients have a disease. A model that always says "healthy" is 98% accurate. But it is completely useless. The <strong>confusion matrix</strong>, <strong>precision</strong>, <strong>recall</strong> and <strong>F1</strong> tell the full story. The <strong>ROC</strong> and <strong>precision–recall</strong> curves show how a model works at <em>every</em> threshold.</p>
        <div class="lc-card">
          <h3>The Confusion Matrix</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Predicted: No</th><th>Predicted: Yes</th></tr></thead>
            <tbody>
              <tr><td><strong>Actual: No</strong></td><td>True Negative (TN)</td><td>False Positive (FP): false alarm</td></tr>
              <tr><td><strong>Actual: Yes</strong></td><td>False Negative (FN): missed case</td><td>True Positive (TP)</td></tr>
            </tbody>
          </table>
          <p>For binary labels (only 0 and 1), scikit-learn's <code>confusion_matrix(y_true, y_pred)</code> returns exactly this layout: <code>[[TN, FP], [FN, TP]]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The Metrics</h3>
          <ul class="lc-list">
            <li><strong>Accuracy</strong> = (TP + TN) / total: the share of all answers that are correct.</li>
            <li><strong>Precision</strong> = TP / (TP + FP): "When the model says YES, how often is it right?"</li>
            <li><strong>Recall</strong> = TP / (TP + FN): "Of all real YES cases, how many did we catch?"</li>
            <li><strong>F1</strong> = 2 × P × R / (P + R): a balance of precision and recall.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Spam Filter</h3>
          <p>There are 100 emails, and 20 are spam. The model flags 18 emails. 15 of them are really spam.</p>
          <div class="lc-code">TP = 15, FP = 3, FN = 5, TN = 77<br>Accuracy  = (15 + 77) / 100 = 0.92<br>Precision = 15 / 18 = 0.83<br>Recall    = 15 / 20 = 0.75<br>F1        = 2 × 0.83 × 0.75 / (0.83 + 0.75) = 0.79</div>
        </div>
        <div class="lc-card">
          <h3>The Same Idea in scikit-learn</h3>
          <div class="lc-code">from sklearn.metrics import confusion_matrix, precision_score, recall_score, f1_score<br><br>y_true = [1, 1, 1, 1, 0, 0, 0, 0, 0, 0]   # 4 real positives<br>y_pred = [1, 1, 0, 0, 1, 0, 0, 0, 0, 0]<br>print(confusion_matrix(y_true, y_pred))<br>print(round(precision_score(y_true, y_pred), 3),<br>      recall_score(y_true, y_pred),<br>      round(f1_score(y_true, y_pred), 3))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">[[5 1]<br> [2 2]]<br>0.667 0.5 0.571</div>
          <p>Read the matrix as [[TN FP] [FN TP]]: 5 TN, 1 FP, 2 FN, 2 TP. Precision = 2 / (2 + 1) = 0.667. Recall = 2 / (2 + 2) = 0.5. Accuracy would be 7/10 = 0.7. That hides the fact that half the real positives were missed.</p>
        </div>
        <div class="lc-card">
          <h3>Moving the Threshold</h3>
          <p>The starter trains logistic regression on the breast cancer data (1 = malignant). It tries three thresholds on P(malignant):</p>
          <div class="lc-code">Threshold 0.5: TN=106 FP=1 FN=6 TP=58   precision=0.983 recall=0.906<br>Threshold 0.2: TN=102 FP=5 FN=4 TP=60   precision=0.923 recall=0.938<br>Threshold 0.8: TN=107 FP=0 FN=9 TP=55   precision=1.000 recall=0.859</div>
          <p>A lower threshold catches 2 more cancers. But it causes 4 more false alarms. You always gain one thing and lose another. Choose the balance based on the real cost of each mistake. Choose the threshold on validation data (or with cross-validation), not on the test set.</p>
        </div>
        <div class="lc-card">
          <h3>ROC Curve and ROC-AUC</h3>
          <p>The <strong>ROC curve</strong> does not pick one threshold. It tries them all. For each threshold, it plots the <strong>true-positive rate</strong> (recall, TP / all real positives) against the <strong>false-positive rate</strong> (FP / all real negatives). <strong>ROC-AUC</strong> is the area under that curve. 1.0 = perfect ranking, 0.5 = random guessing. It equals the chance that a random positive gets a higher score than a random negative.</p>
          <div class="lc-code">from sklearn.metrics import roc_auc_score, roc_curve, average_precision_score<br><br>y_true = [0, 0, 1, 1, 0, 1, 0, 1]<br>scores = [0.1, 0.4, 0.35, 0.8, 0.2, 0.9, 0.6, 0.7]     # predict_proba(X)[:, 1]<br>print("ROC-AUC:", roc_auc_score(y_true, scores))<br>print("PR-AUC (average precision):", round(average_precision_score(y_true, scores), 3))<br>fpr, tpr, thr = roc_curve(y_true, scores)<br>print("FPR:", fpr.round(2)); print("TPR:", tpr.round(2))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">ROC-AUC: 0.875<br>PR-AUC (average precision): 0.917<br>FPR: [0.  0.  0.  0.5 0.5 1. ]<br>TPR: [0.   0.25 0.75 0.75 1.   1.  ]</div>
          <p>There are 4 × 4 = 16 (positive, negative) pairs. In 14 of them, the positive has the higher score, and 14 / 16 = 0.875. Each (FPR, TPR) pair is one point on the curve. <code>thr</code> holds the threshold for each point. So you can directly pick "the threshold that catches 95% of positives".</p>
        </div>
        <div class="lc-card">
          <h3>Precision–Recall Curve and PR-AUC</h3>
          <p><code>precision_recall_curve</code> plots precision against recall for every threshold. <code>average_precision_score</code> (often called <strong>PR-AUC</strong>) sums it up in one number. A random model scores about the <em>share of positives</em>. So on data with 1% fraud, a PR-AUC of 0.30 can be good. But a ROC-AUC of 0.90 can still hide many false alarms.</p>
          <table class="lc-table">
            <thead><tr><th>Score</th><th>Random model gets</th><th>Best when</th></tr></thead>
            <tbody>
              <tr><td>Accuracy</td><td>share of the majority class</td><td>classes are balanced, one threshold, equal costs</td></tr>
              <tr><td>ROC-AUC</td><td>0.5</td><td>comparing how well models <em>rank</em> cases, when classes are not too rare</td></tr>
              <tr><td>PR-AUC (average precision)</td><td>share of positives</td><td>the positive class is rare (fraud, disease) and you care about it</td></tr>
            </tbody>
          </table>
          <p>Both AUC scores need <strong>scores</strong>, not 0/1 predictions. Pass <code>predict_proba(X)[:, 1]</code> or <code>decision_function(X)</code>. In the starter, the cancer model reaches ROC-AUC 0.988 and PR-AUC 0.986. 37% of cases are malignant, so a random model would get about 0.37 PR-AUC.</p>
        </div>
        <div class="lc-card">
          <h3>Imbalanced Data: Weights, Thresholds and PR-AUC</h3>
          <p>With 5% fraud, a model trained in the normal way mostly predicts "not fraud". Here are three standard tools, compared on the same data:</p>
          <div class="lc-code">from sklearn.datasets import make_classification<br>from sklearn.model_selection import train_test_split, TunedThresholdClassifierCV<br>from sklearn.linear_model import LogisticRegression<br>from sklearn.metrics import precision_score, recall_score, average_precision_score<br><br>X, y = make_classification(n_samples=2000, n_features=10, n_informative=4, weights=[0.95, 0.05],<br>                           class_sep=1.2, flip_y=0.01, random_state=3)          # 5% fraud<br>X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.3, stratify=y, random_state=0)<br>for cw in [None, "balanced"]:<br>    m = LogisticRegression(class_weight=cw, max_iter=1000).fit(X_tr, y_tr)<br>    pred, score = m.predict(X_te), m.predict_proba(X_te)[:, 1]<br>    print(f"class_weight={str(cw):8} precision={precision_score(y_te, pred):.2f} "<br>          f"recall={recall_score(y_te, pred):.2f} PR-AUC={average_precision_score(y_te, score):.2f}")<br>tuned = TunedThresholdClassifierCV(LogisticRegression(max_iter=1000), scoring="f1", cv=5).fit(X_tr, y_tr)<br>pred = tuned.predict(X_te)<br>print(f"tuned threshold={tuned.best_threshold_:.2f} precision={precision_score(y_te, pred):.2f} "<br>      f"recall={recall_score(y_te, pred):.2f}")</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">class_weight=None     precision=0.62 recall=0.47 PR-AUC=0.60<br>class_weight=balanced precision=0.27 recall=0.88 PR-AUC=0.55<br>tuned threshold=0.15 precision=0.42 recall=0.78</div>
          <ul class="lc-list">
            <li><strong><code>class_weight="balanced"</code></strong> makes each mistake on the rare class cost more during training. Recall jumps from 0.47 to 0.88. But precision falls to 0.27, so there are many more false alarms. Most scikit-learn classifiers (LogisticRegression, SVC, trees, forests) accept it.</li>
            <li><strong>Threshold selection with cross-validation:</strong> <code>TunedThresholdClassifierCV</code> (scikit-learn 1.5+) keeps the normal model. It picks the threshold that gives the best value of your chosen score (here F1). It uses cross-validation on the <em>training</em> set only. Here it chose 0.15 instead of the default 0.5. You can do the same by hand with <code>cross_val_predict(..., method="predict_proba")</code> and <code>precision_recall_curve</code>.</li>
            <li><strong>Report PR-AUC</strong> (plus precision and recall at your chosen threshold), not accuracy. Always predicting "not fraud" is 95% accurate, but it catches nothing.</li>
            <li>Also use <code>stratify=y</code> in every split, and <code>StratifiedKFold</code> for cross-validation. Then every fold (part of the data) has some positives.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Which Metric Matters?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Focus on</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Cancer screening</td><td>Recall</td><td>Missing a sick patient is much worse than a false alarm</td></tr>
              <tr><td>Spam filter</td><td>Precision</td><td>Losing an important email in the spam folder is a problem</td></tr>
              <tr><td>Fraud detection</td><td>Recall + F1</td><td>Fraud is rare, so accuracy is misleading</td></tr>
              <tr><td>Balanced classes, equal costs</td><td>Accuracy</td><td>Simple and fair</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Reporting only accuracy on imbalanced data.</li>
            <li>Mixing up precision and recall. Say the questions out loud: "of predicted yes" vs "of actual yes".</li>
            <li>Forgetting that a new threshold changes the balance: you gain precision and lose recall, or the other way round.</li>
            <li>Passing 0/1 predictions to <code>roc_auc_score</code> or <code>average_precision_score</code>. They need <em>scores</em>: <code>predict_proba(X)[:, 1]</code> or <code>decision_function(X)</code>.</li>
            <li>Forgetting which class is "positive". <code>precision_score</code> and <code>recall_score</code> measure class 1 by default (<code>pos_label=1</code>). The starter relabels the data so that 1 = malignant.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Find the "Always-benign" line: accuracy 0.626 but recall 0.0. Explain in one sentence why this model is useless.</li>
            <li>Add <code>report(0.35)</code> after <code>report(0.2)</code>. Where does it sit between the 0.2 and 0.5 results?</li>
            <li>Look at the last two lines of the output. Change <code>0.95</code> to <code>0.99</code>. How much does the false-positive rate go up when you catch almost every cancer?</li>
            <li>In the <code>classification_report</code>, find the recall for "malignant". Which cell of the confusion matrix must get smaller to raise it?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>classification_report(y_test, y_pred)</code> prints precision, recall and F1 for every class at once. Use it every time.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_breast_cancer
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import StandardScaler
        from sklearn.linear_model import LogisticRegression
        from sklearn.metrics import (confusion_matrix, accuracy_score, precision_score,
                                     recall_score, f1_score, classification_report,
                                     roc_auc_score, roc_curve, average_precision_score)

        # Change the labels so that 1 = malignant (the case we must catch)
        data = load_breast_cancer()
        X, y = data.data, 1 - data.target
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.3, random_state=1, stratify=y)
        sc = StandardScaler().fit(X_tr)
        model = LogisticRegression(max_iter=1000).fit(sc.transform(X_tr), y_tr)
        probs = model.predict_proba(sc.transform(X_te))[:, 1]

        def report(threshold):
            pred = (probs >= threshold).astype(int)
            tn, fp, fn, tp = confusion_matrix(y_te, pred).ravel()
            print(f"Threshold {threshold}: TN={tn} FP={fp} FN={fn} TP={tp}")
            print(f"  accuracy={accuracy_score(y_te, pred):.3f} precision={precision_score(y_te, pred):.3f}"
                  f" recall={recall_score(y_te, pred):.3f} f1={f1_score(y_te, pred):.3f}")
            return pred

        pred = report(0.5)
        report(0.2)   # lower threshold -> catch more cancers, more false alarms
        report(0.8)   # higher threshold -> fewer false alarms, more missed cases

        print("\nFull report at threshold 0.5:")
        print(classification_report(y_te, pred, target_names=["benign", "malignant"]))

        # Why accuracy can mislead: always predict "benign"
        always_benign = np.zeros_like(y_te)
        print("Always-benign accuracy:", round(accuracy_score(y_te, always_benign), 3),
              "| recall:", recall_score(y_te, always_benign))

        # Scores that do not use a threshold: they need probabilities (or decision_function scores), not 0/1 labels
        print(f"\nROC-AUC: {roc_auc_score(y_te, probs):.3f} | PR-AUC (average precision): "
              f"{average_precision_score(y_te, probs):.3f} | malignant share: {y_te.mean():.3f}")
        fpr, tpr, thr = roc_curve(y_te, probs)
        i = np.argmax(tpr >= 0.95)          # first point on the ROC curve with recall >= 0.95
        print(f"To catch 95% of cancers: threshold {thr[i]:.3f} -> false-positive rate {fpr[i]:.3f}")
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">K-Nearest Neighbours</h1>
        </div>
        <p class="lc-lead">k-Nearest Neighbours (k-NN) is the easiest ML model to understand. To classify a new point, find the <strong>k most similar examples</strong> in the training data. Then take a <strong>majority vote</strong> (the most common answer wins). "Tell me who your neighbours are, and I will tell you who you are."</p>
        <div class="lc-card">
          <h3>How It Works</h3>
          <ol class="lc-list">
            <li>Store all training examples. There is no real "training" step.</li>
            <li>For a new point, compute its distance to every training point.</li>
            <li>Pick the <strong>k</strong> closest points.</li>
            <li>Classification: take a majority vote. Regression: take the average of their values.</li>
          </ol>
          <p>The usual distance is <strong>Euclidean</strong>: <code>√((x1 − x2)² + (y1 − y2)²)</code>. This is the straight-line distance you learned in school geometry.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Fruit Classifier</h3>
          <p>Features: [weight in grams, sweetness 1–10]. A new fruit is [160, 7]. Its 3 nearest neighbours are all apples. The nearest orange is 4th. So k-NN predicts <strong>apple</strong>.</p>
          <div class="lc-code">from sklearn.neighbors import KNeighborsClassifier<br><br>X = [[150, 8], [170, 7], [140, 6], [130, 4], [120, 3], [180, 5]]<br>y = ["apple", "apple", "apple", "orange", "orange", "orange"]<br>knn = KNeighborsClassifier(n_neighbors=3).fit(X, y)<br>print(knn.predict([[160, 7]]))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">['apple']</div>
          <p>The starter prints the distances: 10.00, 10.05, 20.02 (apples), then 20.10 (orange). The distances come almost fully from the <em>weight</em> difference. A sweetness difference of 1 point counts the same as 1 gram. This is the scaling problem described below.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing k</h3>
          <table class="lc-table">
            <thead><tr><th>k</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>Small k (1)</td><td>Follows every noisy point. High variance, overfits</td></tr>
              <tr><td>Medium k (about 5–15)</td><td>Often a good balance. Check it with cross-validation</td></tr>
              <tr><td>Very large k</td><td>Hides real patterns. With k = all rows, it always predicts the majority class. Underfits</td></tr>
            </tbody>
          </table>
          <p>The starter shows this on 400 noisy "two moons" points (280 train, 120 test):</p>
          <div class="lc-code">  k | train acc | test acc<br>  1 |     1.000 |    0.833<br>  3 |     0.911 |    0.875<br>  7 |     0.896 |    0.892<br> 15 |     0.893 |    0.875<br> 51 |     0.875 |    0.883<br>151 |     0.821 |    0.842</div>
          <p>With k = 1, every training point is its own nearest neighbour. So training accuracy is a perfect 1.000. But test accuracy is the worst of the small k values. That gap is overfitting. At k = 151 (more than half the training set), both scores drop. This is underfitting (the model is too simple). The best value here is about k = 7. Use an odd k for two-class problems, so votes cannot tie.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Not scaling features</strong>: say one feature is income in lakhs (0–50) and another is CIBIL score (300–900). The larger numbers control the distance. Always use <code>StandardScaler</code> with k-NN.</li>
            <li><strong>Too many features</strong>: with many dimensions (features), "nearest" loses its meaning. Remove useless features.</li>
            <li><strong>Huge datasets</strong>: predictions are slow. Every prediction compares the new point with all stored points.</li>
            <li><strong>Choosing k by test accuracy</strong>: pick k with cross-validation on the training set (lesson 14). Then test once.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Compare the unscaled (0.722) and scaled (0.963) wine accuracy.</li>
            <li>In part 3, change <code>noise=0.35</code> to <code>noise=0.1</code>. Does k = 1 still overfit badly? Why is a small k safer on clean data?</li>
            <li>Add <code>251</code> to the list of k values. What happens to both accuracies when k is almost the whole training set?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> k-NN is a great model for a quick check. If an advanced model cannot beat a scaled k-NN, look more closely at your features.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_wine, make_moons
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import StandardScaler
        from sklearn.neighbors import KNeighborsClassifier
        import warnings
        warnings.filterwarnings("ignore", message="JsProxy")  # hide a harmless notice from the browser

        # 1. k-NN by hand on a tiny fruit dataset: [weight_g, sweetness]
        X = np.array([[150, 8], [170, 7], [140, 6], [130, 4], [120, 3], [180, 5]])
        y = np.array(["apple", "apple", "apple", "orange", "orange", "orange"])
        new = np.array([160, 7])
        dist = np.sqrt(((X - new) ** 2).sum(axis=1))
        order = np.argsort(dist)
        print("Distances from new fruit:")
        for i in order:
            print(f"  {X[i]} {y[i]:6s} distance={dist[i]:.2f}")
        top3 = y[order[:3]]
        values, counts = np.unique(top3, return_counts=True)
        print("3 nearest:", top3.tolist(), "-> vote:", values[np.argmax(counts)])

        # 2. Why scaling matters (wine features have very different ranges)
        Xw, yw = load_wine(return_X_y=True)
        X_tr, X_te, y_tr, y_te = train_test_split(Xw, yw, test_size=0.3, random_state=0, stratify=yw)
        sc = StandardScaler().fit(X_tr)
        raw = KNeighborsClassifier(n_neighbors=5).fit(X_tr, y_tr)
        scaled = KNeighborsClassifier(n_neighbors=5).fit(sc.transform(X_tr), y_tr)
        print("\nWine, k=5, unscaled test accuracy:", round(raw.score(X_te, y_te), 3))
        print("Wine, k=5, scaled test accuracy:  ", round(scaled.score(sc.transform(X_te), y_te), 3))

        # 3. Effect of k on noisy, overlapping data (two half-moon shapes that overlap)
        Xm, ym = make_moons(n_samples=400, noise=0.35, random_state=0)
        X_tr, X_te, y_tr, y_te = train_test_split(Xm, ym, test_size=0.3, random_state=0, stratify=ym)
        print("\n  k | train acc | test acc")
        for k in [1, 3, 7, 15, 51, 151]:
            m = KNeighborsClassifier(n_neighbors=k).fit(X_tr, y_tr)
            print(f"{k:3d} | {m.score(X_tr, y_tr):9.3f} | {m.score(X_te, y_te):8.3f}")
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Decision Trees</h1>
        </div>
        <p class="lc-lead">A decision tree makes predictions by asking a series of <strong>yes/no questions</strong>, like a flowchart. It is easy to draw and easy to explain to anyone. It works for both classification and regression.</p>
        <div class="lc-card">
          <h3>How a Tree Looks</h3>
          <p>A farmer wants to know if a crop will give a high yield. The farmer might think like this:</p>
          <div class="lc-code">Is rainfall &gt; 800 mm?<br>├── No  → Is irrigation available?<br>│         ├── No  → LOW yield<br>│         └── Yes → HIGH yield<br>└── Yes → Is soil pH between 6 and 7.5?<br>          ├── No  → LOW yield<br>          └── Yes → HIGH yield</div>
          <ul class="lc-list">
            <li><strong>Root node</strong>: the first question.</li>
            <li><strong>Internal nodes</strong>: the questions after that.</li>
            <li><strong>Leaves</strong>: the final predictions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How the Tree Picks Questions</h3>
          <p>At each step, the tree tries every feature and every threshold. It picks the split that makes the groups <strong>purest</strong>. In the best case, each child node has only one class. <strong>Gini impurity</strong> measures how mixed a group is:</p>
          <div class="lc-code">Gini = 1 − Σ (p_class)²<br><br>Node with 10 HIGH, 0 LOW   → Gini = 1 − (1² + 0²)   = 0.0   (pure)<br>Node with 5 HIGH, 5 LOW    → Gini = 1 − (0.5² + 0.5²) = 0.5 (mixed)</div>
          <p>The split that lowers the <strong>weighted</strong> Gini the most wins. Each child's Gini is weighted by its share of rows.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Which Split Wins?</h3>
          <p>The starter has 16 fields (9 HIGH, 7 LOW). So the starting Gini is 1 − (9/16)² − (7/16)² = 0.492. Compare two possible first questions:</p>
          <table class="lc-table">
            <thead><tr><th>Split</th><th>Left child</th><th>Right child</th><th>Weighted Gini</th></tr></thead>
            <tbody>
              <tr><td>irrigation == 0?</td><td>7 rows: 5 LOW, 2 HIGH (Gini 0.408)</td><td>9 rows: 2 LOW, 7 HIGH (Gini 0.346)</td><td>(7 × 0.408 + 9 × 0.346) / 16 = <strong>0.373</strong></td></tr>
              <tr><td>soil_ph ≤ 6.1?</td><td>4 rows: all LOW (Gini 0.0)</td><td>12 rows: 3 LOW, 9 HIGH (Gini 0.375)</td><td>(4 × 0 + 12 × 0.375) / 16 = <strong>0.281</strong></td></tr>
            </tbody>
          </table>
          <p>The pH split gives purer groups. So the tree asks about soil pH first. <strong>Output</strong> of <code>export_text</code> in the starter:</p>
          <div class="lc-code">|--- soil_ph &lt;= 6.10<br>|   |--- class: 0<br>|--- soil_ph &gt;  6.10<br>|   |--- soil_ph &lt;= 7.75<br>|   |   |--- rainfall_mm &lt;= 675.00<br>|   |   |   |--- class: 1<br>|   |   |--- rainfall_mm &gt;  675.00<br>|   |   |   |--- class: 1<br>|   |--- soil_ph &gt;  7.75<br>|   |   |--- class: 0</div>
          <p>Look at the rainfall split where <em>both</em> leaves say class 1. That is not a bug. The split still made the groups purer (lower Gini). The majority class just did not change. The tree picks splits by impurity, not by whether the prediction changes.</p>
        </div>
        <div class="lc-card">
          <h3>Important Settings</h3>
          <table class="lc-table">
            <thead><tr><th>Parameter</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>max_depth</td><td>The most questions in a row. Smaller = simpler tree</td></tr>
              <tr><td>min_samples_leaf</td><td>Each leaf must have at least this many rows</td></tr>
              <tr><td>criterion</td><td>"gini" (default) or "entropy" (information gain). They usually pick very similar splits</td></tr>
            </tbody>
          </table>
          <p>For regression, <code>DecisionTreeRegressor</code> uses the same idea. But it measures impurity with squared error. It predicts the <em>average</em> value of the rows in each leaf.</p>
        </div>
        <div class="lc-card">
          <h3>Strengths and Weaknesses</h3>
          <ul class="lc-list">
            <li><strong>+</strong> No need to scale features.</li>
            <li><strong>+</strong> You can print the rules and explain every prediction.</li>
            <li><strong>+</strong> Handles non-linear patterns (not a straight line) easily.</li>
            <li><strong>−</strong> A tree with no depth limit memorises the training data. It overfits.</li>
            <li><strong>−</strong> Small changes in data can give a very different tree. It is unstable.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving <code>max_depth=None</code> and being happy about 100% training accuracy.</li>
            <li>Reading feature importance as "cause". It only shows what the tree used for splitting. In the starter, irrigation gets importance 0.000. That does not mean irrigation never matters for crops. It only means this tree never split on it.</li>
            <li>Scaling features "just in case". It does not hurt trees, but it wastes effort. A tree only compares values with thresholds inside one feature.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that the two weighted Gini values match the table above.</li>
            <li>Change <code>max_depth=3</code> to <code>max_depth=1</code>. What single question does the tree ask now? How many rules are printed?</li>
            <li>Set <code>criterion="entropy"</code> in <code>DecisionTreeClassifier(...)</code>. Does the first question change?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>sklearn.tree.export_text(model, feature_names=...)</code> to print a tree's rules as plain text. This is great for explaining your model in a viva (an oral exam).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.tree import DecisionTreeClassifier, export_text

        # Crop data: [rainfall_mm, soil_ph, irrigation(0/1)] -> yield (0=LOW, 1=HIGH)
        X = np.array([
            [650, 6.5, 0], [700, 7.0, 1], [720, 5.5, 0], [780, 6.8, 1],
            [820, 6.9, 0], [850, 5.2, 0], [900, 7.2, 1], [950, 8.1, 0],
            [600, 6.2, 1], [1000, 6.4, 0], [880, 8.3, 1], [760, 6.0, 0],
            [1100, 7.1, 1], [640, 7.4, 1], [980, 5.0, 1], [830, 6.6, 1],
        ])
        y = np.array([0, 1, 0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 1, 0, 1])
        features = ["rainfall_mm", "soil_ph", "irrigation"]

        # Gini impurity by hand
        def gini(labels):
            p = np.bincount(labels, minlength=2) / len(labels)
            return 1 - np.sum(p ** 2)

        def weighted_gini(mask):
            left, right = y[mask], y[~mask]
            return (len(left) * gini(left) + len(right) * gini(right)) / len(y)

        print("Gini of all data:", round(gini(y), 3))
        print("Weighted Gini, split irrigation == 0:", round(weighted_gini(X[:, 2] == 0), 3))
        print("Weighted Gini, split soil_ph <= 6.1: ", round(weighted_gini(X[:, 1] <= 6.1), 3))

        tree = DecisionTreeClassifier(max_depth=3, random_state=0)
        tree.fit(X, y)
        print("\nLearned rules:")
        print(export_text(tree, feature_names=features))

        print("Feature importances:")
        for name, imp in zip(features, tree.feature_importances_):
            print(f"  {name:12s} {imp:.3f}")

        fields = [[900, 6.8, 0], [700, 6.5, 1], [1050, 8.5, 1]]
        for f, p in zip(fields, tree.predict(fields)):
            print(f"Field {f} -> {'HIGH' if p else 'LOW'} yield")
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Random Forests and Gradient Boosting</h1>
        </div>
        <p class="lc-lead">One decision tree is unstable and overfits easily. <strong>Ensembles</strong> (groups of models that work together) combine many trees into one stronger model. A <strong>random forest</strong> trains many different trees <em>in parallel</em> and averages them. <strong>Gradient boosting</strong> trains trees <em>one after another</em>, and each new tree fixes the mistakes of the earlier ones. These two are the best models to try first for tabular data.</p>
        <div class="lc-card">
          <h3>Many Opinions Are Better Than One</h3>
          <p>Ask one cricket fan to predict the score of a match, and the guess may be far off. Ask 100 fans and take the average. You usually get much closer. Their mistakes cancel each other out, but only if the fans think <em>differently</em>.</p>
          <p>A random forest makes its trees different in two ways:</p>
          <ul class="lc-list">
            <li><strong>Bootstrap sampling (bagging)</strong>: each tree trains on a random sample of rows. The rows are picked "with replacement", so the same row can be picked again. On average, a bootstrap sample has only about 63% of the different rows. Some rows appear two or more times.</li>
            <li><strong>Random features</strong>: at each split, a tree looks at only a random part of the features. For classification, the default number is √(number of features).</li>
          </ul>
          <p>For regression, the forest takes the average of the trees' predictions. For classification, scikit-learn averages the trees' predicted <em>probabilities</em>. Then it picks the most likely class. This is called a "soft vote".</p>
        </div>
        <div class="lc-card">
          <h3>Boosting: Learning from Mistakes</h3>
          <p>Gradient boosting starts with a very simple prediction. Then it adds small trees one at a time. Each new tree learns to correct the errors left by all the earlier trees. (To be exact, it learns the gradient of the loss.) A <strong>learning rate</strong> makes each tree's effect smaller. So the model improves in small, careful steps.</p>
          <div class="lc-code">prediction = start + lr × tree1(x) + lr × tree2(x) + lr × tree3(x) + ...</div>
          <p>scikit-learn's <code>HistGradientBoostingClassifier</code> / <code>HistGradientBoostingRegressor</code> are fast, modern versions. They can also handle missing values on their own. Popular libraries like XGBoost, LightGBM and CatBoost use the same idea. They win most competitions on tabular data.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">from sklearn.ensemble import RandomForestClassifier, HistGradientBoostingClassifier<br><br>rf = RandomForestClassifier(n_estimators=300, random_state=0).fit(X_tr, y_tr)<br>gb = HistGradientBoostingClassifier(max_iter=200, learning_rate=0.1,<br>                                    random_state=0).fit(X_tr, y_tr)<br>print(rf.score(X_te, y_te), gb.score(X_te, y_te))</div>
          <p><strong>Output of the starter</strong> (breast cancer data, 30% test):</p>
          <div class="lc-code">Single tree        train=1.000 test=0.906<br>Forest   5 trees   train=0.995 test=0.959<br>Forest  50 trees   train=1.000 test=0.971<br>Forest 300 trees   train=1.000 test=0.971<br>Gradient boosting  train=1.000 test=0.959</div>
          <p>The single tree memorises the training data (1.000). It scores 0.906 on the test set. The forests also fit the training data perfectly. But averaging many different trees raises the test score to 0.971. On this small, easy dataset, boosting is about as good as the forest. On larger, messier tables, a tuned boosting model often wins.</p>
        </div>
        <div class="lc-card">
          <h3>Tree vs Forest vs Boosting</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Decision Tree</th><th>Random Forest</th><th>Gradient Boosting</th></tr></thead>
            <tbody>
              <tr><td>How trees are built</td><td>One tree</td><td>Many, each on its own (parallel)</td><td>Many, one after another</td></tr>
              <tr><td>Main risk</td><td>Overfitting</td><td>Low risk; default settings usually work</td><td>Can overfit with too many trees or a too high learning rate</td></tr>
              <tr><td>Key settings</td><td>max_depth</td><td>n_estimators, max_features</td><td>learning_rate, max_iter, max_depth</td></tr>
              <tr><td>Easy to understand?</td><td>Yes, you can print the rules</td><td>Hard (hundreds of trees)</td><td>Hard</td></tr>
              <tr><td>Scaling needed?</td><td>No</td><td>No</td><td>No</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Too few trees in a forest</strong>: 5 trees can give noisy results. 100–500 trees is normal. More trees rarely hurt a forest's accuracy. They only make it slower. (This is <em>not</em> true for boosting. There, more rounds can overfit.)</li>
            <li><strong>Trusting feature importance without checking</strong>: the default <code>feature_importances_</code> is based on impurity. It favours features with many unique values, like an ID column. <code>sklearn.inspection.permutation_importance</code> on test data is more reliable.</li>
            <li><strong>Forgetting random_state</strong>: results change on every run, so comparisons get confusing.</li>
            <li><strong>Raising boosting's learning rate to "train faster"</strong>: large steps jump past the best point, just like in lesson 6. Use a lower learning rate and more rounds instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. How many of the 300 trees voted "benign" for patient 5? (It is the last value in the vote-share list.) Is the forest sure about that patient?</li>
            <li>Change <code>n_estimators</code> in the loop to <code>[1, 2, 5]</code>. At what point does the forest beat the single tree?</li>
            <li>Change the boosting <code>learning_rate=0.1</code> to <code>1.0</code>. Does the test score go up or down?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Tabular data has rows and columns, like marks sheets or sales records. For such data, start with a random forest with default settings. Then try <code>HistGradientBoostingClassifier</code>. Compare them with cross-validation (lesson 14), not with a single split.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_breast_cancer
        from sklearn.model_selection import train_test_split
        from sklearn.tree import DecisionTreeClassifier
        from sklearn.ensemble import RandomForestClassifier, HistGradientBoostingClassifier

        data = load_breast_cancer()
        X_tr, X_te, y_tr, y_te = train_test_split(
            data.data, data.target, test_size=0.3, random_state=3, stratify=data.target)

        # 1. One tree vs forests of different sizes (bagging)
        tree = DecisionTreeClassifier(random_state=0).fit(X_tr, y_tr)
        print(f"Single tree        train={tree.score(X_tr, y_tr):.3f} test={tree.score(X_te, y_te):.3f}")
        for n in [5, 50, 300]:
            rf = RandomForestClassifier(n_estimators=n, random_state=0).fit(X_tr, y_tr)
            print(f"Forest {n:3d} trees   train={rf.score(X_tr, y_tr):.3f} test={rf.score(X_te, y_te):.3f}")

        # 2. Gradient boosting: trees built one after another, each one fixes earlier errors
        gb = HistGradientBoostingClassifier(max_iter=200, learning_rate=0.1, random_state=0)
        gb.fit(X_tr, y_tr)
        print(f"Gradient boosting  train={gb.score(X_tr, y_tr):.3f} test={gb.score(X_te, y_te):.3f}")

        # 3. How much do the 300 trees agree on the first 5 test patients?
        votes = np.array([t.predict(X_te[:5]) for t in rf.estimators_])   # shape (300, 5)
        print("\nShare of trees voting 'benign' for 5 patients:", votes.mean(axis=0).round(2))
        print("Forest predictions:", rf.predict(X_te[:5]), "| Actual:", y_te[:5])

        # 4. Bootstrap sample: rows picked WITH replacement (a row can be picked again)
        rng = np.random.default_rng(0)
        idx = rng.choice(10, size=10, replace=True)
        print("\nExample bootstrap of rows 0-9:", sorted(idx.tolist()))
        print("Unique rows used:", len(set(idx.tolist())), "of 10")

        # 5. Top 5 features by impurity-based importance
        order = np.argsort(rf.feature_importances_)[::-1][:5]
        print("\nTop 5 features (forest):")
        for i in order:
            print(f"  {data.feature_names[i]:22s} {rf.feature_importances_[i]:.3f}")
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Overfitting and Regularisation</h1>
        </div>
        <p class="lc-lead">The goal of ML is not to do well on the training data. The goal is to do well on <strong>new</strong> data. <strong>Overfitting</strong> happens when a model memorises noise (random errors) instead of learning the real pattern. <strong>Regularisation</strong> is one of the main fixes.</p>
        <div class="lc-card">
          <h3>Underfitting vs Overfitting</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Underfitting</th><th>Good fit</th><th>Overfitting</th></tr></thead>
            <tbody>
              <tr><td>Training score</td><td>Low</td><td>High</td><td>Very high (almost perfect)</td></tr>
              <tr><td>Test score</td><td>Low</td><td>High</td><td>Much lower than training</td></tr>
              <tr><td>Like a student who…</td><td>Did not study</td><td>Understood the ideas</td><td>Memorised last year's answers</td></tr>
              <tr><td>Fix</td><td>More complex model, better features</td><td>n/a</td><td>Simpler model, regularisation, more data</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What Is Regularisation?</h3>
          <p>Regularisation adds a <strong>penalty for large weights</strong> to the loss. Now the model must balance two goals: "fit the data" and "keep the weights small". This gives a smoother, simpler model.</p>
          <div class="lc-code">Ridge (L2):  loss = MSE + alpha × Σ w²<br>Lasso (L1):  loss = MSE + alpha × Σ |w|</div>
          <ul class="lc-list">
            <li><strong>alpha = 0</strong>: no penalty. This is the same as plain linear regression.</li>
            <li><strong>Larger alpha</strong>: stronger penalty, simpler model.</li>
            <li><strong>Lasso</strong> can push some weights to exactly 0. So it also selects features.</li>
            <li>In <code>LogisticRegression</code>, the setting is <code>C</code>. It works the other way: <em>smaller C = stronger regularisation</em>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">from sklearn.preprocessing import PolynomialFeatures, StandardScaler<br>from sklearn.linear_model import LinearRegression, Ridge<br>from sklearn.pipeline import make_pipeline<br><br>wiggly = make_pipeline(PolynomialFeatures(15), StandardScaler(), LinearRegression())<br>smooth = make_pipeline(PolynomialFeatures(15), StandardScaler(), Ridge(alpha=1.0))</div>
          <p>A degree-15 polynomial can bend to pass through almost every training point. Ridge stops it from bending too much. The <code>StandardScaler</code> step is important. x<sup>15</sup> is millions of times larger than x. The penalty treats every term fairly only when all terms are on the same scale. The starter fits a curve of fertiliser vs crop yield (20 training points, 20 test points).</p>
          <p><strong>Output of the starter:</strong></p>
          <div class="lc-code">Degree | train RMSE | test RMSE<br>     1 |      0.637 |     0.757<br>     2 |      0.276 |     0.360<br>     5 |      0.241 |     0.363<br>    15 |      0.148 |     6.895<br><br>Degree 15 with Ridge regularisation:<br> alpha | train RMSE | test RMSE<br> 0.001 |      0.244 |     0.377<br>   0.1 |      0.273 |     0.396<br>     1 |      0.345 |     0.476<br>    10 |      0.548 |     0.653<br>   100 |      0.726 |     0.838</div>
          <ul class="lc-list">
            <li>Degree 1 (a straight line) <strong>underfits</strong>: both errors are high.</li>
            <li>Degree 2 matches the true curve: low error on both sets.</li>
            <li>Degree 15 without a penalty has the <em>lowest</em> training error (0.148). But its test error is terrible (6.895). This is a typical case of <strong>overfitting</strong>.</li>
            <li>Add a small Ridge penalty (alpha = 0.001) to the same degree-15 model. The test error comes back down to 0.377. Too much penalty (alpha = 100) makes it underfit again.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Bias and Variance</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>Sign</th></tr></thead>
            <tbody>
              <tr><td>High bias</td><td>The model is too simple to learn the pattern</td><td>Underfitting: train and test error are both high</td></tr>
              <tr><td>High variance</td><td>The model changes a lot when the training data changes a little</td><td>Overfitting: low train error, much higher test error</td></tr>
            </tbody>
          </table>
          <p>A more flexible model has lower bias but higher variance. You control this trade-off with the regularisation strength (alpha, C, max_depth, k).</p>
        </div>
        <div class="lc-card">
          <h3>Ways to Fight Overfitting</h3>
          <ul class="lc-list">
            <li>Get more training data.</li>
            <li>Use a simpler model (lower degree, smaller <code>max_depth</code>, larger <code>k</code> in k-NN).</li>
            <li>Add regularisation (Ridge, Lasso, smaller <code>C</code>).</li>
            <li>Remove noisy or useless features.</li>
            <li>Use ensembles like random forests.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Judging a model by its training score only.</li>
            <li>Using regularisation without scaling. The penalty then treats features unfairly.</li>
            <li>Choosing alpha by looking at the test set. Use cross-validation instead (lesson 14). The alpha table above is only for learning. In a real project, you choose alpha on training folds.</li>
            <li>Mixing up the directions. In <code>Ridge</code>/<code>Lasso</code>, a <em>larger</em> alpha means stronger regularisation. In <code>LogisticRegression</code>, a <em>smaller</em> C means stronger.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Find the degree with the lowest <em>test</em> RMSE.</li>
            <li>Add <code>8</code> and <code>12</code> to the degree list <code>[1, 2, 5, 15]</code>. At what degree does the test error start to grow very fast?</li>
            <li>Change the Lasso <code>alpha=0.05</code> to <code>0.5</code>. Does Lasso keep more or fewer polynomial terms?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always print <em>both</em> train and test scores next to each other. The gap between them is the clearest sign of overfitting.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.preprocessing import PolynomialFeatures, StandardScaler
        from sklearn.linear_model import LinearRegression, Ridge, Lasso
        from sklearn.pipeline import make_pipeline
        from sklearn.metrics import mean_squared_error

        # Fertiliser (x) vs crop yield (y): a gentle curve plus noise
        rng = np.random.RandomState(1)
        x = np.sort(rng.uniform(0, 3, 40)).reshape(-1, 1)
        y = 2 + 3 * x.ravel() - 0.9 * x.ravel() ** 2 + rng.normal(0, 0.4, 40)
        train, test = np.arange(40) % 2 == 0, np.arange(40) % 2 == 1

        def rmse(model):
            model.fit(x[train], y[train])
            tr = np.sqrt(mean_squared_error(y[train], model.predict(x[train])))
            te = np.sqrt(mean_squared_error(y[test], model.predict(x[test])))
            return tr, te

        print("Degree | train RMSE | test RMSE")
        for d in [1, 2, 5, 15]:
            m = make_pipeline(PolynomialFeatures(d), StandardScaler(), LinearRegression())
            tr, te = rmse(m)
            print(f"{d:6d} | {tr:10.3f} | {te:9.3f}")

        print("\nDegree 15 with Ridge regularisation:")
        print(" alpha | train RMSE | test RMSE")
        for a in [0.001, 0.1, 1, 10, 100]:
            m = make_pipeline(PolynomialFeatures(15), StandardScaler(), Ridge(alpha=a))
            tr, te = rmse(m)
            print(f"{a:6} | {tr:10.3f} | {te:9.3f}")

        lasso = make_pipeline(PolynomialFeatures(15), StandardScaler(), Lasso(alpha=0.05, max_iter=50000))
        lasso.fit(x[train], y[train])
        coefs = lasso[-1].coef_
        print(f"\nLasso kept {np.sum(coefs != 0)} of {len(coefs)} polynomial terms (others set to 0)")
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Cross-Validation</h1>
        </div>
        <p class="lc-lead">A single train/test split can be lucky or unlucky. <strong>Cross-validation</strong> tests the model on several different splits. Then it averages the results. This gives a much more reliable score, and you do not need to touch your final test set.</p>
        <div class="lc-card">
          <h3>k-Fold Cross-Validation</h3>
          <p>With 5-fold CV, the training data is cut into 5 equal parts, called folds:</p>
          <div class="lc-code">Round 1: [VAL] [trn] [trn] [trn] [trn]<br>Round 2: [trn] [VAL] [trn] [trn] [trn]<br>Round 3: [trn] [trn] [VAL] [trn] [trn]<br>Round 4: [trn] [trn] [trn] [VAL] [trn]<br>Round 5: [trn] [trn] [trn] [trn] [VAL]<br><br>Final score = average of the 5 validation scores</div>
          <p>Every row is used for validation exactly once. It is used for training four times.</p>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.model_selection import cross_val_score, StratifiedKFold<br><br>cv = StratifiedKFold(n_splits=5, shuffle=True, random_state=0)<br>scores = cross_val_score(model, X_train, y_train, cv=cv, scoring="accuracy")<br>print(scores)                       # 5 numbers<br>print(scores.mean(), scores.std())  # average and spread</div>
          <p>The <strong>standard deviation</strong> (how spread out the scores are) tells you how stable the model is. A mean of 0.90 ± 0.01 is more trustworthy than 0.90 ± 0.08.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing a CV Strategy</h3>
          <table class="lc-table">
            <thead><tr><th>Strategy</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td>KFold</td><td>Regression problems</td></tr>
              <tr><td>StratifiedKFold</td><td>Classification (keeps the same class ratios in each fold)</td></tr>
              <tr><td>TimeSeriesSplit</td><td>Data in time order (sales, stock prices, weather)</td></tr>
              <tr><td>LeaveOneOut</td><td>Very small datasets (slow: one fold per row)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Using CV to Tune Settings</h3>
          <p><code>GridSearchCV</code> tries every combination of settings. It picks the best one using cross-validation:</p>
          <div class="lc-code">from sklearn.model_selection import GridSearchCV<br><br>grid = GridSearchCV(KNeighborsClassifier(), {"n_neighbors": [1, 3, 5, 7, 9]}, cv=5)<br>grid.fit(X_train, y_train)<br>print(grid.best_params_, grid.best_score_)</div>
          <p>For each setting, GridSearchCV runs the full cross-validation. With 5 values and 5 folds, that is 25 fits. Then, by default (<code>refit=True</code>), it trains the best setting again on <em>all</em> the training data. So <code>grid.predict</code> and <code>grid.score</code> use that final model.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <p>The starter uses the breast cancer data. First, it shows how much one validation split can change. Then it compares three models with 5-fold CV and tunes a tree:</p>
          <div class="lc-code">Single-split scores vary: [0.93  0.965 0.93  0.974 0.956]<br><br>Model          | CV mean | CV std<br>Decision tree  |   0.927 |  0.027<br>Random forest  |   0.963 |  0.025<br>Logistic reg.  |   0.978 |  0.010<br><br>Best tree depth: {'max_depth': 6} CV score: 0.943<br>Final test score (used once): 0.939</div>
          <ul class="lc-list">
            <li>The same tree scores anywhere from 0.93 to 0.974. The only change is which rows go into the validation split. So one split is not enough to compare models.</li>
            <li>Scaled logistic regression has the highest mean <em>and</em> the smallest spread. So it is the most reliable choice here.</li>
            <li>The final test score (0.939) is close to the CV estimate (0.943). This shows the CV estimate was honest.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Running cross-validation on the full dataset, and then reporting a test score from the same data.</li>
            <li>Scaling all data before CV. The scaler then sees the validation fold. Put the scaler in a Pipeline (lesson 16).</li>
            <li>Looking only at the mean and ignoring the spread of scores.</li>
            <li>Reporting <code>grid.best_score_</code> as the final result. It was used to pick the winner, so it is a little too high. Report the test score.</li>
            <li>Using plain <code>KFold</code> on data in time order. The model then trains on the future and validates on the past. Use <code>TimeSeriesSplit</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Note which model has the best CV mean.</li>
            <li>Change <code>n_splits=5</code> to <code>n_splits=10</code>. Do the means change much? What happens to the standard deviations?</li>
            <li>Add <code>"min_samples_leaf": [1, 5, 10]</code> to the GridSearchCV parameter dictionary. How many combinations does it try now? Which one wins?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use cross-validation on the training set to <em>choose</em> a model. Then use the test set <em>once</em> to <em>report</em> its final score.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_breast_cancer
        from sklearn.model_selection import (train_test_split, cross_val_score,
                                             StratifiedKFold, GridSearchCV)
        from sklearn.tree import DecisionTreeClassifier
        from sklearn.ensemble import RandomForestClassifier
        from sklearn.linear_model import LogisticRegression
        from sklearn.pipeline import make_pipeline
        from sklearn.preprocessing import StandardScaler

        X, y = load_breast_cancer(return_X_y=True)
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, random_state=0, stratify=y)

        # One split can be lucky or unlucky: try 5 different random splits
        tree = DecisionTreeClassifier(max_depth=4, random_state=0)
        single = []
        for seed in range(5):
            a, b, c, d = train_test_split(X_tr, y_tr, test_size=0.25, random_state=seed)
            single.append(tree.fit(a, c).score(b, d))
        print("Single-split scores vary:", np.round(single, 3))

        # 5-fold stratified cross-validation
        cv = StratifiedKFold(n_splits=5, shuffle=True, random_state=0)
        models = {
            "Decision tree": tree,
            "Random forest": RandomForestClassifier(n_estimators=100, random_state=0),
            "Logistic reg.": make_pipeline(StandardScaler(), LogisticRegression(max_iter=1000)),
        }
        print("\nModel          | CV mean | CV std")
        for name, m in models.items():
            s = cross_val_score(m, X_tr, y_tr, cv=cv)
            print(f"{name:14s} | {s.mean():7.3f} | {s.std():6.3f}")

        # Tune max_depth with GridSearchCV
        grid = GridSearchCV(DecisionTreeClassifier(random_state=0),
                            {"max_depth": [1, 2, 3, 4, 6, 8]}, cv=cv)
        grid.fit(X_tr, y_tr)
        print("\nBest tree depth:", grid.best_params_, "CV score:", round(grid.best_score_, 3))
        print("Final test score (used once):", round(grid.score(X_te, y_te), 3))
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Feature Scaling and Encoding</h1>
        </div>
        <p class="lc-lead">Models only understand numbers. Many models get confused when numbers are on very different scales. <strong>Scaling</strong> puts numeric features in a similar range. <strong>Encoding</strong> turns text categories, like state names, into numbers.</p>
        <div class="lc-card">
          <h3>Why Scale?</h3>
          <p>Think of a loan dataset with <code>income_lakh</code> (2–50) and <code>cibil_score</code> (300–900). For k-NN, a difference of 100 CIBIL points looks 50 times bigger than a difference of 2 lakhs. This happens even if income matters more. Scaling fixes this.</p>
          <table class="lc-table">
            <thead><tr><th>Scaler</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>StandardScaler</td><td>(x − mean) / std</td><td>Mean 0, std 1 (most common)</td></tr>
              <tr><td>MinMaxScaler</td><td>(x − min) / (max − min)</td><td>Values between 0 and 1</td></tr>
              <tr><td>RobustScaler</td><td>(x − median) / IQR</td><td>Less affected by outliers (very unusual values)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Which Models Need Scaling?</h3>
          <ul class="lc-list">
            <li><strong>Need it:</strong> k-NN, logistic/linear regression with regularisation, SVM, k-means, PCA, neural networks, gradient descent.</li>
            <li><strong>Do not need it:</strong> decision trees, random forests. They only compare values inside one feature.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Encoding Categories</h3>
          <div class="lc-code">from sklearn.preprocessing import OneHotEncoder<br><br>states = [["Gujarat"], ["Kerala"], ["Gujarat"], ["Punjab"]]<br>enc = OneHotEncoder(handle_unknown="ignore", sparse_output=False)<br>print(enc.fit_transform(states))<br>print(enc.get_feature_names_out())</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">[[1. 0. 0.]<br> [0. 1. 0.]<br> [1. 0. 0.]<br> [0. 0. 1.]]<br>['x0_Gujarat' 'x0_Kerala' 'x0_Punjab']</div>
          <p>The categories are sorted in alphabetical order, with one column each. (With a DataFrame column, the names become <code>state_Gujarat</code> and so on, as in the starter.) By default, the encoder returns a sparse matrix, which saves memory. <code>sparse_output=False</code> gives a normal NumPy array.</p>
          <ul class="lc-list">
            <li><strong>One-hot encoding</strong>: one 0/1 column for each category. Use it for categories with no order (state, crop type).</li>
            <li><strong>Ordinal encoding</strong>: map categories to 0, 1, 2… Use it only when there is a real order (low &lt; medium &lt; high). In a pipeline, use <code>OrdinalEncoder(categories=[["12th", "UG", "PG"]])</code> so you control the order. By default, it would sort in alphabetical order: 12th, PG, UG. That is wrong.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Scaling in Numbers</h3>
          <p>In the starter, the training means are 10.27 lakhs (income) and 715 (CIBIL). After <code>StandardScaler</code>, the first applicant (4.5 lakhs, 640) becomes <code>[-0.80, -0.95]</code>. This means "a bit below average on both". Now a difference of 1 means "one standard deviation" for both features. So neither feature controls a distance calculation.</p>
          <div class="lc-code">StandardScaler means: [ 10.27 715.  ]<br>   income_lakh  cibil_score<br>0        -0.80        -0.95<br>1         0.24         0.82<br>...<br>One-hot columns: ['state_Gujarat', 'state_Karnataka', 'state_Kerala', 'state_Punjab']<br>Unseen state 'Assam' -&gt; [[0. 0. 0. 0.]]</div>
          <p>A state the encoder has not seen becomes all zeros. It does not crash the model.</p>
        </div>
        <div class="lc-card">
          <h3>Missing Values: Imputation</h3>
          <p>Most scikit-learn models do not accept <code>NaN</code>. Imputation means filling in the missing values. Use <code>SimpleImputer(strategy="median")</code> for numbers or <code>strategy="most_frequent"</code> for categories. Like a scaler, it must learn its fill values from training data only. So it belongs inside the pipeline (next lesson).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Fitting the scaler on all data</strong>: fit it on training data only. Then <code>transform</code> both train and test. Otherwise, test information leaks into training.</li>
            <li><strong>Label-encoding states as 0, 1, 2</strong>: the model thinks Punjab (2) is "twice" Kerala (1). Use one-hot instead.</li>
            <li><strong>Crashing on unseen categories</strong>: a new state in the test set breaks the encoder. To stop this, set <code>handle_unknown="ignore"</code>.</li>
            <li><strong>Using the old argument name</strong>: <code>OneHotEncoder(sparse=False)</code> was removed. The current name is <code>sparse_output</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that each scaled column has values on both sides of 0.</li>
            <li>Add a very rich applicant: change <code>25.0</code> to <code>250.0</code> in <code>income_lakh</code>. Compare how the StandardScaler and MinMaxScaler values change for the other applicants. Which scaler pushes everyone else close together?</li>
            <li>Replace <code>StandardScaler()</code> with <code>RobustScaler()</code> in the ColumnTransformer. (Import it from <code>sklearn.preprocessing</code>.) What does the first row look like now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>ColumnTransformer</code> lets you scale numeric columns and one-hot encode text columns in one object. The next lesson shows how to join it with a model in a Pipeline.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd
        from sklearn.preprocessing import StandardScaler, MinMaxScaler, OneHotEncoder
        from sklearn.compose import ColumnTransformer

        loans = pd.DataFrame({
            "income_lakh": [4.5, 12.0, 7.2, 25.0, 3.1, 9.8],
            "cibil_score": [640, 780, 710, 820, 590, 750],
            "state":       ["Gujarat", "Kerala", "Gujarat", "Punjab", "Kerala", "Karnataka"],
            "education":   ["12th", "PG", "UG", "PG", "12th", "UG"],
        })
        print(loans, "\n")

        nums = loans[["income_lakh", "cibil_score"]]
        std = StandardScaler().fit(nums)
        print("StandardScaler means:", std.mean_.round(2))
        print(pd.DataFrame(std.transform(nums), columns=nums.columns).round(2), "\n")
        print("MinMaxScaler (0 to 1):")
        print(pd.DataFrame(MinMaxScaler().fit_transform(nums), columns=nums.columns).round(2), "\n")

        # One-hot encode state (states have no natural order)
        enc = OneHotEncoder(handle_unknown="ignore", sparse_output=False)
        state_oh = enc.fit_transform(loans[["state"]])
        print("One-hot columns:", list(enc.get_feature_names_out()))
        print(state_oh[:3])
        print("Unseen state 'Assam' ->", enc.transform(pd.DataFrame({"state": ["Assam"]})))

        # Ordinal encoding for education (here there IS an order)
        order = {"12th": 0, "UG": 1, "PG": 2}
        print("\nEducation encoded:", loans["education"].map(order).tolist())

        # Everything together with ColumnTransformer
        ct = ColumnTransformer([
            ("num", StandardScaler(), ["income_lakh", "cibil_score"]),
            ("cat", OneHotEncoder(handle_unknown="ignore"), ["state"]),
        ], sparse_threshold=0)
        out = ct.fit_transform(loans)
        print("\nColumnTransformer output shape:", out.shape)
        print(np.round(out[0], 2))
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Pipelines</h1>
        </div>
        <p class="lc-lead">A <strong>Pipeline</strong> joins preprocessing steps and a model into <strong>one object</strong>. You call <code>fit</code> once and <code>predict</code> once. scikit-learn then runs every step in the right order. Test data cannot leak into training.</p>
        <div class="lc-card">
          <h3>Without vs With a Pipeline</h3>
          <div class="lc-code"># Without: easy to forget a step or fit on the wrong data<br>scaler = StandardScaler().fit(X_train)<br>model = LogisticRegression().fit(scaler.transform(X_train), y_train)<br>pred = model.predict(scaler.transform(X_test))<br><br># With: one object does it all<br>from sklearn.pipeline import Pipeline<br>pipe = Pipeline([<br>    ("scale", StandardScaler()),<br>    ("model", LogisticRegression()),<br>])<br>pipe.fit(X_train, y_train)<br>pred = pipe.predict(X_test)</div>
        </div>
        <div class="lc-card">
          <h3>How fit and predict Work Inside</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>What happens inside</th></tr></thead>
            <tbody>
              <tr><td>pipe.fit(X, y)</td><td>Each preprocessing step runs <code>fit_transform</code>. Then the final model runs <code>fit</code></td></tr>
              <tr><td>pipe.predict(X)</td><td>Each preprocessing step runs only <code>transform</code>. Then the model runs <code>predict</code></td></tr>
              <tr><td>pipe.score(X, y)</td><td>Transforms X, then scores the model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Pipelines + ColumnTransformer + GridSearchCV</h3>
          <p>You can tune the settings of any step. Use the name <code>step__parameter</code> (with two underscores):</p>
          <div class="lc-code">pre = ColumnTransformer([<br>    ("num", StandardScaler(), ["marks", "attendance"]),<br>    ("cat", OneHotEncoder(handle_unknown="ignore"), ["board"]),<br>])<br>pipe = Pipeline([("pre", pre), ("model", LogisticRegression())])<br><br>grid = GridSearchCV(pipe, {"model__C": [0.1, 1, 10]}, cv=5)<br>grid.fit(X_train, y_train)</div>
          <p>Inside cross-validation, the scaler is fitted again on each training fold only. This is the main reason pipelines stop leakage (test data getting into training).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Full Preprocessing Pipeline</h3>
          <p>The starter predicts whether 300 students clear an entrance exam. 15 students left <code>study_hrs</code> blank, and <code>board</code> is text. One pipeline handles all of it:</p>
          <div class="lc-code">pre = ColumnTransformer([<br>    ("num", Pipeline([("impute", SimpleImputer(strategy="median")),<br>                      ("scale", StandardScaler())]),<br>     ["marks_12th", "mock_score", "study_hrs"]),<br>    ("cat", OneHotEncoder(handle_unknown="ignore"), ["board"]),<br>])<br>pipe = Pipeline([("pre", pre), ("model", LogisticRegression(max_iter=1000))])<br>grid = GridSearchCV(pipe, {"model__C": [0.01, 0.1, 1, 10]}, cv=5).fit(X_tr, y_tr)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Cleared rate: 0.31 | Missing study_hrs: 15<br><br>Pipeline steps: ['pre', 'model']<br>Best C: 0.1 | CV accuracy: 0.751<br>Test accuracy: 0.813<br>P(clear) for new students: [0.69 0.12]</div>
          <ul class="lc-list">
            <li><code>fit</code> learns several values: the median to fill blanks, the means and standard deviations for scaling, and the list of boards. It learns them all from the training fold only.</li>
            <li>The new students are raw rows. One even has a blank <code>study_hrs</code>. The pipeline fills, scales and encodes them automatically.</li>
            <li>Baseline check: only 31% clear. So "always predict fail" scores about 0.69. The model's 0.813 is a real improvement.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Scaling the whole dataset first and then putting only the model in the pipeline. The leak is still there.</li>
            <li>Typing one underscore in grid parameters (<code>model_C</code>). It must be <code>model__C</code>.</li>
            <li>Forgetting that the last step must be the model. All earlier steps must be transformers.</li>
            <li>Leaving a column out of every transformer. By default, <code>ColumnTransformer</code> <em>drops</em> columns you do not mention (<code>remainder="drop"</code>). Use <code>remainder="passthrough"</code> to keep them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Print <code>grid.best_estimator_</code> to see the whole fitted pipeline.</li>
            <li>Remove <code>"study_hrs"</code> from the numeric column list and run again. Does the test accuracy drop? (The column is now dropped without any warning.)</li>
            <li>Add <code>"model__class_weight": [None, "balanced"]</code> to the grid dictionary. Which setting wins? <code>"balanced"</code> gives the rarer "cleared" class more weight during training.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After you fit your pipeline, it is your whole model. In a real app, you save this one object (for example with <code>joblib</code>). Later you load it to make predictions on raw input.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd
        from sklearn.pipeline import Pipeline
        from sklearn.compose import ColumnTransformer
        from sklearn.preprocessing import StandardScaler, OneHotEncoder
        from sklearn.impute import SimpleImputer
        from sklearn.linear_model import LogisticRegression
        from sklearn.model_selection import train_test_split, GridSearchCV

        # Made-up student data: will they clear the entrance exam?
        rng = np.random.RandomState(42)
        n = 300
        df = pd.DataFrame({
            "marks_12th": rng.randint(50, 100, n),
            "mock_score": rng.randint(20, 100, n),
            "study_hrs":  rng.uniform(1, 10, n).round(1),
            "board":      rng.choice(["CBSE", "ICSE", "State"], n),
        })
        logit = 0.04 * df.marks_12th + 0.06 * df.mock_score + 0.3 * df.study_hrs - 9
        df["cleared"] = (rng.rand(n) < 1 / (1 + np.exp(-logit))).astype(int)
        df.loc[rng.choice(n, 15, replace=False), "study_hrs"] = np.nan   # some forms left blank
        print(df.head(), "\nCleared rate:", round(df.cleared.mean(), 2),
              "| Missing study_hrs:", df.study_hrs.isna().sum())

        X, y = df.drop(columns="cleared"), df["cleared"]
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=0, stratify=y)

        pre = ColumnTransformer([
            ("num", Pipeline([("impute", SimpleImputer(strategy="median")),
                              ("scale", StandardScaler())]),
             ["marks_12th", "mock_score", "study_hrs"]),
            ("cat", OneHotEncoder(handle_unknown="ignore"), ["board"]),
        ])
        pipe = Pipeline([("pre", pre), ("model", LogisticRegression(max_iter=1000))])
        print("\nPipeline steps:", [name for name, _ in pipe.steps])

        grid = GridSearchCV(pipe, {"model__C": [0.01, 0.1, 1, 10]}, cv=5)
        grid.fit(X_tr, y_tr)
        print("Best C:", grid.best_params_["model__C"], "| CV accuracy:", round(grid.best_score_, 3))
        print("Test accuracy:", round(grid.score(X_te, y_te), 3))

        # Predict on RAW new data - the pipeline fills blanks, scales and encodes automatically
        new = pd.DataFrame({"marks_12th": [92, 60], "mock_score": [85, 35],
                            "study_hrs": [7.5, np.nan], "board": ["State", "CBSE"]})
        print("P(clear) for new students:", grid.predict_proba(new)[:, 1].round(2))
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Support Vector Machines (SVM)</h1>
        </div>
        <p class="lc-lead">A <strong>support vector machine</strong> draws a boundary between two classes. It picks the boundary that leaves the <strong>widest possible gap</strong> (margin) to the nearest points. With a <strong>kernel</strong> (a way to measure similarity between points), the same idea can draw curved boundaries. SVMs work well on small and medium-sized tabular data, but only if you scale the features.</p>
        <div class="lc-card">
          <h3>The Idea: Maximum Margin</h3>
          <div class="lc-code">  o   o        |         x   x<br>    o    o  →  |  ←    x   x<br>  o    (o)     |     (x)   x<br>        margin ← boundary → margin</div>
          <ul class="lc-list">
            <li>Many lines could separate the o's from the x's. SVM picks the line with the widest empty "street" around it. This line usually works best on new data.</li>
            <li>The points on the edge of the street, shown in brackets, are the <strong>support vectors</strong>. Only they decide the boundary. Moving any other point changes nothing.</li>
            <li>Real data overlaps. So SVM allows some points inside the street or on the wrong side, but it adds a penalty for each one. <strong>C</strong> sets how big that penalty is.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Kernels and the Two Key Settings</h3>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>What it does</th><th>Small value</th><th>Large value</th></tr></thead>
            <tbody>
              <tr><td><code>kernel</code></td><td><code>"linear"</code> = straight boundary; <code>"rbf"</code> (default) = smooth curves; <code>"poly"</code> = polynomial curves</td><td>n/a</td><td>n/a</td></tr>
              <tr><td><code>C</code> (default 1.0)</td><td>Penalty for points on the wrong side</td><td>Wide, soft margin: simpler model (more regularisation)</td><td>Tries to get every training point right: may overfit</td></tr>
              <tr><td><code>gamma</code> (rbf/poly; default <code>"scale"</code>)</td><td>How far the effect of one training point reaches</td><td>Far: very smooth boundary</td><td>Very local: wiggly boundary around single points</td></tr>
            </tbody>
          </table>
          <p><code>C</code> works like <code>C</code> in <code>LogisticRegression</code>: <em>smaller C = stronger regularisation</em>. Tune <code>C</code> and <code>gamma</code> together with cross-validation. Use a log scale (0.01, 0.1, 1, 10 …).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Kernels on Curved Data</h3>
          <p>The starter uses <code>make_moons</code>. This makes two half-moons that fit into each other, so no straight line can separate them. The second feature is multiplied by 1000. This makes it act like a column in a much bigger unit (like rupees next to years).</p>
          <div class="lc-code">from sklearn.pipeline import make_pipeline<br>from sklearn.preprocessing import StandardScaler<br>from sklearn.svm import SVC<br><br>for kernel in ["linear", "poly", "rbf"]:<br>    pipe = make_pipeline(StandardScaler(), SVC(kernel=kernel)).fit(X_tr, y_tr)<br>    print(kernel, pipe.score(X_tr, y_tr), pipe.score(X_te, y_te), pipe[-1].n_support_.sum())<br>raw = SVC(kernel="rbf").fit(X_tr, y_tr)        # no scaling</div>
          <p><strong>Output of the starter:</strong></p>
          <div class="lc-code">=== Kernels (all scaled inside a pipeline) ===<br>linear | train 0.851 | test 0.832 | support vectors: 139<br>poly   | train 0.853 | test 0.856 | support vectors: 152<br>rbf    | train 0.893 | test 0.904 | support vectors: 122<br><br>=== Same RBF SVM WITHOUT scaling ===<br>rbf    | train 0.821 | test 0.784<br><br>=== C and gamma: too simple vs too wiggly ===<br>C=0.01  gamma=0.1 | train 0.781 | test 0.776<br>C=1     gamma=1   | train 0.888 | test 0.912<br>C=1000  gamma=50  | train 1.000 | test 0.832<br><br>=== Tune C and gamma with cross-validation (train set only) ===<br>best: {'svc__C': 10, 'svc__gamma': 1} | CV accuracy: 0.899<br>test accuracy (used once): 0.896</div>
          <ul class="lc-list">
            <li>The RBF kernel follows the curve. It beats the straight linear boundary (0.904 vs 0.832 on test).</li>
            <li>Without scaling, the same RBF model drops to 0.784. The ×1000 feature controls the distances. <strong>Always scale for SVMs</strong>. Do it inside a pipeline, so cross-validation has no leaks.</li>
            <li>Very small C and gamma <strong>underfit</strong> (0.781 train). Very large C and gamma <strong>overfit</strong>: a perfect 1.000 on train but 0.832 on test.</li>
            <li>In <code>make_pipeline</code>, the step name is the class name in lower case. So the grid keys are <code>svc__C</code> and <code>svc__gamma</code>. Note that the tuned test score (0.896) is not the highest number above. The hand-picked rows looked at the test set, but the grid did not.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>SVC vs Other Classifiers</h3>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Boundary</th><th>Probabilities?</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><code>SVC(kernel="rbf")</code></td><td>Curved</td><td>Only with <code>probability=True</code> (slower); otherwise use <code>decision_function</code></td><td>Up to a few tens of thousands of rows. Fit time grows at least with the square of the number of rows</td></tr>
              <tr><td><code>LinearSVC</code></td><td>Straight</td><td>No (<code>decision_function</code>)</td><td>Large or very wide data, for example text features</td></tr>
              <tr><td><code>LogisticRegression</code></td><td>Straight</td><td>Yes (<code>predict_proba</code>)</td><td>When you need fairly well-calibrated probabilities and weights that are easy to read</td></tr>
              <tr><td><code>RandomForestClassifier</code></td><td>Steps along the axes</td><td>Yes</td><td>Mixed tabular data; no scaling needed</td></tr>
            </tbody>
          </table>
          <p>For regression, the same ideas are in <code>sklearn.svm.SVR</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Another Fast Baseline: Naive Bayes</h3>
          <p><strong>Naive Bayes</strong> uses Bayes' rule. It "naively" assumes the features are independent of each other within each class. It trains in one pass (it just counts). It needs little data. It is a classic first model for <strong>text</strong>, such as spam filtering. Use <code>MultinomialNB</code> for word counts and <code>GaussianNB</code> for continuous features.</p>
          <div class="lc-code">from sklearn.feature_extraction.text import CountVectorizer<br>from sklearn.naive_bayes import MultinomialNB<br>from sklearn.pipeline import make_pipeline<br><br>texts = ["win a free recharge now", "free cashback offer, click now", "claim your free prize",<br>         "meeting moved to 3 pm", "can you send the notes", "lunch at the canteen?"]<br>labels = ["spam", "spam", "spam", "ham", "ham", "ham"]<br>nb = make_pipeline(CountVectorizer(), MultinomialNB()).fit(texts, labels)<br>print(nb.predict(["free prize offer", "send the meeting notes"]))<br>print(nb.predict_proba(["free prize offer"]).round(3), nb.classes_)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">['spam' 'ham']<br>[[0.059 0.941]] ['ham' 'spam']</div>
          <p><code>CountVectorizer</code> turns each message into word counts. This gives a very wide, sparse table (mostly zeros). That is also why <code>LinearSVC</code> and logistic regression work well on text. Naive Bayes probabilities are often too confident. So use it for ranking and quick baselines, not for exact risk numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>An RBF SVM scores 1.000 on the training set and 0.83 on the test set. Which change will most likely help?</p>
          <p><strong>Answer:</strong> lower <code>C</code> and/or <code>gamma</code> (a softer, smoother boundary). Choose them with cross-validation. The big gap between train and test shows overfitting.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting to scale. SVMs use distances, so one feature with large units controls everything. Put <code>StandardScaler</code> in a pipeline with the SVC.</li>
            <li>Tuning only <code>C</code> with the default <code>gamma</code>. The two affect each other, so search them together.</li>
            <li>Calling <code>predict_proba</code> on a plain <code>SVC()</code>. It gives an error unless you set <code>probability=True</code>. For ROC-AUC, <code>decision_function</code> scores work just as well.</li>
            <li>Running kernel SVC on hundreds of thousands of rows. Training becomes very slow. Use <code>LinearSVC</code>, <code>SGDClassifier</code> or gradient boosting instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Note how many support vectors each kernel uses. Which model depends on the fewest points?</li>
            <li>Add <code>0.001</code> and <code>1000</code> to <code>svc__C</code> in the grid. Does the best setting change?</li>
            <li>Change <code>noise=0.3</code> to <code>noise=0.1</code>. How close does the RBF test accuracy get to 1.0? Does linear improve as much?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A good default recipe: <code>make_pipeline(StandardScaler(), SVC())</code>. Then run <code>GridSearchCV</code> over <code>svc__C</code> and <code>svc__gamma</code> in powers of 10. If this is too slow for your data size, switch to <code>LinearSVC</code> or a tree ensemble.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_moons
        from sklearn.model_selection import train_test_split, GridSearchCV
        from sklearn.pipeline import make_pipeline
        from sklearn.preprocessing import StandardScaler
        from sklearn.svm import SVC

        # Two half-moons that fit into each other: no straight line can separate them
        X, y = make_moons(n_samples=500, noise=0.3, random_state=0)
        X[:, 1] = X[:, 1] * 1000          # second feature in a much bigger unit (like rupees vs years)
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=0, stratify=y)

        print("=== Kernels (all scaled inside a pipeline) ===")
        for kernel in ["linear", "poly", "rbf"]:
            pipe = make_pipeline(StandardScaler(), SVC(kernel=kernel)).fit(X_tr, y_tr)
            svc = pipe[-1]
            print(f"{kernel:6} | train {pipe.score(X_tr, y_tr):.3f} | test {pipe.score(X_te, y_te):.3f}"
                  f" | support vectors: {svc.n_support_.sum()}")

        print("\n=== Same RBF SVM WITHOUT scaling ===")
        raw = SVC(kernel="rbf").fit(X_tr, y_tr)
        print(f"rbf    | train {raw.score(X_tr, y_tr):.3f} | test {raw.score(X_te, y_te):.3f}")

        print("\n=== C and gamma: too simple vs too wiggly ===")
        for C, gamma in [(0.01, 0.1), (1, 1), (1000, 50)]:
            pipe = make_pipeline(StandardScaler(), SVC(C=C, gamma=gamma)).fit(X_tr, y_tr)
            print(f"C={C:<5} gamma={gamma:<4}| train {pipe.score(X_tr, y_tr):.3f} | test {pipe.score(X_te, y_te):.3f}")

        print("\n=== Tune C and gamma with cross-validation (train set only) ===")
        pipe = make_pipeline(StandardScaler(), SVC())
        params = {"svc__C": [0.1, 1, 10, 100], "svc__gamma": [0.01, 0.1, 1, 10]}
        grid = GridSearchCV(pipe, params, cv=5).fit(X_tr, y_tr)
        print("best:", grid.best_params_, "| CV accuracy:", round(grid.best_score_, 3))
        print("test accuracy (used once):", round(grid.score(X_te, y_te), 3))

        new = np.array([[0.0, 900.0], [1.0, -400.0]])
        print("\nnew points ->", grid.predict(new), "| decision_function:",
              grid.decision_function(new).round(2))
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Neural Networks (Multi-Layer Perceptrons)</h1>
        </div>
        <p class="lc-lead">A <strong>neural network</strong> is many small units stacked in layers. Each unit works much like logistic regression. One unit can only draw a straight boundary. A few layers of them can learn curved boundaries and complex patterns. In this lesson, you train a <strong>multi-layer perceptron (MLP)</strong> with scikit-learn's <code>MLPClassifier</code>. You also see what its settings do.</p>
        <div class="lc-card">
          <h3>From One Neuron to a Network</h3>
          <p>A <strong>neuron</strong> multiplies each input by a weight, adds them up, and adds a bias. Then it applies an <strong>activation function</strong> (a function that changes the sum before passing it on). With a sigmoid activation, one neuron is exactly logistic regression (lesson 8).</p>
          <div class="lc-code">neuron output = activation(w1*x1 + w2*x2 + ... + b)<br><br>input layer (features) → hidden layer(s) → output layer (class probabilities)</div>
          <ul class="lc-list">
            <li><strong>Input layer</strong>: one value for each feature. It has no weights of its own.</li>
            <li><strong>Hidden layers</strong>: each unit mixes all outputs of the layer before it. The default activation is <strong>ReLU</strong>: <code>max(0, z)</code>. Without a non-linear activation, many stacked layers would still give only a straight line.</li>
            <li><strong>Output layer</strong>: a sigmoid (for two classes) or softmax (for more) turns scores into probabilities.</li>
          </ul>
          <p><strong>Counting parameters:</strong> a layer with <em>a</em> inputs and <em>b</em> units has <em>a × b</em> weights + <em>b</em> biases. Take 2 features and <code>hidden_layer_sizes=(16,)</code>. The hidden layer has 2×16 + 16 = 48. The output has 16×1 + 1 = 17. That is 65 in total, as the starter prints.</p>
        </div>
        <div class="lc-card">
          <h3>How a Network Learns</h3>
          <ol class="lc-list">
            <li><strong>Forward pass</strong>: send a mini-batch (a small group) of rows through the layers to get predicted probabilities.</li>
            <li><strong>Loss</strong>: measure how wrong they are with log loss (lesson 8). Add an L2 penalty controlled by <code>alpha</code> (lesson 13).</li>
            <li><strong>Backpropagation</strong>: the chain rule finds the gradient of the loss for every weight. It goes layer by layer, from the output back to the start.</li>
            <li><strong>Update</strong>: an optimiser takes a small step downhill. This is the gradient descent from lesson 6. The default optimiser, <code>adam</code>, changes the step size for each weight.</li>
          </ol>
          <p>One pass over all training rows is called an <strong>epoch</strong>. Training stops when the loss stops improving. It also stops when it reaches <code>max_iter</code> epochs. In that case, scikit-learn shows a <code>ConvergenceWarning</code>.</p>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.neural_network import MLPClassifier<br>from sklearn.pipeline import make_pipeline<br>from sklearn.preprocessing import StandardScaler<br><br>model = make_pipeline(<br>    StandardScaler(),                        # networks need scaled inputs<br>    MLPClassifier(hidden_layer_sizes=(16, 16), max_iter=2000, random_state=0),<br>)<br>model.fit(X_tr, y_tr)<br>print(model.score(X_te, y_te))<br>print(model.predict_proba(X_te[:3]))</div>
          <p>To predict numbers instead of classes, use <code>MLPRegressor</code> with the same settings.</p>
          <table class="lc-table">
            <thead><tr><th>Setting</th><th>Default</th><th>What it controls</th></tr></thead>
            <tbody>
              <tr><td><code>hidden_layer_sizes</code></td><td><code>(100,)</code></td><td>Units in each hidden layer. <code>(16, 16)</code> = two layers of 16. More units = more flexible, but easier to overfit.</td></tr>
              <tr><td><code>activation</code></td><td><code>"relu"</code></td><td>The non-linear function in hidden layers (<code>"tanh"</code> and <code>"logistic"</code> also exist).</td></tr>
              <tr><td><code>alpha</code></td><td><code>0.0001</code></td><td>Strength of the L2 penalty. Larger = smoother, simpler model.</td></tr>
              <tr><td><code>learning_rate_init</code></td><td><code>0.001</code></td><td>Step size for <code>adam</code>. If it is too large, the loss jumps around (lesson 6).</td></tr>
              <tr><td><code>max_iter</code></td><td><code>200</code></td><td>Maximum number of epochs. Small data often needs more.</td></tr>
              <tr><td><code>early_stopping</code></td><td><code>False</code></td><td>If <code>True</code>, it keeps 10% of training rows aside. It stops when the score on those rows stops improving.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <p>The starter trains logistic regression and three networks on the curved "moons" data (450 training rows, 150 test rows).</p>
          <div class="lc-code">=== One neuron vs small networks (all scaled) ===<br>LogisticRegression  | params    3 | train 0.889 | test 0.853<br>MLP (2,)            | params    9 | train 0.887 | test 0.853 | epochs 505<br>MLP (16,)           | params   65 | train 0.887 | test 0.860 | epochs 245<br>MLP (16, 16)        | params  337 | train 0.958 | test 0.900 | epochs 715<br><br>=== Training loss (log loss + L2 penalty) falls as the network learns (hidden=(16,)) ===<br>epoch    1: training loss 0.878<br>epoch   10: training loss 0.783<br>epoch   50: training loss 0.519<br>epoch  200: training loss 0.282<br>epoch  245: training loss 0.277<br><br>=== A big network: alpha trades training fit for simplicity ===<br>alpha=0.0001 | train 0.958 | test 0.900<br>alpha=1.0    | train 0.933 | test 0.893<br><br>=== Probabilities for new points (hidden=(16,)) ===<br>[0. 1.] -&gt; P(class 1) = 0.014<br>[ 1.  -0.5] -&gt; P(class 1) = 0.966<br>[0.5  0.25] -&gt; P(class 1) = 0.526</div>
          <ul class="lc-list">
            <li>Logistic regression and the tiny <code>(2,)</code> network both stop at 0.853. A boundary that is almost straight cannot follow the moons.</li>
            <li>Two hidden layers of 16 units (337 parameters) bend the boundary. They reach 0.900 on the test set.</li>
            <li>The loss curve (<code>loss_curve_</code>) is the <strong>training loss</strong>. It is log loss plus the L2 penalty, measured on the training rows. It falls fast at first and then becomes flat. Training stopped at epoch 245 because the loss stopped improving.</li>
            <li>The big <code>(100, 100)</code> network with a strong penalty (<code>alpha=1.0</code>) fits the training set less closely (0.958 → 0.933). Its train–test gap gets smaller, from 0.058 to 0.040. But test accuracy does not improve (0.900 → 0.893). A stronger penalty gives a simpler model, not always a better one. Choose <code>alpha</code> with cross-validation.</li>
            <li>The point <code>[0.5, 0.25]</code> is near the boundary, so the model is unsure (0.526).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>When Should You Use a Neural Network?</h3>
          <table class="lc-table">
            <thead><tr><th>Data</th><th>Good first choice</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Small or medium tables (marks, sales, loans)</td><td>Gradient boosting or random forest (lesson 12)</td><td>Little tuning, no scaling, usually as accurate or better</td></tr>
              <tr><td>Tables where you need to explain each weight</td><td>Logistic / linear regression</td><td>A network has thousands of weights, which are hard to explain</td></tr>
              <tr><td>Images, audio, long text</td><td>Deep learning (CNNs, transformers) in PyTorch or Keras</td><td>Needs special layers, big data and a GPU. See the Deep Learning course</td></tr>
              <tr><td>Medium tables with smooth, curved patterns</td><td><code>MLPClassifier</code> / <code>MLPRegressor</code></td><td>Flexible, and works in the same pipelines and <code>GridSearchCV</code></td></tr>
            </tbody>
          </table>
          <p>scikit-learn's MLP runs on the CPU only. It has no convolution or attention layers. Use it to learn the ideas and for small tabular problems.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Skipping scaling</strong>: training with gradients is slow and unstable when one feature is in thousands and another in fractions. Put <code>StandardScaler</code> in the pipeline.</li>
            <li><strong>Ignoring <code>ConvergenceWarning</code></strong>: the network stopped before it finished learning. Raise <code>max_iter</code> (or scale the data) and check <code>n_iter_</code>.</li>
            <li><strong>Starting with a huge network</strong>: <code>(100, 100)</code> has over 10,000 weights for 450 rows. Start small. Make it bigger only if cross-validation improves.</li>
            <li><strong>Expecting a network to beat trees on every table</strong>: on normal tabular data, boosted trees are often better. Compare against them with cross-validation.</li>
            <li><strong>Forgetting <code>random_state</code></strong>: weights start at random values. So each run gives slightly different results unless you fix it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check the parameter count for <code>(16, 16)</code> by hand: 2×16+16, 16×16+16, 16×1+1.</li>
            <li>Remove <code>StandardScaler()</code> from the <code>(16, 16)</code> pipeline. Does anything change on this data? (Both features are already about −1 to 2.) Now multiply <code>X[:, 1]</code> by 1000 before splitting and compare again.</li>
            <li>Set <code>max_iter=20</code> for the <code>(16,)</code> network. What warning appears? What happens to the test score?</li>
            <li>Challenge: tune <code>mlpclassifier__hidden_layer_sizes</code> over <code>[(8,), (16, 16), (32, 32)]</code> and <code>mlpclassifier__alpha</code> over <code>[0.0001, 0.01, 1]</code>. Use <code>GridSearchCV(cv=5)</code> on the training set. Then score the test set once.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A neural network is "logistic regression, repeated and stacked". Everything from this course still applies. Split first. Scale inside a pipeline. Compare with a baseline and a tree ensemble. Tune <code>alpha</code> and the layer sizes with cross-validation. The Deep Learning course builds on exactly this idea.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_moons
        from sklearn.model_selection import train_test_split
        from sklearn.pipeline import make_pipeline
        from sklearn.preprocessing import StandardScaler
        from sklearn.linear_model import LogisticRegression
        from sklearn.neural_network import MLPClassifier

        # Two curved half-moons: a straight line cannot separate them
        X, y = make_moons(n_samples=600, noise=0.25, random_state=0)
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=0, stratify=y)

        def count_params(net):
            return sum(w.size for w in net.coefs_) + sum(b.size for b in net.intercepts_)

        print("=== One neuron vs small networks (all scaled) ===")
        logreg = make_pipeline(StandardScaler(), LogisticRegression()).fit(X_tr, y_tr)
        print(f"LogisticRegression  | params    3 | train {logreg.score(X_tr, y_tr):.3f} | test {logreg.score(X_te, y_te):.3f}")
        for hidden in [(2,), (16,), (16, 16)]:
            pipe = make_pipeline(StandardScaler(),
                                 MLPClassifier(hidden_layer_sizes=hidden, max_iter=2000, random_state=0))
            pipe.fit(X_tr, y_tr)
            net = pipe[-1]
            print(f"MLP {str(hidden):15} | params {count_params(net):4} | train {pipe.score(X_tr, y_tr):.3f}"
                  f" | test {pipe.score(X_te, y_te):.3f} | epochs {net.n_iter_}")

        print("\n=== Training loss (log loss + L2 penalty) falls as the network learns (hidden=(16,)) ===")
        net = MLPClassifier(hidden_layer_sizes=(16,), max_iter=2000, random_state=0)
        model = make_pipeline(StandardScaler(), net).fit(X_tr, y_tr)
        for epoch in [1, 10, 50, 200, net.n_iter_]:
            print(f"epoch {epoch:4}: training loss {net.loss_curve_[epoch - 1]:.3f}")

        print("\n=== A big network: alpha trades training fit for simplicity ===")
        for alpha in [0.0001, 1.0]:
            big = make_pipeline(StandardScaler(),
                                MLPClassifier(hidden_layer_sizes=(100, 100), alpha=alpha,
                                              max_iter=2000, random_state=0)).fit(X_tr, y_tr)
            print(f"alpha={alpha:<6} | train {big.score(X_tr, y_tr):.3f} | test {big.score(X_te, y_te):.3f}")

        print("\n=== Probabilities for new points (hidden=(16,)) ===")
        new = np.array([[0.0, 1.0], [1.0, -0.5], [0.5, 0.25]])
        for point, p in zip(new, model.predict_proba(new)):
            print(f"{point} -> P(class 1) = {p[1]:.3f}")
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">K-Means Clustering</h1>
        </div>
        <p class="lc-lead">K-means is an <strong>unsupervised</strong> algorithm. This means it gets no labels at all. It groups data into <strong>k clusters</strong>, so that points in the same cluster are close to each other. Shops use it to find groups of customers. Farmers can use it to group fields with similar soil.</p>
        <div class="lc-card">
          <h3>The Algorithm</h3>
          <ol class="lc-list">
            <li>Choose <strong>k</strong>, the number of clusters.</li>
            <li>Place k starting <strong>centroids</strong> (cluster centres). scikit-learn uses <em>k-means++</em>. It picks starting points that are well spread out, not fully random ones.</li>
            <li><strong>Assign</strong> every point to its nearest centroid.</li>
            <li><strong>Update</strong> each centroid. Move it to the mean of the points assigned to it.</li>
            <li>Repeat steps 3–4 until the centroids stop moving.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.cluster import KMeans<br><br># [annual_spend_thousands, visits_per_month]<br>km = KMeans(n_clusters=3, n_init=10, random_state=0)<br>labels = km.fit_predict(X)<br>print(km.cluster_centers_)   # the 3 centroids<br>print(km.inertia_)           # total squared distance to centroids</div>
          <p><code>n_init=10</code> runs k-means 10 times from different starting points. It keeps the result with the lowest inertia. k-means always finishes, but it can get stuck in a poor solution. So several restarts help.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing k: The Elbow Method</h3>
          <p><strong>Inertia</strong> (the total squared distance from points to their centroids) always falls as k grows. When k equals the number of points, it becomes 0. Plot inertia for k = 1, 2, 3… Look for the "elbow", where the drop suddenly becomes small.</p>
          <table class="lc-table">
            <thead><tr><th>k</th><th>Inertia (starter output)</th><th>Drop</th><th>Silhouette</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>600.0</td><td>n/a</td><td>n/a</td></tr>
              <tr><td>2</td><td>347.3</td><td>253</td><td>0.417</td></tr>
              <tr><td>3</td><td>187.7</td><td>160</td><td><strong>0.495</strong></td></tr>
              <tr><td>4</td><td>135.0</td><td>53 ← drops become small: elbow at k = 3</td><td>0.466</td></tr>
              <tr><td>5</td><td>109.0</td><td>26</td><td>0.457</td></tr>
              <tr><td>6</td><td>88.1</td><td>21</td><td>0.455</td></tr>
            </tbody>
          </table>
          <p>The <strong>silhouette score</strong> goes from −1 to 1. Higher is better. It measures how much closer each point is to its own cluster than to the next nearest cluster. It is not defined for k = 1. Here, both methods agree on k = 3. (There are 300 points and 2 features, scaled to mean 0 and std 1. So the k = 1 inertia is exactly 300 × 2 = 600.)</p>
        </div>
        <div class="lc-card">
          <h3>Describing the Clusters</h3>
          <p>Next, the starter fits k = 3. It averages each cluster in <strong>original units</strong>:</p>
          <div class="lc-code">Cluster sizes: [ 74 156  70]<br>  Cluster 0: avg spend Rs 118.0k, avg visits  2.5/month<br>  Cluster 1: avg spend Rs  33.8k, avg visits  2.8/month<br>  Cluster 2: avg spend Rs  82.3k, avg visits  8.3/month<br><br>New customer (Rs 100k spend, 3 visits) -&gt; cluster 0</div>
          <p>Now we can name them: 0 = "big spenders, rare visits", 1 = "budget occasional shoppers", 2 = "loyal frequent visitors". There is no test set here, because there are no labels to test against. The scaler is fitted on all the data. You judge the clusters by how useful and stable they are.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Not scaling</strong>: k-means uses distances. So a feature in rupees will be much bigger than a feature in visits and will control the result.</li>
            <li><strong>Thinking cluster numbers have a meaning</strong>: "cluster 0" is just a name. Run again with a different seed, and it may be "cluster 2".</li>
            <li><strong>Expecting any shape</strong>: k-means finds round blobs of similar size. It has trouble with long or curved groups. DBSCAN or hierarchical clustering can do better there.</li>
            <li><strong>Choosing k by inertia alone</strong>: inertia always falls as k grows. So "lowest inertia" would always pick the largest k.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that the elbow and the best silhouette both point to k = 3.</li>
            <li>Change the chosen <code>n_clusters=3</code> to <code>4</code>. Which cluster is split in two? Do the four groups still make sense for the business?</li>
            <li>Remove scaling. In the final <code>KMeans(...).fit(Xs)</code> line, replace <code>Xs</code> with <code>X</code>. Comment out the last two lines. Look at the new cluster profiles. Which feature now decides the clusters, and why?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After clustering, look at each centroid. Describe each cluster in plain words, for example "high spend, few visits = premium occasional buyers". The business actually uses this description.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_blobs
        from sklearn.cluster import KMeans
        from sklearn.preprocessing import StandardScaler
        from sklearn.metrics import silhouette_score
        import warnings
        warnings.filterwarnings("ignore", message="JsProxy")  # hide a harmless browser-runtime message

        # Customers: [annual_spend_thousand_rupees, visits_per_month]
        X, _ = make_blobs(n_samples=300, centers=[[20, 2], [60, 10], [120, 4]],
                          cluster_std=[6, 8, 10], random_state=0)
        X[:, 1] = np.abs(X[:, 1] / 2)        # make visits realistic
        print("First 3 customers:\n", X[:3].round(1))

        scaler = StandardScaler().fit(X)
        Xs = scaler.transform(X)

        # Elbow method + silhouette score
        print("\n k | inertia | silhouette")
        for k in range(1, 7):
            km = KMeans(n_clusters=k, n_init=10, random_state=0).fit(Xs)
            sil = silhouette_score(Xs, km.labels_) if k > 1 else float("nan")
            print(f"{k:2d} | {km.inertia_:7.1f} | {sil:.3f}")

        # Fit the chosen k = 3
        km = KMeans(n_clusters=3, n_init=10, random_state=0).fit(Xs)
        print("\nCluster sizes:", np.bincount(km.labels_))
        print("Cluster profiles (original units):")
        for c in range(3):
            members = X[km.labels_ == c]
            spend, visits = members.mean(axis=0)
            print(f"  Cluster {c}: avg spend Rs {spend:5.1f}k, avg visits {visits:4.1f}/month")

        # Put a new customer into a group
        new = scaler.transform([[100, 3]])
        print("\nNew customer (Rs 100k spend, 3 visits) -> cluster", km.predict(new)[0])
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Principal Component Analysis (PCA)</h1>
        </div>
        <p class="lc-lead">Real datasets can have dozens or hundreds of features. Many of them overlap. <strong>PCA</strong> compresses the data into a few new features, called <strong>principal components</strong>. These keep as much of the original information (variance, or how spread out the data is) as possible.</p>
        <div class="lc-card">
          <h3>The Basic Idea</h3>
          <p>Think of a student's marks in Physics, Chemistry and Maths. They are strongly related. A student who is good in one is often good in the others. One combined "science ability" score holds most of the information in all three. PCA finds such combined directions automatically.</p>
          <ul class="lc-list">
            <li><strong>PC1</strong>: the direction in which the data varies the most.</li>
            <li><strong>PC2</strong>: the next most varied direction, at right angles to PC1.</li>
            <li>…and so on. Each component is a weighted mix of the original features.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.decomposition import PCA<br>from sklearn.preprocessing import StandardScaler<br><br>X = load_wine().data                           # 178 wines, 13 features<br>X_scaled = StandardScaler().fit_transform(X)   # scale first<br>pca = PCA(n_components=2)<br>X_2d = pca.fit_transform(X_scaled)<br>print(X.shape, "-&gt;", X_2d.shape)<br>print(pca.explained_variance_ratio_.round(3))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">(178, 13) -&gt; (178, 2)<br>[0.362 0.192]</div>
          <p>Two components keep 36.2% + 19.2% = 55.4% of the total variance of 13 features.</p>
          <p><code>explained_variance_ratio_</code> tells you what part of the total information each component keeps. You can also pass <code>PCA(n_components=0.95)</code>. This keeps enough components for 95% of the variance.</p>
        </div>
        <div class="lc-card">
          <h3>When to Use PCA</h3>
          <table class="lc-table">
            <thead><tr><th>Use case</th><th>Why PCA helps</th></tr></thead>
            <tbody>
              <tr><td>Visualisation</td><td>Reduce 13 features to 2 so you can plot the data</td></tr>
              <tr><td>Speed</td><td>Fewer features means faster training</td></tr>
              <tr><td>Noise reduction</td><td>Small components often contain mostly noise</td></tr>
              <tr><td>Correlated features</td><td>Combines overlapping features into features that are not correlated</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Scaling and "How Many Components?"</h3>
          <div class="lc-code">Unscaled variance ratio: [0.998 0.002]<br>  PC1 is mostly: proline<br><br>Scaled - variance kept by first k components:<br>  k= 1: 0.362<br>  k= 2: 0.554<br>  k= 5: 0.802<br>  k= 8: 0.920<br>Components needed for 95%: 10<br>Accuracy with  2 components: 0.955<br>Accuracy with  5 components: 0.978<br>Accuracy with 13 components: 0.983</div>
          <ul class="lc-list">
            <li>Without scaling, PC1 "explains" 99.8% of the variance. This is only because proline is measured in the hundreds to over a thousand. The other features are below 10. This comes from the units, not from real information.</li>
            <li>After scaling, you need 10 of 13 components to keep 95% of the variance.</li>
            <li>But a classifier on just 2 components still reaches 0.955 cross-validated accuracy (vs 0.983 with all 13). The first components hold most of what separates the three wine classes. This is a lucky case. PCA ignores labels, so it does not always keep the directions that best predict the label.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Not scaling first</strong>: a feature in large units (like proline in wine, ~1000) controls PC1 only because of its scale.</li>
            <li><strong>Thinking PCA uses labels</strong>: it is unsupervised. It only looks at X. The components with the most variance are not always the most useful for prediction.</li>
            <li><strong>Expecting easy-to-read features</strong>: PC1 is a mix of all features. So it is harder to explain than "rainfall" or "area".</li>
            <li>Fitting PCA on the full dataset before splitting. Put it in a Pipeline instead (the starter's accuracy check does this).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Find how much variance 3 components keep.</li>
            <li>Change the list in the last loop to <code>[1, 2, 3]</code>. How much accuracy do you lose with only 1 component?</li>
            <li>Print <code>pca.components_[0].round(2)</code> after fitting on scaled data. Which features have the largest (positive or negative) weights in PC1?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Check the running total <code>np.cumsum(pca.explained_variance_ratio_)</code>. It helps you decide how many components are "enough" for your problem.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_wine
        from sklearn.decomposition import PCA
        from sklearn.preprocessing import StandardScaler
        from sklearn.pipeline import make_pipeline
        from sklearn.linear_model import LogisticRegression
        from sklearn.model_selection import cross_val_score

        data = load_wine()
        X, y = data.data, data.target
        print("Original shape:", X.shape)

        # Without scaling, one big feature controls the result
        raw = PCA(n_components=2).fit(X)
        print("Unscaled variance ratio:", raw.explained_variance_ratio_.round(3))
        top = np.argmax(np.abs(raw.components_[0]))
        print("  PC1 is mostly:", data.feature_names[top])

        # With scaling
        Xs = StandardScaler().fit_transform(X)
        pca = PCA().fit(Xs)
        cum = np.cumsum(pca.explained_variance_ratio_)
        print("\nScaled - variance kept by first k components:")
        for k in [1, 2, 3, 5, 8, 13]:
            print(f"  k={k:2d}: {cum[k - 1]:.3f}")
        print("Components needed for 95%:", int(np.argmax(cum >= 0.95)) + 1)

        # Data reduced to 2D: the class centres are far apart
        X2 = PCA(n_components=2).fit_transform(Xs)
        for c in range(3):
            print(f"Class {c} centre in PC space: {X2[y == c].mean(axis=0).round(2)}")

        # Does reducing to 2 components hurt accuracy?
        for k in [2, 5, 13]:
            pipe = make_pipeline(StandardScaler(), PCA(n_components=k), LogisticRegression(max_iter=1000))
            print(f"Accuracy with {k:2d} components: {cross_val_score(pipe, X, y, cv=5).mean():.3f}")
      PYTHON
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">End-to-End Project and Review</h1>
        </div>
        <p class="lc-lead">Now it is time to put everything together. In this lesson, we build a complete ML project with no leakage, from raw data to a final test score. We also review the key ideas from the whole course.</p>
        <div class="lc-card">
          <h3>The Project Checklist</h3>
          <ol class="lc-list">
            <li><strong>Define the problem</strong>: classify tumours as malignant or benign. Recall on malignant matters most.</li>
            <li><strong>Look at the data</strong>: shape, class balance, missing values.</li>
            <li><strong>Split once</strong>: keep aside a stratified test set and do not touch it.</li>
            <li><strong>Baseline</strong>: a <code>DummyClassifier</code> tells you the score to beat.</li>
            <li><strong>Pipelines</strong>: scaling + model in one object.</li>
            <li><strong>Compare and tune with cross-validation</strong> on the training set only.</li>
            <li><strong>Final evaluation</strong>: test set, confusion matrix, classification report.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Core Code Pattern</h3>
          <div class="lc-code">X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, stratify=y, random_state=42)<br><br>pipe = Pipeline([("scale", StandardScaler()), ("model", LogisticRegression(max_iter=1000))])<br>grid = GridSearchCV(pipe, {"model__C": [0.01, 0.1, 1, 10]}, cv=5, scoring="recall")<br>grid.fit(X_tr, y_tr)<br><br>print(classification_report(y_te, grid.predict(X_te)))</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: The Project's Output</h3>
          <div class="lc-code">Shape: (569, 30) | Malignant share: 0.373<br>Missing values: 0<br>Baseline test accuracy: 0.632<br>LogReg: best {'model__C': 1} CV recall=0.959<br>Forest: best {'model__max_depth': None, 'model__n_estimators': 100} CV recall=0.935<br><br>Chosen model: LogReg<br>Confusion matrix [[TN FP] [FN TP]]:<br> [[71  1]<br> [ 3 39]]<br>              precision    recall  f1-score   support<br>      benign       0.96      0.99      0.97        72<br>   malignant       0.97      0.93      0.95        42<br>    accuracy                           0.96       114</div>
          <p>How to write this up for a report or viva:</p>
          <ul class="lc-list">
            <li><strong>Baseline:</strong> always predicting "benign" scores 0.632. So accuracy alone is not impressive here.</li>
            <li><strong>Model choice:</strong> scaled logistic regression (C = 1) had the best cross-validated recall (0.959) on the training set. The forest reached 0.935.</li>
            <li><strong>Final test result (used once):</strong> it caught 39 of 42 malignant tumours (recall 0.93). It gave 1 false alarm among 72 benign cases.</li>
            <li><strong>Honest limitation:</strong> 3 cancers were missed. In a real screening tool, you would next lower the decision threshold (lesson 9), chosen with cross-validation. You would also study those 3 cases.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Course Review: Choosing a Model</h3>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Lesson</th><th>Task</th><th>Needs scaling?</th><th>Key setting</th></tr></thead>
            <tbody>
              <tr><td>Linear Regression (Ridge/Lasso)</td><td>5, 13</td><td>Regression</td><td>For regularisation</td><td>alpha (Ridge/Lasso)</td></tr>
              <tr><td>Logistic Regression</td><td>8</td><td>Classification</td><td>Yes</td><td>C</td></tr>
              <tr><td>k-NN</td><td>10</td><td>Both</td><td>Yes</td><td>n_neighbors</td></tr>
              <tr><td>Decision Tree</td><td>11</td><td>Both</td><td>No</td><td>max_depth</td></tr>
              <tr><td>Random Forest</td><td>12</td><td>Both</td><td>No</td><td>n_estimators, max_depth</td></tr>
              <tr><td>Gradient Boosting</td><td>12</td><td>Both</td><td>No</td><td>learning_rate, max_iter</td></tr>
              <tr><td>SVM (SVC / SVR)</td><td>17</td><td>Both</td><td>Yes</td><td>C, gamma, kernel</td></tr>
              <tr><td>Naive Bayes</td><td>17</td><td>Classification</td><td>No</td><td>alpha (smoothing)</td></tr>
              <tr><td>Neural Network (MLP)</td><td>18</td><td>Both</td><td>Yes</td><td>hidden_layer_sizes, alpha</td></tr>
              <tr><td>K-Means</td><td>19</td><td>Clustering</td><td>Yes</td><td>n_clusters</td></tr>
              <tr><td>PCA</td><td>20</td><td>Reducing the number of features</td><td>Yes</td><td>n_components</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Ten Rules to Remember</h3>
          <ul class="lc-list">
            <li>Split before you do anything else. Use the test set only once.</li>
            <li>Always compare against a simple baseline.</li>
            <li>Watch the gap between training and test scores.</li>
            <li>Pick metrics that match the real cost of mistakes.</li>
            <li>Scale features for models that use distances or gradients.</li>
            <li>One-hot encode categories that have no order.</li>
            <li>Put preprocessing inside a Pipeline to avoid leakage.</li>
            <li>Tune with cross-validation, not with the test set.</li>
            <li>Fix <code>random_state</code> so you get the same results every run.</li>
            <li>Good data is more important than a fancy algorithm.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Final-Project Mistakes</h3>
          <ul class="lc-list">
            <li>Running on the test set many times and reporting the best result as "the" accuracy.</li>
            <li>Showing only accuracy on an imbalanced problem (where one class is much more common).</li>
            <li>Not explaining the model's errors. Look at the false negatives and ask why.</li>
            <li>Tuning only for recall without checking precision. A model that calls <em>everyone</em> malignant has recall 1.0. Always read the full classification report.</li>
            <li>Keeping the fitted scaler and model as separate objects. Save the whole fitted pipeline (for example <code>joblib.dump(best_grid.best_estimator_, "model.joblib")</code>). Then you can load it later and use it on raw data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it: Extend the Project</h3>
          <ol class="lc-list">
            <li>Run the starter. Write the four-line report above in your own words.</li>
            <li>Add a third candidate: <code>"KNN": (Pipeline([("scale", StandardScaler()), ("model", KNeighborsClassifier())]), {"model__n_neighbors": [3, 7, 15]})</code>. (Import <code>KNeighborsClassifier</code> from <code>sklearn.neighbors</code>.) Does it beat logistic regression on CV recall?</li>
            <li>Change <code>scoring="recall"</code> to <code>scoring="f1"</code>. Does the chosen model or its best setting change?</li>
            <li>Challenge: do the whole workflow again for regression on <code>load_diabetes</code>. Use <code>DummyRegressor</code> as the baseline and <code>scoring="neg_root_mean_squared_error"</code>.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next steps:</strong> Here are topics to explore after this course: probability calibration (<code>CalibratedClassifierCV</code>), tools that explain models (permutation importance, SHAP), and watching models after deployment. Then move on to the Deep Learning course. It grows the small networks of lesson 18 into deep models for images and text.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_breast_cancer
        from sklearn.model_selection import train_test_split, GridSearchCV, StratifiedKFold
        from sklearn.pipeline import Pipeline
        from sklearn.preprocessing import StandardScaler
        from sklearn.dummy import DummyClassifier
        from sklearn.linear_model import LogisticRegression
        from sklearn.ensemble import RandomForestClassifier
        from sklearn.metrics import confusion_matrix, classification_report

        # 1-2. Data: change the labels so 1 = malignant (the class we must catch)
        data = load_breast_cancer()
        X, y = data.data, 1 - data.target
        print("Shape:", X.shape, "| Malignant share:", round(y.mean(), 3))
        print("Missing values:", int(np.isnan(X).sum()))

        # 3. Split once
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, random_state=42, stratify=y)

        # 4. Baseline
        base = DummyClassifier(strategy="most_frequent").fit(X_tr, y_tr)
        print("Baseline test accuracy:", round(base.score(X_te, y_te), 3))

        # 5-6. Compare tuned pipelines using cross-validated recall
        cv = StratifiedKFold(n_splits=5, shuffle=True, random_state=0)
        candidates = {
            "LogReg": (Pipeline([("scale", StandardScaler()), ("model", LogisticRegression(max_iter=2000))]),
                       {"model__C": [0.01, 0.1, 1, 10]}),
            "Forest": (Pipeline([("model", RandomForestClassifier(random_state=0))]),
                       {"model__n_estimators": [100], "model__max_depth": [4, None]}),
        }
        best_name, best_grid = None, None
        for name, (pipe, params) in candidates.items():
            grid = GridSearchCV(pipe, params, cv=cv, scoring="recall").fit(X_tr, y_tr)
            print(f"{name}: best {grid.best_params_} CV recall={grid.best_score_:.3f}")
            if best_grid is None or grid.best_score_ > best_grid.best_score_:
                best_name, best_grid = name, grid

        # 7. Final check on the test set that we have not touched yet
        pred = best_grid.predict(X_te)
        print(f"\nChosen model: {best_name}")
        print("Confusion matrix [[TN FP] [FN TP]]:\n", confusion_matrix(y_te, pred))
        print(classification_report(y_te, pred, target_names=["benign", "malignant"]))
      PYTHON
    }
  }
end

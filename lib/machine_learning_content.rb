module MachineLearningContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">What is Machine Learning?</h1>
        </div>
        <p class="lc-lead">Machine Learning (ML) is a way of building programs that <strong>learn rules from examples</strong> instead of being told the rules by a programmer. You show the computer data with answers, and it finds the pattern by itself.</p>
        <div class="lc-card">
          <h3>Rules vs Learning</h3>
          <p>In normal programming, <em>you</em> write the rules. In ML, the computer figures out the rules from data.</p>
          <ul class="lc-list">
            <li><strong>Traditional programming:</strong> Rules + Data → Answers</li>
            <li><strong>Machine Learning:</strong> Data + Answers → Rules (a <em>model</em>)</li>
            <li>Once the model is learned, you give it <strong>new data</strong> and it predicts the answer.</li>
          </ul>
          <p>Example: a teacher wants to predict pass or fail from hours studied. Instead of guessing "pass if more than 4 hours", we give the computer past students' records and let it learn the best cut-off.</p>
        </div>
        <div class="lc-card">
          <h3>Where You Already See ML</h3>
          <ul class="lc-list">
            <li><strong>UPI / bank apps</strong> — flagging unusual, possibly fraudulent payments</li>
            <li><strong>YouTube and Netflix</strong> — recommending the next video</li>
            <li><strong>Gmail</strong> — moving spam to the spam folder</li>
            <li><strong>Google Maps</strong> — predicting travel time in traffic</li>
            <li><strong>Agriculture</strong> — predicting crop yield from rainfall and soil data</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>A First Model in scikit-learn</h3>
          <p>scikit-learn is Python's most popular ML library. Every model follows the same three steps: create, <code>fit</code>, <code>predict</code>.</p>
          <div class="lc-code">from sklearn.linear_model import LogisticRegression<br><br>hours  = [[1], [2], [3], [4], [5], [6], [7], [8]]   # input (feature)<br>result = [0, 0, 0, 0, 1, 1, 1, 1]                   # answer: 0 = fail, 1 = pass<br><br>model = LogisticRegression()<br>model.fit(hours, result)          # learn the pattern<br>print(model.predict([[2.5], [6.5]]))   # [0 1]</div>
          <p>We never wrote "if hours &gt; 4.5". The model learned that boundary from the examples.</p>
        </div>
        <div class="lc-card">
          <h3>When Should You Use ML?</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Use ML?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Convert Celsius to Fahrenheit</td><td>No</td><td>The exact formula is known</td></tr>
              <tr><td>Add 18% GST to a bill</td><td>No</td><td>A fixed rule works perfectly</td></tr>
              <tr><td>Predict house price in lakhs</td><td>Yes</td><td>Many factors, no exact formula</td></tr>
              <tr><td>Detect spam emails</td><td>Yes</td><td>Patterns change and are hard to write by hand</td></tr>
              <tr><td>Recognise handwritten digits</td><td>Yes</td><td>Writing rules for every handwriting style is impossible</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Beginner Mistakes</h3>
          <ul class="lc-list">
            <li>Thinking ML is magic — a model only knows what is in its data.</li>
            <li>Using ML when a simple formula or rule would do the job.</li>
            <li>Expecting 100% accuracy — real-world predictions always have some error.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Remember the core idea: <em>a model is a function learned from data</em>. Everything in this course — regression, trees, clustering — is a different way of learning that function.
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
        <p class="lc-lead">ML problems fall into three big families. The key question is simple: <strong>do you have the correct answers (labels) for your training data?</strong></p>
        <div class="lc-card">
          <h3>The Three Types</h3>
          <ul class="lc-list">
            <li><strong>Supervised learning</strong> — every example has a label. The model learns input → answer. Like a student practising with an answer key.</li>
            <li><strong>Unsupervised learning</strong> — no labels. The model finds groups or structure on its own. Like sorting a pile of mixed coins without being told the values.</li>
            <li><strong>Reinforcement learning</strong> — an agent tries actions and gets rewards or penalties. Like learning to play a game by trial and error.</li>
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
          <p>Tip to remember: if the answer is "how much?" it is regression; if it is "which one?" it is classification.</p>
        </div>
        <div class="lc-card">
          <h3>Same Data, Two Approaches</h3>
          <p>The Iris dataset has 150 flowers with 4 measurements and a species label. We can use it both ways:</p>
          <div class="lc-code">from sklearn.datasets import load_iris<br>from sklearn.tree import DecisionTreeClassifier<br>from sklearn.cluster import KMeans<br><br>X, y = load_iris(return_X_y=True)<br><br># Supervised: we GIVE the labels y<br>clf = DecisionTreeClassifier().fit(X, y)<br><br># Unsupervised: only X, no labels at all<br>km = KMeans(n_clusters=3, n_init=10, random_state=0).fit(X)<br>print(km.labels_[:10])   # group numbers the model invented</div>
        </div>
        <div class="lc-card">
          <h3>Which Type Is It?</h3>
          <table class="lc-table">
            <thead><tr><th>Problem</th><th>Type</th></tr></thead>
            <tbody>
              <tr><td>Predict a student's percentage from study hours</td><td>Supervised — regression</td></tr>
              <tr><td>Detect whether a tumour is malignant</td><td>Supervised — classification</td></tr>
              <tr><td>Group shoppers by buying habits (no labels)</td><td>Unsupervised — clustering</td></tr>
              <tr><td>Teach a robot to walk using rewards</td><td>Reinforcement learning</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling clustering "classification" — clustering has no labels, so the group numbers have no fixed meaning.</li>
            <li>Treating a category stored as a number (like PIN code) as a regression target.</li>
            <li>Assuming unsupervised learning is "worse" — it simply answers a different question.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Most real business ML is supervised learning. We will spend lessons 5–17 on it, then cover unsupervised learning (k-means, PCA) in lessons 18–19.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        from sklearn.datasets import load_iris
        from sklearn.tree import DecisionTreeClassifier
        from sklearn.cluster import KMeans
        import numpy as np

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
          <h1 class="lc-title">The ML Workflow</h1>
        </div>
        <p class="lc-lead">Every ML project, from a college assignment to a production system, follows the same set of steps. Learning this workflow early saves you from the most common mistakes.</p>
        <div class="lc-card">
          <h3>The Seven Steps</h3>
          <ol class="lc-list">
            <li><strong>Define the problem</strong> — What exactly are we predicting? Regression or classification?</li>
            <li><strong>Collect data</strong> — Past records with the answers you want to predict.</li>
            <li><strong>Explore and clean</strong> — Look for missing values, wrong entries, outliers.</li>
            <li><strong>Split</strong> — Keep a test set aside that the model never sees during training.</li>
            <li><strong>Prepare features</strong> — Scale numbers, encode categories.</li>
            <li><strong>Train and tune</strong> — Fit models, compare them, pick settings.</li>
            <li><strong>Evaluate and deploy</strong> — Measure on the test set once, then use the model.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>The Workflow in Code</h3>
          <div class="lc-code">from sklearn.datasets import load_wine<br>from sklearn.model_selection import train_test_split<br>from sklearn.preprocessing import StandardScaler<br>from sklearn.linear_model import LogisticRegression<br><br>X, y = load_wine(return_X_y=True)                       # 2. data<br>X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=42)  # 4. split<br>scaler = StandardScaler().fit(X_tr)                     # 5. prepare<br>model = LogisticRegression(max_iter=1000)<br>model.fit(scaler.transform(X_tr), y_tr)                 # 6. train<br>print(model.score(scaler.transform(X_te), y_te))        # 7. evaluate</div>
        </div>
        <div class="lc-card">
          <h3>Where Time Actually Goes</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Typical share of effort</th></tr></thead>
            <tbody>
              <tr><td>Problem definition and data collection</td><td>~20%</td></tr>
              <tr><td>Cleaning and feature preparation</td><td>~50%</td></tr>
              <tr><td>Training and tuning models</td><td>~20%</td></tr>
              <tr><td>Evaluation and deployment</td><td>~10%</td></tr>
            </tbody>
          </table>
          <p>Beginners think ML is mostly about algorithms. In practice, most of the work is getting good data.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Peeking at the test set</strong> — tuning your model on test data makes the final score dishonestly high.</li>
            <li><strong>Scaling before splitting</strong> — the scaler learns from test rows, which leaks information.</li>
            <li><strong>No baseline</strong> — always compare with a dumb model (e.g. "always predict the most common class").</li>
            <li><strong>Vague goal</strong> — "use AI on sales data" is not a problem; "predict next month's sales per shop" is.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Think of the test set like the final board exam paper. You may practise with sample papers (training and validation data) as much as you like, but you only sit the final exam once.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        from sklearn.datasets import load_wine
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import StandardScaler
        from sklearn.linear_model import LogisticRegression
        from sklearn.dummy import DummyClassifier

        # Step 1: Problem - predict which of 3 cultivars a wine comes from
        # Step 2: Collect data
        X, y = load_wine(return_X_y=True)
        print("Step 2 | Samples:", X.shape[0], "Features:", X.shape[1])

        # Step 4: Split BEFORE doing anything else with the data
        X_tr, X_te, y_tr, y_te = train_test_split(
            X, y, test_size=0.25, random_state=42, stratify=y)
        print("Step 4 | Train:", len(X_tr), "Test:", len(X_te))

        # Step 5: Prepare features (fit scaler on TRAIN only)
        scaler = StandardScaler().fit(X_tr)
        X_tr_s, X_te_s = scaler.transform(X_tr), scaler.transform(X_te)
        print("Step 5 | Scaled feature 0 mean on train:", round(X_tr_s[:, 0].mean(), 3))

        # Step 6: Train a baseline and a real model
        baseline = DummyClassifier(strategy="most_frequent").fit(X_tr_s, y_tr)
        model = LogisticRegression(max_iter=1000).fit(X_tr_s, y_tr)

        # Step 7: Evaluate once on the test set
        print("Step 7 | Baseline accuracy:", round(baseline.score(X_te_s, y_te), 3))
        print("Step 7 | Model accuracy:   ", round(model.score(X_te_s, y_te), 3))

        # Use the model on a "new" wine
        new_wine = X_te[:1]
        print("Prediction for a new wine: class", model.predict(scaler.transform(new_wine))[0])
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Datasets, Features and Labels</h1>
        </div>
        <p class="lc-lead">A dataset is a table. Each <strong>row</strong> is one example (a house, a student, a match). Each <strong>column</strong> is either a <strong>feature</strong> (an input) or the <strong>label</strong> (the answer we want to predict).</p>
        <div class="lc-card">
          <h3>Key Vocabulary</h3>
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
          <div class="lc-code">import pandas as pd<br><br>df = pd.DataFrame({<br>    "area_sqft": [850, 1200, 1500, 950],<br>    "bedrooms":  [2, 3, 3, 2],<br>    "city":      ["Pune", "Bengaluru", "Pune", "Chennai"],<br>    "price_lakh":[48, 95, 88, 60],<br>})<br>X = df.drop(columns="price_lakh")   # features<br>y = df["price_lakh"]                # label<br>print(X.shape, y.shape)             # (4, 3) (4,)</div>
        </div>
        <div class="lc-card">
          <h3>Types of Features</h3>
          <ul class="lc-list">
            <li><strong>Numerical</strong> — area, marks, rainfall in mm. Models can use them directly.</li>
            <li><strong>Categorical</strong> — city, crop type, gender. Must be converted to numbers (lesson 16).</li>
            <li><strong>Ordinal</strong> — categories with order: "low / medium / high", school grade.</li>
            <li><strong>Boolean</strong> — has_parking, is_weekend. Stored as 0 / 1.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Check Your Data First</h3>
          <p>Before training, always run a quick health check:</p>
          <div class="lc-code">df.info()            # column types and non-null counts<br>df.describe()        # min, max, mean of numeric columns<br>df.isna().sum()      # missing values per column<br>df["city"].value_counts()   # category counts</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Leaving the label inside X</strong> — the model "cheats" and gets perfect but useless scores.</li>
            <li><strong>Using an ID column as a feature</strong> — roll numbers or house IDs carry no real pattern.</li>
            <li><strong>Features that are only known after the fact</strong> — e.g. using "final match result" to predict the toss winner. This is called <em>data leakage</em>.</li>
            <li>Passing a 1D list as X — scikit-learn wants 2D: use <code>[[5], [6]]</code>, not <code>[5, 6]</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Ask of every feature: "Would I actually know this value at the moment I need to make the prediction?" If not, remove it.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd
        import numpy as np

        # A small dataset of flats (price in lakhs)
        df = pd.DataFrame({
            "flat_id":    [101, 102, 103, 104, 105, 106, 107, 108],
            "area_sqft":  [650, 850, 1200, 1500, 950, 1100, np.nan, 1800],
            "bedrooms":   [1, 2, 3, 3, 2, 2, 3, 4],
            "city":       ["Pune", "Pune", "Bengaluru", "Pune",
                           "Chennai", "Chennai", "Bengaluru", "Bengaluru"],
            "parking":    [0, 1, 1, 1, 0, 1, 1, 1],
            "price_lakh": [38, 50, 95, 88, 55, 68, 92, 150],
        })
        print("Full dataset:")
        print(df, "\n")

        # Health check
        print("Missing values per column:")
        print(df.isna().sum(), "\n")
        print("City counts:")
        print(df["city"].value_counts(), "\n")

        # Fill the missing area with the median area
        df["area_sqft"] = df["area_sqft"].fillna(df["area_sqft"].median())

        # Separate features (X) and label (y); drop the useless ID column
        X = df.drop(columns=["flat_id", "price_lakh"])
        y = df["price_lakh"]
        print("X shape:", X.shape, "| y shape:", y.shape)
        print("Numeric features:", list(X.select_dtypes("number").columns))
        print("Categorical features:", list(X.select_dtypes("object").columns))
        print("\nAverage price per city (lakhs):")
        print(df.groupby("city")["price_lakh"].mean().round(1))
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Train/Test Split</h1>
        </div>
        <p class="lc-lead">A model that only remembers its training data is useless. To know how it will do on <strong>new, unseen data</strong>, we hide part of the data during training and test on it later.</p>
        <div class="lc-card">
          <h3>Why Split?</h3>
          <p>Imagine a teacher gives the exact same questions in the exam as in the practice sheet. A student who memorised answers scores 100% but may understand nothing. The test set is the <em>new</em> exam paper.</p>
          <ul class="lc-list">
            <li><strong>Training set</strong> (usually 70–80%) — the model learns from this.</li>
            <li><strong>Test set</strong> (usually 20–30%) — used once, at the end, to measure real performance.</li>
            <li><strong>Validation set</strong> (optional) — carved from training data to compare models and settings.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>train_test_split</h3>
          <div class="lc-code">from sklearn.model_selection import train_test_split<br><br>X_train, X_test, y_train, y_test = train_test_split(<br>    X, y,<br>    test_size=0.2,      # 20% for testing<br>    random_state=42,    # same split every run<br>    stratify=y          # keep class proportions (classification)<br>)</div>
          <p>The order of the four returned values is always: <code>X_train, X_test, y_train, y_test</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Important Parameters</h3>
          <table class="lc-table">
            <thead><tr><th>Parameter</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td>test_size</td><td>Fraction (0.2) or count (30) of rows for the test set</td></tr>
              <tr><td>random_state</td><td>Fixes the shuffle so results are reproducible</td></tr>
              <tr><td>shuffle</td><td>True by default; set False for time-ordered data</td></tr>
              <tr><td>stratify</td><td>Keeps the same class ratio in train and test</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Evaluating on training data</strong> — gives an over-optimistic score.</li>
            <li><strong>Shuffling time-series data</strong> — predicting 2023 sales using rows from 2024 is cheating. Split by date instead.</li>
            <li><strong>No stratify on imbalanced data</strong> — if only 5% of emails are spam, a random split may put almost no spam in the test set.</li>
            <li><strong>Tiny test sets</strong> — 5 test rows give a very noisy score.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A big gap between training score and test score is your first warning sign of <em>overfitting</em>. We will study it properly in lesson 14.
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

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Linear Regression</h1>
        </div>
        <p class="lc-lead">Linear regression predicts a <strong>number</strong> by fitting a straight line (or flat plane) through the data. It is the simplest ML model and the best place to start understanding how models learn.</p>
        <div class="lc-card">
          <h3>The Idea</h3>
          <p>With one feature, the model is the school formula of a line:</p>
          <div class="lc-code">price = w × area + b</div>
          <ul class="lc-list">
            <li><strong>w (weight / slope / coefficient)</strong> — how much the price rises for each extra unit of area.</li>
            <li><strong>b (bias / intercept)</strong> — the base price when the feature is 0.</li>
            <li>With many features: <code>price = w1×area + w2×bedrooms + w3×age + b</code>.</li>
          </ul>
          <p>"Training" means finding the <code>w</code> and <code>b</code> that make the line pass as close as possible to all points — the line with the smallest <strong>squared error</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Flat Prices</h3>
          <div class="lc-code">from sklearn.linear_model import LinearRegression<br><br>area  = [[600], [800], [1000], [1200], [1500]]   # sq ft<br>price = [35, 46, 55, 66, 82]                     # lakhs<br><br>model = LinearRegression().fit(area, price)<br>print(model.coef_[0])        # ~0.052 lakh per sq ft<br>print(model.intercept_)      # ~3.9 lakhs<br>print(model.predict([[1100]]))   # ~61 lakhs</div>
          <p>Read it as: every extra 100 sq ft adds about ₹5.2 lakhs.</p>
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
          <p>Coefficients can only be compared fairly when features are on the same scale (see lesson 16).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Predicting far outside the data</strong> — a line fitted on 600–1500 sq ft flats may be wrong for a 10,000 sq ft villa.</li>
            <li><strong>Assuming a straight line fits everything</strong> — crop yield rises with fertiliser, then falls if you add too much. That curve is not linear.</li>
            <li><strong>Outliers</strong> — one wrongly entered price (e.g. 950 instead of 95) can pull the whole line.</li>
            <li>Using linear regression for yes/no answers — use logistic regression (lesson 9) instead.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always start a regression problem with <code>LinearRegression</code>. It is fast, easy to explain, and gives you a baseline that fancier models must beat.
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

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Gradient Descent from Scratch</h1>
        </div>
        <p class="lc-lead">How does a model actually <em>find</em> the best weights? Most ML models use <strong>gradient descent</strong>: start with a guess, measure the error, and nudge the weights a little in the direction that reduces the error. Repeat.</p>
        <div class="lc-card">
          <h3>The Intuition</h3>
          <p>Imagine you are on a foggy hill and want to reach the lowest point. You cannot see the valley, but you can feel the slope under your feet. So you take a small step downhill, feel again, and repeat. That is gradient descent.</p>
          <ul class="lc-list">
            <li><strong>Loss</strong> — a single number measuring how wrong the model is (e.g. mean squared error).</li>
            <li><strong>Gradient</strong> — the slope of the loss; tells us which way is "uphill".</li>
            <li><strong>Learning rate</strong> — the size of each step.</li>
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
          <p>After enough steps, <code>w</code> and <code>b</code> settle at the same values <code>LinearRegression</code> would give.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing the Learning Rate</h3>
          <table class="lc-table">
            <thead><tr><th>Learning rate</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>Too small (0.00001)</td><td>Loss falls very slowly; needs many steps</td></tr>
              <tr><td>Just right (0.01)</td><td>Loss falls smoothly and settles</td></tr>
              <tr><td>Too large (1.0)</td><td>Steps overshoot the valley; loss jumps around or explodes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Unscaled features</strong> — if x is area in sq ft (hundreds or thousands), gradients become huge and training blows up. Scale x first.</li>
            <li><strong>Forgetting to update both w and b</strong> — the line can then never fit properly.</li>
            <li><strong>Stopping too early</strong> — always print the loss to check it has flattened.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The same loop — predict, compute loss, compute gradient, update — trains logistic regression and even huge neural networks. Only the model and loss formula change.
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

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Evaluating Regression Models</h1>
        </div>
        <p class="lc-lead">A regression model predicts numbers, so we measure <strong>how far off</strong> its predictions are. Different metrics answer slightly different questions, and you should always report them on the <strong>test set</strong>.</p>
        <div class="lc-card">
          <h3>The Four Main Metrics</h3>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Formula</th><th>How to read it</th></tr></thead>
            <tbody>
              <tr><td>MAE</td><td>mean(|y − ŷ|)</td><td>Average error in original units ("off by ₹4 lakhs on average")</td></tr>
              <tr><td>MSE</td><td>mean((y − ŷ)²)</td><td>Punishes big errors heavily; units are squared</td></tr>
              <tr><td>RMSE</td><td>√MSE</td><td>Like MAE but big mistakes count more; original units</td></tr>
              <tr><td>R²</td><td>1 − SS<sub>res</sub> / SS<sub>tot</sub></td><td>1.0 = perfect, 0 = no better than predicting the mean, can be negative</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Crop Yield</h3>
          <p>Actual yields (tonnes/hectare) <code>[3.0, 4.0, 5.0]</code>, predictions <code>[2.5, 4.0, 6.0]</code>.</p>
          <ul class="lc-list">
            <li>Errors: 0.5, 0, 1.0 → <strong>MAE</strong> = 1.5 / 3 = 0.5</li>
            <li>Squared errors: 0.25, 0, 1.0 → <strong>MSE</strong> = 0.417, <strong>RMSE</strong> = 0.645</li>
            <li>Mean yield = 4.0, SS<sub>tot</sub> = 1 + 0 + 1 = 2, SS<sub>res</sub> = 1.25 → <strong>R²</strong> = 1 − 1.25/2 = 0.375</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score<br>import numpy as np<br><br>mae  = mean_absolute_error(y_test, y_pred)<br>rmse = np.sqrt(mean_squared_error(y_test, y_pred))<br>r2   = r2_score(y_test, y_pred)</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reporting training scores</strong> — a high training R² says nothing about new data.</li>
            <li><strong>Comparing RMSE across different datasets</strong> — an RMSE of 5 is great for prices in lakhs but terrible for CGPA out of 10.</li>
            <li><strong>No baseline</strong> — always compare with a model that predicts the mean. If you cannot beat it, the model has learned nothing.</li>
            <li>Mixing up argument order — sklearn metrics take <code>(y_true, y_pred)</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use MAE when explaining results to non-technical people ("on average we are off by 3 marks"). Use RMSE when large errors are especially costly.
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

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Logistic Regression</h1>
        </div>
        <p class="lc-lead">Despite its name, logistic regression is a <strong>classification</strong> model. It predicts the <strong>probability</strong> that an example belongs to a class — like the chance that a student passes, or that an email is spam.</p>
        <div class="lc-card">
          <h3>From a Line to a Probability</h3>
          <p>Logistic regression first computes a linear score <code>z = w·x + b</code>, just like linear regression. Then it squashes <code>z</code> into the range 0 to 1 using the <strong>sigmoid</strong> function:</p>
          <div class="lc-code">sigmoid(z) = 1 / (1 + e^(−z))<br><br>z = −5  →  0.007   (almost surely class 0)<br>z =  0  →  0.5     (not sure)<br>z = +5  →  0.993   (almost surely class 1)</div>
          <p>If the probability is ≥ 0.5, it predicts class 1; otherwise class 0. This 0.5 is called the <strong>threshold</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">from sklearn.linear_model import LogisticRegression<br><br># [study_hours, attendance_%]<br>X = [[2, 60], [3, 55], [4, 80], [6, 70], [7, 90], [8, 85]]<br>y = [0, 0, 0, 1, 1, 1]          # 1 = pass<br><br>model = LogisticRegression().fit(X, y)<br>print(model.predict_proba([[5, 75]]))   # [[P(fail), P(pass)]]<br>print(model.predict([[5, 75]]))         # class with prob ≥ 0.5</div>
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
            <li><strong>Only using predict()</strong> — <code>predict_proba()</code> tells you how confident the model is, which is often more useful.</li>
            <li><strong>Forgetting to scale features</strong> — logistic regression trains faster and more reliably on scaled data. If you see a "ConvergenceWarning", scale or raise <code>max_iter</code>.</li>
            <li><strong>Assuming 0.5 is always the right threshold</strong> — for disease screening you might flag anyone above 0.3.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Logistic regression is the go-to baseline for any classification problem. It also works with more than two classes automatically (e.g. three wine types).
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

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Classification Metrics</h1>
        </div>
        <p class="lc-lead">Accuracy alone can fool you. If only 2 out of 100 patients have a disease, a model that always says "healthy" is 98% accurate — and completely useless. The <strong>confusion matrix</strong>, <strong>precision</strong>, <strong>recall</strong> and <strong>F1</strong> tell the full story.</p>
        <div class="lc-card">
          <h3>The Confusion Matrix</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Predicted: No</th><th>Predicted: Yes</th></tr></thead>
            <tbody>
              <tr><td><strong>Actual: No</strong></td><td>True Negative (TN)</td><td>False Positive (FP) — false alarm</td></tr>
              <tr><td><strong>Actual: Yes</strong></td><td>False Negative (FN) — missed case</td><td>True Positive (TP)</td></tr>
            </tbody>
          </table>
          <p>scikit-learn's <code>confusion_matrix(y_true, y_pred)</code> returns exactly this layout for binary labels 0 and 1: <code>[[TN, FP], [FN, TP]]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The Metrics</h3>
          <ul class="lc-list">
            <li><strong>Accuracy</strong> = (TP + TN) / total — overall fraction correct.</li>
            <li><strong>Precision</strong> = TP / (TP + FP) — "When the model says YES, how often is it right?"</li>
            <li><strong>Recall</strong> = TP / (TP + FN) — "Of all real YES cases, how many did we catch?"</li>
            <li><strong>F1</strong> = 2 × P × R / (P + R) — a balance of precision and recall.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Spam Filter</h3>
          <p>100 emails, 20 are spam. The model flags 18 emails; 15 of them are really spam.</p>
          <div class="lc-code">TP = 15, FP = 3, FN = 5, TN = 77<br>Accuracy  = (15 + 77) / 100 = 0.92<br>Precision = 15 / 18 = 0.83<br>Recall    = 15 / 20 = 0.75<br>F1        = 2 × 0.83 × 0.75 / (0.83 + 0.75) = 0.79</div>
        </div>
        <div class="lc-card">
          <h3>Which Metric Matters?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Focus on</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Cancer screening</td><td>Recall</td><td>Missing a sick patient is far worse than a false alarm</td></tr>
              <tr><td>Spam filter</td><td>Precision</td><td>Losing an important email in spam is annoying</td></tr>
              <tr><td>Fraud detection</td><td>Recall + F1</td><td>Fraud is rare; accuracy is misleading</td></tr>
              <tr><td>Balanced classes, equal costs</td><td>Accuracy</td><td>Simple and fair</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Reporting only accuracy on imbalanced data.</li>
            <li>Mixing up precision and recall — say the questions out loud: "of predicted yes" vs "of actual yes".</li>
            <li>Forgetting that changing the threshold trades precision for recall.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>classification_report(y_test, y_pred)</code> prints precision, recall and F1 for every class in one go. Make it a habit.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_breast_cancer
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import StandardScaler
        from sklearn.linear_model import LogisticRegression
        from sklearn.metrics import (confusion_matrix, accuracy_score, precision_score,
                                     recall_score, f1_score, classification_report)

        # Relabel so that 1 = malignant (the case we must catch)
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
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">K-Nearest Neighbours</h1>
        </div>
        <p class="lc-lead">k-Nearest Neighbours (k-NN) is the most intuitive ML model: to classify a new point, find the <strong>k most similar examples</strong> in the training data and take a <strong>majority vote</strong>. "Tell me who your neighbours are, and I will tell you who you are."</p>
        <div class="lc-card">
          <h3>How It Works</h3>
          <ol class="lc-list">
            <li>Store all training examples (there is no real "training" step).</li>
            <li>For a new point, compute its distance to every training point.</li>
            <li>Pick the <strong>k</strong> closest points.</li>
            <li>Classification: majority vote. Regression: average of their values.</li>
          </ol>
          <p>The usual distance is <strong>Euclidean</strong>: <code>√((x1 − x2)² + (y1 − y2)²)</code> — the straight-line distance you learned in school geometry.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Fruit Classifier</h3>
          <p>Features: [weight in grams, sweetness 1–10]. A new fruit is [160, 7]. Its 3 nearest neighbours are all apples (the nearest orange is 4th), so k-NN predicts <strong>apple</strong>.</p>
          <div class="lc-code">from sklearn.neighbors import KNeighborsClassifier<br><br>X = [[150, 8], [170, 7], [140, 6], [130, 4], [120, 3], [180, 5]]<br>y = ["apple", "apple", "apple", "orange", "orange", "orange"]<br>knn = KNeighborsClassifier(n_neighbors=3).fit(X, y)<br>print(knn.predict([[160, 7]]))   # ['apple']</div>
        </div>
        <div class="lc-card">
          <h3>Choosing k</h3>
          <table class="lc-table">
            <thead><tr><th>k</th><th>Behaviour</th></tr></thead>
            <tbody>
              <tr><td>k = 1</td><td>Follows every noisy point; high variance, overfits</td></tr>
              <tr><td>k = 5 to 15</td><td>Usually a good balance</td></tr>
              <tr><td>k = very large</td><td>Almost always predicts the majority class; underfits</td></tr>
            </tbody>
          </table>
          <p>Use an odd k for two-class problems to avoid tied votes.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Not scaling features</strong> — if one feature is income in lakhs (0–50) and another is CIBIL score (300–900), the larger numbers dominate the distance. Always use <code>StandardScaler</code> with k-NN.</li>
            <li><strong>Too many features</strong> — in high dimensions, "nearest" loses meaning. Remove useless features.</li>
            <li><strong>Huge datasets</strong> — predictions are slow because every prediction compares against all stored points.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> k-NN is a great sanity-check model. If a fancy model cannot beat a scaled k-NN, look harder at your features.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_wine
        from sklearn.model_selection import train_test_split
        from sklearn.preprocessing import StandardScaler
        from sklearn.neighbors import KNeighborsClassifier

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
        raw = KNeighborsClassifier(n_neighbors=5).fit(X_tr, y_tr)
        sc = StandardScaler().fit(X_tr)
        scaled = KNeighborsClassifier(n_neighbors=5).fit(sc.transform(X_tr), y_tr)
        print("\nWine, k=5, unscaled accuracy:", round(raw.score(X_te, y_te), 3))
        print("Wine, k=5, scaled accuracy:  ", round(scaled.score(sc.transform(X_te), y_te), 3))

        # 3. Effect of k
        print("\n k | train acc | test acc")
        for k in [1, 3, 5, 11, 25, 60]:
            m = KNeighborsClassifier(n_neighbors=k).fit(sc.transform(X_tr), y_tr)
            print(f"{k:2d} | {m.score(sc.transform(X_tr), y_tr):9.3f} | {m.score(sc.transform(X_te), y_te):8.3f}")
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Decision Trees</h1>
        </div>
        <p class="lc-lead">A decision tree makes predictions by asking a series of <strong>yes/no questions</strong>, like a flowchart. It is easy to draw, easy to explain to anyone, and works for both classification and regression.</p>
        <div class="lc-card">
          <h3>How a Tree Looks</h3>
          <p>A farmer deciding whether a crop will give a high yield might think like this:</p>
          <div class="lc-code">Is rainfall &gt; 800 mm?<br>├── No  → Is irrigation available?<br>│         ├── No  → LOW yield<br>│         └── Yes → HIGH yield<br>└── Yes → Is soil pH between 6 and 7.5?<br>          ├── No  → LOW yield<br>          └── Yes → HIGH yield</div>
          <ul class="lc-list">
            <li><strong>Root node</strong> — the first question.</li>
            <li><strong>Internal nodes</strong> — further questions.</li>
            <li><strong>Leaves</strong> — the final predictions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How the Tree Picks Questions</h3>
          <p>At each step the tree tries every feature and every threshold, and picks the split that makes the groups <strong>purest</strong> — ideally each child node contains only one class. Purity is measured with <strong>Gini impurity</strong>:</p>
          <div class="lc-code">Gini = 1 − Σ (p_class)²<br><br>Node with 10 HIGH, 0 LOW   → Gini = 1 − (1² + 0²)   = 0.0   (pure)<br>Node with 5 HIGH, 5 LOW    → Gini = 1 − (0.5² + 0.5²) = 0.5 (mixed)</div>
          <p>The split that lowers the weighted Gini the most wins.</p>
        </div>
        <div class="lc-card">
          <h3>Important Settings</h3>
          <table class="lc-table">
            <thead><tr><th>Parameter</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>max_depth</td><td>Maximum number of questions in a row. Smaller = simpler tree</td></tr>
              <tr><td>min_samples_leaf</td><td>Each leaf must contain at least this many rows</td></tr>
              <tr><td>criterion</td><td>"gini" (default) or "entropy"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Strengths and Weaknesses</h3>
          <ul class="lc-list">
            <li><strong>+</strong> No need to scale features.</li>
            <li><strong>+</strong> You can print the rules and explain every prediction.</li>
            <li><strong>+</strong> Handles non-linear patterns naturally.</li>
            <li><strong>−</strong> A tree with no depth limit memorises the training data (overfits).</li>
            <li><strong>−</strong> Small changes in data can produce a very different tree (unstable).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving <code>max_depth=None</code> and celebrating 100% training accuracy.</li>
            <li>Reading feature importance as "cause" — it only shows what the tree used for splitting.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>sklearn.tree.export_text(model, feature_names=...)</code> to print a tree's rules as plain text — perfect for explaining your model in a viva.
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

        print("Gini of all data:", round(gini(y), 3))
        left, right = y[X[:, 2] == 0], y[X[:, 2] == 1]
        print("Split on irrigation -> Gini left:", round(gini(left), 3),
              "| Gini right:", round(gini(right), 3))

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

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Random Forests</h1>
        </div>
        <p class="lc-lead">One decision tree is unstable and overfits easily. A <strong>random forest</strong> trains <strong>many different trees</strong> and lets them vote. The crowd is usually wiser than any single member.</p>
        <div class="lc-card">
          <h3>Wisdom of the Crowd</h3>
          <p>Ask one cricket fan to predict the score of a match and they may be far off. Ask 100 fans and take the average, and you usually get much closer. Individual mistakes cancel out — as long as the fans think <em>differently</em>.</p>
          <p>A random forest makes its trees different in two ways:</p>
          <ul class="lc-list">
            <li><strong>Bootstrap sampling (bagging)</strong> — each tree trains on a random sample of rows, drawn with replacement.</li>
            <li><strong>Random features</strong> — at each split, a tree only looks at a random subset of the features.</li>
          </ul>
          <p>For classification the trees vote; for regression their predictions are averaged.</p>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.ensemble import RandomForestClassifier<br><br>forest = RandomForestClassifier(<br>    n_estimators=200,     # number of trees<br>    max_depth=None,       # trees can grow deep; averaging controls overfitting<br>    random_state=42,<br>)<br>forest.fit(X_train, y_train)<br>print(forest.score(X_test, y_test))<br>print(forest.feature_importances_)</div>
        </div>
        <div class="lc-card">
          <h3>Single Tree vs Forest</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Decision Tree</th><th>Random Forest</th></tr></thead>
            <tbody>
              <tr><td>Accuracy</td><td>Good</td><td>Usually better</td></tr>
              <tr><td>Overfitting</td><td>High risk</td><td>Much lower risk</td></tr>
              <tr><td>Interpretability</td><td>Easy to print rules</td><td>Hard (hundreds of trees)</td></tr>
              <tr><td>Speed</td><td>Very fast</td><td>Slower (but parallel with n_jobs)</td></tr>
              <tr><td>Scaling needed?</td><td>No</td><td>No</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Too few trees</strong> — 10 trees can be noisy. 100–500 is typical; more trees rarely hurt accuracy, only speed.</li>
            <li><strong>Trusting feature importance blindly</strong> — it can favour features with many unique values (like an ID column).</li>
            <li><strong>Forgetting random_state</strong> — results change every run, which confuses comparisons.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For tabular data (rows and columns, like marks sheets or sales records), a random forest with default settings is one of the strongest "first try" models you can use.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import load_wine
        from sklearn.model_selection import train_test_split
        from sklearn.tree import DecisionTreeClassifier
        from sklearn.ensemble import RandomForestClassifier

        data = load_wine()
        X_tr, X_te, y_tr, y_te = train_test_split(
            data.data, data.target, test_size=0.3, random_state=3, stratify=data.target)

        # A single tree vs forests of different sizes
        tree = DecisionTreeClassifier(random_state=0).fit(X_tr, y_tr)
        print(f"Single tree      train={tree.score(X_tr, y_tr):.3f} test={tree.score(X_te, y_te):.3f}")
        for n in [5, 50, 200]:
            rf = RandomForestClassifier(n_estimators=n, random_state=0).fit(X_tr, y_tr)
            print(f"Forest {n:3d} trees train={rf.score(X_tr, y_tr):.3f} test={rf.score(X_te, y_te):.3f}")

        # How do individual trees in the forest disagree?
        sample = X_te[:1]
        votes = [int(t.predict(sample)[0]) for t in rf.estimators_]
        print("\nVotes from 200 trees for one wine:", np.bincount(votes, minlength=3))
        print("Forest prediction:", rf.predict(sample)[0], "| Actual:", y_te[0])

        # Bootstrap sample: rows drawn WITH replacement
        rng = np.random.RandomState(0)
        idx = rng.choice(10, size=10, replace=True)
        print("\nExample bootstrap of rows 0-9:", sorted(idx.tolist()))
        print("Unique rows used:", len(set(idx)), "of 10")

        # Top 5 most important features
        order = np.argsort(rf.feature_importances_)[::-1][:5]
        print("\nTop 5 features:")
        for i in order:
            print(f"  {data.feature_names[i]:30s} {rf.feature_importances_[i]:.3f}")
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Overfitting and Regularisation</h1>
        </div>
        <p class="lc-lead">The goal of ML is not to do well on the training data — it is to do well on <strong>new</strong> data. <strong>Overfitting</strong> happens when a model memorises noise instead of learning the real pattern. <strong>Regularisation</strong> is one of the main cures.</p>
        <div class="lc-card">
          <h3>Underfitting vs Overfitting</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Underfitting</th><th>Good fit</th><th>Overfitting</th></tr></thead>
            <tbody>
              <tr><td>Training score</td><td>Low</td><td>High</td><td>Very high (near perfect)</td></tr>
              <tr><td>Test score</td><td>Low</td><td>High</td><td>Much lower than training</td></tr>
              <tr><td>Student analogy</td><td>Did not study</td><td>Understood concepts</td><td>Memorised last year's answers</td></tr>
              <tr><td>Fix</td><td>More complex model, better features</td><td>—</td><td>Simpler model, regularisation, more data</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>What Is Regularisation?</h3>
          <p>Regularisation adds a <strong>penalty for large weights</strong> to the loss. The model must now balance "fit the data" against "keep the weights small", which gives a smoother, simpler model.</p>
          <div class="lc-code">Ridge (L2):  loss = MSE + alpha × Σ w²<br>Lasso (L1):  loss = MSE + alpha × Σ |w|</div>
          <ul class="lc-list">
            <li><strong>alpha = 0</strong> — no penalty, same as plain linear regression.</li>
            <li><strong>Larger alpha</strong> — stronger penalty, simpler model.</li>
            <li><strong>Lasso</strong> can push some weights to exactly 0, so it also selects features.</li>
            <li>In <code>LogisticRegression</code>, the setting is <code>C</code>, which works the other way: <em>smaller C = stronger regularisation</em>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">from sklearn.preprocessing import PolynomialFeatures<br>from sklearn.linear_model import LinearRegression, Ridge<br>from sklearn.pipeline import make_pipeline<br><br>wiggly = make_pipeline(PolynomialFeatures(15), LinearRegression())<br>smooth = make_pipeline(PolynomialFeatures(15), Ridge(alpha=1.0))</div>
          <p>A degree-15 polynomial can bend through every training point. Ridge keeps it in check.</p>
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
            <li>Judging a model by training score alone.</li>
            <li>Using regularisation without scaling — the penalty then treats features unfairly.</li>
            <li>Picking alpha by looking at the test set (use cross-validation, lesson 15).</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always print <em>both</em> train and test scores side by side. The gap between them is the clearest signal of overfitting.
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

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Cross-Validation</h1>
        </div>
        <p class="lc-lead">A single train/test split can be lucky or unlucky. <strong>Cross-validation</strong> tests the model on several different splits and averages the results, giving a far more reliable score — without touching your final test set.</p>
        <div class="lc-card">
          <h3>k-Fold Cross-Validation</h3>
          <p>With 5-fold CV the training data is cut into 5 equal parts (folds):</p>
          <div class="lc-code">Round 1: [VAL] [trn] [trn] [trn] [trn]<br>Round 2: [trn] [VAL] [trn] [trn] [trn]<br>Round 3: [trn] [trn] [VAL] [trn] [trn]<br>Round 4: [trn] [trn] [trn] [VAL] [trn]<br>Round 5: [trn] [trn] [trn] [trn] [VAL]<br><br>Final score = average of the 5 validation scores</div>
          <p>Every row is used for validation exactly once and for training four times.</p>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.model_selection import cross_val_score, StratifiedKFold<br><br>cv = StratifiedKFold(n_splits=5, shuffle=True, random_state=0)<br>scores = cross_val_score(model, X_train, y_train, cv=cv, scoring="accuracy")<br>print(scores)                       # 5 numbers<br>print(scores.mean(), scores.std())  # average and spread</div>
          <p>The <strong>standard deviation</strong> tells you how stable the model is. A mean of 0.90 ± 0.01 is more trustworthy than 0.90 ± 0.08.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing a CV Strategy</h3>
          <table class="lc-table">
            <thead><tr><th>Strategy</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td>KFold</td><td>Regression problems</td></tr>
              <tr><td>StratifiedKFold</td><td>Classification (keeps class ratios in each fold)</td></tr>
              <tr><td>TimeSeriesSplit</td><td>Data ordered by time (sales, stock prices, weather)</td></tr>
              <tr><td>LeaveOneOut</td><td>Very tiny datasets (slow: one fold per row)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Using CV to Tune Settings</h3>
          <p><code>GridSearchCV</code> tries every combination of settings and picks the best by cross-validation:</p>
          <div class="lc-code">from sklearn.model_selection import GridSearchCV<br><br>grid = GridSearchCV(KNeighborsClassifier(), {"n_neighbors": [1, 3, 5, 7, 9]}, cv=5)<br>grid.fit(X_train, y_train)<br>print(grid.best_params_, grid.best_score_)</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Running cross-validation on the full dataset and then reporting the test set from the same data.</li>
            <li>Scaling all data before CV — the scaler sees the validation fold. Put the scaler in a Pipeline (lesson 17).</li>
            <li>Ignoring the spread of scores and only looking at the mean.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use cross-validation on the training set to <em>choose</em> a model, then use the test set <em>once</em> to <em>report</em> its final score.
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

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Feature Scaling and Encoding</h1>
        </div>
        <p class="lc-lead">Models only understand numbers, and many models get confused when numbers are on very different scales. <strong>Scaling</strong> puts numeric features on a similar range; <strong>encoding</strong> turns text categories like city names into numbers.</p>
        <div class="lc-card">
          <h3>Why Scale?</h3>
          <p>Consider a loan dataset with <code>income_lakh</code> (2–50) and <code>cibil_score</code> (300–900). For k-NN, a difference of 100 CIBIL points looks 50 times bigger than a difference of 2 lakhs, even if income matters more. Scaling fixes this.</p>
          <table class="lc-table">
            <thead><tr><th>Scaler</th><th>Formula</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>StandardScaler</td><td>(x − mean) / std</td><td>Mean 0, std 1 (most common)</td></tr>
              <tr><td>MinMaxScaler</td><td>(x − min) / (max − min)</td><td>Values between 0 and 1</td></tr>
              <tr><td>RobustScaler</td><td>(x − median) / IQR</td><td>Less affected by outliers</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Which Models Need Scaling?</h3>
          <ul class="lc-list">
            <li><strong>Need it:</strong> k-NN, logistic/linear regression with regularisation, SVM, k-means, PCA, neural networks, gradient descent.</li>
            <li><strong>Do not need it:</strong> decision trees, random forests (they only compare values within one feature).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Encoding Categories</h3>
          <div class="lc-code">from sklearn.preprocessing import OneHotEncoder<br><br>cities = [["Delhi"], ["Mumbai"], ["Delhi"], ["Kolkata"]]<br>enc = OneHotEncoder(handle_unknown="ignore")<br>print(enc.fit_transform(cities).toarray())<br># columns: Delhi, Kolkata, Mumbai<br># [[1. 0. 0.]<br>#  [0. 0. 1.]<br>#  [1. 0. 0.]<br>#  [0. 1. 0.]]</div>
          <ul class="lc-list">
            <li><strong>One-hot encoding</strong> — one 0/1 column per category. Use for categories with no order (city, crop type).</li>
            <li><strong>Ordinal encoding</strong> — map to 0, 1, 2… Use only when order is real (low &lt; medium &lt; high).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Fitting the scaler on all data</strong> — fit on training data only, then <code>transform</code> both train and test. Otherwise test information leaks into training.</li>
            <li><strong>Label-encoding cities as 0, 1, 2</strong> — the model thinks Mumbai (2) is "twice" Kolkata (1). Use one-hot instead.</li>
            <li><strong>Crashing on unseen categories</strong> — a new city in the test set breaks the encoder unless you set <code>handle_unknown="ignore"</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>ColumnTransformer</code> lets you scale numeric columns and one-hot encode text columns in one object — the next lesson shows how to combine it with a model in a Pipeline.
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
            "city":        ["Delhi", "Mumbai", "Delhi", "Kolkata", "Mumbai", "Chennai"],
            "education":   ["12th", "PG", "UG", "PG", "12th", "UG"],
        })
        print(loans, "\n")

        nums = loans[["income_lakh", "cibil_score"]]
        std = StandardScaler().fit(nums)
        print("StandardScaler means:", std.mean_.round(2))
        print(pd.DataFrame(std.transform(nums), columns=nums.columns).round(2), "\n")
        print("MinMaxScaler (0 to 1):")
        print(pd.DataFrame(MinMaxScaler().fit_transform(nums), columns=nums.columns).round(2), "\n")

        # One-hot encode city (no natural order)
        enc = OneHotEncoder(handle_unknown="ignore")
        city_oh = enc.fit_transform(loans[["city"]]).toarray()
        print("One-hot columns:", list(enc.get_feature_names_out()))
        print(city_oh[:3])
        print("Unseen city 'Pune' ->", enc.transform(pd.DataFrame({"city": ["Pune"]})).toarray())

        # Ordinal encoding for education (there IS an order)
        order = {"12th": 0, "UG": 1, "PG": 2}
        print("\nEducation encoded:", loans["education"].map(order).tolist())

        # Everything together with ColumnTransformer
        ct = ColumnTransformer([
            ("num", StandardScaler(), ["income_lakh", "cibil_score"]),
            ("cat", OneHotEncoder(handle_unknown="ignore"), ["city"]),
        ], sparse_threshold=0)
        out = ct.fit_transform(loans)
        print("\nColumnTransformer output shape:", out.shape)
        print(np.round(out[0], 2))
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Pipelines</h1>
        </div>
        <p class="lc-lead">A <strong>Pipeline</strong> chains preprocessing steps and a model into <strong>one object</strong>. You call <code>fit</code> once and <code>predict</code> once, and scikit-learn applies every step in the right order — with no chance of leaking test data.</p>
        <div class="lc-card">
          <h3>Without vs With a Pipeline</h3>
          <div class="lc-code"># Without: easy to forget a step or fit on the wrong data<br>scaler = StandardScaler().fit(X_train)<br>model = LogisticRegression().fit(scaler.transform(X_train), y_train)<br>pred = model.predict(scaler.transform(X_test))<br><br># With: one object does it all<br>from sklearn.pipeline import Pipeline<br>pipe = Pipeline([<br>    ("scale", StandardScaler()),<br>    ("model", LogisticRegression()),<br>])<br>pipe.fit(X_train, y_train)<br>pred = pipe.predict(X_test)</div>
        </div>
        <div class="lc-card">
          <h3>How fit and predict Flow</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>What happens inside</th></tr></thead>
            <tbody>
              <tr><td>pipe.fit(X, y)</td><td>Each preprocessing step runs <code>fit_transform</code>, then the final model runs <code>fit</code></td></tr>
              <tr><td>pipe.predict(X)</td><td>Each preprocessing step runs <code>transform</code> only, then the model runs <code>predict</code></td></tr>
              <tr><td>pipe.score(X, y)</td><td>Transforms X, then scores the model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Pipelines + ColumnTransformer + GridSearchCV</h3>
          <p>You can tune settings of any step using the name <code>step__parameter</code> (two underscores):</p>
          <div class="lc-code">pre = ColumnTransformer([<br>    ("num", StandardScaler(), ["marks", "attendance"]),<br>    ("cat", OneHotEncoder(handle_unknown="ignore"), ["board"]),<br>])<br>pipe = Pipeline([("pre", pre), ("model", LogisticRegression())])<br><br>grid = GridSearchCV(pipe, {"model__C": [0.1, 1, 10]}, cv=5)<br>grid.fit(X_train, y_train)</div>
          <p>Inside cross-validation, the scaler is re-fitted on each training fold only — this is the main reason pipelines prevent leakage.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Scaling the whole dataset first and then putting only the model in the pipeline — the leak is still there.</li>
            <li>Typing one underscore in grid parameters (<code>model_C</code>) — it must be <code>model__C</code>.</li>
            <li>Forgetting that the last step must be the model; all earlier steps must be transformers.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Once your pipeline is fitted, it is your whole model. In a real app you save this single object (for example with <code>joblib</code>) and load it later to make predictions on raw input.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd
        from sklearn.pipeline import Pipeline
        from sklearn.compose import ColumnTransformer
        from sklearn.preprocessing import StandardScaler, OneHotEncoder
        from sklearn.linear_model import LogisticRegression
        from sklearn.model_selection import train_test_split, GridSearchCV

        # Synthetic student data: will they clear the entrance exam?
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
        print(df.head(), "\nCleared rate:", round(df.cleared.mean(), 2))

        X, y = df.drop(columns="cleared"), df["cleared"]
        X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.25, random_state=0, stratify=y)

        pre = ColumnTransformer([
            ("num", StandardScaler(), ["marks_12th", "mock_score", "study_hrs"]),
            ("cat", OneHotEncoder(handle_unknown="ignore"), ["board"]),
        ])
        pipe = Pipeline([("pre", pre), ("model", LogisticRegression(max_iter=1000))])
        print("\nPipeline steps:", [name for name, _ in pipe.steps])

        grid = GridSearchCV(pipe, {"model__C": [0.01, 0.1, 1, 10]}, cv=5)
        grid.fit(X_tr, y_tr)
        print("Best C:", grid.best_params_["model__C"], "| CV accuracy:", round(grid.best_score_, 3))
        print("Test accuracy:", round(grid.score(X_te, y_te), 3))

        # Predict on RAW new data - the pipeline scales and encodes automatically
        new = pd.DataFrame({"marks_12th": [92, 60], "mock_score": [85, 35],
                            "study_hrs": [7.5, 2.0], "board": ["State", "CBSE"]})
        print("P(clear) for new students:", grid.predict_proba(new)[:, 1].round(2))
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">K-Means Clustering</h1>
        </div>
        <p class="lc-lead">K-means is an <strong>unsupervised</strong> algorithm: it gets no labels at all. It groups data into <strong>k clusters</strong> so that points in the same cluster are close to each other. Shops use it to find customer segments; farmers can use it to group fields with similar soil.</p>
        <div class="lc-card">
          <h3>The Algorithm</h3>
          <ol class="lc-list">
            <li>Choose <strong>k</strong>, the number of clusters.</li>
            <li>Place k <strong>centroids</strong> (cluster centres) at random points.</li>
            <li><strong>Assign</strong> every point to its nearest centroid.</li>
            <li><strong>Update</strong> each centroid to the mean of the points assigned to it.</li>
            <li>Repeat steps 3–4 until the centroids stop moving.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.cluster import KMeans<br><br># [annual_spend_thousands, visits_per_month]<br>km = KMeans(n_clusters=3, n_init=10, random_state=0)<br>labels = km.fit_predict(X)<br>print(km.cluster_centers_)   # the 3 centroids<br>print(km.inertia_)           # total squared distance to centroids</div>
          <p><code>n_init=10</code> runs k-means 10 times from different starting points and keeps the best result.</p>
        </div>
        <div class="lc-card">
          <h3>Choosing k: The Elbow Method</h3>
          <p><strong>Inertia</strong> always falls as k grows (with k = number of points it becomes 0). Plot inertia for k = 1, 2, 3… and look for the "elbow" where the drop suddenly becomes small.</p>
          <table class="lc-table">
            <thead><tr><th>k</th><th>Inertia (example)</th><th>Drop</th></tr></thead>
            <tbody>
              <tr><td>1</td><td>2800</td><td>—</td></tr>
              <tr><td>2</td><td>1300</td><td>Big</td></tr>
              <tr><td>3</td><td>350</td><td>Big</td></tr>
              <tr><td>4</td><td>300</td><td>Small ← elbow at k = 3</td></tr>
              <tr><td>5</td><td>260</td><td>Small</td></tr>
            </tbody>
          </table>
          <p>The <strong>silhouette score</strong> (−1 to 1, higher is better) is another way to compare values of k.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Not scaling</strong> — k-means uses distances, so a feature measured in rupees will swamp one measured in visits.</li>
            <li><strong>Reading cluster numbers as meaningful</strong> — "cluster 0" is just a name; rerun with a different seed and it may be "cluster 2".</li>
            <li><strong>Expecting any shape</strong> — k-means finds round, similar-sized blobs; it struggles with long or curved groups.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After clustering, describe each cluster in plain words by looking at its centroid, e.g. "high spend, few visits = premium occasional buyers". That description is what the business actually uses.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        from sklearn.datasets import make_blobs
        from sklearn.cluster import KMeans
        from sklearn.preprocessing import StandardScaler
        from sklearn.metrics import silhouette_score

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

        # Assign a new customer to a segment
        new = scaler.transform([[100, 3]])
        print("\nNew customer (Rs 100k spend, 3 visits) -> cluster", km.predict(new)[0])
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">Principal Component Analysis (PCA)</h1>
        </div>
        <p class="lc-lead">Real datasets can have dozens or hundreds of features, and many of them overlap. <strong>PCA</strong> compresses the data into a few new features, called <strong>principal components</strong>, that keep as much of the original information (variance) as possible.</p>
        <div class="lc-card">
          <h3>The Intuition</h3>
          <p>Think of a student's marks in Physics, Chemistry and Maths. They are strongly related: a student good in one is often good in the others. One combined "science ability" score captures most of the information in all three. PCA finds such combined directions automatically.</p>
          <ul class="lc-list">
            <li><strong>PC1</strong> — the direction along which the data varies the most.</li>
            <li><strong>PC2</strong> — the next most varied direction, at right angles to PC1.</li>
            <li>…and so on. Each component is a weighted mix of the original features.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>In scikit-learn</h3>
          <div class="lc-code">from sklearn.decomposition import PCA<br>from sklearn.preprocessing import StandardScaler<br><br>X_scaled = StandardScaler().fit_transform(X)   # always scale first<br>pca = PCA(n_components=2)<br>X_2d = pca.fit_transform(X_scaled)<br>print(pca.explained_variance_ratio_)   # e.g. [0.36 0.19]</div>
          <p><code>explained_variance_ratio_</code> tells you what fraction of the total information each component keeps. You can also pass <code>PCA(n_components=0.95)</code> to keep enough components for 95% of the variance.</p>
        </div>
        <div class="lc-card">
          <h3>When to Use PCA</h3>
          <table class="lc-table">
            <thead><tr><th>Use case</th><th>Why PCA helps</th></tr></thead>
            <tbody>
              <tr><td>Visualisation</td><td>Squash 13 features to 2 so you can plot the data</td></tr>
              <tr><td>Speed</td><td>Fewer features means faster training</td></tr>
              <tr><td>Noise reduction</td><td>Small components often contain mostly noise</td></tr>
              <tr><td>Correlated features</td><td>Combines overlapping features into independent ones</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Not scaling first</strong> — a feature measured in large units (like proline in wine, ~1000) dominates PC1 purely because of its scale.</li>
            <li><strong>Thinking PCA uses labels</strong> — it is unsupervised; it only looks at X. The components with most variance are not always the most useful for prediction.</li>
            <li><strong>Expecting readable features</strong> — PC1 is a mix of all features, so it is harder to explain than "rainfall" or "area".</li>
            <li>Fitting PCA on the full dataset before splitting — put it in a Pipeline instead.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Check the cumulative sum <code>np.cumsum(pca.explained_variance_ratio_)</code> to decide how many components are "enough" for your problem.
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

        # Without scaling, one big feature dominates
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

        # Data projected to 2D: class centres are well separated
        X2 = PCA(n_components=2).fit_transform(Xs)
        for c in range(3):
            print(f"Class {c} centre in PC space: {X2[y == c].mean(axis=0).round(2)}")

        # Does compressing to 2 components hurt accuracy?
        for k in [2, 5, 13]:
            pipe = make_pipeline(StandardScaler(), PCA(n_components=k), LogisticRegression(max_iter=1000))
            print(f"Accuracy with {k:2d} components: {cross_val_score(pipe, X, y, cv=5).mean():.3f}")
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ai">Machine Learning</div>
          <h1 class="lc-title">End-to-End Project and Review</h1>
        </div>
        <p class="lc-lead">Time to put everything together. In this lesson we build a complete, leak-free ML project from raw data to a final test score, and review the key ideas from the whole course.</p>
        <div class="lc-card">
          <h3>The Project Checklist</h3>
          <ol class="lc-list">
            <li><strong>Frame the problem</strong> — classify tumours as malignant or benign; recall on malignant matters most.</li>
            <li><strong>Look at the data</strong> — shape, class balance, missing values.</li>
            <li><strong>Split once</strong> — hold out a stratified test set and do not touch it.</li>
            <li><strong>Baseline</strong> — a <code>DummyClassifier</code> tells you the score to beat.</li>
            <li><strong>Pipelines</strong> — scaling + model in one object.</li>
            <li><strong>Compare and tune with cross-validation</strong> on the training set only.</li>
            <li><strong>Final evaluation</strong> — test set, confusion matrix, classification report.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Core Code Pattern</h3>
          <div class="lc-code">X_tr, X_te, y_tr, y_te = train_test_split(X, y, test_size=0.2, stratify=y, random_state=42)<br><br>pipe = Pipeline([("scale", StandardScaler()), ("model", LogisticRegression(max_iter=1000))])<br>grid = GridSearchCV(pipe, {"model__C": [0.01, 0.1, 1, 10]}, cv=5, scoring="recall")<br>grid.fit(X_tr, y_tr)<br><br>print(classification_report(y_te, grid.predict(X_te)))</div>
        </div>
        <div class="lc-card">
          <h3>Course Review: Choosing a Model</h3>
          <table class="lc-table">
            <thead><tr><th>Model</th><th>Task</th><th>Needs scaling?</th><th>Key setting</th></tr></thead>
            <tbody>
              <tr><td>Linear Regression</td><td>Regression</td><td>For regularisation</td><td>alpha (Ridge/Lasso)</td></tr>
              <tr><td>Logistic Regression</td><td>Classification</td><td>Yes</td><td>C</td></tr>
              <tr><td>k-NN</td><td>Both</td><td>Yes</td><td>n_neighbors</td></tr>
              <tr><td>Decision Tree</td><td>Both</td><td>No</td><td>max_depth</td></tr>
              <tr><td>Random Forest</td><td>Both</td><td>No</td><td>n_estimators, max_depth</td></tr>
              <tr><td>K-Means</td><td>Clustering</td><td>Yes</td><td>n_clusters</td></tr>
              <tr><td>PCA</td><td>Dimensionality reduction</td><td>Yes</td><td>n_components</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Ten Rules to Remember</h3>
          <ul class="lc-list">
            <li>Split before you do anything else, and use the test set once.</li>
            <li>Always compare against a simple baseline.</li>
            <li>Watch the gap between training and test scores.</li>
            <li>Pick metrics that match the real cost of mistakes.</li>
            <li>Scale features for distance- and gradient-based models.</li>
            <li>One-hot encode categories that have no order.</li>
            <li>Put preprocessing inside a Pipeline to avoid leakage.</li>
            <li>Tune with cross-validation, not with the test set.</li>
            <li>Fix <code>random_state</code> so results are reproducible.</li>
            <li>Good data beats a fancy algorithm.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Final-Project Mistakes</h3>
          <ul class="lc-list">
            <li>Reporting the best of many test-set runs as "the" accuracy.</li>
            <li>Showing only accuracy on an imbalanced problem.</li>
            <li>Not explaining the model's errors — look at the false negatives and ask why.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next steps:</strong> Try this same workflow on other built-in datasets (<code>load_diabetes</code> for regression, <code>load_wine</code> for multi-class), then move on to the Deep Learning course to see how neural networks extend these ideas.
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

        # 1-2. Data: relabel so 1 = malignant (the class we must catch)
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

        # 7. Final evaluation on the untouched test set
        pred = best_grid.predict(X_te)
        print(f"\nChosen model: {best_name}")
        print("Confusion matrix [[TN FP] [FN TP]]:\n", confusion_matrix(y_te, pred))
        print(classification_report(y_te, pred, target_names=["benign", "malignant"]))
      PYTHON
    }
  }
end

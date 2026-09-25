module DataScienceContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">What Is Data Science?</h1>
        </div>
        <p class="lc-lead">Data science is the craft of turning raw data into <strong>answers and decisions</strong>. It mixes three skills: programming (to handle data), statistics (to reason about it) and domain knowledge (to know which questions matter). In this course you will learn the <em>process</em> a data scientist follows, using pandas and NumPy as your everyday tools.</p>
        <div class="lc-card">
          <h3>Data Science Around You</h3>
          <ul class="lc-list">
            <li><strong>Swiggy / Zomato</strong> estimate delivery time from distance, traffic and restaurant load.</li>
            <li><strong>IPL teams</strong> study strike rates and match-ups before picking a playing XI.</li>
            <li><strong>IMD</strong> analyses decades of monsoon rainfall to forecast the season.</li>
            <li><strong>City pollution boards</strong> track AQI to decide when to restrict traffic.</li>
            <li><strong>Colleges</strong> look at marks and attendance to find students who need extra help.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Data Science Lifecycle</h3>
          <p>Almost every project, big or small, moves through the same stages. Industry frameworks such as <strong>CRISP-DM</strong> describe the same idea.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Key question</th><th>Example (food delivery)</th></tr></thead>
            <tbody>
              <tr><td>1. Ask</td><td>What do we want to know?</td><td>Why are Friday orders late?</td></tr>
              <tr><td>2. Collect</td><td>Where is the data?</td><td>Order logs, rider GPS, weather</td></tr>
              <tr><td>3. Clean</td><td>Is the data trustworthy?</td><td>Remove test orders, fix missing times</td></tr>
              <tr><td>4. Explore</td><td>What patterns exist?</td><td>Late orders peak 8&ndash;9 pm</td></tr>
              <tr><td>5. Model</td><td>Can we predict or explain?</td><td>Predict delay from distance and hour</td></tr>
              <tr><td>6. Communicate</td><td>What should we do?</td><td>Add riders in the 8&ndash;9 pm slot</td></tr>
            </tbody>
          </table>
          <p>The cycle repeats: new answers usually raise new questions.</p>
        </div>
        <div class="lc-card">
          <h3>Data Analyst vs Data Scientist vs ML Engineer</h3>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Focus</th></tr></thead>
            <tbody>
              <tr><td>Data Analyst</td><td>Reports, dashboards, "what happened?"</td></tr>
              <tr><td>Data Scientist</td><td>Experiments, statistics, models, "why and what next?"</td></tr>
              <tr><td>ML Engineer</td><td>Putting models into production and keeping them running</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A Tiny End-to-End Example</h3>
          <div class="lc-code">import pandas as pd<br><br>orders = pd.DataFrame({<br>    'hour':    [13, 13, 20, 20, 21, 21],<br>    'minutes': [28, 31, 44, 47, 39, 52],<br>})<br><br># Ask: are dinner orders slower than lunch orders?<br>orders['slot'] = orders['hour'].apply(lambda h: 'dinner' if h &gt;= 19 else 'lunch')<br>print(orders.groupby('slot')['minutes'].mean())</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">slot<br>dinner    45.5<br>lunch     29.5<br>Name: minutes, dtype: float64</div>
          <p>Ask &rarr; organise &rarr; summarise &rarr; answer. That is data science in miniature. Notice what the output does <em>not</em> tell us: whether dinner orders are slower because of traffic, because they travel further, or because the kitchen is busier. The starter code follows up on exactly that question.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Delivery time by slot:<br>        count  mean<br>slot<br>dinner      5  45.0<br>lunch       3  27.7<br><br>Dinner orders take about 17 minutes longer on average.<br><br>Average distance by slot (km):<br>slot<br>dinner    3.84<br>lunch     2.47</div>
          <p>Dinner orders are slower — but they also travel about 1.4 km further. Part of the "dinner effect" may really be a "distance effect". With only 8 orders (3 at lunch), neither conclusion is solid yet. A good data scientist reports both the finding and its limits.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Starting with the tool, not the question</strong> — "let's use pandas on the orders file" produces tables, not answers.</li>
            <li><strong>Trusting the first comparison</strong> — a difference between groups can be caused by another variable (here, distance). Lesson 14 covers confounders.</li>
            <li><strong>Ignoring sample size</strong> — an average of 3 orders can change completely with one more order.</li>
            <li><strong>Skipping the "communicate" stage</strong> — an insight nobody acts on has no value.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and read the two tables.</li>
            <li>Change the dinner cut-off from <code>h &gt;= 18</code> to <code>h &gt;= 20</code>. Which orders move to "lunch", and how does the gap change?</li>
            <li>Add a column <code>orders['min_per_km'] = orders['minutes'] / orders['distance_km']</code> and compare it by slot. Is dinner still slower per km?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Tools change every few years; the process does not. Focus on asking clear questions and checking your data, and the code becomes the easy part.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Delivery times (minutes) for a small cloud kitchen in Bengaluru
        orders = pd.DataFrame({
            'order_id': [101, 102, 103, 104, 105, 106, 107, 108],
            'hour':     [12, 13, 13, 19, 20, 20, 21, 22],
            'distance_km': [2.1, 3.5, 1.8, 4.0, 2.5, 5.2, 3.1, 4.4],
            'minutes':  [26, 33, 24, 41, 38, 55, 42, 49],
        })

        # 1. ASK: are dinner orders slower than lunch orders?
        # 2. ORGANISE: label each order with a time slot
        orders['slot'] = orders['hour'].apply(lambda h: 'dinner' if h >= 18 else 'lunch')

        # 3. SUMMARISE
        summary = orders.groupby('slot')['minutes'].agg(['count', 'mean'])
        print("Delivery time by slot:")
        print(summary.round(1))

        # 4. ANSWER in plain words
        gap = summary.loc['dinner', 'mean'] - summary.loc['lunch', 'mean']
        print(f"\nDinner orders take about {gap:.0f} minutes longer on average.")

        # A follow-up question: is it the time, or the distance?
        print("\nAverage distance by slot (km):")
        print(orders.groupby('slot')['distance_km'].mean().round(2))
        print("New answers raise new questions - that is the lifecycle!")
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Asking Good Questions</h1>
        </div>
        <p class="lc-lead">A data project is only as good as the question behind it. "Analyse the IPL data" is not a question. "Does winning the toss increase a team's chance of winning the match?" is. Good questions are <strong>specific, measurable and useful</strong>.</p>
        <div class="lc-card">
          <h3>Vague vs Sharp Questions</h3>
          <table class="lc-table">
            <thead><tr><th>Vague</th><th>Sharp</th></tr></thead>
            <tbody>
              <tr><td>Are students doing well?</td><td>What percentage of Class 12 students scored below 40 in Maths this term?</td></tr>
              <tr><td>Is pollution bad?</td><td>On how many days in November was Delhi's AQI above 300?</td></tr>
              <tr><td>Do customers like us?</td><td>Did the average rating change after we reduced delivery fees?</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Four Kinds of Questions</h3>
          <ul class="lc-list">
            <li><strong>Descriptive</strong> &mdash; What happened? <em>Average runs per over in the powerplay.</em></li>
            <li><strong>Diagnostic</strong> &mdash; Why did it happen? <em>Why did orders drop last Tuesday?</em></li>
            <li><strong>Predictive</strong> &mdash; What will happen? <em>How much rain will Kerala get in July?</em></li>
            <li><strong>Prescriptive</strong> &mdash; What should we do? <em>Which areas need more delivery riders?</em></li>
          </ul>
          <p>Start with descriptive questions. You cannot explain or predict something you have not first measured.</p>
        </div>
        <div class="lc-card">
          <h3>A Question Checklist</h3>
          <ol class="lc-list">
            <li><strong>Who</strong> will use the answer, and what decision will it change?</li>
            <li><strong>What metric</strong> answers it? (win %, mean marks, count of days&hellip;)</li>
            <li><strong>What data</strong> do we need, and do we actually have it?</li>
            <li><strong>What would surprise us?</strong> Write down your expectation before you look.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Turning a Question into Code</h3>
          <div class="lc-code"># Question: Do toss winners win more often?<br># Metric:   % of matches where toss_winner == match_winner<br>won_both = (df['toss_winner'] == df['winner'])<br>print(f"{won_both.mean() * 100:.1f}% of toss winners also won")</div>
          <p>Notice how the metric is decided <em>before</em> writing the code. The code simply computes it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Toss winner also won: 60% of matches<br><br>Win % for toss winners, by choice:<br>             count  win_pct<br>toss_choice<br>bat              3     67.0<br>field            7     57.0<br><br>Caution: only 10 matches - far too few to be sure!</div>
          <p>The sharp question has a sharp answer: 60% (6 of 10). The follow-up suggests batting first after winning the toss did better — but that "67%" is 2 wins out of 3 matches. One different result would change it to 33% or 100%. This is why a good question also says how much data is needed to answer it.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Questions with no metric</strong> — "Is the team good?" cannot be computed; "What is the team's win % at home this season?" can.</li>
            <li><strong>Asking a causal question of observational data</strong> — "Does the toss <em>cause</em> wins?" needs more care than "Do toss winners win more often?"</li>
            <li><strong>Moving the goalposts</strong> — changing the question after seeing the data until something looks exciting ("fishing").</li>
            <li><strong>Forgetting the decision</strong> — if no decision depends on the answer, the question may not be worth the effort.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and check the 60% by counting rows yourself.</li>
            <li>Write one descriptive, one diagnostic and one predictive question about this IPL data as comments in the code.</li>
            <li>Compute a new metric: the win % of the team batting first. (Hint: if <code>toss_choice</code> is "bat", the toss winner batted first; otherwise the other team did.)</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Avoid "fishing": if you test fifty random ideas, a few will look interesting just by luck. Decide your main question first, then explore.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # A small sample of IPL matches (made-up but realistic)
        matches = pd.DataFrame({
            'team1':       ['CSK', 'MI', 'RCB', 'KKR', 'SRH', 'CSK', 'MI', 'RR', 'GT', 'DC'],
            'team2':       ['MI', 'RCB', 'KKR', 'SRH', 'CSK', 'RR', 'GT', 'DC', 'CSK', 'MI'],
            'toss_winner': ['CSK', 'RCB', 'KKR', 'SRH', 'CSK', 'RR', 'MI', 'DC', 'GT', 'MI'],
            'toss_choice': ['field', 'field', 'bat', 'field', 'bat', 'field', 'field', 'bat', 'field', 'field'],
            'winner':      ['CSK', 'MI', 'KKR', 'SRH', 'SRH', 'RR', 'GT', 'DC', 'GT', 'DC'],
        })

        # Vague: "analyse IPL data"
        # Sharp: "What % of matches are won by the team that wins the toss?"
        toss_and_match = matches['toss_winner'] == matches['winner']
        print(f"Toss winner also won: {toss_and_match.mean() * 100:.0f}% of matches")

        # Follow-up sharp question: does the toss choice matter?
        matches['toss_win_match'] = toss_and_match
        by_choice = matches.groupby('toss_choice')['toss_win_match'].agg(['count', 'mean'])
        by_choice['mean'] = (by_choice['mean'] * 100).round(0)
        print("\nWin % for toss winners, by choice:")
        print(by_choice.rename(columns={'mean': 'win_pct'}))

        print("\nCaution: only", len(matches), "matches - far too few to be sure!")
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Data Types and Structures</h1>
        </div>
        <p class="lc-lead">Before analysing a column, ask <strong>what kind of data it holds</strong>. The type decides which summaries and charts make sense. You can average marks, but you cannot average city names.</p>
        <div class="lc-card">
          <h3>Structured, Semi-structured, Unstructured</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Looks like</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Structured</td><td>Rows and columns</td><td>Student marks spreadsheet</td></tr>
              <tr><td>Semi-structured</td><td>Nested keys and values</td><td>JSON from a food-order app</td></tr>
              <tr><td>Unstructured</td><td>No fixed format</td><td>Restaurant reviews, photos, audio</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Kinds of Variables</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Meaning</th><th>Example</th><th>Sensible summary</th></tr></thead>
            <tbody>
              <tr><td>Nominal (categorical)</td><td>Labels with no order</td><td>City, team, cuisine</td><td>Counts, mode</td></tr>
              <tr><td>Ordinal (categorical)</td><td>Labels with an order</td><td>Grade A/B/C, AQI band</td><td>Counts, median</td></tr>
              <tr><td>Discrete (numeric)</td><td>Whole-number counts</td><td>Sixes hit, items ordered</td><td>Mean, median, range</td></tr>
              <tr><td>Continuous (numeric)</td><td>Any value on a scale</td><td>Rainfall mm, temperature</td><td>Mean, std, percentiles</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Watch Out for Disguised Types</h3>
          <ul class="lc-list">
            <li><strong>PIN codes and roll numbers</strong> are digits, but they are labels. Their "average" is meaningless.</li>
            <li><strong>Numbers stored as text</strong> ("1,200") must be converted before maths.</li>
            <li><strong>Dates</strong> stored as strings should become real datetime values.</li>
          </ul>
          <div class="lc-code">df['pincode'] = df['pincode'].astype(str)      # label, not number<br>df['grade'] = pd.Categorical(df['grade'],<br>                             categories=['C', 'B', 'A'], ordered=True)<br>df['date'] = pd.to_datetime(df['date'])</div>
          <p>With <code>ordered=True</code> and categories listed from lowest to highest, comparisons such as <code>df['grade'] &gt;= 'B'</code> follow the real order (C &lt; B &lt; A) instead of alphabetical order, where "A" would come first.</p>
        </div>
        <div class="lc-card">
          <h3>Python Structures a Data Scientist Uses</h3>
          <ul class="lc-list">
            <li><strong>list / dict</strong> &mdash; raw records before they become a table</li>
            <li><strong>NumPy array</strong> &mdash; fast numbers of a single type</li>
            <li><strong>pandas Series</strong> &mdash; one labelled column</li>
            <li><strong>pandas DataFrame</strong> &mdash; the whole table, each column with its own type</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Raw dtypes:<br>roll_no      int64<br>city        object<br>grade       object<br>marks       object<br>siblings     int64<br><br>Fixed dtypes:<br>roll_no       object<br>city          object<br>grade       category<br>marks          int64<br>siblings       int64<br>...<br>Ordinal  -&gt; median grade: B<br>Discrete -&gt; mean siblings: 1.4<br>Numeric  -&gt; mean marks: 76.8<br>Grades at least B: 4</div>
          <ul class="lc-list">
            <li><code>marks</code> loaded as <code>object</code> (text), so <code>marks.mean()</code> would fail until we convert it.</li>
            <li><code>roll_no</code> loaded as a number but is really a label, so we store it as text.</li>
            <li>For the ordinal grade we report a median (B), not a mean — "the average of A and C" has no meaning.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Averaging codes</strong> — the mean PIN code or roll number is a meaningless number.</li>
            <li><strong>Treating ordinal data as evenly spaced</strong> — the gap between "Poor" and "Satisfactory" AQI is not the same as between "Good" and "Satisfactory".</li>
            <li><strong>Losing leading zeros</strong> — PIN codes and phone numbers read as integers can lose leading zeros; read them as text (<code>dtype=str</code>).</li>
            <li><strong>Leaving numbers as text</strong> — sorting text gives "100" before "55".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and compare the raw and fixed dtypes.</li>
            <li>Change the first mark from <code>'78'</code> to <code>'100'</code>, and print <code>students['marks'].max()</code> right after the DataFrame is created (before the fix). Why does it say <code>'91'</code>? Then check the max again after <code>pd.to_numeric</code>.</li>
            <li>Add a column <code>'aqi_band': ['Good', 'Poor', 'Moderate', 'Good', 'Satisfactory']</code> and make it an ordered categorical with the right order.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Run <code>df.dtypes</code> on every new dataset. An <code>object</code> dtype on a column you expected to be numeric is the first sign of dirty data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        students = pd.DataFrame({
            'roll_no': [1101, 1102, 1103, 1104, 1105],
            'city':    ['Pune', 'Chennai', 'Pune', 'Jaipur', 'Kochi'],
            'grade':   ['B', 'A', 'C', 'A', 'B'],
            'marks':   ['78', '91', '55', '88', '72'],   # stored as text!
            'siblings': [1, 0, 2, 1, 3],
        })

        print("Raw dtypes:")
        print(students.dtypes)

        # Fix the types to match what the data really means
        students['roll_no'] = students['roll_no'].astype(str)          # a label
        students['marks'] = pd.to_numeric(students['marks'])           # continuous-ish
        students['grade'] = pd.Categorical(students['grade'],
                                           categories=['C', 'B', 'A'], ordered=True)

        print("\nFixed dtypes:")
        print(students.dtypes)

        # Choose summaries that fit each type
        print("\nNominal  -> counts of city:")
        print(students['city'].value_counts())
        print("\nOrdinal  -> median grade:", students['grade'].sort_values().iloc[len(students) // 2])
        print("Discrete -> mean siblings:", students['siblings'].mean())
        print("Numeric  -> mean marks:", students['marks'].mean())
        print("Grades at least B:", (students['grade'] >= 'B').sum())
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Collecting Data: CSV and JSON</h1>
        </div>
        <p class="lc-lead">Data arrives from many places: spreadsheets, app logs, government portals like <strong>data.gov.in</strong>, APIs and surveys. The two formats you will meet most often are <strong>CSV</strong> (flat tables) and <strong>JSON</strong> (nested records).</p>
        <div class="lc-card">
          <h3>Common Data Sources</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Typical format</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Spreadsheet export</td><td>CSV / Excel</td><td>Class marks register</td></tr>
              <tr><td>Web API</td><td>JSON</td><td>Live AQI readings for a city</td></tr>
              <tr><td>Database</td><td>SQL query result</td><td>Orders table of a delivery app</td></tr>
              <tr><td>Survey</td><td>Google Form &rarr; CSV</td><td>Hostel food feedback</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Loading Code, Briefly</h3>
          <p>CSV: <code>pd.read_csv(io.StringIO(csv_text), parse_dates=['date'])</code>. Nested JSON: <code>pd.json_normalize(json.loads(json_text))</code>, which flattens nested keys into columns such as <code>customer.city</code>. (<code>io.StringIO</code> makes a string behave like a file, because the browser sandbox has no files. The pandas course, lesson 2, covers every reading option.) This lesson spends its time on a harder question: <strong>can this data answer my question?</strong></p>
        </div>
        <div class="lc-card">
          <h3>Grain and Coverage: What Does One Row Mean?</h3>
          <p>Before any analysis, write one sentence: "one row = ...". Then check what the rows cover.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Starter data</th><th>What it limits</th></tr></thead>
            <tbody>
              <tr><td>Grain (one row = ?)</td><td>AQI: one city on one day. Orders: one order.</td><td>You cannot study hourly pollution peaks from daily rows.</td></tr>
              <tr><td>Coverage: where?</td><td>3 cities</td><td>"India's air quality" is too big a claim; "these 3 cities" is honest.</td></tr>
              <tr><td>Coverage: when?</td><td>2 days in November</td><td>November is Delhi's worst smog season, so this is not a yearly average.</td></tr>
              <tr><td>Who is missing?</td><td>App users only</td><td>Customers who order by phone or walk in never appear.</td></tr>
            </tbody>
          </table>
          <p>A perfect analysis of the wrong rows still gives the wrong answer. Most bias enters at collection time, long before any code runs.</p>
        </div>
        <div class="lc-card">
          <h3>Questions to Ask About Any Source</h3>
          <ul class="lc-list">
            <li><strong>Who collected it and why?</strong> A survey by a brand may be biased.</li>
            <li><strong>When?</strong> Old data may not reflect today.</li>
            <li><strong>What does each column mean?</strong> Look for a data dictionary.</li>
            <li><strong>Are we allowed to use it?</strong> Check licence and privacy rules.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>CSV vs JSON at a Glance</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>CSV</th><th>JSON</th></tr></thead>
            <tbody>
              <tr><td>Shape</td><td>Flat table, one row per record</td><td>Nested objects and lists</td></tr>
              <tr><td>Types</td><td>Everything is text until parsed</td><td>Numbers, strings, true/false, null</td></tr>
              <tr><td>Typical trap</td><td>Commas inside values, wrong date format</td><td>Lists inside records (one order with many items)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">CSV loaded: (6, 3)<br>city            object<br>date    datetime64[ns]<br>aqi              int64<br>...<br>Delhi        365.5<br>...<br>JSON columns: ['id', 'amount', 'customer.name', 'customer.city']<br>...<br>Revenue by city:<br>customer.city<br>Delhi    199<br>Pune     869</div>
          <p>Because we passed <code>parse_dates=['date']</code>, the date column is a real <code>datetime64</code>, not text. The nested <code>customer</code> object became two flat columns, so we can group by <code>customer.city</code> directly.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>parse_dates</code></strong> — dates stay as text, and sorting or filtering by month goes wrong.</li>
            <li><strong>Assuming one row per record in JSON</strong> — an order with a list of 3 items may need <code>json_normalize(records, record_path='items')</code> to become 3 rows.</li>
            <li><strong>Ignoring encodings</strong> — Hindi or Tamil text saved in the wrong encoding appears as garbled symbols; use <code>encoding='utf-8'</code>.</li>
            <li><strong>Using data you are not allowed to use</strong> — scraped or shared personal data may break the licence or privacy law.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and check the dtype of the <code>date</code> column.</li>
            <li>Remove <code>parse_dates=['date']</code> and print <code>aqi.dtypes</code> again. What type is <code>date</code> now?</li>
            <li>Add a fourth JSON order from Chennai for ₹410 and rerun. Does "Revenue by city" pick it up automatically?</li>
            <li>Write the "one row = ..." sentence for both datasets, and one claim each dataset can <em>not</em> support.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always keep an untouched copy of the raw data. Do your cleaning on a copy so you can start again if something goes wrong.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import json
        import pandas as pd

        # --- CSV: daily AQI readings ---
        csv_text = """city,date,aqi
        Delhi,2024-11-01,342
        Delhi,2024-11-02,389
        Mumbai,2024-11-01,156
        Mumbai,2024-11-02,141
        Bengaluru,2024-11-01,88
        Bengaluru,2024-11-02,95"""

        aqi = pd.read_csv(io.StringIO(csv_text), parse_dates=['date'])
        print("CSV loaded:", aqi.shape)
        print(aqi.dtypes)
        print(aqi.groupby('city')['aqi'].mean())

        # --- JSON: nested food orders from an app API ---
        json_text = """[
          {"id": 1, "amount": 349, "customer": {"name": "Riya", "city": "Pune"}},
          {"id": 2, "amount": 199, "customer": {"name": "Arjun", "city": "Delhi"}},
          {"id": 3, "amount": 520, "customer": {"name": "Meera", "city": "Pune"}}
        ]"""

        records = json.loads(json_text)
        orders = pd.json_normalize(records)
        print("\nJSON columns:", orders.columns.tolist())
        print(orders)
        print("\nRevenue by city:")
        print(orders.groupby('customer.city')['amount'].sum())
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Loading and Inspecting Data</h1>
        </div>
        <p class="lc-lead">The first ten minutes with a new dataset decide how smoothly the rest goes. Before any analysis, run a quick <strong>health check</strong>: how big is it, what are the columns, what types, and what looks wrong?</p>
        <div class="lc-card">
          <h3>The First-Look Checklist</h3>
          <p>Run these seven commands on every new table: <code>shape</code>, <code>head()</code> or <code>sample(5)</code>, <code>dtypes</code>, <code>isna().sum()</code>, <code>describe()</code>, <code>value_counts()</code> on each category column, and <code>duplicated().sum()</code>. (The pandas course, lesson 2, explains each one.) Typing them is easy; the skill is knowing what each finding will <em>break</em> later.</p>
          <table class="lc-table">
            <thead><tr><th>Symptom you see</th><th>What it will break</th><th>Fixed in</th></tr></thead>
            <tbody>
              <tr><td>A number column has dtype <code>object</code></td><td>Sums and means fail or join text together</td><td>pandas course, lesson 7</td></tr>
              <tr><td>count in <code>describe()</code> &lt; number of rows</td><td>Every average is based on fewer rows than you think</td><td>Lesson 6</td></tr>
              <tr><td>mean far above the median</td><td>"Average" misdescribes the typical row</td><td>Lessons 7 and 9</td></tr>
              <tr><td>One label spelled three ways</td><td>A group-by splits one city into three</td><td>pandas course, lesson 12</td></tr>
              <tr><td>Repeated rows</td><td>Counts and revenue are double-counted</td><td>Lesson 7</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Reading describe() Like a Detective</h3>
          <ul class="lc-list">
            <li>A <strong>min of -5</strong> for delivery minutes? Impossible &mdash; a data-entry error.</li>
            <li>A <strong>max of 9999</strong>? Probably a placeholder for "unknown".</li>
            <li><strong>count</strong> smaller than the number of rows? Missing values.</li>
            <li><strong>mean much larger than median (50%)</strong>? A few very large values pull it up.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Spotting Messy Labels</h3>
          <div class="lc-code">print(df['city'].value_counts())<br># Bangalore    3<br># Bengaluru    2<br># bengaluru    1   &lt;- same city, three spellings!</div>
          <p>Inconsistent labels split one group into several and silently distort every group-level result. (The pandas course covers the string tools for fixing them.)</p>
        </div>
        <div class="lc-card">
          <h3>Write Down What You Find</h3>
          <p>Keep a short list of issues as you inspect: "3 missing ratings, city spelled 3 ways, one negative time". This list becomes your cleaning plan for the next lessons.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Shape: (9, 6)<br>...<br>rating      2          &lt;- missing values<br>...<br>Numeric summary:<br>       amount  minutes  rating<br>count     9.0      9.0     7.0<br>mean    299.0   1133.6     4.3<br>min     129.0     -5.0     3.5<br>50%     299.0     28.0     4.5<br>max     549.0   9999.0     4.8<br><br>City labels:<br>Bangalore    3<br>Hyderabad    2<br>Chennai      2<br>Bengaluru    1<br>bengaluru    1<br><br>Duplicate rows: 1<br><br>Cleaning plan: missing ratings; impossible delivery times; inconsistent city spellings; duplicate rows</div>
          <ul class="lc-list">
            <li>The mean delivery time (1133.6 minutes!) is nonsense, while the median (28) looks normal — one placeholder value of 9999 is dragging the mean.</li>
            <li>A negative minimum (−5) is impossible.</li>
            <li>One city appears under three names, so a group-by would report three "cities".</li>
            <li>Order 8 appears twice, which would double-count its revenue.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Only looking at <code>head()</code></strong> — the first five rows looked fine here; the problems were in rows 3, 6, 7 and 9.</li>
            <li><strong>Fixing problems while inspecting</strong> — first list every issue, then clean in a planned order, so you can explain each change.</li>
            <li><strong>Trusting the mean in <code>describe()</code></strong> — always compare it with the median (the 50% row).</li>
            <li><strong>Missing placeholder values</strong> — 9999, 0 or −1 are often codes for "unknown", not real measurements.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and match each item in the cleaning plan to the evidence above.</li>
            <li>Print <code>df.sample(3, random_state=0)</code>. Which rows do you get?</li>
            <li>Add a check to the cleaning plan for ratings outside 1–5, then add a row with a rating of <code>6</code> to test it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>df.sample(5, random_state=0)</code> is often better than <code>head()</code>: the first rows of a file are sometimes unusual (test entries, headers repeated).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        raw = """order_id,city,cuisine,amount,minutes,rating
        1,Bengaluru,Biryani,349,32,4.5
        2,Bangalore,Pizza,499,28,4.0
        3,bengaluru,Biryani,299,-5,3.5
        4,Hyderabad,Biryani,399,41,
        5,Hyderabad,Dosa,149,22,4.8
        6,Chennai,Dosa,129,9999,4.2
        7,Chennai,Pizza,549,35,
        8,Bangalore,Dosa,159,25,4.6
        8,Bangalore,Dosa,159,25,4.6"""

        df = pd.read_csv(io.StringIO(raw))

        print("Shape:", df.shape)
        print("\nDtypes:\n", df.dtypes, sep="")
        print("\nMissing values per column:\n", df.isna().sum(), sep="")
        print("\nNumeric summary:")
        print(df[['amount', 'minutes', 'rating']].describe().round(1))
        print("\nCity labels:\n", df['city'].value_counts(), sep="")
        print("\nDuplicate rows:", df.duplicated().sum())

        # Build the cleaning plan from what we saw
        issues = []
        if df['rating'].isna().any():
            issues.append("missing ratings")
        if (df['minutes'] < 0).any() or (df['minutes'] > 300).any():
            issues.append("impossible delivery times")
        if df['city'].str.lower().nunique() < df['city'].nunique():
            issues.append("inconsistent city spellings")
        if df.duplicated().any():
            issues.append("duplicate rows")
        print("\nCleaning plan:", "; ".join(issues))
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Cleaning Missing Data</h1>
        </div>
        <p class="lc-lead">Real datasets have gaps: a rain gauge breaks, a student skips a test, a customer skips the rating. How you handle missing values can change your conclusions, so the choice must be <strong>deliberate, not automatic</strong>.</p>
        <div class="lc-card">
          <h3>First, Ask Why It Is Missing</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Example</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td>Missing completely at random (MCAR)</td><td>A sensor glitch on random days</td><td>Low &mdash; dropping rows loses data but does not bias results</td></tr>
              <tr><td>Missing at random (MAR) &mdash; explained by other columns</td><td>Ratings missing more often for late orders</td><td>Medium &mdash; dropping biases results; fill using the related columns</td></tr>
              <tr><td>Missing not at random (MNAR) &mdash; related to the value itself</td><td>Low scorers choose not to report marks</td><td>High &mdash; any simple fix misleads; report the limitation</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Your Options and What Each One Assumes</h3>
          <p>The code is one line each: <code>dropna(subset=[...])</code>, <code>fillna(value)</code>, <code>groupby(...).transform('median')</code>, <code>interpolate()</code>, or a flag column <code>df['col'].isna()</code>. (The pandas course, lesson 8, covers the syntax.) The real decision is which <strong>assumption</strong> you are willing to defend:</p>
          <table class="lc-table">
            <thead><tr><th>Strategy</th><th>You are assuming...</th><th>Side effect on results</th></tr></thead>
            <tbody>
              <tr><td>Drop rows</td><td>The missing rows are like the others (MCAR)</td><td>Smaller sample; biased if the gaps are not random</td></tr>
              <tr><td>Fill with overall median</td><td>Every row is alike</td><td>Pulls groups towards the middle; shrinks the spread</td></tr>
              <tr><td>Fill with group median</td><td>Rows in the same group are alike</td><td>Keeps group differences; still shrinks spread inside groups</td></tr>
              <tr><td>Interpolate</td><td>Values change smoothly over time</td><td>Good for rainfall trends; invents smooth values across a sudden storm</td></tr>
              <tr><td>Flag and keep</td><td>"Was missing" may itself be informative</td><td>No values invented; the flag can be analysed or used by a model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Group-Aware Filling</h3>
          <p>Filling missing rainfall for Cherrapunji with the all-India average would be badly wrong. Fill within each group instead:</p>
          <div class="lc-code">df['rain_mm'] = df['rain_mm'].fillna(<br>    df.groupby('station')['rain_mm'].transform('median')<br>)</div>
          <p><strong>Output of the starter</strong> — average daily July rainfall (mm) under each strategy:</p>
          <div class="lc-code">             dropped  global_median  group_median  interpolated<br>station<br>Chennai         11.2           28.0          11.2          11.3<br>Cherrapunji    410.8          347.6         409.4         412.1<br>Mumbai          95.0           95.0          95.0          95.0</div>
          <p>The global median of all stations is 95 mm. Filling Chennai's gap with it gives Chennai an imaginary wet day, so its average jumps from 11 to 28 mm — more than double. It also drags Cherrapunji down. The group-aware and interpolation methods stay close to what the station actually recorded. (Mumbai agrees in all four columns only by coincidence: its own median is also 95 mm.)</p>
        </div>
        <div class="lc-card">
          <h3>Always Measure the Impact</h3>
          <ul class="lc-list">
            <li>Record how many values you dropped or filled.</li>
            <li>Compare key statistics (mean, count) before and after cleaning.</li>
            <li>If conclusions flip depending on the method, say so in your report.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Calling <code>dropna()</code> on the whole table</strong> — it drops a row if <em>any</em> column is missing, which can silently remove half your data. Use <code>subset=</code>.</li>
            <li><strong>Filling before splitting for a model</strong> — the fill value then uses information from test rows. Compute it on training data only (Machine Learning course, lessons 16–17).</li>
            <li><strong>Treating 0 as "missing"</strong> — zero rainfall is a real measurement; a broken gauge is not.</li>
            <li><strong>Not reporting what you did</strong> — "3 of 15 values filled with the station median" belongs in your write-up.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and explain why Chennai's <code>global_median</code> value is so high.</li>
            <li>Add a "flag" column <code>rain['was_missing'] = rain['rain_mm'].isna()</code> before filling, and count flags per station.</li>
            <li>Set another Cherrapunji day to <code>np.nan</code>. Which strategy changes the Cherrapunji average most?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Filling with the mean shrinks the spread of your data and makes it look more certain than it is. Use it sparingly and always report it.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        # July rainfall (mm) at three stations; NaN = gauge failed
        rain = pd.DataFrame({
            'station': ['Mumbai'] * 5 + ['Chennai'] * 5 + ['Cherrapunji'] * 5,
            'day':     [1, 2, 3, 4, 5] * 3,
            'rain_mm': [88, np.nan, 102, 95, np.nan,
                        12, 8, np.nan, 15, 10,
                        410, 385, np.nan, 450, 398],
        })

        print("Missing per station:")
        print(rain['rain_mm'].isna().groupby(rain['station']).sum())

        # Option 1: drop
        dropped = rain.dropna(subset=['rain_mm'])
        # Option 2: one global median for everyone (naive)
        global_fill = rain['rain_mm'].fillna(rain['rain_mm'].median())
        # Option 3: median within each station (group-aware)
        group_fill = rain['rain_mm'].fillna(
            rain.groupby('station')['rain_mm'].transform('median'))
        # Option 4: interpolate within each station (time order)
        interp = rain.groupby('station')['rain_mm'].transform(lambda s: s.interpolate(limit_direction='both'))

        result = pd.DataFrame({
            'dropped': dropped.groupby('station')['rain_mm'].mean(),
            'global_median': global_fill.groupby(rain['station']).mean(),
            'group_median': group_fill.groupby(rain['station']).mean(),
            'interpolated': interp.groupby(rain['station']).mean(),
        }).round(1)

        print("\nAverage daily rainfall under each strategy:")
        print(result)
        print("\nNotice how the global median badly distorts Chennai and Cherrapunji.")
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Duplicates and Outliers</h1>
        </div>
        <p class="lc-lead">Duplicates quietly inflate counts, and outliers can drag an average far from the typical value. Both need attention, but an outlier is not automatically an error &mdash; sometimes it is the most interesting row in the table.</p>
        <div class="lc-card">
          <h3>Duplicates: First Decide What "Same" Means</h3>
          <p>The code is short: <code>df.duplicated(subset=['order_id']).sum()</code> to count and <code>drop_duplicates(subset=['order_id'])</code> to remove (pandas course, lesson 19). The thinking is in the <code>subset</code>: what makes a row unique?</p>
          <table class="lc-table">
            <thead><tr><th>Two rows share...</th><th>Duplicate?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Every column</td><td>Almost always</td><td>Usually a double export or a retried upload</td></tr>
              <tr><td>The same order ID, different amount</td><td>Yes, and one row is wrong</td><td>Find out which is correct before dropping either</td></tr>
              <tr><td>Same customer, same amount, same day</td><td>Not necessarily</td><td>People really do order the same biryani twice</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Two Ways to Flag Outliers</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Rule</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>IQR rule</td><td>Below Q1 &minus; 1.5&times;IQR or above Q3 + 1.5&times;IQR</td><td>Skewed data, small samples</td></tr>
              <tr><td>Z-score</td><td>|value &minus; mean| / std &gt; 3</td><td>Roughly bell-shaped data</td></tr>
            </tbody>
          </table>
          <div class="lc-code">q1, q3 = df['amount'].quantile([0.25, 0.75])<br>iqr = q3 - q1<br>low, high = q1 - 1.5 * iqr, q3 + 1.5 * iqr<br>outliers = df[(df['amount'] &lt; low) | (df['amount'] &gt; high)]</div>
        </div>
        <div class="lc-card">
          <h3>What to Do With an Outlier</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>Impossible value (age 250, negative time)</td><td>Fix if you can, else set to missing</td></tr>
              <tr><td>Real but rare (a &#8377;12,000 party order)</td><td>Keep it; use median or report with and without</td></tr>
              <tr><td>Extreme values hurt a model</td><td>Cap (winsorise) with <code>clip(low, high)</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Error or Signal? Four Questions</h3>
          <ol class="lc-list">
            <li><strong>Is it possible?</strong> A negative amount or 140% attendance cannot be real &rarr; error.</li>
            <li><strong>Is it a unit or typing slip?</strong> ₹12,000 might be ₹120.00 with a lost decimal point &mdash; check the item price.</li>
            <li><strong>Can another source confirm it?</strong> A catering invoice for the party order makes it real.</li>
            <li><strong>Does it matter for the question?</strong> For "typical order value", report the median; for "total revenue", the party order must stay in.</li>
          </ol>
          <p>Rules like IQR only <em>flag</em> rows. These questions decide what to do with them.</p>
        </div>
        <div class="lc-card">
          <h3>Why the Median Is Robust</h3>
          <p>Salaries of 5 people: 30k, 32k, 35k, 38k and 5 lakh. The mean is (30 + 32 + 35 + 38 + 500) / 5 = 127k, about 1.27 lakh &mdash; nobody earns that! The median, 35k, stays close to the typical person.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Duplicate IDs: 1<br>Impossible amounts set to NaN: 1<br>IQR fences: 135 to 575<br>Outliers:<br>   order_id   amount<br>5         5  12000.0<br><br>Z-scores: [-0.34, -0.35, -0.31, -0.34, 2.67, -0.32, -0.36, -0.33, nan, -0.32]<br>...<br>Mean with party order:   1640<br>Median with party order: 350<br>Mean after capping:      371</div>
          <ul class="lc-list">
            <li>The IQR rule flags the ₹12,000 party order clearly.</li>
            <li>Its z-score is only 2.67, below the usual cut-off of 3. With 9 values, one huge value inflates the standard deviation so much that it hides itself. (In fact, with n values no z-score can exceed (n − 1)/√n, which is 2.67 for n = 9.)</li>
            <li>One order turns a typical ₹350 order into a "mean" of ₹1,640. Capping at the upper fence brings the mean back to ₹371.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Deleting every outlier</strong> — a real ₹12,000 party order is valuable business information; report it separately instead of hiding it.</li>
            <li><strong>Using the z-score rule on small or skewed samples</strong> — the outlier inflates the std, as shown above.</li>
            <li><strong>Dropping duplicates on all columns only</strong> — two rows with the same order ID but a different amount are not exact duplicates, yet one of them is wrong.</li>
            <li><strong>Cleaning silently</strong> — keep a log: "removed 1 duplicate ID, set 1 negative amount to missing".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and check that the fences are Q1 − 1.5 × IQR and Q3 + 1.5 × IQR.</li>
            <li>Change the party order from <code>12000</code> to <code>900</code>. Is it still an outlier by the IQR rule?</li>
            <li>Add 20 more ordinary orders (for example <code>[300] * 20</code>, with new IDs). What happens to the party order's z-score now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never delete outliers just to make a chart look neater. Write down every row you remove and the reason.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        orders = pd.DataFrame({
            'order_id': [1, 2, 3, 3, 4, 5, 6, 7, 8, 9, 10],
            'amount':   [320, 280, 450, 450, 300, 12000, 390, 260, 350, -40, 410],
        })

        # 1. Duplicates by ID
        print("Duplicate IDs:", orders.duplicated(subset=['order_id']).sum())
        orders = orders.drop_duplicates(subset=['order_id'])

        # 2. Impossible values become missing (float column can hold NaN)
        orders['amount'] = orders['amount'].astype(float)
        orders.loc[orders['amount'] < 0, 'amount'] = float('nan')
        print("Impossible amounts set to NaN:", orders['amount'].isna().sum())

        # 3. IQR rule
        q1, q3 = orders['amount'].quantile([0.25, 0.75])
        iqr = q3 - q1
        low, high = q1 - 1.5 * iqr, q3 + 1.5 * iqr
        print(f"IQR fences: {low:.0f} to {high:.0f}")
        print("Outliers:\n", orders[(orders['amount'] < low) | (orders['amount'] > high)], sep="")

        # 4. Z-score for comparison
        z = (orders['amount'] - orders['amount'].mean()) / orders['amount'].std()
        print("\nZ-scores:", z.round(2).tolist())
        print("The party order's z-score is below 3: the outlier inflates the std itself,")
        print("so in small samples the IQR rule is often the safer check.")

        # 5. Effect on summaries
        print(f"\nMean with party order:   {orders['amount'].mean():.0f}")
        print(f"Median with party order: {orders['amount'].median():.0f}")
        capped = orders['amount'].clip(low, high)
        print(f"Mean after capping:      {capped.mean():.0f}")
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Transforming Data and Feature Engineering</h1>
        </div>
        <p class="lc-lead">Raw columns are rarely in the shape your question needs. <strong>Feature engineering</strong> means creating new, more useful columns from existing ones &mdash; turning a timestamp into "hour of day", or marks into "pass / fail". Good features often matter more than clever algorithms.</p>
        <div class="lc-card">
          <h3>Common Transformations</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Example</th><th>pandas</th></tr></thead>
            <tbody>
              <tr><td>Ratios</td><td>Runs per ball (strike rate)</td><td>df['runs'] / df['balls'] * 100</td></tr>
              <tr><td>Date parts</td><td>Hour, weekday, month</td><td>df['ts'].dt.hour</td></tr>
              <tr><td>Binning</td><td>AQI &rarr; Good / Poor / Severe</td><td>pd.cut(df['aqi'], bins, labels)</td></tr>
              <tr><td>Flags</td><td>Is it a weekend?</td><td>df['ts'].dt.dayofweek &gt;= 5</td></tr>
              <tr><td>Text cleanup</td><td>"  Pune " &rarr; "pune"</td><td>df['city'].str.strip().str.lower()</td></tr>
              <tr><td>One-hot encoding</td><td>Cuisine &rarr; 0/1 columns</td><td>pd.get_dummies(df['cuisine'])</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Scaling Numbers</h3>
          <p>Distance in km (1&ndash;15) and order value in rupees (100&ndash;2000) live on very different scales. Many models work better when features are comparable.</p>
          <div class="lc-code"># Min-max scaling to 0..1<br>df['dist_scaled'] = (df['km'] - df['km'].min()) / (df['km'].max() - df['km'].min())<br># Standardising: mean 0, std 1<br>df['amount_z'] = (df['amount'] - df['amount'].mean()) / df['amount'].std()</div>
        </div>
        <div class="lc-card">
          <h3>Log Transform for Skewed Data</h3>
          <p>Order values, city populations and incomes have a long right tail. <code>np.log1p(x)</code> computes log(1 + x): it compresses big values so patterns become visible, and still works when x is 0. In the starter, amounts from ₹150 to ₹2,200 (almost 15×) become 5.02 to 7.70.</p>
        </div>
        <div class="lc-card">
          <h3>Binning with pd.cut</h3>
          <div class="lc-code">bins   = [0, 50, 100, 200, 300, 500]<br>labels = ['Good', 'Satisfactory', 'Moderate', 'Poor', 'Very Poor+']<br>df['aqi_band'] = pd.cut(df['aqi'], bins=bins, labels=labels)</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">     city  cuisine   km  amount  hour  weekend  late_night distance_band  km_scaled  log_amount<br>0    pune  Biryani  2.0     320    13    False       False          near       0.08        5.77<br>1    pune    Pizza  6.5     780    20    False       False           far       0.77        6.66<br>2  mumbai  Biryani  4.0     450    21     True       False           mid       0.38        6.11<br>3  mumbai     Dosa  1.5     150    12     True       False          near       0.00        5.02<br>4    pune    Pizza  8.0    2200    23    False        True           far       1.00        7.70<br>5  mumbai     Dosa  3.0     260    19    False       False          near       0.23        5.56</div>
          <ul class="lc-list">
            <li>Six messy city spellings became two clean labels: "pune" and "mumbai".</li>
            <li>3 and 4 August 2024 were a Saturday and a Sunday, so <code>weekend</code> is True for those rows (<code>dayofweek</code> counts Monday as 0).</li>
            <li><code>pd.cut</code> bins include the right edge: 3.0 km falls in "near" (0, 3], and 6.5 km in "far".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Leaking the answer into a feature</strong> — "delivered_at" to explain delivery time, or a "refund_issued" flag to predict complaints.</li>
            <li><strong>Computing scaling or binning limits on all data before a model split</strong> — use training data only (the Machine Learning course shows how with pipelines).</li>
            <li><strong>Using <code>np.log</code> on zeros</strong> — log(0) is −infinity; use <code>np.log1p</code>.</li>
            <li><strong>Too many one-hot columns</strong> — a column with 5,000 different values creates 5,000 new columns; group rare values into "Other" first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and check the <code>weekend</code> column against a calendar.</li>
            <li>Add a feature <code>orders['amount_per_km'] = orders['amount'] / orders['km']</code>. Which order is the most valuable per km?</li>
            <li>Change the distance bins to <code>[0, 2, 5, 20]</code>. How many orders are "near" now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Every feature should have a story: "late-night orders are slower because fewer riders are online". If you cannot explain a feature, be suspicious of it.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        pd.set_option('display.width', 200)
        pd.set_option('display.max_columns', None)

        orders = pd.DataFrame({
            'placed_at': pd.to_datetime([
                '2024-08-02 13:05', '2024-08-02 20:40', '2024-08-03 21:15',
                '2024-08-04 12:30', '2024-08-05 23:10', '2024-08-06 19:55']),
            'city':    ['  Pune', 'pune ', 'Mumbai', 'MUMBAI', 'Pune', 'mumbai'],
            'cuisine': ['Biryani', 'Pizza', 'Biryani', 'Dosa', 'Pizza', 'Dosa'],
            'km':      [2.0, 6.5, 4.0, 1.5, 8.0, 3.0],
            'amount':  [320, 780, 450, 150, 2200, 260],
        })

        # Date features
        orders['hour'] = orders['placed_at'].dt.hour
        orders['weekend'] = orders['placed_at'].dt.dayofweek >= 5
        orders['late_night'] = orders['hour'] >= 22

        # Text cleanup
        orders['city'] = orders['city'].str.strip().str.lower()

        # Binning distance
        orders['distance_band'] = pd.cut(orders['km'], bins=[0, 3, 6, 20],
                                         labels=['near', 'mid', 'far'])

        # Scaling and log transform
        orders['km_scaled'] = ((orders['km'] - orders['km'].min()) /
                               (orders['km'].max() - orders['km'].min())).round(2)
        orders['log_amount'] = np.log1p(orders['amount']).round(2)

        print(orders.drop(columns=['placed_at']))

        # One-hot encode cuisine
        print("\nOne-hot cuisine:")
        print(pd.get_dummies(orders['cuisine'], prefix='is').astype(int))
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Descriptive Statistics</h1>
        </div>
        <p class="lc-lead">Descriptive statistics squeeze a whole column into a few numbers that answer two questions: <strong>where is the centre?</strong> and <strong>how spread out is it?</strong> They are the first thing you report about any variable.</p>
        <div class="lc-card">
          <h3>Measures of Centre</h3>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Meaning</th><th>Affected by outliers?</th></tr></thead>
            <tbody>
              <tr><td>Mean</td><td>Sum divided by count</td><td>Yes, strongly</td></tr>
              <tr><td>Median</td><td>Middle value when sorted</td><td>No, robust</td></tr>
              <tr><td>Mode</td><td>Most frequent value</td><td>No; works for categories too</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Measures of Spread</h3>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Range</td><td>max &minus; min (sensitive to extremes)</td></tr>
              <tr><td>Variance</td><td>Average squared distance from the mean</td></tr>
              <tr><td>Standard deviation (std)</td><td>Square root of variance, in the original units</td></tr>
              <tr><td>IQR</td><td>Q3 &minus; Q1, the spread of the middle 50%</td></tr>
            </tbody>
          </table>
          <div class="lc-code">marks.mean(), marks.median(), marks.mode()[0]<br>marks.std(), marks.quantile(0.75) - marks.quantile(0.25)</div>
          <p>Variance and standard deviation come in two versions: the <strong>population</strong> formula divides by n, the <strong>sample</strong> formula divides by n &minus; 1. When your data is a sample and you want to estimate the spread of the whole population, n &minus; 1 corrects a small downward bias.</p>
        </div>
        <div class="lc-card">
          <h3>Same Mean, Different Story</h3>
          <p>Two sections both average 70 in Maths. Section A: everyone scored 65&ndash;75. Section B: half scored 40, half scored 100. The mean hides this; the <strong>standard deviation</strong> reveals it. Always report centre <em>and</em> spread.</p>
        </div>
        <div class="lc-card">
          <h3>Comparing Across Scales: Coefficient of Variation</h3>
          <p>CV = std / mean. It lets you compare variability of things measured in different units, e.g. "Is Chennai's rainfall more variable than Mumbai's?" even though Mumbai gets far more rain.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">           mean  median  mode   std  range   IQR<br>section_A  70.0    70.0  70.0   2.9     10   3.5<br>section_B  70.0    70.0  40.0  30.2     60  59.0<br><br>pandas std (n-1): 2.944<br>numpy std (n):    2.793<br>numpy std ddof=1: 2.944<br><br>Rainfall CV (%):<br>Mumbai     23.3<br>Chennai    51.2</div>
          <ul class="lc-list">
            <li>Both sections have mean and median 70, but Section B's std (30.2) is ten times Section A's (2.9). The averages hide two completely different classrooms.</li>
            <li>Section B has <em>two</em> modes, 40 and 100 (three students each). <code>mode()</code> returns both; <code>.iloc[0]</code> just shows the first. A two-humped distribution like this is exactly where "the average student" does not exist.</li>
            <li>Mumbai's rainfall std is larger in mm, but relative to its mean Chennai's rainfall varies twice as much (CV 51% vs 23%).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reporting the mean alone</strong> — always give a spread (std or IQR) next to it.</li>
            <li><strong>Mixing pandas and NumPy std</strong> — they use different defaults (n &minus; 1 vs n), so the numbers differ slightly.</li>
            <li><strong>Using the mean for skewed data</strong> — for incomes or order values, the median describes the typical case better.</li>
            <li><strong>Using CV when the mean is near zero or values can be negative</strong> — temperatures in °C, profit and loss: the CV becomes meaningless.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and explain in one sentence why Section B's IQR is so large.</li>
            <li>Change one Section A mark from <code>75</code> to <code>25</code>. Which statistics change a lot and which barely move?</li>
            <li>Compute the CV of Section A and Section B marks. Which class is more consistent?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> pandas <code>std()</code> uses the sample formula (divide by n&minus;1). NumPy <code>np.std()</code> divides by n unless you pass <code>ddof=1</code>. Know which one you are using.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        marks = pd.DataFrame({
            'section_A': [68, 72, 70, 65, 75, 71, 69, 73, 67, 70],
            'section_B': [40, 100, 42, 98, 45, 100, 40, 95, 40, 100],
        })

        summary = pd.DataFrame({
            'mean':   marks.mean(),
            'median': marks.median(),
            'mode':   marks.mode().iloc[0],
            'std':    marks.std(),
            'range':  marks.max() - marks.min(),
            'IQR':    marks.quantile(0.75) - marks.quantile(0.25),
        }).round(1)
        print(summary)

        print("\nSame average, very different classrooms!")

        # pandas vs NumPy standard deviation
        a = marks['section_A'].to_numpy()
        print(f"\npandas std (n-1): {marks['section_A'].std():.3f}")
        print(f"numpy std (n):    {np.std(a):.3f}")
        print(f"numpy std ddof=1: {np.std(a, ddof=1):.3f}")

        # Coefficient of variation for rainfall
        rain = pd.DataFrame({'Mumbai': [620, 840, 510, 930, 700],
                             'Chennai': [60, 130, 35, 150, 90]})
        cv = (rain.std() / rain.mean() * 100).round(1)
        print("\nRainfall CV (%):")
        print(cv)
        print("Chennai gets less rain, but its rainfall is relatively more unpredictable.")
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Understanding Distributions</h1>
        </div>
        <p class="lc-lead">A <strong>distribution</strong> describes how often each value occurs. Summary numbers tell you the centre and spread; the distribution tells you the <em>shape</em>. Shape decides which statistics and methods you can trust.</p>
        <div class="lc-card">
          <h3>Shapes You Will Meet</h3>
          <table class="lc-table">
            <thead><tr><th>Shape</th><th>Looks like</th><th>Example</th><th>Mean vs median</th></tr></thead>
            <tbody>
              <tr><td>Symmetric / normal</td><td>Bell curve</td><td>Heights of adults</td><td>About equal</td></tr>
              <tr><td>Right-skewed</td><td>Long tail to the right</td><td>Food order values, incomes</td><td>Mean &gt; median</td></tr>
              <tr><td>Left-skewed</td><td>Long tail to the left</td><td>Marks in an easy exam</td><td>Mean &lt; median</td></tr>
              <tr><td>Bimodal</td><td>Two humps</td><td>Orders at lunch and dinner</td><td>Neither is "typical"</td></tr>
              <tr><td>Uniform</td><td>Flat</td><td>A fair dice roll</td><td>About equal</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Normal Distribution and the 68-95-99.7 Rule</h3>
          <p>For bell-shaped data:</p>
          <ul class="lc-list">
            <li>About <strong>68%</strong> of values lie within 1 std of the mean.</li>
            <li>About <strong>95%</strong> lie within 2 std.</li>
            <li>About <strong>99.7%</strong> lie within 3 std.</li>
          </ul>
          <p>This is why a z-score above 3 is a common outlier signal.</p>
        </div>
        <div class="lc-card">
          <h3>Seeing Shape Without a Plot</h3>
          <p>Our sandbox cannot draw charts, but a text histogram works well:</p>
          <div class="lc-code">counts, edges = np.histogram(values, bins=8)<br>for c, left in zip(counts, edges):<br>    print(f"{left:7.1f} | {'#' * c}")</div>
        </div>
        <div class="lc-card">
          <h3>Measuring Skew</h3>
          <p><code>series.skew()</code> returns about 0 for symmetric data, a positive number for right skew and a negative number for left skew. Values beyond &plusmn;1 indicate strong skew.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Heights (cm)  (mean=164.0, median=164.2, skew=-0.01)<br>...<br>Order value (Rs)  (mean=366.3, median=321.2, skew=1.52)<br>    83.1 | ############<br>   194.3 | ###############################<br>   305.4 | ###########################<br>   416.6 | #############<br>   527.8 | #######<br>   639.0 | ###<br>   750.2 | #<br>...<br>Order hour of day  (mean=16.7, median=16.6, skew=0.02)<br>...<br>Within 1 std: 66.2%<br>Within 2 std: 96.2%<br>Within 3 std: 99.8%</div>
          <ul class="lc-list">
            <li>Heights: mean ≈ median and skew ≈ 0 — symmetric.</li>
            <li>Order values: a long right tail pulls the mean (366) above the median (321); skew 1.52 is strong.</li>
            <li>Order hours: two humps (lunch and dinner). The mean, 16.7 (about 4:40 pm), is a time when almost <em>nobody</em> orders — and skew ≈ 0 does not warn you. Always look at the shape, not just the numbers.</li>
            <li>The simulated heights follow the 68-95-99.7 rule closely (66.2%, 96.2%, 99.8%) — it is approximate for a sample of 500.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Assuming everything is normal</strong> — incomes, order values and waiting times are usually right-skewed.</li>
            <li><strong>Reading skew ≈ 0 as "bell-shaped"</strong> — the bimodal order hours have skew 0.02.</li>
            <li><strong>Too few or too many histogram bins</strong> — 3 bins hide the shape, 200 bins show only noise. Try a few values.</li>
            <li><strong>Applying the 68-95-99.7 rule to skewed data</strong> — it only holds for roughly normal distributions.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and match each histogram to a shape in the table above.</li>
            <li>Change <code>bins=10</code> to <code>bins=4</code> in <code>text_hist</code>. Can you still see the two humps in the order hours?</li>
            <li>Log-transform the order values (<code>np.log(order_values)</code>) and pass them to <code>text_hist</code>. What happens to the skew?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For strongly skewed data, report the <strong>median and IQR</strong> instead of mean and std, or log-transform before analysis.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(7)

        heights = pd.Series(rng.normal(165, 8, 500))              # symmetric
        order_values = pd.Series(rng.lognormal(5.8, 0.5, 500))    # right-skewed
        order_hours = pd.Series(np.concatenate([rng.normal(13, 1, 250),
                                                rng.normal(20.5, 1, 250)]))  # bimodal

        def text_hist(series, name, bins=10):
            counts, edges = np.histogram(series, bins=bins)
            print(f"\n{name}  (mean={series.mean():.1f}, median={series.median():.1f}, skew={series.skew():.2f})")
            for c, left in zip(counts, edges):
                print(f"{left:8.1f} | {'#' * (c // 5)}")

        text_hist(heights, "Heights (cm)")
        text_hist(order_values, "Order value (Rs)")
        text_hist(order_hours, "Order hour of day")

        # Check the 68-95-99.7 rule on the heights
        z = (heights - heights.mean()) / heights.std()
        for k in (1, 2, 3):
            print(f"Within {k} std: {(z.abs() <= k).mean() * 100:.1f}%")
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Probability Basics for Data Science</h1>
        </div>
        <p class="lc-lead">Probability is the language of uncertainty. It runs from <strong>0 (impossible)</strong> to <strong>1 (certain)</strong>. In data science we usually estimate probabilities from data: "Out of 1,000 orders, 120 were late, so P(late) &asymp; 0.12."</p>
        <div class="lc-card">
          <h3>Core Rules</h3>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Formula</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Complement</td><td>P(not A) = 1 &minus; P(A)</td><td>P(on time) = 1 &minus; 0.12 = 0.88</td></tr>
              <tr><td>Addition (either)</td><td>P(A or B) = P(A) + P(B) &minus; P(A and B)</td><td>Late <em>or</em> cancelled</td></tr>
              <tr><td>Independent events</td><td>P(A and B) = P(A) &times; P(B)</td><td>Two separate coin tosses</td></tr>
              <tr><td>Conditional</td><td>P(A | B) = P(A and B) / P(B)</td><td>P(late | raining)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Conditional Probability from a Table</h3>
          <p><strong>P(A | B)</strong> reads "probability of A <em>given</em> B". With pandas, a crosstab gives these directly:</p>
          <div class="lc-code">pd.crosstab(df['raining'], df['late'], normalize='index')<br># each row now sums to 1: P(late | raining) and P(late | dry)</div>
          <p>If P(late | raining) is much bigger than P(late | dry), rain and lateness are related.</p>
        </div>
        <div class="lc-card">
          <h3>Bayes' Rule in One Example</h3>
          <p>A COVID test catches 95% of real cases and wrongly flags 5% of healthy people. Only 2% of people are infected. If you test positive, what is the chance you are infected?</p>
          <div class="lc-code">P(infected | positive) = P(pos | inf) &times; P(inf) / P(pos)<br>                       = 0.95 &times; 0.02 / (0.95 &times; 0.02 + 0.05 &times; 0.98)<br>                       &asymp; 0.28</div>
          <p>Only about 28%! When something is rare, most positives are false alarms. This is called the <strong>base rate</strong> effect. (The Artificial Intelligence course, lesson 11, uses Bayes' rule to reason about fraud alarms; here we focus on estimating probabilities from data.)</p>
        </div>
        <div class="lc-card">
          <h3>Simulation: Let the Computer Count</h3>
          <p>When the maths is hard, simulate thousands of random trials with NumPy and count how often the event happens. With a fixed seed, the result is reproducible.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">P(late)          = 0.183<br>P(on time)       = 0.817<br><br>Conditional table (rows sum to 1):<br>late     False  True<br>raining<br>False    0.903  0.097<br>True     0.565  0.435<br><br>P(late | raining) = 0.435<br>P(late | dry)     = 0.097<br>P(raining | late) = 0.608   &lt;- not the same as P(late | raining)!<br><br>P(infected | positive test) = 0.279<br>P(shared birthday in a class of 30) ~ 0.69</div>
          <ul class="lc-list">
            <li>The data was simulated with P(late | rain) = 0.40 and P(late | dry) = 0.10; from 2,000 orders we estimate 0.435 and 0.097 — close, but not exact. Estimates from data always carry sampling error (lesson 12).</li>
            <li>Rain makes lateness about 4.5 times more likely. But only 25% of days are rainy, so 61% of late orders happen on rainy days — P(raining | late) answers a different question.</li>
            <li>The birthday simulation matches the exact answer (about 0.71) closely; with 5,000 trials the estimate is within a couple of percentage points.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Swapping the condition</strong> — P(late | raining) and P(raining | late) are different numbers (0.435 vs 0.608 here).</li>
            <li><strong>Assuming independence</strong> — multiplying P(rain) × P(late) is wrong when rain affects lateness.</li>
            <li><strong>Adding probabilities of overlapping events</strong> — P(A or B) needs the "minus P(A and B)" correction.</li>
            <li><strong>Trusting a probability from tiny counts</strong> — "2 of 3 orders were late" is not a reliable 67%.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and verify that each row of the conditional table sums to 1.</li>
            <li>Change <code>normalize='index'</code> to <code>normalize='columns'</code>. Which conditional probabilities does the table show now?</li>
            <li>Change the class size from 30 to 50 in the birthday simulation (both the <code>size</code> and the <code>&lt; 30</code>). What is the probability now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> P(A | B) and P(B | A) are different. P(cricket fan | Indian) is high; P(Indian | cricket fan) is a completely different number.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(42)
        n = 2000

        # Simulate delivery data: rain makes lateness more likely
        raining = rng.random(n) < 0.25
        late = np.where(raining, rng.random(n) < 0.40, rng.random(n) < 0.10)
        df = pd.DataFrame({'raining': raining, 'late': late})

        print(f"P(late)          = {df['late'].mean():.3f}")
        print(f"P(on time)       = {1 - df['late'].mean():.3f}")

        table = pd.crosstab(df['raining'], df['late'], normalize='index').round(3)
        print("\nConditional table (rows sum to 1):")
        print(table)
        print(f"\nP(late | raining) = {table.loc[True, True]:.3f}")
        print(f"P(late | dry)     = {table.loc[False, True]:.3f}")

        # Bayes: how likely is it raining, given the order was late?
        p_rain_given_late = df.loc[df['late'], 'raining'].mean()
        print(f"P(raining | late) = {p_rain_given_late:.3f}   <- not the same as P(late | raining)!")

        # Bayes rule with the medical test example
        sens, false_pos, prevalence = 0.95, 0.05, 0.02
        p_pos = sens * prevalence + false_pos * (1 - prevalence)
        print(f"\nP(infected | positive test) = {sens * prevalence / p_pos:.3f}")

        # Simulation: chance that at least 2 of 30 students share a birthday
        trials = rng.integers(0, 365, size=(5000, 30))
        shared = np.mean([len(set(row)) < 30 for row in trials])
        print(f"P(shared birthday in a class of 30) ~ {shared:.2f}")
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Sampling and the Central Limit Theorem</h1>
        </div>
        <p class="lc-lead">We rarely measure everyone. Election exit polls ask a few thousand voters, not 90 crore. A <strong>sample</strong> is a subset of the <strong>population</strong>. If it is chosen well, it can tell us a lot about the whole &mdash; and statistics tells us how much to trust it.</p>
        <div class="lc-card">
          <h3>Sampling Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Simple random</td><td>Every member equally likely</td><td>Pick 100 roll numbers at random</td></tr>
              <tr><td>Stratified</td><td>Random sample within each group</td><td>20 students from each of 5 schools</td></tr>
              <tr><td>Convenience</td><td>Whoever is easy to reach</td><td>Asking only your friends &mdash; biased!</td></tr>
            </tbody>
          </table>
          <div class="lc-code">df.sample(n=100, random_state=1)                             # simple random<br>df.groupby('school').sample(n=20, random_state=1)             # stratified</div>
        </div>
        <div class="lc-card">
          <h3>Sampling Bias</h3>
          <p>A survey on "Do students like online classes?" posted only on Instagram reaches students who are already online a lot. A bigger sample does <strong>not</strong> fix a biased method; it just gives you a confident wrong answer.</p>
        </div>
        <div class="lc-card">
          <h3>The Central Limit Theorem (CLT)</h3>
          <p>Take many random samples of size n and compute each sample's mean. Then:</p>
          <ul class="lc-list">
            <li>The sample means form a roughly <strong>normal (bell-shaped)</strong> distribution, <em>even if the original data is skewed</em>, once n is large enough. n &ge; 30 is a common rule of thumb; very skewed data needs more.</li>
            <li>Their centre is the true population mean.</li>
            <li>Their spread, called the <strong>standard error</strong>, is &sigma; / &radic;n. Four times the sample size halves the error.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Confidence Intervals</h3>
          <p>Thanks to the CLT, a rough 95% confidence interval for a mean is:</p>
          <div class="lc-code">se = sample.std() / np.sqrt(len(sample))<br>low, high = sample.mean() - 1.96 * se, sample.mean() + 1.96 * se</div>
          <p>Meaning: if we repeated this sampling many times, about 95% of the intervals built this way would contain the true mean. It does <em>not</em> mean "there is a 95% chance the true mean is in this particular interval" — the true mean is fixed; it is the interval that varies. For small samples, statisticians use the t-distribution (about 2.01 instead of 1.96 for n = 50); <code>scipy.stats.t.interval</code> computes it.</p>
          <p><strong>Bootstrap CI</strong> — when you do not want to rely on formulas, resample your one sample <em>with replacement</em> thousands of times, compute the mean each time, and take the middle 95% of those means.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Population mean: 478.9   (skewed, long right tail)<br><br>n=  5: mean of means=481.9, spread (SE)=176.1, theory sigma/sqrt(n)=179.2<br>n= 30: mean of means=479.7, spread (SE)=73.8, theory sigma/sqrt(n)=73.2<br>n=120: mean of means=478.8, spread (SE)=36.5, theory sigma/sqrt(n)=36.6<br><br>One sample of 50: mean=474.9, 95% CI=(370.1, 579.7)<br>Contains true mean? True<br>Bootstrap 95% CI=(376.3, 586.0)<br>Intervals that contained the true mean: 92.9%</div>
          <ul class="lc-list">
            <li>The sample means centre on the true mean (≈ 479) for every n, and their spread matches σ/√n. Going from n = 30 to n = 120 (4×) halves the SE (73.8 → 36.5).</li>
            <li>The text histograms (in the full output) are lopsided for n = 5 and bell-shaped for n = 120 — the CLT at work.</li>
            <li>The formula CI and the bootstrap CI agree closely.</li>
            <li>Repeating the whole study 1,000 times, 92.9% of the "95%" intervals caught the true mean — a little short, because this data is very skewed and 1.96 ignores small-sample uncertainty. Rules of thumb are approximations; simulation lets you check them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Thinking the CLT makes the data normal</strong> — it is the distribution of <em>sample means</em> that becomes normal, not the individual values.</li>
            <li><strong>Believing a bigger sample fixes bias</strong> — 1 lakh Instagram responses are still only Instagram users.</li>
            <li><strong>Misreading the CI</strong> — "95% of customers spend between ₹370 and ₹580" is wrong; the interval is about the <em>mean</em>, not individual customers.</li>
            <li><strong>Using the population std formula for the SE</strong> — for a sample use <code>std(ddof=1)</code>, as the starter does.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and check that the SE halves when n goes from 30 to 120.</li>
            <li>Change every <code>50</code> in the last three blocks of the code to <code>200</code> (the sample size). How much narrower is the CI? Does the coverage get closer to 95%?</li>
            <li>Replace <code>1.96</code> with <code>2.01</code> (the t-value for n = 50) in the coverage loop. What coverage do you get?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always report a range, not just a single number. "Average order is &#8377;420 &plusmn; &#8377;15" is far more honest than "Average order is &#8377;420".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        rng = np.random.default_rng(0)

        # Population: 100,000 food order values - strongly right-skewed
        population = rng.exponential(scale=400, size=100_000) + 80
        print(f"Population mean: {population.mean():.1f}   (skewed, long right tail)")

        # Draw 2000 samples of size n and record each sample's mean
        for n in (5, 30, 120):
            means = np.array([rng.choice(population, n).mean() for _ in range(2000)])
            print(f"\nn={n:3d}: mean of means={means.mean():.1f}, "
                  f"spread (SE)={means.std():.1f}, theory sigma/sqrt(n)={population.std() / np.sqrt(n):.1f}")
            counts, edges = np.histogram(means, bins=9)
            for c, left in zip(counts, edges):
                print(f"   {left:7.0f} | {'#' * (c // 12)}")

        # One real-world sample and its 95% confidence interval
        sample = rng.choice(population, 50)
        se = sample.std(ddof=1) / np.sqrt(len(sample))
        low, high = sample.mean() - 1.96 * se, sample.mean() + 1.96 * se
        print(f"\nOne sample of {len(sample)}: mean={sample.mean():.1f}, 95% CI=({low:.1f}, {high:.1f})")
        print("Contains true mean?", low <= population.mean() <= high)

        # Bootstrap CI: resample the ONE sample we have, with replacement
        boot = [rng.choice(sample, len(sample)).mean() for _ in range(5000)]
        b_low, b_high = np.percentile(boot, [2.5, 97.5])
        print(f"Bootstrap 95% CI=({b_low:.1f}, {b_high:.1f})")

        # What "95% confidence" means: repeat the whole study 1000 times
        hits = 0
        for _ in range(1000):
            s = rng.choice(population, 50)
            se_s = s.std(ddof=1) / np.sqrt(50)
            hits += s.mean() - 1.96 * se_s <= population.mean() <= s.mean() + 1.96 * se_s
        print(f"Intervals that contained the true mean: {hits / 10:.1f}%")
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Hypothesis Testing</h1>
        </div>
        <p class="lc-lead">Your coaching centre's new study method raised the average mark from 68 to 72. Is that a real improvement, or could it be luck? <strong>Hypothesis testing</strong> is a formal way to answer "could this difference be just chance?"</p>
        <div class="lc-card">
          <h3>The Steps</h3>
          <ol class="lc-list">
            <li><strong>Null hypothesis (H&#8320;)</strong>: no effect. "The method makes no difference."</li>
            <li><strong>Alternative (H&#8321;)</strong>: there is an effect.</li>
            <li>Choose a <strong>significance level</strong>, usually &alpha; = 0.05.</li>
            <li>Compute a <strong>test statistic</strong> from the data.</li>
            <li>Find the <strong>p-value</strong>: the probability of seeing a difference at least this big <em>if H&#8320; were true</em>.</li>
            <li>If p &lt; &alpha;, reject H&#8320;. Otherwise, you "fail to reject" it.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Two-Sample t-test by Hand (Welch)</h3>
          <div class="lc-code">diff = a.mean() - b.mean()<br>se   = np.sqrt(a.var(ddof=1) / len(a) + b.var(ddof=1) / len(b))<br>t    = diff / se</div>
          <p>A |t| above about 2 usually means p &lt; 0.05 for moderate sample sizes. <code>scipy.stats.ttest_ind(a, b, equal_var=False)</code> gives the exact p-value for this Welch test. A second way, which needs no formulas at all, is a <strong>permutation test</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Permutation Test: Shuffle the Labels</h3>
          <p>If the method truly made no difference, the labels "old" and "new" are arbitrary. So shuffle them thousands of times and see how often a random split produces a difference as big as the real one. That fraction is the p-value.</p>
          <p><strong>Output of the starter, part 1:</strong></p>
          <div class="lc-code">Observed difference (effect size): 5.07 marks<br>Permutation p-value: 0.0077<br>Welch t-test: t = 2.92, p = 0.0069</div>
          <p>Only about 0.8% of random shuffles produce a gap of 5.07 marks or more, and the t-test agrees (p ≈ 0.007). Two different methods, the same conclusion: a difference this large is very unlikely if the method had no effect.</p>
        </div>
        <div class="lc-card">
          <h3>Reading Results Correctly</h3>
          <table class="lc-table">
            <thead><tr><th>Statement</th><th>Correct?</th></tr></thead>
            <tbody>
              <tr><td>"p = 0.03, so the difference is unlikely to be pure chance."</td><td>Yes</td></tr>
              <tr><td>"p = 0.03, so there is a 97% chance the method works."</td><td>No</td></tr>
              <tr><td>"p = 0.40, so we proved the method has no effect."</td><td>No &mdash; we just lack evidence</td></tr>
              <tr><td>"Significant" means "large and important."</td><td>No &mdash; check the effect size too</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A/B Testing: Hypothesis Tests in Industry</h3>
          <p>An e-commerce app shows the old checkout page (A) to 2,400 random visitors and a new page (B) to another 2,400. Because visitors are assigned <em>at random</em>, a real difference can be credited to the page itself. For conversion rates, a <strong>two-proportion z-test</strong> is standard:</p>
          <div class="lc-code">p_pool = (conv_a + conv_b) / (n_a + n_b)<br>se = np.sqrt(p_pool * (1 - p_pool) * (1 / n_a + 1 / n_b))<br>z = (p_b - p_a) / se<br>p_value = 2 * stats.norm.sf(abs(z))      # two-sided</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">A/B test: A=5.0%  B=6.5%  difference=+1.5 points  z=2.23  p=0.0256</div>
          <p>The new page converts 1.5 percentage points better (a 30% relative lift), and p = 0.026 &lt; 0.05. Before celebrating, decide in advance: the sample size, how long the test runs, and the one metric you will judge it on. Stopping the test the moment p dips below 0.05 ("peeking") inflates false positives.</p>
        </div>
        <div class="lc-card">
          <h3>Chi-Square Test on a Crosstab</h3>
          <p>When <em>both</em> variables are categories (page A/B and bought yes/no, or city and payment method), put the counts in a <strong>crosstab</strong> (contingency table) and ask: are the two variables independent? The <strong>chi-square test</strong> compares each observed count with the count you would <em>expect</em> if they were independent.</p>
          <div class="lc-code">table = pd.crosstab(visits['page'], visits['bought'])<br>chi2, p, dof, expected = stats.chi2_contingency(table, correction=False)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">bought     0    1<br>page<br>A       2280  120<br>B       2244  156<br>Chi-square: chi2 = 4.98, dof = 1, p = 0.0256</div>
          <p>Same p-value as the z-test. That is no accident: for a 2&times;2 table without the continuity correction, chi2 = z&sup2; (2.23&sup2; &asymp; 4.98). The chi-square test is more general, though &mdash; it works for a 3&times;4 table of city &times; payment method, where a z-test cannot. Rule of thumb: every <em>expected</em> count should be at least 5; otherwise the p-value is unreliable. By default SciPy applies Yates' continuity correction to 2&times;2 tables, which gives a slightly larger p-value.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the Sample Size First: Power</h3>
          <p><strong>Power</strong> is the chance that your test detects an effect that really exists. The usual target is 80%. For comparing two conversion rates, the visitors needed <em>per group</em> are:</p>
          <div class="lc-code">n = (z_alpha/2 + z_power)&sup2; &times; (p1(1 &minus; p1) + p2(1 &minus; p2)) / (p2 &minus; p1)&sup2;<br># with alpha = 0.05 and power = 0.80: (1.96 + 0.84)&sup2; &asymp; 7.85</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Visitors per page to detect 5.0% -&gt; 6.5%: 3,778<br>Visitors per page to detect 5.0% -&gt; 5.5%: 31,231</div>
          <ul class="lc-list">
            <li>Our test used 2,400 per page, so it had only about 61% power for a 1.5-point lift. We were somewhat lucky to see p &lt; 0.05; a planned test would run to about 3,800 visitors per page.</li>
            <li>Detecting a lift one-third the size (0.5 points) needs about 8 times as many visitors, because n grows with 1 / (difference)&sup2;.</li>
            <li>Fix n in advance and run to the end. This is the honest cure for "peeking".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Multiple-Testing Trap</h3>
          <p>With α = 0.05, about 1 in 20 tests of a <em>non-existent</em> effect will still come out "significant". The starter runs 20 tests on groups drawn from the same distribution:</p>
          <div class="lc-code">20 tests with no real effect -&gt; 1 'significant' result(s) by pure chance</div>
          <p>Test 20 metrics, or 20 city segments, and you should expect a false "discovery". Reporting only that one is called <strong>p-hacking</strong>. Fixes: pick the main metric before looking, and adjust for many tests (for example the Bonferroni correction: use α / number of tests).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>"p = 0.03 means a 3% chance the null hypothesis is true"</strong> — no. The p-value assumes H&#8320; is true and asks how surprising the data would be.</li>
            <li><strong>"Not significant" read as "no effect"</strong> — small samples often cannot detect real effects.</li>
            <li><strong>Ignoring the effect size</strong> — report "5.07 marks better (p = 0.007)", not just "significant".</li>
            <li><strong>Peeking and stopping early</strong> in an A/B test, or testing many metrics and reporting only the winner.</li>
            <li><strong>Skipping the power calculation</strong> — an underpowered test usually says "not significant" even when the change works.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and compare the permutation and t-test p-values.</li>
            <li>In the A/B test, change <code>conv_b</code> to <code>135</code> (5.6%). Is the result still significant at 0.05?</li>
            <li>Keep the same rates but double both samples: <code>n_a = n_b = 4800</code> and <code>conv_a, conv_b = 240, 270</code>. What happens to the p-value? What does this say about sample size?</li>
            <li>Call <code>stats.chi2_contingency(table)</code> without <code>correction=False</code>. Does the p-value go up or down?</li>
            <li>Use <code>n_per_group(0.05, 0.06)</code> to find the visitors needed to detect a 1-point lift. Then try <code>power=0.9</code>.</li>
            <li>Change the multiple-testing loop to 100 tests. About how many false alarms do you expect?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> With huge samples, even a 0.1-mark difference becomes "significant". Always report the <strong>effect size</strong> (the actual difference, ideally with a confidence interval from lesson 12) alongside the p-value.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd
        from scipy import stats

        rng = np.random.default_rng(12)

        # Part 1: test marks for two batches of a coaching centre
        old_method = np.array([62, 71, 58, 69, 74, 66, 70, 61, 68, 72, 65, 63, 75, 67, 70])
        new_method = np.array([70, 76, 64, 73, 79, 68, 75, 69, 72, 80, 71, 66, 77, 74, 73])
        diff = new_method.mean() - old_method.mean()
        print(f"Observed difference (effect size): {diff:.2f} marks")

        # Permutation test: shuffle the labels 10,000 times (two-sided)
        combined, n_new = np.concatenate([old_method, new_method]), len(new_method)
        fake = np.array([(lambda s: s[:n_new].mean() - s[n_new:].mean())(rng.permutation(combined))
                         for _ in range(10_000)])
        print(f"Permutation p-value: {np.mean(np.abs(fake) >= abs(diff)):.4f}")
        t, p = stats.ttest_ind(new_method, old_method, equal_var=False)
        print(f"Welch t-test: t = {t:.2f}, p = {p:.4f}")

        # Part 2: an A/B test of two checkout pages (conversions out of visitors)
        conv_a, n_a = 120, 2400        # old page: 5.0%
        conv_b, n_b = 156, 2400        # new page: 6.5%
        p_a, p_b = conv_a / n_a, conv_b / n_b
        p_pool = (conv_a + conv_b) / (n_a + n_b)
        z = (p_b - p_a) / np.sqrt(p_pool * (1 - p_pool) * (1 / n_a + 1 / n_b))
        print(f"\nA/B test: A={p_a:.1%}  B={p_b:.1%}  difference={(p_b - p_a) * 100:+.1f} points  z={z:.2f}  p={2 * stats.norm.sf(abs(z)):.4f}")

        # Part 3: the same data as a crosstab + chi-square test of independence
        visits = pd.DataFrame({'page': ['A'] * n_a + ['B'] * n_b,
                               'bought': [1] * conv_a + [0] * (n_a - conv_a) + [1] * conv_b + [0] * (n_b - conv_b)})
        table = pd.crosstab(visits['page'], visits['bought'])
        chi2, p_chi, dof, expected = stats.chi2_contingency(table, correction=False)
        print(f"\n{table}\nChi-square: chi2 = {chi2:.2f}, dof = {dof}, p = {p_chi:.4f}")

        # Part 4: plan the sample size BEFORE the test (alpha = 0.05, power = 80%)
        def n_per_group(p1, p2, alpha=0.05, power=0.80):
            z_sum = stats.norm.ppf(1 - alpha / 2) + stats.norm.ppf(power)
            return int(np.ceil(z_sum ** 2 * (p1 * (1 - p1) + p2 * (1 - p2)) / (p2 - p1) ** 2))
        for target in (0.065, 0.055):
            print(f"Visitors per page to detect 5.0% -> {target:.1%}: {n_per_group(0.05, target):,}")

        # Part 5: multiple testing - 20 tests where NOTHING is really different
        false_alarms = 0
        for _ in range(20):
            a, b = rng.normal(70, 8, 30), rng.normal(70, 8, 30)
            false_alarms += stats.ttest_ind(a, b, equal_var=False).pvalue < 0.05
        print(f"\n20 tests with no real effect -> {false_alarms} 'significant' result(s) by pure chance")
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Correlation vs Causation</h1>
        </div>
        <p class="lc-lead">Ice-cream sales and drowning cases both rise in summer. Does ice-cream cause drowning? Of course not &mdash; hot weather drives both. <strong>Correlation</strong> tells you two things move together; it does not tell you that one <strong>causes</strong> the other.</p>
        <div class="lc-card">
          <h3>The Correlation Coefficient (r)</h3>
          <table class="lc-table">
            <thead><tr><th>r value</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>+1</td><td>Perfect positive straight-line relationship</td></tr>
              <tr><td>around +0.7</td><td>Strong positive</td></tr>
              <tr><td>around 0</td><td>No <em>linear</em> relationship</td></tr>
              <tr><td>around &minus;0.7</td><td>Strong negative</td></tr>
              <tr><td>&minus;1</td><td>Perfect negative straight-line relationship</td></tr>
            </tbody>
          </table>
          <div class="lc-code">df['study_hours'].corr(df['marks'])          # Pearson (linear)<br>df.corr(numeric_only=True)                   # full matrix<br>df['x'].corr(df['y'], method='spearman')     # rank-based, robust</div>
        </div>
        <div class="lc-card">
          <h3>Why Correlation Can Mislead</h3>
          <ul class="lc-list">
            <li><strong>Confounders</strong>: a hidden third variable drives both (temperature &rarr; ice-cream and drowning).</li>
            <li><strong>Reverse causation</strong>: cities with more hospitals have more sick people &mdash; hospitals don't cause illness.</li>
            <li><strong>Coincidence</strong>: search enough columns and some will correlate by chance.</li>
            <li><strong>Non-linear patterns</strong>: a U-shape can have r &asymp; 0 yet a strong relationship.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Controlling for a Confounder</h3>
          <p>Split the data by the suspected confounder and check the correlation <em>within</em> each group. If it disappears, the confounder was likely responsible.</p>
          <div class="lc-code">for season, group in df.groupby('season'):<br>    print(season, group['icecream'].corr(group['drownings']))</div>
        </div>
        <div class="lc-card">
          <h3>How Do We Show Causation?</h3>
          <p>The gold standard is a <strong>randomised controlled experiment</strong> (an A/B test): randomly assign who gets the treatment so that confounders are balanced between groups. When experiments are impossible, careful study design and domain knowledge are needed.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Correlation matrix:<br>           temp  icecream  drownings<br>temp       1.00      0.99       0.88<br>icecream   0.99      1.00       0.85<br>drownings  0.88      0.85       1.00<br><br>Ice-cream vs drownings (all days): r = 0.85  &lt;- looks strong!<br><br>Within each season (temperature roughly fixed):<br>  summer: r = 0.28<br>  winter: r = 0.20<br>The link mostly disappears -&gt; temperature was the confounder.<br><br>U-shaped data: Pearson r = -0.00, yet y depends perfectly on x.</div>
          <ul class="lc-list">
            <li>In the simulation, ice-cream never affects drownings — both are driven only by temperature — yet r = 0.85 across all days.</li>
            <li>Within one season, temperature varies only a little, so the link weakens to about 0.2–0.3 (what remains comes from day-to-day temperature changes inside the season).</li>
            <li>For y = x², Pearson r is 0 even though y is completely determined by x: r measures only <em>straight-line</em> association. Spearman's rank correlation catches relationships that always go up (or always go down), but it would also miss this U-shape.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Writing "X causes Y" from a correlation</strong> — say "is associated with" unless you ran an experiment.</li>
            <li><strong>Concluding "no relationship" from r ≈ 0</strong> — look at the data; the pattern may be curved.</li>
            <li><strong>Letting one outlier create a correlation</strong> — a single extreme point can push r from 0.1 to 0.8; Spearman is more robust.</li>
            <li><strong>Squaring the wrong idea</strong> — r = 0.5 does not mean "50% related"; r² = 0.25 means a straight line explains 25% of the variation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and read the correlation matrix.</li>
            <li>Compute <code>df['icecream'].corr(df['drownings'], method='spearman')</code>. Is it close to the Pearson value?</li>
            <li>For the U-shaped data, compute the correlation of <code>x ** 2</code> with <code>y</code> instead. What do you get, and why?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Write "is associated with" rather than "causes" unless your data came from a randomised experiment.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(3)

        # 60 days across two seasons; temperature is the hidden driver
        season = np.repeat(['winter', 'summer'], 30)
        temp = np.where(season == 'summer', rng.normal(36, 2, 60), rng.normal(18, 2, 60))
        icecream = 20 + 6 * temp + rng.normal(0, 10, 60)
        drownings = 0.3 * temp + rng.normal(0, 1.5, 60)
        df = pd.DataFrame({'season': season, 'temp': temp,
                           'icecream': icecream, 'drownings': drownings})

        print("Correlation matrix:")
        print(df[['temp', 'icecream', 'drownings']].corr().round(2))

        r = df['icecream'].corr(df['drownings'])
        print(f"\nIce-cream vs drownings (all days): r = {r:.2f}  <- looks strong!")

        print("\nWithin each season (temperature roughly fixed):")
        for name, group in df.groupby('season'):
            print(f"  {name:6s}: r = {group['icecream'].corr(group['drownings']):.2f}")
        print("The link mostly disappears -> temperature was the confounder.")

        # r near 0 does NOT mean no relationship
        x = np.linspace(-3, 3, 50)
        y = x ** 2
        print(f"\nU-shaped data: Pearson r = {np.corrcoef(x, y)[0, 1]:.2f}, "
              "yet y depends perfectly on x.")
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Grouping and Aggregation for Insights</h1>
        </div>
        <p class="lc-lead">Most business questions are really <strong>comparison</strong> questions: which city, which team, which month? Grouping splits data into segments, aggregating summarises each one, and the insight comes from comparing them.</p>
        <div class="lc-card">
          <h3>From Question to groupby</h3>
          <table class="lc-table">
            <thead><tr><th>Question</th><th>Group by</th><th>Aggregate</th></tr></thead>
            <tbody>
              <tr><td>Which city orders most?</td><td>city</td><td>count of orders</td></tr>
              <tr><td>Which cuisine earns most?</td><td>cuisine</td><td>sum of amount</td></tr>
              <tr><td>Which batsman is most consistent?</td><td>player</td><td>std of runs</td></tr>
              <tr><td>How does AQI change by month?</td><td>month</td><td>median AQI</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Code in One Line; the Choice of Metric Is the Skill</h3>
          <p>One call gives several metrics per group: <code>df.groupby('city').agg(orders=('order_id', 'count'), revenue=('amount', 'sum'), late_rate=('late', 'mean'))</code>, and <code>pd.pivot_table(df, index='city', columns='cuisine', values='amount', aggfunc='sum')</code> gives a two-way view. (The pandas course, lessons 10 and 14, covers groupby, named aggregation and pivot tables in depth.) The mean of a True/False column is the <strong>proportion</strong> of True values &mdash; a handy trick for rates. What matters here is picking the metric that answers the question:</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Answers</th><th>Misleads when...</th></tr></thead>
            <tbody>
              <tr><td>Total (sum)</td><td>Where is the most money or volume?</td><td>Groups differ in size: a big city wins just by being big</td></tr>
              <tr><td>Mean per row</td><td>What does a typical order look like?</td><td>A few huge values exist; use the median too</td></tr>
              <tr><td>Rate (mean of True/False)</td><td>How often does something go wrong?</td><td>The group is tiny: 2 late out of 2 is "100%"</td></tr>
              <tr><td>Share of total</td><td>How important is each group to the whole?</td><td>Shown without the absolute numbers behind it</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Beware Small Groups and Simpson's Paradox</h3>
          <ul class="lc-list">
            <li>A group with 2 orders and a 100% late rate is not a crisis &mdash; always show the count next to a rate.</li>
            <li><strong>Simpson's paradox</strong>: a trend in every subgroup can reverse when the groups are combined, because group sizes differ. Check results at more than one level.</li>
            </ul>
            <p>Example: two delivery partners, X and Y. Y is better on short trips <em>and</em> on long trips, yet worse overall — because most of Y's orders are the hard, long trips.</p>
            <div class="lc-code">d = pd.DataFrame({'partner': ['X', 'X', 'Y', 'Y'], 'trip': ['short', 'long', 'short', 'long'],<br>                  'on_time': [90, 30, 19, 70], 'orders': [100, 50, 20, 100]})<br>by_trip = d.assign(rate=d.on_time / d.orders).pivot(index='partner', columns='trip', values='rate')<br>overall = d.groupby('partner')[['on_time', 'orders']].sum()<br>by_trip['overall'] = overall.on_time / overall.orders<br>print(by_trip.round(2))</div>
            <p><strong>Output:</strong></p>
            <div class="lc-code">trip     long  short  overall<br>partner<br>X         0.6   0.90     0.80<br>Y         0.7   0.95     0.74</div>
            <p>Judging partners on the overall rate would punish Y for taking the difficult trips. The fair comparison is within each trip type.</p>
        </div>
        <div class="lc-card">
          <h3>Is the Gap Between Groups Real?</h3>
          <p>A group comparison is only an insight if the difference is bigger than chance. For a rate across several groups, test the <code>city &times; late</code> crosstab with the chi-square test from lesson 13:</p>
          <div class="lc-code">table = pd.crosstab(df['city'], df['late'])<br>chi2, p, dof, expected = stats.chi2_contingency(table)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Chi-square city vs late: chi2 = 11.8, dof = 3, p = 0.0082<br>Smallest expected count: 4.9 (rule of thumb: at least 5)</div>
          <p>p = 0.008, so late rates really do differ between cities. The test says <em>that</em> they differ, not <em>which</em> city is different &mdash; the table shows that it is Kolkata. Jaipur's expected late count (4.9) is just under 5, so treat the p-value as approximate; with more Jaipur orders it would be trustworthy.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">           orders  revenue  avg_value  late_rate  revenue_share_%<br>city<br>Hyderabad     125    66097      529.0       16.8             42.8<br>Pune           90    45486      505.0       12.2             29.4<br>Kolkata        57    28227      495.0       31.6             18.3<br>Jaipur         28    14660      524.0        7.1              9.5<br>...<br>Insight: Hyderabad is the biggest market (42.8% of revenue).<br>Insight: Kolkata has the highest late rate (31.6% of 57 orders).</div>
          <p>Kolkata's late rate is about double the others' — and it is based on 57 orders, not 5, so it is worth acting on. Jaipur's low 7.1% rests on only 28 orders (2 late ones), so treat it with care.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Showing rates without counts</strong> — always print the group size next to a percentage.</li>
            <li><strong>Averaging averages</strong> — the mean of four city averages is not the overall average when cities have different numbers of orders.</li>
            <li><strong>Comparing totals across groups of different size</strong> — Hyderabad earns most partly because it has the most orders; compare per-order values too.</li>
            <li><strong>Stopping at one level</strong> — as Simpson's paradox shows, a combined result can point the opposite way from every subgroup.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and check that the revenue shares add up to about 100%.</li>
            <li>Add <code>median_value=('amount', 'median')</code> to the <code>agg</code> call. Is the median close to the mean in each city?</li>
            <li>Compute the overall late rate with <code>df['late'].mean()</code>, and compare it with the plain average of the four city late rates. Why are they different?</li>
            <li>Change Kolkata's late probability from <code>0.30</code> to <code>0.14</code> and rerun. Is the chi-square test still significant?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <strong>share of total</strong> (e.g. <code>revenue / revenue.sum()</code>) to turn raw numbers into insight: "Hyderabad brings 38% of revenue" is easier to act on than "&#8377;18,400".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd
        from scipy import stats

        rng = np.random.default_rng(5)
        n = 300
        df = pd.DataFrame({
            'order_id': range(1, n + 1),
            'city':     rng.choice(['Hyderabad', 'Pune', 'Kolkata', 'Jaipur'], n, p=[0.4, 0.3, 0.2, 0.1]),
            'cuisine':  rng.choice(['Biryani', 'Dosa', 'Pizza'], n),
            'amount':   rng.integers(120, 900, n),
        })
        df['late'] = rng.random(n) < np.where(df['city'] == 'Kolkata', 0.30, 0.12)

        summary = df.groupby('city').agg(
            orders=('order_id', 'count'),
            revenue=('amount', 'sum'),
            avg_value=('amount', 'mean'),
            late_rate=('late', 'mean'),
        ).sort_values('revenue', ascending=False)
        summary['revenue_share_%'] = (summary['revenue'] / summary['revenue'].sum() * 100).round(1)
        summary['avg_value'] = summary['avg_value'].round(0)
        summary['late_rate'] = (summary['late_rate'] * 100).round(1)
        print(summary)

        print("\nRevenue by city and cuisine:")
        print(pd.pivot_table(df, index='city', columns='cuisine', values='amount',
                             aggfunc='sum', fill_value=0))

        top = summary.index[0]
        worst = summary['late_rate'].idxmax()
        print(f"\nInsight: {top} is the biggest market "
              f"({summary.loc[top, 'revenue_share_%']}% of revenue).")
        print(f"Insight: {worst} has the highest late rate "
              f"({summary.loc[worst, 'late_rate']}% of {summary.loc[worst, 'orders']} orders).")

        # Is Kolkata's higher late rate bigger than chance? Chi-square on city x late
        table = pd.crosstab(df['city'], df['late'])
        chi2, p, dof, expected = stats.chi2_contingency(table)
        print(f"Chi-square city vs late: chi2 = {chi2:.1f}, dof = {dof}, p = {p:.4f}")
        print(f"Smallest expected count: {expected.min():.1f} (rule of thumb: at least 5)")
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">The Exploratory Data Analysis Workflow</h1>
        </div>
        <p class="lc-lead"><strong>Exploratory Data Analysis (EDA)</strong> is where you get to know your data before drawing conclusions or building models. It combines everything so far &mdash; inspecting, cleaning, summarising and comparing &mdash; into a repeatable routine.</p>
        <div class="lc-card">
          <h3>A Repeatable EDA Routine</h3>
          <ol class="lc-list">
            <li><strong>Overview</strong> &mdash; shape, dtypes, missing values, duplicates.</li>
            <li><strong>Univariate</strong> &mdash; each column on its own: distribution, centre, spread, odd values.</li>
            <li><strong>Bivariate</strong> &mdash; pairs of columns: correlations, group comparisons, crosstabs.</li>
            <li><strong>Segments</strong> &mdash; break results down by important groups (city, month, team).</li>
            <li><strong>Notes</strong> &mdash; write each finding and each new question as you go.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Which Tool for Which Pair?</h3>
          <table class="lc-table">
            <thead><tr><th>Column types</th><th>Numeric summary</th><th>Chart (in a notebook)</th></tr></thead>
            <tbody>
              <tr><td>Numeric vs numeric</td><td>corr()</td><td>Scatter plot</td></tr>
              <tr><td>Categorical vs numeric</td><td>groupby().agg()</td><td>Box plot / bar of means</td></tr>
              <tr><td>Categorical vs categorical</td><td>pd.crosstab()</td><td>Stacked bar / heatmap</td></tr>
              <tr><td>Time vs numeric</td><td>resample() / rolling()</td><td>Line chart</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A Reusable Helper</h3>
          <div class="lc-code">def profile(df):<br>    out = pd.DataFrame({<br>        'dtype':   df.dtypes.astype(str),<br>        'missing': df.isna().sum(),<br>        'unique':  df.nunique(),<br>    })<br>    return out</div>
          <p>Writing small helpers like this makes your EDA fast and consistent across projects.</p>
        </div>
        <div class="lc-card">
          <h3>Turning Observations into Findings</h3>
          <table class="lc-table">
            <thead><tr><th>Observation</th><th>Finding</th></tr></thead>
            <tbody>
              <tr><td>AQI median is 280 in Nov, 90 in Jul</td><td>Air quality is strongly seasonal &mdash; worst after the monsoon</td></tr>
              <tr><td>corr(traffic, AQI) = 0.16 (the starter)</td><td>Weak association in this data; season and city explain far more of the AQI</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">1. Overview (36, 4)<br>                 dtype  missing  unique<br>city            object        0       3<br>month            int32        0      12<br>traffic_index  float64        0      35<br>aqi            float64        2      33<br><br>2. AQI summary: count 34, mean 188.6, median 169.5, max 377<br><br>3. corr(traffic, AQI) = 0.16<br>Delhi 255.0, Mumbai 181.0, Bengaluru 133.0  (median AQI)<br><br>4. Median AQI by city and season:<br>season     winter  summer  monsoon  post-monsoon<br>Bengaluru   154.0   131.0     98.0         177.0<br>Delhi       316.0   248.0    152.0         373.0<br>Mumbai      180.0   181.0    102.0         221.0</div>
          <ul class="lc-list">
            <li>Step 1 finds 2 missing AQI values before anything else.</li>
            <li>Step 3 shows traffic is only weakly linked to AQI (r = 0.16) in this data.</li>
            <li>Step 4 reveals the big story: season. Every city is cleanest in the monsoon and worst after it — Delhi reaches a median of 373.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Jumping straight to a model</strong> — you would have missed the seasonal pattern that explains most of the AQI.</li>
            <li><strong>Looking only at overall numbers</strong> — the overall median AQI (169.5) describes no real city-season.</li>
            <li><strong>Not writing notes as you go</strong> — findings you do not record are lost by the time you write the report.</li>
            <li><strong>Treating EDA findings as proven</strong> — EDA suggests hypotheses; testing them is a separate step (lesson 13).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and write your own two-line findings for step 5.</li>
            <li>Compute the traffic–AQI correlation within each city: <code>df.groupby('city')[['traffic_index', 'aqi']].corr()</code>. Is it stronger inside a city?</li>
            <li>Find the two rows with missing AQI (<code>df[df['aqi'].isna()]</code>). Which city and month are they?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> EDA is not a straight line. A surprising finding in step 3 often sends you back to step 1 to check whether it is a data error.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(21)
        months = np.tile(np.arange(1, 13), 3)
        city = np.repeat(['Delhi', 'Mumbai', 'Bengaluru'], 12)
        base = {'Delhi': 200, 'Mumbai': 110, 'Bengaluru': 80}
        season = np.where(np.isin(months, [10, 11, 12, 1]), 1.6,
                          np.where(np.isin(months, [6, 7, 8]), 0.5, 1.0))
        traffic = rng.normal(100, 15, 36)
        aqi = np.array([base[c] for c in city]) * season + 0.5 * traffic + rng.normal(0, 10, 36)
        df = pd.DataFrame({'city': city, 'month': months, 'traffic_index': traffic.round(1),
                           'aqi': aqi.round(0)})
        df.loc[[4, 20], 'aqi'] = np.nan

        # 1. Overview
        profile = pd.DataFrame({'dtype': df.dtypes.astype(str), 'missing': df.isna().sum(),
                                'unique': df.nunique()})
        print("1. Overview", df.shape)
        print(profile)

        # 2. Univariate
        print("\n2. AQI summary:")
        print(df['aqi'].describe().round(1))

        # 3. Bivariate
        print(f"\n3. corr(traffic, AQI) = {df['traffic_index'].corr(df['aqi']):.2f}")
        print(df.groupby('city')['aqi'].median().sort_values(ascending=False))

        # 4. Segments: season
        df['season'] = pd.cut(df['month'], bins=[0, 2, 5, 9, 12],
                              labels=['winter', 'summer', 'monsoon', 'post-monsoon'])
        print("\n4. Median AQI by city and season:")
        print(df.pivot_table(index='city', columns='season', values='aqi',
                             aggfunc='median', observed=False).round(0))

        # 5. Notes
        print("\n5. Findings: Delhi worst overall; every city is cleanest in the monsoon;")
        print("   2 missing AQI values to investigate before modelling.")
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Data Visualization Principles</h1>
        </div>
        <p class="lc-lead">A good chart makes the main point obvious in five seconds. In real projects you would use libraries like Matplotlib or Seaborn; here we focus on the <strong>thinking</strong> behind a chart, and practise with text charts since our sandbox cannot display images.</p>
        <div class="lc-card">
          <h3>Pick the Chart from the Question</h3>
          <table class="lc-table">
            <thead><tr><th>You want to show&hellip;</th><th>Use</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Comparison between categories</td><td>Bar chart</td><td>Runs by IPL team</td></tr>
              <tr><td>Change over time</td><td>Line chart</td><td>Monthly rainfall</td></tr>
              <tr><td>Distribution of one variable</td><td>Histogram / box plot</td><td>Exam marks</td></tr>
              <tr><td>Relationship between two numbers</td><td>Scatter plot</td><td>Study hours vs marks</td></tr>
              <tr><td>Parts of a whole (few parts)</td><td>Stacked bar (or pie, sparingly)</td><td>Order share by cuisine</td></tr>
              <tr><td>Two categorical dimensions</td><td>Heatmap</td><td>AQI by city and month</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Principles of Honest, Clear Charts</h3>
          <ul class="lc-list">
            <li><strong>Start bar charts at zero.</strong> A cut axis can make a 2% difference look huge.</li>
            <li><strong>Sort bars</strong> by value, not alphabetically, unless the order has meaning.</li>
            <li><strong>Label everything</strong>: title, axis names, units (mm, &#8377;, %).</li>
            <li><strong>Remove clutter</strong>: 3D effects, heavy gridlines and rainbow colours hide the message.</li>
            <li><strong>Highlight the point</strong>: colour the one bar that matters and grey the rest.</li>
            <li><strong>Title with the insight</strong>: "Dinner orders are 40% slower" beats "Delivery time by slot".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Text Charts in Python</h3>
          <div class="lc-code">for team, runs in totals.items():<br>    bar = '&#9608;' * int(runs / scale)<br>    print(f"{team:5s} {bar} {runs}")</div>
        </div>
        <div class="lc-card">
          <h3>For Later: Matplotlib in a Notebook (run this in Jupyter or Colab)</h3>
          <div class="lc-code">import matplotlib.pyplot as plt<br>totals.sort_values().plot(kind='barh')<br>plt.title('MI scored the most runs')<br>plt.xlabel('Total runs')<br>plt.show()</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">MI scored the most runs this season<br>  MI   ######################################## 2480<br>  KKR  ......................................   2390<br>  CSK  .....................................    2310<br>  RCB  ...................................      2205<br>  SRH  ..................................       2150<br><br>Misleading version (axis starts at 2100):<br>  MI   ###################################### 2480<br>  KKR  ############################# 2390<br>  CSK  ##################### 2310<br>  RCB  ########## 2205<br>  SRH  ##### 2150<br>Real gap between best and worst: only 15%</div>
          <p>Same five numbers, two very different impressions. Starting at zero, the bars are nearly equal — the honest picture. Starting at 2,100, MI's bar looks about 7 times longer than SRH's, although MI scored only 15% more runs. The rainfall chart keeps months in calendar order, because for time the order <em>is</em> the message.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Cutting the axis of a bar chart</strong> — bar length must be proportional to the value. (A line chart may zoom in, if the axis is clearly labelled.)</li>
            <li><strong>Pie charts with many slices</strong> — people cannot compare angles well; use a sorted bar chart.</li>
            <li><strong>Sorting a time series by value</strong> — it destroys the pattern over time.</li>
            <li><strong>Dual y-axes</strong> — two scales on one chart can be stretched to make any two lines look related.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and compare the honest and misleading charts.</li>
            <li>Change the misleading axis start from <code>2100</code> to <code>2000</code> (and the divisor from <code>10</code> to <code>12</code>). Does it still exaggerate?</li>
            <li>Make a bar chart of rainfall sorted from wettest to driest month. What story does it tell, and what story does it lose?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before making any chart, write one sentence: "This chart shows that ____." If you cannot fill the blank, you do not need the chart yet.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        runs = pd.Series({'CSK': 2310, 'MI': 2480, 'RCB': 2205, 'KKR': 2390, 'SRH': 2150},
                         name='runs')
        rain = pd.Series([18, 25, 60, 150, 290, 520, 840, 610, 340, 120, 45, 20],
                         index=['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                                'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'])

        def bar_chart(series, title, width=40, highlight=None):
            print(f"\n{title}")
            scale = series.max() / width
            for label, value in series.items():
                char = '#' if label == highlight else '.'
                print(f"  {label:4s} {char * int(value / scale):<{width}} {value}")

        # Comparison -> sorted bar chart, starting at zero, with the insight in the title
        bar_chart(runs.sort_values(ascending=False),
                  "MI scored the most runs this season", highlight='MI')

        # Change over time -> keep natural month order (do not sort!)
        bar_chart(rain, "Rainfall peaks in July (mm)", highlight='Jul')

        # Misleading axis demo: same data, axis starting at 2100
        print("\nMisleading version (axis starts at 2100):")
        for team, value in runs.sort_values(ascending=False).items():
            print(f"  {team:4s} {'#' * int((value - 2100) / 10)} {value}")
        diff_pct = (runs.max() - runs.min()) / runs.min() * 100
        print(f"Real gap between best and worst: only {diff_pct:.0f}%")
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Introduction to Predictive Modelling</h1>
        </div>
        <p class="lc-lead">After exploring data, the next natural question is "can we <strong>predict</strong> it?" A model learns a pattern from past examples and applies it to new ones. The Machine Learning course goes deep; here we focus on the data-science habits that make a model trustworthy.</p>
        <div class="lc-card">
          <h3>Two Kinds of Prediction</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Predicts</th><th>Example</th><th>Typical metric</th></tr></thead>
            <tbody>
              <tr><td>Regression</td><td>A number</td><td>Delivery minutes</td><td>MAE (average error)</td></tr>
              <tr><td>Classification</td><td>A category</td><td>Will the student pass?</td><td>Accuracy, plus precision and recall when classes are imbalanced</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The scikit-learn Pattern</h3>
          <div class="lc-code">from sklearn.model_selection import train_test_split<br>from sklearn.linear_model import LinearRegression<br>from sklearn.metrics import mean_absolute_error<br><br>X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=0)<br>model = LinearRegression().fit(X_train, y_train)<br>pred = model.predict(X_test)<br>print(mean_absolute_error(y_test, pred))</div>
        </div>
        <div class="lc-card">
          <h3>Habits That Matter More Than the Algorithm</h3>
          <ul class="lc-list">
            <li><strong>Hold out a test set.</strong> Judging a model on data it trained on is like marking your own exam.</li>
            <li><strong>Beat a baseline.</strong> If "always predict the average" gives an error of 8 minutes and your model gives 7.8, it has learned very little.</li>
            <li><strong>Avoid leakage.</strong> Never use a feature that is only known after the event (e.g. "delivered_at" to predict delivery time).</li>
            <li><strong>Interpret it.</strong> Look at coefficients: "each extra km adds about 3 minutes" is an insight you can share.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Reading the Error in Context</h3>
          <p>An MAE of 4 minutes is excellent for 40-minute deliveries but terrible for 5-minute ones. Always compare the error to the typical size of what you predict and to the baseline.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Baseline MAE (always predict the mean): 9.1 min<br>Linear model MAE:                       3.1 min<br>Improvement: 65%<br><br>What the model learned:<br>  +1 km    -&gt; +3.2 minutes<br>  +1 peak  -&gt; +8.3 minutes<br>  +1 items -&gt; +1.4 minutes<br><br>Prediction for a 4 km, 2-item order at 8 pm: 36 min</div>
          <ul class="lc-list">
            <li>The model cuts the average error from 9.1 to 3.1 minutes compared with always guessing the mean — a real improvement.</li>
            <li>The data was simulated with 3.2 minutes per km, 8 for peak hours and 1.5 per item; the model recovered 3.2, 8.3 and 1.4 from 300 training orders.</li>
            <li>The remaining 3.1-minute error is mostly the random noise built into the data — no model can predict pure chance.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reporting training error</strong> — measure on the held-out test set.</li>
            <li><strong>No baseline</strong> — without the 9.1-minute baseline, "3.1 minutes" has no context.</li>
            <li><strong>Reading coefficients as causes</strong> — "+8.3 minutes at peak" is an association learned from this data, not proof that peak hours cause it (rider shortage might).</li>
            <li><strong>Predicting far outside the data</strong> — the model has never seen a 30 km order.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and explain the "Improvement: 65%" line.</li>
            <li>Remove <code>'peak'</code> from <code>X</code> (use <code>df[['km', 'items']]</code>, and delete <code>'peak'</code> from <code>new_order</code>). How much worse is the MAE?</li>
            <li>Add the leaky feature <code>df['delivered_minute'] = df['minutes']</code> to <code>X</code>. What MAE do you get, and why is this model useless in real life?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> This lesson is a bridge: the Machine Learning course covers train/test splits, metrics, cross-validation and many more models in depth. A model is only as good as its data. The cleaning and EDA you did earlier usually improve results more than switching to a fancier algorithm.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd
        from sklearn.dummy import DummyRegressor
        from sklearn.linear_model import LinearRegression
        from sklearn.metrics import mean_absolute_error
        from sklearn.model_selection import train_test_split

        rng = np.random.default_rng(8)
        n = 400
        df = pd.DataFrame({
            'km': rng.uniform(0.5, 10, n).round(1),
            'hour': rng.integers(11, 24, n),
            'items': rng.integers(1, 6, n),
        })
        df['peak'] = df['hour'].between(19, 21).astype(int)
        df['minutes'] = (12 + 3.2 * df['km'] + 8 * df['peak'] + 1.5 * df['items']
                         + rng.normal(0, 4, n)).round(0)

        X = df[['km', 'peak', 'items']]
        y = df['minutes']
        X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.25, random_state=0)

        baseline = DummyRegressor(strategy='mean').fit(X_train, y_train)
        model = LinearRegression().fit(X_train, y_train)

        base_mae = mean_absolute_error(y_test, baseline.predict(X_test))
        model_mae = mean_absolute_error(y_test, model.predict(X_test))
        print(f"Baseline MAE (always predict the mean): {base_mae:.1f} min")
        print(f"Linear model MAE:                       {model_mae:.1f} min")
        print(f"Improvement: {(1 - model_mae / base_mae) * 100:.0f}%")

        print("\nWhat the model learned:")
        for name, coef in zip(X.columns, model.coef_):
            print(f"  +1 {name:5s} -> {coef:+.1f} minutes")

        new_order = pd.DataFrame({'km': [4.0], 'peak': [1], 'items': [2]})
        print(f"\nPrediction for a 4 km, 2-item order at 8 pm: {model.predict(new_order)[0]:.0f} min")
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Communicating Results and Data Ethics</h1>
        </div>
        <p class="lc-lead">An analysis that nobody understands changes nothing. The last step of the lifecycle is to <strong>explain what you found, how sure you are and what to do next</strong> &mdash; honestly, and without harming the people behind the data.</p>
        <div class="lc-card">
          <h3>Structure of a Good Summary</h3>
          <ol class="lc-list">
            <li><strong>Headline</strong> &mdash; the single most important finding, in one sentence.</li>
            <li><strong>Evidence</strong> &mdash; two or three numbers or a chart that support it.</li>
            <li><strong>Confidence</strong> &mdash; sample size, uncertainty, limitations.</li>
            <li><strong>Recommendation</strong> &mdash; what the reader should do.</li>
          </ol>
          <div class="lc-code">Headline: Kolkata orders are late twice as often as other cities.<br>Evidence: 29% late vs 13% elsewhere (based on 61 vs 239 orders).<br>Confidence: Moderate - one month of data; monsoon may play a role.<br>Action: Pilot 5 extra riders in Kolkata at dinner time for 2 weeks.</div>
        </div>
        <div class="lc-card">
          <h3>Know Your Audience</h3>
          <table class="lc-table">
            <thead><tr><th>Audience</th><th>They want</th></tr></thead>
            <tbody>
              <tr><td>Manager / principal</td><td>Headline and recommendation, no jargon</td></tr>
              <tr><td>Fellow analysts</td><td>Methods, assumptions and code</td></tr>
              <tr><td>General public</td><td>Plain language, relatable comparisons</td></tr>
            </tbody>
          </table>
          <p>Say "customers in Kolkata wait about 9 minutes longer" rather than "the coefficient was 9.2 with p &lt; 0.01".</p>
        </div>
        <div class="lc-card">
          <h3>Data Ethics Essentials</h3>
          <ul class="lc-list">
            <li><strong>Privacy</strong>: remove or mask names, phone numbers and Aadhaar-like IDs. India's <em>Digital Personal Data Protection Act, 2023</em> requires consent, a clear purpose and security safeguards for personal data; the DPDP Rules notified in November 2025 make most of these duties apply from May 2027.</li>
            <li><strong>Consent and purpose</strong>: use data only for the purpose people agreed to.</li>
            <li><strong>Bias</strong>: if past data reflects unfair decisions, a model trained on it will repeat them.</li>
            <li><strong>Honesty</strong>: do not cherry-pick the one result that looks good or hide results that don't.</li>
            <li><strong>Small groups</strong>: reporting "the only girl in Section C scored 35" identifies a person even without a name.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Anonymising Before Sharing</h3>
          <div class="lc-code">SALT = "keep-this-secret-2026"   # store it separately, never share it<br>df['student_id'] = df['name'].map(<br>    lambda n: 'S' + hashlib.sha256((SALT + n).encode()).hexdigest()[:6])<br>df = df.drop(columns=['name', 'phone'])</div>
          <p>This is <strong>pseudonymisation</strong>, not full anonymisation. Without the secret salt, anyone could hash a list of common names and match the codes back to students. Even with it, the data can still identify people when combined with other columns — so under the DPDP Act it should still be treated as personal data. Suppressing tiny groups (below) is a second layer of protection.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Shareable data:<br>  section  maths student_id<br>0       A     78    Sa1af5f<br>...<br>7       C     48    Sc14ae3<br><br>Section report (groups under 3 hidden):<br>         count  mean<br>section<br>A            3  75.0<br>B            4  70.5<br>C            1   NaN<br><br>Headline: Section A has the highest average Maths score.<br>Evidence: 75.0 vs school average 69.4.<br>Confidence: low - only 8 students in total.<br>Action: share Section A teaching methods; collect a full term of data.</div>
          <p>Section C has only one student, so its average would reveal that student's exact mark — the report hides it (NaN). The summary follows the headline → evidence → confidence → action structure and is honest about how little data there is.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Thinking a hashed name is anonymous</strong> — an unsalted hash of "Priya" is the same for everyone who computes it.</li>
            <li><strong>Hiding uncertainty</strong> — "Section A is best" from 3 students is a hint, not a fact; say so.</li>
            <li><strong>Jargon for a non-technical audience</strong> — "coefficient", "p-value" and "heteroscedastic" belong in the appendix, not the headline.</li>
            <li><strong>Cherry-picking</strong> — reporting the one metric that looks good and leaving out the ones that do not.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and check which section's average is hidden, and why.</li>
            <li>Change <code>MIN_GROUP = 3</code> to <code>5</code>. Which sections are hidden now? Is the report still useful?</li>
            <li>Rewrite the four summary lines for parents instead of the principal: plain words, no numbers they cannot interpret.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Ask yourself: "Would the people in this dataset be comfortable with how I am using and presenting their data?" If not, rethink.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import hashlib
        import pandas as pd

        raw = pd.DataFrame({
            'name':    ['Aarav', 'Diya', 'Kabir', 'Ananya', 'Rohan', 'Ishita', 'Vihaan', 'Saanvi'],
            'phone':   ['98450xxxxx', '99001xxxxx', '98860xxxxx', '97400xxxxx',
                        '90080xxxxx', '98440xxxxx', '99860xxxxx', '97310xxxxx'],
            'section': ['A', 'A', 'A', 'B', 'B', 'B', 'B', 'C'],
            'maths':   [78, 85, 62, 91, 55, 70, 66, 48],
        })

        # 1. Pseudonymise: replace names with codes made with a SECRET salt, drop contacts
        SALT = "keep-this-secret-2026"      # without a secret, anyone can hash common names
        safe = raw.copy()
        safe['student_id'] = safe['name'].map(
            lambda n: 'S' + hashlib.sha256((SALT + n).encode()).hexdigest()[:6])
        safe = safe.drop(columns=['name', 'phone'])
        print("Shareable data:")
        print(safe)

        # 2. Aggregate, but suppress groups too small to stay anonymous
        MIN_GROUP = 3
        report = safe.groupby('section')['maths'].agg(['count', 'mean']).round(1)
        report['mean'] = report['mean'].where(report['count'] >= MIN_GROUP)
        print("\nSection report (groups under 3 hidden):")
        print(report)

        # 3. Write the summary in plain language
        best = report['mean'].idxmax()
        overall = safe['maths'].mean()
        print("\nHeadline: Section", best, "has the highest average Maths score.")
        print(f"Evidence: {report.loc[best, 'mean']} vs school average {overall:.1f}.")
        print(f"Confidence: low - only {len(safe)} students in total.")
        print("Action: share Section", best, "teaching methods; collect a full term of data.")
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Capstone EDA Project and Review</h1>
        </div>
        <p class="lc-lead">Time to put the whole lifecycle together. In this capstone you will analyse a season of <strong>student performance data</strong> from question to recommendation. Use the starter code as a template, then extend it with your own questions.</p>
        <div class="lc-card">
          <h3>The Brief</h3>
          <p>A school wants to know: <strong>"Which factors are associated with low Maths marks, and where should we focus extra classes?"</strong> The data has study hours, attendance, school section, travel time and marks &mdash; with the usual real-world mess.</p>
        </div>
        <div class="lc-card">
          <h3>Project Checklist</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>What to do</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td>Ask</td><td>Write the question and the metric (% scoring below 40)</td><td>2</td></tr>
              <tr><td>Load &amp; inspect</td><td>shape, dtypes, missing, duplicates, describe()</td><td>4&ndash;5</td></tr>
              <tr><td>Clean</td><td>Fix labels, drop duplicates, handle missing and impossible values</td><td>6&ndash;7</td></tr>
              <tr><td>Features</td><td>Attendance bands, a "long commute" flag</td><td>8</td></tr>
              <tr><td>Explore</td><td>Distributions, correlations, group comparisons</td><td>9&ndash;16</td></tr>
              <tr><td>Test</td><td>Is the gap between groups bigger than chance? How big is it (confidence interval)?</td><td>12&ndash;13</td></tr>
              <tr><td>Communicate</td><td>Headline, evidence, confidence, action</td><td>19</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Course Review: Key Ideas</h3>
          <ul class="lc-list">
            <li>Start with a <strong>sharp question</strong> and a metric.</li>
            <li>Inspect before you trust; <strong>clean deliberately</strong> and record every change.</li>
            <li>Report <strong>centre and spread</strong>; prefer the median for skewed data.</li>
            <li>Samples give <strong>estimates with uncertainty</strong>; bigger samples shrink the error by &radic;n.</li>
            <li>A small p-value means "unlikely to be chance", not "large" or "important".</li>
            <li><strong>Correlation is not causation</strong>; look for confounders.</li>
            <li>Compare groups, show counts next to rates, and <strong>beat a baseline</strong> before trusting a model.</li>
            <li>Communicate clearly and <strong>protect the people</strong> behind the data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Extension Ideas</h3>
          <ul class="lc-list">
            <li>Test whether long-commute students score lower using a permutation test.</li>
            <li>Build a simple model to flag students at risk and compare it to a baseline.</li>
            <li>Rewrite the final summary for a parent audience.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Shape: (122, 5) | duplicates: 2 | missing maths: 3<br><br>Correlation with maths:<br>study_hours    0.66<br>attendance     0.22<br>commute_min   -0.18<br><br>Low-score rate (%) by attendance band:<br>&lt;75      14.3<br>75-89     2.6<br>90+       3.3<br><br>Headline: study_hours has the strongest link to marks; attendance band &lt;75 is most at risk.<br>Evidence: short-commute students score 5.2 marks higher (95% CI 0.5 to 10.0, p = 0.045, n = 117).<br>Action: extra classes for the &lt;75 attendance group; review timings for long commuters.</div>
          <ul class="lc-list">
            <li>Cleaning removed 2 duplicate rows and 3 rows with no Maths mark (122 → 117), fixed the section label "b " and replaced one impossible attendance of 140%.</li>
            <li>Students below 75% attendance are about 4–5 times more likely to score under 40.</li>
            <li>The bands use <code>pd.cut(..., [0, 75, 90, 101], right=False)</code>, so each band includes its left edge: a student with exactly 75% lands in "75-89", not "&lt;75". With the default <code>right=True</code>, 75% would wrongly be counted as below 75.</li>
            <li>The commute gap is 5.2 marks, but the confidence interval runs from 0.5 to 10 marks and p = 0.045 is just under 0.05. Honest wording: "probably real, size uncertain". This is observational data, so we say "associated with", not "caused by".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Cleaning without recording</strong> — your report must say what was dropped and filled, and why.</li>
            <li><strong>Declaring causation</strong> — long commutes may go with other factors (family income, school choice).</li>
            <li><strong>Reporting only the p-value</strong> — give the size of the gap and its confidence interval.</li>
            <li><strong>Ending with charts instead of an action</strong> — the school needs to know what to do next.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it: Extend the Capstone</h3>
          <ol class="lc-list">
            <li>Run the starter and write a five-line report (question, data and cleaning, finding, confidence, action).</li>
            <li>Compare Maths marks by section with <code>df.groupby('section')['maths'].agg(['count', 'mean', 'median'])</code>. Is any section clearly different?</li>
            <li>Change the long-commute cut-off from 60 to 45 minutes. Do the gap, CI and p-value change?</li>
            <li>Challenge: build a simple model that flags students at risk (lesson 18) and compare its accuracy with a baseline.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put a project like this on GitHub with a short README explaining your question, method and findings. It makes an excellent portfolio piece for internships.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(2024)
        n = 120
        hours = rng.uniform(0, 4, n).round(1)
        attendance = rng.uniform(55, 100, n).round(0)
        commute = rng.integers(5, 90, n)
        maths = (20 + 9 * hours + 0.35 * attendance - 0.12 * commute + rng.normal(0, 8, n)).clip(0, 100).round(0)
        df = pd.DataFrame({'section': rng.choice(['A', 'B', 'b ', 'C'], n), 'study_hours': hours,
                           'attendance': attendance, 'commute_min': commute, 'maths': maths})
        df.loc[[3, 17, 40], 'maths'] = np.nan
        df.loc[9, 'attendance'] = 140           # impossible value
        df = pd.concat([df, df.iloc[[0, 1]]], ignore_index=True)   # duplicates

        # INSPECT
        print("Shape:", df.shape, "| duplicates:", df.duplicated().sum(), "| missing maths:", df['maths'].isna().sum())
        # CLEAN
        df = df.drop_duplicates()
        df['section'] = df['section'].str.strip().str.upper()
        df.loc[df['attendance'] > 100, 'attendance'] = np.nan
        df = df.dropna(subset=['maths'])
        df['attendance'] = df['attendance'].fillna(df['attendance'].median())
        # FEATURES
        df['low_score'] = df['maths'] < 40
        df['long_commute'] = df['commute_min'] > 60
        df['att_band'] = pd.cut(df['attendance'], [0, 75, 90, 101], right=False, labels=['<75', '75-89', '90+'])
        # EXPLORE
        print("\nCorrelation with maths:")
        print(df[['study_hours', 'attendance', 'commute_min']].corrwith(df['maths']).round(2))
        print("\nLow-score rate (%) by attendance band:")
        print((df.groupby('att_band', observed=False)['low_score'].mean() * 100).round(1))
        # TEST: long vs short commute, permutation test
        a, b = df.loc[df['long_commute'], 'maths'].to_numpy(), df.loc[~df['long_commute'], 'maths'].to_numpy()
        obs = b.mean() - a.mean()
        both = np.concatenate([a, b])
        perm = [np.mean(p[len(a):]) - np.mean(p[:len(a)]) for p in (rng.permutation(both) for _ in range(5000))]
        p_val = np.mean(np.abs(perm) >= abs(obs))
        boot = [rng.choice(b, len(b)).mean() - rng.choice(a, len(a)).mean() for _ in range(3000)]
        ci_low, ci_high = np.percentile(boot, [2.5, 97.5])        # bootstrap 95% CI of the gap
        # COMMUNICATE
        risk = df.groupby('att_band', observed=False)['low_score'].mean().idxmax()
        top = df[['study_hours', 'attendance', 'commute_min']].corrwith(df['maths']).abs().idxmax()
        print(f"\nHeadline: {top} has the strongest link to marks; attendance band {risk} is most at risk.")
        print(f"Evidence: short-commute students score {obs:.1f} marks higher "
              f"(95% CI {ci_low:.1f} to {ci_high:.1f}, p = {p_val:.3f}, n = {len(df)}).")
        print(f"Action: extra classes for the {risk} attendance group; review timings for long commuters.")
      PYTHON
    }
  }.freeze
end

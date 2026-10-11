module DataScienceContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">What Is Data Science?</h1>
        </div>
        <p class="lc-lead">Data science is the skill of turning raw data into <strong>answers and decisions</strong>. It uses three skills together: programming (to handle data), statistics (to think clearly about data) and domain knowledge (knowing the subject, so you know which questions matter). In this course you will learn the <em>process</em> (the steps) that a data scientist follows. You will use pandas and NumPy, two Python libraries, as your everyday tools.</p>
        <div class="lc-card">
          <h3>Data Science Around You</h3>
          <ul class="lc-list">
            <li><strong>Swiggy / Zomato</strong> guess the delivery time from distance, traffic and how busy the restaurant is.</li>
            <li><strong>IPL teams</strong> study strike rates and player match-ups before they pick a playing XI.</li>
            <li><strong>IMD</strong> studies many years of monsoon rainfall to forecast the season.</li>
            <li><strong>City pollution boards</strong> track AQI to decide when to limit traffic.</li>
            <li><strong>Colleges</strong> look at marks and attendance to find students who need extra help.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Data Science Lifecycle</h3>
          <p>Almost every project, big or small, goes through the same stages. Industry frameworks such as <strong>CRISP-DM</strong> describe the same idea.</p>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Key question</th><th>Example (food delivery)</th></tr></thead>
            <tbody>
              <tr><td>1. Ask</td><td>What do we want to know?</td><td>Why are Friday orders late?</td></tr>
              <tr><td>2. Collect</td><td>Where is the data?</td><td>Order logs, rider GPS, weather</td></tr>
              <tr><td>3. Clean</td><td>Can we trust the data?</td><td>Remove test orders, fix missing times</td></tr>
              <tr><td>4. Explore</td><td>What patterns can we see?</td><td>Most late orders are at 8&ndash;9 pm</td></tr>
              <tr><td>5. Model</td><td>Can we predict or explain?</td><td>Predict delay from distance and hour</td></tr>
              <tr><td>6. Communicate</td><td>What should we do?</td><td>Add riders in the 8&ndash;9 pm slot</td></tr>
            </tbody>
          </table>
          <p>The cycle repeats. New answers usually lead to new questions.</p>
        </div>
        <div class="lc-card">
          <h3>Data Analyst vs Data Scientist vs ML Engineer</h3>
          <table class="lc-table">
            <thead><tr><th>Role</th><th>Focus</th></tr></thead>
            <tbody>
              <tr><td>Data Analyst</td><td>Reports, dashboards, "what happened?"</td></tr>
              <tr><td>Data Scientist</td><td>Experiments, statistics, models, "why, and what next?"</td></tr>
              <tr><td>ML Engineer</td><td>Puts models into real use (production) and keeps them running</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A Tiny End-to-End Example</h3>
          <div class="lc-code">import pandas as pd<br><br>orders = pd.DataFrame({<br>    'hour':    [13, 13, 20, 20, 21, 21],<br>    'minutes': [28, 31, 44, 47, 39, 52],<br>})<br><br># Ask: are dinner orders slower than lunch orders?<br>orders['slot'] = orders['hour'].apply(lambda h: 'dinner' if h &gt;= 19 else 'lunch')<br>print(orders.groupby('slot')['minutes'].mean())</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">slot<br>dinner    45.5<br>lunch     29.5<br>Name: minutes, dtype: float64</div>
          <p>Ask &rarr; organise &rarr; summarise &rarr; answer. That is data science in a very small form. See what the output does <em>not</em> tell us. Are dinner orders slower because of traffic? Because they travel further? Or because the kitchen is busier? The starter code looks at exactly that question next.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Delivery time by slot:<br>        count  mean<br>slot<br>dinner      5  45.0<br>lunch       3  27.7<br><br>Dinner orders take about 17 minutes longer on average.<br><br>Average distance by slot (km):<br>slot<br>dinner    3.84<br>lunch     2.47</div>
          <p>Dinner orders are slower. But they also travel about 1.4 km further. So part of the "dinner effect" may really be a "distance effect". We have only 8 orders (3 at lunch), so neither answer is certain yet. A good data scientist reports the finding and also its limits.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Starting with the tool, not the question</strong>: "let's use pandas on the orders file" gives you tables, not answers.</li>
            <li><strong>Trusting the first comparison</strong>: a difference between groups can come from another variable (here, distance). Lesson 15 covers confounders (hidden variables that affect both things).</li>
            <li><strong>Ignoring sample size</strong>: an average of 3 orders can change completely when you add one more order.</li>
            <li><strong>Skipping the "communicate" stage</strong>: a finding that nobody acts on is not useful.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and read the two tables.</li>
            <li>Change the dinner cut-off from <code>h &gt;= 18</code> to <code>h &gt;= 20</code>. Which orders move to "lunch"? How does the gap change?</li>
            <li>Add a column <code>orders['min_per_km'] = orders['minutes'] / orders['distance_km']</code> and compare it by slot. Is dinner still slower per km?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Tools change every few years, but the process stays the same. Focus on asking clear questions and checking your data. Then the code becomes the easy part.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Delivery times (minutes) for a small cloud kitchen in San Francisco
        orders = pd.DataFrame({
            'order_id': [101, 102, 103, 104, 105, 106, 107, 108],
            'hour':     [12, 13, 13, 19, 20, 20, 21, 22],
            'distance_km': [2.1, 3.5, 1.8, 4.0, 2.5, 5.2, 3.1, 4.4],
            'minutes':  [26, 33, 24, 41, 38, 55, 42, 49],
        })

        # 1. ASK: are dinner orders slower than lunch orders?
        # 2. ORGANISE: give each order a time slot label
        orders['slot'] = orders['hour'].apply(lambda h: 'dinner' if h >= 18 else 'lunch')

        # 3. SUMMARISE
        summary = orders.groupby('slot')['minutes'].agg(['count', 'mean'])
        print("Delivery time by slot:")
        print(summary.round(1))

        # 4. ANSWER in plain words
        gap = summary.loc['dinner', 'mean'] - summary.loc['lunch', 'mean']
        print(f"\nDinner orders take about {gap:.0f} minutes longer on average.")

        # Next question: is it the time, or the distance?
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
        <p class="lc-lead">A data project is only as good as its question. "Analyse the IPL data" is not a question. "Does winning the toss increase a team's chance of winning the match?" is a question. Good questions are <strong>specific, measurable and useful</strong>.</p>
        <div class="lc-card">
          <h3>Vague vs Sharp Questions</h3>
          <table class="lc-table">
            <thead><tr><th>Vague</th><th>Sharp</th></tr></thead>
            <tbody>
              <tr><td>Are students doing well?</td><td>What percentage of Class 12 students scored below 40 in Maths this term?</td></tr>
              <tr><td>Is pollution bad?</td><td>On how many days in November was Chicago's AQI above 300?</td></tr>
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
          <p>Start with descriptive questions. You cannot explain or predict something before you measure it.</p>
        </div>
        <div class="lc-card">
          <h3>A Question Checklist</h3>
          <ol class="lc-list">
            <li><strong>Who</strong> will use the answer? What decision will it change?</li>
            <li><strong>What metric</strong> (a number you can measure) answers it? (win %, mean marks, count of days&hellip;)</li>
            <li><strong>What data</strong> do we need? Do we really have it?</li>
            <li><strong>What would surprise us?</strong> Write down what you expect before you look.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Turning a Question into Code</h3>
          <div class="lc-code"># Question: Do toss winners win more often?<br># Metric:   % of matches where toss_winner == match_winner<br>won_both = (df['toss_winner'] == df['winner'])<br>print(f"{won_both.mean() * 100:.1f}% of toss winners also won")</div>
          <p>See how we choose the metric <em>before</em> we write the code. The code just calculates it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Toss winner also won: 60% of matches<br><br>Win % for toss winners, by choice:<br>             count  win_pct<br>toss_choice<br>bat              3     67.0<br>field            7     57.0<br><br>Caution: only 10 matches - far too few to be sure!</div>
          <p>A sharp question gets a sharp answer: 60% (6 of 10). The next result suggests that batting first after winning the toss did better. But that "67%" is only 2 wins out of 3 matches. One different result would change it to 33% or 100%. So a good question also says how much data you need to answer it.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Questions with no metric</strong>: you cannot calculate "Is the team good?". You can calculate "What is the team's win % at home this season?".</li>
            <li><strong>Asking a causal question of observational data</strong>: "Does the toss <em>cause</em> wins?" needs more care than "Do toss winners win more often?". Observational data is data you only watched, not data from a controlled test.</li>
            <li><strong>Moving the goalposts</strong>: changing the question after you see the data, until something looks exciting. This is called "fishing".</li>
            <li><strong>Forgetting the decision</strong>: if no decision depends on the answer, the question may not be worth the work.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check the 60% by counting the rows yourself.</li>
            <li>Write one descriptive, one diagnostic and one predictive question about this IPL data. Add them as comments in the code.</li>
            <li>Calculate a new metric: the win % of the team that batted first. (Hint: if <code>toss_choice</code> is "bat", the toss winner batted first. If not, the other team batted first.)</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Avoid "fishing". If you test fifty random ideas, a few will look interesting just by luck. Choose your main question first, then explore.
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

        # Next sharp question: does the toss choice matter?
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
        <p class="lc-lead">Before you analyse a column, ask <strong>what kind of data it holds</strong>. The type decides which summaries and charts make sense. You can average marks, but you cannot average city names.</p>
        <div class="lc-card">
          <h3>Structured, Semi-structured, Unstructured</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Looks like</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Structured</td><td>Rows and columns</td><td>Student marks spreadsheet</td></tr>
              <tr><td>Semi-structured</td><td>Keys and values inside other keys (nested)</td><td>JSON from a food-order app</td></tr>
              <tr><td>Unstructured</td><td>No fixed format</td><td>Restaurant reviews, photos, audio</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Kinds of Variables</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Meaning</th><th>Example</th><th>Useful summary</th></tr></thead>
            <tbody>
              <tr><td>Nominal (categorical)</td><td>Labels with no order</td><td>City, team, cuisine</td><td>Counts, mode</td></tr>
              <tr><td>Ordinal (categorical)</td><td>Labels with an order</td><td>Grade A/B/C, AQI band</td><td>Counts, median</td></tr>
              <tr><td>Discrete (numeric)</td><td>Whole-number counts</td><td>Sixes hit, items ordered</td><td>Mean, median, range</td></tr>
              <tr><td>Continuous (numeric)</td><td>Any value on a scale</td><td>Rainfall mm, temperature</td><td>Mean, std, percentiles</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Watch Out for Hidden Types</h3>
          <ul class="lc-list">
            <li><strong>PIN codes and roll numbers</strong> are digits, but they are labels. Their "average" has no meaning.</li>
            <li><strong>Numbers stored as text</strong> ("1,200") must be converted before you do maths.</li>
            <li><strong>Dates</strong> stored as strings should become real datetime values.</li>
          </ul>
          <div class="lc-code">df['pincode'] = df['pincode'].astype(str)      # label, not number<br>df['grade'] = pd.Categorical(df['grade'],<br>                             categories=['C', 'B', 'A'], ordered=True)<br>df['date'] = pd.to_datetime(df['date'])</div>
          <p>Use <code>ordered=True</code> and list the categories from lowest to highest. Then comparisons such as <code>df['grade'] &gt;= 'B'</code> follow the real order (C &lt; B &lt; A). Without it, they follow alphabetical order, where "A" comes first.</p>
        </div>
        <div class="lc-card">
          <h3>Python Structures a Data Scientist Uses</h3>
          <ul class="lc-list">
            <li><strong>list / dict</strong> &mdash; raw records before they become a table</li>
            <li><strong>NumPy array</strong> &mdash; fast numbers, all of one type</li>
            <li><strong>pandas Series</strong> &mdash; one column with labels</li>
            <li><strong>pandas DataFrame</strong> &mdash; the whole table, where each column has its own type</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Raw dtypes:<br>roll_no      int64<br>city        object<br>grade       object<br>marks       object<br>siblings     int64<br><br>Fixed dtypes:<br>roll_no       object<br>city          object<br>grade       category<br>marks          int64<br>siblings       int64<br>...<br>Ordinal  -&gt; median grade: B<br>Discrete -&gt; mean siblings: 1.4<br>Numeric  -&gt; mean marks: 76.8<br>Grades at least B: 4</div>
          <ul class="lc-list">
            <li><code>marks</code> loaded as <code>object</code> (text). So <code>marks.mean()</code> would fail until we convert it.</li>
            <li><code>roll_no</code> loaded as a number, but it is really a label. So we store it as text.</li>
            <li>For the ordinal grade we report a median (B), not a mean. "The average of A and C" has no meaning.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Averaging codes</strong>: the mean PIN code or roll number is a number with no meaning.</li>
            <li><strong>Treating ordinal data as evenly spaced</strong>: the gap between "Poor" and "Satisfactory" AQI is not the same as the gap between "Good" and "Satisfactory".</li>
            <li><strong>Losing leading zeros</strong>: if you read PIN codes and phone numbers as integers, they can lose their leading zeros. Read them as text (<code>dtype=str</code>).</li>
            <li><strong>Leaving numbers as text</strong>: when you sort text, "100" comes before "55".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Compare the raw dtypes and the fixed dtypes.</li>
            <li>Change the first mark from <code>'78'</code> to <code>'100'</code>. Print <code>students['marks'].max()</code> right after the DataFrame is created (before the fix). Why does it say <code>'91'</code>? Then check the max again after <code>pd.to_numeric</code>.</li>
            <li>Add a column <code>'aqi_band': ['Good', 'Poor', 'Moderate', 'Good', 'Satisfactory']</code>. Make it an ordered categorical with the right order.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Run <code>df.dtypes</code> on every new dataset. Do you see an <code>object</code> dtype on a column you expected to be numeric? That is the first sign of dirty data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        students = pd.DataFrame({
            'roll_no': [1101, 1102, 1103, 1104, 1105],
            'city':    ['London', 'Los Angeles', 'London', 'Manchester', 'Boston'],
            'grade':   ['B', 'A', 'C', 'A', 'B'],
            'marks':   ['78', '91', '55', '88', '72'],   # stored as text!
            'siblings': [1, 0, 2, 1, 3],
        })

        print("Raw dtypes:")
        print(students.dtypes)

        # Fix the types so they match what the data really means
        students['roll_no'] = students['roll_no'].astype(str)          # a label
        students['marks'] = pd.to_numeric(students['marks'])           # almost continuous
        students['grade'] = pd.Categorical(students['grade'],
                                           categories=['C', 'B', 'A'], ordered=True)

        print("\nFixed dtypes:")
        print(students.dtypes)

        # Choose summaries that suit each type
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
        <p class="lc-lead">Data comes from many places: spreadsheets, app logs, government portals like <strong>data.gov.in</strong>, APIs and surveys. You will see two formats most often: <strong>CSV</strong> (flat tables) and <strong>JSON</strong> (records that have other records inside them, called nested records).</p>
        <div class="lc-card">
          <h3>Common Data Sources</h3>
          <table class="lc-table">
            <thead><tr><th>Source</th><th>Usual format</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Spreadsheet export</td><td>CSV / Excel</td><td>Class marks register</td></tr>
              <tr><td>Web API</td><td>JSON</td><td>Live AQI readings for a city</td></tr>
              <tr><td>Database</td><td>SQL query result</td><td>Orders table of a delivery app</td></tr>
              <tr><td>Survey</td><td>Google Form &rarr; CSV</td><td>Hostel food feedback</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Loading Code, in Short</h3>
          <p>CSV: <code>pd.read_csv(io.StringIO(csv_text), parse_dates=['date'])</code>. Nested JSON: <code>pd.json_normalize(json.loads(json_text))</code>. It flattens nested keys into columns such as <code>customer.city</code>. (<code>io.StringIO</code> makes a string act like a file, because the browser sandbox has no files. The pandas course, lesson 2, covers every reading option.) This lesson focuses on a harder question: <strong>can this data answer my question?</strong></p>
        </div>
        <div class="lc-card">
          <h3>Grain and Coverage: What Does One Row Mean?</h3>
          <p>Before any analysis, write one sentence: "one row = ...". Then check what the rows cover.</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th>Starter data</th><th>What it limits</th></tr></thead>
            <tbody>
              <tr><td>Grain (one row = ?)</td><td>AQI: one city on one day. Orders: one order.</td><td>You cannot study hourly pollution peaks from daily rows.</td></tr>
              <tr><td>Coverage: where?</td><td>3 cities</td><td>"The whole country's air quality" is too big a claim. "These 3 cities" is honest.</td></tr>
              <tr><td>Coverage: when?</td><td>2 days in November</td><td>November is often a bad month for smog. So this is not a yearly average.</td></tr>
              <tr><td>Who is missing?</td><td>App users only</td><td>Customers who order by phone or walk in never appear.</td></tr>
            </tbody>
          </table>
          <p>A perfect analysis of the wrong rows still gives the wrong answer. Most bias (an unfair lean in the data) enters when the data is collected, long before any code runs.</p>
        </div>
        <div class="lc-card">
          <h3>Questions to Ask About Any Source</h3>
          <ul class="lc-list">
            <li><strong>Who collected it and why?</strong> A survey made by a brand may be biased.</li>
            <li><strong>When?</strong> Old data may not match today.</li>
            <li><strong>What does each column mean?</strong> Look for a data dictionary (a document that explains each column).</li>
            <li><strong>Are we allowed to use it?</strong> Check the licence and privacy rules.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>CSV vs JSON at a Glance</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>CSV</th><th>JSON</th></tr></thead>
            <tbody>
              <tr><td>Shape</td><td>Flat table, one row per record</td><td>Nested objects and lists</td></tr>
              <tr><td>Types</td><td>Everything is text until it is parsed (read and converted)</td><td>Numbers, strings, true/false, null</td></tr>
              <tr><td>Common trap</td><td>Commas inside values, wrong date format</td><td>Lists inside records (one order with many items)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">CSV loaded: (6, 3)<br>city            object<br>date    datetime64[ns]<br>aqi              int64<br>...<br>Chicago          365.5<br>...<br>JSON columns: ['id', 'amount', 'customer.name', 'customer.city']<br>...<br>Revenue by city:<br>customer.city<br>Chicago    199<br>London     869</div>
          <p>We passed <code>parse_dates=['date']</code>, so the date column is a real <code>datetime64</code>, not text. The nested <code>customer</code> object became two flat columns. So we can group by <code>customer.city</code> directly.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>parse_dates</code></strong>: dates stay as text, so sorting or filtering by month goes wrong.</li>
            <li><strong>Thinking JSON always has one row per record</strong>: an order with a list of 3 items may need <code>json_normalize(records, record_path='items')</code> to become 3 rows.</li>
            <li><strong>Ignoring encodings</strong>: Hindi or Tamil text saved in the wrong encoding shows as broken symbols. Use <code>encoding='utf-8'</code>.</li>
            <li><strong>Using data you are not allowed to use</strong>: scraped or shared personal data may break the licence or privacy law.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check the dtype of the <code>date</code> column.</li>
            <li>Remove <code>parse_dates=['date']</code> and print <code>aqi.dtypes</code> again. What type is <code>date</code> now?</li>
            <li>Add a fourth JSON order from Los Angeles for ₹410 and run it again. Does "Revenue by city" include it automatically?</li>
            <li>Write the "one row = ..." sentence for both datasets. Also write one claim that each dataset can <em>not</em> support.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always keep an unchanged copy of the raw data. Clean a copy, so you can start again if something goes wrong.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import json
        import pandas as pd

        # --- CSV: daily AQI readings ---
        csv_text = """city,date,aqi
        Chicago,2024-11-01,342
        Chicago,2024-11-02,389
        New York,2024-11-01,156
        New York,2024-11-02,141
        San Francisco,2024-11-01,88
        San Francisco,2024-11-02,95"""

        aqi = pd.read_csv(io.StringIO(csv_text), parse_dates=['date'])
        print("CSV loaded:", aqi.shape)
        print(aqi.dtypes)
        print(aqi.groupby('city')['aqi'].mean())

        # --- JSON: nested food orders from an app API ---
        json_text = """[
          {"id": 1, "amount": 349, "customer": {"name": "Riya", "city": "London"}},
          {"id": 2, "amount": 199, "customer": {"name": "Arjun", "city": "Chicago"}},
          {"id": 3, "amount": 520, "customer": {"name": "Meera", "city": "London"}}
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
        <p class="lc-lead">Your first ten minutes with a new dataset decide how easy the rest will be. Before any analysis, run a quick <strong>health check</strong>. How big is it? What are the columns and their types? What looks wrong?</p>
        <div class="lc-card">
          <h3>The First-Look Checklist</h3>
          <p>Run these seven commands on every new table: <code>shape</code>, <code>head()</code> or <code>sample(5)</code>, <code>dtypes</code>, <code>isna().sum()</code>, <code>describe()</code>, <code>value_counts()</code> on each category column, and <code>duplicated().sum()</code>. (The pandas course, lesson 2, explains each one.) Typing them is easy. The real skill is knowing what each problem will <em>break</em> later.</p>
          <table class="lc-table">
            <thead><tr><th>What you see</th><th>What it will break</th><th>Fixed in</th></tr></thead>
            <tbody>
              <tr><td>A number column has dtype <code>object</code></td><td>Sums and means fail, or they join text together</td><td>pandas course, lesson 7</td></tr>
              <tr><td>count in <code>describe()</code> &lt; number of rows</td><td>Every average uses fewer rows than you think</td><td>Lesson 6</td></tr>
              <tr><td>mean far above the median</td><td>"Average" does not describe the typical row</td><td>Lessons 7 and 10</td></tr>
              <tr><td>One label spelled three ways</td><td>A group-by splits one city into three</td><td>pandas course, lesson 12</td></tr>
              <tr><td>Repeated rows</td><td>Counts and revenue are counted twice</td><td>Lesson 7</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Reading describe() Like a Detective</h3>
          <ul class="lc-list">
            <li>A <strong>min of -5</strong> for delivery minutes? Impossible &mdash; a data-entry error.</li>
            <li>A <strong>max of 9999</strong>? Probably a placeholder (a stand-in value) for "unknown".</li>
            <li><strong>count</strong> smaller than the number of rows? Missing values.</li>
            <li><strong>mean much larger than median (50%)</strong>? A few very large values pull it up.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Spotting Messy Labels</h3>
          <div class="lc-code">print(df['city'].value_counts())<br># SF               3<br># San Francisco    2<br># san francisco    1   &lt;- same city, three spellings!</div>
          <p>Labels that do not match split one group into several. This quietly makes every group result wrong. (The pandas course covers the string tools to fix them.)</p>
        </div>
        <div class="lc-card">
          <h3>Write Down What You Find</h3>
          <p>Keep a short list of problems while you inspect: "3 missing ratings, city spelled 3 ways, one negative time". This list becomes your cleaning plan for the next lessons.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Shape: (9, 6)<br>...<br>rating      2          &lt;- missing values<br>...<br>Numeric summary:<br>       amount  minutes  rating<br>count     9.0      9.0     7.0<br>mean    299.0   1133.6     4.3<br>min     129.0     -5.0     3.5<br>50%     299.0     28.0     4.5<br>max     549.0   9999.0     4.8<br><br>City labels:<br>SF               3<br>Seattle          2<br>Los Angeles      2<br>San Francisco    1<br>san francisco    1<br><br>Duplicate rows: 1<br><br>Cleaning plan: missing ratings; impossible delivery times; inconsistent city spellings; duplicate rows</div>
          <ul class="lc-list">
            <li>The mean delivery time (1133.6 minutes!) makes no sense, but the median (28) looks normal. One placeholder value of 9999 is pulling the mean up.</li>
            <li>A negative minimum (−5) is impossible.</li>
            <li>One city appears under three names. So a group-by would report three "cities".</li>
            <li>Order 8 appears twice, so its revenue would be counted twice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Only looking at <code>head()</code></strong>: here the first five rows looked fine. The problems were in rows 3, 6, 7 and 9.</li>
            <li><strong>Fixing problems while inspecting</strong>: first list every problem. Then clean in a planned order, so you can explain each change.</li>
            <li><strong>Trusting the mean in <code>describe()</code></strong>: always compare it with the median (the 50% row).</li>
            <li><strong>Missing placeholder values</strong>: 9999, 0 or −1 are often codes for "unknown". They are not real measurements.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Match each item in the cleaning plan to the evidence above.</li>
            <li>Print <code>df.sample(3, random_state=0)</code>. Which rows do you get?</li>
            <li>Add a check to the cleaning plan for ratings outside 1–5. Then add a row with a rating of <code>6</code> to test it.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>df.sample(5, random_state=0)</code> is often better than <code>head()</code>. The first rows of a file are sometimes unusual (test entries, repeated headers).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        raw = """order_id,city,cuisine,amount,minutes,rating
        1,San Francisco,Biryani,349,32,4.5
        2,SF,Pizza,499,28,4.0
        3,san francisco,Biryani,299,-5,3.5
        4,Seattle,Biryani,399,41,
        5,Seattle,Dosa,149,22,4.8
        6,Los Angeles,Dosa,129,9999,4.2
        7,Los Angeles,Pizza,549,35,
        8,SF,Dosa,159,25,4.6
        8,SF,Dosa,159,25,4.6"""

        df = pd.read_csv(io.StringIO(raw))

        print("Shape:", df.shape)
        print("\nDtypes:\n", df.dtypes, sep="")
        print("\nMissing values per column:\n", df.isna().sum(), sep="")
        print("\nNumeric summary:")
        print(df[['amount', 'minutes', 'rating']].describe().round(1))
        print("\nCity labels:\n", df['city'].value_counts(), sep="")
        print("\nDuplicate rows:", df.duplicated().sum())

        # Make the cleaning plan from what we found
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
        <p class="lc-lead">Real datasets have gaps. A rain gauge breaks, a student misses a test, a customer does not give a rating. The way you handle missing values can change your results. So choose your method <strong>on purpose, not automatically</strong>.</p>
        <div class="lc-card">
          <h3>First, Ask Why It Is Missing</h3>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Example</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td>Missing completely at random (MCAR)</td><td>A sensor fault on random days</td><td>Low &mdash; dropping rows loses data but does not bias results</td></tr>
              <tr><td>Missing at random (MAR) &mdash; explained by other columns</td><td>Ratings missing more often for late orders</td><td>Medium &mdash; dropping biases results; fill using the related columns</td></tr>
              <tr><td>Missing not at random (MNAR) &mdash; linked to the value itself</td><td>Low scorers choose not to report marks</td><td>High &mdash; any simple fix misleads; report the limit</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Your Options and What Each One Assumes</h3>
          <p>Each option is one line of code: <code>dropna(subset=[...])</code>, <code>fillna(value)</code>, <code>groupby(...).transform('median')</code>, <code>interpolate()</code>, or a flag column <code>df['col'].isna()</code>. (The pandas course, lesson 8, covers the syntax.) The real choice is which <strong>assumption</strong> (what you believe is true) you can defend:</p>
          <table class="lc-table">
            <thead><tr><th>Strategy</th><th>You are assuming...</th><th>Effect on results</th></tr></thead>
            <tbody>
              <tr><td>Drop rows</td><td>The missing rows are like the others (MCAR)</td><td>Smaller sample; biased if the gaps are not random</td></tr>
              <tr><td>Fill with overall median</td><td>Every row is alike</td><td>Pulls groups towards the middle; makes the spread smaller</td></tr>
              <tr><td>Fill with group median</td><td>Rows in the same group are alike</td><td>Keeps group differences; still makes the spread inside groups smaller</td></tr>
              <tr><td>Interpolate</td><td>Values change smoothly over time</td><td>Good for rainfall trends; makes up smooth values across a sudden storm</td></tr>
              <tr><td>Flag and keep</td><td>"Was missing" may itself be useful information</td><td>No values made up; you can analyse the flag or give it to a model</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Group-Aware Filling</h3>
          <p>Filling missing rainfall for Ketchikan with the national average would be very wrong. Fill inside each group instead:</p>
          <div class="lc-code">df['rain_mm'] = df['rain_mm'].fillna(<br>    df.groupby('station')['rain_mm'].transform('median')<br>)</div>
          <p><strong>Output of the starter</strong>: average daily July rainfall (mm) for each strategy:</p>
          <div class="lc-code">             dropped  global_median  group_median  interpolated<br>station<br>Ketchikan      410.8          347.6         409.4         412.1<br>Los Angeles     11.2           28.0          11.2          11.3<br>New York        95.0           95.0          95.0          95.0</div>
          <p>The global median of all stations is 95 mm. If you fill Los Angeles's gap with it, Los Angeles gets a wet day that never happened. Its average jumps from 11 to 28 mm, more than double. It also pulls Ketchikan down. The group-aware and interpolation methods stay close to what each station really recorded. (New York has the same value in all four columns only by chance: its own median is also 95 mm.)</p>
        </div>
        <div class="lc-card">
          <h3>Always Measure the Impact</h3>
          <ul class="lc-list">
            <li>Write down how many values you dropped or filled.</li>
            <li>Compare key statistics (mean, count) before and after cleaning.</li>
            <li>If your conclusions change with the method, say so in your report.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Calling <code>dropna()</code> on the whole table</strong>: it drops a row if <em>any</em> column is missing. This can quietly remove half your data. Use <code>subset=</code>.</li>
            <li><strong>Filling before splitting for a model</strong>: the fill value then uses information from test rows. Calculate it on training data only (Machine Learning course, lessons 15–16).</li>
            <li><strong>Treating 0 as "missing"</strong>: zero rainfall is a real measurement. A broken gauge is not.</li>
            <li><strong>Not reporting what you did</strong>: write "3 of 15 values filled with the station median" in your report.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Explain why Los Angeles's <code>global_median</code> value is so high.</li>
            <li>Before filling, add a "flag" column <code>rain['was_missing'] = rain['rain_mm'].isna()</code>. Count the flags for each station.</li>
            <li>Set another Ketchikan day to <code>np.nan</code>. Which strategy changes the Ketchikan average the most?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Filling with the mean makes the spread of your data smaller. The data then looks more certain than it really is. Use it rarely, and always report it.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        # July rainfall (mm) at three stations; NaN = gauge failed
        rain = pd.DataFrame({
            'station': ['New York'] * 5 + ['Los Angeles'] * 5 + ['Ketchikan'] * 5,
            'day':     [1, 2, 3, 4, 5] * 3,
            'rain_mm': [88, np.nan, 102, 95, np.nan,
                        12, 8, np.nan, 15, 10,
                        410, 385, np.nan, 450, 398],
        })

        print("Missing per station:")
        print(rain['rain_mm'].isna().groupby(rain['station']).sum())

        # Option 1: drop
        dropped = rain.dropna(subset=['rain_mm'])
        # Option 2: one global median for all stations (too simple)
        global_fill = rain['rain_mm'].fillna(rain['rain_mm'].median())
        # Option 3: median inside each station (group-aware)
        group_fill = rain['rain_mm'].fillna(
            rain.groupby('station')['rain_mm'].transform('median'))
        # Option 4: interpolate inside each station (in time order)
        interp = rain.groupby('station')['rain_mm'].transform(lambda s: s.interpolate(limit_direction='both'))

        result = pd.DataFrame({
            'dropped': dropped.groupby('station')['rain_mm'].mean(),
            'global_median': global_fill.groupby(rain['station']).mean(),
            'group_median': group_fill.groupby(rain['station']).mean(),
            'interpolated': interp.groupby(rain['station']).mean(),
        }).round(1)

        print("\nAverage daily rainfall under each strategy:")
        print(result)
        print("\nNotice how the global median badly distorts Los Angeles and Ketchikan.")
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Duplicates and Outliers</h1>
        </div>
        <p class="lc-lead">Duplicates (repeated rows) quietly make counts too big. Outliers (values far from the rest) can pull an average far away from the typical value. You must check both. But an outlier is not always an error &mdash; sometimes it is the most interesting row in the table.</p>
        <div class="lc-card">
          <h3>Duplicates: First Decide What "Same" Means</h3>
          <p>The code is short. Use <code>df.duplicated(subset=['order_id']).sum()</code> to count and <code>drop_duplicates(subset=['order_id'])</code> to remove (pandas course, lesson 19). The real thinking is in the <code>subset</code>: what makes a row unique?</p>
          <table class="lc-table">
            <thead><tr><th>Two rows share...</th><th>Duplicate?</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td>Every column</td><td>Almost always</td><td>Usually the data was exported twice, or an upload was tried again</td></tr>
              <tr><td>The same order ID, different amount</td><td>Yes, and one row is wrong</td><td>Find out which one is correct before you drop either</td></tr>
              <tr><td>Same customer, same amount, same day</td><td>Not always</td><td>People really do order the same biryani twice</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Two Ways to Flag Outliers</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Rule</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td>IQR rule</td><td>Below Q1 &minus; 1.5&times;IQR or above Q3 + 1.5&times;IQR</td><td>Skewed (lopsided) data, small samples</td></tr>
              <tr><td>Z-score</td><td>|value &minus; mean| / std &gt; 3</td><td>Data shaped roughly like a bell</td></tr>
            </tbody>
          </table>
          <div class="lc-code">q1, q3 = df['amount'].quantile([0.25, 0.75])<br>iqr = q3 - q1<br>low, high = q1 - 1.5 * iqr, q3 + 1.5 * iqr<br>outliers = df[(df['amount'] &lt; low) | (df['amount'] &gt; high)]</div>
        </div>
        <div class="lc-card">
          <h3>What to Do With an Outlier</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Action</th></tr></thead>
            <tbody>
              <tr><td>Impossible value (age 250, negative time)</td><td>Fix it if you can, otherwise set it to missing</td></tr>
              <tr><td>Real but rare (a &#8377;12,000 party order)</td><td>Keep it; use the median, or report results with and without it</td></tr>
              <tr><td>Extreme values hurt a model</td><td>Cap (winsorise) with <code>clip(low, high)</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Error or Signal? Four Questions</h3>
          <ol class="lc-list">
            <li><strong>Is it possible?</strong> A negative amount or 140% attendance cannot be real &rarr; error.</li>
            <li><strong>Is it a unit or typing mistake?</strong> ₹12,000 might be ₹120.00 with a lost decimal point &mdash; check the item price.</li>
            <li><strong>Can another source confirm it?</strong> A catering bill for the party order shows it is real.</li>
            <li><strong>Does it matter for the question?</strong> For "typical order value", report the median. For "total revenue", the party order must stay in.</li>
          </ol>
          <p>Rules like IQR only <em>flag</em> rows. These questions decide what to do with them.</p>
        </div>
        <div class="lc-card">
          <h3>Why the Median Is Robust</h3>
          <p>Salaries of 5 people: 30k, 32k, 35k, 38k and 5 lakh. The mean is (30 + 32 + 35 + 38 + 500) / 5 = 127k, about 1.27 lakh &mdash; nobody earns that! The median, 35k, stays close to the typical person. That is why we call the median robust (not easily moved by extreme values).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Duplicate IDs: 1<br>Impossible amounts set to NaN: 1<br>IQR fences: 135 to 575<br>Outliers:<br>   order_id   amount<br>5         5  12000.0<br><br>Z-scores: [-0.34, -0.35, -0.31, -0.34, 2.67, -0.32, -0.36, -0.33, nan, -0.32]<br>...<br>Mean with party order:   1640<br>Median with party order: 350<br>Mean after capping:      371</div>
          <ul class="lc-list">
            <li>The IQR rule clearly flags the ₹12,000 party order.</li>
            <li>Its z-score is only 2.67. That is below the usual cut-off of 3. With 9 values, one huge value makes the standard deviation so big that it hides itself. (In fact, with n values no z-score can be larger than (n − 1)/√n, which is 2.67 for n = 9.)</li>
            <li>A typical order is ₹350, but one order pushes the "mean" to ₹1,640. Capping at the upper fence brings the mean back to ₹371.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Deleting every outlier</strong>: a real ₹12,000 party order is useful business information. Report it separately instead of hiding it.</li>
            <li><strong>Using the z-score rule on small or skewed samples</strong>: the outlier makes the std bigger, as shown above.</li>
            <li><strong>Only dropping rows that match on all columns</strong>: two rows with the same order ID but a different amount are not exact duplicates. But one of them is wrong.</li>
            <li><strong>Cleaning without a record</strong>: keep a log, for example "removed 1 duplicate ID, set 1 negative amount to missing".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that the fences are Q1 − 1.5 × IQR and Q3 + 1.5 × IQR.</li>
            <li>Change the party order from <code>12000</code> to <code>900</code>. Is it still an outlier by the IQR rule?</li>
            <li>Add 20 more normal orders (for example <code>[300] * 20</code>, with new IDs). What happens to the party order's z-score now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Never delete outliers just to make a chart look nicer. Write down every row you remove and the reason.
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

        # 2. Impossible values become missing (a float column can hold NaN)
        orders['amount'] = orders['amount'].astype(float)
        orders.loc[orders['amount'] < 0, 'amount'] = float('nan')
        print("Impossible amounts set to NaN:", orders['amount'].isna().sum())

        # 3. IQR rule
        q1, q3 = orders['amount'].quantile([0.25, 0.75])
        iqr = q3 - q1
        low, high = q1 - 1.5 * iqr, q3 + 1.5 * iqr
        print(f"IQR fences: {low:.0f} to {high:.0f}")
        print("Outliers:\n", orders[(orders['amount'] < low) | (orders['amount'] > high)], sep="")

        # 4. Z-score, to compare
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
        <p class="lc-lead">Raw columns are rarely in the shape your question needs. <strong>Feature engineering</strong> means making new, more useful columns from the columns you have. For example, you turn a timestamp into "hour of day", or marks into "pass / fail". Good features often matter more than clever algorithms.</p>
        <div class="lc-card">
          <h3>Common Transformations</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>Example</th><th>pandas</th></tr></thead>
            <tbody>
              <tr><td>Ratios</td><td>Runs per ball (strike rate)</td><td>df['runs'] / df['balls'] * 100</td></tr>
              <tr><td>Date parts</td><td>Hour, weekday, month</td><td>df['ts'].dt.hour</td></tr>
              <tr><td>Binning (grouping into ranges)</td><td>AQI &rarr; Good / Poor / Severe</td><td>pd.cut(df['aqi'], bins, labels)</td></tr>
              <tr><td>Flags</td><td>Is it a weekend?</td><td>df['ts'].dt.dayofweek &gt;= 5</td></tr>
              <tr><td>Text cleanup</td><td>"  London " &rarr; "london"</td><td>df['city'].str.strip().str.lower()</td></tr>
              <tr><td>One-hot encoding</td><td>Cuisine &rarr; 0/1 columns</td><td>pd.get_dummies(df['cuisine'])</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Scaling Numbers</h3>
          <p>Distance in km (1&ndash;15) and order value in rupees (100&ndash;2000) have very different scales. Many models work better when features are on similar scales.</p>
          <div class="lc-code"># Min-max scaling to 0..1<br>df['dist_scaled'] = (df['km'] - df['km'].min()) / (df['km'].max() - df['km'].min())<br># Standardising: mean 0, std 1<br>df['amount_z'] = (df['amount'] - df['amount'].mean()) / df['amount'].std()</div>
        </div>
        <div class="lc-card">
          <h3>Log Transform for Skewed Data</h3>
          <p>Order values, city populations and incomes have a long right tail (a few very large values). <code>np.log1p(x)</code> calculates log(1 + x). It shrinks big values so you can see patterns, and it still works when x is 0. In the starter, amounts from ₹150 to ₹2,200 (almost 15×) become 5.02 to 7.70.</p>
        </div>
        <div class="lc-card">
          <h3>Binning with pd.cut</h3>
          <div class="lc-code">bins   = [0, 50, 100, 200, 300, 500]<br>labels = ['Good', 'Satisfactory', 'Moderate', 'Poor', 'Very Poor+']<br>df['aqi_band'] = pd.cut(df['aqi'], bins=bins, labels=labels)</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">     city  cuisine   km  amount  hour  weekend  late_night distance_band  km_scaled  log_amount<br>0    london  Biryani  2.0     320    13    False       False          near       0.08        5.77<br>1    london    Pizza  6.5     780    20    False       False           far       0.77        6.66<br>2  new york  Biryani  4.0     450    21     True       False           mid       0.38        6.11<br>3  new york     Dosa  1.5     150    12     True       False          near       0.00        5.02<br>4    london    Pizza  8.0    2200    23    False        True           far       1.00        7.70<br>5  new york     Dosa  3.0     260    19    False       False          near       0.23        5.56</div>
          <ul class="lc-list">
            <li>Six messy city spellings became two clean labels: "london" and "new york".</li>
            <li>3 and 4 August 2024 were a Saturday and a Sunday. So <code>weekend</code> is True for those rows (<code>dayofweek</code> counts Monday as 0).</li>
            <li><code>pd.cut</code> bins include the right edge. So 3.0 km falls in "near" (0, 3], and 6.5 km falls in "far".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Leaking the answer into a feature</strong>: for example, using "delivered_at" to explain delivery time, or a "refund_issued" flag to predict complaints.</li>
            <li><strong>Calculating scaling or binning limits on all data before a model split</strong>: use training data only (the Machine Learning course shows how, with pipelines).</li>
            <li><strong>Using <code>np.log</code> on zeros</strong>: log(0) is −infinity. Use <code>np.log1p</code>.</li>
            <li><strong>Too many one-hot columns</strong>: a column with 5,000 different values makes 5,000 new columns. Group rare values into "Other" first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check the <code>weekend</code> column against a calendar.</li>
            <li>Add a feature <code>orders['amount_per_km'] = orders['amount'] / orders['km']</code>. Which order is worth the most per km?</li>
            <li>Change the distance bins to <code>[0, 2, 5, 20]</code>. How many orders are "near" now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Every feature should have a clear reason, for example: "late-night orders are slower because fewer riders are online". If you cannot explain a feature, do not trust it.
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
            'city':    ['  London', 'london ', 'New York', 'NEW YORK', 'London', 'new york'],
            'cuisine': ['Biryani', 'Pizza', 'Biryani', 'Dosa', 'Pizza', 'Dosa'],
            'km':      [2.0, 6.5, 4.0, 1.5, 8.0, 3.0],
            'amount':  [320, 780, 450, 150, 2200, 260],
        })

        # Date features
        orders['hour'] = orders['placed_at'].dt.hour
        orders['weekend'] = orders['placed_at'].dt.dayofweek >= 5
        orders['late_night'] = orders['hour'] >= 22

        # Clean up the text
        orders['city'] = orders['city'].str.strip().str.lower()

        # Put distances into bins (ranges)
        orders['distance_band'] = pd.cut(orders['km'], bins=[0, 3, 6, 20],
                                         labels=['near', 'mid', 'far'])

        # Scaling and log transform
        orders['km_scaled'] = ((orders['km'] - orders['km'].min()) /
                               (orders['km'].max() - orders['km'].min())).round(2)
        orders['log_amount'] = np.log1p(orders['amount']).round(2)

        print(orders.drop(columns=['placed_at']))

        # One-hot encode cuisine (one 0/1 column per cuisine)
        print("\nOne-hot cuisine:")
        print(pd.get_dummies(orders['cuisine'], prefix='is').astype(int))
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Combining and Reshaping Data</h1>
        </div>
        <p class="lc-lead">Real answers are rarely in one table. Orders are in one file, customers in another, and each month comes as a new CSV. This lesson shows how to <strong>stack</strong> tables (put one under another), and how to <strong>join</strong> them on a key without losing or repeating rows. It also shows how to <strong>reshape</strong> wide sheets into the long "tidy" format that group-bys and charts expect.</p>
        <div class="lc-card">
          <h3>Stack or Join?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Operation</th><th>pandas</th></tr></thead>
            <tbody>
              <tr><td>Same columns, more rows (June file + July file)</td><td>Stack (concatenate)</td><td><code>pd.concat([june, july])</code></td></tr>
              <tr><td>Different columns about the same thing (orders + customer city)</td><td>Join (merge) on a key</td><td><code>orders.merge(customers, on='cust_id')</code></td></tr>
              <tr><td>One column per subject/month (wide sheet)</td><td>Reshape to long</td><td><code>wide.melt(id_vars='student')</code></td></tr>
              <tr><td>Long table that you want to read as a grid</td><td>Reshape to wide</td><td><code>long.pivot(index=..., columns=..., values=...)</code></td></tr>
            </tbody>
          </table>
          <p>(The pandas course, lessons 11 and 15, covers every option of <code>merge</code>, <code>concat</code>, <code>melt</code> and <code>pivot</code>.) Here we focus on the choices that keep your numbers correct.</p>
        </div>
        <div class="lc-card">
          <h3>Join Types: Which Rows Stay?</h3>
          <table class="lc-table">
            <thead><tr><th><code>how=</code></th><th>Keeps</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td><code>'left'</code></td><td>Every row of the left table; rows with no match get NaN</td><td>You add details to your main table. This is the safe default for analysis.</td></tr>
              <tr><td><code>'inner'</code></td><td>Only rows whose key is in both tables</td><td>You really want matched rows only (and you have counted what is dropped)</td></tr>
              <tr><td><code>'outer'</code></td><td>All rows from both tables</td><td>Comparing two lists, for example bank records vs app records</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Three Checks for Every Join</h3>
          <ol class="lc-list">
            <li><strong>Know the grain</strong> (what one row means, lesson 4). Orders have one row per order. Customers should have one row per customer. So this is a <em>many-to-one</em> join.</li>
            <li><strong>Enforce it</strong> with <code>validate='many_to_one'</code>. If the lookup table has a repeated key, pandas raises a <code>MergeError</code>. Without it, pandas quietly multiplies the rows.</li>
            <li><strong>Count keys with no match</strong> using <code>indicator=True</code>. It adds a <code>_merge</code> column: <code>both</code>, <code>left_only</code> or <code>right_only</code>. Then compare the row counts before and after.</li>
          </ol>
          <p>Clean the keys first (lesson 8). <code>'London '</code> and <code>'london'</code> will not match. A key stored as text (<code>'101'</code>) will not match a number (<code>101</code>).</p>
        </div>
        <div class="lc-card">
          <h3>Tidy (Long) Data</h3>
          <p>A table is <strong>tidy</strong> when each row is one observation, each column is one variable, and each cell holds one value. A marks sheet with a <code>maths</code> column and a <code>science</code> column is wide: "subject" is hidden in the column names. <code>melt</code> turns it into one row per student per subject. Then <code>groupby('subject')</code> and most plotting tools work directly. Use <code>pivot</code> to go back to wide for a report.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Stacked orders: (6, 4)<br>  month  order_id  cust_id  amount         city     _merge<br>0   Jun         1      101     450       London       both<br>1   Jun         2      102     320  Los Angeles       both<br>2   Jun         3      101     610       London       both<br>3   Jul         4      103     280       London       both<br>4   Jul         5      109     520          NaN  left_only<br>5   Jul         6      102     390  Los Angeles       both<br><br>Match check: {'both': 5, 'left_only': 1, 'right_only': 0}<br>Rows: orders=6, left join=6, inner join=5<br>With a duplicate customer 101: 8 rows instead of 6<br>validate caught it: Merge keys are not unique in right dataset; not a many-to-one merge<br><br>Long format:<br>   student  subject  marks<br>0    Asha    maths     78<br>1    Ravi    maths     64<br>2    Asha  science     85<br>3    Ravi  science     71<br><br>Mean marks by subject: {'maths': 71.0, 'science': 78.0}<br><br>Back to wide:<br> subject  maths  science<br>student<br>Asha        78       85<br>Ravi        64       71</div>
          <ul class="lc-list">
            <li><code>keys=['Jun', 'Jul']</code> in <code>concat</code> records which file each row came from. This helps if one month turns out to be broken.</li>
            <li>Customer 109 is not in the customer table. The left join keeps order 5 with a missing city. The inner join quietly drops ₹520 of revenue.</li>
            <li>A second row for customer 101 (<code>'London '</code> with a space) turns 6 orders into 8 rows. Both of 101's orders are copied, so revenue would be counted too high. <code>validate</code> stops this at once.</li>
            <li>After <code>melt</code>, one <code>groupby</code> gives the mean for each subject.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Using an inner join out of habit</strong>: <code>merge</code> uses <code>how='inner'</code> by default, so rows with no match disappear without a warning. Write <code>how='left'</code> when you are adding details.</li>
            <li><strong>Not checking the row count</strong>: if a left join returns more rows than the left table, the right table has duplicate keys.</li>
            <li><strong>Joining on dirty keys</strong>: spaces, capital letters, and text-vs-number keys cause false "no match" results.</li>
            <li><strong>Summing after a one-to-many join</strong>: joining orders to <em>order items</em> repeats each order's delivery fee on every item row. Aggregate (summarise) first, then join.</li>
            <li><strong>Keeping data wide</strong>: working out "average per subject" across columns by hand, instead of melting once and grouping.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Change the left join to <code>how='outer'</code>. Which new row appears? What does its <code>_merge</code> value say?</li>
            <li>Add customer <code>109</code> in <code>'New York'</code> to <code>customers</code>. How does the match check change?</li>
            <li>Add an <code>'english'</code> column to <code>wide</code> with marks 90 and 58, and run it again. How many rows does the long table have now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Make every join a three-line habit. Write <code>merge(..., how='left', validate='many_to_one', indicator=True)</code>. Then print <code>len()</code> before and after. Then print <code>_merge.value_counts()</code>. Ten seconds of checking can save you from a report with rows counted twice.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        pd.set_option('display.width', 200)

        # Two monthly order files with the same columns -> stack them with concat
        june = pd.DataFrame({'order_id': [1, 2, 3], 'cust_id': [101, 102, 101], 'amount': [450, 320, 610]})
        july = pd.DataFrame({'order_id': [4, 5, 6], 'cust_id': [103, 109, 102], 'amount': [280, 520, 390]})
        orders = pd.concat([june, july], keys=['Jun', 'Jul'], names=['month', None]).reset_index(level=0)
        print("Stacked orders:", orders.shape)

        # A lookup table: one row per customer
        customers = pd.DataFrame({'cust_id': [101, 102, 103, 104],
                                  'city': ['London', 'Los Angeles', 'London', 'Chicago']})

        # Left join + indicator: which orders have no matching customer?
        merged = orders.merge(customers, on='cust_id', how='left',
                              validate='many_to_one', indicator=True)
        print(merged)
        print("\nMatch check:", merged['_merge'].value_counts().to_dict())

        # An inner join quietly drops the order with no match
        inner = orders.merge(customers, on='cust_id', how='inner')
        print(f"Rows: orders={len(orders)}, left join={len(merged)}, inner join={len(inner)}")

        # A repeated key in the lookup table makes rows multiply
        dup_customers = pd.concat([customers, pd.DataFrame({'cust_id': [101], 'city': ['London ']})])
        exploded = orders.merge(dup_customers, on='cust_id', how='left')
        print(f"With a duplicate customer 101: {len(exploded)} rows instead of {len(orders)}")
        try:
            orders.merge(dup_customers, on='cust_id', how='left', validate='many_to_one')
        except pd.errors.MergeError as err:
            print("validate caught it:", err)

        # Reshape: a wide marks sheet -> long (tidy) format with melt
        wide = pd.DataFrame({'student': ['Asha', 'Ravi'], 'maths': [78, 64], 'science': [85, 71]})
        long = wide.melt(id_vars='student', var_name='subject', value_name='marks')
        print("\nLong format:\n", long)
        print("\nMean marks by subject:", long.groupby('subject')['marks'].mean().to_dict())
        print("\nBack to wide:\n", long.pivot(index='student', columns='subject', values='marks'))
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Descriptive Statistics</h1>
        </div>
        <p class="lc-lead">Descriptive statistics sum up a whole column in a few numbers. They answer two questions: <strong>where is the centre?</strong> and <strong>how spread out is it?</strong> They are the first thing you report about any variable.</p>
        <div class="lc-card">
          <h3>Measures of Centre</h3>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Meaning</th><th>Changed by outliers?</th></tr></thead>
            <tbody>
              <tr><td>Mean</td><td>Sum divided by count</td><td>Yes, strongly</td></tr>
              <tr><td>Median</td><td>Middle value after sorting</td><td>No, robust</td></tr>
              <tr><td>Mode</td><td>Most common value</td><td>No; works for categories too</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Measures of Spread</h3>
          <table class="lc-table">
            <thead><tr><th>Measure</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Range</td><td>max &minus; min (changes a lot with extreme values)</td></tr>
              <tr><td>Variance</td><td>Average squared distance from the mean</td></tr>
              <tr><td>Standard deviation (std)</td><td>Square root of variance, in the original units</td></tr>
              <tr><td>IQR</td><td>Q3 &minus; Q1, the spread of the middle 50%</td></tr>
            </tbody>
          </table>
          <div class="lc-code">marks.mean(), marks.median(), marks.mode()[0]<br>marks.std(), marks.quantile(0.75) - marks.quantile(0.25)</div>
          <p>Variance and standard deviation have two versions. The <strong>population</strong> formula divides by n. The <strong>sample</strong> formula divides by n &minus; 1. Your data is often a sample, and you want to estimate the spread of the whole population. Then n &minus; 1 fixes a small bias that makes the spread too low.</p>
        </div>
        <div class="lc-card">
          <h3>Same Mean, Different Story</h3>
          <p>Two sections both have an average of 70 in Maths. In Section A, everyone scored 65&ndash;75. In Section B, half scored 40 and half scored 100. The mean hides this. The <strong>standard deviation</strong> shows it. Always report the centre <em>and</em> the spread.</p>
        </div>
        <div class="lc-card">
          <h3>Comparing Across Scales: Coefficient of Variation</h3>
          <p>CV = std / mean. It lets you compare how much things vary, even when they use different units or sizes. For example: "Is Los Angeles's rainfall more variable than New York's?", even though New York gets much more rain.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">           mean  median  mode   std  range   IQR<br>section_A  70.0    70.0  70.0   2.9     10   3.5<br>section_B  70.0    70.0  40.0  30.2     60  59.0<br><br>pandas std (n-1): 2.944<br>numpy std (n):    2.793<br>numpy std ddof=1: 2.944<br><br>Rainfall CV (%):<br>New York       23.3<br>Los Angeles    51.2</div>
          <ul class="lc-list">
            <li>Both sections have mean and median 70. But Section B's std (30.2) is ten times Section A's (2.9). The averages hide two very different classrooms.</li>
            <li>Section B has <em>two</em> modes, 40 and 100 (three students each). <code>mode()</code> returns both. <code>.iloc[0]</code> only shows the first. In a distribution with two humps like this, "the average student" does not exist.</li>
            <li>New York's rainfall std is larger in mm. But compared with its mean, Los Angeles's rainfall varies twice as much (CV 51% vs 23%).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reporting only the mean</strong>: always give a spread (std or IQR) next to it.</li>
            <li><strong>Mixing pandas and NumPy std</strong>: they use different defaults (n &minus; 1 vs n), so the numbers are slightly different.</li>
            <li><strong>Using the mean for skewed data</strong>: for incomes or order values, the median describes the typical case better.</li>
            <li><strong>Using CV when the mean is near zero or values can be negative</strong>: for temperatures in °C, or profit and loss, the CV has no meaning.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Explain in one sentence why Section B's IQR is so large.</li>
            <li>Change one Section A mark from <code>75</code> to <code>25</code>. Which statistics change a lot, and which hardly move?</li>
            <li>Calculate the CV of Section A and Section B marks. Which class is more consistent?</li>
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

        # Coefficient of variation (std / mean) for rainfall
        rain = pd.DataFrame({'New York': [620, 840, 510, 930, 700],
                             'Los Angeles': [60, 130, 35, 150, 90]})
        cv = (rain.std() / rain.mean() * 100).round(1)
        print("\nRainfall CV (%):")
        print(cv)
        print("Los Angeles gets less rain, but its rainfall is relatively more unpredictable.")
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Understanding Distributions</h1>
        </div>
        <p class="lc-lead">A <strong>distribution</strong> shows how often each value appears. Summary numbers tell you the centre and the spread. The distribution tells you the <em>shape</em>. The shape decides which statistics and methods you can trust.</p>
        <div class="lc-card">
          <h3>Shapes You Will See</h3>
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
            <li>About <strong>68%</strong> of values are within 1 std of the mean.</li>
            <li>About <strong>95%</strong> are within 2 std.</li>
            <li>About <strong>99.7%</strong> are within 3 std.</li>
          </ul>
          <p>This is why a z-score above 3 is a common sign of an outlier.</p>
        </div>
        <div class="lc-card">
          <h3>Seeing Shape Without a Plot</h3>
          <p>Our sandbox cannot draw charts. But a text histogram (a bar chart of counts, made with text) works well:</p>
          <div class="lc-code">counts, edges = np.histogram(values, bins=8)<br>for c, left in zip(counts, edges):<br>    print(f"{left:7.1f} | {'#' * c}")</div>
        </div>
        <div class="lc-card">
          <h3>Measuring Skew</h3>
          <p><code>series.skew()</code> returns about 0 for symmetric data. It returns a positive number for right skew and a negative number for left skew. Values beyond &plusmn;1 mean strong skew.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Heights (cm)  (mean=164.0, median=164.2, skew=-0.01)<br>...<br>Order value (Rs)  (mean=366.3, median=321.2, skew=1.52)<br>    83.1 | ############<br>   194.3 | ###############################<br>   305.4 | ###########################<br>   416.6 | #############<br>   527.8 | #######<br>   639.0 | ###<br>   750.2 | #<br>...<br>Order hour of day  (mean=16.7, median=16.6, skew=0.02)<br>...<br>Within 1 std: 66.2%<br>Within 2 std: 96.2%<br>Within 3 std: 99.8%</div>
          <ul class="lc-list">
            <li>Heights: mean ≈ median and skew ≈ 0. So the data is symmetric.</li>
            <li>Order values: a long right tail pulls the mean (366) above the median (321). A skew of 1.52 is strong.</li>
            <li>Order hours: two humps (lunch and dinner). The mean, 16.7 (about 4:40 pm), is a time when almost <em>nobody</em> orders. And skew ≈ 0 does not warn you. Always look at the shape, not just the numbers.</li>
            <li>The simulated heights follow the 68-95-99.7 rule closely (66.2%, 96.2%, 99.8%). The rule is only approximate for a sample of 500.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Thinking everything is normal</strong>: incomes, order values and waiting times are usually right-skewed.</li>
            <li><strong>Reading skew ≈ 0 as "bell-shaped"</strong>: the bimodal order hours have skew 0.02.</li>
            <li><strong>Too few or too many histogram bins</strong>: 3 bins hide the shape, and 200 bins show only noise. Try a few values.</li>
            <li><strong>Using the 68-95-99.7 rule on skewed data</strong>: it only works for data that is roughly normal.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Match each histogram to a shape in the table above.</li>
            <li>Change <code>bins=10</code> to <code>bins=4</code> in <code>text_hist</code>. Can you still see the two humps in the order hours?</li>
            <li>Log-transform the order values (<code>np.log(order_values)</code>) and pass them to <code>text_hist</code>. What happens to the skew?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For strongly skewed data, report the <strong>median and IQR</strong> instead of the mean and std. Or log-transform the data before analysis.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(7)

        heights = pd.Series(rng.normal(165, 8, 500))              # symmetric
        order_values = pd.Series(rng.lognormal(5.8, 0.5, 500))    # right-skewed
        order_hours = pd.Series(np.concatenate([rng.normal(13, 1, 250),
                                                rng.normal(20.5, 1, 250)]))  # bimodal (two humps)

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

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Probability Basics for Data Science</h1>
        </div>
        <p class="lc-lead">Probability is a number that says how likely something is. It goes from <strong>0 (impossible)</strong> to <strong>1 (certain)</strong>. In data science, we usually estimate probabilities from data. For example: "Out of 1,000 orders, 120 were late, so P(late) &asymp; 0.12."</p>
        <div class="lc-card">
          <h3>Core Rules</h3>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Formula</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Complement</td><td>P(not A) = 1 &minus; P(A)</td><td>P(on time) = 1 &minus; 0.12 = 0.88</td></tr>
              <tr><td>Addition (either one)</td><td>P(A or B) = P(A) + P(B) &minus; P(A and B)</td><td>Late <em>or</em> cancelled</td></tr>
              <tr><td>Independent events</td><td>P(A and B) = P(A) &times; P(B)</td><td>Two separate coin tosses</td></tr>
              <tr><td>Conditional</td><td>P(A | B) = P(A and B) / P(B)</td><td>P(late | raining)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Conditional Probability from a Table</h3>
          <p><strong>P(A | B)</strong> means "the probability of A <em>given</em> B", that is, when B is true. In pandas, a crosstab (a table of counts for two columns) gives these numbers directly:</p>
          <div class="lc-code">pd.crosstab(df['raining'], df['late'], normalize='index')<br># each row now sums to 1: P(late | raining) and P(late | dry)</div>
          <p>Suppose P(late | raining) is much bigger than P(late | dry). Then rain and lateness are related.</p>
        </div>
        <div class="lc-card">
          <h3>Bayes' Rule in One Example</h3>
          <p>A COVID test finds 95% of real cases. It also wrongly marks 5% of healthy people as positive. Only 2% of people are infected. If you test positive, what is the chance you are infected?</p>
          <div class="lc-code">P(infected | positive) = P(pos | inf) &times; P(inf) / P(pos)<br>                       = 0.95 &times; 0.02 / (0.95 &times; 0.02 + 0.05 &times; 0.98)<br>                       &asymp; 0.28</div>
          <p>The answer is only about 28%! When something is rare, most positive results are false alarms. This is called the <strong>base rate</strong> effect. (Lesson 11 of the Artificial Intelligence course uses Bayes' rule for fraud alarms. Here we focus on estimating probabilities from data.)</p>
        </div>
        <div class="lc-card">
          <h3>Simulation: Let the Computer Count</h3>
          <p>Sometimes the maths is hard. Then you can simulate (fake with random numbers) thousands of trials with NumPy. Count how often the event happens. With a fixed seed, you get the same result every time you run it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">P(late)          = 0.183<br>P(on time)       = 0.817<br><br>Conditional table (rows sum to 1):<br>late     False  True<br>raining<br>False    0.903  0.097<br>True     0.565  0.435<br><br>P(late | raining) = 0.435<br>P(late | dry)     = 0.097<br>P(raining | late) = 0.608   &lt;- not the same as P(late | raining)!<br><br>P(infected | positive test) = 0.279<br>P(shared birthday in a class of 30) ~ 0.69</div>
          <ul class="lc-list">
            <li>We made the data with P(late | rain) = 0.40 and P(late | dry) = 0.10. From 2,000 orders, we estimate 0.435 and 0.097. They are close, but not exact. Estimates from data always have some sampling error (lesson 13).</li>
            <li>Rain makes lateness about 4.5 times more likely. But only 25% of days are rainy. So 61% of late orders happen on rainy days. P(raining | late) answers a different question.</li>
            <li>The birthday simulation is very close to the exact answer (about 0.71). With 5,000 trials, the estimate is within a few percentage points.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Swapping the condition</strong>: P(late | raining) and P(raining | late) are different numbers (0.435 and 0.608 here).</li>
            <li><strong>Assuming independence</strong>: multiplying P(rain) × P(late) is wrong when rain changes lateness.</li>
            <li><strong>Adding probabilities of events that overlap</strong>: P(A or B) needs the "minus P(A and B)" fix.</li>
            <li><strong>Trusting a probability from very small counts</strong>: "2 of 3 orders were late" is not a reliable 67%.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that each row of the conditional table adds up to 1.</li>
            <li>Change <code>normalize='index'</code> to <code>normalize='columns'</code>. Which conditional probabilities does the table show now?</li>
            <li>In the birthday simulation, change the class size from 30 to 50. Change both the <code>size</code> and the <code>&lt; 30</code>. What is the probability now?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> P(A | B) and P(B | A) are different. P(cricket fan | Indian) is high. P(Indian | cricket fan) is a very different number.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(42)
        n = 2000

        # Make fake delivery data: rain makes lateness more likely
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

        # Bayes: how likely is rain, if we know the order was late?
        p_rain_given_late = df.loc[df['late'], 'raining'].mean()
        print(f"P(raining | late) = {p_rain_given_late:.3f}   <- not the same as P(late | raining)!")

        # Bayes rule with the medical test example
        sens, false_pos, prevalence = 0.95, 0.05, 0.02
        p_pos = sens * prevalence + false_pos * (1 - prevalence)
        print(f"\nP(infected | positive test) = {sens * prevalence / p_pos:.3f}")

        # Simulation: chance that at least 2 of 30 students have the same birthday
        trials = rng.integers(0, 365, size=(5000, 30))
        shared = np.mean([len(set(row)) < 30 for row in trials])
        print(f"P(shared birthday in a class of 30) ~ {shared:.2f}")
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Sampling and the Central Limit Theorem</h1>
        </div>
        <p class="lc-lead">We rarely measure everyone. Election exit polls ask a few thousand voters, not 90 crore. A <strong>sample</strong> is a small part of the <strong>population</strong> (the whole group). If you choose it well, it can tell you a lot about the whole group. Statistics tells you how much to trust it.</p>
        <div class="lc-card">
          <h3>Sampling Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>How</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Simple random</td><td>Every member has the same chance</td><td>Pick 100 roll numbers at random</td></tr>
              <tr><td>Stratified</td><td>A random sample inside each group</td><td>20 students from each of 5 schools</td></tr>
              <tr><td>Convenience</td><td>Whoever is easy to reach</td><td>Asking only your friends: biased!</td></tr>
            </tbody>
          </table>
          <div class="lc-code">df.sample(n=100, random_state=1)                             # simple random<br>df.groupby('school').sample(n=20, random_state=1)             # stratified</div>
        </div>
        <div class="lc-card">
          <h3>Sampling Bias</h3>
          <p>Say a survey asks "Do students like online classes?" and is posted only on Instagram. It reaches students who are already online a lot. A bigger sample does <strong>not</strong> fix a biased method (a method that leans one way). It just gives you a wrong answer that looks sure.</p>
        </div>
        <div class="lc-card">
          <h3>The Central Limit Theorem (CLT)</h3>
          <p>Take many random samples of size n. Compute the mean (average) of each sample. Then:</p>
          <ul class="lc-list">
            <li>The sample means form a roughly <strong>normal (bell-shaped)</strong> distribution once n is large enough. This is true <em>even if the original data is skewed</em> (lopsided). A common rule is n &ge; 30. Very skewed data needs more.</li>
            <li>Their centre is the true mean of the population.</li>
            <li>Their spread is called the <strong>standard error</strong>. It is &sigma; / &radic;n. If you make the sample 4 times bigger, the error becomes half.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Confidence Intervals</h3>
          <p>Because of the CLT, a rough 95% confidence interval (a range that likely holds the true value) for a mean is:</p>
          <div class="lc-code">se = sample.std() / np.sqrt(len(sample))<br>low, high = sample.mean() - 1.96 * se, sample.mean() + 1.96 * se</div>
          <p>This means: if we repeated this sampling many times, about 95% of these intervals would contain the true mean. It does <em>not</em> mean "there is a 95% chance the true mean is in this interval". The true mean is fixed. It is the interval that changes. For small samples, statisticians use the t-distribution (about 2.01 instead of 1.96 for n = 50). <code>scipy.stats.t.interval</code> computes it.</p>
          <p><strong>Bootstrap CI</strong>: use this when you do not want to rely on formulas. Resample your one sample <em>with replacement</em> (a row can be picked more than once) thousands of times. Compute the mean each time. Then take the middle 95% of those means.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Population mean: 478.9   (skewed, long right tail)<br><br>n=  5: mean of means=481.9, spread (SE)=176.1, theory sigma/sqrt(n)=179.2<br>n= 30: mean of means=479.7, spread (SE)=73.8, theory sigma/sqrt(n)=73.2<br>n=120: mean of means=478.8, spread (SE)=36.5, theory sigma/sqrt(n)=36.6<br><br>One sample of 50: mean=474.9, 95% CI=(370.1, 579.7)<br>Contains true mean? True<br>Bootstrap 95% CI=(376.3, 586.0)<br>Intervals that contained the true mean: 92.9%</div>
          <ul class="lc-list">
            <li>The sample means centre on the true mean (≈ 479) for every n. Their spread matches σ/√n. Going from n = 30 to n = 120 (4×) makes the SE half as big (73.8 → 36.5).</li>
            <li>The text histograms (in the full output) are lopsided for n = 5 and bell-shaped for n = 120. This is the CLT in action.</li>
            <li>The formula CI and the bootstrap CI are very close.</li>
            <li>We repeated the whole study 1,000 times. 92.9% of the "95%" intervals contained the true mean. This is a little short. The data is very skewed, and 1.96 ignores the extra uncertainty of small samples. Rules of thumb are only approximate. Simulation lets you check them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Thinking the CLT makes the data normal</strong>: it is the distribution of <em>sample means</em> that becomes normal, not the single values.</li>
            <li><strong>Believing a bigger sample fixes bias</strong>: 1 lakh Instagram answers still come only from Instagram users.</li>
            <li><strong>Reading the CI wrongly</strong>: "95% of customers spend between ₹370 and ₹580" is wrong. The interval is about the <em>mean</em>, not single customers.</li>
            <li><strong>Using the population std formula for the SE</strong>: for a sample, use <code>std(ddof=1)</code>, like the starter does.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that the SE becomes half when n goes from 30 to 120.</li>
            <li>In the last three blocks of the code, change every <code>50</code> to <code>200</code> (the sample size). How much narrower is the CI? Does the coverage get closer to 95%?</li>
            <li>In the coverage loop, replace <code>1.96</code> with <code>2.01</code> (the t-value for n = 50). What coverage do you get?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always give a range, not just one number. "Average order is &#8377;420 &plusmn; &#8377;15" is much more honest than "Average order is &#8377;420".
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        rng = np.random.default_rng(0)

        # Population: 100,000 food order values, strongly right-skewed
        population = rng.exponential(scale=400, size=100_000) + 80
        print(f"Population mean: {population.mean():.1f}   (skewed, long right tail)")

        # Take 2000 samples of size n and save the mean of each sample
        for n in (5, 30, 120):
            means = np.array([rng.choice(population, n).mean() for _ in range(2000)])
            print(f"\nn={n:3d}: mean of means={means.mean():.1f}, "
                  f"spread (SE)={means.std():.1f}, theory sigma/sqrt(n)={population.std() / np.sqrt(n):.1f}")
            counts, edges = np.histogram(means, bins=9)
            for c, left in zip(counts, edges):
                print(f"   {left:7.0f} | {'#' * (c // 12)}")

        # One real sample and its 95% confidence interval
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

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Hypothesis Testing</h1>
        </div>
        <p class="lc-lead">Your coaching centre used a new study method. The average mark went up from 68 to 72. Is that a real improvement, or just luck? <strong>Hypothesis testing</strong> is a formal way to answer "could this difference be just chance?"</p>
        <div class="lc-card">
          <h3>The Steps</h3>
          <ol class="lc-list">
            <li><strong>Null hypothesis (H&#8320;)</strong>: there is no effect. "The method makes no difference."</li>
            <li><strong>Alternative (H&#8321;)</strong>: there is an effect.</li>
            <li>Choose a <strong>significance level</strong>, usually &alpha; = 0.05.</li>
            <li>Compute a <strong>test statistic</strong> (one number that sums up the difference) from the data.</li>
            <li>Find the <strong>p-value</strong>. This is the probability of seeing a difference this big or bigger <em>if H&#8320; were true</em>.</li>
            <li>If p &lt; &alpha;, reject H&#8320;. If not, you "fail to reject" it.</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Two-Sample t-test by Hand (Welch)</h3>
          <div class="lc-code">diff = a.mean() - b.mean()<br>se   = np.sqrt(a.var(ddof=1) / len(a) + b.var(ddof=1) / len(b))<br>t    = diff / se</div>
          <p>For medium sample sizes, a |t| above about 2 usually means p &lt; 0.05. <code>scipy.stats.ttest_ind(a, b, equal_var=False)</code> gives the exact p-value for this Welch test. A second way needs no formulas at all. It is called a <strong>permutation test</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Permutation Test: Shuffle the Labels</h3>
          <p>If the method really made no difference, the labels "old" and "new" do not matter. So shuffle the labels thousands of times. See how often a random split gives a difference as big as the real one. That fraction is the p-value.</p>
          <p><strong>Output of the starter, part 1:</strong></p>
          <div class="lc-code">Observed difference (effect size): 5.07 marks<br>Permutation p-value: 0.0077<br>Welch t-test: t = 2.92, p = 0.0069</div>
          <p>Only about 0.8% of random shuffles give a gap of 5.07 marks or more. The t-test agrees (p ≈ 0.007). Two different methods give the same answer: a difference this large is very unlikely if the method had no effect.</p>
        </div>
        <div class="lc-card">
          <h3>Reading Results Correctly</h3>
          <table class="lc-table">
            <thead><tr><th>Statement</th><th>Correct?</th></tr></thead>
            <tbody>
              <tr><td>"p = 0.03, so the difference is unlikely to be pure chance."</td><td>Yes</td></tr>
              <tr><td>"p = 0.03, so there is a 97% chance the method works."</td><td>No</td></tr>
              <tr><td>"p = 0.40, so we proved the method has no effect."</td><td>No: we just do not have enough evidence</td></tr>
              <tr><td>"Significant" means "large and important."</td><td>No: check the effect size too</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>A/B Testing: Hypothesis Tests in Industry</h3>
          <p>A shopping app shows the old checkout page (A) to 2,400 random visitors. It shows a new page (B) to another 2,400. Visitors are put in groups <em>at random</em>, so a real difference comes from the page itself. For conversion rates (the share of visitors who buy), the standard test is a <strong>two-proportion z-test</strong>:</p>
          <div class="lc-code">p_pool = (conv_a + conv_b) / (n_a + n_b)<br>se = np.sqrt(p_pool * (1 - p_pool) * (1 / n_a + 1 / n_b))<br>z = (p_b - p_a) / se<br>p_value = 2 * stats.norm.sf(abs(z))      # two-sided</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">A/B test: A=5.0%  B=6.5%  difference=+1.5 points  z=2.23  p=0.0256</div>
          <p>The new page converts 1.5 percentage points better (a 30% relative lift). Also, p = 0.026 &lt; 0.05. Before you celebrate, decide these things in advance: the sample size, how long the test runs, and the one metric you will use to judge it. Do not stop the test as soon as p goes below 0.05. This is called "peeking", and it gives more false positives.</p>
        </div>
        <div class="lc-card">
          <h3>Chi-Square Test on a Crosstab</h3>
          <p>Sometimes <em>both</em> variables are categories, for example page A/B and bought yes/no, or city and payment method. Put the counts in a <strong>crosstab</strong> (also called a contingency table). Then ask: are the two variables independent? The <strong>chi-square test</strong> compares each observed count with the count you would <em>expect</em> if they were independent.</p>
          <div class="lc-code">table = pd.crosstab(visits['page'], visits['bought'])<br>chi2, p, dof, expected = stats.chi2_contingency(table, correction=False)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">bought     0    1<br>page<br>A       2280  120<br>B       2244  156<br>Chi-square: chi2 = 4.98, dof = 1, p = 0.0256</div>
          <p>This is the same p-value as the z-test. That is not an accident. For a 2&times;2 table without the continuity correction, chi2 = z&sup2; (2.23&sup2; &asymp; 4.98). But the chi-square test is more general. It works for a 3&times;4 table of city &times; payment method, where a z-test cannot. Rule of thumb: every <em>expected</em> count should be at least 5. If not, the p-value is not reliable. By default, SciPy uses Yates' continuity correction on 2&times;2 tables. This gives a slightly larger p-value.</p>
        </div>
        <div class="lc-card">
          <h3>Plan the Sample Size First: Power</h3>
          <p><strong>Power</strong> is the chance that your test finds an effect that really exists. The usual target is 80%. To compare two conversion rates, you need this many visitors <em>per group</em>:</p>
          <div class="lc-code">n = (z_alpha/2 + z_power)&sup2; &times; (p1(1 &minus; p1) + p2(1 &minus; p2)) / (p2 &minus; p1)&sup2;<br># with alpha = 0.05 and power = 0.80: (1.96 + 0.84)&sup2; &asymp; 7.85</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Visitors per page to detect 5.0% -&gt; 6.5%: 3,778<br>Visitors per page to detect 5.0% -&gt; 5.5%: 31,231</div>
          <ul class="lc-list">
            <li>Our test used 2,400 visitors per page. So it had only about 61% power for a 1.5-point lift. We were a bit lucky to see p &lt; 0.05. A planned test would use about 3,800 visitors per page.</li>
            <li>To find a lift one-third the size (0.5 points), you need about 8 times as many visitors. This is because n grows with 1 / (difference)&sup2;.</li>
            <li>Fix n in advance and run the test to the end. This is the honest way to avoid "peeking".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Multiple-Testing Trap</h3>
          <p>With α = 0.05, about 1 in 20 tests will still come out "significant" even when there is <em>no real</em> effect. The starter runs 20 tests on groups that come from the same distribution:</p>
          <div class="lc-code">20 tests with no real effect -&gt; 1 'significant' result(s) by pure chance</div>
          <p>If you test 20 metrics, or 20 city segments, expect one false "discovery". Reporting only that one result is called <strong>p-hacking</strong>. Fixes: choose the main metric before you look. Also adjust for many tests, for example with the Bonferroni correction: use α / number of tests.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>"p = 0.03 means a 3% chance the null hypothesis is true"</strong>: no. The p-value assumes H&#8320; is true. It asks how surprising the data would be.</li>
            <li><strong>Reading "not significant" as "no effect"</strong>: small samples often cannot find real effects.</li>
            <li><strong>Ignoring the effect size</strong>: report "5.07 marks better (p = 0.007)", not just "significant".</li>
            <li><strong>Peeking and stopping early</strong> in an A/B test, or testing many metrics and reporting only the best one.</li>
            <li><strong>Skipping the power calculation</strong>: a test with too little power often says "not significant" even when the change works.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Compare the permutation p-value with the t-test p-value.</li>
            <li>In the A/B test, change <code>conv_b</code> to <code>135</code> (5.6%). Is the result still significant at 0.05?</li>
            <li>Keep the same rates but make both samples twice as big: <code>n_a = n_b = 4800</code> and <code>conv_a, conv_b = 240, 270</code>. What happens to the p-value? What does this tell you about sample size?</li>
            <li>Call <code>stats.chi2_contingency(table)</code> without <code>correction=False</code>. Does the p-value go up or down?</li>
            <li>Use <code>n_per_group(0.05, 0.06)</code> to find the visitors you need to detect a 1-point lift. Then try <code>power=0.9</code>.</li>
            <li>Change the multiple-testing loop to 100 tests. About how many false alarms do you expect?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> With very large samples, even a 0.1-mark difference becomes "significant". Always report the <strong>effect size</strong> next to the p-value. The effect size is the actual difference, best with a confidence interval from lesson 13.
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

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Correlation vs Causation</h1>
        </div>
        <p class="lc-lead">Ice-cream sales and drowning cases both go up in summer. Does ice-cream cause drowning? Of course not. Hot weather causes both. <strong>Correlation</strong> tells you that two things move together. It does not tell you that one <strong>causes</strong> the other.</p>
        <div class="lc-card">
          <h3>The Correlation Coefficient (r)</h3>
          <table class="lc-table">
            <thead><tr><th>r value</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>+1</td><td>Perfect positive straight-line link</td></tr>
              <tr><td>around +0.7</td><td>Strong positive</td></tr>
              <tr><td>around 0</td><td>No <em>linear</em> (straight-line) link</td></tr>
              <tr><td>around &minus;0.7</td><td>Strong negative</td></tr>
              <tr><td>&minus;1</td><td>Perfect negative straight-line link</td></tr>
            </tbody>
          </table>
          <div class="lc-code">df['study_hours'].corr(df['marks'])          # Pearson (linear)<br>df.corr(numeric_only=True)                   # full matrix<br>df['x'].corr(df['y'], method='spearman')     # rank-based, robust</div>
        </div>
        <div class="lc-card">
          <h3>Why Correlation Can Mislead</h3>
          <ul class="lc-list">
            <li><strong>Confounders</strong>: a hidden third variable causes both (temperature &rarr; ice-cream and drowning).</li>
            <li><strong>Reverse causation</strong>: cities with more hospitals have more sick people. Hospitals do not cause illness.</li>
            <li><strong>Coincidence</strong>: if you check enough columns, some will correlate just by chance.</li>
            <li><strong>Non-linear patterns</strong>: a U-shape can have r &asymp; 0 but still a strong relationship.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Controlling for a Confounder</h3>
          <p>Split the data by the possible confounder. Check the correlation <em>inside</em> each group. If the correlation disappears, the confounder was probably the cause.</p>
          <div class="lc-code">for season, group in df.groupby('season'):<br>    print(season, group['icecream'].corr(group['drownings']))</div>
        </div>
        <div class="lc-card">
          <h3>How Do We Show Causation?</h3>
          <p>The best method is a <strong>randomised controlled experiment</strong> (an A/B test). You randomly choose who gets the treatment. Then confounders are balanced between the groups. When experiments are not possible, you need careful study design and good knowledge of the subject.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Correlation matrix:<br>           temp  icecream  drownings<br>temp       1.00      0.99       0.88<br>icecream   0.99      1.00       0.85<br>drownings  0.88      0.85       1.00<br><br>Ice-cream vs drownings (all days): r = 0.85  &lt;- looks strong!<br><br>Within each season (temperature roughly fixed):<br>  summer: r = 0.28<br>  winter: r = 0.20<br>The link mostly disappears -&gt; temperature was the confounder.<br><br>U-shaped data: Pearson r = -0.00, yet y depends perfectly on x.</div>
          <ul class="lc-list">
            <li>In the simulation, ice-cream never affects drownings. Both depend only on temperature. Still, r = 0.85 across all days.</li>
            <li>Inside one season, temperature changes only a little. So the link drops to about 0.2–0.3. What remains comes from daily temperature changes inside the season.</li>
            <li>For y = x², Pearson r is 0, even though x fully decides y. r measures only <em>straight-line</em> links. Spearman's rank correlation finds links that always go up (or always go down). But it would also miss this U-shape.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Writing "X causes Y" from a correlation</strong>: say "is associated with" unless you ran an experiment.</li>
            <li><strong>Saying "no relationship" because r ≈ 0</strong>: look at the data. The pattern may be curved.</li>
            <li><strong>Letting one outlier create a correlation</strong>: one extreme point can push r from 0.1 to 0.8. Spearman is less affected by this.</li>
            <li><strong>Getting the square wrong</strong>: r = 0.5 does not mean "50% related". r² = 0.25 means a straight line explains 25% of the variation.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter and read the correlation matrix.</li>
            <li>Compute <code>df['icecream'].corr(df['drownings'], method='spearman')</code>. Is it close to the Pearson value?</li>
            <li>For the U-shaped data, compute the correlation of <code>x ** 2</code> with <code>y</code> instead. What do you get? Why?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Write "is associated with", not "causes", unless your data came from a randomised experiment.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(3)

        # 60 days across two seasons; temperature is the hidden cause
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

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Fitting a Trend Line: Simple Linear Regression</h1>
        </div>
        <p class="lc-lead">Correlation (lesson 15) tells you <em>how strongly</em> two numbers move together. A <strong>regression line</strong> tells you <em>by how much</em>. For example: "each extra hour of study goes with about 5 more marks". In this lesson, you fit a line with least squares. You read its slope, check its residuals, and put a confidence interval on the slope.</p>
        <div class="lc-card">
          <h3>The Line and What It Means</h3>
          <div class="lc-code">predicted y = intercept + slope &times; x<br><br>slope, intercept = np.polyfit(df['hours'], df['marks'], deg=1)</div>
          <ul class="lc-list">
            <li><strong>Slope</strong>: how much predicted y changes when x goes up by one (marks per hour).</li>
            <li><strong>Intercept</strong>: the predicted y when x = 0. It only makes sense if x = 0 is inside the data.</li>
            <li><strong>Least squares</strong>: from all possible lines, pick the one with the smallest sum of squared residuals.</li>
            <li><strong>Residual</strong>: actual value minus predicted value. Positive means the point is above the line.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Reading the Numbers</h3>
          <table class="lc-table">
            <thead><tr><th>Number</th><th>Question it answers</th><th>Starter value</th></tr></thead>
            <tbody>
              <tr><td>Slope</td><td>How much does y change for each unit of x?</td><td>5.28 marks per hour</td></tr>
              <tr><td>RMSE of residuals</td><td>How wrong is a typical prediction?</td><td>5.0 marks</td></tr>
              <tr><td>R² (= r² for one x)</td><td>How much of the spread in y does the line explain?</td><td>0.88</td></tr>
              <tr><td>Bootstrap 95% CI for slope</td><td>How sure are we about the slope?</td><td>4.84 to 5.76</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Check the Residuals</h3>
          <p>A straight line is a fair summary only if the residuals look like random noise. Here are two quick text checks. You do not need a plot:</p>
          <ul class="lc-list">
            <li><strong>Average residual for each range of x</strong>: every range should be close to 0. If a range is clearly positive or negative, the line is wrong there.</li>
            <li><strong>Pattern in sorted residuals</strong>: positive, then negative, then positive again (a U-shape) means the true relationship is curved. Try a transform (lesson 8) or a different model.</li>
          </ul>
          <p>For a least-squares line with an intercept, the overall mean residual is always 0. So on its own, it proves nothing.</p>
        </div>
        <div class="lc-card">
          <h3>How Sure Is the Slope? Bootstrap It</h3>
          <p>A different sample of 60 students would give a slightly different slope. Do the same as in lesson 13. Resample the rows <strong>with replacement</strong> 2,000 times. Fit the line again each time. Then take the middle 95% of the slopes. If the interval does not include 0, the data support a real positive (or negative) trend.</p>
          <div class="lc-code">slopes = []<br>for _ in range(2000):<br>    sample = df.sample(n, replace=True, random_state=rng)<br>    slopes.append(np.polyfit(sample['hours'], sample['marks'], 1)[0])<br>low, high = np.percentile(slopes, [2.5, 97.5])</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Fitted line: marks = 32.9 + 5.28 x hours<br>Mean residual: 0.00   Typical size (RMSE): 5.0 marks<br>r = 0.94   R-squared = r^2 = 0.88<br>Mean residual by band: {'1-4 h': -0.6, '4-7 h': 0.9, '7-10 h': -0.4}<br>95% bootstrap CI for the slope: 4.84 to 5.76 marks per hour<br>Prediction for 6 hours: 65 marks<br>Prediction for 20 hours: 138 marks  &lt;- outside 1-10 h: do not trust<br><br>Curved data residuals: [12.0, 4.0, -2.0, -6.0, -8.0, -8.0, -6.0, -2.0, 4.0, 12.0]</div>
          <ul class="lc-list">
            <li>We made the data as 35 + 5 &times; hours + noise. From 60 students, the line found 32.9 and 5.28. The CI (4.84 to 5.76) contains the true value, 5.</li>
            <li>All the band averages are within about 1 mark of 0. So a straight line fits well.</li>
            <li>138 marks out of 100 is impossible. Outside the observed 1–10 hours, the line has no evidence. Predicting there is called extrapolation.</li>
            <li>For the curved data, the residuals go +, −, +. This U-shape tells you a straight line is the wrong summary, even though the fitted slope is exactly 0.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reading the slope as a cause</strong>: "5 marks per hour" is an association in observational data. Motivated students may study more and also score more (lesson 15).</li>
            <li><strong>Extrapolating</strong>: predicting far outside the range of x, like 20 hours of study.</li>
            <li><strong>Skipping the residual check</strong>: a high r can still hide a curved pattern, or one extreme point that pulls the line.</li>
            <li><strong>Swapping x and y</strong>: regressing hours on marks gives a different line. Put the variable you want to predict on the y side.</li>
            <li><strong>Reporting the slope without uncertainty</strong>: give the interval, not just the single number.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Explain the slope in one sentence that a teacher would understand.</li>
            <li>Change the noise from <code>6</code> to <code>20</code> in the <code>marks</code> line. What happens to R² and to the width of the slope CI?</li>
            <li>Add one extreme student before fitting: <code>df.loc[len(df)] = [10, 20]</code>. Move the <code>predicted</code> and <code>residual</code> lines after it. How much does the slope change?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always report a trend as three things together. First, the slope with its interval ("5.3 marks per hour, 95% CI 4.8 to 5.8"). Second, the typical error (RMSE 5 marks). Third, the range of x used to fit it (1 to 10 hours). Lesson 20 extends this to several features and testing on held-out data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(7)
        n = 60
        hours = rng.uniform(1, 10, n).round(1)
        marks = (35 + 5 * hours + rng.normal(0, 6, n)).round(0)
        df = pd.DataFrame({'hours': hours, 'marks': marks})

        # 1. Least-squares line: marks = intercept + slope * hours
        slope, intercept = np.polyfit(df['hours'], df['marks'], deg=1)
        print(f"Fitted line: marks = {intercept:.1f} + {slope:.2f} x hours")

        # 2. Residuals = actual - predicted
        df['predicted'] = intercept + slope * df['hours']
        df['residual'] = df['marks'] - df['predicted']
        print(f"Mean residual: {df['residual'].mean():.2f}   Typical size (RMSE): "
              f"{np.sqrt((df['residual'] ** 2).mean()):.1f} marks")

        # 3. r and R-squared: how much of the spread the line explains
        r = df['hours'].corr(df['marks'])
        print(f"r = {r:.2f}   R-squared = r^2 = {r ** 2:.2f}")

        # 4. Residual check: average residual in three ranges of hours (all should be near 0)
        bands = pd.cut(df['hours'], bins=[0, 4, 7, 10], labels=['1-4 h', '4-7 h', '7-10 h'])
        print("Mean residual by band:", df.groupby(bands, observed=True)['residual'].mean().round(1).to_dict())

        # 5. Bootstrap: how sure are we about the slope?
        slopes = []
        for _ in range(2000):
            sample = df.sample(n, replace=True, random_state=rng)
            slopes.append(np.polyfit(sample['hours'], sample['marks'], 1)[0])
        low, high = np.percentile(slopes, [2.5, 97.5])
        print(f"95% bootstrap CI for the slope: {low:.2f} to {high:.2f} marks per hour")

        # 6. Predict only inside the data range
        for h in [6, 20]:
            note = "" if df['hours'].min() <= h <= df['hours'].max() else "  <- outside 1-10 h: do not trust"
            print(f"Prediction for {h} hours: {intercept + slope * h:.0f} marks{note}")

        # 7. A curved pattern: the straight line leaves a U-shaped pattern in the residuals
        x = np.arange(1, 11)
        y = (x - 5.5) ** 2
        s2, i2 = np.polyfit(x, y, 1)
        res = y - (i2 + s2 * x)
        print("\nCurved data residuals:", res.round(1).tolist())
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Grouping and Aggregation for Insights</h1>
        </div>
        <p class="lc-lead">Most business questions are really <strong>comparison</strong> questions: which city, which team, which month? Grouping splits data into segments (groups). Aggregating summarises each group. The insight comes from comparing the groups.</p>
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
          <h3>The Code Is One Line; Choosing the Metric Is the Skill</h3>
          <p>One call gives several metrics per group: <code>df.groupby('city').agg(orders=('order_id', 'count'), revenue=('amount', 'sum'), late_rate=('late', 'mean'))</code>. And <code>pd.pivot_table(df, index='city', columns='cuisine', values='amount', aggfunc='sum')</code> gives a two-way view. (Lessons 10 and 14 of the pandas course cover groupby, named aggregation and pivot tables in detail.) The mean of a True/False column is the <strong>proportion</strong> (share) of True values. This is a useful trick for rates. What matters here is choosing the metric that answers the question:</p>
          <table class="lc-table">
            <thead><tr><th>Metric</th><th>Answers</th><th>Misleads when...</th></tr></thead>
            <tbody>
              <tr><td>Total (sum)</td><td>Where is the most money or volume?</td><td>Groups have different sizes: a big city wins just because it is big</td></tr>
              <tr><td>Mean per row</td><td>What does a typical order look like?</td><td>There are a few very large values; use the median too</td></tr>
              <tr><td>Rate (mean of True/False)</td><td>How often does something go wrong?</td><td>The group is tiny: 2 late out of 2 is "100%"</td></tr>
              <tr><td>Share of total</td><td>How important is each group to the whole?</td><td>It is shown without the real numbers behind it</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Beware Small Groups and Simpson's Paradox</h3>
          <ul class="lc-list">
            <li>A group with 2 orders and a 100% late rate is not a crisis. Always show the count next to a rate.</li>
            <li><strong>Simpson's paradox</strong>: a trend in every subgroup can turn the other way when you combine the groups. This happens because group sizes differ. Check results at more than one level.</li>
            </ul>
            <p>Example: two delivery partners, X and Y. Y is better on short trips <em>and</em> on long trips. But Y is worse overall. This is because most of Y's orders are the hard, long trips.</p>
            <div class="lc-code">d = pd.DataFrame({'partner': ['X', 'X', 'Y', 'Y'], 'trip': ['short', 'long', 'short', 'long'],<br>                  'on_time': [90, 30, 19, 70], 'orders': [100, 50, 20, 100]})<br>by_trip = d.assign(rate=d.on_time / d.orders).pivot(index='partner', columns='trip', values='rate')<br>overall = d.groupby('partner')[['on_time', 'orders']].sum()<br>by_trip['overall'] = overall.on_time / overall.orders<br>print(by_trip.round(2))</div>
            <p><strong>Output:</strong></p>
            <div class="lc-code">trip     long  short  overall<br>partner<br>X         0.6   0.90     0.80<br>Y         0.7   0.95     0.74</div>
            <p>If you judge partners on the overall rate, Y looks bad for taking the hard trips. The fair comparison is inside each trip type.</p>
        </div>
        <div class="lc-card">
          <h3>Is the Gap Between Groups Real?</h3>
          <p>A difference between groups is only an insight if it is bigger than chance. For a rate across several groups, test the <code>city &times; late</code> crosstab. Use the chi-square test from lesson 14:</p>
          <div class="lc-code">table = pd.crosstab(df['city'], df['late'])<br>chi2, p, dof, expected = stats.chi2_contingency(table)</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Chi-square city vs late: chi2 = 11.8, dof = 3, p = 0.0082<br>Smallest expected count: 4.9 (rule of thumb: at least 5)</div>
          <p>p = 0.008, so late rates really do differ between cities. The test tells you <em>that</em> they differ, not <em>which</em> city is different. The table shows that it is Philadelphia. Manchester's expected late count (4.9) is just under 5. So treat the p-value as approximate. With more Manchester orders, you could trust it.</p>
        </div>
        <div class="lc-card">
          <h3>Grouping by Time</h3>
          <p>"How do sales change by month or weekday?" is a group-by on time. For calendar periods, use <code>resample</code> on a date index. Or group by a part of the date (lesson 8). (Lessons 13 and 17 of the pandas course cover dates and rolling windows.)</p>
          <div class="lc-code">sales = pd.DataFrame({'date': pd.date_range('2024-01-01', periods=120, freq='D')})<br>sales['amount'] = 1000 + sales.index * 5 + (sales['date'].dt.dayofweek &gt;= 5) * 400<br>monthly = sales.set_index('date')['amount'].resample('MS').sum()<br>print(monthly)<br>print(sales.groupby(sales['date'].dt.day_name())['amount'].mean().round(0).sort_values().tail(3))</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">date<br>2024-01-01    36525<br>2024-02-01    38725<br>2024-03-01    46625<br>2024-04-01    47425<br>Freq: MS, Name: amount, dtype: int64<br>date<br>Friday      1300.0<br>Saturday    1705.0<br>Sunday      1710.0<br>Name: amount, dtype: float64</div>
          <p>Be careful with the calendar. February 2024 has 29 days. The data stops on 29 April, so April is a <strong>partial month</strong> (not complete). Compare periods with an average per day (<code>resample('MS').mean()</code>), not raw totals. Never report an unfinished month as a drop or a rise.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">              orders  revenue  avg_value  late_rate  revenue_share_%<br>city<br>Seattle          125    66097      529.0       16.8             42.8<br>London            90    45486      505.0       12.2             29.4<br>Philadelphia      57    28227      495.0       31.6             18.3<br>Manchester        28    14660      524.0        7.1              9.5<br>...<br>Insight: Seattle is the biggest market (42.8% of revenue).<br>Insight: Philadelphia has the highest late rate (31.6% of 57 orders).</div>
          <p>Philadelphia's late rate is about double that of the other cities. It is based on 57 orders, not 5, so it is worth acting on. Manchester's low 7.1% comes from only 28 orders (2 late ones), so be careful with it.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Showing rates without counts</strong>: always print the group size next to a percentage.</li>
            <li><strong>Averaging averages</strong>: the mean of four city averages is not the overall average when cities have different numbers of orders.</li>
            <li><strong>Comparing totals across groups of different size</strong>: Seattle earns the most partly because it has the most orders. Compare values per order too.</li>
            <li><strong>Stopping at one level</strong>: as Simpson's paradox shows, a combined result can point the opposite way from every subgroup.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check that the revenue shares add up to about 100%.</li>
            <li>Add <code>median_value=('amount', 'median')</code> to the <code>agg</code> call. Is the median close to the mean in each city?</li>
            <li>Compute the overall late rate with <code>df['late'].mean()</code>. Compare it with the simple average of the four city late rates. Why are they different?</li>
            <li>Change Philadelphia's late probability from <code>0.30</code> to <code>0.14</code> and run it again. Is the chi-square test still significant?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <strong>share of total</strong> (e.g. <code>revenue / revenue.sum()</code>) to turn raw numbers into insight. "Seattle brings 42.8% of revenue" is easier to act on than "&#8377;66,097".
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
            'city':     rng.choice(['Seattle', 'London', 'Philadelphia', 'Manchester'], n, p=[0.4, 0.3, 0.2, 0.1]),
            'cuisine':  rng.choice(['Biryani', 'Dosa', 'Pizza'], n),
            'amount':   rng.integers(120, 900, n),
        })
        df['late'] = rng.random(n) < np.where(df['city'] == 'Philadelphia', 0.30, 0.12)

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

        # Is Philadelphia's higher late rate bigger than chance? Chi-square on city x late
        table = pd.crosstab(df['city'], df['late'])
        chi2, p, dof, expected = stats.chi2_contingency(table)
        print(f"Chi-square city vs late: chi2 = {chi2:.1f}, dof = {dof}, p = {p:.4f}")
        print(f"Smallest expected count: {expected.min():.1f} (rule of thumb: at least 5)")
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">The Exploratory Data Analysis Workflow</h1>
        </div>
        <p class="lc-lead"><strong>Exploratory Data Analysis (EDA)</strong> is how you get to know your data. You do it before you draw conclusions or build models. It joins everything so far into a routine you can repeat: inspecting, cleaning, summarising and comparing.</p>
        <div class="lc-card">
          <h3>A Repeatable EDA Routine</h3>
          <ol class="lc-list">
            <li><strong>Overview</strong>: shape, dtypes, missing values, duplicates.</li>
            <li><strong>Univariate</strong> (one column): look at each column alone. Check its distribution, centre, spread and strange values.</li>
            <li><strong>Bivariate</strong> (two columns): look at pairs of columns. Use correlations, group comparisons and crosstabs.</li>
            <li><strong>Segments</strong>: split results by important groups (city, month, team).</li>
            <li><strong>Notes</strong>: write down each finding and each new question as you go.</li>
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
          <p>Small helpers like this make your EDA fast. They also keep it the same across projects.</p>
        </div>
        <div class="lc-card">
          <h3>Turning Observations into Findings</h3>
          <table class="lc-table">
            <thead><tr><th>Observation</th><th>Finding</th></tr></thead>
            <tbody>
              <tr><td>AQI median is 280 in Nov, 90 in Jul</td><td>Air quality changes strongly with the season. In this data it is worst in the cold months, when still, cold air can trap smoke and traffic fumes near the ground</td></tr>
              <tr><td>corr(traffic, AQI) = 0.16 (the starter)</td><td>Weak link in this data; season and city explain much more of the AQI</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">1. Overview (36, 4)<br>                 dtype  missing  unique<br>city            object        0       3<br>month            int32        0      12<br>traffic_index  float64        0      35<br>aqi            float64        2      33<br><br>2. AQI summary: count 34, mean 188.6, median 169.5, max 377<br><br>3. corr(traffic, AQI) = 0.16<br>Chicago 255.0, New York 181.0, San Francisco 133.0  (median AQI)<br><br>4. Median AQI by city and season:<br>season         Winter  Spring  Summer  Autumn<br>Chicago         374.0   248.0   150.0   361.0<br>New York        214.0   181.0   102.0   224.0<br>San Francisco   166.0   131.0    93.0   177.0</div>
          <ul class="lc-list">
            <li>Step 1 finds 2 missing AQI values before anything else.</li>
            <li>Step 3 shows that traffic is only weakly linked to AQI (r = 0.16) in this data.</li>
            <li>Step 4 shows the big story: season. Every city is cleanest in summer and worst in autumn or winter. Chicago's winter median reaches 374.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Jumping straight to a model</strong>: you would miss the seasonal pattern that explains most of the AQI.</li>
            <li><strong>Looking only at overall numbers</strong>: the overall median AQI (169.5) does not describe any real city and season.</li>
            <li><strong>Not writing notes as you go</strong>: if you do not record findings, you forget them before you write the report.</li>
            <li><strong>Treating EDA findings as proven</strong>: EDA suggests hypotheses (ideas to test). Testing them is a separate step (lesson 14).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Write your own two-line findings for step 5.</li>
            <li>Compute the traffic–AQI correlation inside each city: <code>df.groupby('city')[['traffic_index', 'aqi']].corr()</code>. Is it stronger inside a city?</li>
            <li>Find the two rows with missing AQI (<code>df[df['aqi'].isna()]</code>). Which city and month are they?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> EDA does not go in a straight line. A surprising finding in step 3 often sends you back to step 1. There you check if it is a data error.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(21)
        months = np.tile(np.arange(1, 13), 3)
        city = np.repeat(['Chicago', 'New York', 'San Francisco'], 12)
        base = {'Chicago': 200, 'New York': 110, 'San Francisco': 80}
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
        season_of = {12: 'Winter', 1: 'Winter', 2: 'Winter', 3: 'Spring', 4: 'Spring', 5: 'Spring',
                     6: 'Summer', 7: 'Summer', 8: 'Summer', 9: 'Autumn', 10: 'Autumn', 11: 'Autumn'}
        df['season'] = pd.Categorical(df['month'].map(season_of),
                                      categories=['Winter', 'Spring', 'Summer', 'Autumn'])
        print("\n4. Median AQI by city and season:")
        print(df.pivot_table(index='city', columns='season', values='aqi',
                             aggfunc='median', observed=False).round(0))

        # 5. Notes
        print("\n5. Findings: Chicago worst overall; every city is cleanest in summer;")
        print("   2 missing AQI values to investigate before modelling.")
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Data Visualization Principles</h1>
        </div>
        <p class="lc-lead">A good chart makes the main point clear in five seconds. In real projects, you would use libraries like Matplotlib or Seaborn. Here we focus on the <strong>thinking</strong> behind a chart. We practise with text charts, because our sandbox cannot show images.</p>
        <div class="lc-card">
          <h3>Pick the Chart from the Question</h3>
          <table class="lc-table">
            <thead><tr><th>You want to show&hellip;</th><th>Use</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Comparison between categories</td><td>Bar chart</td><td>Runs by IPL team</td></tr>
              <tr><td>Change over time</td><td>Line chart</td><td>Monthly rainfall</td></tr>
              <tr><td>Distribution of one variable</td><td>Histogram / box plot</td><td>Exam marks</td></tr>
              <tr><td>Relationship between two numbers</td><td>Scatter plot</td><td>Study hours vs marks</td></tr>
              <tr><td>Parts of a whole (few parts)</td><td>Stacked bar (or pie, but rarely)</td><td>Order share by cuisine</td></tr>
              <tr><td>Two categorical dimensions</td><td>Heatmap</td><td>AQI by city and month</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Principles of Honest, Clear Charts</h3>
          <ul class="lc-list">
            <li><strong>Start bar charts at zero.</strong> A cut axis can make a 2% difference look very big.</li>
            <li><strong>Sort bars</strong> by value, not in alphabetical order, unless the order has a meaning.</li>
            <li><strong>Label everything</strong>: title, axis names, units (mm, &#8377;, %).</li>
            <li><strong>Remove clutter</strong>: 3D effects, heavy gridlines and rainbow colours hide the message.</li>
            <li><strong>Highlight the point</strong>: colour the one bar that matters and make the rest grey.</li>
            <li><strong>Put the insight in the title</strong>: "Dinner orders are 40% slower" is better than "Delivery time by slot".</li>
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
          <p>The same five numbers give two very different impressions. When the axis starts at zero, the bars are nearly equal. That is the honest picture. When it starts at 2,100, MI's bar looks about 7 times longer than SRH's. But MI scored only 15% more runs. The rainfall chart keeps the months in calendar order. For time, the order <em>is</em> the message.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Cutting the axis of a bar chart</strong>: bar length must match the value. (A line chart may zoom in, if the axis is clearly labelled.)</li>
            <li><strong>Pie charts with many slices</strong>: people are bad at comparing angles. Use a sorted bar chart.</li>
            <li><strong>Sorting a time series by value</strong>: it destroys the pattern over time.</li>
            <li><strong>Dual y-axes</strong> (two y-axes on one chart): you can stretch the two scales to make any two lines look related.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Compare the honest chart and the misleading chart.</li>
            <li>Change the misleading axis start from <code>2100</code> to <code>2000</code>. Also change the divisor from <code>10</code> to <code>12</code>. Does it still exaggerate?</li>
            <li>Make a bar chart of rainfall, sorted from the wettest to the driest month. What story does it tell? What story does it lose?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before you make any chart, write one sentence: "This chart shows that ____." If you cannot fill the blank, you do not need the chart yet.
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

        # Change over time -> keep the normal month order (do not sort!)
        bar_chart(rain, "Rainfall peaks in July (mm)", highlight='Jul')

        # Misleading axis demo: same data, axis starting at 2100
        print("\nMisleading version (axis starts at 2100):")
        for team, value in runs.sort_values(ascending=False).items():
            print(f"  {team:4s} {'#' * int((value - 2100) / 10)} {value}")
        diff_pct = (runs.max() - runs.min()) / runs.min() * 100
        print(f"Real gap between best and worst: only {diff_pct:.0f}%")
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Introduction to Predictive Modelling</h1>
        </div>
        <p class="lc-lead">After you explore data, the next question is often "can we <strong>predict</strong> it?" A model learns a pattern from past examples. Then it uses the pattern on new examples. The Machine Learning course goes into detail. Here we focus on the data science habits that make a model trustworthy.</p>
        <div class="lc-card">
          <h3>Two Kinds of Prediction</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Predicts</th><th>Example</th><th>Typical metric</th></tr></thead>
            <tbody>
              <tr><td>Regression</td><td>A number</td><td>Delivery minutes</td><td>MAE (average error)</td></tr>
              <tr><td>Classification</td><td>A category</td><td>Will the student pass?</td><td>Accuracy, plus precision and recall when one class is much rarer</td></tr>
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
            <li><strong>Keep a test set aside.</strong> Judging a model on the data it trained on is like marking your own exam.</li>
            <li><strong>Beat a baseline</strong> (a very simple guess to compare with). If "always predict the average" gives an error of 8 minutes and your model gives 7.8, it has learned very little.</li>
            <li><strong>Avoid leakage.</strong> Never use a feature that is known only after the event (e.g. "delivered_at" to predict delivery time).</li>
            <li><strong>Interpret it.</strong> Look at the coefficients (the numbers the model learned). "Each extra km adds about 3 minutes" is an insight you can share.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Reading the Error in Context</h3>
          <p>An MAE of 4 minutes is excellent for 40-minute deliveries. But it is terrible for 5-minute ones. Always compare the error with the typical size of what you predict, and with the baseline.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Baseline MAE (always predict the mean): 9.1 min<br>Linear model MAE:                       3.1 min<br>Improvement: 65%<br><br>What the model learned:<br>  +1 km    -&gt; +3.2 minutes<br>  +1 peak  -&gt; +8.3 minutes<br>  +1 items -&gt; +1.4 minutes<br><br>Prediction for a 4 km, 2-item order at 8 pm: 36 min</div>
          <ul class="lc-list">
            <li>Compared with always guessing the mean, the model cuts the average error from 9.1 to 3.1 minutes. That is a real improvement.</li>
            <li>We made the data with 3.2 minutes per km, 8 for peak hours and 1.5 per item. From 300 training orders, the model found 3.2, 8.3 and 1.4.</li>
            <li>The remaining 3.1-minute error is mostly the random noise we put in the data. No model can predict pure chance.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reporting training error</strong>: measure on the test set that you kept aside.</li>
            <li><strong>No baseline</strong>: without the 9.1-minute baseline, "3.1 minutes" has no context.</li>
            <li><strong>Reading coefficients as causes</strong>: "+8.3 minutes at peak" is an association learned from this data. It does not prove that peak hours cause it (a shortage of riders might).</li>
            <li><strong>Predicting far outside the data</strong>: the model has never seen a 30 km order.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Explain the "Improvement: 65%" line.</li>
            <li>Remove <code>'peak'</code> from <code>X</code> (use <code>df[['km', 'items']]</code>, and delete <code>'peak'</code> from <code>new_order</code>). How much worse is the MAE?</li>
            <li>Add the leaky feature <code>df['delivered_minute'] = df['minutes']</code> to <code>X</code>. What MAE do you get? Why is this model useless in real life?</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> This lesson is a bridge. The Machine Learning course covers train/test splits, metrics, cross-validation and many more models in detail. A model is only as good as its data. The cleaning and EDA you did earlier usually help results more than moving to a fancier algorithm.
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

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Communicating Results and Data Ethics</h1>
        </div>
        <p class="lc-lead">If nobody understands your analysis, it changes nothing. The last step of the lifecycle is to <strong>explain what you found, how sure you are and what to do next</strong>. Do this honestly, and without harming the people behind the data.</p>
        <div class="lc-card">
          <h3>Structure of a Good Summary</h3>
          <ol class="lc-list">
            <li><strong>Headline</strong>: the most important finding, in one sentence.</li>
            <li><strong>Evidence</strong>: two or three numbers, or a chart, that support it.</li>
            <li><strong>Confidence</strong>: sample size, uncertainty, limitations.</li>
            <li><strong>Recommendation</strong>: what the reader should do.</li>
          </ol>
          <div class="lc-code">Headline: Philadelphia orders are late twice as often as other cities.<br>Evidence: 29% late vs 13% elsewhere (based on 61 vs 239 orders).<br>Confidence: Moderate - one month of data; heavy rain may play a role.<br>Action: Pilot 5 extra riders in Philadelphia at dinner time for 2 weeks.</div>
        </div>
        <div class="lc-card">
          <h3>Know Your Audience</h3>
          <table class="lc-table">
            <thead><tr><th>Audience</th><th>They want</th></tr></thead>
            <tbody>
              <tr><td>Manager / principal</td><td>Headline and recommendation, no jargon</td></tr>
              <tr><td>Fellow analysts</td><td>Methods, assumptions and code</td></tr>
              <tr><td>General public</td><td>Plain language, comparisons from daily life</td></tr>
            </tbody>
          </table>
          <p>Say "customers in Philadelphia wait about 9 minutes longer". Do not say "the coefficient was 9.2 with p &lt; 0.01".</p>
        </div>
        <div class="lc-card">
          <h3>Data Ethics Essentials</h3>
          <ul class="lc-list">
            <li><strong>Privacy</strong>: remove or hide names, phone numbers and IDs like Aadhaar. India's <em>Digital Personal Data Protection Act, 2023</em> requires consent, a clear purpose and security safeguards for personal data. The DPDP Rules were notified in November 2025. They make most of these duties apply from May 2027.</li>
            <li><strong>Consent and purpose</strong>: use data only for the purpose people agreed to.</li>
            <li><strong>Bias</strong>: if past data shows unfair decisions, a model trained on it will repeat them.</li>
            <li><strong>Honesty</strong>: do not pick only the one result that looks good. Do not hide results that look bad.</li>
            <li><strong>Small groups</strong>: "the only girl in Section C scored 35" identifies a person, even without a name.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Anonymising Before Sharing</h3>
          <div class="lc-code">SALT = "keep-this-secret-2026"   # store it separately, never share it<br>df['student_id'] = df['name'].map(<br>    lambda n: 'S' + hashlib.sha256((SALT + n).encode()).hexdigest()[:6])<br>df = df.drop(columns=['name', 'phone'])</div>
          <p>This is <strong>pseudonymisation</strong> (replacing names with codes), not full anonymisation. Without the secret salt, anyone could hash a list of common names and match the codes back to students. Even with the salt, the data can still identify people when combined with other columns. So under the DPDP Act, you should still treat it as personal data. Hiding very small groups (below) is a second layer of protection.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Shareable data:<br>  section  maths student_id<br>0       A     78    Sa1af5f<br>...<br>7       C     48    Sc14ae3<br><br>Section report (groups under 3 hidden):<br>         count  mean<br>section<br>A            3  75.0<br>B            4  70.5<br>C            1   NaN<br><br>Headline: Section A has the highest average Maths score.<br>Evidence: 75.0 vs school average 69.4.<br>Confidence: low - only 8 students in total.<br>Action: share Section A teaching methods; collect a full term of data.</div>
          <p>Section C has only one student. So its average would show that student's exact mark. The report hides it (NaN). The summary follows the headline → evidence → confidence → action structure. It is honest about how little data there is.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Thinking a hashed name is anonymous</strong>: an unsalted hash of "Priya" is the same for everyone who computes it.</li>
            <li><strong>Hiding uncertainty</strong>: "Section A is best" from 3 students is a hint, not a fact. Say so.</li>
            <li><strong>Jargon for a non-technical audience</strong>: "coefficient", "p-value" and "heteroscedastic" belong in the appendix, not the headline.</li>
            <li><strong>Cherry-picking</strong>: reporting only the one metric that looks good and leaving out the others.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <ol class="lc-list">
            <li>Run the starter. Check which section's average is hidden, and why.</li>
            <li>Change <code>MIN_GROUP = 3</code> to <code>5</code>. Which sections are hidden now? Is the report still useful?</li>
            <li>Rewrite the four summary lines for parents instead of the principal. Use plain words and no numbers they cannot understand.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Ask yourself: "Would the people in this dataset be happy with how I use and show their data?" If not, think again.
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

        # 1. Pseudonymise: replace names with codes made with a SECRET salt, and drop contact details
        SALT = "keep-this-secret-2026"      # without a secret, anyone can hash common names
        safe = raw.copy()
        safe['student_id'] = safe['name'].map(
            lambda n: 'S' + hashlib.sha256((SALT + n).encode()).hexdigest()[:6])
        safe = safe.drop(columns=['name', 'phone'])
        print("Shareable data:")
        print(safe)

        # 2. Aggregate, but hide groups that are too small to stay anonymous
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

    22 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge">Data Science</div>
          <h1 class="lc-title">Capstone EDA Project and Review</h1>
        </div>
        <p class="lc-lead">Now you will put the whole lifecycle together. In this capstone (final project), you analyse a season of <strong>student performance data</strong>, from the question to the recommendation. Use the starter code as a template. Then extend it with your own questions.</p>
        <div class="lc-card">
          <h3>The Brief</h3>
          <p>A school wants to know: <strong>"Which factors are associated with low Maths marks, and where should we focus extra classes?"</strong> The data has study hours, attendance, school section, travel time and marks. It also has the usual real-world mess.</p>
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
            <li>Start with a <strong>clear question</strong> and a metric (lessons 1–2).</li>
            <li>Inspect the data before you trust it. <strong>Clean carefully</strong> and record every change (lessons 5–8).</li>
            <li>Join tables with a <strong>left join, validate and a row count</strong>. Reshape to tidy long format (lesson 9).</li>
            <li>Report <strong>centre and spread</strong>. Use the median for skewed data (lessons 10–11).</li>
            <li>Samples give <strong>estimates with uncertainty</strong>. Bigger samples make the error smaller by &radic;n (lesson 13).</li>
            <li>A small p-value means "unlikely to be chance". It does not mean "large" or "important" (lesson 14).</li>
            <li><strong>Correlation is not causation</strong>. Look for confounders (lesson 15).</li>
            <li>The slope of a trend line needs an interval and a <strong>residual check</strong> (lesson 16).</li>
            <li>Compare groups and show counts next to rates. <strong>Beat a baseline</strong> before you trust a model (lessons 17 and 20).</li>
            <li>Communicate clearly and <strong>protect the people</strong> behind the data (lesson 21).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Extension Ideas</h3>
          <ul class="lc-list">
            <li>Use a permutation test to check if long-commute students score lower.</li>
            <li>Build a simple model that marks students at risk. Compare it with a baseline.</li>
            <li>Rewrite the final summary for parents.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Output of the Starter</h3>
          <div class="lc-code">Shape: (122, 5) | duplicates: 2 | missing maths: 3<br><br>Correlation with maths:<br>study_hours    0.66<br>attendance     0.22<br>commute_min   -0.18<br><br>Low-score rate (%) by attendance band:<br>&lt;75      14.3<br>75-89     2.6<br>90+       3.3<br><br>Headline: study_hours has the strongest link to marks; attendance band &lt;75 is most at risk.<br>Evidence: short-commute students score 5.2 marks higher (95% CI 0.5 to 10.0, p = 0.045, n = 117).<br>Action: extra classes for the &lt;75 attendance group; review timings for long commuters.</div>
          <ul class="lc-list">
            <li>Cleaning removed 2 duplicate rows and 3 rows with no Maths mark (122 → 117). It fixed the section label "b " and replaced one impossible attendance of 140%.</li>
            <li>Students below 75% attendance are about 4–5 times more likely to score under 40.</li>
            <li>The bands use <code>pd.cut(..., [0, 75, 90, 101], right=False)</code>. So each band includes its left edge: a student with exactly 75% goes in "75-89", not "&lt;75". With the default <code>right=True</code>, 75% would wrongly count as below 75.</li>
            <li>The commute gap is 5.2 marks. But the confidence interval goes from 0.5 to 10 marks, and p = 0.045 is just under 0.05. Honest wording: "probably real, but the size is uncertain". This is observational data, so we say "associated with", not "caused by".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Cleaning without recording</strong>: your report must say what was dropped and filled, and why.</li>
            <li><strong>Declaring causation</strong>: long commutes may go together with other factors (family income, school choice).</li>
            <li><strong>Reporting only the p-value</strong>: give the size of the gap and its confidence interval.</li>
            <li><strong>Ending with charts instead of an action</strong>: the school needs to know what to do next.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it: Extend the Capstone</h3>
          <ol class="lc-list">
            <li>Run the starter. Write a five-line report (question, data and cleaning, finding, confidence, action).</li>
            <li>Compare Maths marks by section with <code>df.groupby('section')['maths'].agg(['count', 'mean', 'median'])</code>. Is any section clearly different?</li>
            <li>Change the long-commute limit from 60 to 45 minutes. Do the gap, CI and p-value change?</li>
            <li>Challenge: build a simple model that marks students at risk (lesson 20). Compare its accuracy with a baseline.</li>
          </ol>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put a project like this on GitHub. Add a short README that explains your question, method and findings. It is a very good portfolio project for internships.
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

module PandasContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Introduction to Pandas</h1>
        </div>
        <p class="lc-lead">Pandas is Python's most popular data analysis library. It provides two key data structures — <strong>Series</strong> (1D) and <strong>DataFrame</strong> (2D table) — for loading, cleaning, transforming, and analysing data.</p>
        <div class="lc-card">
          <h3>Why Pandas?</h3>
          <ul class="lc-list">
            <li>Read data from CSV, Excel, SQL, JSON, and more</li>
            <li>Clean and reshape messy real-world data</li>
            <li>Perform fast aggregations and group operations</li>
            <li>Built on NumPy — vectorised operations are very fast</li>
            <li>Used by data scientists, analysts, and ML engineers daily</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Importing Pandas</h3>
          <div class="lc-code">import pandas as pd<br>import numpy as np</div>
        </div>
        <div class="lc-card">
          <h3>Creating a DataFrame</h3>
          <div class="lc-code">df = pd.DataFrame({<br>    'name':  ['Alice', 'Bob', 'Carol'],<br>    'score': [95, 82, 91],<br>    'grade': ['A', 'B', 'A']<br>})<br>print(df)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> By convention, import pandas as <code>pd</code> and numpy as <code>np</code> — every pandas user does this.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Create a DataFrame from a dictionary
        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR', 'Marketing'],
            'salary':     [90000, 65000, 85000, 55000, 72000],
            'years':      [5, 3, 7, 2, 4]
        })

        print(df)
        print()
        print("Shape:", df.shape)
        print("Columns:", list(df.columns))
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">DataFrame Basics — Exploring Data</h1>
        </div>
        <p class="lc-lead">The first thing you do with any dataset is explore its structure. Pandas provides several methods to quickly understand your data.</p>
        <div class="lc-card">
          <h3>Essential Exploration Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method / Attribute</th><th>What it returns</th></tr></thead>
            <tbody>
              <tr><td>df.head(n)</td><td>First n rows (default 5)</td></tr>
              <tr><td>df.tail(n)</td><td>Last n rows</td></tr>
              <tr><td>df.shape</td><td>Tuple (rows, columns)</td></tr>
              <tr><td>df.columns</td><td>Index of column names</td></tr>
              <tr><td>df.dtypes</td><td>Data type of each column</td></tr>
              <tr><td>df.info()</td><td>Concise summary with dtypes and nulls</td></tr>
              <tr><td>df.describe()</td><td>Statistical summary (numeric columns)</td></tr>
              <tr><td>len(df)</td><td>Number of rows</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Selecting Columns</h3>
          <div class="lc-code">df['salary']           # Select one column → Series<br>df[['name', 'salary']] # Select multiple → DataFrame</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>df.describe()</code> shows count, mean, std, min, 25%, 50%, 75%, max — a quick health check for numeric columns.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'product':  ['Widget', 'Gadget', 'Doohickey', 'Thingamajig', 'Gizmo'],
            'category': ['Hardware', 'Electronics', 'Hardware', 'Electronics', 'Software'],
            'price':    [29.99, 149.99, 9.99, 79.99, 49.99],
            'stock':    [100, 25, 500, 12, 75],
            'rating':   [4.5, 4.8, 3.9, 4.2, 4.7]
        })

        print("=== head(3) ===")
        print(df.head(3))

        print("\n=== shape ===")
        print(df.shape)

        print("\n=== describe() ===")
        print(df.describe())

        print("\n=== Single column ===")
        print(df['product'])
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Selecting and Filtering Data</h1>
        </div>
        <p class="lc-lead">Selecting specific rows and columns is fundamental to data analysis. Pandas uses bracket notation and boolean indexing for powerful, expressive filtering.</p>
        <div class="lc-card">
          <h3>Column Selection</h3>
          <div class="lc-code">df['name']              # Single column (Series)<br>df[['name', 'salary']]  # Multiple columns (DataFrame)</div>
        </div>
        <div class="lc-card">
          <h3>Row Filtering (Boolean Indexing)</h3>
          <div class="lc-code">df[df['salary'] > 70000]                        # Greater than<br>df[df['dept'] == 'Engineering']                 # Equal to<br>df[df['salary'].between(50000, 80000)]          # Range<br>df[df['name'].isin(['Alice', 'Bob'])]           # In list<br><br># Combine with & (and), | (or), ~ (not)<br>df[(df['salary'] > 70000) &amp; (df['dept'] == 'Eng')]</div>
        </div>
        <div class="lc-card">
          <h3>loc and iloc</h3>
          <div class="lc-code">df.loc[0]              # Row by label/index<br>df.loc[0:2, 'name']    # Rows 0-2, name column<br>df.iloc[0]             # Row by position (integer)<br>df.iloc[0:3, 1:3]      # Rows 0-2, cols 1-2</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always use <code>&amp;</code> / <code>|</code> (not Python's <code>and</code>/<code>or</code>) when combining boolean conditions in pandas — and wrap each condition in parentheses.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve', 'Frank'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR', 'Marketing', 'Engineering'],
            'salary':     [90000, 65000, 85000, 55000, 72000, 78000],
            'years':      [5, 3, 7, 2, 4, 6]
        })

        print("=== Engineers ===")
        print(df[df['department'] == 'Engineering'])

        print("\n=== Salary > 70000 ===")
        print(df[df['salary'] > 70000])

        print("\n=== Engineers with salary > 80000 ===")
        print(df[(df['department'] == 'Engineering') & (df['salary'] > 80000)])

        print("\n=== Just name and salary columns ===")
        print(df[['name', 'salary']])
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Sorting and Ranking</h1>
        </div>
        <p class="lc-lead">Sorting data is essential for exploratory analysis and reporting. Pandas makes it easy to sort by one or multiple columns in any direction.</p>
        <div class="lc-card">
          <h3>sort_values()</h3>
          <div class="lc-code">df.sort_values('salary')                        # Ascending (default)<br>df.sort_values('salary', ascending=False)       # Descending<br>df.sort_values(['dept', 'salary'],              # Multi-column sort<br>               ascending=[True, False])</div>
        </div>
        <div class="lc-card">
          <h3>nlargest / nsmallest</h3>
          <div class="lc-code">df.nlargest(3, 'salary')    # Top 3 by salary<br>df.nsmallest(5, 'price')   # Bottom 5 by price</div>
        </div>
        <div class="lc-card">
          <h3>rank()</h3>
          <div class="lc-code">df['salary_rank'] = df['salary'].rank(ascending=False)<br># Assigns rank 1 to highest salary</div>
        </div>
        <div class="lc-card">
          <h3>reset_index()</h3>
          <div class="lc-code"># After sorting, reset to sequential index<br>df.sort_values('salary', ascending=False).reset_index(drop=True)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>nlargest</code> and <code>nsmallest</code> are more efficient than sort + head for finding extremes in large datasets.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve', 'Frank'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR', 'Marketing', 'Engineering'],
            'salary':     [90000, 65000, 85000, 55000, 72000, 78000],
            'years':      [5, 3, 7, 2, 4, 6]
        })

        print("=== Sorted by salary (descending) ===")
        print(df.sort_values('salary', ascending=False))

        print("\n=== Top 3 earners ===")
        print(df.nlargest(3, 'salary'))

        print("\n=== Sorted by dept then salary ===")
        print(df.sort_values(['department', 'salary'], ascending=[True, False]))
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Adding and Modifying Columns</h1>
        </div>
        <p class="lc-lead">Adding derived columns is one of the most common pandas operations. You can create new columns from expressions, functions, or conditional logic.</p>
        <div class="lc-card">
          <h3>Creating New Columns</h3>
          <div class="lc-code">df['annual_bonus'] = df['salary'] * 0.10<br>df['full_name']   = df['first'] + ' ' + df['last']<br>df['is_senior']   = df['years'] >= 5</div>
        </div>
        <div class="lc-card">
          <h3>assign() — Chainable</h3>
          <div class="lc-code">df = df.assign(<br>    bonus    = df['salary'] * 0.10,<br>    total    = df['salary'] + df['salary'] * 0.10,<br>    seniority = df['years'].apply(lambda y: 'Senior' if y >= 5 else 'Junior')<br>)</div>
        </div>
        <div class="lc-card">
          <h3>apply() — Row/Column Transformation</h3>
          <div class="lc-code">df['grade'] = df['score'].apply(lambda x: 'A' if x >= 90 else ('B' if x >= 80 else 'C'))</div>
        </div>
        <div class="lc-card">
          <h3>drop() — Remove Columns</h3>
          <div class="lc-code">df.drop('temp_col', axis=1)            # Remove column<br>df.drop(['col1', 'col2'], axis=1)      # Remove multiple</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Most pandas methods return a <em>new</em> DataFrame — they don't modify in place. Add <code>inplace=True</code> or reassign: <code>df = df.drop(...)</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':   ['Alice', 'Bob', 'Carol', 'Dave', 'Eve'],
            'salary': [90000, 65000, 85000, 55000, 72000],
            'years':  [5, 3, 7, 2, 4]
        })

        # Add derived columns
        df['bonus']     = df['salary'] * 0.10
        df['total_pay'] = df['salary'] + df['bonus']
        df['level']     = df['years'].apply(lambda y: 'Senior' if y >= 5 else 'Junior')

        print(df)

        print("\n=== Senior employees ===")
        print(df[df['level'] == 'Senior'][['name', 'salary', 'total_pay']])
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Aggregation Functions</h1>
        </div>
        <p class="lc-lead">Pandas provides rich aggregation functions that compute summary statistics over columns or Series. These are the building blocks of data analysis.</p>
        <div class="lc-card">
          <h3>Common Aggregations on a Column</h3>
          <div class="lc-code">df['salary'].sum()     # Total<br>df['salary'].mean()    # Average<br>df['salary'].median()  # Median<br>df['salary'].std()     # Standard deviation<br>df['salary'].min()     # Minimum<br>df['salary'].max()     # Maximum<br>df['salary'].count()   # Non-null count<br>df['dept'].nunique()   # Number of unique values<br>df['dept'].value_counts()  # Count per category</div>
        </div>
        <div class="lc-card">
          <h3>agg() — Multiple Functions at Once</h3>
          <div class="lc-code">df['salary'].agg(['mean', 'min', 'max', 'std'])<br><br># Or on multiple columns<br>df[['salary', 'years']].agg(['mean', 'sum'])</div>
        </div>
        <div class="lc-card">
          <h3>describe() in Detail</h3>
          <p><code>df.describe()</code> automatically computes: count, mean, std, min, 25%, 50%, 75%, max for all numeric columns.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>value_counts(normalize=True)</code> returns proportions (0.0 to 1.0) instead of raw counts — great for percentages.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve', 'Frank'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR', 'Marketing', 'Engineering'],
            'salary':     [90000, 65000, 85000, 55000, 72000, 78000],
            'score':      [95, 78, 88, 72, 81, 91]
        })

        print("=== Salary Statistics ===")
        print("Sum:   ", df['salary'].sum())
        print("Mean:  ", df['salary'].mean())
        print("Max:   ", df['salary'].max())
        print("Min:   ", df['salary'].min())

        print("\n=== Department Counts ===")
        print(df['department'].value_counts())

        print("\n=== describe() ===")
        print(df[['salary', 'score']].describe())
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">GroupBy — Split, Apply, Combine</h1>
        </div>
        <p class="lc-lead">GroupBy is one of pandas' most powerful features. It splits data into groups, applies a function to each group, and combines results — the core of data summarisation.</p>
        <div class="lc-card">
          <h3>Basic GroupBy</h3>
          <div class="lc-code">df.groupby('department')['salary'].mean()   # Mean salary per dept<br>df.groupby('department')['salary'].sum()    # Total per dept<br>df.groupby('department').size()             # Row count per group</div>
        </div>
        <div class="lc-card">
          <h3>agg() with Multiple Functions</h3>
          <div class="lc-code">df.groupby('department').agg({<br>    'salary': ['mean', 'min', 'max', 'count'],<br>    'years':  'mean'<br>})</div>
        </div>
        <div class="lc-card">
          <h3>Group by Multiple Columns</h3>
          <div class="lc-code">df.groupby(['department', 'level'])['salary'].mean()</div>
        </div>
        <div class="lc-card">
          <h3>transform() — Add Group Result as Column</h3>
          <div class="lc-code"># Add department average salary as a new column<br>df['dept_avg'] = df.groupby('department')['salary'].transform('mean')</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Call <code>.reset_index()</code> after groupby to turn the index back into regular columns for easier downstream processing.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve', 'Frank', 'Grace'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR', 'Marketing', 'Engineering', 'HR'],
            'salary':     [90000, 65000, 85000, 55000, 72000, 78000, 61000],
            'years':      [5, 3, 7, 2, 4, 6, 3]
        })

        print("=== Average salary per department ===")
        result = df.groupby('department')['salary'].mean().reset_index()
        result.columns = ['department', 'avg_salary']
        print(result.sort_values('avg_salary', ascending=False))

        print("\n=== Full summary per department ===")
        summary = df.groupby('department').agg(
            headcount=('name', 'count'),
            avg_salary=('salary', 'mean'),
            total_salary=('salary', 'sum'),
            avg_years=('years', 'mean')
        ).reset_index()
        print(summary)
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Merging and Joining DataFrames</h1>
        </div>
        <p class="lc-lead">Real-world data lives in multiple tables. Pandas <code>merge()</code> combines DataFrames like SQL JOINs, while <code>concat()</code> stacks them vertically or horizontally.</p>
        <div class="lc-card">
          <h3>merge() — SQL-style Join</h3>
          <div class="lc-code">pd.merge(df1, df2, on='id')                 # Inner join<br>pd.merge(df1, df2, on='id', how='left')     # Left join<br>pd.merge(df1, df2, on='id', how='right')    # Right join<br>pd.merge(df1, df2, on='id', how='outer')    # Full outer join<br>pd.merge(df1, df2,<br>         left_on='emp_id', right_on='id')    # Different column names</div>
        </div>
        <div class="lc-card">
          <h3>concat() — Stack DataFrames</h3>
          <div class="lc-code">pd.concat([df1, df2])           # Stack rows (axis=0)<br>pd.concat([df1, df2], axis=1)   # Stack columns side by side<br>pd.concat([df1, df2], ignore_index=True)  # Reset index</div>
        </div>
        <div class="lc-card">
          <h3>Join Types Recap</h3>
          <table class="lc-table">
            <thead><tr><th>how=</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td>inner (default)</td><td>Only matching rows in both</td></tr>
              <tr><td>left</td><td>All left rows + matches</td></tr>
              <tr><td>right</td><td>All right rows + matches</td></tr>
              <tr><td>outer</td><td>All rows from both</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After merging, check the shape before and after to make sure you got the number of rows you expected — unexpected duplicates are a common bug.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        employees = pd.DataFrame({
            'emp_id':     [1, 2, 3, 4, 5],
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve'],
            'dept_id':    [10, 20, 10, 30, 20]
        })

        departments = pd.DataFrame({
            'dept_id':   [10, 20, 30, 40],
            'dept_name': ['Engineering', 'Marketing', 'HR', 'Finance']
        })

        salaries = pd.DataFrame({
            'emp_id': [1, 2, 3, 4, 5],
            'salary': [90000, 65000, 85000, 55000, 72000]
        })

        print("=== Inner join: employees + departments ===")
        df = pd.merge(employees, departments, on='dept_id')
        print(df)

        print("\n=== Three-table merge ===")
        full = pd.merge(df, salaries, on='emp_id')
        print(full[['name', 'dept_name', 'salary']])

        print("\n=== concat: stack two employee tables ===")
        new_hires = pd.DataFrame({'emp_id':[6,7],'name':['Frank','Grace'],'dept_id':[10,30]})
        all_emp = pd.concat([employees, new_hires], ignore_index=True)
        print(all_emp)
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Handling Missing Data</h1>
        </div>
        <p class="lc-lead">Real datasets are messy. Pandas represents missing values as <code>NaN</code> (Not a Number). Knowing how to detect, fill, and drop missing values is essential for clean analysis.</p>
        <div class="lc-card">
          <h3>Detecting Missing Values</h3>
          <div class="lc-code">df.isnull()              # Boolean mask of NaN positions<br>df.isnull().sum()        # Count NaNs per column<br>df.isnull().sum().sum()  # Total NaN count<br>df.notnull()             # Opposite of isnull()</div>
        </div>
        <div class="lc-card">
          <h3>Dropping Missing Data</h3>
          <div class="lc-code">df.dropna()                    # Drop any row with a NaN<br>df.dropna(subset=['salary'])   # Only if salary is NaN<br>df.dropna(how='all')           # Only if ALL values are NaN<br>df.dropna(thresh=3)            # Keep rows with ≥ 3 non-NaN</div>
        </div>
        <div class="lc-card">
          <h3>Filling Missing Values</h3>
          <div class="lc-code">df.fillna(0)                          # Fill all NaN with 0<br>df['salary'].fillna(df['salary'].mean())  # Fill with mean<br>df.fillna(method='ffill')             # Forward fill<br>df.fillna(method='bfill')             # Backward fill<br>df.fillna({'salary': 0, 'name': 'Unknown'})  # Per column</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always investigate <em>why</em> data is missing before deciding how to handle it. Filling with mean can hide important patterns.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', None, 'Dave', 'Eve'],
            'department': ['Engineering', None, 'Engineering', 'HR', 'Marketing'],
            'salary':     [90000, 65000, None, 55000, 72000],
            'years':      [5, None, 7, 2, 4]
        })

        print("=== Original DataFrame ===")
        print(df)

        print("\n=== Missing value counts ===")
        print(df.isnull().sum())

        print("\n=== After dropna() ===")
        print(df.dropna())

        print("\n=== After fillna ===")
        df_filled = df.copy()
        df_filled['salary'] = df_filled['salary'].fillna(df_filled['salary'].mean())
        df_filled['name'] = df_filled['name'].fillna('Unknown')
        df_filled['department'] = df_filled['department'].fillna('TBD')
        df_filled['years'] = df_filled['years'].fillna(0)
        print(df_filled)
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">String Operations</h1>
        </div>
        <p class="lc-lead">Pandas exposes Python string methods through the <code>.str</code> accessor, making it easy to clean, transform, and extract information from text columns.</p>
        <div class="lc-card">
          <h3>The .str Accessor</h3>
          <div class="lc-code">df['name'].str.upper()            # UPPERCASE<br>df['name'].str.lower()            # lowercase<br>df['name'].str.title()            # Title Case<br>df['name'].str.strip()            # Remove whitespace<br>df['name'].str.len()              # String length<br>df['name'].str.contains('Alice')  # Boolean mask<br>df['email'].str.split('@')        # Split to list<br>df['email'].str.split('@').str[1] # Get domain part<br>df['name'].str.replace('old','new') # Replace<br>df['name'].str.startswith('A')    # Starts with</div>
        </div>
        <div class="lc-card">
          <h3>Extracting Parts</h3>
          <div class="lc-code">df['date_str'].str[:4]            # First 4 chars (year)<br>df['full_name'].str.split(' ').str[0]  # First name<br>df['full_name'].str.split(' ').str[-1] # Last name</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>.str</code> methods handle <code>NaN</code> gracefully — they return <code>NaN</code> for missing values instead of raising an error.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'full_name': ['alice smith', 'BOB JONES', 'Carol White', 'dave brown', 'EVE DAVIS'],
            'email':     ['alice@example.com', 'bob@company.org', 'carol@example.com', 'dave@startup.io', 'eve@company.org'],
            'product':   ['Widget Pro', 'Gadget Plus', 'Widget Lite', 'Doohickey', 'Gadget Pro']
        })

        # Clean and extract
        df['name_clean']  = df['full_name'].str.title()
        df['first_name']  = df['full_name'].str.title().str.split(' ').str[0]
        df['email_domain'] = df['email'].str.split('@').str[1]
        df['is_widget']   = df['product'].str.contains('Widget')

        print(df[['name_clean', 'first_name', 'email_domain', 'is_widget']])

        print("\n=== Filter: example.com users ===")
        print(df[df['email_domain'] == 'example.com'][['name_clean', 'email']])
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">DateTime Operations</h1>
        </div>
        <p class="lc-lead">Time-series data is everywhere. Pandas has excellent datetime support — parsing dates, extracting parts, calculating differences, and resampling.</p>
        <div class="lc-card">
          <h3>Parsing Dates</h3>
          <div class="lc-code">df['date'] = pd.to_datetime(df['date_str'])<br>pd.to_datetime('2024-01-15')  # Parse a single date</div>
        </div>
        <div class="lc-card">
          <h3>Extracting Date Parts with .dt</h3>
          <div class="lc-code">df['date'].dt.year    # Year (2024)<br>df['date'].dt.month   # Month (1-12)<br>df['date'].dt.day     # Day (1-31)<br>df['date'].dt.dayofweek  # 0=Monday, 6=Sunday<br>df['date'].dt.quarter # 1-4<br>df['date'].dt.strftime('%Y-%m')  # Format as string</div>
        </div>
        <div class="lc-card">
          <h3>Date Arithmetic</h3>
          <div class="lc-code">today = pd.Timestamp('today')<br>df['age_days'] = (today - df['created_at']).dt.days<br><br># Timedelta<br>df['date'] + pd.Timedelta(days=30)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always convert date columns with <code>pd.to_datetime()</code> as soon as you load your data — string comparison of dates gives wrong results.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'order_id':  [1, 2, 3, 4, 5, 6],
            'customer':  ['Alice', 'Bob', 'Carol', 'Alice', 'Dave', 'Bob'],
            'amount':    [120.50, 85.00, 200.00, 45.75, 310.00, 175.00],
            'order_date': ['2024-01-15', '2024-02-22', '2024-02-10',
                           '2024-03-05', '2024-03-20', '2024-04-01']
        })

        df['order_date'] = pd.to_datetime(df['order_date'])

        df['month']   = df['order_date'].dt.month
        df['quarter'] = df['order_date'].dt.quarter
        df['month_name'] = df['order_date'].dt.strftime('%B')

        print(df[['order_id', 'customer', 'amount', 'month_name', 'quarter']])

        print("\n=== Sales by quarter ===")
        q_summary = df.groupby('quarter')['amount'].sum().reset_index()
        q_summary.columns = ['quarter', 'total_sales']
        print(q_summary)
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Pivot Tables and Crosstab</h1>
        </div>
        <p class="lc-lead">Pivot tables reshape data for analysis — like Excel pivot tables but in code. They let you see aggregated values across two dimensions simultaneously.</p>
        <div class="lc-card">
          <h3>pivot_table()</h3>
          <div class="lc-code">df.pivot_table(<br>    values='salary',      # Value to aggregate<br>    index='department',   # Rows<br>    columns='level',      # Columns<br>    aggfunc='mean',       # How to aggregate<br>    fill_value=0          # Replace NaN with 0<br>)</div>
        </div>
        <div class="lc-card">
          <h3>pd.crosstab()</h3>
          <p>Quick frequency table — counts how often combinations appear:</p>
          <div class="lc-code">pd.crosstab(df['department'], df['level'])<br><br># With normalisation<br>pd.crosstab(df['dept'], df['level'], normalize='index')  # Row %</div>
        </div>
        <div class="lc-card">
          <h3>melt() — Unpivot Wide to Long</h3>
          <div class="lc-code">df.melt(id_vars=['name'], value_vars=['q1', 'q2', 'q3'],<br>        var_name='quarter', value_name='revenue')</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>aggfunc</code> can be a list: <code>aggfunc=['mean', 'count']</code> to get multiple aggregations in one pivot.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve', 'Frank', 'Grace', 'Hank'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR',
                           'Marketing', 'Engineering', 'HR', 'Marketing'],
            'level':      ['Senior', 'Junior', 'Junior', 'Senior',
                           'Senior', 'Senior', 'Junior', 'Junior'],
            'salary':     [90000, 52000, 71000, 68000, 79000, 88000, 55000, 58000]
        })

        print("=== Pivot: mean salary by dept x level ===")
        pivot = df.pivot_table(
            values='salary',
            index='department',
            columns='level',
            aggfunc='mean',
            fill_value=0
        )
        print(pivot)

        print("\n=== Crosstab: headcount by dept x level ===")
        ct = pd.crosstab(df['department'], df['level'])
        print(ct)
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">apply(), map(), and applymap()</h1>
        </div>
        <p class="lc-lead">These methods apply custom functions to DataFrames and Series — the most flexible way to transform data when built-in vectorised operations aren't enough.</p>
        <div class="lc-card">
          <h3>apply() — Most Versatile</h3>
          <div class="lc-code"># On a Series (column)<br>df['grade'] = df['score'].apply(lambda x: 'A' if x &gt;= 90 else 'B')<br><br># On each row (axis=1)<br>df['full'] = df.apply(lambda row: row['first'] + ' ' + row['last'], axis=1)<br><br># Apply a named function<br>def classify(salary):<br>    if salary &gt;= 80000: return 'High'<br>    elif salary &gt;= 60000: return 'Mid'<br>    return 'Low'<br><br>df['pay_band'] = df['salary'].apply(classify)</div>
        </div>
        <div class="lc-card">
          <h3>map() — Element-wise on Series</h3>
          <div class="lc-code"># Replace values using a dictionary<br>dept_code = {'Engineering': 'ENG', 'Marketing': 'MKT', 'HR': 'HR'}<br>df['dept_code'] = df['department'].map(dept_code)</div>
        </div>
        <div class="lc-card">
          <h3>When to Use Which</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Use on</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td>apply()</td><td>Series or DataFrame</td><td>Custom function per element or row</td></tr>
              <tr><td>map()</td><td>Series only</td><td>Value substitution via dict</td></tr>
              <tr><td>Vectorised ops</td><td>Whole column</td><td>Math: df['col'] * 2 — fastest</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefer vectorised operations (<code>df['col'] * 2</code>) over <code>apply(lambda x: x*2)</code> — they're 10-100x faster on large data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve', 'Frank'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR', 'Marketing', 'Engineering'],
            'salary':     [90000, 65000, 85000, 55000, 72000, 78000],
            'score':      [95, 78, 88, 72, 81, 91]
        })

        # apply with lambda
        df['grade'] = df['score'].apply(lambda x: 'A' if x >= 90 else ('B' if x >= 80 else 'C'))

        # apply with named function
        def pay_band(salary):
            if salary >= 85000: return 'High'
            elif salary >= 70000: return 'Mid'
            return 'Low'

        df['pay_band'] = df['salary'].apply(pay_band)

        # map with dictionary
        code_map = {'Engineering': 'ENG', 'Marketing': 'MKT', 'HR': 'HR'}
        df['dept_code'] = df['department'].map(code_map)

        print(df[['name', 'salary', 'pay_band', 'score', 'grade', 'dept_code']])
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Reshaping Data — melt and stack</h1>
        </div>
        <p class="lc-lead">Data often comes in the wrong shape for analysis. Reshaping transforms between wide format (many columns) and long format (many rows) — the format most tools and visualisations prefer.</p>
        <div class="lc-card">
          <h3>Wide vs Long Format</h3>
          <p><strong>Wide:</strong> one row per subject, multiple value columns (Q1, Q2, Q3, Q4)</p>
          <p><strong>Long:</strong> one row per observation (subject + quarter + value)</p>
        </div>
        <div class="lc-card">
          <h3>melt() — Wide to Long</h3>
          <div class="lc-code">df.melt(<br>    id_vars=['name', 'dept'],    # Keep as identifiers<br>    value_vars=['q1', 'q2', 'q3', 'q4'],  # Columns to unpivot<br>    var_name='quarter',           # New column for variable names<br>    value_name='revenue'          # New column for values<br>)</div>
        </div>
        <div class="lc-card">
          <h3>pivot() — Long to Wide</h3>
          <div class="lc-code">df.pivot(<br>    index='name',<br>    columns='quarter',<br>    values='revenue'<br>)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Long format is almost always better for groupby, merge, and plotting. Convert to wide only for display/reporting.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Wide format: one row per employee, columns per quarter
        wide_df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR'],
            'q1_sales':   [45000, 38000, 52000, 29000],
            'q2_sales':   [51000, 41000, 48000, 33000],
            'q3_sales':   [49000, 44000, 55000, 31000],
            'q4_sales':   [58000, 47000, 61000, 35000]
        })

        print("=== Wide format ===")
        print(wide_df)

        # Convert to long format
        long_df = wide_df.melt(
            id_vars=['name', 'department'],
            value_vars=['q1_sales', 'q2_sales', 'q3_sales', 'q4_sales'],
            var_name='quarter',
            value_name='sales'
        )
        long_df['quarter'] = long_df['quarter'].str.replace('_sales', '')

        print("\n=== Long format (first 8 rows) ===")
        print(long_df.head(8))

        print("\n=== Total sales per person ===")
        totals = long_df.groupby('name')['sales'].sum().reset_index()
        totals.columns = ['name', 'total_sales']
        print(totals.sort_values('total_sales', ascending=False))
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Window Functions and Rolling</h1>
        </div>
        <p class="lc-lead">Window functions compute a metric over a sliding window of rows — perfect for moving averages, cumulative sums, and rolling statistics in time-series data.</p>
        <div class="lc-card">
          <h3>Rolling Windows</h3>
          <div class="lc-code">df['revenue'].rolling(window=3).mean()    # 3-period moving average<br>df['revenue'].rolling(window=7).sum()     # 7-day rolling sum<br>df['price'].rolling(window=5).std()       # 5-period volatility</div>
        </div>
        <div class="lc-card">
          <h3>Cumulative Functions</h3>
          <div class="lc-code">df['revenue'].cumsum()    # Cumulative sum<br>df['revenue'].cummax()    # Running maximum<br>df['revenue'].cummin()    # Running minimum<br>df['revenue'].cumprod()   # Cumulative product</div>
        </div>
        <div class="lc-card">
          <h3>shift() — Lag / Lead</h3>
          <div class="lc-code">df['prev_month'] = df['revenue'].shift(1)   # Lag by 1<br>df['next_month'] = df['revenue'].shift(-1)  # Lead by 1<br><br># Calculate month-over-month growth<br>df['growth'] = (df['revenue'] - df['revenue'].shift(1)) / df['revenue'].shift(1) * 100</div>
        </div>
        <div class="lc-card">
          <h3>expanding() — Growing Window</h3>
          <div class="lc-code">df['revenue'].expanding().mean()  # Average of all rows up to current</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Rolling and cumulative functions produce NaN for the initial periods where there aren't enough rows — use <code>dropna()</code> before displaying.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'month':   ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug'],
            'revenue': [42000, 38000, 51000, 55000, 48000, 62000, 58000, 71000]
        })

        df['cumulative'] = df['revenue'].cumsum()
        df['rolling_3mo_avg'] = df['revenue'].rolling(window=3).mean().round(0)
        df['prev_month'] = df['revenue'].shift(1)
        df['mom_growth_pct'] = ((df['revenue'] - df['prev_month']) / df['prev_month'] * 100).round(1)

        print(df[['month', 'revenue', 'cumulative', 'rolling_3mo_avg', 'mom_growth_pct']])

        print("\n=== Best and worst months ===")
        print("Best:  ", df.loc[df['revenue'].idxmax(), ['month', 'revenue']].to_dict())
        print("Worst: ", df.loc[df['revenue'].idxmin(), ['month', 'revenue']].to_dict())
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Reading and Writing Data</h1>
        </div>
        <p class="lc-lead">Pandas can read from and write to dozens of formats. In real projects, you'll load data from files, process it, and save the results.</p>
        <div class="lc-card">
          <h3>Reading Files</h3>
          <div class="lc-code">df = pd.read_csv('data.csv')                    # CSV<br>df = pd.read_csv('data.csv', sep=';')           # Semicolon-separated<br>df = pd.read_csv('data.csv', nrows=100)         # First 100 rows<br>df = pd.read_csv('data.csv', usecols=['a','b']) # Selected columns<br>df = pd.read_csv('data.csv', parse_dates=['date']) # Auto-parse dates<br><br>df = pd.read_excel('data.xlsx', sheet_name='Sheet1')<br>df = pd.read_json('data.json')<br>df = pd.read_sql('SELECT * FROM orders', conn)</div>
        </div>
        <div class="lc-card">
          <h3>Writing Files</h3>
          <div class="lc-code">df.to_csv('output.csv', index=False)     # CSV (no row numbers)<br>df.to_excel('output.xlsx', index=False)  # Excel<br>df.to_json('output.json', orient='records')<br>df.to_parquet('output.parquet')          # Compressed columnar</div>
        </div>
        <div class="lc-card">
          <h3>Inspecting After Loading</h3>
          <div class="lc-code">df.head()     # First 5 rows<br>df.shape      # (rows, cols)<br>df.dtypes     # Column types<br>df.info()     # Summary with null counts<br>df.describe() # Stats for numeric columns</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always use <code>index=False</code> when writing CSV — otherwise pandas adds an extra column of row numbers you don't want.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Simulate loading a CSV (in real code: pd.read_csv('sales.csv'))
        df = pd.DataFrame({
            'date':      ['2024-01-15', '2024-01-22', '2024-02-05', '2024-02-18', '2024-03-01'],
            'region':    ['North', 'South', 'North', 'East', 'South'],
            'product':   ['Widget', 'Gadget', 'Widget', 'Doohickey', 'Gadget'],
            'quantity':  [120, 85, 95, 210, 145],
            'unit_price': [29.99, 49.99, 29.99, 9.99, 49.99]
        })

        # Parse dates
        df['date'] = pd.to_datetime(df['date'])

        # Compute revenue
        df['revenue'] = (df['quantity'] * df['unit_price']).round(2)

        print("=== Loaded data ===")
        print(df)
        print("\nShape:", df.shape)
        print("Date range:", df['date'].min().strftime('%Y-%m-%d'), "to", df['date'].max().strftime('%Y-%m-%d'))

        print("\n=== Revenue by region ===")
        print(df.groupby('region')['revenue'].sum().sort_values(ascending=False))
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Data Cleaning Workflow</h1>
        </div>
        <p class="lc-lead">80% of data science is cleaning data. A systematic cleaning workflow ensures your analysis is based on reliable, consistent data.</p>
        <div class="lc-card">
          <h3>Typical Cleaning Steps</h3>
          <ol class="lc-list">
            <li><strong>Inspect</strong> — shape, dtypes, head, info</li>
            <li><strong>Handle missing values</strong> — fill or drop</li>
            <li><strong>Fix data types</strong> — to_datetime, astype</li>
            <li><strong>Standardise strings</strong> — strip, lower, title</li>
            <li><strong>Remove duplicates</strong> — drop_duplicates</li>
            <li><strong>Fix inconsistencies</strong> — map, replace</li>
            <li><strong>Validate</strong> — check ranges, unique values</li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Key Cleaning Methods</h3>
          <div class="lc-code">df.drop_duplicates()                  # Remove exact duplicates<br>df.drop_duplicates(subset=['email'])  # Deduplicate on one column<br>df['age'].astype(int)                 # Change dtype<br>df['salary'].clip(0, 500000)          # Cap outliers<br>df.replace({'dept': {'Eng': 'Engineering'}})  # Fix inconsistencies</div>
        </div>
        <div class="lc-card">
          <h3>Outlier Detection</h3>
          <div class="lc-code">Q1 = df['salary'].quantile(0.25)<br>Q3 = df['salary'].quantile(0.75)<br>IQR = Q3 - Q1<br>outliers = df[(df['salary'] &lt; Q1 - 1.5*IQR) | (df['salary'] &gt; Q3 + 1.5*IQR)]</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Build a cleaning pipeline as a function — <code>def clean(df): ... return df</code> — so you can apply the same cleaning to future data loads.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Messy data (realistic!)
        raw = pd.DataFrame({
            'name':       ['Alice Smith', '  bob jones  ', 'Carol White', 'Alice Smith', 'dave brown', None],
            'email':      ['alice@ex.com', 'bob@ex.com', 'carol@ex.com', 'alice@ex.com', 'DAVE@EX.COM', 'eve@ex.com'],
            'department': ['Engineering', 'Eng', 'engineering', 'Engineering', 'HR', 'Marketing'],
            'salary':     [90000, 65000, None, 90000, -1000, 72000],
            'age':        [28, 34, 29, 28, 41, 25]
        })

        print("=== Raw data ===")
        print(raw)
        print("\nMissing:", raw.isnull().sum().to_dict())

        def clean(df):
            df = df.copy()
            df['name']       = df['name'].str.strip().str.title().fillna('Unknown')
            df['email']      = df['email'].str.lower()
            dept_map = {'Eng': 'Engineering', 'engineering': 'Engineering'}
            df['department'] = df['department'].replace(dept_map)
            df['salary']     = df['salary'].where(df['salary'] > 0).fillna(df['salary'].median())
            df = df.drop_duplicates(subset=['email'])
            return df

        clean_df = clean(raw)
        print("\n=== Cleaned data ===")
        print(clean_df)
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Performance Tips and Best Practices</h1>
        </div>
        <p class="lc-lead">Pandas is fast, but wrong usage can make it slow. Understanding vectorisation, dtypes, and chaining makes your code 10-100x faster on large datasets.</p>
        <div class="lc-card">
          <h3>Use Vectorised Operations</h3>
          <div class="lc-code"># Slow: iterating rows<br>for i, row in df.iterrows():<br>    df.at[i, 'bonus'] = row['salary'] * 0.1<br><br># Fast: vectorised (100x faster)<br>df['bonus'] = df['salary'] * 0.1</div>
        </div>
        <div class="lc-card">
          <h3>Use Categorical dtype for Strings</h3>
          <div class="lc-code"># Convert repeated string column to category<br>df['department'] = df['department'].astype('category')<br># Saves memory, speeds up groupby</div>
        </div>
        <div class="lc-card">
          <h3>Method Chaining</h3>
          <div class="lc-code">result = (<br>    df[df['salary'] > 60000]<br>    .groupby('department')['salary']<br>    .mean()<br>    .sort_values(ascending=False)<br>    .reset_index()<br>    .rename(columns={'salary': 'avg_salary'})<br>)</div>
        </div>
        <div class="lc-card">
          <h3>Useful Tips</h3>
          <ul class="lc-list">
            <li>Use <code>dtype</code> arg in <code>read_csv</code> to force types on load</li>
            <li>Prefer <code>query()</code> for readable filtering: <code>df.query('salary &gt; 70000')</code></li>
            <li>Use <code>copy()</code> when modifying a slice to avoid SettingWithCopyWarning</li>
            <li>Profile with <code>%timeit</code> in Jupyter to find bottlenecks</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For truly large data (millions of rows), consider Polars (faster than pandas) or Dask (parallel pandas) as drop-in replacements.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # Large-ish dataset simulation
        import random
        random.seed(42)

        n = 50
        depts = ['Engineering', 'Marketing', 'HR', 'Finance', 'Sales']
        levels = ['Junior', 'Mid', 'Senior', 'Lead']

        df = pd.DataFrame({
            'id':         list(range(1, n+1)),
            'department': [random.choice(depts) for _ in range(n)],
            'level':      [random.choice(levels) for _ in range(n)],
            'salary':     [random.randint(45000, 130000) for _ in range(n)],
            'score':      [random.randint(60, 100) for _ in range(n)]
        })

        # Vectorised new columns (fast)
        df['bonus']    = df['salary'] * 0.10
        df['total']    = df['salary'] + df['bonus']
        df['is_senior'] = df['level'].isin(['Senior', 'Lead'])

        # Method chaining
        summary = (
            df[df['is_senior']]
            .groupby('department')
            .agg(count=('id','count'), avg_total=('total','mean'))
            .sort_values('avg_total', ascending=False)
            .reset_index()
        )
        summary['avg_total'] = summary['avg_total'].round(0)

        print(f"Dataset: {len(df)} employees across {df['department'].nunique()} departments")
        print("\n=== Senior employees by department ===")
        print(summary)
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Pandas for Machine Learning Prep</h1>
        </div>
        <p class="lc-lead">Before training any ML model, data must be prepared: encoding categories, scaling numbers, splitting features and target, and handling imbalance. Pandas is the standard tool for all of this.</p>
        <div class="lc-card">
          <h3>Encoding Categorical Variables</h3>
          <div class="lc-code"># One-hot encoding<br>pd.get_dummies(df, columns=['department'])  # Creates dept_Engineering, dept_HR...<br><br># Label encoding (ordinal)<br>level_order = {'Junior': 0, 'Mid': 1, 'Senior': 2, 'Lead': 3}<br>df['level_code'] = df['level'].map(level_order)</div>
        </div>
        <div class="lc-card">
          <h3>Feature Scaling (Normalisation)</h3>
          <div class="lc-code"># Min-Max scaling (0 to 1)<br>df['salary_norm'] = (df['salary'] - df['salary'].min()) / (df['salary'].max() - df['salary'].min())<br><br># Z-score standardisation<br>df['salary_z'] = (df['salary'] - df['salary'].mean()) / df['salary'].std()</div>
        </div>
        <div class="lc-card">
          <h3>Splitting Features and Target</h3>
          <div class="lc-code">X = df[['salary', 'years', 'score']]   # Features<br>y = df['promoted']                       # Target<br><br># Train/test split (pandas way)<br>train = df.sample(frac=0.8, random_state=42)<br>test  = df.drop(train.index)</div>
        </div>
        <div class="lc-card">
          <h3>Correlation Matrix</h3>
          <div class="lc-code">df[['salary', 'years', 'score']].corr()  # Pearson correlation</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After encoding and scaling, always check <code>X.isnull().sum()</code> — ML models can't handle NaN values.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            'name':       ['Alice', 'Bob', 'Carol', 'Dave', 'Eve', 'Frank', 'Grace', 'Hank'],
            'department': ['Engineering', 'Marketing', 'Engineering', 'HR',
                           'Marketing', 'Engineering', 'HR', 'Marketing'],
            'level':      ['Senior', 'Junior', 'Mid', 'Senior',
                           'Mid', 'Lead', 'Junior', 'Senior'],
            'salary':     [90000, 52000, 71000, 68000, 65000, 105000, 48000, 75000],
            'years':      [5, 2, 4, 6, 3, 9, 1, 5],
            'promoted':   [1, 0, 0, 1, 0, 1, 0, 1]
        })

        # Label encode level
        level_order = {'Junior': 0, 'Mid': 1, 'Senior': 2, 'Lead': 3}
        df['level_code'] = df['level'].map(level_order)

        # One-hot encode department
        dummies = pd.get_dummies(df['department'], prefix='dept')
        df = pd.concat([df, dummies], axis=1)

        # Normalise salary
        df['salary_norm'] = ((df['salary'] - df['salary'].min()) /
                             (df['salary'].max() - df['salary'].min())).round(3)

        print("=== Feature-engineered data ===")
        cols = ['name', 'level_code', 'salary_norm', 'years', 'promoted']
        print(df[cols])

        print("\n=== Correlation with promoted ===")
        num_cols = ['salary', 'years', 'level_code', 'promoted']
        corr = df[num_cols].corr()['promoted'].drop('promoted').sort_values(ascending=False)
        print(corr.round(3))
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Pandas Review — End-to-End Analysis</h1>
        </div>
        <p class="lc-lead">You've completed the Pandas course! Let's tie everything together with a realistic end-to-end data analysis pipeline — from raw data to insights.</p>
        <div class="lc-card">
          <h3>Core Concepts Recap</h3>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Key Methods</th></tr></thead>
            <tbody>
              <tr><td>Creating DataFrames</td><td>pd.DataFrame(dict), pd.read_csv()</td></tr>
              <tr><td>Exploring</td><td>head(), tail(), describe(), info(), shape</td></tr>
              <tr><td>Selecting</td><td>df['col'], df[['a','b']], df[condition]</td></tr>
              <tr><td>Sorting</td><td>sort_values(), nlargest(), nsmallest()</td></tr>
              <tr><td>New columns</td><td>df['new'] = expr, assign(), apply()</td></tr>
              <tr><td>Aggregation</td><td>sum(), mean(), groupby().agg()</td></tr>
              <tr><td>Merging</td><td>pd.merge(), pd.concat()</td></tr>
              <tr><td>Missing data</td><td>isnull(), fillna(), dropna()</td></tr>
              <tr><td>Strings</td><td>.str.upper(), .str.contains(), .str.split()</td></tr>
              <tr><td>DateTime</td><td>pd.to_datetime(), .dt.year, .dt.month</td></tr>
              <tr><td>Pivoting</td><td>pivot_table(), melt(), crosstab()</td></tr>
              <tr><td>Rolling</td><td>rolling(), cumsum(), shift()</td></tr>
              <tr><td>ML prep</td><td>get_dummies(), normalisation, corr()</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next Steps:</strong> Explore matplotlib / seaborn for visualisation, scikit-learn for ML, or Polars for high-performance data processing.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        # === End-to-End Sales Analysis ===

        # 1. Load data
        orders = pd.DataFrame({
            'order_id':   [1,2,3,4,5,6,7,8,9,10],
            'customer':   ['Alice','Bob','Alice','Carol','Bob','Dave','Carol','Alice','Eve','Dave'],
            'region':     ['North','South','North','East','South','North','East','North','South','North'],
            'product':    ['Widget','Gadget','Gadget','Widget','Widget','Doohickey','Gadget','Widget','Gadget','Widget'],
            'quantity':   [5, 2, 3, 8, 4, 15, 1, 6, 3, 10],
            'unit_price': [29.99, 49.99, 49.99, 29.99, 29.99, 9.99, 49.99, 29.99, 49.99, 29.99],
            'date':       ['2024-01','2024-01','2024-02','2024-02','2024-02',
                           '2024-03','2024-03','2024-03','2024-04','2024-04']
        })

        # 2. Compute revenue
        orders['revenue'] = (orders['quantity'] * orders['unit_price']).round(2)

        # 3. Summary stats
        print("=== Dataset Overview ===")
        print(f"Orders: {len(orders)}, Revenue: ${orders['revenue'].sum():,.2f}")

        # 4. Revenue by region
        print("\n=== Revenue by Region ===")
        region = orders.groupby('region')['revenue'].sum().sort_values(ascending=False).reset_index()
        region.columns = ['region', 'revenue']
        print(region)

        # 5. Top customers
        print("\n=== Top Customers ===")
        customers = orders.groupby('customer').agg(
            orders=('order_id','count'),
            total=('revenue','sum'),
            avg_order=('revenue','mean')
        ).sort_values('total', ascending=False).reset_index()
        customers['avg_order'] = customers['avg_order'].round(2)
        print(customers)

        # 6. Monthly trend
        print("\n=== Monthly Revenue Trend ===")
        monthly = orders.groupby('date')['revenue'].sum().reset_index()
        monthly['cumulative'] = monthly['revenue'].cumsum()
        print(monthly)
      PYTHON
    }
  }
end

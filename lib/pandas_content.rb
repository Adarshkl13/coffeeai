module PandasContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Introduction to Pandas</h1>
        </div>
        <p class="lc-lead">pandas is Python's library for working with <strong>tables of data</strong> — like a spreadsheet you control with code. It gives you two structures: the <strong>Series</strong> (one labelled column) and the <strong>DataFrame</strong> (a whole table).</p>
        <div class="lc-card">
          <h3>Why pandas?</h3>
          <ul class="lc-list">
            <li>Load data from CSV, Excel, JSON, SQL databases and more in one line.</li>
            <li>Clean messy data: missing values, wrong types, duplicates, inconsistent text.</li>
            <li>Filter, sort, group and summarise millions of rows quickly (it is built on NumPy).</li>
            <li>Every column can have its own type — names as text, marks as numbers, dates as dates.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Series: Values with Labels</h3>
          <p>A Series is like a NumPy array with an <strong>index</strong> — a label for every value.</p>
          <div class="lc-code">import pandas as pd<br><br>s = pd.Series([72, 85, 91], index=["Asha", "Ravi", "Meera"], name="marks")<br>print(s)<br>print(s["Ravi"])</div>
          <div class="lc-code">Asha     72<br>Ravi     85<br>Meera    91<br>Name: marks, dtype: int64<br>85</div>
          <p>If you don't give an index, pandas uses 0, 1, 2, … automatically.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Your First DataFrame</h3>
          <p>A DataFrame is a collection of Series that share the same row index. The easiest way to make one is from a dictionary: keys become column names, lists become columns.</p>
          <div class="lc-code">df = pd.DataFrame({<br>    "name":  ["Asha", "Ravi", "Meera"],<br>    "city":  ["Pune", "Delhi", "Chennai"],<br>    "marks": [72, 85, 91],<br>})<br>print(df)<br>print(df.shape)<br>print(df.dtypes)</div>
          <p>Output:</p>
          <div class="lc-code">    name     city  marks<br>0   Asha     Pune     72<br>1   Ravi    Delhi     85<br>2  Meera  Chennai     91<br>(3, 3)<br>name     object<br>city     object<br>marks     int64<br>dtype: object</div>
          <p>The left-most numbers (0, 1, 2) are the <strong>index</strong>. <code>shape</code> is (rows, columns). Text columns show as <code>object</code> in pandas 2 — more on dtypes in a later lesson.</p>
        </div>
        <div class="lc-card">
          <h3>The Parts of a DataFrame</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Access</th><th>Example result</th></tr></thead>
            <tbody>
              <tr><td>Row labels</td><td><code>df.index</code></td><td><code>RangeIndex(start=0, stop=3, step=1)</code></td></tr>
              <tr><td>Column names</td><td><code>df.columns</code></td><td><code>Index(['name', 'city', 'marks'], dtype='object')</code></td></tr>
              <tr><td>One column</td><td><code>df["marks"]</code></td><td>a Series</td></tr>
              <tr><td>Several columns</td><td><code>df[["name", "marks"]]</code></td><td>a DataFrame</td></tr>
              <tr><td>Types</td><td><code>df.dtypes</code></td><td>one dtype per column</td></tr>
              <tr><td>Raw values</td><td><code>df.to_numpy()</code></td><td>a NumPy array</td></tr>
            </tbody>
          </table>
          <p>You can also build a DataFrame from a <strong>list of dictionaries</strong> (one per row). Missing keys become <code>NaN</code> (missing).</p>
        </div>
        <div class="lc-card">
          <h3>pandas 2 and pandas 3</h3>
          <p><strong>pandas 3.0 was released in January 2026.</strong> This course's editor runs pandas 2.3. The main 3.0 changes — text columns get a new <code>str</code> dtype, and "Copy-on-Write" makes copying behaviour predictable — are covered in later lessons. Everything we teach is written to work the same on both versions. Check yours with <code>pd.__version__</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([10, 20, 30], index=['a', 'b', 'c'])<br>print(s['b'], s.index.tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">20 ['a', 'b', 'c']</div>
          <p>A Series is looked up by its index labels.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Loading sales exports</li>
            <li>Survey results</li>
            <li>Cleaning data before machine learning</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Lists of different lengths in the dictionary — <code>ValueError: All arrays must be of the same length</code>.</li>
            <li>Writing <code>df["name", "marks"]</code> for two columns — you need a list inside: <code>df[["name", "marks"]]</code>.</li>
            <li>Calling <code>df.shape()</code> — <code>shape</code> is an attribute, no brackets.</li>
            <li>Thinking the index is a normal column. It is the row label and is not listed in <code>df.columns</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add a column <code>"state"</code> with one value per student.</li>
            <li>Print only the <code>name</code> and <code>fees</code> columns.</li>
            <li>Create a Series of monsoon rainfall (mm) for Mumbai, Chennai and Kolkata with the city names as the index, and print Chennai's value.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The standard imports are <code>import pandas as pd</code> and <code>import numpy as np</code>. Always print <code>df.shape</code> and <code>df.head()</code> first — look before you analyse.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        print("pandas version:", pd.__version__)

        print("\n=== A Series: values + labels ===")
        fees = pd.Series([45000, 52000, 38000], index=["Asha", "Ravi", "Meera"], name="fees")
        print(fees)
        print("Ravi's fees:", fees["Ravi"])
        print("Total fees :", fees.sum())

        print("\n=== A DataFrame from a dictionary ===")
        df = pd.DataFrame({
            "name":   ["Asha", "Ravi", "Meera", "Kiran"],
            "course": ["BSc", "BCom", "BSc", "BA"],
            "year":   [1, 2, 3, 1],
            "fees":   [45000, 52000, 38000, 30000],
        })
        print(df)

        print("\n=== Structure ===")
        print("shape  :", df.shape)
        print("columns:", list(df.columns))
        print("index  :", list(df.index))
        print("dtypes :")
        print(df.dtypes)

        print("\n=== Columns are Series ===")
        print(type(df["fees"]).__name__, "-> mean fees:", df["fees"].mean())
        print(df[["name", "fees"]])

        print("\n=== From a list of row dictionaries ===")
        rows = [{"city": "Pune", "temp": 31}, {"city": "Shimla"}]
        print(pd.DataFrame(rows))
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Reading, Writing and Exploring Data</h1>
        </div>
        <p class="lc-lead">Real data usually arrives as a file. <code>pd.read_csv</code> turns a CSV into a DataFrame, a few exploration methods tell you what you've got, and <code>to_csv</code> saves your results.</p>
        <div class="lc-card">
          <h3>read_csv</h3>
          <p>With a real file you write <code>pd.read_csv("sales.csv")</code>. In this course we keep the data inside the code using <code>io.StringIO</code>, which makes a string behave like a file:</p>
          <div class="lc-code">import io<br>import pandas as pd<br><br>csv_text = """date,city,product,units,price<br>2024-01-05,Pune,Tea,10,120.5<br>2024-01-06,Delhi,Coffee,,250<br>2024-01-06,Pune,Tea,7,120.5<br>"""<br>df = pd.read_csv(io.StringIO(csv_text), parse_dates=["date"])<br>print(df)</div>
          <div class="lc-code">        date   city product  units  price<br>0 2024-01-05   Pune     Tea   10.0  120.5<br>1 2024-01-06  Delhi  Coffee    NaN  250.0<br>2 2024-01-06   Pune     Tea    7.0  120.5</div>
          <p>The empty <code>units</code> cell became <code>NaN</code> (missing). Because NaN is a float, the whole <code>units</code> column became float (10.0, 7.0).</p>
        </div>
        <div class="lc-card">
          <h3>Useful read_csv Options</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Does</th></tr></thead>
            <tbody>
              <tr><td><code>sep=";"</code></td><td>use a different separator (semicolon, tab <code>"\t"</code>)</td></tr>
              <tr><td><code>usecols=["city", "units"]</code></td><td>load only some columns</td></tr>
              <tr><td><code>dtype={"pincode": str}</code></td><td>force a column's type (keeps leading zeros)</td></tr>
              <tr><td><code>parse_dates=["date"]</code></td><td>turn date text into real dates</td></tr>
              <tr><td><code>na_values=["NA", "-"]</code></td><td>extra strings to treat as missing</td></tr>
              <tr><td><code>nrows=1000</code></td><td>read only the first rows (quick look at big files)</td></tr>
              <tr><td><code>index_col="id"</code></td><td>use a column as the row index</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Exploring</h3>
          <div class="lc-code">df.info(memory_usage=False)<br>print(df.describe())</div>
          <div class="lc-code">&lt;class 'pandas.core.frame.DataFrame'&gt;<br>RangeIndex: 3 entries, 0 to 2<br>Data columns (total 5 columns):<br> #   Column   Non-Null Count  Dtype<br>---  ------   --------------  -----<br> 0   date     3 non-null      datetime64[ns]<br> 1   city     3 non-null      object<br> 2   product  3 non-null      object<br> 3   units    2 non-null      float64<br> 4   price    3 non-null      float64<br>dtypes: datetime64[ns](1), float64(2), object(2)<br>         units       price<br>count  2.00000    3.000000<br>...</div>
          <p><code>info()</code> shows each column's type and how many values are <strong>not</strong> missing — "2 non-null" out of 3 tells you <code>units</code> has one gap. <code>describe()</code> gives count, mean, std, min, quartiles and max for numeric (and date) columns; <code>describe(include="all")</code> adds counts and the most common value for text columns.</p>
        </div>
        <div class="lc-card">
          <h3>The Exploration Checklist</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Answers</th></tr></thead>
            <tbody>
              <tr><td><code>df.head(n)</code> / <code>df.tail(n)</code></td><td>What do the first / last rows look like?</td></tr>
              <tr><td><code>df.shape</code></td><td>How many rows and columns?</td></tr>
              <tr><td><code>df.info()</code></td><td>Types and missing values per column</td></tr>
              <tr><td><code>df.describe()</code></td><td>Ranges and averages — any impossible values?</td></tr>
              <tr><td><code>df["col"].value_counts()</code></td><td>Which categories, how often?</td></tr>
              <tr><td><code>df.nunique()</code></td><td>How many distinct values per column?</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Writing and Other Formats</h3>
          <div class="lc-code">df.to_csv("clean.csv", index=False)      # to a file<br>text = df.to_csv(index=False)             # or to a string</div>
          <p>Without <code>index=False</code>, pandas writes the row numbers as an extra unnamed column. Other readers/writers follow the same pattern: <code>read_excel</code>/<code>to_excel</code> (needs openpyxl), <code>read_json</code>/<code>to_json</code>, <code>read_parquet</code>/<code>to_parquet</code> (fast, keeps types; needs pyarrow), <code>read_sql</code> (with a database connection).</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many columns will this DataFrame have? Predict first, then run it in the editor.</p>
          <div class="lc-code">import io<br>text = 'a,b,c\n1,2,3\n'<br>print(pd.read_csv(io.StringIO(text), usecols=['a', 'c']).shape)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">(1, 2)</div>
          <p>One data row, and usecols kept only 2 of the 3 columns.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Reading only needed columns from huge files</li>
            <li>Keeping codes like pincodes as text</li>
            <li>Exporting cleaned results</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>index=False</code> in <code>to_csv</code>, then finding an <code>Unnamed: 0</code> column next time you load it.</li>
            <li>Letting pincodes or phone numbers load as integers — leading zeros vanish. Use <code>dtype={"pincode": str}</code>.</li>
            <li>Not checking <code>info()</code>: numbers stored as text (object) cannot be summed correctly.</li>
            <li>Passing the CSV text itself to <code>read_csv</code> — it expects a path or a file-like object such as <code>io.StringIO(text)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, load only the <code>city</code> and <code>amount</code> columns with <code>usecols</code>.</li>
            <li>Add <code>"-"</code> as a missing marker with <code>na_values</code> and check <code>info()</code> again.</li>
            <li>Save the result with <code>to_csv(index=False)</code> and read it straight back.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Make <code>head()</code>, <code>info()</code> and <code>describe()</code> the first three lines of every analysis. They catch wrong types, missing values and impossible numbers before they cause trouble.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        csv_text = """order_id,date,city,item,qty,amount
        101,2024-03-01,Pune,Notebook,3,150
        102,2024-03-01,Delhi,Pen,10,-
        103,2024-03-02,Pune,Bag,1,899
        104,2024-03-03,Chennai,Notebook,5,250
        105,2024-03-03,Delhi,Bag,2,1798
        """

        df = pd.read_csv(io.StringIO(csv_text), parse_dates=["date"], na_values=["-"])

        print("=== head(3) ===")
        print(df.head(3))

        print("\n=== shape ===")
        print(df.shape)

        print("\n=== info() ===")
        df.info(memory_usage=False)

        print("\n=== describe() numeric ===")
        print(df[["qty", "amount"]].describe().round(1))

        print("\n=== Categories ===")
        print(df["city"].value_counts())
        print("unique items:", df["item"].nunique())

        print("\n=== Write and read back ===")
        out = df.to_csv(index=False)
        print(out.splitlines()[0])        # the header line
        again = pd.read_csv(io.StringIO(out), parse_dates=["date"])
        print("same shape after round trip:", again.shape == df.shape)
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Selecting Data with loc and iloc</h1>
        </div>
        <p class="lc-lead">pandas has two main ways to pick rows and columns: <code>.loc</code> selects by <strong>label</strong> (index values and column names) and <code>.iloc</code> selects by <strong>position</strong> (0, 1, 2, …). Knowing which to use prevents a whole family of bugs.</p>
        <div class="lc-card">
          <h3>Selecting Columns</h3>
          <div class="lc-code">df["marks"]              # one column → Series<br>df[["name", "marks"]]    # list of columns → DataFrame</div>
          <p>Square brackets alone are best kept for columns (and boolean filters, next lesson). For rows, use <code>.loc</code> or <code>.iloc</code>.</p>
        </div>
        <div class="lc-card">
          <h3>loc vs iloc</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>.loc[rows, cols]</code></th><th><code>.iloc[rows, cols]</code></th></tr></thead>
            <tbody>
              <tr><td>Selects by</td><td>labels (index values, column names)</td><td>integer positions</td></tr>
              <tr><td>Slice end</td><td><strong>included</strong>: <code>loc[1:3]</code> gives labels 1, 2, 3</td><td><strong>excluded</strong>: <code>iloc[1:3]</code> gives positions 1, 2</td></tr>
              <tr><td>Columns</td><td>by name: <code>"name":"city"</code></td><td>by number: <code>0:2</code></td></tr>
              <tr><td>Boolean mask</td><td>yes: <code>loc[df["marks"] &gt; 80]</code></td><td>only a NumPy array/list of booleans</td></tr>
              <tr><td>Single value (fast)</td><td><code>df.at[2, "marks"]</code></td><td><code>df.iat[2, 2]</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Same Idea, Different Rules</h3>
          <div class="lc-code">df = pd.DataFrame({"name": ["Asha", "Ravi", "Meera", "Kiran", "Dev"],<br>                   "city": ["Pune", "Delhi", "Chennai", "Pune", "Delhi"],<br>                   "marks": [72, 85, 91, 64, 78]})<br>print(df.loc[1:3, "name":"city"])<br>print(df.iloc[1:3, 0:2])</div>
          <p>Output:</p>
          <div class="lc-code">    name     city<br>1   Ravi    Delhi<br>2  Meera  Chennai<br>3  Kiran     Pune<br>    name     city<br>1   Ravi    Delhi<br>2  Meera  Chennai</div>
          <p><code>loc[1:3]</code> returned <strong>three</strong> rows (labels 1 to 3 inclusive); <code>iloc[1:3]</code> returned <strong>two</strong> (positions 1 and 2, like Python slicing).</p>
        </div>
        <div class="lc-card">
          <h3>When Labels and Positions Differ</h3>
          <p>With the default 0, 1, 2 index they look the same. After <code>set_index</code>, sorting or filtering they do not:</p>
          <div class="lc-code">s = df.set_index("name")<br>s.loc["Ravi", "marks"]     # 85 — by label<br>s.iloc[1, 1]               # 85 — row 1, column 1 (city is column 0 now)<br>s.loc["Ravi":"Kiran"]      # Ravi, Meera, Kiran (end included)<br>s.loc[0]                   # KeyError: 0 — there is no label 0<br><br>x = pd.DataFrame({"v": [10, 20, 30]}, index=[2, 0, 1])<br>x.loc[0, "v"], x.iloc[0, 0]    # (20, 10) — label 0 vs first row</div>
        </div>
        <div class="lc-card">
          <h3>Series or DataFrame?</h3>
          <p>A single label gives a <strong>Series</strong>; a list gives a <strong>DataFrame</strong>: <code>df.loc[0]</code> is a Series (the row turned sideways), while <code>df.loc[[0]]</code> is a one-row DataFrame.</p>
        </div>
        <div class="lc-card">
          <h3>Changing Values the Right Way</h3>
          <p>Select the rows and the column in <strong>one</strong> <code>.loc</code> call:</p>
          <div class="lc-code">df.loc[df["city"] == "Pune", "marks"] += 5    # ✔ updates df<br>df.at[2, "marks"] = 95                         # ✔ one cell<br>df[df["city"] == "Pune"]["marks"] += 5         # ✘ "chained assignment" — does not update df</div>
          <p>The last line takes a filtered copy and changes the copy. In pandas 2 it may warn (<code>SettingWithCopyWarning</code>); in pandas 3 it never works. The lesson "Copy-on-Write and Method Chaining" explains why.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'v': [10, 20, 30]}, index=['x', 'y', 'z'])<br>print(df.loc['x':'y', 'v'].tolist(), df.iloc[0:1, 0].tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[10, 20] [10]</div>
          <p>loc slices include the end label 'y'; iloc slices exclude position 1.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Looking up a customer by ID with loc</li>
            <li>Taking the first n rows with iloc</li>
            <li>Updating selected rows with one loc call</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Expecting <code>loc[0:2]</code> to return 2 rows — it returns labels 0, 1 <em>and</em> 2.</li>
            <li>Using <code>iloc</code> with column names (<code>iloc[:, "marks"]</code>) — iloc only takes integers.</li>
            <li>Using <code>loc</code> with positions after filtering or sorting, when labels are no longer 0, 1, 2 …</li>
            <li>Chained assignment <code>df[mask]["col"] = value</code> instead of <code>df.loc[mask, "col"] = value</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, use <code>.loc</code> to print the price of Bengaluru and Hyderabad only.</li>
            <li>Use <code>.iloc</code> to print the last two rows and the first two columns.</li>
            <li>Add ₹1500 to <code>rent</code> for every city where it is above 25000, with a single <code>.loc</code> assignment.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Say it in words: "<strong>loc</strong> = <strong>l</strong>abel, <strong>iloc</strong> = <strong>i</strong>nteger position". When in doubt, set a meaningful index (like city names) and use <code>.loc</code> — code that uses labels is easier to read.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            "city":  ["Mumbai", "Delhi", "Bengaluru", "Hyderabad", "Pune"],
            "state": ["MH", "DL", "KA", "TS", "MH"],
            "rent":  [42000, 28000, 30000, 22000, 21000],   # 2BHK monthly rent
            "metro": [True, True, True, True, False],
        })

        print("=== Columns ===")
        print(df["rent"].tolist())
        print(df[["city", "rent"]].head(2))

        print("\n=== loc: labels, end INCLUDED ===")
        print(df.loc[1:3, "city":"rent"])

        print("\n=== iloc: positions, end EXCLUDED ===")
        print(df.iloc[1:3, 0:2])

        print("\n=== A meaningful index ===")
        by_city = df.set_index("city")
        print(by_city.loc[["Delhi", "Pune"], ["rent"]])
        print("Delhi rent (loc):", by_city.loc["Delhi", "rent"])
        print("row 1, col 1 (iloc):", by_city.iloc[1, 1])

        print("\n=== Series vs DataFrame ===")
        print(type(df.loc[0]).__name__, "vs", type(df.loc[[0]]).__name__)

        print("\n=== Boolean mask inside loc ===")
        print(df.loc[df["rent"] > 25000, ["city", "rent"]])

        print("\n=== Updating with one loc call ===")
        df.loc[df["state"] == "MH", "rent"] += 2000      # rows AND column in one call
        df.at[3, "metro"] = False
        print(df)

        print("\n=== Label vs position after sorting ===")
        ranked = df.sort_values("rent")
        print("first row by position:", ranked.iloc[0]["city"])
        print("row with label 0     :", ranked.loc[0, "city"])
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Filtering Rows and query()</h1>
        </div>
        <p class="lc-lead">Filtering keeps only the rows that match a condition — "orders above ₹500", "students from Pune", "flights delayed more than an hour". pandas does it with <strong>boolean masks</strong> or the readable <code>.query()</code> method.</p>
        <div class="lc-card">
          <h3>Boolean Masks</h3>
          <p>A comparison on a column gives a Series of True/False — one per row. Put it in square brackets to keep the True rows.</p>
          <div class="lc-code">mask = df["marks"] &gt; 80      # True/False for each row<br>df[mask]                     # rows where mask is True<br>df.loc[mask, ["name"]]       # same rows, chosen columns</div>
        </div>
        <div class="lc-card">
          <h3>Combining Conditions</h3>
          <table class="lc-table">
            <thead><tr><th>Meaning</th><th>Operator</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>and</td><td><code>&amp;</code></td><td><code>(df["marks"] &gt;= 70) &amp; (df["city"] != "Delhi")</code></td></tr>
              <tr><td>or</td><td><code>|</code></td><td><code>(df["city"] == "Pune") | (df["marks"] &gt; 90)</code></td></tr>
              <tr><td>not</td><td><code>~</code></td><td><code>~df["city"].isin(["Pune"])</code></td></tr>
            </tbody>
          </table>
          <p>Use <code>&amp; | ~</code>, not Python's <code>and / or / not</code>, and put <strong>brackets around every condition</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Helper Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Keeps rows where…</th></tr></thead>
            <tbody>
              <tr><td><code>df["city"].isin(["Pune", "Chennai"])</code></td><td>the value is in a list</td></tr>
              <tr><td><code>df["marks"].between(70, 85)</code></td><td>70 ≤ value ≤ 85 (both ends included by default)</td></tr>
              <tr><td><code>df["name"].str.contains("an")</code></td><td>the text contains a substring</td></tr>
              <tr><td><code>df["name"].str.startswith("K")</code></td><td>the text starts with something</td></tr>
              <tr><td><code>df["phone"].notna()</code></td><td>the value is not missing</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">print(df[(df["marks"] &gt;= 70) &amp; (df["city"] != "Delhi")])<br>print(df[df["marks"].between(70, 85)])</div>
          <p>Output:</p>
          <div class="lc-code">    name     city  marks<br>0   Asha     Pune     72<br>2  Meera  Chennai     91<br>   name   city  marks<br>0  Asha   Pune     72<br>1  Ravi  Delhi     85<br>4   Dev  Delhi     78</div>
          <p>Notice the index labels (0, 2) are kept from the original rows. Add <code>.reset_index(drop=True)</code> if you want 0, 1, 2 again.</p>
        </div>
        <div class="lc-card">
          <h3>query(): Filters as Readable Text</h3>
          <p><code>df.query()</code> takes the condition as a string. Inside it you can use <code>and</code>, <code>or</code>, <code>not</code>, and refer to Python variables with <code>@</code>:</p>
          <div class="lc-code">df.query("marks &gt; 75 and city == 'Delhi'")<br>limit = 80<br>df.query("marks &gt;= @limit")<br>df.query("city in ['Pune', 'Chennai']")<br>df.query("`first name` == 'Asha'")     # backticks for names with spaces</div>
          <p>Output of the first line:</p>
          <div class="lc-code">   name   city  marks<br>1  Ravi  Delhi     85<br>4   Dev  Delhi     78</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many rows are kept? Predict first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'m': [55, 70, 85, 90]})<br>print(len(df[df['m'].between(70, 85)]), len(df.query('m &gt; 60 and m &lt; 90')))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">2 2</div>
          <p>between includes both ends (70 and 85); the query keeps 70 and 85 too.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Finding late deliveries</li>
            <li>Selecting a date range</li>
            <li>Picking customers from certain cities</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>df[df["marks"] &gt; 70 and df["city"] == "Pune"]</code> — raises <code>ValueError: The truth value of a Series is ambiguous</code>. Use <code>&amp;</code> with brackets.</li>
            <li>Missing brackets: <code>df["marks"] &gt; 70 &amp; df["city"] == "Pune"</code> — <code>&amp;</code> runs first and the expression fails.</li>
            <li>Using <code>==</code> with a list — use <code>.isin([...])</code>.</li>
            <li>Forgetting <code>@</code> for a variable inside <code>query</code> — pandas looks for a <em>column</em> with that name.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, find all IndiGo or Air India flights delayed more than 30 minutes — once with a mask and once with <code>query</code>.</li>
            <li>List flights whose delay is between 10 and 60 minutes.</li>
            <li>Store a threshold in a variable and use it inside <code>query</code> with <code>@</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Give complex masks names: <code>is_late = df["delay"] &gt; 30</code>, <code>is_morning = df["hour"] &lt; 12</code>, then <code>df[is_late &amp; is_morning]</code>. It reads like English and is easy to debug.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        flights = pd.DataFrame({
            "flight":  ["6E201", "AI865", "UK995", "6E554", "AI101", "SG117", "UK707"],
            "airline": ["IndiGo", "Air India", "Vistara", "IndiGo", "Air India", "SpiceJet", "Vistara"],
            "origin":  ["BLR", "DEL", "BOM", "DEL", "BOM", "BLR", "DEL"],
            "delay":   [5, 45, 0, 72, 18, 35, 12],     # minutes
        })

        print("=== A boolean mask ===")
        is_late = flights["delay"] > 30
        print(is_late.tolist())
        print(flights[is_late])

        print("\n=== & (and), | (or), ~ (not) ===")
        print(flights[(flights["origin"] == "DEL") & (flights["delay"] > 10)])
        print(flights[(flights["delay"] == 0) | (flights["delay"] > 60)][["flight", "delay"]])
        print("not from BLR:", flights[~(flights["origin"] == "BLR")]["flight"].tolist())

        print("\n=== isin and between ===")
        big_two = flights["airline"].isin(["IndiGo", "Air India"])
        print(flights[big_two & is_late])
        print(flights[flights["delay"].between(10, 40)]["flight"].tolist())

        print("\n=== String filter ===")
        print(flights[flights["flight"].str.startswith("6E")]["flight"].tolist())

        print("\n=== The same filters with query() ===")
        limit = 30
        print(flights.query("delay > @limit and origin != 'BLR'"))
        print(flights.query("airline in ['Vistara', 'SpiceJet']").reset_index(drop=True))

        print("\n=== and/or on Series fails ===")
        try:
            flights[(flights["delay"] > 10) and (flights["origin"] == "DEL")]
        except ValueError as e:
            print("ValueError:", str(e).split(".")[0])
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Sorting and Ranking</h1>
        </div>
        <p class="lc-lead">Sorting puts rows in order — highest salary first, oldest date first. Ranking gives each row its position number, like a merit list. Both are everyday tools for reports and leaderboards.</p>
        <div class="lc-card">
          <h3>sort_values</h3>
          <div class="lc-code">df.sort_values("salary")                          # ascending (smallest first)<br>df.sort_values("salary", ascending=False)         # descending<br>df.sort_values(["dept", "salary"],<br>               ascending=[True, False])           # dept A→Z, then salary high→low<br>df.sort_values("salary", na_position="first")     # missing values first (default: last)<br>df.sort_index()                                   # sort by the index labels</div>
          <p>Like most pandas methods, <code>sort_values</code> returns a <strong>new</strong> DataFrame. Save it: <code>df = df.sort_values(...)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">df = pd.DataFrame({"name": ["Asha", "ravi", "Meera", "Kiran", "Dev"],<br>                   "dept": ["HR", "IT", "IT", "HR", "IT"],<br>                   "salary": [52000, 61000, 61000, 48000, np.nan]})<br>print(df.sort_values(["dept", "salary"], ascending=[True, False]))<br>print(df.nlargest(2, "salary"))</div>
          <p>Output:</p>
          <div class="lc-code">    name dept   salary<br>0   Asha   HR  52000.0<br>3  Kiran   HR  48000.0<br>1   ravi   IT  61000.0<br>2  Meera   IT  61000.0<br>4    Dev   IT      NaN<br>    name dept   salary<br>1   ravi   IT  61000.0<br>2  Meera   IT  61000.0</div>
          <p>The missing salary (NaN) goes last. The original index labels travel with their rows, which is why the index now reads 0, 3, 1, 2, 4.</p>
        </div>
        <div class="lc-card">
          <h3>Top-N and Clean Index</h3>
          <ul class="lc-list">
            <li><code>df.nlargest(3, "salary")</code> / <code>df.nsmallest(3, "salary")</code> — the top or bottom rows, faster than sorting everything.</li>
            <li><code>.reset_index(drop=True)</code> — renumber rows 0, 1, 2… after sorting; <code>drop=True</code> throws the old index away instead of adding it as a column.</li>
            <li><code>key=</code> — transform values before comparing, e.g. case-insensitive sorting: <code>df.sort_values("name", key=lambda s: s.str.lower())</code>. Without it, capital letters sort before lowercase: <code>['Dev', 'Meera', 'anil']</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>rank(): Handling Ties</h3>
          <p><code>rank()</code> gives 1 to the smallest by default; use <code>ascending=False</code> so the highest gets rank 1. The <code>method</code> decides what tied values get. For salaries 52000, 61000, 61000, 48000:</p>
          <table class="lc-table">
            <thead><tr><th>method</th><th>Ranks (high = 1)</th><th>Ties get…</th></tr></thead>
            <tbody>
              <tr><td><code>"average"</code> (default)</td><td>3.0, 1.5, 1.5, 4.0</td><td>the average of their positions</td></tr>
              <tr><td><code>"min"</code></td><td>3, 1, 1, 4</td><td>the best position (sports style: 1, 1, 3)</td></tr>
              <tr><td><code>"dense"</code></td><td>2, 1, 1, 3</td><td>same rank, no gaps afterwards</td></tr>
              <tr><td><code>"first"</code></td><td>3, 1, 2, 4</td><td>order of appearance breaks the tie</td></tr>
            </tbody>
          </table>
          <p>Missing values get a rank of NaN. Ranks are floats; convert with <code>.astype("Int64")</code> if you want whole numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([30, 10, 20])<br>print(s.sort_values().index.tolist(), s.rank().tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1, 2, 0] [3.0, 1.0, 2.0]</div>
          <p>Sorting keeps the original labels; rank gives 1 to the smallest by default.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Merit lists</li>
            <li>Top-N product reports</li>
            <li>Leaderboards with fair tie handling</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling <code>df.sort_values("marks")</code> and printing <code>df</code> — the original is unchanged. Assign the result.</li>
            <li>Passing one <code>ascending</code> value for a multi-column sort when you need different directions — pass a list.</li>
            <li>Forgetting <code>ascending=False</code> in <code>rank()</code>, so the <em>lowest</em> score is rank 1.</li>
            <li>Using <code>df.loc[0]</code> after sorting to get the "first" row — that is label 0. Use <code>df.iloc[0]</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, sort the batters by <code>team</code> A→Z and then <code>runs</code> high→low.</li>
            <li>Add a column <code>team_rank</code> with a dense rank within the whole list, and compare it with <code>method="min"</code>.</li>
            <li>Print the 2 lowest strike rates with <code>nsmallest</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For merit lists and leaderboards, <code>rank(ascending=False, method="min")</code> matches how people usually rank ties ("joint 1st, then 3rd").
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        batters = pd.DataFrame({
            "player": ["Rohit", "Gill", "Virat", "Rahul", "Pant", "Iyer", "surya"],
            "team":   ["MI", "GT", "RCB", "LSG", "DC", "KKR", "MI"],
            "runs":   [417, 426, 639, 520, 446, 520, 605],
            "sr":     [150.2, 147.4, 139.8, 136.1, 155.4, 143.8, 181.1],
        })

        print("=== Top scorers (descending) ===")
        print(batters.sort_values("runs", ascending=False).head(3))

        print("\n=== Multi-column: team A-Z, then runs high-low ===")
        print(batters.sort_values(["team", "runs"], ascending=[True, False]))

        print("\n=== nlargest / nsmallest ===")
        print(batters.nlargest(2, "sr")[["player", "sr"]])
        print(batters.nsmallest(2, "runs")[["player", "runs"]])

        print("\n=== Ranking with ties (Rahul and Iyer both 520) ===")
        batters["rank_avg"] = batters["runs"].rank(ascending=False)
        batters["rank_min"] = batters["runs"].rank(ascending=False, method="min").astype("int64")
        batters["rank_dense"] = batters["runs"].rank(ascending=False, method="dense").astype("int64")
        print(batters.sort_values("runs", ascending=False)[["player", "runs", "rank_avg", "rank_min", "rank_dense"]])

        print("\n=== Clean 1..n merit list ===")
        merit = (batters.sort_values("runs", ascending=False)
                        .reset_index(drop=True)[["player", "runs"]])
        merit.index = merit.index + 1
        print(merit)

        print("\n=== Case-insensitive sort with key= ===")
        print(batters.sort_values("player")["player"].tolist())
        print(batters.sort_values("player", key=lambda s: s.str.lower())["player"].tolist())
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Adding and Modifying Columns</h1>
        </div>
        <p class="lc-lead">Most analysis means creating new columns from existing ones: totals, taxes, flags, categories. pandas does this with whole-column (vectorised) expressions — no loops.</p>
        <div class="lc-card">
          <h3>Assigning a New Column</h3>
          <div class="lc-code">df["total"] = df["price"] * df["qty"]     # column × column, row by row<br>df["gst"]   = df["total"] * 0.05          # column × number<br>df["label"] = "retail"                    # one value for every row<br>df["is_big"] = df["total"] &gt; 150          # a True/False column</div>
          <p>If the column exists, it is replaced; if not, it is added at the end.</p>
        </div>
        <div class="lc-card">
          <h3>Conditional Columns: np.where and np.select</h3>
          <ul class="lc-list">
            <li><strong>Two outcomes:</strong> <code>np.where(condition, value_if_true, value_if_false)</code>.</li>
            <li><strong>Many outcomes:</strong> <code>np.select([cond1, cond2], [choice1, choice2], default=...)</code> — the first True condition wins.</li>
          </ul>
          <div class="lc-code">import numpy as np<br>df["size"] = np.where(df["total"] &gt;= 150, "large", "small")<br>df["band"] = np.select([df["price"] &lt; 30, df["price"] &lt; 50],<br>                       ["cheap", "mid"], default="premium")</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">d = pd.DataFrame({"item": ["Tea", "Coffee", "Juice"],<br>                  "price": [20, 45, 60], "qty": [10, 4, 2]})<br>d["total"] = d["price"] * d["qty"]<br>d["gst"] = d["total"] * 0.05<br>d["size"] = np.where(d["total"] &gt;= 150, "large", "small")<br>d["band"] = np.select([d["price"] &lt; 30, d["price"] &lt; 50], ["cheap", "mid"], default="premium")<br>print(d)</div>
          <p>Output:</p>
          <div class="lc-code">     item  price  qty  total   gst   size     band<br>0     Tea     20   10    200  10.0  large    cheap<br>1  Coffee     45    4    180   9.0  large      mid<br>2   Juice     60    2    120   6.0  small  premium</div>
        </div>
        <div class="lc-card">
          <h3>assign(): New Columns Without Changing df</h3>
          <p><code>assign</code> returns a <strong>new</strong> DataFrame with extra columns. Using a <code>lambda</code> lets later columns use earlier ones — handy in method chains:</p>
          <div class="lc-code">out = d.assign(<br>    with_gst=lambda x: x["total"] + x["gst"],<br>    big=lambda x: x["with_gst"] &gt; 150,<br>)</div>
        </div>
        <div class="lc-card">
          <h3>Renaming, Dropping, Inserting, Converting</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Code</th></tr></thead>
            <tbody>
              <tr><td>Rename columns</td><td><code>df = df.rename(columns={"qty": "quantity"})</code></td></tr>
              <tr><td>Drop columns</td><td><code>df = df.drop(columns=["gst", "size"])</code></td></tr>
              <tr><td>Insert at a position</td><td><code>df.insert(1, "code", ["T1", "C1", "J1"])</code> (changes df in place)</td></tr>
              <tr><td>Change type</td><td><code>df["qty"] = df["qty"].astype("float64")</code></td></tr>
              <tr><td>Update some rows only</td><td><code>df.loc[df["item"] == "Tea", "price"] = 25</code></td></tr>
            </tbody>
          </table>
          <p>Prefer <strong>reassigning</strong> (<code>df = df.drop(...)</code>) over <code>inplace=True</code>. The pandas team discourages <code>inplace</code>: it rarely saves memory and breaks method chains.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'p': [100, 250]})<br>out = df.assign(big=lambda d: d['p'] &gt; 200)<br>print(out['big'].tolist(), 'big' in df.columns)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[False, True] False</div>
          <p>assign returns a new DataFrame; df itself is unchanged.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Tax and discount columns</li>
            <li>Flags for filtering</li>
            <li>Categories for reports</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>df.total = ...</code> (attribute style) to create a column — it sets a Python attribute, not a column. Always use <code>df["total"]</code>.</li>
            <li>Writing a Python <code>if</code> on a whole column (<code>if df["total"] &gt; 150:</code>) — raises "truth value of a Series is ambiguous". Use <code>np.where</code>.</li>
            <li>Calling <code>df.drop("gst")</code> without <code>columns=</code> — pandas looks for a <em>row</em> labelled "gst".</li>
            <li>Forgetting to save the result of <code>rename</code>, <code>drop</code> or <code>assign</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add <code>discount</code>: 10% of <code>amount</code> for members, else 0 (use <code>np.where</code>).</li>
            <li>Add <code>tier</code> with <code>np.select</code>: "Gold" if amount ≥ 5000, "Silver" if ≥ 2000, else "Bronze".</li>
            <li>Rename <code>amount</code> to <code>bill_amount</code> and drop the <code>member</code> column.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Whenever you reach for a loop to build a column, try an expression first: arithmetic, <code>np.where</code>, <code>np.select</code> or a <code>.str</code> method. It is shorter and much faster.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        orders = pd.DataFrame({
            "customer": ["Asha", "Ravi", "Meera", "Kiran", "Dev"],
            "amount":   [1200, 5400, 2600, 800, 7100],
            "member":   [True, False, True, False, True],
        })

        print("=== Arithmetic columns ===")
        orders["gst"] = orders["amount"] * 0.18
        orders["total"] = orders["amount"] + orders["gst"]
        print(orders)

        print("\n=== np.where: two outcomes ===")
        orders["delivery"] = np.where(orders["amount"] >= 1000, "free", "paid")
        print(orders[["customer", "amount", "delivery"]])

        print("\n=== np.select: many outcomes ===")
        orders["tier"] = np.select(
            [orders["amount"] >= 5000, orders["amount"] >= 2000],
            ["Gold", "Silver"],
            default="Bronze",
        )
        print(orders[["customer", "amount", "tier"]])

        print("\n=== assign returns a NEW DataFrame ===")
        report = orders.assign(
            points=lambda d: (d["amount"] // 100).astype("int64"),
            bonus=lambda d: np.where(d["member"], d["points"] * 2, d["points"]),
        )
        print(report[["customer", "points", "bonus"]])
        print("orders still has 'points'?", "points" in orders.columns)

        print("\n=== rename, drop, update some rows ===")
        clean = orders.rename(columns={"amount": "bill"}).drop(columns=["gst", "delivery"])
        clean.loc[clean["customer"] == "Kiran", "tier"] = "Silver"
        print(clean)
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Data Types: Numeric, Nullable, Category and String</h1>
        </div>
        <p class="lc-lead">Every column has a <strong>dtype</strong>. The right dtype makes maths work, keeps missing values honest, and can cut memory use dramatically. Wrong dtypes — like numbers stored as text — are one of the most common data bugs.</p>
        <div class="lc-card">
          <h3>The Main dtypes</h3>
          <table class="lc-table">
            <thead><tr><th>dtype</th><th>Holds</th><th>Missing value</th></tr></thead>
            <tbody>
              <tr><td><code>int64</code></td><td>whole numbers</td><td>cannot hold missing values</td></tr>
              <tr><td><code>float64</code></td><td>decimals</td><td><code>NaN</code></td></tr>
              <tr><td><code>bool</code></td><td>True / False</td><td>cannot hold missing values</td></tr>
              <tr><td><code>object</code></td><td>Python objects — usually text in pandas 2</td><td><code>None</code> / <code>NaN</code></td></tr>
              <tr><td><code>datetime64[ns]</code></td><td>dates and times</td><td><code>NaT</code></td></tr>
              <tr><td><code>category</code></td><td>a small set of repeated labels</td><td><code>NaN</code></td></tr>
              <tr><td><code>Int64</code>, <code>Float64</code>, <code>boolean</code>, <code>string</code></td><td><strong>nullable</strong> versions (capital I, F)</td><td><code>&lt;NA&gt;</code> (<code>pd.NA</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Converting Types</h3>
          <ul class="lc-list">
            <li><code>df["col"].astype("float64")</code> — convert; fails loudly if any value can't be converted.</li>
            <li><code>pd.to_numeric(df["col"], errors="coerce")</code> — convert text to numbers; bad values become <code>NaN</code>.</li>
            <li><code>pd.to_datetime(df["col"])</code> — text to dates (see "Working with Dates and Times").</li>
            <li><code>df.convert_dtypes()</code> — let pandas pick the best nullable dtype for every column.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Numbers Stored as Text</h3>
          <div class="lc-code">df = pd.DataFrame({"age": ["25", "31", "unknown", "40"]})<br>try:<br>    df["age"].astype("int64")<br>except ValueError as e:<br>    print("ValueError:", e)<br>print(pd.to_numeric(df["age"], errors="coerce"))</div>
          <p>Output:</p>
          <div class="lc-code">ValueError: invalid literal for int() with base 10: 'unknown'<br>0    25.0<br>1    31.0<br>2     NaN<br>3    40.0<br>Name: age, dtype: float64</div>
          <p><code>astype</code> refuses because of "unknown". <code>to_numeric(errors="coerce")</code> turns it into NaN — and because NaN is a float, the ages become 25.0, 31.0 … That's where nullable types help.</p>
        </div>
        <div class="lc-card">
          <h3>Nullable Types and pd.NA</h3>
          <p>A normal <code>int64</code> column can't store a missing value, so pandas silently switches to <code>float64</code>. The nullable <code>Int64</code> (capital I) keeps whole numbers <em>and</em> allows gaps, shown as <code>&lt;NA&gt;</code>:</p>
          <div class="lc-code">s = pd.Series([1, None, 3], dtype="Int64")<br>print(s.tolist(), s.sum(), s.mean())   # [1, &lt;NA&gt;, 3] 4 2.0<br>print(pd.NA | True, pd.NA &amp; False, pd.NA + 1)   # True False &lt;NA&gt;</div>
          <p><code>pd.NA</code> means "unknown". Maths with it gives <code>&lt;NA&gt;</code>, but logic can still be decided: "unknown OR True" is True. Test for it with <code>isna()</code>, never with <code>==</code>. Summaries like <code>sum()</code> and <code>mean()</code> skip missing values.</p>
        </div>
        <div class="lc-card">
          <h3>category: Save Memory, Add Order</h3>
          <p>A column like <code>city</code> with a few values repeated thousands of times can be stored as <code>category</code>: each value is kept once and rows store small integer codes. In the starter, 30,000 city names shrink by more than 10×. Ordered categories also let you sort and compare labels logically:</p>
          <div class="lc-code">size = pd.Categorical(["low", "high", "mid"],<br>                      categories=["low", "mid", "high"], ordered=True)<br>pd.Series(size).sort_values().tolist()   # ['low', 'mid', 'high']</div>
        </div>
        <div class="lc-card">
          <h3>Strings: object Today, str in pandas 3</h3>
          <p>In pandas 2, text columns are <code>object</code> by default. You can opt in to a dedicated <code>"string"</code> dtype. <strong>pandas 3.0 (January 2026) makes a new <code>str</code> dtype the default for text</strong>, shown as <code>dtype: str</code>. In pandas 2.3 you can preview it with <code>pd.options.future.infer_string = True</code>. Code that uses <code>.str</code> methods and <code>isna()</code> works in both; code that checks <code>dtype == object</code> may break in pandas 3.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([1, None, 3])<br>print(s.dtype, s.astype('Int64').dtype)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">float64 Int64</div>
          <p>A missing value forces normal integers to float64; nullable Int64 keeps them whole.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Fixing numbers stored as text</li>
            <li>Saving memory with category</li>
            <li>Keeping IDs as integers despite gaps</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Summing a column that is secretly text: <code>"10" + "20"</code> gives <code>"1020"</code>. Check <code>df.dtypes</code> first.</li>
            <li>Confusing <code>int64</code> (no missing values) with <code>Int64</code> (nullable).</li>
            <li>Checking <code>value == pd.NA</code> or <code>value == np.nan</code> — use <code>pd.isna(value)</code>.</li>
            <li>Using <code>category</code> for columns with mostly unique values (like names) — it uses <em>more</em> memory.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, convert <code>rating</code> with <code>pd.to_numeric(..., errors="coerce")</code> and count the NaNs.</li>
            <li>Convert <code>visits</code> to <code>Int64</code> and compute its mean.</li>
            <li>Make <code>plan</code> an ordered category (basic &lt; plus &lt; pro) and filter rows above "basic".</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Right after loading data, run <code>df.dtypes</code>. If a column that should be numeric shows <code>object</code>, there's a bad value hiding in it — find it with <code>df[pd.to_numeric(df["col"], errors="coerce").isna()]</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        users = pd.DataFrame({
            "user":   ["u1", "u2", "u3", "u4", "u5"],
            "rating": ["4.5", "3.0", "n/a", "5", "4"],
            "visits": [12, None, 7, 3, None],
            "plan":   ["pro", "basic", "plus", "basic", "pro"],
        })
        print("=== Raw dtypes ===")
        print(users.dtypes)

        print("\n=== Text -> numbers with to_numeric ===")
        users["rating"] = pd.to_numeric(users["rating"], errors="coerce")
        print(users["rating"].tolist(), "| missing:", users["rating"].isna().sum())

        print("\n=== float64 vs nullable Int64 ===")
        print("visits as loaded:", users["visits"].tolist())
        users["visits"] = users["visits"].astype("Int64")
        print("visits as Int64 :", users["visits"].tolist())
        print("sum:", users["visits"].sum(), "| mean:", users["visits"].mean())
        print("pd.NA | True =", pd.NA | True, "| pd.NA + 1 =", pd.NA + 1)

        print("\n=== Ordered category ===")
        users["plan"] = pd.Categorical(users["plan"], categories=["basic", "plus", "pro"], ordered=True)
        print(users.sort_values("plan")[["user", "plan"]])
        print("above basic:", users.loc[users["plan"] > "basic", "user"].tolist())

        print("\n=== Memory: object vs category ===")
        cities = pd.Series(["Pune", "Delhi", "Mumbai"] * 10_000)
        obj_mem = cities.memory_usage(deep=True)
        cat_mem = cities.astype("category").memory_usage(deep=True)
        print("category is more than 10x smaller:", obj_mem > 10 * cat_mem)

        print("\n=== convert_dtypes and the pandas 3 string dtype ===")
        print(users.convert_dtypes().dtypes.to_dict())
        with pd.option_context("future.infer_string", True):
            print("text dtype with the pandas 3 behaviour:", pd.Series(["a", "b"]).dtype)
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Handling Missing Data</h1>
        </div>
        <p class="lc-lead">Real datasets have gaps: a sensor failed, a customer skipped a question, a record was lost. pandas marks them as missing, and gives you tools to <strong>find</strong>, <strong>drop</strong> or <strong>fill</strong> them. The hard part is choosing wisely.</p>
        <div class="lc-card">
          <h3>How Missing Values Look</h3>
          <table class="lc-table">
            <thead><tr><th>Marker</th><th>Where you see it</th></tr></thead>
            <tbody>
              <tr><td><code>NaN</code></td><td>float columns (the most common)</td></tr>
              <tr><td><code>None</code></td><td>object (text) columns</td></tr>
              <tr><td><code>NaT</code></td><td>datetime columns ("not a time")</td></tr>
              <tr><td><code>&lt;NA&gt;</code> (<code>pd.NA</code>)</td><td>nullable dtypes such as <code>Int64</code>, <code>string</code>, <code>boolean</code></td></tr>
            </tbody>
          </table>
          <p>You don't need to remember which is which: <code>isna()</code> / <code>notna()</code> and <code>pd.isna(value)</code> detect all of them.</p>
        </div>
        <div class="lc-card">
          <h3>Finding Gaps</h3>
          <div class="lc-code">df.isna().sum()           # count per column<br>df.isna().mean()          # fraction per column<br>df[df["temp"].isna()]     # the rows with a missing temp</div>
        </div>
        <div class="lc-card">
          <h3>Dropping</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Drops…</th></tr></thead>
            <tbody>
              <tr><td><code>df.dropna()</code></td><td>every row with <em>any</em> missing value</td></tr>
              <tr><td><code>df.dropna(subset=["temp"])</code></td><td>rows missing <code>temp</code> only</td></tr>
              <tr><td><code>df.dropna(how="all")</code></td><td>rows where <em>all</em> values are missing</td></tr>
              <tr><td><code>df.dropna(thresh=2)</code></td><td>rows with fewer than 2 non-missing values</td></tr>
              <tr><td><code>df.dropna(axis=1)</code></td><td>columns (instead of rows) that have gaps</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Filling</h3>
          <div class="lc-code">df["temp"].fillna(0)                          # a fixed value<br>df["temp"].fillna(df["temp"].median())        # a statistic<br>df.fillna({"temp": 30.0, "aqi": 0})           # different value per column<br>df["temp"].ffill()                            # carry the last known value forward<br>df["temp"].bfill()                            # use the next known value<br>df["temp"].interpolate()                      # straight line between neighbours</div>
          <p><strong>Old way — don't use:</strong> <code>df.fillna(method="ffill")</code>. It was deprecated in pandas 2.1 and <strong>removed in pandas 3.0</strong>. Use <code>df.ffill()</code> and <code>df.bfill()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Fill Strategies Compared</h3>
          <div class="lc-code">df = pd.DataFrame({"city": ["Pune", "Pune", "Delhi", "Delhi", "Delhi"],<br>                   "temp": [31.0, np.nan, 38.0, np.nan, 40.0]})<br>print(df["temp"].ffill().tolist())<br>print(df["temp"].bfill().tolist())<br>print(df["temp"].interpolate().tolist())<br>city_mean = df.groupby("city")["temp"].transform("mean")<br>print(df["temp"].fillna(city_mean).tolist())</div>
          <p>Output:</p>
          <div class="lc-code">[31.0, 31.0, 38.0, 38.0, 40.0]<br>[31.0, 38.0, 38.0, 40.0, 40.0]<br>[31.0, 34.5, 38.0, 39.0, 40.0]<br>[31.0, 31.0, 38.0, 39.0, 40.0]</div>
          <p>Look at row 1 (a Pune reading). <code>bfill</code> and <code>interpolate</code> borrowed Delhi's 38 °C — wrong! Filling with each <strong>city's own mean</strong> (using <code>groupby(...).transform</code>, covered in the GroupBy lesson) respects the groups. <code>ffill</code>/<code>bfill</code>/<code>interpolate</code> make sense for data in time order within one series.</p>
        </div>
        <div class="lc-card">
          <h3>Which Strategy?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Reasonable choice</th></tr></thead>
            <tbody>
              <tr><td>Very few rows missing, at random</td><td><code>dropna</code></td></tr>
              <tr><td>Numeric column with outliers</td><td>fill with the <strong>median</strong></td></tr>
              <tr><td>Time series (daily prices, sensor)</td><td><code>ffill</code> or <code>interpolate</code></td></tr>
              <tr><td>Groups behave differently</td><td>group-wise fill with <code>transform</code></td></tr>
              <tr><td>Category column</td><td>a label like <code>"Unknown"</code>, or the most common value</td></tr>
              <tr><td>Missing itself is informative</td><td>add a flag column: <code>df["temp_missing"] = df["temp"].isna()</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([1.0, None, None, 4.0])<br>print(s.ffill().tolist(), s.interpolate().tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1.0, 1.0, 1.0, 4.0] [1.0, 2.0, 3.0, 4.0]</div>
          <p>ffill repeats the last value; interpolate draws a straight line between 1 and 4.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Sensor gaps</li>
            <li>Survey non-responses</li>
            <li>Stock prices on holidays</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Testing <code>df["temp"] == np.nan</code> — it is always False. Use <code>isna()</code>.</li>
            <li>Calling <code>df.dropna()</code> on wide data and losing most rows. Check <code>df.isna().sum()</code> first and use <code>subset=</code>.</li>
            <li>Filling before understanding <em>why</em> values are missing — e.g. "no income reported" may mean something important.</li>
            <li>Using <code>fillna(method=...)</code> from old tutorials — removed in pandas 3.0.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, fill missing <code>price</code> values with the median price of the same <code>item</code>.</li>
            <li>Add a <code>rating_missing</code> flag column before filling <code>rating</code>.</li>
            <li>Drop only the rows where both <code>price</code> and <code>rating</code> are missing.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always report how you handled missing data ("12 rows dropped, prices filled with item median"). It's part of an honest analysis.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        sales = pd.DataFrame({
            "day":    [1, 2, 3, 4, 5, 6, 7, 8],
            "item":   ["Tea", "Tea", "Coffee", "Tea", "Coffee", "Coffee", "Tea", "Coffee"],
            "price":  [20.0, np.nan, 45.0, 22.0, np.nan, 50.0, np.nan, np.nan],
            "rating": [4.0, 3.5, np.nan, 4.5, 4.0, np.nan, 5.0, np.nan],
        })
        print("=== Data ===")
        print(sales)

        print("\n=== Find the gaps ===")
        print(sales.isna().sum())
        print("share missing:", sales["price"].isna().mean())

        print("\n=== Drop ===")
        print("dropna() keeps", len(sales.dropna()), "of", len(sales), "rows")
        print("dropna(subset=['price']) keeps", len(sales.dropna(subset=["price"])), "rows")
        print("dropna(how='all', subset=[...]) keeps",
              len(sales.dropna(how="all", subset=["price", "rating"])), "rows")

        print("\n=== Fill: value, statistic, dictionary ===")
        filled = sales.fillna({"price": sales["price"].median(), "rating": 0})
        print(filled[["item", "price", "rating"]].head(4))

        print("\n=== ffill / bfill / interpolate (time order) ===")
        print("ffill      :", sales["rating"].ffill().tolist())
        print("bfill      :", sales["rating"].bfill().tolist())
        print("interpolate:", sales["rating"].interpolate().tolist())

        print("\n=== Group-wise fill: each item's own mean price ===")
        item_mean = sales.groupby("item")["price"].transform("mean")
        sales["price_filled"] = sales["price"].fillna(item_mean)
        sales["price_missing"] = sales["price"].isna()
        print(sales[["item", "price", "price_filled", "price_missing"]])
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Aggregation and value_counts</h1>
        </div>
        <p class="lc-lead">Aggregation turns a column of many values into one summary number — a total, an average, a count. Together with <code>value_counts</code> for categories, these are the first questions you ask of any dataset.</p>
        <div class="lc-card">
          <h3>Summary Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>sum()</code>, <code>mean()</code>, <code>median()</code></td><td>total, average, middle value</td></tr>
              <tr><td><code>min()</code>, <code>max()</code>, <code>std()</code>, <code>var()</code></td><td>extremes and spread (std uses <code>ddof=1</code>, the sample formula)</td></tr>
              <tr><td><code>count()</code></td><td>number of <strong>non-missing</strong> values</td></tr>
              <tr><td><code>size</code> / <code>len(s)</code></td><td>number of rows, including missing</td></tr>
              <tr><td><code>nunique()</code></td><td>number of distinct values</td></tr>
              <tr><td><code>idxmax()</code>, <code>idxmin()</code></td><td>the <em>index label</em> of the largest / smallest value</td></tr>
              <tr><td><code>quantile(0.9)</code></td><td>the 90th percentile</td></tr>
            </tbody>
          </table>
          <p>All of them skip missing values by default (<code>skipna=True</code>). With <code>skipna=False</code>, one NaN makes the result NaN.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: count vs size</h3>
          <div class="lc-code">s = pd.DataFrame({"region": ["N", "S", "N", "E", "S", "N"],<br>                  "sales": [120, 90, np.nan, 60, 150, 80]})<br>print(s["sales"].sum(), s["sales"].mean(), s["sales"].count(), len(s))<br>print(s["sales"].idxmax(), s.loc[s["sales"].idxmax(), "region"])<br>print(s["region"].value_counts())</div>
          <p>Output:</p>
          <div class="lc-code">500.0 100.0 5 6<br>4 S<br>region<br>N    3<br>S    2<br>E    1<br>Name: count, dtype: int64</div>
          <p>There are 6 rows but <code>count()</code> is 5 — one sale is missing. The mean is 500 / 5 = 100, not 500 / 6. The best sale is at index label 4, in region S.</p>
        </div>
        <div class="lc-card">
          <h3>agg(): Several Summaries at Once</h3>
          <div class="lc-code">s["sales"].agg(["sum", "mean", "min", "max"])         # a Series<br>df[["sales", "units"]].agg(["mean", "max"])          # a table: rows = functions<br>df.agg({"sales": "sum", "units": ["min", "max"]})    # different functions per column</div>
        </div>
        <div class="lc-card">
          <h3>value_counts in Detail</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td>default</td><td>counts, sorted from most to least common</td></tr>
              <tr><td><code>normalize=True</code></td><td>proportions instead of counts (N 0.500, S 0.333, E 0.167)</td></tr>
              <tr><td><code>dropna=False</code></td><td>also count missing values</td></tr>
              <tr><td><code>bins=3</code></td><td>for numbers: count values in 3 equal-width ranges</td></tr>
              <tr><td><code>sort=False</code></td><td>keep the order of first appearance</td></tr>
            </tbody>
          </table>
          <p>In pandas 2 and later the result Series is named <code>count</code> (or <code>proportion</code>), and its index is named after the column.</p>
        </div>
        <div class="lc-card">
          <h3>describe()</h3>
          <p><code>df.describe()</code> combines count, mean, std, min, 25%, 50%, 75% and max for every numeric column in one table. For text columns, <code>df.describe(include="object")</code> shows count, unique, top (most common) and freq.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series(['a', 'b', 'a', None])<br>print(s.count(), s.nunique(), s.value_counts().iloc[0])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">3 2 2</div>
          <p>count skips the missing value; there are 2 distinct values; 'a' appears twice.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Checking class balance</li>
            <li>Finding the busiest city</li>
            <li>Spotting typos in categories</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>count()</code> as the number of rows — it ignores missing values. Use <code>len(df)</code>.</li>
            <li>Confusing <code>idxmax()</code> (a label) with <code>max()</code> (a value), or with a position.</li>
            <li>Comparing pandas' <code>std()</code> (ddof=1) with NumPy's <code>np.std()</code> (ddof=0) and expecting the same number.</li>
            <li>Summing a text column of numbers — convert with <code>pd.to_numeric</code> first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, find which payment method is used most, as a percentage, with <code>value_counts(normalize=True)</code>.</li>
            <li>Print the order id of the most expensive order using <code>idxmax</code>.</li>
            <li>Compute the sum, mean and median of <code>amount</code> in one <code>agg</code> call.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For categories, run <code>value_counts(dropna=False)</code> early — it reveals typos ("Delhi" vs "delhi"), rare labels and missing values in one line.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        orders = pd.DataFrame({
            "order_id": [501, 502, 503, 504, 505, 506, 507, 508],
            "payment":  ["UPI", "Card", "UPI", "Cash", "UPI", "Card", None, "UPI"],
            "amount":   [450, 1200, 300, np.nan, 780, 2500, 150, 620],
            "items":    [2, 5, 1, 3, 4, 6, 1, 2],
        }).set_index("order_id")

        print("=== Single summaries ===")
        print("sum   :", orders["amount"].sum())
        print("mean  :", round(orders["amount"].mean(), 2))
        print("median:", orders["amount"].median())
        print("count :", orders["amount"].count(), "| rows:", len(orders))
        print("std (ddof=1):", round(orders["amount"].std(), 2))
        print("skipna=False sum:", orders["amount"].sum(skipna=False))

        print("\n=== Where is the maximum? ===")
        print("biggest order id:", orders["amount"].idxmax(), "->", orders["amount"].max())

        print("\n=== agg ===")
        print(orders["amount"].agg(["sum", "mean", "min", "max"]))
        print(orders.agg({"amount": ["mean", "max"], "items": ["sum", "max"]}))

        print("\n=== value_counts ===")
        print(orders["payment"].value_counts())
        print(orders["payment"].value_counts(normalize=True).round(3))
        print(orders["payment"].value_counts(dropna=False))
        print("distinct methods:", orders["payment"].nunique())

        print("\n=== Binning numbers ===")
        print(orders["items"].value_counts(bins=[0, 2, 4, 6], sort=False))
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">GroupBy — Split, Apply, Combine</h1>
        </div>
        <p class="lc-lead"><code>groupby</code> answers "per something" questions: average salary <em>per department</em>, sales <em>per city per month</em>. It <strong>splits</strong> the rows into groups, <strong>applies</strong> a calculation to each group, and <strong>combines</strong> the results into one table.</p>
        <div class="lc-card">
          <h3>Split → Apply → Combine</h3>
          <div class="lc-code">dept  salary          split by dept         apply mean     combine<br>IT      70     →   IT:    70, 82, 64   →   72.0     →   HR     46.5<br>HR      45     →   HR:    45, 48       →   46.5         IT     72.0<br>IT      82     →   Sales: 50, NaN      →   50.0         Sales  50.0<br>...</div>
          <div class="lc-code">df.groupby("dept")["salary"].mean()</div>
          <p>The group keys become the <strong>index</strong> of the result, sorted A→Z by default.</p>
        </div>
        <div class="lc-card">
          <h3>Named Aggregation: the Clearest Way</h3>
          <p>Inside <code>agg</code>, write <code>new_column=("source_column", "function")</code>:</p>
          <div class="lc-code">summary = df.groupby("dept").agg(<br>    headcount=("name", "count"),<br>    avg=("salary", "mean"),<br>    top=("salary", "max"),<br>)<br>print(summary)</div>
          <div class="lc-code">       headcount   avg   top<br>dept<br>HR             2  46.5  48.0<br>IT             3  72.0  82.0<br>Sales          2  50.0  50.0</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Several Keys, size vs count</h3>
          <div class="lc-code">print(df.groupby(["dept", "city"], as_index=False)["salary"].sum())<br>print(df.groupby("dept").size().tolist(), df.groupby("dept")["salary"].count().tolist())</div>
          <p>Output:</p>
          <div class="lc-code">    dept   city  salary<br>0     HR  Delhi    48.0<br>1     HR   Pune    45.0<br>2     IT  Delhi    82.0<br>3     IT   Pune   134.0<br>4  Sales  Delhi    50.0<br>5  Sales   Pune     0.0<br>[2, 3, 2] [2, 3, 1]</div>
          <ul class="lc-list">
            <li><code>as_index=False</code> (or <code>.reset_index()</code> afterwards) keeps the keys as normal columns — easier for further work.</li>
            <li><code>size()</code> counts <strong>rows</strong>; <code>count()</code> counts <strong>non-missing values</strong>. Sales has 2 rows but only 1 salary.</li>
            <li>Watch out: Sales/Pune has only a missing salary, yet its <code>sum</code> is <strong>0.0</strong>, not NaN. Use <code>.sum(min_count=1)</code> if an all-missing group should give NaN.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>agg vs transform vs filter</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>agg</code> / <code>mean()</code> …</td><td>one row per group</td><td>summary tables</td></tr>
              <tr><td><code>transform("mean")</code></td><td>same length as <code>df</code> — the group result repeated on every row</td><td>"compare each row with its group": group averages, shares, group-wise filling</td></tr>
              <tr><td><code>filter(func)</code></td><td>the original rows of groups where <code>func(group)</code> is True</td><td>"keep departments with at least 3 people"</td></tr>
              <tr><td><code>apply(func)</code></td><td>whatever <code>func</code> returns per group</td><td>last resort for custom logic (slower)</td></tr>
            </tbody>
          </table>
          <div class="lc-code">df["dept_avg"] = df.groupby("dept")["salary"].transform("mean")<br>df["share"] = df["salary"] / df.groupby("dept")["salary"].transform("sum")<br>big = df.groupby("dept").filter(lambda g: len(g) &gt;= 3)</div>
        </div>
        <div class="lc-card">
          <h3>Useful Options</h3>
          <ul class="lc-list">
            <li><code>sort=False</code> — keep groups in order of first appearance.</li>
            <li><code>observed=True</code> — when grouping by a <code>category</code> column, show only categories that actually occur. pandas 2.x warns if you leave it out, because the default is changing from False to True. Pass it explicitly and your code behaves the same on every version.</li>
            <li><code>dropna=False</code> — keep a group for rows whose key is missing (by default they are dropped).</li>
            <li>Iterate if you must: <code>for key, group in df.groupby("dept"): ...</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'g': ['x', 'x', 'y'], 'v': [1, 3, 5]})<br>print(df.groupby('g')['v'].mean().tolist(), df.groupby('g')['v'].transform('mean').tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[2.0, 5.0] [2.0, 2.0, 5.0]</div>
          <p>mean gives one value per group; transform repeats it on every row.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Sales per region</li>
            <li>Each employee vs department average</li>
            <li>Group-wise filling of missing values</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>agg</code> when you wanted a value on every row — use <code>transform</code>.</li>
            <li>Forgetting that group keys become the index — then <code>result["dept"]</code> raises <code>KeyError</code>. Use <code>as_index=False</code> or <code>reset_index()</code>.</li>
            <li>Treating <code>count()</code> as the group size when there are missing values.</li>
            <li>Writing a Python loop over groups for something <code>agg</code> or <code>transform</code> can do in one line.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, compute total and average revenue per <code>state</code> with named aggregation.</li>
            <li>Add a column showing each store's share of its state's revenue using <code>transform("sum")</code>.</li>
            <li>Keep only states with total revenue above 500 using <code>filter</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Say the question out loud: "<em>for each</em> X, compute Y of Z" becomes <code>df.groupby("X")["Z"].Y()</code>. For each department, the mean of salary → <code>df.groupby("dept")["salary"].mean()</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        stores = pd.DataFrame({
            "store":   ["S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8"],
            "state":   ["MH", "MH", "KA", "KA", "KA", "TN", "TN", "DL"],
            "format":  ["mall", "street", "mall", "mall", "street", "street", "mall", "mall"],
            "revenue": [320, 180, 260, 240, 90, 150, 210, 400],   # lakh rupees
        })

        print("=== One key, one column ===")
        print(stores.groupby("state")["revenue"].sum())

        print("\n=== Named aggregation ===")
        summary = stores.groupby("state").agg(
            stores=("store", "count"),
            total=("revenue", "sum"),
            average=("revenue", "mean"),
            best=("revenue", "max"),
        ).sort_values("total", ascending=False)
        print(summary)

        print("\n=== Two keys, keys kept as columns ===")
        print(stores.groupby(["state", "format"], as_index=False)["revenue"].sum())

        print("\n=== transform: group value on every row ===")
        stores["state_total"] = stores.groupby("state")["revenue"].transform("sum")
        stores["share_pct"] = (stores["revenue"] / stores["state_total"] * 100).round(1)
        print(stores[["store", "state", "revenue", "state_total", "share_pct"]])

        print("\n=== filter: keep states with 3 or more stores ===")
        print(stores.groupby("state").filter(lambda g: len(g) >= 3)["store"].tolist())

        print("\n=== Category keys: pass observed=True ===")
        stores["format"] = stores["format"].astype("category")
        print(stores.groupby("format", observed=True)["revenue"].mean())

        print("\n=== Best store per state ===")
        best_idx = stores.groupby("state")["revenue"].idxmax()
        print(stores.loc[best_idx, ["state", "store", "revenue"]].reset_index(drop=True))
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Merging, Joining and Concatenating</h1>
        </div>
        <p class="lc-lead">Real data is spread over several tables: customers in one, orders in another, products in a third. <code>merge</code> links tables on a shared key (like a SQL JOIN), and <code>concat</code> stacks tables on top of each other or side by side.</p>
        <div class="lc-card">
          <h3>merge: Link Rows by a Key</h3>
          <div class="lc-code">emp  = pd.DataFrame({"emp_id": [1, 2, 3, 4],<br>                     "name": ["Asha", "Ravi", "Meera", "Kiran"],<br>                     "dept_id": [10, 20, 10, 40]})<br>dept = pd.DataFrame({"dept_id": [10, 20, 30],<br>                     "dept": ["IT", "HR", "Sales"]})<br>print(emp.merge(dept, on="dept_id", how="left"))</div>
          <div class="lc-code">   emp_id   name  dept_id dept<br>0       1   Asha       10   IT<br>1       2   Ravi       20   HR<br>2       3  Meera       10   IT<br>3       4  Kiran       40  NaN</div>
          <p>Kiran's department 40 doesn't exist in <code>dept</code>, so a <strong>left</strong> join keeps her with <code>NaN</code>. An inner join would drop her.</p>
        </div>
        <div class="lc-card">
          <h3>The Four Join Types</h3>
          <table class="lc-table">
            <thead><tr><th><code>how=</code></th><th>Keeps</th><th>Rows in the example</th></tr></thead>
            <tbody>
              <tr><td><code>"inner"</code> (default)</td><td>only keys found in <strong>both</strong> tables</td><td>3 (Kiran and Sales dropped)</td></tr>
              <tr><td><code>"left"</code></td><td>every row of the left table</td><td>4 (Kiran with NaN dept)</td></tr>
              <tr><td><code>"right"</code></td><td>every row of the right table</td><td>4 (Sales with no employee)</td></tr>
              <tr><td><code>"outer"</code></td><td>every row of both</td><td>5</td></tr>
            </tbody>
          </table>
          <p><code>indicator=True</code> adds a <code>_merge</code> column saying <code>both</code>, <code>left_only</code> or <code>right_only</code> — perfect for finding unmatched rows.</p>
        </div>
        <div class="lc-card">
          <h3>Keys With Different Names, Clashing Columns</h3>
          <div class="lc-code">emp.merge(bonus, left_on="emp_id", right_on="staff_id", how="left")<br>mid.merge(final, on="id", suffixes=("_mid", "_final"))   # score_mid, score_final</div>
          <p>Without <code>suffixes</code>, two columns called <code>score</code> become <code>score_x</code> and <code>score_y</code> — legal but confusing.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: validate Catches Duplicate Keys</h3>
          <p>If the lookup table accidentally has a key twice, every matching row is <strong>duplicated</strong> — silently:</p>
          <div class="lc-code">bad = pd.DataFrame({"dept_id": [10, 10, 20], "dept": ["IT", "Tech", "HR"]})<br>m = emp.merge(bad, on="dept_id")<br>print(len(emp), len(m))<br>try:<br>    emp.merge(bad, on="dept_id", validate="many_to_one")<br>except pd.errors.MergeError as e:<br>    print("MergeError:", e)</div>
          <p>Output:</p>
          <div class="lc-code">4 5<br>MergeError: Merge keys are not unique in right dataset; not a many-to-one merge</div>
          <p>Asha and Meera both matched two department rows. <code>validate=</code> turns this silent bug into a clear error. Options: <code>"one_to_one"</code>, <code>"one_to_many"</code>, <code>"many_to_one"</code>, <code>"many_to_many"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>concat: Stack Tables</h3>
          <div class="lc-code">pd.concat([jan, feb], ignore_index=True)     # rows of jan, then rows of feb, index 0..n-1<br>pd.concat([jan, feb], keys=["jan", "feb"])   # remember which table each row came from<br>pd.concat([left, right], axis=1)             # side by side, aligned on the index</div>
          <p>Use <code>concat</code> when the tables have the <strong>same columns</strong> (monthly files). Use <code>merge</code> when they share a <strong>key</strong>. <code>df.join(other)</code> is a shortcut for merging on the index.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many rows? Predict first, then run it in the editor.</p>
          <div class="lc-code">a = pd.DataFrame({'k': [1, 2, 3]})<br>b = pd.DataFrame({'k': [2, 3, 4]})<br>print(len(a.merge(b, on='k')), len(a.merge(b, on='k', how='outer')))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">2 4</div>
          <p>Inner keeps keys in both (2, 3); outer keeps all keys (1, 2, 3, 4).</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Adding customer details to orders</li>
            <li>Combining monthly files</li>
            <li>Finding unmatched records</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Not checking row counts. Print <code>len()</code> before and after every merge — a jump means duplicate keys.</li>
            <li>Using the default inner join and silently losing unmatched rows. Decide <code>how=</code> on purpose.</li>
            <li>Merging keys of different types (<code>10</code> vs <code>"10"</code>) — nothing matches. Check <code>dtypes</code>.</li>
            <li>Calling <code>concat</code> in a loop to add one row at a time — collect DataFrames in a list and concat once.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, change the orders–customers merge to <code>how="inner"</code> and see which order disappears.</li>
            <li>Add a duplicate product id to <code>products</code> and watch <code>validate="many_to_one"</code> catch it.</li>
            <li>Use <code>indicator=True</code> with an outer join to list customers who never ordered.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Make <code>validate=</code> a habit for lookups: orders → customers is <code>"many_to_one"</code>. One extra argument prevents one of the most expensive silent bugs in data work.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        customers = pd.DataFrame({
            "cust_id": [1, 2, 3, 4],
            "name":    ["Asha", "Ravi", "Meera", "Kiran"],
            "city":    ["Pune", "Delhi", "Chennai", "Pune"],
        })
        orders = pd.DataFrame({
            "order_id": [101, 102, 103, 104, 105],
            "cust_id":  [1, 2, 1, 3, 9],          # customer 9 is unknown
            "prod_id":  ["P1", "P2", "P2", "P3", "P1"],
            "qty":      [2, 1, 3, 5, 1],
        })
        products = pd.DataFrame({"prod_id": ["P1", "P2", "P3"],
                                 "product": ["Pen", "Notebook", "Bag"],
                                 "price":   [20, 60, 700]})

        print("=== left join: keep every order ===")
        step1 = orders.merge(customers, on="cust_id", how="left", validate="many_to_one")
        print(step1)
        print("rows before/after:", len(orders), len(step1))

        print("\n=== Add product details (validated lookup) ===")
        full = step1.merge(products, on="prod_id", how="left", validate="many_to_one")
        full["amount"] = full["qty"] * full["price"]
        print(full[["order_id", "name", "product", "qty", "amount"]])

        print("\n=== Outer join + indicator: who never ordered? ===")
        check = customers.merge(orders, on="cust_id", how="outer", indicator=True)
        print(check[["cust_id", "name", "order_id", "_merge"]])
        print("never ordered:", check.loc[check["_merge"] == "left_only", "name"].tolist())

        print("\n=== validate catches duplicate keys ===")
        dup_products = pd.concat([products, products.iloc[[0]]], ignore_index=True)
        try:
            orders.merge(dup_products, on="prod_id", validate="many_to_one")
        except pd.errors.MergeError as e:
            print("MergeError:", e)

        print("\n=== concat monthly tables ===")
        jan = pd.DataFrame({"prod_id": ["P1", "P2"], "units": [40, 12]})
        feb = pd.DataFrame({"prod_id": ["P1", "P3"], "units": [35, 4]})
        print(pd.concat([jan, feb], keys=["jan", "feb"]))
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">String Operations</h1>
        </div>
        <p class="lc-lead">Text columns are messy: extra spaces, mixed capitals, phone numbers in five formats. The <code>.str</code> accessor applies string methods to a whole column at once — and handles missing values safely.</p>
        <div class="lc-card">
          <h3>The .str Accessor</h3>
          <p>Any Python string method you know has a column version: <code>s.str.lower()</code>, <code>s.str.strip()</code>, <code>s.str.replace(...)</code>. Missing values stay missing instead of raising an error.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Method</th></tr></thead>
            <tbody>
              <tr><td>Clean case / spaces</td><td><code>.str.lower()</code>, <code>.str.upper()</code>, <code>.str.title()</code>, <code>.str.strip()</code></td></tr>
              <tr><td>Test</td><td><code>.str.contains("ra", case=False, na=False)</code>, <code>.str.startswith("A")</code>, <code>.str.endswith(".in")</code></td></tr>
              <tr><td>Measure / slice</td><td><code>.str.len()</code>, <code>.str[:3]</code>, <code>.str[-10:]</code></td></tr>
              <tr><td>Split</td><td><code>.str.split("@")</code> (lists), <code>.str.split("@", expand=True)</code> (columns), then <code>.str[1]</code></td></tr>
              <tr><td>Replace</td><td><code>.str.replace(".", "-", regex=False)</code>, <code>.str.replace(r"\D", "", regex=True)</code></td></tr>
              <tr><td>Extract with a pattern</td><td><code>.str.extract(r"#(\d+)")</code> — one column per <code>( )</code> group</td></tr>
              <tr><td>Pad / join</td><td><code>.str.zfill(3)</code>, <code>.str.cat(sep="|")</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Cleaning Names</h3>
          <div class="lc-code">s = pd.Series(["  Asha Rao ", "RAVI kumar", "meera iyer", None])<br>print(s.str.strip().str.title().tolist())<br>print(s.str.len().tolist())<br>print(s.str.contains("ra", case=False, na=False).tolist())</div>
          <p>Output:</p>
          <div class="lc-code">['Asha Rao', 'Ravi Kumar', 'Meera Iyer', None]<br>[11.0, 10.0, 10.0, nan]<br>[True, True, True, False]</div>
          <p>Methods chain left to right. "Rao", "RAVI" and "meeRA" all match <code>"ra"</code> once case is ignored. The missing name stays <code>None</code>/<code>NaN</code>. For filtering, pass <code>na=False</code> so missing values count as "no match" — a mask with NaN in it cannot be used to select rows.</p>
        </div>
        <div class="lc-card">
          <h3>Splitting and Extracting</h3>
          <div class="lc-code">e = pd.Series(["asha@gmail.com", "ravi@iitb.ac.in"])<br>e.str.split("@").str[1]                 # ['gmail.com', 'iitb.ac.in']<br>e.str.split("@", expand=True)           # two columns: 0 and 1<br><br>p = pd.Series(["Order #123 - Rs 450", "Order #98 - Rs 1,200", "no id"])<br>p.str.extract(r"#(\d+).*Rs ([\d,]+)")<br>#      0      1<br># 0  123    450<br># 1   98  1,200<br># 2  NaN    NaN</div>
          <p><code>extract</code> uses a <strong>regular expression</strong>: <code>\d+</code> means "one or more digits", and each pair of brackets becomes a column. Rows that don't match get NaN.</p>
        </div>
        <div class="lc-card">
          <h3>Regex or Plain Text?</h3>
          <p>In pandas 2, <code>str.replace</code> treats the pattern as <strong>plain text</strong> by default (<code>regex=False</code>). Say what you mean explicitly:</p>
          <div class="lc-code">phones = pd.Series(["9876543210", "98765-43210", "+91 98765 43210"])<br>phones.str.replace(r"\D", "", regex=True).str[-10:]   # keep digits, last 10<br># ['9876543210', '9876543210', '9876543210']<br>pd.Series(["a.b"]).str.replace(".", "-", regex=False)  # ['a-b'] — "." as a real dot</div>
          <p>In a regex, <code>.</code> means "any character", so <code>regex=True</code> would replace every character.</p>
        </div>
        <div class="lc-card">
          <h3>String dtypes: Now and in pandas 3</h3>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Default text dtype</th><th>Missing value</th></tr></thead>
            <tbody>
              <tr><td>pandas 2.x (this editor)</td><td><code>object</code></td><td><code>None</code> or <code>NaN</code></td></tr>
              <tr><td>opt-in in pandas 2</td><td><code>"string"</code> (via <code>astype("string")</code>)</td><td><code>&lt;NA&gt;</code></td></tr>
              <tr><td>pandas 3.0 (Jan 2026)</td><td><code>str</code> — a dedicated string dtype, faster with PyArrow</td><td><code>NaN</code></td></tr>
            </tbody>
          </table>
          <p>All <code>.str</code> methods work the same across these. You can preview pandas 3's behaviour in 2.3 with <code>pd.options.future.infer_string = True</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([' Pune', 'pune ', 'PUNE'])<br>print(s.str.strip().str.title().nunique())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">1</div>
          <p>After cleaning, all three are 'Pune'.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Cleaning city and product names</li>
            <li>Extracting numbers from text</li>
            <li>Validating emails and phone numbers</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling <code>s.lower()</code> — a Series has no <code>lower</code>. Use <code>s.str.lower()</code>.</li>
            <li>Filtering with <code>str.contains</code> on a column with missing values and no <code>na=False</code> — raises a <code>ValueError</code> about NA values.</li>
            <li>Using regex symbols (<code>. ( ) + $</code>) as plain text, or forgetting <code>regex=True</code> when you need a pattern.</li>
            <li>Comparing without cleaning: <code>"Tea"</code>, <code>"tea "</code> and <code>"TEA"</code> are three different values until you <code>strip()</code> and <code>lower()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, extract the city from <code>address</code> (the text after the last comma).</li>
            <li>Count how many customers use a <code>gmail.com</code> email.</li>
            <li>Pull the order amount out of the <code>note</code> column with <code>str.extract</code> and convert it to a number.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Standardise text first — <code>.str.strip().str.lower()</code> — then group, merge or count. Most "duplicate category" problems disappear.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        customers = pd.DataFrame({
            "name":    ["  asha RAO", "Ravi Kumar ", "MEERA iyer", "kiran shah"],
            "email":   ["Asha@Gmail.com", "ravi@iitb.ac.in", "meera@yahoo.co.in", None],
            "phone":   ["98765-43210", "+91 91234 56789", "9988776655", "(080) 2345 6789"],
            "address": ["12 MG Road, Pune", "4 Park St, Kolkata", "7 Anna Salai, Chennai", "9 Brigade Rd, Bengaluru"],
            "note":    ["paid Rs 450 via UPI", "paid Rs 1200 cash", "refund", "paid Rs 99 via card"],
        })

        print("=== Clean names ===")
        customers["name"] = customers["name"].str.strip().str.title()
        print(customers["name"].tolist())

        print("\n=== Emails: lower-case, split, test ===")
        customers["email"] = customers["email"].str.lower()
        customers["domain"] = customers["email"].str.split("@").str[1]
        print(customers[["name", "email", "domain"]])
        print("gmail users:", customers["email"].str.endswith("gmail.com", na=False).sum())

        print("\n=== Phones: keep digits (regex) ===")
        digits = customers["phone"].str.replace(r"\D", "", regex=True)
        print(digits.tolist())
        print("last 10 digits:", digits.str[-10:].tolist())

        print("\n=== Address: split into columns ===")
        parts = customers["address"].str.rsplit(", ", n=1, expand=True)
        parts.columns = ["street", "city"]
        print(parts)

        print("\n=== Extract amounts from free text ===")
        amount = customers["note"].str.extract(r"Rs (\d+)", expand=False)
        customers["amount"] = pd.to_numeric(amount)
        print(customers[["note", "amount"]])

        print("\n=== Filter with contains (case-insensitive, safe for NaN) ===")
        print(customers.loc[customers["note"].str.contains("upi", case=False, na=False), "name"].tolist())
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Working with Dates and Times</h1>
        </div>
        <p class="lc-lead">Dates as text can't be sorted, subtracted or grouped by month correctly. Converting them to real <strong>datetime</strong> values unlocks the <code>.dt</code> accessor, date arithmetic and time-based grouping with <code>resample</code>.</p>
        <div class="lc-card">
          <h3>Parsing with to_datetime</h3>
          <div class="lc-code">pd.to_datetime(df["date"])                               # ISO text like 2024-03-05<br>pd.to_datetime(df["date"], format="%d/%m/%Y")            # Indian style 05/03/2024 = 5 March<br>pd.to_datetime(df["date"], dayfirst=True)                # same idea, less strict<br>pd.to_datetime(df["date"], format="%Y-%m-%d", errors="coerce")   # bad dates become NaT</div>
          <p>Always give <code>format=</code> (or <code>dayfirst=True</code>) for <code>dd/mm/yyyy</code> data. Otherwise "05/03/2024" may be read as <strong>May 3</strong>, the US order. Invalid dates such as 30 February become <code>NaT</code> ("not a time") with <code>errors="coerce"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The .dt Accessor</h3>
          <table class="lc-table">
            <thead><tr><th>Attribute / method</th><th>For 2024-03-05</th></tr></thead>
            <tbody>
              <tr><td><code>.dt.year</code>, <code>.dt.month</code>, <code>.dt.day</code></td><td>2024, 3, 5</td></tr>
              <tr><td><code>.dt.day_name()</code></td><td>'Tuesday'</td></tr>
              <tr><td><code>.dt.dayofweek</code></td><td>1 (Monday = 0, Sunday = 6)</td></tr>
              <tr><td><code>.dt.quarter</code></td><td>1</td></tr>
              <tr><td><code>.dt.strftime("%d %b %Y")</code></td><td>'05 Mar 2024'</td></tr>
              <tr><td><code>.dt.to_period("M")</code></td><td>2024-03 (a month label for grouping)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Parse, Extract, Subtract</h3>
          <div class="lc-code">d = pd.to_datetime(pd.Series(["2024-03-05", "2024-03-12", "2024-04-01"]))<br>print(d.dt.day_name().tolist())<br>print((d.iloc[2] - d.iloc[0]).days)<br>print((d + pd.Timedelta(days=30)).dt.strftime("%d %b").tolist())<br>print(pd.to_datetime(pd.Series(["05/03/2024"]), format="%d/%m/%Y").dt.month_name().tolist())</div>
          <p>Output:</p>
          <div class="lc-code">['Tuesday', 'Tuesday', 'Monday']<br>27<br>['04 Apr', '11 Apr', '01 May']<br>['March']</div>
          <p>Subtracting two dates gives a <strong>Timedelta</strong>; <code>.days</code> turns it into a number. Adding <code>pd.Timedelta(days=30)</code> shifts dates. With the explicit format, 05/03/2024 is correctly read as March.</p>
        </div>
        <div class="lc-card">
          <h3>Time-based Grouping: resample</h3>
          <p>Put the dates in the index, then <code>resample</code> groups by calendar periods:</p>
          <div class="lc-code">daily = sales.set_index("date")["amount"]<br>daily.resample("ME").sum()    # month-end totals<br>daily.resample("W").mean()    # weekly averages (weeks end on Sunday)<br>daily.loc["2024-02"]          # every row in February 2024<br>daily.loc["2024-01-30":"2024-02-02"]   # a date range (both ends included)</div>
          <table class="lc-table">
            <thead><tr><th>Alias</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>"D"</code>, <code>"W"</code></td><td>day, week</td></tr>
              <tr><td><code>"ME"</code>, <code>"MS"</code></td><td>month end, month start</td></tr>
              <tr><td><code>"QE"</code>, <code>"YE"</code></td><td>quarter end, year end</td></tr>
              <tr><td><code>"h"</code>, <code>"min"</code></td><td>hour, minute</td></tr>
            </tbody>
          </table>
          <p><strong>Old way — don't use:</strong> <code>"M"</code>, <code>"Q"</code>, <code>"Y"</code> for month/quarter/year end. They give a FutureWarning in pandas 2.2+ and were removed in pandas 3.0. <code>pd.date_range("2024-01-01", periods=12, freq="ME")</code> builds a sequence of month ends.</p>
        </div>
        <div class="lc-card">
          <h3>Time Zones and Resolution</h3>
          <p>Naive datetimes have no time zone. <code>ts.tz_localize("Asia/Kolkata")</code> attaches IST; <code>.tz_convert("UTC")</code> converts: 10:30 IST is 05:00 UTC. In pandas 2 parsed dates are stored as <code>datetime64[ns]</code> (nanoseconds). <strong>pandas 3.0 parses strings to microsecond resolution (<code>datetime64[us]</code>) by default</strong> — it only matters if you convert dates to raw integers.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">d = pd.to_datetime(pd.Series(['01/02/2024']), format='%d/%m/%Y')<br>print(d.dt.month_name().iloc[0], d.dt.day.iloc[0])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">February 1</div>
          <p>With format='%d/%m/%Y', 01/02/2024 means 1 February.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Monthly sales reports</li>
            <li>Delivery times</li>
            <li>Time-zone conversion for global users</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Leaving dates as text: "10/01/2024" &lt; "9/01/2024" is True as text!</li>
            <li>Parsing Indian <code>dd/mm/yyyy</code> dates without <code>format=</code> or <code>dayfirst=True</code>.</li>
            <li>Calling <code>resample</code> without a DatetimeIndex — set the date column as the index first (or use <code>on="date"</code>).</li>
            <li>Using the removed aliases <code>"M"</code>/<code>"Y"</code> from old tutorials instead of <code>"ME"</code>/<code>"YE"</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add a <code>weekday</code> column and find total sales on weekends (<code>dayofweek &gt;= 5</code>).</li>
            <li>Compute weekly totals with <code>resample("W")</code>.</li>
            <li>Find the order that took the longest to deliver with <code>idxmax()</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Parse dates at load time — <code>pd.read_csv(..., parse_dates=["date"])</code> for ISO dates, or <code>pd.to_datetime(..., format=...)</code> right after. Then check <code>df.dtypes</code> shows <code>datetime64</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        csv_text = """order_id,ordered,delivered,amount
        1,28/01/2024,30/01/2024,450
        2,31/01/2024,03/02/2024,1200
        3,03/02/2024,05/02/2024,300
        4,04/02/2024,09/02/2024,780
        5,17/02/2024,19/02/2024,2500
        6,02/03/2024,04/03/2024,640
        7,09/03/2024,31/02/2024,150
        """
        df = pd.read_csv(io.StringIO(csv_text))

        print("=== Parse Indian dd/mm/yyyy dates ===")
        df["ordered"] = pd.to_datetime(df["ordered"], format="%d/%m/%Y")
        df["delivered"] = pd.to_datetime(df["delivered"], format="%d/%m/%Y", errors="coerce")
        print(df.dtypes)
        print("bad delivery dates:", df["delivered"].isna().sum())

        print("\n=== .dt accessor ===")
        df["month"] = df["ordered"].dt.month_name()
        df["weekday"] = df["ordered"].dt.day_name()
        print(df[["order_id", "ordered", "month", "weekday"]])

        print("\n=== Date arithmetic ===")
        df["days_to_deliver"] = (df["delivered"] - df["ordered"]).dt.days
        print(df[["order_id", "days_to_deliver"]].T)
        print("reminder date for order 1:", (df.loc[0, "ordered"] + pd.Timedelta(days=30)).date())

        print("\n=== Filter by date ===")
        print(df.loc[df["ordered"] >= "2024-02-15", "order_id"].tolist())

        print("\n=== resample: monthly totals ===")
        by_date = df.set_index("ordered")["amount"]
        print(by_date.resample("ME").sum())
        print("February orders:", by_date.loc["2024-02"].tolist())

        print("\n=== Time zones ===")
        ts = pd.Timestamp("2024-03-05 10:30").tz_localize("Asia/Kolkata")
        print(ts, "->", ts.tz_convert("UTC"))
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Pivot Tables and Crosstab</h1>
        </div>
        <p class="lc-lead">A pivot table summarises data across <strong>two dimensions</strong> at once — rows by region, columns by product, cells showing total sales. It's the Excel pivot table, in one line of code.</p>
        <div class="lc-card">
          <h3>pivot_table</h3>
          <div class="lc-code">df.pivot_table(<br>    values="amount",      # what to summarise<br>    index="region",       # one row per region<br>    columns="product",    # one column per product<br>    aggfunc="sum",        # how to combine (default: "mean")<br>    fill_value=0,         # show 0 instead of NaN for empty cells<br>    margins=True,         # add an "All" row and column with totals<br>)</div>
          <p>The default <code>aggfunc</code> is <strong>mean</strong>, not sum — a common surprise. <code>aggfunc</code> can also be a list, like <code>["sum", "count"]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Region × Product</h3>
          <div class="lc-code">sales = pd.DataFrame({"region": ["N", "N", "S", "S", "S", "E"],<br>                      "product": ["Tea", "Coffee", "Tea", "Tea", "Coffee", "Tea"],<br>                      "amount": [100, 250, 80, 120, 300, 90]})<br>print(sales.pivot_table(values="amount", index="region", columns="product",<br>                        aggfunc="sum", fill_value=0, margins=True))</div>
          <p>Output:</p>
          <div class="lc-code">product  Coffee  Tea  All<br>region<br>E             0   90   90<br>N           250  100  350<br>S           300  200  500<br>All         550  390  940</div>
          <p>South sold Tea twice (80 + 120), so its cell is 200. East never sold Coffee — <code>fill_value=0</code> shows 0 instead of NaN.</p>
        </div>
        <div class="lc-card">
          <h3>crosstab: Counting Combinations</h3>
          <p><code>pd.crosstab</code> counts how often each pair of values appears — ideal for survey answers or "how many students of each gender chose each stream".</p>
          <div class="lc-code">pd.crosstab(df["city"], df["plan"])                        # counts<br>pd.crosstab(df["city"], df["plan"], normalize="index")     # each row sums to 1<br>pd.crosstab(df["city"], df["plan"], margins=True)          # with totals</div>
        </div>
        <div class="lc-card">
          <h3>pivot vs pivot_table vs groupby</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Aggregates?</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td><code>pivot_table</code></td><td>yes (<code>aggfunc</code>)</td><td>summarising; duplicates are combined</td></tr>
              <tr><td><code>pivot</code></td><td>no</td><td>just reshaping; each index/column pair appears once — otherwise <code>ValueError: Index contains duplicate entries</code></td></tr>
              <tr><td><code>crosstab</code></td><td>counts (or <code>values</code> + <code>aggfunc</code>)</td><td>frequency tables of two categories</td></tr>
              <tr><td><code>groupby([a, b]).sum().unstack()</code></td><td>yes</td><td>same result as pivot_table, built step by step</td></tr>
            </tbody>
          </table>
          <p>With a <code>category</code> column as index or columns, pass <code>observed=True</code> to avoid a FutureWarning in pandas 2.x.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'r': ['N', 'N', 'S'], 'v': [1, 3, 5]})<br>print(df.pivot_table(values='v', index='r').loc['N', 'v'])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">2.0</div>
          <p>The default aggfunc is mean: (1 + 3) / 2.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Sales by region and month</li>
            <li>Survey answers by group</li>
            <li>Attendance by class and day</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting that <code>aggfunc</code> defaults to <strong>mean</strong> when you wanted totals.</li>
            <li>Using <code>pivot</code> on data with duplicate pairs — use <code>pivot_table</code>.</li>
            <li>Reading NaN cells as zero sales; they mean "no rows". Use <code>fill_value=0</code> only when zero is really correct.</li>
            <li>Mixing up <code>normalize="index"</code> (rows sum to 1) and <code>normalize="columns"</code> (columns sum to 1).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, change <code>aggfunc</code> to <code>"mean"</code> and then to <code>["sum", "count"]</code>.</li>
            <li>Build a crosstab of <code>city</code> × <code>payment</code> showing row percentages.</li>
            <li>Rebuild the region × month table with <code>groupby</code> and <code>unstack</code> and check it matches.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put the dimension with <em>fewer</em> values in <code>columns</code> so the table stays readable on screen; put the longer list in <code>index</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        sales = pd.DataFrame({
            "month":   ["Jan", "Jan", "Jan", "Feb", "Feb", "Feb", "Mar", "Mar", "Mar", "Mar"],
            "city":    ["Pune", "Delhi", "Pune", "Delhi", "Pune", "Delhi", "Pune", "Delhi", "Delhi", "Pune"],
            "payment": ["UPI", "Card", "UPI", "UPI", "Cash", "UPI", "Card", "UPI", "Cash", "UPI"],
            "amount":  [500, 1200, 300, 800, 150, 400, 900, 650, 200, 350],
        })
        sales["month"] = pd.Categorical(sales["month"], categories=["Jan", "Feb", "Mar"], ordered=True)

        print("=== Total sales: city x month ===")
        table = sales.pivot_table(values="amount", index="city", columns="month",
                                  aggfunc="sum", fill_value=0, margins=True, observed=True)
        print(table)

        print("\n=== Default aggfunc is MEAN ===")
        print(sales.pivot_table(values="amount", index="city", aggfunc="mean").round(1))

        print("\n=== Several aggregations ===")
        print(sales.pivot_table(values="amount", index="city", aggfunc=["sum", "count"]))

        print("\n=== crosstab: how often each payment is used per city ===")
        print(pd.crosstab(sales["city"], sales["payment"], margins=True))
        print("\nrow shares:")
        print(pd.crosstab(sales["city"], sales["payment"], normalize="index").round(2))

        print("\n=== Same table with groupby + unstack ===")
        g = sales.groupby(["city", "month"], observed=True)["amount"].sum().unstack(fill_value=0)
        print(g)

        print("\n=== pivot (no aggregation) needs unique pairs ===")
        try:
            sales.pivot(index="city", columns="month", values="amount")
        except ValueError as e:
            print("ValueError:", e)
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Reshaping — melt, stack and unstack</h1>
        </div>
        <p class="lc-lead">The same data can be <strong>wide</strong> (one column per month) or <strong>long</strong> (one row per month). Spreadsheets like wide; groupby, merging and plotting libraries prefer long. Reshaping switches between them.</p>
        <div class="lc-card">
          <h3>Wide vs Long</h3>
          <div class="lc-code">WIDE                               LONG<br>name   q1   q2                     name  quarter  sales<br>Asha   45   51          melt →     Asha  q1       45<br>Ravi   38   41          ← pivot    Ravi  q1       38<br>                                   Asha  q2       51<br>                                   Ravi  q2       41</div>
          <p>Long ("tidy") data has one row per observation and one column per variable. It's the format that <code>groupby</code>, <code>merge</code> and charting libraries such as seaborn expect.</p>
        </div>
        <div class="lc-card">
          <h3>melt: Wide → Long</h3>
          <div class="lc-code">long = wide.melt(<br>    id_vars=["name"],              # columns to keep as they are<br>    value_vars=["q1", "q2"],       # columns to unpivot (default: all others)<br>    var_name="quarter",            # new column for the old column names<br>    value_name="sales",            # new column for the values<br>)</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: melt and pivot Back</h3>
          <div class="lc-code">wide = pd.DataFrame({"name": ["Asha", "Ravi"], "q1": [45, 38], "q2": [51, 41]})<br>long = wide.melt(id_vars="name", var_name="quarter", value_name="sales")<br>print(long)<br>print(long.pivot(index="name", columns="quarter", values="sales"))</div>
          <p>Output:</p>
          <div class="lc-code">   name quarter  sales<br>0  Asha      q1     45<br>1  Ravi      q1     38<br>2  Asha      q2     51<br>3  Ravi      q2     41<br>quarter  q1  q2<br>name<br>Asha     45  51<br>Ravi     38  41</div>
          <p><code>pivot</code> reverses <code>melt</code>. Add <code>.reset_index()</code> and <code>.rename_axis(columns=None)</code> to get a plain table back.</p>
        </div>
        <div class="lc-card">
          <h3>MultiIndex, stack and unstack</h3>
          <p>Grouping by two keys gives a <strong>MultiIndex</strong> — an index with two levels:</p>
          <div class="lc-code">s = long.groupby(["name", "quarter"])["sales"].sum()<br># name  quarter<br># Asha  q1         45<br>#       q2         51<br># Ravi  q1         38<br>#       q2         41<br>s.unstack()                  # move the inner level (quarter) into columns → wide<br>s.unstack().stack()          # and back: columns → inner index level<br>s.loc["Asha"]                # select by the outer level<br>s.loc[("Asha", "q2")]        # select one value with a tuple → 51</div>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Moves</th><th>Shape effect</th></tr></thead>
            <tbody>
              <tr><td><code>melt</code></td><td>columns → rows</td><td>wider → longer</td></tr>
              <tr><td><code>pivot</code> / <code>pivot_table</code></td><td>row values → columns</td><td>longer → wider</td></tr>
              <tr><td><code>unstack(level)</code></td><td>an index level → columns</td><td>longer → wider</td></tr>
              <tr><td><code>stack()</code></td><td>columns → an index level</td><td>wider → longer</td></tr>
              <tr><td><code>explode("col")</code></td><td>list items in a cell → separate rows</td><td>longer</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many rows does the long table have? Predict first, then run it in the editor.</p>
          <div class="lc-code">wide = pd.DataFrame({'id': [1, 2], 'a': [5, 6], 'b': [7, 8], 'c': [9, 10]})<br>print(len(wide.melt(id_vars='id')))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">6</div>
          <p>2 ids × 3 value columns = 6 rows.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Preparing data for seaborn charts</li>
            <li>Turning spreadsheet layouts into tidy data</li>
            <li>Reading MultiIndex groupby results</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>id_vars</code> in <code>melt</code> — the name column gets melted too.</li>
            <li>Leaving quarter labels as text like <code>"q1_sales"</code> — clean them with <code>.str.replace("_sales", "")</code> after melting.</li>
            <li>Trying <code>pivot</code> when a (row, column) pair appears twice — aggregate with <code>pivot_table</code> instead.</li>
            <li>Getting lost in a MultiIndex — <code>reset_index()</code> turns the levels back into ordinary columns.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, melt only the <code>jan</code> and <code>feb</code> columns (use <code>value_vars</code>).</li>
            <li>Find each student's best subject from the long table with <code>groupby</code> and <code>idxmax</code>.</li>
            <li>Use <code>explode</code> on the <code>clubs</code> column and count members per club.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Store and analyse data in <strong>long</strong> form; reshape to <strong>wide</strong> only at the end, for a report or a display table.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        marks = pd.DataFrame({
            "student": ["Asha", "Ravi", "Meera"],
            "maths":   [88, 72, 95],
            "science": [79, 85, 91],
            "english": [92, 68, 84],
        })
        print("=== Wide ===")
        print(marks)

        print("\n=== melt -> long ===")
        long = marks.melt(id_vars="student", var_name="subject", value_name="score")
        print(long)

        print("\n=== Analyse in long form ===")
        print("average per subject:")
        print(long.groupby("subject")["score"].mean().round(1))
        best = long.loc[long.groupby("student")["score"].idxmax(), ["student", "subject", "score"]]
        print("best subject per student:")
        print(best.reset_index(drop=True))

        print("\n=== pivot -> back to wide ===")
        wide_again = long.pivot(index="student", columns="subject", values="score")
        print(wide_again)

        print("\n=== MultiIndex with stack / unstack ===")
        s = long.set_index(["student", "subject"])["score"]
        print(s.head(4))
        print("Ravi's science:", s.loc[("Ravi", "science")])
        print(s.unstack())
        print("stacked back, same data:", s.unstack().stack().sort_index().equals(s.sort_index()))

        print("\n=== explode: lists in cells -> rows ===")
        clubs = pd.DataFrame({"student": ["Asha", "Ravi"],
                              "clubs": [["chess", "music"], ["music"]]})
        print(clubs.explode("clubs"))
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">apply(), map() and Vectorisation</h1>
        </div>
        <p class="lc-lead">Sometimes you need custom logic that no built-in method covers. <code>map</code> and <code>apply</code> run your own function on values, rows or columns. They are flexible — but slower than vectorised code, so learn when <em>not</em> to use them.</p>
        <div class="lc-card">
          <h3>The Tools</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Works on</th><th>Calls your function with</th></tr></thead>
            <tbody>
              <tr><td><code>Series.map(dict or func)</code></td><td>a column</td><td>each value; a dict looks values up</td></tr>
              <tr><td><code>Series.apply(func)</code></td><td>a column</td><td>each value</td></tr>
              <tr><td><code>DataFrame.apply(func, axis=0)</code></td><td>a table</td><td>each <strong>column</strong> (as a Series)</td></tr>
              <tr><td><code>DataFrame.apply(func, axis=1)</code></td><td>a table</td><td>each <strong>row</strong> (as a Series)</td></tr>
              <tr><td><code>DataFrame.map(func)</code></td><td>a table</td><td>every single cell</td></tr>
              <tr><td><code>replace(dict)</code></td><td>Series or DataFrame</td><td>— swaps listed values, keeps the rest</td></tr>
            </tbody>
          </table>
          <p><strong>Old way — don't use:</strong> <code>DataFrame.applymap</code>. It was renamed to <code>DataFrame.map</code> in pandas 2.1 and <strong>removed in pandas 3.0</strong>. Older tutorials also say <code>map</code> is "Series only" — no longer true.</p>
        </div>
        <div class="lc-card">
          <h3>map with a Dictionary: Watch for NaN</h3>
          <div class="lc-code">dept = pd.Series(["Engineering", "Marketing", "HR", "Legal"])<br>codes = {"Engineering": "ENG", "Marketing": "MKT", "HR": "HR"}<br>print(dept.map(codes).tolist())<br>print(dept.replace(codes).tolist())</div>
          <div class="lc-code">['ENG', 'MKT', 'HR', nan]<br>['ENG', 'MKT', 'HR', 'Legal']</div>
          <p><code>map</code> turns values that are <em>not</em> in the dictionary into NaN. <code>replace</code> leaves them unchanged. Choose on purpose.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: apply per Value and per Row</h3>
          <div class="lc-code">df = pd.DataFrame({"name": ["Asha", "Ravi"], "maths": [91, 64], "science": [78, 88]})<br>df["m_grade"] = df["maths"].apply(lambda m: "A" if m &gt;= 90 else "B")<br>df["best"] = df.apply(lambda row: "maths" if row["maths"] &gt; row["science"] else "science", axis=1)<br>print(df)<br>print(df[["maths", "science"]].map(lambda v: f"{v}%"))</div>
          <p>Output:</p>
          <div class="lc-code">   name  maths  science m_grade     best<br>0  Asha     91       78       A    maths<br>1  Ravi     64       88       B  science<br>  maths science<br>0   91%     78%<br>1   64%     88%</div>
        </div>
        <div class="lc-card">
          <h3>Prefer Vectorised Code</h3>
          <p><code>apply</code> runs a Python function once per value or row — for a million rows, a million calls. Vectorised operations run in compiled code and are often 10–100× faster:</p>
          <table class="lc-table">
            <thead><tr><th>Slow (apply / loop)</th><th>Fast (vectorised)</th></tr></thead>
            <tbody>
              <tr><td><code>df["x"].apply(lambda v: v * 1.18)</code></td><td><code>df["x"] * 1.18</code></td></tr>
              <tr><td><code>df.apply(lambda r: r["a"] + r["b"], axis=1)</code></td><td><code>df["a"] + df["b"]</code></td></tr>
              <tr><td><code>apply(lambda v: "A" if v &gt;= 90 else "B")</code></td><td><code>np.where(df["m"] &gt;= 90, "A", "B")</code></td></tr>
              <tr><td><code>apply(lambda s: s.strip().lower())</code></td><td><code>df["s"].str.strip().str.lower()</code></td></tr>
              <tr><td>many if/elif bands</td><td><code>pd.cut(df["m"], bins=[...], labels=[...])</code> or <code>np.select</code></td></tr>
              <tr><td><code>for i, row in df.iterrows(): ...</code></td><td>almost always one of the above</td></tr>
            </tbody>
          </table>
          <p>Use <code>apply</code> when the logic genuinely can't be expressed with column operations — calling an external function, parsing complex text, or combining many fields in unusual ways.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series(['a', 'b', 'c'])<br>print(s.map({'a': 1, 'b': 2}).tolist(), s.replace({'a': 1, 'b': 2}).tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1.0, 2.0, nan] [1, 2, 'c']</div>
          <p>map turns unmapped values into NaN; replace keeps them.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Mapping codes to names</li>
            <li>Custom parsing with apply</li>
            <li>Speeding up slow row-by-row code</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>axis=1</code> when you want rows — by default <code>DataFrame.apply</code> passes <em>columns</em>.</li>
            <li>Using <code>map(dict)</code> and not noticing the NaNs for unmapped values.</li>
            <li>Using <code>applymap</code> — removed in pandas 3.0; use <code>DataFrame.map</code>.</li>
            <li>Using <code>iterrows()</code> to build a column: slow, and changes to <code>row</code> do not write back to <code>df</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, replace the <code>apply</code> that computes GST with a vectorised expression and check the results are equal.</li>
            <li>Use <code>pd.cut</code> to label amounts as "small" (&lt; 500), "medium" (500–1999) and "large" (2000+).</li>
            <li>Add a <code>"Delhi": "DL"</code> entry to the state map so no NaN remains.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Treat <code>apply</code> as a last resort, not a first tool. If you can describe the calculation as "column op column", write it that way.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import time
        import numpy as np
        import pandas as pd

        orders = pd.DataFrame({
            "city":   ["Pune", "Mumbai", "Delhi", "Pune", "Chennai"],
            "amount": [450, 2300, 780, 5200, 1500],
            "items":  [2, 6, 3, 9, 4],
        })

        print("=== Series.map with a dict (unmapped -> NaN) ===")
        state = {"Pune": "MH", "Mumbai": "MH", "Chennai": "TN"}
        orders["state"] = orders["city"].map(state)
        print(orders[["city", "state"]])
        print("replace keeps unknowns:", orders["city"].replace(state).tolist())

        print("\n=== Series.apply with a function ===")
        def size_label(amount):
            if amount >= 2000:
                return "large"
            return "medium" if amount >= 500 else "small"
        orders["size"] = orders["amount"].apply(size_label)
        print(orders[["amount", "size"]])

        print("\n=== Vectorised alternatives give the same answer ===")
        cut = pd.cut(orders["amount"], bins=[0, 500, 2000, np.inf], right=False,
                     labels=["small", "medium", "large"])
        print("pd.cut matches apply:", (cut.astype(str) == orders["size"]).all())

        print("\n=== DataFrame.apply(axis=1): one row at a time ===")
        orders["per_item"] = orders.apply(lambda r: round(r["amount"] / r["items"], 1), axis=1)
        print(orders[["amount", "items", "per_item"]])

        print("\n=== DataFrame.map: every cell (replaces applymap) ===")
        print(orders[["amount", "items"]].map(lambda v: f"{v:,}"))

        print("\n=== Speed: apply vs vectorised on 200,000 rows ===")
        big = pd.Series(np.arange(200_000, dtype=np.float64))
        t0 = time.perf_counter(); a = big.apply(lambda v: v * 1.18); t1 = time.perf_counter()
        b = big * 1.18; t2 = time.perf_counter()
        print("same result:", np.allclose(a, b))
        print("vectorised at least 3x faster:", (t1 - t0) > 3 * (t2 - t1))
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Window Functions — rolling, expanding, shift</h1>
        </div>
        <p class="lc-lead">Window functions compute a value for each row using its <strong>neighbours</strong>: a 7-day moving average, a running total, yesterday's value, the change since last month. They are the core toolkit for time-series data such as sales, prices and sensor readings.</p>
        <div class="lc-card">
          <h3>Three Kinds of Windows</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Window</th><th>Example use</th></tr></thead>
            <tbody>
              <tr><td><code>rolling(3)</code></td><td>the last 3 rows (fixed size, slides forward)</td><td>3-day moving average</td></tr>
              <tr><td><code>rolling("7D")</code></td><td>the last 7 days of a DatetimeIndex</td><td>weekly sum with gaps in dates</td></tr>
              <tr><td><code>expanding()</code></td><td>from the first row up to this one (grows)</td><td>average so far</td></tr>
              <tr><td><code>ewm(span=3)</code></td><td>all past rows, recent ones weighted more</td><td>smoothed trend</td></tr>
              <tr><td><code>cumsum()</code>, <code>cummax()</code></td><td>everything so far</td><td>running total, best so far</td></tr>
            </tbody>
          </table>
          <p>After <code>rolling(...)</code> or <code>expanding()</code> you choose the calculation: <code>.mean()</code>, <code>.sum()</code>, <code>.max()</code>, <code>.std()</code> …</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Six Days of Sales</h3>
          <div class="lc-code">s = pd.Series([100, 120, 90, 150, 130, 170],<br>              index=pd.date_range("2024-01-01", periods=6, freq="D"))<br>out = pd.DataFrame({"v": s,<br>                    "roll3": s.rolling(3).mean().round(1),<br>                    "exp": s.expanding().mean().round(1),<br>                    "cum": s.cumsum(),<br>                    "lag": s.shift(1),<br>                    "pct": (s.pct_change() * 100).round(1)})<br>print(out)</div>
          <p>Output:</p>
          <div class="lc-code">              v  roll3    exp  cum    lag   pct<br>2024-01-01  100    NaN  100.0  100    NaN   NaN<br>2024-01-02  120    NaN  110.0  220  100.0  20.0<br>2024-01-03   90  103.3  103.3  310  120.0 -25.0<br>2024-01-04  150  120.0  115.0  460   90.0  66.7<br>2024-01-05  130  123.3  118.0  590  150.0 -13.3<br>2024-01-06  170  150.0  126.7  760  130.0  30.8</div>
          <ul class="lc-list">
            <li><code>roll3</code> is NaN for the first two days — a 3-row window isn't full yet. <code>rolling(3, min_periods=1)</code> uses whatever rows exist.</li>
            <li><code>shift(1)</code> moves values <strong>down</strong> one row, so each row sees the <em>previous</em> day (a "lag"). <code>shift(-1)</code> looks one row ahead.</li>
            <li><code>pct_change()</code> = (today − yesterday) / yesterday. <code>diff()</code> gives the plain difference.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Lag, Lead, Change</h3>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Row 3 (value 150) gets</th></tr></thead>
            <tbody>
              <tr><td><code>s.shift(1)</code></td><td>90 — the previous value</td></tr>
              <tr><td><code>s.shift(-1)</code></td><td>130 — the next value</td></tr>
              <tr><td><code>s.diff()</code></td><td>60 — change from previous</td></tr>
              <tr><td><code>s.pct_change()</code></td><td>0.667 — 66.7% growth</td></tr>
            </tbody>
          </table>
          <p>If the data contains NaN, pandas 2.x warns about <code>pct_change</code>'s old filling behaviour; pass <code>fill_method=None</code> to avoid it.</p>
        </div>
        <div class="lc-card">
          <h3>Windows per Group</h3>
          <p>With several stores in one table, a plain <code>shift</code> would leak store A's last day into store B's first day. Do it inside <code>groupby</code>:</p>
          <div class="lc-code">df["prev"]  = df.groupby("store")["sales"].shift(1)<br>df["cum"]   = df.groupby("store")["sales"].cumsum()<br>df["roll2"] = df.groupby("store")["sales"].transform(lambda x: x.rolling(2).mean())</div>
          <p>Always <strong>sort by date</strong> (within each group) before using window functions — they work on row order, not on dates, unless you use a time-based window like <code>"7D"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([2, 4, 6, 8])<br>print(s.rolling(2).mean().tolist(), s.diff().tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[nan, 3.0, 5.0, 7.0] [nan, 2.0, 2.0, 2.0]</div>
          <p>The first window is not full, and the first row has no previous value.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Moving averages of stock prices</li>
            <li>Month-on-month growth</li>
            <li>Lag features for forecasting models</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using window functions on unsorted data — the "previous row" is not the previous day.</li>
            <li>Thinking <code>shift(1)</code> gives the <em>next</em> value — it gives the previous one.</li>
            <li>Forgetting <code>groupby</code> when the table holds several series (stores, stocks, cities).</li>
            <li>Using <code>rolling(7)</code> on data with missing dates — it covers 7 <em>rows</em>, not 7 days. Use <code>rolling("7D")</code> on a DatetimeIndex.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add a 7-day moving average of visitors and compare it with the raw numbers.</li>
            <li>Add a <code>best_so_far</code> column with <code>cummax()</code>.</li>
            <li>Find the day with the biggest percentage jump using <code>pct_change()</code> and <code>idxmax()</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In machine learning on time series, <code>shift</code> and <code>rolling</code> build features from the <em>past only</em> ("sales yesterday", "average of last week"). Never use <code>shift(-1)</code> for a feature — it peeks into the future.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        import pandas as pd

        days = pd.date_range("2024-03-01", periods=10, freq="D")
        visitors = pd.Series([120, 135, 128, 160, 210, 230, 150, 145, 170, 250], index=days)

        df = pd.DataFrame({"visitors": visitors})
        df["roll3_avg"] = df["visitors"].rolling(3).mean().round(1)
        df["roll3_min1"] = df["visitors"].rolling(3, min_periods=1).mean().round(1)
        df["avg_so_far"] = df["visitors"].expanding().mean().round(1)
        df["running_total"] = df["visitors"].cumsum()
        df["yesterday"] = df["visitors"].shift(1)
        df["change"] = df["visitors"].diff()
        df["growth_pct"] = (df["visitors"].pct_change() * 100).round(1)
        print("=== Rolling, expanding, cumulative ===")
        print(df[["visitors", "roll3_avg", "roll3_min1", "avg_so_far", "running_total"]])
        print("\n=== Lag, change, growth ===")
        print(df[["visitors", "yesterday", "change", "growth_pct"]])

        print("\n=== Biggest jump ===")
        print("day:", df["growth_pct"].idxmax().date(), "| growth:", df["growth_pct"].max(), "%")

        print("\n=== Time-based window: last 3 calendar days ===")
        gappy = visitors.drop(visitors.index[[2, 3]])          # two days missing
        print(pd.DataFrame({"3 rows": gappy.rolling(3).sum(),
                            "3 days": gappy.rolling("3D").sum()}).head(5))

        print("\n=== Smoothed trend with ewm ===")
        print(visitors.ewm(span=3, adjust=False).mean().round(1).tolist())

        print("\n=== Per-group windows ===")
        shops = pd.DataFrame({
            "shop":  ["A", "A", "A", "B", "B", "B"],
            "day":   [1, 2, 3, 1, 2, 3],
            "sales": [10, 12, 9, 20, 18, 25],
        }).sort_values(["shop", "day"])
        shops["prev_day"] = shops.groupby("shop")["sales"].shift(1)
        shops["cum_sales"] = shops.groupby("shop")["sales"].cumsum()
        shops["roll2"] = shops.groupby("shop")["sales"].transform(lambda x: x.rolling(2).mean())
        print(shops)

        print("\n=== pct_change with a gap: pass fill_method=None ===")
        with_gap = pd.Series([100.0, np.nan, 120.0, 150.0])
        print(with_gap.pct_change(fill_method=None).round(3).tolist())
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Copy-on-Write and Method Chaining</h1>
        </div>
        <p class="lc-lead">Two professional habits make pandas code reliable: understanding <strong>when you are changing a copy</strong> (the famous <code>SettingWithCopyWarning</code>, fixed by <strong>Copy-on-Write</strong>), and writing transformations as clean <strong>method chains</strong>.</p>
        <div class="lc-card">
          <h3>The Problem: Views, Copies and Chained Assignment</h3>
          <p>In pandas 2 (default mode), some selections share memory with the original (views) and some don't (copies), and it's hard to predict which. Two classic bugs:</p>
          <div class="lc-code">d = pd.DataFrame({"city": ["Pune", "Delhi", "Pune"], "temp": [30, 35, 31]})<br><br># Bug 1: chained assignment — two steps: select rows, THEN set a column<br>d[d["city"] == "Pune"]["temp"] = 0        # SettingWithCopyWarning; d is unchanged<br><br># Bug 2: modifying a subset you took earlier<br>sub = d[d["city"] == "Pune"]<br>sub["temp"] = sub["temp"] + 1             # SettingWithCopyWarning (is d changed or not?)</div>
          <p>The warning means "you might be writing to a temporary copy". In both cases <code>d</code> stays <code>[30, 35, 31]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The Fixes</h3>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Write</th></tr></thead>
            <tbody>
              <tr><td>Change rows of the original</td><td><code>d.loc[d["city"] == "Pune", "temp"] = 0</code> — rows and column in <strong>one</strong> <code>.loc</code></td></tr>
              <tr><td>Work on a separate subset</td><td><code>sub = d[d["city"] == "Pune"].copy()</code> — then change <code>sub</code> freely</td></tr>
              <tr><td>Build a new table</td><td><code>d2 = d.assign(temp=d["temp"] + 1)</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Copy-on-Write (CoW)</h3>
          <p>Copy-on-Write gives one simple rule: <strong>every result of indexing or a method behaves like a copy</strong>. Changing it never changes the original. pandas avoids actually copying data until you modify something, so it stays fast.</p>
          <ul class="lc-list">
            <li><strong>pandas 3.0 (released January 2026):</strong> CoW is the only mode. <code>SettingWithCopyWarning</code> is gone, and chained assignment like <code>df[mask]["col"] = x</code> <em>never</em> works.</li>
            <li><strong>pandas 2.x (this editor):</strong> opt in with <code>pd.options.mode.copy_on_write = True</code> to get the pandas 3 behaviour today. Chained assignment then raises a <code>ChainedAssignmentError</code> warning.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Default vs CoW</h3>
          <div class="lc-code">e = pd.DataFrame({"a": [1, 2, 3]})<br>col = e["a"]<br>col.iloc[0] = 100<br>print(e["a"].tolist())             # default pandas 2 mode<br><br>with pd.option_context("mode.copy_on_write", True):<br>    e = pd.DataFrame({"a": [1, 2, 3]})<br>    col = e["a"]<br>    col.iloc[0] = 100<br>    print(e["a"].tolist(), col.tolist())</div>
          <p>Output:</p>
          <div class="lc-code">[100, 2, 3]<br>[1, 2, 3] [100, 2, 3]</div>
          <p>Without CoW, changing <code>col</code> silently changed <code>e</code> too — <code>e["a"]</code> was a view. With CoW, <code>col</code> behaves as its own copy and <code>e</code> is safe. Code written with <code>.loc</code> and <code>.copy()</code> works identically in both modes.</p>
        </div>
        <div class="lc-card">
          <h3>Method Chaining</h3>
          <p>Instead of many temporary variables, chain steps inside parentheses — one step per line, read top to bottom:</p>
          <div class="lc-code">def add_tax(df, rate):<br>    return df.assign(tax=df["amount"] * rate)<br><br>report = (<br>    orders<br>    .query("amount &gt; 50")                              # filter<br>    .assign(big=lambda x: x["amount"] &gt; 200)           # new column from the CURRENT frame<br>    .pipe(add_tax, rate=0.18)                          # your own function as a step<br>    .sort_values("amount", ascending=False)<br>    .reset_index(drop=True)<br>)</div>
          <ul class="lc-list">
            <li><code>assign(col=lambda x: ...)</code> — the lambda receives the DataFrame <em>at that step</em>, so it sees earlier filters.</li>
            <li><code>pipe(func, **kwargs)</code> — calls <code>func(df, **kwargs)</code>, letting any function join the chain.</li>
            <li>Each step returns a new DataFrame, which fits naturally with Copy-on-Write.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>Which line changes df in every pandas version? Predict first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'c': ['x', 'y'], 'v': [1, 2]})<br>df.loc[df['c'] == 'x', 'v'] = 0<br>print(df['v'].tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[0, 2]</div>
          <p>A single .loc call with rows and column always updates the original — with or without Copy-on-Write.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Safe updates in cleaning scripts</li>
            <li>Readable pipelines with pipe</li>
            <li>Upgrading code to pandas 3</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Silencing <code>SettingWithCopyWarning</code> instead of fixing the code with <code>.loc</code> or <code>.copy()</code>.</li>
            <li>Writing <code>df["col"][mask] = x</code> — also chained assignment. Use <code>df.loc[mask, "col"] = x</code>.</li>
            <li>In a chain, writing <code>.assign(big=orders["amount"] &gt; 200)</code> — it uses the <em>original</em> frame, not the filtered one. Use a lambda.</li>
            <li>Chains so long nobody can debug them. Break after logical stages, or print <code>.shape</code> with a small <code>pipe</code> helper.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, turn on <code>pd.options.mode.copy_on_write = True</code> at the top and run it again — which outputs change?</li>
            <li>Rewrite section 3 so it uses <code>assign</code> instead of <code>.copy()</code> plus assignment.</li>
            <li>Add a step to the chain that keeps only the top 3 rows by <code>total</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Future-proof rule for every pandas version: <em>modify the original with one <code>.loc[rows, cols] = ...</code>; for everything else, make new DataFrames</em> (<code>.copy()</code>, <code>assign</code>, chains).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import warnings
        import pandas as pd

        temps = pd.DataFrame({"city": ["Pune", "Delhi", "Pune", "Chennai"],
                              "temp": [30, 35, 31, 33]})

        print("=== 1. Chained assignment does NOT change temps ===")
        with warnings.catch_warnings(record=True) as caught:
            warnings.simplefilter("always")
            temps[temps["city"] == "Pune"]["temp"] = 0
        print("warnings:", [type(w.message).__name__ for w in caught])
        print("temps:", temps["temp"].tolist())

        print("\n=== 2. The fix: one .loc call ===")
        temps.loc[temps["city"] == "Pune", "temp"] = 29
        print("temps:", temps["temp"].tolist())

        print("\n=== 3. A subset you plan to change: .copy() ===")
        pune = temps[temps["city"] == "Pune"].copy()
        pune["temp"] = pune["temp"] + 1        # no warning, temps untouched
        print("pune:", pune["temp"].tolist(), "| temps:", temps["temp"].tolist())

        print("\n=== 4. Default mode vs Copy-on-Write ===")
        e = pd.DataFrame({"a": [1, 2, 3]})
        col = e["a"]
        col.iloc[0] = 100
        print("default mode, e changed too:", e["a"].tolist())
        with pd.option_context("mode.copy_on_write", True):
            e = pd.DataFrame({"a": [1, 2, 3]})
            col = e["a"]
            col.iloc[0] = 100
            print("copy-on-write, e is safe:   ", e["a"].tolist())

        print("\n=== 5. Method chaining with query, assign, pipe ===")
        orders = pd.DataFrame({"item": ["Pen", "Bag", "Book", "Lamp", "Mug"],
                               "qty": [10, 1, 3, 2, 4], "price": [20, 900, 250, 600, 150]})

        def add_gst(df, rate):
            return df.assign(gst=(df["total"] * rate).round(2))

        report = (
            orders
            .assign(total=lambda d: d["qty"] * d["price"])
            .query("total >= 500")
            .pipe(add_gst, rate=0.18)
            .sort_values("total", ascending=False)
            .reset_index(drop=True)
        )
        print(report)
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Data Cleaning and ML Preparation</h1>
        </div>
        <p class="lc-lead">Data scientists often say most of their time goes into cleaning. This lesson puts the earlier tools into one repeatable workflow — inspect, standardise, de-duplicate, fix bad values, fill gaps, validate — and then prepares the clean table for a machine-learning model.</p>
        <div class="lc-card">
          <h3>The Cleaning Workflow</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Question</th><th>Tools</th></tr></thead>
            <tbody>
              <tr><td>1. Inspect</td><td>What's here? Which types? What's missing?</td><td><code>shape</code>, <code>info()</code>, <code>isna().sum()</code>, <code>describe()</code></td></tr>
              <tr><td>2. Standardise text</td><td>Are "pune", "PUNE " and "Pune" the same?</td><td><code>.str.strip()</code>, <code>.str.title()</code>, <code>.str.lower()</code>, <code>replace</code></td></tr>
              <tr><td>3. Duplicates</td><td>Is any row entered twice?</td><td><code>duplicated()</code>, <code>drop_duplicates(subset=..., keep="first")</code></td></tr>
              <tr><td>4. Bad values</td><td>Age 230? Negative price?</td><td><code>between</code>, IQR rule, <code>clip</code>, set to missing</td></tr>
              <tr><td>5. Missing values</td><td>Drop or fill — how?</td><td><code>fillna</code>, group-wise <code>transform</code></td></tr>
              <tr><td>6. Validate</td><td>Is it really clean now?</td><td><code>assert</code>, <code>value_counts</code>, <code>describe</code></td></tr>
            </tbody>
          </table>
          <p>Wrap the steps in a function (<code>def clean(raw): ... return df</code>) or a method chain so the same cleaning runs on next month's file.</p>
        </div>
        <div class="lc-card">
          <h3>Duplicates and Outliers</h3>
          <div class="lc-code">df.duplicated().sum()                          # how many exact repeats<br>df.drop_duplicates(subset=["email"], keep="last")   # one row per email<br><br>q1, q3 = df["fee"].quantile([0.25, 0.75])<br>iqr = q3 - q1<br>outliers = df[(df["fee"] &lt; q1 - 1.5 * iqr) | (df["fee"] &gt; q3 + 1.5 * iqr)]<br>df["fee"] = df["fee"].clip(lower=0, upper=5000)     # cap extreme values<br>df.loc[~df["age"].between(15, 100), "age"] = pd.NA   # impossible → missing</div>
          <p>Don't delete outliers automatically. A ₹5 lakh order may be a typo — or your best customer. Impossible values (age 230) should become missing; unusual but possible values need a business decision.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Before and After</h3>
          <p>The starter's raw data has spaces, mixed case, a duplicate row, an age of 230 and two gaps. After the workflow:</p>
          <div class="lc-code">         name    city   plan   age  monthly_fee  churned<br>0    Asha Rao    Pune    pro  28.0        999.0        0<br>1  Ravi Kumar   Delhi  basic  34.0        299.0        1<br>2  Meera Iyer    Pune    pro  31.0        999.0        0<br>3  Kiran Shah  Mumbai   plus  41.0        599.0        0<br>4   Dev Patel  Mumbai  basic  31.0        299.0        1<br>5  Priya Nair   Delhi   plus  25.0        599.0        0<br>6  Sam Joseph    Pune  basic  31.0        299.0        1</div>
          <p>8 rows became 7 (duplicate removed); cities have one spelling each; the impossible age became missing and was filled with the median (31); Priya's missing fee was filled with the median fee of her plan (599).</p>
        </div>
        <div class="lc-card">
          <h3>From Clean Table to Model Input</h3>
          <ul class="lc-list">
            <li><strong>Features and target:</strong> <code>X = df[feature_cols]</code>, <code>y = df["churned"]</code>. Never put the target inside X.</li>
            <li><strong>One-hot encoding:</strong> <code>pd.get_dummies(X, columns=["city", "plan"], dtype="int64")</code> creates <code>city_Delhi</code>, <code>city_Mumbai</code>, … Without <code>dtype</code>, the new columns are <strong>bool</strong> (True/False) in pandas 2+.</li>
            <li><strong>Ordinal categories</strong> (basic &lt; plus &lt; pro) can instead be mapped to numbers: <code>df["plan"].map({"basic": 0, "plus": 1, "pro": 2})</code>.</li>
            <li><strong>Split:</strong> <code>train = X.sample(frac=0.8, random_state=42)</code>; <code>test = X.drop(train.index)</code>; select <code>y</code> with the same index.</li>
            <li><strong>Scale with training statistics only:</strong> compute mean/std on the training rows and apply them to both sets. Using the whole dataset "leaks" test information into training.</li>
          </ul>
          <p>In real projects scikit-learn's <code>train_test_split</code>, <code>OneHotEncoder</code>, <code>StandardScaler</code> and <code>Pipeline</code> do these steps; pandas is where you understand and prepare the data first.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What columns does this create? Predict first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'plan': ['basic', 'pro', 'basic']})<br>print(pd.get_dummies(df, columns=['plan'], dtype='int64').columns.tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">['plan_basic', 'plan_pro']</div>
          <p>One 0/1 column per category, named prefix_value.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Preparing features for scikit-learn</li>
            <li>De-duplicating customer lists</li>
            <li>Validating data with assert</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Cleaning in place with no copy of the raw data — keep <code>raw</code> untouched and build <code>df = raw.copy()</code>.</li>
            <li>De-duplicating <em>before</em> standardising text — "Pune" and "pune " look different until cleaned.</li>
            <li>Scaling or filling with statistics from the full dataset before splitting (data leakage).</li>
            <li>Forgetting that <code>get_dummies</code> on test data may produce different columns — align with <code>X_test.reindex(columns=X_train.columns, fill_value=0)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add a row with city <code>"pune "</code> and check that step 2 still gives only three cities.</li>
            <li>Encode <code>plan</code> as an ordinal number (basic=0, plus=1, pro=2) instead of dummies.</li>
            <li>Add an <code>assert</code> that every <code>monthly_fee</code> is one of 299, 599 or 999.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> End every cleaning script with checks — <code>assert df.notna().all().all()</code>, <code>assert df["age"].between(15, 100).all()</code>. If tomorrow's file breaks a rule, you find out immediately instead of in a wrong report.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        raw = pd.read_csv(io.StringIO("""name,city,plan,age,monthly_fee,churned
         Asha Rao ,pune,Pro,28,999,0
        Ravi Kumar,Delhi,basic,34,299,1
        Meera Iyer,PUNE,pro,,999,0
        Ravi Kumar,Delhi,basic,34,299,1
        Kiran Shah,Mumbai,Plus,41,599,0
        Dev Patel,mumbai,basic,230,299,1
        Priya Nair,Delhi,plus,25,,0
        Sam Joseph,Pune,basic,31,299,1
        """))
        print("=== 1. Inspect ===")
        print(raw.shape, "| missing:", raw.isna().sum().to_dict())

        print("\n=== 2. Standardise text ===")
        df = raw.copy()
        df["name"] = df["name"].str.strip()
        df["city"] = df["city"].str.strip().str.title()
        df["plan"] = df["plan"].str.lower()
        print(df["city"].value_counts().to_dict(), df["plan"].unique().tolist())

        print("\n=== 3. Duplicates ===")
        print("duplicate rows:", df.duplicated().sum())
        df = df.drop_duplicates().reset_index(drop=True)

        print("\n=== 4. Impossible values and missing ===")
        df.loc[~df["age"].between(15, 100), "age"] = pd.NA      # 230 is impossible
        # (real projects: compute fill values on the TRAINING rows only)
        df["age"] = df["age"].fillna(df["age"].median())
        df["monthly_fee"] = df["monthly_fee"].fillna(df.groupby("plan")["monthly_fee"].transform("median"))
        assert df.notna().all().all(), "still missing values"
        print(df)

        print("\n=== 5. Encode categories ===")
        X = pd.get_dummies(df[["city", "plan", "age", "monthly_fee"]], columns=["city", "plan"], dtype="int64")
        y = df["churned"]
        print(X.columns.tolist())

        print("\n=== 6. Train/test split, then scale with TRAIN stats ===")
        X_train = X.sample(frac=0.75, random_state=42)
        X_test = X.drop(X_train.index)
        mean, std = X_train["age"].mean(), X_train["age"].std()
        X_train = X_train.assign(age=(X_train["age"] - mean) / std)
        X_test = X_test.assign(age=(X_test["age"] - mean) / std)
        print("train rows:", len(X_train), "| test rows:", len(X_test))
        print("y_train:", y.loc[X_train.index].tolist())
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Capstone Project: End-to-End Sales Analysis</h1>
        </div>
        <p class="lc-lead">You are the analyst for a small stationery chain. The raw order export is messy: Indian-style dates, inconsistent city names, a duplicated order and a missing quantity. Turn it into a clear business report using everything from this course.</p>
        <div class="lc-card">
          <h3>The Brief</h3>
          <ul class="lc-list">
            <li>How much revenue did we make, and which <strong>cities</strong> contribute most?</li>
            <li>Who are our <strong>top 3 customers</strong>?</li>
            <li>How many units of each <strong>product</strong> sold per <strong>month</strong>?</li>
            <li>Is revenue growing <strong>month on month</strong>?</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Pipeline</h3>
          <table class="lc-table">
            <thead><tr><th>Stage</th><th>Code idea</th><th>Lessons</th></tr></thead>
            <tbody>
              <tr><td>Load</td><td><code>pd.read_csv(io.StringIO(text))</code></td><td>Reading and exploring</td></tr>
              <tr><td>Clean</td><td><code>drop_duplicates</code>; <code>to_datetime(format="%d/%m/%Y")</code>; <code>.str.strip().str.title()</code>; <code>fillna</code></td><td>Cleaning, dates, strings, missing data</td></tr>
              <tr><td>Chain</td><td>all cleaning inside one <code>( ... .assign(col=lambda d: ...) )</code></td><td>Method chaining</td></tr>
              <tr><td>Enrich</td><td><code>merge(products, validate="many_to_one")</code>; <code>revenue = qty * price</code></td><td>Merging, new columns</td></tr>
              <tr><td>Summarise</td><td><code>groupby().agg()</code>, shares, <code>nlargest</code></td><td>GroupBy, sorting</td></tr>
              <tr><td>Cross-tab</td><td><code>pivot_table(..., margins=True)</code> on <code>dt.to_period("M")</code></td><td>Pivot tables</td></tr>
              <tr><td>Trend</td><td><code>resample("ME").sum()</code>, <code>pct_change()</code></td><td>Dates, window functions</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: The Cleaning Chain</h3>
          <div class="lc-code">orders = (<br>    pd.read_csv(io.StringIO(orders_csv))<br>    .drop_duplicates()<br>    .assign(date=lambda d: pd.to_datetime(d["date"], format="%d/%m/%Y"),<br>            city=lambda d: d["city"].str.strip().str.title(),<br>            qty=lambda d: d["qty"].fillna(1).astype("int64"))<br>)</div>
          <p>Part of the starter's output:</p>
          <div class="lc-code">=== Clean orders: (10, 6) | missing left: 0<br>total revenue: Rs 11,029<br><br>=== Revenue by city ===<br>         revenue  share_%<br>city<br>Chennai     4150     37.6<br>Delhi       3810     34.5<br>Pune        2170     19.7<br>Mumbai       899      8.2<br>...<br>=== Monthly trend ===<br>            revenue  growth_%<br>date<br>2024-01-31     4390       NaN<br>2024-02-29     1759     -59.9<br>2024-03-31     4880     177.4</div>
          <p>11 raw rows became 10 orders. The missing quantity was assumed to be 1 — an assumption you should state in the report. February was weak; March recovered strongly.</p>
        </div>
        <div class="lc-card">
          <h3>Course Recap</h3>
          <table class="lc-table">
            <thead><tr><th>Lessons</th><th>Topic</th><th>Key tools</th></tr></thead>
            <tbody>
              <tr><td>1–2</td><td>Series, DataFrames, files</td><td><code>pd.DataFrame</code>, <code>read_csv</code>, <code>info</code>, <code>describe</code>, <code>to_csv(index=False)</code></td></tr>
              <tr><td>3–5</td><td>Selecting, filtering, sorting</td><td><code>loc</code>/<code>iloc</code>, masks, <code>query</code>, <code>sort_values</code>, <code>rank</code></td></tr>
              <tr><td>6–8</td><td>Columns, dtypes, missing data</td><td><code>assign</code>, <code>np.where</code>, <code>Int64</code>/<code>pd.NA</code>, <code>category</code>, <code>fillna</code>, <code>ffill</code></td></tr>
              <tr><td>9–11</td><td>Summaries and combining</td><td><code>agg</code>, <code>value_counts</code>, <code>groupby</code>, <code>transform</code>, <code>merge(validate=)</code>, <code>concat</code></td></tr>
              <tr><td>12–13</td><td>Text and dates</td><td><code>.str</code>, regex <code>extract</code>, <code>to_datetime</code>, <code>.dt</code>, <code>resample("ME")</code></td></tr>
              <tr><td>14–16</td><td>Reshaping and custom logic</td><td><code>pivot_table</code>, <code>crosstab</code>, <code>melt</code>, <code>unstack</code>, <code>map</code>, <code>apply</code>, vectorisation</td></tr>
              <tr><td>17–19</td><td>Windows, CoW, cleaning for ML</td><td><code>rolling</code>, <code>shift</code>, Copy-on-Write, <code>pipe</code>, <code>get_dummies</code>, leak-free splits</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([100, 150, 120])<br>print((s.pct_change() * 100).round(1).tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[nan, 50.0, -20.0]</div>
          <p>Growth from 100 to 150 is +50%; from 150 to 120 is -20%.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Monthly business reports</li>
            <li>Dashboards</li>
            <li>Any analysis you'll hand to a manager</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes in Real Projects</h3>
          <ul class="lc-list">
            <li>Merging before de-duplicating — duplicates multiply through every join.</li>
            <li>Reporting numbers without stating cleaning assumptions (filled quantities, dropped rows).</li>
            <li>Parsing dates without a format and silently swapping day and month.</li>
            <li>Forgetting to check row counts after each major step.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It — Extend the Project</h3>
          <ul class="lc-list">
            <li>Add average order value per city (<code>revenue</code> sum ÷ number of orders).</li>
            <li>Find each customer's first and last order date with <code>agg(first=("date", "min"), last=("date", "max"))</code>.</li>
            <li>Add a 2-month rolling average to the monthly trend.</li>
            <li>Export the city summary with <code>to_csv(index=False)</code> and print the text.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next steps:</strong> visualise these tables with Matplotlib or seaborn, model them with scikit-learn, and try Polars or DuckDB for data too big for pandas. The thinking you practised here — clean, combine, group, reshape, validate — carries over to all of them.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        orders_csv = """order_id,date,customer,product_id,qty,city
        1001,05/01/2024,Asha,P1,2,pune
        1002,07/01/2024,Ravi,P2,1,Delhi
        1003,07/01/2024,Meera,P3,5, Chennai
        1003,07/01/2024,Meera,P3,5, Chennai
        1004,19/01/2024,Asha,P2,,Pune
        1005,02/02/2024,Kiran,P1,3,delhi
        1006,14/02/2024,Ravi,P3,2,Delhi
        1007,28/02/2024,Dev,P4,1,Mumbai
        1008,03/03/2024,Asha,P1,4,Pune
        1009,15/03/2024,Meera,P2,2,Chennai
        1010,30/03/2024,Kiran,P3,6,Delhi
        """
        products = pd.DataFrame({"product_id": ["P1", "P2", "P3", "P4"],
                                 "product": ["Notebook", "Backpack", "Pen set", "Lamp"],
                                 "price": [120, 1450, 250, 899]})

        # 1. Load and clean
        orders = (
            pd.read_csv(io.StringIO(orders_csv))
            .drop_duplicates()
            .assign(date=lambda d: pd.to_datetime(d["date"], format="%d/%m/%Y"),
                    city=lambda d: d["city"].str.strip().str.title(),
                    qty=lambda d: d["qty"].fillna(1).astype("int64"))
        )
        print("=== Clean orders:", orders.shape, "| missing left:", int(orders.isna().sum().sum()))
        # 2. Enrich with a validated lookup
        sales = orders.merge(products, on="product_id", how="left", validate="many_to_one")
        sales["revenue"] = sales["qty"] * sales["price"]
        print("total revenue: Rs", f"{sales['revenue'].sum():,}")
        # 3. Who, where, what
        print("\n=== Revenue by city ===")
        by_city = sales.groupby("city")["revenue"].sum().sort_values(ascending=False)
        print(pd.DataFrame({"revenue": by_city, "share_%": (by_city / by_city.sum() * 100).round(1)}))
        print("\n=== Top 3 customers ===")
        print(sales.groupby("customer").agg(orders=("order_id", "nunique"), revenue=("revenue", "sum"))
                   .nlargest(3, "revenue"))
        # 4. Product x month pivot
        print("\n=== Units: product x month ===")
        sales["month"] = sales["date"].dt.to_period("M")
        print(sales.pivot_table(values="qty", index="product", columns="month",
                                aggfunc="sum", fill_value=0, margins=True))
        # 5. Monthly trend
        print("\n=== Monthly trend ===")
        monthly = sales.set_index("date")["revenue"].resample("ME").sum().to_frame()
        monthly["growth_%"] = (monthly["revenue"].pct_change() * 100).round(1)
        print(monthly)
      PYTHON
    }
  }
end

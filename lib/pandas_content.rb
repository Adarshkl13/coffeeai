module PandasContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Introduction to Pandas</h1>
        </div>
        <p class="lc-lead">pandas is a Python library for working with <strong>tables of data</strong>. Think of it as a spreadsheet that you control with code. It gives you two structures: the <strong>Series</strong> (one labelled column) and the <strong>DataFrame</strong> (a whole table).</p>
        <div class="lc-card">
          <h3>Why pandas?</h3>
          <ul class="lc-list">
            <li>Load data from CSV, Excel, JSON, SQL databases and more, in one line.</li>
            <li>Clean messy data: missing values, wrong types, duplicate rows and text that is written in different ways.</li>
            <li>Filter, sort, group and summarise millions of rows quickly. pandas is built on NumPy, so it is fast.</li>
            <li>Each column can have its own type: names as text, marks as numbers, dates as dates.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Series: Values with Labels</h3>
          <p>A Series is like a NumPy array with an <strong>index</strong>. The index is a label for every value.</p>
          <div class="lc-code">import pandas as pd<br><br>s = pd.Series([72, 85, 91], index=["Asha", "Ravi", "Meera"], name="marks")<br>print(s)<br>print(s["Ravi"])</div>
          <div class="lc-code">Asha     72<br>Ravi     85<br>Meera    91<br>Name: marks, dtype: int64<br>85</div>
          <p>If you don't give an index, pandas uses 0, 1, 2, … for you.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Your First DataFrame</h3>
          <p>A DataFrame is a group of Series that share the same row index. The easiest way to make one is from a dictionary. The keys become column names, and the lists become columns.</p>
          <div class="lc-code">df = pd.DataFrame({<br>    "name":  ["Asha", "Ravi", "Meera"],<br>    "state": ["Kerala", "Gujarat", "West Bengal"],<br>    "marks": [72, 85, 91],<br>})<br>print(df)<br>print(df.shape)<br>print(df.dtypes)</div>
          <p>Output:</p>
          <div class="lc-code">    name        state  marks<br>0   Asha       Kerala     72<br>1   Ravi      Gujarat     85<br>2  Meera  West Bengal     91<br>(3, 3)<br>name     object<br>state    object<br>marks     int64<br>dtype: object</div>
          <p>The numbers on the left (0, 1, 2) are the <strong>index</strong>. <code>shape</code> gives (rows, columns). Text columns show as <code>object</code> in pandas 2. You will learn more about dtypes (data types) in a later lesson.</p>
        </div>
        <div class="lc-card">
          <h3>The Parts of a DataFrame</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Access</th><th>Example result</th></tr></thead>
            <tbody>
              <tr><td>Row labels</td><td><code>df.index</code></td><td><code>RangeIndex(start=0, stop=3, step=1)</code></td></tr>
              <tr><td>Column names</td><td><code>df.columns</code></td><td><code>Index(['name', 'state', 'marks'], dtype='object')</code></td></tr>
              <tr><td>One column</td><td><code>df["marks"]</code></td><td>a Series</td></tr>
              <tr><td>Several columns</td><td><code>df[["name", "marks"]]</code></td><td>a DataFrame</td></tr>
              <tr><td>Types</td><td><code>df.dtypes</code></td><td>one dtype per column</td></tr>
              <tr><td>Raw values</td><td><code>df.to_numpy()</code></td><td>a NumPy array</td></tr>
            </tbody>
          </table>
          <p>You can also build a DataFrame from a <strong>list of dictionaries</strong>, with one dictionary per row. If a row has no value for a key, you get <code>NaN</code> (missing).</p>
        </div>
        <div class="lc-card">
          <h3>pandas 2 and pandas 3</h3>
          <p><strong>pandas 3.0 came out in January 2026.</strong> The editor in this course runs pandas 2.3. Later lessons cover the main 3.0 changes. Text columns get a new <code>str</code> dtype. "Copy-on-Write" makes copying work in a predictable way. All the code we teach works the same on both versions. Check your version with <code>pd.__version__</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([10, 20, 30], index=['a', 'b', 'c'])<br>print(s['b'], s.index.tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">20 ['a', 'b', 'c']</div>
          <p>You look up a value in a Series by its index label.</p>
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
            <li>Lists of different lengths in the dictionary. This gives <code>ValueError: All arrays must be of the same length</code>.</li>
            <li>Writing <code>df["name", "marks"]</code> to get two columns. You need a list inside: <code>df[["name", "marks"]]</code>.</li>
            <li>Calling <code>df.shape()</code>. <code>shape</code> is an attribute (a stored value), so do not use brackets.</li>
            <li>Thinking the index is a normal column. It is the row label, and it is not listed in <code>df.columns</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, add a column <code>"state"</code> with one value for each student.</li>
            <li>Print only the <code>name</code> and <code>fees</code> columns.</li>
            <li>Create a Series of yearly rainfall (mm) for Nagaland, West Bengal and Chhattisgarh. Use the state names as the index. Then print the value for West Bengal.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The standard imports are <code>import pandas as pd</code> and <code>import numpy as np</code>. Always print <code>df.shape</code> and <code>df.head()</code> first. Look at the data before you analyse it.
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
        rows = [{"state": "Kerala", "temp": 31}, {"state": "Rajasthan"}]
        print(pd.DataFrame(rows))
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Reading, Writing and Exploring Data</h1>
        </div>
        <p class="lc-lead">Real data usually comes in a file. <code>pd.read_csv</code> turns a CSV file into a DataFrame. A few methods help you explore what is inside. <code>to_csv</code> saves your results.</p>
        <div class="lc-card">
          <h3>read_csv</h3>
          <p>With a real file, you write <code>pd.read_csv("sales.csv")</code>. In this course, we keep the data inside the code with <code>io.StringIO</code>. It makes a string act like a file:</p>
          <div class="lc-code">import io<br>import pandas as pd<br><br>csv_text = """date,state,product,units,price<br>2024-01-05,Kerala,Tea,10,120.5<br>2024-01-06,Gujarat,Coffee,,250<br>2024-01-06,Kerala,Tea,7,120.5<br>"""<br>df = pd.read_csv(io.StringIO(csv_text), parse_dates=["date"])<br>print(df)</div>
          <div class="lc-code">        date    state product  units  price<br>0 2024-01-05   Kerala     Tea   10.0  120.5<br>1 2024-01-06  Gujarat  Coffee    NaN  250.0<br>2 2024-01-06   Kerala     Tea    7.0  120.5</div>
          <p>The empty <code>units</code> cell became <code>NaN</code> (missing). NaN is a float, so the whole <code>units</code> column became float (10.0, 7.0).</p>
        </div>
        <div class="lc-card">
          <h3>Useful read_csv Options</h3>
          <table class="lc-table">
            <thead><tr><th>Option</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>sep=";"</code></td><td>use a different separator (semicolon, tab <code>"\t"</code>)</td></tr>
              <tr><td><code>usecols=["state", "units"]</code></td><td>load only some columns</td></tr>
              <tr><td><code>dtype={"pincode": str}</code></td><td>set a column's type (this keeps leading zeros)</td></tr>
              <tr><td><code>parse_dates=["date"]</code></td><td>turn date text into real dates</td></tr>
              <tr><td><code>na_values=["NA", "-"]</code></td><td>extra strings to treat as missing</td></tr>
              <tr><td><code>nrows=1000</code></td><td>read only the first rows (a quick look at big files)</td></tr>
              <tr><td><code>index_col="id"</code></td><td>use a column as the row index</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Exploring</h3>
          <div class="lc-code">df.info(memory_usage=False)<br>print(df.describe())</div>
          <div class="lc-code">&lt;class 'pandas.core.frame.DataFrame'&gt;<br>RangeIndex: 3 entries, 0 to 2<br>Data columns (total 5 columns):<br> #   Column   Non-Null Count  Dtype<br>---  ------   --------------  -----<br> 0   date     3 non-null      datetime64[ns]<br> 1   state    3 non-null      object<br> 2   product  3 non-null      object<br> 3   units    2 non-null      float64<br> 4   price    3 non-null      float64<br>dtypes: datetime64[ns](1), float64(2), object(2)<br>         units       price<br>count  2.00000    3.000000<br>...</div>
          <p><code>info()</code> shows each column's type. It also shows how many values are <strong>not</strong> missing. "2 non-null" out of 3 tells you <code>units</code> has one gap. <code>describe()</code> gives count, mean, std, min, quartiles and max for number (and date) columns. <code>describe(include="all")</code> also gives counts and the most common value for text columns.</p>
        </div>
        <div class="lc-card">
          <h3>The Exploration Checklist</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Tells you</th></tr></thead>
            <tbody>
              <tr><td><code>df.head(n)</code> / <code>df.tail(n)</code></td><td>What do the first / last rows look like?</td></tr>
              <tr><td><code>df.shape</code></td><td>How many rows and columns?</td></tr>
              <tr><td><code>df.info()</code></td><td>Types and missing values per column</td></tr>
              <tr><td><code>df.describe()</code></td><td>Ranges and averages. Are any values impossible?</td></tr>
              <tr><td><code>df["col"].value_counts()</code></td><td>Which categories, and how often?</td></tr>
              <tr><td><code>df.nunique()</code></td><td>How many different values per column?</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Writing and Other Formats</h3>
          <div class="lc-code">df.to_csv("clean.csv", index=False)      # to a file<br>text = df.to_csv(index=False)             # or to a string</div>
          <p>Without <code>index=False</code>, pandas writes the row numbers as an extra column with no name. Other read and write functions work the same way: <code>read_excel</code>/<code>to_excel</code> (needs openpyxl), <code>read_json</code>/<code>to_json</code>, <code>read_parquet</code>/<code>to_parquet</code> (fast, keeps types; needs pyarrow), and <code>read_sql</code> (with a database connection).</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many columns will this DataFrame have? Guess first, then run it in the editor.</p>
          <div class="lc-code">import io<br>text = 'a,b,c\n1,2,3\n'<br>print(pd.read_csv(io.StringIO(text), usecols=['a', 'c']).shape)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">(1, 2)</div>
          <p>There is one data row, and usecols kept only 2 of the 3 columns.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Reading only the columns you need from very big files</li>
            <li>Keeping codes such as pincodes as text</li>
            <li>Exporting cleaned results</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>index=False</code> in <code>to_csv</code>. Then you find an <code>Unnamed: 0</code> column the next time you load the file.</li>
            <li>Letting pincodes or phone numbers load as integers. The leading zeros are lost. Use <code>dtype={"pincode": str}</code>.</li>
            <li>Not checking <code>info()</code>. Numbers stored as text (object) cannot be added up correctly.</li>
            <li>Passing the CSV text itself to <code>read_csv</code>. It needs a file path or a file-like object, such as <code>io.StringIO(text)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, load only the <code>state</code> and <code>amount</code> columns with <code>usecols</code>.</li>
            <li>Remove <code>na_values=["-"]</code> from the starter code and run it again. What is the dtype of <code>amount</code> in <code>info()</code> now, and why?</li>
            <li>Save only the Kerala rows with <code>to_csv(index=False)</code>, read the text back and print its shape.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Make <code>head()</code>, <code>info()</code> and <code>describe()</code> the first three lines of every analysis. They find wrong types, missing values and impossible numbers before these cause problems.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        csv_text = """order_id,date,state,item,qty,amount
        101,2024-03-01,Kerala,Notebook,3,150
        102,2024-03-01,Gujarat,Pen,10,-
        103,2024-03-02,Kerala,Bag,1,899
        104,2024-03-03,West Bengal,Notebook,5,250
        105,2024-03-03,Gujarat,Bag,2,1798
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
        print(df["state"].value_counts())
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
        <p class="lc-lead">pandas has two main ways to pick rows and columns. <code>.loc</code> selects by <strong>label</strong> (index values and column names). <code>.iloc</code> selects by <strong>position</strong> (0, 1, 2, …). If you know which one to use, you avoid many common bugs.</p>
        <div class="lc-card">
          <h3>Selecting Columns</h3>
          <div class="lc-code">df["marks"]              # one column → Series<br>df[["name", "marks"]]    # list of columns → DataFrame</div>
          <p>Use square brackets alone for columns (and for boolean filters, in the next lesson). For rows, use <code>.loc</code> or <code>.iloc</code>.</p>
        </div>
        <div class="lc-card">
          <h3>loc vs iloc</h3>
          <table class="lc-table">
            <thead><tr><th></th><th><code>.loc[rows, cols]</code></th><th><code>.iloc[rows, cols]</code></th></tr></thead>
            <tbody>
              <tr><td>Selects by</td><td>labels (index values, column names)</td><td>integer positions</td></tr>
              <tr><td>Slice end</td><td><strong>included</strong>: <code>loc[1:3]</code> gives labels 1, 2, 3</td><td><strong>excluded</strong>: <code>iloc[1:3]</code> gives positions 1, 2</td></tr>
              <tr><td>Columns</td><td>by name: <code>"name":"state"</code></td><td>by number: <code>0:2</code></td></tr>
              <tr><td>Boolean mask (True/False list)</td><td>yes: <code>loc[df["marks"] &gt; 80]</code></td><td>only a NumPy array or list of booleans</td></tr>
              <tr><td>Single value (fast)</td><td><code>df.at[2, "marks"]</code></td><td><code>df.iat[2, 2]</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Same Idea, Different Rules</h3>
          <div class="lc-code">df = pd.DataFrame({"name": ["Asha", "Ravi", "Meera", "Kiran", "Dev"],<br>                   "state": ["Kerala", "Gujarat", "West Bengal", "Kerala", "Gujarat"],<br>                   "marks": [72, 85, 91, 64, 78]})<br>print(df.loc[1:3, "name":"state"])<br>print(df.iloc[1:3, 0:2])</div>
          <p>Output:</p>
          <div class="lc-code">    name        state<br>1   Ravi      Gujarat<br>2  Meera  West Bengal<br>3  Kiran       Kerala<br>    name        state<br>1   Ravi      Gujarat<br>2  Meera  West Bengal</div>
          <p><code>loc[1:3]</code> returned <strong>three</strong> rows (labels 1 to 3, end included). <code>iloc[1:3]</code> returned <strong>two</strong> rows (positions 1 and 2, like normal Python slicing).</p>
        </div>
        <div class="lc-card">
          <h3>When Labels and Positions Differ</h3>
          <p>With the default 0, 1, 2 index, labels and positions look the same. After <code>set_index</code>, sorting or filtering, they are different:</p>
          <div class="lc-code">s = df.set_index("name")<br>s.loc["Ravi", "marks"]     # 85 — by label<br>s.iloc[1, 1]               # 85 — row 1, column 1 (state is column 0 now)<br>s.loc["Ravi":"Kiran"]      # Ravi, Meera, Kiran (end included)<br>s.loc[0]                   # KeyError: 0 — there is no label 0<br><br>x = pd.DataFrame({"v": [10, 20, 30]}, index=[2, 0, 1])<br>x.loc[0, "v"], x.iloc[0, 0]    # (20, 10) — label 0 vs first row</div>
        </div>
        <div class="lc-card">
          <h3>Series or DataFrame?</h3>
          <p>A single label gives a <strong>Series</strong>. A list gives a <strong>DataFrame</strong>. So <code>df.loc[0]</code> is a Series (the row turned on its side), but <code>df.loc[[0]]</code> is a DataFrame with one row.</p>
        </div>
        <div class="lc-card">
          <h3>Changing Values the Right Way</h3>
          <p>Select the rows and the column in <strong>one</strong> <code>.loc</code> call:</p>
          <div class="lc-code">df.loc[df["state"] == "Kerala", "marks"] += 5   # ✔ updates df<br>df.at[2, "marks"] = 95                         # ✔ one cell<br>df[df["state"] == "Kerala"]["marks"] += 5        # ✘ "chained assignment" — does not update df</div>
          <p>The last line takes a filtered copy and changes only the copy. In pandas 2 it may show a warning (<code>SettingWithCopyWarning</code>). In pandas 3 it never works. The lesson "Copy-on-Write and Method Chaining" explains why.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'v': [10, 20, 30]}, index=['x', 'y', 'z'])<br>print(df.loc['x':'y', 'v'].tolist(), df.iloc[0:1, 0].tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[10, 20] [10]</div>
          <p>loc slices include the end label 'y'. iloc slices do not include the end position 1.</p>
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
            <li>Expecting <code>loc[0:2]</code> to return 2 rows. It returns labels 0, 1 <em>and</em> 2.</li>
            <li>Using <code>iloc</code> with column names (<code>iloc[:, "marks"]</code>). iloc only takes integers.</li>
            <li>Using <code>loc</code> with positions after filtering or sorting. By then the labels are no longer 0, 1, 2 …</li>
            <li>Chained assignment (two selections in a row), such as <code>df[mask]["col"] = value</code>. Use <code>df.loc[mask, "col"] = value</code> instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, use <code>.loc</code> to print the rent of Karnataka and Haryana only.</li>
            <li>Use <code>.iloc</code> to print the last two rows and the first two columns.</li>
            <li>Add ₹1500 to <code>rent</code> for every state where it is above 25000. Use a single <code>.loc</code> assignment.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Remember it like this: "<strong>loc</strong> = <strong>l</strong>abel, <strong>iloc</strong> = <strong>i</strong>nteger position". If you are not sure, set a useful index (like state names) and use <code>.loc</code>. Code that uses labels is easier to read.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        df = pd.DataFrame({
            "state": ["Maharashtra", "Gujarat", "Karnataka", "Haryana", "Kerala"],
            "region": ["West", "West", "South", "North", "South"],
            "rent":  [42000, 28000, 30000, 22000, 21000],   # 2BHK monthly rent
            "furnished": [True, True, True, True, False],
        })

        print("=== Columns ===")
        print(df["rent"].tolist())
        print(df[["state", "rent"]].head(2))

        print("\n=== loc: labels, end INCLUDED ===")
        print(df.loc[1:3, "state":"rent"])

        print("\n=== iloc: positions, end EXCLUDED ===")
        print(df.iloc[1:3, 0:2])

        print("\n=== A meaningful index ===")
        by_state = df.set_index("state")
        print(by_state.loc[["Gujarat", "Kerala"], ["rent"]])
        print("Gujarat rent (loc):", by_state.loc["Gujarat", "rent"])
        print("row 1, col 1 (iloc):", by_state.iloc[1, 1])

        print("\n=== Series vs DataFrame ===")
        print(type(df.loc[0]).__name__, "vs", type(df.loc[[0]]).__name__)

        print("\n=== Boolean mask inside loc ===")
        print(df.loc[df["rent"] > 25000, ["state", "rent"]])

        print("\n=== Updating with one loc call ===")
        df.loc[df["region"] == "West", "rent"] += 2000      # rows AND column in one call
        df.at[3, "furnished"] = False
        print(df)

        print("\n=== Label vs position after sorting ===")
        ranked = df.sort_values("rent")
        print("first row by position:", ranked.iloc[0]["state"])
        print("row with label 0     :", ranked.loc[0, "state"])
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Filtering Rows and query()</h1>
        </div>
        <p class="lc-lead">Filtering keeps only the rows that match a condition. For example: "orders above ₹500", "students from Kerala" or "flights more than an hour late". pandas does this with <strong>boolean masks</strong> (lists of True/False values) or with the easy-to-read <code>.query()</code> method.</p>
        <div class="lc-card">
          <h3>Boolean Masks</h3>
          <p>A comparison on a column gives a Series of True/False values, one for each row. Put it inside square brackets to keep the True rows.</p>
          <div class="lc-code">mask = df["marks"] &gt; 80      # True/False for each row<br>df[mask]                     # rows where mask is True<br>df.loc[mask, ["name"]]       # same rows, chosen columns</div>
        </div>
        <div class="lc-card">
          <h3>Combining Conditions</h3>
          <table class="lc-table">
            <thead><tr><th>Meaning</th><th>Operator</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>and</td><td><code>&amp;</code></td><td><code>(df["marks"] &gt;= 70) &amp; (df["state"] != "Gujarat")</code></td></tr>
              <tr><td>or</td><td><code>|</code></td><td><code>(df["state"] == "Kerala") | (df["marks"] &gt; 90)</code></td></tr>
              <tr><td>not</td><td><code>~</code></td><td><code>~df["state"].isin(["Kerala"])</code></td></tr>
            </tbody>
          </table>
          <p>Use <code>&amp; | ~</code>, not Python's <code>and / or / not</code>. Also put <strong>brackets around every condition</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Helper Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Keeps rows where…</th></tr></thead>
            <tbody>
              <tr><td><code>df["state"].isin(["Kerala", "West Bengal"])</code></td><td>the value is in a list</td></tr>
              <tr><td><code>df["marks"].between(70, 85)</code></td><td>70 ≤ value ≤ 85 (both ends are included by default)</td></tr>
              <tr><td><code>df["name"].str.contains("an")</code></td><td>the text contains a smaller piece of text</td></tr>
              <tr><td><code>df["name"].str.startswith("K")</code></td><td>the text starts with something</td></tr>
              <tr><td><code>df["phone"].notna()</code></td><td>the value is not missing</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">print(df[(df["marks"] &gt;= 70) &amp; (df["state"] != "Gujarat")])<br>print(df[df["marks"].between(70, 85)])</div>
          <p>Output:</p>
          <div class="lc-code">    name        state  marks<br>0   Asha       Kerala     72<br>2  Meera  West Bengal     91<br>   name    state  marks<br>0  Asha   Kerala     72<br>1  Ravi  Gujarat     85<br>4   Dev  Gujarat     78</div>
          <p>Notice that the index labels (0, 2) come from the original rows. Add <code>.reset_index(drop=True)</code> if you want 0, 1, 2 again.</p>
        </div>
        <div class="lc-card">
          <h3>query(): Filters as Easy-to-Read Text</h3>
          <p><code>df.query()</code> takes the condition as a string. Inside it, you can use <code>and</code>, <code>or</code> and <code>not</code>. You can use Python variables with <code>@</code>:</p>
          <div class="lc-code">df.query("marks &gt; 75 and state == 'Gujarat'")<br>limit = 80<br>df.query("marks &gt;= @limit")<br>df.query("state in ['Kerala', 'West Bengal']")<br>df.query("`first name` == 'Asha'")     # backticks for names with spaces</div>
          <p>Output of the first line:</p>
          <div class="lc-code">   name    state  marks<br>1  Ravi  Gujarat     85<br>4   Dev  Gujarat     78</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many rows are kept? Guess first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'m': [55, 70, 85, 90]})<br>print(len(df[df['m'].between(70, 85)]), len(df.query('m &gt; 60 and m &lt; 90')))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">2 2</div>
          <p>between includes both ends (70 and 85). The query keeps 70 and 85 too.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Finding late deliveries</li>
            <li>Selecting a date range</li>
            <li>Picking customers from certain states</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>df[df["marks"] &gt; 70 and df["state"] == "Kerala"]</code> gives the error <code>ValueError: The truth value of a Series is ambiguous</code>. Use <code>&amp;</code> with brackets.</li>
            <li>Missing brackets: <code>df["marks"] &gt; 70 &amp; df["state"] == "Kerala"</code>. Here <code>&amp;</code> runs first, so the expression fails.</li>
            <li>Using <code>==</code> with a list. Use <code>.isin([...])</code> instead.</li>
            <li>Forgetting <code>@</code> before a variable inside <code>query</code>. Then pandas looks for a <em>column</em> with that name.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, find all IndiGo or Akasa Air flights that are more than 10 minutes late. Do it once with a mask and once with <code>query</code>.</li>
            <li>List the flights with a delay between 10 and 60 minutes.</li>
            <li>Store a limit in a variable and use it inside <code>query</code> with <code>@</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Give long masks names: <code>is_late = df["delay"] &gt; 30</code>, <code>is_morning = df["hour"] &lt; 12</code>, then <code>df[is_late &amp; is_morning]</code>. It reads like English and is easy to debug.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        flights = pd.DataFrame({
            "flight":  ["6E201", "AI865", "QP995", "6E554", "AI101", "SG117", "QP707"],
            "airline": ["IndiGo", "Air India", "Akasa Air", "IndiGo", "Air India", "SpiceJet", "Akasa Air"],
            "origin":  ["South", "West", "North", "West", "North", "South", "West"],
            "delay":   [5, 45, 0, 72, 18, 35, 12],     # minutes
        })

        print("=== A boolean mask ===")
        is_late = flights["delay"] > 30
        print(is_late.tolist())
        print(flights[is_late])

        print("\n=== & (and), | (or), ~ (not) ===")
        print(flights[(flights["origin"] == "West") & (flights["delay"] > 10)])
        print(flights[(flights["delay"] == 0) | (flights["delay"] > 60)][["flight", "delay"]])
        print("not from South:", flights[~(flights["origin"] == "South")]["flight"].tolist())

        print("\n=== isin and between ===")
        big_two = flights["airline"].isin(["IndiGo", "Air India"])
        print(flights[big_two & is_late])
        print(flights[flights["delay"].between(10, 40)]["flight"].tolist())

        print("\n=== String filter ===")
        print(flights[flights["flight"].str.startswith("6E")]["flight"].tolist())

        print("\n=== The same filters with query() ===")
        limit = 30
        print(flights.query("delay > @limit and origin != 'South'"))
        print(flights.query("airline in ['Akasa Air', 'SpiceJet']").reset_index(drop=True))

        print("\n=== and/or on Series fails ===")
        try:
            flights[(flights["delay"] > 10) and (flights["origin"] == "West")]
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
        <p class="lc-lead">Sorting puts rows in order, such as highest salary first or oldest date first. Ranking gives each row a position number, like a merit list. You will use both often for reports and leaderboards.</p>
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
          <p>The missing salary (NaN) goes last. Each row keeps its original index label when it moves. That is why the index now reads 0, 3, 1, 2, 4.</p>
        </div>
        <div class="lc-card">
          <h3>Top-N and Clean Index</h3>
          <ul class="lc-list">
            <li><code>df.nlargest(3, "salary")</code> / <code>df.nsmallest(3, "salary")</code> give the top or bottom rows. This is faster than sorting everything.</li>
            <li><code>.reset_index(drop=True)</code> numbers the rows 0, 1, 2… again after sorting. <code>drop=True</code> throws away the old index instead of adding it as a column.</li>
            <li><code>key=</code> changes the values before comparing them. For example, to sort without caring about capital letters: <code>df.sort_values("name", key=lambda s: s.str.lower())</code>. Without it, capital letters come before small letters. So a name typed in small letters, like "anil", goes last: <code>['Dev', 'Meera', 'anil']</code>. With the <code>key</code>, you get <code>['anil', 'Dev', 'Meera']</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>rank(): Handling Ties</h3>
          <p><code>rank()</code> gives rank 1 to the smallest value by default. Use <code>ascending=False</code> so the highest value gets rank 1. The <code>method</code> decides what equal values (ties) get. For salaries 52000, 61000, 61000, 48000:</p>
          <table class="lc-table">
            <thead><tr><th>method</th><th>Ranks (high = 1)</th><th>Ties get…</th></tr></thead>
            <tbody>
              <tr><td><code>"average"</code> (default)</td><td>3.0, 1.5, 1.5, 4.0</td><td>the average of their positions</td></tr>
              <tr><td><code>"min"</code></td><td>3, 1, 1, 4</td><td>the best position (sports style: 1, 1, 3)</td></tr>
              <tr><td><code>"dense"</code></td><td>2, 1, 1, 3</td><td>same rank, no gaps afterwards</td></tr>
              <tr><td><code>"first"</code></td><td>3, 1, 2, 4</td><td>the one that comes first gets the better rank</td></tr>
            </tbody>
          </table>
          <p>Missing values get a rank of NaN. Ranks are floats. Convert them with <code>.astype("Int64")</code> if you want whole numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([30, 10, 20])<br>print(s.sort_values().index.tolist(), s.rank().tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1, 2, 0] [3.0, 1.0, 2.0]</div>
          <p>Sorting keeps the original labels. rank gives 1 to the smallest value by default.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Merit lists</li>
            <li>Top-N product reports</li>
            <li>Leaderboards that handle ties fairly</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling <code>df.sort_values("marks")</code> and then printing <code>df</code>. The original is not changed. Save the result in a variable.</li>
            <li>Passing one <code>ascending</code> value when you sort by many columns in different directions. Pass a list instead.</li>
            <li>Forgetting <code>ascending=False</code> in <code>rank()</code>. Then the <em>lowest</em> score gets rank 1.</li>
            <li>Using <code>df.loc[0]</code> after sorting to get the "first" row. That gives label 0. Use <code>df.iloc[0]</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, sort the batters by <code>team</code> A→Z and then by <code>runs</code> high→low.</li>
            <li>Add a column <code>team_rank</code> with a dense rank over the whole list. Compare it with <code>method="min"</code>.</li>
            <li>Print the 2 lowest strike rates with <code>nsmallest</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For merit lists and leaderboards, use <code>rank(ascending=False, method="min")</code>. It ranks ties the way people usually do ("joint 1st, then 3rd").
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
        <p class="lc-lead">Most analysis means making new columns from existing ones, such as totals, taxes, flags and categories. pandas does this with expressions that work on a whole column at once (vectorised). You do not need loops.</p>
        <div class="lc-card">
          <h3>Assigning a New Column</h3>
          <div class="lc-code">df["total"] = df["price"] * df["qty"]     # column × column, row by row<br>df["gst"]   = df["total"] * 0.05          # column × number<br>df["label"] = "retail"                    # one value for every row<br>df["is_big"] = df["total"] &gt; 150          # a True/False column</div>
          <p>If the column already exists, it is replaced. If not, it is added at the end.</p>
        </div>
        <div class="lc-card">
          <h3>Conditional Columns: np.where and np.select</h3>
          <ul class="lc-list">
            <li><strong>Two outcomes:</strong> <code>np.where(condition, value_if_true, value_if_false)</code>.</li>
            <li><strong>Many outcomes:</strong> <code>np.select([cond1, cond2], [choice1, choice2], default=...)</code>. The first True condition wins.</li>
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
          <p><code>assign</code> returns a <strong>new</strong> DataFrame with extra columns. With a <code>lambda</code> (a small function), later columns can use earlier ones. This is useful in method chains:</p>
          <div class="lc-code">out = d.assign(<br>    with_gst=lambda x: x["total"] + x["gst"],<br>    big=lambda x: x["with_gst"] &gt; 150,<br>)</div>
        </div>
        <div class="lc-card">
          <h3>Renaming, Dropping, Inserting, Converting</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Code</th></tr></thead>
            <tbody>
              <tr><td>Rename columns</td><td><code>df = df.rename(columns={"qty": "quantity"})</code></td></tr>
              <tr><td>Drop columns</td><td><code>df = df.drop(columns=["gst", "size"])</code></td></tr>
              <tr><td>Insert at a position</td><td><code>df.insert(1, "code", ["T1", "C1", "J1"])</code> (changes df directly)</td></tr>
              <tr><td>Change type</td><td><code>df["qty"] = df["qty"].astype("float64")</code></td></tr>
              <tr><td>Update some rows only</td><td><code>df.loc[df["item"] == "Tea", "price"] = 25</code></td></tr>
            </tbody>
          </table>
          <p>It is better to <strong>reassign</strong> (<code>df = df.drop(...)</code>) than to use <code>inplace=True</code>. The pandas team advises against <code>inplace</code>. It rarely saves memory, and it breaks method chains.</p>
        </div>
        <div class="lc-card">
          <h3>Index Alignment: pandas Matches Labels, Not Positions</h3>
          <p>When you combine two Series (or add a Series as a column), pandas first matches them by their <strong>index labels</strong>. A label that exists on only one side gets <code>NaN</code>, because there is nothing to add it to.</p>
          <div class="lc-code">jan = pd.Series({"Tea": 200, "Coffee": 180, "Juice": 120})<br>feb = pd.Series({"Coffee": 150, "Tea": 210, "Lassi": 90})<br>print(jan + feb)<br>print(jan.add(feb, fill_value=0))</div>
          <p>Output:</p>
          <div class="lc-code">Coffee    330.0<br>Juice       NaN<br>Lassi       NaN<br>Tea       410.0<br>dtype: float64<br>Coffee    330.0<br>Juice     120.0<br>Lassi      90.0<br>Tea       410.0<br>dtype: float64</div>
          <ul class="lc-list">
            <li>Tea is 200 + 210, even though it is first in <code>jan</code> and second in <code>feb</code>. Labels are matched, not positions. The result has all labels from both sides, sorted.</li>
            <li><code>add</code>, <code>sub</code>, <code>mul</code> and <code>div</code> take <code>fill_value=0</code>. Then a missing side counts as 0 instead of giving NaN.</li>
            <li>The same rule works for columns. <code>df["stock"] = some_series</code> puts each value on the row with the <em>same index label</em>. Rows with no match get NaN. Use <code>.to_numpy()</code> only when you really want to match "by position".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'p': [100, 250]})<br>out = df.assign(big=lambda d: d['p'] &gt; 200)<br>print(out['big'].tolist(), 'big' in df.columns)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[False, True] False</div>
          <p>assign returns a new DataFrame. df itself does not change.</p>
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
            <li>Using <code>df.total = ...</code> (attribute style) to make a column. This sets a Python attribute, not a column. Always use <code>df["total"]</code>.</li>
            <li>Writing a Python <code>if</code> on a whole column (<code>if df["total"] &gt; 150:</code>). This gives the error "truth value of a Series is ambiguous". Use <code>np.where</code>.</li>
            <li>Calling <code>df.drop("gst")</code> without <code>columns=</code>. Then pandas looks for a <em>row</em> labelled "gst".</li>
            <li>Forgetting to save the result of <code>rename</code>, <code>drop</code> or <code>assign</code>.</li>
            <li>Adding two Series with partly different indexes and getting NaN by surprise. This is index alignment. Use <code>.add(other, fill_value=0)</code> if a missing label should count as 0.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, add <code>discount</code>: 10% of <code>amount</code> for members, else 0 (use <code>np.where</code>).</li>
            <li>Add a "Platinum" level to the <code>np.select</code> for <code>tier</code>: amount ≥ 7000. Which customer moves up?</li>
            <li>Use <code>assign</code> to make a new DataFrame with <code>final</code> = <code>total</code> minus <code>discount</code>. Check that <code>orders</code> has no <code>final</code> column.</li>
            <li>In the alignment part, change <code>jan + feb</code> to <code>jan.sub(feb, fill_value=0)</code>. Guess each value before you run it.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you want to use a loop to build a column, try an expression first: maths, <code>np.where</code>, <code>np.select</code> or a <code>.str</code> method. It is shorter and much faster.
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

        print("\n=== Index alignment: labels are matched, not positions ===")
        jan = pd.Series({"Tea": 200, "Coffee": 180, "Juice": 120})
        feb = pd.Series({"Coffee": 150, "Tea": 210, "Lassi": 90})
        print("jan + feb:          ", (jan + feb).to_dict())
        print("add(fill_value=0):  ", jan.add(feb, fill_value=0).to_dict())
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Data Types: Numeric, Nullable, Category and String</h1>
        </div>
        <p class="lc-lead">Every column has a <strong>dtype</strong> (data type). The right dtype makes maths work and shows missing values correctly. It can also cut memory use a lot. Wrong dtypes, like numbers stored as text, are one of the most common data bugs.</p>
        <div class="lc-card">
          <h3>The Main dtypes</h3>
          <table class="lc-table">
            <thead><tr><th>dtype</th><th>Holds</th><th>Missing value</th></tr></thead>
            <tbody>
              <tr><td><code>int64</code></td><td>whole numbers</td><td>cannot hold missing values</td></tr>
              <tr><td><code>float64</code></td><td>decimals</td><td><code>NaN</code></td></tr>
              <tr><td><code>bool</code></td><td>True / False</td><td>cannot hold missing values</td></tr>
              <tr><td><code>object</code></td><td>Python objects, usually text in pandas 2</td><td><code>None</code> / <code>NaN</code></td></tr>
              <tr><td><code>datetime64[ns]</code></td><td>dates and times</td><td><code>NaT</code></td></tr>
              <tr><td><code>category</code></td><td>a small set of labels that repeat</td><td><code>NaN</code></td></tr>
              <tr><td><code>Int64</code>, <code>Float64</code>, <code>boolean</code>, <code>string</code></td><td><strong>nullable</strong> versions that can hold missing values (capital I, F)</td><td><code>&lt;NA&gt;</code> (<code>pd.NA</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Converting Types</h3>
          <ul class="lc-list">
            <li><code>df["col"].astype("float64")</code> converts the column. It gives an error if any value can't be converted.</li>
            <li><code>pd.to_numeric(df["col"], errors="coerce")</code> converts text to numbers. Bad values become <code>NaN</code>.</li>
            <li><code>pd.to_datetime(df["col"])</code> converts text to dates (see "Working with Dates and Times").</li>
            <li><code>df.convert_dtypes()</code> lets pandas choose the best nullable dtype for every column.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Numbers Stored as Text</h3>
          <div class="lc-code">df = pd.DataFrame({"age": ["25", "31", "unknown", "40"]})<br>try:<br>    df["age"].astype("int64")<br>except ValueError as e:<br>    print("ValueError:", e)<br>print(pd.to_numeric(df["age"], errors="coerce"))</div>
          <p>Output:</p>
          <div class="lc-code">ValueError: invalid literal for int() with base 10: 'unknown'<br>0    25.0<br>1    31.0<br>2     NaN<br>3    40.0<br>Name: age, dtype: float64</div>
          <p><code>astype</code> fails because of "unknown". <code>to_numeric(errors="coerce")</code> turns it into NaN. NaN is a float, so the ages become 25.0, 31.0 … Nullable types help with this.</p>
        </div>
        <div class="lc-card">
          <h3>Nullable Types and pd.NA</h3>
          <p>A normal <code>int64</code> column can't store a missing value. So pandas quietly changes it to <code>float64</code>. The nullable <code>Int64</code> (capital I) keeps whole numbers <em>and</em> allows gaps, shown as <code>&lt;NA&gt;</code>:</p>
          <div class="lc-code">s = pd.Series([1, None, 3], dtype="Int64")<br>print(s.tolist(), s.sum(), s.mean())   # [1, &lt;NA&gt;, 3] 4 2.0<br>print(pd.NA | True, pd.NA &amp; False, pd.NA + 1)   # True False &lt;NA&gt;</div>
          <p><code>pd.NA</code> means "unknown". Maths with it gives <code>&lt;NA&gt;</code>. But some logic still has an answer: "unknown OR True" is True. Check for it with <code>isna()</code>, never with <code>==</code>. Summaries like <code>sum()</code> and <code>mean()</code> skip missing values.</p>
        </div>
        <div class="lc-card">
          <h3>category: Save Memory, Add Order</h3>
          <p>Some columns, like <code>state</code>, have a few values repeated thousands of times. You can store them as <code>category</code>. Each value is kept once, and each row stores a small integer code. In the starter code, 30,000 state names get more than 10× smaller. Ordered categories also let you sort and compare labels in a logical order:</p>
          <div class="lc-code">size = pd.Categorical(["low", "high", "mid"],<br>                      categories=["low", "mid", "high"], ordered=True)<br>pd.Series(size).sort_values().tolist()   # ['low', 'mid', 'high']</div>
        </div>
        <div class="lc-card">
          <h3>Strings: object Today, str in pandas 3</h3>
          <p>In pandas 2, text columns are <code>object</code> by default. You can choose to use a special <code>"string"</code> dtype. <strong>pandas 3.0 (January 2026) makes a new <code>str</code> dtype the default for text</strong>, shown as <code>dtype: str</code>. In pandas 2.3, you can try it early with <code>pd.options.future.infer_string = True</code>. Code that uses <code>.str</code> methods and <code>isna()</code> works in both. Code that checks <code>dtype == object</code> may break in pandas 3.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([1, None, 3])<br>print(s.dtype, s.astype('Int64').dtype)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">float64 Int64</div>
          <p>A missing value forces normal integers to become float64. Nullable Int64 keeps them as whole numbers.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Fixing numbers stored as text</li>
            <li>Saving memory with category</li>
            <li>Keeping IDs as integers even when some are missing</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Adding up a column that is really text: <code>"10" + "20"</code> gives <code>"1020"</code>. Check <code>df.dtypes</code> first.</li>
            <li>Mixing up <code>int64</code> (no missing values) and <code>Int64</code> (nullable).</li>
            <li>Checking <code>value == pd.NA</code> or <code>value == np.nan</code>. Use <code>pd.isna(value)</code>.</li>
            <li>Using <code>category</code> for columns where most values are different (like names). It uses <em>more</em> memory.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, change one rating to <code>"four"</code> and run it again. What does <code>to_numeric</code> do with it, and how many values are missing now?</li>
            <li>Change the visits of <code>u2</code> from <code>None</code> to <code>0</code>. How do the sum and the mean change, and why?</li>
            <li>Add a fourth plan, "max", above "pro" in the ordered category. Give one user that plan, then list the users above "plus".</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Right after you load data, run <code>df.dtypes</code>. If a column that should hold numbers shows <code>object</code>, a bad value is hiding in it. Find it with <code>df[pd.to_numeric(df["col"], errors="coerce").isna()]</code>.
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
        states = pd.Series(["Kerala", "Gujarat", "Nagaland"] * 10_000)
        obj_mem = states.memory_usage(deep=True)
        cat_mem = states.astype("category").memory_usage(deep=True)
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
        <p class="lc-lead">Real datasets have gaps. A sensor stopped working, a customer skipped a question, or a record was lost. pandas marks these values as missing. It gives you tools to <strong>find</strong>, <strong>drop</strong> or <strong>fill</strong> them. The hard part is choosing the right way.</p>
        <div class="lc-card">
          <h3>How Missing Values Look</h3>
          <table class="lc-table">
            <thead><tr><th>Marker</th><th>Where you see it</th></tr></thead>
            <tbody>
              <tr><td><code>NaN</code></td><td>float columns (the most common case)</td></tr>
              <tr><td><code>None</code></td><td>object (text) columns</td></tr>
              <tr><td><code>NaT</code></td><td>datetime columns ("not a time")</td></tr>
              <tr><td><code>&lt;NA&gt;</code> (<code>pd.NA</code>)</td><td>nullable dtypes such as <code>Int64</code>, <code>string</code>, <code>boolean</code></td></tr>
            </tbody>
          </table>
          <p>You don't need to remember which is which. <code>isna()</code> / <code>notna()</code> and <code>pd.isna(value)</code> find all of them.</p>
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
              <tr><td><code>df.dropna(thresh=2)</code></td><td>rows with fewer than 2 values that are not missing</td></tr>
              <tr><td><code>df.dropna(axis=1)</code></td><td>columns (instead of rows) that have gaps</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Filling</h3>
          <div class="lc-code">df["temp"].fillna(0)                          # a fixed value<br>df["temp"].fillna(df["temp"].median())        # a statistic<br>df.fillna({"temp": 30.0, "aqi": 0})           # different value per column<br>df["temp"].ffill()                            # carry the last known value forward<br>df["temp"].bfill()                            # use the next known value<br>df["temp"].interpolate()                      # straight line between neighbours</div>
          <p><strong>Old way, don't use it:</strong> <code>df.fillna(method="ffill")</code>. It was deprecated (marked as old) in pandas 2.1 and <strong>removed in pandas 3.0</strong>. Use <code>df.ffill()</code> and <code>df.bfill()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Fill Strategies Compared</h3>
          <div class="lc-code">df = pd.DataFrame({"state": ["Kerala", "Kerala", "Gujarat", "Gujarat", "Gujarat"],<br>                   "temp": [31.0, np.nan, 38.0, np.nan, 40.0]})<br>print(df["temp"].ffill().tolist())<br>print(df["temp"].bfill().tolist())<br>print(df["temp"].interpolate().tolist())<br>state_mean = df.groupby("state")["temp"].transform("mean")<br>print(df["temp"].fillna(state_mean).tolist())</div>
          <p>Output:</p>
          <div class="lc-code">[31.0, 31.0, 38.0, 38.0, 40.0]<br>[31.0, 38.0, 38.0, 40.0, 40.0]<br>[31.0, 34.5, 38.0, 39.0, 40.0]<br>[31.0, 31.0, 38.0, 39.0, 40.0]</div>
          <p>Look at row 1 (a Kerala reading). <code>bfill</code> copied Gujarat's 38 °C, and <code>interpolate</code> gave 34.5, halfway between Kerala's 31 and Gujarat's 38. Both are wrong! Filling with each <strong>state's own mean</strong> keeps the groups separate. This uses <code>groupby(...).transform</code>, which the GroupBy lesson covers. <code>ffill</code>/<code>bfill</code>/<code>interpolate</code> make sense for data in time order within one series.</p>
        </div>
        <div class="lc-card">
          <h3>Which Strategy?</h3>
          <table class="lc-table">
            <thead><tr><th>Situation</th><th>Good choice</th></tr></thead>
            <tbody>
              <tr><td>Very few rows missing, at random</td><td><code>dropna</code></td></tr>
              <tr><td>Number column with outliers (extreme values)</td><td>fill with the <strong>median</strong></td></tr>
              <tr><td>Time series (daily prices, sensor readings)</td><td><code>ffill</code> or <code>interpolate</code></td></tr>
              <tr><td>Groups behave differently</td><td>fill each group separately with <code>transform</code></td></tr>
              <tr><td>Category column</td><td>a label like <code>"Unknown"</code>, or the most common value</td></tr>
              <tr><td>The fact that a value is missing tells you something</td><td>add a flag column: <code>df["temp_missing"] = df["temp"].isna()</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([1.0, None, None, 4.0])<br>print(s.ffill().tolist(), s.interpolate().tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1.0, 1.0, 1.0, 4.0] [1.0, 2.0, 3.0, 4.0]</div>
          <p>ffill repeats the last value. interpolate draws a straight line between 1 and 4.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Sensor gaps</li>
            <li>Survey questions with no answer</li>
            <li>Stock prices on holidays</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Testing <code>df["temp"] == np.nan</code>. It is always False. Use <code>isna()</code>.</li>
            <li>Calling <code>df.dropna()</code> on data with many columns and losing most rows. Check <code>df.isna().sum()</code> first, and use <code>subset=</code>.</li>
            <li>Filling values before you understand <em>why</em> they are missing. For example, "no income reported" may mean something important.</li>
            <li>Using <code>fillna(method=...)</code> from old tutorials. It was removed in pandas 3.0.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, fill missing <code>price</code> values with the median price of the same <code>item</code>.</li>
            <li>Add a <code>rating_missing</code> flag column before filling <code>rating</code>.</li>
            <li>Drop only the rows where both <code>price</code> and <code>rating</code> are missing.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always say how you handled missing data, for example "12 rows dropped, prices filled with item median". It is part of an honest analysis.
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
        <p class="lc-lead">Aggregation turns a column of many values into one summary number, such as a total, an average or a count. <code>value_counts</code> does the same for categories. These are the first questions you ask about any dataset.</p>
        <div class="lc-card">
          <h3>Summary Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>sum()</code>, <code>mean()</code>, <code>median()</code></td><td>total, average, middle value</td></tr>
              <tr><td><code>min()</code>, <code>max()</code>, <code>std()</code>, <code>var()</code></td><td>smallest, largest and spread (std uses <code>ddof=1</code>, the sample formula)</td></tr>
              <tr><td><code>count()</code></td><td>number of <strong>non-missing</strong> values</td></tr>
              <tr><td><code>size</code> / <code>len(s)</code></td><td>number of rows, including missing</td></tr>
              <tr><td><code>nunique()</code></td><td>number of different values</td></tr>
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
          <p>There are 6 rows, but <code>count()</code> is 5, because one sale is missing. The mean is 500 / 5 = 100, not 500 / 6. The biggest sale is at index label 4, in region S.</p>
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
              <tr><td>default</td><td>counts, sorted from most common to least common</td></tr>
              <tr><td><code>normalize=True</code></td><td>proportions instead of counts (N 0.500, S 0.333, E 0.167)</td></tr>
              <tr><td><code>dropna=False</code></td><td>also count missing values</td></tr>
              <tr><td><code>bins=3</code></td><td>for numbers: count values in 3 ranges of equal width</td></tr>
              <tr><td><code>sort=False</code></td><td>keep the order in which values first appear</td></tr>
            </tbody>
          </table>
          <p>In pandas 2 and later, the result Series is named <code>count</code> (or <code>proportion</code>). Its index is named after the column.</p>
        </div>
        <div class="lc-card">
          <h3>Binning Numbers: pd.cut vs pd.qcut</h3>
          <p>To count numbers in ranges, first put them into bins (ranges). <code>pd.cut</code> makes ranges of <strong>equal width</strong>. <code>pd.qcut</code> makes groups with <strong>equal counts</strong> (quantiles).</p>
          <div class="lc-code">amount = pd.Series([150, 200, 300, 350, 400, 500, 650, 800, 900, 1200])<br>print(pd.cut(amount, bins=3).value_counts(sort=False))<br>print(pd.qcut(amount, q=3, labels=["low", "mid", "high"]).value_counts(sort=False))</div>
          <p>Output:</p>
          <div class="lc-code">(148.95, 500.0]    6<br>(500.0, 850.0]     2<br>(850.0, 1200.0]    2<br>Name: count, dtype: int64<br>low     3<br>mid     3<br>high    4<br>Name: count, dtype: int64</div>
          <p>Equal-width bins put most small orders in one bucket. <code>qcut</code> splits the orders into three groups of (almost) equal size. This is useful for "low / mid / high spender" labels.</p>
        </div>
        <div class="lc-card">
          <h3>describe()</h3>
          <p><code>df.describe()</code> shows count, mean, std, min, 25%, 50%, 75% and max for every number column in one table. For text columns, <code>df.describe(include="object")</code> shows count, unique, top (most common) and freq.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series(['a', 'b', 'a', None])<br>print(s.count(), s.nunique(), s.value_counts().iloc[0])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">3 2 2</div>
          <p>count skips the missing value. There are 2 different values. 'a' appears twice.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Checking if classes are balanced</li>
            <li>Finding the busiest state</li>
            <li>Finding typing mistakes in categories</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>count()</code> as the number of rows. It ignores missing values. Use <code>len(df)</code>.</li>
            <li>Mixing up <code>idxmax()</code> (a label) with <code>max()</code> (a value), or with a position.</li>
            <li>Comparing pandas' <code>std()</code> (ddof=1) with NumPy's <code>np.std()</code> (ddof=0) and expecting the same number.</li>
            <li>Adding up a text column of numbers. Convert it with <code>pd.to_numeric</code> first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, find which payment method is used most, as a percentage, with <code>value_counts(normalize=True)</code>.</li>
            <li>Print the order id of the most expensive order using <code>idxmax</code>.</li>
            <li>Find the sum, mean and median of <code>amount</code> in one <code>agg</code> call.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For categories, run <code>value_counts(dropna=False)</code> early. In one line, it shows typing mistakes ("Gujarat" vs "gujarat"), rare labels and missing values.
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
          <h1 class="lc-title">GroupBy: Split, Apply, Combine</h1>
        </div>
        <p class="lc-lead"><code>groupby</code> answers "per something" questions, such as average salary <em>per department</em> or sales <em>per state per month</em>. It <strong>splits</strong> the rows into groups. It <strong>applies</strong> a calculation to each group. Then it <strong>combines</strong> the results into one table.</p>
        <div class="lc-card">
          <h3>The Example Data</h3>
          <p>Every example in this lesson uses this small staff table. Salary is in thousand rupees, and Arjun's salary is missing:</p>
          <div class="lc-code">df = pd.DataFrame({<br>    "name":   ["Asha", "Ravi", "Meena", "Kiran", "Vikram", "Priya", "Arjun"],<br>    "dept":   ["IT", "HR", "IT", "HR", "Sales", "IT", "Sales"],<br>    "state":  ["Kerala", "Kerala", "Gujarat", "Gujarat", "Gujarat", "Kerala", "Kerala"],<br>    "salary": [70, 45, 82, 48, 50, 64, None],<br>})</div>
        </div>
        <div class="lc-card">
          <h3>Split → Apply → Combine</h3>
          <div class="lc-code">dept  salary          split by dept         apply mean     combine<br>IT      70     →   IT:    70, 82, 64   →   72.0     →   HR     46.5<br>HR      45     →   HR:    45, 48       →   46.5         IT     72.0<br>IT      82     →   Sales: 50, NaN      →   50.0         Sales  50.0<br>...</div>
          <div class="lc-code">df.groupby("dept")["salary"].mean()</div>
          <p>The group keys become the <strong>index</strong> of the result. By default, they are sorted A→Z.</p>
        </div>
        <div class="lc-card">
          <h3>Named Aggregation: the Clearest Way</h3>
          <p>Inside <code>agg</code>, write <code>new_column=("source_column", "function")</code>:</p>
          <div class="lc-code">summary = df.groupby("dept").agg(<br>    headcount=("name", "count"),<br>    avg=("salary", "mean"),<br>    top=("salary", "max"),<br>)<br>print(summary)</div>
          <div class="lc-code">       headcount   avg   top<br>dept<br>HR             2  46.5  48.0<br>IT             3  72.0  82.0<br>Sales          2  50.0  50.0</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Several Keys, size vs count</h3>
          <div class="lc-code">print(df.groupby(["dept", "state"], as_index=False)["salary"].sum())<br>print(df.groupby("dept").size().tolist(), df.groupby("dept")["salary"].count().tolist())</div>
          <p>Output:</p>
          <div class="lc-code">    dept    state  salary<br>0     HR  Gujarat    48.0<br>1     HR   Kerala    45.0<br>2     IT  Gujarat    82.0<br>3     IT   Kerala   134.0<br>4  Sales  Gujarat    50.0<br>5  Sales   Kerala     0.0<br>[2, 3, 2] [2, 3, 1]</div>
          <ul class="lc-list">
            <li><code>as_index=False</code> (or <code>.reset_index()</code> afterwards) keeps the keys as normal columns. This makes the next steps easier.</li>
            <li><code>size()</code> counts <strong>rows</strong>. <code>count()</code> counts <strong>values that are not missing</strong>. Sales has 2 rows but only 1 salary.</li>
            <li>Be careful: Sales/Kerala has only a missing salary, but its <code>sum</code> is <strong>0.0</strong>, not NaN. Use <code>.sum(min_count=1)</code> if a group with only missing values should give NaN.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>agg vs transform vs filter</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>agg</code> / <code>mean()</code> …</td><td>one row per group</td><td>summary tables</td></tr>
              <tr><td><code>transform("mean")</code></td><td>same length as <code>df</code>: the group result is repeated on every row</td><td>"compare each row with its group": group averages, shares, filling each group separately</td></tr>
              <tr><td><code>filter(func)</code></td><td>the original rows of the groups where <code>func(group)</code> is True</td><td>"keep departments with at least 3 people"</td></tr>
              <tr><td><code>apply(func)</code></td><td>whatever <code>func</code> returns for each group</td><td>last choice for custom logic (slower)</td></tr>
            </tbody>
          </table>
          <div class="lc-code">df["dept_avg"] = df.groupby("dept")["salary"].transform("mean")<br>df["share"] = df["salary"] / df.groupby("dept")["salary"].transform("sum")<br>big = df.groupby("dept").filter(lambda g: len(g) &gt;= 3)</div>
        </div>
        <div class="lc-card">
          <h3>Useful Options</h3>
          <ul class="lc-list">
            <li><code>sort=False</code> keeps groups in the order they first appear.</li>
            <li><code>observed=True</code>: when you group by a <code>category</code> column, it shows only the categories that really appear. This is already the default in pandas 3.0. In pandas 2.x (including this editor, 2.3), the default is still <code>False</code>. If you leave it out, you get a <code>FutureWarning</code>. So pass it yourself on 2.x, and your code works the same on every version.</li>
            <li><code>dropna=False</code> keeps a group for rows where the key is missing. By default, these rows are dropped.</li>
            <li>You can loop over groups if you really need to: <code>for key, group in df.groupby("dept"): ...</code></li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'g': ['x', 'x', 'y'], 'v': [1, 3, 5]})<br>print(df.groupby('g')['v'].mean().tolist(), df.groupby('g')['v'].transform('mean').tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[2.0, 5.0] [2.0, 2.0, 5.0]</div>
          <p>mean gives one value per group. transform repeats it on every row.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Sales per region</li>
            <li>Each employee compared with the department average</li>
            <li>Filling missing values group by group</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>agg</code> when you wanted a value on every row. Use <code>transform</code>.</li>
            <li>Forgetting that group keys become the index. Then <code>result["dept"]</code> gives a <code>KeyError</code>. Use <code>as_index=False</code> or <code>reset_index()</code>.</li>
            <li>Using <code>count()</code> as the group size when there are missing values.</li>
            <li>Writing a Python loop over groups for something that <code>agg</code> or <code>transform</code> can do in one line.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, find the total and average revenue per <code>state</code> with named aggregation.</li>
            <li>Add a column that shows each store's share of its state's revenue. Use <code>transform("sum")</code>.</li>
            <li>Keep only the states with total revenue above 500. Use <code>filter</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Say the question out loud. "<em>For each</em> X, find Y of Z" becomes <code>df.groupby("X")["Z"].Y()</code>. For each department, the mean of salary → <code>df.groupby("dept")["salary"].mean()</code>.
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
        # This is the default in pandas 3.0. This editor runs 2.3, which warns if you leave it out.
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
        <p class="lc-lead">Real data is often split across several tables. Customers are in one table, orders in another, and products in a third. <code>merge</code> joins tables using a shared key (a column that both tables have), like a SQL JOIN. <code>concat</code> puts tables one below the other, or side by side.</p>
        <div class="lc-card">
          <h3>merge: Link Rows by a Key</h3>
          <div class="lc-code">emp  = pd.DataFrame({"emp_id": [1, 2, 3, 4],<br>                     "name": ["Asha", "Ravi", "Meera", "Kiran"],<br>                     "dept_id": [10, 20, 10, 40]})<br>dept = pd.DataFrame({"dept_id": [10, 20, 30],<br>                     "dept": ["IT", "HR", "Sales"]})<br>print(emp.merge(dept, on="dept_id", how="left"))</div>
          <div class="lc-code">   emp_id   name  dept_id dept<br>0       1   Asha       10   IT<br>1       2   Ravi       20   HR<br>2       3  Meera       10   IT<br>3       4  Kiran       40  NaN</div>
          <p>Kiran's department is 40, and 40 is not in <code>dept</code>. A <strong>left</strong> join still keeps her row, with <code>NaN</code> (a missing value) as the department. An inner join would remove her row.</p>
        </div>
        <div class="lc-card">
          <h3>The Four Join Types</h3>
          <table class="lc-table">
            <thead><tr><th><code>how=</code></th><th>Keeps</th><th>Rows in the example</th></tr></thead>
            <tbody>
              <tr><td><code>"inner"</code> (default)</td><td>only keys found in <strong>both</strong> tables</td><td>3 (Kiran and Sales removed)</td></tr>
              <tr><td><code>"left"</code></td><td>every row of the left table</td><td>4 (Kiran with NaN dept)</td></tr>
              <tr><td><code>"right"</code></td><td>every row of the right table</td><td>4 (Sales with no employee)</td></tr>
              <tr><td><code>"outer"</code></td><td>every row of both tables</td><td>5</td></tr>
            </tbody>
          </table>
          <p><code>indicator=True</code> adds a <code>_merge</code> column. It shows <code>both</code>, <code>left_only</code> or <code>right_only</code> for each row. This helps you find rows that did not match.</p>
        </div>
        <div class="lc-card">
          <h3>Keys With Different Names, Columns With the Same Name</h3>
          <div class="lc-code">emp.merge(bonus, left_on="emp_id", right_on="staff_id", how="left")<br>mid.merge(final, on="id", suffixes=("_mid", "_final"))   # score_mid, score_final</div>
          <p>Without <code>suffixes</code>, two columns called <code>score</code> become <code>score_x</code> and <code>score_y</code>. This works, but the names are confusing.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: validate Catches Duplicate Keys</h3>
          <p>Sometimes the lookup table has the same key twice by mistake. Then every matching row is <strong>duplicated</strong>, and pandas shows no warning:</p>
          <div class="lc-code">bad = pd.DataFrame({"dept_id": [10, 10, 20], "dept": ["IT", "Tech", "HR"]})<br>m = emp.merge(bad, on="dept_id")<br>print(len(emp), len(m))<br>try:<br>    emp.merge(bad, on="dept_id", validate="many_to_one")<br>except pd.errors.MergeError as e:<br>    print("MergeError:", e)</div>
          <p>Output:</p>
          <div class="lc-code">4 5<br>MergeError: Merge keys are not unique in right dataset; not a many-to-one merge</div>
          <p>Asha and Meera each matched two department rows. <code>validate=</code> checks the keys and raises a clear error instead. The options are: <code>"one_to_one"</code>, <code>"one_to_many"</code>, <code>"many_to_one"</code>, <code>"many_to_many"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>concat: Stack Tables</h3>
          <div class="lc-code">pd.concat([jan, feb], ignore_index=True)     # rows of jan, then rows of feb, index 0..n-1<br>pd.concat([jan, feb], keys=["jan", "feb"])   # remember which table each row came from<br>pd.concat([left, right], axis=1)             # side by side, aligned on the index</div>
          <p>Use <code>concat</code> when the tables have the <strong>same columns</strong> (for example, one file per month). Use <code>merge</code> when they share a <strong>key</strong>. <code>df.join(other)</code> is a short way to merge on the index (the row labels).</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many rows? Guess the answer first, then run it in the editor.</p>
          <div class="lc-code">a = pd.DataFrame({'k': [1, 2, 3]})<br>b = pd.DataFrame({'k': [2, 3, 4]})<br>print(len(a.merge(b, on='k')), len(a.merge(b, on='k', how='outer')))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">2 4</div>
          <p>Inner keeps only keys found in both tables (2, 3). Outer keeps all keys (1, 2, 3, 4).</p>
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
            <li>Not checking row counts. Print <code>len()</code> before and after every merge. If the count goes up, you have duplicate keys.</li>
            <li>Using the default inner join and losing unmatched rows without noticing. Always choose <code>how=</code> yourself.</li>
            <li>Merging keys of different types (<code>10</code> vs <code>"10"</code>). Nothing will match. Check <code>dtypes</code> (the column types).</li>
            <li>Calling <code>concat</code> in a loop to add one row at a time. Instead, collect the DataFrames in a list and call concat once.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, change the orders and customers merge to <code>how="inner"</code>. See which order disappears.</li>
            <li>Add a duplicate product id to <code>products</code>. Watch <code>validate="many_to_one"</code> catch it.</li>
            <li>Use <code>indicator=True</code> with an outer join to list customers who never ordered.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always use <code>validate=</code> for lookups. For example, orders → customers is <code>"many_to_one"</code>. This one extra argument stops a costly bug that is hard to notice in data work.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        customers = pd.DataFrame({
            "cust_id": [1, 2, 3, 4],
            "name":    ["Asha", "Ravi", "Meera", "Kiran"],
            "state":   ["Kerala", "Gujarat", "West Bengal", "Kerala"],
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
        <p class="lc-lead">Text columns are often messy. They have extra spaces, mixed capital letters, and phone numbers in five formats. The <code>.str</code> accessor (a helper on a column) runs string methods on a whole column at once. It also handles missing values safely.</p>
        <div class="lc-card">
          <h3>The .str Accessor</h3>
          <p>Any Python string method you know has a column version: <code>s.str.lower()</code>, <code>s.str.strip()</code>, <code>s.str.replace(...)</code>. Missing values stay missing. They do not cause an error.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Method</th></tr></thead>
            <tbody>
              <tr><td>Clean case / spaces</td><td><code>.str.lower()</code>, <code>.str.upper()</code>, <code>.str.title()</code>, <code>.str.strip()</code></td></tr>
              <tr><td>Check</td><td><code>.str.contains("ra", case=False, na=False)</code>, <code>.str.startswith("A")</code>, <code>.str.endswith(".in")</code></td></tr>
              <tr><td>Measure / slice</td><td><code>.str.len()</code>, <code>.str[:3]</code>, <code>.str[-10:]</code></td></tr>
              <tr><td>Split</td><td><code>.str.split("@")</code> (lists), <code>.str.split("@", expand=True)</code> (columns), then <code>.str[1]</code></td></tr>
              <tr><td>Replace</td><td><code>.str.replace(".", "-", regex=False)</code>, <code>.str.replace(r"\D", "", regex=True)</code></td></tr>
              <tr><td>Extract with a pattern</td><td><code>.str.extract(r"#(\d+)")</code>: one column per <code>( )</code> group</td></tr>
              <tr><td>Pad / join</td><td><code>.str.zfill(3)</code>, <code>.str.cat(sep="|")</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Cleaning Names</h3>
          <div class="lc-code">s = pd.Series(["  Asha Rao ", "RAVI kumar", "meera iyer", None])<br>print(s.str.strip().str.title().tolist())<br>print(s.str.len().tolist())<br>print(s.str.contains("ra", case=False, na=False).tolist())</div>
          <p>Output:</p>
          <div class="lc-code">['Asha Rao', 'Ravi Kumar', 'Meera Iyer', None]<br>[11.0, 10.0, 10.0, nan]<br>[True, True, True, False]</div>
          <p>The methods run one after another, from left to right. "Rao", "RAVI" and "meeRA" all match <code>"ra"</code> when case is ignored. The missing name stays <code>None</code>/<code>NaN</code>. For filtering, pass <code>na=False</code> so missing values count as "no match". You cannot use a mask (a list of True/False values) with NaN in it to select rows.</p>
        </div>
        <div class="lc-card">
          <h3>Splitting and Extracting</h3>
          <div class="lc-code">e = pd.Series(["asha@gmail.com", "ravi@college.ac.in"])<br>e.str.split("@").str[1]                 # ['gmail.com', 'college.ac.in']<br>e.str.split("@", expand=True)           # two columns: 0 and 1<br><br>p = pd.Series(["Order #123 - Rs 450", "Order #98 - Rs 1,200", "no id"])<br>p.str.extract(r"#(\d+).*Rs ([\d,]+)")<br>#      0      1<br># 0  123    450<br># 1   98  1,200<br># 2  NaN    NaN</div>
          <p><code>extract</code> uses a <strong>regular expression</strong> (a pattern for matching text). <code>\d+</code> means "one or more digits". Each pair of brackets becomes a column. Rows that do not match get NaN.</p>
        </div>
        <div class="lc-card">
          <h3>Regex or Plain Text?</h3>
          <p>In pandas 2, <code>str.replace</code> treats the pattern as <strong>plain text</strong> by default (<code>regex=False</code>). Always say clearly which one you want:</p>
          <div class="lc-code">phones = pd.Series(["9876543210", "98765-43210", "+91 98765 43210"])<br>phones.str.replace(r"\D", "", regex=True).str[-10:]   # keep digits, last 10<br># ['9876543210', '9876543210', '9876543210']<br>pd.Series(["a.b"]).str.replace(".", "-", regex=False)  # ['a-b'] — "." as a real dot</div>
          <p>In a regex, <code>.</code> means "any character", so <code>regex=True</code> would replace every character.</p>
        </div>
        <div class="lc-card">
          <h3>String dtypes: Now and in pandas 3</h3>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Default text dtype</th><th>Missing value</th></tr></thead>
            <tbody>
              <tr><td>pandas 2.x (this editor)</td><td><code>object</code></td><td><code>None</code> or <code>NaN</code></td></tr>
              <tr><td>optional in pandas 2</td><td><code>"string"</code> (via <code>astype("string")</code>)</td><td><code>&lt;NA&gt;</code></td></tr>
              <tr><td>pandas 3.0 (Jan 2026)</td><td><code>str</code>: a special string dtype, faster with PyArrow</td><td><code>NaN</code></td></tr>
            </tbody>
          </table>
          <p>All <code>.str</code> methods work the same with all of these. In pandas 2.3, you can try the pandas 3 behaviour with <code>pd.options.future.infer_string = True</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess the answer first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series([' Kerala', 'kerala ', 'KERALA'])<br>print(s.str.strip().str.title().nunique())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">1</div>
          <p>After cleaning, all three are 'Kerala'.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Cleaning state and product names</li>
            <li>Extracting numbers from text</li>
            <li>Checking emails and phone numbers</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling <code>s.lower()</code>. A Series has no <code>lower</code> method. Use <code>s.str.lower()</code>.</li>
            <li>Filtering with <code>str.contains</code> on a column with missing values, without <code>na=False</code>. This raises a <code>ValueError</code> about NA values.</li>
            <li>Using regex symbols (<code>. ( ) + $</code>) as plain text, or forgetting <code>regex=True</code> when you need a pattern.</li>
            <li>Comparing without cleaning: <code>"Tea"</code>, <code>"tea "</code> and <code>"TEA"</code> are three different values until you <code>strip()</code> and <code>lower()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, make a <code>first_name</code> column with the first word of <code>name</code> (use <code>str.split</code>).</li>
            <li>Count the digits in each cleaned phone number with <code>str.len()</code>. Which numbers have more than 10 digits, and why?</li>
            <li>Use <code>str.extract</code> to get the payment method (UPI, cash or card) from the <code>note</code> column. What do you get for the refund row?</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Clean text first with <code>.str.strip().str.lower()</code>. Then group, merge or count. This fixes most "duplicate category" problems.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        customers = pd.DataFrame({
            "name":    ["  asha RAO", "Ravi Kumar ", "MEERA iyer", "kiran shah"],
            "email":   ["Asha@Gmail.com", "ravi@college.ac.in", "meera@yahoo.co.in", None],
            "phone":   ["98765-43210", "+91 91234 56789", "9988776655", "(080) 2345 6789"],
            "address": ["12 MG Road, Kerala", "4 Station Road, Chhattisgarh", "7 Lake Road, West Bengal", "9 Market Road, Uttar Pradesh"],
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
        parts.columns = ["street", "state"]
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
        <p class="lc-lead">When dates are stored as text, you cannot sort, subtract or group them by month correctly. Convert them to real <strong>datetime</strong> values (a type that stores dates and times). Then you can use the <code>.dt</code> accessor, date arithmetic (adding and subtracting dates) and time-based grouping with <code>resample</code>.</p>
        <div class="lc-card">
          <h3>Parsing with to_datetime</h3>
          <div class="lc-code">pd.to_datetime(df["date"])                               # ISO text like 2024-03-05<br>pd.to_datetime(df["date"], format="%d/%m/%Y")            # Indian style 05/03/2024 = 5 March<br>pd.to_datetime(df["date"], dayfirst=True)                # same idea, less strict<br>pd.to_datetime(df["date"], format="%Y-%m-%d", errors="coerce")   # bad dates become NaT</div>
          <p>Always give <code>format=</code> (or <code>dayfirst=True</code>) for <code>dd/mm/yyyy</code> data. Otherwise "05/03/2024" may be read as <strong>May 3</strong>, the US order. Invalid dates such as 30 February become <code>NaT</code> ("not a time") when you use <code>errors="coerce"</code>.</p>
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
          <p>Subtracting two dates gives a <strong>Timedelta</strong> (a length of time). <code>.days</code> turns it into a number. Adding <code>pd.Timedelta(days=30)</code> moves dates 30 days forward. Because the format is given, 05/03/2024 is correctly read as March.</p>
        </div>
        <div class="lc-card">
          <h3>Time-based Grouping: resample</h3>
          <p>Put the dates in the index. Then <code>resample</code> groups rows by calendar periods:</p>
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
          <p><strong>Old way, do not use:</strong> <code>"M"</code>, <code>"Q"</code>, <code>"Y"</code> for month/quarter/year end. They give a FutureWarning in pandas 2.2+. They were removed in pandas 3.0. This is only about these frequency aliases: for periods, <code>to_period("M")</code> is still correct. <code>pd.date_range("2024-01-01", periods=12, freq="ME")</code> creates a sequence of month-end dates.</p>
        </div>
        <div class="lc-card">
          <h3>Time Zones and Resolution</h3>
          <p>Naive datetimes have no time zone attached. <code>ts.tz_localize("America/New_York")</code> adds US Eastern time as the time zone. <code>.tz_convert("UTC")</code> changes it to another zone: on 5 March 2024, 10:30 EST is 15:30 UTC. From 10 March, US Eastern time uses daylight saving time (EDT, UTC-4), and pandas handles this for you. In pandas 2, parsed dates are stored as <code>datetime64[ns]</code> (nanoseconds). <strong>pandas 3.0 parses strings to microsecond resolution (<code>datetime64[us]</code>) by default</strong>. This only matters if you convert dates to raw integers.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess the answer first, then run it in the editor.</p>
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
            <li>Leaving dates as text. As text, "10/01/2024" &lt; "9/01/2024" is True!</li>
            <li>Parsing Indian <code>dd/mm/yyyy</code> dates without <code>format=</code> or <code>dayfirst=True</code>.</li>
            <li>Calling <code>resample</code> without a DatetimeIndex (an index made of dates). Set the date column as the index first, or use <code>on="date"</code>.</li>
            <li>Using the removed aliases <code>"M"</code>/<code>"Y"</code> from old tutorials instead of <code>"ME"</code>/<code>"YE"</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, use <code>.dt.dayofweek &gt;= 5</code> to find the total amount ordered on weekends.</li>
            <li>Calculate weekly totals with <code>resample("W")</code>.</li>
            <li>Find the order that took the longest to deliver with <code>idxmax()</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Convert dates when you load the data. Use <code>pd.read_csv(..., parse_dates=["date"])</code> for ISO dates, or <code>pd.to_datetime(..., format=...)</code> right after loading. Then check that <code>df.dtypes</code> shows <code>datetime64</code>.
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
        ts = pd.Timestamp("2024-03-05 10:30").tz_localize("America/New_York")
        print(ts, "->", ts.tz_convert("UTC"))
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Pivot Tables and Crosstab</h1>
        </div>
        <p class="lc-lead">A pivot table summarises data by <strong>two dimensions</strong> at once. For example, rows are regions, columns are products, and each cell shows total sales. It works like an Excel pivot table, in one line of code.</p>
        <div class="lc-card">
          <h3>pivot_table</h3>
          <div class="lc-code">df.pivot_table(<br>    values="amount",      # what to summarise<br>    index="region",       # one row per region<br>    columns="product",    # one column per product<br>    aggfunc="sum",        # how to combine (default: "mean")<br>    fill_value=0,         # show 0 instead of NaN for empty cells<br>    margins=True,         # add an "All" row and column with totals<br>)</div>
          <p>The default <code>aggfunc</code> is <strong>mean</strong>, not sum. This surprises many people. <code>aggfunc</code> can also be a list, like <code>["sum", "count"]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Region × Product</h3>
          <div class="lc-code">sales = pd.DataFrame({"region": ["N", "N", "S", "S", "S", "E"],<br>                      "product": ["Tea", "Coffee", "Tea", "Tea", "Coffee", "Tea"],<br>                      "amount": [100, 250, 80, 120, 300, 90]})<br>print(sales.pivot_table(values="amount", index="region", columns="product",<br>                        aggfunc="sum", fill_value=0, margins=True))</div>
          <p>Output:</p>
          <div class="lc-code">product  Coffee  Tea  All<br>region<br>E             0   90   90<br>N           250  100  350<br>S           300  200  500<br>All         550  390  940</div>
          <p>South sold Tea twice (80 + 120), so its cell is 200. East never sold Coffee, so <code>fill_value=0</code> shows 0 there instead of NaN.</p>
        </div>
        <div class="lc-card">
          <h3>crosstab: Counting Combinations</h3>
          <p><code>pd.crosstab</code> counts how often each pair of values appears. It is useful for survey answers, or questions like "how many students of each gender chose each stream".</p>
          <div class="lc-code">pd.crosstab(df["state"], df["plan"])                        # counts<br>pd.crosstab(df["state"], df["plan"], normalize="index")     # each row sums to 1<br>pd.crosstab(df["state"], df["plan"], margins=True)          # with totals</div>
        </div>
        <div class="lc-card">
          <h3>pivot vs pivot_table vs groupby</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Aggregates?</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td><code>pivot_table</code></td><td>yes (<code>aggfunc</code>)</td><td>summarising; duplicates are combined</td></tr>
              <tr><td><code>pivot</code></td><td>no</td><td>only reshaping; each index/column pair must appear once, or you get <code>ValueError: Index contains duplicate entries</code></td></tr>
              <tr><td><code>crosstab</code></td><td>counts (or <code>values</code> + <code>aggfunc</code>)</td><td>frequency tables of two categories</td></tr>
              <tr><td><code>groupby([a, b]).sum().unstack()</code></td><td>yes</td><td>same result as pivot_table, built step by step</td></tr>
            </tbody>
          </table>
          <p>Sometimes a <code>category</code> column is the index or columns. Then <code>observed=True</code> (show only categories that appear in the data) is the default in pandas 3.0. This editor runs pandas 2.3. There the default is still <code>False</code>, and leaving it out gives a <code>FutureWarning</code>. So on 2.x, pass <code>observed=True</code> yourself, as the starter code does.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Charts with .plot()</h3>
          <p>A pivot table is often used as the data for a chart. Every DataFrame and Series has a <code>.plot()</code> method. It draws charts with Matplotlib. The index becomes the x-axis, and each column becomes one series (one set of values in the chart).</p>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Chart</th><th>Good for</th></tr></thead>
            <tbody>
              <tr><td><code>table.plot(kind="bar")</code></td><td>grouped bars</td><td>comparing categories (state × month)</td></tr>
              <tr><td><code>monthly.plot()</code></td><td>line (the default)</td><td>trends over time</td></tr>
              <tr><td><code>df["amount"].plot(kind="hist", bins=5)</code></td><td>histogram</td><td>the spread of one number column</td></tr>
              <tr><td><code>df.plot(kind="scatter", x="units", y="amount")</code></td><td>scatter</td><td>the relationship between two columns</td></tr>
            </tbody>
          </table>
          <div class="lc-code">ax = table.plot(kind="bar", title="Sales by state and month")<br>ax.figure.savefig("sales.png")     # or plt.show() on a laptop</div>
          <p><code>.plot()</code> returns a Matplotlib <code>Axes</code> object (the chart area). You need Matplotlib installed (<code>pip install matplotlib</code>). In Jupyter, the chart appears below the cell. This course's editor shows only text output. So try charts on your laptop or in Jupyter/Colab.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess the answer first, then run it in the editor.</p>
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
            <li>Using <code>pivot</code> on data with duplicate pairs. Use <code>pivot_table</code> instead.</li>
            <li>Reading NaN cells as zero sales. NaN means "no rows". Use <code>fill_value=0</code> only when zero is really correct.</li>
            <li>Mixing up <code>normalize="index"</code> (rows sum to 1) and <code>normalize="columns"</code> (columns sum to 1).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, make a pivot table of <code>payment</code> × <code>month</code> with the total amount. Which payment method brought in the most in March?</li>
            <li>Build the <code>state</code> × <code>payment</code> crosstab with <code>normalize="columns"</code>. What does each column add up to now?</li>
            <li>Use <code>pivot_table</code> with <code>index=["state", "payment"]</code> and <code>columns="month"</code>. How many rows does the new table have?</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put the dimension with <em>fewer</em> values in <code>columns</code>, so the table is easy to read on screen. Put the longer list in <code>index</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import pandas as pd

        sales = pd.DataFrame({
            "month":   ["Jan", "Jan", "Jan", "Feb", "Feb", "Feb", "Mar", "Mar", "Mar", "Mar"],
            "state":   ["Kerala", "Gujarat", "Kerala", "Gujarat", "Kerala", "Gujarat", "Kerala", "Gujarat", "Gujarat", "Kerala"],
            "payment": ["UPI", "Card", "UPI", "UPI", "Cash", "UPI", "Card", "UPI", "Cash", "UPI"],
            "amount":  [500, 1200, 300, 800, 150, 400, 900, 650, 200, 350],
        })
        sales["month"] = pd.Categorical(sales["month"], categories=["Jan", "Feb", "Mar"], ordered=True)

        print("=== Total sales: state x month ===")
        table = sales.pivot_table(values="amount", index="state", columns="month",
                                  aggfunc="sum", fill_value=0, margins=True,
                                  observed=True)   # default in pandas 3.0; we set it for 2.x
        print(table)

        print("\n=== Default aggfunc is MEAN ===")
        print(sales.pivot_table(values="amount", index="state", aggfunc="mean").round(1))

        print("\n=== Several aggregations ===")
        print(sales.pivot_table(values="amount", index="state", aggfunc=["sum", "count"]))

        print("\n=== crosstab: how often each payment is used per state ===")
        print(pd.crosstab(sales["state"], sales["payment"], margins=True))
        print("\nrow shares:")
        print(pd.crosstab(sales["state"], sales["payment"], normalize="index").round(2))

        print("\n=== Same table with groupby + unstack ===")
        g = sales.groupby(["state", "month"], observed=True)["amount"].sum().unstack(fill_value=0)
        print(g)

        print("\n=== pivot (no aggregation) needs unique pairs ===")
        try:
            sales.pivot(index="state", columns="month", values="amount")
        except ValueError as e:
            print("ValueError:", e)
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Reshaping: melt, stack and unstack</h1>
        </div>
        <p class="lc-lead">The same data can be <strong>wide</strong> (one column per month) or <strong>long</strong> (one row per month). Spreadsheets use the wide form. groupby, merging and plotting libraries work better with the long form. Reshaping changes data from one form to the other.</p>
        <div class="lc-card">
          <h3>Wide vs Long</h3>
          <div class="lc-code">WIDE                               LONG<br>name   q1   q2                     name  quarter  sales<br>Asha   45   51          melt →     Asha  q1       45<br>Ravi   38   41          ← pivot    Ravi  q1       38<br>                                   Asha  q2       51<br>                                   Ravi  q2       41</div>
          <p>Long ("tidy") data has one row per observation (one measurement) and one column per variable. <code>groupby</code>, <code>merge</code> and chart libraries such as seaborn expect this format.</p>
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
          <p><code>pivot</code> does the opposite of <code>melt</code>. Add <code>.reset_index()</code> and <code>.rename_axis(columns=None)</code> to get a plain table back.</p>
        </div>
        <div class="lc-card">
          <h3>MultiIndex, stack and unstack</h3>
          <p>Grouping by two keys gives a <strong>MultiIndex</strong>, which is an index with two levels:</p>
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
          <p>How many rows does the long table have? Guess the answer first, then run it in the editor.</p>
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
            <li>Forgetting <code>id_vars</code> in <code>melt</code>. Then the name column gets melted too.</li>
            <li>Leaving quarter labels as text like <code>"q1_sales"</code>. Clean them with <code>.str.replace("_sales", "")</code> after melting.</li>
            <li>Using <code>pivot</code> when a (row, column) pair appears twice. Use <code>pivot_table</code> instead, which combines them.</li>
            <li>Getting confused by a MultiIndex. <code>reset_index()</code> turns the levels back into normal columns.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, melt only the <code>jan</code> and <code>feb</code> columns (use <code>value_vars</code>).</li>
            <li>Find each student's best subject from the long table with <code>groupby</code> and <code>idxmax</code>.</li>
            <li>Use <code>explode</code> on the <code>clubs</code> column. Then count members per club.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Store and analyse data in <strong>long</strong> form. Change it to <strong>wide</strong> only at the end, for a report or a display table.
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
        <p class="lc-lead">Sometimes you need your own logic that no built-in method can do. <code>map</code> and <code>apply</code> run your own function on values, rows or columns. They are flexible. But they are slower than vectorised code (code that works on a whole column at once). So learn when <em>not</em> to use them.</p>
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
              <tr><td><code>replace(dict)</code></td><td>Series or DataFrame</td><td>(swaps listed values, keeps the rest)</td></tr>
            </tbody>
          </table>
          <p><strong>Old way, do not use:</strong> <code>DataFrame.applymap</code>. It was renamed to <code>DataFrame.map</code> in pandas 2.1. It was <strong>removed in pandas 3.0</strong>. Older tutorials also say <code>map</code> is "Series only". This is no longer true.</p>
        </div>
        <div class="lc-card">
          <h3>map with a Dictionary: Watch for NaN</h3>
          <div class="lc-code">dept = pd.Series(["Engineering", "Marketing", "HR", "Legal"])<br>codes = {"Engineering": "ENG", "Marketing": "MKT", "HR": "HR"}<br>print(dept.map(codes).tolist())<br>print(dept.replace(codes).tolist())</div>
          <div class="lc-code">['ENG', 'MKT', 'HR', nan]<br>['ENG', 'MKT', 'HR', 'Legal']</div>
          <p><code>map</code> turns values that are <em>not</em> in the dictionary into NaN. <code>replace</code> leaves them unchanged. Choose the one you need.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: apply per Value and per Row</h3>
          <div class="lc-code">df = pd.DataFrame({"name": ["Asha", "Ravi"], "maths": [91, 64], "science": [78, 88]})<br>df["m_grade"] = df["maths"].apply(lambda m: "A" if m &gt;= 90 else "B")<br>df["best"] = df.apply(lambda row: "maths" if row["maths"] &gt; row["science"] else "science", axis=1)<br>print(df)<br>print(df[["maths", "science"]].map(lambda v: f"{v}%"))</div>
          <p>Output:</p>
          <div class="lc-code">   name  maths  science m_grade     best<br>0  Asha     91       78       A    maths<br>1  Ravi     64       88       B  science<br>  maths science<br>0   91%     78%<br>1   64%     88%</div>
        </div>
        <div class="lc-card">
          <h3>Prefer Vectorised Code</h3>
          <p><code>apply</code> runs a Python function once for each value or row. For a million rows, that is a million calls. Vectorised operations run in compiled code (fast machine code). They are often 10–100× faster:</p>
          <table class="lc-table">
            <thead><tr><th>Slow (apply / loop)</th><th>Fast (vectorised)</th></tr></thead>
            <tbody>
              <tr><td><code>df["x"].apply(lambda v: v * 1.18)</code></td><td><code>df["x"] * 1.18</code></td></tr>
              <tr><td><code>df.apply(lambda r: r["a"] + r["b"], axis=1)</code></td><td><code>df["a"] + df["b"]</code></td></tr>
              <tr><td><code>apply(lambda v: "A" if v &gt;= 90 else "B")</code></td><td><code>np.where(df["m"] &gt;= 90, "A", "B")</code></td></tr>
              <tr><td><code>apply(lambda s: s.strip().lower())</code></td><td><code>df["s"].str.strip().str.lower()</code></td></tr>
              <tr><td>many if/elif ranges</td><td><code>pd.cut(df["m"], bins=[...], labels=[...])</code> or <code>np.select</code></td></tr>
              <tr><td><code>for i, row in df.iterrows(): ...</code></td><td>almost always one of the above</td></tr>
            </tbody>
          </table>
          <p>Use <code>apply</code> only when you really cannot write the logic with column operations. Examples: calling an external function, reading complex text, or combining many fields in unusual ways.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess the answer first, then run it in the editor.</p>
          <div class="lc-code">s = pd.Series(['a', 'b', 'c'])<br>print(s.map({'a': 1, 'b': 2}).tolist(), s.replace({'a': 1, 'b': 2}).tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1.0, 2.0, nan] [1, 2, 'c']</div>
          <p>map turns values that are not in the dict into NaN. replace keeps them.</p>
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
            <li>Forgetting <code>axis=1</code> when you want rows. By default, <code>DataFrame.apply</code> passes <em>columns</em>.</li>
            <li>Using <code>map(dict)</code> and not seeing the NaNs for values missing from the dict.</li>
            <li>Using <code>applymap</code>. It was removed in pandas 3.0. Use <code>DataFrame.map</code>.</li>
            <li>Using <code>iterrows()</code> to build a column. It is slow, and changes to <code>row</code> do not change <code>df</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, replace the <code>apply</code> that calculates <code>per_item</code> with a vectorised expression (column ÷ column). Check that the results are equal.</li>
            <li>Use <code>map</code> with a dict to add a <code>gst_rate</code> column from <code>size</code>: 0.05 for "small", 0.12 for "medium" and 0.18 for "large". Then add <code>gst</code> = <code>amount</code> × <code>gst_rate</code>.</li>
            <li>Add a <code>"Gujarat": "West"</code> entry to the region map so no NaN remains.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>apply</code> only when nothing else works. If you can describe the calculation as "column op column", write it that way.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import time
        import numpy as np
        import pandas as pd

        orders = pd.DataFrame({
            "state":  ["Kerala", "Nagaland", "Gujarat", "Kerala", "West Bengal"],
            "amount": [450, 2300, 780, 5200, 1500],
            "items":  [2, 6, 3, 9, 4],
        })

        print("=== Series.map with a dict (unmapped -> NaN) ===")
        region = {"Kerala": "South", "Nagaland": "North-East", "West Bengal": "East"}
        orders["region"] = orders["state"].map(region)
        print(orders[["state", "region"]])
        print("replace keeps unknowns:", orders["state"].replace(region).tolist())

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
        print("speed-up: about", round((t1 - t0) / max(t2 - t1, 1e-9)), "x  (varies per run and machine)")
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Window Functions: rolling, expanding, shift</h1>
        </div>
        <p class="lc-lead">Window functions calculate a value for each row using its <strong>neighbours</strong> (the rows near it). Examples: a 7-day moving average, a running total, yesterday's value, or the change since last month. They are the main tools for time-series data (data recorded over time), such as sales, prices and sensor readings.</p>
        <div class="lc-card">
          <h3>Three Kinds of Windows</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Window</th><th>Example use</th></tr></thead>
            <tbody>
              <tr><td><code>rolling(3)</code></td><td>the last 3 rows (fixed size, moves forward)</td><td>3-day moving average</td></tr>
              <tr><td><code>rolling("7D")</code></td><td>the last 7 days of a DatetimeIndex</td><td>weekly sum with gaps in dates</td></tr>
              <tr><td><code>expanding()</code></td><td>from the first row up to this one (grows)</td><td>average so far</td></tr>
              <tr><td><code>ewm(span=3)</code></td><td>all past rows, recent ones count more</td><td>smoothed trend</td></tr>
              <tr><td><code>cumsum()</code>, <code>cummax()</code></td><td>everything so far</td><td>running total, best so far</td></tr>
            </tbody>
          </table>
          <p>After <code>rolling(...)</code> or <code>expanding()</code>, you choose the calculation: <code>.mean()</code>, <code>.sum()</code>, <code>.max()</code>, <code>.std()</code> …</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Six Days of Sales</h3>
          <div class="lc-code">s = pd.Series([100, 120, 90, 150, 130, 170],<br>              index=pd.date_range("2024-01-01", periods=6, freq="D"))<br>out = pd.DataFrame({"v": s,<br>                    "roll3": s.rolling(3).mean().round(1),<br>                    "exp": s.expanding().mean().round(1),<br>                    "cum": s.cumsum(),<br>                    "lag": s.shift(1),<br>                    "pct": (s.pct_change() * 100).round(1)})<br>print(out)</div>
          <p>Output:</p>
          <div class="lc-code">              v  roll3    exp  cum    lag   pct<br>2024-01-01  100    NaN  100.0  100    NaN   NaN<br>2024-01-02  120    NaN  110.0  220  100.0  20.0<br>2024-01-03   90  103.3  103.3  310  120.0 -25.0<br>2024-01-04  150  120.0  115.0  460   90.0  66.7<br>2024-01-05  130  123.3  118.0  590  150.0 -13.3<br>2024-01-06  170  150.0  126.7  760  130.0  30.8</div>
          <ul class="lc-list">
            <li><code>roll3</code> is NaN for the first two days, because a 3-row window is not full yet. <code>rolling(3, min_periods=1)</code> uses the rows that exist.</li>
            <li><code>shift(1)</code> moves values <strong>down</strong> one row, so each row sees the <em>previous</em> day (a "lag"). <code>shift(-1)</code> looks one row ahead.</li>
            <li><code>pct_change()</code> = (today − yesterday) / yesterday. <code>diff()</code> gives the plain difference.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Lag, Lead, Change</h3>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Row 3 (value 150) gets</th></tr></thead>
            <tbody>
              <tr><td><code>s.shift(1)</code></td><td>90: the previous value</td></tr>
              <tr><td><code>s.shift(-1)</code></td><td>130: the next value</td></tr>
              <tr><td><code>s.diff()</code></td><td>60: change from previous</td></tr>
              <tr><td><code>s.pct_change()</code></td><td>0.667: 66.7% growth</td></tr>
            </tbody>
          </table>
          <p><strong>Data with gaps (NaN):</strong> in pandas 3.0, <code>pct_change()</code> no longer fills missing values. Its <code>fill_method</code> argument must be <code>None</code>, and it will be removed. So leave it out. This editor runs pandas 2.3. There, the old default still forward-fills the gap (copies the last value into it) and prints a <code>FutureWarning</code>. Write your choice clearly in the code, so it gives the same answer on both versions:</p>
          <div class="lc-code">s = pd.Series([100.0, np.nan, 120.0, 150.0])<br>print(s.ffill().pct_change().round(3).tolist())    # fill the gap first<br>print((s / s.shift(1) - 1).round(3).tolist())      # keep gaps as NaN</div>
          <div class="lc-code">[nan, 0.0, 0.2, 0.25]<br>[nan, nan, nan, 0.25]</div>
        </div>
        <div class="lc-card">
          <h3>Windows per Group</h3>
          <p>Sometimes one table has several stores. A plain <code>shift</code> would then move store A's last day into store B's first day. Do it inside <code>groupby</code> instead:</p>
          <div class="lc-code">df["prev"]  = df.groupby("store")["sales"].shift(1)<br>df["cum"]   = df.groupby("store")["sales"].cumsum()<br>df["roll2"] = df.groupby("store")["sales"].transform(lambda x: x.rolling(2).mean())</div>
          <p>Always <strong>sort by date</strong> (within each group) before using window functions. They work on row order, not on dates. The exception is a time-based window like <code>"7D"</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess the answer first, then run it in the editor.</p>
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
            <li>Using window functions on unsorted data. Then the "previous row" is not the previous day.</li>
            <li>Thinking <code>shift(1)</code> gives the <em>next</em> value. It gives the previous one.</li>
            <li>Forgetting <code>groupby</code> when the table holds several series (stores, stocks, states).</li>
            <li>Using <code>rolling(7)</code> on data with missing dates. It covers 7 <em>rows</em>, not 7 days. Use <code>rolling("7D")</code> on a DatetimeIndex.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, add a 7-day moving average of visitors. Compare it with the raw numbers.</li>
            <li>Add a <code>best_so_far</code> column with <code>cummax()</code>.</li>
            <li>Find the day with the biggest percentage jump using <code>pct_change()</code> and <code>idxmax()</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In machine learning on time series, <code>shift</code> and <code>rolling</code> build features (model inputs) from the <em>past only</em>, like "sales yesterday" or "average of last week". Never use <code>shift(-1)</code> for a feature. It uses data from the future.
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

        print("\n=== Growth with a gap: choose explicitly (same on pandas 2.3 and 3.0) ===")
        with_gap = pd.Series([100.0, np.nan, 120.0, 150.0])
        print("fill first:", with_gap.ffill().pct_change().round(3).tolist())
        print("keep gaps: ", (with_gap / with_gap.shift(1) - 1).round(3).tolist())
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-pandas">Pandas</div>
          <h1 class="lc-title">Copy-on-Write and Method Chaining</h1>
        </div>
        <p class="lc-lead">Two good habits make pandas code reliable. First, know <strong>when you are changing a copy</strong> (the well-known <code>SettingWithCopyWarning</code>, fixed by <strong>Copy-on-Write</strong>). Second, write your steps as clean <strong>method chains</strong> (methods called one after another).</p>
        <div class="lc-card">
          <h3>The Problem: Views, Copies and Chained Assignment</h3>
          <p>In pandas 2 (default mode), some selections share memory with the original. These are views. Others do not share memory. These are copies. It is hard to know which one you get. Here are two common bugs:</p>
          <div class="lc-code">d = pd.DataFrame({"state": ["Kerala", "Gujarat", "Kerala"], "temp": [30, 35, 31]})<br><br># Bug 1: chained assignment — two steps: select rows, THEN set a column<br>d[d["state"] == "Kerala"]["temp"] = 0       # SettingWithCopyWarning; d is unchanged<br><br># Bug 2: modifying a subset you took earlier<br>sub = d[d["state"] == "Kerala"]<br>sub["temp"] = sub["temp"] + 1             # SettingWithCopyWarning (is d changed or not?)</div>
          <p>The warning means "you might be writing to a temporary copy". In both cases, <code>d</code> stays <code>[30, 35, 31]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The Fixes</h3>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Write</th></tr></thead>
            <tbody>
              <tr><td>Change rows of the original</td><td><code>d.loc[d["state"] == "Kerala", "temp"] = 0</code>: rows and column in <strong>one</strong> <code>.loc</code></td></tr>
              <tr><td>Work on a separate subset</td><td><code>sub = d[d["state"] == "Kerala"].copy()</code>, then change <code>sub</code> freely</td></tr>
              <tr><td>Build a new table</td><td><code>d2 = d.assign(temp=d["temp"] + 1)</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Copy-on-Write (CoW)</h3>
          <p>Copy-on-Write gives one simple rule: <strong>every result of indexing or a method behaves like a copy</strong>. Changing it never changes the original. pandas does not really copy the data until you change something. So it stays fast.</p>
          <ul class="lc-list">
            <li><strong>pandas 3.0 (released January 2026):</strong> CoW is the only mode. <code>SettingWithCopyWarning</code> is gone. Chained assignment like <code>df[mask]["col"] = x</code> <em>never</em> works.</li>
            <li><strong>pandas 2.x (this editor):</strong> turn it on with <code>pd.options.mode.copy_on_write = True</code> to get the pandas 3 behaviour now. Then chained assignment raises a <code>ChainedAssignmentError</code> warning.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Default vs CoW</h3>
          <div class="lc-code">e = pd.DataFrame({"a": [1, 2, 3]})<br>col = e["a"]<br>col.iloc[0] = 100<br>print(e["a"].tolist())             # default pandas 2 mode<br><br>with pd.option_context("mode.copy_on_write", True):<br>    e = pd.DataFrame({"a": [1, 2, 3]})<br>    col = e["a"]<br>    col.iloc[0] = 100<br>    print(e["a"].tolist(), col.tolist())</div>
          <p>Output:</p>
          <div class="lc-code">[100, 2, 3]<br>[1, 2, 3] [100, 2, 3]</div>
          <p>Without CoW, changing <code>col</code> also changed <code>e</code>, with no warning. This is because <code>e["a"]</code> was a view. With CoW, <code>col</code> acts as its own copy, and <code>e</code> is safe. Code written with <code>.loc</code> and <code>.copy()</code> works the same in both modes.</p>
        </div>
        <div class="lc-card">
          <h3>Method Chaining</h3>
          <p>Instead of many temporary variables, chain the steps inside round brackets. Write one step per line, and read from top to bottom:</p>
          <div class="lc-code">def add_tax(df, rate):<br>    return df.assign(tax=df["amount"] * rate)<br><br>report = (<br>    orders<br>    .query("amount &gt; 50")                              # filter<br>    .assign(big=lambda x: x["amount"] &gt; 200)           # new column from the CURRENT frame<br>    .pipe(add_tax, rate=0.18)                          # your own function as a step<br>    .sort_values("amount", ascending=False)<br>    .reset_index(drop=True)<br>)</div>
          <ul class="lc-list">
            <li><code>assign(col=lambda x: ...)</code>: the lambda gets the DataFrame <em>at that step</em>, so it sees earlier filters.</li>
            <li><code>pipe(func, **kwargs)</code>: calls <code>func(df, **kwargs)</code>. This lets any function be a step in the chain.</li>
            <li>Each step returns a new DataFrame. This works well with Copy-on-Write.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>Which line changes df in every pandas version? Guess the answer first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'c': ['x', 'y'], 'v': [1, 2]})<br>df.loc[df['c'] == 'x', 'v'] = 0<br>print(df['v'].tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[0, 2]</div>
          <p>A single .loc call with rows and column always updates the original, with or without Copy-on-Write.</p>
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
            <li>Hiding <code>SettingWithCopyWarning</code> instead of fixing the code with <code>.loc</code> or <code>.copy()</code>.</li>
            <li>Writing <code>df["col"][mask] = x</code>. This is also chained assignment. Use <code>df.loc[mask, "col"] = x</code>.</li>
            <li>In a chain, writing <code>.assign(big=orders["amount"] &gt; 200)</code>. This uses the <em>original</em> frame, not the filtered one. Use a lambda.</li>
            <li>Writing chains so long that nobody can debug them. Split them after logical stages. Or print <code>.shape</code> with a small <code>pipe</code> helper.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, turn on <code>pd.options.mode.copy_on_write = True</code> at the top. Run it again. Which outputs change?</li>
            <li>Rewrite section 3 so it uses <code>assign</code> instead of <code>.copy()</code> plus assignment.</li>
            <li>Add a step to the chain that keeps only the top 3 rows by <code>total</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> A rule that works in every pandas version: <em>change the original with one <code>.loc[rows, cols] = ...</code>. For everything else, make new DataFrames</em> (<code>.copy()</code>, <code>assign</code>, chains).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import warnings
        import pandas as pd

        temps = pd.DataFrame({"state": ["Kerala", "Gujarat", "Kerala", "West Bengal"],
                              "temp": [30, 35, 31, 33]})

        print("=== 1. Chained assignment does NOT change temps ===")
        with warnings.catch_warnings(record=True) as caught:
            warnings.simplefilter("always")
            temps[temps["state"] == "Kerala"]["temp"] = 0
        print("warnings:", [type(w.message).__name__ for w in caught])
        print("temps:", temps["temp"].tolist())

        print("\n=== 2. The fix: one .loc call ===")
        temps.loc[temps["state"] == "Kerala", "temp"] = 29
        print("temps:", temps["temp"].tolist())

        print("\n=== 3. A subset you plan to change: .copy() ===")
        kerala = temps[temps["state"] == "Kerala"].copy()
        kerala["temp"] = kerala["temp"] + 1        # no warning, temps untouched
        print("kerala:", kerala["temp"].tolist(), "| temps:", temps["temp"].tolist())

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
        <p class="lc-lead">Data scientists often say they spend most of their time cleaning data. This lesson puts the earlier tools into one workflow (a fixed set of steps) you can repeat. The steps are: inspect, standardise, remove duplicates, fix bad values, fill gaps and validate. Then you prepare the clean table for a machine-learning model.</p>
        <div class="lc-card">
          <h3>The Cleaning Workflow</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>Question</th><th>Tools</th></tr></thead>
            <tbody>
              <tr><td>1. Inspect</td><td>What's here? Which types? What's missing?</td><td><code>shape</code>, <code>info()</code>, <code>isna().sum()</code>, <code>describe()</code></td></tr>
              <tr><td>2. Standardise text</td><td>Are "kerala", "KERALA " and "Kerala" the same?</td><td><code>.str.strip()</code>, <code>.str.title()</code>, <code>.str.lower()</code>, <code>replace</code></td></tr>
              <tr><td>3. Duplicates</td><td>Is any row entered twice?</td><td><code>duplicated()</code>, <code>drop_duplicates(subset=..., keep="first")</code></td></tr>
              <tr><td>4. Bad values</td><td>Age 230? Negative price?</td><td><code>between</code>, IQR rule, <code>clip</code>, set to missing</td></tr>
              <tr><td>5. Missing values</td><td>Drop or fill? How?</td><td><code>fillna</code>, group-wise <code>transform</code></td></tr>
              <tr><td>6. Validate</td><td>Is it really clean now?</td><td><code>assert</code>, <code>value_counts</code>, <code>describe</code></td></tr>
            </tbody>
          </table>
          <p>Put the steps in a function (<code>def clean(raw): ... return df</code>) or a method chain. Then the same cleaning runs on next month's file.</p>
        </div>
        <div class="lc-card">
          <h3>Duplicates and Outliers</h3>
          <div class="lc-code">df.duplicated().sum()                          # how many exact repeats<br>df.drop_duplicates(subset=["email"], keep="last")   # one row per email<br><br>q1, q3 = df["fee"].quantile([0.25, 0.75])<br>iqr = q3 - q1<br>outliers = df[(df["fee"] &lt; q1 - 1.5 * iqr) | (df["fee"] &gt; q3 + 1.5 * iqr)]<br>df["fee"] = df["fee"].clip(lower=0, upper=5000)     # cap extreme values<br>df.loc[~df["age"].between(15, 100), "age"] = pd.NA   # impossible → missing</div>
          <p>Do not delete outliers (values far from the rest) automatically. A ₹5 lakh order may be a typing mistake, or it may be your best customer. Impossible values (age 230) should become missing. Unusual but possible values need a business decision.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Before and After</h3>
          <p>The raw data in the starter code has extra spaces, mixed case, a duplicate row, an age of 230 and two missing values. After the workflow:</p>
          <div class="lc-code">         name     state   plan   age  monthly_fee  churned<br>0    Asha Rao    Kerala    pro  28.0        999.0        0<br>1  Ravi Kumar   Gujarat  basic  34.0        299.0        1<br>2  Meera Iyer    Kerala    pro  31.0        999.0        0<br>3  Kiran Shah  Nagaland   plus  41.0        599.0        0<br>4   Dev Patel  Nagaland  basic  31.0        299.0        1<br>5  Priya Nair   Gujarat   plus  25.0        599.0        0<br>6  Sam Joseph    Kerala  basic  31.0        299.0        1</div>
          <p>8 rows became 7 (the duplicate was removed). Each state has one spelling. The impossible age became missing, and was then filled with the median (31). Priya's missing fee was filled with the median fee of her plan (599).</p>
        </div>
        <div class="lc-card">
          <h3>From Clean Table to Model Input</h3>
          <ul class="lc-list">
            <li><strong>Features and target:</strong> features are the model inputs, and the target is what you predict. <code>X = df[feature_cols]</code>, <code>y = df["churned"]</code>. Never put the target inside X.</li>
            <li><strong>One-hot encoding</strong> (one 0/1 column per category): <code>pd.get_dummies(X, columns=["state", "plan"], dtype="int64")</code> creates <code>state_Gujarat</code>, <code>state_Kerala</code>, … Without <code>dtype</code>, the new columns are <strong>bool</strong> (True/False) in pandas 2+.</li>
            <li><strong>Ordinal categories</strong> (categories with an order, like basic &lt; plus &lt; pro) can be mapped to numbers instead: <code>df["plan"].map({"basic": 0, "plus": 1, "pro": 2})</code>.</li>
            <li><strong>Split:</strong> <code>train = X.sample(frac=0.8, random_state=42)</code>; <code>test = X.drop(train.index)</code>. Select <code>y</code> with the same index.</li>
            <li><strong>Scale with training statistics only:</strong> calculate mean/std on the training rows. Then use them on both sets. If you use the whole dataset, test information "leaks" into training.</li>
          </ul>
          <p>In real projects, scikit-learn's <code>train_test_split</code>, <code>OneHotEncoder</code>, <code>StandardScaler</code> and <code>Pipeline</code> do these steps. You use pandas first, to understand and prepare the data.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What columns does this create? Guess the answer first, then run it in the editor.</p>
          <div class="lc-code">df = pd.DataFrame({'plan': ['basic', 'pro', 'basic']})<br>print(pd.get_dummies(df, columns=['plan'], dtype='int64').columns.tolist())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">['plan_basic', 'plan_pro']</div>
          <p>One 0/1 column per category, named prefix_value.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Preparing features for scikit-learn</li>
            <li>Removing duplicates from customer lists</li>
            <li>Checking data with assert</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Cleaning the raw data directly, with no copy. Keep <code>raw</code> unchanged and build <code>df = raw.copy()</code>.</li>
            <li>Removing duplicates <em>before</em> standardising text. "Kerala" and "kerala " look different until they are cleaned.</li>
            <li>Scaling or filling with statistics from the full dataset before splitting (data leakage).</li>
            <li>Forgetting that <code>get_dummies</code> on test data may create different columns. Make them match with <code>X_test.reindex(columns=X_train.columns, fill_value=0)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, add a row with state <code>"kerala "</code>. Check that step 2 still gives only three states.</li>
            <li>Encode <code>plan</code> as an ordinal number (basic=0, plus=1, pro=2) instead of dummies.</li>
            <li>Add an <code>assert</code> that every <code>monthly_fee</code> is one of 299, 599 or 999.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> End every cleaning script with checks, like <code>assert df.notna().all().all()</code> and <code>assert df["age"].between(15, 100).all()</code>. If tomorrow's file breaks a rule, you find out at once, not later in a wrong report.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        raw = pd.read_csv(io.StringIO("""name,state,plan,age,monthly_fee,churned
         Asha Rao ,kerala,Pro,28,999,0
        Ravi Kumar,Gujarat,basic,34,299,1
        Meera Iyer,KERALA,pro,,999,0
        Ravi Kumar,Gujarat,basic,34,299,1
        Kiran Shah,Nagaland,Plus,41,599,0
        Dev Patel,nagaland,basic,230,299,1
        Priya Nair,Gujarat,plus,25,,0
        Sam Joseph,Kerala,basic,31,299,1
        """))
        print("=== 1. Inspect ===")
        print(raw.shape, "| missing:", raw.isna().sum().to_dict())

        print("\n=== 2. Standardise text ===")
        df = raw.copy()
        df["name"] = df["name"].str.strip()
        df["state"] = df["state"].str.strip().str.title()
        df["plan"] = df["plan"].str.lower()
        print(df["state"].value_counts().to_dict(), df["plan"].unique().tolist())

        print("\n=== 3. Duplicates ===")
        print("duplicate rows:", df.duplicated().sum())
        df = df.drop_duplicates().reset_index(drop=True)

        print("\n=== 4. Impossible values and missing ===")
        df.loc[~df["age"].between(15, 100), "age"] = pd.NA      # 230 is impossible
        # (in real projects, calculate fill values on the TRAINING rows only)
        df["age"] = df["age"].fillna(df["age"].median())
        df["monthly_fee"] = df["monthly_fee"].fillna(df.groupby("plan")["monthly_fee"].transform("median"))
        assert df.notna().all().all(), "still missing values"
        print(df)

        print("\n=== 5. Encode categories ===")
        X = pd.get_dummies(df[["state", "plan", "age", "monthly_fee"]], columns=["state", "plan"], dtype="int64")
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
        <p class="lc-lead">You are the data analyst for a small chain of stationery shops. The raw order export is messy. It has Indian-style dates, state names written in different ways, a duplicated order and a missing quantity. Use everything from this course to turn it into a clear business report.</p>
        <div class="lc-card">
          <h3>The Brief</h3>
          <ul class="lc-list">
            <li>How much revenue (money from sales) did we make? Which <strong>states</strong> bring in the most?</li>
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
              <tr><td>Clean</td><td><code>to_datetime(format="%d/%m/%Y")</code>; <code>.str.strip().str.title()</code>; <code>fillna</code>; then <code>drop_duplicates</code></td><td>Cleaning, dates, strings, missing data</td></tr>
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
          <div class="lc-code">orders = (<br>    pd.read_csv(io.StringIO(orders_csv))<br>    .assign(date=lambda d: pd.to_datetime(d["date"], format="%d/%m/%Y"),<br>            state=lambda d: d["state"].str.strip().str.title(),<br>            qty=lambda d: d["qty"].fillna(1).astype("int64"))<br>    .drop_duplicates()            # AFTER standardising, as in Lesson 19<br>)</div>
          <p>Part of the starter code's output:</p>
          <div class="lc-code">=== Clean orders: (10, 6) | missing left: 0<br>total revenue: Rs 11,029<br><br>=== Revenue by state ===<br>             revenue  share_%<br>state<br>West Bengal     4150     37.6<br>Gujarat         3810     34.5<br>Kerala          2170     19.7<br>Nagaland         899      8.2<br>...<br>=== Monthly trend ===<br>            revenue  growth_%<br>date<br>2024-01-31     4390       NaN<br>2024-02-29     1759     -59.9<br>2024-03-31     4880     177.4</div>
          <p>Duplicates are removed <em>after</em> the text is standardised (the order from Lesson 19). <code>" West Bengal"</code> and <code>"West Bengal"</code> only count as the same after they are cleaned. 11 raw rows became 10 orders. We assumed the missing quantity was 1. You should state this assumption in the report. February sales were low. March sales rose strongly again.</p>
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
              <tr><td>17–19</td><td>Windows, CoW, cleaning for ML</td><td><code>rolling</code>, <code>shift</code>, Copy-on-Write, <code>pipe</code>, <code>get_dummies</code>, splits without data leakage</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess the answer first, then run it in the editor.</p>
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
            <li>Any analysis you give to a manager</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes in Real Projects</h3>
          <ul class="lc-list">
            <li>Merging before removing duplicates. The duplicates multiply with every join.</li>
            <li>Reporting numbers without stating cleaning assumptions (filled quantities, dropped rows).</li>
            <li>Parsing dates without a format, so day and month get swapped without any warning.</li>
            <li>Forgetting to check row counts after each major step.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ul class="lc-list">
            <li>Add average order value per state (<code>revenue</code> sum ÷ number of orders).</li>
            <li>Find each customer's first and last order date with <code>agg(first=("date", "min"), last=("date", "max"))</code>.</li>
            <li>Add a 2-month rolling average to the monthly trend.</li>
            <li>Export the state summary with <code>to_csv(index=False)</code> and print the text.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next steps:</strong> draw charts of these tables with Matplotlib or seaborn. Build models with scikit-learn. Try Polars or DuckDB for data that is too big for pandas. The steps you practised here (clean, combine, group, reshape, validate) work with all of these tools.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import pandas as pd

        orders_csv = """order_id,date,customer,product_id,qty,state
        1001,05/01/2024,Asha,P1,2,kerala
        1002,07/01/2024,Ravi,P2,1,Gujarat
        1003,07/01/2024,Meera,P3,5, West Bengal
        1003,07/01/2024,Meera,P3,5,West Bengal
        1004,19/01/2024,Asha,P2,,Kerala
        1005,02/02/2024,Kiran,P1,3,gujarat
        1006,14/02/2024,Ravi,P3,2,Gujarat
        1007,28/02/2024,Dev,P4,1,Nagaland
        1008,03/03/2024,Asha,P1,4,Kerala
        1009,15/03/2024,Meera,P2,2,West Bengal
        1010,30/03/2024,Kiran,P3,6,Gujarat
        """
        products = pd.DataFrame({"product_id": ["P1", "P2", "P3", "P4"],
                                 "product": ["Notebook", "Backpack", "Pen set", "Lamp"],
                                 "price": [120, 1450, 250, 899]})

        # 1. Load and clean
        orders = (
            pd.read_csv(io.StringIO(orders_csv))
            .assign(date=lambda d: pd.to_datetime(d["date"], format="%d/%m/%Y"),
                    state=lambda d: d["state"].str.strip().str.title(),
                    qty=lambda d: d["qty"].fillna(1).astype("int64"))
            .drop_duplicates()            # after standardising text (Lesson 19)
        )
        print("=== Clean orders:", orders.shape, "| missing left:", int(orders.isna().sum().sum()))
        # 2. Enrich with a validated lookup
        sales = orders.merge(products, on="product_id", how="left", validate="many_to_one")
        sales["revenue"] = sales["qty"] * sales["price"]
        print("total revenue: Rs", f"{sales['revenue'].sum():,}")
        # 3. Who, where, what
        print("\n=== Revenue by state ===")
        by_state = sales.groupby("state")["revenue"].sum().sort_values(ascending=False)
        print(pd.DataFrame({"revenue": by_state, "share_%": (by_state / by_state.sum() * 100).round(1)}))
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

module NumpyContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Introduction to NumPy</h1>
        </div>
        <p class="lc-lead">NumPy (Numerical Python) is a library that makes Python fast with numbers. Its main object is the <strong>ndarray</strong>. It stores many values of the same type together in one block of memory. You can do maths on all of them at once.</p>
        <div class="lc-card">
          <h3>What Is an ndarray?</h3>
          <p>An <code>ndarray</code> ("N-dimensional array") is a grid of values. Every value has the <strong>same data type</strong> (for example, all integers or all floats). The array also has a fixed <strong>shape</strong> (the number of rows, columns and so on).</p>
          <ul class="lc-list">
            <li><strong>1D array</strong>: a row of values, like one student's marks in 5 subjects.</li>
            <li><strong>2D array</strong>: a table, like the marks of 30 students in 5 subjects.</li>
            <li><strong>3D and higher</strong>: for example, a colour image. Its shape is height × width × 3 colour channels.</li>
          </ul>
          <p>Almost every data tool in Python uses NumPy arrays. This includes pandas, scikit-learn, Matplotlib and PyTorch.</p>
        </div>
        <div class="lc-card">
          <h3>Why Is NumPy Fast?</h3>
          <ul class="lc-list">
            <li><strong>Same type, one block of memory.</strong> A Python list stores pointers (memory addresses) to separate Python objects. An array stores the raw numbers next to each other.</li>
            <li><strong>Loops run in compiled C code.</strong> When you write <code>arr * 2</code>, NumPy loops over the numbers in C, not in Python.</li>
            <li><strong>Vectorisation.</strong> You write the operation once for the whole array. NumPy then applies it to each element. You do not need a <code>for</code> loop.</li>
          </ul>
          <p>For large arrays, this is often 10–100× faster than a Python loop. The code is also shorter.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: List vs Array</h3>
          <p>If you multiply a list by 2, the list is <em>repeated</em>. If you multiply an array by 2, <em>every number is doubled</em>.</p>
          <div class="lc-code">import numpy as np<br><br>marks = [72, 85, 91]<br>print(marks * 2)        # list: repeated<br><br>arr = np.array(marks)<br>print(arr * 2)          # array: element-wise<br>print(arr + 5)<br>print(type(arr))</div>
          <p>Output:</p>
          <div class="lc-code">[72, 85, 91, 72, 85, 91]<br>[144 170 182]<br>[77 90 96]<br>&lt;class 'numpy.ndarray'&gt;</div>
          <p>Notice that NumPy prints arrays <strong>without commas</strong>: <code>[144 170 182]</code>. This is a quick way to tell an array from a list.</p>
        </div>
        <div class="lc-card">
          <h3>Python List vs NumPy Array</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Python list</th><th>NumPy array</th></tr></thead>
            <tbody>
              <tr><td>Element types</td><td>Can mix types</td><td>One dtype (data type) for all elements</td></tr>
              <tr><td>Memory</td><td>Pointers to separate objects</td><td>One compact block, values side by side</td></tr>
              <tr><td><code>x * 2</code></td><td>Repeats the list</td><td>Doubles every element</td></tr>
              <tr><td>Maths on all items</td><td>Needs a loop or comprehension</td><td>One expression (vectorised)</td></tr>
              <tr><td>Size</td><td>Grows with <code>append</code></td><td>Fixed size (make a new array to grow it)</td></tr>
              <tr><td>Best for</td><td>General collections, mixed data</td><td>Numbers, maths, data science</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Which Version Am I Using?</h3>
          <p>Check with <code>np.__version__</code>. NumPy 2.0 (2024) was a big cleanup release. The newest release in 2026 is the 2.5 series. The editor in this course runs NumPy 2.2 in your browser. Everything in this course works on any NumPy 2.x.</p>
          <div class="lc-code">import numpy as np<br>print(np.__version__)   # e.g. 2.2.5</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">a = np.array([1, 2, 3])<br>print(a + a, [1, 2, 3] + [1, 2, 3])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[2 4 6] [1, 2, 3, 1, 2, 3]</div>
          <p>Arrays add element by element. Lists join end to end.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Pandas columns are NumPy arrays inside</li>
            <li>Images are arrays of pixel values</li>
            <li>Scikit-learn models take arrays as input</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the import alias (short name). Everyone uses <code>import numpy as np</code>.</li>
            <li>Expecting <code>list * 2</code> to double the numbers. First convert the list to an array with <code>np.array(...)</code>.</li>
            <li>Writing a <code>for</code> loop over array elements when one vectorised expression is enough.</li>
            <li>Mixing strings and numbers in one array. NumPy converts everything to one type (here, strings), so maths stops working.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter code, a shop's prices are stored in an array.</p>
          <ul class="lc-list">
            <li>Add 18% GST to every price with one expression (<code>prices * 1.18</code>).</li>
            <li>Print the total bill with <code>prices.sum()</code>.</li>
            <li>Try <code>np.array([1, 'two', 3])</code> and print its <code>dtype</code>. What happened to the numbers?</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Think "the whole array at once". When you are about to loop over numbers, ask yourself: can I write this as one NumPy expression?
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        print("NumPy version:", np.__version__)

        # A Python list vs a NumPy array
        prices_list = [120, 80, 45, 300]
        prices = np.array(prices_list)

        print("\n=== List vs array ===")
        print("list * 2 :", prices_list * 2)   # repeats the list
        print("array * 2:", prices * 2)        # doubles each price

        print("\n=== Vectorised maths (no loops) ===")
        print("prices     :", prices)
        print("+ 10 each  :", prices + 10)
        print("with 5% off:", prices * 0.95)
        print("squared    :", prices ** 2)

        print("\n=== One-line summaries ===")
        print("total:", prices.sum())
        print("mean :", prices.mean())
        print("max  :", prices.max())

        print("\n=== The same with a loop (slower, longer) ===")
        discounted = []
        for p in prices_list:
            discounted.append(p * 0.95)
        print("loop result:", discounted)
        print("same values:", np.allclose(discounted, prices * 0.95))
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Creating Arrays</h1>
        </div>
        <p class="lc-lead">You rarely type every value by hand. NumPy has functions that build arrays in one line. They can make arrays of zeros, ones, number ranges and evenly spaced points.</p>
        <div class="lc-card">
          <h3>From Existing Data</h3>
          <p><code>np.array()</code> converts a list (or nested lists) into an array. NumPy picks a dtype (data type) for you, or you can set it yourself.</p>
          <div class="lc-code">np.array([1, 2, 3])                 # 1D, integers<br>np.array([[1, 2], [3, 4]])          # 2D, 2 rows × 2 columns<br>np.array([1, 2, 3], dtype=float)    # [1. 2. 3.]</div>
          <p>Nested lists must be "rectangular". This means every row has the same length. If not, NumPy raises an error.</p>
        </div>
        <div class="lc-card">
          <h3>Filled Arrays</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Result</th><th>Default dtype</th></tr></thead>
            <tbody>
              <tr><td><code>np.zeros((2, 3))</code></td><td>2×3 of 0.0</td><td>float64</td></tr>
              <tr><td><code>np.ones(4)</code></td><td>four 1.0 values</td><td>float64</td></tr>
              <tr><td><code>np.full((2, 2), 7)</code></td><td>2×2 filled with 7</td><td>from the fill value</td></tr>
              <tr><td><code>np.eye(3)</code></td><td>3×3 identity matrix (1s on the diagonal, 0s elsewhere)</td><td>float64</td></tr>
              <tr><td><code>np.empty(5)</code></td><td>5 <em>uninitialised</em> values (random leftover data)</td><td>float64</td></tr>
              <tr><td><code>np.zeros_like(a)</code></td><td>zeros with the same shape and dtype as <code>a</code></td><td>same as <code>a</code></td></tr>
            </tbody>
          </table>
          <p>You pass shapes as a <strong>tuple</strong>: <code>np.zeros((2, 3))</code>, not <code>np.zeros(2, 3)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>arange vs linspace</h3>
          <ul class="lc-list">
            <li><code>np.arange(start, stop, step)</code> works like Python's <code>range</code>. The <strong>stop value is not included</strong>. You choose the step.</li>
            <li><code>np.linspace(start, stop, num)</code> makes <code>num</code> evenly spaced points. The <strong>stop value is included</strong> by default. You choose how many points.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>You know…</th><th>Use</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>the step size</td><td><code>arange</code></td><td><code>np.arange(0, 10, 3)</code> → <code>[0 3 6 9]</code></td></tr>
              <tr><td>how many points</td><td><code>linspace</code></td><td><code>np.linspace(0, 1, 5)</code> → <code>[0. 0.25 0.5 0.75 1.]</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: The Float-Step Trap</h3>
          <p>With a decimal step, rounding error can make <code>arange</code> include a value you expected it to leave out:</p>
          <div class="lc-code">print(np.arange(0, 10, 3))<br>print(np.linspace(0, 1, 5))<br>print(np.arange(1, 1.3, 0.1))   # stop should be excluded...<br>print(np.full((2, 2), 7))</div>
          <p>Output:</p>
          <div class="lc-code">[0 3 6 9]<br>[0.   0.25 0.5  0.75 1.  ]<br>[1.  1.1 1.2 1.3]<br>[[7 7]<br> [7 7]]</div>
          <p>The third line has 4 values, including 1.3! The computer cannot store 0.1 exactly. So the fourth step lands just below 1.3. For decimal ranges, use <code>np.linspace</code> instead.</p>
        </div>
        <div class="lc-card">
          <h3>What About Random Arrays?</h3>
          <p>Random arrays come from a random <em>Generator</em> (an object that makes random numbers). First write <code>rng = np.random.default_rng(42)</code>. Then use <code>rng.random(3)</code> or <code>rng.integers(1, 7, size=5)</code>. The "Random Numbers with Generator" lesson covers this in detail.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>How many values does each call create? Guess first, then run it in the editor.</p>
          <div class="lc-code">print(np.arange(2, 11, 2).size, np.linspace(2, 10, 5).size)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">5 5</div>
          <p>arange stops before 11 (2, 4, 6, 8, 10). linspace makes exactly 5 points, including 10.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Time axes for charts with linspace</li>
            <li>Index ranges with arange</li>
            <li>Empty starting arrays made with zeros, which you fill later</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>np.zeros(2, 3)</code>: the second argument is the dtype, so this raises an error. Write <code>np.zeros((2, 3))</code>.</li>
            <li>Using <code>arange</code> with a float step and trusting the end point. Use <code>linspace</code> instead.</li>
            <li>Using <code>np.empty</code> and reading it before you fill it. It contains leftover memory, not zeros.</li>
            <li>Ragged lists like <code>np.array([[1, 2], [3]])</code>. Rows of different lengths raise a <code>ValueError</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>Create the multiplication table row for 7: <code>np.arange(7, 71, 7)</code>. Check that it has 10 values.</li>
            <li>Create 11 evenly spaced temperatures from 20 to 30 °C with <code>linspace</code>.</li>
            <li>Make a 3×3 array full of 5s with <code>np.full</code>. Then make one with <code>np.ones((3, 3)) * 5</code>. Compare their dtypes.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Remember "<strong>a</strong>range = step, <strong>lin</strong>space = count". Use <code>dtype=</code> when the default is not what you want (the default is float64 for zeros/ones).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        print("=== From lists ===")
        a = np.array([3, 1, 4, 1, 5])
        m = np.array([[1, 2, 3], [4, 5, 6]])
        print(a)
        print(m)
        print("float version:", np.array([3, 1, 4], dtype=float))

        print("\n=== Filled arrays ===")
        print("zeros((2, 3)):\n", np.zeros((2, 3)))
        print("ones(4):", np.ones(4))
        print("full((2, 2), 7):\n", np.full((2, 2), 7))
        print("eye(3) as int:\n", np.eye(3, dtype=int))
        print("zeros_like(m):\n", np.zeros_like(m))

        print("\n=== arange: you choose the step (stop excluded) ===")
        print(np.arange(5))
        print(np.arange(2, 20, 4))
        print(np.arange(1, 1.3, 0.1), "<- float step trap!")

        print("\n=== linspace: you choose the count (stop included) ===")
        print(np.linspace(0, 1, 5))
        print(np.linspace(0, 100, 3))

        print("\n=== Sizes ===")
        print("arange(0, 1, 0.25) has", np.arange(0, 1, 0.25).size, "values")
        print("linspace(0, 1, 5) has", np.linspace(0, 1, 5).size, "values")
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Array Attributes and dtypes</h1>
        </div>
        <p class="lc-lead">Every array stores information about itself. This includes its shape, its number of dimensions and the <strong>dtype</strong> (data type) of its elements. If you check these first, you avoid many bugs.</p>
        <div class="lc-card">
          <h3>The Key Attributes</h3>
          <table class="lc-table">
            <thead><tr><th>Attribute</th><th>Meaning</th><th>For a 2×3 float64 array</th></tr></thead>
            <tbody>
              <tr><td><code>a.shape</code></td><td>Size of each dimension (a tuple)</td><td><code>(2, 3)</code></td></tr>
              <tr><td><code>a.ndim</code></td><td>Number of dimensions</td><td><code>2</code></td></tr>
              <tr><td><code>a.size</code></td><td>Total number of elements</td><td><code>6</code></td></tr>
              <tr><td><code>a.dtype</code></td><td>Type of every element</td><td><code>float64</code></td></tr>
              <tr><td><code>a.itemsize</code></td><td>Bytes per element</td><td><code>8</code></td></tr>
              <tr><td><code>a.nbytes</code></td><td>Total bytes = size × itemsize</td><td><code>48</code></td></tr>
            </tbody>
          </table>
          <p>These are <strong>attributes</strong> (stored values), not methods (functions you call). Write <code>a.shape</code>, not <code>a.shape()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common dtypes</h3>
          <table class="lc-table">
            <thead><tr><th>dtype</th><th>Holds</th><th>Range / note</th></tr></thead>
            <tbody>
              <tr><td><code>int8</code>, <code>int16</code>, <code>int32</code>, <code>int64</code></td><td>Whole numbers</td><td>int8: −128 to 127; int64: about ±9.2 × 10¹⁸</td></tr>
              <tr><td><code>float32</code>, <code>float64</code></td><td>Decimals</td><td>float32 ≈ 7 digits, float64 ≈ 15–16 digits</td></tr>
              <tr><td><code>bool</code></td><td>True / False</td><td>1 byte each</td></tr>
              <tr><td><code>complex128</code></td><td>Complex numbers</td><td>e.g. <code>1+2j</code></td></tr>
              <tr><td><code>&lt;U10</code></td><td>Unicode strings</td><td>fixed maximum length (here 10 characters)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The Default Integer Depends on the Platform</h3>
          <p>When you write <code>np.array([1, 2, 3])</code> or <code>astype(int)</code>, NumPy uses the default integer of your platform (your computer and system):</p>
          <ul class="lc-list">
            <li><strong>int64</strong> on normal 64-bit Windows, macOS and Linux with NumPy 2.x. (Before NumPy 2.0, Windows used int32.)</li>
            <li><strong>int32</strong> in this course's browser editor. This is because it runs Python on 32-bit WebAssembly.</li>
          </ul>
          <p>When the size matters (large sums, IDs, money in paise), set it clearly: <code>dtype=np.int64</code> or <code>astype(np.int64)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Converting with astype</h3>
          <div class="lc-code">b = np.array([1.7, -1.7, 2.5])<br>print(b.astype(np.int64))       # cuts off the decimals<br>print(np.round(b))              # rounds (half to even)<br><br>x = np.array([127], dtype=np.int8)<br>print(x + 1)                    # overflow wraps around!<br><br>print(repr(np.float64(3.0)), np.float64(3.0))</div>
          <p>Output:</p>
          <div class="lc-code">[ 1 -1  2]<br>[ 2. -2.  2.]<br>[-128]<br>np.float64(3.0) 3.0</div>
          <ul class="lc-list">
            <li><code>astype</code> to an integer <strong>truncates toward zero</strong> (cuts off the decimals): 1.7 → 1 and −1.7 → −1. It does not round.</li>
            <li><code>np.round</code> rounds halves to the nearest even number: 2.5 → 2.0.</li>
            <li>Integer overflow (a value too big for its type) in arrays <strong>wraps around silently</strong>. You get no error, just a wrong answer.</li>
            <li>In NumPy 2, the <code>repr</code> of a scalar (a single value) shows its type: <code>np.float64(3.0)</code>. <code>print()</code> still shows <code>3.0</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>NumPy 2 Removed Some Old Names</h3>
          <table class="lc-table">
            <thead><tr><th>Old way: don't use (removed in 2.0)</th><th>Use instead</th></tr></thead>
            <tbody>
              <tr><td><code>np.float_</code></td><td><code>np.float64</code></td></tr>
              <tr><td><code>np.NaN</code>, <code>np.NAN</code></td><td><code>np.nan</code></td></tr>
              <tr><td><code>np.Inf</code>, <code>np.PINF</code>, <code>np.infty</code></td><td><code>np.inf</code></td></tr>
              <tr><td><code>np.complex_</code></td><td><code>np.complex128</code></td></tr>
              <tr><td><code>np.string_</code>, <code>np.unicode_</code></td><td><code>np.bytes_</code>, <code>np.str_</code></td></tr>
            </tbody>
          </table>
          <p>Older tutorials still use these names. In NumPy 2 they raise an <code>AttributeError</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Two Special dtypes: datetime64 and Structured Arrays</h3>
          <p><strong>datetime64</strong> stores dates as numbers, so you can add and subtract them. <strong>Structured arrays</strong> give each element named fields of different types, like a small table.</p>
          <div class="lc-code">d = np.array(["2026-01-26", "2026-08-15"], dtype="datetime64[D]")<br>print(d, d.dtype)<br>print(d[1] - d[0])<br>print(d + np.timedelta64(7, "D"))<br><br>people = np.array([("Asha", 21, 82.5), ("Ravi", 19, 74.0)],<br>                  dtype=[("name", "U10"), ("age", "i8"), ("marks", "f8")])<br>print(people["name"], people["marks"].mean())<br>print(people[people["age"] &gt; 20])</div>
          <p>Output:</p>
          <div class="lc-code">['2026-01-26' '2026-08-15'] datetime64[D]<br>201 days<br>['2026-02-02' '2026-08-22']<br>['Asha' 'Ravi'] 78.25<br>[('Asha', 21, 82.5)]</div>
          <ul class="lc-list">
            <li>The unit in brackets matters: <code>[D]</code> = days, <code>[s]</code> = seconds. If you subtract two dates, you get a <code>timedelta64</code> (a time difference).</li>
            <li><code>people["marks"]</code> is a normal float array, so every NumPy function works on it. Masks (True/False filters) select whole records.</li>
            <li>For real tables with many columns, use a pandas DataFrame (Lesson 18). Structured arrays are mainly for reading binary files and fixed record layouts.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">a = np.array([2.9, -2.9, 0.5])<br>print(a.astype(np.int64), a.dtype)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[ 2 -2  0] float64</div>
          <p>astype truncates toward zero and returns a new array. The original a keeps its float64 dtype.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Float32 to use half the memory in deep learning</li>
            <li>Int8/uint8 for image pixels</li>
            <li>Checking dtype after loading data</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Calling <code>a.shape()</code>. It is an attribute, so the brackets cause a <code>TypeError</code>.</li>
            <li>Expecting <code>astype(int)</code> to round. Round first: <code>np.round(b).astype(np.int64)</code>.</li>
            <li>Using a small integer type (int8, int16, or int32 in the browser) for big values. This gives silent overflow.</li>
            <li>Thinking <code>astype(int)</code> gives the same dtype on every computer. It does not, so name the size.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>Create a 4×5 array of zeros with <code>dtype=np.float32</code>. Guess <code>size</code> and <code>nbytes</code>, then print them.</li>
            <li>Round <code>[2.4, 2.6, -0.6]</code> to the nearest whole number and convert it to <code>np.int64</code>.</li>
            <li>Run the starter code. Compare the "default int" line with a friend who runs NumPy on a laptop.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Print <code>a.shape</code> and <code>a.dtype</code> when something looks wrong. Most NumPy bugs come from an unexpected shape or dtype.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        m = np.array([[1.5, 2.0, 3.25],
                      [4.0, 5.5, 6.0]])

        print("=== Attributes of m ===")
        print("shape   :", m.shape)
        print("ndim    :", m.ndim)
        print("size    :", m.size)
        print("dtype   :", m.dtype)
        print("itemsize:", m.itemsize, "bytes")
        print("nbytes  :", m.nbytes, "bytes")

        print("\n=== Platform default integer ===")
        print("np.array([1, 2, 3]).dtype:", np.array([1, 2, 3]).dtype)
        print("(int32 in this browser editor, int64 on a 64-bit laptop)")
        print("explicit:", np.array([1, 2, 3], dtype=np.int64).dtype)

        print("\n=== astype truncates, round rounds ===")
        b = np.array([1.7, -1.7, 2.5, 3.5])
        print("original      :", b)
        print("astype(int64) :", b.astype(np.int64))
        print("round         :", np.round(b))
        print("round -> int64:", np.round(b).astype(np.int64))
        print("as bool       :", np.array([0, 3, -1, 0]).astype(bool))

        print("\n=== Memory: float32 vs float64 ===")
        big64 = np.zeros(1000)
        big32 = np.zeros(1000, dtype=np.float32)
        print("float64 bytes:", big64.nbytes, "| float32 bytes:", big32.nbytes)

        print("\n=== Silent overflow ===")
        small = np.array([120, 127], dtype=np.int8)
        print("int8 + 10:", small + 10)

        print("\n=== NumPy 2 scalar repr ===")
        total = np.array([1.5, 2.5]).sum()
        print("print:", total, "| repr:", repr(total))

        print("\n=== datetime64 and structured dtypes ===")
        d = np.array(["2026-01-26", "2026-08-15"], dtype="datetime64[D]")
        print("days between:", d[1] - d[0])
        people = np.array([("Asha", 21), ("Ravi", 19)], dtype=[("name", "U10"), ("age", "i8")])
        print("names:", people["name"], "| ages:", people["age"])
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Indexing and Slicing</h1>
        </div>
        <p class="lc-lead">Indexing picks single elements. Slicing picks ranges of elements. NumPy uses the same <code>start:stop:step</code> idea as Python lists. But it adds one index per dimension, separated by commas.</p>
        <div class="lc-card">
          <h3>1D Arrays Work Like Lists</h3>
          <div class="lc-code">a = np.array([10, 20, 30, 40, 50])<br>a[0]      # 10  — first<br>a[-1]     # 50  — last<br>a[1:4]    # [20 30 40]  — stop is excluded<br>a[::2]    # [10 30 50]  — every 2nd<br>a[::-1]   # [50 40 30 20 10]  — reversed</div>
        </div>
        <div class="lc-card">
          <h3>2D Arrays: [row, column]</h3>
          <p>For a 2D array, write <code>m[row, col]</code>. A colon <code>:</code> on its own means "all" in that dimension.</p>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Meaning</th><th>Result shape for a 3×4 m</th></tr></thead>
            <tbody>
              <tr><td><code>m[1, 2]</code></td><td>row 1, column 2 (one value)</td><td>scalar (a single value)</td></tr>
              <tr><td><code>m[0]</code> or <code>m[0, :]</code></td><td>whole row 0</td><td><code>(4,)</code></td></tr>
              <tr><td><code>m[:, 1]</code></td><td>whole column 1</td><td><code>(3,)</code></td></tr>
              <tr><td><code>m[0:2, 1:3]</code></td><td>rows 0–1, columns 1–2</td><td><code>(2, 2)</code></td></tr>
              <tr><td><code>m[::2, ::2]</code></td><td>every other row and column</td><td><code>(2, 2)</code></td></tr>
              <tr><td><code>m[:, -1]</code></td><td>last column</td><td><code>(3,)</code></td></tr>
            </tbody>
          </table>
          <p><code>m[1][2]</code> also works, but it does two separate steps. It first takes row 1, then indexes it. <code>m[1, 2]</code> is the NumPy way. It is faster, and it works with slices in both positions.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Marks Table</h3>
          <p>Rows are students. Columns are subjects.</p>
          <div class="lc-code">m = np.array([[1, 2, 3, 4],<br>              [5, 6, 7, 8],<br>              [9, 10, 11, 12]])<br>print(m[1, 2], m[-1, -1])<br>print(m[0])<br>print(m[:, 1])<br>print(m[0:2, 1:3])<br>print(m[::2, ::2])</div>
          <p>Output:</p>
          <div class="lc-code">7 12<br>[1 2 3 4]<br>[ 2  6 10]<br>[[2 3]<br> [6 7]]<br>[[ 1  3]<br> [ 9 11]]</div>
        </div>
        <div class="lc-card">
          <h3>Changing Values</h3>
          <p>You can assign a value to one element or to a whole slice. A single value is <em>broadcast</em> (copied) to every position in the slice.</p>
          <div class="lc-code">a = np.array([10, 20, 30, 40, 50])<br>a[1:3] = 0          # a is now [10  0  0 40 50]<br>m[:, 0] = -1        # set the whole first column<br>m[2] = [7, 7, 7, 7] # replace row 2</div>
        </div>
        <div class="lc-card">
          <h3>3D Arrays</h3>
          <p>The same idea works for more dimensions: use one index per axis (dimension). For <code>t = np.arange(24).reshape(2, 3, 4)</code>, <code>t[1, 2, 3]</code> is <code>23</code> and <code>t[0, :, 0]</code> is <code>[0 4 8]</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">m = np.arange(9).reshape(3, 3)<br>print(m[1:, ::2])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[[3 5]<br> [6 8]]</div>
          <p>It takes rows from 1 onwards, and every second column (0 and 2).</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Cropping an image: img[top:bottom, left:right]</li>
            <li>Taking the first n samples: X[:n]</li>
            <li>Selecting a feature column: X[:, 2]</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting that the stop index is not included: <code>a[1:4]</code> gives 3 elements, not 4.</li>
            <li>Writing <code>m[:][1]</code> to get column 1. That returns <em>row</em> 1. Use <code>m[:, 1]</code>.</li>
            <li>Going past the end with a single index (<code>a[5]</code> on 5 elements) raises <code>IndexError</code>. Slices past the end are silently made shorter.</li>
            <li>Thinking a slice is a separate copy. Slices share memory with the original. See the next lesson, "Views vs Copies".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter's sales table, print the sales of the last shop for the last two months.</li>
            <li>Print every shop's sales for month 3 only (a column).</li>
            <li>Set all of shop 0's sales to 0 with one assignment. Then print the table.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read <code>m[a, b]</code> as "rows a, columns b". Say it out loud: "all rows, column 2" is <code>m[:, 2]</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Monthly sales (in thousand rupees): 3 shops x 4 months
        sales = np.array([[12, 15, 11, 18],
                          [20, 22, 19, 25],
                          [ 8,  9, 12, 10]])
        print("Sales table (rows = shops, cols = months):")
        print(sales)

        print("\n=== Single elements ===")
        print("Shop 1, month 2  :", sales[1, 2])
        print("Last shop, last month:", sales[-1, -1])

        print("\n=== Rows and columns ===")
        print("Shop 0 (row)     :", sales[0])
        print("Month 1 (column) :", sales[:, 1])
        print("Last column      :", sales[:, -1])

        print("\n=== Slices ===")
        print("Shops 0-1, months 1-2:")
        print(sales[0:2, 1:3])
        print("Every other month for all shops:")
        print(sales[:, ::2])
        print("Months reversed for shop 2:", sales[2, ::-1])

        print("\n=== Assigning ===")
        sales[2, 0] = 9          # fix one value
        sales[:, 3] = sales[:, 3] + 1   # add 1 to month 3 for every shop
        print(sales)

        print("\n=== 1D slicing refresher ===")
        a = np.arange(10, 60, 10)
        print("a       :", a)
        print("a[1:4]  :", a[1:4])
        print("a[::-1] :", a[::-1])
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Views vs Copies</h1>
        </div>
        <p class="lc-lead">Some NumPy operations give you a <strong>view</strong>. A view is a new way to look at the <em>same</em> memory. Others give you a <strong>copy</strong>, which is new, separate memory. If you know which is which, you avoid some of the most confusing bugs in NumPy.</p>
        <div class="lc-card">
          <h3>What Is a View?</h3>
          <p>A view is an array object that looks at another array's data. It does not copy the numbers, so it is fast and uses no extra memory. But <strong>if you change the view, the original changes too</strong>.</p>
          <ul class="lc-list">
            <li><strong>Basic slices</strong> (<code>a[1:4]</code>, <code>m[:, 0]</code>) return views.</li>
            <li><code>reshape</code> and <code>.T</code> (transpose, which swaps rows and columns) usually return views.</li>
            <li><code>.copy()</code> always returns a separate copy.</li>
          </ul>
          <p>Python lists are different. There, <code>lst[1:4]</code> is always a new list.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Slice Changes the Original</h3>
          <div class="lc-code">a = np.array([1, 2, 3, 4, 5])<br>s = a[1:4]         # a view<br>s[0] = 99<br>print(a)<br><br>c = a[1:4].copy()  # a real copy<br>c[0] = -1<br>print(a, c)<br>print(np.shares_memory(a, s), np.shares_memory(a, c))</div>
          <p>Output:</p>
          <div class="lc-code">[ 1 99  3  4  5]<br>[ 1 99  3  4  5] [-1  3  4]<br>True False</div>
          <p>Changing <code>s</code> changed <code>a</code>. Changing the copy <code>c</code> did not. <code>np.shares_memory(x, y)</code> tells you if two arrays use the same memory.</p>
        </div>
        <div class="lc-card">
          <h3>View or Copy? Quick Reference</h3>
          <table class="lc-table">
            <thead><tr><th>Operation</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td>Basic slice <code>a[2:5]</code>, <code>m[:, 1]</code></td><td>View</td></tr>
              <tr><td><code>a.reshape(...)</code>, <code>a.T</code></td><td>View (when the memory layout allows it)</td></tr>
              <tr><td><code>a.ravel()</code></td><td>View <em>when possible</em>, otherwise a copy</td></tr>
              <tr><td><code>a.flatten()</code></td><td>Always a copy</td></tr>
              <tr><td>Fancy indexing (a list of indexes) <code>a[[0, 2]]</code></td><td>Copy</td></tr>
              <tr><td>Boolean indexing <code>a[a &gt; 2]</code></td><td>Copy</td></tr>
              <tr><td>Arithmetic <code>a * 2</code>, <code>a + b</code></td><td>New array</td></tr>
              <tr><td><code>a.copy()</code>, <code>np.array(a)</code></td><td>Copy</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>ravel vs flatten</h3>
          <p>Both turn an array into 1D. <code>flatten()</code> always copies. <code>ravel()</code> returns a view if the data is already stored in row order. If not, it must copy. For example, this happens after a transpose:</p>
          <div class="lc-code">m = np.arange(6).reshape(2, 3)<br>print(np.shares_memory(m, m.ravel()))     # True  — view<br>print(np.shares_memory(m, m.T.ravel()))   # False — had to copy<br>print(np.shares_memory(m, m.flatten()))   # False — always a copy</div>
          <p>So never count on <code>ravel()</code> being a view <em>or</em> a copy. If you need a copy, use <code>flatten()</code> or <code>.copy()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Assignment Is Not Copying</h3>
          <p><code>b = a</code> does not create a new array. <code>b</code> is just another name for the same object. Use <code>b = a.copy()</code> when you want to keep the original safe.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">a = np.arange(5)<br>b = a[a &gt; 1]<br>b[0] = 100<br>print(a)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[0 1 2 3 4]</div>
          <p>Boolean indexing returns a copy. So changing b does not change a.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Avoiding bugs when you clean part of a dataset</li>
            <li>Saving memory with views on big arrays</li>
            <li>Understanding Copy-on-Write in pandas later</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Taking a slice, "cleaning" it, and changing the original data by accident.</li>
            <li>Thinking <code>b = a</code> makes a backup.</li>
            <li>Changing a result of fancy or boolean indexing and expecting the original to update. The result is a copy. (Assigning <em>directly</em>, like <code>a[a &lt; 0] = 0</code>, does update <code>a</code>.)</li>
            <li>Keeping a tiny slice of a huge array. The view keeps the whole big array in memory. Use <code>.copy()</code> on the slice.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, make <code>first_week</code> a copy instead of a view. Check that <code>temps</code> no longer changes.</li>
            <li>Use <code>np.shares_memory</code> to test if <code>temps[temps &gt; 30]</code> is a view or a copy.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you plan to change part of an array but keep the original, write <code>.copy()</code> right away. A copy uses a little memory. A hidden view can cost you hours of debugging.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        temps = np.array([31, 29, 33, 35, 28, 30, 32, 34, 27, 26])
        print("Original temps:", temps)

        print("\n=== A slice is a VIEW ===")
        first_week = temps[:7]
        first_week[0] = 0            # "clean" the first reading...
        print("first_week:", first_week)
        print("temps     :", temps, "<- original changed too!")
        print("share memory?", np.shares_memory(temps, first_week))

        print("\n=== .copy() is independent ===")
        temps[0] = 31                # restore
        backup = temps.copy()
        backup[1] = -99
        print("backup:", backup)
        print("temps :", temps, "<- unchanged")
        print("share memory?", np.shares_memory(temps, backup))

        print("\n=== Fancy and boolean indexing give COPIES ===")
        picked = temps[[0, 2, 4]]
        hot = temps[temps > 32]
        print("picked:", picked, "| shares memory?", np.shares_memory(temps, picked))
        print("hot   :", hot, "| shares memory?", np.shares_memory(temps, hot))

        print("\n=== ravel (view when possible) vs flatten (always copy) ===")
        grid = temps.reshape(2, 5)
        print("ravel view?        ", np.shares_memory(grid, grid.ravel()))
        print("ravel of .T view?  ", np.shares_memory(grid, grid.T.ravel()))
        print("flatten view?      ", np.shares_memory(grid, grid.flatten()))

        print("\n=== b = a is just another name ===")
        alias = temps
        alias[-1] = 100
        print("temps[-1] is now", temps[-1])
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Array Arithmetic and Universal Functions</h1>
        </div>
        <p class="lc-lead">Arithmetic on arrays happens <strong>element by element</strong>. NumPy's <strong>universal functions</strong> (ufuncs) such as <code>np.sqrt</code> and <code>np.exp</code> do the same for maths functions. They are fast and need no loop.</p>
        <div class="lc-card">
          <h3>Element-wise Operators</h3>
          <p>When two arrays have the same shape, <code>+ - * / ** // %</code> pair up the elements position by position. With a single number (a scalar), the number is applied to every element.</p>
          <div class="lc-code">a = np.array([1, 2, 3, 4])<br>b = np.array([10, 20, 30, 40])<br>a + b     # [11 22 33 44]<br>a * b     # [ 10  40  90 160]<br>b / a     # [10. 10. 10. 10.]  — / always gives floats<br>a ** 2    # [ 1  4  9 16]<br>a * 10    # [10 20 30 40]  — scalar applied to every element</div>
          <p>Using a scalar with an array is the simplest case of <strong>broadcasting</strong> (making shapes fit together). The full rules for different shapes come in "Broadcasting in Depth".</p>
        </div>
        <div class="lc-card">
          <h3>Division Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th><code>np.array([7, 8, 9, 10]) op 3</code></th></tr></thead>
            <tbody>
              <tr><td><code>/</code></td><td>True division (float result)</td><td><code>[2.33333333 2.66666667 3. 3.33333333]</code></td></tr>
              <tr><td><code>//</code></td><td>Floor division (rounds down)</td><td><code>[2 2 3 3]</code></td></tr>
              <tr><td><code>%</code></td><td>Remainder</td><td><code>[1 2 0 1]</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Universal Functions (ufuncs)</h3>
          <table class="lc-table">
            <thead><tr><th>Group</th><th>Functions</th></tr></thead>
            <tbody>
              <tr><td>Powers and roots</td><td><code>np.sqrt</code>, <code>np.square</code>, <code>np.power</code></td></tr>
              <tr><td>Exponent and logs</td><td><code>np.exp</code>, <code>np.log</code> (natural), <code>np.log10</code>, <code>np.log2</code></td></tr>
              <tr><td>Rounding</td><td><code>np.round</code>, <code>np.floor</code>, <code>np.ceil</code>, <code>np.trunc</code></td></tr>
              <tr><td>Sign and size</td><td><code>np.abs</code>, <code>np.sign</code></td></tr>
              <tr><td>Pair-wise</td><td><code>np.maximum(a, b)</code>, <code>np.minimum(a, b)</code>: the max/min of two arrays, element by element</td></tr>
              <tr><td>Trigonometry</td><td><code>np.sin</code>, <code>np.cos</code>, <code>np.tan</code> (angles in radians); constants <code>np.pi</code>, <code>np.e</code></td></tr>
            </tbody>
          </table>
          <p>Do not mix up <code>np.maximum(a, b)</code> and <code>np.max(a)</code>. The first compares two arrays element by element. The second gives the single largest value of one array.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Maths Without Loops</h3>
          <div class="lc-code">print(np.sqrt(np.array([4, 9, 16])))<br>print(np.maximum(np.array([1, 5, 3]), np.array([4, 2, 6])))<br>print(np.floor(np.array([-1.5, 1.5])), np.ceil(np.array([-1.5, 1.5])))<br><br>x = np.array([1.0, 0.0, -1.0])<br>with np.errstate(divide='ignore', invalid='ignore'):<br>    print(x / 0)</div>
          <p>Output:</p>
          <div class="lc-code">[2. 3. 4.]<br>[4 5 6]<br>[-2.  1.] [-1.  2.]<br>[ inf  nan -inf]</div>
          <p>Dividing by zero does <strong>not</strong> raise an error in NumPy. You get <code>inf</code> (infinity) or <code>nan</code> (0/0, "not a number"), plus a <code>RuntimeWarning</code>. With <code>np.errstate</code>, you can hide these warnings for a block of code, or turn them into errors.</p>
        </div>
        <div class="lc-card">
          <h3>In-place Operations and dtype</h3>
          <p><code>a += 1</code> changes <code>a</code> in place. It does not create a new array. But the result must fit <code>a</code>'s dtype:</p>
          <div class="lc-code">i = np.array([1, 2, 3])<br>i += 0.5        # UFuncTypeError: can't store floats in an int array<br>i = i + 0.5     # fine: creates a new float array</div>
          <p>Ufuncs also accept <code>out=</code> to write into an existing array: <code>np.multiply(a, 2, out=result)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">print(np.array([10, 11]) % 3, np.array([-7]) // 2)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1 2] [-4]</div>
          <p>// rounds down (towards minus infinity). So -7 // 2 is -4, not -3.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Unit conversions on whole columns</li>
            <li>Using np.log on skewed data (data with a long tail)</li>
            <li>Pay-slab or tax calculations</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using Python's <code>math.sqrt(arr)</code>. The <code>math</code> module only works on single numbers. Use <code>np.sqrt</code>.</li>
            <li>Expecting <code>/</code> to keep integers. It always returns floats. Use <code>//</code> for whole-number division.</li>
            <li>Ignoring <code>inf</code>/<code>nan</code> after dividing by zero. They spread silently into later calculations.</li>
            <li>Passing degrees to <code>np.sin</code>. Convert them first: <code>np.sin(np.radians(30))</code> gives about 0.5.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>Convert the starter's Celsius temperatures to Fahrenheit with <code>c * 9 / 5 + 32</code>.</li>
            <li>Use <code>np.maximum(marks, 35)</code> to give every student at least the pass mark of 35.</li>
            <li>Calculate the compound interest on ₹10,000 at 8% for years 1–5 with <code>10000 * 1.08 ** years</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If a maths function is in Python's <code>math</code> module, NumPy almost always has an array version with the same name: <code>np.sqrt</code>, <code>np.log</code>, <code>np.exp</code>, <code>np.floor</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        a = np.array([7, 8, 9, 10])
        b = np.array([2, 4, 3, 5])

        print("=== Element-wise operators ===")
        print("a + b :", a + b)
        print("a * b :", a * b)
        print("a / b :", a / b)
        print("a // b:", a // b)
        print("a % b :", a % b)
        print("a ** 2:", a ** 2)

        print("\n=== Scalars apply to every element ===")
        celsius = np.array([25.0, 30.0, 37.5, 42.0])
        print("Fahrenheit:", celsius * 9 / 5 + 32)

        print("\n=== Universal functions ===")
        print("sqrt :", np.sqrt(np.array([4, 9, 16, 25])))
        print("exp  :", np.round(np.exp(np.array([0, 1, 2])), 3))
        print("log10:", np.log10(np.array([1, 10, 1000])))
        print("floor:", np.floor(np.array([-1.5, 2.7])), "ceil:", np.ceil(np.array([-1.5, 2.7])))

        marks = np.array([28, 45, 33, 71])
        print("at least 35:", np.maximum(marks, 35))

        print("\n=== Division by zero gives inf / nan ===")
        x = np.array([1.0, 0.0, -1.0])
        with np.errstate(divide="ignore", invalid="ignore"):
            print("x / 0:", x / 0)

        print("\n=== In-place ops must keep the dtype ===")
        counts = np.array([1, 2, 3])
        counts += 10
        print("counts += 10:", counts)
        try:
            counts += 0.5
        except TypeError as e:   # UFuncTypeError is a kind of TypeError
            print("counts += 0.5 failed:", type(e).__name__)
        print("new float array:", counts + 0.5)
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Aggregations and the axis Parameter</h1>
        </div>
        <p class="lc-lead">Aggregations turn many values into one summary, such as a sum, a mean or a maximum. On a 2D array, the <code>axis</code> parameter decides <em>which direction</em> you summarise: down the columns or across the rows.</p>
        <div class="lc-card">
          <h3>Aggregation Functions</h3>
          <p>You can use each one as a function (<code>np.sum(m)</code>) or as a method (<code>m.sum()</code>).</p>
          <ul class="lc-list">
            <li><code>sum</code>, <code>prod</code>, <code>mean</code>, <code>min</code>, <code>max</code>, <code>std</code>, <code>var</code></li>
            <li><code>argmin</code>, <code>argmax</code>: the <em>position</em> of the smallest / largest value</li>
            <li><code>cumsum</code>, <code>cumprod</code>: running totals (same shape as the input)</li>
            <li><code>any</code>, <code>all</code>: for boolean arrays. Is at least one value True? Is every value True?</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Understanding axis</h3>
          <p>The <code>axis</code> you pass is the dimension that <strong>disappears</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Call on a (2, 3) array</th><th>What collapses</th><th>Result shape</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>m.sum()</code></td><td>everything</td><td>scalar</td><td>grand total</td></tr>
              <tr><td><code>m.sum(axis=0)</code></td><td>the rows (go <strong>down</strong>)</td><td><code>(3,)</code></td><td>one total per column</td></tr>
              <tr><td><code>m.sum(axis=1)</code></td><td>the columns (go <strong>across</strong>)</td><td><code>(2,)</code></td><td>one total per row</td></tr>
              <tr><td><code>m.sum(axis=1, keepdims=True)</code></td><td>the columns, but keep an axis of size 1</td><td><code>(2, 1)</code></td><td>row totals as a column</td></tr>
            </tbody>
          </table>
          <div class="lc-code">             axis=1 →<br>           Maths Sci  Eng<br>axis=0  A [  80   65   90 ]   → row sum 235<br>  ↓     B [  70   75   85 ]   → row sum 230<br>            ↓    ↓    ↓<br>col sums  150  140  175</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Class Marks</h3>
          <div class="lc-code">m = np.array([[80, 65, 90],<br>              [70, 75, 85]])   # 2 students × 3 subjects<br>print(m.sum(), m.sum(axis=0), m.sum(axis=1))<br>print(m.mean(axis=0))          # subject averages<br>print(m.max(axis=1), m.argmax(axis=1))<br>print(m - m.mean(axis=1, keepdims=True))</div>
          <p>Output:</p>
          <div class="lc-code">465 [150 140 175] [235 230]<br>[75.  70.  87.5]<br>[90 85] [2 2]<br>[[  1.66666667 -13.33333333  11.66666667]<br> [ -6.66666667  -1.66666667   8.33333333]]</div>
          <p>Both students scored best in subject 2 (English). The last line shows each mark compared to that student's own average. <code>keepdims=True</code> keeps the shape <code>(2, 1)</code>, so the subtraction lines up row by row.</p>
        </div>
        <div class="lc-card">
          <h3>Row and Column Normalisation</h3>
          <p>In data science, you often scale each column (feature). Here are common ways:</p>
          <div class="lc-code"># z-score per column<br>z = (m - m.mean(axis=0)) / m.std(axis=0)<br><br># min-max scale each column to 0..1<br>scaled = (m - m.min(axis=0)) / (m.max(axis=0) - m.min(axis=0))<br><br># each row as a share of its row total<br>share = m / m.sum(axis=1, keepdims=True)</div>
        </div>
        <div class="lc-card">
          <h3>any and all</h3>
          <div class="lc-code">(m &gt; 70).all(axis=1)   # [False False] — did each student score &gt; 70 in every subject?<br>(m &gt; 85).any(axis=0)   # [False False  True] — did anyone score &gt; 85 in each subject?</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What shape is the result? Guess first, then run it in the editor.</p>
          <div class="lc-code">m = np.ones((4, 3))<br>print(m.sum(axis=0).shape, m.mean(axis=1, keepdims=True).shape)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">(3,) (4, 1)</div>
          <p>axis=0 removes the 4 rows, so you get one value per column. keepdims keeps an axis of size 1.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Means for each feature, used for scaling</li>
            <li>Totals for each student in a marks table</li>
            <li>Summing class probabilities for each row</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Mixing up the axes. Remember: <code>axis=0</code> gives one answer <em>per column</em>. <code>axis=1</code> gives one answer <em>per row</em>.</li>
            <li>Forgetting <code>keepdims=True</code> when you divide by row totals. <code>(2, 3) / (2,)</code> fails or divides the wrong way.</li>
            <li>Mixing up <code>argmax</code> (a position) and <code>max</code> (a value).</li>
            <li>Using Python's built-in <code>sum(m)</code> on a 2D array. It adds the rows together like <code>axis=0</code>, and it is slow. Use <code>m.sum()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, find which city had the hottest day overall, and on which day. (Hint: use <code>argmax</code> of the flattened array, then <code>np.unravel_index</code>.)</li>
            <li>Print each city's temperature range (max − min) with one expression using <code>axis=1</code>.</li>
            <li>Use <code>any</code> to check if any city went above 40 °C.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before you call an aggregation, say what you want in words. "One value <em>per city</em>" (cities are rows) means <code>axis=1</code>. Then check the result's <code>shape</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Max temperature: 3 cities (rows) x 5 days (columns)
        temps = np.array([[34, 36, 35, 38, 37],   # Chicago
                          [31, 30, 32, 31, 33],   # New York
                          [28, 27, 29, 30, 28]])  # San Francisco
        cities = ["Chicago", "New York", "San Francisco"]
        print("temps shape:", temps.shape)

        print("\n=== Whole array ===")
        print("sum :", temps.sum())
        print("mean:", temps.mean())
        print("max :", temps.max())

        print("\n=== axis=1 -> one value per city (row) ===")
        city_mean = temps.mean(axis=1)
        for name, avg in zip(cities, city_mean):
            print(f"  {name:<13} mean {avg:.1f}")
        print("hottest day index per city:", temps.argmax(axis=1))

        print("\n=== axis=0 -> one value per day (column) ===")
        print("daily max across cities:", temps.max(axis=0))
        print("daily mean:", temps.mean(axis=0).round(2))

        print("\n=== keepdims for row-wise maths ===")
        row_means = temps.mean(axis=1, keepdims=True)
        print("row_means shape:", row_means.shape)
        print("difference from own city mean:")
        print(temps - row_means)

        print("\n=== cumsum, any, all ===")
        print("running total for Chicago:", temps[0].cumsum())
        print("any day above 37, per city:", (temps > 37).any(axis=1))
        print("all days above 29, per city:", (temps > 29).all(axis=1))
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Reshaping Arrays</h1>
        </div>
        <p class="lc-lead">Reshaping changes how the same numbers are arranged into rows, columns and more dimensions. The numbers themselves do not change. Machine learning libraries expect data in certain shapes, so you will reshape very often.</p>
        <div class="lc-card">
          <h3>reshape and -1</h3>
          <p><code>a.reshape(rows, cols)</code> returns the data in a new shape. The total number of elements must stay the same. Use <code>-1</code> for <strong>one</strong> dimension, and NumPy works out its size.</p>
          <div class="lc-code">a = np.arange(1, 13)       # 12 values<br>a.reshape(3, 4)            # 3 rows × 4 columns<br>a.reshape(2, -1)           # shape (2, 6)<br>a.reshape(-1, 1)           # shape (12, 1) — a column<br>a.reshape(5, 2)            # ValueError: cannot reshape array of size 12 into shape (5,2)</div>
          <p>Values are filled <strong>row by row</strong>. This is called C order or row-major. <code>order='F'</code> fills column by column instead, but you rarely need it.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">a = np.arange(1, 13)<br>print(a.reshape(3, 4))<br>print(a.reshape(2, -1).shape, a.reshape(-1, 1).shape)<br><br>m = np.arange(6).reshape(2, 3)<br>print(m.T)<br>print(m.reshape(3, 2))</div>
          <p>Output:</p>
          <div class="lc-code">[[ 1  2  3  4]<br> [ 5  6  7  8]<br> [ 9 10 11 12]]<br>(2, 6) (12, 1)<br>[[0 3]<br> [1 4]<br> [2 5]]<br>[[0 1]<br> [2 3]<br> [4 5]]</div>
          <p>Look carefully. <code>m.T</code> and <code>m.reshape(3, 2)</code> both have shape (3, 2), but they are <strong>different</strong>. Transpose turns rows into columns. Reshape just refills the new shape with the numbers in the same order.</p>
        </div>
        <div class="lc-card">
          <h3>Reshaping Tools</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Does</th><th>Example shape change</th></tr></thead>
            <tbody>
              <tr><td><code>reshape(r, c)</code></td><td>new shape, same order</td><td>(12,) → (3, 4)</td></tr>
              <tr><td><code>.T</code> / <code>transpose()</code></td><td>swap rows and columns (reverse the axes)</td><td>(2, 3) → (3, 2)</td></tr>
              <tr><td><code>transpose(2, 0, 1)</code>, <code>np.moveaxis</code></td><td>change the order of axes in 3D+ arrays</td><td>(32, 64, 3) → (3, 32, 64)</td></tr>
              <tr><td><code>ravel()</code> / <code>flatten()</code></td><td>to 1D</td><td>(3, 4) → (12,)</td></tr>
              <tr><td><code>a[np.newaxis, :]</code>, <code>np.expand_dims(a, 0)</code></td><td>add an axis of size 1 at the front</td><td>(3,) → (1, 3)</td></tr>
              <tr><td><code>a[:, np.newaxis]</code>, <code>np.expand_dims(a, 1)</code></td><td>add an axis of size 1 at the end</td><td>(3,) → (3, 1)</td></tr>
              <tr><td><code>np.squeeze(a)</code></td><td>remove all axes of size 1</td><td>(1, 3, 1) → (3,)</td></tr>
            </tbody>
          </table>
          <p><code>reshape</code> and <code>.T</code> usually return <strong>views</strong> (shared memory). You learned this in "Views vs Copies".</p>
        </div>
        <div class="lc-card">
          <h3>Why reshape(-1, 1) Matters in ML</h3>
          <p>scikit-learn wants features as a 2D table: <em>rows = samples, columns = features</em>. A single feature with shape <code>(100,)</code> must become <code>(100, 1)</code>:</p>
          <div class="lc-code">hours = np.array([1, 2, 3, 4])   # shape (4,)<br>X = hours.reshape(-1, 1)          # shape (4, 1) — 4 samples, 1 feature</div>
          <p>Images work the same way. A batch of 10 greyscale 28×28 images has shape <code>(10, 28, 28)</code>. <code>images.reshape(10, -1)</code> turns each image into a row of 784 pixels.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">a = np.arange(6)<br>print(a.reshape(2, 3).T.shape, a.reshape(-1, 2).shape)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">(3, 2) (3, 2)</div>
          <p>Transposing (2, 3) gives (3, 2). NumPy works out -1 as 6 / 2 = 3.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Reshape(-1, 1) for a single scikit-learn feature</li>
            <li>Flattening images into rows</li>
            <li>Changing the order of image axes for PyTorch</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>reshape</code> when you meant to transpose. The numbers end up in the wrong places, and you get no error.</li>
            <li>Using <code>-1</code> twice: <code>a.reshape(-1, -1)</code> is an error. NumPy can work out only one dimension.</li>
            <li>Expecting <code>a.reshape(3, 4)</code> to change <code>a</code>. It returns a new array object. <code>a</code> keeps its shape unless you assign the result back to it.</li>
            <li>Mixing up shape <code>(3,)</code> (1D) with <code>(1, 3)</code> or <code>(3, 1)</code> (2D). They broadcast very differently.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>Reshape the starter's 24 hourly readings into <code>(4, 6)</code>, then into <code>(6, -1)</code>. What size does NumPy work out?</li>
            <li>Turn <code>np.array([5, 10, 15])</code> into a column vector of shape <code>(3, 1)</code> in two different ways.</li>
            <li>Take a fake image <code>np.zeros((32, 64, 3))</code> and move the colour axis to the front.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> While you are learning, print <code>.shape</code> after every reshape. Shape bugs are much easier to catch on the line where they happen.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # 24 hourly electricity readings (kWh) for one day
        readings = np.arange(1, 25)
        print("readings shape:", readings.shape)

        print("\n=== reshape into 4 blocks of 6 hours ===")
        blocks = readings.reshape(4, 6)
        print(blocks)
        print("usage per block:", blocks.sum(axis=1))

        print("\n=== -1 lets NumPy infer a dimension ===")
        print("reshape(3, -1) ->", readings.reshape(3, -1).shape)
        print("reshape(-1, 1) ->", readings.reshape(-1, 1).shape)

        print("\n=== An impossible shape ===")
        try:
            readings.reshape(5, 5)
        except ValueError as e:
            print("ValueError:", e)

        print("\n=== Transpose vs reshape (both (6, 4), different data) ===")
        print("blocks.T first row      :", blocks.T[0])
        print("blocks.reshape(6, 4) row:", blocks.reshape(6, 4)[0])

        print("\n=== Adding and removing axes ===")
        v = np.array([5, 10, 15])
        print("v            :", v.shape)
        print("v[np.newaxis]:", v[np.newaxis, :].shape)
        print("v[:, None]   :", v[:, np.newaxis].shape)
        print("expand_dims  :", np.expand_dims(v, axis=1).shape)
        print("squeeze      :", np.squeeze(np.zeros((1, 3, 1))).shape)

        print("\n=== Images: channels last -> channels first ===")
        img = np.zeros((32, 64, 3))
        print(img.shape, "->", np.moveaxis(img, -1, 0).shape)
        print("flatten each of 10 images:", np.zeros((10, 28, 28)).reshape(10, -1).shape)
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Boolean Indexing and np.where</h1>
        </div>
        <p class="lc-lead">A comparison like <code>marks &gt;= 70</code> gives a <strong>boolean mask</strong>. This is an array of True/False values. You can use the mask to filter, count or change exactly the elements you want. You do not need a loop.</p>
        <div class="lc-card">
          <h3>Masks and Filtering</h3>
          <div class="lc-code">s = np.array([72, 95, 61, 88, 45, 79])<br>mask = s &gt;= 70<br>print(mask)<br>print(s[mask])                      # keep only True positions<br>print(s[(s &gt;= 60) &amp; (s &lt; 80)])     # AND<br>print(s[~mask])                     # NOT<br>print(mask.sum(), mask.mean())      # count and fraction</div>
          <p>Output:</p>
          <div class="lc-code">[ True  True False  True False  True]<br>[72 95 88 79]<br>[72 61 79]<br>[61 45]<br>4 0.6666666666666666</div>
          <p>True counts as 1 and False counts as 0. So <code>mask.sum()</code> counts the matches, and <code>mask.mean()</code> gives the fraction (here, 4 of 6 students passed).</p>
        </div>
        <div class="lc-card">
          <h3>Combining Conditions</h3>
          <table class="lc-table">
            <thead><tr><th>Logic</th><th>NumPy operator</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>AND</td><td><code>&amp;</code></td><td><code>(s &gt;= 60) &amp; (s &lt; 80)</code></td></tr>
              <tr><td>OR</td><td><code>|</code></td><td><code>(s &lt; 50) | (s &gt; 90)</code></td></tr>
              <tr><td>NOT</td><td><code>~</code></td><td><code>~(s &gt;= 70)</code></td></tr>
            </tbody>
          </table>
          <p>Always put each condition in <strong>parentheses</strong>, because <code>&amp;</code> runs before <code>&gt;=</code>. Python's <code>and</code>/<code>or</code> do not work on arrays. They raise <code>ValueError: The truth value of an array with more than one element is ambiguous</code>.</p>
        </div>
        <div class="lc-card">
          <h3>np.where: Two Different Uses</h3>
          <ul class="lc-list">
            <li><strong>One argument</strong>: <code>np.where(cond)</code> returns the <em>indices</em> (positions) where the condition is True. It returns a tuple with one array per dimension.</li>
            <li><strong>Three arguments</strong>: <code>np.where(cond, x, y)</code> builds a new array. It uses <code>x</code> where the condition is True and <code>y</code> where it is False. It is a vectorised if/else.</li>
          </ul>
          <div class="lc-code">print(np.where(s &gt;= 70))<br>print(np.where(s &gt;= 70, "pass", "fail"))</div>
          <div class="lc-code">(array([0, 1, 3, 5]),)<br>['pass' 'pass' 'fail' 'pass' 'fail' 'pass']</div>
        </div>
        <div class="lc-card">
          <h3>More Than Two Choices: np.select</h3>
          <p>Nested <code>np.where</code> calls are hard to read. <code>np.select</code> takes a list of conditions and a list of choices. The <strong>first</strong> True condition wins.</p>
          <div class="lc-code">conds = [s &gt;= 90, s &gt;= 75, s &gt;= 60]<br>print(np.select(conds, ["A", "B", "C"], default="F"))<br># ['C' 'A' 'C' 'B' 'F' 'B']</div>
        </div>
        <div class="lc-card">
          <h3>Changing Values Through a Mask</h3>
          <div class="lc-code">t = s.copy()<br>t[t &lt; 50] = 50              # raise low marks to 50 (changes t itself)<br>np.clip(s, 50, 90)          # new array, limited to 50..90: [72 90 61 88 50 79]<br>np.any(s &gt; 90), np.all(s &gt; 40)   # (True, True)</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">a = np.array([5, 12, 7, 20])<br>print(a[(a &gt; 6) &amp; (a &lt; 15)], np.where(a &gt; 10, 1, 0))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[12  7] [0 1 0 1]</div>
          <p>The mask keeps 12 and 7. np.where builds a new array of 0s and 1s.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Filtering outliers (values far from the rest)</li>
            <li>Creating labels such as pass/fail</li>
            <li>Limiting values with np.clip</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>s[s &gt; 60 and s &lt; 80]</code>. Use <code>&amp;</code> and parentheses.</li>
            <li>Forgetting parentheses. <code>s &gt;= 60 &amp; s &lt; 80</code> is read as <code>s &gt;= (60 &amp; s) &lt; 80</code> and raises an error.</li>
            <li>Expecting <code>np.where(cond)</code> to return values. With one argument, it returns indices.</li>
            <li>Putting <code>np.select</code> conditions in the wrong order. Put the strictest condition (e.g. <code>&gt;= 90</code>) first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, use <code>|</code> to list the days when the AQI was "Poor" (above 200) or "Good" (50 or below).</li>
            <li>Add a "Severe" category for AQI above 300 to the <code>np.select</code> call.</li>
            <li>Replace every reading above 400 with 400 using a mask assignment. Then do it with <code>np.clip</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Give masks names, like <code>is_poor = aqi &gt; 200</code>, and reuse them. Then your filters read like sentences: <code>aqi[is_poor &amp; is_weekend]</code>.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Air Quality Index (AQI) readings for 10 days
        aqi = np.array([180, 45, 320, 210, 95, 260, 150, 410, 50, 130])
        days = np.arange(1, 11)
        print("AQI:", aqi)

        print("\n=== Boolean masks ===")
        is_poor = aqi > 200
        print("is_poor mask:", is_poor)
        print("poor readings:", aqi[is_poor])
        print("poor days    :", days[is_poor])
        print("count poor:", is_poor.sum(), "| fraction:", is_poor.mean())

        print("\n=== Combining with & | ~ ===")
        moderate = (aqi > 100) & (aqi <= 200)
        print("moderate (100-200]:", aqi[moderate])
        print("extreme days (<=50 or >300):", days[(aqi <= 50) | (aqi > 300)])
        print("not poor:", aqi[~is_poor])

        print("\n=== and/or don't work on arrays ===")
        try:
            aqi[(aqi > 100) and (aqi <= 200)]
        except ValueError as e:
            print("ValueError:", e)

        print("\n=== np.where ===")
        print("indices of poor days:", np.where(is_poor)[0])
        print("labels:", np.where(is_poor, "Poor", "OK"))

        print("\n=== np.select for many categories ===")
        conds = [aqi > 200, aqi > 100, aqi > 50]
        labels = np.select(conds, ["Poor", "Moderate", "Satisfactory"], default="Good")
        for d, a, lab in zip(days, aqi, labels):
            print(f"  day {d:2d}: {a:3d} {lab}")

        print("\n=== Changing values ===")
        capped = aqi.copy()
        capped[capped > 300] = 300
        print("mask-capped:", capped)
        print("np.clip    :", np.clip(aqi, 50, 300))
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Fancy Indexing</h1>
        </div>
        <p class="lc-lead">Fancy indexing means indexing with a <strong>list or array of positions</strong>, instead of a single number or a slice. You can pick any elements, in any order, and even repeat them. It is very useful for "top 3" lists, reordering and lookups.</p>
        <div class="lc-card">
          <h3>Selecting with an Index Array</h3>
          <p>Put a list of positions inside the square brackets. The result has one element for each index, in the order you asked for.</p>
          <div class="lc-code">a = np.array([10, 20, 30, 40, 50])<br>print(a[[0, 2, 4]])            # pick positions 0, 2, 4<br>print(a[[3, 3, 1]])            # repeats and any order are allowed<br>print(a[np.array([-1, 0])])    # negative positions work too</div>
          <div class="lc-code">[10 30 50]<br>[40 40 20]<br>[50 10]</div>
          <p>Note the <strong>double brackets</strong>. The outer pair does the indexing. The inner pair is the list of positions.</p>
        </div>
        <div class="lc-card">
          <h3>Fancy Indexing in 2D</h3>
          <table class="lc-table">
            <thead><tr><th>Expression (m is 3×4)</th><th>Selects</th><th>Result shape</th></tr></thead>
            <tbody>
              <tr><td><code>m[[0, 2]]</code></td><td>rows 0 and 2</td><td><code>(2, 4)</code></td></tr>
              <tr><td><code>m[:, [3, 0]]</code></td><td>columns 3 and 0, in that order</td><td><code>(3, 2)</code></td></tr>
              <tr><td><code>m[[0, 2], [1, 3]]</code></td><td><strong>pairs</strong>: (0,1) and (2,3)</td><td><code>(2,)</code></td></tr>
              <tr><td><code>m[np.ix_([0, 2], [1, 3])]</code></td><td>the <strong>grid</strong> rows {0,2} × cols {1,3}</td><td><code>(2, 2)</code></td></tr>
            </tbody>
          </table>
          <p>NumPy pairs up two index lists element by element. They do <em>not</em> form a sub-grid. Use <code>np.ix_</code> when you want the grid.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Pairs vs Grid, and Top-k</h3>
          <div class="lc-code">m = np.arange(12).reshape(3, 4)<br>print(m[[0, 2], [1, 3]])<br>print(m[np.ix_([0, 2], [1, 3])])<br><br>s = np.array([72, 95, 61, 88, 45])<br>top = np.argsort(s)[::-1][:3]   # positions of the 3 highest<br>print(top, s[top])</div>
          <p>Output:</p>
          <div class="lc-code">[ 1 11]<br>[[ 1  3]<br> [ 9 11]]<br>[1 3 0] [95 88 72]</div>
          <p><code>np.argsort</code> returns the positions that would sort the array. If you reverse and slice them, you get the top-3 positions. Indexing with them gives the top-3 values. The same positions can index a matching <code>names</code> array. This is how you find <em>who</em> scored highest.</p>
        </div>
        <div class="lc-card">
          <h3>Fancy Indexing Returns a Copy</h3>
          <p>Slices are views, but <code>a[[0, 2]]</code> creates a new array. Changing the result does not change <code>a</code>. But <em>assigning</em> through fancy indexing does change <code>a</code>:</p>
          <div class="lc-code">b = a.copy()<br>b[[0, 4]] = -1      # b is now [-1 20 30 40 -1]<br>np.take(a, [1, 3])  # function form of a[[1, 3]] → [20 40]</div>
        </div>
        <div class="lc-card">
          <h3>The Repeated-Index Trap</h3>
          <p>Counting with <code>c[idx] += 1</code> looks right. But it is wrong when <code>idx</code> has repeats. Each position goes up by 1 only <strong>once</strong>:</p>
          <div class="lc-code">idx = np.array([0, 1, 1, 3, 1])<br>c = np.zeros(4, dtype=np.int64)<br>c[idx] += 1<br>print(c)                 # [1 1 0 1]  — wrong, position 1 appears 3 times<br><br>c = np.zeros(4, dtype=np.int64)<br>np.add.at(c, idx, 1)     # unbuffered: every occurrence counts<br>print(c)                 # [1 3 0 1]<br>print(np.bincount(idx, minlength=4))   # [1 3 0 1] — simplest for counting</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Guess first, then run it in the editor.</p>
          <div class="lc-code">a = np.array([50, 10, 40, 30])<br>print(a[np.argsort(a)[-2:]])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[40 50]</div>
          <p>argsort gives positions from smallest to largest. The last two are the two biggest, in ascending order.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Top-k recommendations</li>
            <li>Looking up labels by class id</li>
            <li>Shuffling rows with a permutation (a random order of positions)</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>a[0, 2, 4]</code> instead of <code>a[[0, 2, 4]]</code> on a 1D array. That means three dimensions, so it raises <code>IndexError</code>.</li>
            <li>Expecting <code>m[[0, 2], [1, 3]]</code> to give a 2×2 block. It gives 2 paired elements. Use <code>np.ix_</code>.</li>
            <li>Using <code>c[idx] += 1</code> to count repeated indices. Use <code>np.add.at</code> or <code>np.bincount</code>.</li>
            <li>Using <code>np.argsort(s)[:3]</code> for the top 3. That gives the <em>lowest</em> 3. Reverse first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter code, print the names of the 2 lowest scorers.</li>
            <li>Reorder the columns of the marks table to English, Maths, Science using one fancy index.</li>
            <li>Use <code>np.bincount</code> on the dice rolls to count how many times each face (1–6) appeared.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Keep related arrays (names, scores, cities) in the same order. Then one index array can select matching items from all of them at once. The index array can come from <code>argsort</code>, <code>np.where</code> or a list.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        names  = np.array(["Asha", "Ravi", "Meera", "Kiran", "Dev", "Priya"])
        scores = np.array([72, 95, 61, 88, 45, 91])

        print("=== Pick by a list of positions ===")
        print("positions [0, 2, 4]:", names[[0, 2, 4]])
        print("any order, repeats :", scores[[5, 5, 0]])

        print("\n=== Top 3 with argsort ===")
        order = np.argsort(scores)          # lowest -> highest positions
        top3 = order[::-1][:3]
        print("top positions:", top3)
        for rank, i in enumerate(top3, 1):
            print(f"  {rank}. {names[i]:<6} {scores[i]}")

        print("\n=== 2D: rows, columns, pairs, grid ===")
        marks = np.array([[70, 80, 65],    # columns: Maths, Science, English
                          [90, 85, 95],
                          [60, 75, 70],
                          [88, 92, 79]])
        print("rows 1 and 3:\n", marks[[1, 3]])
        print("columns English, Maths:\n", marks[:, [2, 0]])
        print("pairs (0,0) and (3,2):", marks[[0, 3], [0, 2]])
        print("grid rows {0,3} x cols {0,2}:\n", marks[np.ix_([0, 3], [0, 2])])

        print("\n=== Assigning through an index array ===")
        bonus = scores.copy()
        bonus[[2, 4]] += 5
        print("after +5 for positions 2 and 4:", bonus)

        print("\n=== Counting with repeated indices ===")
        rolls = np.array([3, 6, 1, 3, 3, 6, 2, 5, 3, 1])
        wrong = np.zeros(7, dtype=np.int64)
        wrong[rolls] += 1
        right = np.zeros(7, dtype=np.int64)
        np.add.at(right, rolls, 1)
        print("c[idx] += 1  :", wrong[1:])
        print("np.add.at    :", right[1:])
        print("np.bincount  :", np.bincount(rolls, minlength=7)[1:])
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Stacking and Splitting Arrays</h1>
        </div>
        <p class="lc-lead">Stacking joins several arrays into one. Splitting cuts one array into pieces. You use them to build a dataset from parts, add a feature column (one more input value per row), or divide data into batches (small groups).</p>
        <div class="lc-card">
          <h3>The Stacking Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>For x, y of shape (3,)</th><th>Result shape</th></tr></thead>
            <tbody>
              <tr><td><code>np.concatenate([x, y])</code></td><td>joins them end to end along an <strong>existing</strong> axis (direction)</td><td><code>(6,)</code></td></tr>
              <tr><td><code>np.hstack([x, y])</code></td><td>joins side by side (for 1D, same as concatenate)</td><td><code>(6,)</code></td></tr>
              <tr><td><code>np.vstack([x, y])</code></td><td>joins top to bottom: each array becomes a row</td><td><code>(2, 3)</code></td></tr>
              <tr><td><code>np.column_stack([x, y])</code></td><td>each array becomes a column</td><td><code>(3, 2)</code></td></tr>
              <tr><td><code>np.stack([x, y])</code></td><td>makes a <strong>new</strong> axis (default axis=0)</td><td><code>(2, 3)</code></td></tr>
              <tr><td><code>np.stack([x, y], axis=1)</code></td><td>new axis at position 1</td><td><code>(3, 2)</code></td></tr>
            </tbody>
          </table>
          <p>All of them take a <strong>list</strong> (or tuple) of arrays as the first argument.</p>
        </div>
        <div class="lc-card">
          <h3>concatenate with axis</h3>
          <p>For 2D arrays, <code>axis=0</code> adds rows and <code>axis=1</code> adds columns. The other dimensions (sizes) must match exactly.</p>
          <div class="lc-code">A = np.array([[1, 2], [3, 4]])   # (2, 2)<br>B = np.array([[5, 6]])           # (1, 2)<br>np.concatenate([A, B], axis=0)   # (3, 2): B added as a new row<br>np.concatenate([A, B], axis=1)   # ValueError: along dimension 0, A has 2 rows but B has 1</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">x = np.array([1, 2, 3]); y = np.array([4, 5, 6])<br>print(np.concatenate([x, y]))<br>print(np.vstack([x, y]))<br>print(np.column_stack([x, y]))<br>print(np.split(np.arange(9), 3))<br>print(np.array_split(np.arange(7), 3))</div>
          <p>Output:</p>
          <div class="lc-code">[1 2 3 4 5 6]<br>[[1 2 3]<br> [4 5 6]]<br>[[1 4]<br> [2 5]<br> [3 6]]<br>[array([0, 1, 2]), array([3, 4, 5]), array([6, 7, 8])]<br>[array([0, 1, 2]), array([3, 4]), array([5, 6])]</div>
        </div>
        <div class="lc-card">
          <h3>Splitting</h3>
          <ul class="lc-list">
            <li><code>np.split(a, 3)</code>: 3 <strong>equal</strong> parts. If the length does not divide evenly, you get <code>ValueError: array split does not result in an equal division</code>.</li>
            <li><code>np.array_split(a, 3)</code>: 3 parts. Their sizes may differ by one. This is safe for batches.</li>
            <li><code>np.split(a, [3, 7])</code>: cut <em>at</em> positions 3 and 7. You get <code>a[:3]</code>, <code>a[3:7]</code>, <code>a[7:]</code>.</li>
            <li><code>np.vsplit(m, 2)</code> / <code>np.hsplit(m, 2)</code>: split a 2D array into top/bottom or left/right halves.</li>
          </ul>
          <p>The result is a Python <strong>list</strong> of arrays. So you can unpack it (put each part in its own variable): <code>train, test = np.split(data, [80])</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Don't Grow Arrays in a Loop</h3>
          <p>NumPy arrays have a fixed size. So <code>np.append</code> or <code>np.concatenate</code> inside a loop copies the whole array every time. This is very slow for big data. Instead, collect the pieces in a Python list, then join them once:</p>
          <div class="lc-code">parts = []<br>for day in range(3):<br>    parts.append(np.full(4, day))<br>data = np.concatenate(parts)   # one copy at the end</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What shape is the result? Predict first, then run it in the editor.</p>
          <div class="lc-code">x = np.zeros((2, 3))<br>print(np.vstack([x, x]).shape, np.hstack([x, x]).shape, np.stack([x, x]).shape)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">(4, 3) (2, 6) (2, 2, 3)</div>
          <p>vstack adds rows. hstack adds columns. stack makes a new first axis.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Adding a feature column to X</li>
            <li>Joining batches of data from each month</li>
            <li>Splitting data into train and test parts</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Passing arrays as separate arguments: <code>np.vstack(x, y)</code>. Pass a list: <code>np.vstack([x, y])</code>.</li>
            <li>Expecting <code>np.hstack</code> of two 1D arrays to give two columns. It gives one long 1D array. Use <code>np.column_stack</code>.</li>
            <li>Using <code>np.split</code> for uneven sizes. Use <code>np.array_split</code> instead.</li>
            <li>Calling <code>np.append</code> in a loop over thousands of items.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add a fourth feature column <code>bonus</code> to the feature table with <code>np.column_stack</code>.</li>
            <li>Split the 10 rows into batches of about 3 with <code>np.array_split</code> and print each batch's shape.</li>
            <li>Use <code>np.split(X, [8])</code> to make an 8-row training part and a 2-row test part.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If you are not sure, use <code>np.concatenate</code> and give the <code>axis</code> yourself. Use <code>np.stack</code> when you need a new axis. The other functions are just shortcuts for these two.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Three separate feature columns for 10 employees
        age    = np.array([25, 32, 41, 29, 38, 45, 23, 36, 50, 31])
        years  = np.array([ 2,  6, 15,  4, 10, 20,  1,  8, 25,  5])
        salary = np.array([35, 52, 90, 45, 70, 110, 30, 60, 130, 48])  # thousand rupees

        print("=== column_stack: build a (samples, features) table ===")
        X = np.column_stack([age, years, salary])
        print("X shape:", X.shape)
        print(X[:3])

        print("\n=== vstack vs stack ===")
        print("vstack rows:", np.vstack([age, years]).shape)
        print("stack axis=1:", np.stack([age, years], axis=1).shape)

        print("\n=== concatenate new rows (axis=0) ===")
        new_people = np.array([[27, 3, 40],
                               [44, 18, 95]])
        X_all = np.concatenate([X, new_people], axis=0)
        print("after adding 2 rows:", X_all.shape)

        print("\n=== Shapes must match ===")
        try:
            np.concatenate([X, np.array([[1, 2]])], axis=0)
        except ValueError as e:
            print("ValueError:", str(e)[:70], "...")

        print("\n=== split: train / test ===")
        train, test = np.split(X, [8])
        print("train:", train.shape, "test:", test.shape)

        print("\n=== array_split: uneven batches ===")
        for i, batch in enumerate(np.array_split(X, 3)):
            print(f"  batch {i}: {batch.shape[0]} rows, first age {batch[0, 0]}")

        print("\n=== Build once, don't append in a loop ===")
        parts = [np.full(3, day) for day in range(4)]
        print(np.concatenate(parts))
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Broadcasting in Depth</h1>
        </div>
        <p class="lc-lead">Broadcasting is how NumPy combines arrays of <strong>different shapes</strong> in one operation. For example, a row with a table, or a column with a row. You do not write loops, and NumPy does not copy the data.</p>
        <div class="lc-card">
          <h3>The Three Rules</h3>
          <ol class="lc-list">
            <li><strong>Line the shapes up on the right.</strong> Compare the last dimensions first, then move left.</li>
            <li><strong>Missing dimensions count as 1.</strong> A shape <code>(4,)</code> next to <code>(3, 4)</code> is treated as <code>(1, 4)</code>.</li>
            <li><strong>Each pair must be equal, or one of them must be 1.</strong> A size-1 dimension is stretched to match. (It is repeated, but only in NumPy's logic, not in memory.) If not, you get <code>ValueError: operands could not be broadcast together</code>.</li>
          </ol>
          <p>The result gets the larger size in every dimension.</p>
        </div>
        <div class="lc-card">
          <h3>Checking Shapes Step by Step</h3>
          <table class="lc-table">
            <thead><tr><th>Shape A</th><th>Shape B</th><th>Aligned on the right</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>(3, 4)</code></td><td><code>()</code> scalar</td><td>a scalar (single number) fits every shape</td><td><code>(3, 4)</code></td></tr>
              <tr><td><code>(3, 4)</code></td><td><code>(4,)</code></td><td>(3, 4) vs (1, 4) → OK</td><td><code>(3, 4)</code></td></tr>
              <tr><td><code>(3, 4)</code></td><td><code>(3, 1)</code></td><td>4 vs 1 OK, 3 vs 3 OK</td><td><code>(3, 4)</code></td></tr>
              <tr><td><code>(3, 1)</code></td><td><code>(1, 4)</code></td><td>both stretch</td><td><code>(3, 4)</code></td></tr>
              <tr><td><code>(8, 1, 6)</code></td><td><code>(7, 1)</code></td><td>(8,1,6) vs (1,7,1)</td><td><code>(8, 7, 6)</code></td></tr>
              <tr><td><code>(3, 4)</code></td><td><code>(3,)</code></td><td>4 vs 3: <strong>not equal, and neither is 1</strong></td><td>Error</td></tr>
            </tbody>
          </table>
          <p>You can ask NumPy directly: <code>np.broadcast_shapes((8, 1, 6), (7, 1))</code> returns <code>(8, 7, 6)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Column + Row = Table</h3>
          <div class="lc-code">a = np.array([[0], [10], [20]])   # shape (3, 1)<br>b = np.array([1, 2, 3, 4])         # shape (4,)<br>print((a + b).shape)<br>print(a + b)<br><br>m = np.ones((3, 4))<br>m + np.array([1, 2, 3])            # shape (3,) — does it fit?</div>
          <p>Output:</p>
          <div class="lc-code">(3, 4)<br>[[ 1  2  3  4]<br> [11 12 13 14]<br> [21 22 23 24]]<br>ValueError: operands could not be broadcast together with shapes (3,4) (3,)</div>
          <p>A (3,) array lines up with the <em>last</em> axis (size 4). So it fails. To add one value to each <strong>row</strong>, make it a column: <code>m + np.array([1, 2, 3])[:, np.newaxis]</code> (shape (3, 1)).</p>
        </div>
        <div class="lc-card">
          <h3>Everyday Patterns</h3>
          <ul class="lc-list">
            <li><strong>Per column</strong> (features): <code>X - X.mean(axis=0)</code>. This is (n, f) minus (f,).</li>
            <li><strong>Per row</strong>: <code>X - X.mean(axis=1, keepdims=True)</code>. This is (n, f) minus (n, 1).</li>
            <li><strong>Outer product / tables</strong> (every value times every other value): <code>prices[:, np.newaxis] * qty</code>. This is (p, 1) × (q,) → (p, q).</li>
            <li><strong>Distances between all pairs of points</strong>: <code>pts[:, None, :] - pts[None, :, :]</code>. This is (n, 1, 2) − (1, n, 2) → (n, n, 2).</li>
          </ul>
          <div class="lc-code">pts = np.array([[0, 0], [3, 4], [6, 8]], dtype=float)<br>diff = pts[:, np.newaxis, :] - pts[np.newaxis, :, :]   # (3, 3, 2)<br>dist = np.sqrt((diff ** 2).sum(axis=-1))<br>print(dist)<br># [[ 0.  5. 10.]<br>#  [ 5.  0.  5.]<br>#  [10.  5.  0.]]</div>
        </div>
        <div class="lc-card">
          <h3>No Copies Are Made</h3>
          <p>The stretching is not real. NumPy re-uses the same values. It does not build a big repeated array. So broadcasting is fast and uses little memory. (<code>np.broadcast_to(v, shape)</code> shows you the stretched version as a read-only view.) But be careful: the <em>result</em> of a broadcast operation is full size. <code>(10000, 1) - (1, 10000)</code> creates 100 million numbers (800 MB as float64).</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>Can these shapes be added? What is the result shape? Predict first, then run it in the editor.</p>
          <div class="lc-code">print((np.ones((5, 1)) + np.ones(3)).shape)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">(5, 3)</div>
          <p>(5, 1) and (3,) → line up on the right: (5, 1) vs (1, 3) → both stretch to (5, 3).</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Scaling every feature at once</li>
            <li>Distance matrices (tables of distances) for k-nearest neighbours</li>
            <li>Adding a bias vector (one extra number per output) in a neural network layer</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Expecting a (3,) array to line up with the <em>rows</em> of a (3, 4) array. It lines up with the last axis. Reshape it to (3, 1).</li>
            <li>Forgetting <code>keepdims=True</code> after a row-wise reduction (like a mean of each row). Without it, (n, 1) becomes (n,).</li>
            <li>Broadcasting by accident: <code>y_true</code> of shape (n,) minus <code>y_pred</code> of shape (n, 1) gives an (n, n) array. There is no error, but the loss is wrong. Check shapes!</li>
            <li>Making huge in-between arrays when you broadcast all pairs on large data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, give each city a different correction (+1, 0, −1 °C) by broadcasting a (3, 1) array.</li>
            <li>Predict the shape of <code>np.ones((2, 1, 5)) + np.ones((4, 1))</code>, then check it.</li>
            <li>Make the accidental (n, n) bug happen with <code>y_pred.reshape(-1, 1)</code> and print its shape.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Write shapes as comments next to broadcasting code, like <code># (n, 1) * (1, m) -&gt; (n, m)</code>. Then you can see the rules at work, and bugs are easy to spot.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Weekly temperatures: 3 cities (rows) x 7 days (columns)
        temps = np.array([[28, 30, 27, 31, 29, 26, 28],
                          [22, 24, 23, 25, 21, 20, 22],
                          [35, 33, 36, 34, 37, 35, 36]], dtype=float)
        print("temps shape:", temps.shape)

        print("\n=== Scalar: (3, 7) and () ===")
        print("Fahrenheit, city 0:", temps[0] * 9 / 5 + 32)

        print("\n=== Per-day correction: (3, 7) + (7,) ===")
        day_fix = np.array([0, 0, 1, 0, 0, -1, 0])
        print((temps + day_fix)[0])

        print("\n=== Per-city: (3, 7) - (3, 1) ===")
        city_mean = temps.mean(axis=1, keepdims=True)
        print("city_mean shape:", city_mean.shape)
        print((temps - city_mean).round(1))

        print("\n=== A shape that does NOT fit: (3, 7) + (3,) ===")
        try:
            temps + np.array([1, 0, -1])
        except ValueError as e:
            print("ValueError:", e)
        print("fixed with [:, np.newaxis]:", (temps + np.array([1, 0, -1])[:, np.newaxis]).shape)

        print("\n=== Outer product: (3, 1) * (4,) -> (3, 4) ===")
        prices = np.array([10, 25, 50])
        qty = np.array([1, 2, 5, 10])
        print(prices[:, np.newaxis] * qty)

        print("\n=== Pairwise distances: (4, 1, 2) - (1, 4, 2) ===")
        shops = np.array([[0, 0], [3, 4], [6, 8], [0, 5]], dtype=float)
        diff = shops[:, np.newaxis, :] - shops[np.newaxis, :, :]
        print("diff shape:", diff.shape)
        print(np.sqrt((diff ** 2).sum(axis=-1)).round(2))
        print("np.broadcast_shapes:", np.broadcast_shapes((8, 1, 6), (7, 1)))
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Sorting, Searching and Set Operations</h1>
        </div>
        <p class="lc-lead">NumPy can sort millions of values very fast. It can find where values are. It can also treat arrays like sets (groups of values): unique values, common values and differences. These tools answer everyday questions like "who is in the top 5?" and "which IDs are missing?".</p>
        <div class="lc-card">
          <h3>Sorting</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>np.sort(a)</code></td><td>Returns a sorted <strong>copy</strong>. <code>a</code> does not change</td></tr>
              <tr><td><code>a.sort()</code></td><td>Sorts <code>a</code> <strong>in place</strong> (changes the array itself). Returns <code>None</code></td></tr>
              <tr><td><code>np.sort(m, axis=1)</code></td><td>Sort each row (the default axis is the last one, -1)</td></tr>
              <tr><td><code>np.sort(m, axis=0)</code></td><td>Sort each column</td></tr>
              <tr><td><code>np.sort(a)[::-1]</code> or <code>-np.sort(-a)</code></td><td>Descending order (largest first)</td></tr>
              <tr><td><code>np.argsort(a)</code></td><td>The positions that would sort <code>a</code> (use them to sort other arrays in the same order)</td></tr>
            </tbody>
          </table>
          <p>NumPy 2.5 (2026) added <code>np.sort(a, descending=True)</code>. The editor runs 2.2. So here, use <code>[::-1]</code>. It works in every version.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">a = np.array([3, 1, 4, 1, 5, 9, 2, 6])<br>print(np.sort(a), a)<br>print(np.sort(a)[::-1])<br>print(np.argsort(a))<br><br>s = np.array([10, 20, 30, 40])<br>print(np.searchsorted(s, 25), np.searchsorted(s, [5, 30, 45]))</div>
          <p>Output:</p>
          <div class="lc-code">[1 1 2 3 4 5 6 9] [3 1 4 1 5 9 2 6]<br>[9 6 5 4 3 2 1 1]<br>[1 3 6 0 2 4 7 5]<br>2 [0 2 4]</div>
          <p><code>np.searchsorted</code> works on an <strong>already sorted</strong> array. It tells you where to insert a value so the array stays sorted. Here, 25 goes at position 2. This is very useful for putting values into bands (ranges), like salary slabs or grade boundaries.</p>
        </div>
        <div class="lc-card">
          <h3>Top-k Without a Full Sort</h3>
          <p>For big arrays, sorting everything just to get the largest 3 wastes time. <code>np.partition(a, -3)</code> moves the 3 largest values to the end, <em>but not in any fixed order</em>. <code>np.argpartition</code> gives their positions.</p>
          <div class="lc-code">top3 = np.partition(a, -3)[-3:]        # the 3 largest values, unordered<br>idx  = np.argpartition(a, -3)[-3:]     # their positions<br>np.sort(top3)[::-1]                    # sort just those 3 if needed → [9 6 5]</div>
        </div>
        <div class="lc-card">
          <h3>Finding Things</h3>
          <ul class="lc-list">
            <li><code>np.argmin(a)</code>, <code>np.argmax(a)</code>: the position of the smallest / largest value.</li>
            <li><code>np.nonzero(a)</code>: the positions of non-zero (or True) values. This is the same as <code>np.where</code> with one argument.</li>
            <li><code>np.argwhere(m)</code>: one <code>[row, col]</code> pair for each non-zero element of a 2D array.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Set Operations</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>x=[1,2,3,4], y=[3,4,5]</th></tr></thead>
            <tbody>
              <tr><td><code>np.unique(x)</code></td><td>sorted unique values</td></tr>
              <tr><td><code>np.unique(v, return_counts=True)</code></td><td>unique values <em>and</em> how many times each appears</td></tr>
              <tr><td><code>np.isin(x, y)</code></td><td><code>[False False  True  True]</code>: is each x in y?</td></tr>
              <tr><td><code>np.intersect1d(x, y)</code></td><td><code>[3 4]</code>: values in both</td></tr>
              <tr><td><code>np.union1d(x, y)</code></td><td><code>[1 2 3 4 5]</code>: values in either one</td></tr>
              <tr><td><code>np.setdiff1d(x, y)</code></td><td><code>[1 2]</code>: values in x but not in y (the order of x and y matters!)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">a = np.array([3, 1, 3, 2, 1])<br>print(np.unique(a), np.setdiff1d([1, 2, 3, 4], a))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[1 2 3] [4]</div>
          <p>unique returns the different values, sorted. setdiff1d finds what is missing from a.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Checking class balance (how many samples each class has) with unique(return_counts=True)</li>
            <li>Finding missing IDs</li>
            <li>Putting values into bins (ranges) with searchsorted</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>a = a.sort()</code>. <code>sort()</code> returns <code>None</code>, so you lose your array. Use <code>a = np.sort(a)</code> or just <code>a.sort()</code>.</li>
            <li>Sorting names and scores separately. Then they no longer match. Use one <code>argsort</code> on the scores and use it to index both.</li>
            <li>Calling <code>np.searchsorted</code> on unsorted data. The answer is then wrong and useless.</li>
            <li>Assuming <code>np.partition</code> returns the top values in order.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, print the top 3 batters by runs using <code>argsort</code> and the names array.</li>
            <li>Use <code>np.setdiff1d</code> to find which registered roll numbers did not submit homework.</li>
            <li>Use <code>np.searchsorted</code> with income slab limits. Label each salary with its tax slab number.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>np.unique(labels, return_counts=True)</code> is the fastest way to see how many samples each class has. Always check this before you train a classifier (a model that sorts data into classes).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        names = np.array(["Rohit", "Virat", "Gill", "Rahul", "Pant", "Jadeja"])
        runs  = np.array([  48,     82,      35,     82,     61,     27])

        print("=== np.sort returns a copy ===")
        print("sorted runs:", np.sort(runs))
        print("original   :", runs)
        print("descending :", np.sort(runs)[::-1])

        print("\n=== argsort keeps names and runs together ===")
        order = np.argsort(runs, kind="stable")[::-1]
        for i in order:
            print(f"  {names[i]:<7} {runs[i]}")

        print("\n=== Top 2 with argpartition (unordered) ===")
        idx = np.argpartition(runs, -2)[-2:]
        print("top 2 runs:", np.sort(runs[idx])[::-1])

        print("\n=== Search ===")
        print("best :", names[np.argmax(runs)], "| worst:", names[np.argmin(runs)])
        print("fifties at positions:", np.nonzero(runs >= 50)[0])

        print("\n=== searchsorted: put values into bands ===")
        limits = np.array([30, 50, 75])         # must be sorted
        band = np.searchsorted(limits, runs, side="right")
        labels = np.array(["<30", "30-49", "50-74", "75+"])
        print(dict(zip(names.tolist(), labels[band].tolist())))

        print("\n=== Set operations ===")
        registered = np.array([101, 102, 103, 104, 105, 106])
        submitted  = np.array([104, 101, 106, 101])
        print("unique submitted  :", np.unique(submitted))
        vals, counts = np.unique(submitted, return_counts=True)
        print("submitted twice   :", vals[counts > 1])
        print("did not submit    :", np.setdiff1d(registered, submitted))
        print("isin(registered)  :", np.isin(registered, submitted))
        print("in both           :", np.intersect1d(registered, submitted))
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Random Numbers with Generator</h1>
        </div>
        <p class="lc-lead">You need random numbers for simulations, shuffling, train/test splits and for setting the starting weights of a neural network. Modern NumPy makes them with a <strong>Generator</strong> object (an object that produces random numbers): <code>rng = np.random.default_rng(seed)</code>.</p>
        <div class="lc-card">
          <h3>Create One Generator, Use It Everywhere</h3>
          <div class="lc-code">import numpy as np<br><br>rng = np.random.default_rng(42)   # 42 is the seed<br>rng.random(3)                     # 3 floats in [0, 1)<br>rng.integers(1, 7, size=5)        # 5 dice rolls, 1..6</div>
          <ul class="lc-list">
            <li>The <strong>seed</strong> (a starting number) makes results reproducible. The same seed gives the same numbers in every run, on every computer.</li>
            <li>Leave the seed out (<code>default_rng()</code>) to get different numbers each time.</li>
            <li>Each call moves the generator forward. So two calls give different numbers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Generator Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Gives</th><th>Range</th></tr></thead>
            <tbody>
              <tr><td><code>rng.random(size)</code></td><td>uniform floats (every value equally likely)</td><td>[0, 1): 1 is never returned</td></tr>
              <tr><td><code>rng.integers(lo, hi, size)</code></td><td>integers</td><td>[lo, hi): <code>hi</code> is not included. Add <code>endpoint=True</code> to include it</td></tr>
              <tr><td><code>rng.uniform(lo, hi, size)</code></td><td>uniform floats</td><td>[lo, hi): hi is not included</td></tr>
              <tr><td><code>rng.normal(mean, std, size)</code></td><td>bell-curve values (most values near the mean)</td><td>any real number</td></tr>
              <tr><td><code>rng.standard_normal(size)</code></td><td>normal with mean 0, std 1</td><td>any real number</td></tr>
              <tr><td><code>rng.choice(a, size, replace, p)</code></td><td>random picks from <code>a</code></td><td>optional probabilities <code>p</code></td></tr>
              <tr><td><code>rng.permutation(a)</code></td><td>shuffled <strong>copy</strong></td><td>—</td></tr>
              <tr><td><code>rng.shuffle(a)</code></td><td>shuffles <code>a</code> <strong>in place</strong> and returns None</td><td>—</td></tr>
            </tbody>
          </table>
          <p><code>size</code> can be a tuple for 2D results: <code>rng.random((2, 3))</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">rng = np.random.default_rng(42)<br>print(rng.random(3))<br>print(rng.integers(1, 7, size=5))<br>print(rng.integers(1, 6, size=5, endpoint=True))<br>print(rng.uniform(10, 20, size=3))<br>print(rng.normal(170, 8, size=3).round(1))</div>
          <p>Output (the same every time with seed 42):</p>
          <div class="lc-code">[0.77395605 0.43887844 0.85859792]<br>[1 5 2 1 4]<br>[6 5 5 5 5]<br>[11.28113633 14.50385938 13.70798024]<br>[176.2 170.5 179. ]</div>
        </div>
        <div class="lc-card">
          <h3>Sampling and Shuffling</h3>
          <div class="lc-code">rng.choice(5, size=3, replace=False)          # 3 different numbers from 0..4<br>rng.choice(["H", "T"], size=6, p=[0.7, 0.3])  # a biased coin<br>idx = rng.permutation(len(X))                  # shuffled row order for a train/test split<br>X_shuffled, y_shuffled = X[idx], y[idx]        # same order for X and y</div>
        </div>
        <div class="lc-card">
          <h3>Old Way: Don't Use in New Code</h3>
          <table class="lc-table">
            <thead><tr><th>Old (legacy) global functions</th><th>Generator version</th></tr></thead>
            <tbody>
              <tr><td><code>np.random.seed(42)</code></td><td><code>rng = np.random.default_rng(42)</code></td></tr>
              <tr><td><code>np.random.rand(3)</code></td><td><code>rng.random(3)</code></td></tr>
              <tr><td><code>np.random.randn(3)</code></td><td><code>rng.standard_normal(3)</code></td></tr>
              <tr><td><code>np.random.randint(1, 7, 5)</code></td><td><code>rng.integers(1, 7, size=5)</code></td></tr>
            </tbody>
          </table>
          <p>The legacy functions share one hidden global state (settings shared by the whole program). So any library that calls them changes your numbers. They still work, and you will see them in older tutorials. But NumPy recommends <code>default_rng</code>. It is also faster and gives better random numbers. Note: the same seed gives <em>different</em> numbers in the two APIs.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>Is this True or False? Predict first, then run it in the editor.</p>
          <div class="lc-code">r1 = np.random.default_rng(5).integers(0, 10, 3)<br>r2 = np.random.default_rng(5).integers(0, 10, 3)<br>print((r1 == r2).all())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">True</div>
          <p>The same seed always gives the same numbers. This is what makes experiments reproducible (you can repeat them and get the same result).</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Train/test splits</li>
            <li>Setting the starting weights of a neural network</li>
            <li>Monte Carlo simulations (experiments repeated many times with random numbers)</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Creating a new generator with the same seed inside a loop. You get the same "random" numbers in every loop step. Create it once, outside the loop.</li>
            <li>Expecting <code>rng.integers(1, 6)</code> to include 6. Use <code>integers(1, 7)</code> or <code>endpoint=True</code>.</li>
            <li>Writing <code>a = rng.shuffle(a)</code>. shuffle returns <code>None</code>. Use <code>a = rng.permutation(a)</code>.</li>
            <li>Shuffling X and y separately. Then the rows no longer match. Shuffle one index array and use it for both.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>Change the seed in the starter and run it twice. The numbers change, but each seed always gives the same numbers again.</li>
            <li>Simulate 1,000 coin flips with <code>rng.integers(0, 2, size=1000)</code> and print the fraction of heads.</li>
            <li>Pick a random team of 4 from the class list without repeats.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Create <code>rng</code> once at the top of your script or notebook. Pass it to the functions that need random numbers. Then your whole experiment depends on one seed.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        rng = np.random.default_rng(2024)   # one generator, one seed

        print("=== Uniform [0, 1) ===")
        print(rng.random(4).round(3))

        print("\n=== Dice: integers in [1, 7) ===")
        rolls = rng.integers(1, 7, size=12)
        print("rolls:", rolls)
        faces, counts = np.unique(rolls, return_counts=True)
        print("counts per face:", dict(zip(faces.tolist(), counts.tolist())))

        print("\n=== Heights: normal(mean=165, std=7) ===")
        heights = rng.normal(165, 7, size=1000)
        print("mean:", heights.mean().round(1), "| std:", heights.std().round(1))
        print("share within 1 std:", np.mean(np.abs(heights - 165) < 7).round(2))

        print("\n=== choice: a random team, no repeats ===")
        students = np.array(["Asha", "Ravi", "Meera", "Kiran", "Dev", "Priya", "Sam"])
        print(rng.choice(students, size=3, replace=False))

        print("\n=== Biased coin with p= ===")
        flips = rng.choice(["H", "T"], size=20, p=[0.7, 0.3])
        print("".join(flips), "| heads:", np.sum(flips == "H"))

        print("\n=== permutation for a train/test split ===")
        X = np.arange(10) * 10
        y = np.arange(10)
        idx = rng.permutation(len(X))
        train_idx, test_idx = idx[:8], idx[8:]
        print("test X:", X[test_idx], "test y:", y[test_idx])

        print("\n=== Same seed -> same numbers ===")
        a = np.random.default_rng(7).integers(0, 100, size=3)
        b = np.random.default_rng(7).integers(0, 100, size=3)
        print(a, b, "equal:", np.array_equal(a, b))
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Statistical Functions</h1>
        </div>
        <p class="lc-lead">Before you build any model, you describe your data. You look at its centre (a typical value), its spread (how far values are from each other) and how variables change together. NumPy has all the basic statistics built in.</p>
        <div class="lc-card">
          <h3>Centre and Spread</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Measures</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>np.mean(x)</code></td><td>average</td><td>outliers (very unusual values) change it a lot</td></tr>
              <tr><td><code>np.median(x)</code></td><td>middle value</td><td>outliers barely change it</td></tr>
              <tr><td><code>np.std(x)</code>, <code>np.var(x)</code></td><td>spread</td><td>uses the <strong>population</strong> formula by default (<code>ddof=0</code>)</td></tr>
              <tr><td><code>np.std(x, ddof=1)</code></td><td>sample standard deviation</td><td>divides by n − 1 (pandas and most statistics books use this)</td></tr>
              <tr><td><code>np.percentile(x, q)</code></td><td>the value that q% of the data is below</td><td>q from 0 to 100</td></tr>
              <tr><td><code>np.quantile(x, q)</code></td><td>same idea</td><td>q from 0 to 1</td></tr>
              <tr><td><code>np.ptp(x)</code></td><td>range: max − min</td><td>"peak to peak"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">x = np.array([2, 4, 4, 4, 5, 5, 7, 9])<br>print(x.mean(), np.median(x), x.std(), x.std(ddof=1))<br>print(np.percentile(x, [25, 50, 75]))<br>q1, q3 = np.percentile(x, [25, 75])<br>print("IQR:", q3 - q1)<br>print(((x - x.mean()) / x.std()).round(2))   # z-scores</div>
          <p>Output:</p>
          <div class="lc-code">5.0 4.5 2.0 2.138089935299395<br>[4.  4.5 5.5]<br>IQR: 1.5<br>[-1.5 -0.5 -0.5 -0.5  0.   0.   1.   2. ]</div>
          <p>The population std is 2.0, but the sample std is about 2.14. If your numbers are a <em>sample</em> from a bigger group, use <code>ddof=1</code>. The IQR (Q3 − Q1) is the spread of the middle half of the data. Points more than 1.5 × IQR away from the quartiles (Q1 and Q3) are often marked as outliers. A z-score tells you how many standard deviations a value is from the mean.</p>
        </div>
        <div class="lc-card">
          <h3>Relationships: Correlation and Covariance</h3>
          <div class="lc-code">h = np.array([150, 160, 170, 180, 190])   # height cm<br>w = np.array([50, 58, 69, 77, 90])        # weight kg<br>print(np.corrcoef(h, w).round(4))</div>
          <div class="lc-code">[[1.     0.9966]<br> [0.9966 1.    ]]</div>
          <p><code>np.corrcoef</code> returns a <strong>matrix</strong> (a 2D table of numbers). The diagonal is always 1 (each variable compared with itself). The value at <code>[0, 1]</code> is the Pearson correlation r, from −1 to +1. It shows how strongly two variables move together. <code>np.cov</code> gives the covariance matrix (it uses <code>ddof=1</code> by default). For a 2D table, <code>np.corrcoef(X, rowvar=False)</code> treats each <em>column</em> as a variable.</p>
        </div>
        <div class="lc-card">
          <h3>Histograms and Weighted Averages</h3>
          <div class="lc-code">counts, edges = np.histogram(x, bins=4)<br># counts [1 5 1 1], edges [2. 3.75 5.5 7.25 9.]<br><br>np.average([80, 90, 70], weights=[0.5, 0.3, 0.2])   # 81.0 — weighted final mark</div>
          <p>A histogram counts how many values fall in each bin (range). There are 4 bins but 5 edges. The last bin includes its right edge.</p>
        </div>
        <div class="lc-card">
          <h3>Missing Values: Versions That Skip nan</h3>
          <p>Just one <code>np.nan</code> (a missing value) makes <code>np.mean</code> return <code>nan</code>. To ignore missing values, use <code>np.nanmean</code>, <code>np.nanmedian</code>, <code>np.nanstd</code>, <code>np.nanpercentile</code>, <code>np.nanmax</code> …</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">x = np.array([1, 2, 3, 4, 100])<br>print(np.mean(x), np.median(x))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">22.0 3.0</div>
          <p>One very large value pulls the mean far up. The median stays in the middle.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Describing salaries and house prices</li>
            <li>Finding outliers with the IQR</li>
            <li>Checking how features are correlated (move together)</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Comparing NumPy's <code>std</code> with pandas' <code>.std()</code> and getting different answers. pandas uses <code>ddof=1</code>. NumPy uses <code>ddof=0</code>.</li>
            <li>Reading <code>np.corrcoef(a, b)</code> as a single number. Take <code>[0, 1]</code>.</li>
            <li>Giving only the mean for skewed (lopsided) data like salaries. Also give the median.</li>
            <li>Forgetting that <code>percentile</code> uses 0–100 but <code>quantile</code> uses 0–1.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add a salary of 500 (₹5 lakh a month) with <code>np.append</code>. See how much the mean moves compared with the median.</li>
            <li>Find outliers with the 1.5 × IQR rule and print them.</li>
            <li>Calculate the correlation between study hours and marks.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Correlation measures a <em>straight-line</em> relationship. It does not prove that one thing causes the other. Always look at the numbers (or a plot), not just r.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Monthly salaries (thousand rupees) at a small company
        sal = np.array([28, 32, 35, 35, 38, 41, 45, 52, 60, 150])
        print("salaries:", sal)

        print("\n=== Centre ===")
        print("mean  :", sal.mean())
        print("median:", np.median(sal), "<- robust to the 150 outlier")

        print("\n=== Spread ===")
        print("std (ddof=0, population):", sal.std().round(2))
        print("std (ddof=1, sample)    :", sal.std(ddof=1).round(2))
        print("range (ptp):", np.ptp(sal))
        q1, q3 = np.percentile(sal, [25, 75])
        iqr = q3 - q1
        print("Q1:", q1, "Q3:", q3, "IQR:", iqr)

        print("\n=== Outliers with the 1.5 x IQR rule ===")
        low, high = q1 - 1.5 * iqr, q3 + 1.5 * iqr
        print("limits:", low, "to", high)
        print("outliers:", sal[(sal < low) | (sal > high)])

        print("\n=== z-scores ===")
        z = (sal - sal.mean()) / sal.std()
        print(z.round(2))

        print("\n=== Correlation: study hours vs marks ===")
        hours = np.array([1, 2, 3, 4, 5, 6, 7, 8])
        marks = np.array([35, 42, 50, 55, 61, 70, 74, 85])
        r = np.corrcoef(hours, marks)[0, 1]
        print("r =", round(r, 4))

        print("\n=== Histogram and weighted average ===")
        counts, edges = np.histogram(marks, bins=[30, 50, 70, 90])
        print("counts per band:", counts, "edges:", edges)
        print("weighted mark:", np.average([80, 90, 70], weights=[0.5, 0.3, 0.2]))

        print("\n=== Missing values ===")
        m = np.array([72.0, np.nan, 65.0, 80.0])
        print("mean:", np.mean(m), "| nanmean:", np.nanmean(m).round(2))
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Linear Algebra</h1>
        </div>
        <p class="lc-lead">Linear algebra is the maths of matrices (2D tables of numbers), vectors (lists of numbers) and the rules for multiplying them. It is the maths behind regression, neural networks, recommendation systems and computer graphics. NumPy's <code>@</code> operator and <code>np.linalg</code> module cover the basics.</p>
        <div class="lc-card">
          <h3>* Is Not Matrix Multiplication</h3>
          <ul class="lc-list">
            <li><code>A * B</code>: <strong>element-wise</strong>. It multiplies values in matching positions. Shapes must match (or broadcast).</li>
            <li><code>A @ B</code>: <strong>matrix multiplication</strong>. Rows of A are multiplied by columns of B, then summed. Same as <code>np.matmul(A, B)</code>.</li>
            <li><code>np.dot(a, b)</code>: for two 1D vectors, this is the dot product (a single number). For 2D arrays it is the same as <code>@</code>. But use <code>@</code> because it is easier to read.</li>
          </ul>
          <p><strong>Shape rule:</strong> <code>(m, n) @ (n, p) → (m, p)</code>. The inner sizes must be equal.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example</h3>
          <div class="lc-code">A = np.array([[1, 2], [3, 4]])<br>B = np.array([[5, 6], [7, 8]])<br>print(A * B)<br>print(A @ B)<br>print(np.dot(np.array([1, 2, 3]), np.array([4, 5, 6])))<br>print(np.linalg.det(A))</div>
          <p>Output:</p>
          <div class="lc-code">[[ 5 12]<br> [21 32]]<br>[[19 22]<br> [43 50]]<br>32<br>-2.0000000000000004</div>
          <p>The top-left value of <code>A @ B</code> is 1·5 + 2·7 = 19. The dot product is 1·4 + 2·5 + 3·6 = 32. The determinant (a number that tells you if a matrix can be inverted) should be exactly −2. But <code>det</code> uses floating-point maths, so you see a tiny rounding error. Compare with <code>np.isclose</code>, never <code>==</code>.</p>
        </div>
        <div class="lc-card">
          <h3>np.linalg Essentials</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>What it does</th><th>Common use</th></tr></thead>
            <tbody>
              <tr><td><code>A.T</code></td><td>transpose</td><td>swap rows and columns</td></tr>
              <tr><td><code>np.linalg.solve(A, b)</code></td><td>solves <code>A @ x = b</code></td><td>systems of equations</td></tr>
              <tr><td><code>np.linalg.inv(A)</code></td><td>inverse matrix</td><td>theory; you rarely need it in real work</td></tr>
              <tr><td><code>np.linalg.det(A)</code></td><td>determinant</td><td>0 means there is no inverse</td></tr>
              <tr><td><code>np.linalg.norm(v)</code></td><td>length of a vector</td><td>distances, normalising (scaling to length 1)</td></tr>
              <tr><td><code>np.linalg.eig(A)</code> / <code>eigh(A)</code></td><td>eigenvalues and eigenvectors (<code>eigh</code> is for symmetric matrices)</td><td>PCA, stability</td></tr>
              <tr><td><code>np.linalg.lstsq(A, b)</code></td><td>best-fit (least-squares) solution</td><td>linear regression</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Solve, Don't Invert</h3>
          <p>Two pens and one notebook cost ₹8. One pen and three notebooks cost ₹13. Find the prices:</p>
          <div class="lc-code">M = np.array([[2, 1], [1, 3]])<br>b = np.array([8, 13])<br>x = np.linalg.solve(M, b)<br>print(x, np.allclose(M @ x, b))   # [2.2 3.6] True</div>
          <p>You <em>could</em> write <code>np.linalg.inv(M) @ b</code>. But <code>solve</code> is faster and more accurate. A matrix can be singular (determinant 0, like <code>[[1, 2], [2, 4]]</code>). Then there is no single answer. <code>solve</code> and <code>inv</code> raise <code>LinAlgError: Singular matrix</code> on normal NumPy installs. (In this browser editor they may return <code>nan</code> values instead.) If you are not sure, check <code>np.linalg.det</code> or <code>np.linalg.cond</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Fitting a Line with lstsq</h3>
          <p>Linear regression finds the <code>w</code> that makes <code>X @ w</code> as close as possible to <code>y</code>. Add a column of ones so the model can learn an intercept (the value of y when x is 0):</p>
          <div class="lc-code">x = np.array([1, 2, 3, 4, 5])<br>y = np.array([3.1, 4.9, 7.2, 8.8, 11.1])<br>X = np.column_stack([x, np.ones_like(x)])<br>coef, *_ = np.linalg.lstsq(X, y, rcond=None)<br>print(coef.round(3))   # [1.99 1.05] → y ≈ 1.99x + 1.05</div>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What shape is the result? Predict first, then run it in the editor.</p>
          <div class="lc-code">A = np.ones((4, 3))<br>w = np.ones(3)<br>print((A @ w).shape, (A.T @ A).shape)</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">(4,) (3, 3)</div>
          <p>(4, 3) @ (3,) → (4,); (3, 4) @ (4, 3) → (3, 3).</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Making predictions X @ w in linear models</li>
            <li>PCA (a way to reduce the number of features) with eigenvectors</li>
            <li>Solving systems of equations in engineering</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>*</code> when you meant <code>@</code>. For square matrices there is no error, just wrong numbers.</li>
            <li>Inner sizes that do not match: <code>(2, 3) @ (2, 3)</code> raises <code>ValueError: matmul: Input operand 1 has a mismatch in its core dimension 0...</code>. Transpose one of them.</li>
            <li>Checking results with <code>==</code>. Use <code>np.allclose</code> because of rounding.</li>
            <li>Calculating <code>inv(A) @ b</code> instead of <code>solve(A, b)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, change the order quantities. Then calculate each customer's bill again with <code>@</code>.</li>
            <li>Solve: 3 samosas + 2 teas = ₹90 and 1 samosa + 4 teas = ₹80.</li>
            <li>Find the unit vector (length 1) of <code>[3, 4]</code>. Divide it by its norm (length).</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Before every <code>@</code>, write the shapes: <code>(customers, items) @ (items,) → (customers,)</code>. If the middle sizes do not match, you need a transpose.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        print("=== Element-wise * vs matrix @ ===")
        A = np.array([[1, 2], [3, 4]])
        B = np.array([[5, 6], [7, 8]])
        print("A * B:\n", A * B)
        print("A @ B:\n", A @ B)

        print("\n=== Shapes: (customers, items) @ (items,) ===")
        orders = np.array([[2, 1, 0],     # customer 0: 2 dosa, 1 idli, 0 vada
                           [0, 3, 2],
                           [1, 1, 1]])
        prices = np.array([60, 30, 25])   # rupees per item
        print("orders", orders.shape, "@ prices", prices.shape, "->", (orders @ prices).shape)
        print("bills:", orders @ prices)

        print("\n=== Dot product and norm ===")
        u = np.array([3.0, 4.0])
        v = np.array([4.0, 3.0])
        print("u . v   :", np.dot(u, v))
        print("|u|     :", np.linalg.norm(u))
        print("unit u  :", u / np.linalg.norm(u))

        print("\n=== Solve a system: 2p + n = 8, p + 3n = 13 ===")
        M = np.array([[2, 1], [1, 3]])
        b = np.array([8, 13])
        x = np.linalg.solve(M, b)
        print("pen, notebook =", x, "| check:", np.allclose(M @ x, b))
        print("det(M):", round(np.linalg.det(M), 6))

        print("\n=== Inverse (for understanding) ===")
        M_inv = np.linalg.inv(M)
        print("M @ inv(M) is identity:", np.allclose(M @ M_inv, np.eye(2)))

        print("\n=== Eigenvalues of a symmetric matrix ===")
        vals, vecs = np.linalg.eigh(M)
        print("eigenvalues:", vals.round(4))

        print("\n=== Best-fit line with lstsq ===")
        hours = np.array([1, 2, 3, 4, 5])
        marks = np.array([52.0, 60.0, 71.0, 78.0, 90.0])
        X = np.column_stack([hours, np.ones_like(hours)])
        (slope, intercept), *_ = np.linalg.lstsq(X, marks, rcond=None)
        print(f"marks = {slope:.2f} * hours + {intercept:.2f}")
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">NaN, Infinity and Floating-Point Precision</h1>
        </div>
        <p class="lc-lead">Real data has gaps. Computers also store decimals only approximately (not exactly). Learn how NumPy shows missing values (<code>nan</code>), infinity (<code>inf</code>) and rounding error. This will save you from bugs that give no error and are hard to find.</p>
        <div class="lc-card">
          <h3>Floats Are Not Exact</h3>
          <p>Numbers like 0.1 cannot be stored exactly in binary. So tiny errors appear:</p>
          <div class="lc-code">print(0.1 + 0.2, 0.1 + 0.2 == 0.3, np.isclose(0.1 + 0.2, 0.3))</div>
          <div class="lc-code">0.30000000000000004 False True</div>
          <p>This is not a NumPy bug. Every language that uses IEEE-754 floats does this. Never compare floats with <code>==</code>. Use <code>np.isclose(a, b)</code> for single elements or <code>np.allclose(a, b)</code> for whole arrays. Both allow a small tolerance (a small allowed difference).</p>
        </div>
        <div class="lc-card">
          <h3>Special Values</h3>
          <table class="lc-table">
            <thead><tr><th>Value</th><th>Meaning</th><th>Where it comes from</th><th>Test with</th></tr></thead>
            <tbody>
              <tr><td><code>np.nan</code></td><td>"not a number": a missing or undefined value</td><td><code>0.0 / 0.0</code>, <code>np.inf - np.inf</code>, missing data</td><td><code>np.isnan</code></td></tr>
              <tr><td><code>np.inf</code>, <code>-np.inf</code></td><td>infinity</td><td><code>1.0 / 0.0</code>, overflow (a result too big to store) like <code>np.exp(1000.0)</code></td><td><code>np.isinf</code></td></tr>
              <tr><td>normal numbers</td><td>finite (not infinite) values</td><td>—</td><td><code>np.isfinite</code> (False for nan and inf)</td></tr>
            </tbody>
          </table>
          <p>Remember: the old spellings <code>np.NaN</code> and <code>np.Inf</code> were removed in NumPy 2. Write <code>np.nan</code> and <code>np.inf</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: nan Spreads</h3>
          <div class="lc-code">print(np.nan == np.nan, np.isnan(np.nan))<br>a = np.array([1.0, np.nan, 3.0, np.inf])<br>print(np.isnan(a), np.isfinite(a))<br>print(a.sum(), np.nansum(a))<br>print(np.nanmean(np.array([1.0, np.nan, 3.0])))</div>
          <p>Output:</p>
          <div class="lc-code">False True<br>[False  True False False] [ True False  True False]<br>nan inf<br>2.0</div>
          <ul class="lc-list">
            <li><code>nan</code> is not equal to anything, not even itself. So <code>a == np.nan</code> finds nothing. Always use <code>np.isnan(a)</code>.</li>
            <li>Any maths with <code>nan</code> gives <code>nan</code>. So one missing value breaks a whole sum or mean.</li>
            <li>The <code>nan</code>-functions (<code>nansum</code>, <code>nanmean</code>, <code>nanmax</code>, …) skip missing values.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Handling Missing Values</h3>
          <div class="lc-code">b = np.array([2.0, np.nan, 5.0])<br>b[np.isnan(b)] = 0                     # replace in place → [2. 0. 5.]<br>clean = b[~np.isnan(b)]                # or drop them<br>np.nan_to_num(np.array([np.nan, np.inf]))   # nan→0, inf→largest float</div>
          <p><strong>Integer arrays cannot hold <code>nan</code>.</strong> <code>np.array([1, 2, 3])[0] = np.nan</code> raises <code>ValueError: cannot convert float NaN to integer</code>. Use a float array for data with gaps. (pandas has nullable integer types, which can hold missing values, for this.)</p>
        </div>
        <div class="lc-card">
          <h3>Precision of float32 vs float64</h3>
          <table class="lc-table">
            <thead><tr><th>dtype</th><th>Significant digits</th><th>Machine epsilon (smallest step after 1.0)</th><th>Largest value</th></tr></thead>
            <tbody>
              <tr><td><code>float32</code></td><td>about 7</td><td>1.19e-07</td><td>about 3.4e38</td></tr>
              <tr><td><code>float64</code></td><td>about 15–16</td><td>2.22e-16</td><td>about 1.8e308</td></tr>
            </tbody>
          </table>
          <p>float32 uses half the memory. It is the standard for deep learning. But above 16,777,216 (2²⁴), not every whole number can be stored exactly: <code>np.float32(16777217.0)</code> becomes <code>16777216.0</code>. Check limits with <code>np.finfo(np.float32)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">a = np.array([1.0, np.nan, 5.0])<br>print(np.max(a), np.nanmax(a), np.isnan(a).sum())</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">nan 5.0 1</div>
          <p>nan spreads through max. nanmax ignores it. isnan counts it.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Cleaning sensor data</li>
            <li>Checking a model's loss (its error score) for nan</li>
            <li>Comparing results with isclose in tests</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Testing <code>x == np.nan</code>. It is always False. Use <code>np.isnan(x)</code>.</li>
            <li>Comparing computed floats with <code>==</code>. Use <code>np.isclose</code> / <code>np.allclose</code>.</li>
            <li>Calling <code>np.mean</code> on data with gaps and getting <code>nan</code>. Use <code>np.nanmean</code>, or decide how to fill the gaps first.</li>
            <li>Ignoring <code>RuntimeWarning: overflow</code> or <code>divide by zero</code>. These warnings mean <code>inf</code>/<code>nan</code> just got into your data.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, count how many readings are missing with <code>np.isnan(...).sum()</code>.</li>
            <li>Fill the missing readings with the mean of the good ones.</li>
            <li>Check if Python's <code>sum([0.1] * 10)</code> is <em>exactly</em> 1.0 with <code>==</code>. Then check with <code>np.isclose</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After loading data, run <code>np.isnan(a).sum()</code> and <code>np.isfinite(a).all()</code>. These two quick checks find most bad values before they reach your model.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        print("=== Floating-point rounding ===")
        print("0.1 + 0.2        :", 0.1 + 0.2)
        print("== 0.3 ?         :", 0.1 + 0.2 == 0.3)
        print("np.isclose(.., .3):", np.isclose(0.1 + 0.2, 0.3))

        print("\n=== nan is not equal to itself ===")
        print("np.nan == np.nan:", np.nan == np.nan)
        print("np.isnan(np.nan):", np.isnan(np.nan))

        # Hourly rainfall readings (mm); two sensor gaps and one faulty spike
        rain = np.array([2.5, 0.0, np.nan, 4.0, 1.5, np.nan, 3.0, np.inf])
        print("\n=== Sensor data ===")
        print("rain       :", rain)
        print("isnan      :", np.isnan(rain))
        print("isfinite   :", np.isfinite(rain))
        print("missing    :", np.isnan(rain).sum())

        print("\n=== nan spreads, nan-functions skip it ===")
        print("sum        :", rain.sum())
        finite = rain[np.isfinite(rain)]
        print("finite only:", finite)
        print("mean       :", finite.mean())
        print("nanmean of [1, nan, 3]:", np.nanmean(np.array([1.0, np.nan, 3.0])))

        print("\n=== Filling gaps ===")
        filled = rain.copy()
        filled[~np.isfinite(filled)] = finite.mean()
        print("filled     :", filled.round(2))

        print("\n=== Integers cannot hold nan ===")
        counts = np.array([1, 2, 3])
        try:
            counts[0] = np.nan
        except ValueError as e:
            print("ValueError:", e)

        print("\n=== Overflow and division give inf / nan ===")
        with np.errstate(over="ignore", divide="ignore", invalid="ignore"):
            print("exp(1000):", np.exp(np.array([1000.0])))
            print("[1, 0] / 0:", np.array([1.0, 0.0]) / 0)

        print("\n=== float32 precision ===")
        print("float32(16777217) ->", np.float32(16777217.0))
        print("eps float32:", np.finfo(np.float32).eps, "| eps float64:", np.finfo(np.float64).eps)
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Saving, Loading and Interoperability</h1>
        </div>
        <p class="lc-lead">You need to save and share processed data and trained weights. NumPy has a fast binary format (<code>.npy</code>/<code>.npz</code>). It can also read and write text files like CSV. And it converts easily to Python lists and pandas DataFrames.</p>
        <div class="lc-card">
          <h3>Binary Formats: .npy and .npz</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Saves / loads</th><th>File</th></tr></thead>
            <tbody>
              <tr><td><code>np.save("X.npy", X)</code></td><td>one array, with its exact dtype and shape</td><td><code>.npy</code></td></tr>
              <tr><td><code>np.load("X.npy")</code></td><td>loads it back</td><td>—</td></tr>
              <tr><td><code>np.savez("data.npz", X=X, y=y)</code></td><td>several arrays, each with a name</td><td><code>.npz</code> (a zip of .npy files)</td></tr>
              <tr><td><code>np.savez_compressed(...)</code></td><td>same, but compressed (made smaller)</td><td>smaller <code>.npz</code></td></tr>
              <tr><td><code>np.load("X.npy", mmap_mode="r")</code></td><td>memory-maps the file: reads only the parts you use</td><td>for arrays bigger than RAM</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Save and Load</h3>
          <p>This code really writes files. In the browser editor, they go to a temporary file system in memory. It disappears when you reload the page.</p>
          <div class="lc-code">X = np.arange(6, dtype=np.float64).reshape(2, 3)<br>y = np.array([0, 1], dtype=np.int64)<br>np.save("features.npy", X)<br>back = np.load("features.npy")<br>print(back, back.dtype, np.array_equal(X, back))<br><br>np.savez("data.npz", X=X, y=y)<br>with np.load("data.npz") as d:<br>    print(sorted(d.files), d["y"])</div>
          <p>Output:</p>
          <div class="lc-code">[[0. 1. 2.]<br> [3. 4. 5.]] float64 True<br>['X', 'y'] [0 1]</div>
          <p>An <code>.npz</code> file works like a dictionary. You get each array by the name you gave it. Using <code>with</code> closes the file when you are done.</p>
        </div>
        <div class="lc-card">
          <h3>Text Files: savetxt, loadtxt, genfromtxt</h3>
          <p>Text is slower and bigger. But people and other programs (Excel, R) can read it. Here we use <code>io.StringIO</code>, a text "file" in memory. So you do not need a disk:</p>
          <div class="lc-code">import io<br>buf = io.StringIO()<br>np.savetxt(buf, X, delimiter=",", fmt="%.1f", header="a,b,c", comments="")<br>print(buf.getvalue())<br><br>np.loadtxt(io.StringIO("a,b\n1,2\n3,4\n"), delimiter=",", skiprows=1)   # [[1. 2.] [3. 4.]]<br>np.genfromtxt(io.StringIO("1,2\n3,\n5,6"), delimiter=",")              # the gap becomes nan</div>
          <div class="lc-code">a,b,c<br>0.0,1.0,2.0<br>3.0,4.0,5.0</div>
          <p><code>loadtxt</code> expects clean numbers. <code>genfromtxt</code> accepts missing values and fills them with <code>nan</code>. For messy real CSV files with different column types, use pandas' <code>read_csv</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Which Format?</h3>
          <table class="lc-table">
            <thead><tr><th>You need</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>Fast save/load, exact dtype, only Python reads it</td><td><code>.npy</code> / <code>.npz</code></td></tr>
              <tr><td>Share with Excel or other tools</td><td>CSV via <code>savetxt</code> (or pandas <code>to_csv</code>)</td></tr>
              <tr><td>Arrays too big for memory</td><td><code>np.load(..., mmap_mode="r")</code></td></tr>
              <tr><td>Mixed types, columns with names</td><td>pandas (CSV, Parquet)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Interoperability (Working with Other Tools)</h3>
          <div class="lc-code">X.tolist()                                   # nested Python lists (e.g. for JSON)<br>np.array(py_list)                            # back to an array<br>import pandas as pd<br>df = pd.DataFrame(X, columns=["a", "b", "c"])  # array → DataFrame<br>arr = df.to_numpy()                          # DataFrame → array (preferred over df.values)</div>
          <p>Most NumPy functions also accept pandas objects directly: <code>np.log(df["price"])</code> returns a Series.</p>
        </div>
        <div class="lc-card">
          <h3>Security: allow_pickle</h3>
          <p>Object arrays (for example, arrays of dicts) are saved with Python's <em>pickle</em>. A pickle file can run code when you load it. So by default, <code>np.load</code> refuses them: <code>ValueError: Object arrays cannot be loaded when allow_pickle=False</code>. Only pass <code>allow_pickle=True</code> for files you made yourself or fully trust.</p>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">import io<br>buf = io.BytesIO()<br>np.savez(buf, a=np.arange(3), b=np.ones(2))<br>buf.seek(0)<br>d = np.load(buf)<br>print(sorted(d.files), d['a'])</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">['a', 'b'] [0 1 2]</div>
          <p>.npz files keep each array under the name you gave it. Here the file is saved to a buffer in memory.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Caching (keeping a saved copy of) a cleaned-up dataset</li>
            <li>Saving model weights</li>
            <li>Passing arrays to pandas to make reports</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>np.save</code> for several arrays. It saves only one. Use <code>np.savez</code> with names.</li>
            <li>Saving floats to CSV and expecting integers back. <code>loadtxt</code> returns float64 unless you pass <code>dtype=</code>.</li>
            <li>Setting <code>allow_pickle=True</code> on a downloaded file you do not trust.</li>
            <li>Forgetting the <code>.npz</code> keys. Print <code>data.files</code> to see them.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, also save the test labels into the <code>.npz</code> file and load them back.</li>
            <li>Change the <code>fmt</code> in <code>savetxt</code> to <code>"%d"</code> and see how the CSV changes.</li>
            <li>Add a missing value to the CSV text and load it with <code>genfromtxt</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>.npz</code> for your own in-between results (it is fast and exact). Use CSV only at the end, when people or other tools need to read the data.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import io
        import os
        import numpy as np
        import pandas as pd

        rng = np.random.default_rng(0)
        X = rng.normal(50, 10, size=(5, 3)).round(1)
        y = np.array([0, 1, 1, 0, 1], dtype=np.int64)

        print("=== .npy: one array ===")
        np.save("X.npy", X)
        X_back = np.load("X.npy")
        print("identical after reload:", np.array_equal(X, X_back), "| dtype:", X_back.dtype)

        print("\n=== .npz: several named arrays ===")
        np.savez_compressed("dataset.npz", X=X, y=y)
        with np.load("dataset.npz") as data:
            print("keys:", sorted(data.files))
            print("y:", data["y"])
        print("files on disk:", sorted(f for f in os.listdir(".") if f.endswith((".npy", ".npz"))))

        print("\n=== CSV text with savetxt / genfromtxt ===")
        buf = io.StringIO()
        np.savetxt(buf, X[:2], delimiter=",", fmt="%.1f", header="f1,f2,f3", comments="")
        print(buf.getvalue().strip())
        messy = "1.5,2.0\n3.0,\n4.5,6.0"
        print("with a gap:\n", np.genfromtxt(io.StringIO(messy), delimiter=","))

        print("\n=== Lists and pandas ===")
        print("row 0 as list:", X[0].tolist())
        df = pd.DataFrame(X, columns=["maths", "science", "english"])
        df["passed"] = y
        print(df)
        print("back to NumPy:", df[["maths", "science"]].to_numpy().shape)

        print("\n=== Object arrays need allow_pickle ===")
        np.save("meta.npy", np.array([{"source": "survey"}], dtype=object))
        try:
            np.load("meta.npy")
        except ValueError as e:
            print("ValueError:", e)

        for f in ["X.npy", "dataset.npz", "meta.npy"]:
            os.remove(f)          # tidy up
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Vectorisation and Performance</h1>
        </div>
        <p class="lc-lead">NumPy is fast only when you let it do the looping. <strong>Vectorised</strong> code works on whole arrays at once. It runs in compiled C code. Professionals use this style in pandas, scikit-learn and PyTorch.</p>
        <div class="lc-card">
          <h3>Loop vs Vectorised</h3>
          <div class="lc-code">x = np.arange(100_000, dtype=np.float64)<br><br># Slow: a Python loop touches every number one by one<br>result = [v * 2 + 1 for v in x]<br><br># Fast: one expression, the loop runs in C<br>result = x * 2 + 1</div>
          <p>On a normal computer, the vectorised version is 10–100× faster. The bigger the data, the bigger the difference. NumPy skips every Python step (getting an object, checking its type, calling <code>*</code>).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Measuring It</h3>
          <div class="lc-code">import time<br>t0 = time.perf_counter()<br>loop = [v * 2 + 1 for v in x.tolist()]<br>t1 = time.perf_counter()<br>vec = x * 2 + 1<br>t2 = time.perf_counter()<br>print(np.allclose(loop, vec))<br>print("speed-up:", round((t1 - t0) / (t2 - t1)), "x")</div>
          <p>Output (the speed-up number changes with each run and each computer):</p>
          <div class="lc-code">True<br>speed-up: 31 x</div>
        </div>
        <div class="lc-card">
          <h3>Vectorising Common Patterns</h3>
          <table class="lc-table">
            <thead><tr><th>Loop idea</th><th>Vectorised NumPy version</th></tr></thead>
            <tbody>
              <tr><td><code>if x &gt; 0: ... else: ...</code></td><td><code>np.where(x &gt; 0, a, b)</code></td></tr>
              <tr><td>many if/elif branches</td><td><code>np.select(conditions, choices)</code></td></tr>
              <tr><td>count items matching a test</td><td><code>(x &gt; t).sum()</code></td></tr>
              <tr><td>running total (sum so far)</td><td><code>np.cumsum(x)</code></td></tr>
              <tr><td>difference between next-door values</td><td><code>np.diff(x)</code></td></tr>
              <tr><td>loop inside a loop over pairs</td><td>broadcasting: <code>a[:, None] - b[None, :]</code></td></tr>
              <tr><td>weighted sums, layer outputs</td><td>matrix multiply: <code>X @ W</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>np.vectorize Does Not Make Code Fast</h3>
          <div class="lc-code">label = np.vectorize(lambda v: "high" if v &gt; 0.5 else "low")<br>label(np.array([0.2, 0.9]))      # ['low' 'high']</div>
          <p><code>np.vectorize</code> only makes code <em>easier to write</em>. It still calls your Python function once for each element. So it is about as slow as a loop. The fast version is <code>np.where(v &gt; 0.5, "high", "low")</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Memory Matters Too</h3>
          <ul class="lc-list">
            <li><strong>Choose the dtype:</strong> one million float64 values use 8,000,000 bytes. float32 uses 4,000,000.</li>
            <li><strong>Avoid temporary arrays:</strong> <code>a * 2 + 1</code> builds an extra in-between array. For huge arrays, <code>np.multiply(a, 2, out=buf); buf += 1</code> re-uses one buffer (a block of memory).</li>
            <li><strong>Use views:</strong> slicing and reshaping do not copy data.</li>
            <li><strong>einsum</strong> writes complex products in one call: <code>np.einsum("ij,jk-&gt;ik", A, B)</code> is <code>A @ B</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>Which line is vectorised? Predict first, then run it in the editor.</p>
          <div class="lc-code">x = np.arange(5)<br>print(np.where(x % 2 == 0, x, -x))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">[ 0 -1  2 -3  4]</div>
          <p>np.where checks the condition on the whole array at once. There is no Python loop.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Feature engineering (making new input columns) on millions of rows</li>
            <li>Neural-network layers (X @ W + b)</li>
            <li>Fast simulations</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Writing <code>for i in range(len(a))</code> over array elements. Look for a ufunc (a fast element-wise function), a mask or a reduction instead.</li>
            <li>Believing <code>np.vectorize</code> makes code fast.</li>
            <li>Growing an array with <code>np.append</code> in a loop. Build a list, then convert it once.</li>
            <li>Trying to speed up code before you measure it. Time your code with <code>time.perf_counter()</code> (or <code>%timeit</code> in Jupyter) first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <ul class="lc-list">
            <li>In the starter, add a third slab to <code>bill_vectorised</code> (above 300 units: ₹10 per extra unit) using <code>np.select</code>.</li>
            <li>Increase the array size to 1,000,000 and compare the timings again.</li>
            <li>Calculate the layer output for a batch of 5 inputs at once: <code>np.maximum(0, X @ W + b)</code>.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> You can use this vectorised way of thinking in other tools too. pandas columns, PyTorch tensors and JAX arrays all work best with the same "whole array at once" style you practise here.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import time
        import numpy as np

        rng = np.random.default_rng(1)
        units = rng.integers(50, 400, size=200_000)   # monthly electricity units

        def bill_loop(u):
            out = []
            for v in u:
                out.append(v * 5.0 if v <= 100 else 500 + (v - 100) * 7.5)
            return np.array(out)

        def bill_vectorised(u):
            return np.where(u <= 100, u * 5.0, 500 + (u - 100) * 7.5)

        t0 = time.perf_counter()
        slow = bill_loop(units)
        t1 = time.perf_counter()
        fast = bill_vectorised(units)
        t2 = time.perf_counter()

        print("=== Same answer? ===")
        print("first 5 bills:", fast[:5])
        print("results equal:", np.allclose(slow, fast))
        print("speed-up: about", round((t1 - t0) / max(t2 - t1, 1e-9)), "x  (varies per run and machine)")

        print("\n=== np.vectorize is only a convenience ===")
        label = np.vectorize(lambda v: "high" if v > 300 else "normal")
        print(label(units[:5]))
        print(np.where(units[:5] > 300, "high", "normal"), "<- fast version")

        print("\n=== Memory: choose the dtype ===")
        print("float64 bytes:", np.zeros(1_000_000).nbytes)
        print("float32 bytes:", np.zeros(1_000_000, dtype=np.float32).nbytes)

        print("\n=== A neural-network layer with no loops ===")
        X = rng.standard_normal((4, 3))       # 4 samples, 3 features
        W = rng.standard_normal((3, 2))       # 3 inputs -> 2 neurons
        b = np.array([0.1, -0.2])
        hidden = np.maximum(0, X @ W + b)     # ReLU(XW + b)
        print("output shape:", hidden.shape)
        print(hidden.round(3))
        print("einsum gives the same:", np.allclose(np.einsum("ij,jk->ik", X, W), X @ W))
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Capstone Project: Linear Regression from Scratch</h1>
        </div>
        <p class="lc-lead">Now you will use everything together. You will build a complete machine-learning pipeline (a chain of steps) using only NumPy. You will make data, split it and scale it. Then you train a linear regression in two different ways. Finally, you test it fairly on data it has never seen.</p>
        <div class="lc-card">
          <h3>The Problem</h3>
          <p>Predict a flat's price (in lakh rupees) from its <strong>area</strong> (in hundreds of sq ft) and its <strong>age</strong> (years). We make data where the true rule is <code>price = 4 × area − 0.5 × age + 20 + noise</code>. Noise means small random errors. Then we can check if our model finds this rule.</p>
        </div>
        <div class="lc-card">
          <h3>The Pipeline</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What we do</th><th>Skills from lessons</th></tr></thead>
            <tbody>
              <tr><td>1. Data</td><td><code>rng.uniform</code>, <code>rng.integers</code>, <code>rng.normal</code>; <code>np.column_stack</code> into X</td><td>Random, Stacking</td></tr>
              <tr><td>2. Split</td><td><code>idx = rng.permutation(n)</code>; first 80% train, rest test</td><td>Random, Fancy indexing</td></tr>
              <tr><td>3. Scale</td><td>z-score with the <strong>training</strong> mean and std only</td><td>Aggregations, Broadcasting</td></tr>
              <tr><td>4a. Fit</td><td>closed form (direct formula) with <code>np.linalg.lstsq</code></td><td>Linear algebra</td></tr>
              <tr><td>4b. Fit</td><td>gradient descent (small steps that reduce the error): <code>w -= lr * grad</code></td><td>Vectorisation, <code>@</code></td></tr>
              <tr><td>5. Evaluate</td><td>MSE and R² on the test set, compared with a baseline</td><td>Statistics</td></tr>
              <tr><td>6. Use</td><td>predict a new flat; change the weights back to real units</td><td>Broadcasting</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Key Ideas</h3>
          <ul class="lc-list">
            <li><strong>Bias column:</strong> add a column of ones to X. Then <code>X @ w</code> can include an intercept.</li>
            <li><strong>Gradient of MSE:</strong> <code>grad = 2/n · Xᵀ(Xw − y)</code>. The gradient shows which way to change the weights. One matrix expression calculates it for every sample at once.</li>
            <li><strong>No data leakage:</strong> the test set must not affect training. This includes the mean and std used for scaling.</li>
            <li><strong>Baseline:</strong> always compare with a very simple model ("predict the mean"). A good model must beat it by a lot.</li>
            <li><strong>R²:</strong> <code>1 − SS_res / SS_tot</code>. 1.0 is perfect. 0 means no better than the mean.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: The Core Training Loop</h3>
          <div class="lc-code">A_tr = np.column_stack([Z_tr, np.ones(len(Z_tr))])   # (160, 3)<br>w = np.zeros(3)<br>for step in range(500):<br>    grad = 2 / len(y_tr) * A_tr.T @ (A_tr @ w - y_tr)   # (3,)<br>    w -= 0.1 * grad</div>
          <p>Output of the full starter:</p>
          <div class="lc-code">X shape: (200, 2) | y shape: (200,)<br>lstsq weights: [22.623 -4.414 71.27 ]<br>GD weights   : [22.623 -4.414 71.27 ]<br>same answer?  True<br>test MSE: 22.3 | test R^2: 0.949<br>baseline MSE (predict the mean): 464.96<br>predicted price: Rs 65.6 lakh<br>effect per 100 sq ft: 4.02 | per year of age: -0.48</div>
          <p>Both methods find the same weights. In real units, the model learned ≈ 4.02 per 100 sq ft and ≈ −0.48 per year. This is very close to the true 4 and −0.5. R² is 0.949 on unseen data. That is far better than the baseline.</p>
        </div>
        <div class="lc-card">
          <h3>Course Recap</h3>
          <table class="lc-table">
            <thead><tr><th>Lessons</th><th>Topic</th><th>Key tools</th></tr></thead>
            <tbody>
              <tr><td>1–3</td><td>Arrays, creation, dtypes</td><td><code>np.array</code>, <code>zeros</code>, <code>arange</code>, <code>linspace</code>, <code>shape</code>, <code>astype</code></td></tr>
              <tr><td>4–5</td><td>Indexing, views vs copies</td><td><code>m[r, c]</code>, slices, <code>.copy()</code>, <code>np.shares_memory</code></td></tr>
              <tr><td>6–7</td><td>Maths and aggregations</td><td>ufuncs, <code>sum/mean/max(axis=...)</code>, <code>keepdims</code></td></tr>
              <tr><td>8–11</td><td>Shaping and selecting</td><td><code>reshape</code>, masks, <code>np.where</code>, <code>np.select</code>, fancy indexing, stacking, splitting</td></tr>
              <tr><td>12</td><td>Broadcasting</td><td>shape rules (line up on the right), <code>np.newaxis</code></td></tr>
              <tr><td>13</td><td>Sorting and sets</td><td><code>argsort</code>, <code>partition</code>, <code>searchsorted</code>, <code>unique</code>, <code>isin</code></td></tr>
              <tr><td>14–15</td><td>Random and statistics</td><td><code>default_rng</code>, <code>normal</code>, <code>choice</code>, <code>std(ddof)</code>, <code>percentile</code>, <code>corrcoef</code></td></tr>
              <tr><td>16–17</td><td>Linear algebra, nan and precision</td><td><code>@</code>, <code>solve</code>, <code>lstsq</code>, <code>isnan</code>, <code>nanmean</code>, <code>isclose</code></td></tr>
              <tr><td>18–19</td><td>Files and performance</td><td><code>save/savez/load</code>, <code>savetxt</code>, vectorisation, dtypes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Quick Check</h3>
          <p>What does this print? Predict first, then run it in the editor.</p>
          <div class="lc-code">y = np.array([3.0, 5.0, 7.0])<br>pred = np.array([2.5, 5.0, 8.0])<br>print(np.mean((y - pred) ** 2))</div>
          <p><strong>Answer:</strong></p>
          <div class="lc-code">0.4166666666666667</div>
          <p>MSE = (0.25 + 0 + 1) / 3.</p>
        </div>
        <div class="lc-card">
          <h3>Where You'll Use This</h3>
          <ul class="lc-list">
            <li>Testing any regression model</li>
            <li>Loss curves (how the error changes) during training</li>
            <li>Comparing with a baseline</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes in ML Pipelines</h3>
          <ul class="lc-list">
            <li>Scaling with the mean/std of <em>all</em> data before splitting. Then the test set leaks into training.</li>
            <li>Shuffling X and y with different permutations (orders). Then rows no longer match their labels.</li>
            <li>A learning rate (step size) that is too large. The loss grows instead of getting smaller. Try 0.1, 0.01, 0.001.</li>
            <li>Shape bugs, such as (n,) − (n, 1) making an (n, n) array inside the loss.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ul class="lc-list">
            <li>Add a third feature, <code>floor</code> (0–20), to the rule that makes the data and to the model.</li>
            <li>Save the training MSE every 50 steps and print how it goes down.</li>
            <li>Change the learning rate to 1.5 and see gradient descent fail (the numbers grow huge). Then find the largest rate that still works.</li>
            <li>Compare with scikit-learn's <code>LinearRegression</code>. The weights should match.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next steps:</strong> you now know the array tools that pandas (tables), scikit-learn (classic ML) and PyTorch (deep learning) are built on. Continue with the Pandas course to work with real tables that have named rows and columns.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        rng = np.random.default_rng(42)

        # 1. Made-up data: flat price (lakh) from area (100 sq ft) and age (years)
        n = 200
        area = rng.uniform(5, 25, size=n)
        age = rng.integers(0, 30, size=n)
        price = 4.0 * area - 0.5 * age + 20 + rng.normal(0, 5, size=n)
        X = np.column_stack([area, age]).astype(np.float64)
        y = price
        print("X shape:", X.shape, "| y shape:", y.shape)

        # 2. Train/test split with a permutation
        idx = rng.permutation(n)
        train, test = idx[:160], idx[160:]
        X_tr, X_te, y_tr, y_te = X[train], X[test], y[train], y[test]

        # 3. Scale using only the TRAIN mean and std (so no test data leaks in)
        mu, sigma = X_tr.mean(axis=0), X_tr.std(axis=0)
        Z_tr, Z_te = (X_tr - mu) / sigma, (X_te - mu) / sigma

        # 4a. Closed form with least squares (add a column of ones for the bias)
        A_tr = np.column_stack([Z_tr, np.ones(len(Z_tr))])
        w_ls, *_ = np.linalg.lstsq(A_tr, y_tr, rcond=None)

        # 4b. Gradient descent on mean squared error
        w = np.zeros(3)
        for step in range(500):
            grad = 2 / len(y_tr) * A_tr.T @ (A_tr @ w - y_tr)
            w -= 0.1 * grad
        print("lstsq weights:", w_ls.round(3))
        print("GD weights   :", w.round(3))
        print("same answer? ", np.allclose(w, w_ls, atol=1e-3))

        # 5. Evaluate on the test set
        def mse(y_true, y_pred):
            return np.mean((y_true - y_pred) ** 2)

        A_te = np.column_stack([Z_te, np.ones(len(Z_te))])
        pred = A_te @ w
        r2 = 1 - np.sum((y_te - pred) ** 2) / np.sum((y_te - y_te.mean()) ** 2)
        print("test MSE:", round(mse(y_te, pred), 2), "| test R^2:", round(r2, 3))
        print("baseline MSE (predict the mean):", round(mse(y_te, np.full_like(y_te, y_tr.mean())), 2))

        # 6. Predict a new flat: 1200 sq ft, 5 years old
        new = (np.array([12.0, 5.0]) - mu) / sigma
        print("predicted price: Rs", round(float(np.append(new, 1) @ w), 1), "lakh")
        print("effect per 100 sq ft:", round(w[0] / sigma[0], 2), "| per year of age:", round(w[1] / sigma[1], 2))
      PYTHON
    }
  }
end

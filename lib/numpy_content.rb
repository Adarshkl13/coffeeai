module NumpyContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Introduction to NumPy</h1>
        </div>
        <p class="lc-lead">NumPy (Numerical Python) is the foundation of scientific computing in Python. It provides the <strong>ndarray</strong> — a fast, memory-efficient multi-dimensional array — and hundreds of mathematical functions that operate on it.</p>
        <div class="lc-card">
          <h3>Why NumPy?</h3>
          <ul class="lc-list">
            <li>100× faster than Python lists for numerical operations</li>
            <li>Vectorised operations — no loops needed</li>
            <li>Foundation for Pandas, Matplotlib, scikit-learn, TensorFlow</li>
            <li>Supports N-dimensional arrays (1D, 2D, 3D, ...)</li>
            <li>Built-in linear algebra, Fourier transforms, random number generation</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Importing NumPy</h3>
          <div class="lc-code">import numpy as np<br><br>a = np.array([1, 2, 3, 4, 5])<br>print(a)           # [1 2 3 4 5]<br>print(type(a))     # &lt;class 'numpy.ndarray'&gt;</div>
        </div>
        <div class="lc-card">
          <h3>NumPy vs Python Lists</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Python List</th><th>NumPy Array</th></tr></thead>
            <tbody>
              <tr><td>Speed</td><td>Slow (interpreted loop)</td><td>Fast (C under the hood)</td></tr>
              <tr><td>Types</td><td>Mixed types allowed</td><td>Homogeneous (same dtype)</td></tr>
              <tr><td>Memory</td><td>More overhead</td><td>Compact, contiguous</td></tr>
              <tr><td>Math ops</td><td>Manual loop needed</td><td>Vectorised, element-wise</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> By convention import NumPy as <code>np</code> — every data scientist does this. All NumPy code you'll ever read uses this alias.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Create a 1D array from a list
        a = np.array([10, 20, 30, 40, 50])
        print("Array:", a)
        print("Type:", type(a))
        print("dtype:", a.dtype)

        # Element-wise math — no loops needed!
        print("a * 2:", a * 2)
        print("a + 100:", a + 100)
        print("a ** 2:", a ** 2)

        # vs Python list (would need a loop)
        python_list = [10, 20, 30, 40, 50]
        print("\nPython list:", python_list)
        # python_list * 2 gives [10,20,...,10,20,...] — NOT element-wise!
      PYTHON
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Creating Arrays</h1>
        </div>
        <p class="lc-lead">NumPy provides many functions to create arrays without manually listing every value — essential for working with large datasets.</p>
        <div class="lc-card">
          <h3>From Data</h3>
          <div class="lc-code">np.array([1, 2, 3])            # 1D from list<br>np.array([[1,2],[3,4]])        # 2D from nested list<br>np.array([1, 2, 3], dtype=float) # specify dtype</div>
        </div>
        <div class="lc-card">
          <h3>Initialisation Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>np.zeros((3, 4))</td><td>3×4 array of 0.0</td></tr>
              <tr><td>np.ones((2, 3))</td><td>2×3 array of 1.0</td></tr>
              <tr><td>np.full((2, 2), 7)</td><td>2×2 filled with 7</td></tr>
              <tr><td>np.eye(3)</td><td>3×3 identity matrix</td></tr>
              <tr><td>np.empty((3,))</td><td>Uninitialised (fast)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Range-Based</h3>
          <div class="lc-code">np.arange(0, 10, 2)      # [0 2 4 6 8] — like range()<br>np.arange(5)              # [0 1 2 3 4]<br>np.linspace(0, 1, 5)     # [0. 0.25 0.5 0.75 1.] — evenly spaced<br>np.linspace(0, 100, 6)   # 6 points from 0 to 100</div>
        </div>
        <div class="lc-card">
          <h3>Random Arrays</h3>
          <div class="lc-code">np.random.rand(3)         # 3 uniform values in [0,1)<br>np.random.rand(2, 3)      # 2×3 uniform random<br>np.random.randn(4)        # 4 standard normal values<br>np.random.randint(1,10,5) # 5 integers from 1 to 9<br>np.random.seed(42)        # Reproducible results</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>np.linspace</code> when you want <em>n</em> evenly spaced points between two values (inclusive). Use <code>np.arange</code> when you know the step size.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        print("=== zeros and ones ===")
        print(np.zeros((2, 3)))
        print(np.ones((3, 2)))

        print("\n=== arange and linspace ===")
        print(np.arange(0, 20, 4))
        print(np.linspace(0, 1, 6))

        print("\n=== identity matrix ===")
        print(np.eye(3))

        print("\n=== random ===")
        np.random.seed(42)
        print(np.random.randint(1, 100, (2, 4)))
        print(np.random.rand(3))
      PYTHON
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Array Attributes</h1>
        </div>
        <p class="lc-lead">Every NumPy array has metadata describing its structure. Understanding these attributes is the first step when exploring any array.</p>
        <div class="lc-card">
          <h3>Key Attributes</h3>
          <table class="lc-table">
            <thead><tr><th>Attribute</th><th>Description</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>a.shape</td><td>Dimensions as tuple</td><td>(3, 4) for 3 rows, 4 cols</td></tr>
              <tr><td>a.ndim</td><td>Number of dimensions</td><td>2 for 2D array</td></tr>
              <tr><td>a.size</td><td>Total elements</td><td>12 for shape (3,4)</td></tr>
              <tr><td>a.dtype</td><td>Data type of elements</td><td>float64, int32, bool</td></tr>
              <tr><td>a.itemsize</td><td>Bytes per element</td><td>8 for float64</td></tr>
              <tr><td>a.nbytes</td><td>Total bytes</td><td>itemsize × size</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common dtypes</h3>
          <table class="lc-table">
            <thead><tr><th>dtype</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>int32 / int64</td><td>Integer (32 or 64 bit)</td></tr>
              <tr><td>float32 / float64</td><td>Floating point (32 or 64 bit)</td></tr>
              <tr><td>bool</td><td>True / False values</td></tr>
              <tr><td>complex128</td><td>Complex numbers</td></tr>
              <tr><td>str</td><td>Unicode strings</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Type Conversion</h3>
          <div class="lc-code">a.astype(float)   # Convert to float64<br>a.astype(int)     # Convert to int32<br>a.astype(bool)    # 0 → False, non-zero → True</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>float32</code> instead of <code>float64</code> in ML when memory matters — half the size with minimal precision loss.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        a = np.array([[1, 2, 3, 4],
                      [5, 6, 7, 8],
                      [9, 10, 11, 12]])

        print("Array:")
        print(a)
        print()
        print("shape:    ", a.shape)
        print("ndim:     ", a.ndim)
        print("size:     ", a.size)
        print("dtype:    ", a.dtype)

        print("\n=== Type conversion ===")
        b = np.array([1.7, 2.3, 3.9, 4.1])
        print("float64:", b)
        print("as int: ", b.astype(int))
        print("as bool:", np.array([0, 1, 2, 0]).astype(bool))
      PYTHON
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Indexing and Slicing</h1>
        </div>
        <p class="lc-lead">NumPy arrays support Python-style indexing and slicing — plus powerful 2D indexing using row and column specifiers.</p>
        <div class="lc-card">
          <h3>1D Indexing</h3>
          <div class="lc-code">a = np.array([10, 20, 30, 40, 50])<br>a[0]      # 10 — first element<br>a[-1]     # 50 — last element<br>a[1:4]    # [20 30 40] — slice<br>a[::2]    # [10 30 50] — every 2nd<br>a[::-1]   # [50 40 30 20 10] — reversed</div>
        </div>
        <div class="lc-card">
          <h3>2D Indexing (rows, cols)</h3>
          <div class="lc-code">m = np.array([[1,2,3],[4,5,6],[7,8,9]])<br>m[0, 1]   # 2   — row 0, col 1<br>m[1]      # [4 5 6] — full row 1<br>m[:, 0]   # [1 4 7] — full column 0<br>m[0:2, 1:3]  # [[2 3],[5 6]] — submatrix<br>m[:, -1]  # [3 6 9] — last column</div>
        </div>
        <div class="lc-card">
          <h3>Modifying Elements</h3>
          <div class="lc-code">a[0] = 99          # Change one element<br>a[1:3] = [0, 0]   # Change a slice<br>m[0] = [10,11,12] # Replace whole row<br>m[:, 0] = 0       # Zero out first column</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> NumPy slices return <em>views</em> (not copies) — modifying a slice modifies the original. Use <code>a[1:3].copy()</code> to get an independent copy.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        m = np.array([[1, 2, 3, 4],
                      [5, 6, 7, 8],
                      [9, 10, 11, 12]])

        print("Full matrix:")
        print(m)

        print("\nRow 1:", m[1])
        print("Column 2:", m[:, 2])
        print("Element [2,3]:", m[2, 3])

        print("\nTop-left 2x2:")
        print(m[0:2, 0:2])

        print("\nBottom-right 2x2:")
        print(m[1:, 2:])

        print("\nLast column:", m[:, -1])
        print("Every other row:")
        print(m[::2])
      PYTHON
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Array Arithmetic and Broadcasting</h1>
        </div>
        <p class="lc-lead">NumPy operations are element-wise by default. Broadcasting allows arrays of different shapes to work together automatically.</p>
        <div class="lc-card">
          <h3>Element-wise Arithmetic</h3>
          <div class="lc-code">a = np.array([1, 2, 3, 4])<br>b = np.array([10, 20, 30, 40])<br><br>a + b   # [11 22 33 44]<br>a * b   # [10 40 90 160]<br>a ** 2  # [ 1  4  9 16]<br>b / a   # [10. 10. 10. 10.]<br>b % 3   # [ 1  2  0  1]</div>
        </div>
        <div class="lc-card">
          <h3>Scalar Broadcasting</h3>
          <div class="lc-code">a + 10     # [11 12 13 14] — adds 10 to every element<br>a * 2      # [ 2  4  6  8]<br>a > 2      # [False False  True  True]</div>
        </div>
        <div class="lc-card">
          <h3>Broadcasting Rules</h3>
          <p>NumPy compares shapes right-to-left. Dimensions are compatible if they are equal or one of them is 1:</p>
          <div class="lc-code">a.shape = (3, 1)   + b.shape = (1, 4)  → result (3, 4)<br>a.shape = (3, 4)   + b.shape = (4,)    → result (3, 4)<br>a.shape = (3, 4)   + b.shape = (3,)    → ERROR (not compatible)</div>
        </div>
        <div class="lc-card">
          <h3>Comparison Arrays</h3>
          <div class="lc-code">a > 2     # [False False True True] — boolean array<br>a == 3    # [False False True False]<br>np.sum(a > 2)   # 2 — count True values</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>np.sum(condition)</code> to count elements matching a condition, and <code>np.mean(condition)</code> to get the proportion.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        a = np.array([1, 2, 3, 4, 5])
        b = np.array([10, 20, 30, 40, 50])

        print("a:", a)
        print("b:", b)
        print("a + b:", a + b)
        print("b / a:", b / a)
        print("a ** 2:", a ** 2)

        print("\n=== Scalar broadcasting ===")
        print("a * 3:", a * 3)
        print("a + 100:", a + 100)
        print("a > 2:", a > 2)
        print("Count > 2:", np.sum(a > 2))

        print("\n=== 2D broadcasting ===")
        m = np.array([[1, 2, 3],
                      [4, 5, 6],
                      [7, 8, 9]])
        row = np.array([10, 20, 30])
        print("m + row:")
        print(m + row)
      PYTHON
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Mathematical Functions</h1>
        </div>
        <p class="lc-lead">NumPy provides universal functions (ufuncs) that operate element-wise on arrays — much faster than any Python loop.</p>
        <div class="lc-card">
          <h3>Reduction Functions</h3>
          <div class="lc-code">a = np.array([[1,2,3],[4,5,6]])<br>np.sum(a)          # 21 — sum of all elements<br>np.sum(a, axis=0)  # [5 7 9] — column sums<br>np.sum(a, axis=1)  # [ 6 15] — row sums<br>np.mean(a)         # 3.5<br>np.min(a)          # 1<br>np.max(a)          # 6<br>np.std(a)          # standard deviation<br>np.var(a)          # variance</div>
        </div>
        <div class="lc-card">
          <h3>Element-wise Math (ufuncs)</h3>
          <div class="lc-code">np.sqrt(a)         # Square root<br>np.abs(a)          # Absolute value<br>np.exp(a)          # e^x<br>np.log(a)          # Natural logarithm<br>np.log2(a)         # Log base 2<br>np.log10(a)        # Log base 10<br>np.round(a, 2)     # Round to 2 decimal places<br>np.floor(a)        # Round down<br>np.ceil(a)         # Round up</div>
        </div>
        <div class="lc-card">
          <h3>Trigonometry</h3>
          <div class="lc-code">np.sin(a)  np.cos(a)  np.tan(a)<br>np.pi      # 3.14159...<br>np.e       # 2.71828...</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The <code>axis</code> parameter controls the direction: <code>axis=0</code> collapses rows (operates down), <code>axis=1</code> collapses columns (operates across).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        m = np.array([[4, 9, 16],
                      [25, 36, 49]])

        print("Matrix:")
        print(m)

        print("\n=== Reductions ===")
        print("Total sum:", np.sum(m))
        print("Column sums (axis=0):", np.sum(m, axis=0))
        print("Row sums (axis=1):", np.sum(m, axis=1))
        print("Mean:", np.mean(m))
        print("Max:", np.max(m))
        print("Std:", np.std(m))

        print("\n=== Element-wise ===")
        print("sqrt(m):")
        print(np.sqrt(m))

        a = np.array([-3, -1, 0, 2, 5])
        print("\nabs:", np.abs(a))
        print("Rounded exp:", np.round(np.exp(np.array([0, 1, 2])), 3))
      PYTHON
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Reshaping Arrays</h1>
        </div>
        <p class="lc-lead">Reshaping changes an array's dimensions without changing its data. It's one of the most common operations in machine learning data preparation.</p>
        <div class="lc-card">
          <h3>reshape()</h3>
          <div class="lc-code">a = np.arange(12)             # [0 1 2 ... 11]<br>a.reshape(3, 4)               # 3 rows, 4 cols<br>a.reshape(2, 6)               # 2 rows, 6 cols<br>a.reshape(2, 2, 3)            # 3D: 2×2×3<br>a.reshape(-1, 3)              # -1 infers the first dimension</div>
        </div>
        <div class="lc-card">
          <h3>Flattening</h3>
          <div class="lc-code">m = np.array([[1,2,3],[4,5,6]])<br>m.flatten()   # [1 2 3 4 5 6] — returns a copy<br>m.ravel()     # [1 2 3 4 5 6] — returns a view (faster)</div>
        </div>
        <div class="lc-card">
          <h3>Adding Dimensions</h3>
          <div class="lc-code">a = np.array([1, 2, 3])       # shape (3,)<br>a[np.newaxis, :]              # shape (1, 3) — row vector<br>a[:, np.newaxis]              # shape (3, 1) — column vector<br>np.expand_dims(a, axis=0)     # Same as newaxis</div>
        </div>
        <div class="lc-card">
          <h3>Squeeze</h3>
          <div class="lc-code">b = np.array([[[1,2,3]]])     # shape (1, 1, 3)<br>np.squeeze(b)                 # shape (3,) — removes size-1 dims</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>reshape(-1, 1)</code> to turn a 1D array into a column vector — very common when feeding data into ML models.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        a = np.arange(1, 13)
        print("Original (1D):", a)
        print("Shape:", a.shape)

        print("\n=== reshape ===")
        m = a.reshape(3, 4)
        print("Reshaped (3x4):")
        print(m)

        m2 = a.reshape(2, 6)
        print("\nReshaped (2x6):")
        print(m2)

        print("\n=== flatten ===")
        print("Flattened:", m.flatten())

        print("\n=== -1 inference ===")
        print(a.reshape(-1, 3))

        print("\n=== Adding dimensions ===")
        v = np.array([1, 2, 3])
        print("Row vector:", v[np.newaxis, :])
        print("Col vector shape:", v[:, np.newaxis].shape)
      PYTHON
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Boolean Indexing and Fancy Indexing</h1>
        </div>
        <p class="lc-lead">Boolean indexing filters arrays using conditions. Fancy indexing selects elements using index arrays — both are more powerful than regular slicing.</p>
        <div class="lc-card">
          <h3>Boolean Indexing</h3>
          <div class="lc-code">a = np.array([3, 1, 4, 1, 5, 9, 2, 6])<br>a[a &gt; 4]            # [5 9 6] — elements greater than 4<br>a[a % 2 == 0]       # [4 2 6] — even numbers<br>a[(a &gt; 2) &amp; (a &lt; 7)] # [3 4 5 6] — between 2 and 7<br><br># Modify matching elements<br>a[a &lt; 3] = 0         # Set small values to 0</div>
        </div>
        <div class="lc-card">
          <h3>np.where()</h3>
          <div class="lc-code">np.where(a &gt; 4)           # Indices where condition is True<br>np.where(a &gt; 4, a, 0)    # Replace non-matching with 0<br>np.where(a &gt; 4, 'big', 'small')  # String labels</div>
        </div>
        <div class="lc-card">
          <h3>Fancy Indexing</h3>
          <div class="lc-code">a = np.array([10, 20, 30, 40, 50])<br>a[[0, 2, 4]]     # [10 30 50] — select by index list<br>a[[3, 1, 3]]     # [40 20 40] — can repeat indices<br><br># 2D fancy indexing<br>m[[0, 2], :]     # Select rows 0 and 2</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Boolean indexing is the NumPy equivalent of pandas filtering — use it to select, modify, or count elements matching a condition.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        scores = np.array([72, 95, 61, 88, 45, 79, 93, 55, 82, 67])

        print("Scores:", scores)
        print("Passing (>=70):", scores[scores >= 70])
        print("Failing (<70):", scores[scores < 70])
        print("Count passing:", np.sum(scores >= 70))
        print("Pass rate:", np.mean(scores >= 70))

        print("\n=== Grade labels with np.where ===")
        grades = np.where(scores >= 90, 'A',
                 np.where(scores >= 80, 'B',
                 np.where(scores >= 70, 'C', 'F')))
        print("Grades:", grades)

        print("\n=== Fancy indexing ===")
        top_3_idx = np.argsort(scores)[-3:]
        print("Top 3 indices:", top_3_idx)
        print("Top 3 scores:", scores[top_3_idx])
      PYTHON
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Stacking and Splitting Arrays</h1>
        </div>
        <p class="lc-lead">Combining arrays (stacking) and dividing them (splitting) are fundamental operations when assembling datasets or splitting data for machine learning.</p>
        <div class="lc-card">
          <h3>Stacking (Combining)</h3>
          <div class="lc-code">a = np.array([1, 2, 3])<br>b = np.array([4, 5, 6])<br><br>np.concatenate([a, b])        # [1 2 3 4 5 6] — 1D join<br>np.vstack([a, b])             # [[1 2 3],[4 5 6]] — vertical<br>np.hstack([a, b])             # [1 2 3 4 5 6] — horizontal<br>np.stack([a, b])              # [[1 2 3],[4 5 6]] — new axis<br>np.column_stack([a, b])       # [[1 4],[2 5],[3 6]] — as columns</div>
        </div>
        <div class="lc-card">
          <h3>Splitting</h3>
          <div class="lc-code">a = np.arange(12)<br>np.split(a, 3)        # 3 equal parts: [0-3], [4-7], [8-11]<br>np.split(a, [3, 7])   # At positions 3 and 7<br>np.hsplit(m, 2)       # Split matrix horizontally<br>np.vsplit(m, 2)       # Split matrix vertically</div>
        </div>
        <div class="lc-card">
          <h3>np.concatenate with axis</h3>
          <div class="lc-code">np.concatenate([A, B], axis=0)  # Stack rows (more rows)<br>np.concatenate([A, B], axis=1)  # Stack cols (more columns)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>np.vstack</code> and <code>np.hstack</code> are convenience wrappers around <code>np.concatenate</code> — use whichever is clearer in context.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        a = np.array([[1, 2, 3],
                      [4, 5, 6]])
        b = np.array([[7, 8, 9],
                      [10, 11, 12]])

        print("a:")
        print(a)
        print("b:")
        print(b)

        print("\n=== vstack (add rows) ===")
        print(np.vstack([a, b]))

        print("\n=== hstack (add columns) ===")
        print(np.hstack([a, b]))

        print("\n=== split into 3 ===")
        row = np.arange(15)
        parts = np.split(row, 3)
        for i, p in enumerate(parts):
            print(f"  Part {i}:", p)

        print("\n=== column_stack ===")
        x = np.array([1, 2, 3])
        y = np.array([10, 20, 30])
        print(np.column_stack([x, y]))
      PYTHON
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Sorting and Searching</h1>
        </div>
        <p class="lc-lead">NumPy provides efficient sorting and searching functions that work on arrays of any dimension.</p>
        <div class="lc-card">
          <h3>Sorting</h3>
          <div class="lc-code">a = np.array([3, 1, 4, 1, 5, 9, 2, 6])<br>np.sort(a)                 # Sorted copy: [1 1 2 3 4 5 6 9]<br>a.sort()                   # In-place sort<br>np.sort(m, axis=0)         # Sort each column<br>np.sort(m, axis=1)         # Sort each row<br>np.sort(a)[::-1]           # Descending</div>
        </div>
        <div class="lc-card">
          <h3>argsort — Indices That Would Sort</h3>
          <div class="lc-code">np.argsort(a)              # Indices that sort a<br>a[np.argsort(a)]           # Same as np.sort(a)<br>np.argsort(a)[-3:]         # Indices of 3 largest</div>
        </div>
        <div class="lc-card">
          <h3>Searching</h3>
          <div class="lc-code">np.argmin(a)               # Index of minimum value<br>np.argmax(a)               # Index of maximum value<br>np.argmin(m, axis=0)       # Index of min in each column<br>np.nonzero(a)              # Indices of non-zero elements<br>np.where(a &gt; 4)           # Indices where condition is True<br>np.searchsorted(sorted_a, 5) # Where to insert 5 to keep sorted</div>
        </div>
        <div class="lc-card">
          <h3>Unique Values</h3>
          <div class="lc-code">np.unique(a)               # Unique sorted values<br>np.unique(a, return_counts=True)  # Also return counts</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>np.argsort</code> is extremely useful for ranking — sort the indices to find which elements are largest/smallest.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        scores = np.array([85, 92, 78, 95, 61, 88, 73, 96, 54, 82])
        names  = np.array(['Alice', 'Bob', 'Carol', 'Dave', 'Eve',
                           'Frank', 'Grace', 'Hank', 'Iris', 'Jack'])

        print("=== Sorted scores ===")
        sorted_idx = np.argsort(scores)[::-1]
        print("Rank  Name       Score")
        for rank, idx in enumerate(sorted_idx, 1):
            print(f"  {rank}   {names[idx]:<10} {scores[idx]}")

        print("\n=== Stats ===")
        print("Best score:", np.max(scores), "by", names[np.argmax(scores)])
        print("Worst score:", np.min(scores), "by", names[np.argmin(scores)])

        print("\n=== Unique ===")
        vals = np.array([1, 2, 2, 3, 3, 3, 4])
        unique, counts = np.unique(vals, return_counts=True)
        print("Values:", unique)
        print("Counts:", counts)
      PYTHON
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Linear Algebra</h1>
        </div>
        <p class="lc-lead">NumPy's <code>np.linalg</code> module and matrix operations are the backbone of machine learning — from neural network weights to principal component analysis.</p>
        <div class="lc-card">
          <h3>Matrix Operations</h3>
          <div class="lc-code">A = np.array([[1,2],[3,4]])<br>B = np.array([[5,6],[7,8]])<br><br>A * B            # Element-wise multiply [[5,12],[21,32]]<br>A @ B            # Matrix multiply [[19,22],[43,50]]<br>np.dot(A, B)     # Same as @<br>A.T              # Transpose<br>np.matmul(A, B)  # Same as @</div>
        </div>
        <div class="lc-card">
          <h3>np.linalg Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>np.linalg.det(A)</td><td>Determinant</td></tr>
              <tr><td>np.linalg.inv(A)</td><td>Matrix inverse</td></tr>
              <tr><td>np.linalg.norm(a)</td><td>Vector/matrix norm</td></tr>
              <tr><td>np.linalg.eig(A)</td><td>Eigenvalues and eigenvectors</td></tr>
              <tr><td>np.linalg.svd(A)</td><td>Singular value decomposition</td></tr>
              <tr><td>np.linalg.solve(A, b)</td><td>Solve linear system Ax=b</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Dot Product (1D)</h3>
          <div class="lc-code">a = np.array([1, 2, 3])<br>b = np.array([4, 5, 6])<br>np.dot(a, b)   # 32 — scalar dot product (1*4 + 2*5 + 3*6)</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>@</code> operator for matrix multiplication — it's cleaner than <code>np.dot()</code> and the Python standard since 3.5.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        A = np.array([[1, 2, 3],
                      [4, 5, 6]])
        B = np.array([[7, 8],
                      [9, 10],
                      [11, 12]])

        print("A (2x3):")
        print(A)
        print("\nB (3x2):")
        print(B)

        print("\nA @ B (matrix multiply → 2x2):")
        print(A @ B)

        print("\nA transposed (3x2):")
        print(A.T)

        print("\n=== Dot product (1D) ===")
        a = np.array([1, 2, 3])
        b = np.array([4, 5, 6])
        print("dot([1,2,3], [4,5,6]) =", np.dot(a, b))

        print("\n=== Element-wise vs matrix multiply ===")
        X = np.array([[1, 2], [3, 4]])
        print("X * X (element-wise):")
        print(X * X)
        print("X @ X (matrix multiply):")
        print(X @ X)
      PYTHON
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Random Number Generation</h1>
        </div>
        <p class="lc-lead">NumPy's random module is essential for machine learning — random weight initialisation, data shuffling, train/test splitting, and simulations all depend on it.</p>
        <div class="lc-card">
          <h3>Key Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td>np.random.seed(42)</td><td>Set seed for reproducibility</td></tr>
              <tr><td>np.random.rand(m, n)</td><td>Uniform [0, 1) floats</td></tr>
              <tr><td>np.random.randn(m, n)</td><td>Standard normal (μ=0, σ=1)</td></tr>
              <tr><td>np.random.randint(lo, hi, n)</td><td>Integer from [lo, hi)</td></tr>
              <tr><td>np.random.uniform(lo, hi, n)</td><td>Uniform floats in [lo, hi]</td></tr>
              <tr><td>np.random.normal(μ, σ, n)</td><td>Normal distribution</td></tr>
              <tr><td>np.random.choice(arr, n)</td><td>Sample from array</td></tr>
              <tr><td>np.random.shuffle(arr)</td><td>Shuffle in-place</td></tr>
              <tr><td>np.random.permutation(n)</td><td>Random permutation of 0..n-1</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Modern API (NumPy 1.17+)</h3>
          <div class="lc-code">rng = np.random.default_rng(seed=42)<br>rng.random((3, 3))     # Uniform random<br>rng.standard_normal(5) # Normal distribution<br>rng.integers(1, 100, 10) # Random integers</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Always set <code>np.random.seed()</code> at the start of experiments so results are reproducible — essential for scientific work and debugging.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        np.random.seed(42)

        print("=== Uniform random [0,1) ===")
        print(np.random.rand(2, 4))

        print("\n=== Standard normal (mean=0, std=1) ===")
        data = np.random.randn(6)
        print(data)
        print("Mean:", np.round(np.mean(data), 3))
        print("Std: ", np.round(np.std(data), 3))

        print("\n=== Random integers ===")
        dice_rolls = np.random.randint(1, 7, 10)
        print("Dice rolls:", dice_rolls)

        print("\n=== Normal distribution (salary sim) ===")
        salaries = np.random.normal(75000, 15000, 8).astype(int)
        print("Simulated salaries:", salaries)
        print("Mean:", salaries.mean())

        print("\n=== Random choice and shuffle ===")
        teams = np.array(['Alice', 'Bob', 'Carol', 'Dave', 'Eve'])
        print("Random sample of 3:", np.random.choice(teams, 3, replace=False))
      PYTHON
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Statistical Functions</h1>
        </div>
        <p class="lc-lead">NumPy provides the statistical building blocks used in data science — from basic descriptive stats to correlation matrices.</p>
        <div class="lc-card">
          <h3>Descriptive Statistics</h3>
          <div class="lc-code">np.mean(a)         # Arithmetic mean<br>np.median(a)       # Middle value<br>np.std(a)          # Standard deviation<br>np.var(a)          # Variance<br>np.percentile(a, 75)      # 75th percentile (Q3)<br>np.percentile(a, [25,75]) # Q1 and Q3<br>np.cumsum(a)       # Cumulative sum</div>
        </div>
        <div class="lc-card">
          <h3>Correlation and Covariance</h3>
          <div class="lc-code">np.corrcoef(x, y)   # Correlation matrix (2×2)<br>np.cov(x, y)        # Covariance matrix<br><br># corrcoef returns:<br># [[1.0,  r],<br>#  [r,   1.0]]<br># where r is the Pearson correlation coefficient</div>
        </div>
        <div class="lc-card">
          <h3>Histogram Binning</h3>
          <div class="lc-code">counts, edges = np.histogram(data, bins=5)<br># counts: how many values in each bin<br># edges:  the bin boundaries</div>
        </div>
        <div class="lc-card">
          <h3>Weighted Average</h3>
          <div class="lc-code">np.average(scores, weights=[0.3, 0.3, 0.4])  # Weighted mean</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>np.percentile(a, 50)</code> equals <code>np.median(a)</code>. Use percentiles to understand data distribution without assuming normality.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        np.random.seed(0)

        # Simulate exam scores for two groups
        group_a = np.array([72, 85, 91, 68, 79, 88, 95, 62, 77, 83])
        group_b = np.array([65, 70, 74, 80, 82, 69, 78, 76, 71, 83])

        for name, g in [('Group A', group_a), ('Group B', group_b)]:
            print(f"=== {name} ===")
            print(f"  Mean:   {np.mean(g):.1f}")
            print(f"  Median: {np.median(g):.1f}")
            print(f"  Std:    {np.std(g):.1f}")
            q1, q3 = np.percentile(g, [25, 75])
            print(f"  IQR:    {q1:.0f} – {q3:.0f}")
            print(f"  Min:    {np.min(g)}  Max: {np.max(g)}")

        print("\n=== Correlation between groups ===")
        corr = np.corrcoef(group_a, group_b)
        print("Correlation:", round(corr[0, 1], 4))
      PYTHON
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Working with 2D Arrays (Matrices)</h1>
        </div>
        <p class="lc-lead">2D arrays are the workhorse of machine learning — feature matrices, weight matrices, image data, and confusion matrices all live in 2D NumPy arrays.</p>
        <div class="lc-card">
          <h3>Creating Matrices</h3>
          <div class="lc-code">np.zeros((m, n))    # m×n zeros<br>np.ones((m, n))     # m×n ones<br>np.eye(n)           # n×n identity<br>np.diag([1,2,3])    # Diagonal matrix<br>np.random.rand(m,n) # m×n random</div>
        </div>
        <div class="lc-card">
          <h3>Row and Column Operations</h3>
          <div class="lc-code">m.sum(axis=0)       # Sum each column<br>m.mean(axis=1)      # Mean of each row<br>m.max(axis=0)       # Max of each column<br>m.argmax(axis=1)    # Index of max in each row<br>m.cumsum(axis=1)    # Running total across each row</div>
        </div>
        <div class="lc-card">
          <h3>Normalisation by Row/Column</h3>
          <div class="lc-code"># Normalise each row (subtract row mean, divide by row std)<br>m_norm = (m - m.mean(axis=1, keepdims=True)) / m.std(axis=1, keepdims=True)<br><br># Scale each column to [0, 1]<br>m_scaled = (m - m.min(axis=0)) / (m.max(axis=0) - m.min(axis=0))</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>keepdims=True</code> when dividing a matrix by its row/column aggregates — it preserves the dimension for broadcasting to work correctly.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        np.random.seed(7)

        # Feature matrix: 5 samples, 3 features
        X = np.array([[2, 8, 1],
                      [5, 3, 9],
                      [1, 7, 4],
                      [8, 2, 6],
                      [4, 6, 3]])

        print("Feature matrix X:")
        print(X)

        print("\n=== Column stats ===")
        print("Col means:", X.mean(axis=0))
        print("Col stds: ", X.std(axis=0).round(2))
        print("Col max:  ", X.max(axis=0))

        print("\n=== Row operations ===")
        print("Row sums:  ", X.sum(axis=1))
        print("Row argmax:", X.argmax(axis=1))

        print("\n=== Z-score normalisation (per column) ===")
        X_norm = (X - X.mean(axis=0)) / X.std(axis=0)
        print(X_norm.round(3))
        print("Verify col means ~0:", X_norm.mean(axis=0).round(10))
      PYTHON
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Broadcasting in Depth</h1>
        </div>
        <p class="lc-lead">Broadcasting is NumPy's mechanism for performing operations between arrays of different shapes — without copying data. It's what makes vectorised code so concise.</p>
        <div class="lc-card">
          <h3>Broadcasting Rules</h3>
          <ol class="lc-list">
            <li>Compare shapes from the <strong>trailing dimension</strong> (right-to-left)</li>
            <li>Dimensions are compatible if they are <strong>equal</strong> or one is <strong>1</strong></li>
            <li>Missing dimensions are treated as size <strong>1</strong></li>
          </ol>
        </div>
        <div class="lc-card">
          <h3>Common Broadcasting Patterns</h3>
          <div class="lc-code">m.shape = (3, 4)     # 3 rows, 4 cols<br>v.shape = (4,)       # 1D — broadcast across rows<br>(m + v).shape = (3, 4)<br><br># Subtract column mean from each column<br>m - m.mean(axis=0)   # (3,4) - (4,)  → works<br><br># Subtract row mean from each row<br>m - m.mean(axis=1, keepdims=True)  # (3,4) - (3,1) → works</div>
        </div>
        <div class="lc-card">
          <h3>Outer Product via Broadcasting</h3>
          <div class="lc-code">a = np.array([1, 2, 3])    # shape (3,)<br>b = np.array([10, 20])     # shape (2,)<br>a[:, np.newaxis] * b       # shape (3, 2) — outer product<br># [[10,20],[20,40],[30,60]]</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When broadcasting fails, add <code>np.newaxis</code> to reshape the array: <code>a[:, np.newaxis]</code> converts shape (3,) to (3,1).
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Temperature data: 4 cities × 7 days
        temps = np.array([[28, 30, 27, 31, 29, 26, 28],
                          [22, 24, 23, 25, 21, 20, 22],
                          [15, 17, 14, 18, 16, 13, 15],
                          [35, 33, 36, 34, 37, 35, 36]])

        print("Shape:", temps.shape, "(4 cities, 7 days)")

        # Subtract each city's weekly mean (broadcasting axis=1)
        city_means = temps.mean(axis=1, keepdims=True)
        deviation = temps - city_means

        print("\nCity weekly means:", city_means.flatten())
        print("\nDeviations from city mean:")
        print(deviation.round(1))

        # Celsius to Fahrenheit: broadcasting scalar
        fahrenheit = temps * 9/5 + 32
        print("\nRow 0 in Fahrenheit:", fahrenheit[0])

        # Outer product example
        prices = np.array([10, 25, 50])
        quantities = np.array([1, 2, 5, 10])
        revenue = prices[:, np.newaxis] * quantities
        print("\nRevenue table (prices × quantities):")
        print(revenue)
      PYTHON
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Saving and Loading Arrays</h1>
        </div>
        <p class="lc-lead">NumPy provides efficient binary formats for saving and loading arrays — essential for storing pre-processed data and model weights.</p>
        <div class="lc-card">
          <h3>Binary Formats</h3>
          <div class="lc-code">np.save('data.npy', array)          # Save single array<br>loaded = np.load('data.npy')         # Load it back<br><br>np.savez('data.npz', X=X, y=y)      # Save multiple arrays<br>data = np.load('data.npz')<br>X = data['X'];  y = data['y']<br><br>np.savez_compressed('data.npz', X=X) # Compressed</div>
        </div>
        <div class="lc-card">
          <h3>Text Formats</h3>
          <div class="lc-code">np.savetxt('data.csv', arr, delimiter=',')  # Save as CSV<br>loaded = np.loadtxt('data.csv', delimiter=',')  # Load CSV<br><br># With header<br>np.savetxt('data.csv', arr, delimiter=',',<br>           header='col1,col2,col3')</div>
        </div>
        <div class="lc-card">
          <h3>Memory-mapped Arrays</h3>
          <div class="lc-code"># For huge arrays that don't fit in RAM<br>fp = np.memmap('huge.dat', dtype='float32', mode='w+', shape=(1000,1000))<br>fp[0,:] = np.random.rand(1000)  # Write one row at a time</div>
        </div>
        <div class="lc-card">
          <h3>Interoperability</h3>
          <div class="lc-code">df.to_numpy()           # Pandas DataFrame → NumPy array<br>np.array(df)            # Same<br>pd.DataFrame(arr)       # NumPy array → Pandas DataFrame<br>list(arr)               # NumPy array → Python list<br>arr.tolist()            # Same</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefer <code>.npy</code>/<code>.npz</code> binary format over CSV for large arrays — it's 10× faster to load and preserves exact dtype.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Create a dataset
        np.random.seed(0)
        X = np.random.randn(5, 3).round(3)
        y = np.array([0, 1, 0, 1, 1])

        print("Feature matrix X:")
        print(X)
        print("\nLabels y:", y)

        # Simulate save/load workflow
        print("\n=== Simulated save/load workflow ===")
        print("np.save('features.npy', X)  → saved 5×3 float64 array")
        print("np.save('labels.npy', y)    → saved (5,) int64 array")
        print("X_loaded = np.load('features.npy')  → restored identically")

        # Array ↔ list interoperability
        print("\n=== Interoperability ===")
        py_list = X[0].tolist()
        print("Row 0 as Python list:", py_list)
        back = np.array(py_list)
        print("Back to array:", back)
        print("Same values:", np.allclose(X[0], back))
      PYTHON
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">Vectorisation and Performance</h1>
        </div>
        <p class="lc-lead">The key to fast NumPy code is <strong>vectorisation</strong> — replacing Python loops with array operations that run in optimised C code.</p>
        <div class="lc-card">
          <h3>Replace Loops with Array Ops</h3>
          <div class="lc-code"># SLOW: Python loop<br>result = []<br>for x in data:<br>    result.append(x ** 2 + 2 * x + 1)<br><br># FAST: Vectorised (100-1000× faster)<br>result = data ** 2 + 2 * data + 1</div>
        </div>
        <div class="lc-card">
          <h3>np.vectorize() and np.frompyfunc()</h3>
          <div class="lc-code"># Apply a Python function element-wise<br>def classify(x):<br>    return 'high' if x &gt; 0.5 else 'low'<br><br>vclassify = np.vectorize(classify)<br>labels = vclassify(np.random.rand(5))  # ['high','low',...]<br><br># Note: np.vectorize is a loop internally — NOT fast<br># Use for functions that can't be vectorised naturally</div>
        </div>
        <div class="lc-card">
          <h3>Performance Tips</h3>
          <ul class="lc-list">
            <li>Use built-in NumPy functions over Python loops</li>
            <li>Prefer in-place ops: <code>a += 1</code> instead of <code>a = a + 1</code></li>
            <li>Use views instead of copies where possible</li>
            <li>Choose the right dtype (float32 vs float64)</li>
            <li>Use <code>np.einsum()</code> for complex tensor operations</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> The best optimisation is to never write a Python loop over array elements. If you find yourself writing <code>for i in range(len(arr))</code>, there's almost always a vectorised NumPy alternative.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        np.random.seed(42)

        data = np.array([0.1, 0.7, 0.3, 0.9, 0.5, 0.2, 0.8, 0.6, 0.4, 0.15])

        print("=== Vectorised operations ===")
        print("data:     ", data)
        print("data^2:   ", (data ** 2).round(3))
        print("sigmoid:  ", (1 / (1 + np.exp(-data))).round(4))

        print("\n=== Classification without a loop ===")
        labels = np.where(data >= 0.5, 'High', 'Low')
        print("Labels:", labels)

        print("\n=== Piecewise function ===")
        result = np.piecewise(
            data,
            [data < 0.3, (data >= 0.3) & (data < 0.7), data >= 0.7],
            [0, 1, 2]
        )
        print("Bins (0=low, 1=mid, 2=high):", result.astype(int))

        print("\n=== Matrix chain — fully vectorised ===")
        W = np.random.randn(4, 3)
        x = np.random.randn(3)
        y = np.maximum(0, W @ x)   # ReLU activation (no loops!)
        print("Layer output (ReLU):", y.round(4))
      PYTHON
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">NumPy for Machine Learning</h1>
        </div>
        <p class="lc-lead">Machine learning at its core is NumPy — forward passes, gradient computations, weight updates, and data normalisation are all array operations.</p>
        <div class="lc-card">
          <h3>Data Preparation</h3>
          <div class="lc-code"># Train/test split (manual)<br>idx = np.random.permutation(len(X))<br>split = int(len(X) * 0.8)<br>X_train, X_test = X[idx[:split]], X[idx[split:]]<br><br># Normalisation<br>X_norm = (X - X.mean(axis=0)) / X.std(axis=0)</div>
        </div>
        <div class="lc-card">
          <h3>One-Hot Encoding</h3>
          <div class="lc-code">labels = np.array([0, 2, 1, 0, 2])<br>n_classes = 3<br>one_hot = np.eye(n_classes)[labels]<br># [[1,0,0],[0,0,1],[0,1,0],...]</div>
        </div>
        <div class="lc-card">
          <h3>Softmax and Sigmoid</h3>
          <div class="lc-code">def softmax(x):<br>    e = np.exp(x - np.max(x))  # Subtract max for numerical stability<br>    return e / e.sum()<br><br>def sigmoid(x):<br>    return 1 / (1 + np.exp(-x))<br><br>def relu(x):<br>    return np.maximum(0, x)</div>
        </div>
        <div class="lc-card">
          <h3>Loss Functions</h3>
          <div class="lc-code">def mse(y_true, y_pred):<br>    return np.mean((y_true - y_pred) ** 2)<br><br>def mae(y_true, y_pred):<br>    return np.mean(np.abs(y_true - y_pred))</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Understanding these NumPy operations IS understanding how neural networks work — every deep learning framework (PyTorch, TensorFlow) does the same math under the hood.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        np.random.seed(42)

        # Dataset: 6 samples, 2 features
        X = np.array([[2.1, 3.2], [1.5, 2.8], [4.2, 1.1],
                      [3.8, 4.5], [1.2, 1.8], [4.9, 3.3]])
        y = np.array([1, 0, 0, 1, 0, 1])  # Binary labels

        # 1. Normalise features
        X_norm = (X - X.mean(axis=0)) / X.std(axis=0)
        print("Normalised X:")
        print(X_norm.round(3))

        # 2. One-hot encode labels
        one_hot = np.eye(2)[y]
        print("\nOne-hot labels:")
        print(one_hot.astype(int))

        # 3. Activation functions
        def sigmoid(x): return 1 / (1 + np.exp(-x))
        def relu(x):    return np.maximum(0, x)

        logits = np.array([-2.0, -0.5, 0.0, 0.5, 1.5, 2.5])
        print("\nLogits:", logits)
        print("Sigmoid:", sigmoid(logits).round(4))
        print("ReLU:   ", relu(logits))

        # 4. MSE loss
        y_pred = np.array([0.8, 0.2, 0.3, 0.9, 0.1, 0.7])
        mse = np.mean((y - y_pred) ** 2)
        print("\nMSE loss:", round(mse, 4))
      PYTHON
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">NumPy and Pandas Together</h1>
        </div>
        <p class="lc-lead">NumPy and Pandas are complementary — Pandas handles labelled, heterogeneous data; NumPy handles fast numerical computation. They interoperate seamlessly.</p>
        <div class="lc-card">
          <h3>Converting Between Them</h3>
          <div class="lc-code">import numpy as np<br>import pandas as pd<br><br># DataFrame → NumPy<br>arr = df.to_numpy()          # Strips labels<br>arr = df.values              # Same (older API)<br>arr = np.array(df)           # Same<br><br># Specific columns<br>X = df[['col1','col2']].to_numpy()<br><br># NumPy → DataFrame<br>df = pd.DataFrame(arr, columns=['a','b','c'])</div>
        </div>
        <div class="lc-card">
          <h3>Typical ML Workflow</h3>
          <div class="lc-code"># 1. Load and clean with Pandas<br>df = pd.read_csv('data.csv')<br>df = df.dropna()<br><br># 2. Extract features and target<br>X = df[feature_cols].to_numpy().astype(float)<br>y = df['target'].to_numpy()<br><br># 3. Normalise with NumPy<br>X = (X - X.mean(0)) / X.std(0)<br><br># 4. Train model (sklearn, PyTorch, etc.)<br>from sklearn.linear_model import LogisticRegression<br>model = LogisticRegression().fit(X, y)</div>
        </div>
        <div class="lc-card">
          <h3>NumPy Functions on Pandas</h3>
          <div class="lc-code">np.log(df['salary'])         # Works on Series<br>np.where(df['score']>80, 'A','B')  # Vectorised conditional<br>np.sqrt(df[['a','b']])       # Works on DataFrame</div>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Most NumPy functions (np.log, np.sqrt, np.exp) work directly on Pandas Series and DataFrames — you don't need to convert first.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np

        # Simulate a typical ML data prep pipeline (without pandas in simulator)
        np.random.seed(42)

        # Step 1: Raw data as structured array
        names = np.array(['Alice','Bob','Carol','Dave','Eve','Frank'])
        ages  = np.array([28, 34, 29, 41, 25, 38])
        sals  = np.array([85000, 72000, 91000, 105000, 58000, 79000])
        exp   = np.array([4, 8, 5, 15, 2, 11])
        promoted = np.array([1, 0, 1, 1, 0, 0])

        print("=== Raw data ===")
        print("Names:", names)
        print("Salaries:", sals)

        # Step 2: Feature matrix
        X = np.column_stack([ages, sals, exp])
        y = promoted
        print("\nFeature matrix X shape:", X.shape)

        # Step 3: Normalise (z-score per feature)
        X_norm = (X - X.mean(axis=0)) / X.std(axis=0)
        print("\nNormalised X:")
        print(X_norm.round(3))

        # Step 4: Correlation of features with target
        for i, feat in enumerate(['age', 'salary', 'experience']):
            r = np.corrcoef(X[:, i], y)[0, 1]
            print(f"  corr({feat}, promoted) = {r:.4f}")
      PYTHON
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-numpy">NumPy</div>
          <h1 class="lc-title">NumPy Review — Complete Reference</h1>
        </div>
        <p class="lc-lead">You've completed the NumPy course! Let's build a complete data analysis and simulation pipeline using everything you've learned.</p>
        <div class="lc-card">
          <h3>Core Concepts Recap</h3>
          <table class="lc-table">
            <thead><tr><th>Topic</th><th>Key Functions</th></tr></thead>
            <tbody>
              <tr><td>Creating</td><td>array, zeros, ones, arange, linspace, eye, random.rand</td></tr>
              <tr><td>Attributes</td><td>shape, ndim, size, dtype</td></tr>
              <tr><td>Indexing</td><td>a[i], a[i:j], a[i,j], a[:,-1], boolean, fancy</td></tr>
              <tr><td>Math</td><td>+, -, *, /, **, sum, mean, std, min, max, sqrt, abs</td></tr>
              <tr><td>Reshaping</td><td>reshape, flatten, ravel, T, newaxis, squeeze</td></tr>
              <tr><td>Stacking</td><td>vstack, hstack, concatenate, column_stack, split</td></tr>
              <tr><td>Sorting</td><td>sort, argsort, argmin, argmax, where, unique</td></tr>
              <tr><td>Linear algebra</td><td>@, dot, T, linalg.inv, linalg.norm</td></tr>
              <tr><td>Statistics</td><td>mean, median, std, var, percentile, corrcoef, histogram</td></tr>
              <tr><td>Random</td><td>seed, rand, randn, randint, normal, choice, permutation</td></tr>
              <tr><td>Boolean</td><td>a[cond], np.where, np.sum(cond), np.mean(cond)</td></tr>
              <tr><td>Broadcasting</td><td>shapes compatible right-to-left; 1 broadcasts to any</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Next Steps:</strong> Apply NumPy in Pandas (data wrangling), Matplotlib (plotting), scikit-learn (ML), and PyTorch/TensorFlow (deep learning) — they all build on these fundamentals.
        </div>
      HTML
      starter_code: <<~'PYTHON'
        import numpy as np
        np.random.seed(2024)

        print("=" * 40)
        print("  NumPy Comprehensive Review")
        print("=" * 40)

        # 1. Generate synthetic dataset
        n = 20
        ages     = np.random.randint(22, 60, n)
        salaries = np.random.normal(70000, 20000, n).astype(int)
        scores   = np.random.randint(50, 100, n)

        # 2. Build feature matrix
        X = np.column_stack([ages, salaries, scores])
        print("\nDataset: {} samples, {} features".format(*X.shape))

        # 3. Normalise
        X_norm = (X - X.mean(axis=0)) / X.std(axis=0)
        print("Normalised means:", X_norm.mean(axis=0).round(10))

        # 4. Salary analysis
        print("\n=== Salary Bands ===")
        bands = np.where(salaries >= 90000, 'High',
                np.where(salaries >= 65000, 'Mid', 'Low'))
        vals, cnts = np.unique(bands, return_counts=True)
        for v, c in zip(vals, cnts):
            print(f"  {v}: {c} employees ({c/n*100:.0f}%)")

        # 5. Top 5 by salary
        print("\n=== Top 5 Salaries ===")
        top5 = np.argsort(salaries)[-5:][::-1]
        for rank, idx in enumerate(top5, 1):
            print(f"  {rank}. Age {ages[idx]}, Salary ${salaries[idx]:,}")

        # 6. Correlation matrix
        print("\n=== Feature Correlations ===")
        corr = np.corrcoef(X.T)
        labels = ['Age', 'Salary', 'Score']
        for i, l1 in enumerate(labels):
            for j, l2 in enumerate(labels):
                if j > i:
                    print(f"  {l1} ↔ {l2}: {corr[i,j]:.4f}")

        # 7. Percentiles
        print("\n=== Salary Percentiles ===")
        for p in [25, 50, 75, 90]:
            print(f"  P{p}: ${np.percentile(salaries, p):,.0f}")
      PYTHON
    }
  }
end

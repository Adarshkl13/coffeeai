require_relative "../numpy_content"

namespace :content do
  desc "Create NumPy course and populate all 20 lessons"
  task numpy: :environment do
    course = Course.find_or_create_by!(slug: "numpy") do |c|
      c.title       = "NumPy"
      c.description = "NumPy is the base for number work in Python. Learn ndarrays, views and copies, broadcasting, vectorised code, random numbers, statistics, linear algebra and NumPy 2 good practice. Then build a regression model from scratch."
      c.color       = "#4dabcf"
      c.icon        = "🔢"
      c.position    = 16
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to NumPy",
      2  => "Creating Arrays",
      3  => "Array Attributes and dtypes",
      4  => "Indexing and Slicing",
      5  => "Views vs Copies",
      6  => "Array Arithmetic and Universal Functions",
      7  => "Aggregations and the axis Parameter",
      8  => "Reshaping Arrays",
      9  => "Boolean Indexing and np.where",
      10 => "Fancy Indexing",
      11 => "Stacking and Splitting Arrays",
      12 => "Broadcasting in Depth",
      13 => "Sorting, Searching and Set Operations",
      14 => "Random Numbers with Generator",
      15 => "Statistical Functions",
      16 => "Linear Algebra",
      17 => "NaN, Infinity and Floating-Point Precision",
      18 => "Saving, Loading and Interoperability",
      19 => "Vectorisation and Performance",
      20 => "Capstone Project: Linear Regression from Scratch",
    }

    descriptions = {
      1  => "Meet the ndarray. See why NumPy is much faster than Python lists, and how vectorised maths replaces loops.",
      2  => "Build arrays from lists and with zeros, ones, full, eye, arange and linspace. Avoid the float-step trap.",
      3  => "Read shape, ndim, size and dtype. Change types with astype, and avoid integer sizes that differ by platform and hidden overflow.",
      4  => "Select elements, rows, columns and small grids with [row, col] indexing and start:stop:step slices. Assign new values.",
      5  => "Learn which operations share memory (views) and which make new data (copies). Use .copy() to avoid changes by mistake.",
      6  => "Do maths element by element and use ufuncs like sqrt, exp and maximum. Learn what happens with division by zero and in-place dtype rules.",
      7  => "Summarise arrays with sum, mean, max, argmax, any and all. Choose the direction with axis and keepdims.",
      8  => "Change array shapes with reshape and -1, transpose, and add or remove axes. Put data in the (samples, features) shape.",
      9  => "Filter, count and change elements with boolean masks. Combine conditions with & | ~, and label data with np.where and np.select.",
      10 => "Select, reorder and update elements with index arrays. Use np.ix_ for small grids, argsort for top-k, and np.add.at to count safely.",
      11 => "Join arrays with concatenate, vstack, hstack, column_stack and stack. Split them into equal or unequal parts.",
      12 => "Use the three broadcasting rules to combine arrays of different shapes. Build tables and distance matrices, and avoid hidden shape bugs.",
      13 => "Sort with sort and argsort, and find top-k with partition. Search with searchsorted, and compare arrays with unique, isin and set functions.",
      14 => "Make random numbers you can repeat with np.random.default_rng. Get integers, uniform and normal values, samples, shuffles and splits.",
      15 => "Describe data with mean, median, standard deviation, percentiles, IQR, z-scores, correlation, histograms and nan-aware functions.",
      16 => "Multiply matrices with @ and find dot products and norms. Solve equations with np.linalg.solve, and fit a line with lstsq.",
      17 => "Find and handle nan and inf. Use nan-aware functions, and compare floats safely even with rounding errors.",
      18 => "Save arrays with np.save and np.savez, and read and write CSV text. Use allow_pickle safely, and convert to lists and pandas.",
      19 => "Replace Python loops with vectorised code. Learn why np.vectorize is not fast, and save memory with dtypes and buffers.",
      20 => "Build a full NumPy ML pipeline. Make data, split it, scale it without leakage, train with lstsq and gradient descent, and check the results.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "What does print(np.array([2, 4]) * 2) display?",
              opts: ["A) [4 8]", "B) [2, 4, 2, 4]", "C) [2 4 2 4]"], ans: "A" },
      2  => { type: "multiple_choice", q: "You need exactly 6 evenly spaced values from 0 to 1. Both 0 and 1 must be included. Which call is correct?",
              opts: ["A) np.arange(0, 1, 6)", "B) np.arange(0, 1, 0.2)", "C) np.linspace(0, 1, 6)"], ans: "C" },
      3  => { type: "true_false", q: "np.array([2.9, -2.9]).astype(np.int64) rounds to the nearest whole number and gives [3 -3].",
              opts: ["True", "False"], ans: "False" },
      4  => { type: "multiple_choice", q: "For m = np.array([[1, 2, 3], [4, 5, 6]]), what does print(m[:, 1]) display?",
              opts: ["A) [4 5 6]", "B) [2 5]", "C) [1 2 3]"], ans: "B" },
      5  => { type: "true_false", q: "After a = np.array([1, 2, 3]); s = a[:2]; s[0] = 50, the first element of a is 50.",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "What does print(np.array([7, 8]) // 3) display?",
              opts: ["A) [2 2]", "B) [2.33333333 2.66666667]", "C) [1 2]"], ans: "A" },
      7  => { type: "multiple_choice", q: "m has shape (4, 3): 4 students (rows) and 3 subjects (columns). Which call gives each student's total marks?",
              opts: ["A) m.sum()", "B) m.sum(axis=0)", "C) m.sum(axis=1)"], ans: "C" },
      8  => { type: "multiple_choice", q: "a = np.arange(12). What is the shape of a.reshape(-1, 4)?",
              opts: ["A) (4, 3)", "B) (3, 4)", "C) (12, 4)"], ans: "B" },
      9  => { type: "true_false", q: "To keep values between 10 and 20 you can write a[(a > 10) and (a < 20)].",
              opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "m = np.arange(12).reshape(3, 4). What is the shape of m[[0, 2], [1, 3]]?",
              opts: ["A) (2,)", "B) (2, 2)", "C) (3, 4)"], ans: "A" },
      11 => { type: "multiple_choice", q: "x = np.array([1, 2, 3]) and y = np.array([4, 5, 6]). Which call gives a (3, 2) array with x and y as columns?",
              opts: ["A) np.hstack([x, y])", "B) np.vstack([x, y])", "C) np.column_stack([x, y])"], ans: "C" },
      12 => { type: "multiple_choice", q: "What is the shape of np.ones((2, 1, 5)) + np.ones((4, 1))?",
              opts: ["A) Error: the shapes cannot be broadcast", "B) (2, 4, 5)", "C) (2, 1, 5)"], ans: "B" },
      13 => { type: "true_false", q: "After a = np.array([3, 1, 2]); b = np.sort(a), the array a is still [3 1 2].",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "rng = np.random.default_rng(0). Which call simulates 10 rolls of a normal six-sided die (values 1 to 6)?",
              opts: ["A) rng.integers(1, 7, size=10)", "B) rng.integers(1, 6, size=10)", "C) rng.random(1, 6, size=10)"], ans: "A" },
      15 => { type: "multiple_choice", q: "x = np.array([2, 4, 6]). NumPy's x.std() and pandas' pd.Series(x).std() give different answers. Why?",
              opts: ["A) NumPy ignores the first value in the array", "B) NumPy uses ddof=0 (divide by n) but pandas uses ddof=1 (divide by n - 1)", "C) pandas rounds the result to 2 decimal places"], ans: "B" },
      16 => { type: "true_false", q: "For two 2x2 NumPy arrays A and B, A * B does normal matrix multiplication.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "a = np.array([1.0, np.nan, 3.0]). What does np.sum(a == np.nan) return?",
              opts: ["A) 1, because one element is nan", "B) nan, because nan spreads through sums", "C) 0, because nan is never equal to anything, not even nan"], ans: "C" },
      18 => { type: "multiple_choice", q: "You want to store the arrays X_train and y_train together in one file. You want to load each one back by name. Which call is best?",
              opts: ["A) np.savez('data.npz', X=X_train, y=y_train)", "B) np.save('data.npy', X_train, y_train)", "C) np.savetxt('data.csv', [X_train, y_train])"], ans: "A" },
      19 => { type: "true_false", q: "np.where(x > 0, x, 0) is usually much faster than a Python for-loop that builds the same result. This is most true for large arrays.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "In the final project, why do you get the mean and standard deviation for scaling from the training rows only?",
              opts: ["A) Because NumPy cannot compute statistics on the test rows", "B) So that no information from the test set leaks into training. This keeps the test score honest", "C) Because the training set is larger, so its statistics are always the same as the test set's"], ans: "B" },
    }

    NumpyContent::LESSONS.each do |position, data|
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

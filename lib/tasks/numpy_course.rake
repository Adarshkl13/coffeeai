require_relative "../numpy_content"

namespace :content do
  desc "Create NumPy course and populate all 20 lessons"
  task numpy: :environment do
    course = Course.find_or_create_by!(slug: "numpy") do |c|
      c.title       = "NumPy"
      c.description = "NumPy is Python's numerical computing foundation. Master ndarrays, broadcasting, vectorisation, linear algebra, random generation, statistical functions, and data preparation for machine learning."
      c.color       = "#4dabcf"
      c.icon        = "🔢"
      c.position    = 16
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to NumPy",              2  => "Creating Arrays",
      3  => "Array Attributes",                   4  => "Indexing and Slicing",
      5  => "Array Arithmetic and Broadcasting",  6  => "Mathematical Functions",
      7  => "Reshaping Arrays",                   8  => "Boolean and Fancy Indexing",
      9  => "Stacking and Splitting",             10 => "Sorting and Searching",
      11 => "Linear Algebra",                     12 => "Random Number Generation",
      13 => "Statistical Functions",              14 => "Working with 2D Arrays",
      15 => "Broadcasting in Depth",              16 => "Saving and Loading Arrays",
      17 => "Vectorisation and Performance",      18 => "NumPy for Machine Learning",
      19 => "NumPy and Pandas Together",          20 => "NumPy Review — Complete Reference"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "According to the lesson, why are NumPy arrays much faster than Python lists for numerical work?",
              opts: ["A) They store same-dtype values compactly and run vectorised operations in C", "B) They let you store mixed data types together in one array", "C) They automatically send every operation to the GPU"], ans: "A" },
      2  => { type: "multiple_choice", q: "Which function creates an array of 6 evenly spaced values between 0 and 1 (inclusive)?",
              opts: ["A) np.arange(0, 1, 6)", "B) np.range(0, 1, 6)", "C) np.linspace(0, 1, 6)"], ans: "C" },
      3  => { type: "multiple_choice", q: "For a shape (3, 4) array, what is a.size?",
              opts: ["A) 12", "B) 3", "C) 4"], ans: "A" },
      4  => { type: "multiple_choice", q: "For m = np.array([[1,2,3],[4,5,6]]), what does m[:, 1] return?",
              opts: ["A) [1, 2, 3]", "B) [2, 5]", "C) [4, 5, 6]"], ans: "B" },
      5  => { type: "true_false",      q: "Arrays with shapes (3, 4) and (4,) can be added directly; the (4,) array is broadcast across every row.",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "np.sum(m, axis=0) on a (3,4) matrix returns:",
              opts: ["A) An array of 4 values — column sums", "B) A scalar — the total sum", "C) An array of 3 values — row sums"], ans: "A" },
      7  => { type: "multiple_choice", q: "Which call reshapes a 12-element array to 3 rows, inferring the number of columns?",
              opts: ["A) a.reshape(3, -1)", "B) a.reshape(3, 0)", "C) a.reshape(-1, 3, 4)"], ans: "A" },
      8  => { type: "true_false",      q: "To combine two conditions in boolean indexing you write a[a > 2 and a < 7].",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "Which function stacks two 2D arrays vertically (adds more rows)?",
              opts: ["A) np.hstack", "B) np.column_stack", "C) np.vstack"], ans: "C" },
      10 => { type: "multiple_choice", q: "np.argmax(a) returns:",
              opts: ["A) The maximum value", "B) The index of the maximum value", "C) The sorted array"], ans: "B" },
      11 => { type: "multiple_choice", q: "Which operator performs matrix multiplication (not element-wise multiplication) in NumPy?",
              opts: ["A) *", "B) **", "C) @"], ans: "C" },
      12 => { type: "true_false",      q: "np.random.seed(42) ensures that subsequent random calls produce the same values.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "np.percentile(a, 50) returns the same value as which function?",
              opts: ["A) np.mean(a)", "B) np.std(a)", "C) np.median(a)"], ans: "C" },
      14 => { type: "multiple_choice", q: "Which argument keeps the reduced dimension (e.g. shape (3,1) instead of (3,)) for broadcasting?",
              opts: ["A) keepshape=True", "B) keepdims=True", "C) axis_keep=True"], ans: "B" },
      15 => { type: "multiple_choice", q: "For shapes (3,1) and (1,4), what is the result shape when they are added together?",
              opts: ["A) Error — incompatible shapes", "B) (3, 4)", "C) (1, 4)"], ans: "B" },
      16 => { type: "multiple_choice", q: "Which function saves several arrays, such as X and y, together in a single file?",
              opts: ["A) np.savez('data.npz', X=X, y=y)", "B) np.save('data.npy', X, y)", "C) np.savetxt('data.csv', X, y)"], ans: "A" },
      17 => { type: "true_false",      q: "np.vectorize() compiles a Python function to C, so it runs as fast as built-in NumPy operations.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "Which expression creates a one-hot encoding for labels = [0, 2, 1] with 3 classes?",
              opts: ["A) np.onehot(labels, 3)", "B) np.eye(3)[labels]", "C) np.encode(labels)"], ans: "B" },
      19 => { type: "multiple_choice", q: "Which method converts a Pandas DataFrame to a NumPy array?",
              opts: ["A) df.to_numpy()", "B) df.to_array()", "C) np.from_pandas(df)"], ans: "A" },
      20 => { type: "multiple_choice", q: "What does np.where(a > 5, a, 0) return?",
              opts: ["A) An array of the indices where a is greater than 5", "B) A boolean mask marking which elements are greater than 5", "C) An array keeping a's values where a > 5 and 0 everywhere else"], ans: "C" }
    }

    NumpyContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

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

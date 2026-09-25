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
      1  => { type: "multiple_choice", q: "What is the conventional alias for importing NumPy?",
              opts: ["A) import numpy as num", "B) import numpy as np", "C) import numpy"], ans: "B" },
      2  => { type: "multiple_choice", q: "Which function creates an array of 6 evenly spaced values between 0 and 1 (inclusive)?",
              opts: ["A) np.arange(0, 1, 6)", "B) np.linspace(0, 1, 6)", "C) np.range(0, 1, 6)"], ans: "B" },
      3  => { type: "multiple_choice", q: "For a shape (3, 4) array, what is a.size?",
              opts: ["A) 3", "B) 4", "C) 12"], ans: "C" },
      4  => { type: "multiple_choice", q: "For m = np.array([[1,2,3],[4,5,6]]), what does m[:, 1] return?",
              opts: ["A) [1, 2, 3]", "B) [2, 5]", "C) [4, 5, 6]"], ans: "B" },
      5  => { type: "true_false",      q: "In NumPy, a + 10 adds 10 to every element of array a (scalar broadcasting).",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "np.sum(m, axis=0) on a (3,4) matrix returns:",
              opts: ["A) A scalar — the total sum", "B) An array of 3 values — row sums", "C) An array of 4 values — column sums"], ans: "C" },
      7  => { type: "multiple_choice", q: "Which call reshapes a 12-element array to 3 rows, inferring the number of columns?",
              opts: ["A) a.reshape(3, 0)", "B) a.reshape(3, -1)", "C) a.reshape(-1, 3, 4)"], ans: "B" },
      8  => { type: "true_false",      q: "a[a > 5] returns a new array containing only elements of a that are greater than 5.",
              opts: ["True", "False"], ans: "True" },
      9  => { type: "multiple_choice", q: "Which function stacks two 2D arrays vertically (adds more rows)?",
              opts: ["A) np.hstack", "B) np.vstack", "C) np.column_stack"], ans: "B" },
      10 => { type: "multiple_choice", q: "np.argmax(a) returns:",
              opts: ["A) The maximum value", "B) The index of the maximum value", "C) The sorted array"], ans: "B" },
      11 => { type: "multiple_choice", q: "Which operator performs matrix multiplication in NumPy (Python 3.5+)?",
              opts: ["A) *", "B) ×", "C) @"], ans: "C" },
      12 => { type: "true_false",      q: "np.random.seed(42) ensures that subsequent random calls produce the same values.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "Which function returns the 75th percentile of an array?",
              opts: ["A) np.quantile(a, 0.75)", "B) np.percentile(a, 75)", "C) Both A and B are correct"], ans: "C" },
      14 => { type: "multiple_choice", q: "Which argument keeps the reduced dimension (e.g. shape (3,1) instead of (3,)) for broadcasting?",
              opts: ["A) keepshape=True", "B) keepdims=True", "C) axis_keep=True"], ans: "B" },
      15 => { type: "multiple_choice", q: "For shapes (3,1) and (1,4), what is the result shape when they are added together?",
              opts: ["A) Error — incompatible shapes", "B) (3, 4)", "C) (1, 4)"], ans: "B" },
      16 => { type: "multiple_choice", q: "Which NumPy file format preserves dtype and is faster to load than CSV?",
              opts: ["A) .txt", "B) .npy", "C) .pkl"], ans: "B" },
      17 => { type: "true_false",      q: "Vectorised NumPy operations (like array * 2) are significantly faster than equivalent Python for-loops.",
              opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "Which expression creates a one-hot encoding for labels = [0, 2, 1] with 3 classes?",
              opts: ["A) np.eye(3)[labels]", "B) np.onehot(labels, 3)", "C) np.encode(labels)"], ans: "A" },
      19 => { type: "multiple_choice", q: "Which method converts a Pandas DataFrame to a NumPy array?",
              opts: ["A) df.to_array()", "B) df.to_numpy()", "C) np.from_pandas(df)"], ans: "B" },
      20 => { type: "multiple_choice", q: "np.where(a > 5, a, 0) returns:",
              opts: ["A) Indices where a > 5", "B) Array with a's values where a>5, else 0", "C) Boolean mask"], ans: "B" }
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

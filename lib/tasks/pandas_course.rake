require_relative "../pandas_content"

namespace :content do
  desc "Create Pandas course and populate all 20 lessons"
  task pandas: :environment do
    course = Course.find_or_create_by!(slug: "pandas") do |c|
      c.title       = "Pandas"
      c.description = "Pandas is Python's essential data analysis library. Master DataFrames, filtering, GroupBy, merging, missing data, string operations, datetime handling, pivot tables, and end-to-end analysis pipelines."
      c.color       = "#150458"
      c.icon        = "🐼"
      c.position    = 15
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Pandas",           2  => "DataFrame Basics — Exploring Data",
      3  => "Selecting and Filtering Data",      4  => "Sorting and Ranking",
      5  => "Adding and Modifying Columns",      6  => "Aggregation Functions",
      7  => "GroupBy — Split, Apply, Combine",   8  => "Merging and Joining DataFrames",
      9  => "Handling Missing Data",             10 => "String Operations",
      11 => "DateTime Operations",               12 => "Pivot Tables and Crosstab",
      13 => "apply(), map(), and applymap()",    14 => "Reshaping Data — melt and stack",
      15 => "Window Functions and Rolling",      16 => "Reading and Writing Data",
      17 => "Data Cleaning Workflow",            18 => "Performance Tips and Best Practices",
      19 => "Pandas for Machine Learning Prep",  20 => "Pandas Review — End-to-End Analysis"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "What are pandas' two core data structures?",
              opts: ["A) Array (1D) and Matrix (2D grid)", "B) Series (1D) and DataFrame (2D table)", "C) List (ordered) and Dictionary (key-value)"], ans: "B" },
      2  => { type: "multiple_choice", q: "Which method returns descriptive statistics (mean, std, min, max) for all numeric columns?",
              opts: ["A) df.info()", "B) df.describe()", "C) df.stats()"], ans: "B" },
      3  => { type: "true_false",      q: "To combine filter conditions in pandas, use Python's and/or, e.g. df[df['salary'] > 70000 and df['dept'] == 'Eng'].",
              opts: ["True", "False"], ans: "False" },
      4  => { type: "multiple_choice", q: "Which method sorts a DataFrame by a column in descending order?",
              opts: ["A) df.sort_values('col', ascending=False)", "B) df.order_by('col', desc=True)", "C) df.sort('col', reverse=True)"], ans: "A" },
      5  => { type: "multiple_choice", q: "How do you add a new column 'bonus' equal to 10% of 'salary'?",
              opts: ["A) df.add('bonus', df['salary'] * 0.10)", "B) df['bonus'] = df['salary'] * 0.10", "C) df.insert('bonus', df['salary'] / 10)"], ans: "B" },
      6  => { type: "multiple_choice", q: "Which method counts the occurrences of each unique value in a Series?",
              opts: ["A) df['col'].count_unique()", "B) df['col'].unique_count()", "C) df['col'].value_counts()"], ans: "C" },
      7  => { type: "true_false",      q: "df.groupby('department')['salary'].mean() returns the average salary for each department.",
              opts: ["True", "False"], ans: "True" },
      8  => { type: "multiple_choice", q: "Which function combines two DataFrames like a SQL JOIN?",
              opts: ["A) pd.concat()", "B) pd.merge()", "C) pd.join()"], ans: "B" },
      9  => { type: "multiple_choice", q: "Which method fills NaN values with the column mean?",
              opts: ["A) df['col'].fillna(df['col'].mean())", "B) df['col'].replace_nan(mean=True)", "C) df.fill_missing('col')"], ans: "A" },
      10 => { type: "multiple_choice", q: "Which accessor provides string methods for a pandas Series?",
              opts: ["A) .string", "B) .text", "C) .str"], ans: "C" },
      11 => { type: "true_false",      q: "Comparing dates stored as strings always gives the same results as comparing datetime values, so converting with pd.to_datetime() is optional.",
              opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "Which method reshapes a DataFrame like an Excel pivot table?",
              opts: ["A) df.reshape()", "B) df.crosstab()", "C) df.pivot_table()"], ans: "C" },
      13 => { type: "multiple_choice", q: "What does df['department'].map({'Engineering': 'ENG', 'Marketing': 'MKT'}) do?",
              opts: ["A) Replaces each value using the dictionary; values not in the dict become NaN", "B) Renames the 'department' column to 'ENG' or 'MKT'", "C) Keeps only the rows whose department is Engineering or Marketing"], ans: "A" },
      14 => { type: "multiple_choice", q: "Which method from the lesson converts wide data (columns q1–q4) into long format, with var_name and value_name naming the new columns?",
              opts: ["A) df.pivot()", "B) df.transpose()", "C) df.melt()"], ans: "C" },
      15 => { type: "true_false",      q: "df['revenue'].shift(1) moves values up one row, so each row shows the next period's revenue.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "Which argument prevents pandas from writing the row index to a CSV file?",
              opts: ["A) save_index=False", "B) index=False", "C) header=False"], ans: "B" },
      17 => { type: "multiple_choice", q: "Which method removes duplicate rows from a DataFrame?",
              opts: ["A) df.drop_duplicates()", "B) df.remove_duplicates()", "C) df.unique()"], ans: "A" },
      18 => { type: "true_false",      q: "Vectorised operations like df['salary'] * 0.1 are much faster than using iterrows() for the same task.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Which function creates one-hot encoded dummy variables from a categorical column?",
              opts: ["A) pd.one_hot()", "B) pd.encode()", "C) pd.get_dummies()"], ans: "C" },
      20 => { type: "multiple_choice", q: "Which method computes the cumulative sum of a column?",
              opts: ["A) df['col'].cumsum()", "B) df['col'].sum(cumulative=True)", "C) df['col'].rolling_sum()"], ans: "A" }
    }

    PandasContent::LESSONS.each do |position, data|
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

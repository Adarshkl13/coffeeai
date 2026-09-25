require_relative "../pandas_content"

namespace :content do
  desc "Create Pandas course and populate all 20 lessons"
  task pandas: :environment do
    course = Course.find_or_create_by!(slug: "pandas") do |c|
      c.title       = "Pandas"
      c.description = "Pandas is Python's essential data analysis library. Master DataFrames, loc/iloc, query, dtypes and missing data, GroupBy, merging, strings, dates, reshaping, Copy-on-Write and method chaining for pandas 2 and 3, ending with an end-to-end analysis project."
      c.color       = "#150458"
      c.icon        = "🐼"
      c.position    = 15
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to Pandas",
      2  => "Reading, Writing and Exploring Data",
      3  => "Selecting Data with loc and iloc",
      4  => "Filtering Rows and query()",
      5  => "Sorting and Ranking",
      6  => "Adding and Modifying Columns",
      7  => "Data Types: Numeric, Nullable, Category and String",
      8  => "Handling Missing Data",
      9  => "Aggregation and value_counts",
      10 => "GroupBy — Split, Apply, Combine",
      11 => "Merging, Joining and Concatenating",
      12 => "String Operations",
      13 => "Working with Dates and Times",
      14 => "Pivot Tables and Crosstab",
      15 => "Reshaping — melt, stack and unstack",
      16 => "apply(), map() and Vectorisation",
      17 => "Window Functions — rolling, expanding, shift",
      18 => "Copy-on-Write and Method Chaining",
      19 => "Data Cleaning and ML Preparation",
      20 => "Capstone Project: End-to-End Sales Analysis",
    }

    descriptions = {
      1  => "Meet pandas' two core structures, Series and DataFrame, and create your first labelled tables from dictionaries and lists.",
      2  => "Load CSV data with read_csv and its key options, explore it with head, info and describe, and save it with to_csv.",
      3  => "Select rows and columns by label with loc and by position with iloc, understand inclusive slices, and update values safely.",
      4  => "Keep the rows you need with boolean masks, & | ~, isin, between and string tests, or write readable filters with query().",
      5  => "Order rows with sort_values and sort_index, pick top rows with nlargest, and rank values while handling ties correctly.",
      6  => "Create columns with arithmetic, np.where, np.select and assign, rename, drop and convert columns cleanly, and see how index alignment matches labels when combining Series.",
      7  => "Check and convert dtypes, fix numbers stored as text, keep integers with missing values using Int64 and pd.NA, and use category and string types.",
      8  => "Detect missing values with isna, drop them with dropna options, and fill them with values, statistics, ffill/bfill, interpolate or group-wise means.",
      9  => "Summarise columns with sum, mean, count, idxmax and agg, and count categories with value_counts, normalize and bins.",
      10 => "Summarise data per group with groupby and named aggregation, and use transform and filter to compare rows with their group.",
      11 => "Combine tables with merge (inner, left, right, outer), validate keys, find unmatched rows with indicator, and stack tables with concat.",
      12 => "Clean and analyse text columns with the .str accessor: strip, case, contains, split, replace with or without regex, and extract.",
      13 => "Parse dates with to_datetime (including dd/mm/yyyy), use the .dt accessor and Timedelta arithmetic, and group by time with resample.",
      14 => "Summarise data across two dimensions with pivot_table and crosstab, add totals with margins, and know when pivot or groupby fits better.",
      15 => "Convert between wide and long formats with melt and pivot, and work with MultiIndex data using stack, unstack and explode.",
      16 => "Apply custom logic with Series.map, apply and DataFrame.map, avoid the removed applymap, and prefer faster vectorised operations.",
      17 => "Compute moving averages, running totals, lags and growth rates with rolling, expanding, cumsum, shift, diff and pct_change, also per group.",
      18 => "Understand SettingWithCopyWarning and chained assignment, use .loc and .copy() correctly, learn Copy-on-Write from pandas 3.0, and chain steps with assign and pipe.",
      19 => "Follow a repeatable cleaning workflow for text, duplicates, outliers and gaps, then encode, split and scale data for machine learning without leakage.",
      20 => "Clean a messy order export, merge it with a product table, and build revenue, customer, pivot and monthly-trend reports with pandas.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "df = pd.DataFrame({'a': [1, 2, 3], 'b': [4, 5, 6]}). What is df.shape?",
              opts: ["A) (2, 3)", "B) (3, 2)", "C) 6"], ans: "B" },
      2  => { type: "multiple_choice", q: "A CSV has a pincode column with values like 012345. How do you keep the leading zero when loading it?",
              opts: ["A) pd.read_csv(f, dtype={'pincode': str})", "B) pd.read_csv(f, parse_dates=['pincode'])", "C) pd.read_csv(f, index_col='pincode')"], ans: "A" },
      3  => { type: "true_false", q: "With the default index 0, 1, 2, 3, 4, df.loc[0:2] returns three rows but df.iloc[0:2] returns two rows.",
              opts: ["True", "False"], ans: "True" },
      4  => { type: "multiple_choice", q: "Which line correctly keeps rows where marks is above 70 AND city is Pune?",
              opts: ["A) df[df['marks'] > 70 and df['city'] == 'Pune']", "B) df[df['marks'] > 70 & df['city'] == 'Pune']", "C) df[(df['marks'] > 70) & (df['city'] == 'Pune')]"], ans: "C" },
      5  => { type: "multiple_choice", q: "Scores are 90, 85, 85, 70. What does rank(ascending=False, method='min') give?",
              opts: ["A) 1, 2, 2, 4", "B) 1, 2, 3, 4", "C) 1, 2.5, 2.5, 4"], ans: "A" },
      6  => { type: "true_false", q: "df.drop('gst') removes the column named gst from df.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "s = pd.Series([10, None, 30]). What is s.dtype?",
              opts: ["A) int64", "B) object", "C) float64"], ans: "C" },
      8  => { type: "multiple_choice", q: "Which is the modern replacement for the old df.fillna(method='ffill'), which was removed in pandas 3.0?",
              opts: ["A) df.fillna(forward=True)", "B) df.ffill()", "C) df.interpolate(method='pad')"], ans: "B" },
      9  => { type: "true_false", q: "For s = pd.Series([10, None, 30]), s.count() and len(s) both return 3.",
              opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "You want a new column holding each employee's department average salary, on every row. Which code does this?",
              opts: ["A) df['avg'] = df.groupby('dept')['salary'].transform('mean')", "B) df['avg'] = df.groupby('dept')['salary'].mean()", "C) df['avg'] = df.groupby('dept').size()"], ans: "A" },
      11 => { type: "multiple_choice", q: "orders has 100 rows. After orders.merge(customers, on='cust_id', how='left') the result has 104 rows. What is the most likely cause?",
              opts: ["A) A left join always adds a few extra rows for missing values", "B) Some cust_id values appear more than once in customers", "C) Some orders have a cust_id that is not in customers"], ans: "B" },
      12 => { type: "true_false", q: "For a text column s, you must write s.str.lower(), not s.lower(), to convert every value to lower case.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "Which call correctly parses Indian-style dates like '05/03/2024' meaning 5 March 2024?",
              opts: ["A) pd.to_datetime(s)", "B) pd.to_datetime(s, format='%m/%d/%Y')", "C) pd.to_datetime(s, format='%d/%m/%Y')"], ans: "C" },
      14 => { type: "multiple_choice", q: "You call df.pivot_table(values='amount', index='city') without aggfunc. What does each cell contain?",
              opts: ["A) The total amount for that city", "B) The mean amount for that city", "C) The number of rows for that city"], ans: "B" },
      15 => { type: "true_false", q: "df.melt(id_vars='name') turns a wide table with columns name, q1, q2 into a long table with one row per name-quarter pair.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "s = pd.Series(['HR', 'IT', 'Legal']). What does s.map({'HR': 'Human Resources', 'IT': 'Tech'}) give for 'Legal'?",
              opts: ["A) NaN", "B) 'Legal' (unchanged)", "C) A KeyError is raised"], ans: "A" },
      17 => { type: "multiple_choice", q: "s = pd.Series([5, 8, 6]). What is s.shift(1).tolist()?",
              opts: ["A) [8, 6, nan]", "B) [5, 8, 6]", "C) [nan, 5.0, 8.0]"], ans: "C" },
      18 => { type: "true_false", q: "In pandas 3.0, df[df['city'] == 'Pune']['temp'] = 0 sets temp to 0 for the Pune rows of df.",
              opts: ["True", "False"], ans: "False" },
      19 => { type: "multiple_choice", q: "You scale the age column with its mean and std. Where should those statistics come from?",
              opts: ["A) From the test rows only, because that is what the model is judged on", "B) From the training rows only, then applied to both train and test", "C) From all rows together, so both sets use the most data"], ans: "B" },
      20 => { type: "multiple_choice", q: "In the capstone, why is drop_duplicates() run before merging orders with products?",
              opts: ["A) So a repeated order is not carried into the join and counted twice in revenue", "B) Because merge() cannot run on a DataFrame that contains duplicate rows", "C) Because drop_duplicates() also converts the date column to datetime"], ans: "A" },
    }

    PandasContent::LESSONS.each do |position, data|
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

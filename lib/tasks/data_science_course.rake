require_relative "../data_science_content"

namespace :content do
  desc "Populate the Data Science course with all 22 lessons"
  task data_science: :environment do
    course = Course.find_or_create_by!(slug: "data-science") do |c|
      c.title       = "Data Science"
      c.description = "Turn raw data into useful answers. Learn statistics, Pandas, data visualisation and machine learning so you can make decisions based on data."
      c.color       = "#10b981"
      c.icon        = "📊"
      c.position    = 6
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "What Is Data Science?",
      2  => "Asking Good Questions",
      3  => "Data Types and Structures",
      4  => "Collecting Data: CSV and JSON",
      5  => "Loading and Inspecting Data",
      6  => "Cleaning Missing Data",
      7  => "Duplicates and Outliers",
      8  => "Transforming Data and Feature Engineering",
      9  => "Combining and Reshaping Data",
      10 => "Descriptive Statistics",
      11 => "Understanding Distributions",
      12 => "Probability Basics for Data Science",
      13 => "Sampling and the Central Limit Theorem",
      14 => "Hypothesis Testing",
      15 => "Correlation vs Causation",
      16 => "Fitting a Trend Line: Simple Linear Regression",
      17 => "Grouping and Aggregation for Insights",
      18 => "The Exploratory Data Analysis Workflow",
      19 => "Data Visualisation Principles",
      20 => "Introduction to Predictive Modelling",
      21 => "Communicating Results and Data Ethics",
      22 => "Capstone EDA Project and Review"
    }

    descriptions = {
      1  => "Learn what data science is. Follow each step from a question to a decision.",
      2  => "Learn to turn loose ideas into clear questions that data can answer and measure.",
      3  => "Learn about structured, semi-structured and unstructured data. See the kinds of variables in a table.",
      4  => "Get data from CSV and JSON sources. Ask the right questions about where it came from.",
      5  => "Do a quick check on any new dataset. Find problems before you analyse it.",
      6  => "Learn why values go missing. Choose to drop them, fill them or interpolate them.",
      7  => "Find duplicate rows and mark outliers with the IQR and z-score rules. Then decide what to do with them.",
      8  => "Make more useful columns with date parts, binning, scaling, log transforms and one-hot encoding.",
      9  => "Stack monthly files with concat. Join tables with the right join type and check for unmatched and duplicate keys. Change wide sheets into tidy long format.",
      10 => "Sum up any number column with measures of centre and spread.",
      11 => "Spot symmetric, skewed and bimodal distributions. Use the 68-95-99.7 rule.",
      12 => "Use probability rules, conditional probability and Bayes' rule to think about uncertain events.",
      13 => "See how random samples estimate a population and why the central limit theorem works. Build formula and bootstrap confidence intervals.",
      14 => "Check if a difference is real or just chance with t-tests, permutation tests, A/B tests and chi-square tests. Plan sample size with power and avoid the multiple-testing trap.",
      15 => "Measure correlation. Learn why confounders mean it does not prove causation.",
      16 => "Fit a least-squares trend line and read its slope and R-squared. Check the residuals and put a bootstrap confidence interval on the slope.",
      17 => "Answer comparison questions with groupby, named aggregations and pivot tables.",
      18 => "Follow the same exploratory data analysis steps each time, from overview to written findings.",
      19 => "Pick the right chart for each question. Make charts that are honest and clear.",
      20 => "Build your first predictive model with scikit-learn. Compare it to a baseline on held-out data.",
      21 => "Share findings clearly with different audiences. Handle personal data with care.",
      22 => "Use the full data science lifecycle on a student performance dataset. Then review the course.",
    }

    exercises = {
      1  => { type: "multiple_choice", q: "In the data science lifecycle, which step comes right after collecting the data?",
              opts: ["A) Modelling", "B) Cleaning", "C) Communicating results"], ans: "B" },
      2  => { type: "true_false",      q: "\"Analyse the IPL data\" is a clear, well-defined data science question.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "Which column should you treat as a category label, even though it has digits?",
              opts: ["A) Rainfall in millimetres", "B) Number of sixes hit", "C) PIN code of an area"], ans: "C" },
      4  => { type: "multiple_choice", q: "What does pd.json_normalize() do with a nested record such as {\"customer\": {\"state\": \"Kerala\"}}?",
              opts: ["A) Turns nested keys into flat columns like customer.state", "B) Deletes nested fields and keeps only top-level keys", "C) Turns each record into one long text column"], ans: "A" },
      5  => { type: "true_false",      q: "df.describe() shows a count lower than the number of rows for a column. This means that column has missing values.",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "Rainfall is missing for a few days at several very different weather stations. Which fill makes the most sense?",
              opts: ["A) That station's own median", "B) The overall mean of all the stations", "C) Zero, since no rain was recorded"], ans: "A" },
      7  => { type: "multiple_choice", q: "You have 9 order amounts. A Rs 12,000 party order has a z-score of only 2.67 (all others are about Rs 300). Why?",
              opts: ["A) The party order is not really unusual", "B) Z-scores only work for negative values", "C) The outlier makes the standard deviation much bigger"], ans: "C" },
      8  => { type: "true_false",      q: "Min-max scaling can change the order of values, so the smallest value may no longer be the smallest.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "A left join of 1,000 orders to a customer table returns 1,030 rows. What is the most likely cause?",
              opts: ["A) Thirty orders had no matching customer, so pandas added extra rows for them", "B) Some cust_id values appear twice in the customer table", "C) A left join always adds the unmatched customers from the right table too"], ans: "B" },
      10 => { type: "multiple_choice", q: "Two sections both average 70 marks. Which statistic best shows that one section's marks are much more spread out?",
              opts: ["A) Mean of each section", "B) Mode of each section", "C) Standard deviation"], ans: "C" },
      11 => { type: "true_false",      q: "In a right-skewed distribution, like food order values, the mean is usually bigger than the median.",
              opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "A test finds 95% of real cases. It wrongly flags 5% of healthy people. 2% of people are infected. P(infected | positive) is closest to:",
              opts: ["A) 28%", "B) 95%", "C) 5%"], ans: "A" },
      13 => { type: "true_false",      q: "A 95% confidence interval for the mean order value is Rs 370 to Rs 580. This means 95% of single customers spend between Rs 370 and Rs 580.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A hypothesis test gives p = 0.03. What does this mean?",
              opts: ["A) There is a 97% chance that the new method really works", "B) The effect is big enough to matter in real life", "C) A gap this big is rare if there is no effect"], ans: "C" },
      15 => { type: "true_false",      q: "A correlation coefficient close to 0 proves that two variables have no link at all.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "A trend line fitted on students who studied 1 to 10 hours is marks = 33 + 5.3 x hours. What should you say about a student who studies 20 hours?",
              opts: ["A) They will score about 139 marks, because the line predicts it", "B) Do not trust the line there: 20 hours is outside the fitted range", "C) They will surely score 5.3 marks more than a 19-hour student"], ans: "B" },
      17 => { type: "multiple_choice", q: "In pandas, what do you get from the mean of a True/False column (like late)?",
              opts: ["A) The count of True values in the column", "B) The share of rows that are True", "C) Always 0.5, whatever the data"], ans: "B" },
      18 => { type: "true_false",      q: "During EDA, pd.crosstab() is a good summary for comparing two categorical columns.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Which chart best shows how monthly rainfall changes through the year?",
              opts: ["A) Line chart", "B) Pie chart", "C) Scatter plot"], ans: "A" },
      20 => { type: "multiple_choice", q: "Why should you compare a model against a baseline such as \"always predict the mean\"?",
              opts: ["A) To see if the model learned anything", "B) Because baselines are usually more accurate", "C) Because it makes training the model much faster"], ans: "A" },
      21 => { type: "true_false",      q: "Showing results for a group with only one member can reveal who that person is, even without a name.",
              opts: ["True", "False"], ans: "True" },
      22 => { type: "multiple_choice", q: "In the capstone steps, what should you do before you explore correlations and group comparisons?",
              opts: ["A) Write the final recommendation", "B) Build a predictive model", "C) Inspect and clean the data"], ans: "C" }
    }

    DataScienceContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_initialize_by(course: course, position: position)
      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type = ex[:type]
        e.question = ex[:q]
        e.options = ex[:opts]
        e.correct_answer = ex[:ans]
      end.save!
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

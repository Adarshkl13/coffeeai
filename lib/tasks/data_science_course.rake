require_relative "../data_science_content"

namespace :content do
  desc "Populate the Data Science course with all 22 lessons"
  task data_science: :environment do
    course = Course.find_or_create_by!(slug: "data-science") do |c|
      c.title       = "Data Science"
      c.description = "Turn raw data into actionable insights. Learn statistics, Pandas, data visualization, and machine learning to become a data-driven decision maker."
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
      19 => "Data Visualization Principles",
      20 => "Introduction to Predictive Modelling",
      21 => "Communicating Results and Data Ethics",
      22 => "Capstone EDA Project and Review"
    }

    descriptions = {
      1  => "Discover what data science is and walk through the lifecycle from question to decision.",
      2  => "Learn to turn vague curiosity into sharp, measurable questions that data can answer.",
      3  => "Identify structured, semi-structured and unstructured data and the kinds of variables in a table.",
      4  => "Collect data from CSV and JSON sources and ask the right questions about where it came from.",
      5  => "Run a quick health check on any new dataset to spot problems before analysing it.",
      6  => "Understand why values go missing and choose between dropping, filling and interpolating them.",
      7  => "Find duplicate rows and flag outliers with the IQR and z-score rules, then decide what to do with them.",
      8  => "Create more useful columns through date parts, binning, scaling, log transforms and one-hot encoding.",
      9  => "Stack monthly files with concat, join tables with the right join type while checking for unmatched and duplicated keys, and reshape wide sheets into tidy long format.",
      10 => "Summarise any numeric column with measures of centre and spread.",
      11 => "Recognise symmetric, skewed and bimodal distributions and apply the 68-95-99.7 rule.",
      12 => "Use probability rules, conditional probability and Bayes' rule to reason about uncertain events.",
      13 => "See how random samples estimate a population, why the central limit theorem works, and how to build formula and bootstrap confidence intervals.",
      14 => "Decide whether a difference is real or just chance with t-tests, permutation tests, A/B tests and chi-square tests, plan sample size with power, and avoid the multiple-testing trap.",
      15 => "Measure correlation and learn why confounders mean it does not prove causation.",
      16 => "Fit a least-squares trend line, read its slope and R-squared, check the residuals, and put a bootstrap confidence interval on the slope.",
      17 => "Answer comparison questions with groupby, named aggregations and pivot tables.",
      18 => "Follow a repeatable exploratory data analysis routine from overview to written findings.",
      19 => "Choose the right chart for each question and design charts that are honest and clear.",
      20 => "Build a first predictive model with scikit-learn and judge it against a baseline on held-out data.",
      21 => "Present findings clearly to different audiences and handle personal data responsibly.",
      22 => "Apply the full data science lifecycle to a student performance dataset and review the course."
    }

    exercises = {
      1  => { type: "multiple_choice", q: "In the data science lifecycle, which stage comes right after collecting the data?",
              opts: ["A) Modelling", "B) Cleaning", "C) Communicating results"], ans: "B" },
      2  => { type: "true_false",      q: "\"Analyse the IPL data\" is a sharp, well-defined data science question.",
              opts: ["True", "False"], ans: "False" },
      3  => { type: "multiple_choice", q: "Which column should be treated as a categorical label even though it contains digits?",
              opts: ["A) Rainfall in millimetres", "B) Number of sixes hit", "C) PIN code of an area"], ans: "C" },
      4  => { type: "multiple_choice", q: "What does pd.json_normalize() do with a nested record such as {\"customer\": {\"city\": \"Pune\"}}?",
              opts: ["A) Flattens nested keys into columns like customer.city", "B) Deletes nested fields and keeps only top-level keys", "C) Converts each record into one long text column"], ans: "A" },
      5  => { type: "true_false",      q: "If df.describe() shows a count lower than the number of rows for a column, that column has missing values.",
              opts: ["True", "False"], ans: "True" },
      6  => { type: "multiple_choice", q: "Rainfall is missing for a few days at several very different weather stations. Which fill is most sensible?",
              opts: ["A) That station's own median", "B) The overall mean of all the stations", "C) Zero, since no rain was recorded"], ans: "A" },
      7  => { type: "multiple_choice", q: "In a sample of 9 order amounts, a Rs 12,000 party order (all others are about Rs 300) has a z-score of only 2.67. Why?",
              opts: ["A) The party order is not really unusual", "B) Z-scores only work for negative values", "C) The outlier inflates the standard deviation"], ans: "C" },
      8  => { type: "true_false",      q: "Min-max scaling can change the order of values, so the smallest value may no longer be the smallest.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "A left join of 1,000 orders to a customer table returns 1,030 rows. What is the most likely cause?",
              opts: ["A) Thirty orders had no matching customer, so pandas added extra rows for them", "B) Some cust_id values appear twice in the customer table", "C) A left join always adds the unmatched customers from the right table as well"], ans: "B" },
      10 => { type: "multiple_choice", q: "Two sections both average 70 marks. Which statistic best shows that one section's marks are far more spread out?",
              opts: ["A) Mean of each section", "B) Mode of each section", "C) Standard deviation"], ans: "C" },
      11 => { type: "true_false",      q: "In a right-skewed distribution, such as food order values, the mean is usually greater than the median.",
              opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "A test detects 95% of real cases, wrongly flags 5% of healthy people, and 2% of people are infected. P(infected | positive) is closest to:",
              opts: ["A) 28%", "B) 95%", "C) 5%"], ans: "A" },
      13 => { type: "true_false",      q: "A 95% confidence interval of Rs 370 to Rs 580 for the mean order value means that 95% of individual customers spend between Rs 370 and Rs 580.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "A hypothesis test gives p = 0.03. What does this mean?",
              opts: ["A) There is a 97% chance that the new method really works", "B) The effect is large enough to matter in practice", "C) A gap this big is rare if there is no effect"], ans: "C" },
      15 => { type: "true_false",      q: "A correlation coefficient close to 0 proves that two variables have no relationship at all.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "A trend line fitted on students who studied 1 to 10 hours is marks = 33 + 5.3 x hours. What should you say about a student who studies 20 hours?",
              opts: ["A) They will score about 139 marks, because the line predicts it", "B) Do not trust the line there: 20 hours is outside the fitted range", "C) They will certainly score 5.3 marks more than a 19-hour student"], ans: "B" },
      17 => { type: "multiple_choice", q: "In pandas, what does the mean of a True/False column (such as late) give you?",
              opts: ["A) The count of True values in the column", "B) The share of rows that are True", "C) Always 0.5, whatever the data"], ans: "B" },
      18 => { type: "true_false",      q: "During EDA, pd.crosstab() is a suitable summary for comparing two categorical columns.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "Which chart best shows how monthly rainfall changes through the year?",
              opts: ["A) Line chart", "B) Pie chart", "C) Scatter plot"], ans: "A" },
      20 => { type: "multiple_choice", q: "Why should you compare a model against a baseline such as \"always predict the mean\"?",
              opts: ["A) To see if the model learned anything", "B) Because baselines are usually more accurate", "C) Because it makes training the model much faster"], ans: "A" },
      21 => { type: "true_false",      q: "Reporting results for a group with only one member can reveal who that person is, even without a name.",
              opts: ["True", "False"], ans: "True" },
      22 => { type: "multiple_choice", q: "In the capstone workflow, what should happen before exploring correlations and group comparisons?",
              opts: ["A) Writing the final recommendation", "B) Building a predictive model", "C) Inspecting and cleaning the data"], ans: "C" }
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

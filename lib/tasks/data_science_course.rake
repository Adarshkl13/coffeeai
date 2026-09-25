require_relative "../data_science_content"

namespace :content do
  desc "Populate the Data Science course with all 20 lessons"
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
      1  => "What Is Data Science?",                   2  => "Asking Good Questions",
      3  => "Data Types and Structures",               4  => "Collecting Data: CSV and JSON",
      5  => "Loading and Inspecting Data",             6  => "Cleaning Missing Data",
      7  => "Duplicates and Outliers",                 8  => "Transforming Data and Feature Engineering",
      9  => "Descriptive Statistics",                  10 => "Understanding Distributions",
      11 => "Probability Basics for Data Science",     12 => "Sampling and the Central Limit Theorem",
      13 => "Hypothesis Testing",                      14 => "Correlation vs Causation",
      15 => "Grouping and Aggregation for Insights",   16 => "The Exploratory Data Analysis Workflow",
      17 => "Data Visualization Principles",           18 => "Introduction to Predictive Modelling",
      19 => "Communicating Results and Data Ethics",   20 => "Capstone EDA Project and Review"
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
      9  => "Summarise any numeric column with measures of centre and spread.",
      10 => "Recognise symmetric, skewed and bimodal distributions and apply the 68-95-99.7 rule.",
      11 => "Use probability rules, conditional probability and Bayes' rule to reason about uncertain events.",
      12 => "See how random samples estimate a population, why the central limit theorem works, and how to build formula and bootstrap confidence intervals.",
      13 => "Decide whether a difference is real or just chance with t-tests, permutation tests, A/B tests and chi-square tests, plan sample size with power, and avoid the multiple-testing trap.",
      14 => "Measure correlation and learn why confounders mean it does not prove causation.",
      15 => "Answer comparison questions with groupby, named aggregations and pivot tables.",
      16 => "Follow a repeatable exploratory data analysis routine from overview to written findings.",
      17 => "Choose the right chart for each question and design charts that are honest and clear.",
      18 => "Build a first predictive model with scikit-learn and judge it against a baseline on held-out data.",
      19 => "Present findings clearly to different audiences and handle personal data responsibly.",
      20 => "Apply the full data science lifecycle to a student performance dataset and review the course."
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
              opts: ["A) The overall mean of all the stations", "B) That station's own median", "C) Zero, since no rain was recorded"], ans: "B" },
      7  => { type: "multiple_choice", q: "In a sample of 9 order amounts, a Rs 12,000 party order (all others are about Rs 300) has a z-score of only 2.67. Why?",
              opts: ["A) The party order is not really unusual", "B) Z-scores only work for negative values", "C) The outlier inflates the standard deviation"], ans: "C" },
      8  => { type: "true_false",      q: "Min-max scaling can change the order of values, so the smallest value may no longer be the smallest.",
              opts: ["True", "False"], ans: "False" },
      9  => { type: "multiple_choice", q: "Two sections both average 70 marks. Which statistic best shows that one section's marks are far more spread out?",
              opts: ["A) Standard deviation", "B) Mean of each section", "C) Mode of each section"], ans: "A" },
      10 => { type: "true_false",      q: "In a right-skewed distribution, such as food order values, the mean is usually greater than the median.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "A test detects 95% of real cases, wrongly flags 5% of healthy people, and 2% of people are infected. P(infected | positive) is closest to:",
              opts: ["A) 95%", "B) 28%", "C) 5%"], ans: "B" },
      12 => { type: "true_false",      q: "A 95% confidence interval of Rs 370 to Rs 580 for the mean order value means that 95% of individual customers spend between Rs 370 and Rs 580.",
              opts: ["True", "False"], ans: "False" },
      13 => { type: "multiple_choice", q: "A hypothesis test gives p = 0.03. What does this mean?",
              opts: ["A) There is a 97% chance that the new method really works", "B) The effect is large enough to matter in practice", "C) A gap this big is rare if there is no effect"], ans: "C" },
      14 => { type: "true_false",      q: "A correlation coefficient close to 0 proves that two variables have no relationship at all.",
              opts: ["True", "False"], ans: "False" },
      15 => { type: "multiple_choice", q: "In pandas, what does the mean of a True/False column (such as late) give you?",
              opts: ["A) The share of rows that are True", "B) The count of True values in the column", "C) Always 0.5, whatever the data"], ans: "A" },
      16 => { type: "true_false",      q: "During EDA, pd.crosstab() is a suitable summary for comparing two categorical columns.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "Which chart best shows how monthly rainfall changes through the year?",
              opts: ["A) Pie chart", "B) Line chart", "C) Scatter plot"], ans: "B" },
      18 => { type: "multiple_choice", q: "Why should you compare a model against a baseline such as \"always predict the mean\"?",
              opts: ["A) To see if the model learned anything", "B) Because baselines are usually more accurate", "C) Because it makes training the model much faster"], ans: "A" },
      19 => { type: "true_false",      q: "Reporting results for a group with only one member can reveal who that person is, even without a name.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "In the capstone workflow, what should happen before exploring correlations and group comparisons?",
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

require_relative "../sql_content"

namespace :content do
  desc "Create SQL course and populate all 20 lessons"
  task sql: :environment do
    course = Course.find_or_create_by!(slug: "sql") do |c|
      c.title       = "SQL"
      c.description = "SQL is the universal language of data. Learn to create databases, query millions of records, join tables, aggregate data, and manage transactions — skills used by every developer, analyst, and data scientist."
      c.color       = "#0ea5e9"
      c.icon        = "🗄️"
      c.position    = 10
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to SQL",          2  => "CREATE TABLE and Data Types",
      3  => "INSERT INTO",                   4  => "SELECT Queries",
      5  => "WHERE Clause",                  6  => "ORDER BY and LIMIT",
      7  => "UPDATE and DELETE",             8  => "Aggregate Functions",
      9  => "GROUP BY and HAVING",           10 => "INNER JOIN",
      11 => "LEFT JOIN and RIGHT JOIN",      12 => "Subqueries",
      13 => "DISTINCT and Aliases",          14 => "String Functions",
      15 => "Date and Time Functions",       16 => "Indexes",
      17 => "Constraints",                   18 => "Transactions",
      19 => "Views",                         20 => "SQL Review"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "What does SQL stand for?",
              opts: ["A) Simple Query Logic", "B) Structured Query Language", "C) Standard Query List"], ans: "B" },
      2  => { type: "multiple_choice", q: "Which SQL statement creates a new table?",
              opts: ["A) NEW TABLE", "B) ADD TABLE", "C) CREATE TABLE"], ans: "C" },
      3  => { type: "multiple_choice", q: "Which statement adds a new row to a table?",
              opts: ["A) ADD INTO", "B) INSERT INTO", "C) PUT INTO"], ans: "B" },
      4  => { type: "true_false",      q: "SELECT * FROM table retrieves all columns and all rows from the table.",
              opts: ["True", "False"], ans: "True" },
      5  => { type: "multiple_choice", q: "Which clause filters rows in a SELECT query?",
              opts: ["A) FILTER", "B) HAVING", "C) WHERE"], ans: "C" },
      6  => { type: "true_false",      q: "ORDER BY sorts results in ascending order by default.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "What happens if you run UPDATE without a WHERE clause?",
              opts: ["A) Nothing changes", "B) Only the first row is updated", "C) ALL rows are updated"], ans: "C" },
      8  => { type: "multiple_choice", q: "Which function counts all rows including those with NULL values?",
              opts: ["A) COUNT(column)", "B) COUNT(*)", "C) SUM(*)"], ans: "B" },
      9  => { type: "true_false",      q: "HAVING filters groups after GROUP BY, similar to how WHERE filters rows.",
              opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "INNER JOIN returns:",
              opts: ["A) All rows from both tables", "B) Only rows with matches in BOTH tables", "C) All rows from the left table"], ans: "B" },
      11 => { type: "true_false",      q: "LEFT JOIN returns all rows from the left table, even if there is no match in the right table.",
              opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "A subquery that returns multiple rows must use which operator?",
              opts: ["A) =", "B) IS", "C) IN"], ans: "C" },
      13 => { type: "multiple_choice", q: "Which keyword removes duplicate values from SELECT results?",
              opts: ["A) UNIQUE", "B) DISTINCT", "C) DIFFERENT"], ans: "B" },
      14 => { type: "true_false",      q: "In SQL, the || operator is used for string concatenation.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Which is the recommended format for storing dates in SQLite?",
              opts: ["A) '15/01/2024'", "B) 20240115", "C) '2024-01-15'"], ans: "C" },
      16 => { type: "true_false",      q: "PRIMARY KEY columns are automatically indexed in SQL databases.",
              opts: ["True", "False"], ans: "True" },
      17 => { type: "multiple_choice", q: "Which constraint ensures a column value is not empty?",
              opts: ["A) DEFAULT", "B) NOT NULL", "C) REQUIRED"], ans: "B" },
      18 => { type: "multiple_choice", q: "Which SQL command saves all changes made during a transaction?",
              opts: ["A) SAVE", "B) ROLLBACK", "C) COMMIT"], ans: "C" },
      19 => { type: "true_false",      q: "A SQL VIEW stores a saved query definition, not the actual data.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "Which SQL operation is used to combine rows from two tables?",
              opts: ["A) MERGE", "B) COMBINE", "C) JOIN"], ans: "C" }
    }

    SqlContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], body: data[:body], starter_code: data[:starter_code])

      ex = exercises[position]
      Exercise.find_or_create_by!(course_lesson: lesson) do |e|
        e.exercise_type = ex[:type]; e.question = ex[:q]
        e.options = ex[:opts]; e.correct_answer = ex[:ans]
      end
      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

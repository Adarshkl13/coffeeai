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
      1  => { type: "multiple_choice", q: "What does it mean that SQL is a declarative language?",
              opts: ["A) You write step-by-step loops that tell the database how to scan each row", "B) You describe what data you want, and the database works out how to retrieve it", "C) It can only declare tables, not query them"], ans: "B" },
      2  => { type: "multiple_choice", q: "How does DROP TABLE IF EXISTS employees; differ from DROP TABLE employees;?",
              opts: ["A) It only drops the table if the table is empty", "B) It moves the table to an archive instead of deleting it", "C) It does not raise an error when the table does not exist"], ans: "C" },
      3  => { type: "multiple_choice", q: "Why does the lesson recommend always listing column names in INSERT statements?",
              opts: ["A) Named inserts run much faster than inserts without column names", "B) The INSERT keeps working correctly if columns are later added to the table", "C) SQL rejects every INSERT statement that does not list its columns"], ans: "B" },
      4  => { type: "true_false",      q: "Using SELECT * in production code is recommended because the query automatically adapts when columns are added or reordered.",
              opts: ["True", "False"], ans: "False" },
      5  => { type: "multiple_choice", q: "Which pattern matches 'Bob' and 'Rob' but NOT 'Brob'?",
              opts: ["A) LIKE '_ob'", "B) LIKE '%ob'", "C) LIKE 'ob%'"], ans: "A" },
      6  => { type: "true_false",      q: "Without ORDER BY, a SELECT query is guaranteed to return rows in the order they were inserted.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "What happens if you run UPDATE without a WHERE clause?",
              opts: ["A) Nothing changes", "B) ALL rows are updated", "C) Only the first row is updated"], ans: "B" },
      8  => { type: "multiple_choice", q: "Which function counts all rows including those with NULL values?",
              opts: ["A) COUNT(column)", "B) SUM(*)", "C) COUNT(*)"], ans: "C" },
      9  => { type: "true_false",      q: "HAVING filters groups after GROUP BY, similar to how WHERE filters rows.",
              opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "INNER JOIN returns:",
              opts: ["A) Only rows with matches in BOTH tables", "B) All rows from both tables", "C) All rows from the left table"], ans: "A" },
      11 => { type: "true_false",      q: "LEFT JOIN returns all rows from the left table, even if there is no match in the right table.",
              opts: ["True", "False"], ans: "True" },
      12 => { type: "multiple_choice", q: "A subquery that returns multiple rows must use which operator?",
              opts: ["A) =", "B) IS", "C) IN"], ans: "C" },
      13 => { type: "multiple_choice", q: "What does COALESCE(bonus, 0) return for a row where bonus is NULL?",
              opts: ["A) 0", "B) NULL", "C) An error, because NULL cannot be compared"], ans: "A" },
      14 => { type: "true_false",      q: "In standard SQL (and in SQLite and PostgreSQL), || concatenates strings, whereas MySQL uses the CONCAT() function instead.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "Which is the recommended format for storing dates in SQLite?",
              opts: ["A) '15/01/2024'", "B) 20240115", "C) '2024-01-15'"], ans: "C" },
      16 => { type: "true_false",      q: "Adding an index always makes every operation on a table faster, so you should index every column.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "Which constraint ensures a column value is not empty?",
              opts: ["A) DEFAULT", "B) NOT NULL", "C) REQUIRED"], ans: "B" },
      18 => { type: "multiple_choice", q: "Which SQL command saves all changes made during a transaction?",
              opts: ["A) COMMIT", "B) SAVE", "C) ROLLBACK"], ans: "A" },
      19 => { type: "true_false",      q: "A SQL VIEW stores a saved query definition, not the actual data.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "In what order does the database logically process these clauses?",
              opts: ["A) FROM → WHERE → GROUP BY → HAVING → SELECT", "B) SELECT → FROM → WHERE → GROUP BY → HAVING", "C) FROM → GROUP BY → WHERE → HAVING → SELECT"], ans: "A" }
    }

    SqlContent::LESSONS.each do |position, data|
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

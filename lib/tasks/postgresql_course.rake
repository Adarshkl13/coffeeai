require_relative "../postgresql_content"

namespace :content do
  desc "Create PostgreSQL course and populate all 20 lessons"
  task postgresql: :environment do
    course = Course.find_or_create_by!(slug: "postgresql") do |c|
      c.title       = "PostgreSQL"
      c.description = "PostgreSQL is the world's most advanced open-source relational database. Master SERIAL, CTEs, window functions, JSONB, arrays, full-text search, roles, materialized views, and EXPLAIN ANALYZE."
      c.color       = "#336791"
      c.icon        = "🐘"
      c.position    = 12
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to PostgreSQL",       2  => "PostgreSQL Data Types",
      3  => "SERIAL, PRIMARY KEY, and IDENTITY", 4  => "String Functions and Operators",
      5  => "Date and Time Functions",           6  => "Aggregate Functions and string_agg",
      7  => "JOINs Including FULL OUTER JOIN",   8  => "Common Table Expressions (CTEs)",
      9  => "Window Functions",                  10 => "Subqueries and the RETURNING Clause",
      11 => "Views and Materialized Views",      12 => "Indexes and EXPLAIN ANALYZE",
      13 => "Transactions and Savepoints",       14 => "PostgreSQL JSON and JSONB",
      15 => "Roles and User Management",         16 => "Full-Text Search",
      17 => "Stored Procedures and Functions",   18 => "PostgreSQL Array Types",
      19 => "PostgreSQL with Applications",      20 => "PostgreSQL Review"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which port does PostgreSQL use by default?",
              opts: ["A) 3306", "B) 1521", "C) 5432"], ans: "C" },
      2  => { type: "multiple_choice", q: "Which PostgreSQL operator is used for type casting?",
              opts: ["A) CAST()", "B) ::", "C) ->"], ans: "B" },
      3  => { type: "multiple_choice", q: "Which PostgreSQL keyword auto-generates a unique integer ID for each row?",
              opts: ["A) AUTO_INCREMENT", "B) IDENTITY", "C) SERIAL"], ans: "C" },
      4  => { type: "multiple_choice", q: "Which PostgreSQL operator concatenates strings?",
              opts: ["A) CONCAT()", "B) ||", "C) +"], ans: "B" },
      5  => { type: "multiple_choice", q: "Which PostgreSQL function truncates a timestamp to a specific precision like 'month' or 'week'?",
              opts: ["A) EXTRACT()", "B) DATE_TRUNC()", "C) TRUNC()"], ans: "B" },
      6  => { type: "multiple_choice", q: "Which PostgreSQL aggregate function is equivalent to MySQL's GROUP_CONCAT?",
              opts: ["A) array_agg()", "B) string_agg()", "C) concat_agg()"], ans: "B" },
      7  => { type: "true_false", q: "PostgreSQL natively supports FULL OUTER JOIN, unlike MySQL.",
              opts: ["True", "False"], ans: "True" },
      8  => { type: "multiple_choice", q: "Which SQL clause is used to define a Common Table Expression (CTE)?",
              opts: ["A) DEFINE", "B) WITH", "C) NAMED"], ans: "B" },
      9  => { type: "multiple_choice", q: "Which window function assigns a unique sequential number to each row with NO gaps even for ties?",
              opts: ["A) RANK()", "B) DENSE_RANK()", "C) ROW_NUMBER()"], ans: "C" },
      10 => { type: "true_false", q: "The PostgreSQL RETURNING clause allows you to retrieve data from INSERT, UPDATE, and DELETE statements.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Which type of view stores pre-computed query results on disk and requires a manual refresh?",
              opts: ["A) Indexed view", "B) Materialized view", "C) Stored view"], ans: "B" },
      12 => { type: "multiple_choice", q: "Which PostgreSQL index type is best suited for JSONB containment queries and arrays?",
              opts: ["A) B-tree", "B) BRIN", "C) GIN"], ans: "C" },
      13 => { type: "true_false", q: "PostgreSQL DDL statements (like CREATE TABLE) are transactional and can be rolled back.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "Which PostgreSQL JSON type stores data in binary format and supports indexing?",
              opts: ["A) JSON", "B) JSONB", "C) JSONTEXT"], ans: "B" },
      15 => { type: "true_false", q: "You should never connect a production application using the PostgreSQL superuser.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Which operator is used to match a tsvector against a tsquery in PostgreSQL full-text search?",
              opts: ["A) MATCH", "B) @@", "C) CONTAINS"], ans: "B" },
      17 => { type: "multiple_choice", q: "How do you call a stored procedure in PostgreSQL?",
              opts: ["A) EXECUTE procedure()", "B) SELECT procedure()", "C) CALL procedure()"], ans: "C" },
      18 => { type: "multiple_choice", q: "Which PostgreSQL operator checks if an array contains another array?",
              opts: ["A) &&", "B) @>", "C) <@"], ans: "B" },
      19 => { type: "true_false", q: "Parameterized queries (using $1, $2, etc.) prevent SQL injection in PostgreSQL.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "Which PostgreSQL feature returns data from an INSERT or UPDATE without a separate SELECT?",
              opts: ["A) OUTPUT", "B) RETURNING", "C) FETCH"], ans: "B" }
    }

    PostgresqlContent::LESSONS.each do |position, data|
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

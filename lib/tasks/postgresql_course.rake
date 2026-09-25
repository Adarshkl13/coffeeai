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
      1  => { type: "multiple_choice", q: "Which query shows the version of the PostgreSQL server you are connected to?",
              opts: ["A) SELECT version();", "B) SELECT @@version;", "C) SHOW DATABASE VERSION;"], ans: "A" },
      2  => { type: "multiple_choice", q: "Which expression uses PostgreSQL's shorthand cast syntax to turn the text '42' into an integer?",
              opts: ["A) '42'->INTEGER", "B) '42'::INTEGER", "C) '42' AS INTEGER"], ans: "B" },
      3  => { type: "multiple_choice", q: "Which is the modern, SQL-standard way to auto-generate IDs in PostgreSQL (recommended over SERIAL)?",
              opts: ["A) GENERATED ALWAYS AS IDENTITY", "B) AUTO_INCREMENT", "C) SEQUENCE_ID"], ans: "A" },
      4  => { type: "multiple_choice", q: "What does SELECT 'Hello' || ' ' || 'World'; return in PostgreSQL?",
              opts: ["A) true, because || is the logical OR operator", "B) An error, because strings can only be joined with CONCAT()", "C) Hello World"], ans: "C" },
      5  => { type: "multiple_choice", q: "What does DATE_TRUNC('month', '2024-06-15'::DATE) return?",
              opts: ["A) 6", "B) 2024-06-01", "C) 2024-06-30"], ans: "B" },
      6  => { type: "multiple_choice", q: "Which PostgreSQL aggregate function is equivalent to MySQL's GROUP_CONCAT?",
              opts: ["A) array_agg()", "B) string_agg()", "C) concat_agg()"], ans: "B" },
      7  => { type: "true_false",      q: "PostgreSQL natively supports FULL OUTER JOIN, unlike MySQL.",
              opts: ["True", "False"], ans: "True" },
      8  => { type: "multiple_choice", q: "Which capability do CTEs have that ordinary subqueries do not?",
              opts: ["A) Recursion with WITH RECURSIVE, e.g. walking an org chart", "B) Permanently storing their results on disk", "C) Always running faster than the equivalent subquery"], ans: "A" },
      9  => { type: "multiple_choice", q: "Which window function gives every row a different number (1, 2, 3…), even when rows have tied values?",
              opts: ["A) ROW_NUMBER()", "B) RANK()", "C) DENSE_RANK()"], ans: "A" },
      10 => { type: "true_false",      q: "The RETURNING clause works only with INSERT statements, not with UPDATE or DELETE.",
              opts: ["True", "False"], ans: "False" },
      11 => { type: "multiple_choice", q: "Which type of view stores pre-computed query results on disk and requires a manual refresh?",
              opts: ["A) Indexed view", "B) Stored view", "C) Materialized view"], ans: "C" },
      12 => { type: "multiple_choice", q: "Which PostgreSQL index type is best suited for JSONB containment queries and arrays?",
              opts: ["A) B-tree", "B) GIN", "C) BRIN"], ans: "B" },
      13 => { type: "true_false",      q: "PostgreSQL DDL statements (like CREATE TABLE) are transactional and can be rolled back.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "Which JSONB operator returns a field's value as text rather than as JSON?",
              opts: ["A) ->", "B) @>", "C) ->>"], ans: "C" },
      15 => { type: "true_false",      q: "In PostgreSQL, users and groups are completely separate object types, so a group cannot be created with CREATE ROLE.",
              opts: ["True", "False"], ans: "False" },
      16 => { type: "multiple_choice", q: "Which operator is used to match a tsvector against a tsquery in PostgreSQL full-text search?",
              opts: ["A) @@", "B) MATCH", "C) CONTAINS"], ans: "A" },
      17 => { type: "multiple_choice", q: "How do you call a stored procedure in PostgreSQL?",
              opts: ["A) EXECUTE procedure()", "B) SELECT procedure()", "C) CALL procedure()"], ans: "C" },
      18 => { type: "multiple_choice", q: "Which PostgreSQL operator checks if an array contains another array?",
              opts: ["A) &&", "B) @>", "C) <@"], ans: "B" },
      19 => { type: "true_false",      q: "Building SQL by concatenating user input into the query string is safe as long as the application connects with a non-superuser role.",
              opts: ["True", "False"], ans: "False" },
      20 => { type: "multiple_choice", q: "What does SELECT DISTINCT ON (department_id) department_id, name, salary FROM employees ORDER BY department_id, salary DESC; return?",
              opts: ["A) Every employee whose salary is unique", "B) Only the department with the highest total salary", "C) The highest-paid employee in each department"], ans: "C" }
    }

    PostgresqlContent::LESSONS.each do |position, data|
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

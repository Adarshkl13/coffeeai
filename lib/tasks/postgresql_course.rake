require_relative "../postgresql_content"

namespace :content do
  desc "Create PostgreSQL course and populate all 21 lessons"
  task postgresql: :environment do
    course_description = "Learn real PostgreSQL 17 in your browser: data types, constraints, database design and normalization, joins, CTEs, window functions, upserts and MERGE, transactions and MVCC, indexes and EXPLAIN ANALYZE, JSONB, arrays, full-text search, views, functions, triggers, roles, row-level security and backups."
    course = Course.find_or_create_by!(slug: "postgresql") do |c|
      c.title       = "PostgreSQL"
      c.description = course_description
      c.color       = "#336791"
      c.icon        = "🐘"
      c.position    = 12
      c.published   = true
    end
    course.update!(description: course_description)
    puts "Course: #{course.title}"

    titles = {
      1   => "Introduction to PostgreSQL",
      2   => "Data Types and Casting",
      3   => "Tables, Identity Columns and Constraints",
      4   => "Filtering, Sorting and Text",
      5   => "Dates, Times and Time Zones",
      6   => "Aggregates and GROUP BY",
      7   => "JOINs and DISTINCT ON",
      8   => "Database Design and Normalization",
      9   => "Subqueries, EXISTS and LATERAL",
      10  => "CTEs and Recursive Queries",
      11  => "Window Functions",
      12  => "Changing Data: RETURNING, Upserts and MERGE",
      13  => "Transactions, MVCC and Isolation",
      14  => "Indexes and EXPLAIN ANALYZE",
      15  => "JSON and JSONB",
      16  => "Arrays",
      17  => "Full-Text Search",
      18  => "Views and Materialized Views",
      19  => "Functions, Procedures and Triggers",
      20  => "Roles, Security and Backups",
      21  => "Capstone: Course Registration Database"
    }

    descriptions = {
      1  => "Meet PostgreSQL, connect with psql, and write your first CREATE TABLE, INSERT and SELECT queries.",
      2  => "Choose the right types: numeric for money, text for strings, timestamptz for moments, and cast between them.",
      3  => "Create tables with identity columns and protect your data with PRIMARY KEY, UNIQUE, CHECK and FOREIGN KEY constraints.",
      4  => "Filter and sort rows, handle NULL correctly, add if-then logic with CASE, and clean up text with ILIKE, regex and string functions.",
      5  => "Store moments with timestamptz, convert time zones, do interval maths and group by day, week or month.",
      6  => "Summarise data with GROUP BY, HAVING, FILTER, string_agg and ROLLUP subtotals.",
      7  => "Combine tables with inner, left, full and self joins, find missing matches, and pick the top row per group.",
      8  => "Model one-to-many and many-to-many relationships, normalize a messy table to 3NF, and choose between CHECK, ENUM and a lookup table.",
      9  => "Use scalar subqueries, EXISTS and LATERAL, combine results with UNION, INTERSECT and EXCEPT, and avoid the NOT IN trap with NULLs.",
      10 => "Name the steps of a query with WITH, and walk trees like org charts with WITH RECURSIVE.",
      11 => "Rank rows, compute running totals and moving averages, and compare rows with their group using OVER.",
      12 => "Write data with INSERT, UPDATE and DELETE, get rows back with RETURNING, and upsert with ON CONFLICT or MERGE.",
      13 => "Group statements with BEGIN, COMMIT and SAVEPOINT, understand MVCC, and choose the right isolation level.",
      14 => "Speed up queries with B-tree, expression and partial indexes, and learn to read EXPLAIN ANALYZE output.",
      15 => "Store flexible documents in jsonb, query them with ->, ->>, @> and ?, and index them with GIN.",
      16 => "Store short lists in array columns and search them with ANY, @>, && and unnest.",
      17 => "Build ranked, stemmed search with tsvector, tsquery, websearch_to_tsquery and a GIN index.",
      18 => "Save queries as views, cache heavy results in materialized views, and refresh them.",
      19 => "Write SQL and PL/pgSQL functions, run procedures with CALL, and automate audit logs with triggers.",
      20 => "Apply least-privilege roles and row-level security, connect safely from apps, back up with pg_dump, and see what's new in 17 and 18.",
      21 => "Design and query a complete course-registration database that uses everything from the course."
    }

    exercises = {
      1  => { type: "true_false",      q: "In PostgreSQL, 'Pune' in single quotes is a text value, while \"Pune\" in double quotes is read as the name of a column or table.",
              opts: ["True", "False"], ans: "True" },
      2  => { type: "multiple_choice", q: "An online shop must add up order totals exactly, down to the paisa. Which column type should it use for prices?",
              opts: ["A) real", "B) double precision", "C) numeric(10,2)"], ans: "C" },
      3  => { type: "multiple_choice", q: "Which is the modern, SQL-standard way to auto-generate IDs in PostgreSQL (recommended over SERIAL)?",
              opts: ["A) GENERATED ALWAYS AS IDENTITY", "B) AUTO_INCREMENT", "C) SEQUENCE_ID"], ans: "A" },
      4  => { type: "true_false",      q: "SELECT * FROM contacts WHERE phone = NULL; returns every contact whose phone is missing.",
              opts: ["True", "False"], ans: "False" },
      5  => { type: "multiple_choice", q: "The timestamptz value '2026-03-01 09:00:00+00' is read by a session whose time zone is 'Asia/Kolkata'. What is displayed?",
              opts: ["A) 2026-03-01 09:00:00+00", "B) 2026-03-01 14:30:00+05:30", "C) 2026-03-01 03:30:00+05:30"], ans: "B" },
      6  => { type: "multiple_choice", q: "You want to list only the regions whose total revenue is more than 50000. Where does the condition sum(amount) > 50000 belong?",
              opts: ["A) In the WHERE clause, before GROUP BY", "B) In a HAVING clause after GROUP BY", "C) Inside ORDER BY"], ans: "B" },
      7  => { type: "multiple_choice", q: "Which query lists the departments that have no employees?",
              opts: ["A) SELECT d.name FROM departments d LEFT JOIN employees e ON e.dept_id = d.id WHERE e.id IS NULL;", "B) SELECT d.name FROM departments d JOIN employees e ON e.dept_id = d.id WHERE e.id IS NULL;", "C) SELECT d.name FROM departments d LEFT JOIN employees e ON e.dept_id = d.id WHERE e.id IS NOT NULL;"], ans: "A" },
      8  => { type: "multiple_choice", q: "A table orders(order_id, customer_name, customer_city, ...) repeats the city on every order. After Meera moves, some of her rows still show the old city. What is the standard design fix?",
              opts: ["A) Store customers in their own table and keep only customer_id in orders", "B) Add a UNIQUE constraint on customer_city plus a CHECK that it is never empty", "C) Run every city UPDATE inside a SERIALIZABLE transaction"], ans: "A" },
      9  => { type: "true_false",      q: "If SELECT customer_id FROM orders returns at least one NULL, then WHERE id NOT IN (SELECT customer_id FROM orders) matches no rows at all.",
              opts: ["True", "False"], ans: "True" },
      10 => { type: "multiple_choice", q: "In a WITH RECURSIVE query, what makes the recursion stop?",
              opts: ["A) A LIMIT clause, which every recursive CTE must have", "B) PostgreSQL always stops after 100 levels", "C) The recursive part returns no new rows"], ans: "C" },
      11 => { type: "multiple_choice", q: "Which window function gives every row a different number (1, 2, 3…), even when rows have tied values?",
              opts: ["A) ROW_NUMBER()", "B) RANK()", "C) DENSE_RANK()"], ans: "A" },
      12 => { type: "multiple_choice", q: "In INSERT INTO stock ... ON CONFLICT (sku) DO UPDATE SET qty = stock.qty + EXCLUDED.qty, what is EXCLUDED.qty?",
              opts: ["A) The qty value that is already stored in the table", "B) The qty of a row that was deleted", "C) The qty from the row you tried to insert"], ans: "C" },
      13 => { type: "true_false",      q: "In PostgreSQL, a REPEATABLE READ transaction does not see phantom rows, because all its queries read from the same snapshot.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "A table has a plain B-tree index on users(email) and no other index. Which condition cannot use that index?",
              opts: ["A) WHERE email = 'a@b.com'", "B) WHERE lower(email) = 'a@b.com'", "C) WHERE email > 'm' AND email < 'n'"], ans: "B" },
      15 => { type: "multiple_choice", q: "Which JSONB operator returns a field's value as text rather than as JSON?",
              opts: ["A) ->", "B) @>", "C) ->>"], ans: "C" },
      16 => { type: "multiple_choice", q: "A row has tags = '{sql,python,ml}'. What does tags[1] return?",
              opts: ["A) sql", "B) python", "C) NULL, because arrays start at 0"], ans: "A" },
      17 => { type: "true_false",      q: "A regular B-tree index is the right index type for speeding up tsvector @@ tsquery full-text searches.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "New orders were inserted, but a materialized view built on the orders table still shows the old totals. What fixes it?",
              opts: ["A) Running VACUUM on the orders table", "B) REFRESH MATERIALIZED VIEW on the view", "C) Nothing: materialized views update themselves"], ans: "B" },
      19 => { type: "multiple_choice", q: "How do you run a stored procedure named apply_discount in PostgreSQL?",
              opts: ["A) EXECUTE apply_discount(10);", "B) RUN apply_discount(10);", "C) CALL apply_discount(10);"], ans: "C" },
      20 => { type: "true_false",      q: "Building SQL by concatenating user input into the query string is safe as long as the application connects with a non-superuser role.",
              opts: ["True", "False"], ans: "False" },
      21 => { type: "multiple_choice", q: "In the capstone, enrollments has PRIMARY KEY (student_id, course_code). What happens when a plain INSERT tries to enrol the same student in the same course a second time?",
              opts: ["A) A second, duplicate row is added", "B) The INSERT fails with a duplicate key error", "C) The first row is silently replaced by the new one"], ans: "B" }
    }

    PostgresqlContent::LESSONS.each do |position, data|
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

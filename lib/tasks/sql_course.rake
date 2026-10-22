require_relative "../sql_content"

namespace :content do
  desc "Create SQL course and populate all lessons"
  task sql: :environment do
    course = Course.find_or_initialize_by(slug: "sql").tap do |c|
      c.title       = "SQL"
      c.description = "SQL is the common language of data. Design tables with the right types and constraints. Query and join data, and handle NULLs. Write CTEs and window functions, and make queries fast with indexes. Keep data safe with transactions, and set rules with triggers. You do it all on real SQLite."
      c.color       = "#0ea5e9"
      c.icon        = "🗄️"
      c.position    = 10
      c.published   = true
      c.save!
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to SQL",              2  => "CREATE TABLE and Data Types",
      3  => "Inserting Data",                   4  => "SELECT Queries",
      5  => "Filtering with WHERE",             6  => "NULL and Three-Valued Logic",
      7  => "ORDER BY, LIMIT and Pagination",   8  => "UPDATE, DELETE and Upserts",
      9  => "Aggregates, GROUP BY and HAVING",  10 => "Constraints and Keys",
      11 => "INNER JOIN",                       12 => "Outer Joins and Self Joins",
      13 => "Normalisation and Schema Design",  14 => "Subqueries and Set Operations",
      15 => "CASE and Built-in Functions",      16 => "CTEs and Views",
      17 => "Window Functions",                 18 => "Indexes and Query Plans",
      19 => "Transactions and ACID",            20 => "Triggers",
      21 => "Capstone: Online Store Analytics"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which family of SQL statements does CREATE TABLE belong to?",
              opts: ["A) DML (Data Manipulation Language)", "B) DDL (Data Definition Language)", "C) TCL (Transaction Control Language)"], ans: "B" },
      2  => { type: "true_false",      q: "A table has id as its primary key. Two rows can still have the same name and price, as long as their id values are different.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "Someone will add a new column to the books table next month. Which INSERT still works after that change?",
              opts: ["A) INSERT INTO books VALUES ('Godan', 'Premchand', 25000);", "B) Neither. You must rewrite every INSERT when a column is added", "C) INSERT INTO books (title, author, price_paise) VALUES ('Godan', 'Premchand', 25000);"], ans: "C" },
      4  => { type: "multiple_choice", q: "What does SELECT 7 / 2; return in SQLite?",
              opts: ["A) 3.5", "B) 3", "C) 4"], ans: "B" },
      5  => { type: "multiple_choice", q: "Which name matches the pattern LIKE '_ohan'?",
              opts: ["A) Rohan", "B) Sohana", "C) Trohan"], ans: "A" },
      6  => { type: "true_false",      q: "SELECT COUNT(*) FROM staff WHERE bonus = NULL; counts the staff whose bonus is missing.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "You split a leaderboard into pages with ORDER BY score DESC, id. Why is id added?",
              opts: ["A) LIMIT and OFFSET only work when the primary key is in ORDER BY", "B) It makes the query use less memory", "C) It breaks ties between equal scores, so every page always shows the same rows"], ans: "C" },
      8  => { type: "multiple_choice", q: "In INSERT ... ON CONFLICT (sku) DO UPDATE SET qty = inventory.qty + excluded.qty, what does excluded refer to?",
              opts: ["A) The row already stored in the table", "B) The new row you tried to insert", "C) The rows that were deleted by the statement"], ans: "B" },
      9  => { type: "multiple_choice", q: "What is wrong with: SELECT state, SUM(amount) FROM sales WHERE SUM(amount) > 5000 GROUP BY state;",
              opts: ["A) You cannot use an aggregate in WHERE. The condition goes in HAVING", "B) GROUP BY must come before WHERE", "C) SUM cannot be used with GROUP BY"], ans: "A" },
      10 => { type: "true_false",      q: "In SQLite, foreign key constraints are only checked after PRAGMA foreign_keys = ON; has been run on that connection.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Aditi has 2 enrollments and Dinesh has none. How many rows does students INNER JOIN enrollments return for these two students together?",
              opts: ["A) 3", "B) 1", "C) 2"], ans: "C" },
      12 => { type: "multiple_choice", q: "After FROM customers c LEFT JOIN orders o ON o.customer_id = c.id, you add WHERE o.amount > 1000. What happens?",
              opts: ["A) All customers are kept, and small orders show as NULL", "B) Customers without a big order are dropped, so it acts like an INNER JOIN", "C) The query fails because WHERE cannot come after a LEFT JOIN"], ans: "B" },
      13 => { type: "true_false",      q: "Storing unit_price_paise in order_items breaks normalisation, because the products table already stores the price.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "Query A returns 4 different names. Query B returns 2 different names. Exactly one name is in both. How many rows do A UNION B and A UNION ALL B return?",
              opts: ["A) 5 and 6", "B) 6 and 5", "C) 6 and 6"], ans: "A" },
      15 => { type: "multiple_choice", q: "Uday was born on 2000-12-01. On 2026-09-25, what does 'current year minus birth year' give, and what is his real age?",
              opts: ["A) 25 and 25", "B) 26 and 25", "C) 26 and 26"], ans: "B" },
      16 => { type: "true_false",      q: "A normal (non-materialised) view stores a copy of its results. So you must refresh it before it shows newly inserted rows.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "Sales are 900, 700, 700 and 500. What does RANK() OVER (ORDER BY sales DESC) return, in that order?",
              opts: ["A) 1, 2, 3, 4", "B) 1, 2, 2, 3", "C) 1, 2, 2, 4"], ans: "C" },
      18 => { type: "multiple_choice", q: "A table has a composite index on (status, order_date). Which WHERE clause can NOT use it for a normal index search?",
              opts: ["A) WHERE status = 'paid'", "B) WHERE status = 'paid' AND order_date >= '2026-09-01'", "C) WHERE order_date >= '2026-09-01'"], ans: "C" },
      19 => { type: "true_false",      q: "ROLLBACK TO SAVEPOINT undoes only the changes made after that savepoint. The transaction stays open.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "Inside an AFTER UPDATE trigger on products, what does OLD.price_paise hold?",
              opts: ["A) The price before the UPDATE ran", "B) The new price the UPDATE is saving", "C) The first price the row had when it was inserted"], ans: "A" },
      21 => { type: "multiple_choice", q: "Product prices change every month. Which expression gives the right revenue for past orders?",
              opts: ["A) SUM(i.qty * i.unit_price_paise) from order_items", "B) SUM(p.price_paise) from products", "C) SUM(i.qty) * MAX(p.price_paise)"], ans: "A" }
    }

    descriptions = {
      1  => "Learn what SQL and relational databases are, and run your first query on a small students table.",
      2  => "Create tables with CREATE TABLE and choose the right data type for each column.",
      3  => "Add rows to a table with INSERT, and learn why you should always name the columns.",
      4  => "Read data with SELECT, choose columns, rename them with AS and remove duplicates with DISTINCT.",
      5  => "Pick only the rows you need with WHERE, using AND, OR, IN, BETWEEN and LIKE.",
      6  => "Understand NULL, why = NULL never matches, and how to use IS NULL and COALESCE.",
      7  => "Sort results with ORDER BY, and split them into pages with LIMIT, OFFSET and keyset paging.",
      8  => "Change rows with UPDATE, remove them with DELETE, and insert or update in one step with upserts.",
      9  => "Summarise data with COUNT, SUM and AVG, make one row per group with GROUP BY, and filter groups with HAVING.",
      10 => "Protect your data with primary keys, foreign keys, UNIQUE, NOT NULL and CHECK constraints.",
      11 => "Combine rows from two or more tables with INNER JOIN.",
      12 => "Keep rows that have no match with LEFT JOIN, and join a table to itself with a self join.",
      13 => "Split one big flat table into clean, related tables so each fact is stored in one place.",
      14 => "Use a query inside another query, and combine results with UNION, INTERSECT and EXCEPT.",
      15 => "Use CASE for if-then logic, and built-in functions for text, numbers and dates.",
      16 => "Break long queries into named steps with CTEs, and save queries as views.",
      17 => "Rank rows, find running totals and compare rows with window functions.",
      18 => "Make queries fast with indexes, and read query plans to see how the database runs a query.",
      19 => "Group changes into transactions so they all succeed or all fail, and learn what ACID means.",
      20 => "Run SQL automatically when rows change, using triggers for audit logs and checks.",
      21 => "Build and query a small online store database, using everything from the course."
    }

    SqlContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], description: descriptions[position], body: data[:body], starter_code: data[:starter_code])

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

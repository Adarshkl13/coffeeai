require_relative "../sql_content"

namespace :content do
  desc "Create SQL course and populate all 20 lessons"
  task sql: :environment do
    course = Course.find_or_create_by!(slug: "sql") do |c|
      c.title       = "SQL"
      c.description = "SQL is the universal language of data. Design tables with the right types and constraints, query and join data, handle NULLs, write CTEs and window functions, tune queries with indexes, and keep data safe with transactions — all on real SQLite."
      c.color       = "#0ea5e9"
      c.icon        = "🗄️"
      c.position    = 10
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to SQL",              2  => "CREATE TABLE and Data Types",
      3  => "Inserting Data",                   4  => "SELECT Queries",
      5  => "Filtering with WHERE",             6  => "NULL and Three-Valued Logic",
      7  => "ORDER BY, LIMIT and Pagination",   8  => "UPDATE, DELETE and Upserts",
      9  => "Aggregates, GROUP BY and HAVING",  10 => "Constraints and Keys",
      11 => "INNER JOIN",                       12 => "Outer Joins and Self Joins",
      13 => "Normalization and Schema Design",  14 => "Subqueries and Set Operations",
      15 => "CASE and Built-in Functions",      16 => "CTEs and Views",
      17 => "Window Functions",                 18 => "Indexes and Query Plans",
      19 => "Transactions and ACID",            20 => "Capstone: Online Store Analytics"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which family of SQL statements does CREATE TABLE belong to?",
              opts: ["A) DML — Data Manipulation Language", "B) DDL — Data Definition Language", "C) TCL — Transaction Control Language"], ans: "B" },
      2  => { type: "true_false",      q: "In a table whose primary key is id, two rows can still have exactly the same name and price, as long as their id values differ.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "Someone will add a new column to the books table next month. Which INSERT keeps working correctly after that change?",
              opts: ["A) INSERT INTO books VALUES ('Godan', 'Premchand', 25000);", "B) Neither; every INSERT must be rewritten when a column is added", "C) INSERT INTO books (title, author, price_paise) VALUES ('Godan', 'Premchand', 25000);"], ans: "C" },
      4  => { type: "multiple_choice", q: "What does SELECT 7 / 2; return in SQLite?",
              opts: ["A) 3.5", "B) 3", "C) 4"], ans: "B" },
      5  => { type: "multiple_choice", q: "Which name matches the pattern LIKE '_ohan'?",
              opts: ["A) Rohan", "B) Sohana", "C) Trohan"], ans: "A" },
      6  => { type: "true_false",      q: "SELECT COUNT(*) FROM staff WHERE bonus = NULL; counts the staff whose bonus is missing.",
              opts: ["True", "False"], ans: "False" },
      7  => { type: "multiple_choice", q: "You paginate a leaderboard with ORDER BY score DESC, id. Why is id added?",
              opts: ["A) LIMIT and OFFSET only work when the primary key is in ORDER BY", "B) It makes the query use less memory", "C) It breaks ties between equal scores, so every page is deterministic"], ans: "C" },
      8  => { type: "multiple_choice", q: "In INSERT ... ON CONFLICT (sku) DO UPDATE SET qty = inventory.qty + excluded.qty, what does excluded refer to?",
              opts: ["A) The row already stored in the table", "B) The new row you tried to insert", "C) The rows that were deleted by the statement"], ans: "B" },
      9  => { type: "multiple_choice", q: "What is wrong with: SELECT city, SUM(amount) FROM sales WHERE SUM(amount) > 5000 GROUP BY city;",
              opts: ["A) An aggregate cannot be used in WHERE; the condition belongs in HAVING", "B) GROUP BY must be written before WHERE", "C) SUM cannot be combined with GROUP BY"], ans: "A" },
      10 => { type: "true_false",      q: "In SQLite, foreign key constraints are enforced only after PRAGMA foreign_keys = ON; has been run on that connection.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "Aditi has 2 enrollments and Dinesh has none. How many rows does students INNER JOIN enrollments return for these two students together?",
              opts: ["A) 3", "B) 1", "C) 2"], ans: "C" },
      12 => { type: "multiple_choice", q: "After FROM customers c LEFT JOIN orders o ON o.customer_id = c.id, you add WHERE o.amount > 1000. What happens?",
              opts: ["A) All customers are kept, and small orders show as NULL", "B) Customers without a big order disappear, so it behaves like an INNER JOIN", "C) The query fails because WHERE cannot follow a LEFT JOIN"], ans: "B" },
      13 => { type: "true_false",      q: "Storing unit_price_paise in order_items breaks normalization, because the price is already stored in the products table.",
              opts: ["True", "False"], ans: "False" },
      14 => { type: "multiple_choice", q: "SELECT name FROM staff WHERE id NOT IN (SELECT mentor_id FROM staff); returns no rows, although some staff mentor nobody. What is the most likely cause?",
              opts: ["A) At least one mentor_id is NULL, so NOT IN can never be true", "B) NOT IN does not work with subqueries", "C) The subquery needs a table alias"], ans: "A" },
      15 => { type: "multiple_choice", q: "Uday was born on 2000-12-01. On 2026-09-25, what does 'current year minus birth year' give, and what is his real age?",
              opts: ["A) 25 and 25", "B) 26 and 25", "C) 26 and 26"], ans: "B" },
      16 => { type: "true_false",      q: "A normal (non-materialized) view stores a copy of its results, so it must be refreshed before it shows newly inserted rows.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "multiple_choice", q: "Sales are 900, 700, 700 and 500. What does RANK() OVER (ORDER BY sales DESC) return, in that order?",
              opts: ["A) 1, 2, 3, 4", "B) 1, 2, 2, 3", "C) 1, 2, 2, 4"], ans: "C" },
      18 => { type: "multiple_choice", q: "A table has a composite index on (status, order_date). Which WHERE clause can NOT use it for a normal index search?",
              opts: ["A) WHERE status = 'paid'", "B) WHERE status = 'paid' AND order_date >= '2026-09-01'", "C) WHERE order_date >= '2026-09-01'"], ans: "C" },
      19 => { type: "true_false",      q: "ROLLBACK TO SAVEPOINT undoes only the changes made after that savepoint, and the transaction stays open.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "Product prices change every month. Which expression gives the correct revenue for past orders?",
              opts: ["A) SUM(i.qty * i.unit_price_paise) from order_items", "B) SUM(p.price_paise) from products", "C) SUM(i.qty) * MAX(p.price_paise)"], ans: "A" }
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

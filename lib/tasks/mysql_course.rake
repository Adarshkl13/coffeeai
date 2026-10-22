require_relative "../mysql_content"

namespace :content do
  desc "Create MySQL course and populate all 20 lessons"
  task mysql: :environment do
    course = Course.find_or_create_by!(slug: "mysql") do |c|
      c.title       = "MySQL"
      c.description = "Go past basic SQL and learn what makes MySQL 8.4 and 9.7 LTS different. Learn strict mode, utf8mb4 and collations, AUTO_INCREMENT, upserts, JSON and generated columns, InnoDB transactions and locking, indexes and EXPLAIN, stored routines and triggers, users and roles, backups and replication."
      c.color       = "#fb923c"
      c.icon        = "🐬"
      c.position    = 11
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to MySQL",                  2  => "MySQL Data Types",
      3  => "Strict Mode and sql_mode",               4  => "Character Sets and Collations",
      5  => "AUTO_INCREMENT and LAST_INSERT_ID",      6  => "Constraints and Foreign Keys in InnoDB",
      7  => "Upserts and Duplicate Keys",             8  => "String, Date and GROUP_CONCAT Functions",
      9  => "JOINs and Multi-Table Changes",          10 => "CTEs and Window Functions in MySQL",
      11 => "The JSON Data Type",                     12 => "Generated Columns",
      13 => "InnoDB Transactions and Locking",        14 => "Indexes and EXPLAIN",
      15 => "Views and Stored Procedures",            16 => "Stored Functions and Triggers",
      17 => "Users, Roles and Privileges",            18 => "Backups and Replication",
      19 => "MySQL in Applications",                  20 => "Capstone: A MySQL Shop Database"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which statement about MySQL versions is correct in September 2026?",
              opts: ["A) MySQL 8.0 is the newest long-term support (LTS) release", "B) Innovation releases like 9.5 are supported for five years each", "C) MySQL 8.0 has reached end of life; 8.4 and 9.7 are the LTS series"], ans: "C" },
      2  => { type: "true_false",      q: "In MySQL, BOOLEAN is another name for TINYINT(1), so TRUE is stored as the number 1.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "With MySQL's default sql_mode, what happens when you insert 'Karthik' into a VARCHAR(5) column?",
              opts: ["A) The INSERT fails with ERROR 1406: Data too long", "B) 'Karth' is stored and you get a warning", "C) The column is made wider by itself to fit"], ans: "A" },
      4  => { type: "true_false",      q: "MySQL's character set named utf8 can store every Unicode character, including emoji.",
              opts: ["True", "False"], ans: "False" },
      5  => { type: "multiple_choice", q: "One multi-row INSERT adds three rows. They get AUTO_INCREMENT ids 11, 12 and 13. What does LAST_INSERT_ID() return right after?",
              opts: ["A) 13", "B) 3", "C) 11"], ans: "C" },
      6  => { type: "multiple_choice", q: "An InnoDB column orders.customer_id INT (signed) is set as a foreign key to customers.id INT UNSIGNED. What happens?",
              opts: ["A) It works; MySQL converts the values by itself", "B) The foreign key is rejected because the column types do not match", "C) The foreign key is created but never checked"], ans: "B" },
      7  => { type: "multiple_choice", q: "products has a UNIQUE sku. reviews point to products with ON DELETE CASCADE. What does REPLACE INTO products (sku, name) VALUES (...) do for an existing sku?",
              opts: ["A) Deletes the old row and inserts a new one, so its reviews are also deleted by the cascade", "B) Fails, because REPLACE only works on MyISAM tables", "C) Updates only the name and keeps every other column"], ans: "A" },
      8  => { type: "multiple_choice", q: "first = 'Ram', middle = NULL, last = 'Kumar'. Which expression returns 'Ram Kumar'?",
              opts: ["A) CONCAT(first, ' ', middle, ' ', last)", "B) first || ' ' || last (with the default sql_mode)", "C) CONCAT_WS(' ', first, middle, last)"], ans: "C" },
      9  => { type: "true_false",      q: "MySQL has built-in support for FULL OUTER JOIN, just like PostgreSQL.",
              opts: ["True", "False"], ans: "False" },
      10 => { type: "multiple_choice", q: "A recursive CTE fails with 'Recursive query aborted after 1001 iterations'. Which setting sets this limit?",
              opts: ["A) group_concat_max_len", "B) cte_max_recursion_depth", "C) innodb_lock_wait_timeout"], ans: "B" },
      11 => { type: "multiple_choice", q: "attrs holds {\"brand\": \"Lava\"}. What do attrs->'$.brand' and attrs->>'$.brand' return, in that order?",
              opts: ["A) \"Lava\" as JSON (quoted), then Lava as plain text", "B) Lava in both cases", "C) Lava as plain text, then \"Lava\" as JSON"], ans: "A" },
      12 => { type: "true_false",      q: "In InnoDB, you can create a secondary index on a VIRTUAL generated column, like one that takes a value from a JSON column.",
              opts: ["True", "False"], ans: "True" },
      13 => { type: "multiple_choice", q: "Inside START TRANSACTION, which statement commits on its own, so a later ROLLBACK cannot undo the earlier work?",
              opts: ["A) UPDATE wallets SET balance = balance - 500", "B) ALTER TABLE wallets ADD COLUMN note VARCHAR(50)", "C) SELECT balance FROM wallets FOR UPDATE"], ans: "B" },
      14 => { type: "multiple_choice", q: "In MySQL's EXPLAIN output, which value in the type column means a full table scan?",
              opts: ["A) ref", "B) const", "C) ALL"], ans: "C" },
      15 => { type: "true_false",      q: "In the mysql command-line client, you change the DELIMITER before CREATE PROCEDURE. This is because the procedure body has semicolons.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Inside a BEFORE UPDATE trigger on products, how do you change the value that is about to be saved?",
              opts: ["A) SET NEW.name = TRIM(NEW.name);", "B) UPDATE products SET name = TRIM(name);", "C) SET OLD.name = TRIM(OLD.name);"], ans: "A" },
      17 => { type: "true_false",      q: "An account created as 'appuser'@'localhost' can also connect to the server from any other computer.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "multiple_choice", q: "Which mysqldump option must you add so the dump also has stored procedures and functions?",
              opts: ["A) --routines", "B) --triggers", "C) --add-drop-table"], ans: "A" },
      19 => { type: "true_false",      q: "A parameterised query like SELECT id FROM users WHERE email = ? sends the input apart from the SQL text. So the input cannot change the structure of the query.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "When someone places an order, which one statement safely checks and reserves stock when many users buy at once?",
              opts: ["A) SELECT stock FROM products WHERE id = 1;", "B) UPDATE products SET stock = stock - 1 WHERE id = 1 AND stock >= 1;", "C) SELECT MAX(stock) FROM products;"], ans: "B" }
    }

    summaries = {
      1  => "Meet MySQL, its LTS versions and the client, and run your first MySQL-style table and queries.",
      2  => "Pick the right MySQL data types for numbers, text, dates and true/false values.",
      3  => "Learn how strict sql_mode stops bad data and what MySQL does when it is turned off.",
      4  => "Store any language and emoji with utf8mb4 and understand how collations compare text.",
      5  => "Let MySQL number your rows with AUTO_INCREMENT and get the new id with LAST_INSERT_ID().",
      6  => "Learn which constraints MySQL enforces and the rules for foreign keys in InnoDB.",
      7  => "Insert or update in one step with ON DUPLICATE KEY UPDATE, and see why REPLACE can be risky.",
      8  => "Use MySQL string and date functions and join many values into one with GROUP_CONCAT.",
      9  => "Join tables in MySQL and update or delete rows across several tables at once.",
      10 => "Write CTEs, recursive queries and window functions such as RANK and running totals.",
      11 => "Store and query JSON data in MySQL with ->, ->> and the JSON functions.",
      12 => "Let MySQL calculate column values for you with generated columns, and index them.",
      13 => "Keep changes safe with InnoDB transactions, isolation levels and row locks.",
      14 => "Speed up queries with the right indexes and read EXPLAIN plans to check them.",
      15 => "Save queries as views and whole programs as stored procedures.",
      16 => "Write stored functions and triggers that run automatically when data changes.",
      17 => "Create users and roles and give each one only the privileges it needs.",
      18 => "Back up and restore MySQL safely and learn how replication copies data to other servers.",
      19 => "Connect apps to MySQL safely with parameterised queries, connection pools and good settings.",
      20 => "Build a small shop database that brings together everything from the course."
    }

    MysqlContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]; l.description = ""
      end
      lesson.update!(title: titles[position], description: summaries[position], body: data[:body], starter_code: data[:starter_code])

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

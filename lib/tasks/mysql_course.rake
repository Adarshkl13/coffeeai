require_relative "../mysql_content"

namespace :content do
  desc "Create MySQL course and populate all 20 lessons"
  task mysql: :environment do
    course = Course.find_or_create_by!(slug: "mysql") do |c|
      c.title       = "MySQL"
      c.description = "MySQL powers over 50% of the web's databases. Learn MySQL-specific features: AUTO_INCREMENT, CONCAT, DATE_FORMAT, GROUP_CONCAT, stored procedures, triggers, transactions, indexes, JSON support, and window functions."
      c.color       = "#fb923c"
      c.icon        = "🐬"
      c.position    = 11
      c.published   = true
    end
    puts "Course: #{course.title}"

    titles = {
      1  => "Introduction to MySQL",         2  => "MySQL Data Types",
      3  => "AUTO_INCREMENT and Keys",        4  => "MySQL String Functions",
      5  => "MySQL Date & Time Functions",    6  => "Aggregate Functions & GROUP_CONCAT",
      7  => "MySQL JOINs",                    8  => "Subqueries and EXISTS",
      9  => "Views",                          10 => "Stored Procedures",
      11 => "Stored Functions",              12 => "Triggers",
      13 => "Transactions",                  14 => "Indexes and EXPLAIN",
      15 => "User Management and Security",  16 => "MySQL JSON Support",
      17 => "Window Functions",              18 => "FULLTEXT Search",
      19 => "MySQL with Applications",       20 => "MySQL Review"
    }

    exercises = {
      1  => { type: "multiple_choice", q: "Which port does MySQL use by default?",
              opts: ["A) 5432", "B) 3306", "C) 1521"], ans: "B" },
      2  => { type: "true_false",      q: "DECIMAL(10,2) is the recommended type for storing monetary values in MySQL.",
              opts: ["True", "False"], ans: "True" },
      3  => { type: "multiple_choice", q: "Which MySQL keyword automatically generates a unique ID for each new row?",
              opts: ["A) AUTO_ID", "B) SERIAL", "C) AUTO_INCREMENT"], ans: "C" },
      4  => { type: "multiple_choice", q: "Which function joins multiple strings in MySQL?",
              opts: ["A) JOIN()", "B) CONCAT()", "C) MERGE()"], ans: "B" },
      5  => { type: "multiple_choice", q: "Which MySQL function formats a date as a custom string?",
              opts: ["A) FORMAT_DATE()", "B) DATE_FORMAT()", "C) TO_DATE()"], ans: "B" },
      6  => { type: "true_false",      q: "GROUP_CONCAT() aggregates multiple row values into a single comma-separated string.",
              opts: ["True", "False"], ans: "True" },
      7  => { type: "multiple_choice", q: "MySQL does NOT natively support which JOIN type?",
              opts: ["A) LEFT JOIN", "B) INNER JOIN", "C) FULL OUTER JOIN"], ans: "C" },
      8  => { type: "true_false",      q: "EXISTS stops searching as soon as it finds the first matching row, making it faster than IN for large tables.",
              opts: ["True", "False"], ans: "True" },
      9  => { type: "multiple_choice", q: "Which statement creates or replaces an existing view?",
              opts: ["A) CREATE VIEW", "B) CREATE OR REPLACE VIEW", "C) UPDATE VIEW"], ans: "B" },
      10 => { type: "true_false",      q: "DELIMITER must be changed before creating a stored procedure because stored procedures contain semicolons.",
              opts: ["True", "False"], ans: "True" },
      11 => { type: "multiple_choice", q: "How is a stored function different from a stored procedure?",
              opts: ["A) Functions cannot have parameters", "B) Functions return a single value and can be used in SQL expressions", "C) Functions use CALL to execute"], ans: "B" },
      12 => { type: "multiple_choice", q: "Inside a trigger, OLD and NEW refer to:",
              opts: ["A) The previous and next table", "B) The row values before and after the triggering operation", "C) Old and new database versions"], ans: "B" },
      13 => { type: "true_false",      q: "Only InnoDB tables support MySQL transactions — MyISAM does not.",
              opts: ["True", "False"], ans: "True" },
      14 => { type: "multiple_choice", q: "Which MySQL command shows how a query will be executed and which indexes it uses?",
              opts: ["A) DESCRIBE", "B) ANALYZE", "C) EXPLAIN"], ans: "C" },
      15 => { type: "true_false",      q: "You should never connect a production application using the MySQL root user.",
              opts: ["True", "False"], ans: "True" },
      16 => { type: "multiple_choice", q: "Which operator is shorthand for JSON_EXTRACT in MySQL?",
              opts: ["A) ->", "B) =>", "C) :>"], ans: "A" },
      17 => { type: "true_false",      q: "Window functions like ROW_NUMBER() require MySQL 8.0 or later.",
              opts: ["True", "False"], ans: "True" },
      18 => { type: "multiple_choice", q: "Which MySQL syntax performs a full-text search?",
              opts: ["A) SEARCH(col) FOR 'term'", "B) MATCH(col) AGAINST ('term')", "C) FULLTEXT(col) LIKE 'term'"], ans: "B" },
      19 => { type: "true_false",      q: "Prepared statements in MySQL completely prevent SQL injection attacks.",
              opts: ["True", "False"], ans: "True" },
      20 => { type: "multiple_choice", q: "Which MySQL feature automatically runs SQL code when a table row is inserted, updated, or deleted?",
              opts: ["A) View", "B) Index", "C) Trigger"], ans: "C" }
    }

    MysqlContent::LESSONS.each do |position, data|
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

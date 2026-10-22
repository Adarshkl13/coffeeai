require_relative "../php_content"

namespace :content do
  desc "Create PHP course and populate all 23 lessons"
  task php: :environment do
    description = "PHP runs about 70% of websites whose server-side language is known (W3Techs, 2026). Learn modern PHP 8: strict types, enums, OOP, web security, PDO, Composer and testing. These are the base skills for Laravel and WordPress work."
    course = Course.find_or_create_by!(slug: "php") do |c|
      c.title       = "PHP"
      c.description = description
      c.color       = "#a855f7"
      c.icon        = "🐘"
      c.position    = 9
      c.published   = true
    end
    course.update!(description: description)   # refresh older installs too
    puts "Course: #{course.title}"

    titles = {
       1 => "Introduction to PHP",
       2 => "Variables, Numbers and Constants",
       3 => "Strings and Text",
       4 => "Comparisons and Conditionals",
       5 => "Loops",
       6 => "Arrays",
       7 => "Array Functions",
       8 => "Functions",
       9 => "Types and Strict Mode",
      10 => "Closures and Callables",
      11 => "Classes and Objects",
      12 => "Encapsulation and Readonly Properties",
      13 => "Enums",
      14 => "Inheritance, Interfaces and Traits",
      15 => "Generators and Iterators",
      16 => "Exceptions and Error Handling",
      17 => "Dates, JSON and Files",
      18 => "Including Files and Templates",
      19 => "Forms, Sessions and Web Security",
      20 => "Cookies, Redirects and File Uploads",
      21 => "Databases with PDO",
      22 => "Namespaces, Composer and Testing",
      23 => "Capstone: Library Lending System"
    }

    descriptions = {
       1 => "Learn what PHP is and how it turns a web request into an HTML page. Write your first script with echo and var_dump.",
       2 => "Store values in variables and meet PHP's basic types. Do maths safely and define constants that never change.",
       3 => "Build and format text with quotes, interpolation, heredoc and sprintf. Use the main string functions. Match and clean text with regular expressions (preg_match, preg_replace, preg_split). Handle Hindi and other UTF-8 text with mbstring.",
       4 => "Compare values safely with === and <=>, and handle missing values with ??. Choose between if, switch and the modern match expression.",
       5 => "Repeat work with for, while, do-while and foreach. Control loops with break and continue, and avoid the foreach-by-reference trap.",
       6 => "PHP has one array type. Use it as a list, a key-value map or a nested table. Learn to add, remove, check, destructure and sort items.",
       7 => "Change data without writing loops. Use array_map, array_filter, array_reduce, array_column and usort with the spaceship operator.",
       8 => "Write functions you can reuse, with default values, named arguments, variadic parameters and return values. Learn how variable scope works in PHP.",
       9 => "Add types to parameters, return values and properties. Learn the difference between coercive mode and strict_types mode. Use union, nullable, void and never types.",
      10 => "Use functions as values. Write anonymous functions, use and arrow functions, and the PHP 8.1 first-class callable syntax such as strlen(...).",
      11 => "Model real things with classes, objects, constructors and constructor property promotion. Use static members, class constants and the null-safe operator.",
      12 => "Protect an object's data with private and protected, and check values in the constructor. Build value objects that cannot change with readonly properties and classes. Meet PHP 8.4 property hooks and asymmetric visibility.",
      13 => "Use PHP 8.1 enums in place of magic strings. Learn pure and backed cases, from and tryFrom, cases(), methods, interfaces and exhaustive match.",
      14 => "Reuse and organise code with extends, abstract classes, interfaces, traits and the #[\\Override] attribute. Learn when composition is the better choice.",
      15 => "Make values one at a time with yield. Chain generators into pipelines that save memory with yield from. Make your own classes work with foreach through IteratorAggregate and Countable.",
      16 => "Throw and catch exceptions with try, catch and finally. Use multi-catch and your own exception classes. Learn how Throwable, Error and Exception fit together.",
      17 => "Work with dates and time zones using DateTimeImmutable. Convert data to and from JSON safely, and read and write files on a real server.",
      18 => "Split code across files with require, include and their _once forms. Build paths with __DIR__ and return config arrays. Write HTML templates with <?= ?> and alternative syntax, and render them with output buffering.",
      19 => "Handle GET and POST forms and check input. Escape output to stop XSS, and protect forms with CSRF tokens. Keep users logged in with sessions, store passwords with password_hash, and build a small JSON API endpoint by hand.",
      20 => "Set secure cookies with setcookie(). Redirect safely with header('Location') and 303 See Other. Accept file uploads through $_FILES with content checks, random names and move_uploaded_file().",
      21 => "Connect to MySQL with PDO using utf8mb4. Run prepared statements with bound values and use transactions. Learn what prepared statements protect against, and what they do not.",
      22 => "Organise code with namespaces. Install packages and autoload classes with Composer and PSR-4. Write automated tests with PHPUnit.",
      23 => "Build a small but full library lending system. It uses enums, readonly classes, strict types, exceptions, dates, array functions, JSON and safe HTML output. Then plan how to make it a real web app."
    }

    exercises = {
       1 => { type: "multiple_choice", q: "A visitor opens products.php in a browser. What does the browser receive?",
              opts: ["A) The PHP source code, which the browser then runs", "B) Only the output PHP produced, usually HTML", "C) A compiled binary version of the PHP file"], ans: "B" },
       2 => { type: "true_false", q: "In PHP, 7 / 2 gives int(3) because both numbers are integers.",
              opts: ["True", "False"], ans: "False" },
       3 => { type: "multiple_choice", q: "What does mb_strlen(\"नमस्ते\") return?",
              opts: ["A) 6, while strlen() gives 18 (bytes)", "B) 18, the same as strlen()", "C) 6, the same as strlen()"], ans: "A" },
       4 => { type: "multiple_choice", q: "What does this print?  $qty = 0; echo $qty ?? 5, ' ', $qty ?: 5;",
              opts: ["A) 5 5", "B) 0 0", "C) 0 5"], ans: "C" },
       5 => { type: "true_false", q: "After foreach ($a as &$v) { ... } you should call unset($v). If you do not, a later loop that uses $v can overwrite the last element.",
              opts: ["True", "False"], ans: "True" },
       6 => { type: "multiple_choice", q: "$m = [10, 20, 30]; unset($m[1]); Which keys does $m have now?",
              opts: ["A) 0 and 1", "B) 0 and 2", "C) 1 and 2"], ans: "B" },
       7 => { type: "multiple_choice", q: "Which usort() callback sorts $students by 'marks' from highest to lowest?",
              opts: ["A) fn($a, $b) => $a['marks'] <=> $b['marks']", "B) fn($a, $b) => $a['marks'] > $b['marks']", "C) fn($a, $b) => $b['marks'] <=> $a['marks']"], ans: "C" },
       8 => { type: "true_false", q: "Given function makeTicket(string $from, string $to, int $seats = 1, string $class = \"Sleeper\", bool $tatkal = false), the call makeTicket(\"Kerala\", \"Punjab\", tatkal: true) is valid. It keeps the default values for $seats and $class.",
              opts: ["True", "False"], ans: "True" },
       9 => { type: "multiple_choice", q: "A file starts with declare(strict_types=1); and defines function add(int $a, int $b): int. What does add(\"5\", 3) do in that file?",
              opts: ["A) Returns 8", "B) Throws a TypeError", "C) Returns \"53\""], ans: "B" },
      10 => { type: "multiple_choice", q: "In PHP 8.1+, what does $f = strlen(...); create?",
              opts: ["A) A Closure that calls strlen() when you call it", "B) The number 0, the length of an empty string", "C) A syntax error, because strlen() needs an argument"], ans: "A" },
      11 => { type: "true_false", q: "If $a holds an object, $b = $a; makes a separate copy. So changing $b->name does not change $a.",
              opts: ["True", "False"], ans: "False" },
      12 => { type: "multiple_choice", q: "A class has public readonly int $paise and sets it in the constructor. What happens when outside code runs $money->paise = 0;?",
              opts: ["A) The value changes to 0 with no error", "B) The assignment is ignored with no error, and the old value stays", "C) PHP throws an Error because the property is readonly"], ans: "C" },
      13 => { type: "multiple_choice", q: "OrderStatus is a string-backed enum. No case has the value 'lost'. What does OrderStatus::tryFrom('lost') return?",
              opts: ["A) null", "B) It throws a ValueError", "C) The first case, OrderStatus::Pending"], ans: "A" },
      14 => { type: "true_false", q: "A PHP class can extend only one parent class, but it can implement several interfaces and use several traits.",
              opts: ["True", "False"], ans: "True" },
      15 => { type: "multiple_choice", q: "What does this print?  function nums() { echo 'start '; yield 1; }  $g = nums(); echo 'made '; foreach ($g as $n) echo $n;",
              opts: ["A) start made 1", "B) made start 1", "C) made 1 (the echo inside nums() never runs)"], ans: "B" },
      16 => { type: "true_false", q: "In declare(strict_types=1) code, strlen(42) throws a TypeError. A try { ... } catch (Exception $e) { ... } block around it catches that TypeError.",
              opts: ["True", "False"], ans: "False" },
      17 => { type: "true_false", q: "On a DateTimeImmutable, $due = $today->modify('+30 days'); also changes $today.",
              opts: ["True", "False"], ans: "False" },
      18 => { type: "true_false", q: "If config.php ends with return ['debug' => false];, then $cfg = require __DIR__ . '/config.php'; stores that array in $cfg.",
              opts: ["True", "False"], ans: "True" },
      19 => { type: "multiple_choice", q: "What is the right way to store a user's password in the database?",
              opts: ["A) md5($password)", "B) hash('sha256', $salt . $password) with a random salt", "C) password_hash($password, PASSWORD_DEFAULT)"], ans: "C" },
      20 => { type: "multiple_choice", q: "A visitor renames shell.php to photo.jpg and uploads it. Which check really stops it?",
              opts: ["A) Checking that $_FILES['photo']['type'] equals 'image/jpeg'", "B) Checking the real bytes of the file, for example with finfo", "C) Checking that $_FILES['photo']['name'] ends with '.jpg'"], ans: "B" },
      21 => { type: "true_false", q: "You use PDO prepared statements, so it is safe to put $_GET['sort'] straight into the ORDER BY part of the SQL string.",
              opts: ["True", "False"], ans: "False" },
      22 => { type: "multiple_choice", q: "composer.json maps \"App\\\\\": \"src/\" under psr-4. Which file does Composer load for the class App\\Billing\\Invoice?",
              opts: ["A) src/Billing/Invoice.php", "B) src/App/Billing/Invoice.php", "C) vendor/App/Billing/Invoice.php"], ans: "A" },
      23 => { type: "true_false", q: "In the final project, Library::lend() gets the date as a parameter. It does not call new DateTimeImmutable() itself. This makes it easy to test with fixed dates.",
              opts: ["True", "False"], ans: "True" }
    }

    PhpContent::LESSONS.each do |position, data|
      lesson = CourseLesson.find_or_create_by!(course: course, position: position) do |l|
        l.title = titles[position]
        l.description = descriptions[position]
      end

      lesson.update!(
        title: titles[position],
        description: descriptions[position],
        body: data[:body],
        starter_code: data[:starter_code]
      )

      ex = exercises[position]
      Exercise.find_or_initialize_by(course_lesson: lesson).tap do |e|
        e.exercise_type  = ex[:type]
        e.question       = ex[:q]
        e.options        = ex[:opts]
        e.correct_answer = ex[:ans]
      end.save!

      puts "  ✓ #{position}. #{titles[position]}"
    end

    puts "Done! #{CourseLesson.where(course: course).count} lessons, #{Exercise.joins(:course_lesson).where(course_lessons: { course_id: course.id }).count} exercises."
  end
end

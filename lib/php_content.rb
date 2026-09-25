module PhpContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP (PHP: Hypertext Preprocessor) is a widely-used <strong>server-side scripting language</strong> designed for web development. Created by <strong>Rasmus Lerdorf in 1994</strong>, PHP powers over 77% of all websites — including WordPress, Facebook's early codebase, and Wikipedia.</p>
        </div>
        <div class="lc-section">
          <h2>Why Learn PHP?</h2>
          <ul class="lc-list">
            <li><strong>Web-first</strong> — built to generate HTML dynamically on the server</li>
            <li><strong>Easy to learn</strong> — beginner-friendly syntax close to C and Python</li>
            <li><strong>Huge ecosystem</strong> — Laravel, Symfony, WordPress, and thousands of packages</li>
            <li><strong>Works everywhere</strong> — runs on nearly every web server (Apache, Nginx)</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>PHP Tags and Basic Output</h2>
          <div class="lc-code-block"><pre><code>&lt;?php
// This is a comment
echo "Hello, World!";      // Output with echo
echo "&lt;br&gt;";               // HTML inside PHP
print "Hello again!";      // print also works
?&gt;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Output Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Use</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>echo</code></td><td>Output one or more values</td><td>Nothing (void)</td></tr>
              <tr><td><code>print</code></td><td>Output a single value</td><td>Always 1</td></tr>
              <tr><td><code>var_dump()</code></td><td>Debug — shows type + value</td><td>Nothing</td></tr>
              <tr><td><code>print_r()</code></td><td>Human-readable array/object output</td><td>Nothing</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>PHP files end in <code>.php</code> and PHP code is wrapped in <code>&lt;?php ... ?&gt;</code> tags. Every statement ends with a <strong>semicolon</strong> <code>;</code>. The closing <code>?&gt;</code> is optional at the end of a pure PHP file.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Introduction to PHP

        // echo — most common output
        echo "Hello, World!";
        echo "\n";

        echo "PHP is awesome!";
        echo "\n";

        // Multiple values with echo
        echo "The answer is: ", 42, "\n";

        // Arithmetic directly in echo
        echo 10 + 5, "\n";
        echo 100 / 4, "\n";
        echo 2 ** 8, "\n";   // 256

        // String concatenation with .
        $language = "PHP";
        echo "Welcome to " . $language . "!\n";

        // var_dump shows type + value
        var_dump(42);
        var_dump(3.14);
        var_dump(true);
        var_dump("hello");
        ?>
      PHP
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>In PHP, all variables start with a <strong>dollar sign <code>$</code></strong>. PHP is <em>loosely typed</em> — you don't declare the type; PHP figures it out automatically. This is called <strong>type juggling</strong>.</p>
        </div>
        <div class="lc-section">
          <h2>PHP Data Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>integer</code></td><td><code>$age = 21;</code></td><td>Whole numbers</td></tr>
              <tr><td><code>float</code></td><td><code>$gpa = 3.95;</code></td><td>Decimal numbers</td></tr>
              <tr><td><code>string</code></td><td><code>$name = "Alice";</code></td><td>Text</td></tr>
              <tr><td><code>boolean</code></td><td><code>$active = true;</code></td><td>true / false</td></tr>
              <tr><td><code>array</code></td><td><code>$nums = [1, 2, 3];</code></td><td>Collection of values</td></tr>
              <tr><td><code>null</code></td><td><code>$result = null;</code></td><td>No value</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Checking Types</h2>
          <div class="lc-code-block"><pre><code>$age = 21;
echo gettype($age);     // "integer"
echo is_int($age);      // 1 (true)
echo is_string($age);   // "" (false)

var_dump($age);         // int(21)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Type Casting</h2>
          <div class="lc-code-block"><pre><code>$str  = "42";
$num  = (int) $str;     // 42
$flt  = (float) "3.14"; // 3.14
$str2 = (string) 100;   // "100"
$bool = (bool) 0;       // false</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>PHP constants don't use <code>$</code>: <code>define('PI', 3.14159);</code> or <code>const MAX = 100;</code>. Constants are global and cannot be changed once defined — use UPPERCASE names by convention.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Variables and Data Types

        $name      = "Adarsh";
        $age       = 21;
        $gpa       = 3.95;
        $isStudent = true;
        $nothing   = null;

        // Output variables
        echo "Name: " . $name . "\n";
        echo "Age: " . $age . "\n";
        echo "GPA: " . $gpa . "\n";
        echo "Student: ";
        var_dump($isStudent);

        // gettype()
        echo "\n--- Types ---\n";
        echo gettype($name) . "\n";
        echo gettype($age) . "\n";
        echo gettype($gpa) . "\n";
        echo gettype($isStudent) . "\n";
        echo gettype($nothing) . "\n";

        // Type casting
        echo "\n--- Casting ---\n";
        $numStr = "100";
        echo (int)$numStr + 50 . "\n";
        echo (float)"3.14" . "\n";
        echo (string)2025 . "\n";
        echo (bool)0 ? "true" : "false";
        echo "\n";

        // Constants
        define('PI', 3.14159);
        echo "PI = " . PI . "\n";
        ?>
      PHP
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP strings can use <strong>single quotes</strong> <code>'...'</code> (literal, no interpolation) or <strong>double quotes</strong> <code>"..."</code> (with variable interpolation). The <strong>dot operator <code>.</code></strong> is used for concatenation.</p>
        </div>
        <div class="lc-section">
          <h2>Single vs Double Quotes</h2>
          <div class="lc-code-block"><pre><code>$name = "Alice";

// Double quotes — variables are interpolated!
echo "Hello, $name!";      // "Hello, Alice!"
echo "2 + 2 = {$a + $b}";  // Use {} for expressions

// Single quotes — everything is literal
echo 'Hello, $name!';      // "Hello, $name!" (literal!)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Essential String Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>strlen()</code></td><td><code>strlen("hello")</code></td><td>5</td></tr>
              <tr><td><code>strtoupper()</code></td><td><code>strtoupper("hi")</code></td><td>"HI"</td></tr>
              <tr><td><code>strtolower()</code></td><td><code>strtolower("HI")</code></td><td>"hi"</td></tr>
              <tr><td><code>trim()</code></td><td><code>trim("  hi  ")</code></td><td>"hi"</td></tr>
              <tr><td><code>str_replace()</code></td><td><code>str_replace("cat","dog","cat sat")</code></td><td>"dog sat"</td></tr>
              <tr><td><code>substr()</code></td><td><code>substr("hello", 1, 3)</code></td><td>"ell"</td></tr>
              <tr><td><code>strpos()</code></td><td><code>strpos("hello", "ll")</code></td><td>2</td></tr>
              <tr><td><code>str_contains()</code></td><td><code>str_contains("hello","ell")</code></td><td>true</td></tr>
              <tr><td><code>ucfirst()</code></td><td><code>ucfirst("hello")</code></td><td>"Hello"</td></tr>
              <tr><td><code>str_repeat()</code></td><td><code>str_repeat("ab", 3)</code></td><td>"ababab"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>sprintf() — Formatted Strings</h2>
          <div class="lc-code-block"><pre><code>$name  = "Alice";
$score = 92.567;
$rank  = 1;

$msg = sprintf("%-10s scored %.2f (Rank #%d)", $name, $score, $rank);
echo $msg;  // "Alice      scored 92.57 (Rank #1)"</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <strong>double quotes</strong> when you need variable interpolation and <strong>single quotes</strong> when you don't — single-quoted strings are slightly faster to parse since PHP doesn't scan them for variables.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Strings in PHP

        $name    = "Ada Lovelace";
        $message = "  Hello, PHP World!  ";

        // String functions
        echo strlen($name) . "\n";
        echo strtoupper($name) . "\n";
        echo strtolower($name) . "\n";
        echo trim($message) . "\n";

        // Interpolation in double quotes
        $language = "PHP";
        $year     = 1994;
        echo "PHP was created in $year\n";
        echo "I am learning $language!\n";

        // Concatenation with .
        $greeting = "Hello" . ", " . $name . "!";
        echo $greeting . "\n";

        // Useful checks
        $email = "adarsh@example.com";
        echo str_contains($email, "@") ? "Valid email format\n" : "Invalid\n";
        echo strpos($email, "@") . "\n";

        // Replace and substring
        $sentence = "The quick brown fox";
        echo str_replace("fox", "cat", $sentence) . "\n";
        echo substr($sentence, 4, 5) . "\n";    // "quick"

        // sprintf formatting
        $price = 1234.567;
        echo sprintf("Price: $%.2f\n", $price);
        echo sprintf("%-10s: %d%%\n", "Score", 95);
        ?>
      PHP
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP supports integers, floats, and provides a rich set of mathematical functions through built-in functions. PHP also has several useful constants like <code>PHP_INT_MAX</code> and <code>M_PI</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Arithmetic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Example</th><th>Result</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>+</code></td><td><code>7 + 3</code></td><td>10</td><td></td></tr>
              <tr><td><code>-</code></td><td><code>7 - 3</code></td><td>4</td><td></td></tr>
              <tr><td><code>*</code></td><td><code>7 * 3</code></td><td>21</td><td></td></tr>
              <tr><td><code>/</code></td><td><code>7 / 2</code></td><td>3.5</td><td>Always float if needed!</td></tr>
              <tr><td><code>%</code></td><td><code>7 % 3</code></td><td>1</td><td>Remainder</td></tr>
              <tr><td><code>**</code></td><td><code>2 ** 8</code></td><td>256</td><td>Exponent</td></tr>
              <tr><td><code>intdiv()</code></td><td><code>intdiv(7, 2)</code></td><td>3</td><td>Integer division</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Math Functions</h2>
          <div class="lc-code-block"><pre><code>abs(-7)           // 7
sqrt(25)          // 5
pow(2, 8)         // 256
max(3, 7, 2)      // 7
min(3, 7, 2)      // 2
round(3.567, 2)   // 3.57
ceil(3.1)         // 4
floor(3.9)        // 3
rand(1, 10)       // Random int 1-10
M_PI              // 3.14159…</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Unlike Java, <strong>PHP division always returns float when needed</strong>: <code>7 / 2</code> returns <code>3.5</code>, not <code>3</code>. Use <code>intdiv(7, 2)</code> to get integer division. This is the opposite of Java's behaviour!</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Numbers and Math in PHP

        echo "7 + 3 = " . (7 + 3) . "\n";
        echo "7 - 3 = " . (7 - 3) . "\n";
        echo "7 * 3 = " . (7 * 3) . "\n";
        echo "7 / 2 = " . (7 / 2) . "\n";      // 3.5 (float!)
        echo "intdiv(7,2) = " . intdiv(7, 2) . "\n";  // 3 (integer)
        echo "7 % 3 = " . (7 % 3) . "\n";
        echo "2**10 = " . (2 ** 10) . "\n";

        echo "\n--- Math Functions ---\n";
        echo "abs(-42) = " . abs(-42) . "\n";
        echo "sqrt(144) = " . sqrt(144) . "\n";
        echo "pow(2,8) = " . pow(2, 8) . "\n";
        echo "max(3,7,1) = " . max(3, 7, 1) . "\n";
        echo "min(3,7,1) = " . min(3, 7, 1) . "\n";
        echo "round(3.567,2) = " . round(3.567, 2) . "\n";
        echo "ceil(3.1) = " . ceil(3.1) . "\n";
        echo "floor(3.9) = " . floor(3.9) . "\n";
        echo "M_PI = " . M_PI . "\n";

        echo "\n--- Practical ---\n";
        $principal = 10000;
        $rate = 0.08;
        $years = 5;
        $total = $principal * pow(1 + $rate, $years);
        echo "Investment after $years years: " . round($total, 2) . "\n";

        for ($n = 1; $n <= 5; $n++) {
            $type = ($n % 2 == 0) ? "even" : "odd";
            echo "$n is $type\n";
        }
        ?>
      PHP
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP arrays are incredibly flexible — they can hold any mix of types, grow dynamically, and serve as both indexed lists and key-value maps. PHP's array functions are among the richest in any language.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Arrays</h2>
          <div class="lc-code-block"><pre><code>// Modern syntax (PHP 5.4+)
$fruits = ["apple", "banana", "cherry"];

// Old syntax (still valid)
$nums = array(1, 2, 3, 4, 5);

// Access elements (zero-indexed)
echo $fruits[0];         // "apple"
echo $fruits[2];         // "cherry"
echo count($fruits);     // 3</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Essential Array Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>count($arr)</code></td><td>Number of elements</td></tr>
              <tr><td><code>array_push($arr, $val)</code></td><td>Add to end</td></tr>
              <tr><td><code>array_pop($arr)</code></td><td>Remove and return last</td></tr>
              <tr><td><code>array_shift($arr)</code></td><td>Remove and return first</td></tr>
              <tr><td><code>array_unshift($arr, $val)</code></td><td>Add to start</td></tr>
              <tr><td><code>sort($arr)</code></td><td>Sort ascending</td></tr>
              <tr><td><code>rsort($arr)</code></td><td>Sort descending</td></tr>
              <tr><td><code>in_array($val, $arr)</code></td><td>Check if value exists</td></tr>
              <tr><td><code>array_reverse($arr)</code></td><td>Reverse array</td></tr>
              <tr><td><code>implode($sep, $arr)</code></td><td>Join to string</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Iterating with foreach</h2>
          <div class="lc-code-block"><pre><code>$fruits = ["apple", "banana", "cherry"];

foreach ($fruits as $fruit) {
    echo "I love $fruit!\n";
}

// With index
foreach ($fruits as $index => $fruit) {
    echo ($index + 1) . ". $fruit\n";
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>$arr[] = $value;</code> as a shorthand to append to an array — it is faster to type and more idiomatic than <code>array_push()</code>. The empty brackets <code>[]</code> mean "next available index."</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Arrays in PHP

        $scores = [88, 95, 72, 61, 99, 84];

        echo "Length: " . count($scores) . "\n";
        echo "First: " . $scores[0] . "\n";
        echo "Last: " . $scores[count($scores) - 1] . "\n";

        // Add elements
        $scores[] = 91;       // Append shorthand
        array_push($scores, 77);
        echo "After additions: " . implode(", ", $scores) . "\n";

        // Remove
        $last = array_pop($scores);
        echo "Popped: $last\n";

        // Sort
        sort($scores);
        echo "Sorted: " . implode(", ", $scores) . "\n";

        // Stats
        echo "Max: " . max($scores) . "\n";
        echo "Min: " . min($scores) . "\n";
        echo "Sum: " . array_sum($scores) . "\n";
        echo "Avg: " . (array_sum($scores) / count($scores)) . "\n";

        // Check membership
        echo in_array(95, $scores) ? "95 found!\n" : "Not found\n";

        // foreach loop
        $languages = ["PHP", "Python", "JavaScript", "Ruby"];
        echo "\n--- Languages ---\n";
        foreach ($languages as $index => $lang) {
            echo ($index + 1) . ". $lang\n";
        }
        ?>
      PHP
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Associative arrays</strong> use named keys instead of numeric indexes — like a dictionary or hash map. They are PHP's most versatile data structure, used for database records, configuration, form data, and JSON responses.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Associative Arrays</h2>
          <div class="lc-code-block"><pre><code>$person = [
    "name"  => "Alice",
    "age"   => 28,
    "email" => "alice@example.com"
];

echo $person["name"];   // "Alice"
echo $person["age"];    // 28

// Add / update
$person["city"]  = "London";
$person["age"]   = 29;

// Check if key exists
if (isset($person["email"])) {
    echo "Has email!";
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Iterating with foreach</h2>
          <div class="lc-code-block"><pre><code>foreach ($person as $key => $value) {
    echo "$key: $value\n";
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Useful Array Functions for Associative Arrays</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>array_keys($arr)</code></td><td>All keys as array</td></tr>
              <tr><td><code>array_values($arr)</code></td><td>All values as array</td></tr>
              <tr><td><code>array_key_exists($key,$arr)</code></td><td>Boolean</td></tr>
              <tr><td><code>array_merge($a, $b)</code></td><td>Combined array</td></tr>
              <tr><td><code>isset($arr[$key])</code></td><td>Boolean (key exists + not null)</td></tr>
              <tr><td><code>unset($arr[$key])</code></td><td>Remove key</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In PHP, <code>isset($arr['key'])</code> is the standard way to check if an associative array has a key. Using <code>$arr['key']</code> directly when the key doesn't exist generates an <strong>Undefined index</strong> warning.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Associative Arrays

        $student = [
            "name"   => "Adarsh",
            "age"    => 21,
            "gpa"    => 3.9,
            "active" => true
        ];

        // Access
        echo "Name: " . $student["name"] . "\n";
        echo "GPA: " . $student["gpa"] . "\n";

        // Add and update
        $student["email"] = "adarsh@example.com";
        $student["age"]   = 22;
        echo "Email: " . $student["email"] . "\n";
        echo "Updated age: " . $student["age"] . "\n";

        // Check key exists
        echo isset($student["email"]) ? "Has email\n" : "No email\n";

        // Keys and values
        echo "Keys: " . implode(", ", array_keys($student)) . "\n";

        // foreach with key => value
        echo "\n--- Student Info ---\n";
        foreach ($student as $key => $value) {
            echo "  $key: ";
            var_dump($value);
        }

        // Practical: grade book
        $grades = [
            "Math"   => 95,
            "PHP"    => 98,
            "AI"     => 92,
            "Design" => 88
        ];

        $total = 0;
        foreach ($grades as $subject => $score) {
            $total += $score;
            echo "$subject: $score\n";
        }
        echo "Average: " . round($total / count($grades), 1) . "\n";
        ?>
      PHP
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP conditionals follow a familiar C-style syntax. A notable difference from Python is that PHP uses <code>elseif</code> (one word) and requires <strong>curly braces</strong> for blocks. PHP 8 also introduced the powerful <code>match</code> expression.</p>
        </div>
        <div class="lc-section">
          <h2>if / elseif / else</h2>
          <div class="lc-code-block"><pre><code>$score = 85;

if ($score >= 90) {
    echo "Grade: A";
} elseif ($score >= 80) {
    echo "Grade: B";
} elseif ($score >= 70) {
    echo "Grade: C";
} else {
    echo "Grade: F";
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ternary and Null Coalescing</h2>
          <div class="lc-code-block"><pre><code>// Ternary
$age = 20;
$status = ($age >= 18) ? "Adult" : "Minor";

// Null coalescing (??) — PHP 7+
$username = $_GET["user"] ?? "Guest";
// If $_GET["user"] doesn't exist or is null → "Guest"

// Short ternary (?:)
$name = $input ?: "Default";  // Use $input if truthy, else "Default"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>match Expression (PHP 8+)</h2>
          <div class="lc-code-block"><pre><code>$day = "Friday";
$msg = match($day) {
    "Monday"             => "Start of week",
    "Friday"             => "Almost weekend!",
    "Saturday", "Sunday" => "Weekend!",
    default              => "Regular day"
};
echo $msg;</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Comparison Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Checks</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>==</code></td><td>Equal (loose, type juggling)</td><td><code>"1" == 1</code> → true</td></tr>
              <tr><td><code>===</code></td><td>Identical (value + type)</td><td><code>"1" === 1</code> → false</td></tr>
              <tr><td><code>!=</code></td><td>Not equal (loose)</td><td></td></tr>
              <tr><td><code>!==</code></td><td>Not identical</td><td></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <code>===</code> (strict comparison) in PHP. The loose <code>==</code> does type coercion with surprising results: <code>"0" == false</code> is <code>true</code>, and <code>"php" == 0</code> is also <code>true</code> in older PHP versions!</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Conditional Statements

        // Grade calculator
        $testScores = [95, 83, 71, 62, 45];

        foreach ($testScores as $score) {
            if ($score >= 90) {
                $grade = "A - Excellent!";
            } elseif ($score >= 80) {
                $grade = "B - Good";
            } elseif ($score >= 70) {
                $grade = "C - Average";
            } elseif ($score >= 60) {
                $grade = "D - Below Average";
            } else {
                $grade = "F - Failed";
            }
            echo "Score $score: $grade\n";
        }

        echo "\n";

        // Ternary
        $temperature = 35;
        $weather = ($temperature > 30) ? "Hot day!" : "Nice day!";
        echo "$weather\n";

        // Null coalescing
        $username = null ?? "Guest";
        echo "User: $username\n";

        // Logical operators
        $age   = 22;
        $hasID = true;
        if ($age >= 18 && $hasID) {
            echo "Entry allowed!\n";
        }

        // Strict comparison
        echo (1 == "1")  ? "loose: equal\n"     : "loose: not equal\n";
        echo (1 === "1") ? "strict: equal\n"     : "strict: not equal\n";
        ?>
      PHP
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP has four loop types: <code>for</code>, <code>while</code>, <code>do-while</code>, and <code>foreach</code>. The <code>foreach</code> loop is PHP's most popular loop — designed specifically for iterating over arrays and objects.</p>
        </div>
        <div class="lc-section">
          <h2>Loop Types</h2>
          <div class="lc-code-block"><pre><code>// for — classic, need index
for ($i = 1; $i <= 5; $i++) {
    echo $i . "\n";
}

// while — condition-based
$n = 1;
while ($n <= 5) {
    echo $n++ . "\n";
}

// do-while — at least once
$x = 10;
do {
    echo $x . "\n";
    $x++;
} while ($x < 10);   // Runs once even though false!

// foreach — array iteration
foreach ($array as $value) { ... }
foreach ($array as $key => $value) { ... }</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>break and continue</h2>
          <div class="lc-code-block"><pre><code>for ($i = 0; $i < 10; $i++) {
    if ($i === 3) continue;  // Skip 3
    if ($i === 7) break;     // Stop at 7
    echo $i . " ";
}
// 0 1 2 4 5 6</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>PHP's <code>foreach</code> works on a <strong>copy</strong> of the array by default. To modify the original array inside foreach, use a <strong>reference</strong>: <code>foreach ($arr as &$value)</code>. Remember to <code>unset($value)</code> afterwards to avoid bugs!</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Loops in PHP

        // Classic for loop
        echo "--- Counting ---\n";
        for ($i = 1; $i <= 5; $i++) {
            echo "Count: $i\n";
        }

        // Multiplication table
        echo "--- 3x Table ---\n";
        for ($i = 1; $i <= 5; $i++) {
            echo "3 x $i = " . (3 * $i) . "\n";
        }

        // foreach over array
        echo "--- Fruits ---\n";
        $fruits = ["Apple", "Banana", "Cherry", "Mango"];
        foreach ($fruits as $i => $fruit) {
            echo ($i + 1) . ". $fruit\n";
        }

        // while loop
        echo "--- While ---\n";
        $n = 1;
        while ($n <= 4) {
            echo "$n squared = " . ($n * $n) . "\n";
            $n++;
        }

        // Accumulator
        $scores = [88, 95, 72, 61, 99];
        $total  = 0;
        foreach ($scores as $score) {
            $total += $score;
        }
        echo "Sum: $total\n";
        echo "Average: " . ($total / count($scores)) . "\n";

        // break and continue
        echo "--- Skip & Stop ---\n";
        for ($i = 0; $i < 8; $i++) {
            if ($i === 3) continue;
            if ($i === 6) break;
            echo $i . " ";
        }
        echo "\n";
        ?>
      PHP
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP functions are defined with the <code>function</code> keyword. PHP 7+ introduced <strong>type declarations</strong> for parameters and return types, making PHP code safer and more self-documenting.</p>
        </div>
        <div class="lc-section">
          <h2>Defining Functions</h2>
          <div class="lc-code-block"><pre><code>// Basic function
function greet($name) {
    return "Hello, $name!";
}
echo greet("Alice");

// With default parameter
function power($base, $exponent = 2) {
    return $base ** $exponent;
}
echo power(3);      // 9
echo power(2, 8);   // 256</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Type Declarations (PHP 7+)</h2>
          <div class="lc-code-block"><pre><code>function add(int $a, int $b): int {
    return $a + $b;
}

function getInitials(string $name): string {
    $parts = explode(" ", $name);
    return implode(".", array_map(fn($p) => $p[0], $parts)) . ".";
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Variable Functions and Closures</h2>
          <div class="lc-code-block"><pre><code>// Anonymous function (closure)
$double = function($n) { return $n * 2; };
echo $double(5);   // 10

// Arrow function (PHP 7.4+)
$triple = fn($n) => $n * 3;
echo $triple(4);   // 12</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>PHP functions are <strong>not case-sensitive</strong> — <code>echo()</code>, <code>Echo()</code>, and <code>ECHO()</code> all work. However, it's best practice to always use lowercase for built-in functions and follow consistent casing in your own code.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Functions in PHP

        // Basic function with return
        function square($n) {
            return $n * $n;
        }
        echo "5² = " . square(5) . "\n";
        echo "12² = " . square(12) . "\n";

        // Default parameters
        function greet($name, $greeting = "Hello") {
            return "$greeting, $name!";
        }
        echo greet("Alice") . "\n";
        echo greet("Bob", "Hi") . "\n";

        // Multiple operations
        function celsiusToFahrenheit($c) {
            return ($c * 9 / 5) + 32;
        }
        $temps = [0, 37, 100];
        foreach ($temps as $c) {
            $f = celsiusToFahrenheit($c);
            echo "{$c}°C = {$f}°F\n";
        }

        // Function calling function
        function isPassing($score) {
            return $score >= 70;
        }

        function getGrade($score) {
            if ($score >= 90) return "A";
            if ($score >= 80) return "B";
            if ($score >= 70) return "C";
            return "F";
        }

        $scores = [85, 55, 92, 68, 40];
        foreach ($scores as $score) {
            $pass  = isPassing($score) ? "PASS" : "FAIL";
            $grade = getGrade($score);
            echo "Score $score: $grade ($pass)\n";
        }
        ?>
      PHP
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP's array functions are among the most powerful in any language. Functions like <code>array_map()</code>, <code>array_filter()</code>, and <code>array_reduce()</code> enable functional programming patterns that make complex data transformations concise and readable.</p>
        </div>
        <div class="lc-section">
          <h2>Functional Array Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>array_map($fn, $arr)</code></td><td>Transform every element</td></tr>
              <tr><td><code>array_filter($arr, $fn)</code></td><td>Keep elements where fn returns true</td></tr>
              <tr><td><code>array_reduce($arr, $fn, $init)</code></td><td>Fold to single value</td></tr>
              <tr><td><code>usort($arr, $fn)</code></td><td>Sort with custom comparator</td></tr>
              <tr><td><code>array_search($val, $arr)</code></td><td>Find key of value</td></tr>
              <tr><td><code>array_unique($arr)</code></td><td>Remove duplicates</td></tr>
              <tr><td><code>array_flip($arr)</code></td><td>Swap keys and values</td></tr>
              <tr><td><code>array_slice($arr, $start, $len)</code></td><td>Extract portion</td></tr>
              <tr><td><code>array_chunk($arr, $size)</code></td><td>Split into chunks</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>array_map, array_filter, array_reduce</h2>
          <div class="lc-code-block"><pre><code>$nums = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

$doubled  = array_map(fn($n) => $n * 2, $nums);
$evens    = array_filter($nums, fn($n) => $n % 2 === 0);
$total    = array_reduce($nums, fn($carry, $n) => $carry + $n, 0);</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>array_filter()</code> preserves the original keys. If you need a re-indexed result, wrap it: <code>array_values(array_filter(...))</code>. This is a common PHP gotcha!</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Array Functions

        $numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

        // array_map — transform
        $doubled = array_map(fn($n) => $n * 2, $numbers);
        $squared = array_map(fn($n) => $n ** 2, $numbers);
        echo "Doubled: " . implode(", ", $doubled) . "\n";
        echo "Squared: " . implode(", ", $squared) . "\n";

        // array_filter — select
        $evens = array_filter($numbers, fn($n) => $n % 2 === 0);
        $big   = array_filter($numbers, fn($n) => $n > 6);
        echo "Evens: " . implode(", ", $evens) . "\n";
        echo "Big:   " . implode(", ", $big) . "\n";

        // array_reduce — fold
        $total   = array_reduce($numbers, fn($carry, $n) => $carry + $n, 0);
        $product = array_reduce([1,2,3,4,5], fn($carry, $n) => $carry * $n, 1);
        echo "Sum: $total\n";
        echo "5! = $product\n";

        // array_unique
        $tags = ["php", "web", "php", "html", "web", "css"];
        $unique = array_unique($tags);
        echo "Unique tags: " . implode(", ", $unique) . "\n";

        // usort — custom sort
        $students = [
            ["name" => "Alice", "score" => 92],
            ["name" => "Bob",   "score" => 78],
            ["name" => "Carol", "score" => 88]
        ];
        usort($students, fn($a, $b) => $b["score"] - $a["score"]);
        foreach ($students as $s) {
            echo "{$s['name']}: {$s['score']}\n";
        }
        ?>
      PHP
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP has over 100 built-in string functions. Beyond the basics, functions like <code>explode()</code>, <code>implode()</code>, <code>preg_match()</code>, and <code>sprintf()</code> are essential tools for web development.</p>
        </div>
        <div class="lc-section">
          <h2>Essential String Functions</h2>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td><code>explode($sep, $str)</code></td><td>Split string into array</td></tr>
              <tr><td><code>implode($sep, $arr)</code></td><td>Join array into string</td></tr>
              <tr><td><code>str_pad($str, $len, $pad)</code></td><td>Pad string to length</td></tr>
              <tr><td><code>wordwrap($str, $width)</code></td><td>Wrap text at width</td></tr>
              <tr><td><code>number_format($n, $dec)</code></td><td>Format number with commas</td></tr>
              <tr><td><code>htmlspecialchars($str)</code></td><td>Convert to HTML entities (XSS protection)</td></tr>
              <tr><td><code>str_word_count($str)</code></td><td>Count words</td></tr>
              <tr><td><code>strrev($str)</code></td><td>Reverse a string</td></tr>
              <tr><td><code>str_starts_with($str, $pre)</code></td><td>Check prefix (PHP 8)</td></tr>
              <tr><td><code>str_ends_with($str, $suf)</code></td><td>Check suffix (PHP 8)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>explode() and implode()</h2>
          <div class="lc-code-block"><pre><code>$csv  = "apple,banana,cherry";
$arr  = explode(",", $csv);          // ["apple","banana","cherry"]
$back = implode(" | ", $arr);        // "apple | banana | cherry"

// Split a sentence into words
$words = explode(" ", "hello world");
echo count($words);   // 2</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <code>htmlspecialchars($userInput)</code> before outputting user data in HTML. This converts <code>&lt;</code>, <code>&gt;</code>, <code>&amp;</code> etc. to safe HTML entities — preventing <strong>Cross-Site Scripting (XSS)</strong> attacks.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // String Functions

        $text = "  The Quick Brown Fox Jumps Over The Lazy Dog  ";

        echo strlen(trim($text)) . "\n";
        echo strtolower($text) . "\n";
        echo strtoupper($text) . "\n";
        echo ucwords(strtolower(trim($text))) . "\n";
        echo strrev(trim($text)) . "\n";

        // explode and implode
        $csv   = "PHP,Python,JavaScript,Ruby,Java";
        $langs = explode(",", $csv);
        echo count($langs) . " languages\n";
        foreach ($langs as $i => $lang) {
            echo ($i + 1) . ". $lang\n";
        }
        echo implode(" | ", $langs) . "\n";

        // Number formatting
        $price    = 1234567.891;
        $discount = 123456.50;
        echo "Price:    " . number_format($price, 2) . "\n";
        echo "Discount: " . number_format($discount, 2) . "\n";
        echo "Total:    " . number_format($price - $discount, 2) . "\n";

        // Padding
        $items = ["PHP" => 95, "Python" => 88, "JavaScript" => 92];
        foreach ($items as $name => $score) {
            echo str_pad($name, 15, ".") . " $score\n";
        }

        // Repeat
        echo str_repeat("=", 30) . "\n";
        echo str_repeat("* ", 5) . "\n";
        ?>
      PHP
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP was designed to be <strong>embedded in HTML</strong>. You can switch between HTML and PHP code freely using <code>&lt;?php ... ?&gt;</code> tags. This is the core feature that makes PHP so powerful for web development.</p>
        </div>
        <div class="lc-section">
          <h2>Mixing PHP with HTML</h2>
          <div class="lc-code-block"><pre><code>&lt;html&gt;
&lt;body&gt;
    &lt;h1&gt;&lt;?= "Hello, $name!" ?&gt;&lt;/h1&gt;

    &lt;?php foreach ($items as $item): ?&gt;
        &lt;li&gt;&lt;?= $item ?&gt;&lt;/li&gt;
    &lt;?php endforeach; ?&gt;
&lt;/body&gt;
&lt;/html&gt;</code></pre></div>
          <p><code>&lt;?=</code> is shorthand for <code>&lt;?php echo</code> — very common in templates!</p>
        </div>
        <div class="lc-section">
          <h2>PHP in Web Context</h2>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>PHP Code</th></tr></thead>
            <tbody>
              <tr><td>Dynamic title</td><td><code>&lt;title&gt;&lt;?= $pageTitle ?&gt;&lt;/title&gt;</code></td></tr>
              <tr><td>Conditional class</td><td><code>class="&lt;?= $active ? 'active' : '' ?&gt;"</code></td></tr>
              <tr><td>Loop through data</td><td><code>&lt;?php foreach ($posts as $post): ?&gt;</code></td></tr>
              <tr><td>Include file</td><td><code>&lt;?php include 'header.php'; ?&gt;</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Alternative Syntax for Templates</h2>
          <div class="lc-code-block"><pre><code>&lt;?php if ($loggedIn): ?&gt;
    &lt;p&gt;Welcome back!&lt;/p&gt;
&lt;?php else: ?&gt;
    &lt;p&gt;Please log in&lt;/p&gt;
&lt;?php endif; ?&gt;</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In modern PHP development, use a templating engine like <strong>Blade</strong> (Laravel) or <strong>Twig</strong> (Symfony) instead of raw PHP in HTML. They are cleaner and add features like template inheritance and auto-escaping.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // PHP + HTML Integration (simulated as text output)

        // Data that would normally come from a database
        $pageTitle = "AI Academy";
        $loggedIn  = true;
        $username  = "Adarsh";

        $courses = [
            ["name" => "PHP",        "lessons" => 20, "done" => 15],
            ["name" => "Python",     "lessons" => 20, "done" => 20],
            ["name" => "JavaScript", "lessons" => 20, "done" => 8],
        ];

        // Simulating HTML template output
        echo "=== $pageTitle ===\n";

        if ($loggedIn) {
            echo "Welcome back, $username!\n";
        } else {
            echo "Please log in.\n";
        }

        echo "\n--- Your Courses ---\n";
        foreach ($courses as $i => $course) {
            $pct    = round($course["done"] / $course["lessons"] * 100);
            $status = $course["done"] === $course["lessons"] ? "DONE" : "$pct%";
            $bar    = str_repeat("█", intdiv($pct, 10)) . str_repeat("░", 10 - intdiv($pct, 10));
            echo ($i + 1) . ". {$course['name']}\n";
            echo "   [$bar] $status ({$course['done']}/{$course['lessons']})\n";
        }

        $totalDone = array_sum(array_column($courses, "done"));
        $totalAll  = array_sum(array_column($courses, "lessons"));
        echo "\nOverall: $totalDone/$totalAll lessons complete\n";
        ?>
      PHP
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP's <code>date()</code> function and <code>DateTime</code> class make working with dates and times straightforward. PHP handles timezones, date arithmetic, and formatting with ease.</p>
        </div>
        <div class="lc-section">
          <h2>date() Function</h2>
          <div class="lc-code-block"><pre><code>echo date("Y");           // 2024 (current year)
echo date("Y-m-d");       // 2024-01-15
echo date("d/m/Y");       // 15/01/2024
echo date("l, F j, Y");   // Monday, January 15, 2024
echo date("H:i:s");       // 14:30:45</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Date Format Characters</h2>
          <table class="lc-table">
            <thead><tr><th>Char</th><th>Output</th></tr></thead>
            <tbody>
              <tr><td><code>Y</code></td><td>4-digit year (2024)</td></tr>
              <tr><td><code>m</code></td><td>Month 01-12</td></tr>
              <tr><td><code>d</code></td><td>Day 01-31</td></tr>
              <tr><td><code>H</code></td><td>Hour 00-23</td></tr>
              <tr><td><code>i</code></td><td>Minutes 00-59</td></tr>
              <tr><td><code>D</code></td><td>Short day (Mon, Tue)</td></tr>
              <tr><td><code>l</code></td><td>Full day (Monday)</td></tr>
              <tr><td><code>N</code></td><td>Day of week (1=Mon, 7=Sun)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Date Arithmetic with strtotime()</h2>
          <div class="lc-code-block"><pre><code>$future = strtotime("+30 days");
echo date("Y-m-d", $future);

$past = strtotime("-1 year");
echo date("Y-m-d", $past);

$daysLeft = round((strtotime("2025-01-01") - time()) / 86400);
echo "Days until New Year: $daysLeft";</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always set your timezone at the top of your PHP scripts: <code>date_default_timezone_set('Asia/Kolkata');</code>. Without this, PHP uses the server's default timezone which may give wrong times for your users.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Date and Time

        // Current date/time
        echo "=== Current Date/Time ===\n";
        echo "Year:     " . date("Y") . "\n";
        echo "Date:     " . date("Y-m-d") . "\n";
        echo "Time:     " . date("H:i:s") . "\n";
        echo "Day:      " . date("l") . "\n";
        echo "Full:     " . date("l, F j, Y") . "\n";
        echo "Unix:     " . time() . "\n";

        // Date formatting
        echo "\n=== Custom Formats ===\n";
        $ts = mktime(14, 30, 0, 6, 15, 2025);
        echo date("d/m/Y", $ts) . "\n";
        echo date("F jS, Y", $ts) . "\n";
        echo date("D, d M Y H:i", $ts) . "\n";

        // Date arithmetic
        echo "\n=== Date Arithmetic ===\n";
        $today    = time();
        $tomorrow = $today + 86400;
        $lastYear = strtotime("-1 year");
        $inMonth  = strtotime("+30 days");

        echo "Today:     " . date("Y-m-d", $today) . "\n";
        echo "Tomorrow:  " . date("Y-m-d", $tomorrow) . "\n";
        echo "Last year: " . date("Y-m-d", $lastYear) . "\n";
        echo "+30 days:  " . date("Y-m-d", $inMonth) . "\n";

        // Time left until event
        $event     = mktime(0, 0, 0, 12, 25, 2025);
        $daysLeft  = round(($event - $today) / 86400);
        echo "Days until Christmas 2025: $daysLeft\n";
        ?>
      PHP
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP can <strong>read and write files</strong> on the server with simple built-in functions. File operations are essential for logging, configuration, data storage, and processing uploaded files.</p>
        </div>
        <div class="lc-section">
          <h2>Simple File Functions</h2>
          <div class="lc-code-block"><pre><code>// Write to file (overwrites)
file_put_contents("log.txt", "Hello, File!\n");

// Append to file
file_put_contents("log.txt", "New line\n", FILE_APPEND);

// Read entire file
$content = file_get_contents("log.txt");

// Read as array of lines
$lines = file("log.txt", FILE_IGNORE_NEW_LINES);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>fopen() for More Control</h2>
          <div class="lc-code-block"><pre><code>$fh = fopen("data.txt", "w");
fwrite($fh, "Line 1\n");
fwrite($fh, "Line 2\n");
fclose($fh);

// Read line by line
$fh = fopen("data.txt", "r");
while (!feof($fh)) {
    echo fgets($fh);
}
fclose($fh);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>File Modes</h2>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>"r"</code></td><td>Read only — file must exist</td></tr>
              <tr><td><code>"w"</code></td><td>Write — creates or overwrites</td></tr>
              <tr><td><code>"a"</code></td><td>Append — add to end</td></tr>
              <tr><td><code>"r+"</code></td><td>Read and write</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>file_put_contents()</code> and <code>file_get_contents()</code> for simple file operations — they handle opening, writing/reading, and closing in one call. Use <code>fopen()</code> only when you need fine-grained control.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // File I/O (Simulated)

        // Simulate file content
        $csvData = [
            "Name,Score,Grade",
            "Alice,92,A",
            "Bob,78,B",
            "Carol,95,A",
            "Dave,55,F",
            "Eve,83,B"
        ];

        echo "=== Writing grades.csv ===\n";
        $fileContent = implode("\n", $csvData);
        echo $fileContent . "\n";

        echo "\n=== Processing File Data ===\n";

        // Parse CSV-like data
        $header   = explode(",", $csvData[0]);
        $students = [];

        for ($i = 1; $i < count($csvData); $i++) {
            $parts = explode(",", $csvData[$i]);
            $students[] = [
                "name"  => $parts[0],
                "score" => (int)$parts[1],
                "grade" => $parts[2]
            ];
        }

        foreach ($students as $s) {
            $status = $s["score"] >= 70 ? "PASS" : "FAIL";
            echo "{$s['name']}: {$s['score']} ({$s['grade']}) - $status\n";
        }

        $scores = array_column($students, "score");
        $avg    = array_sum($scores) / count($scores);
        $top    = $students[array_search(max($scores), $scores)];

        echo "\nAverage: " . round($avg, 1) . "\n";
        echo "Top student: {$top['name']} ({$top['score']})\n";
        ?>
      PHP
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP supports full <strong>Object-Oriented Programming</strong>. Classes bundle data (properties) and behaviour (methods) together. PHP OOP is the foundation of modern frameworks like Laravel, Symfony, and Magento.</p>
        </div>
        <div class="lc-section">
          <h2>Defining a Class</h2>
          <div class="lc-code-block"><pre><code>class Dog {
    public string $name;
    public string $breed;

    public function __construct(string $name, string $breed) {
        $this->name  = $name;
        $this->breed = $breed;
    }

    public function bark(): string {
        return "$this->name says: Woof!";
    }

    public function describe(): string {
        return "$this->name is a $this->breed";
    }
}

$rex = new Dog("Rex", "German Shepherd");
echo $rex->bark();
echo $rex->describe();</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Key OOP Concepts</h2>
          <table class="lc-table">
            <thead><tr><th>Concept</th><th>PHP Syntax</th></tr></thead>
            <tbody>
              <tr><td>Create object</td><td><code>$obj = new ClassName();</code></td></tr>
              <tr><td>Access property</td><td><code>$obj->property</code></td></tr>
              <tr><td>Call method</td><td><code>$obj->method()</code></td></tr>
              <tr><td>Current instance</td><td><code>$this->property</code></td></tr>
              <tr><td>Constructor</td><td><code>__construct()</code></td></tr>
              <tr><td>Static</td><td><code>self::$prop</code>, <code>ClassName::method()</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In PHP, properties and methods are accessed with the <strong>arrow operator <code>-&gt;</code></strong> (not dot like Python/Java). Inside a class, use <code>$this-&gt;</code> to refer to the current object's properties and methods.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Classes and Objects

        class BankAccount {
            public string $owner;
            private float $balance;

            public function __construct(string $owner, float $balance = 0) {
                $this->owner   = $owner;
                $this->balance = $balance;
            }

            public function deposit(float $amount): void {
                if ($amount > 0) {
                    $this->balance += $amount;
                    echo "Deposited $$amount | Balance: \${$this->balance}\n";
                }
            }

            public function withdraw(float $amount): void {
                if ($amount > $this->balance) {
                    echo "Insufficient funds!\n";
                } else {
                    $this->balance -= $amount;
                    echo "Withdrew $$amount | Balance: \${$this->balance}\n";
                }
            }

            public function getBalance(): float {
                return $this->balance;
            }

            public function statement(): void {
                echo "=== {$this->owner}'s Account ===\n";
                echo "Balance: \${$this->balance}\n";
            }
        }

        // Create objects
        $alice = new BankAccount("Alice", 1000);
        $bob   = new BankAccount("Bob");

        $alice->deposit(500);
        $alice->withdraw(200);
        $alice->withdraw(5000);

        $bob->deposit(300);
        $bob->deposit(700);

        echo "\n";
        $alice->statement();
        echo "\n";
        $bob->statement();
        ?>
      PHP
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP supports <strong>encapsulation</strong> through access modifiers. Properties and methods can be <code>public</code>, <code>protected</code>, or <code>private</code>. PHP 8.0 introduced <strong>constructor property promotion</strong> — a clean shorthand for defining and assigning properties in one step.</p>
        </div>
        <div class="lc-section">
          <h2>Access Modifiers</h2>
          <table class="lc-table">
            <thead><tr><th>Modifier</th><th>Accessible From</th></tr></thead>
            <tbody>
              <tr><td><code>public</code></td><td>Everywhere</td></tr>
              <tr><td><code>protected</code></td><td>Class + subclasses</td></tr>
              <tr><td><code>private</code></td><td>Same class only</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Constructor Property Promotion (PHP 8)</h2>
          <div class="lc-code-block"><pre><code>// Old way
class User {
    public string $name;
    private string $email;
    public function __construct(string $name, string $email) {
        $this->name  = $name;
        $this->email = $email;
    }
}

// PHP 8 shorthand — same result!
class User {
    public function __construct(
        public string $name,
        private string $email
    ) {}
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Getters, Setters, and Static</h2>
          <div class="lc-code-block"><pre><code>class Product {
    private static int $count = 0;

    public function __construct(private string $name, private float $price) {
        self::$count++;
    }

    public static function getCount(): int { return self::$count; }
    public function getName(): string       { return $this->name; }
    public function getPrice(): float       { return $this->price; }
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>private</code> for properties by default and expose them through <code>public</code> getters and setters. This protects data integrity — a setter can validate input before changing a value, which direct property access cannot do.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Encapsulation and Constructor Promotion

        class Product {
            private static int $totalCreated = 0;

            public function __construct(
                private int    $id,
                private string $name,
                private float  $price,
                private int    $stock = 0
            ) {
                self::$totalCreated++;
            }

            public function getId():    int    { return $this->id; }
            public function getName():  string { return $this->name; }
            public function getPrice(): float  { return $this->price; }
            public function getStock(): int    { return $this->stock; }

            public function setPrice(float $price): void {
                if ($price > 0) {
                    $this->price = $price;
                } else {
                    echo "Invalid price!\n";
                }
            }

            public function isInStock(): bool { return $this->stock > 0; }

            public function applyDiscount(float $pct): void {
                $this->price = round($this->price * (1 - $pct / 100), 2);
            }

            public function info(): string {
                $stock = $this->isInStock() ? "In Stock ({$this->stock})" : "Out of Stock";
                return "#{$this->id} {$this->name} - \${$this->price} - $stock";
            }

            public static function getTotalCreated(): int { return self::$totalCreated; }
        }

        $laptop = new Product(1, "Laptop", 75000, 10);
        $phone  = new Product(2, "Phone",  25000, 50);
        $tablet = new Product(3, "Tablet", 35000, 0);

        foreach ([$laptop, $phone, $tablet] as $p) {
            echo $p->info() . "\n";
        }

        $laptop->applyDiscount(10);
        echo "After 10% off: " . $laptop->info() . "\n";

        echo "Total products created: " . Product::getTotalCreated() . "\n";
        ?>
      PHP
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP supports <strong>class inheritance</strong> with <code>extends</code> and <strong>traits</strong> for code reuse across unrelated classes. Traits solve the problem of single inheritance by letting you share method implementations horizontally.</p>
        </div>
        <div class="lc-section">
          <h2>Inheritance with extends</h2>
          <div class="lc-code-block"><pre><code>class Animal {
    public function __construct(protected string $name) {}

    public function speak(): string { return "..."; }

    public function describe(): string {
        return "$this->name says: " . $this->speak();
    }
}

class Dog extends Animal {
    public function speak(): string { return "Woof!"; }  // Override
}

class Cat extends Animal {
    public function speak(): string { return "Meow!"; }
}

$dog = new Dog("Rex");
echo $dog->describe();    // "Rex says: Woof!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Traits — Horizontal Code Reuse</h2>
          <div class="lc-code-block"><pre><code>trait Timestampable {
    private string $createdAt;

    public function setCreatedAt(): void {
        $this->createdAt = date("Y-m-d H:i:s");
    }
    public function getCreatedAt(): string { return $this->createdAt; }
}

class Post {
    use Timestampable;   // Mix in the trait
    public function __construct(public string $title) {}
}

$post = new Post("Hello World");
$post->setCreatedAt();
echo $post->getCreatedAt();</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Traits vs Interfaces:</strong> Traits provide actual method implementations (code reuse). Interfaces only define contracts (method signatures, no code). A class can <code>use</code> multiple traits AND <code>implement</code> multiple interfaces simultaneously.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Inheritance and Traits

        // Base class
        class Shape {
            public function __construct(protected string $color = "white") {}

            public function area(): float { return 0.0; }

            public function describe(): string {
                $class = get_class($this);
                return "$this->color $class — area: " . round($this->area(), 2);
            }
        }

        // Child classes
        class Circle extends Shape {
            public function __construct(private float $radius, string $color = "white") {
                parent::__construct($color);
            }

            public function area(): float {
                return M_PI * $this->radius ** 2;
            }
        }

        class Rectangle extends Shape {
            public function __construct(
                private float $width,
                private float $height,
                string $color = "white"
            ) {
                parent::__construct($color);
            }

            public function area(): float { return $this->width * $this->height; }
        }

        // Trait for logging
        trait Loggable {
            public function log(string $msg): void {
                echo "[LOG] " . get_class($this) . ": $msg\n";
            }
        }

        class Circle2 extends Circle {
            use Loggable;
        }

        // Test inheritance
        $shapes = [
            new Circle(5, "red"),
            new Rectangle(4, 6, "blue"),
            new Circle(3, "green"),
            new Rectangle(8, 3, "yellow")
        ];

        $totalArea = 0;
        foreach ($shapes as $s) {
            echo $s->describe() . "\n";
            $totalArea += $s->area();
        }
        echo "Total area: " . round($totalArea, 2) . "\n";

        // Trait usage
        $c = new Circle2(7, "purple");
        $c->log("Created with radius 7");
        echo $c->describe() . "\n";
        ?>
      PHP
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP uses <code>try/catch/finally</code> for exception handling, identical in structure to Java. You can throw built-in exceptions or create custom exception classes by extending the <code>Exception</code> base class.</p>
        </div>
        <div class="lc-section">
          <h2>try / catch / finally</h2>
          <div class="lc-code-block"><pre><code>try {
    $result = 10 / 0;
} catch (DivisionByZeroError $e) {
    echo "Error: " . $e->getMessage();
} catch (Exception $e) {
    echo "Exception: " . $e->getMessage();
} finally {
    echo "Always runs!";
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Custom Exceptions</h2>
          <div class="lc-code-block"><pre><code>class InsufficientFundsException extends Exception {
    public function __construct(float $needed) {
        parent::__construct("Need $needed more dollars");
    }
}

function withdraw(float $balance, float $amount): float {
    if ($amount > $balance) {
        throw new InsufficientFundsException($amount - $balance);
    }
    return $balance - $amount;
}

try {
    $bal = withdraw(100, 500);
} catch (InsufficientFundsException $e) {
    echo $e->getMessage();
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common PHP Exceptions</h2>
          <table class="lc-table">
            <thead><tr><th>Exception</th><th>Cause</th></tr></thead>
            <tbody>
              <tr><td><code>InvalidArgumentException</code></td><td>Wrong argument type/value</td></tr>
              <tr><td><code>RuntimeException</code></td><td>General runtime error</td></tr>
              <tr><td><code>LogicException</code></td><td>Programming logic error</td></tr>
              <tr><td><code>DivisionByZeroError</code></td><td>Division by zero</td></tr>
              <tr><td><code>TypeError</code></td><td>Wrong type passed</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In PHP 8+, you can catch multiple exception types in one catch block: <code>catch (TypeError | InvalidArgumentException $e)</code>. This reduces repetitive error handling code when you want to handle multiple exception types the same way.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Exception Handling

        // Custom exception
        class ValidationException extends Exception {
            public function __construct(string $field, string $msg) {
                parent::__construct("Validation failed for '$field': $msg");
            }
        }

        // Safe divide
        function safeDivide(float $a, float $b): float {
            if ($b == 0) {
                throw new InvalidArgumentException("Cannot divide by zero!");
            }
            return $a / $b;
        }

        // Validate age
        function validateAge(int $age): void {
            if ($age < 0 || $age > 150) {
                throw new ValidationException("age", "Must be between 0 and 150, got $age");
            }
            echo "Valid age: $age\n";
        }

        // Test safe divide
        $pairs = [[10, 2], [15, 3], [10, 0]];
        foreach ($pairs as [$a, $b]) {
            try {
                $result = safeDivide($a, $b);
                echo "$a / $b = $result\n";
            } catch (InvalidArgumentException $e) {
                echo "Error: " . $e->getMessage() . "\n";
            }
        }

        // Test validation
        echo "\n";
        $ages = [25, -5, 200, 42];
        foreach ($ages as $age) {
            try {
                validateAge($age);
            } catch (ValidationException $e) {
                echo $e->getMessage() . "\n";
            } finally {
                echo "  (checked $age)\n";
            }
        }
        ?>
      PHP
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>PHP is most powerful when connected to a <strong>MySQL database</strong>. The <code>PDO</code> (PHP Data Objects) extension provides a secure, consistent interface for database operations with support for prepared statements that prevent SQL injection.</p>
        </div>
        <div class="lc-section">
          <h2>Connecting with PDO</h2>
          <div class="lc-code-block"><pre><code>$pdo = new PDO(
    "mysql:host=localhost;dbname=myapp;charset=utf8",
    "username",
    "password",
    [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION]
);
echo "Connected!";</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Prepared Statements (Secure!)</h2>
          <div class="lc-code-block"><pre><code>// Always use prepared statements — NEVER string concatenation!
$stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
$stmt->execute([$email]);
$user = $stmt->fetch(PDO::FETCH_ASSOC);

// Insert with named placeholders
$stmt = $pdo->prepare("INSERT INTO users (name, email) VALUES (:name, :email)");
$stmt->execute(["name" => "Alice", "email" => "alice@example.com"]);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>CRUD Operations</h2>
          <table class="lc-table">
            <thead><tr><th>Operation</th><th>SQL</th><th>PDO Method</th></tr></thead>
            <tbody>
              <tr><td>Create</td><td><code>INSERT INTO</code></td><td><code>execute()</code></td></tr>
              <tr><td>Read</td><td><code>SELECT</code></td><td><code>fetchAll()</code></td></tr>
              <tr><td>Update</td><td><code>UPDATE ... SET</code></td><td><code>execute()</code></td></tr>
              <tr><td>Delete</td><td><code>DELETE FROM</code></td><td><code>execute()</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Never build SQL queries with string concatenation!</strong> <code>"SELECT * FROM users WHERE name = '$name'"</code> allows SQL injection. Always use PDO prepared statements — they separate SQL from data, making injection impossible.</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // PHP and MySQL / PDO (Simulated)
        // In real usage: $pdo = new PDO("mysql:host=localhost;dbname=myapp", $user, $pass);

        // Simulating a database with PHP arrays
        $usersDb = [
            ["id" => 1, "name" => "Alice",  "email" => "alice@example.com",  "score" => 95],
            ["id" => 2, "name" => "Bob",    "email" => "bob@example.com",    "score" => 78],
            ["id" => 3, "name" => "Carol",  "email" => "carol@example.com",  "score" => 88],
            ["id" => 4, "name" => "Dave",   "email" => "dave@example.com",   "score" => 55],
            ["id" => 5, "name" => "Eve",    "email" => "eve@example.com",    "score" => 92],
        ];

        // SELECT all — simulated fetchAll()
        echo "=== All Users ===\n";
        foreach ($usersDb as $user) {
            echo "#{$user['id']} {$user['name']} ({$user['email']})\n";
        }

        // SELECT with WHERE — simulated prepare/execute
        $searchScore = 80;
        $passing = array_filter($usersDb, fn($u) => $u["score"] >= $searchScore);
        echo "\n=== Passing (score >= $searchScore) ===\n";
        foreach ($passing as $u) {
            echo "{$u['name']}: {$u['score']}\n";
        }

        // INSERT — add new record
        $newUser = ["id" => 6, "name" => "Frank", "email" => "frank@example.com", "score" => 72];
        $usersDb[] = $newUser;
        echo "\n=== After INSERT ===\n";
        echo "Total users: " . count($usersDb) . "\n";

        // UPDATE
        foreach ($usersDb as &$user) {
            if ($user["id"] === 2) $user["score"] = 85;
        }
        echo "Bob's updated score: " . $usersDb[1]["score"] . "\n";

        // Aggregate stats
        $scores = array_column($usersDb, "score");
        echo "\n=== Stats ===\n";
        echo "Average: " . round(array_sum($scores) / count($scores), 1) . "\n";
        echo "Highest: " . max($scores) . "\n";
        echo "Lowest:  " . min($scores) . "\n";
        ?>
      PHP
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Congratulations on completing the PHP course! You have learned one of the most widely-used web development languages. PHP powers over 77% of the web, and frameworks like <strong>Laravel</strong> make it one of the best choices for modern web applications.</p>
        </div>
        <div class="lc-section">
          <h2>PHP Fundamentals ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Variables with <code>$</code> prefix, dynamic typing, and type casting</li>
            <li>Strings: single vs double quotes, interpolation, concatenation with <code>.</code></li>
            <li>Numbers, math functions, and formatting with <code>number_format()</code></li>
            <li>Indexed arrays and associative arrays with <code>=&gt;</code></li>
            <li>Conditionals: <code>if/elseif/else</code>, strict <code>===</code> comparison</li>
            <li>Loops: <code>for</code>, <code>while</code>, <code>foreach ($arr as $key =&gt; $value)</code></li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Advanced PHP ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Functions with default params, type hints, and closures</li>
            <li>Array functions: <code>array_map</code>, <code>array_filter</code>, <code>array_reduce</code></li>
            <li>OOP: classes, <code>$this</code>, <code>__construct()</code>, access modifiers</li>
            <li>Inheritance with <code>extends</code>, traits for horizontal reuse</li>
            <li>Exception handling: <code>try/catch/finally</code>, custom exceptions</li>
            <li>PDO for secure database operations with prepared statements</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Learn <strong>Laravel</strong> — the most elegant PHP framework. It adds routing, ORM (Eloquent), authentication, queues, and much more. Commands: <code>composer create-project laravel/laravel myapp</code> and you're building!</p></div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // PHP Review — Student Management System

        class Student {
            private static int $count = 0;

            public function __construct(
                private int    $id,
                private string $name,
                private array  $scores = []
            ) {
                self::$count++;
            }

            public function addScore(string $subject, int $score): void {
                $this->scores[$subject] = $score;
            }

            public function average(): float {
                if (empty($this->scores)) return 0.0;
                return array_sum($this->scores) / count($this->scores);
            }

            public function grade(): string {
                $avg = $this->average();
                if ($avg >= 90) return "A";
                if ($avg >= 80) return "B";
                if ($avg >= 70) return "C";
                return "F";
            }

            public function report(): void {
                echo str_repeat("=", 35) . "\n";
                echo "  #{$this->id} {$this->name}\n";
                echo str_repeat("-", 35) . "\n";
                foreach ($this->scores as $subject => $score) {
                    $bar = str_repeat("█", intdiv($score, 10));
                    echo "  " . str_pad($subject, 12) . " $score  $bar\n";
                }
                echo "  " . str_pad("Average", 12) . " " . round($this->average(), 1);
                echo "  (Grade: " . $this->grade() . ")\n";
            }

            public function getName():    string { return $this->name; }
            public function getAverage(): float  { return $this->average(); }
            public static function getCount(): int { return self::$count; }
        }

        // Create students
        $data = [
            ["Alice",  ["PHP" => 95, "Python" => 88, "Math" => 92]],
            ["Bob",    ["PHP" => 65, "Python" => 72, "Math" => 68]],
            ["Carol",  ["PHP" => 98, "Python" => 95, "Math" => 97]],
            ["Dave",   ["PHP" => 55, "Python" => 60, "Math" => 58]],
        ];

        $students = [];
        foreach ($data as $i => [$name, $scores]) {
            $s = new Student($i + 1, $name);
            foreach ($scores as $subject => $score) {
                $s->addScore($subject, $score);
            }
            $students[] = $s;
        }

        // Print reports
        foreach ($students as $s) {
            $s->report();
        }

        // Class statistics
        $averages = array_map(fn($s) => $s->getAverage(), $students);
        $topIdx   = array_search(max($averages), $averages);

        echo str_repeat("=", 35) . "\n";
        echo "  CLASS STATISTICS\n";
        echo "  Total: " . Student::getCount() . " students\n";
        printf("  Class avg: %.1f\n", array_sum($averages) / count($averages));
        echo "  Top: " . $students[$topIdx]->getName() . " (" . round(max($averages), 1) . ")\n";
        ?>
      PHP
    }
  }.freeze
end

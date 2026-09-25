module PhpContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Introduction to PHP</h1>
        </div>
        <p class="lc-lead">PHP is a <strong>server-side programming language</strong> built for the web. When someone opens a PHP page, the server runs your PHP code first and sends only the <em>result</em> (usually HTML) to the browser. The visitor never sees your PHP source.</p>
        <div class="lc-card">
          <h3>Where PHP Runs</h3>
          <p>JavaScript in a web page runs inside the visitor's browser. PHP runs on the <strong>server</strong>, before the page is sent.</p>
          <ul class="lc-list">
            <li><strong>1.</strong> The browser asks for <code>https://shop.example/products.php</code>.</li>
            <li><strong>2.</strong> The web server (Nginx, Apache or Caddy) passes the file to the PHP engine (usually PHP-FPM).</li>
            <li><strong>3.</strong> PHP runs the code: it may read a database, check a login, do calculations.</li>
            <li><strong>4.</strong> PHP's output (HTML, JSON…) goes back to the browser. Then PHP forgets everything — each request starts fresh.</li>
          </ul>
          <p>That last point matters: PHP follows a <strong>"share-nothing"</strong> model. Variables do not survive between requests; you use sessions, cookies or a database to remember things.</p>
        </div>
        <div class="lc-card">
          <h3>Who Uses PHP?</h3>
          <ul class="lc-list">
            <li>According to W3Techs (September 2026), PHP is used by about <strong>70% of websites whose server-side language is known</strong>.</li>
            <li><strong>WordPress</strong> (a huge share of all blogs and business sites), <strong>Wikipedia</strong> (MediaWiki), Drupal, Magento and WooCommerce are written in PHP.</li>
            <li>Modern frameworks: <strong>Laravel</strong> and <strong>Symfony</strong> — very common in Indian IT services and product companies.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>PHP Versions in 2026</h3>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Released</th><th>Status (Sept 2026)</th></tr></thead>
            <tbody>
              <tr><td>PHP 8.5</td><td>Nov 2025</td><td>Latest — active support. <strong>The lesson editor runs PHP 8.5.</strong></td></tr>
              <tr><td>PHP 8.4</td><td>Nov 2024</td><td>Active support until end of 2026</td></tr>
              <tr><td>PHP 8.3 / 8.2</td><td>2023 / 2022</td><td>Security fixes only — still common on shared hosting</td></tr>
              <tr><td>PHP 7.x and older</td><td>2015–2019</td><td>End of life — no security fixes, do not use for new work</td></tr>
            </tbody>
          </table>
          <p>Many servers you will meet at work still run PHP 8.2 or 8.3. So whenever a lesson uses a newer feature it is labelled <strong>8.4+</strong> or <strong>8.5+</strong> — check <code>php -v</code> on your server before using it.</p>
        </div>
        <div class="lc-card">
          <h3>Your First Script</h3>
          <p>PHP code lives between <code>&lt;?php</code> and <code>?&gt;</code>. Every statement ends with a semicolon. In a file that contains <em>only</em> PHP, leave out the closing <code>?&gt;</code> — this avoids accidental blank lines being sent to the browser.</p>
          <div class="lc-code">&lt;?php<br>// A single-line comment<br># Also a comment (less common)<br>/* A multi-line<br>   comment */<br>echo "Namaste, PHP!\n";<br>echo "2 + 3 = ", 2 + 3, "\n";   // echo can take several values<br>print "print works too\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Namaste, PHP!<br>2 + 3 = 5<br>print works too</div>
          <p><code>"\n"</code> is a newline character. In a browser you would output HTML such as <code>&lt;br&gt;</code> or <code>&lt;p&gt;</code> instead, but the editor shows plain text like a terminal.</p>
        </div>
        <div class="lc-card">
          <h3>Output Tools</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Use it for</th><th>Example output</th></tr></thead>
            <tbody>
              <tr><td><code>echo</code></td><td>Normal output, one or more values</td><td><code>Hello</code></td></tr>
              <tr><td><code>print</code></td><td>Output one value (returns 1, rarely needed)</td><td><code>Hello</code></td></tr>
              <tr><td><code>var_dump()</code></td><td>Debugging — shows <strong>type and value</strong></td><td><code>int(42)</code></td></tr>
              <tr><td><code>print_r()</code></td><td>Readable view of arrays and objects</td><td><code>Array ( [0] =&gt; 1 )</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code">var_dump(42);<br>var_dump(9.5);<br>var_dump("PHP");<br>var_dump(true);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">int(42)<br>float(9.5)<br>string(3) "PHP"<br>bool(true)</div>
        </div>
        <div class="lc-card">
          <h3>Running PHP on Your Own Computer</h3>
          <ul class="lc-list">
            <li>Install PHP (Windows: download from windows.php.net or use Laragon/XAMPP; macOS: <code>brew install php</code>; Ubuntu: <code>sudo apt install php-cli</code>).</li>
            <li><code>php -v</code> — show the installed version.</li>
            <li><code>php hello.php</code> — run a script in the terminal.</li>
            <li><code>php -S localhost:8000</code> — start PHP's built-in development web server in the current folder, then open <code>http://localhost:8000/hello.php</code>. (For development only — never production.)</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting the semicolon — PHP reports <code>syntax error, unexpected ...</code> on the <em>next</em> line.</li>
            <li>Opening a <code>.php</code> file directly from disk in the browser (<code>file://...</code>). The browser cannot run PHP — you need a server such as <code>php -S</code>.</li>
            <li>Thinking <code>echo</code> is a function. It is a language construct, so <code>echo "a", "b";</code> works without brackets.</li>
            <li>Learning from old tutorials that use <code>mysql_query()</code> — that API was removed in PHP 7. We use PDO in Lesson 18.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the editor, print three lines: your name, your city, and the result of <code>365 * 24</code> (hours in a year) using one <code>echo</code> with commas. Then add <code>var_dump(365 * 24);</code> and check the type it reports.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Use <code>var_dump()</code> whenever a value looks wrong. It shows the exact type, so you can spot a <code>string(2) "10"</code> that should have been <code>int(10)</code>.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 1: Introduction to PHP

        // 1. echo prints text. "\n" starts a new line.
        echo "Namaste, PHP!\n";
        echo "This line came from the server.\n";

        // 2. echo can print several values separated by commas
        echo "Hours in a day: ", 24, "\n";
        echo "Hours in a year: ", 365 * 24, "\n";

        // 3. The dot (.) joins strings together
        $language = "PHP";
        echo "I am learning " . $language . "!\n";

        // 4. Which PHP is running this code?
        echo "Running on PHP ", PHP_MAJOR_VERSION, ".", PHP_MINOR_VERSION, "\n";

        // 5. var_dump() shows the TYPE and the value - great for debugging
        echo "\n--- var_dump ---\n";
        var_dump(365 * 24);
        var_dump(7 / 2);
        var_dump("Hello");
        var_dump(10 > 5);

        // 6. print_r() shows arrays in a readable way
        echo "\n--- print_r ---\n";
        print_r(["Delhi", "Mumbai", "Chennai"]);
      PHP
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Variables, Numbers and Constants</h1>
        </div>
        <p class="lc-lead">A <strong>variable</strong> is a named box that holds a value. In PHP every variable name starts with a dollar sign: <code>$price</code>, <code>$studentName</code>. PHP works out the type from the value you store — you do not have to declare it (Lesson 9 shows how to add type checks when you want them).</p>
        <div class="lc-card">
          <h3>Creating Variables</h3>
          <ul class="lc-list">
            <li>Start with <code>$</code>, then a letter or underscore: <code>$total</code>, <code>$_temp</code>. <code>$2cool</code> is invalid.</li>
            <li>Names are <strong>case-sensitive</strong>: <code>$age</code> and <code>$Age</code> are different variables.</li>
            <li>Use <strong>camelCase</strong> for variables (<code>$monthlyFee</code>) — the common style in Laravel and Symfony code.</li>
            <li>Reading a variable that was never assigned gives <code>null</code> <em>and</em> a warning "Undefined variable". Always assign first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>PHP's Basic Types</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th><code>get_debug_type()</code></th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>int</td><td><code>$age = 21;</code></td><td><code>int</code></td><td>Whole numbers, 64-bit on modern systems</td></tr>
              <tr><td>float</td><td><code>$cgpa = 8.7;</code></td><td><code>float</code></td><td>Decimals — approximate!</td></tr>
              <tr><td>string</td><td><code>$city = "Pune";</code></td><td><code>string</code></td><td>Text (Lesson 3)</td></tr>
              <tr><td>bool</td><td><code>$isAdmin = false;</code></td><td><code>bool</code></td><td><code>true</code> or <code>false</code></td></tr>
              <tr><td>null</td><td><code>$result = null;</code></td><td><code>null</code></td><td>"No value"</td></tr>
              <tr><td>array</td><td><code>$marks = [90, 85];</code></td><td><code>array</code></td><td>Lists and maps (Lesson 6)</td></tr>
              <tr><td>object</td><td><code>new DateTimeImmutable()</code></td><td>class name</td><td>Lesson 11 onwards</td></tr>
            </tbody>
          </table>
          <p><code>get_debug_type()</code> (PHP 8.0+) gives short, modern names. The older <code>gettype()</code> returns names like <code>"double"</code> and <code>"NULL"</code>, which is confusing.</p>
        </div>
        <div class="lc-card">
          <h3>Arithmetic</h3>
          <table class="lc-table">
            <thead><tr><th>Operator / function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>+ - *</code></td><td><code>4 * 2.5</code></td><td><code>10</code> — a float, because 2.5 is a float</td></tr>
              <tr><td><code>/</code></td><td><code>7 / 2</code> and <code>6 / 2</code></td><td><code>3.5</code> (float) and <code>3</code> (int)</td></tr>
              <tr><td><code>intdiv()</code></td><td><code>intdiv(7, 2)</code></td><td><code>3</code> — whole-number division</td></tr>
              <tr><td><code>%</code></td><td><code>17 % 5</code></td><td><code>2</code> — remainder</td></tr>
              <tr><td><code>**</code></td><td><code>2 ** 10</code></td><td><code>1024</code> — power</td></tr>
              <tr><td><code>round() floor() ceil()</code></td><td><code>round(3.14159, 2)</code></td><td><code>3.14</code></td></tr>
            </tbody>
          </table>
          <p>Dividing by zero with <code>/</code>, <code>%</code> or <code>intdiv()</code> throws a <code>DivisionByZeroError</code> in PHP 8 (PHP 7 only printed a warning for <code>/</code> and carried on with <code>INF</code>).</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Canteen Bill</h3>
          <div class="lc-code">$plates   = 3;<br>$price    = 60;        // rupees per plate<br>$gstRate  = 0.05;      // 5% GST<br><br>$subtotal = $plates * $price;<br>$gst      = $subtotal * $gstRate;<br>$total    = $subtotal + $gst;<br><br>echo "Subtotal: ", $subtotal, "\n";<br>echo "GST: ", $gst, "\n";<br>echo "Total: Rs ", number_format($total, 2), "\n";<br>var_dump($subtotal, $total);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Subtotal: 180<br>GST: 9<br>Total: Rs 189.00<br>int(180)<br>float(189)</div>
          <p>Notice that <code>$subtotal</code> is an int but <code>$total</code> is a float — multiplying by <code>0.05</code> made it a float. <code>number_format()</code> formats a number with a fixed number of decimals and thousands separators.</p>
        </div>
        <div class="lc-card">
          <h3>Floats Are Approximate</h3>
          <div class="lc-code">var_dump(0.1 + 0.2);<br>var_dump(0.1 + 0.2 == 0.3);<br>echo intdiv(1999, 100), " rupees and ", 1999 % 100, " paise\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">float(0.30000000000000004)<br>bool(false)<br>19 rupees and 99 paise</div>
          <p>Computers store floats in binary, so many decimals cannot be stored exactly. For money, store whole <strong>paise</strong> as integers (1999 instead of 19.99), or use the <code>bcmath</code> extension in real projects.</p>
        </div>
        <div class="lc-card">
          <h3>Casting and Constants</h3>
          <div class="lc-code">$qty = (int) "42";      // 42     (string to int)<br>$bad = (int) "abc";     // 0      (no digits: silently 0!)<br>$cut = (int) 12.9;      // 12     (cuts off, does not round)<br>$yes = (bool) "0";      // false  ("0" and "" are false)<br><br>const MAX_SEATS = 60;             // preferred: const<br>define('APP_NAME', 'Canteen');    // also works<br>echo MAX_SEATS;                   // no $ for constants<br>echo PHP_INT_MAX;                 // 9223372036854775807</div>
          <p>Constants are written in <strong>UPPER_SNAKE_CASE</strong>, have no <code>$</code>, and cannot be changed after they are defined.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Comparing floats with <code>==</code>. Compare with a tolerance: <code>abs($a - $b) &lt; 0.00001</code>.</li>
            <li>Expecting <code>(int) 12.9</code> to be 13 — casting truncates. Use <code>round()</code> first.</li>
            <li>Writing <code>$MAX_SEATS</code> for a constant — constants have no dollar sign.</li>
            <li>Doing maths on text like <code>"abc" + 5</code>: PHP 8 throws a <code>TypeError</code> (older PHP silently used 0).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>A train ticket costs Rs 745 and there are 4 passengers with a 10% group discount. In the editor, calculate the total, print it with <code>number_format(..., 2)</code>, and use <code>var_dump()</code> to check whether the result is an int or a float.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> <code>intdiv()</code> and <code>%</code> are a perfect pair: <code>intdiv(135, 60)</code> hours and <code>135 % 60</code> minutes turns 135 minutes into "2 h 15 min".
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 2: Variables, Numbers and Constants

        const GST_RATE = 0.18;           // a constant: no $, cannot change

        $product  = "Wireless mouse";
        $price    = 499;                 // int (rupees)
        $quantity = 3;
        $inStock  = true;
        $coupon   = null;                // no coupon yet

        echo "--- Types ---\n";
        echo "product:  ", get_debug_type($product), "\n";
        echo "price:    ", get_debug_type($price), "\n";
        echo "inStock:  ", get_debug_type($inStock), "\n";
        echo "coupon:   ", get_debug_type($coupon), "\n";

        echo "\n--- Bill ---\n";
        $subtotal = $price * $quantity;          // int * int = int
        $gst      = $subtotal * GST_RATE;        // int * float = float
        $total    = $subtotal + $gst;
        echo "Subtotal: Rs $subtotal\n";
        echo "GST 18%:  Rs ", number_format($gst, 2), "\n";
        echo "Total:    Rs ", number_format($total, 2), "\n";

        echo "\n--- Division ---\n";
        var_dump(7 / 2);           // float(3.5)
        var_dump(8 / 2);           // int(4)
        var_dump(intdiv(7, 2));    // int(3)
        echo "135 minutes = ", intdiv(135, 60), " h ", 135 % 60, " min\n";

        echo "\n--- Casting ---\n";
        var_dump((int) "42");
        var_dump((int) 12.9);
        var_dump((bool) "0");
        var_dump(0.1 + 0.2 == 0.3);   // false! floats are approximate
      PHP
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Strings and Text</h1>
        </div>
        <p class="lc-lead">Almost everything a web app sends is text: HTML, JSON, emails, SMS messages. PHP strings are easy to build and have hundreds of helper functions. The one trap is <strong>Unicode</strong> — text like "नमस्ते" or "café" needs the <code>mb_*</code> functions.</p>
        <div class="lc-card">
          <h3>Single Quotes, Double Quotes and Heredoc</h3>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Variables replaced?</th><th>Escapes like <code>\n</code>?</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>'Hi $name'</code></td><td>No — printed literally</td><td>Only <code>\'</code> and <code>\\</code></td><td>Fixed text</td></tr>
              <tr><td><code>"Hi $name\n"</code></td><td>Yes</td><td>Yes</td><td>Short messages</td></tr>
              <tr><td>Heredoc <code>&lt;&lt;&lt;TXT</code></td><td>Yes</td><td>Yes</td><td>Multi-line templates</td></tr>
              <tr><td>Nowdoc <code>&lt;&lt;&lt;'TXT'</code></td><td>No</td><td>No</td><td>Multi-line fixed text or code samples</td></tr>
            </tbody>
          </table>
          <p>Inside double quotes, wrap array items and object properties in braces: <code>"City: {$user['city']}"</code>. Join strings with the dot operator <code>.</code> and append with <code>.=</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Interpolation and Heredoc</h3>
          <div class="lc-code">$name = "Asha";<br>$user = ['city' =&gt; 'Kochi', 'marks' =&gt; 91];<br><br>echo 'Hello $name\n', "\n";         // single quotes: literal<br>echo "Hello $name from {$user['city']}\n";<br><br>$msg  = "Marks: ";<br>$msg .= $user['marks'];              // append<br>echo $msg, "\n";<br><br>echo &lt;&lt;&lt;TXT<br>    Dear $name,<br>      You scored {$user['marks']}.<br>    TXT;<br>echo "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Hello $name\n<br>Hello Asha from Kochi<br>Marks: 91<br>Dear Asha,<br>  You scored 91.</div>
          <p>Since PHP 7.3 the closing heredoc marker can be indented, and that indentation is removed from every line — so the text lines up neatly in your code.</p>
        </div>
        <div class="lc-card">
          <h3>Essential String Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>strlen</code></td><td><code>strlen("hello")</code></td><td><code>5</code> (bytes)</td></tr>
              <tr><td><code>strtoupper / strtolower</code></td><td><code>strtoupper("pune")</code></td><td><code>"PUNE"</code></td></tr>
              <tr><td><code>ucfirst / ucwords</code></td><td><code>ucwords("rahul kumar")</code></td><td><code>"Rahul Kumar"</code></td></tr>
              <tr><td><code>trim</code></td><td><code>trim("  hi  ")</code></td><td><code>"hi"</code></td></tr>
              <tr><td><code>str_replace</code></td><td><code>str_replace("-", "", "98-76")</code></td><td><code>"9876"</code></td></tr>
              <tr><td><code>substr</code></td><td><code>substr("PHP8.3", 0, 3)</code></td><td><code>"PHP"</code></td></tr>
              <tr><td><code>strpos</code></td><td><code>strpos("apple", "a")</code></td><td><code>0</code> (position, or <code>false</code>)</td></tr>
              <tr><td><code>str_contains / str_starts_with / str_ends_with</code> (8.0+)</td><td><code>str_ends_with("a.pdf", ".pdf")</code></td><td><code>true</code></td></tr>
              <tr><td><code>explode / implode</code></td><td><code>explode(",", "a,b,c")</code></td><td><code>["a", "b", "c"]</code></td></tr>
              <tr><td><code>str_pad</code></td><td><code>str_pad("7", 3, "0", STR_PAD_LEFT)</code></td><td><code>"007"</code></td></tr>
              <tr><td><code>sprintf</code></td><td><code>sprintf("%.2f%%", 12.345)</code></td><td><code>"12.35%"</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>sprintf: Formatting Like a Pro</h3>
          <p><code>sprintf()</code> returns a formatted string; <code>printf()</code> prints it directly.</p>
          <ul class="lc-list">
            <li><code>%s</code> string, <code>%d</code> integer, <code>%.2f</code> float with 2 decimals, <code>%%</code> a literal percent sign</li>
            <li><code>%-10s</code> left-aligned in 10 characters, <code>%6s</code> right-aligned, <code>%05d</code> zero-padded</li>
          </ul>
          <div class="lc-code">printf("%-8s|%6.1f|%03d\n", "Riya", 87.456, 7);<br>printf("%-8s|%6.1f|%03d\n", "Arjun", 92.0, 12);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Riya    |  87.5|007<br>Arjun   |  92.0|012</div>
        </div>
        <div class="lc-card">
          <h3>UTF-8 Text: Use mb_* Functions</h3>
          <p>PHP strings are sequences of <strong>bytes</strong>. In UTF-8, "é" takes 2 bytes and each Devanagari character takes 3. The normal functions count bytes; the <code>mbstring</code> functions count real characters.</p>
          <div class="lc-code">$word = "नमस्ते";<br>echo strlen($word), " bytes\n";<br>echo mb_strlen($word), " characters\n";<br>echo mb_substr($word, 0, 2), "\n";<br>echo strtoupper("café"), " vs ", mb_strtoupper("café"), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">18 bytes<br>6 characters<br>नम<br>CAFé vs CAFÉ</div>
          <p>Since PHP 8.2, <code>strtoupper()</code> only changes ASCII letters A–Z. For names, cities and user input, prefer <code>mb_strlen</code>, <code>mb_substr</code>, <code>mb_strtoupper</code> and <code>mb_strtolower</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>if (strpos($s, "a"))</code> is false when "a" is at position <strong>0</strong>. Use <code>str_contains()</code>, or compare with <code>!== false</code>.</li>
            <li>Using <code>+</code> to join strings — that is addition. Use <code>.</code>.</li>
            <li>Cutting user names with <code>substr()</code> — it can split a multi-byte character and print "�". Use <code>mb_substr()</code>.</li>
            <li>Writing <code>"{$user[city]}"</code> without quotes inside braces — use <code>{$user['city']}</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Take the string <code>"  priya  SHARMA  "</code>. Trim it, convert it to "Priya Sharma" (hint: <code>mb_strtolower</code> then <code>ucwords</code>), and print the initials "P.S." using <code>explode()</code> and <code>mb_substr()</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Build output with <code>sprintf()</code> instead of long chains of dots — <code>sprintf("%s owes Rs %.2f", $name, $amt)</code> is easier to read and to change.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 3: Strings and Text

        $first = "priya";
        $last  = "SHARMA";
        $city  = "Bengaluru";

        // Build a full name: fix the case, then join with a dot
        $fullName = ucfirst($first) . " " . ucfirst(strtolower($last));
        echo "Name: $fullName\n";
        echo "Initials: " . strtoupper($first[0] . $last[0]) . "\n";

        // Interpolation with braces for array items
        $student = ['roll' => 7, 'marks' => 87.456];
        echo "Roll {$student['roll']} lives in $city\n";

        // Search functions
        $email = "priya.sharma@example.in";
        var_dump(str_contains($email, "@"));
        var_dump(str_ends_with($email, ".in"));
        echo "Username: " . substr($email, 0, strpos($email, "@")) . "\n";

        // explode / implode
        $skills = explode(",", "PHP,MySQL,Laravel");
        echo "Skills: " . implode(" | ", $skills) . "\n";

        // sprintf formatting
        echo sprintf("%-10s %6.2f%%\n", "Score:", $student['marks']);
        echo sprintf("Invoice #%05d\n", 42);

        // Unicode: count characters, not bytes
        $greeting = "नमस्ते";
        echo "strlen: " . strlen($greeting) . ", mb_strlen: " . mb_strlen($greeting) . "\n";
        echo mb_strtoupper("café au lait") . "\n";

        // Heredoc template
        echo <<<MSG
            Dear $fullName,
              Your result is ready.
            MSG;
        echo "\n";
      PHP
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Comparisons and Conditionals</h1>
        </div>
        <p class="lc-lead">Programs make decisions: "is the user logged in?", "which grade does 78 marks get?". In PHP you first need to compare values <strong>correctly</strong> — PHP has two kinds of equality — and then pick the right decision tool: <code>if</code>, <code>switch</code> or <code>match</code>.</p>
        <div class="lc-card">
          <h3>Loose == vs Strict ===</h3>
          <p><code>==</code> converts types before comparing (<em>type juggling</em>). <code>===</code> is true only when the <strong>type and value</strong> are both the same.</p>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th><code>==</code></th><th><code>===</code></th></tr></thead>
            <tbody>
              <tr><td><code>"1"</code> and <code>1</code></td><td>true</td><td>false</td></tr>
              <tr><td><code>"10"</code> and <code>"1e1"</code></td><td>true (both numeric strings!)</td><td>false</td></tr>
              <tr><td><code>null</code> and <code>false</code></td><td>true</td><td>false</td></tr>
              <tr><td><code>0</code> and <code>"a"</code></td><td>false in PHP 8 (true in PHP 7!)</td><td>false</td></tr>
            </tbody>
          </table>
          <p>Rule of thumb: <strong>always use <code>===</code> and <code>!==</code></strong> unless you have a clear reason not to.</p>
        </div>
        <div class="lc-card">
          <h3>Other Comparison and Logic Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>&lt; &gt; &lt;= &gt;=</code></td><td>Less / greater</td><td><code>$age &gt;= 18</code></td></tr>
              <tr><td><code>&lt;=&gt;</code></td><td>Spaceship: -1, 0 or 1</td><td><code>5 &lt;=&gt; 3</code> gives <code>1</code> (used for sorting, Lesson 7)</td></tr>
              <tr><td><code>&amp;&amp; || !</code></td><td>And, or, not</td><td><code>$age &gt;= 18 &amp;&amp; $hasId</code></td></tr>
              <tr><td><code>??</code></td><td>Null coalescing: left side unless it is null or missing</td><td><code>$_GET['page'] ?? 1</code></td></tr>
              <tr><td><code>??=</code></td><td>Assign only if null or missing</td><td><code>$config['lang'] ??= 'en';</code></td></tr>
              <tr><td><code>? :</code></td><td>Ternary</td><td><code>$marks &gt;= 35 ? 'Pass' : 'Fail'</code></td></tr>
            </tbody>
          </table>
          <p><strong>Falsy values</strong> (treated as false in an <code>if</code>): <code>false</code>, <code>0</code>, <code>0.0</code>, <code>""</code>, <code>"0"</code>, <code>[]</code> and <code>null</code>. Everything else is truthy — even <code>"0.0"</code> and <code>" "</code>.</p>
        </div>
        <div class="lc-card">
          <h3>if / elseif / else</h3>
          <div class="lc-code">$marks = 78;<br><br>if ($marks &gt;= 90) {<br>    $grade = "A+";<br>} elseif ($marks &gt;= 75) {<br>    $grade = "A";<br>} elseif ($marks &gt;= 35) {<br>    $grade = "Pass";<br>} else {<br>    $grade = "Fail";<br>}<br>echo "Grade: $grade\n";<br><br>$nickname = null;<br>echo "Hello, " . ($nickname ?? "student") . "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Grade: A<br>Hello, student</div>
        </div>
        <div class="lc-card">
          <h3>match (PHP 8.0+) vs switch</h3>
          <p><code>match</code> is an <strong>expression</strong>: it returns a value. It compares with <code>===</code>, has no fall-through, and throws <code>UnhandledMatchError</code> if nothing matches and there is no <code>default</code>.</p>
          <div class="lc-code">$status = 404;<br>$message = match ($status) {<br>    200, 201 =&gt; "OK",<br>    301, 302 =&gt; "Redirect",<br>    404      =&gt; "Not Found",<br>    500      =&gt; "Server Error",<br>    default  =&gt; "Unknown",<br>};<br>echo "$status: $message\n";<br><br>// match (true) replaces a long if/elseif chain<br>$marks = 62;<br>echo match (true) {<br>    $marks &gt;= 75 =&gt; "Distinction",<br>    $marks &gt;= 60 =&gt; "First class",<br>    $marks &gt;= 35 =&gt; "Pass",<br>    default      =&gt; "Fail",<br>}, "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">404: Not Found<br>First class</div>
          <table class="lc-table">
            <thead><tr><th></th><th><code>switch</code></th><th><code>match</code></th></tr></thead>
            <tbody>
              <tr><td>Comparison</td><td>Loose <code>==</code></td><td>Strict <code>===</code></td></tr>
              <tr><td>Returns a value</td><td>No</td><td>Yes</td></tr>
              <tr><td>Needs <code>break</code></td><td>Yes — forgetting it "falls through"</td><td>No</td></tr>
              <tr><td>No case matched</td><td>Nothing happens</td><td><code>UnhandledMatchError</code></td></tr>
              <tr><td>Several statements per case</td><td>Yes</td><td>No — one expression per arm (call a function if needed)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><code>if ($x = 5)</code> assigns 5 (always true). Compare with <code>===</code>.</li>
            <li>Forgetting <code>break</code> in <code>switch</code>, so the next case runs too.</li>
            <li>Using <code>and</code> / <code>or</code> instead of <code>&amp;&amp;</code> / <code>||</code>. They have lower precedence than <code>=</code>, so <code>$ok = true and false;</code> stores <code>true</code>.</li>
            <li>Using <code>?:</code> when you mean <code>??</code>. <code>$qty ?: 1</code> replaces a valid <code>0</code> with 1; <code>$qty ?? 1</code> only replaces <code>null</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write a <code>match</code> that turns a day number (1–7) into "Weekday" or "Weekend" (6 and 7). Then test it with <code>8</code> and read the <code>UnhandledMatchError</code> message. Fix it by adding a <code>default</code> arm.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In new code, reach for <code>match</code> first. Use <code>switch</code> only when each case needs several statements — and even then, a <code>match</code> that calls small functions is often cleaner.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 4: Comparisons and Conditionals

        echo "--- == vs === ---\n";
        var_dump("1" == 1);      // true  (types converted)
        var_dump("1" === 1);     // false (string vs int)
        var_dump(null == false); // true
        var_dump(0 == "a");      // false in PHP 8

        echo "\n--- if / elseif / else ---\n";
        $marks = 78;
        if ($marks >= 90) {
            echo "Outstanding\n";
        } elseif ($marks >= 75) {
            echo "Distinction\n";
        } else {
            echo "Keep going\n";
        }

        echo "\n--- ?? and ternary ---\n";
        $form = ['name' => 'Kiran', 'qty' => 0];
        $city = $form['city'] ?? 'Not given';   // key missing -> default
        echo "City: $city\n";
        echo "Qty with ?? : ", $form['qty'] ?? 1, "\n";   // 0 is kept
        echo "Qty with ?: : ", $form['qty'] ?: 1, "\n";   // 0 is replaced!
        echo $marks >= 35 ? "Result: Pass\n" : "Result: Fail\n";

        echo "\n--- match ---\n";
        foreach ([200, 404, 503, 418] as $code) {
            $text = match ($code) {
                200, 201 => "OK",
                404      => "Not Found",
                500, 503 => "Server problem",
                default  => "Other",
            };
            echo "$code => $text\n";
        }

        echo "\n--- spaceship <=> ---\n";
        echo 3 <=> 5, " ", 5 <=> 5, " ", 7 <=> 5, "\n";
      PHP
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Loops</h1>
        </div>
        <p class="lc-lead">A loop runs the same block of code many times — printing every row of a result, adding up a shopping cart, retrying a task. PHP has four loops. In real web code, <strong><code>foreach</code></strong> is the one you will use most, because most data arrives as arrays.</p>
        <div class="lc-card">
          <h3>Choosing a Loop</h3>
          <table class="lc-table">
            <thead><tr><th>Loop</th><th>Use when</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>for</code></td><td>You know how many times to repeat</td><td>Print a table of 1–10</td></tr>
              <tr><td><code>while</code></td><td>Repeat while a condition stays true (may run 0 times)</td><td>Keep halving a number until it is below 1</td></tr>
              <tr><td><code>do … while</code></td><td>Run at least once, then check</td><td>Show a menu, then ask again</td></tr>
              <tr><td><code>foreach</code></td><td>Visit every item of an array (or object)</td><td>Print every student's marks</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>for and while</h3>
          <div class="lc-code">for ($i = 1; $i &lt;= 5; $i++) {<br>    echo "7 x $i = ", 7 * $i, "\n";<br>}<br><br>$balance = 1000;<br>$years = 0;<br>while ($balance &lt; 2000) {<br>    $balance *= 1.08;     // 8% interest per year<br>    $years++;<br>}<br>echo "Doubled after $years years\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">7 x 1 = 7<br>7 x 2 = 14<br>7 x 3 = 21<br>7 x 4 = 28<br>7 x 5 = 35<br>Doubled after 10 years</div>
          <p>The <code>for</code> header has three parts: <strong>start</strong> (<code>$i = 1</code>), <strong>condition</strong> checked before each round (<code>$i &lt;= 5</code>) and <strong>step</strong> run after each round (<code>$i++</code>).</p>
        </div>
        <div class="lc-card">
          <h3>foreach: Values and Keys</h3>
          <div class="lc-code">$marks = ['Anu' =&gt; 88, 'Babu' =&gt; 72, 'Chitra' =&gt; 95];<br><br>foreach ($marks as $name =&gt; $score) {<br>    echo str_pad($name, 8), $score, "\n";<br>}<br><br>$total = 0;<br>foreach ($marks as $score) {    // keys are optional<br>    $total += $score;<br>}<br>echo "Average: ", round($total / count($marks), 1), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Anu     88<br>Babu    72<br>Chitra  95<br>Average: 85</div>
        </div>
        <div class="lc-card">
          <h3>break and continue</h3>
          <ul class="lc-list">
            <li><code>break</code> — leave the loop now.</li>
            <li><code>continue</code> — skip the rest of this round and go to the next one.</li>
            <li>In nested loops, <code>break 2;</code> leaves two levels at once.</li>
          </ul>
          <div class="lc-code">$orders = [250, -1, 400, 0, 999, 120];<br>foreach ($orders as $amount) {<br>    if ($amount &lt;= 0) {<br>        continue;            // skip invalid orders<br>    }<br>    if ($amount &gt; 900) {<br>        echo "Large order found, stopping.\n";<br>        break;<br>    }<br>    echo "Processing Rs $amount\n";<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Processing Rs 250<br>Processing Rs 400<br>Large order found, stopping.</div>
        </div>
        <div class="lc-card">
          <h3>Changing Items: Use the Key (or a Reference)</h3>
          <p>By default <code>foreach</code> gives you a <strong>copy</strong> of each value, so <code>$price *= 2</code> inside the loop does not change the array. Either write back through the key (<code>$prices[$i] = ...</code>) or loop by reference with <code>&amp;$price</code> — and then call <code>unset($price)</code> straight after the loop.</p>
          <div class="lc-code">$a = [1, 2, 3];<br>foreach ($a as &amp;$v) {<br>    $v *= 2;<br>}<br>// forgot unset($v) here!<br>foreach ($a as $v) {}<br>print_r($a);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Array<br>(<br>    [0] =&gt; 2<br>    [1] =&gt; 4<br>    [2] =&gt; 4<br>)</div>
          <p>The last item became 4, not 6: after the first loop, <code>$v</code> was still a reference to <code>$a[2]</code>, and the second loop kept writing into it. Adding <code>unset($v);</code> after the first loop fixes it.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Infinite loops: a <code>while</code> whose condition never becomes false because you forgot to change the variable.</li>
            <li>Off-by-one errors: <code>for ($i = 0; $i &lt;= count($arr); $i++)</code> reads one item past the end. Use <code>&lt;</code>, or simply <code>foreach</code>.</li>
            <li>Calling <code>count()</code> on a huge array in every round of a <code>for</code> — store it in a variable first.</li>
            <li>Leaving a reference variable alive after <code>foreach ($arr as &amp;$v)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Print the FizzBuzz sequence from 1 to 20: "Fizz" for multiples of 3, "Buzz" for multiples of 5, "FizzBuzz" for both, otherwise the number. Try writing the inside as a <code>match (true)</code> from Lesson 4.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> In HTML templates you will often see the alternative syntax <code>foreach ($rows as $row): … endforeach;</code>. It does exactly the same thing but is easier to read between HTML tags.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 5: Loops

        echo "--- for: multiplication table ---\n";
        for ($i = 1; $i <= 5; $i++) {
            printf("9 x %d = %2d\n", $i, 9 * $i);
        }

        echo "\n--- while: savings goal ---\n";
        $savings = 0;
        $month = 0;
        while ($savings < 10000) {
            $month++;
            $savings += 1500;
        }
        echo "Goal reached in month $month with Rs $savings\n";

        echo "\n--- do-while runs at least once ---\n";
        $attempt = 5;
        do {
            echo "Attempt $attempt\n";
            $attempt++;
        } while ($attempt < 3);

        echo "\n--- foreach with keys ---\n";
        $cart = ['Notebook' => 60, 'Pen' => 15, 'Geometry box' => 120];
        $total = 0;
        foreach ($cart as $item => $price) {
            echo str_pad($item, 14), "Rs $price\n";
            $total += $price;
        }
        echo "Total: Rs $total\n";

        echo "\n--- continue and break ---\n";
        foreach ([3, 8, 11, 14, 20, 25] as $n) {
            if ($n % 2 !== 0) continue;   // skip odd numbers
            if ($n > 15) break;           // stop after 15
            echo "Even: $n\n";
        }

        echo "\n--- change values safely ---\n";
        $prices = [100, 200, 300];
        foreach ($prices as $i => $p) {
            $prices[$i] = $p * 1.1;       // write back through the key
        }
        echo implode(", ", $prices), "\n";
      PHP
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Arrays</h1>
        </div>
        <p class="lc-lead">PHP has one array type that does the job of both a <strong>list</strong> and a <strong>dictionary/map</strong>. Database rows, form data, JSON and configuration all arrive as arrays, so knowing them well is the most useful skill in everyday PHP.</p>
        <div class="lc-card">
          <h3>Three Shapes of Array</h3>
          <div class="lc-code">// 1. Indexed (a list): keys 0, 1, 2... are added for you<br>$cities = ["Delhi", "Mumbai", "Kolkata"];<br>echo $cities[0];              // Delhi<br><br>// 2. Associative (a map): you choose string keys<br>$student = ["name" =&gt; "Meera", "age" =&gt; 20, "course" =&gt; "BCA"];<br>echo $student["course"];      // BCA<br><br>// 3. Nested: arrays inside arrays - like rows of a table<br>$class = [<br>    ["name" =&gt; "Meera", "marks" =&gt; 91],<br>    ["name" =&gt; "Farhan", "marks" =&gt; 84],<br>];<br>echo $class[1]["name"];       // Farhan</div>
          <p>Always use the short <code>[ ]</code> syntax. The old <code>array( )</code> form still works but is not used in modern code.</p>
        </div>
        <div class="lc-card">
          <h3>Adding, Removing and Counting</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Code</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Add to end</td><td><code>$cities[] = "Pune";</code></td><td>Fastest and most common</td></tr>
              <tr><td>Add / change by key</td><td><code>$student["city"] = "Jaipur";</code></td><td>Overwrites if key exists</td></tr>
              <tr><td>Remove last / first</td><td><code>array_pop($a)</code> / <code>array_shift($a)</code></td><td>Return the removed item</td></tr>
              <tr><td>Add to start</td><td><code>array_unshift($a, "x")</code></td><td>Re-numbers the list</td></tr>
              <tr><td>Delete by key</td><td><code>unset($a[1]);</code></td><td>Leaves a <strong>gap</strong> in the keys</td></tr>
              <tr><td>Count</td><td><code>count($a)</code></td><td>Number of items</td></tr>
              <tr><td>Merge</td><td><code>[...$a, ...$b]</code> or <code>array_merge($a, $b)</code></td><td>Later string keys win</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Checking and Removing</h3>
          <div class="lc-code">$marks = [10, 20, 30];<br>unset($marks[1]);<br>print_r($marks);<br>var_dump(array_is_list($marks));     // PHP 8.1+<br>$marks = array_values($marks);       // re-number 0, 1, ...<br>echo implode(",", array_keys($marks)), "\n";<br><br>$profile = ["phone" =&gt; null];<br>var_dump(isset($profile["phone"]));<br>var_dump(array_key_exists("phone", $profile));</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Array<br>(<br>    [0] =&gt; 10<br>    [2] =&gt; 30<br>)<br>bool(false)<br>0,1<br>bool(false)<br>bool(true)</div>
          <p><code>isset()</code> returns false when the key is missing <em>or</em> its value is <code>null</code>. Use <code>array_key_exists()</code> when you must know whether the key is there at all. Reading a missing key directly gives a warning "Undefined array key" — use <code>??</code> for a default.</p>
        </div>
        <div class="lc-card">
          <h3>Destructuring and Copying</h3>
          <div class="lc-code">[$first, $second] = ["Gold", "Silver"];<br>['name' =&gt; $n, 'age' =&gt; $a] = ['name' =&gt; 'Ravi', 'age' =&gt; 19];<br>echo "$first $second / $n is $a\n";<br><br>[$x, $y] = [1, 2];<br>[$x, $y] = [$y, $x];                 // swap<br>echo "x=$x y=$y\n";<br><br>$original = [1, 2];<br>$copy = $original;                   // arrays are copied by value<br>$copy[] = 3;<br>echo count($original), " vs ", count($copy), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Gold Silver / Ravi is 19<br>x=2 y=1<br>2 vs 3</div>
        </div>
        <div class="lc-card">
          <h3>Sorting</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Sorts by</th><th>Keeps keys?</th></tr></thead>
            <tbody>
              <tr><td><code>sort / rsort</code></td><td>Value, low→high / high→low</td><td>No — re-numbers 0, 1, 2</td></tr>
              <tr><td><code>asort / arsort</code></td><td>Value</td><td>Yes — use for maps</td></tr>
              <tr><td><code>ksort / krsort</code></td><td>Key</td><td>Yes</td></tr>
              <tr><td><code>usort</code></td><td>Your own rule (Lesson 7)</td><td>No</td></tr>
            </tbody>
          </table>
          <p>These functions change the array <strong>in place</strong> and return <code>true</code> — do not write <code>$sorted = sort($a);</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using <code>sort()</code> on an associative array — the names (keys) are lost. Use <code>asort()</code>.</li>
            <li>Using <code>in_array()</code> without the third argument <code>true</code>: <code>in_array("1e1", [10])</code> is true because of loose comparison.</li>
            <li>Expecting <code>unset()</code> to re-number a list. Call <code>array_values()</code> afterwards.</li>
            <li>Using <code>+</code> to merge lists: <code>[1, 2] + [3, 4, 5]</code> gives <code>[1, 2, 5]</code> because keys 0 and 1 already exist.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Create an associative array of five Indian states and their capitals. Add one more, remove one with <code>unset()</code>, sort it by state name with <code>ksort()</code>, and print each pair with <code>foreach</code>.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you are not sure what an array contains, <code>print_r($arr)</code> or <code>var_dump($arr)</code> it. Debugging arrays by guessing wastes hours.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 6: Arrays

        // Indexed array (list)
        $cities = ["Delhi", "Mumbai", "Kolkata"];
        $cities[] = "Chennai";                  // add to the end
        echo "First city: {$cities[0]}, total: " . count($cities) . "\n";

        // Associative array (map)
        $student = ["name" => "Meera", "age" => 20, "course" => "BCA"];
        $student["city"] = "Jaipur";            // add a new key
        echo "{$student['name']} studies {$student['course']} in {$student['city']}\n";

        // Safe reading of a key that may not exist
        echo "Phone: " . ($student["phone"] ?? "not given") . "\n";
        var_dump(in_array("Mumbai", $cities, true));

        // Nested array: a small "table"
        $class = [
            ["name" => "Meera",  "marks" => 91],
            ["name" => "Farhan", "marks" => 84],
            ["name" => "Tanvi",  "marks" => 77],
        ];
        echo "\n--- Class list ---\n";
        foreach ($class as $i => $row) {
            echo ($i + 1) . ". {$row['name']} - {$row['marks']}\n";
        }

        // Destructuring
        ['name' => $topName, 'marks' => $topMarks] = $class[0];
        echo "\nTopper: $topName ($topMarks)\n";

        // Sorting a map by value, keeping keys
        $scores = ["Anu" => 88, "Babu" => 72, "Chitra" => 95];
        arsort($scores);
        echo "\n--- Ranking ---\n";
        print_r($scores);

        // Remove, then re-number
        unset($cities[1]);
        print_r(array_values($cities));
      PHP
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Array Functions</h1>
        </div>
        <p class="lc-lead">PHP ships with more than 70 array functions. A handful of them — <strong>map, filter, reduce, column and usort</strong> — replace most hand-written loops and make your intent obvious: "keep the passing students", "get all the emails", "sort by marks".</p>
        <div class="lc-card">
          <h3>A Quick Look at Arrow Functions</h3>
          <p>Many array functions take a small function as an argument. The short form is an <strong>arrow function</strong>: <code>fn($x) =&gt; $x * 2</code> means "take <code>$x</code>, return <code>$x * 2</code>". It can read variables from the surrounding code automatically. Lesson 10 covers these in depth.</p>
        </div>
        <div class="lc-card">
          <h3>The Big Three: map, filter, reduce</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Question it answers</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>array_map(fn, $arr)</code></td><td>"Change every item"</td><td>New array, same size</td></tr>
              <tr><td><code>array_filter($arr, fn)</code></td><td>"Keep only some items"</td><td>New array, same keys (gaps!)</td></tr>
              <tr><td><code>array_reduce($arr, fn, start)</code></td><td>"Combine everything into one value"</td><td>A single value</td></tr>
            </tbody>
          </table>
          <p>Watch the argument order: <code>array_map</code> takes the <strong>function first</strong>, <code>array_filter</code> and <code>array_reduce</code> take the <strong>array first</strong>. This is a famous PHP inconsistency — named arguments (Lesson 8) help.</p>
          <div class="lc-code">$prices = [120, 450, 80, 999];<br><br>$withGst = array_map(fn($p) =&gt; $p * 1.18, $prices);<br>echo implode(", ", $withGst), "\n";<br><br>$expensive = array_filter($prices, fn($p) =&gt; $p &gt; 100);<br>print_r($expensive);                 // keys 0, 1, 3 are kept<br><br>$total = array_reduce($prices, fn($sum, $p) =&gt; $sum + $p, 0);<br>echo "Total: $total\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">141.6, 531, 94.4, 1178.82<br>Array<br>(<br>    [0] =&gt; 120<br>    [1] =&gt; 450<br>    [3] =&gt; 999<br>)<br>Total: 1649</div>
          <p>Wrap the result in <code>array_values()</code> if you need a clean 0, 1, 2 list after filtering. For a simple total, <code>array_sum($prices)</code> is even shorter than reduce.</p>
        </div>
        <div class="lc-card">
          <h3>Working with Rows: array_column and usort</h3>
          <div class="lc-code">$students = [<br>    ['name' =&gt; 'Zoya',  'dept' =&gt; 'CSE', 'cgpa' =&gt; 8.9],<br>    ['name' =&gt; 'Aman',  'dept' =&gt; 'ECE', 'cgpa' =&gt; 9.1],<br>    ['name' =&gt; 'Kabir', 'dept' =&gt; 'CSE', 'cgpa' =&gt; 8.9],<br>];<br><br>print_r(array_column($students, 'cgpa', 'name'));<br><br>// Sort by cgpa (high first), then by name (A-Z)<br>usort($students, fn($a, $b) =&gt;<br>    [$b['cgpa'], $a['name']] &lt;=&gt; [$a['cgpa'], $b['name']]);<br>echo implode(" &gt; ", array_column($students, 'name')), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Array<br>(<br>    [Zoya] =&gt; 8.9<br>    [Aman] =&gt; 9.1<br>    [Kabir] =&gt; 8.9<br>)<br>Aman &gt; Kabir &gt; Zoya</div>
          <p>The comparison function must return a negative number, zero or a positive number. The spaceship operator <code>&lt;=&gt;</code> does exactly that, and comparing <strong>two arrays</strong> with it gives you a multi-column sort. Swap <code>$a</code> and <code>$b</code> to reverse the order.</p>
        </div>
        <div class="lc-card">
          <h3>More Everyday Functions</h3>
          <table class="lc-table">
            <thead><tr><th>Function</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>array_sum / max / min</code></td><td><code>max([4, 9, 2])</code></td><td><code>9</code></td></tr>
              <tr><td><code>array_keys / array_values</code></td><td><code>array_keys(['a' =&gt; 1, 'b' =&gt; 2])</code></td><td><code>['a', 'b']</code></td></tr>
              <tr><td><code>array_search</code></td><td><code>array_search('Pune', $cities, true)</code></td><td>Key of the item, or <code>false</code></td></tr>
              <tr><td><code>array_unique</code></td><td><code>array_unique([1, 2, 2, 3])</code></td><td><code>[0 =&gt; 1, 1 =&gt; 2, 3 =&gt; 3]</code></td></tr>
              <tr><td><code>array_slice</code></td><td><code>array_slice($top, 0, 3)</code></td><td>First 3 items (e.g. a "Top 3")</td></tr>
              <tr><td><code>array_combine</code></td><td><code>array_combine(['a', 'b'], [1, 2])</code></td><td><code>['a' =&gt; 1, 'b' =&gt; 2]</code></td></tr>
              <tr><td><code>array_count_values</code></td><td><code>array_count_values(['x', 'y', 'x'])</code></td><td><code>['x' =&gt; 2, 'y' =&gt; 1]</code></td></tr>
              <tr><td><code>range</code></td><td><code>range(1, 5)</code></td><td><code>[1, 2, 3, 4, 5]</code></td></tr>
            </tbody>
          </table>
          <p><strong>New in PHP 8.4+:</strong> <code>array_find()</code>, <code>array_find_key()</code>, <code>array_any()</code> and <code>array_all()</code>. They stop at the first match, so they are faster and clearer than filtering the whole array.</p>
          <div class="lc-code">$marks = ['Anu' =&gt; 88, 'Babu' =&gt; 31, 'Chitra' =&gt; 95];<br>var_dump(array_find($marks, fn($m) =&gt; $m &gt; 90));      // first value<br>var_dump(array_find_key($marks, fn($m) =&gt; $m &lt; 35));  // first key<br>var_dump(array_any($marks, fn($m) =&gt; $m &lt; 35));       // at least one?<br>var_dump(array_all($marks, fn($m) =&gt; $m &gt;= 35));      // every one?</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">int(95)<br>string(4) "Babu"<br>bool(true)<br>bool(false)</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Swapping the argument order of <code>array_map</code> and <code>array_filter</code>.</li>
            <li>Assuming <code>array_filter()</code> re-numbers keys — it does not; <code>$result[0]</code> may not exist.</li>
            <li>Writing a <code>usort</code> callback that returns <code>true</code>/<code>false</code> (<code>$a &gt; $b</code>). It must return an integer — use <code>&lt;=&gt;</code>.</li>
            <li>Using <code>if (array_search(...))</code>: a match at key <code>0</code> looks false. Compare with <code>!== false</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Using the <code>$students</code> array from the starter, print the names of CSE students only, sorted by CGPA from highest to lowest, and then print the average CGPA of CSE rounded to 2 decimals.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Read a chain of array functions from the inside out. <code>array_sum(array_column(array_filter($rows, ...), 'amount'))</code> means: filter the rows, pick the amounts, add them up.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 7: Array Functions

        $students = [
            ['name' => 'Zoya',   'dept' => 'CSE', 'cgpa' => 8.9],
            ['name' => 'Aman',   'dept' => 'ECE', 'cgpa' => 9.1],
            ['name' => 'Kabir',  'dept' => 'CSE', 'cgpa' => 8.9],
            ['name' => 'Ishita', 'dept' => 'ME',  'cgpa' => 7.6],
            ['name' => 'Rohan',  'dept' => 'CSE', 'cgpa' => 6.8],
        ];

        // array_column: pick one field from every row
        $names = array_column($students, 'name');
        echo "Names: " . implode(", ", $names) . "\n";

        // array_map: change every item
        $upper = array_map(fn($n) => strtoupper($n), $names);
        echo "Upper: " . implode(", ", $upper) . "\n";

        // array_filter: keep some items (keys are preserved!)
        $cse = array_filter($students, fn($s) => $s['dept'] === 'CSE');
        echo "CSE keys: " . implode(",", array_keys($cse)) . "\n";

        // array_reduce: combine into one value
        $total = array_reduce($students, fn($sum, $s) => $sum + $s['cgpa'], 0.0);
        printf("Average CGPA: %.2f\n", $total / count($students));

        // usort with <=>: cgpa high to low, then name A to Z
        usort($students, fn($a, $b) => [$b['cgpa'], $a['name']] <=> [$a['cgpa'], $b['name']]);
        echo "\n--- Ranking ---\n";
        foreach ($students as $rank => $s) {
            printf("%d. %-7s %s %.1f\n", $rank + 1, $s['name'], $s['dept'], $s['cgpa']);
        }

        // A few more helpers
        echo "\nTop 2: " . implode(", ", array_column(array_slice($students, 0, 2), 'name')) . "\n";
        print_r(array_count_values(array_column($students, 'dept')));
        echo "Highest CGPA: " . max(array_column($students, 'cgpa')) . "\n";

        // PHP 8.4+: stop at the first match
        $firstMe = array_find($students, fn($s) => $s['dept'] === 'ME');
        echo "First ME student: {$firstMe['name']}\n";
        var_dump(array_all($students, fn($s) => $s['cgpa'] >= 6.0));
      PHP
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Functions</h1>
        </div>
        <p class="lc-lead">A <strong>function</strong> is a named block of code you can run again and again. Good functions do <em>one</em> job, take inputs as <strong>parameters</strong> and give back a result with <code>return</code>. PHP 8 made functions much nicer with <strong>named arguments</strong>.</p>
        <div class="lc-card">
          <h3>Defining and Calling</h3>
          <div class="lc-code">function greet(string $name, string $greeting = "Hello"): string<br>{<br>    return "$greeting, $name!";<br>}<br><br>echo greet("Divya"), "\n";               // uses the default<br>echo greet("Divya", "Vanakkam"), "\n";   // overrides it</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Hello, Divya!<br>Vanakkam, Divya!</div>
          <ul class="lc-list">
            <li><code>string $name</code> — a parameter with a <strong>type</strong> (Lesson 9 explains types fully).</li>
            <li><code>= "Hello"</code> — a <strong>default value</strong>; parameters with defaults go last.</li>
            <li><code>: string</code> — the <strong>return type</strong>. A function that returns nothing uses <code>: void</code>.</li>
            <li>Function names are case-insensitive, but always call them exactly as written. Use camelCase: <code>calculateTotal()</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Named Arguments (PHP 8.0+)</h3>
          <p>You can pass arguments by <strong>parameter name</strong>. This lets you skip optional parameters and makes calls self-explaining.</p>
          <div class="lc-code">function makeTicket(string $from, string $to, int $seats = 1,<br>                    string $class = "Sleeper", bool $tatkal = false): string<br>{<br>    $type = $tatkal ? "Tatkal" : "General";<br>    return "$from-$to, $seats seat(s), $class, $type";<br>}<br><br>echo makeTicket("Pune", "Nagpur"), "\n";<br>echo makeTicket("Pune", "Nagpur", tatkal: true), "\n";<br>echo makeTicket(to: "Goa", from: "Mumbai", class: "3AC"), "\n";<br>echo str_pad("7", 3, pad_type: STR_PAD_LEFT, pad_string: "0"), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Pune-Nagpur, 1 seat(s), Sleeper, General<br>Pune-Nagpur, 1 seat(s), Sleeper, Tatkal<br>Mumbai-Goa, 1 seat(s), 3AC, General<br>007</div>
          <p>Named arguments also work with built-in functions. Positional arguments must come <em>before</em> named ones.</p>
        </div>
        <div class="lc-card">
          <h3>Variadic Parameters and Unpacking</h3>
          <div class="lc-code">function average(float ...$numbers): float<br>{<br>    return count($numbers) ? array_sum($numbers) / count($numbers) : 0.0;<br>}<br><br>echo average(70, 80, 90), "\n";<br>$marks = [55, 65];<br>echo average(...$marks), "\n";      // spread an array into arguments</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">80<br>60</div>
          <p><code>...$numbers</code> collects any number of arguments into an array. The same <code>...</code> in a call spreads an array out into separate arguments.</p>
        </div>
        <div class="lc-card">
          <h3>Scope: Functions Have Their Own Variables</h3>
          <table class="lc-table">
            <thead><tr><th>Idea</th><th>What happens</th></tr></thead>
            <tbody>
              <tr><td>Local scope</td><td>Variables created inside a function disappear when it returns.</td></tr>
              <tr><td>No outside access</td><td>A function <strong>cannot</strong> see variables from outside unless you pass them in (unlike JavaScript).</td></tr>
              <tr><td>Pass by value</td><td>Arrays and numbers are copied in; changing them inside does not affect the caller.</td></tr>
              <tr><td>Pass by reference <code>&amp;$x</code></td><td>The function changes the caller's variable. Use rarely — returning a new value is clearer.</td></tr>
              <tr><td><code>static $count = 0;</code></td><td>A local variable that keeps its value between calls.</td></tr>
              <tr><td><code>global $x;</code></td><td>Reaches a global variable. Avoid — it hides dependencies and makes testing hard.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Recursion</h3>
          <p>A function can call itself. It needs a <strong>base case</strong> that stops the calls.</p>
          <div class="lc-code">function factorial(int $n): int<br>{<br>    return $n &amp;lt;= 1 ? 1 : $n * factorial($n - 1);<br>}<br>echo factorial(5);   // 120</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using an outside variable inside a function and getting "Undefined variable". Pass it as a parameter.</li>
            <li>Echoing inside a function instead of returning — you cannot reuse or test the result. Return values; echo at the edge.</li>
            <li>Putting a parameter with a default <em>before</em> a required one (deprecated since PHP 8.0).</li>
            <li>Misspelling a named argument: <code>makeTicket("A", "B", seat: 2)</code> throws <code>Error: Unknown named parameter $seat</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write <code>emi(float $principal, float $annualRate, int $months): float</code> using the formula <code>P × r × (1 + r)^n / ((1 + r)^n − 1)</code> where <code>r</code> is the monthly rate. Call it with named arguments for a Rs 5,00,000 loan at 9% for 60 months (about Rs 10,379 per month).</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> If a function has more than three optional parameters, callers should use named arguments — <code>makeTicket("Pune", "Goa", tatkal: true)</code> is far clearer than <code>makeTicket("Pune", "Goa", 1, "Sleeper", true)</code>.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        // Lesson 8: Functions

        function greet(string $name, string $greeting = "Hello"): string
        {
            return "$greeting, $name!";
        }

        function makeTicket(string $from, string $to, int $seats = 1,
                            string $class = "Sleeper", bool $tatkal = false): string
        {
            $fare = $seats * ($class === "3AC" ? 1200 : 450) + ($tatkal ? 300 : 0);
            return "$from -> $to | $seats x $class | Rs $fare";
        }

        function average(float ...$numbers): float
        {
            return count($numbers) ? array_sum($numbers) / count($numbers) : 0.0;
        }

        function visitCounter(): int
        {
            static $visits = 0;     // keeps its value between calls
            return ++$visits;
        }

        function factorial(int $n): int
        {
            return $n <= 1 ? 1 : $n * factorial($n - 1);
        }

        echo greet("Divya") . "\n";
        echo greet(greeting: "Namaskar", name: "Suresh") . "\n";

        echo "\n--- Named arguments ---\n";
        echo makeTicket("Pune", "Nagpur") . "\n";
        echo makeTicket("Pune", "Nagpur", tatkal: true) . "\n";
        echo makeTicket(from: "Mumbai", to: "Goa", seats: 2, class: "3AC") . "\n";

        echo "\n--- Variadics ---\n";
        echo "Average: " . average(70, 80, 90) . "\n";
        $marks = [55, 65, 75, 85];
        echo "Average of array: " . average(...$marks) . "\n";

        echo "\n--- static and recursion ---\n";
        visitCounter(); visitCounter();
        echo "Visits: " . visitCounter() . "\n";
        echo "5! = " . factorial(5) . "\n";
      PHP
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Types and Strict Mode</h1>
        </div>
        <p class="lc-lead">PHP lets you declare what type each parameter and return value must be. With <code>declare(strict_types=1);</code> at the top of a file, PHP stops guessing and throws a <code>TypeError</code> the moment a wrong type is passed. This catches bugs early and is standard practice in Laravel, Symfony and most modern PHP code.</p>
        <div class="lc-card">
          <h3>Two Modes: Coercive and Strict</h3>
          <p>Without <code>strict_types</code>, PHP runs in <strong>coercive mode</strong>: it tries to convert a value to the declared type.</p>
          <div class="lc-code">function add(int $a, int $b): int<br>{<br>    return $a + $b;<br>}<br><br>var_dump(add("5", 3));      // "5" is quietly converted to 5<br>try {<br>    add("five", 3);<br>} catch (TypeError $e) {<br>    echo "TypeError!\n";<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">int(8)<br>TypeError!</div>
          <p>With strict types, even the numeric string <code>"5"</code> is rejected:</p>
          <div class="lc-code">declare(strict_types=1);<br><br>function add(int $a, int $b): int<br>{<br>    return $a + $b;<br>}<br><br>try {<br>    add("5", 3);<br>} catch (TypeError $e) {<br>    echo strstr($e-&gt;getMessage(), ', called', true), "\n";<br>}<br>function half(float $x): float { return $x / 2; }<br>var_dump(half(5));          // int to float is still allowed</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">add(): Argument #1 ($a) must be of type int, string given<br>float(2.5)</div>
        </div>
        <div class="lc-card">
          <h3>How strict_types Works</h3>
          <ul class="lc-list">
            <li>It must be the <strong>very first statement</strong> in the file, right after <code>&lt;?php</code>.</li>
            <li>It applies <strong>per file</strong>, to function calls made <em>from</em> that file (including calls to built-in functions like <code>strlen(123)</code>).</li>
            <li>The only automatic conversion left is <strong>int → float</strong>, because it never loses information.</li>
            <li>Return values are checked too: in a strict file, a function declared <code>: int</code> that returns <code>"1"</code> throws a <code>TypeError</code> instead of converting it.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Type Toolbox</h3>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Example</th><th>Meaning</th><th>Since</th></tr></thead>
            <tbody>
              <tr><td>Scalar</td><td><code>int $n, float $x, string $s, bool $ok</code></td><td>Basic values</td><td>7.0</td></tr>
              <tr><td>Nullable</td><td><code>?string $nickname</code></td><td>A string <strong>or</strong> null</td><td>7.1</td></tr>
              <tr><td><code>void</code></td><td><code>function log(): void</code></td><td>Returns nothing</td><td>7.1</td></tr>
              <tr><td>Typed property</td><td><code>private int $count = 0;</code></td><td>Property must hold an int</td><td>7.4</td></tr>
              <tr><td>Union</td><td><code>int|string $id</code></td><td>Either type</td><td>8.0</td></tr>
              <tr><td><code>mixed</code></td><td><code>mixed $value</code></td><td>Anything (use sparingly)</td><td>8.0</td></tr>
              <tr><td><code>never</code></td><td><code>function fail(): never</code></td><td>Never returns — always throws or exits</td><td>8.1</td></tr>
              <tr><td><code>null</code>, <code>false</code>, <code>true</code></td><td><code>function isReady(): true</code></td><td>Usable as types on their own (<code>false</code> inside unions such as <code>array|false</code> since 8.0)</td><td>8.2</td></tr>
              <tr><td>Class / interface</td><td><code>DateTimeImmutable $when</code></td><td>An object of that class</td><td>5.x</td></tr>
            </tbody>
          </table>
          <p>For an optional parameter that may be null, write <code>?string $x = null</code>. The old style <code>string $x = null</code> (an "implicitly nullable" type) is deprecated in PHP 8.4.</p>
        </div>
        <div class="lc-card">
          <h3>User Input Is Always a String</h3>
          <p>Values from forms and URLs (<code>$_GET</code>, <code>$_POST</code>) are always strings, even <code>"42"</code>. With strict types you must convert them <em>explicitly</em>, after checking them:</p>
          <div class="lc-code">$raw = $_GET['qty'] ?? '1';<br>$qty = filter_var($raw, FILTER_VALIDATE_INT, ['options' =&amp;gt; ['min_range' =&amp;gt; 1]]);<br>if ($qty === false) {<br>    exit('Quantity must be a whole number of 1 or more');<br>}<br>addToCart(productId: 7, qty: $qty);   // now a real int</div>
          <p>Converting at the "edge" of your program and keeping strict types inside is the clean, professional pattern.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Putting <code>declare(strict_types=1);</code> after other code — PHP gives a fatal error.</li>
            <li>Thinking strict mode applies to the whole project. It only affects the file it is written in.</li>
            <li>Using <code>mixed</code> everywhere — you lose all the safety. Choose the narrowest type that fits.</li>
            <li>Blindly casting input with <code>(int)</code>: <code>(int) "abc"</code> is <code>0</code>, which may silently pass your checks. Validate first.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, add a function <code>percentage(int $got, int $total): float</code>. Call it with <code>percentage(45, 60)</code>, then try <code>percentage("45", 60)</code> and read the TypeError. Finally make <code>$total</code> default to 100.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Start every new PHP file with <code>&lt;?php</code> followed by <code>declare(strict_types=1);</code>. Static analysis tools such as PHPStan and Psalm use your types to find bugs before you even run the code.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);   // must be the first statement

        // Lesson 9: Types and Strict Mode

        function add(int $a, int $b): int
        {
            return $a + $b;
        }

        function describe(int|string $id): string            // union type
        {
            return "id is " . get_debug_type($id) . " ($id)";
        }

        function welcome(?string $nickname = null): string   // nullable
        {
            return "Welcome, " . ($nickname ?? "guest");
        }

        function logLine(string $msg): void                  // returns nothing
        {
            echo "[log] $msg\n";
        }

        function fail(string $reason): never                 // never returns
        {
            throw new InvalidArgumentException($reason);
        }

        echo add(2, 3), "\n";
        echo describe(42), "\n";
        echo describe("A-17"), "\n";
        echo welcome(), " / ", welcome("Chintu"), "\n";
        logLine("types are checked");

        echo "\n--- TypeErrors in strict mode ---\n";
        $tests = [fn() => add("5", 3), fn() => describe(1.5), fn() => fail("stock is empty")];
        foreach ($tests as $test) {
            try {
                $test();
            } catch (TypeError $e) {
                echo "TypeError: ", strstr($e->getMessage(), ', called', true), "\n";
            } catch (InvalidArgumentException $e) {
                echo "InvalidArgumentException: ", $e->getMessage(), "\n";
            }
        }
      PHP
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Closures and Callables</h1>
        </div>
        <p class="lc-lead">In PHP a function can be stored in a variable, passed to another function and returned from one. These function values are called <strong>callables</strong>. You already used them with <code>array_map</code> and <code>usort</code>; they also power routes in Laravel, event listeners and middleware.</p>
        <div class="lc-card">
          <h3>Three Ways to Write a Function Value</h3>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Example</th><th>Captures outside variables</th></tr></thead>
            <tbody>
              <tr><td>Anonymous function (closure)</td><td><code>function ($x) use ($rate) { return $x * $rate; }</code></td><td>Only those listed in <code>use</code>, copied when the closure is created</td></tr>
              <tr><td>Arrow function (7.4+)</td><td><code>fn($x) =&gt; $x * $rate</code></td><td>Automatically, by value</td></tr>
              <tr><td>First-class callable (8.1+)</td><td><code>strtoupper(...)</code>, <code>$cart-&gt;total(...)</code></td><td>Turns an existing function or method into a <code>Closure</code></td></tr>
            </tbody>
          </table>
          <p>Arrow functions can contain only <strong>one expression</strong>. Use a full <code>function () use (...) { }</code> when you need several statements.</p>
        </div>
        <div class="lc-card">
          <h3>Closures and use</h3>
          <div class="lc-code">$discount = 10;<br>$apply = function (float $price) use ($discount): float {<br>    return $price - $price * $discount / 100;<br>};<br>$discount = 50;                 // too late: 10 was copied<br>echo $apply(200), "\n";<br><br>$count = 0;<br>$increment = function () use (&amp;$count): void {<br>    $count++;                   // &amp; shares the variable<br>};<br>$increment();<br>$increment();<br>echo "count = $count\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">180<br>count = 2</div>
        </div>
        <div class="lc-card">
          <h3>Functions That Return Functions</h3>
          <div class="lc-code">function makeTaxer(float $rate): Closure<br>{<br>    return fn(float $amount): float =&gt; round($amount * (1 + $rate), 2);<br>}<br><br>$gst5  = makeTaxer(0.05);<br>$gst18 = makeTaxer(0.18);<br>echo $gst5(100), " ", $gst18(100), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">105 118</div>
          <p>Each returned arrow function "remembers" its own <code>$rate</code>. This idea is called a <strong>closure</strong>: a function plus the variables it captured.</p>
        </div>
        <div class="lc-card">
          <h3>First-Class Callable Syntax (PHP 8.1+)</h3>
          <p>Writing <code>name(...)</code> — with three literal dots — does not call the function; it creates a <code>Closure</code> that points to it. It works for built-in functions, your own functions, methods and static methods.</p>
          <div class="lc-code">$names = ["asha", "vikram", "li"];<br><br>$upper = strtoupper(...);<br>echo $upper("hi"), "\n";<br>echo implode(",", array_map(ucfirst(...), $names)), "\n";<br>echo implode(",", array_map(strlen(...), $names)), "\n";<br>var_dump($upper instanceof Closure);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">HI<br>Asha,Vikram,Li<br>4,6,2<br>bool(true)</div>
          <table class="lc-table">
            <thead><tr><th>Old way (still works)</th><th>Modern way</th></tr></thead>
            <tbody>
              <tr><td><code>'strtoupper'</code> (a string)</td><td><code>strtoupper(...)</code></td></tr>
              <tr><td><code>[$cart, 'total']</code></td><td><code>$cart-&gt;total(...)</code></td></tr>
              <tr><td><code>Closure::fromCallable('trim')</code></td><td><code>trim(...)</code></td></tr>
            </tbody>
          </table>
          <p>The modern way is checked by PHP immediately — a typo like <code>strtouper(...)</code> fails right there — and IDEs can rename and navigate it.</p>
        </div>
        <div class="lc-card">
          <h3>The Pipe Operator |&gt; (PHP 8.5+)</h3>
          <p>PHP 8.5 added <code>|&gt;</code>. It passes the value on its left into the callable on its right, so a chain of steps reads from left to right instead of inside-out. Each step must take exactly one argument; wrap an arrow function in brackets.</p>
          <div class="lc-code">$title = "  Learn PHP Today  ";<br><br>// Without the pipe: read from the inside out<br>echo str_replace(" ", "-", strtolower(trim($title))), "\n";<br><br>// With the pipe (8.5+): read from left to right<br>echo $title<br>    |&gt; trim(...)<br>    |&gt; strtolower(...)<br>    |&gt; (fn($s) =&gt; str_replace(" ", "-", $s)), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">learn-php-today<br>learn-php-today</div>
          <p>On PHP 8.4 or older this is a syntax error, so only use it when your server runs 8.5.</p>
        </div>
        <div class="lc-card">
          <h3>The callable Type</h3>
          <p>Use the <code>callable</code> (or <code>Closure</code>) type for parameters that accept a function:</p>
          <div class="lc-code">function applyAll(array $items, callable ...$steps): array<br>{<br>    foreach ($steps as $step) {<br>        $items = array_map($step, $items);<br>    }<br>    return $items;<br>}<br>applyAll(["  ram ", " SITA"], trim(...), strtolower(...), ucfirst(...));<br>// ["Ram", "Sita"]</div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>use ($x)</code> in a full closure and getting "Undefined variable $x".</li>
            <li>Expecting a closure to see later changes to a variable captured by value.</li>
            <li>Trying to change an outside variable from an arrow function — arrow functions capture by value only.</li>
            <li>Writing <code>strtoupper()</code> (a call) where a callable is expected, instead of <code>strtoupper(...)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Write <code>makeCounter(): Closure</code> that returns a closure which returns 1, then 2, then 3 each time it is called (hint: a local variable captured with <code>use (&amp;$n)</code>). Create two counters and show that they count separately.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Prefer arrow functions for short callbacks (<code>fn($s) =&gt; $s['marks'] &gt;= 35</code>) and first-class callables when an existing function already does the job (<code>array_map(trim(...), $lines)</code>).
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 10: Closures and Callables

        // 1. Anonymous function stored in a variable
        $greet = function (string $name): string {
            return "Hello, $name";
        };
        echo $greet("Neha"), "\n";

        // 2. use: copy a value in (captured when the closure is created)
        $discount = 10;
        $apply = function (float $price) use ($discount): float {
            return $price * (100 - $discount) / 100;
        };
        $discount = 90;                   // does not affect $apply
        echo "Discounted: ", $apply(500), "\n";

        // 3. Arrow function captures automatically
        $rate = 0.18;
        $withGst = fn(float $amount): float => round($amount * (1 + $rate), 2);
        echo "With GST: ", $withGst(250), "\n";

        // 4. A function that returns a function
        function makeMultiplier(int $factor): Closure
        {
            return fn(int $n): int => $n * $factor;
        }
        $double = makeMultiplier(2);
        $triple = makeMultiplier(3);
        echo "double(7) = ", $double(7), ", triple(7) = ", $triple(7), "\n";

        // 5. First-class callable syntax (PHP 8.1+)
        $cities = ["  pune ", "KOCHI", " surat"];
        $clean = array_map(trim(...), $cities);
        $clean = array_map(strtolower(...), $clean);
        $clean = array_map(ucfirst(...), $clean);
        echo "Cities: ", implode(", ", $clean), "\n";

        // 6. Passing callables to your own function
        function applyTwice(callable $fn, int $value): int
        {
            return $fn($fn($value));
        }
        echo "applyTwice(double, 5) = ", applyTwice($double, 5), "\n";
        echo "applyTwice(abs, -9) = ", applyTwice(abs(...), -9), "\n";

        // 7. Pipe operator (PHP 8.5+): left to right
        echo "Slug: ", "  Learn PHP Today " |> trim(...) |> strtolower(...)
            |> (fn($s) => str_replace(" ", "-", $s)), "\n";
      PHP
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Classes and Objects</h1>
        </div>
        <p class="lc-lead">A <strong>class</strong> is a blueprint; an <strong>object</strong> is one thing built from it. A <code>Student</code> class describes what every student has (name, roll number) and can do (calculate a grade). Every modern PHP framework — Laravel, Symfony, WordPress plugins — is built from classes.</p>
        <div class="lc-card">
          <h3>Class, Object, Property, Method</h3>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Class</td><td>The blueprint</td><td><code>class Student { ... }</code></td></tr>
              <tr><td>Object / instance</td><td>A real thing made with <code>new</code></td><td><code>$s = new Student("Ria", 12);</code></td></tr>
              <tr><td>Property</td><td>Data stored in the object</td><td><code>$s-&gt;name</code></td></tr>
              <tr><td>Method</td><td>A function that belongs to the class</td><td><code>$s-&gt;grade()</code></td></tr>
              <tr><td><code>$this</code></td><td>"This object", used inside methods</td><td><code>$this-&gt;name</code></td></tr>
              <tr><td>Constructor</td><td><code>__construct()</code>, runs on <code>new</code></td><td>Sets starting values</td></tr>
            </tbody>
          </table>
          <p>Class names use <strong>PascalCase</strong> (<code>BankAccount</code>); methods and properties use camelCase. Access members with the arrow <code>-&gt;</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Constructor Property Promotion (PHP 8.0+)</h3>
          <p>Old-style classes repeat every property three times. Promotion declares and assigns the property right in the constructor's parameter list.</p>
          <div class="lc-code">// Old way: verbose<br>class Product {<br>    private string $name;<br>    private int $price;<br>    public function __construct(string $name, int $price) {<br>        $this-&amp;gt;name = $name;<br>        $this-&amp;gt;price = $price;<br>    }<br>}<br><br>// Modern way: promoted properties<br>class Product {<br>    public function __construct(<br>        private string $name,<br>        private int $price,<br>    ) {}<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Wallet</h3>
          <div class="lc-code">class Wallet<br>{<br>    public const MIN_TOPUP = 10;       // class constant<br><br>    public function __construct(<br>        public string $owner,<br>        private int $balance = 0,<br>    ) {}<br><br>    public function topUp(int $amount): void<br>    {<br>        if ($amount &lt; self::MIN_TOPUP) {<br>            echo "Top-up must be at least Rs ", self::MIN_TOPUP, "\n";<br>            return;<br>        }<br>        $this-&gt;balance += $amount;<br>    }<br><br>    public function balance(): int<br>    {<br>        return $this-&gt;balance;<br>    }<br>}<br><br>$w = new Wallet("Sana");<br>$w-&gt;topUp(500);<br>$w-&gt;topUp(5);<br>echo "{$w-&gt;owner} has Rs {$w-&gt;balance()}\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Top-up must be at least Rs 10<br>Sana has Rs 500</div>
          <p><code>self::MIN_TOPUP</code> reads a constant of the current class. From outside, write <code>Wallet::MIN_TOPUP</code>. <code>private</code> means only the class itself can touch <code>$balance</code> — Lesson 12 explains why that matters.</p>
        </div>
        <div class="lc-card">
          <h3>Static Members and Object Handles</h3>
          <ul class="lc-list">
            <li><code>static</code> properties and methods belong to the <strong>class</strong>, not to one object: <code>Wallet::count()</code>. Use them for counters and factory methods such as <code>Money::fromRupees(50)</code>.</li>
            <li>Variables hold a <strong>handle</strong> to an object. <code>$b = $a;</code> does not copy the object — both variables point to the same one. Use <code>clone $a</code> for a copy.</li>
          </ul>
          <div class="lc-code">class Counter { public int $n = 0; }<br><br>$a = new Counter();<br>$b = $a;          // same object<br>$c = clone $a;    // a separate copy<br>$b-&gt;n = 5;<br>echo $a-&gt;n, " ", $c-&gt;n, "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">5 0</div>
        </div>
        <div class="lc-card">
          <h3>The Null-safe Operator ?-&gt; (PHP 8.0+)</h3>
          <p>When an object might be <code>null</code>, <code>?-&gt;</code> stops the chain and returns <code>null</code> instead of crashing.</p>
          <div class="lc-code">// Old way<br>$city = null;<br>if ($order !== null &amp;amp;&amp;amp; $order-&amp;gt;customer() !== null) {<br>    $city = $order-&amp;gt;customer()-&amp;gt;city;<br>}<br><br>// Modern way<br>$city = $order?-&amp;gt;customer()?-&amp;gt;city ?? 'Unknown';</div>
          <p><strong>PHP 8.4+</strong> also lets you call a method straight after <code>new</code> without extra brackets: <code>new Wallet("Sana")-&gt;balance()</code>. On older versions write <code>(new Wallet("Sana"))-&gt;balance()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>$this-&gt;</code> inside a method: <code>$balance += 10</code> creates a new local variable instead of changing the property.</li>
            <li>Writing <code>$this-&gt;$name</code> (with a second <code>$</code>) — that looks up a property whose name is stored in <code>$name</code>.</li>
            <li>Calling a method on <code>null</code>: "Call to a member function ... on null". Check for null or use <code>?-&gt;</code>.</li>
            <li>Expecting <code>$copy = $obj;</code> to make an independent copy. Use <code>clone</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a <code>pay(int $amount): bool</code> method to the starter's <code>Wallet</code> that only works when there is enough balance and returns whether it succeeded. Then add a <code>static</code> factory <code>Wallet::withBonus(string $owner)</code> that starts with Rs 50.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Add a <code>__toString()</code> method when an object has an obvious text form (<code>"Sana: Rs 500"</code>). Then <code>echo $wallet;</code> just works.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);

        // Lesson 11: Classes and Objects
        class Wallet
        {
            public const MIN_TOPUP = 10;
            private static int $created = 0;          // shared by the whole class

            public function __construct(
                public string $owner,                 // promoted properties
                private int $balance = 0,
            ) {
                self::$created++;
            }

            public function topUp(int $amount): void
            {
                if ($amount < self::MIN_TOPUP) {
                    echo "  Rejected Rs $amount (minimum is Rs " . self::MIN_TOPUP . ")\n";
                    return;
                }
                $this->balance += $amount;
            }

            public function balance(): int { return $this->balance; }

            public static function created(): int { return self::$created; }

            public function __toString(): string
            {
                return "{$this->owner}: Rs {$this->balance}";
            }
        }

        $sana = new Wallet("Sana");
        $sana->topUp(500);
        $sana->topUp(5);
        $ravi = new Wallet("Ravi", 120);

        echo $sana, "\n", $ravi, "\n";
        echo "Wallets created: ", Wallet::created(), "\n";

        $same = $sana;                     // same object, not a copy
        $same->topUp(100);
        echo "After topping up \$same: $sana\n";

        $maybe = null;                     // e.g. a user without a wallet
        echo "Balance: ", $maybe?->balance() ?? "no wallet", "\n";
        echo "PHP 8.4+: ", new Wallet("Temp", 70)->balance(), "\n";
      PHP
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Encapsulation and Readonly Properties</h1>
        </div>
        <p class="lc-lead"><strong>Encapsulation</strong> means an object guards its own data. Outside code cannot put the object into a broken state — like a bank balance of minus one crore — because the only way in is through methods that check the rules. PHP gives you visibility keywords, <code>readonly</code>, and (in 8.4+) property hooks to do this.</p>
        <div class="lc-card">
          <h3>Visibility</h3>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Same class</th><th>Child classes</th><th>Outside code</th></tr></thead>
            <tbody>
              <tr><td><code>public</code></td><td>Yes</td><td>Yes</td><td>Yes</td></tr>
              <tr><td><code>protected</code></td><td>Yes</td><td>Yes</td><td>No</td></tr>
              <tr><td><code>private</code></td><td>Yes</td><td>No</td><td>No</td></tr>
            </tbody>
          </table>
          <p>Start with <code>private</code> and open up only what callers really need. A class's <strong>public methods</strong> are its promise to the rest of the program; private details can change freely later.</p>
        </div>
        <div class="lc-card">
          <h3>Validate in the Constructor</h3>
          <p>If an object can never be created in a bad state, every method can trust its data. Throw an exception for invalid input:</p>
          <div class="lc-code">final class Percentage<br>{<br>    public function __construct(private float $value)<br>    {<br>        if ($value &amp;lt; 0 || $value &amp;gt; 100) {<br>            throw new InvalidArgumentException("Percentage must be 0-100, got $value");<br>        }<br>    }<br>    public function value(): float { return $this-&amp;gt;value; }<br>}</div>
        </div>
        <div class="lc-card">
          <h3>readonly Properties (8.1+) and Classes (8.2+)</h3>
          <p>A <code>readonly</code> property can be set <strong>once</strong>, from inside the class (normally in the constructor). After that, any change throws an <code>Error</code>. Marking the whole class <code>readonly</code> makes every property readonly. This is perfect for <strong>value objects</strong> such as money, dates and addresses.</p>
          <div class="lc-code">final readonly class Money<br>{<br>    public function __construct(public int $paise)<br>    {<br>        if ($paise &lt; 0) {<br>            throw new InvalidArgumentException("Money cannot be negative");<br>        }<br>    }<br><br>    public function add(Money $other): Money<br>    {<br>        return new Money($this-&gt;paise + $other-&gt;paise);   // a NEW object<br>    }<br><br>    public function format(): string<br>    {<br>        return "Rs " . number_format($this-&gt;paise / 100, 2);<br>    }<br>}<br><br>$fee   = new Money(150000);<br>$fine  = new Money(2550);<br>$total = $fee-&gt;add($fine);<br>echo $total-&gt;format(), "\n";<br>echo $fee-&gt;format(), " (unchanged)\n";<br><br>try {<br>    $fee-&gt;paise = 0;<br>} catch (Error $e) {<br>    echo $e-&gt;getMessage(), "\n";<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Rs 1,525.50<br>Rs 1,500.00 (unchanged)<br>Cannot modify readonly property Money::$paise</div>
          <p>Readonly properties must have a type, and you cannot give them a default value in the declaration. <code>final</code> stops other classes from extending <code>Money</code> — a good default for value objects.</p>
        </div>
        <div class="lc-card">
          <h3>PHP 8.4+: Asymmetric Visibility and Property Hooks</h3>
          <p>PHP 8.4 lets a property be <strong>public to read but private to write</strong>, and lets you attach small <code>get</code>/<code>set</code> "hooks" to a property — no more boilerplate getter and setter methods.</p>
          <div class="lc-code">class User<br>{<br>    public private(set) string $email;          // read anywhere, write only inside<br><br>    public string $name {<br>        set(string $value) {                    // runs on every assignment<br>            $this-&gt;name = ucwords(strtolower(trim($value)));<br>        }<br>    }<br><br>    public string $initials {                   // virtual: computed on read<br>        get =&gt; implode('', array_map(fn($w) =&gt; $w[0], explode(' ', $this-&gt;name)));<br>    }<br><br>    public function __construct(string $name, string $email)<br>    {<br>        $this-&gt;name  = $name;<br>        $this-&gt;email = $email;<br>    }<br>}<br><br>$u = new User("  aSHA menon ", "asha@example.in");<br>echo "$u-&gt;name / $u-&gt;initials / $u-&gt;email\n";<br>try {<br>    $u-&gt;email = "hacker@example.com";<br>} catch (Error $e) {<br>    echo $e-&gt;getMessage(), "\n";<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Asha Menon / AM / asha@example.in<br>Cannot modify private(set) property User::$email from global scope</div>
          <p>These features do not exist in PHP 8.3 or older. On those versions use a <code>private</code> property plus a public getter method.</p>
        </div>
        <div class="lc-card">
          <h3>Which Tool When?</h3>
          <table class="lc-table">
            <thead><tr><th>Need</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td>Data that must never change after creation</td><td><code>readonly</code> property or <code>readonly</code> class</td></tr>
              <tr><td>Readable everywhere, changed only by the class's own methods</td><td><code>public private(set)</code> (8.4+) or private + getter</td></tr>
              <tr><td>Clean or check a value every time it is set</td><td><code>set</code> hook (8.4+) or a setter method</td></tr>
              <tr><td>Internal details</td><td><code>private</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Making every property <code>public</code> "to keep it simple" — then any code anywhere can break the rules.</li>
            <li>Writing a getter <em>and</em> a setter for every private property. That is just a public property with extra steps. Only add methods that make sense (<code>deposit()</code>, not <code>setBalance()</code>).</li>
            <li>Trying to change a readonly property in a "wither" method. Return a <strong>new</strong> object instead (PHP 8.5+ can also use <code>clone($this, ['paise' =&gt; $p])</code>).</li>
            <li>Giving a readonly property a default value — not allowed. Set it in the constructor.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, add a <code>subtract(Money $other): Money</code> method that throws an <code>InvalidArgumentException</code> when the result would be negative. Test it with a fee that is larger than the balance and catch the exception.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Immutable objects are easy to reason about: once you have checked a <code>Money</code> or <code>EmailAddress</code>, it stays valid forever, and you can pass it anywhere without worrying that someone will change it.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);

        // Lesson 12: Encapsulation and Readonly Properties

        final readonly class Money                      // readonly class (8.2+)
        {
            public function __construct(public int $paise)
            {
                if ($paise < 0) {
                    throw new InvalidArgumentException("Money cannot be negative");
                }
            }
            public function add(Money $other): Money { return new Money($this->paise + $other->paise); }
            public function format(): string { return "Rs " . number_format($this->paise / 100, 2); }
        }

        final class BankAccount
        {
            public private(set) Money $balance;         // PHP 8.4+: public read, private write
            private array $history = [];

            public function __construct(public readonly string $holder) // readonly property (8.1+)
            {
                $this->balance = new Money(0);
            }

            public function deposit(Money $amount): void
            {
                $this->balance = $this->balance->add($amount);
                $this->history[] = "+" . $amount->format();
            }

            public function statement(): string { return implode(", ", $this->history); }
        }

        $acc = new BankAccount("Gautam");
        $acc->deposit(new Money(250000));
        $acc->deposit(new Money(4950));
        echo "{$acc->holder}: {$acc->balance->format()}\n";
        echo "History: {$acc->statement()}\n";

        $attempts = [
            fn() => $acc->balance = new Money(99999999),   // private(set)
            fn() => $acc->holder = "Someone else",         // readonly
            fn() => new Money(-100),                       // validation
        ];
        foreach ($attempts as $try) {
            try { $try(); } catch (Error | InvalidArgumentException $e) { echo "Blocked: ", $e->getMessage(), "\n"; }
        }
      PHP
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Enums</h1>
        </div>
        <p class="lc-lead">An <strong>enum</strong> (enumeration) is a type with a fixed list of possible values: order status, user role, payment method. Before PHP 8.1 people used strings like <code>'paid'</code> — and a typo like <code>'payed'</code> slipped through silently. With enums, PHP itself rejects any value that is not on the list.</p>
        <div class="lc-card">
          <h3>The Problem with Magic Strings</h3>
          <div class="lc-code">// Before enums: any string is accepted<br>function shipOrder(string $status) { /* ... */ }<br>shipOrder('shiped');                // typo - no error, silent bug<br><br>// With an enum: only real cases are accepted<br>function shipOrder(OrderStatus $status) { /* ... */ }<br>shipOrder(OrderStatus::Shipped);    // IDE autocompletes it<br>shipOrder('shiped');                // TypeError</div>
        </div>
        <div class="lc-card">
          <h3>Pure and Backed Enums</h3>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Syntax</th><th>Has <code>-&gt;value</code>?</th><th>Use when</th></tr></thead>
            <tbody>
              <tr><td>Pure</td><td><code>enum Suit { case Hearts; case Spades; }</code></td><td>No (only <code>-&gt;name</code>)</td><td>Values live only inside your code</td></tr>
              <tr><td>Backed (string)</td><td><code>enum Status: string { case Paid = 'paid'; }</code></td><td>Yes: <code>'paid'</code></td><td>Stored in a database, JSON or a URL</td></tr>
              <tr><td>Backed (int)</td><td><code>enum Priority: int { case High = 1; }</code></td><td>Yes: <code>1</code></td><td>Numeric codes</td></tr>
            </tbody>
          </table>
          <p>Enum cases are <strong>objects</strong> — there is exactly one <code>Status::Paid</code>, so compare with <code>===</code>. You cannot create them with <code>new</code>, and they cannot hold changing state.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Order Status</h3>
          <div class="lc-code">enum OrderStatus: string<br>{<br>    case Pending   = 'pending';<br>    case Shipped   = 'shipped';<br>    case Delivered = 'delivered';<br>    case Cancelled = 'cancelled';<br><br>    public function label(): string<br>    {<br>        return match ($this) {<br>            self::Pending   =&gt; 'Waiting for dispatch',<br>            self::Shipped   =&gt; 'On the way',<br>            self::Delivered =&gt; 'Delivered',<br>            self::Cancelled =&gt; 'Cancelled',<br>        };<br>    }<br><br>    public function canCancel(): bool<br>    {<br>        return $this === self::Pending || $this === self::Shipped;<br>    }<br>}<br><br>$fromDb = OrderStatus::from('shipped');     // string -&gt; enum<br>echo $fromDb-&gt;name, " | ", $fromDb-&gt;value, " | ", $fromDb-&gt;label(), "\n";<br>var_dump($fromDb-&gt;canCancel());<br>var_dump(OrderStatus::tryFrom('lost'));     // unknown -&gt; null<br><br>try {<br>    OrderStatus::from('lost');<br>} catch (ValueError $e) {<br>    echo $e-&gt;getMessage(), "\n";<br>}<br>echo count(OrderStatus::cases()), " statuses\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Shipped | shipped | On the way<br>bool(true)<br>NULL<br>"lost" is not a valid backing value for enum OrderStatus<br>4 statuses</div>
        </div>
        <div class="lc-card">
          <h3>The Enum Toolbox</h3>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td>Case name</td><td><code>OrderStatus::Shipped-&gt;name</code></td><td><code>"Shipped"</code></td></tr>
              <tr><td>Backing value</td><td><code>OrderStatus::Shipped-&gt;value</code></td><td><code>"shipped"</code></td></tr>
              <tr><td>Strict lookup</td><td><code>OrderStatus::from('x')</code></td><td>Throws <code>ValueError</code></td></tr>
              <tr><td>Safe lookup</td><td><code>OrderStatus::tryFrom('x')</code></td><td><code>null</code></td></tr>
              <tr><td>All cases</td><td><code>OrderStatus::cases()</code></td><td>Array of every case, in order</td></tr>
              <tr><td>Methods, constants, static methods</td><td><code>$s-&gt;label()</code></td><td>Behaviour lives with the data</td></tr>
              <tr><td>Interfaces</td><td><code>enum Role: string implements HasLabel</code></td><td>Enums can implement interfaces</td></tr>
              <tr><td>JSON</td><td><code>json_encode(['s' =&gt; OrderStatus::Paid])</code></td><td>Backed enums encode as their value</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Enums + match = No Forgotten Cases</h3>
          <p>A <code>match</code> over an enum with no <code>default</code> arm is <strong>exhaustive</strong>: if someone later adds <code>case Returned</code> and forgets to update the <code>match</code>, PHP throws <code>UnhandledMatchError</code>, and static analysers such as PHPStan warn you before the code even runs. Avoid adding <code>default</code> in enum matches for this reason.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Comparing an enum with a string: <code>$status === 'paid'</code> is always false. Compare with <code>OrderStatus::Paid</code>, or compare <code>$status-&gt;value</code>.</li>
            <li>Using <code>from()</code> on user input without handling <code>ValueError</code>. For untrusted input use <code>tryFrom()</code> and check for <code>null</code>.</li>
            <li>Trying to read <code>-&gt;value</code> on a pure enum — only backed enums have values.</li>
            <li>Using an enum for data that changes often (like product categories edited by admins). Those belong in a database table.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Create <code>enum Role: string</code> with cases <code>Student</code>, <code>Teacher</code> and <code>Admin</code>. Add a method <code>canEditMarks(): bool</code> (true for Teacher and Admin) and loop over <code>Role::cases()</code> printing each role and the answer.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Store <code>$status-&gt;value</code> in the database and rebuild the enum with <code>OrderStatus::from($row['status'])</code> when you read it back. Laravel's Eloquent casts can do this for you automatically.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 13: Enums (PHP 8.1+)

        enum PaymentMethod                       // pure enum: no values
        {
            case Upi;
            case Card;
            case Cash;
        }

        enum OrderStatus: string                 // backed enum: string values
        {
            case Pending   = 'pending';
            case Shipped   = 'shipped';
            case Delivered = 'delivered';
            case Cancelled = 'cancelled';

            public function label(): string
            {
                return match ($this) {           // no default: every case must be handled
                    self::Pending   => '⏳ Waiting for dispatch',
                    self::Shipped   => '🚚 On the way',
                    self::Delivered => '✅ Delivered',
                    self::Cancelled => '❌ Cancelled',
                };
            }

            public function canCancel(): bool
            {
                return in_array($this, [self::Pending, self::Shipped], true);
            }
        }

        function describe(string $orderId, OrderStatus $status, PaymentMethod $paidBy): string
        {
            $cancel = $status->canCancel() ? "can cancel" : "cannot cancel";
            return "$orderId via {$paidBy->name}: {$status->label()} ($cancel)";
        }

        echo describe("ORD-101", OrderStatus::Shipped, PaymentMethod::Upi), "\n";
        echo describe("ORD-102", OrderStatus::from('delivered'), PaymentMethod::Card), "\n";
        echo "\n--- Values coming from a database or form ---\n";
        foreach (['pending', 'cancelled', 'lost'] as $raw) {
            $status = OrderStatus::tryFrom($raw);
            echo str_pad($raw, 10), "=> ", $status?->label() ?? "invalid status", "\n";
        }

        echo "\nAll statuses: ", implode(", ", array_map(fn($c) => $c->value, OrderStatus::cases())), "\n";
        echo "JSON: ", json_encode(['id' => 'ORD-101', 'status' => OrderStatus::Shipped]), "\n";
      PHP
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Inheritance, Interfaces and Traits</h1>
        </div>
        <p class="lc-lead">As programs grow, many classes share ideas. A <code>UpiPayment</code> and a <code>CardPayment</code> are both payments. PHP gives you four tools to express this: <strong>inheritance</strong> (<code>extends</code>), <strong>abstract classes</strong>, <strong>interfaces</strong> (<code>implements</code>) and <strong>traits</strong> (<code>use</code>).</p>
        <div class="lc-card">
          <h3>The Four Tools at a Glance</h3>
          <table class="lc-table">
            <thead><tr><th>Tool</th><th>Keyword</th><th>Contains code?</th><th>How many per class?</th><th>Think of it as</th></tr></thead>
            <tbody>
              <tr><td>Parent class</td><td><code>extends</code></td><td>Yes</td><td>One</td><td>"is a" — a <code>Car</code> is a <code>Vehicle</code></td></tr>
              <tr><td>Abstract class</td><td><code>abstract class</code> + <code>extends</code></td><td>Some; some methods left <code>abstract</code></td><td>One</td><td>A half-finished parent that cannot be created with <code>new</code></td></tr>
              <tr><td>Interface</td><td><code>implements</code></td><td>No — only method signatures and constants</td><td>Many</td><td>A contract: "can do X"</td></tr>
              <tr><td>Trait</td><td><code>use</code> inside the class</td><td>Yes</td><td>Many</td><td>Copy-paste of methods, done by the language</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Interfaces and Polymorphism</h3>
          <p>Code that depends on an <strong>interface</strong> works with any class that implements it. This is <em>polymorphism</em> — one call, many behaviours.</p>
          <div class="lc-code">interface PaymentMethod<br>{<br>    public function pay(int $rupees): string;<br>}<br><br>final class Upi implements PaymentMethod<br>{<br>    public function __construct(private string $vpa) {}<br>    public function pay(int $rupees): string<br>    {<br>        return "Paid Rs $rupees via UPI to {$this-&gt;vpa}";<br>    }<br>}<br><br>final class Cash implements PaymentMethod<br>{<br>    public function pay(int $rupees): string<br>    {<br>        return "Collect Rs $rupees in cash on delivery";<br>    }<br>}<br><br>function checkout(PaymentMethod $method, int $amount): void<br>{<br>    echo $method-&gt;pay($amount), "\n";   // works for ANY PaymentMethod<br>}<br><br>checkout(new Upi("shop@okbank"), 499);<br>checkout(new Cash(), 250);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Paid Rs 499 via UPI to shop@okbank<br>Collect Rs 250 in cash on delivery</div>
          <p>To add net banking later you write one new class; <code>checkout()</code> does not change at all.</p>
        </div>
        <div class="lc-card">
          <h3>Abstract Classes, parent:: and #[\Override]</h3>
          <div class="lc-code">abstract class Shape<br>{<br>    abstract public function area(): float;       // child MUST write this<br><br>    public function describe(): string            // shared code<br>    {<br>        return static::class . " with area " . round($this-&gt;area(), 2);<br>    }<br>}<br><br>class Circle extends Shape<br>{<br>    public function __construct(protected float $r) {}<br><br>    #[\Override]                                  // PHP 8.3+<br>    public function area(): float { return M_PI * $this-&gt;r ** 2; }<br>}<br><br>class Ring extends Circle<br>{<br>    public function __construct(float $r, private float $hole)<br>    {<br>        parent::__construct($r);                  // run the parent constructor<br>    }<br><br>    #[\Override]<br>    public function area(): float { return parent::area() - M_PI * $this-&gt;hole ** 2; }<br>}<br><br>echo (new Circle(1))-&gt;describe(), "\n";<br>echo (new Ring(2, 1))-&gt;describe(), "\n";<br>var_dump(new Ring(2, 1) instanceof Shape);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Circle with area 3.14<br>Ring with area 9.42<br>bool(true)</div>
          <p><code>#[\Override]</code> tells PHP "this method must replace a parent method". If you misspell the name (<code>aera()</code>) or the parent method is renamed, PHP throws an error instead of silently creating a new method.</p>
        </div>
        <div class="lc-card">
          <h3>Traits: Sharing Methods Sideways</h3>
          <p>A trait is a bundle of methods you can drop into unrelated classes. Use it for small cross-cutting helpers such as timestamps or logging, not as a replacement for good design.</p>
          <div class="lc-code">trait HasTimestamps<br>{<br>    private ?string $updatedAt = null;<br>    public function touch(string $when): void { $this-&amp;gt;updatedAt = $when; }<br>    public function updatedAt(): ?string { return $this-&amp;gt;updatedAt; }<br>}<br><br>class Invoice { use HasTimestamps; }<br>class Customer { use HasTimestamps; }</div>
        </div>
        <div class="lc-card">
          <h3>Composition Over Inheritance</h3>
          <p>Deep chains like <code>Animal → Mammal → Dog → ServiceDog</code> become hard to change. Often it is better for an object to <strong>have</strong> a helper (passed into its constructor) than to <strong>be</strong> a subclass: an <code>OrderService</code> that <em>has</em> a <code>PaymentMethod</code> is more flexible than <code>UpiOrderService extends OrderService</code>. Mark classes <code>final</code> unless you have designed them to be extended.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Forgetting <code>parent::__construct(...)</code> in a child constructor, so the parent's properties are never set.</li>
            <li>Trying <code>new Shape()</code> on an abstract class — "Cannot instantiate abstract class".</li>
            <li>Changing a method's parameter or return types in a child in an incompatible way — PHP reports a fatal "must be compatible" error.</li>
            <li>Using inheritance only to reuse a couple of helper methods. That is what traits or plain helper objects are for.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Add a <code>NetBanking</code> class to the starter that implements <code>PaymentMethod</code> and charges a Rs 10 fee. Then give it the <code>LogsActivity</code> trait and print its log after paying.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Type your parameters with <strong>interfaces</strong>, not concrete classes (<code>PaymentMethod $m</code>, not <code>Upi $m</code>). It makes your code easy to extend and easy to test with fake objects.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 14: Inheritance, Interfaces and Traits

        interface PaymentMethod                       // a contract
        {
            public function pay(int $rupees): string;
        }

        trait LogsActivity                            // reusable methods
        {
            private array $log = [];
            protected function log(string $line): void { $this->log[] = $line; }
            public function history(): string { return implode(" | ", $this->log); }
        }
        abstract class BasePayment implements PaymentMethod
        {
            use LogsActivity;

            abstract protected function fee(int $rupees): int;   // children decide

            public function pay(int $rupees): string
            {
                $total = $rupees + $this->fee($rupees);
                $this->log("Rs $total");
                return static::class . ": charged Rs $total";
            }
        }

        final class Upi extends BasePayment
        {
            #[\Override] protected function fee(int $rupees): int { return 0; }
        }
        final class Card extends BasePayment
        {
            #[\Override] protected function fee(int $rupees): int { return (int) round($rupees * 0.02); } // 2%
        }

        function checkout(PaymentMethod $method, int $amount): void   // polymorphism
        {
            echo $method->pay($amount), "\n";
        }

        $card = new Card();
        foreach ([new Upi(), $card, new Upi()] as $method) {
            checkout($method, 1250);
        }
        $card->pay(300);
        echo "Card history: ", $card->history(), "\n";
        var_dump($card instanceof PaymentMethod, $card instanceof BasePayment);
      PHP
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Exceptions and Error Handling</h1>
        </div>
        <p class="lc-lead">Things go wrong: a payment gateway times out, a user types letters into a phone field, a file is missing. An <strong>exception</strong> is PHP's way of saying "I cannot continue here — someone above me must decide what to do". Handling exceptions well is the difference between a friendly error page and a blank white screen.</p>
        <div class="lc-card">
          <h3>try, catch, finally</h3>
          <div class="lc-code">function withdraw(int $balance, int $amount): int<br>{<br>    if ($amount &lt;= 0) {<br>        throw new InvalidArgumentException("Amount must be positive");<br>    }<br>    if ($amount &gt; $balance) {<br>        throw new RuntimeException("Insufficient balance");<br>    }<br>    return $balance - $amount;<br>}<br><br>foreach ([300, -5, 5000] as $amount) {<br>    try {<br>        $left = withdraw(1000, $amount);<br>        echo "Left: $left\n";<br>    } catch (InvalidArgumentException $e) {<br>        echo "Bad input: ", $e-&gt;getMessage(), "\n";<br>    } catch (RuntimeException $e) {<br>        echo "Failed: ", $e-&gt;getMessage(), "\n";<br>    } finally {<br>        echo "  (ATM screen reset)\n";<br>    }<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Left: 700<br>  (ATM screen reset)<br>Bad input: Amount must be positive<br>  (ATM screen reset)<br>Failed: Insufficient balance<br>  (ATM screen reset)</div>
          <ul class="lc-list">
            <li><code>throw</code> stops the function immediately and jumps to the nearest matching <code>catch</code>.</li>
            <li>The <strong>first</strong> matching <code>catch</code> wins, so put specific types before general ones.</li>
            <li><code>finally</code> runs every time — success, caught exception, or even a <code>return</code> inside <code>try</code>. Use it for clean-up.</li>
            <li>If nothing catches the exception, PHP stops with "Uncaught ..." (a fatal error).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>The Throwable Family</h3>
          <table class="lc-table">
            <thead><tr><th>Branch</th><th>Common classes</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>Throwable</code> (interface)</td><td>—</td><td>Catch-all for both branches below</td></tr>
              <tr><td><code>Error</code></td><td><code>TypeError</code>, <code>ValueError</code>, <code>ArgumentCountError</code>, <code>DivisionByZeroError</code>, <code>UnhandledMatchError</code></td><td>Programming bugs detected by PHP itself — usually fix the code, do not catch</td></tr>
              <tr><td><code>Exception</code></td><td><code>RuntimeException</code>, <code>LogicException</code>, <code>InvalidArgumentException</code>, <code>DomainException</code>, <code>JsonException</code></td><td>Problems your program can expect and handle</td></tr>
            </tbody>
          </table>
          <p>Note that <code>catch (Exception $e)</code> does <strong>not</strong> catch an <code>Error</code> such as <code>TypeError</code>. Use <code>catch (Throwable $e)</code> only at the very top of your app, to log the problem and show an error page.</p>
        </div>
        <div class="lc-card">
          <h3>Multi-catch, Custom Exceptions and Chaining</h3>
          <p>Since <strong>PHP 7.1</strong> one <code>catch</code> can handle several types with <code>|</code>. Since PHP 8.0 you may leave out the variable if you do not need it, and <code>throw</code> can be used as an expression (for example after <code>??</code>).</p>
          <div class="lc-code">final class PaymentFailed extends RuntimeException<br>{<br>    public static function forOrder(string $id, Throwable $cause): self<br>    {<br>        return new self("Payment failed for order $id", previous: $cause);<br>    }<br>}<br><br>function charge(string $orderId): never<br>{<br>    try {<br>        throw new RuntimeException("Gateway timeout after 30s");<br>    } catch (RuntimeException $e) {<br>        throw PaymentFailed::forOrder($orderId, $e);   // wrap, keep the cause<br>    }<br>}<br><br>try {<br>    charge("ORD-9");<br>} catch (PaymentFailed | InvalidArgumentException $e) {<br>    echo get_class($e), ": ", $e-&gt;getMessage(), "\n";<br>    echo "Cause: ", $e-&gt;getPrevious()-&gt;getMessage(), "\n";<br>}<br><br>$config = ['db' =&gt; 'app'];<br>try {<br>    $host = $config['host'] ?? throw new LogicException("host is not configured");<br>} catch (LogicException) {                            // no variable needed<br>    echo "Using default host\n";<br>}</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">PaymentFailed: Payment failed for order ORD-9<br>Cause: Gateway timeout after 30s<br>Using default host</div>
        </div>
        <div class="lc-card">
          <h3>Errors in Production</h3>
          <ul class="lc-list">
            <li>In development, show every error: <code>display_errors=On</code>, <code>error_reporting=E_ALL</code>.</li>
            <li>In production, <strong>never</strong> show errors to visitors (they can reveal file paths and SQL). Use <code>display_errors=Off</code> and <code>log_errors=On</code>, then read the log.</li>
            <li>Frameworks install a global handler for you; in plain PHP use <code>set_exception_handler()</code> to log and show a friendly page.</li>
            <li>Warnings (like "Undefined array key") are not exceptions — <code>try/catch</code> does not catch them. Fix their cause.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Empty catch blocks: <code>catch (Exception $e) {}</code> hides the bug forever. At least log it.</li>
            <li>Catching <code>Exception</code> first, so the more specific <code>catch</code> blocks below it never run.</li>
            <li>Using exceptions for normal flow, such as "user not found" in a search. Return <code>null</code> for expected "no result" cases.</li>
            <li>Throwing away the original error when wrapping. Pass it as <code>previous:</code> so the full story is in the log.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Create <code>class OutOfStock extends RuntimeException</code>. Write <code>reserve(array $stock, string $item, int $qty): array</code> that throws <code>InvalidArgumentException</code> for unknown items and <code>OutOfStock</code> when there is not enough. Call it three times in a loop with one <code>try</code> that uses a multi-catch.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Name custom exceptions after what went wrong (<code>PaymentFailed</code>, <code>OutOfStock</code>), not where (<code>ServiceException</code>). Static constructors like <code>PaymentFailed::forOrder()</code> keep messages consistent.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 15: Exceptions and Error Handling

        final class OutOfStock extends RuntimeException
        {
            public static function for(string $item, int $left): self
            {
                return new self("Only $left x $item left");
            }
        }

        function reserve(array $stock, string $item, int $qty): array
        {
            if ($qty < 1) {
                throw new InvalidArgumentException("Quantity must be at least 1");
            }
            $left = $stock[$item] ?? throw new InvalidArgumentException("Unknown item '$item'");
            if ($qty > $left) {
                throw OutOfStock::for($item, $left);
            }
            $stock[$item] = $left - $qty;
            return $stock;
        }

        $stock = ['samosa' => 10, 'chai' => 3];
        $orders = [['samosa', 4], ['chai', 5], ['dosa', 1], ['chai', 0], ['chai', 2]];

        foreach ($orders as [$item, $qty]) {
            try {
                $stock = reserve($stock, $item, $qty);
                echo "OK      $qty x $item\n";
            } catch (OutOfStock $e) {
                echo "WAIT    ", $e->getMessage(), "\n";
            } catch (InvalidArgumentException | TypeError $e) {   // multi-catch (PHP 7.1+)
                echo "REJECT  ", $e->getMessage(), "\n";
            } finally {
                echo "        stock now: ", json_encode($stock), "\n";
            }
        }

        echo "\n--- Error vs Exception ---\n";
        foreach ([fn() => intdiv(10, 0), fn() => json_decode("{bad", flags: JSON_THROW_ON_ERROR)] as $risky) {
            try {
                $risky();
            } catch (Throwable $t) {
                $branch = $t instanceof Error ? "Error" : "Exception";
                echo get_class($t), " (an $branch): ", $t->getMessage(), "\n";
            }
        }
      PHP
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Dates, JSON and Files</h1>
        </div>
        <p class="lc-lead">Three everyday jobs: "when is the fee due?", "send this data to the mobile app" and "save this report". PHP handles them with the <strong>DateTimeImmutable</strong> class, the <strong>json_encode/json_decode</strong> functions and a small set of <strong>file functions</strong>.</p>
        <div class="lc-card">
          <h3>Dates: Always Use DateTimeImmutable</h3>
          <p>Create a date from a string and <strong>always say which time zone</strong> you mean. India uses <code>Asia/Kolkata</code> (UTC+05:30). The examples below use fixed dates so the output is always the same; in a real app <code>new DateTimeImmutable('now', $tz)</code> gives the current moment.</p>
          <div class="lc-code">$tz    = new DateTimeZone('Asia/Kolkata');<br>$today = new DateTimeImmutable('2026-09-25', $tz);<br>$due   = $today-&gt;modify('+30 days');<br>$newYear = new DateTimeImmutable('2027-01-01', $tz);<br><br>echo $today-&gt;format('l, d F Y'), "\n";<br>echo "Fee due: ", $due-&gt;format('d-m-Y'), "\n";<br>echo "Days until New Year: ", $today-&gt;diff($newYear)-&gt;days, "\n";<br><br>$born = new DateTimeImmutable('2004-03-10', $tz);<br>echo "Age: ", $born-&gt;diff($today)-&gt;y, " years\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">Friday, 25 September 2026<br>Fee due: 25-10-2026<br>Days until New Year: 98<br>Age: 22 years</div>
        </div>
        <div class="lc-card">
          <h3>Useful Format Codes</h3>
          <table class="lc-table">
            <thead><tr><th>Code</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>Y / y</code></td><td>Year, 4 / 2 digits</td><td>2026 / 26</td></tr>
              <tr><td><code>m / n / F / M</code></td><td>Month: 09 / 9 / September / Sep</td><td></td></tr>
              <tr><td><code>d / j / D / l</code></td><td>Day: 05 / 5 / Fri / Friday</td><td></td></tr>
              <tr><td><code>H / h / i / s / A</code></td><td>24h hour / 12h hour / minutes / seconds / AM-PM</td><td>14 / 02 / 30 / 00 / PM</td></tr>
              <tr><td><code>DATE_ATOM</code></td><td>ISO 8601 — best for APIs</td><td>2026-09-25T10:30:00+05:30</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Why Immutable? Why Time Zones?</h3>
          <ul class="lc-list">
            <li>The older <code>DateTime</code> class <strong>changes itself</strong>: after <code>$end = $start-&gt;modify('+1 day');</code> both variables hold the new date — a classic bug. <code>DateTimeImmutable</code> returns a new object and leaves the original alone.</li>
            <li>Store dates in the database in <strong>UTC</strong> and convert for display: <code>$when-&gt;setTimezone(new DateTimeZone('Asia/Kolkata'))</code>.</li>
            <li>Month maths overflows: <code>'2026-01-31'</code> <code>+1 month</code> gives <strong>3 March</strong>. Use <code>modify('last day of next month')</code> when you mean the month end.</li>
            <li>Parse user input with <code>DateTimeImmutable::createFromFormat('!d/m/Y', '15/08/1947', $tz)</code>. The <code>!</code> sets the missing time parts to zero instead of "now".</li>
            <li>The old functions <code>date()</code>, <code>time()</code> and <code>strtotime()</code> still work but use the server's default time zone and plain integers. Prefer the classes.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>JSON: The Language of APIs</h3>
          <div class="lc-code">$student = ['name' =&gt; 'अनु', 'cgpa' =&gt; 8.75, 'skills' =&gt; ['PHP', 'SQL']];<br><br>$json = json_encode($student, JSON_UNESCAPED_UNICODE | JSON_THROW_ON_ERROR);<br>echo $json, "\n";<br><br>$back = json_decode($json, true, flags: JSON_THROW_ON_ERROR);   // true = arrays<br>echo $back['skills'][1], "\n";<br><br>try {<br>    json_decode('{"name": "Anu",}', true, flags: JSON_THROW_ON_ERROR);<br>} catch (JsonException $e) {<br>    echo "Invalid JSON: ", $e-&gt;getMessage(), "\n";<br>}<br>var_dump(json_validate('{"ok": true}'));    // PHP 8.3+</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">{"name":"अनु","cgpa":8.75,"skills":["PHP","SQL"]}<br>SQL<br>Invalid JSON: Syntax error<br>bool(true)</div>
          <table class="lc-table">
            <thead><tr><th>Flag / option</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>JSON_THROW_ON_ERROR</code></td><td>Throw <code>JsonException</code> instead of quietly returning <code>null</code> / <code>false</code>. Always use it.</td></tr>
              <tr><td><code>JSON_UNESCAPED_UNICODE</code></td><td>Keep "अनु" readable instead of <code>अनु</code></td></tr>
              <tr><td><code>JSON_PRETTY_PRINT</code></td><td>Indented output for humans</td></tr>
              <tr><td><code>json_decode($s, true)</code></td><td>Return associative arrays instead of <code>stdClass</code> objects</td></tr>
            </tbody>
          </table>
          <p>A class can control its own JSON by implementing <code>JsonSerializable</code> and its <code>jsonSerialize()</code> method. Backed enums are encoded as their value.</p>
        </div>
        <div class="lc-card">
          <h3>Files (on Your Own Server)</h3>
          <p>The lesson editor has no disk, so try these on your computer with <code>php file.php</code>.</p>
          <div class="lc-code">$path = __DIR__ . '/data/orders.json';            // build paths from __DIR__<br><br>file_put_contents($path, json_encode($orders), LOCK_EX);      // write (creates file)<br>file_put_contents(__DIR__ . '/app.log', "Saved\n", FILE_APPEND | LOCK_EX);<br><br>if (is_readable($path)) {<br>    $orders = json_decode(file_get_contents($path), true, flags: JSON_THROW_ON_ERROR);<br>}<br><br>$fh = fopen(__DIR__ . '/big.csv', 'r');             // large files: line by line<br>while (($row = fgetcsv($fh, escape: '')) !== false) {<br>    echo $row[0], PHP_EOL;<br>}<br>fclose($fh);</div>
          <p><strong>Security:</strong> never build a path straight from user input (<code>"uploads/" . $_GET['file']</code>). A visitor could send <code>../../config.php</code>. Use <code>basename()</code> and an allow-list of files.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Creating dates without a time zone, so the result depends on the server's settings (the editor uses UTC).</li>
            <li>Using mutable <code>DateTime</code> and accidentally changing a date you still need.</li>
            <li>Calling <code>json_decode()</code> without <code>true</code> and then using <code>$data['name']</code> on an object.</li>
            <li>Ignoring a <code>null</code> from <code>json_decode()</code> — without <code>JSON_THROW_ON_ERROR</code> bad JSON fails silently.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Given the fixed date <code>2026-09-25</code>, print the next 4 monthly EMI dates on the 5th of each month (hint: <code>new DatePeriod($first, new DateInterval('P1M'), 3)</code>), then print them as a pretty JSON array.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> For APIs, send dates as ISO 8601 strings (<code>$d-&gt;format(DATE_ATOM)</code>). Every language — JavaScript, Python, Kotlin — can read that format without guessing.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 16: Dates, JSON and Files
        // Fixed dates make the output the same every time you run it.

        $ist   = new DateTimeZone('Asia/Kolkata');
        $today = new DateTimeImmutable('2026-09-25 10:30', $ist);

        echo "--- Dates ---\n";
        echo "Today:      ", $today->format('l, d M Y h:i A'), "\n";
        echo "ISO 8601:   ", $today->format(DATE_ATOM), "\n";
        echo "In UTC:     ", $today->setTimezone(new DateTimeZone('UTC'))->format('d M H:i T'), "\n";
        echo "Fee due:    ", $today->modify('+15 days')->format('d M Y'), "\n";

        $diwali = new DateTimeImmutable('2026-11-08', $ist);
        $gap = $today->setTime(0, 0)->diff($diwali);
        echo "To Diwali:  {$gap->days} days ({$gap->m} months {$gap->d} days)\n";

        $dob = DateTimeImmutable::createFromFormat('!d/m/Y', '10/03/2004', $ist);
        echo "Age:        ", $dob->diff($today)->y, " years\n";

        echo "\nEMI dates:  ";
        $first = new DateTimeImmutable('2026-10-05', $ist);
        foreach (new DatePeriod($first, new DateInterval('P1M'), 3) as $emi) {
            echo $emi->format('d M'), "  ";
        }

        echo "\n\n--- JSON ---\n";
        $order = [
            'id'       => 'ORD-2026-0042',
            'customer' => 'Anu राव',
            'items'    => [['name' => 'Kurta', 'qty' => 2], ['name' => 'Dupatta', 'qty' => 1]],
            'placedAt' => $today->format(DATE_ATOM),
        ];
        $json = json_encode($order, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE | JSON_THROW_ON_ERROR);
        echo $json, "\n";

        $decoded = json_decode($json, true, flags: JSON_THROW_ON_ERROR);
        echo "Items ordered: ", array_sum(array_column($decoded['items'], 'qty')), "\n";

        try {
            json_decode("{'id': 1}", true, flags: JSON_THROW_ON_ERROR);   // single quotes are invalid JSON
        } catch (JsonException $e) {
            echo "Bad JSON rejected: ", $e->getMessage(), "\n";
        }
      PHP
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Forms, Sessions and Web Security</h1>
        </div>
        <p class="lc-lead">This is where PHP meets real users — and real attackers. The golden rule: <strong>never trust input, always escape output</strong>. In this lesson you learn the handful of habits that stop the most common web attacks listed in the OWASP Top 10.</p>
        <div class="lc-card">
          <h3>Reading Form Data</h3>
          <div class="lc-code">&amp;lt;form method="post" action="/register.php"&amp;gt;<br>  &amp;lt;input name="email" type="email"&amp;gt;<br>  &amp;lt;input name="age" type="number"&amp;gt;<br>  &amp;lt;input type="hidden" name="csrf_token" value="&amp;lt;?= e($_SESSION['csrf_token']) ?&amp;gt;"&amp;gt;<br>  &amp;lt;button&amp;gt;Register&amp;lt;/button&amp;gt;<br>&amp;lt;/form&amp;gt;</div>
          <table class="lc-table">
            <thead><tr><th>Superglobal</th><th>Contains</th><th>Use for</th></tr></thead>
            <tbody>
              <tr><td><code>$_GET</code></td><td>URL query values: <code>?page=2&amp;q=php</code></td><td>Searching, filtering, paging — safe to bookmark</td></tr>
              <tr><td><code>$_POST</code></td><td>Form body values</td><td>Anything that <strong>changes</strong> data: sign-up, payment, delete</td></tr>
              <tr><td><code>$_SERVER['REQUEST_METHOD']</code></td><td><code>"GET"</code> or <code>"POST"</code></td><td>Deciding whether the form was submitted</td></tr>
              <tr><td><code>$_SESSION</code></td><td>Data kept on the server between requests</td><td>Logged-in user id, CSRF token, cart</td></tr>
              <tr><td><code>$_COOKIE</code>, <code>$_FILES</code></td><td>Cookies and uploaded files</td><td>Preferences, uploads</td></tr>
            </tbody>
          </table>
          <p>Every value in these arrays is a <strong>string</strong> (or missing) and completely controlled by the visitor.</p>
        </div>
        <div class="lc-card">
          <h3>1. Validate Input</h3>
          <p><code>filter_var()</code> checks and converts common formats. It returns <code>false</code> when the value is invalid.</p>
          <div class="lc-code">$post = ['email' =&gt; 'riya@example.in', 'age' =&gt; '17'];<br><br>$email = filter_var($post['email'] ?? '', FILTER_VALIDATE_EMAIL);<br>$age   = filter_var($post['age'] ?? '', FILTER_VALIDATE_INT,<br>                    ['options' =&gt; ['min_range' =&gt; 18, 'max_range' =&gt; 100]]);<br>var_dump($email, $age);</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">string(15) "riya@example.in"<br>bool(false)</div>
          <p>Browser checks like <code>type="email"</code> or <code>required</code> are only for convenience — anyone can bypass them. Always validate again on the server.</p>
        </div>
        <div class="lc-card">
          <h3>2. Escape Output: Stop XSS</h3>
          <p><strong>Cross-Site Scripting (XSS)</strong> happens when user text is printed into HTML as-is. If a "name" contains <code>&lt;script&gt;</code>, it runs in every visitor's browser and can steal their session. Escape <em>every</em> value when you print it into HTML:</p>
          <div class="lc-code">function e(string $text): string<br>{<br>    return htmlspecialchars($text, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');<br>}<br><br>$comment = '&lt;script&gt;alert("hacked")&lt;/script&gt; Tom\'s review';<br>echo "&lt;p&gt;", e($comment), "&lt;/p&gt;\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">&lt;p&gt;&amp;lt;script&amp;gt;alert(&amp;quot;hacked&amp;quot;)&amp;lt;/script&amp;gt; Tom&amp;#039;s review&lt;/p&gt;</div>
          <p>The browser now shows the text instead of running it. Template engines such as Laravel Blade (<code>{{ $name }}</code>) and Twig escape automatically — one more reason to use them. For JSON responses use <code>json_encode()</code>; for URLs use <code>urlencode()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>3. CSRF Tokens</h3>
          <p><strong>Cross-Site Request Forgery</strong>: a bad website makes your logged-in browser submit a form to your bank. The browser sends your cookies automatically, so the bank thinks it was you. The fix is a secret random token that the attacker cannot know:</p>
          <ul class="lc-list">
            <li>On login, create it: <code>$_SESSION['csrf_token'] = bin2hex(random_bytes(32));</code></li>
            <li>Put it in every POST form as a hidden field (see the form above).</li>
            <li>On submit, compare in constant time: <code>hash_equals($_SESSION['csrf_token'], $_POST['csrf_token'] ?? '')</code>. If it fails, stop with HTTP 403.</li>
            <li>Also set session cookies with <code>SameSite=Lax</code> (or <code>Strict</code>), which blocks most cross-site form posts.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>4. Sessions and Passwords</h3>
          <div class="lc-code">session_start([<br>    'cookie_httponly' =&amp;gt; true,      // JavaScript cannot read the cookie<br>    'cookie_secure'   =&amp;gt; true,      // only sent over HTTPS<br>    'cookie_samesite' =&amp;gt; 'Lax',<br>]);<br><br>// Registration: store only the hash<br>$hash = password_hash($_POST['password'], PASSWORD_DEFAULT);<br><br>// Login<br>if (password_verify($_POST['password'], $user['password_hash'])) {<br>    session_regenerate_id(true);    // new session id: stops session fixation<br>    $_SESSION['user_id'] = $user['id'];<br>}</div>
          <table class="lc-table">
            <thead><tr><th>Do</th><th>Never</th></tr></thead>
            <tbody>
              <tr><td><code>password_hash()</code> + <code>password_verify()</code> (bcrypt, salted, slow on purpose)</td><td><code>md5()</code>, <code>sha1()</code> or plain <code>hash('sha256', ...)</code> for passwords</td></tr>
              <tr><td>Store the whole 60+ character hash in a <code>VARCHAR(255)</code> column</td><td>Store or email the plain password</td></tr>
              <tr><td>Call <code>password_needs_rehash()</code> after login to upgrade old hashes</td><td>Invent your own "encryption"</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Escaping on input and storing the escaped text. Store the raw value; escape when <strong>printing</strong>, for the place you print it (HTML, URL, JSON).</li>
            <li>Using GET links for actions like <code>delete.php?id=5</code> — crawlers and attackers can trigger them. Use POST with a CSRF token.</li>
            <li>Comparing tokens with <code>==</code> — use <code>hash_equals()</code>.</li>
            <li>Showing "wrong password" vs "no such user" separately — it tells attackers which emails exist. Say "Invalid email or password".</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, add a <code>phone</code> field and validate it as a 10-digit Indian mobile number starting with 6–9 using <code>preg_match('/^[6-9]\d{9}$/', $phone)</code>. Print a clear error when it fails and make sure the phone is escaped when shown back.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> After a successful POST, <strong>redirect</strong> (<code>header('Location: /thank-you'); exit;</code>). This "Post/Redirect/Get" pattern stops the browser from resubmitting the form when the user presses refresh.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 17: Forms, Sessions and Web Security
        // We simulate one POST request with arrays, because the editor has no web server.

        function e(string $text): string
        {
            return htmlspecialchars($text, ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8');
        }

        $session = ['csrf_token' => bin2hex(random_bytes(32))];   // made at login
        $post = [
            'name'       => '<b>Riya</b><script>steal()</script>',
            'email'      => 'riya@example.in',
            'age'        => '17',
            'password'   => 'Chai@Monsoon2026',
            'csrf_token' => $session['csrf_token'],               // hidden form field
        ];

        echo "--- 1. CSRF check ---\n";
        $validToken = hash_equals($session['csrf_token'], $post['csrf_token'] ?? '');
        echo $validToken ? "Token OK\n" : "403 Forbidden\n";
        var_dump(hash_equals($session['csrf_token'], 'guessed-token'));

        echo "\n--- 2. Validation ---\n";
        $errors = [];
        $email = filter_var($post['email'] ?? '', FILTER_VALIDATE_EMAIL);
        $age   = filter_var($post['age'] ?? '', FILTER_VALIDATE_INT, ['options' => ['min_range' => 18]]);
        if ($email === false) $errors[] = "Email is not valid";
        if ($age === false)   $errors[] = "You must be 18 or older";
        if (mb_strlen($post['password'] ?? '') < 12) $errors[] = "Password needs 12+ characters";
        echo $errors ? implode("\n", $errors) . "\n" : "All fields valid\n";

        echo "\n--- 3. Escaped output (XSS blocked) ---\n";
        echo "<p>Welcome, " . e($post['name']) . "</p>\n";

        echo "\n--- 4. Password hashing ---\n";
        $hash = password_hash($post['password'], PASSWORD_DEFAULT);
        echo "Stored hash starts with ", substr($hash, 0, 7), " and is ", strlen($hash), " chars\n";
        var_dump(password_verify('Chai@Monsoon2026', $hash));
        var_dump(password_verify('chai@monsoon2026', $hash));
        echo "Same password, new salt, different hash: ";
        var_dump(password_hash($post['password'], PASSWORD_DEFAULT) !== $hash);
      PHP
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Databases with PDO</h1>
        </div>
        <p class="lc-lead">Almost every PHP application stores data in a database, most often <strong>MySQL/MariaDB</strong> or PostgreSQL. <strong>PDO</strong> (PHP Data Objects) is the built-in, database-neutral way to talk to them. The skill that matters most here is using <strong>prepared statements</strong> correctly.</p>
        <div class="lc-card">
          <h3>Connecting</h3>
          <p>The lesson editor has no database server, so the connection code below is for your own machine (for example XAMPP, Laragon or Docker). The starter code practises the query-building part.</p>
          <div class="lc-code">$dsn = 'mysql:host=127.0.0.1;port=3306;dbname=college;charset=utf8mb4';<br><br>$pdo = new PDO($dsn, getenv('DB_USER'), getenv('DB_PASS'), [<br>    PDO::ATTR_ERRMODE            =&amp;gt; PDO::ERRMODE_EXCEPTION,  // throw PDOException (default since PHP 8.0)<br>    PDO::ATTR_DEFAULT_FETCH_MODE =&amp;gt; PDO::FETCH_ASSOC,        // rows as ['name' =&amp;gt; ...]<br>    PDO::ATTR_EMULATE_PREPARES   =&amp;gt; false,                   // use real server-side prepares<br>]);</div>
          <ul class="lc-list">
            <li>Use <code>charset=utf8mb4</code>. MySQL's old <code>utf8</code> stores only 3 bytes per character and cannot hold emoji or some rare scripts; <code>utf8mb4</code> is real UTF-8.</li>
            <li>Keep passwords out of your code — read them from environment variables or a <code>.env</code> file that is never committed to Git.</li>
            <li>PHP 8.4+ also offers <code>PDO::connect($dsn, ...)</code>, which returns a driver-specific subclass such as <code>Pdo\Mysql</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>SQL Injection: The Problem</h3>
          <div class="lc-code">// NEVER do this<br>$email = $_POST['email'];        // attacker types:  ' OR '1'='1<br>$sql = "SELECT * FROM users WHERE email = '$email'";<br>// becomes: SELECT * FROM users WHERE email = '' OR '1'='1'   -&amp;gt; every user!</div>
          <p>Because the input was glued into the SQL text, the attacker changed the <em>meaning</em> of the query. The same trick can delete tables or read passwords.</p>
        </div>
        <div class="lc-card">
          <h3>Prepared Statements: The Fix</h3>
          <div class="lc-code">// Positional placeholders<br>$stmt = $pdo-&amp;gt;prepare('SELECT id, name FROM users WHERE email = ?');<br>$stmt-&amp;gt;execute([$email]);<br>$user = $stmt-&amp;gt;fetch();                 // one row, or false if none<br><br>// Named placeholders<br>$stmt = $pdo-&amp;gt;prepare('INSERT INTO users (name, email, city) VALUES (:name, :email, :city)');<br>$stmt-&amp;gt;execute(['name' =&amp;gt; 'Riya', 'email' =&amp;gt; 'riya@example.in', 'city' =&amp;gt; 'Pune']);<br>$newId = (int) $pdo-&amp;gt;lastInsertId();<br><br>// Other fetch methods<br>$all   = $pdo-&amp;gt;query('SELECT name FROM users ORDER BY name')-&amp;gt;fetchAll();<br>$count = $pdo-&amp;gt;query('SELECT COUNT(*) FROM users')-&amp;gt;fetchColumn();</div>
          <p>The SQL text and the <strong>values</strong> are sent separately, so a value can never change the structure of the query — <code>' OR '1'='1</code> is treated as a strange email address, nothing more.</p>
        </div>
        <div class="lc-card">
          <h3>What Placeholders Cannot Do</h3>
          <p>Prepared statements protect <strong>values</strong> only. They are not magic: injection is still possible whenever you build the SQL text itself from user input.</p>
          <table class="lc-table">
            <thead><tr><th>Part of the query</th><th>Can it be a placeholder?</th><th>Safe approach</th></tr></thead>
            <tbody>
              <tr><td>Values: <code>WHERE city = ?</code></td><td>Yes</td><td>Bind it</td></tr>
              <tr><td>Column or table names, <code>ORDER BY name</code>, <code>ASC/DESC</code></td><td>No</td><td>Pick from an <strong>allow-list</strong> of known names</td></tr>
              <tr><td><code>IN (...)</code> lists</td><td>One placeholder per item</td><td>Generate <code>?, ?, ?</code> with <code>array_fill</code></td></tr>
              <tr><td><code>LIMIT</code> numbers</td><td>Yes (with real prepares), or cast with <code>(int)</code></td><td>Bind as int / validate the range</td></tr>
              <tr><td><code>LIKE</code> patterns</td><td>Yes</td><td>Bind <code>"%$term%"</code>; escape <code>%</code> and <code>_</code> if they must be literal</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Transactions: All or Nothing</h3>
          <div class="lc-code">try {<br>    $pdo-&amp;gt;beginTransaction();<br>    $pdo-&amp;gt;prepare('UPDATE wallets SET balance = balance - ? WHERE user_id = ?')-&amp;gt;execute([500, $from]);<br>    $pdo-&amp;gt;prepare('UPDATE wallets SET balance = balance + ? WHERE user_id = ?')-&amp;gt;execute([500, $to]);<br>    $pdo-&amp;gt;commit();                // both changes saved together<br>} catch (Throwable $e) {<br>    $pdo-&amp;gt;rollBack();              // neither change is saved<br>    throw $e;<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Building a Safe Query</h3>
          <div class="lc-code">function searchQuery(array $cities, string $sort): array<br>{<br>    $orderBy = match ($sort) {                 // allow-list<br>        'name'   =&gt; 'name ASC',<br>        'newest' =&gt; 'created_at DESC',<br>        default  =&gt; 'id ASC',<br>    };<br>    $marks = implode(', ', array_fill(0, count($cities), '?'));<br>    $sql = "SELECT id, name FROM users WHERE city IN ($marks) ORDER BY $orderBy";<br>    return [$sql, $cities];<br>}<br><br>[$sql, $params] = searchQuery(['Pune', 'Goa'], 'name; DROP TABLE users');<br>echo $sql, "\n", json_encode($params), "\n";</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">SELECT id, name FROM users WHERE city IN (?, ?) ORDER BY id ASC<br>["Pune","Goa"]</div>
          <p>The attack in <code>$sort</code> never reaches the SQL, and the cities travel separately as parameters: <code>$pdo-&gt;prepare($sql)-&gt;execute($params)</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>Using prepared statements but still concatenating one variable "because it is only the sort column".</li>
            <li>Using <code>charset=utf8</code> — Hindi mostly works, but emoji break or get cut off. Use <code>utf8mb4</code> in the DSN and in your tables.</li>
            <li>Showing <code>PDOException</code> messages to visitors — they can contain your SQL and server details. Log them.</li>
            <li>Using old <code>mysql_*</code> functions from ancient tutorials — they were removed in PHP 7.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>Extend the starter's <code>searchQuery()</code> with an optional <code>?int $minAge = null</code> parameter: when it is given, add <code>AND age &gt;= ?</code> and append the value to the parameters. Print the SQL and parameters for both cases.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Also give your app's database user only the rights it needs (usually SELECT, INSERT, UPDATE, DELETE on one database). Then even a bug cannot drop tables or read other databases.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 18: Databases with PDO - building safe queries
        // (No database in the editor: we print the SQL and the parameters PDO would receive.)

        $attack = "' OR '1'='1";

        echo "--- UNSAFE: string concatenation ---\n";
        echo "SELECT * FROM users WHERE email = '$attack'\n";

        echo "\n--- SAFE: placeholder + separate value ---\n";
        echo "SQL:    SELECT * FROM users WHERE email = ?\n";
        echo "Params: ", json_encode([$attack]), "  <- just data, cannot change the SQL\n";

        function searchQuery(array $cities, string $sort, int $limit): array
        {
            $orderBy = match ($sort) {                 // identifiers: allow-list only
                'name'   => 'name ASC',
                'newest' => 'created_at DESC',
                default  => 'id ASC',
            };
            $limit = max(1, min($limit, 50));          // validate numbers
            $marks = implode(', ', array_fill(0, count($cities), '?'));
            $sql = "SELECT id, name, city FROM users WHERE city IN ($marks) "
                 . "ORDER BY $orderBy LIMIT $limit";
            return [$sql, array_values($cities)];
        }

        $requests = [
            [['Pune', 'Goa'], 'name', 10],
            [['Delhi'], 'newest', 500],
            [['Surat', 'Kochi', 'Agra'], 'name; DROP TABLE users', 5],
        ];
        foreach ($requests as [$cities, $sort, $limit]) {
            [$sql, $params] = searchQuery($cities, $sort, $limit);
            echo "\nSQL:    $sql\n";
            echo "Params: ", json_encode($params), "\n";
        }

        echo "\n--- DSN we would use ---\n";
        $dsn = sprintf('mysql:host=%s;dbname=%s;charset=utf8mb4', '127.0.0.1', 'college');
        echo $dsn, "\n";
        echo "PDO class available: ", class_exists(PDO::class) ? "yes" : "no", "\n";
      PHP
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Namespaces, Composer and Testing</h1>
        </div>
        <p class="lc-lead">Professional PHP projects are made of hundreds of classes and dozens of open-source packages. Three tools hold them together: <strong>namespaces</strong> (unique names), <strong>Composer</strong> (packages and autoloading) and <strong>PHPUnit</strong> (automated tests). Every Laravel and Symfony project uses all three.</p>
        <div class="lc-card">
          <h3>Namespaces</h3>
          <p>A namespace is like a folder for class names, so your <code>App\Models\User</code> never clashes with a package's <code>Acme\Auth\User</code>.</p>
          <div class="lc-code">&amp;lt;?php<br>// file: src/Billing/Invoice.php<br>declare(strict_types=1);<br><br>namespace App\Billing;                 // first statement after declare<br><br>use App\Models\Customer;               // import a class<br>use DateTimeImmutable;                 // global classes can be imported too<br>use Acme\Pdf\Renderer as PdfRenderer;  // alias to avoid a name clash<br><br>final class Invoice<br>{<br>    public function __construct(private Customer $customer, private DateTimeImmutable $date) {}<br>}</div>
          <ul class="lc-list">
            <li>Inside a namespace, <code>Invoice</code> means <code>App\Billing\Invoice</code>. A leading backslash, <code>\DateTimeImmutable</code>, means "from the global namespace".</li>
            <li><code>Invoice::class</code> gives the full name as a string: <code>"App\Billing\Invoice"</code>.</li>
            <li>Rule: <strong>one class per file</strong>, and the file name matches the class name.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Composer: Packages and Autoloading</h3>
          <p><a href="https://getcomposer.org">Composer</a> is PHP's package manager (like npm for JavaScript or pip for Python). Packages come from <strong>Packagist.org</strong>.</p>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>composer init</code></td><td>Create <code>composer.json</code> for a new project</td></tr>
              <tr><td><code>composer require monolog/monolog</code></td><td>Install a package and record it in <code>composer.json</code></td></tr>
              <tr><td><code>composer require --dev phpunit/phpunit</code></td><td>Install a tool needed only for development</td></tr>
              <tr><td><code>composer install</code></td><td>Install the exact versions listed in <code>composer.lock</code> (used by teammates and servers)</td></tr>
              <tr><td><code>composer update</code></td><td>Upgrade packages within the allowed versions and rewrite the lock file</td></tr>
              <tr><td><code>composer dump-autoload</code></td><td>Rebuild the autoloader after changing the <code>autoload</code> section</td></tr>
            </tbody>
          </table>
          <p>Commit <code>composer.json</code> <strong>and</strong> <code>composer.lock</code>; never commit the <code>vendor/</code> folder.</p>
        </div>
        <div class="lc-card">
          <h3>PSR-4 Autoloading</h3>
          <p><strong>PSR-4</strong> is a standard that maps a namespace prefix to a folder. Composer then loads each class file automatically the first time you use the class — no more long lists of <code>require</code>.</p>
          <div class="lc-code">// composer.json<br>{<br>    "require": { "php": "&amp;gt;=8.3" },<br>    "autoload":     { "psr-4": { "App\\": "src/" } },<br>    "autoload-dev": { "psr-4": { "Tests\\": "tests/" } }<br>}<br><br>// public/index.php - the only require you need<br>require __DIR__ . '/../vendor/autoload.php';<br>$invoice = new App\Billing\Invoice($customer, new DateTimeImmutable());</div>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>File Composer loads</th></tr></thead>
            <tbody>
              <tr><td><code>App\Billing\Invoice</code></td><td><code>src/Billing/Invoice.php</code></td></tr>
              <tr><td><code>App\Models\Customer</code></td><td><code>src/Models/Customer.php</code></td></tr>
              <tr><td><code>Tests\Billing\InvoiceTest</code></td><td><code>tests/Billing/InvoiceTest.php</code></td></tr>
            </tbody>
          </table>
          <p>Other common PHP-FIG standards: <strong>PER Coding Style</strong> (formatting, successor of PSR-12), PSR-3 (loggers), PSR-7/PSR-15 (HTTP messages and middleware).</p>
        </div>
        <div class="lc-card">
          <h3>Testing with PHPUnit</h3>
          <p>A test is code that calls your code and checks the result. Run the whole suite with <code>vendor/bin/phpunit</code> before every commit; a green bar means nothing you tested has broken.</p>
          <div class="lc-code">&amp;lt;?php<br>// tests/Domain/MoneyTest.php<br>declare(strict_types=1);<br><br>namespace Tests\Domain;<br><br>use App\Domain\Money;<br>use PHPUnit\Framework\Attributes\Test;<br>use PHPUnit\Framework\TestCase;<br><br>final class MoneyTest extends TestCase<br>{<br>    #[Test]<br>    public function it_adds_two_amounts(): void<br>    {<br>        $total = (new Money(1500))-&amp;gt;add(new Money(250));<br>        $this-&amp;gt;assertSame(1750, $total-&amp;gt;paise);<br>    }<br><br>    #[Test]<br>    public function it_rejects_negative_amounts(): void<br>    {<br>        $this-&amp;gt;expectException(\InvalidArgumentException::class);<br>        new Money(-1);<br>    }<br>}</div>
          <ul class="lc-list">
            <li>Each test follows <strong>Arrange → Act → Assert</strong>: set up data, call the code, check the result.</li>
            <li>Prefer <code>assertSame()</code> (strict <code>===</code>) over <code>assertEquals()</code> (loose <code>==</code>).</li>
            <li>Modern PHPUnit uses attributes such as <code>#[Test]</code> and <code>#[DataProvider('cases')]</code>; the old <code>@test</code> docblock annotations are no longer supported. Method names starting with <code>test</code> also work.</li>
            <li><strong>Pest</strong> is a popular alternative test runner built on PHPUnit; <strong>PHPStan</strong> checks types without running code.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Worked Example: PSR-4 Mapping by Hand</h3>
          <div class="lc-code">function psr4Path(string $class, string $prefix = 'App\\', string $dir = 'src/'): ?string<br>{<br>    if (!str_starts_with($class, $prefix)) {<br>        return null;                         // not our namespace<br>    }<br>    $relative = substr($class, strlen($prefix));<br>    return $dir . str_replace('\\', '/', $relative) . '.php';<br>}<br><br>echo psr4Path('App\Billing\Invoice'), "\n";<br>var_dump(psr4Path('Monolog\Logger'));</div>
          <p><strong>Output:</strong></p>
          <div class="lc-code">src/Billing/Invoice.php<br>NULL</div>
          <p>This is essentially what Composer's autoloader does inside <code>spl_autoload_register()</code> — then it calls <code>require</code> on that path.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li>A namespace that does not match the folder (<code>App\Model</code> in <code>src/Models/</code>) — you get "Class not found".</li>
            <li>Forgetting <code>require 'vendor/autoload.php'</code> in the entry script.</li>
            <li>Running <code>composer update</code> on the production server. Deploy with <code>composer install --no-dev --optimize-autoloader</code>.</li>
            <li>Tests that depend on each other or on the current date. Each test must set up its own data (fixed dates, like Lesson 16).</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It</h3>
          <p>In the starter, add a third test method to <code>MoneyTest</code> that checks <code>(new Money(100))-&gt;format()</code> returns <code>"Rs 1.00"</code>. Then break <code>format()</code> on purpose and watch the test runner report the failure.</p>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> When you find a bug, first write a test that fails because of it, then fix the code until the test passes. That bug can never quietly come back.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Lesson 19: Namespaces, Composer and Testing
        // Real projects use one file per class + Composer. Here: several { } namespace blocks.

        namespace App\Domain {
            final readonly class Money
            {
                public function __construct(public int $paise)
                {
                    if ($paise < 0) throw new \InvalidArgumentException("Negative money");
                }
                public function add(Money $o): Money { return new Money($this->paise + $o->paise); }
                public function format(): string { return "Rs " . number_format($this->paise / 100, 2); }
            }
        }

        namespace Tests\Domain {
            use App\Domain\Money;
            final class MoneyTest           // in PHPUnit this would extend TestCase
            {
                public function testAddsTwoAmounts(): void
                {
                    $total = (new Money(1500))->add(new Money(250));
                    assert_same(1750, $total->paise);
                }
                public function testRejectsNegativeAmounts(): void
                {
                    try { new Money(-1); } catch (\InvalidArgumentException) { return; }
                    throw new \RuntimeException("expected InvalidArgumentException");
                }
            }
        }

        namespace {                          // the global namespace
            function assert_same(mixed $expected, mixed $actual): void
            {
                if ($expected !== $actual) {
                    throw new RuntimeException("expected " . var_export($expected, true) . ", got " . var_export($actual, true));
                }
            }
            echo "Class name: ", App\Domain\Money::class, "\n";
            echo "PSR-4 file: src/", str_replace('\\', '/', substr(App\Domain\Money::class, 4)), ".php\n\n";

            $test = new Tests\Domain\MoneyTest();
            foreach (get_class_methods($test) as $method) {
                try { $test->$method(); echo "PASS  $method\n"; }
                catch (Throwable $e) { echo "FAIL  $method: {$e->getMessage()}\n"; }
            }
        }
      PHP
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-php">PHP</div>
          <h1 class="lc-title">Capstone: Library Lending System</h1>
        </div>
        <p class="lc-lead">Time to put the whole course together. You will build the core of a <strong>college library lending system</strong>: members borrow books, each genre has its own loan period, late returns pay a fine, and the system refuses impossible actions. The starter code is a working first version — your job is to read it, run it and extend it.</p>
        <div class="lc-card">
          <h3>The Brief</h3>
          <ul class="lc-list">
            <li>Each book has an id, a title and a <strong>genre</strong>. Tech books are lent for 7 days, fiction for 14 days.</li>
            <li>A book that is already lent cannot be lent again. Unknown book ids are rejected.</li>
            <li>Returning a book late costs <strong>Rs 5 per day</strong>.</li>
            <li>Every action is logged; the log is printed as a table, summarised as JSON and shown safely in HTML.</li>
            <li>All dates are fixed <code>DateTimeImmutable</code> values in <code>Asia/Kolkata</code>, so the output is the same every run.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Design: Which Lesson Each Part Uses</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>PHP feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td><code>Genre</code></td><td>Backed enum with a method and an exhaustive <code>match</code></td><td>4, 13</td></tr>
              <tr><td><code>Book</code></td><td><code>final readonly class</code> with constructor promotion</td><td>11, 12</td></tr>
              <tr><td><code>BookCatalog</code> / <code>ArrayCatalog</code></td><td>Interface + implementation (swap for a PDO version later)</td><td>14, 18</td></tr>
              <tr><td><code>Library</code></td><td>Private state, <code>public private(set)</code> fines total (8.4+), custom exceptions, <code>throw</code> expressions</td><td>12, 15</td></tr>
              <tr><td>Due dates and fines</td><td><code>modify()</code>, <code>diff()-&gt;days</code></td><td>16</td></tr>
              <tr><td>Report</td><td>Closures in an array, <code>count</code>, <code>json_encode</code>, <code>htmlspecialchars</code></td><td>7, 10, 16, 17</td></tr>
              <tr><td>Whole file</td><td><code>declare(strict_types=1)</code>, typed parameters and returns</td><td>9</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Key Piece: Business Rules Throw Exceptions</h3>
          <p>The <code>Library</code> class never prints anything. Rule-breaking actions throw <code>DomainException</code> (a standard SPL class meaning "this breaks a business rule"); bad input throws <code>InvalidArgumentException</code>. It either returns a result or throws an exception that explains what went wrong. The caller decides how to show it — as text here, as an HTML flash message or a JSON error in a real app.</p>
          <div class="lc-code">public function lend(string $id, DateTimeImmutable $today): string<br>{<br>    $book = $this-&amp;gt;catalog-&amp;gt;find($id)<br>        ?? throw new InvalidArgumentException("No book with id $id");<br>    if (isset($this-&amp;gt;loans[$id])) {<br>        throw new DomainException("'{$book-&amp;gt;title}' is already lent");<br>    }<br>    $this-&amp;gt;loans[$id] = $today-&amp;gt;modify("+{$book-&amp;gt;genre-&amp;gt;loanDays()} days");<br>    return "Lent '{$book-&amp;gt;title}', due {$this-&amp;gt;loans[$id]-&amp;gt;format('d M')}";<br>}</div>
        </div>
        <div class="lc-card">
          <h3>Expected Output of the Starter</h3>
          <div class="lc-code">1. OK    Lent 'Clean Code', due 08 Sep<br>2. OK    Lent 'Malgudi Days', due 15 Sep<br>3. ERROR 'Clean Code' is already lent<br>4. ERROR No book with id B9<br>5. OK    Returned B1, fine Rs 20<br>6. OK    Returned B2, fine Rs 0<br><br>Summary JSON: {"steps":6,"errors":2,"fines":20}<br>HTML: &lt;li&gt;&amp;#039;Clean Code&amp;#039; is already lent&lt;/li&gt;</div>
          <p>Check the maths: B1 (tech, 7 days) was lent on 1 Sep, due 8 Sep and returned on 12 Sep — 4 days late × Rs 5 = Rs 20. B2 (fiction, 14 days) was due 15 Sep and came back on 10 Sep, so there is no fine.</p>
        </div>
        <div class="lc-card">
          <h3>From Script to Real Web App</h3>
          <table class="lc-table">
            <thead><tr><th>Step</th><th>What to add</th></tr></thead>
            <tbody>
              <tr><td>1. Project</td><td><code>composer init</code>, PSR-4 <code>App\\</code> → <code>src/</code>, one class per file (Lesson 19)</td></tr>
              <tr><td>2. Storage</td><td><code>PdoCatalog implements BookCatalog</code> using prepared statements and <code>utf8mb4</code> (Lesson 18)</td></tr>
              <tr><td>3. Web pages</td><td>POST forms with CSRF tokens, escaped output, Post/Redirect/Get (Lesson 17)</td></tr>
              <tr><td>4. Login</td><td>Members table with <code>password_hash()</code>, sessions with <code>session_regenerate_id()</code></td></tr>
              <tr><td>5. Tests</td><td>PHPUnit tests for fines, double lending and unknown ids, using fixed dates</td></tr>
              <tr><td>6. Framework</td><td>Rebuild it in Laravel or Symfony — you will recognise every idea from this course</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes in Projects Like This</h3>
          <ul class="lc-list">
            <li>Mixing business rules with <code>echo</code> and HTML — the logic can then never be tested or reused by an API.</li>
            <li>Using <code>new DateTimeImmutable()</code> (the real "now") deep inside the class. Pass the date in, so tests can use fixed dates.</li>
            <li>Storing money as floats. Fines here are whole rupees; for paise use integers (Lesson 2).</li>
            <li>Catching <code>Throwable</code> around every call and hiding real bugs. Catch the specific business exceptions you expect.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try It: Extend the Project</h3>
          <ul class="lc-list">
            <li><strong>Easy:</strong> add a <code>Genre::Reference</code> case that can never be lent (throw a new <code>NotLendable</code> exception). Notice that PHP forces you to update <code>loanDays()</code>.</li>
            <li><strong>Medium:</strong> store the member name with each loan and add <code>loansFor(string $member): array</code>.</li>
            <li><strong>Harder:</strong> cap the fine at Rs 100 and give a 50% discount to members whose name is in a <code>$staff</code> list. Print the log as pretty JSON.</li>
          </ul>
        </div>
        <div class="lc-card lc-card--tip">
          <strong>Tip:</strong> Put this project on GitHub with a short README, a <code>composer.json</code> and a few PHPUnit tests. A small, clean, tested project impresses interviewers far more than a big, messy one.
        </div>
      HTML
      starter_code: <<~'PHP'
        <?php
        declare(strict_types=1);
        // Capstone: Library Lending System (uses Lessons 4-19)
        enum Genre: string
        {
            case Tech = 'tech'; case Fiction = 'fiction';
            public function loanDays(): int { return match ($this) { self::Tech => 7, self::Fiction => 14 }; }
        }
        final readonly class Book { public function __construct(public string $id, public string $title, public Genre $genre) {} }
        interface BookCatalog { public function find(string $id): ?Book; }
        final class ArrayCatalog implements BookCatalog
        {
            public function __construct(private array $books) {}
            public function find(string $id): ?Book { return $this->books[$id] ?? null; }
        }
        final class Library
        {
            private array $loans = [];                                   // book id => due date
            public private(set) int $fines = 0;                          // PHP 8.4+
            public function __construct(private BookCatalog $catalog, private int $finePerDay = 5) {}
            public function lend(string $id, DateTimeImmutable $today): string
            {
                $book = $this->catalog->find($id) ?? throw new InvalidArgumentException("No book with id $id");
                if (isset($this->loans[$id])) throw new DomainException("'{$book->title}' is already lent");
                $this->loans[$id] = $today->modify("+{$book->genre->loanDays()} days");
                return "Lent '{$book->title}', due {$this->loans[$id]->format('d M')}";
            }
            public function giveBack(string $id, DateTimeImmutable $today): string
            {
                $due = $this->loans[$id] ?? throw new DomainException("Book $id is not on loan");
                unset($this->loans[$id]);
                $fine = $today > $due ? $due->diff($today)->days * $this->finePerDay : 0;
                $this->fines += $fine;
                return "Returned $id, fine Rs $fine";
            }
        }
        $lib = new Library(new ArrayCatalog(['B1' => new Book('B1', 'Clean Code', Genre::Tech),
                                             'B2' => new Book('B2', 'Malgudi Days', Genre::Fiction)]));
        $day = fn(string $md) => new DateTimeImmutable("2026-$md", new DateTimeZone('Asia/Kolkata'));
        $steps = [fn() => $lib->lend('B1', $day('09-01')), fn() => $lib->lend('B2', $day('09-01')),
                  fn() => $lib->lend('B1', $day('09-02')), fn() => $lib->lend('B9', $day('09-02')),
                  fn() => $lib->giveBack('B1', $day('09-12')), fn() => $lib->giveBack('B2', $day('09-10'))];
        $errors = [];
        foreach ($steps as $i => $step) {
            try { $msg = 'OK    ' . $step(); }
            catch (DomainException | InvalidArgumentException $e) { $errors[] = $e->getMessage(); $msg = 'ERROR ' . $e->getMessage(); }
            echo $i + 1, ". $msg\n";
        }
        echo "\nSummary JSON: ", json_encode(['steps' => count($steps), 'errors' => count($errors), 'fines' => $lib->fines]), "\n";
        echo "HTML: <li>", htmlspecialchars($errors[0], ENT_QUOTES | ENT_SUBSTITUTE, 'UTF-8'), "</li>\n";
      PHP
    }
  }.freeze
end

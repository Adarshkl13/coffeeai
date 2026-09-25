module RubyContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby is an elegant, expressive programming language created by <strong>Yukihiro Matsumoto ("Matz")</strong> in 1995. Matz designed Ruby to make programmers <em>happy</em> — its syntax reads almost like natural English, making it one of the most enjoyable languages to write.</p>
        </div>
        <div class="lc-section">
          <h2>What Makes Ruby Special?</h2>
          <ul class="lc-list">
            <li><strong>Pure OOP</strong> — everything is an object, even numbers and nil</li>
            <li><strong>Expressive syntax</strong> — code reads like English prose</li>
            <li><strong>Ruby on Rails</strong> — the web framework that powers GitHub, Shopify, and Airbnb</li>
            <li><strong>Developer happiness</strong> — less boilerplate, more getting things done</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Output Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Output</th><th>Newline?</th></tr></thead>
            <tbody>
              <tr><td><code>puts</code></td><td>String representation</td><td>✅ Yes</td></tr>
              <tr><td><code>print</code></td><td>String representation</td><td>❌ No</td></tr>
              <tr><td><code>p</code></td><td>Inspect (shows quotes, nil, etc.)</td><td>✅ Yes</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Your First Ruby Program</h2>
          <div class="lc-code-block"><pre><code># Comments start with #
puts "Hello, World!"
puts 2 + 2         # 4
puts "Ruby is " + "fun!"

# p shows the raw inspect value
p "hello"          # "hello" (with quotes)
p 42               # 42
p nil              # nil</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Everything is an object in Ruby.</strong> Even <code>42</code> is an instance of the <code>Integer</code> class, and you can call methods on it: <code>42.even?</code> returns <code>true</code>.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Introduction to Ruby ──

        # puts adds a newline after output
        puts "Hello, World!"
        puts "Ruby is beautiful!"

        # Basic arithmetic
        puts 10 + 5
        puts 100 / 4
        puts 2 ** 8   # 256 (exponent)

        # Everything is an object!
        puts 42.class      # Integer
        puts "hi".class    # String
        puts true.class    # TrueClass

        # String concatenation
        name = "AI Academy"
        puts "Welcome to " + name + "!"

        # p shows the inspect representation
        p "hello"
        p 42
        p [1, 2, 3]
      RUBY
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby uses <strong>dynamic typing</strong> — you never declare types. Variables are created by simple assignment. Ruby has conventions for naming different kinds of variables based on their scope.</p>
        </div>
        <div class="lc-section">
          <h2>Variable Types by Naming Convention</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Prefix</th><th>Example</th><th>Scope</th></tr></thead>
            <tbody>
              <tr><td>Local</td><td>lowercase / <code>_</code></td><td><code>name</code>, <code>total_score</code></td><td>Current method/block</td></tr>
              <tr><td>Instance</td><td><code>@</code></td><td><code>@name</code></td><td>Object instance</td></tr>
              <tr><td>Class</td><td><code>@@</code></td><td><code>@@count</code></td><td>Class + subclasses</td></tr>
              <tr><td>Global</td><td><code>$</code></td><td><code>$global</code></td><td>Anywhere (avoid!)</td></tr>
              <tr><td>Constant</td><td>UPPERCASE</td><td><code>PI = 3.14</code></td><td>Module/class scope</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Core Data Types</h2>
          <div class="lc-code-block"><pre><code>age     = 25          # Integer
gpa     = 3.85        # Float
name    = "Alice"     # String
active  = true        # TrueClass / FalseClass
nothing = nil         # NilClass

# Check the type
puts age.class        # Integer
puts name.class       # String
puts nothing.class    # NilClass</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Multiple Assignment</h2>
          <div class="lc-code-block"><pre><code>a, b, c = 1, 2, 3
puts a   # 1
puts b   # 2

# Swap without temp variable
a, b = b, a
puts "#{a}, #{b}"   # 2, 1</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Ruby uses <strong>snake_case</strong> for variable and method names (<code>first_name</code>), <strong>CamelCase</strong> for class names (<code>BankAccount</code>), and <strong>SCREAMING_SNAKE_CASE</strong> for constants (<code>MAX_SIZE</code>).</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Variables and Data Types ──

        # Local variables (snake_case)
        first_name = "Ada"
        last_name  = "Lovelace"
        age        = 36
        gpa        = 3.95
        is_student = true
        nothing    = nil

        # Output
        puts first_name
        puts age
        puts is_student
        puts nothing.inspect   # nil

        # Check types
        puts "--- Types ---"
        puts age.class
        puts gpa.class
        puts first_name.class
        puts is_student.class
        puts nothing.class

        # Multiple assignment
        x, y, z = 10, 20, 30
        puts "#{x}, #{y}, #{z}"

        # Swap!
        x, y = y, x
        puts "Swapped: #{x}, #{y}"

        # Constants
        PI = 3.14159
        puts "PI = #{PI}"
        puts "Circle area r=5: #{PI * 5 * 5}"
      RUBY
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Strings in Ruby are powerful and flexible. Ruby uses <strong>string interpolation</strong> with <code>#{}</code> — embedding expressions directly in strings — making them much cleaner than concatenation.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Strings</h2>
          <div class="lc-code-block"><pre><code>single = 'No interpolation: #{1+1}'   # Literal
double = "With interpolation: #{1+1}"  # Evaluates → "With interpolation: 2"

name  = "Ruby"
puts "Hello, #{name}!"           # "Hello, Ruby!"
puts "2 + 2 = #{2 + 2}"         # "2 + 2 = 4"
puts "Upper: #{"hello".upcase}"  # "Upper: HELLO"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Essential String Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>.upcase</code></td><td><code>"hello".upcase</code></td><td>"HELLO"</td></tr>
              <tr><td><code>.downcase</code></td><td><code>"HELLO".downcase</code></td><td>"hello"</td></tr>
              <tr><td><code>.length</code></td><td><code>"hi".length</code></td><td>2</td></tr>
              <tr><td><code>.reverse</code></td><td><code>"abc".reverse</code></td><td>"cba"</td></tr>
              <tr><td><code>.include?</code></td><td><code>"hello".include?("ell")</code></td><td>true</td></tr>
              <tr><td><code>.gsub(a, b)</code></td><td><code>"cat".gsub("c","b")</code></td><td>"bat"</td></tr>
              <tr><td><code>.split</code></td><td><code>"a,b,c".split(",")</code></td><td>["a","b","c"]</td></tr>
              <tr><td><code>.strip</code></td><td><code>"  hi  ".strip</code></td><td>"hi"</td></tr>
              <tr><td><code>.capitalize</code></td><td><code>"ruby".capitalize</code></td><td>"Ruby"</td></tr>
              <tr><td><code>.start_with?</code></td><td><code>"hello".start_with?("h")</code></td><td>true</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Ruby methods ending in <code>!</code> modify the object in place (<code>str.upcase!</code>). Methods ending in <code>?</code> return a boolean (<code>str.empty?</code>, <code>str.include?("x")</code>). This is a powerful Ruby convention!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Strings in Ruby ──

        name    = "ada lovelace"
        message = "  Hello, Ruby!  "

        # String methods
        puts name.upcase
        puts name.capitalize
        puts name.length
        puts message.strip
        puts "hello".reverse

        # String interpolation (use double quotes!)
        age      = 21
        language = "Ruby"
        puts "I am #{age} years old"
        puts "Learning #{language} is #{100}% worth it!"
        puts "2 ** 10 = #{2 ** 10}"

        # Useful checks
        email = "adarsh@example.com"
        puts email.include?("@")
        puts email.start_with?("a")
        puts email.end_with?(".com")

        # gsub — replace
        sentence = "the cat sat on the mat"
        puts sentence.gsub("cat", "dog")

        # split and join
        words = "ruby is awesome".split(" ")
        puts words.inspect
        puts words.join(" | ")

        # Multiline
        haiku = "Old pond\nA frog jumps in\nSound of water"
        puts haiku
      RUBY
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby's numeric types — <code>Integer</code> and <code>Float</code> — come with built-in methods that make math operations expressive and readable. In Ruby, numbers are objects!</p>
        </div>
        <div class="lc-section">
          <h2>Arithmetic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Name</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>+</code></td><td>Addition</td><td><code>7 + 3</code></td><td>10</td></tr>
              <tr><td><code>-</code></td><td>Subtraction</td><td><code>7 - 3</code></td><td>4</td></tr>
              <tr><td><code>*</code></td><td>Multiplication</td><td><code>7 * 3</code></td><td>21</td></tr>
              <tr><td><code>/</code></td><td>Division</td><td><code>7 / 2</code></td><td>3 (integer!)</td></tr>
              <tr><td><code>/</code></td><td>Float division</td><td><code>7.0 / 2</code></td><td>3.5</td></tr>
              <tr><td><code>%</code></td><td>Modulus</td><td><code>7 % 3</code></td><td>1</td></tr>
              <tr><td><code>**</code></td><td>Exponent</td><td><code>2 ** 8</code></td><td>256</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Useful Integer Methods</h2>
          <div class="lc-code-block"><pre><code>puts 7.even?      # false
puts 8.even?      # true
puts 7.odd?       # true
puts -5.abs       # 5
puts 3.14.round   # 3
puts 3.14.ceil    # 4
puts 3.14.floor   # 3

# times iterator
3.times { |i| puts "Iteration #{i}" }

# upto / downto
1.upto(5) { |i| print "#{i} " }
5.downto(1) { |i| print "#{i} " }</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Integer division in Ruby:</strong> <code>7 / 2</code> returns <code>3</code> (truncates). To get <code>3.5</code>, make one number a float: <code>7.0 / 2</code> or <code>7 / 2.0</code>. This is a very common beginner mistake!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Numbers and Math in Ruby ──

        # Arithmetic
        puts "7 + 3 = #{7 + 3}"
        puts "7 - 3 = #{7 - 3}"
        puts "7 * 3 = #{7 * 3}"
        puts "7 / 2 = #{7 / 2}"       # Integer division!
        puts "7.0 / 2 = #{7.0 / 2}"   # Float division
        puts "7 % 3 = #{7 % 3}"
        puts "2 ** 10 = #{2 ** 10}"

        # Integer methods
        puts "--- Number Methods ---"
        puts 8.even?
        puts 7.odd?
        puts (-5).abs
        puts 3.14.round
        puts 3.14.ceil
        puts 3.99.floor

        # times — loop a number of times
        puts "--- 5 times ---"
        5.times do |i|
          puts "Iteration: #{i}"
        end

        # Practical: compound interest
        principal = 10000
        rate = 0.08
        years = 5
        total = principal * ((1 + rate) ** years)
        puts "--- Investment ---"
        puts "Principal: #{principal}"
        puts "After #{years} years: #{total.round(2)}"
      RUBY
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Arrays in Ruby are ordered, flexible collections. They can hold <strong>any mix of types</strong> and come with over 100 built-in methods. Ruby arrays make list operations natural and expressive.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Accessing Arrays</h2>
          <div class="lc-code-block"><pre><code>fruits = ["apple", "banana", "cherry"]

puts fruits[0]        # "apple"  (first)
puts fruits[-1]       # "cherry" (last)
puts fruits.length    # 3
puts fruits.first     # "apple"
puts fruits.last      # "cherry"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Essential Array Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>.push(item)</code> / <code>&lt;&lt; item</code></td><td>Add to end</td></tr>
              <tr><td><code>.pop</code></td><td>Remove and return last item</td></tr>
              <tr><td><code>.shift</code></td><td>Remove and return first item</td></tr>
              <tr><td><code>.unshift(item)</code></td><td>Add to start</td></tr>
              <tr><td><code>.sort</code></td><td>Returns sorted copy</td></tr>
              <tr><td><code>.reverse</code></td><td>Returns reversed copy</td></tr>
              <tr><td><code>.include?(val)</code></td><td>Check membership</td></tr>
              <tr><td><code>.uniq</code></td><td>Remove duplicates</td></tr>
              <tr><td><code>.flatten</code></td><td>Flatten nested arrays</td></tr>
              <tr><td><code>.join(sep)</code></td><td>Join to string</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Iterating with each</h2>
          <div class="lc-code-block"><pre><code>fruits.each do |fruit|
  puts "I love #{fruit}!"
end

# each_with_index
fruits.each_with_index do |fruit, i|
  puts "#{i + 1}. #{fruit}"
end</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>The <code>&lt;&lt;</code> operator (shovel) is the most idiomatic way to append to an array in Ruby: <code>arr &lt;&lt; "new item"</code>. It is shorter and more readable than <code>arr.push("new item")</code>.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Arrays in Ruby ──

        scores = [88, 95, 72, 61, 99, 84]
        puts "Scores: #{scores.inspect}"
        puts "Length: #{scores.length}"
        puts "First: #{scores.first}"
        puts "Last: #{scores.last}"

        # Modifying arrays
        scores.push(91)
        puts "After push: #{scores.inspect}"

        popped = scores.pop
        puts "Popped: #{popped}"

        scores << 77       # Shovel operator
        puts "After <<: #{scores.inspect}"

        # Sort and stats
        sorted = scores.sort
        puts "Sorted: #{sorted.inspect}"
        puts "Max: #{scores.max}"
        puts "Min: #{scores.min}"
        puts "Sum: #{scores.sum}"

        # Iteration
        puts "--- Each ---"
        fruits = ["Apple", "Banana", "Cherry"]
        fruits.each do |fruit|
          puts "I love #{fruit}!"
        end

        # each_with_index
        puts "--- Numbered ---"
        fruits.each_with_index do |fruit, i|
          puts "#{i + 1}. #{fruit}"
        end

        # Useful methods
        nums = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
        puts "Unique: #{nums.uniq.inspect}"
        puts "Sorted: #{nums.sort.inspect}"
      RUBY
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>A <strong>Hash</strong> is Ruby's key-value data structure — like a dictionary. Keys can be symbols, strings, or any object. Hashes are used everywhere: JSON data, method options, configs, and database records all use hash-like structures.</p>
        </div>
        <div class="lc-section">
          <h2>Creating Hashes</h2>
          <div class="lc-code-block"><pre><code># Rocket syntax (classic)
person = { "name" => "Alice", "age" => 28 }

# Symbol keys (modern — preferred)
person = { name: "Alice", age: 28 }

puts person[:name]    # "Alice"
puts person[:age]     # 28</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Hash Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Returns / Effect</th></tr></thead>
            <tbody>
              <tr><td><code>.keys</code></td><td>Array of all keys</td></tr>
              <tr><td><code>.values</code></td><td>Array of all values</td></tr>
              <tr><td><code>.length</code></td><td>Number of pairs</td></tr>
              <tr><td><code>.has_key?(k)</code></td><td>Check if key exists</td></tr>
              <tr><td><code>.merge(other)</code></td><td>Combine two hashes</td></tr>
              <tr><td><code>.delete(key)</code></td><td>Remove key-value pair</td></tr>
              <tr><td><code>.each</code></td><td>Iterate key-value pairs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Iterating Over Hashes</h2>
          <div class="lc-code-block"><pre><code>grades = { alice: 92, bob: 78, carol: 88 }

grades.each do |name, score|
  puts "#{name}: #{score}"
end</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <strong>symbol keys</strong> (<code>{ name: "Alice" }</code>) when you control the hash — they are faster and more idiomatic in Ruby. Use string keys (<code>{ "name" => "Alice" }</code>) when dealing with JSON or external data.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Hashes in Ruby ──

        student = {
          name: "Adarsh",
          age: 21,
          gpa: 3.9,
          active: true
        }

        # Access values
        puts student[:name]
        puts student[:gpa]

        # Add and update
        student[:email] = "adarsh@example.com"
        student[:age] = 22
        puts "Updated: #{student[:age]}"
        puts "Email: #{student[:email]}"

        # Hash methods
        puts "Keys: #{student.keys.inspect}"
        puts "Values count: #{student.length}"
        puts "Has :name? #{student.has_key?(:name)}"

        # Iterate with each
        puts "--- Student Info ---"
        student.each do |key, value|
          puts "  #{key}: #{value}"
        end

        # Practical: grade book
        grades = { Math: 95, Python: 98, Ruby: 96, Physics: 88 }
        total = 0
        grades.each do |subject, score|
          total += score
          puts "#{subject}: #{score}"
        end
        puts "Average: #{total / grades.length}"

        # Merge two hashes
        defaults = { role: "student", active: true }
        user     = { name: "Bob", age: 20 }
        merged   = defaults.merge(user)
        puts "Merged: #{merged.inspect}"
      RUBY
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Symbols</strong> are lightweight, immutable identifiers perfect for hash keys and options. <strong>Ranges</strong> represent sequences of values and make iteration and membership testing elegantly concise.</p>
        </div>
        <div class="lc-section">
          <h2>Symbols</h2>
          <div class="lc-code-block"><pre><code>:name         # A symbol
:status       # Another symbol
:error_code

# Symbols are unique — same name = same object
puts :name.object_id == :name.object_id   # true
puts "name".object_id == "name".object_id # false (different objects!)

# Commonly used as hash keys
options = { color: :blue, size: :large }</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ranges</h2>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>1..10</code></td><td>Inclusive (1 to 10)</td><td><code>(1..5).to_a</code> → [1,2,3,4,5]</td></tr>
              <tr><td><code>1...10</code></td><td>Exclusive (1 to 9)</td><td><code>(1...5).to_a</code> → [1,2,3,4]</td></tr>
              <tr><td><code>"a".."z"</code></td><td>Alphabet range</td><td><code>("a".."e").to_a</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Range Methods</h2>
          <div class="lc-code-block"><pre><code>range = (1..10)

puts range.include?(5)   # true
puts range.min           # 1
puts range.max           # 10
puts range.sum           # 55

# Iterate
(1..5).each { |n| print "#{n} " }</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Ranges are very memory-efficient. <code>(1..1_000_000)</code> doesn't create a million-item array — it just stores start and end. Only when you call <code>.to_a</code> does it expand into an array.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Symbols and Ranges ──

        # Symbols as hash keys
        colors = { primary: "red", secondary: "blue", accent: "gold" }
        puts colors[:primary]
        puts colors[:accent]

        # Ranges
        nums = (1..10)
        puts "Min: #{nums.min}"
        puts "Max: #{nums.max}"
        puts "Sum: #{nums.sum}"
        puts "Include 7? #{nums.include?(7)}"
        puts "Include 11? #{nums.include?(11)}"

        # Range to array
        arr = (1..5).to_a
        puts "Array: #{arr.inspect}"

        # Iterate with range
        puts "--- 1 to 5 ---"
        (1..5).each do |n|
          puts "#{n} squared = #{n * n}"
        end

        # Exclusive range
        puts "--- 1 to 4 ---"
        (1...5).each do |n|
          print "#{n} "
        end
        puts

        # Character ranges
        vowels = ("a".."e").to_a
        puts "First 5 letters: #{vowels.inspect}"

        # Case with ranges (very Ruby!)
        score = 85
        grade = case score
                when 90..100 then "A"
                when 80..89  then "B"
                when 70..79  then "C"
                else              "F"
                end
        puts "Grade for #{score}: #{grade}"
      RUBY
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby's conditional statements are expressive and flexible. Beyond the standard <code>if/elsif/else</code>, Ruby offers <strong>unless</strong>, <strong>case/when</strong>, and one-line conditionals that read like natural English.</p>
        </div>
        <div class="lc-section">
          <h2>if / elsif / else / end</h2>
          <div class="lc-code-block"><pre><code>score = 85

if score >= 90
  puts "Grade: A"
elsif score >= 80
  puts "Grade: B"
elsif score >= 70
  puts "Grade: C"
else
  puts "Grade: F"
end</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ruby-Specific Conditionals</h2>
          <table class="lc-table">
            <thead><tr><th>Style</th><th>Example</th><th>Use Case</th></tr></thead>
            <tbody>
              <tr><td><code>unless</code></td><td><code>unless logged_in</code></td><td>When <code>if !condition</code> reads awkwardly</td></tr>
              <tr><td>Inline <code>if</code></td><td><code>puts msg if ready</code></td><td>Single-line statements</td></tr>
              <tr><td>Inline <code>unless</code></td><td><code>puts err unless valid</code></td><td>Negative single-line</td></tr>
              <tr><td>Ternary</td><td><code>x > 0 ? "pos" : "neg"</code></td><td>Short value selection</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>case / when (Ruby's switch)</h2>
          <div class="lc-code-block"><pre><code>day = "Monday"

case day
when "Monday"
  puts "Start of the week"
when "Friday"
  puts "Almost weekend!"
when "Saturday", "Sunday"
  puts "Weekend!"
else
  puts "Regular day"
end</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In Ruby, <code>if</code> returns a value! You can write <code>result = if condition then "yes" else "no" end</code>. This makes Ruby conditionals very flexible — they are expressions, not just statements.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Conditional Statements ──

        # if / elsif / else
        def grade(score)
          if score >= 90
            "A — Excellent!"
          elsif score >= 80
            "B — Good"
          elsif score >= 70
            "C — Average"
          else
            "F — Failed"
          end
        end

        puts grade(95)
        puts grade(83)
        puts grade(55)

        # unless — reads naturally
        logged_in = false
        puts "Please log in!" unless logged_in

        # Inline conditionals (very Ruby!)
        age = 20
        puts "You can vote!" if age >= 18
        puts "Too young!" unless age >= 18

        # Ternary
        temperature = 35
        puts temperature > 30 ? "Hot day!" : "Nice day!"

        # case / when
        day = "Wednesday"
        message = case day
                  when "Monday"            then "Start of week"
                  when "Friday"            then "Almost weekend!"
                  when "Saturday","Sunday" then "Weekend!"
                  else                          "Regular day"
                  end
        puts message

        # case with ranges
        bmi = 22.5
        status = case bmi
                 when 0..18.4   then "Underweight"
                 when 18.5..24.9 then "Normal"
                 when 25..29.9  then "Overweight"
                 else                "Obese"
                 end
        puts "BMI #{bmi}: #{status}"
      RUBY
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby favors <strong>iterators over traditional loops</strong>. Instead of <code>for</code> loops, Ruby uses expressive methods like <code>.each</code>, <code>.times</code>, <code>.upto</code>, and <code>.each_with_index</code> that work with blocks.</p>
        </div>
        <div class="lc-section">
          <h2>Ruby's Loop Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Use Case</th></tr></thead>
            <tbody>
              <tr><td><code>.times</code></td><td><code>5.times { |i| ... }</code></td><td>Repeat N times</td></tr>
              <tr><td><code>.upto</code></td><td><code>1.upto(5) { |i| ... }</code></td><td>Count up</td></tr>
              <tr><td><code>.downto</code></td><td><code>5.downto(1) { |i| ... }</code></td><td>Count down</td></tr>
              <tr><td><code>.each</code></td><td><code>arr.each { |x| ... }</code></td><td>Iterate array</td></tr>
              <tr><td><code>.each_with_index</code></td><td><code>arr.each_with_index { |x, i| ... }</code></td><td>With index</td></tr>
              <tr><td><code>while</code></td><td><code>while condition ... end</code></td><td>Unknown iterations</td></tr>
              <tr><td><code>loop</code></td><td><code>loop { ... break if done }</code></td><td>Infinite with break</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Blocks: do…end vs { }</h2>
          <div class="lc-code-block"><pre><code># Multi-line → do...end (convention)
[1, 2, 3].each do |n|
  puts n * 2
end

# Single-line → { } (convention)
[1, 2, 3].each { |n| puts n * 2 }</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Avoid using <code>for...in</code> in Ruby — it leaks variables. Ruby's <code>.each</code> is cleaner and more idiomatic. When in Rome: <code>collection.each { |item| ... }</code> is the Ruby way.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Loops and Iterators ──

        # times — most common for simple repetition
        puts "--- times ---"
        5.times do |i|
          puts "Iteration #{i}"
        end

        # upto / downto
        puts "--- upto ---"
        1.upto(5) do |i|
          print "#{i} "
        end
        puts

        # each on array
        puts "--- each ---"
        languages = ["Ruby", "Python", "JavaScript"]
        languages.each do |lang|
          puts "I love #{lang}!"
        end

        # each_with_index
        puts "--- numbered ---"
        languages.each_with_index do |lang, i|
          puts "#{i + 1}. #{lang}"
        end

        # while loop
        puts "--- while ---"
        n = 1
        while n <= 5
          puts "#{n} * #{n} = #{n * n}"
          n += 1
        end

        # Accumulator
        total = 0
        scores = [88, 95, 72, 61, 99]
        scores.each do |score|
          total += score
        end
        puts "Sum: #{total}"
        puts "Average: #{total / scores.length}"
      RUBY
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Methods in Ruby are defined with <code>def...end</code> and always return a value — the <strong>last expression is returned automatically</strong> without needing an explicit <code>return</code> statement. This is called implicit return.</p>
        </div>
        <div class="lc-section">
          <h2>Defining Methods</h2>
          <div class="lc-code-block"><pre><code>def greet(name)
  "Hello, #{name}!"     # Implicit return
end

puts greet("Alice")     # "Hello, Alice!"

# With default parameter
def power(base, exponent = 2)
  base ** exponent
end

puts power(3)     # 9
puts power(2, 8)  # 256</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ruby Method Conventions</h2>
          <table class="lc-table">
            <thead><tr><th>Convention</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td>Ends in <code>?</code></td><td>Returns boolean</td><td><code>empty?</code>, <code>valid?</code></td></tr>
              <tr><td>Ends in <code>!</code></td><td>Mutates object or raises</td><td><code>sort!</code>, <code>save!</code></td></tr>
              <tr><td>snake_case</td><td>Normal method</td><td><code>calculate_total</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Multiple Return Values</h2>
          <div class="lc-code-block"><pre><code>def min_max(arr)
  [arr.min, arr.max]   # Returns array
end

low, high = min_max([3, 1, 7, 2, 9])
puts "Min: #{low}, Max: #{high}"</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Implicit return</strong> is idiomatic Ruby — omit <code>return</code> unless you need to exit a method early. Most Ruby methods consist of a single expression that implicitly becomes the return value.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Methods in Ruby ──

        # Basic method — implicit return
        def square(n)
          n * n
        end
        puts square(5)
        puts square(12)

        # Default parameters
        def greet(name, greeting = "Hello")
          "#{greeting}, #{name}!"
        end
        puts greet("Alice")
        puts greet("Bob", "Hi")

        # Multiple return (array)
        def stats(numbers)
          [numbers.min, numbers.max, numbers.sum / numbers.length]
        end

        data = [88, 95, 72, 61, 99]
        min, max, avg = stats(data)
        puts "Min: #{min} | Max: #{max} | Avg: #{avg}"

        # Method calling method
        def celsius_to_fahrenheit(c)
          (c * 9.0 / 5) + 32
        end

        def describe_temp(c)
          f = celsius_to_fahrenheit(c)
          "#{c}°C = #{f.round(1)}°F"
        end

        puts describe_temp(0)
        puts describe_temp(37)
        puts describe_temp(100)

        # Predicate method (ends with ?)
        def passing?(score)
          score >= 70
        end

        puts passing?(85)
        puts passing?(55)
      RUBY
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Blocks</strong> are chunks of code passed to a method — they are the heart of Ruby's expressiveness. <strong>Procs</strong> and <strong>Lambdas</strong> are reusable blocks stored in variables.</p>
        </div>
        <div class="lc-section">
          <h2>Blocks</h2>
          <div class="lc-code-block"><pre><code># Block passed to a method
[1, 2, 3].each { |n| puts n * 2 }

# Method that yields to a block
def repeat(n)
  n.times { yield }
end

repeat(3) { puts "Hello!" }  # Prints 3 times</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Proc — Saved Block</h2>
          <div class="lc-code-block"><pre><code>double = Proc.new { |x| x * 2 }

puts double.call(5)    # 10
puts double.call(12)   # 24

# Use with map
puts [1, 2, 3].map(&double).inspect  # [2, 4, 6]</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Lambda — Stricter Proc</h2>
          <div class="lc-code-block"><pre><code>greet = lambda { |name| "Hello, #{name}!" }
# Or with -> (stabby lambda)
greet = ->(name) { "Hello, #{name}!" }

puts greet.call("Alice")   # "Hello, Alice!"
puts greet.("Bob")         # shorthand</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Proc vs Lambda</h2>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Proc</th><th>Lambda</th></tr></thead>
            <tbody>
              <tr><td>Argument checking</td><td>Lenient (ignores extras)</td><td>Strict (must match)</td></tr>
              <tr><td>return behaviour</td><td>Returns from enclosing method</td><td>Returns from lambda only</td></tr>
              <tr><td>Syntax</td><td><code>Proc.new { }</code></td><td><code>-&gt;(args) { }</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <strong>lambdas</strong> (<code>-&gt;</code>) when you need argument validation or when it may be called from multiple places. Use <strong>Procs</strong> for simpler inline reusable blocks.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Blocks, Procs, Lambdas ──

        # Block with do...end
        puts "--- Block ---"
        3.times do |i|
          puts "Block run #{i + 1}"
        end

        # Proc — saved block
        puts "--- Proc ---"
        double = Proc.new { |x| x * 2 }
        triple = Proc.new { |x| x * 3 }

        puts double.call(5)
        puts triple.call(4)

        numbers = [1, 2, 3, 4, 5]
        doubled = numbers.map { |n| double.call(n) }
        puts "Doubled: #{doubled.inspect}"

        # Lambda (stabby)
        puts "--- Lambda ---"
        square    = ->(x) { x * x }
        greet     = ->(name) { "Hello, #{name}!" }
        is_even   = ->(n) { n % 2 == 0 }

        puts square.call(7)
        puts greet.call("Ruby")
        puts is_even.call(8)
        puts is_even.call(7)

        # Using lambdas with array methods
        evens = numbers.select(&is_even)
        puts "Evens: #{evens.inspect}"

        squares = numbers.map(&square)
        puts "Squares: #{squares.inspect}"
      RUBY
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby's <strong>Enumerable</strong> module provides powerful collection methods. When mixed into any class with an <code>each</code> method, you get <code>map</code>, <code>select</code>, <code>reduce</code>, and dozens more for free.</p>
        </div>
        <div class="lc-section">
          <h2>The Core Enumerable Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td><code>.map</code> / <code>.collect</code></td><td>Transform every element</td><td>New array</td></tr>
              <tr><td><code>.select</code> / <code>.filter</code></td><td>Keep elements where block is true</td><td>New array</td></tr>
              <tr><td><code>.reject</code></td><td>Keep elements where block is false</td><td>New array</td></tr>
              <tr><td><code>.reduce</code> / <code>.inject</code></td><td>Fold to single value</td><td>Single value</td></tr>
              <tr><td><code>.any?</code></td><td>True if any element matches</td><td>Boolean</td></tr>
              <tr><td><code>.all?</code></td><td>True if all elements match</td><td>Boolean</td></tr>
              <tr><td><code>.none?</code></td><td>True if no elements match</td><td>Boolean</td></tr>
              <tr><td><code>.count</code></td><td>Count matching elements</td><td>Integer</td></tr>
              <tr><td><code>.sort_by</code></td><td>Sort by block result</td><td>New array</td></tr>
              <tr><td><code>.min_by</code> / <code>.max_by</code></td><td>Min/max by block</td><td>Element</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Chaining Methods</h2>
          <div class="lc-code-block"><pre><code>students = [
  { name: "Alice", score: 92 },
  { name: "Bob",   score: 58 },
  { name: "Carol", score: 87 }
]

students
  .select { |s| s[:score] >= 70 }
  .sort_by { |s| -s[:score] }
  .each { |s| puts "#{s[:name]}: #{s[:score]}" }</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Prefer Enumerable methods over manual loops — they are faster to write, easier to read, and often more performant. <code>reduce</code> (also called <code>inject</code>) is the most powerful — it can implement any other enumerable method!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Enumerable Methods ──

        numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        # map — transform
        doubled  = numbers.map { |n| n * 2 }
        squared  = numbers.map { |n| n ** 2 }
        puts "Doubled: #{doubled.inspect}"
        puts "Squared: #{squared.inspect}"

        # select / reject
        evens = numbers.select { |n| n.even? }
        odds  = numbers.reject { |n| n.even? }
        big   = numbers.select { |n| n > 6 }
        puts "Evens: #{evens.inspect}"
        puts "Odds:  #{odds.inspect}"
        puts "Big:   #{big.inspect}"

        # reduce — sum, product
        total   = numbers.reduce(0) { |sum, n| sum + n }
        product = (1..5).reduce(1) { |prod, n| prod * n }
        puts "Sum: #{total}"
        puts "5! = #{product}"

        # any? / all? / none?
        puts "Any > 9?  #{numbers.any? { |n| n > 9 }}"
        puts "All > 0?  #{numbers.all? { |n| n > 0 }}"
        puts "None < 0? #{numbers.none? { |n| n < 0 }}"

        # sort_by
        words = ["banana", "apple", "cherry", "fig"]
        puts "By length: #{words.sort_by { |w| w.length }.inspect}"

        # min_by / max_by
        puts "Shortest: #{words.min_by { |w| w.length }}"
        puts "Longest:  #{words.max_by { |w| w.length }}"
      RUBY
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby is a <strong>pure object-oriented language</strong> — everything is an object. Classes define the blueprint for objects, and every object has state (instance variables) and behaviour (methods).</p>
        </div>
        <div class="lc-section">
          <h2>Defining a Class</h2>
          <div class="lc-code-block"><pre><code>class Dog
  def initialize(name, breed)
    @name  = name    # Instance variable
    @breed = breed
  end

  def bark
    "#{@name} says: Woof!"
  end

  def describe
    "#{@name} is a #{@breed}"
  end
end

rex = Dog.new("Rex", "German Shepherd")
puts rex.bark        # "Rex says: Woof!"
puts rex.describe    # "Rex is a German Shepherd"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Key OOP Terms</h2>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Ruby</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Class</td><td><code>class Dog</code></td><td>Blueprint for objects</td></tr>
              <tr><td>Instance</td><td><code>Dog.new(...)</code></td><td>A specific Dog object</td></tr>
              <tr><td>Constructor</td><td><code>def initialize</code></td><td>Runs when object created</td></tr>
              <tr><td>Instance var</td><td><code>@name</code></td><td>Data stored in the object</td></tr>
              <tr><td>Method</td><td><code>def bark</code></td><td>Behaviour of the object</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In Ruby, <strong>instance variables</strong> start with <code>@</code>. They are accessible anywhere inside the class. Without <code>@</code>, a variable is local to the method it's defined in and lost when the method returns.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Classes and Objects ──

        class BankAccount
          def initialize(owner, balance = 0)
            @owner        = owner
            @balance      = balance
            @transactions = []
          end

          def deposit(amount)
            @balance += amount
            @transactions << "+#{amount}"
            puts "Deposited #{amount}. Balance: #{@balance}"
          end

          def withdraw(amount)
            if amount > @balance
              puts "Insufficient funds!"
            else
              @balance -= amount
              @transactions << "-#{amount}"
              puts "Withdrew #{amount}. Balance: #{@balance}"
            end
          end

          def balance
            @balance
          end

          def statement
            puts "=== #{@owner}'s Account ==="
            @transactions.each { |t| puts "  #{t}" }
            puts "Balance: #{@balance}"
          end
        end

        # Create objects
        alice = BankAccount.new("Alice", 1000)
        bob   = BankAccount.new("Bob")

        alice.deposit(500)
        alice.withdraw(200)
        alice.withdraw(5000)

        bob.deposit(300)
        bob.deposit(700)

        puts
        alice.statement
        puts
        bob.statement
      RUBY
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><code>attr_accessor</code>, <code>attr_reader</code>, and <code>attr_writer</code> are <strong>Ruby macros that auto-generate getter and setter methods</strong> for instance variables — saving you from writing repetitive boilerplate code.</p>
        </div>
        <div class="lc-section">
          <h2>The Problem They Solve</h2>
          <div class="lc-code-block"><pre><code># Without attr_accessor — repetitive!
class Person
  def name
    @name
  end
  def name=(val)
    @name = val
  end
end

# With attr_accessor — clean!
class Person
  attr_accessor :name, :age
end</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>attr_reader vs attr_writer vs attr_accessor</h2>
          <table class="lc-table">
            <thead><tr><th>Macro</th><th>Generates</th><th>Can Read?</th><th>Can Write?</th></tr></thead>
            <tbody>
              <tr><td><code>attr_reader</code></td><td>Getter only</td><td>✅</td><td>❌</td></tr>
              <tr><td><code>attr_writer</code></td><td>Setter only</td><td>❌</td><td>✅</td></tr>
              <tr><td><code>attr_accessor</code></td><td>Getter + Setter</td><td>✅</td><td>✅</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Complete Example</h2>
          <div class="lc-code-block"><pre><code>class Student
  attr_accessor :name, :grade
  attr_reader   :id          # read-only

  def initialize(id, name)
    @id    = id
    @name  = name
    @grade = "N/A"
  end

  def to_s
    "Student ##{@id}: #{@name} (#{@grade})"
  end
end

s = Student.new(1, "Alice")
puts s.name        # "Alice"
s.grade = "A"
puts s             # "Student #1: Alice (A)"</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>attr_reader</code> for data that should never change after creation (like an ID or created_at). Use <code>attr_accessor</code> for data that users can update. Never expose more than needed!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Attr Accessors ──

        class Product
          attr_accessor :name, :price, :stock
          attr_reader   :id

          def initialize(id, name, price, stock = 0)
            @id    = id
            @name  = name
            @price = price
            @stock = stock
          end

          def in_stock?
            @stock > 0
          end

          def apply_discount(percent)
            @price = @price * (1 - percent / 100.0)
          end

          def info
            status = in_stock? ? "In Stock (#{@stock})" : "Out of Stock"
            "#{@name} — #{@price} — #{status}"
          end
        end

        # Create products
        laptop = Product.new(1, "Laptop", 75000, 10)
        phone  = Product.new(2, "Phone", 25000, 50)
        tablet = Product.new(3, "Tablet", 35000, 0)

        # Read attributes
        puts laptop.name
        puts laptop.price
        puts laptop.id

        # Modify via attr_accessor
        laptop.price = 70000
        laptop.stock = 8

        # Display
        puts laptop.info
        puts phone.info
        puts tablet.info

        # Apply discount
        laptop.apply_discount(10)
        puts "After 10% off: #{laptop.price}"

        puts "Laptop in stock? #{laptop.in_stock?}"
        puts "Tablet in stock? #{tablet.in_stock?}"
      RUBY
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Inheritance</strong> lets a child class inherit all methods and attributes from a parent class. In Ruby, every class automatically inherits from <code>Object</code>, which inherits from <code>BasicObject</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Inheritance Syntax</h2>
          <div class="lc-code-block"><pre><code>class Animal
  def initialize(name)
    @name = name
  end

  def speak
    "..."
  end

  def describe
    "#{@name} says: #{speak}"
  end
end

class Dog &lt; Animal    # Dog inherits from Animal
  def speak
    "Woof!"           # Override parent method
  end
end

class Cat &lt; Animal
  def speak
    "Meow!"
  end
end

puts Dog.new("Rex").describe    # "Rex says: Woof!"
puts Cat.new("Luna").describe   # "Luna says: Meow!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>super — Call Parent Method</h2>
          <div class="lc-code-block"><pre><code>class Vehicle
  def initialize(make, model)
    @make  = make
    @model = model
  end
end

class Car &lt; Vehicle
  def initialize(make, model, doors)
    super(make, model)   # Call Vehicle's initialize
    @doors = doors
  end
end</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Ruby supports <strong>single inheritance</strong> only — a class can inherit from one parent. For sharing behaviour across unrelated classes, use <strong>Modules</strong> (mixins) which we cover in the next lesson!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Inheritance ──

        class Shape
          attr_reader :color

          def initialize(color = "white")
            @color = color
          end

          def area
            0
          end

          def describe
            "A #{@color} #{self.class.name} with area #{area.round(2)}"
          end
        end

        class Circle < Shape
          def initialize(radius, color = "white")
            super(color)
            @radius = radius
          end

          def area
            Math::PI * @radius ** 2
          end
        end

        class Rectangle < Shape
          def initialize(width, height, color = "white")
            super(color)
            @width  = width
            @height = height
          end

          def area
            @width * @height
          end
        end

        class Square < Rectangle
          def initialize(side, color = "white")
            super(side, side, color)
          end
        end

        shapes = [
          Circle.new(5, "red"),
          Rectangle.new(4, 6, "blue"),
          Square.new(3, "green"),
          Circle.new(2, "yellow")
        ]

        shapes.each { |s| puts s.describe }

        puts
        total_area = shapes.map(&:area).sum
        puts "Total area: #{total_area.round(2)}"
        puts "Largest: #{shapes.max_by(&:area).describe}"
      RUBY
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Modules</strong> serve two purposes in Ruby: as <em>namespaces</em> (grouping related constants and methods) and as <em>mixins</em> (sharing behaviour across unrelated classes). They solve the "multiple inheritance" problem elegantly.</p>
        </div>
        <div class="lc-section">
          <h2>Modules as Mixins</h2>
          <div class="lc-code-block"><pre><code>module Greetable
  def greet
    "Hello! I'm #{name}"
  end

  def farewell
    "Goodbye from #{name}!"
  end
end

class Person
  include Greetable    # Mix in the module
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

p = Person.new("Alice")
puts p.greet      # "Hello! I'm Alice"
puts p.farewell   # "Goodbye from Alice!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>include vs extend vs prepend</h2>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Effect</th></tr></thead>
            <tbody>
              <tr><td><code>include</code></td><td>Methods become <strong>instance</strong> methods</td></tr>
              <tr><td><code>extend</code></td><td>Methods become <strong>class</strong> methods</td></tr>
              <tr><td><code>prepend</code></td><td>Module goes before class in method lookup</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Modules as Namespaces</h2>
          <div class="lc-code-block"><pre><code>module Payments
  class Invoice; end
  class Receipt; end

  TAX_RATE = 0.18
end

rate = Payments::TAX_RATE   # 0.18</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Ruby's built-in <code>Enumerable</code> module is the best example of a mixin — any class that defines <code>each</code> and <code>include Enumerable</code> gets <code>map</code>, <code>select</code>, <code>sort</code>, and 50+ methods for free!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Modules and Mixins ──

        module Describable
          def describe
            "#{self.class.name}: #{to_s}"
          end
        end

        module Calculable
          def percentage_of(total)
            ((self / total.to_f) * 100).round(1)
          end
        end

        module Formattable
          def currency
            "INR #{self}"
          end
        end

        class Score
          include Describable
          include Calculable

          attr_reader :value, :subject

          def initialize(subject, value)
            @subject = subject
            @value   = value
          end

          def to_s
            "#{@subject}: #{@value}/100"
          end
        end

        scores = [
          Score.new("Ruby",   96),
          Score.new("Python", 92),
          Score.new("Math",   88),
          Score.new("AI",     95)
        ]

        scores.each do |s|
          puts s.describe
          puts "  Percentage: #{s.value.percentage_of(100)}%"
        end

        total = scores.map(&:value).sum
        puts "Total: #{total}"
        puts "Average: #{(total / scores.length.to_f).round(1)}"
      RUBY
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby uses <code>begin/rescue/ensure/end</code> for exception handling. Like most languages, you wrap risky code in <code>begin</code>, handle errors in <code>rescue</code>, and use <code>ensure</code> for cleanup that must always run.</p>
        </div>
        <div class="lc-section">
          <h2>begin / rescue / ensure</h2>
          <div class="lc-code-block"><pre><code>begin
  result = 10 / 0
rescue ZeroDivisionError => e
  puts "Error: #{e.message}"
rescue StandardError => e
  puts "Unexpected: #{e.message}"
ensure
  puts "Always runs (cleanup)"
end</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Ruby Exceptions</h2>
          <table class="lc-table">
            <thead><tr><th>Exception</th><th>Cause</th></tr></thead>
            <tbody>
              <tr><td><code>ZeroDivisionError</code></td><td>Division by zero</td></tr>
              <tr><td><code>ArgumentError</code></td><td>Wrong number/type of arguments</td></tr>
              <tr><td><code>TypeError</code></td><td>Wrong type for operation</td></tr>
              <tr><td><code>NameError</code></td><td>Undefined variable or method</td></tr>
              <tr><td><code>RuntimeError</code></td><td>Generic runtime error (<code>raise</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Raising Custom Exceptions</h2>
          <div class="lc-code-block"><pre><code>class InsufficientFundsError &lt; StandardError
  def initialize(amount)
    super("Need #{amount} more rupees")
  end
end

raise InsufficientFundsError.new(500)</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In Ruby, you can use <code>rescue</code> right inside a method without <code>begin</code>: <code>def risky; ...; rescue => e; ...; end</code>. The entire method body becomes the try block — very clean!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Exception Handling ──

        # Basic rescue
        def safe_divide(a, b)
          begin
            result = a / b
            puts "#{a} / #{b} = #{result}"
          rescue ZeroDivisionError => e
            puts "Error: #{e.message}"
          end
        end

        safe_divide(10, 2)
        safe_divide(10, 0)

        # Multiple rescue clauses
        def safe_parse(str)
          begin
            num    = Integer(str)
            result = 100 / num
            puts "100 / #{num} = #{result}"
          rescue ArgumentError
            puts "'#{str}' is not a valid integer"
          rescue ZeroDivisionError
            puts "Cannot divide by zero"
          ensure
            puts "(ensure: always runs)"
          end
        end

        safe_parse("5")
        safe_parse("hello")
        safe_parse("0")

        # raise — custom errors
        def withdraw(balance, amount)
          raise ArgumentError, "Amount must be positive" if amount <= 0
          raise "Insufficient funds!" if amount > balance
          balance - amount
        end

        begin
          new_bal = withdraw(1000, 500)
          puts "New balance: #{new_bal}"
        rescue => e
          puts "Error: #{e.message}"
        end

        begin
          withdraw(1000, 5000)
        rescue => e
          puts "Error: #{e.message}"
        end
      RUBY
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby makes <strong>file operations simple and safe</strong>. Using <code>File.open</code> with a block automatically closes the file when done. The <code>IO</code> class provides the foundation for all file operations.</p>
        </div>
        <div class="lc-section">
          <h2>Reading Files</h2>
          <div class="lc-code-block"><pre><code># Read entire file as string
content = File.read("data.txt")

# Read line by line (memory-efficient)
File.foreach("data.txt") do |line|
  puts line.chomp  # chomp removes trailing newline
end

# Read all lines as array
lines = File.readlines("data.txt").map(&:chomp)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Writing Files</h2>
          <div class="lc-code-block"><pre><code># Write (creates or overwrites)
File.open("output.txt", "w") do |file|
  file.puts "Hello, Ruby!"
  file.puts "Second line"
end

# Append
File.open("log.txt", "a") do |file|
  file.puts "New entry: #{Time.now}"
end</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>File Modes</h2>
          <table class="lc-table">
            <thead><tr><th>Mode</th><th>Description</th></tr></thead>
            <tbody>
              <tr><td><code>"r"</code></td><td>Read only (default) — file must exist</td></tr>
              <tr><td><code>"w"</code></td><td>Write — creates/overwrites</td></tr>
              <tr><td><code>"a"</code></td><td>Append — add to end</td></tr>
              <tr><td><code>"r+"</code></td><td>Read and write</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always use <code>File.open</code> with a <strong>block</strong> — the file is automatically closed when the block exits, even if an exception occurs. Never call <code>File.open</code> without a block in production code.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── File I/O (Simulated) ──

        # Simulating file content
        csv_data = [
          "Name,Score,Grade",
          "Alice,92,A",
          "Bob,78,B",
          "Carol,95,A",
          "Dave,55,F",
          "Eve,83,B"
        ]

        puts "=== Writing to grades.csv ==="
        csv_data.each { |line| puts line }

        puts "\n=== Reading back ==="
        puts "Total rows: #{csv_data.length - 1}"

        puts "\n=== Processing ==="
        header   = csv_data[0].split(",")
        puts "Columns: #{header.inspect}"

        students = csv_data[1..].map do |row|
          parts = row.split(",")
          { name: parts[0], score: parts[1].to_i, grade: parts[2] }
        end

        students.each do |s|
          status = s[:score] >= 70 ? "PASS" : "FAIL"
          puts "#{s[:name]}: #{s[:score]} (#{status})"
        end

        avg = students.map { |s| s[:score] }.sum / students.length
        passing = students.count { |s| s[:score] >= 70 }
        puts "\nAverage: #{avg}"
        puts "Passing: #{passing}/#{students.length}"
        puts "Top student: #{students.max_by { |s| s[:score] }[:name]}"
      RUBY
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Ruby's <strong>standard library</strong> includes useful classes and modules for dates, math, JSON, networking, and more — all available without installing any gem. And the RubyGems ecosystem has over 170,000 third-party gems.</p>
        </div>
        <div class="lc-section">
          <h2>Key Standard Library Modules</h2>
          <table class="lc-table">
            <thead><tr><th>Module/Class</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>Date</code>, <code>Time</code></td><td>Date and time manipulation</td></tr>
              <tr><td><code>Math</code></td><td>sqrt, sin, cos, PI, E</td></tr>
              <tr><td><code>JSON</code></td><td>Parse and generate JSON</td></tr>
              <tr><td><code>Net::HTTP</code></td><td>HTTP requests</td></tr>
              <tr><td><code>CSV</code></td><td>Read/write CSV files</td></tr>
              <tr><td><code>Benchmark</code></td><td>Measure code performance</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Popular Gems</h2>
          <table class="lc-table">
            <thead><tr><th>Gem</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>rails</code></td><td>Full-stack web framework</td></tr>
              <tr><td><code>sinatra</code></td><td>Lightweight web framework</td></tr>
              <tr><td><code>rspec</code></td><td>Testing framework</td></tr>
              <tr><td><code>nokogiri</code></td><td>HTML/XML parsing</td></tr>
              <tr><td><code>devise</code></td><td>Authentication</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Using Math Module</h2>
          <div class="lc-code-block"><pre><code>puts Math::PI      # 3.14159…
puts Math.sqrt(25) # 5.0
puts Math.sin(0)   # 0.0
puts Math.log10(100) # 2.0</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>This Rails app you are learning on is built with Ruby! The <code>User</code>, <code>Course</code>, and <code>Lesson</code> models are Ruby classes. Every controller action is a Ruby method. Ruby + Rails is one of the most productive web stacks ever created.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Ruby Standard Library ──

        # Math module
        puts "=== Math ==="
        puts "PI:        #{Math::PI.round(5)}"
        puts "sqrt(144): #{Math.sqrt(144)}"
        puts "sqrt(2):   #{Math.sqrt(2).round(4)}"

        # Useful numeric methods
        puts "\n=== Numeric Methods ==="
        puts 7.lcm(3)        # Least common multiple
        puts 12.gcd(8)       # Greatest common divisor
        puts (-7).abs
        puts 3.14.ceil
        puts 3.14.floor
        puts 3.14.round

        # String formatting
        puts "\n=== String Formatting ==="
        pi = Math::PI
        puts "%.2f" % pi     # 3.14
        puts "%.5f" % pi     # 3.14159
        puts "%d"   % 3.9    # 3 (integer format)
        puts "%10s" % "hi"   # right-aligned

        # Array operations (Enumerable from stdlib)
        puts "\n=== Array Stats ==="
        nums = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3]
        puts "Count:  #{nums.length}"
        puts "Sum:    #{nums.sum}"
        puts "Min:    #{nums.min}"
        puts "Max:    #{nums.max}"
        puts "Unique: #{nums.uniq.sort.inspect}"
        puts "Tally:  #{nums.tally.inspect}"
      RUBY
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Congratulations on completing the Ruby course! You have learned one of the world's most elegant and expressive programming languages. This final lesson reviews everything and shows Ruby's power with a complete real-world project.</p>
        </div>
        <div class="lc-section">
          <h2>Ruby Fundamentals ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Variables, dynamic typing, snake_case conventions</li>
            <li>Strings with interpolation <code>"#{expr}"</code> and rich methods</li>
            <li>Numbers — Integer, Float, and numeric methods like <code>.even?</code>, <code>.times</code></li>
            <li>Conditionals: <code>if/elsif/else</code>, <code>unless</code>, <code>case/when</code></li>
            <li>Iterators: <code>.each</code>, <code>.times</code>, <code>.upto</code>, <code>while</code></li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Data Structures ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Arrays — ordered collections with 100+ methods</li>
            <li>Hashes — key-value stores with symbol keys</li>
            <li>Ranges — elegant sequences with <code>..</code> and <code>...</code></li>
            <li>Symbols — lightweight immutable identifiers</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>OOP &amp; Advanced Ruby ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Methods: implicit return, <code>?</code> and <code>!</code> conventions</li>
            <li>Blocks, Procs, Lambdas — first-class callable objects</li>
            <li>Enumerable: <code>map</code>, <code>select</code>, <code>reduce</code>, <code>sort_by</code></li>
            <li>Classes: <code>initialize</code>, instance variables, <code>attr_accessor</code></li>
            <li>Inheritance with <code>&lt;</code> and <code>super</code></li>
            <li>Modules as mixins with <code>include</code></li>
            <li>Exception handling: <code>begin/rescue/ensure</code></li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Build a Ruby on Rails app! Rails is the most productive web framework ever created and uses everything you've learned here. Commands: <code>rails new myapp</code> → and you're off!</p></div>
      HTML
      starter_code: <<~'RUBY'
        # ── Ruby Review — Todo App ──

        class Todo
          attr_accessor :title, :done
          attr_reader   :id

          @@count = 0

          def initialize(title)
            @@count += 1
            @id    = @@count
            @title = title
            @done  = false
          end

          def complete!
            @done = true
          end

          def status
            @done ? "✅" : "⬜"
          end

          def to_s
            "#{status} [#{@id}] #{@title}"
          end
        end

        class TodoList
          def initialize(name)
            @name  = name
            @todos = []
          end

          def add(title)
            todo = Todo.new(title)
            @todos << todo
            puts "Added: #{title}"
            todo
          end

          def complete(id)
            todo = @todos.find { |t| t.id == id }
            if todo
              todo.complete!
              puts "Completed: #{todo.title}"
            else
              puts "Todo ##{id} not found"
            end
          end

          def display
            puts "\n=== #{@name} ==="
            @todos.each { |t| puts t }
            pending   = @todos.reject(&:done).count
            completed = @todos.select(&:done).count
            puts "#{completed}/#{@todos.length} done | #{pending} pending"
          end

          def stats
            pct = (@todos.select(&:done).count.to_f / @todos.length * 100).round
            puts "Progress: #{pct}%"
          end
        end

        list = TodoList.new("AI Academy Learning Path")
        list.add("Learn Ruby basics")
        list.add("Understand OOP")
        list.add("Master Enumerable")
        list.add("Build a Rails app")
        list.add("Deploy to production")

        list.display
        list.complete(1)
        list.complete(2)
        list.complete(3)
        list.display
        list.stats
      RUBY
    }
  }.freeze
end

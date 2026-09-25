module RubyContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Introduction to Ruby</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Ruby is a friendly, expressive programming language created by <strong>Yukihiro "Matz" Matsumoto</strong> and first released in 1995. Matz designed it to make programmers <em>happy</em>: the code is short, readable and often looks close to plain English.</p>
        </div>
        <div class="lc-section">
          <h2>Why Learn Ruby?</h2>
          <ul class="lc-list">
            <li><strong>Everything is an object</strong> — even numbers, <code>true</code> and <code>nil</code> have methods you can call.</li>
            <li><strong>Ruby on Rails</strong> — the web framework behind GitHub, Shopify, Basecamp and thousands of start-ups is written in Ruby.</li>
            <li><strong>Blocks and iterators</strong> — looping over data is short and clear: <code>marks.each { |m| puts m }</code>.</li>
            <li><strong>Great tooling</strong> — <code>irb</code> (interactive Ruby), <code>gem</code> and <code>bundler</code> for libraries, and a large community.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Which Ruby Version?</h2>
          <p>The newest stable release is <strong>Ruby 4.0</strong> (released December 2025). The editor in this course runs <strong>Ruby 3.4</strong> directly in your browser. Everything taught here works the same in 3.4 and 4.0; where a feature is new, the lesson says which version added it.</p>
          <p>On your own computer you run a file with <code>ruby hello.rb</code>, or type <code>irb</code> to try code line by line.</p>
        </div>
        <div class="lc-section">
          <h2>Three Ways to Print</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it prints</th><th>Newline?</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td><code>puts</code></td><td>Friendly text (<code>to_s</code>)</td><td>Yes</td><td>Normal output for users</td></tr>
              <tr><td><code>print</code></td><td>Friendly text (<code>to_s</code>)</td><td>No</td><td>Several pieces on one line</td></tr>
              <tr><td><code>p</code></td><td>Developer view (<code>inspect</code>) — shows quotes and <code>nil</code></td><td>Yes</td><td>Debugging</td></tr>
            </tbody>
          </table>
          <p><code>puts</code> prints each element of an array on its own line, and prints an empty line for <code>nil</code>. <code>p</code> shows the value exactly as Ruby sees it.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code># Comments start with a hash sign
        puts "Namaste, Ruby!"
        print "No newline, "
        print "see?\n"
        p "hello"
        puts nil
        p nil
        puts [1, 2]
        p [1, 2]
        puts 7.class
        puts 7.even?
        puts "ruby".upcase</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>Namaste, Ruby!
        No newline, see?
        "hello"

        nil
        1
        2
        [1, 2]
        Integer
        false
        RUBY</code></pre></div>
          <p>Notice the blank line: <code>puts nil</code> prints nothing but a newline, while <code>p nil</code> prints the word <code>nil</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Everything Is an Object</h2>
          <p>In many languages, numbers are "plain values". In Ruby, <code>7</code> is an object of class <code>Integer</code>, so you can ask it questions with methods:</p>
          <div class="lc-code-block"><pre><code>puts 7.even?        # false
        puts 10.to_s + "!"  # 10!
        puts 3.times.to_a.inspect   # [0, 1, 2]
        puts nil.class      # NilClass
        puts "abc".length   # 3</code></pre></div>
          <p>Parentheses are optional when calling methods: <code>puts("hi")</code> and <code>puts "hi"</code> do the same thing. Ruby style usually leaves them out for <code>puts</code> and similar commands.</p>
        </div>
        <div class="lc-section">
          <h2>Return Values</h2>
          <p>Every Ruby expression gives back a value. <code>puts</code> and <code>print</code> return <code>nil</code>, but <code>p</code> returns the object you passed. That is why <code>p</code> is handy for quick debugging inside bigger expressions.</p>
          <div class="lc-code-block"><pre><code>x = p(5)    # prints 5
        y = puts 5  # prints 5
        p x         # 5
        p y         # nil</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting the quotes around text: <code>puts Hello</code> makes Ruby look for a constant called <code>Hello</code> and raises <code>NameError</code>.</li>
            <li>Using <code>print</code> and wondering why everything is on one line — add <code>"\n"</code> or use <code>puts</code>.</li>
            <li>Using <code>puts</code> to debug <code>nil</code> or empty strings — both print a blank line. Use <code>p</code> to see the real value.</li>
            <li>Mixing up <code>puts "5" + 5</code> (error: cannot add a number to a string) with <code>puts "5" + "5"</code> (<code>55</code>).</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add three lines: print your name with <code>puts</code>, print your city and state on <em>one</em> line using two <code>print</code> calls, then use <code>p</code> to show <code>"Ruby"</code> with its quotes. Finally, print <code>2026.class</code> and <code>2026.odd?</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> When you are not sure what a value is, wrap it in <code>p</code>. Ruby developers use <code>p</code> all the time while debugging, then switch to <code>puts</code> for the final output.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 1: Introduction to Ruby
        # Press Run and match each output line to the code that made it.

        puts "=== puts, print and p ==="
        puts "Namaste from Ruby #{RUBY_VERSION}!"
        print "Learning "
        print "Ruby "
        print "today\n"
        p "a string"          # p shows the quotes
        p nil                 # p shows nil
        puts nil              # puts prints an empty line
        puts [10, 20, 30]     # one element per line
        p [10, 20, 30]        # the whole array

        puts "=== Everything is an object ==="
        puts 42.class
        puts 3.14.class
        puts "hi".class
        puts true.class
        puts nil.class
        puts 42.even?
        puts "ruby".upcase
        puts "ruby".length

        puts "=== Simple maths ==="
        puts 10 + 5
        puts 2 ** 10          # 2 to the power 10
        puts 7 / 2            # whole-number division
        puts 7.0 / 2          # decimal division

        puts "=== Return values ==="
        result = p(99)        # p prints AND returns its argument
        puts "p returned #{result}"
        nothing = puts("hi")  # puts always returns nil
        p nothing
      RUBY
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Variables, Numbers and nil</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A variable is a <strong>name that points to an object</strong>. Ruby is dynamically typed: you never write the type, and the same name can later point to a different kind of object. In this lesson you will also learn how Ruby's numbers behave and what <code>nil</code> really means.</p>
        </div>
        <div class="lc-section">
          <h2>Naming Rules</h2>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Looks like</th><th>Example</th><th>Visible in</th></tr></thead>
            <tbody>
              <tr><td>Local variable</td><td><code>snake_case</code></td><td><code>total_marks</code></td><td>The current method or block</td></tr>
              <tr><td>Instance variable</td><td>starts with <code>@</code></td><td><code>@name</code></td><td>One object (lesson 11)</td></tr>
              <tr><td>Constant</td><td>starts with a capital</td><td><code>GST_RATE</code></td><td>The class/module where defined</td></tr>
              <tr><td>Global variable</td><td>starts with <code>$</code></td><td><code>$debug</code></td><td>Everywhere — avoid</td></tr>
            </tbody>
          </table>
          <p>Reassigning a constant works but prints a warning (<code>already initialized constant</code>). Treat constants as fixed values.</p>
        </div>
        <div class="lc-section">
          <h2>Integers and Floats</h2>
          <ul class="lc-list">
            <li><code>Integer</code> — whole numbers of <strong>any size</strong>: <code>2 ** 100</code> just works. Use underscores for readability: <code>1_00_000</code> is 100000.</li>
            <li><code>Float</code> — decimal numbers such as <code>3.5</code>. They are stored in binary, so some results are slightly off: <code>0.1 + 0.2</code> gives <code>0.30000000000000004</code>.</li>
            <li><code>Rational</code> — exact fractions such as <code>1/3r</code>. Useful when exactness matters.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><code>7 / 2</code></td><td><code>3</code></td><td>Integer ÷ Integer drops the decimal part</td></tr>
              <tr><td><code>-7 / 2</code></td><td><code>-4</code></td><td>Integer division rounds <em>down</em> (towards minus infinity)</td></tr>
              <tr><td><code>7.0 / 2</code> or <code>7.fdiv(2)</code></td><td><code>3.5</code></td><td>One Float makes the result a Float</td></tr>
              <tr><td><code>7 % 3</code></td><td><code>1</code></td><td>Remainder (modulo)</td></tr>
              <tr><td><code>17.divmod(5)</code></td><td><code>[3, 2]</code></td><td>Quotient and remainder together</td></tr>
              <tr><td><code>3.14159.round(2)</code></td><td><code>3.14</code></td><td>Round to 2 decimal places</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Converting Between Types</h2>
          <p><code>to_i</code>, <code>to_f</code> and <code>to_s</code> are forgiving: <code>"42abc".to_i</code> is <code>42</code> and <code>"abc".to_i</code> is <code>0</code>. When bad input should be an error, use the strict versions <code>Integer("42")</code> and <code>Float("3.5")</code>, which raise <code>ArgumentError</code> for invalid text. Add <code>exception: false</code> to get <code>nil</code> instead.</p>
        </div>
        <div class="lc-section">
          <h2>nil and Truthiness</h2>
          <p><code>nil</code> means "no value". It is a real object of class <code>NilClass</code>. In conditions, <strong>only <code>nil</code> and <code>false</code> are falsy</strong>. Everything else is truthy — including <code>0</code>, <code>""</code> and <code>[]</code>. This is different from Python and JavaScript.</p>
          <p>The operator <code>||=</code> assigns only when the variable is <code>nil</code> or <code>false</code>: <code>name ||= "Guest"</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>price = 499
        qty   = 3
        puts price * qty
        puts 7 / 2
        puts 7.fdiv(2)
        puts -7 / 2
        p 17.divmod(5)
        puts 0.1 + 0.2
        puts (0.1 + 0.2).round(2)
        puts 1/3r + 1/6r
        puts "42abc".to_i
        p Integer("12x", exception: false)
        puts 0 ? "0 is truthy" : "0 is falsy"
        name = nil
        name ||= "Guest"
        puts name</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>1497
        3
        3.5
        -4
        [3, 2]
        0.30000000000000004
        0.3
        1/2
        42
        nil
        0 is truthy
        Guest</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Expecting <code>7 / 2</code> to be <code>3.5</code>. Make one side a Float or use <code>fdiv</code>.</li>
            <li>Comparing floats with <code>==</code>: <code>0.1 + 0.2 == 0.3</code> is <code>false</code>. Round first, or use <code>Rational</code>.</li>
            <li>Using <code>"abc".to_i</code> to validate input — it silently returns <code>0</code>. Use <code>Integer(text)</code> when invalid input must be caught.</li>
            <li>Writing <code>if count == 0</code> as <code>if count</code> — <code>0</code> is truthy in Ruby, so the check always passes.</li>
            <li>Calling a method on <code>nil</code> by accident, which raises <code>NoMethodError: undefined method ... for nil</code>. Check with <code>value.nil?</code> first.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, a shop sells a notebook for ₹45. Store the price and a quantity of 7 in variables, then print the subtotal, the 18% GST (rounded to 2 decimal places) and the total. Next, convert the text <code>"250"</code> to a number with <code>Integer</code> and add it to the total.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> For money in real applications, store amounts as whole paise (Integer) or use the <code>bigdecimal</code> gem. Floats are fine for measurements, but tiny rounding errors add up in bills and bank balances.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 2: Variables, Numbers and nil

        GST_RATE = 0.18                 # constant: a fixed value
        item      = "Notebook"
        price     = 45                  # Integer
        quantity  = 7
        subtotal  = price * quantity
        gst       = (subtotal * GST_RATE).round(2)
        total     = subtotal + gst

        puts "=== Bill ==="
        puts "Item:     #{item} x #{quantity}"
        puts "Subtotal: #{subtotal}"
        puts "GST 18%:  #{gst}"
        puts "Total:    #{total}"

        puts "=== Integer vs Float division ==="
        puts "17 / 5      = #{17 / 5}"
        puts "17 % 5      = #{17 % 5}"
        puts "17.fdiv(5)  = #{17.fdiv(5)}"
        puts "-17 / 5     = #{-17 / 5}"
        puts "17.divmod(5)= #{17.divmod(5)}"
        puts "2 ** 64     = #{2 ** 64}"

        puts "=== Float precision ==="
        puts 0.1 + 0.2
        puts 0.1 + 0.2 == 0.3
        puts 0.1r + 0.2r == 0.3r        # Rational is exact

        puts "=== Conversions ==="
        puts "25".to_i + 5
        puts "abc".to_i                 # forgiving: 0
        p Integer("abc", exception: false)
        puts Float("2.5") * 2

        puts "=== nil and truthiness ==="
        [nil, false, 0, "", []].each do |value|
          puts "#{value.inspect.ljust(5)} is #{value ? 'truthy' : 'falsy'}"
        end
        nickname = nil
        nickname ||= "Guest"
        puts "Hello, #{nickname}!"
      RUBY
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Working with Strings</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Strings hold text. Ruby strings come with more than a hundred methods, support <strong>interpolation</strong> with <code>#{}</code>, and can be mutable or frozen. Knowing the difference between methods that <em>return a new string</em> and methods that <em>change the string</em> will save you from many bugs.</p>
        </div>
        <div class="lc-section">
          <h2>Quotes and Interpolation</h2>
          <ul class="lc-list">
            <li><strong>Double quotes</strong> run code inside <code>#{}</code> and understand escapes such as <code>\n</code> (newline) and <code>\t</code> (tab).</li>
            <li><strong>Single quotes</strong> keep the text exactly as written: <code>'#{1 + 1}'</code> stays as those characters.</li>
            <li>Interpolation calls <code>to_s</code> for you, so <code>"Age: #{21}"</code> works without converting the number. Concatenation with <code>+</code> does <em>not</em>: <code>"Age: " + 21</code> raises <code>TypeError</code>.</li>
            <li>For long text, use a <strong>squiggly heredoc</strong> <code>&lt;&lt;~TEXT ... TEXT</code>, which removes the leading indentation.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Everyday String Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>upcase</code> / <code>downcase</code> / <code>capitalize</code></td><td><code>"asha".capitalize</code></td><td><code>"Asha"</code></td></tr>
              <tr><td><code>strip</code></td><td><code>"  hi  ".strip</code></td><td><code>"hi"</code></td></tr>
              <tr><td><code>length</code></td><td><code>"Pune".length</code></td><td><code>4</code></td></tr>
              <tr><td><code>include?</code> / <code>start_with?</code></td><td><code>"a@b.in".include?("@")</code></td><td><code>true</code></td></tr>
              <tr><td><code>sub</code> / <code>gsub</code></td><td><code>"a-b-c".gsub("-", "+")</code></td><td><code>"a+b+c"</code> (<code>sub</code> replaces only the first)</td></tr>
              <tr><td><code>split</code> / <code>join</code></td><td><code>"a,b".split(",")</code></td><td><code>["a", "b"]</code></td></tr>
              <tr><td><code>*</code></td><td><code>"-" * 5</code></td><td><code>"-----"</code></td></tr>
              <tr><td><code>ljust</code> / <code>rjust</code> / <code>center</code></td><td><code>"7".rjust(3, "0")</code></td><td><code>"007"</code></td></tr>
              <tr><td><code>format</code></td><td><code>format("%.2f", 3.14159)</code></td><td><code>"3.14"</code></td></tr>
            </tbody>
          </table>
          <p>Methods ending in <code>?</code> return <code>true</code>/<code>false</code>. Methods ending in <code>!</code> (like <code>upcase!</code>) change the string itself instead of returning a new one.</p>
        </div>
        <div class="lc-section">
          <h2>Mutation and Frozen Strings</h2>
          <p><code>+</code> builds a <strong>new</strong> string. <code>&lt;&lt;</code> appends to the <strong>same</strong> string, changing it for every variable that points to it.</p>
          <p>A string can be <strong>frozen</strong> with <code>.freeze</code>; changing it then raises <code>FrozenError</code>. Many Ruby files start with the magic comment <code># frozen_string_literal: true</code>, which freezes every string literal in that file. Since Ruby 3.4, literals in files <em>without</em> that comment are "chilled": changing one still works, but Ruby prints a deprecation warning when deprecation warnings are turned on (<code>ruby -W:deprecated</code>). The plan is for literals to become frozen by default in a future version. When you need a string you will modify, create it with <code>String.new</code>, <code>+""</code> or <code>.dup</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>city = String.new("bengaluru")
        puts "I live in #{city.capitalize}."
        puts 'Single: #{city}'
        loud = city.upcase
        puts city
        puts loud
        city.upcase!
        puts city
        a = String.new("Hi")
        b = a
        b &lt;&lt; " there"
        puts a
        c = a + "!"
        puts a
        puts c
        word = "नमस्ते"
        puts word.length
        puts word.bytesize
        begin
          "fixed".freeze &lt;&lt; "!"
        rescue FrozenError =&gt; e
          puts e.message
        end
        puts format("Total: %.2f", 1234.5)</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>I live in Bengaluru.
        Single: #{city}
        bengaluru
        BENGALURU
        BENGALURU
        Hi there
        Hi there
        Hi there!
        6
        18
        can't modify frozen String: "fixed"
        Total: 1234.50</code></pre></div>
          <p><code>length</code> counts characters, while <code>bytesize</code> counts bytes. Hindi, Tamil and other Indian scripts use 3 bytes per character in UTF-8, so the two numbers differ.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Using single quotes and expecting interpolation: <code>'Hi #{name}'</code> prints the braces literally.</li>
            <li>Joining text and numbers with <code>+</code>: <code>"Total: " + 5</code> raises <code>TypeError</code>. Use interpolation.</li>
            <li>Expecting <code>name.upcase</code> to change <code>name</code>. It returns a new string; use <code>name = name.upcase</code> or <code>upcase!</code>.</li>
            <li>Relying on the return value of bang methods: <code>"HI".upcase!</code> returns <code>nil</code> when nothing changed.</li>
            <li>Mutating a string that another variable shares with <code>&lt;&lt;</code> — both variables see the change.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, take the string <code>"  priya SHARMA  "</code> and produce <code>"Priya Sharma"</code> (strip, then capitalize each word with <code>split</code>, <code>map(&amp;:capitalize)</code> and <code>join(" ")</code>). Then print a receipt line where the item name is left-aligned in 12 characters and the price is right-aligned with 2 decimals.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Put <code># frozen_string_literal: true</code> at the top of new Ruby files. It prevents accidental changes to shared strings and matches the direction Ruby is moving in. Rails and RuboCop projects already use it widely.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 3: Working with Strings

        name = "  priya SHARMA  "
        puts "=== Cleaning text ==="
        clean = name.strip.split.map(&:capitalize).join(" ")
        puts "[#{name}] -> [#{clean}]"
        puts "Initials: #{clean.split.map { |w| w[0] }.join}"
        puts "Length: #{clean.length}"

        puts "=== Interpolation vs single quotes ==="
        marks = 92
        puts "Marks: #{marks}"
        puts 'Marks: #{marks}'

        puts "=== New string vs same string ==="
        greeting = String.new("Hello")    # a string we plan to change
        copy = greeting
        copy << ", world"                  # << changes the shared string
        puts greeting
        shout = greeting.upcase            # returns a NEW string
        puts greeting
        puts shout

        puts "=== Searching and replacing ==="
        email = "priya.sharma@example.in"
        puts email.include?("@")
        puts email.end_with?(".in")
        puts email.sub("priya", "p")
        puts email.gsub(".", "[dot]")
        puts email.split("@").last

        puts "=== Formatting a receipt ==="
        items = [["Chai", 20], ["Samosa", 15.5], ["Masala Dosa", 80]]
        items.each do |item, price|
          puts item.ljust(12, ".") + format("%8.2f", price)
        end
        puts "-" * 20

        puts "=== Frozen strings ==="
        city = "Mumbai".freeze
        puts city.frozen?
        begin
          city << "!"
        rescue FrozenError => e
          puts "FrozenError: #{e.message}"
        end
      RUBY
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Conditionals and case</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Programs make decisions with <code>if</code>, <code>unless</code> and <code>case</code>. In Ruby these are <strong>expressions</strong>: they return a value, so you can assign the result of a whole <code>if</code> or <code>case</code> to a variable.</p>
        </div>
        <div class="lc-section">
          <h2>if, elsif, else and unless</h2>
          <div class="lc-code-block"><pre><code>if marks &gt;= 90
          grade = "A"
        elsif marks &gt;= 75      # note the spelling: elsif
          grade = "B"
        else
          grade = "C"
        end

        puts "Retake the exam" unless passed   # modifier form
        status = age &gt;= 18 ? "adult" : "minor"  # ternary</code></pre></div>
          <p>Use <code>unless</code> only for simple negative checks and never with <code>else</code> — <code>if</code> reads better there.</p>
        </div>
        <div class="lc-section">
          <h2>Comparison and Logic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>==</code> / <code>!=</code></td><td>equal / not equal</td><td><code>5 == 5.0</code> → <code>true</code></td></tr>
              <tr><td><code>&lt;</code> <code>&lt;=</code> <code>&gt;</code> <code>&gt;=</code></td><td>ordering</td><td><code>"apple" &lt; "banana"</code> → <code>true</code></td></tr>
              <tr><td><code>&amp;&amp;</code> / <code>||</code> / <code>!</code></td><td>and / or / not</td><td><code>age &gt;= 18 &amp;&amp; has_id</code></td></tr>
              <tr><td><code>between?</code></td><td>inclusive range check</td><td><code>15.between?(10, 20)</code> → <code>true</code></td></tr>
              <tr><td><code>&amp;.</code></td><td>safe navigation: call only if not <code>nil</code></td><td><code>user&amp;.name</code> → <code>nil</code> when <code>user</code> is <code>nil</code></td></tr>
            </tbody>
          </table>
          <p>Ruby also has the words <code>and</code>, <code>or</code> and <code>not</code>, but they have very low precedence. Use them only for control flow like <code>save or raise "failed"</code>; for conditions, use <code>&amp;&amp;</code> and <code>||</code>.</p>
        </div>
        <div class="lc-section">
          <h2>case / when</h2>
          <p><code>case</code> compares one value against many options using the <code>===</code> operator. That is why a <code>when</code> can hold a range, a class, a regular expression or several values:</p>
          <table class="lc-table">
            <thead><tr><th><code>when</code> clause</th><th>Matches if…</th></tr></thead>
            <tbody>
              <tr><td><code>when 90..100</code></td><td>the value is inside the range</td></tr>
              <tr><td><code>when "Sat", "Sun"</code></td><td>the value equals any of the listed items</td></tr>
              <tr><td><code>when Integer</code></td><td>the value is an Integer</td></tr>
              <tr><td><code>when /\A\d{6}\z/</code></td><td>the string matches the pattern (a 6-digit PIN code)</td></tr>
            </tbody>
          </table>
          <p>Lesson 17 introduces <code>case/in</code> (pattern matching), which can also look <em>inside</em> arrays and hashes.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>def grade(marks)
          case marks
          when 90..100 then "A"
          when 75...90 then "B"
          when 40...75 then "C"
          else "Fail"
          end
        end

        [95, 90, 89, 40, 12].each { |m| puts "#{m}: #{grade(m)}" }

        day = "Sun"
        kind = if ["Sat", "Sun"].include?(day) then "weekend" else "weekday" end
        puts kind

        user = nil
        p user&amp;.upcase
        puts "Guest" unless user

        pin = "560001"
        case pin
        when /\A\d{6}\z/ then puts "Valid PIN code"
        else puts "Invalid PIN code"
        end</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>95: A
        90: A
        89: B
        40: C
        12: Fail
        weekend
        nil
        Guest
        Valid PIN code</code></pre></div>
          <p><code>then</code> lets you keep a short <code>when</code> on one line. Because <code>case</code> returns a value, the method <code>grade</code> needs no <code>return</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Writing <code>elseif</code> or <code>else if</code> — the Ruby keyword is <code>elsif</code>.</li>
            <li>Using <code>=</code> (assignment) instead of <code>==</code> in a condition: <code>if score = 100</code> is always true.</li>
            <li>Forgetting that <code>0</code> and <code>""</code> are truthy: <code>if items.length</code> is always true; use <code>if items.any?</code>.</li>
            <li>Overlapping ranges in <code>case</code> — the first matching <code>when</code> wins, so put the most specific ranges first.</li>
            <li>Using <code>and</code>/<code>or</code> in assignments: <code>ok = true and false</code> sets <code>ok</code> to <code>true</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write a method <code>ticket_price(age)</code> for a cinema: under 5 is free, 5–17 costs ₹150, 18–59 costs ₹250, and 60 or older costs ₹120. Use <code>case</code> with ranges, and test it with ages 3, 17, 18, 59 and 60.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Prefer <strong>guard clauses</strong> over deep nesting: <code>return "Invalid" if marks.negative?</code> at the top of a method keeps the main logic flat and easy to read.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 4: Conditionals and case

        def grade(marks)
          return "Invalid" unless marks.between?(0, 100)   # guard clause

          case marks
          when 90..100 then "A"
          when 75...90 then "B"
          when 40...75 then "C"
          else "Fail"
          end
        end

        puts "=== Grades with case/when ==="
        [100, 90, 89, 75, 40, 39, 105].each do |m|
          puts "#{m.to_s.rjust(3)} -> #{grade(m)}"
        end

        puts "=== if is an expression ==="
        temperature = 38
        advice = if temperature > 35
                   "Stay indoors"
                 elsif temperature > 25
                   "Carry water"
                 else
                   "Enjoy the weather"
                 end
        puts advice

        puts "=== Ternary and unless ==="
        age = 17
        puts age >= 18 ? "Can vote" : "Cannot vote yet"
        has_ticket = false
        puts "Please buy a ticket" unless has_ticket

        puts "=== case with classes and patterns ==="
        ["560001", "5600", 42, nil].each do |value|
          result = case value
                   when /\A\d{6}\z/ then "valid PIN code"
                   when String      then "text, but not a PIN code"
                   when Integer     then "a number"
                   else "nothing"
                   end
          puts "#{value.inspect.ljust(8)} is #{result}"
        end

        puts "=== Safe navigation ==="
        user = nil
        p user&.upcase
        puts (user || "guest").upcase
      RUBY
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Loops, Ranges and Iterators</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Ruby has classic loops like <code>while</code>, but most Ruby code repeats work with <strong>iterators</strong> — methods such as <code>each</code> and <code>times</code> that take a block. <strong>Ranges</strong> like <code>1..10</code> describe a sequence of values and work beautifully with iterators.</p>
        </div>
        <div class="lc-section">
          <h2>Ranges</h2>
          <table class="lc-table">
            <thead><tr><th>Range</th><th>Contains</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td><code>1..5</code></td><td>1, 2, 3, 4, 5</td><td>Two dots: end <strong>included</strong></td></tr>
              <tr><td><code>1...5</code></td><td>1, 2, 3, 4</td><td>Three dots: end <strong>excluded</strong></td></tr>
              <tr><td><code>"a".."e"</code></td><td>a, b, c, d, e</td><td>Works for strings too</td></tr>
              <tr><td><code>(1..)</code></td><td>1, 2, 3, … forever</td><td>Endless range — stop it with <code>break</code>, <code>first</code> or <code>take</code></td></tr>
              <tr><td><code>(..18)</code></td><td>anything up to 18</td><td>Beginless range — good for comparisons</td></tr>
            </tbody>
          </table>
          <p>Useful range methods: <code>to_a</code>, <code>include?</code>, <code>sum</code>, <code>step</code>, <code>each_slice</code>. Ranges also slice arrays and strings: <code>"Ruby"[1..]</code> is <code>"uby"</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Choosing a Loop</h2>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Idiomatic Ruby</th></tr></thead>
            <tbody>
              <tr><td>Repeat N times</td><td><code>3.times { |i| ... }</code> (i = 0, 1, 2)</td></tr>
              <tr><td>Count between two numbers</td><td><code>1.upto(5)</code>, <code>10.downto(1)</code>, <code>0.step(20, 5)</code></td></tr>
              <tr><td>Visit every item</td><td><code>list.each { |x| ... }</code></td></tr>
              <tr><td>Need the position too</td><td><code>list.each_with_index { |x, i| ... }</code></td></tr>
              <tr><td>Repeat until a condition changes</td><td><code>while balance &gt; 0 ... end</code> or <code>until done ... end</code></td></tr>
              <tr><td>Repeat forever until <code>break</code></td><td><code>loop do ... end</code></td></tr>
            </tbody>
          </table>
          <p><code>for x in list</code> exists, but Ruby developers rarely use it: its variable stays alive after the loop, while block variables stay inside the block.</p>
        </div>
        <div class="lc-section">
          <h2>Controlling a Loop</h2>
          <ul class="lc-list">
            <li><code>next</code> skips to the next item (like <code>continue</code> in other languages).</li>
            <li><code>break</code> stops the loop. <code>break value</code> also makes the loop <em>return</em> that value.</li>
            <li><code>{ }</code> and <code>do ... end</code> both create blocks. Convention: braces for one line, <code>do ... end</code> for several lines.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>p (1..5).to_a
        p (1...5).to_a
        puts (1..100).sum
        p (1..10).step(3).to_a
        p (1..).first(4)
        puts "Ruby"[1..]

        3.times { |i| print i, " " }
        puts
        %w[chai coffee lassi].each_with_index do |drink, i|
          puts "#{i + 1}. #{drink}"
        end

        (1..10).each do |n|
          next if n.odd?
          break if n &gt; 6
          print n, " "
        end
        puts

        first_big = (1..).each { |n| break n if n * n &gt; 50 }
        puts first_big

        count = 3
        while count &gt; 0
          print count, "... "
          count -= 1
        end
        puts "Go!"</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>[1, 2, 3, 4, 5]
        [1, 2, 3, 4]
        5050
        [1, 4, 7, 10]
        [1, 2, 3, 4]
        uby
        0 1 2
        1. chai
        2. coffee
        3. lassi
        2 4 6
        8
        3... 2... 1... Go!</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Mixing up <code>..</code> and <code>...</code>: <code>(1...10).to_a</code> stops at 9.</li>
            <li>Writing <code>i++</code> — Ruby has no <code>++</code>. Use <code>i += 1</code>.</li>
            <li>Forgetting to change the condition inside <code>while</code>, which causes an infinite loop.</li>
            <li>Calling <code>to_a</code> on an endless range like <code>(1..).to_a</code> — it never finishes. Use <code>first(n)</code> or <code>take(n)</code>.</li>
            <li>Expecting <code>5.times</code> to count 1 to 5. It counts 0 to 4; use <code>1.upto(5)</code> instead.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, print the multiplication table of 7 from 7 × 1 to 7 × 10 using <code>1.upto(10)</code>. Then use an endless range with <code>break</code> to find the first number greater than 100 that is divisible by both 7 and 9.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> When you find yourself writing a counter variable and a <code>while</code> loop to walk through a list, there is almost always an iterator that does it in one line. Lesson 10 shows many of them.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 5: Loops, Ranges and Iterators

        puts "=== Ranges ==="
        p (1..5).to_a
        p (1...5).to_a
        p ("a".."e").to_a
        puts "Sum of 1..100 = #{(1..100).sum}"
        puts "Is 18 in (13..19)? #{(13..19).include?(18)}"
        p (0..20).step(5).to_a
        p (1..).first(5)                    # endless range, first 5 values

        puts "=== times, upto, downto ==="
        3.times { |i| puts "times: #{i}" }
        1.upto(3) { |i| print i, " " }
        puts
        3.downto(1) { |i| print i, " " }
        puts "Lift-off!"

        puts "=== each and each_with_index ==="
        cities = %w[Delhi Mumbai Chennai Kolkata]
        cities.each_with_index do |city, i|
          puts "#{i + 1}. #{city}"
        end

        puts "=== next and break ==="
        (1..20).each do |n|
          next unless n % 3 == 0             # skip non-multiples of 3
          break if n > 12                    # stop after 12
          print n, " "
        end
        puts

        answer = (1..).each { |n| break n if n % 7 == 0 && n % 9 == 0 }
        puts "First number divisible by 7 and 9: #{answer}"

        puts "=== while loop: savings goal ==="
        savings = 0
        month = 0
        while savings < 10_000
          month += 1
          savings += 1_500
        end
        puts "Reached #{savings} after #{month} months"
      RUBY
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Arrays</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">An array is an <strong>ordered list</strong> of objects. Ruby arrays grow and shrink as needed, can hold any mix of types, and come with a rich set of methods. The key skill is knowing which methods <em>return a new array</em> and which <em>change the original</em>.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Reading Arrays</h2>
          <div class="lc-code-block"><pre><code>marks  = [78, 92, 65, 88]
        fruits = %w[mango banana guava]   # array of strings, no quotes needed
        empty  = []
        zeros  = Array.new(3, 0)          # [0, 0, 0]

        marks[0]      # 78   (first item, index 0)
        marks[-1]     # 88   (negative index counts from the end)
        marks[1, 2]   # [92, 65]  (start at 1, take 2)
        marks[1..]    # [92, 65, 88]
        marks[10]     # nil  (no error for a missing index)
        marks.first(2)  # [78, 92]</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Adding, Removing and Transforming</h2>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Changes the array</th><th>Returns a new array</th></tr></thead>
            <tbody>
              <tr><td>Add to end</td><td><code>push(x)</code>, <code>&lt;&lt; x</code></td><td><code>arr + [x]</code></td></tr>
              <tr><td>Add to front</td><td><code>unshift(x)</code></td><td><code>[x] + arr</code></td></tr>
              <tr><td>Remove from end / front</td><td><code>pop</code>, <code>shift</code></td><td><code>arr[0...-1]</code>, <code>drop(1)</code></td></tr>
              <tr><td>Remove by value / index</td><td><code>delete(x)</code>, <code>delete_at(i)</code></td><td><code>arr - [x]</code></td></tr>
              <tr><td>Sort</td><td><code>sort!</code></td><td><code>sort</code>, <code>sort.reverse</code></td></tr>
              <tr><td>Remove duplicates / nils</td><td><code>uniq!</code>, <code>compact!</code></td><td><code>uniq</code>, <code>compact</code></td></tr>
              <tr><td>Flatten nested arrays</td><td><code>flatten!</code></td><td><code>flatten</code></td></tr>
            </tbody>
          </table>
          <p>Set-like operators return new arrays: <code>a | b</code> (union), <code>a &amp; b</code> (common items), <code>a - b</code> (difference).</p>
        </div>
        <div class="lc-section">
          <h2>Asking Questions</h2>
          <ul class="lc-list">
            <li><code>include?(x)</code>, <code>empty?</code>, <code>any?</code>, <code>length</code> (same as <code>size</code>), <code>count(x)</code>.</li>
            <li><code>index(x)</code> gives the position of the first match or <code>nil</code>.</li>
            <li><code>min</code>, <code>max</code>, <code>sum</code>, <code>minmax</code> work on numbers (and on strings for min/max).</li>
            <li><code>join(", ")</code> turns an array into a string; <code>"a b".split</code> goes the other way.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Destructuring</h2>
          <p>Assign parts of an array to several variables at once. The splat <code>*</code> collects "the rest":</p>
          <div class="lc-code-block"><pre><code>first, second, *rest = [10, 20, 30, 40]
        # first = 10, second = 20, rest = [30, 40]
        *init, last = [1, 2, 3]
        # init = [1, 2], last = 3</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>queue = %w[Asha Ravi]
        queue &lt;&lt; "Meena"
        queue.unshift("Dev")
        p queue
        served = queue.shift
        puts "Served: #{served}"
        p queue

        nums = [5, 3, 8, 3, nil, 1]
        clean = nums.compact.uniq
        p clean
        p clean.sort
        p nums
        p clean.minmax
        puts clean.sum
        p [1, 2, 3] &amp; [2, 3, 4]
        p [1, 2] | [2, 5]
        p [[1, 2], [3, [4]]].flatten
        head, *tail = clean
        puts "head=#{head} tail=#{tail}"</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>["Dev", "Asha", "Ravi", "Meena"]
        Served: Dev
        ["Asha", "Ravi", "Meena"]
        [5, 3, 8, 1]
        [1, 3, 5, 8]
        [5, 3, 8, 3, nil, 1]
        [1, 8]
        17
        [2, 3]
        [1, 2, 5]
        [1, 2, 3, 4]
        head=5 tail=[3, 8, 1]</code></pre></div>
          <p><code>compact</code>, <code>uniq</code> and <code>sort</code> returned new arrays, so <code>nums</code> is unchanged.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Off-by-one: the last index is <code>arr.length - 1</code>, or simply use <code>arr[-1]</code> / <code>arr.last</code>.</li>
            <li><code>Array.new(3, [])</code> puts the <strong>same</strong> inner array in every slot, so changing one changes all. Use <code>Array.new(3) { [] }</code>.</li>
            <li>Expecting <code>arr.sort</code> to sort <code>arr</code> in place. It returns a new array; use <code>sort!</code> or reassign.</li>
            <li>Changing an array (<code>delete</code>, <code>push</code>) while looping over it with <code>each</code> — items get skipped. Build a new array with <code>reject</code> or <code>select</code> instead (lesson 10).</li>
            <li>Confusing <code>arr[2, 3]</code> (start at index 2, take <strong>3 items</strong>) with <code>arr[2..3]</code> (indexes 2 <strong>to</strong> 3, only 2 items).</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, start with <code>scores = [45, 90, 72, 90, 38, 66]</code>. Print the top three distinct scores, the number of scores below 50, and the position of the first 90. Then remove every score below 50 without changing the original array.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Read a method name carefully before using it: if it ends in <code>!</code> or is one of <code>push</code>, <code>pop</code>, <code>shift</code>, <code>unshift</code>, <code>delete</code>, <code>&lt;&lt;</code>, it changes the array. Most other methods leave the original alone.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 6: Arrays

        marks = [78, 92, 65, 88, 92, 54]
        puts "=== Reading ==="
        puts "First: #{marks.first}, last: #{marks[-1]}, third: #{marks[2]}"
        p marks[1, 3]
        p marks[2..]
        p marks[100]                 # missing index -> nil

        puts "=== Asking questions ==="
        puts "Count: #{marks.length}, highest: #{marks.max}, lowest: #{marks.min}"
        puts "Average: #{(marks.sum.to_f / marks.size).round(1)}"
        puts "Any 100? #{marks.include?(100)}"
        puts "How many 92s? #{marks.count(92)}"
        puts "First 92 at index #{marks.index(92)}"

        puts "=== New array vs changed array ==="
        sorted = marks.sort
        p sorted
        p marks                      # unchanged
        top3 = marks.uniq.sort.reverse.first(3)
        p top3
        marks.delete(54)             # changes marks
        p marks

        puts "=== Stack and queue ==="
        stack = []
        stack.push("page1") << "page2" << "page3"
        puts "Back from: #{stack.pop}"
        p stack
        queue = %w[Asha Ravi Meena]
        puts "Now serving: #{queue.shift}"
        p queue

        puts "=== Combining ==="
        maths   = %w[Asha Ravi Dev]
        science = %w[Ravi Meena Dev]
        p maths & science            # in both
        p maths | science            # in either
        p maths - science            # only maths

        puts "=== Destructuring ==="
        winner, runner_up, *others = sorted.reverse
        puts "Winner: #{winner}, runner-up: #{runner_up}, others: #{others}"
      RUBY
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Hashes and Symbols</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A hash stores <strong>key → value</strong> pairs, like a dictionary. Keys are usually <strong>symbols</strong> such as <code>:name</code> — lightweight, unchangeable names. Hashes keep their keys in the order you inserted them.</p>
        </div>
        <div class="lc-section">
          <h2>Symbols vs Strings</h2>
          <p>A symbol is written with a colon: <code>:status</code>. Every <code>:status</code> in your program is <strong>the same object</strong>, and symbols cannot be changed. A string like <code>"status"</code> is text data: each literal can be a separate object and (unless frozen) can be modified.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Symbol <code>:name</code></th><th>String <code>"name"</code></th></tr></thead>
            <tbody>
              <tr><td>Purpose</td><td>A fixed identifier (hash key, option, state)</td><td>Text that users see or that changes</td></tr>
              <tr><td>Same object each time?</td><td>Yes — <code>:a.equal?(:a)</code> is <code>true</code></td><td>Not necessarily</td></tr>
              <tr><td>Can be changed?</td><td>Never</td><td>Yes, unless frozen</td></tr>
              <tr><td>Convert</td><td><code>:name.to_s</code> → <code>"name"</code></td><td><code>"name".to_sym</code> → <code>:name</code></td></tr>
            </tbody>
          </table>
          <p>The practical rule: use symbols for <em>names in your code</em> and strings for <em>data</em>. Note that <code>:name</code> and <code>"name"</code> are different keys — a hash built with one will not find the other.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Reading Hashes</h2>
          <div class="lc-code-block"><pre><code>student = { name: "Asha", age: 20, city: "Pune" }   # symbol keys
        prices  = { "chai" =&gt; 20, "dosa" =&gt; 60 }            # string keys use =&gt;

        student[:name]              # "Asha"
        student[:email]             # nil (missing key)
        student.fetch(:email, "-")  # "-" (default)
        student.fetch(:email)       # raises KeyError: key not found: :email
        student[:age] = 21          # update
        student[:course] = "BCA"    # add</code></pre></div>
          <p>Since Ruby 3.1 you can use shorthand when the key matches a variable name: <code>name = "Ravi"; { name: }</code> is <code>{ name: "Ravi" }</code>.</p>
          <p>Ruby 3.4 prints hashes in a new style: <code>{name: "Asha", "chai" =&gt; 20}</code>. Older versions printed <code>{:name=&gt;"Asha", "chai"=&gt;20}</code>; you will still see that style in older tutorials.</p>
        </div>
        <div class="lc-section">
          <h2>Useful Hash Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>each { |key, value| }</code></td><td>Loop over pairs</td></tr>
              <tr><td><code>keys</code>, <code>values</code>, <code>key?(k)</code>, <code>size</code></td><td>Inspect the hash</td></tr>
              <tr><td><code>select</code> / <code>reject</code></td><td>Keep or drop pairs; returns a hash</td></tr>
              <tr><td><code>transform_values</code></td><td>Change every value; returns a hash</td></tr>
              <tr><td><code>sort_by { |k, v| v }</code></td><td>Returns an array of <code>[key, value]</code> pairs</td></tr>
              <tr><td><code>merge(other)</code></td><td>Combine two hashes; later values win</td></tr>
              <tr><td><code>dig(:a, :b)</code></td><td>Safely read nested data; <code>nil</code> if any level is missing</td></tr>
              <tr><td><code>Hash.new(0)</code></td><td>Default value 0 for missing keys — perfect for counting</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>stock = { apple: 40, mango: 0, banana: 25 }
        p stock
        puts stock[:apple]
        puts stock.fetch(:grapes, 0)
        p stock.select { |_fruit, qty| qty &gt; 0 }
        p stock.transform_values { |qty| qty * 2 }
        p stock.max_by { |_fruit, qty| qty }

        votes = Hash.new(0)
        %w[red blue red green red].each { |c| votes[c] += 1 }
        p votes

        order = { id: 7, customer: { name: "Ravi", address: { city: "Kochi" } } }
        p order.dig(:customer, :address, :city)
        p order.dig(:customer, :phone, :mobile)
        p :done.equal?(:done)</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>{apple: 40, mango: 0, banana: 25}
        40
        0
        {apple: 40, banana: 25}
        {apple: 80, mango: 0, banana: 50}
        [:apple, 40]
        {"red" =&gt; 3, "blue" =&gt; 1, "green" =&gt; 1}
        "Kochi"
        nil
        true</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Mixing key types: <code>{ name: "A" }["name"]</code> is <code>nil</code> because the key is the symbol <code>:name</code>. Data from JSON or web forms usually has <strong>string</strong> keys.</li>
            <li>Using <code>hash[key]</code> when a missing key is a bug. <code>fetch</code> raises <code>KeyError</code> immediately, so the bug is easy to find.</li>
            <li><code>Hash.new([])</code> shares one array between all missing keys. Use <code>Hash.new { |h, k| h[k] = [] }</code> for a fresh array per key.</li>
            <li>Expecting <code>sort_by</code> or <code>max_by</code> to return a hash — they return arrays of pairs. Add <code>.to_h</code> if you need a hash back.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, count how many times each word appears in <code>"the cat and the hat and the bat"</code> using <code>Hash.new(0)</code>. Print the words sorted by count (highest first). Then solve it again in one line with <code>split.tally</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> <code>tally</code> (Ruby 2.7+) counts items for you: <code>%w[a b a].tally</code> returns <code>{"a" =&gt; 2, "b" =&gt; 1}</code>. It is one of the most useful one-liners in Ruby.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 7: Hashes and Symbols

        puts "=== Symbols ==="
        p :pending.equal?(:pending)      # same object every time
        p :pending.to_s
        p "pending".to_sym
        p({ name: "A" }["name"])         # string key != symbol key

        puts "=== A student record ==="
        student = { name: "Asha", age: 20, city: "Pune" }
        student[:course] = "BCA"
        student[:age] += 1
        p student
        puts "Keys: #{student.keys}"
        puts "Email: #{student.fetch(:email, 'not given')}"
        begin
          student.fetch(:email)
        rescue KeyError => e
          puts "KeyError: #{e.message}"
        end

        puts "=== Looping and transforming ==="
        prices = { "chai" => 20, "samosa" => 15, "dosa" => 60 }
        prices.each { |item, price| puts "#{item.ljust(7)} Rs #{price}" }
        p prices.select { |_item, price| price < 50 }
        p prices.transform_values { |price| (price * 1.05).round }
        cheapest, cost = prices.min_by { |_item, price| price }
        puts "Cheapest: #{cheapest} (Rs #{cost})"

        puts "=== Counting with Hash.new(0) and tally ==="
        text = "the cat and the hat and the bat"
        counts = Hash.new(0)
        text.split.each { |word| counts[word] += 1 }
        p counts.sort_by { |_word, n| -n }.first(2).to_h
        p text.split.tally == counts

        puts "=== Nested data with dig ==="
        order = { id: 7, customer: { name: "Ravi", address: { city: "Kochi" } } }
        p order.dig(:customer, :address, :city)
        p order.dig(:customer, :phone, :mobile)

        puts "=== Shorthand (Ruby 3.1+) ==="
        name = "Meena"
        marks = 88
        p({ name:, marks: })
      RUBY
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Methods and Keyword Arguments</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Methods package code under a name so you can reuse it. Ruby methods <strong>return the value of their last expression</strong> automatically, and <strong>keyword arguments</strong> make calls self-explaining: <code>transfer(amount: 500, to: "Ravi")</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Defining Methods</h2>
          <div class="lc-code-block"><pre><code>def greet(name, greeting = "Hello")   # greeting has a default
          "#{greeting}, #{name}!"             # returned automatically
        end

        def square(x) = x * x                 # endless method (Ruby 3.0+)

        def safe_divide(a, b)
          return nil if b.zero?               # early return
          a.fdiv(b)
        end</code></pre></div>
          <p>Naming conventions: <code>snake_case</code>; end with <code>?</code> when the method answers yes/no (<code>adult?</code>), and with <code>!</code> when it is a "dangerous" version that changes its receiver or raises (<code>save!</code>).</p>
        </div>
        <div class="lc-section">
          <h2>Kinds of Parameters</h2>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Definition</th><th>Call</th></tr></thead>
            <tbody>
              <tr><td>Required positional</td><td><code>def area(w, h)</code></td><td><code>area(3, 4)</code></td></tr>
              <tr><td>Optional positional</td><td><code>def greet(name, greeting = "Hi")</code></td><td><code>greet("Asha")</code></td></tr>
              <tr><td>Rest (splat)</td><td><code>def total(*nums)</code></td><td><code>total(1, 2, 3)</code> → <code>nums = [1, 2, 3]</code></td></tr>
              <tr><td>Required keyword</td><td><code>def emi(principal:, rate:)</code></td><td><code>emi(rate: 9, principal: 50_000)</code></td></tr>
              <tr><td>Optional keyword</td><td><code>def emi(principal:, months: 12)</code></td><td><code>emi(principal: 50_000)</code></td></tr>
              <tr><td>Keyword rest</td><td><code>def tag(name, **attrs)</code></td><td><code>tag("a", href: "/", id: 1)</code></td></tr>
              <tr><td>Block</td><td><code>def run(&amp;block)</code></td><td><code>run { ... }</code> (lesson 9)</td></tr>
            </tbody>
          </table>
          <p>Keyword arguments can be given in any order, and a typo or missing keyword raises a clear <code>ArgumentError</code>. Prefer them when a method has more than two parameters or has boolean options.</p>
        </div>
        <div class="lc-section">
          <h2>Scope</h2>
          <p>A method <strong>cannot see local variables</strong> defined outside it. Pass values in as arguments and get results back with the return value. This keeps methods independent and easy to test.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>def emi(principal:, annual_rate:, months: 12)
          r = annual_rate / 12.0 / 100
          (principal * r * (1 + r)**months / ((1 + r)**months - 1)).round(2)
        end

        def total(*amounts, discount: 0)
          amounts.sum - discount
        end

        def min_max(list) = [list.min, list.max]

        puts emi(principal: 100_000, annual_rate: 12)
        puts emi(annual_rate: 12, principal: 100_000, months: 24)
        puts total(100, 250, 50)
        puts total(100, 250, 50, discount: 40)
        low, high = min_max([7, 2, 9])
        puts "#{low} #{high}"
        begin
          emi(principal: 5000)
        rescue ArgumentError =&gt; e
          puts e.message
        end
        begin
          min_max
        rescue ArgumentError =&gt; e
          puts e.message
        end</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>8884.88
        4707.35
        400
        360
        2 9
        missing keyword: :annual_rate
        wrong number of arguments (given 0, expected 1)</code></pre></div>
          <p>A method returns one object, but that object can be an array — destructuring (<code>low, high = ...</code>) makes it feel like multiple return values.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Putting a space before the parentheses: <code>greet ("Asha", "Hi")</code> is a syntax error. Write <code>greet("Asha", "Hi")</code>.</li>
            <li>Ending a method with <code>puts result</code> when the caller needs the value — <code>puts</code> returns <code>nil</code>. Return the value and print it outside.</li>
            <li>Changing an argument inside the method: <code>def add(list, item) = list &lt;&lt; item</code> also changes the caller's array. Return a new object (<code>list + [item]</code>) unless changing it is the whole point.</li>
            <li>Many positional booleans like <code>send_mail(user, true, false)</code> — nobody knows what they mean. Use keywords: <code>send_mail(user, urgent: true, copy: false)</code>.</li>
            <li>Trying to read an outer local variable inside <code>def</code> — it raises <code>NameError</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write <code>bmi(weight_kg:, height_m:)</code> that returns the BMI rounded to 1 decimal, and <code>bmi_category(bmi)</code> that returns <code>"Underweight"</code> (below 18.5), <code>"Normal"</code> (18.5 to below 25) or <code>"Overweight"</code>. Call them for 58 kg / 1.65 m and 82 kg / 1.70 m.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Keep methods short — ideally under 10 lines — and give them names that say <em>what</em> they return (<code>total_with_gst</code>) rather than <em>how</em> they work. Small methods are easier to test (lesson 19).</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 8: Methods and Keyword Arguments

        def greet(name, greeting = "Namaste")
          "#{greeting}, #{name}!"          # last expression is returned
        end

        def square(x) = x * x              # endless method

        def adult?(age) = age >= 18        # predicate method ends with ?

        def emi(principal:, annual_rate:, months: 12)
          r = annual_rate / 12.0 / 100
          (principal * r * (1 + r)**months / ((1 + r)**months - 1)).round(2)
        end

        def total(*amounts, discount: 0)
          amounts.sum - discount
        end

        def html_tag(name, content, **attrs)
          attr_text = attrs.map { |key, value| " #{key}=\"#{value}\"" }.join
          "<#{name}#{attr_text}>#{content}</#{name}>"
        end

        puts "=== Positional and default arguments ==="
        puts greet("Asha")
        puts greet("Ravi", "Good morning")
        puts square(12)
        puts adult?(17)

        puts "=== Keyword arguments ==="
        puts "EMI 12 months: #{emi(principal: 100_000, annual_rate: 12)}"
        puts "EMI 24 months: #{emi(annual_rate: 12, months: 24, principal: 100_000)}"

        puts "=== Splat and double splat ==="
        puts total(100, 250, 50)
        puts total(100, 250, 50, discount: 40)
        puts html_tag("a", "Home", href: "/", class: "nav")

        puts "=== Argument errors ==="
        begin
          emi(principal: 5000)
        rescue ArgumentError => e
          puts "ArgumentError: #{e.message}"
        end
        begin
          greet
        rescue ArgumentError => e
          puts "ArgumentError: #{e.message}"
        end
      RUBY
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Blocks, Procs and Lambdas</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>block</strong> is a chunk of code you pass to a method — the <code>{ |x| ... }</code> after <code>each</code> is a block. When you want to store a block in a variable and call it later, you turn it into an object: a <strong>Proc</strong> or a <strong>lambda</strong>. All three are <em>closures</em>: they remember the variables around them.</p>
        </div>
        <div class="lc-section">
          <h2>yield: Calling the Block</h2>
          <p>Inside a method, <code>yield</code> runs the block the caller passed and gives back the block's value. <code>block_given?</code> tells you whether a block was passed at all.</p>
          <div class="lc-code-block"><pre><code>def with_timer_label(label)
          puts "Start #{label}"
          result = yield          # run the caller's block
          puts "End #{label}"
          result
        end

        with_timer_label("report") { 6 * 7 }   # prints Start/End, returns 42</code></pre></div>
          <p>To keep the block as an object, name it with <code>&amp;</code>: <code>def on_save(&amp;callback)</code>. Now <code>callback</code> is a Proc you can store and <code>call</code> later.</p>
        </div>
        <div class="lc-section">
          <h2>Proc vs Lambda</h2>
          <div class="lc-code-block"><pre><code>add_gst  = lambda { |amount| (amount * 1.18).round(2) }
        add_gst2 = -&gt;(amount) { (amount * 1.18).round(2) }   # "stabby lambda", same thing
        shout    = proc { |text| text.upcase }

        add_gst.call(100)     # 118.0
        add_gst2.(100)        # 118.0  (.() is short for .call)
        shout["hi"]           # "HI"   ([] also calls it)</code></pre></div>
          <table class="lc-table">
            <thead><tr><th></th><th>Lambda (<code>lambda</code>, <code>-&gt;</code>)</th><th>Proc (<code>proc</code>, <code>Proc.new</code>, a named <code>&amp;block</code>)</th></tr></thead>
            <tbody>
              <tr><td>Wrong number of arguments</td><td>Raises <code>ArgumentError</code> (strict, like a method)</td><td>Ignores extras, fills missing with <code>nil</code></td></tr>
              <tr><td><code>return</code> inside it</td><td>Returns from the lambda only</td><td>Returns from the <em>method where the proc was created</em></td></tr>
              <tr><td><code>lambda?</code></td><td><code>true</code></td><td><code>false</code></td></tr>
              <tr><td>Use it for</td><td>Stored functions, callbacks, strategies</td><td>Blocks passed to iterators</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Shortcuts You Will See Everywhere</h2>
          <ul class="lc-list">
            <li><code>names.map(&amp;:upcase)</code> — <code>&amp;:upcase</code> turns the symbol into a block that calls <code>upcase</code> on each item.</li>
            <li><code>nums.map(&amp;add_gst)</code> — <code>&amp;</code> also passes a lambda as the block.</li>
            <li><code>method(:puts)</code> gives a Method object; <code>list.each(&amp;method(:puts))</code> passes it as a block.</li>
            <li>Numbered parameter <code>_1</code> (Ruby 2.7+) and <code>it</code> (Ruby 3.4+) name the single block argument: <code>nums.map { it * 2 }</code>. <code>it</code> does not work in Ruby 3.3 or older, so use <code>|x|</code> when your code must run everywhere.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>def repeat(times)
          return "no block given" unless block_given?
          (1..times).map { |i| yield i }
        end

        p repeat(3) { |i| i * 10 }
        p repeat(3)

        discount = 10
        apply = -&gt;(price) { price - price * discount / 100 }
        discount = 20           # the lambda sees the NEW value
        p [500, 1000].map(&amp;apply)

        strict = -&gt;(a, b) { a + b }
        loose  = proc { |a, b| "#{a}-#{b.inspect}" }
        p loose.call(1)
        p loose.call(1, 2, 3)
        begin
          strict.call(1)
        rescue ArgumentError =&gt; e
          puts e.message
        end

        def find_first_even(nums)
          nums.each { |n| return n if n.even? }   # return leaves the METHOD
          nil
        end
        p find_first_even([3, 7, 8, 10])
        p %w[asha ravi].map(&amp;:capitalize)</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>[10, 20, 30]
        "no block given"
        [400, 800]
        "1-nil"
        "1-2"
        wrong number of arguments (given 1, expected 2)
        8
        ["Asha", "Ravi"]</code></pre></div>
          <p>The lambda captured the <em>variable</em> <code>discount</code>, not its value at creation time — that is what "closure" means.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Calling <code>yield</code> when no block was passed raises <code>LocalJumpError (no block given (yield))</code>. Check <code>block_given?</code> first.</li>
            <li>Mixing brace and <code>do...end</code> precedence: <code>puts [1, 2].map do |x| x * 2 end</code> passes the block to <code>puts</code>, not to <code>map</code>. Use braces for one-liners.</li>
            <li>Using <code>proc</code> when you wanted a strict function — wrong argument counts are silently accepted. Choose a lambda.</li>
            <li>Using <code>return</code> inside a proc that outlives its method — it raises <code>LocalJumpError</code>. Use <code>next</code> to leave a block early.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write a method <code>retry_up_to(times)</code> that yields the attempt number (1, 2, 3...) and stops as soon as the block returns <code>true</code>. Then build a hash of lambdas <code>{ add: -&gt;(a, b) { a + b }, mul: ... }</code> and use it as a tiny calculator: <code>ops[:mul].call(6, 7)</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Most of the time you only need <strong>blocks</strong>. Reach for a <strong>lambda</strong> when you must store behaviour in a variable or hash, and write your own <code>yield</code> methods when several places share the same "before and after" code.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 9: Blocks, Procs and Lambdas

        puts "=== yield and block_given? ==="
        def with_border(title)
          return "(no block)" unless block_given?
          puts "+-- #{title} --+"
          value = yield
          puts "+#{'-' * (title.length + 6)}+"
          value
        end
        result = with_border("Total") { puts "  computing..."; 20 + 22 }
        puts "Block returned #{result}"
        puts with_border("Empty")

        puts "=== Blocks with arguments ==="
        def each_even(limit)
          (1..limit).each { |n| yield n if n.even? }
        end
        each_even(8) { |n| print n, " " }
        puts

        puts "=== Lambdas are objects ==="
        add_gst = ->(amount) { (amount * 1.18).round(2) }
        prices = [100, 250, 999]
        p prices.map(&add_gst)
        puts add_gst.(500)

        puts "=== Closures remember variables ==="
        counter = 0
        increment = -> { counter += 1 }
        3.times { increment.call }
        puts "counter = #{counter}"

        puts "=== Proc vs lambda ==="
        loose  = proc { |a, b| "a=#{a.inspect} b=#{b.inspect}" }
        strict = lambda { |a, b| "a=#{a} b=#{b}" }
        puts loose.call(1)
        puts loose.lambda?
        begin
          strict.call(1)
        rescue ArgumentError => e
          puts "lambda: #{e.message}"
        end

        puts "=== Storing behaviour in a hash ==="
        ops = { add: ->(a, b) { a + b }, mul: ->(a, b) { a * b } }
        ops.each { |name, fn| puts "#{name}(6, 7) = #{fn.call(6, 7)}" }
        p %w[asha ravi meena].map(&:capitalize)
        puts "=== Ruby 3.4+: the it parameter ==="
        p [1, 2, 3].map { it * 10 }          # it = the single block argument
      RUBY
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Enumerable in Depth</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead"><code>Enumerable</code> is a module full of collection methods — <code>map</code>, <code>select</code>, <code>reduce</code>, <code>group_by</code> and dozens more. Arrays, hashes, ranges and sets all include it. Learning these methods lets you replace most hand-written loops with one clear line.</p>
        </div>
        <div class="lc-section">
          <h2>Pick the Right Method</h2>
          <table class="lc-table">
            <thead><tr><th>I want to…</th><th>Method</th><th>Example → result</th></tr></thead>
            <tbody>
              <tr><td>Transform every item</td><td><code>map</code></td><td><code>[1, 2].map { |x| x * 10 }</code> → <code>[10, 20]</code></td></tr>
              <tr><td>Keep matching items</td><td><code>select</code> (alias <code>filter</code>)</td><td><code>[1, 2, 3].select(&amp;:odd?)</code> → <code>[1, 3]</code></td></tr>
              <tr><td>Drop matching items</td><td><code>reject</code></td><td><code>[1, 2, 3].reject(&amp;:odd?)</code> → <code>[2]</code></td></tr>
              <tr><td>Transform and drop <code>nil</code>/<code>false</code></td><td><code>filter_map</code></td><td><code>[1, 2, 3].filter_map { |x| x * 2 if x.odd? }</code> → <code>[2, 6]</code></td></tr>
              <tr><td>First match</td><td><code>find</code> (alias <code>detect</code>)</td><td><code>[4, 7, 9].find(&amp;:odd?)</code> → <code>7</code></td></tr>
              <tr><td>Combine into one value</td><td><code>reduce</code> / <code>sum</code></td><td><code>[2, 3, 4].reduce(:*)</code> → <code>24</code></td></tr>
              <tr><td>Best / worst by a rule</td><td><code>max_by</code>, <code>min_by</code>, <code>sort_by</code></td><td><code>%w[kiwi fig].min_by(&amp;:length)</code> → <code>"fig"</code></td></tr>
              <tr><td>Group or split</td><td><code>group_by</code>, <code>partition</code>, <code>chunk_while</code></td><td><code>(1..6).partition(&amp;:even?)</code> → <code>[[2, 4, 6], [1, 3, 5]]</code></td></tr>
              <tr><td>Count</td><td><code>count</code>, <code>tally</code></td><td><code>%w[a b a].tally</code> → <code>{"a" =&gt; 2, "b" =&gt; 1}</code></td></tr>
              <tr><td>Yes/no questions</td><td><code>any?</code>, <code>all?</code>, <code>none?</code>, <code>include?</code></td><td><code>[2, 4].all?(&amp;:even?)</code> → <code>true</code></td></tr>
              <tr><td>Work in pieces</td><td><code>each_slice(n)</code>, <code>each_cons(n)</code></td><td><code>(1..5).each_slice(2).to_a</code> → <code>[[1, 2], [3, 4], [5]]</code></td></tr>
              <tr><td>Pair up two lists</td><td><code>zip</code></td><td><code>[1, 2].zip(%w[a b])</code> → <code>[[1, "a"], [2, "b"]]</code></td></tr>
              <tr><td>Build a hash or other object</td><td><code>each_with_object</code>, <code>to_h</code></td><td><code>%w[a bb].to_h { |w| [w, w.size] }</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Hashes Are Enumerable Too</h2>
          <p>When you call an Enumerable method on a hash, each item is a <code>[key, value]</code> pair. Name both parts in the block:</p>
          <div class="lc-code-block"><pre><code>stock = { rice: 40, dal: 0, atta: 12 }
        stock.select { |_item, qty| qty.zero? }   # {dal: 0}          (a hash)
        stock.map { |item, qty| "#{item}=#{qty}" } # ["rice=40", ...]   (an array)
        stock.sum { |_item, qty| qty }            # 52
        stock.sort_by { |_item, qty| qty }.to_h   # {dal: 0, atta: 12, rice: 40}</code></pre></div>
          <p>A leading underscore (<code>_item</code>) tells readers, and Ruby's warnings, that you do not use that value.</p>
        </div>
        <div class="lc-section">
          <h2>reduce Explained</h2>
          <p><code>reduce</code> (alias <code>inject</code>) keeps a running value called the <em>accumulator</em>. For <code>[5, 10, 15].reduce(0) { |sum, x| sum + x }</code> the accumulator goes 0 → 5 → 15 → 30. For simple totals, <code>sum</code> is clearer.</p>
        </div>
        <div class="lc-section">
          <h2>Chaining and Laziness</h2>
          <p>Enumerable methods return new collections, so you can chain them: <code>orders.select(&amp;:paid?).map(&amp;:amount).sum</code>. Each step creates an intermediate array. For very large or <strong>infinite</strong> sequences, add <code>.lazy</code>: work happens only for the items you actually ask for.</p>
          <div class="lc-code-block"><pre><code>(1..).lazy.map { |n| n * n }.select(&amp;:even?).first(3)   # [4, 16, 36]</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>students = [
          { name: "Asha",  city: "Pune",  marks: 91 },
          { name: "Ravi",  city: "Delhi", marks: 67 },
          { name: "Meena", city: "Pune",  marks: 78 },
          { name: "Dev",   city: "Delhi", marks: 38 }
        ]

        p students.map { |s| s[:name] }
        p students.select { |s| s[:marks] &gt;= 75 }.map { |s| s[:name] }
        p students.max_by { |s| s[:marks] }[:name]
        p students.sum { |s| s[:marks] }
        passed, failed = students.partition { |s| s[:marks] &gt;= 40 }
        puts "#{passed.size} passed, #{failed.size} failed"
        by_city = students.group_by { |s| s[:city] }
        p by_city.transform_values { |list| list.map { |s| s[:name] } }
        p students.sort_by { |s| -s[:marks] }.first(2).map { |s| s[:name] }
        p [3, 8, 2, 9].each_cons(2).map { |a, b| b - a }
        p students.each_with_object(Hash.new(0)) { |s, h| h[s[:city]] += s[:marks] }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>["Asha", "Ravi", "Meena", "Dev"]
        ["Asha", "Meena"]
        "Asha"
        274
        3 passed, 1 failed
        {"Pune" =&gt; ["Asha", "Meena"], "Delhi" =&gt; ["Ravi", "Dev"]}
        ["Asha", "Meena"]
        [5, -6, 7]
        {"Pune" =&gt; 169, "Delhi" =&gt; 105}</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Using <code>each</code> to build a new array (<code>result = []; list.each { result &lt;&lt; ... }</code>). Use <code>map</code> or <code>select</code>.</li>
            <li>Using <code>map</code> for side effects only (like printing) — use <code>each</code>, which says "I only care about the effect".</li>
            <li>Forgetting that <code>select</code> on a <strong>hash</strong> returns a hash, but <code>map</code> on a hash returns an <strong>array</strong>.</li>
            <li>Writing <code>reduce { |sum, x| sum + x }</code> on an empty array — it returns <code>nil</code>. Give a starting value: <code>reduce(0)</code>, or use <code>sum</code>.</li>
            <li>Calling <code>map</code> on an infinite range without <code>lazy</code> — the program never finishes.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, using the <code>orders</code> data, print (1) the total revenue from paid orders, (2) the customer who spent the most, and (3) a hash of item → number of orders using <code>tally</code>. Try to write each answer as a single chain.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Read a chain out loud: "orders, <em>select</em> the paid ones, <em>map</em> to amount, <em>sum</em>". If it reads like the requirement, it is good Ruby. If a chain gets longer than about four steps, give the middle results names.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 10: Enumerable in Depth

        orders = [
          { id: 1, customer: "Asha",  item: "Chai",   amount: 40,  paid: true  },
          { id: 2, customer: "Ravi",  item: "Dosa",   amount: 120, paid: false },
          { id: 3, customer: "Asha",  item: "Dosa",   amount: 120, paid: true  },
          { id: 4, customer: "Meena", item: "Thali",  amount: 250, paid: true  },
          { id: 5, customer: "Ravi",  item: "Chai",   amount: 40,  paid: true  },
          { id: 6, customer: "Dev",   item: "Samosa", amount: 30,  paid: false }
        ]

        puts "=== map / select / reject ==="
        p orders.map { |o| o[:item] }.uniq
        paid = orders.select { |o| o[:paid] }
        puts "Paid orders: #{paid.map { |o| o[:id] }}"
        puts "Unpaid orders: #{orders.reject { |o| o[:paid] }.map { |o| o[:id] }}"

        puts "=== sum / reduce / find ==="
        puts "Revenue (paid): #{paid.sum { |o| o[:amount] }}"
        puts "Revenue via reduce: #{paid.reduce(0) { |total, o| total + o[:amount] }}"
        big = orders.find { |o| o[:amount] > 200 }
        puts "First big order: ##{big[:id]} by #{big[:customer]}"

        puts "=== group_by / tally / max_by ==="
        spend = paid.group_by { |o| o[:customer] }
                    .transform_values { |list| list.sum { |o| o[:amount] } }
        p spend
        top, amount = spend.max_by { |_name, total| total }
        puts "Top customer: #{top} (Rs #{amount})"
        p orders.map { |o| o[:item] }.tally

        puts "=== partition / any? / all? ==="
        cheap, costly = orders.partition { |o| o[:amount] < 100 }
        puts "cheap=#{cheap.size} costly=#{costly.size}"
        puts "Any unpaid? #{orders.any? { |o| !o[:paid] }}"
        puts "All above 20? #{orders.all? { |o| o[:amount] > 20 }}"

        puts "=== each_slice / zip / filter_map ==="
        orders.each_slice(4).with_index(1) { |page, n| puts "Page #{n}: #{page.map { |o| o[:id] }}" }
        p %w[Mon Tue Wed].zip([120, 90, 150])
        p orders.filter_map { |o| o[:customer] unless o[:paid] }

        puts "=== lazy with an endless range ==="
        p (1..).lazy.map { |n| n * n }.select(&:even?).first(4)
      RUBY
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Classes and Objects</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>class</strong> is a blueprint; an <strong>object</strong> is one thing built from it. Each object keeps its own data in <strong>instance variables</strong> (<code>@balance</code>) and responds to the <strong>methods</strong> defined in its class. This is object-oriented programming — and in Ruby, everything already works this way.</p>
        </div>
        <div class="lc-section">
          <h2>Defining a Class</h2>
          <div class="lc-code-block"><pre><code>class BankAccount
          attr_reader :owner, :balance          # creates owner and balance getters

          def initialize(owner, balance = 0)    # runs when you call BankAccount.new
            @owner = owner                      # instance variables start with @
            @balance = balance
          end

          def deposit(amount)
            raise ArgumentError, "amount must be positive" unless amount.positive?
            @balance += amount
            self                                # return the object so calls can chain
          end

          def to_s = "#{owner}: Rs #{balance}"   # used by puts and interpolation
        end

        acct = BankAccount.new("Asha", 1000)
        acct.deposit(500).deposit(250)</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Getters and Setters</h2>
          <table class="lc-table">
            <thead><tr><th>Macro</th><th>Creates</th><th>Same as writing</th></tr></thead>
            <tbody>
              <tr><td><code>attr_reader :name</code></td><td>getter</td><td><code>def name = @name</code></td></tr>
              <tr><td><code>attr_writer :name</code></td><td>setter</td><td><code>def name=(value); @name = value; end</code></td></tr>
              <tr><td><code>attr_accessor :name</code></td><td>both</td><td>both of the above</td></tr>
            </tbody>
          </table>
          <p>Expose as little as possible. A bank balance should have a reader, but changes should go through methods like <code>deposit</code> that can check the rules. Write your own setter when you need validation.</p>
        </div>
        <div class="lc-section">
          <h2>self, Class Methods and Visibility</h2>
          <ul class="lc-list">
            <li>Inside an instance method, <code>self</code> is the current object. Inside a setter call you <strong>must</strong> write <code>self.name = ...</code>; plain <code>name = ...</code> creates a local variable.</li>
            <li><code>def self.from_csv_line(line)</code> defines a <strong>class method</strong>, called as <code>BankAccount.from_csv_line(...)</code>. Good for alternative constructors.</li>
            <li>Methods after <code>private</code> can only be called from inside the object, without an explicit receiver. <code>protected</code> methods can also be called on <em>other</em> objects of the same class (useful for comparisons).</li>
            <li>To count objects, use a class-level instance variable: set <code>@count = 0</code> in the class body and read it from class methods. Avoid <code>@@class_variables</code>: they are shared with every subclass and cause surprises.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>class Student
          attr_reader :name, :marks

          @count = 0
          def self.count = @count
          def self.added = @count += 1

          def self.from_text(text)
            name, marks = text.split(":")
            new(name, Integer(marks))
          end

          def initialize(name, marks)
            @name = name
            self.marks = marks
            Student.added
          end

          def marks=(value)
            raise ArgumentError, "marks must be 0-100" unless (0..100).cover?(value)
            @marks = value
          end

          def passed? = marks &gt;= pass_mark
          def to_s = "#{name} (#{marks})"

          private

          def pass_mark = 40
        end

        s1 = Student.new("Asha", 91)
        s2 = Student.from_text("Ravi:35")
        puts s1
        puts "#{s2} passed? #{s2.passed?}"
        s2.marks = 55
        puts "#{s2} passed? #{s2.passed?}"
        puts Student.count
        begin
          s1.pass_mark
        rescue NoMethodError
          puts "pass_mark is private"
        end
        begin
          s1.marks = 120
        rescue ArgumentError =&gt; e
          puts e.message
        end
        p s1.instance_variables</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>Asha (91)
        Ravi (35) passed? false
        Ravi (55) passed? true
        2
        pass_mark is private
        marks must be 0-100
        [:@name, :@marks]</code></pre></div>
          <p>The custom setter <code>marks=</code> guards the data both in <code>initialize</code> and later. The counter lives on the class object itself, so it is not shared with subclasses.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Writing <code>marks = value</code> inside a method and expecting the setter to run. Use <code>self.marks = value</code>.</li>
            <li>Misspelling <code>initialize</code> (for example <code>initialise</code>) — Ruby just treats it as a normal method and <code>new</code> raises <code>ArgumentError</code>.</li>
            <li>Reading an instance variable that was never set: <code>@nmae</code> silently gives <code>nil</code>. Prefer the reader method <code>name</code>, which raises <code>NameError</code> if you misspell it.</li>
            <li>Adding <code>attr_accessor</code> for everything. It lets any code change any field and skips your validation.</li>
            <li>Forgetting <code>to_s</code> — <code>puts obj</code> then prints something like <code>#&lt;Student:0x000...&gt;</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add a <code>transfer(amount, to:)</code> method to <code>BankAccount</code> that withdraws from this account and deposits into <code>to</code>, returning <code>false</code> (and changing nothing) if the withdrawal fails. Transfer ₹300 from Asha to Ravi and print both accounts and Asha's history.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Design objects around <em>behaviour</em>, not just data. Ask "what should this object be able to do?" (<code>deposit</code>, <code>withdraw</code>) before "what fields does it have?". When you only need a bundle of data, lesson 16's <code>Data</code> class is simpler.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 11: Classes and Objects

        class BankAccount
          attr_reader :owner, :balance

          def initialize(owner, balance = 0)
            @owner = owner
            @balance = balance
            @history = []
          end

          def deposit(amount)
            raise ArgumentError, "Deposit must be positive" unless amount.positive?
            @balance += amount
            log("deposit #{amount}")
            self                               # allows chaining
          end

          def withdraw(amount)
            if amount > @balance
              log("FAILED withdraw #{amount}")
              return false
            end
            @balance -= amount
            log("withdraw #{amount}")
            true
          end

          def self.open_with_bonus(owner) = new(owner, 100)   # class method
          def history = @history.dup           # a copy, so callers cannot change ours
          def to_s = "#{owner}: Rs #{balance}"

          private

          def log(message) = @history << message
        end

        acct = BankAccount.new("Asha", 1_000)
        acct.deposit(500).deposit(250)
        puts acct
        puts "Withdraw 2000 ok? #{acct.withdraw(2_000)}"
        puts "Withdraw 700 ok?  #{acct.withdraw(700)}"
        puts acct
        puts "History: #{acct.history.join(' | ')}"
        puts BankAccount.open_with_bonus("Ravi")
        begin
          acct.log("hack")
        rescue NoMethodError
          puts "log is private"
        end
      RUBY
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Inheritance and Polymorphism</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead"><strong>Inheritance</strong> lets a class reuse and extend another class: <code>class Car &lt; Vehicle</code>. <strong>Polymorphism</strong> means different objects answer the same method call in their own way — so one loop can handle many kinds of objects. Ruby adds <strong>duck typing</strong>: what matters is what an object can <em>do</em>, not what class it is.</p>
        </div>
        <div class="lc-section">
          <h2>Inheriting and Overriding</h2>
          <div class="lc-code-block"><pre><code>class Employee
          attr_reader :name, :salary
          def initialize(name, salary)
            @name = name
            @salary = salary
          end
          def monthly_pay = salary / 12
          def role = "Employee"
        end

        class Manager &lt; Employee            # Manager IS-AN Employee
          def initialize(name, salary, bonus)
            super(name, salary)             # run the parent's initialize
            @bonus = bonus
          end
          def monthly_pay = super + @bonus  # parent's result + extra
          def role = "Manager"              # override
        end</code></pre></div>
          <p>A Ruby class has exactly <strong>one</strong> parent (single inheritance). To share behaviour between unrelated classes, use modules (lesson 13).</p>
        </div>
        <div class="lc-section">
          <h2>The Three Forms of super</h2>
          <table class="lc-table">
            <thead><tr><th>You write</th><th>Arguments passed to the parent method</th></tr></thead>
            <tbody>
              <tr><td><code>super</code></td><td>The <strong>same</strong> arguments the current method received</td></tr>
              <tr><td><code>super()</code></td><td><strong>No</strong> arguments</td></tr>
              <tr><td><code>super(a, b)</code></td><td>Exactly <code>a</code> and <code>b</code></td></tr>
            </tbody>
          </table>
          <p>Bare <code>super</code> in the <code>Manager#initialize</code> above would pass three arguments to <code>Employee#initialize</code>, which only accepts two — an <code>ArgumentError</code>. That is why we wrote <code>super(name, salary)</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Method Lookup and Type Checks</h2>
          <p>When you call a method, Ruby searches the object's class, then its parent, and so on up the chain shown by <code>ancestors</code>. Every class ultimately inherits from <code>Object</code> (and <code>BasicObject</code>).</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th><code>m = Manager.new(...)</code></th></tr></thead>
            <tbody>
              <tr><td><code>m.is_a?(Employee)</code></td><td><code>true</code> — any ancestor counts</td></tr>
              <tr><td><code>m.instance_of?(Employee)</code></td><td><code>false</code> — exact class only</td></tr>
              <tr><td><code>Manager.superclass</code></td><td><code>Employee</code></td></tr>
              <tr><td><code>m.respond_to?(:monthly_pay)</code></td><td><code>true</code> — the duck-typing check</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>class Shape
          def area = raise(NotImplementedError, "#{self.class} must define area")
          def to_s = "#{self.class.name.downcase} with area #{area.round(2)}"
        end

        class Circle &lt; Shape
          def initialize(r) = @r = r
          def area = 3.14159 * @r**2
        end

        class Rect &lt; Shape
          def initialize(w, h)
            @w, @h = w, h
          end
          def area = @w * @h
        end

        class Square &lt; Rect
          def initialize(side) = super(side, side)
        end

        shapes = [Circle.new(1), Rect.new(2, 3), Square.new(4)]
        shapes.each { |s| puts s }
        p Square.ancestors.take(4)
        p Square.new(2).is_a?(Rect)
        begin
          Shape.new.area
        rescue NotImplementedError =&gt; e
          puts e.message
        end

        class Invoice                     # not a Shape at all
          def to_s = "invoice for Rs 500"
        end
        [Circle.new(2), Invoice.new].each { |x| puts "Printing: #{x}" }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>circle with area 3.14
        rect with area 6
        square with area 16
        [Square, Rect, Shape, Object]
        true
        Shape must define area
        Printing: circle with area 12.57
        Printing: invoice for Rs 500</code></pre></div>
          <p>The last loop is duck typing: <code>puts</code> and interpolation only need <code>to_s</code>, so an <code>Invoice</code> works even though it is not a <code>Shape</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Writing bare <code>super</code> when the parent takes different arguments. Use <code>super(...)</code> with the right values, or <code>super()</code> for none.</li>
            <li>Forgetting to call <code>super</code> in a child's <code>initialize</code>, so the parent's instance variables are never set (they read as <code>nil</code>).</li>
            <li>Checking classes everywhere: <code>if x.is_a?(Circle) ... elsif x.is_a?(Rect)</code>. Give each class the method and just call it — that is polymorphism.</li>
            <li>Building deep inheritance trees for code reuse. If the child is not truly a kind of the parent ("is-a"), prefer composition (an object that <em>has</em> another object) or a module.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add an <code>Intern</code> class that inherits from <code>Employee</code>, has a fixed stipend instead of a salary, and overrides <code>monthly_pay</code> and <code>role</code>. Add an intern to the <code>staff</code> array and check that the payroll loop works without any changes.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> A good test for inheritance is the sentence "a <em>Child</em> is a kind of <em>Parent</em>". "A Manager is a kind of Employee" works. "A Car is a kind of Engine" does not — a car <em>has</em> an engine.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 12: Inheritance and Polymorphism

        class Employee
          attr_reader :name, :salary
          def initialize(name, salary)
            @name = name
            @salary = salary
          end

          def monthly_pay = salary / 12
          def role = "Employee"
          def to_s = "#{name.ljust(6)} #{role.ljust(9)} Rs #{monthly_pay}"
        end

        class Manager < Employee
          def initialize(name, salary, bonus)
            super(name, salary)              # pass exactly what the parent needs
            @bonus = bonus
          end

          def monthly_pay = super + @bonus   # parent's result + bonus
          def role = "Manager"
        end

        class Contractor < Employee
          def initialize(name, hours, rate)
            super(name, 0)
            @hours, @rate = hours, rate
          end

          def monthly_pay = @hours * @rate
          def role = "Contract"
        end

        staff = [
          Employee.new("Asha", 600_000),
          Manager.new("Ravi", 1_200_000, 10_000),
          Contractor.new("Meena", 80, 700)
        ]

        puts "=== Payroll (one loop, many classes) ==="
        staff.each { |person| puts person }
        puts "Total: Rs #{staff.sum(&:monthly_pay)}"

        puts "=== Type checks ==="
        ravi = staff[1]
        p Manager.ancestors.take(3)
        puts "Ravi is_a? Employee: #{ravi.is_a?(Employee)}"
        puts "Ravi instance_of? Employee: #{ravi.instance_of?(Employee)}"
        puts "Everyone responds to monthly_pay? #{staff.all? { |s| s.respond_to?(:monthly_pay) }}"
      RUBY
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Modules and Mixins</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>module</strong> is a container for methods and constants that cannot create objects. Modules have two big jobs: <strong>namespacing</strong> (grouping related names so they do not clash) and <strong>mixins</strong> (sharing behaviour between classes that are not related by inheritance).</p>
        </div>
        <div class="lc-section">
          <h2>Modules as Namespaces</h2>
          <div class="lc-code-block"><pre><code>module Payments
          GST_RATE = 0.18

          class Upi
            def pay(amount) = "Paid Rs #{amount} by UPI"
          end

          def self.with_gst(amount) = (amount * (1 + GST_RATE)).round(2)
        end

        Payments::Upi.new.pay(100)    # "Paid Rs 100 by UPI"
        Payments.with_gst(100)        # 118.0
        Payments::GST_RATE            # 0.18</code></pre></div>
          <p><code>::</code> reaches inside a module. Rails apps use namespaces everywhere, for example <code>Admin::UsersController</code>.</p>
        </div>
        <div class="lc-section">
          <h2>include, extend and prepend</h2>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Module methods become…</th><th>Position in <code>ancestors</code></th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td><code>include</code></td><td>instance methods</td><td>just <strong>after</strong> the class</td><td>Share behaviour (most common)</td></tr>
              <tr><td><code>extend</code></td><td>methods on that one object / class</td><td>not in the class's chain</td><td>Add class-level helpers</td></tr>
              <tr><td><code>prepend</code></td><td>instance methods that run <strong>before</strong> the class's own</td><td>just <strong>before</strong> the class</td><td>Wrap a method (logging, timing) and call <code>super</code></td></tr>
            </tbody>
          </table>
          <p>A class can include many modules, which is how Ruby gets most of the benefits of multiple inheritance without its problems. The mixed-in methods can call methods the class provides — for example a module can use <code>name</code> if every including class defines <code>name</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Refinements: Safer Monkey Patching</h2>
          <p>Ruby lets you reopen any class, even <code>String</code>, and add methods. Doing that globally ("monkey patching") can break other code. A <strong>refinement</strong> limits the change to the files that opt in with <code>using</code>:</p>
          <div class="lc-code-block"><pre><code>module RupeeFormat
          refine Integer do
            def to_rupees = "Rs #{self.to_s.reverse.scan(/\d{1,3}/).join(',').reverse}"
          end
        end

        using RupeeFormat          # active from here to the end of this file
        1500000.to_rupees          # "Rs 1,500,000"</code></pre></div>
          <p>Refinements are an advanced tool; most code never needs them. Prefer a plain helper method first.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>module Greetable
          def greet = "Namaste, I am #{name}"
        end

        module Loud
          def greet = super.upcase + "!"
        end

        class Student
          include Greetable
          attr_reader :name
          def initialize(name) = @name = name
        end

        class Robot
          include Greetable
          prepend Loud
          def name = "R2"
        end

        module Counter
          def instances = @instances ||= 0
          def track! = @instances = instances + 1
        end

        class Ticket
          extend Counter
          def initialize = self.class.track!
        end

        puts Student.new("Asha").greet
        puts Robot.new.greet
        p Robot.ancestors.take(3)
        3.times { Ticket.new }
        puts Ticket.instances
        p Student.include?(Greetable)
        p Ticket.respond_to?(:track!)</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>Namaste, I am Asha
        NAMASTE, I AM R2!
        [Loud, Robot, Greetable]
        3
        true
        true</code></pre></div>
          <p>Because <code>Loud</code> is prepended, Ruby finds <code>Loud#greet</code> first; its <code>super</code> continues to <code>Greetable#greet</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Calling <code>Greetable.new</code> — you cannot create objects from a module. Only classes make instances.</li>
            <li>Using <code>include</code> when you wanted class methods (<code>Ticket.instances</code>). Class-level helpers need <code>extend</code>.</li>
            <li>Defining module methods with <code>def self.x</code> and expecting <code>include</code> to share them — <code>self.</code> methods stay on the module itself.</li>
            <li>Monkey patching core classes globally (<code>class String; def ...</code>) in application code. Use a helper method, a refinement, or your own class.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write a module <code>Taxable</code> with a method <code>price_with_gst</code> that uses the including class's <code>price</code> and <code>Payments::GST_RATE</code>. Include it in <code>Book</code> only, print the price with GST for a ₹450 book, and check the result of <code>Book.include?(Taxable)</code> and <code>Course.include?(Taxable)</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Ruby's own library is built from mixins. <code>Array</code> includes <code>Enumerable</code>, <code>Integer</code> includes <code>Comparable</code>. In the next lesson you will include these two modules in your own classes.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 13: Modules and Mixins

        module Payments                      # namespace for related code
          GST_RATE = 0.18
          def self.with_gst(amount) = (amount * (1 + GST_RATE)).round(2)
        end

        module Discountable                  # mixin: needs a `price` method
          def discounted_price(percent) = (price * (100 - percent) / 100.0).round(2)
        end

        module Audited                       # prepended wrapper
          def discounted_price(percent)
            result = super                   # call the original method
            puts "  [audit] #{self.class}: #{percent}% off -> #{result}"
            result
          end
        end

        module Registry                      # used with extend
          def all = (@all ||= [])
        end

        class Book
          include Discountable
          extend Registry
          attr_reader :price
          def initialize(price) = @price = price
        end

        class Course
          include Discountable
          prepend Audited
          def price = 4_999
        end

        puts "=== Namespace ==="
        puts "With GST: #{Payments.with_gst(250)} (rate #{Payments::GST_RATE})"

        puts "=== include and prepend ==="
        puts Book.new(450).discounted_price(10)
        puts Course.new.discounted_price(20)
        p Course.ancestors.take(3)

        puts "=== extend: class-level helper ==="
        Book.all << "Wings of Fire" << "Malgudi Days"
        p Book.all
        p Book.singleton_class.include?(Registry)
        p Book.include?(Registry)            # extend is not include
      RUBY
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Comparable and Enumerable Mixins</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Ruby's two most famous mixins give your classes superpowers in exchange for <strong>one method each</strong>. Define <code>&lt;=&gt;</code> and include <code>Comparable</code> to get <code>&lt;</code>, <code>&gt;</code>, <code>between?</code>, <code>clamp</code> and sorting. Define <code>each</code> and include <code>Enumerable</code> to get <code>map</code>, <code>select</code>, <code>sort_by</code>, <code>sum</code> and 50+ more.</p>
        </div>
        <div class="lc-section">
          <h2>The Spaceship Operator</h2>
          <p><code>a &lt;=&gt; b</code> returns <code>-1</code> if <code>a</code> is smaller, <code>0</code> if equal, <code>1</code> if larger, and <code>nil</code> if they cannot be compared.</p>
          <div class="lc-code-block"><pre><code>1 &lt;=&gt; 2        # -1
        "b" &lt;=&gt; "a"    # 1
        5 &lt;=&gt; 5        # 0
        5 &lt;=&gt; "5"      # nil
        [1, 9] &lt;=&gt; [2, 0]   # -1  (arrays compare item by item)</code></pre></div>
          <p>The array trick is handy: to compare by several fields, return <code>[major, minor] &lt;=&gt; [other.major, other.minor]</code>.</p>
        </div>
        <div class="lc-section">
          <h2>What You Get for Free</h2>
          <table class="lc-table">
            <thead><tr><th>Include</th><th>You define</th><th>Ruby gives you</th></tr></thead>
            <tbody>
              <tr><td><code>Comparable</code></td><td><code>&lt;=&gt;(other)</code></td><td><code>&lt;</code> <code>&lt;=</code> <code>==</code> <code>&gt;</code> <code>&gt;=</code> <code>between?</code> <code>clamp</code>; plus <code>sort</code>, <code>min</code>, <code>max</code> on arrays of your objects</td></tr>
              <tr><td><code>Enumerable</code></td><td><code>each</code> (yield every item)</td><td><code>map</code> <code>select</code> <code>reject</code> <code>find</code> <code>sort_by</code> <code>min_by</code> <code>sum</code> <code>count</code> <code>group_by</code> <code>each_slice</code> <code>to_a</code> <code>include?</code> <code>first</code> <code>lazy</code> …</td></tr>
            </tbody>
          </table>
          <p><code>sort</code> and <code>max</code> on an Enumerable class also need its items to be comparable (for example Integers, or your own Comparable objects).</p>
        </div>
        <div class="lc-section">
          <h2>Writing a Good each</h2>
          <p>Your <code>each</code> should yield every item and return <code>self</code>. When called <strong>without</strong> a block, return an Enumerator with <code>return to_enum(:each) unless block_given?</code>. This makes <code>collection.each.with_index</code> and external iteration work, just like with arrays.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>class Version
          include Comparable
          attr_reader :parts
          def initialize(text) = @parts = text.split(".").map(&amp;:to_i)
          def &lt;=&gt;(other) = parts &lt;=&gt; other.parts
          def to_s = parts.join(".")
        end

        p "1.10.0" &lt; "1.9.2"        # String comparison: wrong answer!
        p Version.new("1.10.0") &gt; Version.new("1.9.2")
        list = %w[2.0.1 1.10.0 1.9.2].map { |t| Version.new(t) }
        puts list.sort.join(" &lt; ")
        puts list.max
        p Version.new("1.5").between?(Version.new("1.0"), Version.new("2.0"))

        class Playlist
          include Enumerable
          def initialize(*songs) = @songs = songs
          def each
            return to_enum(:each) unless block_given?
            @songs.each { |song| yield song }
            self
          end
        end

        mix = Playlist.new("Kesariya", "Naatu Naatu", "Jai Ho")
        p mix.map(&amp;:upcase)
        p mix.sort_by(&amp;:length)
        p mix.select { |s| s.include?(" ") }
        p mix.each.with_index(1).to_a.last
        p mix.include?("Jai Ho")</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>true
        true
        1.9.2 &lt; 1.10.0 &lt; 2.0.1
        2.0.1
        true
        ["KESARIYA", "NAATU NAATU", "JAI HO"]
        ["Jai Ho", "Kesariya", "Naatu Naatu"]
        ["Naatu Naatu", "Jai Ho"]
        ["Jai Ho", 3]
        true</code></pre></div>
          <p>Comparing version strings as text says <code>"1.10.0" &lt; "1.9.2"</code> (because <code>"1" &lt; "9"</code>). A <code>Version</code> class with <code>&lt;=&gt;</code> compares numbers and gets it right.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Defining <code>&lt;</code> and <code>&gt;</code> by hand. Define only <code>&lt;=&gt;</code> and include <code>Comparable</code>.</li>
            <li>Returning <code>true</code>/<code>false</code> from <code>&lt;=&gt;</code>. It must return a negative number, zero, a positive number, or <code>nil</code>.</li>
            <li>Including <code>Enumerable</code> but naming the method <code>each_item</code>. Enumerable only calls <code>each</code>.</li>
            <li>Returning the internal array from <code>each</code> or exposing it with a reader — callers can then change your collection. Yield items instead.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, create a <code>Student</code> class with <code>name</code> and <code>marks</code> that includes <code>Comparable</code> (higher marks first; break ties by name using the array trick). Then write a <code>Classroom</code> class that includes <code>Enumerable</code>. Print the topper with <code>max</code>, the full sorted list, and the names of students who scored 40 or more.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> This is the Ruby way of designing: implement a tiny <em>protocol</em> (<code>each</code>, <code>&lt;=&gt;</code>, <code>to_s</code>) and plug into everything the language already knows how to do with it.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 14: Comparable and Enumerable Mixins

        class Money
          include Comparable
          attr_reader :paise

          def initialize(paise) = @paise = paise
          def <=>(other) = paise <=> other.paise
          def +(other) = Money.new(paise + other.paise)
          def to_s = format("Rs %.2f", paise / 100.0)
        end

        puts "=== Comparable from one <=> method ==="
        a = Money.new(25_000)
        b = Money.new(9_900)
        puts "#{a} > #{b}? #{a > b}"
        puts "Equal? #{Money.new(100) == Money.new(100)}"
        puts "Max: #{[a, b, Money.new(50_000)].max}"
        puts "Clamp 500 to 100..300: #{Money.new(50_000).clamp(Money.new(10_000), Money.new(30_000))}"
        puts "Between? #{b.between?(Money.new(0), a)}"

        class Wallet
          include Enumerable

          def initialize = @items = []
          def add(money)
            @items << money
            self                           # return the wallet so calls can chain
          end

          def each
            return to_enum(:each) unless block_given?
            @items.each { |m| yield m }
            self
          end
        end

        puts "=== Enumerable from one each method ==="
        wallet = Wallet.new.add(a).add(b).add(Money.new(1_500))
        puts "Count: #{wallet.count}"
        puts "Sorted: #{wallet.sort.join(', ')}"
        puts "Smallest: #{wallet.min}"
        puts "Total: #{wallet.sum(Money.new(0))}"
        puts "Over Rs 100: #{wallet.select { |m| m > Money.new(10_000) }.join(', ')}"
        wallet.each.with_index(1) { |m, i| puts "  #{i}. #{m}" }
        p wallet.map(&:paise)
      RUBY
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Exception Handling</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">An <strong>exception</strong> is an object that signals "something went wrong" — dividing by zero, a missing hash key, invalid input. If nobody handles it, the program stops. With <code>begin/rescue</code> you can handle errors you expect, clean up with <code>ensure</code>, and define your own error classes for your business rules.</p>
        </div>
        <div class="lc-section">
          <h2>The Full Structure</h2>
          <div class="lc-code-block"><pre><code>begin
          # code that might fail
        rescue ZeroDivisionError, TypeError =&gt; e   # handle specific errors
          puts "Problem: #{e.message}"
        rescue ArgumentError
          puts "Bad argument"
        else
          puts "Runs only if NO exception happened"
        ensure
          puts "ALWAYS runs - close files, release locks"
        end</code></pre></div>
          <p>Inside a method you can skip <code>begin</code>: put <code>rescue</code> and <code>ensure</code> directly before the method's <code>end</code>. Blocks with <code>do ... end</code> allow this too.</p>
        </div>
        <div class="lc-section">
          <h2>The Exception Hierarchy</h2>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Raised when…</th></tr></thead>
            <tbody>
              <tr><td><code>Exception</code></td><td>Root of everything — <strong>never rescue this</strong>; it includes system signals and exit</td></tr>
              <tr><td>└ <code>StandardError</code></td><td>Normal program errors. Bare <code>rescue</code> catches this and its children</td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>ArgumentError</code></td><td>Wrong arguments, <code>Integer("abc")</code></td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>ZeroDivisionError</code></td><td><code>10 / 0</code> with integers</td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>KeyError</code> / <code>IndexError</code></td><td><code>hash.fetch(:missing)</code>, <code>[1].fetch(5)</code></td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>TypeError</code></td><td><code>1 + "2"</code></td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>NameError</code> → <code>NoMethodError</code></td><td>Unknown name; calling a method that does not exist (often on <code>nil</code>)</td></tr>
              <tr><td>&nbsp;&nbsp;└ <code>RuntimeError</code></td><td>Default for <code>raise "message"</code></td></tr>
            </tbody>
          </table>
          <p>Rescue the <strong>most specific</strong> class you can. Put specific <code>rescue</code> clauses before general ones, because Ruby uses the first one that matches.</p>
        </div>
        <div class="lc-section">
          <h2>Raising and Custom Errors</h2>
          <div class="lc-code-block"><pre><code>class InsufficientFundsError &lt; StandardError
          def initialize(needed)
            super("Need Rs #{needed} more")
          end
        end

        raise InsufficientFundsError.new(250)             # custom class
        raise ArgumentError, "amount must be positive"    # class + message
        raise "something odd"                             # RuntimeError</code></pre></div>
          <p>Inherit custom errors from <code>StandardError</code> (not <code>Exception</code>) so that normal <code>rescue</code> clauses can catch them. A bare <code>raise</code> inside <code>rescue</code> re-raises the current error after you have logged it.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>class InsufficientFundsError &lt; StandardError; end

        def withdraw(balance, amount)
          raise ArgumentError, "amount must be positive" unless amount.positive?
          raise InsufficientFundsError, "short by #{amount - balance}" if amount &gt; balance
          balance - amount
        end

        [[1000, 300], [1000, 1500], [1000, -5]].each do |bal, amt|
          puts "Left: #{withdraw(bal, amt)}"
        rescue InsufficientFundsError =&gt; e
          puts "Declined: #{e.message}"
        rescue ArgumentError =&gt; e
          puts "Invalid: #{e.message}"
        end

        def parse_age(text)
          Integer(text)
        rescue ArgumentError
          nil
        ensure
          puts "checked #{text.inspect}"
        end
        p parse_age("21")
        p parse_age("twenty")

        attempts = 0
        begin
          attempts += 1
          raise IOError, "network busy" if attempts &lt; 3
          puts "Connected after #{attempts} attempts"
        rescue IOError
          retry if attempts &lt; 3
        end

        p Integer("x", exception: false)
        p InsufficientFundsError.ancestors.take(3)</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>Left: 700
        Declined: short by 500
        Invalid: amount must be positive
        checked "21"
        21
        checked "twenty"
        nil
        Connected after 3 attempts
        nil
        [InsufficientFundsError, StandardError, Exception]</code></pre></div>
          <p><code>retry</code> runs the <code>begin</code> block again. Always limit retries with a counter, or you may loop forever.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li><code>rescue Exception</code> — it also catches <code>Interrupt</code> (Ctrl+C) and <code>SystemExit</code>, making programs impossible to stop. Rescue <code>StandardError</code> or something more specific.</li>
            <li>Swallowing errors silently: <code>rescue =&gt; e; end</code> hides bugs. At least log <code>e.class</code> and <code>e.message</code>, or re-raise.</li>
            <li>Using exceptions for normal flow, like checking whether a key exists. Use <code>key?</code>, <code>fetch(key, default)</code> or <code>Integer(text, exception: false)</code>.</li>
            <li>Wrapping a huge block in one <code>begin/rescue</code>. Keep the protected code small so you know exactly which line can fail.</li>
            <li>Inheriting custom errors from <code>Exception</code> — a plain <code>rescue</code> will not catch them.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write <code>safe_divide(a, b)</code> that returns the result, or the string <code>"cannot divide by zero"</code> when <code>b</code> is 0, and always prints <code>"done"</code> from an <code>ensure</code>. Then create an <code>InvalidMarksError</code> and raise it from a method when marks are outside 0–100.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> For a library or app, create one base error (<code>class MyApp::Error &lt; StandardError</code>) and inherit all your custom errors from it. Callers can then rescue everything from your code with a single <code>rescue MyApp::Error</code>.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 15: Exception Handling

        module Bank
          class Error < StandardError; end                 # base error for our code
          class InsufficientFunds < Error
            def initialize(short_by) = super("Insufficient funds: short by Rs #{short_by}")
          end
          class InvalidAmount < Error; end
        end

        def withdraw(balance, amount)
          raise Bank::InvalidAmount, "Amount must be positive, got #{amount}" unless amount.positive?
          raise Bank::InsufficientFunds.new(amount - balance) if amount > balance
          balance - amount
        end

        puts "=== Custom errors ==="
        [300, 1_500, -20].each do |amount|
          puts "Withdraw #{amount}: left Rs #{withdraw(1_000, amount)}"
        rescue Bank::InsufficientFunds => e
          puts "Declined -> #{e.message}"
        rescue Bank::Error => e                            # catches any other Bank error
          puts "#{e.class} -> #{e.message}"
        end

        puts "=== Built-in errors ==="
        tests = [-> { 10 / 0 }, -> { Integer("12a") }, -> { { a: 1 }.fetch(:b) }, -> { 5 + "5" }]
        tests.each do |code|
          code.call
        rescue ZeroDivisionError, ArgumentError, KeyError, TypeError => e
          puts "#{e.class.name.ljust(17)} #{e.message}"
        end

        puts "=== else and ensure ==="
        def read_marks(text)
          marks = Integer(text)
        rescue ArgumentError
          puts "  not a number: #{text.inspect}"
        else
          puts "  valid: #{marks}"
        ensure
          puts "  finished #{text.inspect}"
        end
        read_marks("88")
        read_marks("eighty")

        puts "=== Hierarchy ==="
        p Bank::InsufficientFunds.ancestors.take(4)
        puts "Bank::Error rescues InvalidAmount? #{Bank::InvalidAmount < Bank::Error}"
      RUBY
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Struct and Data</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Many objects are mostly <strong>a few named values</strong>: a point, an order line, an API response. Writing a full class with <code>initialize</code> and readers for each is repetitive. <code>Struct</code> and <code>Data</code> build such classes in one line — <code>Data</code> (Ruby 3.2+) makes <strong>immutable value objects</strong>, which is the modern default.</p>
        </div>
        <div class="lc-section">
          <h2>Data.define: Immutable Values</h2>
          <div class="lc-code-block"><pre><code>Point = Data.define(:x, :y)

        a = Point.new(x: 1, y: 2)     # keyword arguments
        b = Point.new(1, 2)           # positional also works
        a == b                        # true  (compared by value)
        a.x                           # 1
        a.with(y: 5)                  # #&lt;data Point x=1, y=5&gt;  (a new copy)
        a.to_h                        # {x: 1, y: 2}
        # a.x = 10  -&gt; NoMethodError: Data has no setters
        # Point.new(x: 1) -&gt; ArgumentError: missing keyword: :y</code></pre></div>
          <p>You can add methods in a block: <code>Point = Data.define(:x, :y) do ... end</code>. To validate or set defaults, override <code>initialize</code> with keyword arguments and call <code>super</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Struct: Mutable Records</h2>
          <div class="lc-code-block"><pre><code>Item = Struct.new(:name, :price, :qty)
        line = Item.new("Pen", 10, 3)       # positional
        line = Item.new(name: "Pen", price: 10, qty: 3)   # keywords (Ruby 3.2+)
        line.qty += 1                       # setters exist
        line.to_a                           # ["Pen", 10, 4]
        Item.new("Pen")                     # missing members become nil!</code></pre></div>
          <p>Before Ruby 3.2 you needed <code>keyword_init: true</code> to pass keywords to a Struct; now both styles work by default.</p>
        </div>
        <div class="lc-section">
          <h2>Which One Should I Use?</h2>
          <table class="lc-table">
            <thead><tr><th></th><th><code>Hash</code></th><th><code>Struct</code></th><th><code>Data</code></th><th>Full <code>class</code></th></tr></thead>
            <tbody>
              <tr><td>Fixed, named fields</td><td>No</td><td>Yes</td><td>Yes</td><td>Yes</td></tr>
              <tr><td>Can change after creation</td><td>Yes</td><td>Yes</td><td><strong>No</strong></td><td>You decide</td></tr>
              <tr><td>Missing field</td><td>Just absent</td><td>Becomes <code>nil</code></td><td><code>ArgumentError</code></td><td>You decide</td></tr>
              <tr><td>Equality by value</td><td>Yes</td><td>Yes</td><td>Yes</td><td>Only if you define <code>==</code></td></tr>
              <tr><td>Best for</td><td>Loose data (JSON)</td><td>Quick mutable records, older code</td><td>Value objects: money, points, results</td><td>Objects with behaviour and state changes</td></tr>
            </tbody>
          </table>
          <p>Immutable values are easier to reason about: nobody can change a <code>Data</code> object behind your back, so you can safely share it and use it as a hash key.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>Money = Data.define(:paise) do
          def self.rupees(r) = new(paise: (r * 100).round)
          def +(other) = with(paise: paise + other.paise)
          def to_s = format("Rs %.2f", paise / 100.0)
        end

        LineItem = Data.define(:name, :price, :qty) do
          def initialize(name:, price:, qty: 1)
            raise ArgumentError, "qty must be positive" unless qty.positive?
            super
          end
          def total = Money.new(paise: price.paise * qty)
        end

        chai = LineItem.new(name: "Chai", price: Money.rupees(20))
        dosa = LineItem.new(name: "Dosa", price: Money.rupees(65.5), qty: 2)
        p chai
        puts dosa.total
        puts [chai, dosa].map(&amp;:total).reduce(:+)
        more = chai.with(qty: 3)
        puts "#{chai.qty} -&gt; #{more.qty}"
        p Money.rupees(20) == chai.price
        begin
          LineItem.new(name: "X", price: Money.rupees(1), qty: 0)
        rescue ArgumentError =&gt; e
          puts e.message
        end
        p chai.respond_to?(:qty=)

        Seat = Struct.new(:row, :number)
        s = Seat.new("F", 12)
        s.number = 14
        p s</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>#&lt;data LineItem name="Chai", price=#&lt;data Money paise=2000&gt;, qty=1&gt;
        Rs 131.00
        Rs 151.00
        1 -&gt; 3
        true
        qty must be positive
        false
        #&lt;struct Seat row="F", number=14&gt;</code></pre></div>
          <p>The custom <code>initialize</code> gives <code>qty</code> a default of 1 and rejects bad values, then <code>super</code> stores the fields. <code>with</code> returned a <em>new</em> item; <code>chai</code> itself never changed.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Trying to change a <code>Data</code> field (<code>item.qty = 2</code>) — there are no setters. Use <code>item.with(qty: 2)</code> to get an updated copy.</li>
            <li>Using <code>Struct</code> and forgetting a value: <code>Item.new("Pen")</code> silently sets <code>price</code> to <code>nil</code>. <code>Data</code> raises an error instead.</li>
            <li>Assuming "immutable" is deep: if a <code>Data</code> field holds an array, the array itself can still be changed. Freeze it, or store frozen values.</li>
            <li>Using <code>Data</code> for objects whose job is to change over time (a bank account, a game character). Use a normal class there.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, define <code>Coordinate = Data.define(:lat, :lng)</code> with a method <code>to_s</code> that prints <code>"12.97N, 77.59E"</code>. Create coordinates for Bengaluru and Chennai, check that two equal coordinates are <code>==</code>, and use them as keys in a hash of city names.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> <code>Data</code> and <code>Struct</code> objects work with pattern matching out of the box — <code>case point in {x: 0, y:}</code> — which is exactly what the next lesson covers.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 16: Struct and Data

        puts "=== Data: immutable value objects ==="
        Money = Data.define(:paise) do
          def self.rupees(amount) = new(paise: (amount * 100).round)
          def +(other) = with(paise: paise + other.paise)
          def to_s = format("Rs %.2f", paise / 100.0)
        end

        LineItem = Data.define(:name, :price, :qty) do
          def initialize(name:, price:, qty: 1)             # default + validation
            raise ArgumentError, "qty must be positive" unless qty.positive?
            super
          end
          def total = Money.new(paise: price.paise * qty)
        end

        cart = [
          LineItem.new(name: "Chai", price: Money.rupees(20), qty: 2),
          LineItem.new(name: "Vada Pav", price: Money.rupees(25.5)),
          LineItem.new(name: "Lassi", price: Money.rupees(40), qty: 3)
        ]
        cart.each { |item| puts "#{item.name.ljust(9)} x#{item.qty}  #{item.total}" }
        puts "Grand total: #{cart.map(&:total).reduce(:+)}"

        bigger = cart.first.with(qty: 5)
        puts "Original qty #{cart.first.qty}, copy qty #{bigger.qty}"
        puts "Equal by value? #{Money.rupees(20) == Money.new(paise: 2000)}"
        p cart.first.price
        p cart.first.price.to_h

        puts "Frozen? #{cart.first.frozen?}, has qty= setter? #{cart.first.respond_to?(:qty=)}"
        begin
          LineItem.new(name: "Tea", price: Money.rupees(10), qty: 0)
        rescue ArgumentError => e
          puts "ArgumentError: #{e.message}"
        end

        puts "=== Struct: mutable records ==="
        Seat = Struct.new(:row, :number)
        seat = Seat.new(row: "F", number: 12)
        seat.number += 2
        p seat
        p Seat.new("G")                                     # missing member -> nil
      RUBY
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Pattern Matching</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead"><strong>Pattern matching</strong> with <code>case/in</code> (stable since Ruby 3.0) checks the <em>shape</em> of data and pulls out the parts you need in one step. It shines when handling JSON-like hashes, API responses, commands and <code>Data</code> objects.</p>
        </div>
        <div class="lc-section">
          <h2>case/when vs case/in</h2>
          <table class="lc-table">
            <thead><tr><th></th><th><code>case/when</code> (lesson 4)</th><th><code>case/in</code></th></tr></thead>
            <tbody>
              <tr><td>Checks</td><td>One value with <code>===</code></td><td>The structure: types, keys, array length, nested values</td></tr>
              <tr><td>Binds variables</td><td>No</td><td>Yes — <code>in {name: String =&gt; name}</code> sets <code>name</code></td></tr>
              <tr><td>No branch matches</td><td>Returns <code>nil</code></td><td>Raises <code>NoMatchingPatternError</code> (add <code>else</code>)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Kinds of Patterns</h2>
          <table class="lc-table">
            <thead><tr><th>Pattern</th><th>Matches</th></tr></thead>
            <tbody>
              <tr><td><code>in Integer | Float</code></td><td>Any value where <code>Integer === v</code> or <code>Float === v</code></td></tr>
              <tr><td><code>in 0..17</code></td><td>A value inside the range</td></tr>
              <tr><td><code>in [x, y]</code></td><td>An array of <strong>exactly</strong> two items, binding <code>x</code> and <code>y</code></td></tr>
              <tr><td><code>in [first, *rest]</code></td><td>An array with at least one item</td></tr>
              <tr><td><code>in [*, 0, *]</code></td><td>"Find pattern": an array that contains 0 anywhere</td></tr>
              <tr><td><code>in {status: "ok", data:}</code></td><td>A hash with those keys (extra keys allowed), binding <code>data</code></td></tr>
              <tr><td><code>in {name: String =&gt; n}</code></td><td>Check the type <strong>and</strong> bind the value to <code>n</code></td></tr>
              <tr><td><code>in {id:, **nil}</code></td><td>A hash with only the key <code>:id</code></td></tr>
              <tr><td><code>in ^expected</code></td><td>"Pin": compare with an existing variable instead of binding a new one</td></tr>
              <tr><td><code>in Point(x:, y:)</code></td><td>A <code>Point</code> object (Data/Struct) with its fields bound</td></tr>
              <tr><td><code>in [x, y] if x == y</code></td><td>Guard: the pattern matches <strong>and</strong> the condition is true</td></tr>
            </tbody>
          </table>
          <p>Hash patterns only work with <strong>symbol keys</strong>. Parse JSON with <code>symbolize_names: true</code> before matching (lesson 18).</p>
        </div>
        <div class="lc-section">
          <h2>One-Line Forms</h2>
          <ul class="lc-list">
            <li><code>value in pattern</code> returns <code>true</code>/<code>false</code>: <code>config in {debug: true}</code>.</li>
            <li><code>value =&gt; pattern</code> destructures and raises <code>NoMatchingPatternError</code> if it does not fit: <code>user =&gt; {name:, city:}</code> creates <code>name</code> and <code>city</code>.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>def describe(response)
          case response
          in {status: 200, body: {items: []}}
            "OK, but no items"
          in {status: 200, body: {items: [first, *rest]}}
            "OK: #{first} and #{rest.size} more"
          in {status: 404 | 410}
            "Not found"
          in {status: 500.. =&gt; code}
            "Server error #{code}"
          in {error: String =&gt; msg}
            "Error: #{msg}"
          else
            "Unknown response"
          end
        end

        puts describe({ status: 200, body: { items: [] } })
        puts describe({ status: 200, body: { items: %w[pen ink cap] } })
        puts describe({ status: 410 })
        puts describe({ status: 503, retry: true })
        puts describe({ error: "timeout" })
        puts describe([1, 2])

        Point = Data.define(:x, :y)
        [Point.new(x: 0, y: 0), Point.new(x: 0, y: 5), Point.new(x: 3, y: 3)].each do |pt|
          label = case pt
                  in {x: 0, y: 0} then "origin"
                  in {x: 0, y:} then "on the y-axis at #{y}"
                  in Point(x:, y:) if x == y then "on the diagonal"
                  end
          puts label
        end

        expected = "admin"
        is_admin = ({ role: "admin" } in { role: ^expected })
        p is_admin
        user = { name: "Asha", city: "Pune", age: 20 }
        user =&gt; { name:, city: }
        puts "#{name} from #{city}"</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>OK, but no items
        OK: pen and 2 more
        Not found
        Server error 503
        Error: timeout
        Unknown response
        origin
        on the y-axis at 5
        on the diagonal
        true
        Asha from Pune</code></pre></div>
          <p>Notice that <code>{status: 503, retry: true}</code> matched <code>{status: 500.. =&gt; code}</code> even with the extra <code>retry</code> key, and the order of <code>in</code> branches matters: the empty-items case is checked first.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting <code>else</code>: if nothing matches, <code>case/in</code> raises <code>NoMatchingPatternError</code> instead of returning <code>nil</code>.</li>
            <li>Writing <code>in {name: name}</code> expecting to compare with an existing <code>name</code> variable — it <em>binds</em> a new value. Use <code>^name</code> to compare.</li>
            <li>Matching string-keyed hashes (<code>{"status" =&gt; 200}</code>) with hash patterns — only symbol keys work.</li>
            <li>Expecting array patterns to allow extra items: <code>[1, 2, 3] in [a, b]</code> is <code>false</code>. Use <code>[a, b, *]</code>.</li>
            <li>Mixing <code>when</code> and <code>in</code> branches in the same <code>case</code> — that is a syntax error.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write <code>handle(command)</code> for a tiny chat bot that receives arrays like <code>["greet", "Asha"]</code>, <code>["add", 2, 3]</code>, <code>["add", *numbers]</code> and <code>["quit"]</code>. Use array patterns with <code>Integer</code> checks, and return a helpful message for anything unknown.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Your own classes can support hash patterns by defining <code>deconstruct_keys(keys)</code> (return a hash) and array patterns by defining <code>deconstruct</code> (return an array). <code>Data</code> and <code>Struct</code> already define both.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 17: Pattern Matching

        def handle(command)
          case command
          in ["greet", String => name]
            "Namaste, #{name}!"
          in ["add", Integer => a, Integer => b]
            "#{a} + #{b} = #{a + b}"
          in ["add", *numbers] if numbers.all?(Integer) && numbers.any?
            "Sum of #{numbers.size} numbers = #{numbers.sum}"
          in ["quit"]
            "Goodbye"
          in [String => cmd, *]
            "Unknown command: #{cmd}"
          else
            "Not a command"
          end
        end
        puts "=== Array patterns ==="
        [["greet", "Asha"], ["add", 2, 3], ["add", 1, 2, 3, 4], ["add", "x"],
         ["quit"], ["dance", 1], 42].each { |cmd| puts "#{cmd.inspect.ljust(20)} -> #{handle(cmd)}" }

        puts "=== Hash patterns (JSON-like data) ==="
        orders = [
          { id: 1, status: "paid", items: [{ name: "Pen", qty: 2 }] },
          { id: 2, status: "paid", items: [] },
          { id: 3, status: "refunded", reason: "damaged" },
          { id: 4, status: "pending", total: 1200 }
        ]
        orders.each do |order|
          message = case order
                    in { status: "paid", items: [{ name: }, *] } then "paid, first item #{name}"
                    in { status: "paid", items: [] }            then "paid but empty!"
                    in { status: "refunded", reason: }          then "refunded (#{reason})"
                    in { total: 1000.. => total }               then "big pending order: #{total}"
                    end
          puts "Order #{order[:id]}: #{message}"
        end

        puts "=== Data objects, pin and one-line forms ==="
        Point = Data.define(:x, :y)
        pt = Point.new(x: 0, y: 7)
        case pt
        in Point(x: 0, y:) then puts "On the y-axis at y=#{y}"
        end
        target = 7
        puts "y is the target? #{pt in { y: ^target }}"
        config = { db: { host: "localhost", port: 5432 } }
        config => { db: { host:, port: } }
        puts "Connecting to #{host}:#{port}"
      RUBY
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">JSON, Files and the Standard Library</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Ruby ships with a large <strong>standard library</strong>: JSON, dates and times, sets, hashing and more. You load most of it with <code>require</code>. This lesson shows the pieces you will use in almost every real program, including reading and writing files.</p>
        </div>
        <div class="lc-section">
          <h2>Core, Default Gems and Bundled Gems</h2>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Examples</th><th>How to use it</th></tr></thead>
            <tbody>
              <tr><td>Core</td><td><code>String</code>, <code>Array</code>, <code>Hash</code>, <code>File</code>, <code>Time</code></td><td>Always available</td></tr>
              <tr><td>Autoloaded / core since 4.0</td><td><code>Set</code></td><td>No <code>require</code> needed since Ruby 3.2 (it became a core class in Ruby 4.0)</td></tr>
              <tr><td>Default gems</td><td><code>json</code>, <code>date</code>, <code>time</code>, <code>digest</code>, <code>securerandom</code></td><td><code>require "json"</code> — installed with Ruby</td></tr>
              <tr><td>Bundled gems</td><td><code>csv</code>, <code>bigdecimal</code>, <code>base64</code> (since Ruby 3.4), <code>minitest</code></td><td>Installed with Ruby, but in a Bundler project you must add them to your <code>Gemfile</code> (for example <code>gem "csv"</code>)</td></tr>
              <tr><td>Other gems</td><td><code>rails</code>, <code>nokogiri</code></td><td><code>gem install</code> or <code>bundle add</code></td></tr>
            </tbody>
          </table>
          <p><strong>Note for this editor:</strong> the in-browser Ruby 3.4 includes <code>json</code>, <code>csv</code>, <code>date</code>, <code>time</code>, <code>set</code>, <code>digest</code>, <code>securerandom</code> and more, but not <code>bigdecimal</code>, network access or files on your disk. Run the file examples on your own computer.</p>
        </div>
        <div class="lc-section">
          <h2>JSON</h2>
          <div class="lc-code-block"><pre><code>require "json"

        data = { name: "Asha", marks: [90, 85] }
        text = JSON.generate(data)        # '{"name":"Asha","marks":[90,85]}'
        data.to_json                      # same thing
        JSON.pretty_generate(data)        # indented, for humans

        JSON.parse(text)                           # {"name" =&gt; "Asha", "marks" =&gt; [90, 85]}
        JSON.parse(text, symbolize_names: true)    # {name: "Asha", marks: [90, 85]}</code></pre></div>
          <p><code>JSON.parse</code> gives <strong>string keys</strong> by default. Use <code>symbolize_names: true</code> when you want symbol keys, for example to use pattern matching.</p>
        </div>
        <div class="lc-section">
          <h2>CSV</h2>
          <p>CSV (comma-separated values) is how spreadsheets export data. Do not split lines on commas yourself — a value like <code>"Sharma, Priya"</code> contains a comma inside quotes. The <code>csv</code> library handles that correctly:</p>
          <div class="lc-code-block"><pre><code>require "csv"

        rows = CSV.parse(text, headers: true, header_converters: :symbol, converters: :integer)
        rows.map(&amp;:to_h)                 # [{name: "Asha", marks: 91}, ...]
        CSV.generate_line(["Ravi", 67])  # "Ravi,67\n"
        # On your computer: CSV.foreach("marks.csv", headers: true) { |row| ... }</code></pre></div>
          <p><code>headers: true</code> uses the first line as column names, <code>header_converters: :symbol</code> turns them into symbols, and <code>converters: :integer</code> turns number-looking values into Integers.</p>
        </div>
        <div class="lc-section">
          <h2>Files (on your own computer)</h2>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Code</th></tr></thead>
            <tbody>
              <tr><td>Read the whole file</td><td><code>File.read("notes.txt")</code></td></tr>
              <tr><td>Read lines without <code>\n</code></td><td><code>File.readlines("notes.txt", chomp: true)</code></td></tr>
              <tr><td>Process a big file line by line</td><td><code>File.foreach("log.txt") { |line| ... }</code></td></tr>
              <tr><td>Write (replace) / append</td><td><code>File.write("out.txt", text)</code> / <code>File.write("out.txt", text, mode: "a")</code></td></tr>
              <tr><td>Open with a block (auto-close)</td><td><code>File.open("out.txt", "w") { |f| f.puts "hi" }</code></td></tr>
              <tr><td>Check / list</td><td><code>File.exist?(path)</code>, <code>Dir.glob("data/*.json")</code></td></tr>
            </tbody>
          </table>
          <p>Always use the block form of <code>File.open</code>: the file is closed automatically, even if an exception happens inside the block. Missing files raise <code>Errno::ENOENT</code>.</p>
          <p>A file's content is just a string, so every string method works on it. The starter code uses a heredoc string in place of a file.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>require "json"
        require "csv"
        require "date"
        require "digest"

        report = &lt;&lt;~TEXT
          name,city,marks
          "Sharma, Priya",Pune,91
          Ravi,Delhi,67
        TEXT
        table = CSV.parse(report, headers: true, header_converters: :symbol, converters: :integer)
        students = table.map(&amp;:to_h)
        p students.first

        json = JSON.generate(students)
        puts json
        back = JSON.parse(json, symbolize_names: true)
        p back.sum { |s| s[:marks] }

        exam = Date.new(2026, 1, 26)
        puts exam.strftime("%A, %d %B %Y")
        puts (Date.new(2026, 12, 25) - exam).to_i
        puts exam &gt;&gt; 1

        tags = Set.new(%w[ruby rails ruby])
        tags &lt;&lt; "json"
        p tags.to_a.sort
        puts Digest::SHA256.hexdigest("hello")[0, 12]</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>{name: "Sharma, Priya", city: "Pune", marks: 91}
        [{"name":"Sharma, Priya","city":"Pune","marks":91},{"name":"Ravi","city":"Delhi","marks":67}]
        158
        Monday, 26 January 2026
        333
        2026-02-26
        ["json", "rails", "ruby"]
        2cf24dba5fb0</code></pre></div>
          <p>The quoted name kept its comma, and <code>converters: :integer</code> made the marks real numbers, so <code>sum</code> works without conversion. <code>date &gt;&gt; 1</code> moves one month forward.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Reading <code>data[:name]</code> after a plain <code>JSON.parse</code> — the keys are strings, so you get <code>nil</code>. Use <code>data["name"]</code> or <code>symbolize_names: true</code>.</li>
            <li>Forgetting <code>require "json"</code> and getting <code>NoMethodError: undefined method 'to_json'</code>.</li>
            <li>Opening files without a block and forgetting <code>close</code>. Prefer <code>File.open(...) { }</code>, <code>File.read</code> or <code>File.write</code>.</li>
            <li>Using <code>File.readlines</code> on a huge log file — it loads everything into memory. Use <code>File.foreach</code>.</li>
            <li>Splitting CSV lines with <code>line.split(",")</code> — it breaks on quoted values that contain commas. Use <code>CSV.parse</code>.</li>
            <li>On Ruby 3.4+, writing <code>require "csv"</code> in a Bundler project without adding <code>gem "csv"</code> to the Gemfile — it raises <code>LoadError</code>, because csv is now a bundled gem.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add a student whose name contains a comma (use quotes in the CSV text) and check that it is parsed correctly. Then print the students with 75 marks or more as pretty JSON with <code>JSON.pretty_generate</code>. Finally, print how many days are left from 25 September 2026 until your next birthday using <code>Date</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Before installing a gem, check the standard library. <code>Set</code>, <code>JSON</code>, <code>Date</code>, <code>Digest</code>, <code>SecureRandom</code> and <code>Time#iso8601</code> cover a surprising amount of everyday work.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 18: JSON, Files and the Standard Library
        require "json"
        require "csv"
        require "date"
        require "digest"
        require "securerandom"

        # In a real program: text = File.read("students.csv")
        text = <<~DATA
          name,city,marks,joined
          Asha,Pune,91,2025-07-01
          "Iyer, Ravi",Delhi,67,2024-07-15
          Meena,Chennai,78,2025-01-10
        DATA

        puts "=== Parse CSV text ==="
        table = CSV.parse(text, headers: true, header_converters: :symbol, converters: :integer)
        students = table.map { |row| row.to_h.merge(joined: Date.parse(row[:joined])) }
        students.each { |s| puts "#{s[:name].ljust(10)} #{s[:marks]}  joined #{s[:joined].strftime('%d %b %Y')}" }

        puts "=== JSON round trip ==="
        json = JSON.pretty_generate(students.map { |s| s.merge(joined: s[:joined].iso8601) })
        puts json.lines.first(7).join
        loaded = JSON.parse(json, symbolize_names: true)
        puts "Loaded #{loaded.size} records, first key: #{loaded.first.keys.first.inspect}"
        p JSON.parse('{"city": "Pune"}')        # string keys by default

        puts "=== Dates ==="
        today = Date.new(2026, 9, 25)           # fixed date so output never changes
        students.each do |s|
          puts "#{s[:name]} has been a member for #{(today - s[:joined]).to_i} days"
        end
        puts "Next month: #{today >> 1}, weekday: #{today.strftime('%A')}"

        puts "=== Set, Digest, SecureRandom ==="
        cities = Set.new(students.map { |s| s[:city] })
        cities << "Pune"                        # duplicates are ignored
        puts "Cities: #{cities.to_a.sort.join(', ')} (#{cities.size})"
        puts "SHA-256 of 'hello': #{Digest::SHA256.hexdigest('hello')[0, 16]}..."
        token = SecureRandom.hex(8)             # random each run
        puts "Random token length: #{token.length}"
      RUBY
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Testing with Minitest</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Professional Ruby code comes with <strong>automated tests</strong>: small programs that check your code gives the right answers. <strong>Minitest</strong> ships with Ruby as a bundled gem and is the default testing library in Rails. Tests let you change code with confidence — if something breaks, a test tells you at once.</p>
        </div>
        <div class="lc-section">
          <h2>A Minitest File</h2>
          <div class="lc-code-block"><pre><code># test/cart_test.rb
        require "minitest/autorun"
        require_relative "../lib/cart"

        class CartTest &lt; Minitest::Test
          def setup                      # runs before EVERY test
            @cart = Cart.new
          end

          def test_empty_cart_total_is_zero
            assert_equal 0, @cart.total
          end

          def test_total_adds_price_times_quantity
            @cart.add("Pen", 10, qty: 3)
            @cart.add("Book", 250)
            assert_equal 280, @cart.total
          end

          def test_rejects_negative_price
            assert_raises(ArgumentError) { @cart.add("Pen", -5) }
          end
        end</code></pre></div>
          <p>Each method whose name starts with <code>test_</code> is one test. Run the file with <code>ruby test/cart_test.rb</code>. In a Rails app you run <code>bin/rails test</code>; in a Bundler project add <code>gem "minitest"</code> to the Gemfile.</p>
        </div>
        <div class="lc-section">
          <h2>Reading the Output</h2>
          <p>Minitest prints a dot for each passing test, <code>F</code> for a failure and <code>E</code> for an unexpected exception. When a test fails you see something like this (the seed and timings change on every run):</p>
          <div class="lc-code-block"><pre><code>Run options: --seed 40312

        # Running:

        .F.

        Finished in 0.001204s, 2491.7 runs/s, 2491.7 assertions/s.

          1) Failure:
        CartTest#test_total_adds_price_times_quantity [test/cart_test.rb:17]:
        Expected: 280
          Actual: 260

        3 runs, 3 assertions, 1 failures, 0 errors, 0 skips</code></pre></div>
          <p>The <code>--seed</code> shows that Minitest runs tests in a <strong>random order</strong>. That catches tests that secretly depend on each other. Use the same seed (<code>--seed 40312</code>) to repeat a run exactly.</p>
        </div>
        <div class="lc-section">
          <h2>Assertions You Will Use Most</h2>
          <table class="lc-table">
            <thead><tr><th>Assertion</th><th>Passes when</th></tr></thead>
            <tbody>
              <tr><td><code>assert_equal expected, actual</code></td><td><code>expected == actual</code> (expected comes <strong>first</strong>)</td></tr>
              <tr><td><code>assert value</code> / <code>refute value</code></td><td>value is truthy / falsy</td></tr>
              <tr><td><code>assert_nil value</code></td><td>value is <code>nil</code></td></tr>
              <tr><td><code>assert_includes list, item</code></td><td><code>list.include?(item)</code></td></tr>
              <tr><td><code>assert_in_delta 0.3, 0.1 + 0.2, 0.001</code></td><td>floats are close enough</td></tr>
              <tr><td><code>assert_raises(KeyError) { ... }</code></td><td>the block raises that error (returns the exception so you can check its message)</td></tr>
              <tr><td><code>assert_match(/\d+/, text)</code></td><td>the text matches the regular expression</td></tr>
            </tbody>
          </table>
          <p>Minitest also has a spec style (<code>describe</code> / <code>it</code> / <code>_(x).must_equal y</code>). Another popular framework is <strong>RSpec</strong>; the ideas are the same.</p>
        </div>
        <div class="lc-section">
          <h2>Red, Green, Refactor</h2>
          <ul class="lc-list">
            <li><strong>Red</strong> — write a test for the behaviour you want. Run it and watch it fail.</li>
            <li><strong>Green</strong> — write the simplest code that makes it pass.</li>
            <li><strong>Refactor</strong> — clean up the code while the tests stay green.</li>
          </ul>
          <p>This rhythm is called test-driven development (TDD). Even if you do not always write tests first, test every bug you fix so it can never come back.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example: How assert_equal Works</h2>
          <p>The editor has no gems, but an assertion is just a method that raises when something is wrong. This tiny version shows the idea:</p>
          <div class="lc-code-block"><pre><code>class AssertionFailed &lt; StandardError; end

        def assert_equal(expected, actual)
          return true if expected == actual
          raise AssertionFailed, "Expected: #{expected.inspect}, Actual: #{actual.inspect}"
        end

        def add_gst(amount) = (amount * 1.18).round(2)

        [[118.0, 100], [59.0, 50], [20.0, 17]].each do |expected, input|
          assert_equal(expected, add_gst(input))
          puts "PASS add_gst(#{input})"
        rescue AssertionFailed =&gt; e
          puts "FAIL add_gst(#{input}): #{e.message}"
        end</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>PASS add_gst(100)
        PASS add_gst(50)
        FAIL add_gst(17): Expected: 20.0, Actual: 20.06</code></pre></div>
          <p>The third test has a wrong expectation. A failing test means <em>either</em> the code or the test is wrong — read both before changing anything.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Swapping the arguments: <code>assert_equal @cart.total, 280</code>. If the cart wrongly totals 260, the message then says "Expected: 260, Actual: 280", which is confusing. Expected value first.</li>
            <li>Testing floats with <code>assert_equal</code> after arithmetic — use <code>assert_in_delta</code>.</li>
            <li>Tests that depend on each other or on shared state. Build fresh objects in <code>setup</code>.</li>
            <li>Naming a method <code>check_total</code> instead of <code>test_total</code> — Minitest silently skips it.</li>
            <li>Only testing the "happy path". Also test edge cases: empty input, zero, negative numbers, missing keys.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, the starter contains a tiny test runner and a <code>Cart</code> class with one failing test. Read the failure message, decide whether the code or the test is wrong, and fix it. Then add two tests: one for <code>count</code> after adding items with quantities, and one checking that an empty cart has a total of 0.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Good test names read like specifications: <code>test_rejects_negative_price</code>, <code>test_total_includes_gst</code>. When one fails, the name alone tells you what broke.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 19: Testing with Minitest
        # No gems in the editor, so TinyTest imitates Minitest (on your computer: minitest/autorun).

        class Cart
          Item = Data.define(:name, :price, :qty)
          def initialize = @items = []
          def add(name, price, qty: 1)
            raise ArgumentError, "price must be positive" unless price.positive?
            @items << Item.new(name:, price:, qty:)
            self
          end
          def total = @items.sum { |item| item.price * item.qty }
          def count = @items.sum(&:qty)
        end

        module TinyTest
          class Failure < StandardError; end
          def assert_equal(expected, actual)
            return if expected == actual
            raise Failure, "Expected: #{expected.inspect}\n  Actual: #{actual.inspect}"
          end
          def assert_raises(error_class)
            yield
            raise Failure, "#{error_class} expected but nothing was raised"
          rescue error_class
          end
          def self.run(test_class)
            names = test_class.public_instance_methods(false).grep(/\Atest_/).sort
            failures = names.filter_map do |name|
              test = test_class.new
              test.setup
              test.public_send(name)
              print "."                          # print returns nil = no failure
            rescue Failure => e
              print "F"
              "#{test_class}##{name}:\n  #{e.message}"
            end
            puts "\n\n#{failures.join("\n\n")}" if failures.any?
            puts "\n#{names.size} runs, #{failures.size} failures"
          end
        end

        class CartTest
          include TinyTest
          def setup = @cart = Cart.new
          def test_total_multiplies_qty = assert_equal(30, @cart.add("Pen", 10, qty: 3).total)
          def test_total_of_two_items = assert_equal(290, @cart.add("Pen", 10, qty: 3).add("Book", 250).total)
          def test_rejects_negative_price = assert_raises(ArgumentError) { @cart.add("Pen", -5) }
        end
        TinyTest.run(CartTest)                   # one test fails on purpose - fix it!
      RUBY
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Capstone Project: Library Manager</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Time to combine everything. You will build a small <strong>library manager</strong> for a college library: load books from JSON, lend and return them, reject invalid actions with clear errors, and print a report. The finished starter is only 50 lines — because it uses the right Ruby tool at every step.</p>
        </div>
        <div class="lc-section">
          <h2>Project Brief</h2>
          <ul class="lc-list">
            <li>Load the catalogue from JSON text into immutable <code>Book</code> values.</li>
            <li>Keep books and loans inside a <code>Library</code> object; nobody outside may change them directly.</li>
            <li>Process a list of commands (<code>lend</code>, <code>return</code>, anything else) and print <code>OK</code>, <code>FAIL</code> or <code>SKIP</code> for each.</li>
            <li>Lending a missing or already-lent book, or returning a book that is not on loan, must raise a <code>Library::Error</code> that is turned into a <code>FAIL</code> line — the program never crashes.</li>
            <li>Print the catalogue sorted by year and a report of books on loan and on the shelf.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>How the Course Fits Together</h2>
          <table class="lc-table">
            <thead><tr><th>Part of the project</th><th>Ruby feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td><code># frozen_string_literal: true</code></td><td>Frozen string literals</td><td>3</td></tr>
              <tr><td><code>@books</code> and <code>@loans</code> hashes keyed by ISBN</td><td>Hashes, <code>key?</code>, <code>delete</code></td><td>7</td></tr>
              <tr><td><code>lend(isbn, to:)</code></td><td>Keyword arguments</td><td>8</td></tr>
              <tr><td><code>def each(&amp;) = @books.each_value(&amp;)</code></td><td>Blocks and block forwarding</td><td>9</td></tr>
              <tr><td><code>sort_by</code>, <code>group_by</code>, <code>max_by</code>, <code>count</code> on a <code>Library</code></td><td>Enumerable mixin</td><td>10, 14</td></tr>
              <tr><td><code>Library</code> class with private state</td><td>Classes and objects</td><td>11</td></tr>
              <tr><td><code>Library::Error &lt; StandardError</code></td><td>Custom exceptions, <code>rescue</code> in a method</td><td>15</td></tr>
              <tr><td><code>Book = Data.define(...)</code></td><td>Immutable value objects</td><td>16</td></tr>
              <tr><td><code>case command in {action: "lend", ...}</code></td><td>Pattern matching on hashes</td><td>17</td></tr>
              <tr><td><code>JSON.parse(..., symbolize_names: true)</code></td><td>Standard library</td><td>18</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Step by Step</h2>
          <ul class="lc-list">
            <li><strong>1. Model the data.</strong> A book never changes, so it is a <code>Data</code> value with a friendly <code>to_s</code>.</li>
            <li><strong>2. Build the collection.</strong> <code>Library</code> stores books in a hash for fast lookup by ISBN, defines <code>each</code>, and includes <code>Enumerable</code> — so sorting, counting and grouping come for free.</li>
            <li><strong>3. Enforce the rules.</strong> <code>lend</code> and <code>give_back</code> raise <code>Library::Error</code> with a message that explains exactly what went wrong.</li>
            <li><strong>4. Dispatch commands.</strong> <code>run</code> uses <code>case/in</code> to check each command's shape, calls the library, and rescues <code>Library::Error</code> into a <code>FAIL</code> line. Unknown actions fall into the last pattern.</li>
            <li><strong>5. Report.</strong> The main program parses JSON, loops over commands and prints the results.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Worked Example: The Enumerable Core</h2>
          <div class="lc-code-block"><pre><code>Book = Data.define(:isbn, :title, :author, :year)

        class Library
          include Enumerable
          def initialize = @books = {}
          def add(book) = @books[book.isbn] = book
          def each(&amp;) = @books.each_value(&amp;)
        end

        lib = Library.new
        lib.add(Book.new(isbn: "1", title: "Godan", author: "Premchand", year: 1936))
        lib.add(Book.new(isbn: "2", title: "Gitanjali", author: "Tagore", year: 1910))
        p lib.count
        p lib.map(&amp;:title)
        p lib.min_by(&amp;:year).title
        p lib.select { |b| b.year &gt; 1920 }.map(&amp;:isbn)
        p lib.first</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>2
        ["Godan", "Gitanjali"]
        "Gitanjali"
        ["1"]
        #&lt;data Book isbn="1", title="Godan", author="Premchand", year=1936&gt;</code></pre></div>
          <p>Three one-line methods turned <code>Library</code> into a full collection. The anonymous block parameter <code>&amp;</code> (Ruby 3.1+) forwards the caller's block straight to <code>each_value</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Expected Output of the Starter</h2>
          <div class="lc-code-block lc-output"><pre><code>=== Catalogue: 3 books, oldest first ===
          Malgudi Days by R. K. Narayan (1943)
          Wings of Fire by A. P. J. Abdul Kalam (1999)
          The White Tiger by Aravind Adiga (2008)
        === Commands ===
          OK   lent 111 to Asha
          FAIL 'Wings of Fire' is already lent to Asha
          FAIL No book with ISBN 999
          FAIL 222 was not on loan
          SKIP unknown action 'renew'
          OK   lent 333 to Meena
        === Report (newest: The White Tiger) ===
          on_loan: Wings of Fire, The White Tiger
          on_shelf: Malgudi Days</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Loading commands from JSON without <code>symbolize_names: true</code>. Hash patterns only match symbol keys, so no <code>in</code> branch would match and <code>run</code> would crash with <code>NoMatchingPatternError</code>.</li>
            <li>Rescuing <code>StandardError</code> in <code>run</code> instead of <code>Library::Error</code> — real bugs (like a typo causing <code>NoMethodError</code>) would be hidden as "FAIL" messages.</li>
            <li>Exposing <code>@loans</code> with <code>attr_accessor</code> so other code can edit loans directly and skip the rules in <code>lend</code>.</li>
            <li>Putting the most general pattern (<code>in {action:}</code>) first — it would match every command.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>Extend the project in the editor, one step at a time, running after each change:</p>
          <ul class="lc-list">
            <li>Add a <code>"search"</code> command with a <code>query</code> that lists titles containing the text (case-insensitive).</li>
            <li>Limit each member to 2 books at a time and raise a new <code>Library::LimitReached &lt; Library::Error</code>.</li>
            <li>Store a due date with each loan (<code>Date.new(2026, 9, 25) + 14</code>) and print overdue books with a fine of ₹5 per day.</li>
            <li>Add a <code>to_json</code> method that saves the library state, and on your own computer write it to a file and add Minitest tests for <code>lend</code> and <code>give_back</code>.</li>
          </ul>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Your next step is <strong>Ruby on Rails</strong>, where the same ideas appear everywhere: classes with validations, modules as concerns, blocks for callbacks, Enumerable on query results, and Minitest for tests. Put this project on GitHub with a README and tests — it is a great first portfolio piece.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # frozen_string_literal: true
        # Lesson 20: Capstone Project - Library Manager
        require "json"

        Book = Data.define(:isbn, :title, :author, :year) do
          def to_s = "#{title} by #{author} (#{year})"
        end

        class Library
          include Enumerable
          class Error < StandardError; end
          def initialize; @books = {}; @loans = {}; end   # @loans maps isbn => member name
          def add(book) = @books[book.isbn] = book
          def each(&) = @books.each_value(&)
          def report = group_by { |b| @loans.key?(b.isbn) ? :on_loan : :on_shelf }.transform_values { |bs| bs.map(&:title) }
          def lend(isbn, to:)
            raise Error, "No book with ISBN #{isbn}" unless @books.key?(isbn)
            raise Error, "'#{@books[isbn].title}' is already lent to #{@loans[isbn]}" if @loans.key?(isbn)
            @loans[isbn] = to
          end
          def give_back(isbn) = @loans.delete(isbn) || raise(Error, "#{isbn} was not on loan")
        end

        def run(library, command)
          case command
          in { action: "lend", isbn: String => isbn, member: String => member }
            library.lend(isbn, to: member)
            "OK   lent #{isbn} to #{member}"
          in { action: "return", isbn: String => isbn }
            library.give_back(isbn)
            "OK   #{isbn} returned"
          in { action: }
            "SKIP unknown action '#{action}'"
          end
        rescue Library::Error => e
          "FAIL #{e.message}"
        end

        books = '[{"isbn": "111", "title": "Wings of Fire", "author": "A. P. J. Abdul Kalam", "year": 1999},
          {"isbn": "222", "title": "Malgudi Days", "author": "R. K. Narayan", "year": 1943},
          {"isbn": "333", "title": "The White Tiger", "author": "Aravind Adiga", "year": 2008}]'
        commands = [{ action: "lend", isbn: "111", member: "Asha" }, { action: "lend", isbn: "111", member: "Ravi" },
                    { action: "lend", isbn: "999", member: "Dev" }, { action: "return", isbn: "222" },
                    { action: "renew", isbn: "333" }, { action: "lend", isbn: "333", member: "Meena" }]
        library = Library.new
        JSON.parse(books, symbolize_names: true).each { |attrs| library.add(Book.new(**attrs)) }
        puts "=== Catalogue: #{library.count} books, oldest first ===", library.sort_by(&:year).map { |b| "  #{b}" }
        puts "=== Commands ===", commands.map { |cmd| "  #{run(library, cmd)}" }
        puts "=== Report (newest: #{library.max_by(&:year).title}) ===",
             library.report.map { |status, titles| "  #{status}: #{titles.join(', ')}" }
      RUBY
    }
  }.freeze
end

module RubyContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Introduction to Ruby</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Ruby is a friendly programming language. <strong>Yukihiro "Matz" Matsumoto</strong> created it, and it was first released in 1995. Matz wanted Ruby to make programmers <em>happy</em>. Ruby code is short and easy to read. It often looks close to plain English.</p>
        </div>
        <div class="lc-section">
          <h2>Why Learn Ruby?</h2>
          <ul class="lc-list">
            <li><strong>Everything is an object</strong>: an object is a value that has its own methods (actions you can call on it). Even numbers, <code>true</code> and <code>nil</code> have methods.</li>
            <li><strong>Ruby on Rails</strong>: this web framework (a toolkit for building websites) is written in Ruby. GitHub, Shopify, Basecamp and thousands of start-ups use it.</li>
            <li><strong>Blocks and iterators</strong>: you can loop over (go through) data with short, clear code: <code>marks.each { |m| puts m }</code>.</li>
            <li><strong>Great tools</strong>: <code>irb</code> (interactive Ruby), plus <code>gem</code> and <code>bundler</code> for libraries (ready-made code you can use). Ruby also has a large community.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Which Ruby Version?</h2>
          <p>The newest stable version is <strong>Ruby 4.0</strong>. It came out in December 2025. The editor in this course runs <strong>Ruby 3.4</strong> right in your browser. Everything in this course works the same in 3.4 and 4.0. When a feature is new, the lesson tells you which version added it.</p>
          <p>On your own computer, you run a file with <code>ruby hello.rb</code>. You can also type <code>irb</code> to try code one line at a time.</p>
        </div>
        <div class="lc-section">
          <h2>Three Ways to Print</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it prints</th><th>Newline?</th><th>Best for</th></tr></thead>
            <tbody>
              <tr><td><code>puts</code></td><td>Friendly text (<code>to_s</code>)</td><td>Yes</td><td>Normal output for users</td></tr>
              <tr><td><code>print</code></td><td>Friendly text (<code>to_s</code>)</td><td>No</td><td>Many pieces on one line</td></tr>
              <tr><td><code>p</code></td><td>Developer view (<code>inspect</code>): shows quotes and <code>nil</code></td><td>Yes</td><td>Debugging (finding mistakes)</td></tr>
            </tbody>
          </table>
          <p><code>puts</code> prints each element of an array (a list of values) on its own line. For <code>nil</code>, it prints an empty line. <code>p</code> shows the value exactly as Ruby sees it.</p>
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
          <p>Look at the blank line. <code>puts nil</code> prints only a newline. But <code>p nil</code> prints the word <code>nil</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Everything Is an Object</h2>
          <p>In many languages, numbers are just "plain values". In Ruby, <code>7</code> is an object of class <code>Integer</code>. A class is the type of an object. So you can ask the number questions with methods:</p>
          <div class="lc-code-block"><pre><code>puts 7.even?        # false
        puts 10.to_s + "!"  # 10!
        puts 3.times.to_a.inspect   # [0, 1, 2]
        puts nil.class      # NilClass
        puts "abc".length   # 3</code></pre></div>
          <p>You do not need brackets when you call a method. <code>puts("hi")</code> and <code>puts "hi"</code> do the same thing. Ruby programmers usually leave them out for <code>puts</code> and similar commands.</p>
        </div>
        <div class="lc-section">
          <h2>Return Values</h2>
          <p>Every Ruby expression (a piece of code that makes a value) gives back a value. <code>puts</code> and <code>print</code> return <code>nil</code>. But <code>p</code> returns the object you gave it. So <code>p</code> is useful for quick debugging inside bigger expressions.</p>
          <div class="lc-code-block"><pre><code>x = p(5)    # prints 5
        y = puts 5  # prints 5
        p x         # 5
        p y         # nil</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting the quotes around text. With <code>puts Hello</code>, Ruby looks for a constant (a fixed named value) called <code>Hello</code>. It then raises (shows) a <code>NameError</code>.</li>
            <li>Using <code>print</code> and not knowing why everything is on one line. Add <code>"\n"</code> or use <code>puts</code>.</li>
            <li>Using <code>puts</code> to debug <code>nil</code> or empty strings. Both print a blank line. Use <code>p</code> to see the real value.</li>
            <li>Mixing up <code>puts "5" + 5</code> and <code>puts "5" + "5"</code>. The first is an error, because you cannot add a number to a string. The second prints <code>55</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add three lines. First, print your name with <code>puts</code>. Next, print your city and state on <em>one</em> line with two <code>print</code> calls. Then use <code>p</code> to show <code>"Ruby"</code> with its quotes. Last, print <code>2026.class</code> and <code>2026.odd?</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Not sure what a value is? Wrap it in <code>p</code>. Ruby developers use <code>p</code> a lot while debugging. Then they switch to <code>puts</code> for the final output.</p></div>
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
          <p class="lc-lead">A variable is a <strong>name that points to an object</strong>. Ruby is dynamically typed. This means you never write the type. The same name can later point to a different kind of object. In this lesson, you will also learn how Ruby numbers work and what <code>nil</code> really means.</p>
        </div>
        <div class="lc-section">
          <h2>Naming Rules</h2>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Looks like</th><th>Example</th><th>Visible in</th></tr></thead>
            <tbody>
              <tr><td>Local variable</td><td><code>snake_case</code></td><td><code>total_marks</code></td><td>The current method or block</td></tr>
              <tr><td>Instance variable</td><td>starts with <code>@</code></td><td><code>@name</code></td><td>One object (lesson 12)</td></tr>
              <tr><td>Constant</td><td>starts with a capital</td><td><code>GST_RATE</code></td><td>The class/module where it is defined</td></tr>
              <tr><td>Global variable</td><td>starts with <code>$</code></td><td><code>$debug</code></td><td>Everywhere (avoid these)</td></tr>
            </tbody>
          </table>
          <p>You can give a constant a new value, but Ruby prints a warning (<code>already initialized constant</code>). Treat constants as fixed values.</p>
        </div>
        <div class="lc-section">
          <h2>Integers and Floats</h2>
          <ul class="lc-list">
            <li><code>Integer</code>: whole numbers of <strong>any size</strong>. <code>2 ** 100</code> just works. Use underscores to make big numbers easy to read: <code>1_00_000</code> is 100000.</li>
            <li><code>Float</code>: decimal numbers such as <code>3.5</code>. Ruby stores them in binary, so some results are a little wrong. For example, <code>0.1 + 0.2</code> gives <code>0.30000000000000004</code>.</li>
            <li><code>Rational</code>: exact fractions such as <code>1/3r</code>. Use them when the answer must be exact.</li>
          </ul>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><code>7 / 2</code></td><td><code>3</code></td><td>Integer ÷ Integer removes the decimal part</td></tr>
              <tr><td><code>-7 / 2</code></td><td><code>-4</code></td><td>Integer division rounds <em>down</em> (to the smaller number)</td></tr>
              <tr><td><code>7.0 / 2</code> or <code>7.fdiv(2)</code></td><td><code>3.5</code></td><td>If one number is a Float, the result is a Float</td></tr>
              <tr><td><code>7 % 3</code></td><td><code>1</code></td><td>Remainder (what is left over, called modulo)</td></tr>
              <tr><td><code>17.divmod(5)</code></td><td><code>[3, 2]</code></td><td>Quotient (whole-number result) and remainder together</td></tr>
              <tr><td><code>3.14159.round(2)</code></td><td><code>3.14</code></td><td>Round to 2 decimal places</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Converting Between Types</h2>
          <p><code>to_i</code>, <code>to_f</code> and <code>to_s</code> are forgiving. They do not complain about bad text. <code>"42abc".to_i</code> is <code>42</code>, and <code>"abc".to_i</code> is <code>0</code>. Sometimes bad input should cause an error. Then use the strict versions <code>Integer("42")</code> and <code>Float("3.5")</code>. They raise <code>ArgumentError</code> for invalid text. Add <code>exception: false</code> to get <code>nil</code> instead.</p>
        </div>
        <div class="lc-section">
          <h2>nil and Truthiness</h2>
          <p><code>nil</code> means "no value". It is a real object of class <code>NilClass</code>. In conditions, <strong>only <code>nil</code> and <code>false</code> are falsy</strong> (count as false). Everything else is truthy (counts as true). This includes <code>0</code>, <code>""</code> and <code>[]</code>. Python and JavaScript work differently.</p>
          <p>The operator <code>||=</code> sets a value only when the variable is <code>nil</code> or <code>false</code>: <code>name ||= "Guest"</code>.</p>
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
            <li>Expecting <code>7 / 2</code> to be <code>3.5</code>. Make one side a Float, or use <code>fdiv</code>.</li>
            <li>Comparing floats with <code>==</code>. <code>0.1 + 0.2 == 0.3</code> is <code>false</code>. Round first, or use <code>Rational</code>.</li>
            <li>Using <code>"abc".to_i</code> to check input. It returns <code>0</code> without any warning. Use <code>Integer(text)</code> when you must catch invalid input.</li>
            <li>Writing <code>if count == 0</code> as <code>if count</code>. In Ruby, <code>0</code> is truthy, so this check always passes.</li>
            <li>Calling a method on <code>nil</code> by mistake. This raises <code>NoMethodError: undefined method ... for nil</code>. Check with <code>value.nil?</code> first.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>A shop sells a notebook for ₹45. In the editor, store the price and a quantity of 7 in variables. Print the subtotal, then the 18% GST (rounded to 2 decimal places), then the total. Next, change the text <code>"250"</code> to a number with <code>Integer</code>. Add it to the total.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> For money in real apps, store amounts as whole paise (Integer). Or use the <code>bigdecimal</code> gem. Floats are fine for measurements. But in bills and bank balances, tiny rounding errors add up.</p></div>
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
          <p class="lc-lead">Strings hold text. Ruby strings have more than a hundred methods. They support <strong>interpolation</strong> (putting values inside text) with <code>#{}</code>. A string can be mutable (can change) or frozen (cannot change). Some methods <em>return a new string</em>. Other methods <em>change the string</em> itself. Knowing the difference will save you from many bugs.</p>
        </div>
        <div class="lc-section">
          <h2>Quotes and Interpolation</h2>
          <ul class="lc-list">
            <li><strong>Double quotes</strong> run the code inside <code>#{}</code>. They also understand escapes (special codes) such as <code>\n</code> (newline) and <code>\t</code> (tab).</li>
            <li><strong>Single quotes</strong> keep the text exactly as you wrote it. <code>'#{1 + 1}'</code> stays as those characters.</li>
            <li>Interpolation calls <code>to_s</code> for you. So <code>"Age: #{21}"</code> works without changing the number to text. Joining with <code>+</code> (concatenation) does <em>not</em> do this. <code>"Age: " + 21</code> raises <code>TypeError</code>.</li>
            <li>For long text, use a <strong>squiggly heredoc</strong> <code>&lt;&lt;~TEXT ... TEXT</code>. It removes the spaces at the start of each line.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Everyday String Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>upcase</code> / <code>downcase</code> / <code>capitalize</code></td><td><code>"asha".capitalize</code></td><td><code>"Asha"</code></td></tr>
              <tr><td><code>strip</code></td><td><code>"  hi  ".strip</code></td><td><code>"hi"</code></td></tr>
              <tr><td><code>length</code></td><td><code>"London".length</code></td><td><code>6</code></td></tr>
              <tr><td><code>include?</code> / <code>start_with?</code></td><td><code>"a@b.in".include?("@")</code></td><td><code>true</code></td></tr>
              <tr><td><code>sub</code> / <code>gsub</code></td><td><code>"a-b-c".gsub("-", "+")</code></td><td><code>"a+b+c"</code> (<code>sub</code> changes only the first one)</td></tr>
              <tr><td><code>split</code> / <code>join</code></td><td><code>"a,b".split(",")</code></td><td><code>["a", "b"]</code></td></tr>
              <tr><td><code>*</code></td><td><code>"-" * 5</code></td><td><code>"-----"</code></td></tr>
              <tr><td><code>ljust</code> / <code>rjust</code> / <code>center</code></td><td><code>"7".rjust(3, "0")</code></td><td><code>"007"</code></td></tr>
              <tr><td><code>format</code></td><td><code>format("%.2f", 3.14159)</code></td><td><code>"3.14"</code></td></tr>
            </tbody>
          </table>
          <p>Methods that end in <code>?</code> return <code>true</code>/<code>false</code>. Methods that end in <code>!</code> (like <code>upcase!</code>) change the string itself. They do not return a new one.</p>
          <p><code>sub</code>, <code>gsub</code>, <code>split</code>, <code>scan</code> and <code>match?</code> can also take a <strong>regular expression</strong> (a text pattern) instead of plain text. An example is <code>/\d+/</code> ("one or more digits"). Lesson 11 teaches these patterns in detail.</p>
        </div>
        <div class="lc-section">
          <h2>Mutation and Frozen Strings</h2>
          <p><code>+</code> makes a <strong>new</strong> string. <code>&lt;&lt;</code> adds text to the end of the <strong>same</strong> string. This changes it for every variable that points to it.</p>
          <p>You can <strong>freeze</strong> a string with <code>.freeze</code>. After that, changing it raises <code>FrozenError</code>. Many Ruby files start with the magic comment <code># frozen_string_literal: true</code>. It freezes every string literal (text written in quotes) in that file. Since Ruby 3.4, literals in files <em>without</em> that comment are "chilled". You can still change one. But Ruby prints a deprecation warning (a note that this will stop working) if these warnings are turned on (<code>ruby -W:deprecated</code>). The plan is to make literals frozen by default in a future version. Do you need a string that you will change? Create it with <code>String.new</code>, <code>+""</code> or <code>.dup</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>city = String.new("london")
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
          <div class="lc-code-block lc-output"><pre><code>I live in London.
        Single: #{city}
        london
        LONDON
        LONDON
        Hi there
        Hi there
        Hi there!
        6
        18
        can't modify frozen String: "fixed"
        Total: 1234.50</code></pre></div>
          <p><code>length</code> counts characters. <code>bytesize</code> counts bytes. In UTF-8, Hindi, Tamil and other Indian scripts use 3 bytes per character. So the two numbers are different.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Using single quotes and expecting interpolation. <code>'Hi #{name}'</code> prints the braces as plain text.</li>
            <li>Joining text and numbers with <code>+</code>. <code>"Total: " + 5</code> raises <code>TypeError</code>. Use interpolation.</li>
            <li>Expecting <code>name.upcase</code> to change <code>name</code>. It returns a new string. Use <code>name = name.upcase</code> or <code>upcase!</code>.</li>
            <li>Trusting the return value of bang methods (methods whose names end in an exclamation mark). <code>"HI".upcase!</code> returns <code>nil</code> when nothing changed.</li>
            <li>Changing a shared string with <code>&lt;&lt;</code>. If another variable points to it, both variables see the change.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, take the string <code>"  priya SHARMA  "</code> and turn it into <code>"Priya Sharma"</code>. First strip it. Then capitalize each word with <code>split</code>, <code>map(&amp;:capitalize)</code> and <code>join(" ")</code>. Next, print a receipt line. Put the item name on the left in 12 characters. Put the price on the right with 2 decimals.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Put <code># frozen_string_literal: true</code> at the top of new Ruby files. It stops shared strings from being changed by mistake. It also matches where Ruby is going in the future. Many Rails and RuboCop projects already use it.</p></div>
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
        city = "New York".freeze
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
          <p class="lc-lead">Programs make decisions with <code>if</code>, <code>unless</code> and <code>case</code>. In Ruby, these are <strong>expressions</strong>. This means they return a value. So you can store the result of a whole <code>if</code> or <code>case</code> in a variable.</p>
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
          <p>Use <code>unless</code> only for simple "not" checks. Never use it with <code>else</code>. In that case, <code>if</code> is easier to read.</p>
        </div>
        <div class="lc-section">
          <h2>Comparison and Logic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>==</code> / <code>!=</code></td><td>equal / not equal</td><td><code>5 == 5.0</code> → <code>true</code></td></tr>
              <tr><td><code>&lt;</code> <code>&lt;=</code> <code>&gt;</code> <code>&gt;=</code></td><td>order (smaller / bigger)</td><td><code>"apple" &lt; "banana"</code> → <code>true</code></td></tr>
              <tr><td><code>&amp;&amp;</code> / <code>||</code> / <code>!</code></td><td>and / or / not</td><td><code>age &gt;= 18 &amp;&amp; has_id</code></td></tr>
              <tr><td><code>between?</code></td><td>range check (includes both ends)</td><td><code>15.between?(10, 20)</code> → <code>true</code></td></tr>
              <tr><td><code>&amp;.</code></td><td>safe navigation: calls only if not <code>nil</code></td><td><code>user&amp;.name</code> → <code>nil</code> when <code>user</code> is <code>nil</code></td></tr>
            </tbody>
          </table>
          <p>Ruby also has the words <code>and</code>, <code>or</code> and <code>not</code>. But they have very low precedence (Ruby runs them last). Use them only for control flow, like <code>save or raise "failed"</code>. For conditions, use <code>&amp;&amp;</code> and <code>||</code>.</p>
        </div>
        <div class="lc-section">
          <h2>case / when</h2>
          <p><code>case</code> compares one value with many options. It uses the <code>===</code> operator to do this. So a <code>when</code> can hold a range, a class, a regular expression or many values:</p>
          <table class="lc-table">
            <thead><tr><th><code>when</code> clause</th><th>Matches if…</th></tr></thead>
            <tbody>
              <tr><td><code>when 90..100</code></td><td>the value is inside the range</td></tr>
              <tr><td><code>when "Sat", "Sun"</code></td><td>the value is equal to any item in the list</td></tr>
              <tr><td><code>when Integer</code></td><td>the value is an Integer</td></tr>
              <tr><td><code>when /\A\d{6}\z/</code></td><td>the string matches the pattern (a 6-digit PIN code)</td></tr>
            </tbody>
          </table>
          <p>Lesson 19 teaches <code>case/in</code> (pattern matching). It can also look <em>inside</em> arrays and hashes.</p>
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
          <p><code>then</code> lets you write a short <code>when</code> on one line. <code>case</code> returns a value, so the method <code>grade</code> does not need <code>return</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Writing <code>elseif</code> or <code>else if</code>. The Ruby keyword is <code>elsif</code>.</li>
            <li>Using <code>=</code> (assignment) instead of <code>==</code> in a condition. <code>if score = 100</code> is always true.</li>
            <li>Forgetting that <code>0</code> and <code>""</code> are truthy. <code>if items.length</code> is always true. Use <code>if items.any?</code>.</li>
            <li>Ranges that overlap in <code>case</code>. The first <code>when</code> that matches wins. So put the most specific ranges first.</li>
            <li>Using <code>and</code>/<code>or</code> in assignments. <code>ok = true and false</code> sets <code>ok</code> to <code>true</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write a method <code>ticket_price(age)</code> for a cinema. Under 5 is free. Ages 5–17 cost ₹150. Ages 18–59 cost ₹250. Age 60 or older costs ₹120. Use <code>case</code> with ranges. Test it with ages 3, 17, 18, 59 and 60.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Use <strong>guard clauses</strong> (early exits) instead of deep nesting (many checks inside other checks). Put <code>return "Invalid" if marks.negative?</code> at the top of a method. This keeps the main code flat and easy to read.</p></div>
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
          <p class="lc-lead">Ruby has classic loops like <code>while</code>. But most Ruby code repeats work with <strong>iterators</strong>. These are methods such as <code>each</code> and <code>times</code> that take a block (a piece of code you pass to a method). <strong>Ranges</strong> like <code>1..10</code> describe a sequence of values. They work very well with iterators.</p>
        </div>
        <div class="lc-section">
          <h2>Ranges</h2>
          <table class="lc-table">
            <thead><tr><th>Range</th><th>Contains</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td><code>1..5</code></td><td>1, 2, 3, 4, 5</td><td>Two dots: the end is <strong>included</strong></td></tr>
              <tr><td><code>1...5</code></td><td>1, 2, 3, 4</td><td>Three dots: the end is <strong>left out</strong></td></tr>
              <tr><td><code>"a".."e"</code></td><td>a, b, c, d, e</td><td>Works for strings too</td></tr>
              <tr><td><code>(1..)</code></td><td>1, 2, 3, … forever</td><td>Endless range: stop it with <code>break</code>, <code>first</code> or <code>take</code></td></tr>
              <tr><td><code>(..18)</code></td><td>anything up to 18</td><td>Beginless range: good for comparisons</td></tr>
            </tbody>
          </table>
          <p>Useful range methods: <code>to_a</code>, <code>include?</code>, <code>sum</code>, <code>step</code>, <code>each_slice</code>. You can also use ranges to take a part of an array or string: <code>"Ruby"[1..]</code> is <code>"uby"</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Choosing a Loop</h2>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Usual Ruby way</th></tr></thead>
            <tbody>
              <tr><td>Repeat N times</td><td><code>3.times { |i| ... }</code> (i = 0, 1, 2)</td></tr>
              <tr><td>Count between two numbers</td><td><code>1.upto(5)</code>, <code>10.downto(1)</code>, <code>0.step(20, 5)</code></td></tr>
              <tr><td>Visit every item</td><td><code>list.each { |x| ... }</code></td></tr>
              <tr><td>You also need the position</td><td><code>list.each_with_index { |x, i| ... }</code></td></tr>
              <tr><td>Repeat until a condition changes</td><td><code>while balance &gt; 0 ... end</code> or <code>until done ... end</code></td></tr>
              <tr><td>Repeat forever until <code>break</code></td><td><code>loop do ... end</code></td></tr>
            </tbody>
          </table>
          <p><code>for x in list</code> exists, but Ruby developers rarely use it. Its variable still exists after the loop ends. Block variables stay inside the block.</p>
        </div>
        <div class="lc-section">
          <h2>Controlling a Loop</h2>
          <ul class="lc-list">
            <li><code>next</code> jumps to the next item (like <code>continue</code> in other languages).</li>
            <li><code>break</code> stops the loop. <code>break value</code> also makes the loop <em>return</em> that value.</li>
            <li><code>{ }</code> and <code>do ... end</code> both create blocks. The usual rule: use braces for one line and <code>do ... end</code> for many lines.</li>
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
            <li>Mixing up <code>..</code> and <code>...</code>. <code>(1...10).to_a</code> stops at 9.</li>
            <li>Writing <code>i++</code>. Ruby has no <code>++</code>. Use <code>i += 1</code>.</li>
            <li>Forgetting to change the condition inside <code>while</code>. This causes an infinite loop (a loop that never stops).</li>
            <li>Calling <code>to_a</code> on an endless range like <code>(1..).to_a</code>. It never finishes. Use <code>first(n)</code> or <code>take(n)</code>.</li>
            <li>Expecting <code>5.times</code> to count 1 to 5. It counts 0 to 4. Use <code>1.upto(5)</code> instead.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, print the multiplication table of 7, from 7 × 1 to 7 × 10. Use <code>1.upto(10)</code>. Then use an endless range with <code>break</code>. Find the first number greater than 100 that you can divide by both 7 and 9.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Are you writing a counter variable and a <code>while</code> loop to go through a list? There is almost always an iterator that does it in one line. Lesson 10 shows many of them.</p></div>
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
        cities = ["Chicago", "New York", "Los Angeles", "Philadelphia"]
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
          <p class="lc-lead">An array is an <strong>ordered list</strong> of objects. Ruby arrays grow and shrink when needed. They can hold any mix of types. They also have many useful methods. The key skill is to know which methods <em>return a new array</em> and which <em>change the original</em>.</p>
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
          <p>These set operators return new arrays: <code>a | b</code> (union: items in either), <code>a &amp; b</code> (common items), <code>a - b</code> (difference: items in a but not b).</p>
        </div>
        <div class="lc-section">
          <h2>Asking Questions</h2>
          <ul class="lc-list">
            <li><code>include?(x)</code>, <code>empty?</code>, <code>any?</code>, <code>length</code> (same as <code>size</code>), <code>count(x)</code>.</li>
            <li><code>index(x)</code> gives the position of the first match, or <code>nil</code>.</li>
            <li><code>min</code>, <code>max</code>, <code>sum</code> and <code>minmax</code> work on numbers. min/max also work on strings.</li>
            <li><code>join(", ")</code> turns an array into a string. <code>"a b".split</code> does the opposite.</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Destructuring</h2>
          <p>Destructuring means putting parts of an array into many variables at once. The splat <code>*</code> collects "the rest":</p>
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
          <p><code>compact</code>, <code>uniq</code> and <code>sort</code> returned new arrays. So <code>nums</code> did not change.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Off-by-one errors (being wrong by one position). The last index is <code>arr.length - 1</code>. Or just use <code>arr[-1]</code> / <code>arr.last</code>.</li>
            <li><code>Array.new(3, [])</code> puts the <strong>same</strong> inner array in every slot. So changing one changes all of them. Use <code>Array.new(3) { [] }</code>.</li>
            <li>Expecting <code>arr.sort</code> to sort <code>arr</code> itself. It returns a new array. Use <code>sort!</code>, or assign the result back to the variable.</li>
            <li>Changing an array (<code>delete</code>, <code>push</code>) while you loop over it with <code>each</code>. Some items get skipped. Build a new array with <code>reject</code> or <code>select</code> instead (lesson 10).</li>
            <li>Mixing up <code>arr[2, 3]</code> (start at index 2, take <strong>3 items</strong>) and <code>arr[2..3]</code> (indexes 2 <strong>to</strong> 3, so only 2 items).</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, start with <code>scores = [45, 90, 72, 90, 38, 66]</code>. Print the top three different scores. Print how many scores are below 50. Print the position of the first 90. Then remove every score below 50, but do not change the original array.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Read a method name carefully before you use it. Some methods change the array: names ending in <code>!</code>, and <code>push</code>, <code>pop</code>, <code>shift</code>, <code>unshift</code>, <code>delete</code>, <code>&lt;&lt;</code>. Most other methods do not change the original.</p></div>
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
          <p class="lc-lead">A hash stores <strong>key → value</strong> pairs, like a dictionary. Keys are usually <strong>symbols</strong> such as <code>:name</code>. A symbol is a light name that cannot change. Hashes keep their keys in the order you added them.</p>
        </div>
        <div class="lc-section">
          <h2>Symbols vs Strings</h2>
          <p>You write a symbol with a colon: <code>:status</code>. Every <code>:status</code> in your program is <strong>the same object</strong>. Symbols cannot be changed. A string like <code>"status"</code> is text data. Each literal can be a separate object. You can change it, unless it is frozen.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Symbol <code>:name</code></th><th>String <code>"name"</code></th></tr></thead>
            <tbody>
              <tr><td>Purpose</td><td>A fixed name (hash key, option, state)</td><td>Text that users see, or text that changes</td></tr>
              <tr><td>Same object each time?</td><td>Yes: <code>:a.equal?(:a)</code> is <code>true</code></td><td>Not necessarily</td></tr>
              <tr><td>Can be changed?</td><td>Never</td><td>Yes, unless frozen</td></tr>
              <tr><td>Convert</td><td><code>:name.to_s</code> → <code>"name"</code></td><td><code>"name".to_sym</code> → <code>:name</code></td></tr>
            </tbody>
          </table>
          <p>A simple rule: use symbols for <em>names in your code</em>, and strings for <em>data</em>. Note that <code>:name</code> and <code>"name"</code> are different keys. A hash made with one will not find the other.</p>
        </div>
        <div class="lc-section">
          <h2>Creating and Reading Hashes</h2>
          <div class="lc-code-block"><pre><code>student = { name: "Asha", age: 20, city: "London" }   # symbol keys
        prices  = { "chai" =&gt; 20, "dosa" =&gt; 60 }            # string keys use =&gt;

        student[:name]              # "Asha"
        student[:email]             # nil (missing key)
        student.fetch(:email, "-")  # "-" (default)
        student.fetch(:email)       # raises KeyError: key not found: :email
        student[:age] = 21          # update
        student[:course] = "BCA"    # add</code></pre></div>
          <p>Since Ruby 3.1, you can use a short form when the key has the same name as a variable: <code>name = "Ravi"; { name: }</code> is <code>{ name: "Ravi" }</code>.</p>
          <p>Ruby 3.4 prints hashes in a new style: <code>{name: "Asha", "chai" =&gt; 20}</code>. Older versions printed <code>{:name=&gt;"Asha", "chai"=&gt;20}</code>. You will still see that style in older tutorials.</p>
        </div>
        <div class="lc-section">
          <h2>Useful Hash Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>each { |key, value| }</code></td><td>Loop over pairs</td></tr>
              <tr><td><code>keys</code>, <code>values</code>, <code>key?(k)</code>, <code>size</code></td><td>Look inside the hash</td></tr>
              <tr><td><code>select</code> / <code>reject</code></td><td>Keep or remove pairs. Returns a hash</td></tr>
              <tr><td><code>transform_values</code></td><td>Change every value. Returns a hash</td></tr>
              <tr><td><code>sort_by { |k, v| v }</code></td><td>Returns an array of <code>[key, value]</code> pairs</td></tr>
              <tr><td><code>merge(other)</code></td><td>Join two hashes. Later values win</td></tr>
              <tr><td><code>dig(:a, :b)</code></td><td>Safely read nested data (data inside data). Gives <code>nil</code> if any level is missing</td></tr>
              <tr><td><code>Hash.new(0)</code></td><td>Default value 0 for missing keys. Great for counting</td></tr>
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

        order = { id: 7, customer: { name: "Ravi", address: { city: "Boston" } } }
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
        "Boston"
        nil
        true</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Mixing key types. <code>{ name: "A" }["name"]</code> is <code>nil</code>, because the key is the symbol <code>:name</code>. Data from JSON or web forms usually has <strong>string</strong> keys.</li>
            <li>Using <code>hash[key]</code> when a missing key is a bug. <code>fetch</code> raises <code>KeyError</code> right away, so the bug is easy to find.</li>
            <li><code>Hash.new([])</code> shares one array between all missing keys. Use <code>Hash.new { |h, k| h[k] = [] }</code> to get a new array for each key.</li>
            <li>Expecting <code>sort_by</code> or <code>max_by</code> to return a hash. They return arrays of pairs. Add <code>.to_h</code> if you need a hash back.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, count how many times each word appears in <code>"the cat and the hat and the bat"</code>. Use <code>Hash.new(0)</code>. Print the words sorted by count, highest first. Then solve it again in one line with <code>split.tally</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> <code>tally</code> (Ruby 2.7+) counts items for you. <code>%w[a b a].tally</code> returns <code>{"a" =&gt; 2, "b" =&gt; 1}</code>. It is one of the most useful one-line tricks in Ruby.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 7: Hashes and Symbols

        puts "=== Symbols ==="
        p :pending.equal?(:pending)      # same object every time
        p :pending.to_s
        p "pending".to_sym
        p({ name: "A" }["name"])         # string key != symbol key

        puts "=== A student record ==="
        student = { name: "Asha", age: 20, city: "London" }
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
        order = { id: 7, customer: { name: "Ravi", address: { city: "Boston" } } }
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
          <p class="lc-lead">A method puts some code under a name, so you can use it again. Ruby methods <strong>return the value of their last expression</strong> by themselves. <strong>Keyword arguments</strong> (arguments passed by name) make calls easy to understand: <code>transfer(amount: 500, to: "Ravi")</code>.</p>
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
          <p>Naming rules: use <code>snake_case</code>. End the name with <code>?</code> when the method answers yes/no (<code>adult?</code>). End it with <code>!</code> when it is a "dangerous" version. This version changes its receiver (the object it is called on) or raises an error (<code>save!</code>).</p>
        </div>
        <div class="lc-section">
          <h2>Kinds of Parameters</h2>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Definition</th><th>Call</th></tr></thead>
            <tbody>
              <tr><td>Required positional</td><td><code>def area(w, h)</code></td><td><code>area(3, 4)</code></td></tr>
              <tr><td>Optional positional</td><td><code>def greet(name, greeting = "Hi")</code></td><td><code>greet("Asha")</code></td></tr>
              <tr><td>Rest (splat: all extra values)</td><td><code>def total(*nums)</code></td><td><code>total(1, 2, 3)</code> → <code>nums = [1, 2, 3]</code></td></tr>
              <tr><td>Required keyword</td><td><code>def emi(principal:, rate:)</code></td><td><code>emi(rate: 9, principal: 50_000)</code></td></tr>
              <tr><td>Optional keyword</td><td><code>def emi(principal:, months: 12)</code></td><td><code>emi(principal: 50_000)</code></td></tr>
              <tr><td>Keyword rest</td><td><code>def tag(name, **attrs)</code></td><td><code>tag("a", href: "/", id: 1)</code></td></tr>
              <tr><td>Block</td><td><code>def run(&amp;block)</code></td><td><code>run { ... }</code> (lesson 9)</td></tr>
            </tbody>
          </table>
          <p>You can give keyword arguments in any order. A typo or a missing keyword raises a clear <code>ArgumentError</code>. Use them when a method has more than two parameters, or has true/false options.</p>
        </div>
        <div class="lc-section">
          <h2>Scope</h2>
          <p>A method <strong>cannot see local variables</strong> created outside it. Pass values in as arguments. Get results back with the return value. This keeps methods separate and easy to test.</p>
        </div>
        <div class="lc-section">
          <h2>Recursion: A Method That Calls Itself</h2>
          <p>A <strong>recursive</strong> method calls itself. It solves a problem by calling itself on a smaller version of the same problem. Every recursive method needs two parts. A <strong>base case</strong> stops the calls. A <strong>recursive case</strong> moves closer to the base case.</p>
          <div class="lc-code-block"><pre><code>def factorial(n)
          return 1 if n &lt;= 1       # base case: stop here
          n * factorial(n - 1)     # recursive case: a smaller problem
        end

        def deep_sum(item) = item.is_a?(Array) ? item.sum { |x| deep_sum(x) } : item

        p factorial(5)                     # 5 * 4 * 3 * 2 * 1
        p deep_sum([1, [2, [3, 4]], 5])    # works at any nesting depth</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>120
        15</code></pre></div>
          <p>If you forget the base case, the method keeps calling itself. Then Ruby runs out of stack space (memory for method calls). It raises <code>SystemStackError</code> ("stack level too deep"). Recursion works best for nested data, such as folders, menus and JSON trees. For simple counting, a loop or <code>(1..n).reduce(:*)</code> is clearer.</p>
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
          <p>A method returns one object. But that object can be an array. With destructuring (<code>low, high = ...</code>), it feels like the method returns many values.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Putting a space before the brackets. <code>greet ("Asha", "Hi")</code> is a syntax error. Write <code>greet("Asha", "Hi")</code>.</li>
            <li>Ending a method with <code>puts result</code> when the caller needs the value. <code>puts</code> returns <code>nil</code>. Return the value, and print it outside the method.</li>
            <li>Changing an argument inside the method. <code>def add(list, item) = list &lt;&lt; item</code> also changes the caller's array. Return a new object (<code>list + [item]</code>), unless the method is meant to change it.</li>
            <li>Many true/false values by position, like <code>send_mail(user, true, false)</code>. Nobody knows what they mean. Use keywords: <code>send_mail(user, urgent: true, copy: false)</code>.</li>
            <li>Trying to read an outside local variable inside <code>def</code>. It raises <code>NameError</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write <code>bmi(weight_kg:, height_m:)</code>. It returns the BMI rounded to 1 decimal. Also write <code>bmi_category(bmi)</code>. It returns <code>"Underweight"</code> (below 18.5), <code>"Normal"</code> (18.5 to below 25) or <code>"Overweight"</code>. Call them for 58 kg / 1.65 m and 82 kg / 1.70 m.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Keep methods short, best under 10 lines. Give them names that say <em>what</em> they return (<code>total_with_gst</code>), not <em>how</em> they work. Small methods are easier to test (lesson 21).</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 8: Methods and Keyword Arguments

        def greet(name, greeting = "Namaste")
          "#{greeting}, #{name}!"          # last expression is returned
        end

        def square(x) = x * x              # endless method
        def adult?(age) = age >= 18        # predicate method ends with ?
        def factorial(n) = n <= 1 ? 1 : n * factorial(n - 1)   # recursion

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
        puts "square(12) = #{square(12)}, 5! = #{factorial(5)}"
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
          <p class="lc-lead">A <strong>block</strong> is a piece of code you pass to a method. The <code>{ |x| ... }</code> after <code>each</code> is a block. Sometimes you want to store a block in a variable and call it later. Then you turn it into an object: a <strong>Proc</strong> or a <strong>lambda</strong>. All three are <em>closures</em>. This means they remember the variables around them.</p>
        </div>
        <div class="lc-section">
          <h2>yield: Calling the Block</h2>
          <p>Inside a method, <code>yield</code> runs the block that the caller passed. It gives back the block's value. <code>block_given?</code> tells you if a block was passed at all.</p>
          <div class="lc-code-block"><pre><code>def with_timer_label(label)
          puts "Start #{label}"
          result = yield          # run the caller's block
          puts "End #{label}"
          result
        end

        with_timer_label("report") { 6 * 7 }   # prints Start/End, returns 42</code></pre></div>
          <p>To keep the block as an object, give it a name with <code>&amp;</code>: <code>def on_save(&amp;callback)</code>. Now <code>callback</code> is a Proc. You can store it and <code>call</code> it later.</p>
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
              <tr><td>Wrong number of arguments</td><td>Raises <code>ArgumentError</code> (strict, like a method)</td><td>Ignores extra ones. Fills missing ones with <code>nil</code></td></tr>
              <tr><td><code>return</code> inside it</td><td>Returns from the lambda only</td><td>Returns from the <em>method where the proc was created</em></td></tr>
              <tr><td><code>lambda?</code></td><td><code>true</code></td><td><code>false</code></td></tr>
              <tr><td>Use it for</td><td>Stored functions, callbacks (code to run later), strategies</td><td>Blocks passed to iterators</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Shortcuts You Will See Everywhere</h2>
          <ul class="lc-list">
            <li><code>names.map(&amp;:upcase)</code>: <code>&amp;:upcase</code> turns the symbol into a block. The block calls <code>upcase</code> on each item.</li>
            <li><code>nums.map(&amp;add_gst)</code>: <code>&amp;</code> also passes a lambda as the block.</li>
            <li><code>method(:puts)</code> gives a Method object. <code>list.each(&amp;method(:puts))</code> passes it as a block.</li>
            <li>The numbered parameter <code>_1</code> (Ruby 2.7+) and <code>it</code> (Ruby 3.4+) are names for the single block argument: <code>nums.map { it * 2 }</code>. <code>it</code> does not work in Ruby 3.3 or older. So use <code>|x|</code> when your code must run everywhere.</li>
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
          <p>The lambda kept the <em>variable</em> <code>discount</code>, not the value it had when the lambda was made. That is what "closure" means.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Calling <code>yield</code> when no block was passed. This raises <code>LocalJumpError (no block given (yield))</code>. Check <code>block_given?</code> first.</li>
            <li>Mixing up the precedence (order of binding) of braces and <code>do...end</code>. <code>puts [1, 2].map do |x| x * 2 end</code> passes the block to <code>puts</code>, not to <code>map</code>. Use braces for one-line blocks.</li>
            <li>Using <code>proc</code> when you wanted a strict function. A wrong number of arguments is accepted without any error. Choose a lambda.</li>
            <li>Using <code>return</code> inside a proc that is still used after its method has finished. It raises <code>LocalJumpError</code>. Use <code>next</code> to leave a block early.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write a method <code>retry_up_to(times)</code>. It yields the attempt number (1, 2, 3...). It stops as soon as the block returns <code>true</code>. Then build a hash of lambdas <code>{ add: -&gt;(a, b) { a + b }, mul: ... }</code>. Use it as a tiny calculator: <code>ops[:mul].call(6, 7)</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Most of the time, you only need <strong>blocks</strong>. Use a <strong>lambda</strong> when you must store behaviour in a variable or hash. Write your own <code>yield</code> methods when many places share the same "before and after" code.</p></div>
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
          <p class="lc-lead"><code>Enumerable</code> is a module (a group of shared methods) for collections. It has <code>map</code>, <code>select</code>, <code>reduce</code>, <code>group_by</code> and dozens more. Arrays, hashes, ranges and sets all include it. With these methods, you can replace most hand-written loops with one clear line.</p>
        </div>
        <div class="lc-section">
          <h2>Pick the Right Method</h2>
          <table class="lc-table">
            <thead><tr><th>I want to…</th><th>Method</th><th>Example → result</th></tr></thead>
            <tbody>
              <tr><td>Change every item</td><td><code>map</code></td><td><code>[1, 2].map { |x| x * 10 }</code> → <code>[10, 20]</code></td></tr>
              <tr><td>Keep matching items</td><td><code>select</code> (other name: <code>filter</code>)</td><td><code>[1, 2, 3].select(&amp;:odd?)</code> → <code>[1, 3]</code></td></tr>
              <tr><td>Remove matching items</td><td><code>reject</code></td><td><code>[1, 2, 3].reject(&amp;:odd?)</code> → <code>[2]</code></td></tr>
              <tr><td>Change items and remove <code>nil</code>/<code>false</code></td><td><code>filter_map</code></td><td><code>[1, 2, 3].filter_map { |x| x * 2 if x.odd? }</code> → <code>[2, 6]</code></td></tr>
              <tr><td>First match</td><td><code>find</code> (other name: <code>detect</code>)</td><td><code>[4, 7, 9].find(&amp;:odd?)</code> → <code>7</code></td></tr>
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
          <p>When you call an Enumerable method on a hash, each item is a <code>[key, value]</code> pair. Give both parts a name in the block:</p>
          <div class="lc-code-block"><pre><code>stock = { rice: 40, dal: 0, atta: 12 }
        stock.select { |_item, qty| qty.zero? }   # {dal: 0}          (a hash)
        stock.map { |item, qty| "#{item}=#{qty}" } # ["rice=40", ...]   (an array)
        stock.sum { |_item, qty| qty }            # 52
        stock.sort_by { |_item, qty| qty }.to_h   # {dal: 0, atta: 12, rice: 40}</code></pre></div>
          <p>An underscore at the start (<code>_item</code>) tells readers, and Ruby's warnings, that you do not use that value.</p>
        </div>
        <div class="lc-section">
          <h2>reduce Explained</h2>
          <p><code>reduce</code> (other name: <code>inject</code>) keeps a running value called the <em>accumulator</em>. For <code>[5, 10, 15].reduce(0) { |sum, x| sum + x }</code>, the accumulator goes 0 → 5 → 15 → 30. For simple totals, <code>sum</code> is clearer.</p>
        </div>
        <div class="lc-section">
          <h2>Chaining and Laziness</h2>
          <p>Enumerable methods return new collections. So you can chain them (call one after another): <code>orders.select(&amp;:paid?).map(&amp;:amount).sum</code>. Each step makes an in-between array. For very large or <strong>infinite</strong> sequences, add <code>.lazy</code>. Then Ruby does the work only for the items you really ask for.</p>
          <div class="lc-code-block"><pre><code>(1..).lazy.map { |n| n * n }.select(&amp;:even?).first(3)   # [4, 16, 36]</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>students = [
          { name: "Asha",  city: "London",  marks: 91 },
          { name: "Ravi",  city: "Chicago", marks: 67 },
          { name: "Meena", city: "London",  marks: 78 },
          { name: "Dev",   city: "Chicago", marks: 38 }
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
        {"London" =&gt; ["Asha", "Meena"], "Chicago" =&gt; ["Ravi", "Dev"]}
        ["Asha", "Meena"]
        [5, -6, 7]
        {"London" =&gt; 169, "Chicago" =&gt; 105}</code></pre></div>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Using <code>each</code> to build a new array (<code>result = []; list.each { result &lt;&lt; ... }</code>). Use <code>map</code> or <code>select</code>.</li>
            <li>Using <code>map</code> only for side effects (like printing). Use <code>each</code>. It says "I only care about the effect".</li>
            <li>Forgetting that <code>select</code> on a <strong>hash</strong> returns a hash, but <code>map</code> on a hash returns an <strong>array</strong>.</li>
            <li>Writing <code>reduce { |sum, x| sum + x }</code> on an empty array. It returns <code>nil</code>. Give a starting value: <code>reduce(0)</code>, or use <code>sum</code>.</li>
            <li>Calling <code>map</code> on an infinite range without <code>lazy</code>. The program never finishes.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, use the <code>orders</code> data. Print (1) the total revenue from paid orders, (2) the customer who spent the most, and (3) a hash of item → number of orders, using <code>tally</code>. Try to write each answer as one chain.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Read a chain out loud: "orders, <em>select</em> the paid ones, <em>map</em> to amount, <em>sum</em>". If it sounds like the task, it is good Ruby. If a chain has more than about four steps, give the middle results names.</p></div>
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
          <h1 class="lc-title">Regular Expressions</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>regular expression</strong> (regexp) is a small language for text patterns. Examples are "six digits", "a word after a #" or "anything that looks like an email". Regexps are built into Ruby. You write them between slashes: <code>/\d{6}/</code>. String methods such as <code>match?</code>, <code>scan</code>, <code>gsub</code> and <code>split</code> all accept them. You will use them to check form input, get data out of logs and clean up messy text.</p>
        </div>
        <div class="lc-section">
          <h2>Writing a Pattern</h2>
          <p>A regexp literal is written as <code>/pattern/flags</code>. It is an object of the class <code>Regexp</code>. If the pattern has many slashes, <code>%r{...}</code> is easier to read: <code>%r{\A/users/\d+\z}</code>.</p>
          <table class="lc-table">
            <thead><tr><th>Piece</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>\d</code> <code>\w</code> <code>\s</code></td><td>A digit; a word character (letter, digit, <code>_</code>); whitespace</td><td><code>/\d\d/</code> matches <code>"42"</code></td></tr>
              <tr><td><code>\D</code> <code>\W</code> <code>\S</code></td><td>The opposite: NOT a digit / word character / space</td><td><code>/\S+/</code> matches one word</td></tr>
              <tr><td><code>.</code></td><td>Any character except a newline</td><td><code>/c.t/</code> matches <code>"cat"</code>, <code>"cut"</code></td></tr>
              <tr><td><code>[abc]</code> <code>[a-z]</code> <code>[^0-9]</code></td><td>One character from a set. <code>^</code> inside means "not"</td><td><code>/[6-9]/</code> matches one digit 6 to 9</td></tr>
              <tr><td><code>*</code> <code>+</code> <code>?</code> <code>{n}</code> <code>{n,m}</code></td><td>Repeat: 0+, 1+, 0 or 1, exactly n, n to m times</td><td><code>/\d{6}/</code>: six digits</td></tr>
              <tr><td><code>\A</code> <code>\z</code></td><td>Start and end of the <strong>whole string</strong></td><td><code>/\A\d{6}\z/</code>: only six digits</td></tr>
              <tr><td><code>^</code> <code>$</code></td><td>Start and end of a <strong>line</strong></td><td>Use for text with many lines, not for checking input</td></tr>
              <tr><td><code>\b</code></td><td>A word boundary (the edge of a word)</td><td><code>/\bcat\b/</code> does not match inside <code>"concat"</code></td></tr>
              <tr><td><code>(...)</code> <code>(?&lt;name&gt;...)</code></td><td>A group that captures (saves) text. A <strong>named</strong> capture</td><td><code>/(?&lt;year&gt;\d{4})/</code></td></tr>
              <tr><td><code>a|b</code></td><td>Either <code>a</code> or <code>b</code></td><td><code>/chai|coffee/</code></td></tr>
              <tr><td><code>\.</code> <code>\+</code> <code>\/</code></td><td>A backslash makes a special character mean itself</td><td><code>/\d+\.\d+/</code> matches <code>"1.5"</code></td></tr>
            </tbody>
          </table>
          <p>Flags go after the closing slash. <code>i</code> ignores case (<code>/ruby/i</code>). <code>x</code> lets you add spaces and <code># comments</code> inside the pattern. <code>m</code> lets <code>.</code> match newlines too. Note: Ruby's <code>m</code> is <em>not</em> the same as the <code>m</code> flag in JavaScript or Python. In Ruby, <code>^</code> and <code>$</code> always work per line.</p>
        </div>
        <div class="lc-section">
          <h2>Which Method Should I Use?</h2>
          <table class="lc-table">
            <thead><tr><th>I want to…</th><th>Method</th><th>Returns</th></tr></thead>
            <tbody>
              <tr><td>Ask "does it match?"</td><td><code>str.match?(re)</code></td><td><code>true</code> / <code>false</code> (fastest, sets no variables)</td></tr>
              <tr><td>Find where it matches</td><td><code>str =~ re</code></td><td>Index of the first match, or <code>nil</code></td></tr>
              <tr><td>Read the captured parts</td><td><code>str.match(re)</code></td><td>A <code>MatchData</code> (<code>m[1]</code>, <code>m[:year]</code>) or <code>nil</code></td></tr>
              <tr><td>Get just the matched text</td><td><code>str[re]</code></td><td>The first matching substring, or <code>nil</code></td></tr>
              <tr><td>Find every match</td><td><code>str.scan(re)</code></td><td>An array of matches (arrays of groups, if the pattern has groups)</td></tr>
              <tr><td>Replace first / all matches</td><td><code>sub</code> / <code>gsub</code></td><td>A new string. The replacement can be a string, a hash or a block</td></tr>
              <tr><td>Split on a pattern</td><td><code>str.split(re)</code></td><td>An array of pieces</td></tr>
            </tbody>
          </table>
          <p>In a replacement string, <code>'\1'</code> means "the text of group 1". Use single quotes, so Ruby does not treat <code>\1</code> as an escape. <code>case</code>/<code>when</code> also works with regexps. This is because <code>Regexp#===</code> means "matches": <code>when /\A\d+\z/ then "number"</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>pin = /\A\d{6}\z/
        p pin.match?("560001")
        p pin.match?("56001")
        p "Call 98765 43210" =~ /\d/
        date = "Due: 2026-09-25".match(/(?&lt;year&gt;\d{4})-(?&lt;month&gt;\d\d)-(?&lt;day&gt;\d\d)/)
        p date
        p date[:year], date.pre_match
        p "Room 101, Room 202".scan(/\d+/)
        p "tea  and   coffee".gsub(/\s+/, " ")
        p "9876543210".sub(/\A(\d{5})(\d{5})\z/, '\1 \2')
        p "ravi kumar".gsub(/\b\w/) { |c| c.upcase }
        p "chai,dosa; idli".split(/[,;]\s*/)
        p "cat hat".gsub(/[ch]at/, "cat" =&gt; "dog", "hat" =&gt; "cap")
        if /(?&lt;user&gt;[\w.]+)@(?&lt;host&gt;[\w.]+)/ =~ "mail asha@iitb.ac.in"
          puts "#{user} at #{host}"
        end</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>true
        false
        5
        #&lt;MatchData "2026-09-25" year:"2026" month:"09" day:"25"&gt;
        "2026"
        "Due: "
        ["101", "202"]
        "tea and coffee"
        "98765 43210"
        "Ravi Kumar"
        ["chai", "dosa", "idli"]
        "dog cap"
        asha at iitb.ac.in</code></pre></div>
          <p>The last example shows a special Ruby feature. Put a regexp <strong>literal</strong> with named groups on the <em>left</em> of <code>=~</code>. Then Ruby creates local variables (<code>user</code>, <code>host</code>) from the group names.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Checking input with <code>^</code> and <code>$</code>. They match at <em>line</em> breaks. So <code>"600036\nX".match?(/^\d{6}$/)</code> is <code>true</code>. To check input, always use <code>\A</code> and <code>\z</code>.</li>
            <li>Forgetting to escape a dot. <code>/1.5/</code> also matches <code>"125"</code>. Write <code>/1\.5/</code>. Also pass user input through <code>Regexp.escape</code> before you build a pattern with <code>Regexp.new</code>.</li>
            <li>Greedy repeats (repeats that take as much as they can) taking too much. <code>"&lt;b&gt;hi&lt;/b&gt;"[/&lt;.+&gt;/]</code> returns the whole string. Add <code>?</code> for the shortest match: <code>/&lt;.+?&gt;/</code> gives <code>"&lt;b&gt;"</code>.</li>
            <li>Using <code>=~</code> or <code>match</code> only to get true/false. <code>match?</code> is clearer and faster.</li>
            <li>Writing a huge regexp for a job that a library already does, such as parsing (reading) JSON, CSV or HTML. Regexps are for small, clear text patterns.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add a <code>VEHICLE</code> pattern for Indian number plates such as <code>"MH12AB1234"</code>. The format is 2 letters, 2 digits, 1–2 letters, then 4 digits. Check <code>"MH12AB1234"</code>, <code>"KA05M9999"</code> and <code>"12MHAB1234"</code>. Then use <code>scan</code> to get every amount from <code>"Paid Rs 250 on Mon, Rs 99 on Tue"</code>. Print their sum.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Build and test patterns step by step in <code>irb</code> or on <strong>rubular.com</strong>. It is a regexp tester made for Ruby. For long patterns, use the <code>x</code> flag. Put each part on its own line with a comment. This makes the pattern much easier to read later.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 11: Regular Expressions

        PHONE = /\A[6-9]\d{9}\z/                    # Indian mobile: 10 digits, starts 6-9
        EMAIL = /\A[\w.+-]+@[\w-]+(\.[\w-]+)+\z/     # simple email check
        PIN   = /\A\d{6}\z/                          # 6-digit PIN code

        signups = [
          { name: "Asha",  phone: "9876543210", email: "asha@iitb.ac.in", pin: "400076" },
          { name: "Ravi",  phone: "12345",      email: "ravi@gmail",      pin: "11001" },
          { name: "Meena", phone: "7012345678", email: "meena@yahoo.com", pin: "600036\nX" }
        ]

        puts "=== Validation with match? ==="
        signups.each do |s|
          errors = []
          errors << "phone" unless s[:phone].match?(PHONE)
          errors << "email" unless s[:email].match?(EMAIL)
          errors << "pin"   unless s[:pin].match?(PIN)
          puts "#{s[:name].ljust(6)} #{errors.empty? ? 'OK' : "bad #{errors.join(', ')}"}"
        end
        puts "With ^ and $ the bad PIN passes: #{"600036\nX".match?(/^\d{6}$/)}"

        puts "=== Captures with match ==="
        log = "2026-09-25 14:05 ERROR payment failed for order 1042"
        m = log.match(/(?<date>\S+) (?<time>\S+) (?<level>[A-Z]+) (?<msg>.+)/)
        puts "level=#{m[:level]} date=#{m[:date]}"
        p m[:msg]
        p "Order #{m[:msg][/\d+/]}"                   # String#[] with a regexp

        puts "=== =~ and scan ==="
        p "Room B-204" =~ /\d/                       # index of the first digit
        p "no digits" =~ /\d/
        tweet = "Learning #ruby and #regex at #IITB"
        p tweet.scan(/#(\w+)/).flatten
        p "Rs 120 + Rs 45 + Rs 300".scan(/\d+/).sum(&:to_i)

        puts "=== sub, gsub and split ==="
        p "9876543210".sub(/\A(\d{2})\d{6}(\d{2})\z/, '\1XXXXXX\2')
        p "too   many    spaces".gsub(/\s+/, " ")
        p "ravi kumar sharma".gsub(/\b\w/) { |letter| letter.upcase }
        p "chai, dosa;idli ;  vada".split(/\s*[,;]\s*/)

        puts "=== Escaping user input ==="
        p "Price 1.5 or 125".scan(/1.5/)                      # . matches any character!
        p "Price 1.5 or 125".scan(Regexp.new(Regexp.escape("1.5")))
      RUBY
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Classes and Objects</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>class</strong> is a plan for making things. An <strong>object</strong> is one thing made from that plan. Each object keeps its own data in <strong>instance variables</strong> (<code>@balance</code>). These are variables that belong to one object. An object also answers the <strong>methods</strong> (actions) defined in its class. This way of working is called object-oriented programming. In Ruby, everything already works this way.</p>
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
          <p>Show as little of the object as you can. A bank balance should have a reader (getter). But changes should go through methods like <code>deposit</code>, which can check the rules. Write your own setter when you need validation (checking that a value is allowed).</p>
        </div>
        <div class="lc-section">
          <h2>self, Class Methods and Visibility</h2>
          <ul class="lc-list">
            <li>Inside an instance method, <code>self</code> is the current object. To call a setter, you <strong>must</strong> write <code>self.name = ...</code>. Plain <code>name = ...</code> creates a local variable instead.</li>
            <li><code>def self.from_csv_line(line)</code> defines a <strong>class method</strong> (a method you call on the class, not on an object). You call it as <code>BankAccount.from_csv_line(...)</code>. It is good for extra ways to create objects (alternative constructors).</li>
            <li>Methods after <code>private</code> can only be called from inside the object. You call them without writing an object before the dot (no explicit receiver). <code>protected</code> methods can also be called on <em>other</em> objects of the same class. This is useful for comparisons.</li>
            <li>To count objects, use an instance variable on the class itself. Set <code>@count = 0</code> in the class body. Then read it from class methods. Avoid <code>@@class_variables</code>. They are shared with every subclass (child class), and this causes unexpected results.</li>
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
          <p>The custom setter <code>marks=</code> checks the data in <code>initialize</code> and also later. The counter is stored on the class object itself. So it is not shared with subclasses.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Writing <code>marks = value</code> inside a method and expecting the setter to run. Use <code>self.marks = value</code>.</li>
            <li>Misspelling <code>initialize</code> (for example <code>initialise</code>). Ruby then treats it as a normal method, and <code>new</code> raises <code>ArgumentError</code>.</li>
            <li>Reading an instance variable that was never set. <code>@nmae</code> gives <code>nil</code> with no error. Use the reader method <code>name</code> instead. It raises <code>NameError</code> if you misspell it.</li>
            <li>Adding <code>attr_accessor</code> for everything. It lets any code change any field. It also skips your validation.</li>
            <li>Forgetting <code>to_s</code>. Then <code>puts obj</code> prints something like <code>#&lt;Student:0x000...&gt;</code>.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add a <code>transfer(amount, to:)</code> method to <code>BankAccount</code>. It should withdraw from this account and deposit into <code>to</code>. If the withdrawal fails, it should return <code>false</code> and change nothing. Transfer ₹300 from Asha to Ravi. Then print both accounts and Asha's history.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Plan objects around <em>behaviour</em> (what they do), not just data. First ask "what should this object be able to do?" (<code>deposit</code>, <code>withdraw</code>). Then ask "what fields does it have?". When you only need a group of data, the <code>Data</code> class from lesson 18 is simpler.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 12: Classes and Objects

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

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Inheritance and Polymorphism</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead"><strong>Inheritance</strong> lets a class reuse another class and add to it: <code>class Car &lt; Vehicle</code>. <strong>Polymorphism</strong> means different objects answer the same method call in their own way. So one loop can handle many kinds of objects. Ruby also uses <strong>duck typing</strong>. This means what an object can <em>do</em> matters, not what class it is.</p>
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
          <p>A Ruby class has exactly <strong>one</strong> parent. This is called single inheritance. To share behaviour between classes that are not related, use modules (lesson 14).</p>
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
          <p>Plain <code>super</code> in <code>Manager#initialize</code> above would pass three arguments to <code>Employee#initialize</code>. But that method only accepts two, so you get an <code>ArgumentError</code>. That is why we wrote <code>super(name, salary)</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Method Lookup and Type Checks</h2>
          <p>When you call a method, Ruby first looks in the object's class. Then it looks in the parent class, and so on up the chain. <code>ancestors</code> shows this chain. In the end, every class inherits from <code>Object</code> (and <code>BasicObject</code>).</p>
          <table class="lc-table">
            <thead><tr><th>Check</th><th><code>m = Manager.new(...)</code></th></tr></thead>
            <tbody>
              <tr><td><code>m.is_a?(Employee)</code></td><td><code>true</code>: any ancestor counts</td></tr>
              <tr><td><code>m.instance_of?(Employee)</code></td><td><code>false</code>: exact class only</td></tr>
              <tr><td><code>Manager.superclass</code></td><td><code>Employee</code></td></tr>
              <tr><td><code>m.respond_to?(:monthly_pay)</code></td><td><code>true</code>: the duck-typing check</td></tr>
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
          <p>The last loop is duck typing. <code>puts</code> and interpolation only need <code>to_s</code>. So an <code>Invoice</code> works, even though it is not a <code>Shape</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Writing plain <code>super</code> when the parent takes different arguments. Use <code>super(...)</code> with the right values. Use <code>super()</code> for no arguments.</li>
            <li>Forgetting to call <code>super</code> in a child's <code>initialize</code>. Then the parent's instance variables are never set. They read as <code>nil</code>.</li>
            <li>Checking classes everywhere: <code>if x.is_a?(Circle) ... elsif x.is_a?(Rect)</code>. Give each class the method and just call it. That is polymorphism.</li>
            <li>Building many levels of inheritance just to reuse code. The child may not really be a kind of the parent ("is-a"). Then use composition (an object that <em>has</em> another object) or a module.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add an <code>Intern</code> class that inherits from <code>Employee</code>. It has a fixed stipend (a small fixed payment) instead of a salary. It overrides (replaces) <code>monthly_pay</code> and <code>role</code>. Add an intern to the <code>staff</code> array. Check that the payroll loop works without any changes.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Here is a good test for inheritance. Say the sentence "a <em>Child</em> is a kind of <em>Parent</em>". "A Manager is a kind of Employee" works. "A Car is a kind of Engine" does not. A car <em>has</em> an engine.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 13: Inheritance and Polymorphism

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

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Modules and Mixins</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">A <strong>module</strong> is a container for methods and constants. Unlike a class, it cannot create objects. Modules have two main jobs. The first is <strong>namespacing</strong>: grouping related names so they do not clash. The second is <strong>mixins</strong>: sharing behaviour between classes that are not related by inheritance.</p>
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
          <p><code>::</code> gets something from inside a module. Rails apps use namespaces a lot, for example <code>Admin::UsersController</code>.</p>
        </div>
        <div class="lc-section">
          <h2>include, extend and prepend</h2>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Module methods become…</th><th>Position in <code>ancestors</code></th><th>Typical use</th></tr></thead>
            <tbody>
              <tr><td><code>include</code></td><td>instance methods</td><td>just <strong>after</strong> the class</td><td>Share behaviour (most common)</td></tr>
              <tr><td><code>extend</code></td><td>methods on that one object / class</td><td>not in the class's chain</td><td>Add class-level helpers</td></tr>
              <tr><td><code>prepend</code></td><td>instance methods that run <strong>before</strong> the class's own</td><td>just <strong>before</strong> the class</td><td>Add code around a method (logging, timing) and call <code>super</code></td></tr>
            </tbody>
          </table>
          <p>A class can include many modules. This gives Ruby most of the benefits of multiple inheritance (having many parents), without its problems. The mixed-in methods can call methods that the class has. For example, a module can use <code>name</code> if every class that includes it defines <code>name</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Refinements: Safer Monkey Patching</h2>
          <p>Ruby lets you reopen any class, even <code>String</code>, and add methods. Doing this for the whole program is called "monkey patching". It can break other code. A <strong>refinement</strong> limits the change to the files that ask for it with <code>using</code>:</p>
          <div class="lc-code-block"><pre><code>module RupeeFormat
          refine Integer do
            def to_rupees = "Rs #{self.to_s.reverse.scan(/\d{1,3}/).join(',').reverse}"
          end
        end

        using RupeeFormat          # active from here to the end of this file
        1500000.to_rupees          # "Rs 1,500,000"</code></pre></div>
          <p>Refinements are an advanced tool. Most code never needs them. Try a plain helper method first.</p>
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
          <p><code>Loud</code> is prepended, so Ruby finds <code>Loud#greet</code> first. Its <code>super</code> then goes on to <code>Greetable#greet</code>.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Calling <code>Greetable.new</code>. You cannot create objects from a module. Only classes make instances (objects).</li>
            <li>Using <code>include</code> when you wanted class methods (<code>Ticket.instances</code>). Class-level helpers need <code>extend</code>.</li>
            <li>Defining module methods with <code>def self.x</code> and expecting <code>include</code> to share them. <code>self.</code> methods stay on the module itself.</li>
            <li>Monkey patching core classes for the whole program (<code>class String; def ...</code>) in application code. Use a helper method, a refinement, or your own class.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write a module <code>Taxable</code> with a method <code>price_with_gst</code>. It uses the <code>price</code> of the class that includes it, and <code>Payments::GST_RATE</code>. Include it in <code>Book</code> only. Print the price with GST for a ₹450 book. Then check the result of <code>Book.include?(Taxable)</code> and <code>Course.include?(Taxable)</code>.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Ruby's own library is built from mixins. <code>Array</code> includes <code>Enumerable</code>, <code>Integer</code> includes <code>Comparable</code>. In the next lesson you will include these two modules in your own classes.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 14: Modules and Mixins

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

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Comparable and Enumerable Mixins</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Ruby's two most famous mixins give your classes many new abilities. You only write <strong>one method each</strong>. Define <code>&lt;=&gt;</code> and include <code>Comparable</code> to get <code>&lt;</code>, <code>&gt;</code>, <code>between?</code>, <code>clamp</code> and sorting. Define <code>each</code> and include <code>Enumerable</code> to get <code>map</code>, <code>select</code>, <code>sort_by</code>, <code>sum</code> and 50+ more.</p>
        </div>
        <div class="lc-section">
          <h2>The Spaceship Operator</h2>
          <p><code>a &lt;=&gt; b</code> returns <code>-1</code> if <code>a</code> is smaller, <code>0</code> if equal, <code>1</code> if larger, and <code>nil</code> if they cannot be compared.</p>
          <div class="lc-code-block"><pre><code>1 &lt;=&gt; 2        # -1
        "b" &lt;=&gt; "a"    # 1
        5 &lt;=&gt; 5        # 0
        5 &lt;=&gt; "5"      # nil
        [1, 9] &lt;=&gt; [2, 0]   # -1  (arrays compare item by item)</code></pre></div>
          <p>The array trick is useful. To compare by several fields, return <code>[major, minor] &lt;=&gt; [other.major, other.minor]</code>.</p>
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
          <p><code>sort</code> and <code>max</code> on an Enumerable class also need its items to be comparable. For example, Integers, or your own Comparable objects.</p>
        </div>
        <div class="lc-section">
          <h2>Writing a Good each</h2>
          <p>Your <code>each</code> should yield (pass to the block) every item and return <code>self</code>. It may be called <strong>without</strong> a block. Then return an Enumerator (an object that steps through items) with <code>return to_enum(:each) unless block_given?</code>. This makes <code>collection.each.with_index</code> and external iteration work, just like with arrays.</p>
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
          <p>If you compare version strings as text, you get <code>"1.10.0" &lt; "1.9.2"</code>. This happens because <code>"1" &lt; "9"</code>. A <code>Version</code> class with <code>&lt;=&gt;</code> compares numbers and gets it right.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Defining <code>&lt;</code> and <code>&gt;</code> by hand. Define only <code>&lt;=&gt;</code> and include <code>Comparable</code>.</li>
            <li>Returning <code>true</code>/<code>false</code> from <code>&lt;=&gt;</code>. It must return a negative number, zero, a positive number, or <code>nil</code>.</li>
            <li>Including <code>Enumerable</code> but naming the method <code>each_item</code>. Enumerable only calls <code>each</code>.</li>
            <li>Returning the internal array from <code>each</code>, or giving it out with a reader. Other code can then change your collection. Yield items instead.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, create a <code>Student</code> class with <code>name</code> and <code>marks</code>. It includes <code>Comparable</code>. Higher marks come first. If marks are equal, order by name using the array trick. Then write a <code>Classroom</code> class that includes <code>Enumerable</code>. Print the topper with <code>max</code>. Also print the full sorted list and the names of students who scored 40 or more.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> This is the Ruby way of designing. Write a small <em>protocol</em> (a few agreed methods like <code>each</code>, <code>&lt;=&gt;</code>, <code>to_s</code>). Then your class works with everything the language already does with these methods.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 15: Comparable and Enumerable Mixins

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

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Metaprogramming Basics</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead"><strong>Metaprogramming</strong> means writing code that looks at or creates other code while the program runs. You have already used it. <code>attr_accessor :name</code> is a normal method that <em>defines</em> two methods for you. Rails uses this a lot (<code>has_many</code>, <code>validates</code>, <code>enum</code>). This lesson teaches the few tools behind it, so it no longer feels like magic. It also shows when you should <em>not</em> use them.</p>
        </div>
        <div class="lc-section">
          <h2>The Toolbox</h2>
          <table class="lc-table">
            <thead><tr><th>Goal</th><th>Tool</th><th>Example → result</th></tr></thead>
            <tbody>
              <tr><td>Ask what an object can do</td><td><code>respond_to?</code>, <code>methods</code></td><td><code>5.respond_to?(:even?)</code> → <code>true</code></td></tr>
              <tr><td>List a class's own methods</td><td><code>instance_methods(false)</code></td><td><code>Order.instance_methods(false)</code></td></tr>
              <tr><td>Look at instance variables</td><td><code>instance_variables</code>, <code>instance_variable_get</code> / <code>_set</code></td><td><code>obj.instance_variable_get(:@id)</code></td></tr>
              <tr><td>Call a method whose name is data</td><td><code>public_send(name, *args)</code></td><td><code>5.public_send(:+, 3)</code> → <code>8</code></td></tr>
              <tr><td>Same, but also private methods</td><td><code>send</code></td><td>Mostly for tests and framework code</td></tr>
              <tr><td>Create methods in a loop</td><td><code>define_method(name) { ... }</code></td><td><code>paid?</code>, <code>shipped?</code> from a list</td></tr>
              <tr><td>Handle calls to methods that do not exist</td><td><code>method_missing</code> + <code>respond_to_missing?</code></td><td><code>config.theme</code> read from a hash</td></tr>
              <tr><td>Find where a method comes from</td><td><code>obj.method(:name).owner</code></td><td><code>[].method(:map).owner</code> → <code>Array</code></td></tr>
            </tbody>
          </table>
          <p>Method names can be symbols or strings: <code>public_send("name")</code> and <code>public_send(:name)</code> do the same thing.</p>
        </div>
        <div class="lc-section">
          <h2>How attr_accessor Really Works</h2>
          <p>Inside a class body, <code>self</code> is the class itself. So a <em>class method</em> such as <code>attr_reader</code> can run there and add methods to the class. You can write your own "macro" (a method that writes methods) the same way. Put it in a module and <code>extend</code> it (Lesson 14):</p>
          <div class="lc-code-block"><pre><code>module Defaults
          def attr_with_default(name, default)
            define_method(name) { instance_variable_get("@#{name}") || default }
            attr_writer name
          end
        end

        class Profile
          extend Defaults
          attr_with_default :city, "Unknown"
        end</code></pre></div>
          <p>Now <code>Profile.new.city</code> returns <code>"Unknown"</code> until someone calls <code>city=</code>. The block given to <code>define_method</code> becomes the method body. Because it is a block, it can use local variables around it, like <code>default</code>. This is called a closure (Lesson 9).</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>class Order
          STATUSES = %i[pending paid shipped]
          attr_reader :id, :status

          def initialize(id, status) = (@id, @status = id, status)

          STATUSES.each do |s|
            define_method("#{s}?") { @status == s }
          end
        end

        order = Order.new(7, :paid)
        p order.paid?, order.shipped?
        p Order.instance_methods(false).sort
        p order.instance_variables
        p order.respond_to?(:paid?), order.respond_to?(:cancel)
        field = "status"
        p order.public_send(field)

        class Settings
          def initialize(**values) = @values = values

          def method_missing(name, *args)
            return super unless @values.key?(name)
            @values[name]
          end

          def respond_to_missing?(name, include_private = false)
            @values.key?(name) || super
          end
        end

        config = Settings.new(theme: "dark", lang: "hi")
        p config.theme
        p config.respond_to?(:lang)
        begin
          config.colour
        rescue NoMethodError =&gt; e
          puts e.message
        end</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block lc-output"><pre><code>true
        false
        [:id, :paid?, :pending?, :shipped?, :status]
        [:@id, :@status]
        true
        false
        :paid
        "dark"
        true
        undefined method 'colour' for an instance of Settings</code></pre></div>
          <p>Adding <code>:cancelled</code> to <code>STATUSES</code> would create <code>cancelled?</code> automatically. This is how Rails' <code>enum</code> works. In <code>Settings</code>, calling <code>super</code> for unknown names keeps the normal <code>NoMethodError</code>. And <code>respond_to_missing?</code> makes <code>respond_to?</code> give the correct answer.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Using <code>send</code> with a method name that came from user input. It can call <strong>private</strong> methods (even <code>exit</code> or <code>system</code>). Use <code>public_send</code>. First check the name against an allow-list (a list of allowed names).</li>
            <li>Defining <code>method_missing</code> without calling <code>super</code> for names you do not handle. Typos then return <code>nil</code> with no error, instead of raising <code>NoMethodError</code>.</li>
            <li>Defining <code>method_missing</code> but not <code>respond_to_missing?</code>. Then <code>respond_to?</code> says <code>false</code> for methods that actually work.</li>
            <li>Using <code>method_missing</code> when you already know the list of names. <code>define_method</code> in a loop is faster. It shows up in <code>instance_methods</code>, and it is easier to debug.</li>
            <li>Using metaprogramming when you do not need it. If a plain method or a hash lookup does the job, write that. People read code much more often than they write it.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add a <code>:grade</code> attribute to <code>tracked_attr</code>. Set it twice, then print <code>s.changes</code>. Next, add <code>fail?</code> to the <code>define_method</code> loop. It is true when marks are below 40. Finally, take the list <code>%w[name marks roll_no]</code>, like names typed by a user, and get their values. Only call names that pass <code>s.respond_to?(name)</code>. Which one is skipped, and why?</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> When a Rails method seems like magic, open <code>irb</code> or <code>bin/rails console</code> and ask Ruby. <code>obj.method(:name).owner</code> and <code>obj.method(:name).source_location</code> tell you which module defined it and in which file.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 16: Metaprogramming Basics

        module Tracked                                   # a home-made attr_accessor
          def tracked_attr(*names)
            names.each do |attr|
              define_method(attr) { instance_variable_get("@#{attr}") }
              define_method("#{attr}=") do |value|
                old = instance_variable_get("@#{attr}")
                (@changes ||= []) << "#{attr}: #{old.inspect} -> #{value.inspect}"
                instance_variable_set("@#{attr}", value)
              end
            end
          end
        end

        class Student
          extend Tracked                                 # tracked_attr becomes a class method
          tracked_attr :name, :marks
          attr_reader :changes

          %i[pass distinction].each do |level|           # generates pass? and distinction?
            limit = { pass: 40, distinction: 75 }[level]
            define_method("#{level}?") { marks.to_i >= limit }
          end

          private def roll_no = "IIT-042"
        end

        puts "=== define_method and class macros ==="
        s = Student.new
        s.name = "Asha"
        s.marks = 68
        s.marks = 81
        puts s.changes
        puts "pass? #{s.pass?}  distinction? #{s.distinction?}"
        p Student.instance_methods(false).sort

        puts "=== Introspection ==="
        p s.instance_variables
        p s.respond_to?(:marks=), s.respond_to?(:grade)
        p s.method(:changes).owner, Student.singleton_class.include?(Tracked)

        puts "=== send vs public_send ==="
        %w[name marks pass?].each { |msg| puts "#{msg} -> #{s.public_send(msg)}" }
        p s.send(:roll_no)                               # send ignores private
        begin
          s.public_send(:roll_no)
        rescue NoMethodError => e
          puts "NoMethodError: #{e.message}"
        end
      RUBY
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Exception Handling</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">An <strong>exception</strong> is an object that says "something went wrong". Examples are dividing by zero, a missing hash key, or bad input. If no code handles it, the program stops. With <code>begin/rescue</code> you can handle errors you expect. You can clean up with <code>ensure</code>. You can also define your own error classes for your business rules.</p>
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
          <p>Inside a method you can leave out <code>begin</code>. Put <code>rescue</code> and <code>ensure</code> just before the method's <code>end</code>. Blocks with <code>do ... end</code> allow this too.</p>
        </div>
        <div class="lc-section">
          <h2>The Exception Hierarchy</h2>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Raised when…</th></tr></thead>
            <tbody>
              <tr><td><code>Exception</code></td><td>The top of all errors. <strong>Never rescue this</strong>. It includes system signals and exit</td></tr>
              <tr><td>└ <code>StandardError</code></td><td>Normal program errors. Plain <code>rescue</code> catches this and its children</td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>ArgumentError</code></td><td>Wrong arguments, <code>Integer("abc")</code></td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>ZeroDivisionError</code></td><td><code>10 / 0</code> with integers</td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>KeyError</code> / <code>IndexError</code></td><td><code>hash.fetch(:missing)</code>, <code>[1].fetch(5)</code></td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>TypeError</code></td><td><code>1 + "2"</code></td></tr>
              <tr><td>&nbsp;&nbsp;├ <code>NameError</code> → <code>NoMethodError</code></td><td>Unknown name; calling a method that does not exist (often on <code>nil</code>)</td></tr>
              <tr><td>&nbsp;&nbsp;└ <code>RuntimeError</code></td><td>Default for <code>raise "message"</code></td></tr>
            </tbody>
          </table>
          <p>Rescue the <strong>most specific</strong> class you can. Put specific <code>rescue</code> clauses before general ones. Ruby uses the first one that matches.</p>
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
          <p>Make custom errors inherit from <code>StandardError</code> (not <code>Exception</code>). Then normal <code>rescue</code> clauses can catch them. A plain <code>raise</code> inside <code>rescue</code> raises the current error again. Use it after you have logged the error.</p>
        </div>
        <div class="lc-section">
          <h2>Reading an Error Message and Debugging</h2>
          <p>When an exception is not rescued, Ruby prints a <strong>backtrace</strong>: the error and the chain of method calls that led to it.</p>
          <div class="lc-code-block"><pre><code>def average(marks) = marks.sum / marks.size
        average([])</code></pre></div>
          <div class="lc-code-block lc-output"><pre><code>main.rb:1:in 'Integer#/': divided by 0 (ZeroDivisionError)
        	from main.rb:1:in 'Object#average'
        	from main.rb:2:in '&lt;main&gt;'</code></pre></div>
          <p>Read it like this. The <strong>first line</strong> says what went wrong (<code>ZeroDivisionError</code>, "divided by 0"). It also says where: file <code>main.rb</code>, line 1, inside <code>Integer#/</code>. Each <code>from</code> line is one step further back in the chain of calls. Go down until you reach the first line of <em>your</em> code. Here, line 2 called <code>average</code> with an empty array. In code, <code>e.backtrace</code> gives the same lines as an array. <code>e.full_message</code> gives the whole text.</p>
          <table class="lc-table">
            <thead><tr><th>Debugging tool</th><th>How</th><th>Where it works</th></tr></thead>
            <tbody>
              <tr><td>Print a value</td><td><code>p value</code>, <code>pp nested_hash</code></td><td>Everywhere, including this editor</td></tr>
              <tr><td>Pause and explore</td><td>Put <code>binding.irb</code> on a line. An <code>irb</code> prompt opens there with all local variables</td><td>Your own computer</td></tr>
              <tr><td>Step through code</td><td><code>require "debug"</code> then <code>binding.break</code>, or run <code>rdbg app.rb</code>. Commands: <code>next</code>, <code>step</code>, <code>continue</code></td><td>Your own computer (the <code>debug</code> gem comes with Ruby)</td></tr>
            </tbody>
          </table>
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
            <li>Writing <code>rescue Exception</code>. It also catches <code>Interrupt</code> (Ctrl+C) and <code>SystemExit</code>, so you cannot stop the program. Rescue <code>StandardError</code> or something more specific.</li>
            <li>Hiding errors with no message. <code>rescue =&gt; e; end</code> hides bugs. At least log <code>e.class</code> and <code>e.message</code>, or raise the error again.</li>
            <li>Using exceptions for normal program steps, like checking if a key exists. Use <code>key?</code>, <code>fetch(key, default)</code> or <code>Integer(text, exception: false)</code>.</li>
            <li>Putting a very large block inside one <code>begin/rescue</code>. Keep the protected code small. Then you know exactly which line can fail.</li>
            <li>Making custom errors inherit from <code>Exception</code>. A plain <code>rescue</code> will not catch them.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write <code>safe_divide(a, b)</code>. It returns the result. It returns the string <code>"cannot divide by zero"</code> when <code>b</code> is 0. It always prints <code>"done"</code> from an <code>ensure</code>. Then create an <code>InvalidMarksError</code>. Raise it from a method when marks are outside 0–100.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> For a library or app, create one base error (<code>class MyApp::Error &lt; StandardError</code>). Make all your custom errors inherit from it. Other code can then rescue every error from your code with a single <code>rescue MyApp::Error</code>.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 17: Exception Handling

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

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Struct and Data</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Many objects are mostly <strong>a few named values</strong>: a point, an order line, an API response. Writing a full class with <code>initialize</code> and readers for each one takes a lot of repeated code. <code>Struct</code> and <code>Data</code> build such classes in one line. <code>Data</code> (Ruby 3.2+) makes <strong>immutable value objects</strong>. These are objects that cannot change after you create them. This is the modern default.</p>
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
          <p>You can add methods in a block: <code>Point = Data.define(:x, :y) do ... end</code>. To check values or set defaults, override <code>initialize</code> with keyword arguments. Then call <code>super</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Struct: Mutable Records</h2>
          <div class="lc-code-block"><pre><code>Item = Struct.new(:name, :price, :qty)
        line = Item.new("Pen", 10, 3)       # positional
        line = Item.new(name: "Pen", price: 10, qty: 3)   # keywords (Ruby 3.2+)
        line.qty += 1                       # setters exist
        line.to_a                           # ["Pen", 10, 4]
        Item.new("Pen")                     # missing members become nil!</code></pre></div>
          <p>Before Ruby 3.2, you needed <code>keyword_init: true</code> to pass keywords to a Struct. Now both styles work by default.</p>
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
          <p>Immutable values are easier to think about. No other code can change a <code>Data</code> object without you knowing. So you can safely share it and use it as a hash key.</p>
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
          <p>The custom <code>initialize</code> gives <code>qty</code> a default of 1 and rejects bad values. Then <code>super</code> stores the fields. <code>with</code> returned a <em>new</em> item. <code>chai</code> itself never changed.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Trying to change a <code>Data</code> field (<code>item.qty = 2</code>). There are no setters. Use <code>item.with(qty: 2)</code> to get an updated copy.</li>
            <li>Using <code>Struct</code> and forgetting a value. <code>Item.new("Pen")</code> sets <code>price</code> to <code>nil</code> with no warning. <code>Data</code> raises an error instead.</li>
            <li>Thinking "immutable" goes all the way down. If a <code>Data</code> field holds an array, the array itself can still be changed. Freeze it, or store frozen values.</li>
            <li>Using <code>Data</code> for objects whose job is to change over time (a bank account, a game character). Use a normal class there.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, define <code>Coordinate = Data.define(:lat, :lng)</code> with a method <code>to_s</code> that prints <code>"37.77N, 122.42W"</code>. Create coordinates for San Francisco and Los Angeles. Check that two equal coordinates are <code>==</code>. Use them as keys in a hash of city names.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> <code>Data</code> and <code>Struct</code> objects work with pattern matching with no extra setup: <code>case point in {x: 0, y:}</code>. The next lesson covers this.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 18: Struct and Data

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

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Pattern Matching</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead"><strong>Pattern matching</strong> with <code>case/in</code> (stable since Ruby 3.0) checks the <em>shape</em> of data. It also takes out the parts you need in one step. It works very well for JSON-like hashes, API responses, commands and <code>Data</code> objects.</p>
        </div>
        <div class="lc-section">
          <h2>case/when vs case/in</h2>
          <table class="lc-table">
            <thead><tr><th></th><th><code>case/when</code> (lesson 4)</th><th><code>case/in</code></th></tr></thead>
            <tbody>
              <tr><td>Checks</td><td>One value with <code>===</code></td><td>The structure: types, keys, array length, nested values</td></tr>
              <tr><td>Binds variables</td><td>No</td><td>Yes: <code>in {name: String =&gt; name}</code> sets <code>name</code></td></tr>
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
              <tr><td><code>in [x, y]</code></td><td>An array of <strong>exactly</strong> two items. Binds (sets) <code>x</code> and <code>y</code></td></tr>
              <tr><td><code>in [first, *rest]</code></td><td>An array with at least one item</td></tr>
              <tr><td><code>in [*, 0, *]</code></td><td>"Find pattern": an array that contains 0 anywhere</td></tr>
              <tr><td><code>in {status: "ok", data:}</code></td><td>A hash with those keys (extra keys allowed). Binds <code>data</code></td></tr>
              <tr><td><code>in {name: String =&gt; n}</code></td><td>Check the type <strong>and</strong> bind the value to <code>n</code></td></tr>
              <tr><td><code>in {id:, **nil}</code></td><td>A hash with only the key <code>:id</code></td></tr>
              <tr><td><code>in ^expected</code></td><td>"Pin": compare with a variable you already have, instead of binding a new one</td></tr>
              <tr><td><code>in Point(x:, y:)</code></td><td>A <code>Point</code> object (Data/Struct) with its fields bound</td></tr>
              <tr><td><code>in [x, y] if x == y</code></td><td>Guard: the pattern matches <strong>and</strong> the condition is true</td></tr>
            </tbody>
          </table>
          <p>Hash patterns only work with <strong>symbol keys</strong>. Read JSON with <code>symbolize_names: true</code> before matching (lesson 20).</p>
        </div>
        <div class="lc-section">
          <h2>One-Line Forms</h2>
          <ul class="lc-list">
            <li><code>value in pattern</code> returns <code>true</code>/<code>false</code>: <code>config in {debug: true}</code>.</li>
            <li><code>value =&gt; pattern</code> takes the value apart into variables (destructures). It raises <code>NoMatchingPatternError</code> if it does not fit: <code>user =&gt; {name:, city:}</code> creates <code>name</code> and <code>city</code>.</li>
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
        user = { name: "Asha", city: "London", age: 20 }
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
        Asha from London</code></pre></div>
          <p>Notice that <code>{status: 503, retry: true}</code> matched <code>{status: 500.. =&gt; code}</code> even with the extra <code>retry</code> key. Also, the order of <code>in</code> branches matters. The empty-items case is checked first.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Forgetting <code>else</code>. If nothing matches, <code>case/in</code> raises <code>NoMatchingPatternError</code> instead of returning <code>nil</code>.</li>
            <li>Writing <code>in {name: name}</code> to compare with an existing <code>name</code> variable. It <em>binds</em> a new value instead. Use <code>^name</code> to compare.</li>
            <li>Matching string-keyed hashes (<code>{"status" =&gt; 200}</code>) with hash patterns. Only symbol keys work.</li>
            <li>Expecting array patterns to allow extra items. <code>[1, 2, 3] in [a, b]</code> is <code>false</code>. Use <code>[a, b, *]</code>.</li>
            <li>Mixing <code>when</code> and <code>in</code> branches in the same <code>case</code>. That is a syntax error.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, write <code>handle(command)</code> for a small chat bot. It receives arrays like <code>["greet", "Asha"]</code>, <code>["add", 2, 3]</code>, <code>["add", *numbers]</code> and <code>["quit"]</code>. Use array patterns with <code>Integer</code> checks. Return a helpful message for anything unknown.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Your own classes can support hash patterns. Define <code>deconstruct_keys(keys)</code> and return a hash. For array patterns, define <code>deconstruct</code> and return an array. <code>Data</code> and <code>Struct</code> already define both.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 19: Pattern Matching

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

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">JSON, Files and the Standard Library</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Ruby comes with a large <strong>standard library</strong> (ready-made code that is installed with Ruby). It has JSON, dates and times, sets, hashing and more. You load most of it with <code>require</code>. This lesson shows the parts you will use in almost every real program. This includes reading and writing files.</p>
        </div>
        <div class="lc-section">
          <h2>Core, Default Gems and Bundled Gems</h2>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Examples</th><th>How to use it</th></tr></thead>
            <tbody>
              <tr><td>Core</td><td><code>String</code>, <code>Array</code>, <code>Hash</code>, <code>File</code>, <code>Time</code></td><td>Always available</td></tr>
              <tr><td>Autoloaded / core since 4.0</td><td><code>Set</code></td><td>No <code>require</code> needed since Ruby 3.2 (it became a core class in Ruby 4.0)</td></tr>
              <tr><td>Default gems</td><td><code>json</code>, <code>date</code>, <code>time</code>, <code>digest</code>, <code>securerandom</code></td><td><code>require "json"</code>. Installed with Ruby</td></tr>
              <tr><td>Bundled gems</td><td><code>csv</code>, <code>bigdecimal</code>, <code>base64</code> (since Ruby 3.4), <code>minitest</code></td><td>Installed with Ruby. But in a Bundler project you must add them to your <code>Gemfile</code> (for example <code>gem "csv"</code>)</td></tr>
              <tr><td>Other gems</td><td><code>rails</code>, <code>nokogiri</code></td><td><code>gem install</code> or <code>bundle add</code></td></tr>
            </tbody>
          </table>
          <p><strong>Note for this editor:</strong> the Ruby 3.4 in your browser includes <code>json</code>, <code>csv</code>, <code>date</code>, <code>time</code>, <code>set</code>, <code>digest</code>, <code>securerandom</code> and more. It does not have <code>bigdecimal</code>, network access or files on your disk. Run the file examples on your own computer.</p>
        </div>
        <div class="lc-section">
          <h2>Gems and Bundler</h2>
          <p>A <strong>gem</strong> is a packaged Ruby library from <code>rubygems.org</code>. In a real project, you do not install gems by hand one at a time. You list them in a <code>Gemfile</code>. Then <strong>Bundler</strong> installs exactly the right versions for everyone on the team.</p>
          <div class="lc-code-block"><pre><code># Gemfile
        source "https://rubygems.org"

        gem "csv"                 # bundled gem: still list it
        gem "rainbow", "~&gt; 3.1"   # any 3.x from 3.1 up, never 4.0
        gem "minitest", group: :test</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Command</th><th>What it does</th></tr></thead>
            <tbody>
              <tr><td><code>bundle init</code></td><td>Creates an empty <code>Gemfile</code></td></tr>
              <tr><td><code>bundle add rainbow</code></td><td>Adds a gem line to the <code>Gemfile</code> and installs it</td></tr>
              <tr><td><code>bundle install</code></td><td>Installs everything and writes <code>Gemfile.lock</code> with the exact versions used</td></tr>
              <tr><td><code>bundle exec ruby app.rb</code></td><td>Runs your program using only the locked gem versions</td></tr>
              <tr><td><code>bundle update rainbow</code></td><td>Moves one gem to a newer allowed version and updates the lock file</td></tr>
            </tbody>
          </table>
          <p>For applications, commit both <code>Gemfile</code> and <code>Gemfile.lock</code> to Git. Then every computer and server runs the same versions. Inside a Bundler project, <code>require</code> only finds gems listed in the <code>Gemfile</code>.</p>
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
          <p>CSV (comma-separated values) is a common format that spreadsheets use to export data. Do not split lines on commas yourself. A value like <code>"Sharma, Priya"</code> has a comma inside quotes. The <code>csv</code> library handles that correctly:</p>
          <div class="lc-code-block"><pre><code>require "csv"

        rows = CSV.parse(text, headers: true, header_converters: :symbol, converters: :integer)
        rows.map(&amp;:to_h)                 # [{name: "Asha", marks: 91}, ...]
        CSV.generate_line(["Ravi", 67])  # "Ravi,67\n"
        # On your computer: CSV.foreach("marks.csv", headers: true) { |row| ... }</code></pre></div>
          <p><code>headers: true</code> uses the first line as column names. <code>header_converters: :symbol</code> turns them into symbols. <code>converters: :integer</code> turns values that look like numbers into Integers.</p>
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
          <p>Always use the block form of <code>File.open</code>. The file is then closed automatically, even if an exception happens inside the block. Missing files raise <code>Errno::ENOENT</code>.</p>
          <p>A file's content is just a string, so every string method works on it. The starter code uses a heredoc string (a multi-line string) in place of a file.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example</h2>
          <div class="lc-code-block"><pre><code>require "json"
        require "csv"
        require "date"
        require "digest"

        report = &lt;&lt;~TEXT
          name,city,marks
          "Sharma, Priya",London,91
          Ravi,Chicago,67
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
          <div class="lc-code-block lc-output"><pre><code>{name: "Sharma, Priya", city: "London", marks: 91}
        [{"name":"Sharma, Priya","city":"London","marks":91},{"name":"Ravi","city":"Chicago","marks":67}]
        158
        Monday, 26 January 2026
        333
        2026-02-26
        ["json", "rails", "ruby"]
        2cf24dba5fb0</code></pre></div>
          <p>The quoted name kept its comma. <code>converters: :integer</code> made the marks real numbers, so <code>sum</code> works without conversion. <code>date &gt;&gt; 1</code> moves one month forward.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Reading <code>data[:name]</code> after a plain <code>JSON.parse</code>. The keys are strings, so you get <code>nil</code>. Use <code>data["name"]</code> or <code>symbolize_names: true</code>.</li>
            <li>Forgetting <code>require "json"</code> and getting <code>NoMethodError: undefined method 'to_json'</code>.</li>
            <li>Opening files without a block and forgetting <code>close</code>. Use <code>File.open(...) { }</code>, <code>File.read</code> or <code>File.write</code>.</li>
            <li>Using <code>File.readlines</code> on a very large log file. It loads everything into memory. Use <code>File.foreach</code>.</li>
            <li>Splitting CSV lines with <code>line.split(",")</code>. It fails on quoted values that contain commas. Use <code>CSV.parse</code>.</li>
            <li>On Ruby 3.4+, writing <code>require "csv"</code> in a Bundler project without adding <code>gem "csv"</code> to the Gemfile. It raises <code>LoadError</code>, because csv is now a bundled gem.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, add a student whose name contains a comma (use quotes in the CSV text). Check that it is parsed correctly. Then print the students with 75 marks or more as neatly formatted JSON with <code>JSON.pretty_generate</code>. Finally, use <code>Date</code> to print how many days are left from 25 September 2026 until your next birthday.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Before installing a gem, check the standard library. <code>Set</code>, <code>JSON</code>, <code>Date</code>, <code>Digest</code>, <code>SecureRandom</code> and <code>Time#iso8601</code> cover a lot of everyday work.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 20: JSON, Files and the Standard Library
        require "json"
        require "csv"
        require "date"
        require "digest"
        require "securerandom"

        # In a real program: text = File.read("students.csv")
        text = <<~DATA
          name,city,marks,joined
          Asha,London,91,2025-07-01
          "Iyer, Ravi",Chicago,67,2024-07-15
          Meena,Los Angeles,78,2025-01-10
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
        p JSON.parse('{"city": "London"}')        # string keys by default

        puts "=== Dates ==="
        today = Date.new(2026, 9, 25)           # fixed date so output never changes
        students.each do |s|
          puts "#{s[:name]} has been a member for #{(today - s[:joined]).to_i} days"
        end
        puts "Next month: #{today >> 1}, weekday: #{today.strftime('%A')}"

        puts "=== Set, Digest, SecureRandom ==="
        cities = Set.new(students.map { |s| s[:city] })
        cities << "London"                        # duplicates are ignored
        puts "Cities: #{cities.to_a.sort.join(', ')} (#{cities.size})"
        puts "SHA-256 of 'hello': #{Digest::SHA256.hexdigest('hello')[0, 16]}..."
        token = SecureRandom.hex(8)             # random each run
        puts "Random token length: #{token.length}"
      RUBY
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Testing with Minitest</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Professional Ruby code comes with <strong>automated tests</strong>. These are small programs that check your code gives the right answers. <strong>Minitest</strong> comes with Ruby as a bundled gem. It is the default testing library in Rails. Tests let you change code without fear. If something breaks, a test tells you at once.</p>
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
          <p>Each method whose name starts with <code>test_</code> is one test. Run the file with <code>ruby test/cart_test.rb</code>. In a Rails app, you run <code>bin/rails test</code>. In a Bundler project, add <code>gem "minitest"</code> to the Gemfile.</p>
        </div>
        <div class="lc-section">
          <h2>Reading the Output</h2>
          <p>Minitest prints a dot for each passing test. It prints <code>F</code> for a failure and <code>E</code> for an unexpected exception. When a test fails, you see something like this (the seed and timings change on every run):</p>
          <div class="lc-code-block"><pre><code>Run options: --seed 40312

        # Running:

        .F.

        Finished in 0.001204s, 2491.7 runs/s, 2491.7 assertions/s.

          1) Failure:
        CartTest#test_total_adds_price_times_quantity [test/cart_test.rb:17]:
        Expected: 280
          Actual: 260

        3 runs, 3 assertions, 1 failures, 0 errors, 0 skips</code></pre></div>
          <p>The <code>--seed</code> shows that Minitest runs tests in a <strong>random order</strong>. This finds tests that depend on each other without you knowing. Use the same seed (<code>--seed 40312</code>) to repeat a run exactly.</p>
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
              <tr><td><code>assert_raises(KeyError) { ... }</code></td><td>the block raises that error. It returns the exception, so you can check its message</td></tr>
              <tr><td><code>assert_match(/\d+/, text)</code></td><td>the text matches the regular expression (a text pattern)</td></tr>
            </tbody>
          </table>
          <p>Minitest also has a spec style (<code>describe</code> / <code>it</code> / <code>_(x).must_equal y</code>). Another popular framework is <strong>RSpec</strong>. The ideas are the same.</p>
        </div>
        <div class="lc-section">
          <h2>Red, Green, Refactor</h2>
          <ul class="lc-list">
            <li><strong>Red</strong>: write a test for the behaviour you want. Run it and see it fail.</li>
            <li><strong>Green</strong>: write the simplest code that makes it pass.</li>
            <li><strong>Refactor</strong>: clean up the code while the tests keep passing (green).</li>
          </ul>
          <p>This cycle is called test-driven development (TDD). You may not always write tests first. But write a test for every bug you fix, so it can never come back.</p>
        </div>
        <div class="lc-section">
          <h2>Worked Example: How assert_equal Works</h2>
          <p>The editor has no gems. But an assertion (a check in a test) is just a method that raises an error when something is wrong. This small version shows the idea:</p>
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
          <p>The third test has a wrong expectation. A failing test means <em>either</em> the code or the test is wrong. Read both before you change anything.</p>
        </div>
        <div class="lc-section lc-card">
          <h2>Common mistakes</h2>
          <ul class="lc-list">
            <li>Swapping the arguments: <code>assert_equal @cart.total, 280</code>. Say the cart total is wrongly 260. The message then says "Expected: 260, Actual: 280", which is confusing. Put the expected value first.</li>
            <li>Testing floats (decimal numbers) with <code>assert_equal</code> after arithmetic. Use <code>assert_in_delta</code>.</li>
            <li>Tests that depend on each other or on shared state. Build fresh objects in <code>setup</code>.</li>
            <li>Naming a method <code>check_total</code> instead of <code>test_total</code>. Minitest skips it with no warning.</li>
            <li>Only testing the "happy path" (the normal case where all goes well). Also test edge cases (unusual inputs): empty input, zero, negative numbers, missing keys.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>In the editor, the starter code has a small test runner and a <code>Cart</code> class with one failing test. Read the failure message. Decide if the code or the test is wrong, and fix it. Then add two tests. One tests <code>count</code> after adding items with quantities. The other checks that an empty cart has a total of 0.</p>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Good test names read like rules the code must follow: <code>test_rejects_negative_price</code>, <code>test_total_includes_gst</code>. When one fails, the name alone tells you what broke.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # Lesson 21: Testing with Minitest
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

    22 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-ruby">Ruby</div>
          <h1 class="lc-title">Capstone Project: Library Manager</h1>
        </div>
        <div class="lc-intro">
          <p class="lc-lead">Now you will use everything together. You will build a small <strong>library manager</strong> for a college library. It loads books from JSON and lends and returns them. It rejects wrong actions with clear errors and prints a report. The finished starter is only 50 lines. This is because it uses the right Ruby tool at every step.</p>
        </div>
        <div class="lc-section">
          <h2>Project Brief</h2>
          <ul class="lc-list">
            <li>Load the catalogue from JSON text into immutable <code>Book</code> values.</li>
            <li>Keep books and loans inside a <code>Library</code> object. No outside code may change them directly.</li>
            <li>Process a list of commands (<code>lend</code>, <code>return</code>, anything else) and print <code>OK</code>, <code>FAIL</code> or <code>SKIP</code> for each.</li>
            <li>Some actions must raise a <code>Library::Error</code>: lending a missing or already-lent book, or returning a book that is not on loan. The error is turned into a <code>FAIL</code> line. The program never crashes.</li>
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
              <tr><td><code>sort_by</code>, <code>group_by</code>, <code>max_by</code>, <code>count</code> on a <code>Library</code></td><td>Enumerable mixin</td><td>10, 15</td></tr>
              <tr><td><code>Library</code> class with private state</td><td>Classes and objects</td><td>12</td></tr>
              <tr><td><code>Library::Error &lt; StandardError</code></td><td>Custom exceptions, <code>rescue</code> in a method</td><td>17</td></tr>
              <tr><td><code>Book = Data.define(...)</code></td><td>Immutable value objects</td><td>18</td></tr>
              <tr><td><code>case command in {action: "lend", ...}</code></td><td>Pattern matching on hashes</td><td>19</td></tr>
              <tr><td><code>JSON.parse(..., symbolize_names: true)</code></td><td>Standard library</td><td>20</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Step by Step</h2>
          <ul class="lc-list">
            <li><strong>1. Model the data.</strong> A book never changes, so it is a <code>Data</code> value with a friendly <code>to_s</code>.</li>
            <li><strong>2. Build the collection.</strong> <code>Library</code> stores books in a hash, so it can find a book by ISBN quickly. It defines <code>each</code> and includes <code>Enumerable</code>. So you get sorting, counting and grouping for free.</li>
            <li><strong>3. Enforce the rules.</strong> <code>lend</code> and <code>give_back</code> raise <code>Library::Error</code>. Its message explains exactly what went wrong.</li>
            <li><strong>4. Dispatch commands.</strong> <code>run</code> uses <code>case/in</code> to check each command's shape. It calls the library. It rescues <code>Library::Error</code> and turns it into a <code>FAIL</code> line. Unknown actions match the last pattern.</li>
            <li><strong>5. Report.</strong> The main program reads the JSON, loops over the commands and prints the results.</li>
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
          <p>Three one-line methods turned <code>Library</code> into a full collection. The anonymous block parameter <code>&amp;</code> (Ruby 3.1+) is a block parameter with no name. It passes the caller's block straight to <code>each_value</code>.</p>
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
            <li>Loading commands from JSON without <code>symbolize_names: true</code>. Hash patterns only match symbol keys. So no <code>in</code> branch would match, and <code>run</code> would crash with <code>NoMatchingPatternError</code>.</li>
            <li>Rescuing <code>StandardError</code> in <code>run</code> instead of <code>Library::Error</code>. Real bugs (like a typo causing <code>NoMethodError</code>) would then be hidden as "FAIL" messages.</li>
            <li>Giving out <code>@loans</code> with <code>attr_accessor</code>. Then other code can edit loans directly and skip the rules in <code>lend</code>.</li>
            <li>Putting the most general pattern (<code>in {action:}</code>) first. It would match every command.</li>
          </ul>
        </div>
        <div class="lc-section lc-card">
          <h2>Try it</h2>
          <p>Add to the project in the editor, one step at a time. Run it after each change:</p>
          <ul class="lc-list">
            <li>Add a <code>"search"</code> command with a <code>query</code>. It lists titles that contain the text, ignoring upper and lower case. Build the pattern safely with <code>Regexp.new(Regexp.escape(query), Regexp::IGNORECASE)</code> (Lesson 11).</li>
            <li>Limit each member to 2 books at a time and raise a new <code>Library::LimitReached &lt; Library::Error</code>.</li>
            <li>Store a due date with each loan (<code>Date.new(2026, 9, 25) + 14</code>). Print overdue books with a fine of ₹5 per day.</li>
            <li>Add a <code>to_json</code> method that saves the library state. On your own computer, write it to a file. Also add Minitest tests for <code>lend</code> and <code>give_back</code>.</li>
          </ul>
        </div>
        <div class="lc-tip lc-card--tip"><span class="lc-tip-icon">💡</span><p><strong>Tip:</strong> Your next step is <strong>Ruby on Rails</strong>. The same ideas appear everywhere there: classes with validations, modules as concerns, blocks for callbacks, Enumerable on query results, and Minitest for tests. Put this project on GitHub with a README and tests. It is a great first project to show employers.</p></div>
      HTML
      starter_code: <<~'RUBY'
        # frozen_string_literal: true
        # Lesson 22: Capstone Project - Library Manager
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

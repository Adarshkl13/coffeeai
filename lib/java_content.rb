module JavaContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Introduction to Java</h1>
        </div>
        <p class="lc-lead">Java is a general-purpose programming language. It is <strong>strongly typed, object-oriented</strong>: every value has a fixed type, and code is built from objects. James Gosling created it at Sun Microsystems in 1995. Oracle owns it now. Its motto is <em>"Write Once, Run Anywhere"</em>. You compile (translate) your code once. Then the same program runs on Windows, macOS, Linux or a cloud server.</p>
        <div class="lc-card">
          <h3>Where Java Is Used</h3>
          <ul class="lc-list">
            <li><strong>Backend services</strong>: banking, insurance, e-commerce and payment systems. These are often built with the Spring Boot framework.</li>
            <li><strong>Android apps</strong>: Android's own libraries are written in Java. Many new apps use Kotlin, which also runs on the JVM.</li>
            <li><strong>Big data and messaging</strong>: tools such as Apache Kafka, Hadoop and Elasticsearch run on the JVM.</li>
            <li><strong>Campus placements</strong>: Java is very common in coding rounds. IT services companies also use it to train freshers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>How a Java Program Runs</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">You write<br><code>Main.java</code></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step"><code>javac</code> compiles to<br><code>Main.class</code> (bytecode)</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">The JVM runs the bytecode<br>on any operating system</div>
          </div>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>What it is</th></tr></thead>
            <tbody>
              <tr><td><strong>JDK</strong> (Java Development Kit)</td><td>Everything you need to build Java programs: the compiler <code>javac</code>, the <code>java</code> launcher, the standard library and tools. Install this.</td></tr>
              <tr><td><strong>JVM</strong> (Java Virtual Machine)</td><td>The program that loads bytecode and runs it. It has a JIT (just-in-time) compiler. The JIT turns code that runs often into fast machine code.</td></tr>
              <tr><td><strong>Bytecode</strong></td><td>The portable instructions inside a <code>.class</code> file. The same file runs on every JVM.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Java Versions in 2026</h3>
          <p>A new Java version comes out every six months, in March and September. Every two years, one of them is an <strong>LTS</strong> (long-term support) release. Companies use LTS releases for their live systems.</p>
          <table class="lc-table">
            <thead><tr><th>Version</th><th>Released</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Java 8</td><td>2014</td><td>Old LTS: added lambdas and streams. You still see it in old projects.</td></tr>
              <tr><td>Java 11</td><td>2018</td><td>LTS: added the <code>HttpClient</code> API and new <code>String</code> methods such as <code>isBlank()</code>, <code>strip()</code> and <code>repeat()</code>. You can also run a single file directly with <code>java Main.java</code>. Still common in older company projects.</td></tr>
              <tr><td>Java 17</td><td>2021</td><td>LTS: records, sealed classes, text blocks, switch expressions. <strong>The editor in this course runs Java 17.</strong></td></tr>
              <tr><td>Java 21</td><td>2023</td><td>LTS: virtual threads, record patterns, pattern matching in <code>switch</code>.</td></tr>
              <tr><td>Java 25</td><td>September 2025</td><td>Current LTS: compact source files and instance <code>main</code> methods for beginners.</td></tr>
              <tr><td>Java 27</td><td>September 2026</td><td>Newest release (not LTS).</td></tr>
            </tbody>
          </table>
          <p>Everything you learn here also works on Java 21 and 25 with no changes. Features that need a newer version are marked <strong>Java 21+</strong>.</p>
        </div>
        <div class="lc-card">
          <h3>Your First Program</h3>
          <div class="lc-code-block"><pre><code>public class Main {
            public static void main(String[] args) {
                System.out.println("Namaste, Java!");
                System.out.print("Same ");
                System.out.println("line");
                System.out.printf("%s is %d years old%n", "Java", 31);
            }
        }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Namaste, Java!
        Same line
        Java is 31 years old</code></pre></div>
          <ul class="lc-list">
            <li><code>public class Main</code>: all Java code lives inside a class. A <code>public</code> class must be in a file with the same name: <code>Main.java</code>.</li>
            <li><code>public static void main(String[] args)</code>: the entry point (where the program starts). The JVM starts here.</li>
            <li><code>System.out.println</code> prints and then moves to a new line. <code>print</code> does not move to a new line. <code>printf</code> formats values (<code>%s</code> text, <code>%d</code> whole number, <code>%n</code> new line).</li>
            <li>Every statement ends with a semicolon <code>;</code>. Comments start with <code>//</code> (one line) or sit between <code>/* ... */</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Compiling and Running on Your Own Computer</h3>
          <div class="lc-code-block"><pre><code>javac Main.java      # creates Main.class
        java Main            # runs it (no .class extension)

        java Main.java       # Java 11+: compile and run a single file in one step</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>File name does not match the public class</strong>: <code>public class Main</code> inside <code>main.java</code> does not compile. Names are case-sensitive (capital and small letters are different).</li>
            <li><strong>Wrong capitalisation</strong>: for example <code>system.out.println</code>, or <code>String[] Args</code> in the wrong place. <code>System</code> and <code>String</code> start with capitals.</li>
            <li><strong>Missing semicolon or brace</strong>: read the first compiler error. It shows the file and line number.</li>
            <li><strong>Mixing up JDK and JVM</strong>: you need the JDK to compile. The JVM only runs code.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the editor, add three lines. Print your name, your city and your favourite subject, each on its own line. Then use <code>printf</code> to print <code>I have 2 exams this week</code>. Use <code>%d</code> for the number.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In Java 25+, a beginner can write just <code>void main() { IO.println("Hi"); }</code> in a file. This is called a "compact source file". It does <strong>not</strong> compile on Java 17. So this course always uses the full <code>public class Main</code> form. That form works on every version.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // 1. println prints text and then a new line
                System.out.println("Namaste, Java!");
                System.out.println("Java runs on the JVM.");

                // 2. print does NOT add a new line
                System.out.print("Write once, ");
                System.out.println("run anywhere.");

                // 3. printf formats values: %s = text, %d = whole number, %n = new line
                System.out.printf("%s was released in %d%n", "Java", 1995);
                System.out.printf("This editor runs Java %d (an LTS version)%n", 17);

                // 4. Arithmetic inside println
                System.out.println("10 + 5 = " + (10 + 5));
                System.out.println("Minutes in a day: " + (24 * 60));

                // 5. Careful: + with text joins left to right
                System.out.println("1 + 2 = " + 1 + 2);   // joins as text
                System.out.println("1 + 2 = " + (1 + 2)); // brackets do maths first
                System.out.println(1 + 2 + " is the sum"); // maths happens first here

                /* 6. A multi-line comment:
                   nothing inside here runs. */
                System.out.println("Done!");
            }
        }
      JAVA
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Variables and Data Types</h1>
        </div>
        <p class="lc-lead">Java is <strong>statically typed</strong>. This means every variable has a type, and the compiler knows it before the program runs. This finds many bugs early. For example, you cannot store text in a number variable by mistake.</p>
        <div class="lc-card">
          <h3>The Eight Primitive Types</h3>
          <p>Primitives (basic types) hold simple values directly. Everything else (like <code>String</code>) is a <strong>reference type</strong>. A reference type points to an object stored in memory.</p>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Size</th><th>Range / meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>byte</code></td><td>8-bit</td><td>-128 to 127</td><td><code>byte level = 100;</code></td></tr>
              <tr><td><code>short</code></td><td>16-bit</td><td>-32,768 to 32,767</td><td><code>short year = 2026;</code></td></tr>
              <tr><td><code>int</code></td><td>32-bit</td><td>about ±2.1 billion (-2,147,483,648 to 2,147,483,647)</td><td><code>int marks = 87;</code></td></tr>
              <tr><td><code>long</code></td><td>64-bit</td><td>about ±9.2 × 10<sup>18</sup></td><td><code>long population = 1_450_000_000L;</code></td></tr>
              <tr><td><code>float</code></td><td>32-bit</td><td>decimal, about 6–7 significant digits</td><td><code>float ratio = 0.75f;</code></td></tr>
              <tr><td><code>double</code></td><td>64-bit</td><td>decimal, about 15–16 significant digits</td><td><code>double pi = 3.14159;</code></td></tr>
              <tr><td><code>char</code></td><td>16-bit</td><td>one UTF-16 code unit (a character), 0 to 65,535</td><td><code>char grade = 'A';</code></td></tr>
              <tr><td><code>boolean</code></td><td>not fixed by the spec</td><td>only <code>true</code> or <code>false</code></td><td><code>boolean passed = true;</code></td></tr>
            </tbody>
          </table>
          <p>The Java specification does not set a size for <code>boolean</code>. In practice, JVMs use at least one byte for it. It is never a single bit in memory. You never need its size. Just use <code>true</code> and <code>false</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Declaring Variables, <code>final</code> and <code>var</code></h3>
          <div class="lc-code-block"><pre><code>int age = 20;                  // type name = value;
        double cgpa = 8.6;
        String state = "Kerala";       // String is a class, not a primitive
        long fee = 1_25_000L;          // underscores make big numbers readable
        final double GST_RATE = 0.18;  // final = cannot be reassigned (a constant)

        var count = 10;                // Java 10+: compiler infers int
        var name = "Asha";             // compiler infers String
        // count = "ten";              // ERROR: count is still an int</code></pre></div>
          <ul class="lc-list">
            <li><code>var</code> works only for <strong>local variables with a starting value</strong>. It is not dynamic typing. The type is still fixed when the code compiles.</li>
            <li>Use <code>var</code> when the type is clear from the right-hand side (<code>var list = new ArrayList&lt;String&gt;();</code>). Write the type when it helps the reader.</li>
            <li>Name variables in <code>camelCase</code>; name constants in <code>UPPER_SNAKE_CASE</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Type Conversion (Casting)</h3>
          <div class="lc-code-block"><pre><code>int whole = 7;
        double d = whole;              // widening: automatic, safe -&gt; 7.0
        int cut = (int) 9.99;          // narrowing: explicit cast, TRUNCATES -&gt; 9
        byte small = (byte) 200;       // does not fit: wraps around -&gt; -56
        char next = (char) ('A' + 1);  // chars are numbers underneath -&gt; 'B'
        int big = Integer.MAX_VALUE + 1; // overflow wraps -&gt; -2147483648
        int parsed = Integer.parseInt("42");  // text -&gt; int
        String text = String.valueOf(3.5);    // double -&gt; text "3.5"</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Conversion</th><th>Automatic?</th><th>Risk</th></tr></thead>
            <tbody>
              <tr><td><code>int</code> → <code>long</code> / <code>double</code></td><td>Yes (widening)</td><td>None for int → long</td></tr>
              <tr><td><code>double</code> → <code>int</code></td><td>No, needs <code>(int)</code></td><td>Decimal part is dropped</td></tr>
              <tr><td><code>int</code> → <code>byte</code> / <code>short</code></td><td>No, needs a cast</td><td>Value can wrap around</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: A Course Fee Receipt</h3>
          <div class="lc-code-block"><pre><code>final double GST_RATE = 0.18;
        var course = "Java Basics";
        int fee = 4999;
        double gst = fee * GST_RATE;          // int * double = double
        long total = Math.round(fee + gst);   // Math.round(double) returns long
        System.out.println(course + " fee: " + fee);
        System.out.println("GST: " + gst);
        System.out.println("Total (rounded): " + total);</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Java Basics fee: 4999
        GST: 899.8199999999999
        Total (rounded): 5899</code></pre></div>
          <p>Look at the tiny error in <code>899.8199999999999</code>. A <code>double</code> is not exact. The next lesson shows how to handle money exactly.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>L</code> on big numbers</strong>: <code>long x = 3000000000;</code> fails. The literal (the number you typed) is read as an <code>int</code>. Write <code>3000000000L</code>.</li>
            <li><strong>Forgetting <code>f</code> on floats</strong>: <code>float r = 0.5;</code> fails, because <code>0.5</code> is a <code>double</code>.</li>
            <li><strong>Expecting <code>(int)</code> to round</strong>: <code>(int) 3.99</code> is <code>3</code>. Use <code>Math.round</code> to round.</li>
            <li><strong>Using a variable before giving it a value</strong>: local variables have no default value. The compiler stops you.</li>
            <li><strong><code>var</code> without a value</strong>: <code>var x;</code> and <code>var y = null;</code> do not compile.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Declare a <code>final int SEATS = 60;</code>. Add an <code>int</code> for students enrolled (say 75). Print how many students are over the limit. Then try <code>short s = 40000;</code> and read the compiler error. Why does it fail?</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Good default choices: <code>int</code> for whole numbers, <code>long</code> for very large counts or milliseconds, <code>double</code> for measurements, <code>boolean</code> for yes/no. Use <code>byte</code>, <code>short</code> and <code>float</code> only for a clear reason, such as large arrays or file formats.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // All eight primitive types
                byte level = 100;
                short year = 2026;
                int marks = 87;
                long population = 1_450_000_000L;   // L suffix for long
                float ratio = 0.75f;                // f suffix for float
                double cgpa = 8.64;
                char grade = 'A';
                boolean passed = true;

                System.out.println("byte:    " + level);
                System.out.println("short:   " + year);
                System.out.println("int:     " + marks);
                System.out.println("long:    " + population);
                System.out.println("float:   " + ratio);
                System.out.println("double:  " + cgpa);
                System.out.println("char:    " + grade);
                System.out.println("boolean: " + passed);

                // var: the compiler infers the type (Java 10+)
                var state = "Kerala";       // String
                var seats = 60;         // int
                final double GST_RATE = 0.18;
                System.out.println(state + " has " + seats + " seats; GST " + GST_RATE);

                // Casting
                System.out.println("(int) 9.99      = " + (int) 9.99);
                System.out.println("(byte) 200      = " + (byte) 200);
                System.out.println("(char)('A' + 1) = " + (char) ('A' + 1));
                System.out.println("int max + 1     = " + (Integer.MAX_VALUE + 1));
                System.out.println("parseInt(\"42\")  = " + Integer.parseInt("42"));
                System.out.println("short range     = " + Short.MIN_VALUE + " to " + Short.MAX_VALUE);
            }
        }
      JAVA
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Operators and Math</h1>
        </div>
        <p class="lc-lead">Operators (symbols such as plus and greater-than) do calculations and comparisons. Java's rules are strict, and some may surprise you. Dividing two <code>int</code>s drops the decimal part. A <code>double</code> cannot store 0.1 exactly. Knowing these rules stops real bugs in bills and marks.</p>
        <div class="lc-card">
          <h3>Arithmetic Operators</h3>
          <table class="lc-table">
            <thead><tr><th>Expression</th><th>Result</th><th>Why</th></tr></thead>
            <tbody>
              <tr><td><code>7 / 2</code></td><td><code>3</code></td><td>int ÷ int = int (decimal part dropped)</td></tr>
              <tr><td><code>7 / 2.0</code></td><td><code>3.5</code></td><td>one double makes the result a double</td></tr>
              <tr><td><code>7 % 2</code></td><td><code>1</code></td><td>remainder</td></tr>
              <tr><td><code>-7 / 2</code></td><td><code>-3</code></td><td>cuts off toward zero</td></tr>
              <tr><td><code>-7 % 2</code></td><td><code>-1</code></td><td>remainder takes the sign of the left side</td></tr>
              <tr><td><code>Math.floorMod(-7, 2)</code></td><td><code>1</code></td><td>never negative when the divisor is positive</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Assignment, Increment and Comparison</h3>
          <div class="lc-code-block"><pre><code>int x = 10;
        x += 5;           // x = x + 5  -&gt; 15
        x *= 2;           // 30
        int a = x++;      // a = 30, then x becomes 31 (postfix)
        int b = ++x;      // x becomes 32, then b = 32 (prefix)

        boolean ok = (x &gt; 18) &amp;&amp; (x &lt;= 60);   // AND
        boolean off = (x == 0) || (x &gt; 100);   // OR
        boolean not = !ok;                     // NOT</code></pre></div>
          <p><code>&amp;&amp;</code> and <code>||</code> <strong>short-circuit</strong>. If the left side already decides the answer, Java skips the right side. So <code>s != null &amp;&amp; s.length() &gt; 0</code> is safe.</p>
        </div>
        <div class="lc-card">
          <h3>The Math Class</h3>
          <table class="lc-table">
            <thead><tr><th>Call</th><th>Result</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>Math.pow(2, 10)</code></td><td><code>1024.0</code></td><td>returns double</td></tr>
              <tr><td><code>Math.sqrt(144)</code></td><td><code>12.0</code></td><td></td></tr>
              <tr><td><code>Math.abs(-8)</code></td><td><code>8</code></td><td></td></tr>
              <tr><td><code>Math.max(4, 9)</code></td><td><code>9</code></td><td>also <code>Math.min</code></td></tr>
              <tr><td><code>Math.round(2.5)</code> / <code>Math.round(-2.5)</code></td><td><code>3</code> / <code>-2</code></td><td>.5 rounds up toward positive infinity. Returns a long for a double.</td></tr>
              <tr><td><code>Math.floor(3.7)</code> / <code>Math.ceil(3.2)</code></td><td><code>3.0</code> / <code>4.0</code></td><td></td></tr>
              <tr><td><code>Math.addExact(a, b)</code></td><td>sum, or an exception</td><td>throws an error instead of quietly overflowing</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Money: Why <code>double</code> Is Not Enough</h3>
          <div class="lc-code-block"><pre><code>import java.math.BigDecimal;               // imports go at the top of the file
        import java.math.RoundingMode;

        System.out.println(0.1 + 0.2);             // 0.30000000000000004
        BigDecimal price = new BigDecimal("499.99");
        BigDecimal gst = price.multiply(new BigDecimal("0.18"))
                              .setScale(2, RoundingMode.HALF_UP);
        System.out.println(gst);                   // 90.00</code></pre></div>
          <p>A <code>double</code> stores numbers in binary. So most decimals are only close, not exact. For money, use <code>BigDecimal</code> made from a <strong>String</strong>. Or store amounts as a <code>long</code> number of paise.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Splitting a Bill</h3>
          <div class="lc-code-block"><pre><code>int bill = 1250, friends = 4;
        System.out.println("Each (int):    " + bill / friends);
        System.out.println("Each (double): " + bill / (double) friends);
        System.out.println("Left over:     " + bill % friends);
        System.out.println("Rounded up:    " + (int) Math.ceil(bill / (double) friends));</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Each (int):    312
        Each (double): 312.5
        Left over:     2
        Rounded up:    313</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Integer division in averages</strong>: <code>(80 + 75) / 2</code> is <code>77</code>, not <code>77.5</code>. Use <code>/ 2.0</code>.</li>
            <li><strong>Using <code>^</code> for power</strong>: <code>2 ^ 3</code> is bitwise XOR, which gives <code>1</code>. Use <code>Math.pow(2, 3)</code>.</li>
            <li><strong>Comparing doubles with <code>==</code></strong>: <code>0.1 + 0.2 == 0.3</code> is <code>false</code>. Instead, check that the difference is very small: <code>Math.abs(a - b) &lt; 1e-9</code>.</li>
            <li><strong><code>new BigDecimal(0.1)</code></strong>: passing a double copies its error. Use <code>new BigDecimal("0.1")</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>A student scored 78, 91 and 84. Print the average to two decimal places with <code>printf("%.2f")</code>. Then check if the average is at least 80 <strong>and</strong> every mark is at least 35. Print the answer as a single <code>boolean</code>.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>If you are not sure which part runs first, add brackets. <code>a + b * c</code> and <code>(a + b) * c</code> are different. Brackets make your meaning clear to the next reader.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.math.BigDecimal;
        import java.math.RoundingMode;

        public class Main {
            public static void main(String[] args) {
                // Integer vs decimal division
                int total = 155, subjects = 2;
                System.out.println("int average:    " + total / subjects);
                System.out.println("double average: " + (double) total / subjects);
                System.out.println("7 % 3 = " + 7 % 3 + ", -7 % 3 = " + -7 % 3
                        + ", floorMod(-7, 3) = " + Math.floorMod(-7, 3));

                // Increment: postfix vs prefix
                int x = 5;
                int a = x++;   // a gets 5, then x becomes 6
                int b = ++x;   // x becomes 7, then b gets 7
                System.out.println("a=" + a + " b=" + b + " x=" + x);

                // Logical operators
                int age = 20; boolean hasId = true;
                System.out.println("Can vote: " + (age >= 18 && hasId));

                // Math class
                System.out.println("pow(2,10) = " + Math.pow(2, 10));
                System.out.println("sqrt(144) = " + Math.sqrt(144));
                System.out.println("round(2.5) = " + Math.round(2.5) + ", round(-2.5) = " + Math.round(-2.5));
                System.out.println("2 ^ 3 = " + (2 ^ 3) + " (XOR, not power!)");

                // Overflow: silent wrap vs addExact
                int big = Integer.MAX_VALUE;
                System.out.println("MAX + 1 = " + (big + 1));
                try {
                    Math.addExact(big, 1);
                } catch (ArithmeticException e) {
                    System.out.println("addExact: " + e.getMessage());
                }

                // double is approximate; BigDecimal is exact for money
                System.out.println("0.1 + 0.2 = " + (0.1 + 0.2));
                BigDecimal price = new BigDecimal("499.99");
                BigDecimal gst = price.multiply(new BigDecimal("0.18")).setScale(2, RoundingMode.HALF_UP);
                System.out.println("GST on 499.99 = " + gst + ", total = " + price.add(gst));
            }
        }
      JAVA
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Strings and Text Blocks</h1>
        </div>
        <p class="lc-lead"><code>String</code> is the most used class in Java. Strings are <strong>immutable</strong>, which means they cannot change. Methods like <code>toUpperCase()</code> never change the original. They return a new String. Modern Java also gives you <strong>text blocks</strong> for text with many lines.</p>
        <div class="lc-card">
          <h3>Essential String Methods</h3>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>length()</code></td><td><code>"Tamil Nadu".length()</code></td><td><code>10</code></td></tr>
              <tr><td><code>charAt(i)</code></td><td><code>"Tamil Nadu".charAt(0)</code></td><td><code>'T'</code></td></tr>
              <tr><td><code>substring(a, b)</code></td><td><code>"Tamil Nadu".substring(0, 3)</code></td><td><code>"Tam"</code> (b is excluded)</td></tr>
              <tr><td><code>indexOf(s)</code></td><td><code>"Tamil Nadu".indexOf("Nadu")</code></td><td><code>6</code> (or -1 if not found)</td></tr>
              <tr><td><code>contains(s)</code></td><td><code>"a@b.com".contains("@")</code></td><td><code>true</code></td></tr>
              <tr><td><code>replace(a, b)</code></td><td><code>"2025".replace("5", "6")</code></td><td><code>"2026"</code></td></tr>
              <tr><td><code>strip()</code></td><td><code>"  hi  ".strip()</code></td><td><code>"hi"</code> (a <code>trim</code> that knows Unicode, Java 11)</td></tr>
              <tr><td><code>isBlank()</code></td><td><code>"   ".isBlank()</code></td><td><code>true</code> (Java 11)</td></tr>
              <tr><td><code>repeat(n)</code></td><td><code>"=".repeat(5)</code></td><td><code>"====="</code> (Java 11)</td></tr>
              <tr><td><code>split(regex)</code></td><td><code>"a,b,c".split(",")</code></td><td>array <code>[a, b, c]</code></td></tr>
              <tr><td><code>String.join</code></td><td><code>String.join("-", "a", "b")</code></td><td><code>"a-b"</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Comparing Strings: <code>equals</code>, not <code>==</code></h3>
          <div class="lc-code-block"><pre><code>String a = "java";
        String b = new String("java");
        System.out.println(a == b);                 // false: different objects
        System.out.println(a.equals(b));            // true: same characters
        System.out.println("JAVA".equalsIgnoreCase(a)); // true
        System.out.println("apple".compareTo("banana")); // negative: "apple" comes first</code></pre></div>
          <p><code>==</code> checks if two variables point to the <strong>same object</strong>. <code>equals</code> checks if they contain the <strong>same text</strong>. Always use <code>equals</code> to compare text.</p>
        </div>
        <div class="lc-card">
          <h3>Building Strings: <code>StringBuilder</code> and Formatting</h3>
          <div class="lc-code-block"><pre><code>StringBuilder sb = new StringBuilder();
        for (int i = 1; i &lt;= 3; i++) {
            sb.append(i).append(" ");
        }
        System.out.println(sb.toString().strip());   // 1 2 3
        System.out.println(new StringBuilder("level").reverse()); // level

        String line = String.format("%-8s|%6.2f|%05d", "Ravi", 91.456, 42);
        System.out.println(line);                    // Ravi    | 91.46|00042
        System.out.println("%s scored %d".formatted("Meera", 95)); // Java 15+</code></pre></div>
          <p>Joining with <code>+</code> inside a big loop makes a new String every time. <code>StringBuilder</code> is a mutable (changeable) buffer made for this job.</p>
        </div>
        <div class="lc-card">
          <h3>Text Blocks (Java 15+)</h3>
          <p>A text block starts with <code>"""</code> and a new line. It ends with <code>"""</code>. Java removes the shared indentation for you. You do not need <code>\n</code> or escaped quotes.</p>
          <div class="lc-code-block"><pre><code>String json = """
            {
              "name": "Asha",
              "course": "Java"
            }
            """;
        System.out.print(json);</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>{
          "name": "Asha",
          "course": "Java"
        }</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Reading Input with <code>Scanner</code></h3>
          <p><code>java.util.Scanner</code> splits text into <strong>tokens</strong> (words separated by spaces or new lines). It can also convert them to numbers. On your own computer, you read the keyboard with <code>new Scanner(System.in)</code>. The editor on this site has no keyboard input. So here we give the Scanner a String. The methods are exactly the same.</p>
          <div class="lc-code-block"><pre><code>Scanner sc = new Scanner("Asha 21 88.5\nRavi 22 91.0");   // or new Scanner(System.in)
        while (sc.hasNext()) {
            String name  = sc.next();         // one word
            int age      = sc.nextInt();      // "21"   -&gt; 21
            double marks = sc.nextDouble();   // "88.5" -&gt; 88.5
            System.out.printf("%s (%d): %.1f%n", name, age, marks);
        }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Asha (21): 88.5
        Ravi (22): 91.0</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Reads</th></tr></thead>
            <tbody>
              <tr><td><code>next()</code></td><td>the next word</td></tr>
              <tr><td><code>nextInt()</code>, <code>nextDouble()</code></td><td>the next word, converted to a number (throws <code>InputMismatchException</code> if it is not a number)</td></tr>
              <tr><td><code>nextLine()</code></td><td>everything up to the end of the current line</td></tr>
              <tr><td><code>hasNext()</code>, <code>hasNextInt()</code>, <code>hasNextLine()</code></td><td>checks if more input (of that kind) is waiting</td></tr>
            </tbody>
          </table>
          <p>A common trap: after <code>nextInt()</code>, the line break is still waiting. So the next <code>nextLine()</code> returns <code>""</code>. Call an extra <code>nextLine()</code> first. Or read every line with <code>nextLine()</code> and convert it with <code>Integer.parseInt(line.strip())</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Ignoring the return value</strong>: <code>name.toUpperCase();</code> alone does nothing useful. Write <code>name = name.toUpperCase();</code></li>
            <li><strong>Using <code>==</code> for text</strong>: it may seem to work for literals (text typed in the code). Then it fails for user input.</li>
            <li><strong>Off-by-one in <code>substring</code></strong>: the end index is <em>excluded</em>.</li>
            <li><strong>Calling a method on <code>null</code></strong>: <code>s.length()</code> throws <code>NullPointerException</code> if <code>s</code> is <code>null</code>. <code>"yes".equals(s)</code> is safe even when the variable is null.</li>
            <li><strong><code>split(".")</code></strong>: the argument is a regular expression (a text pattern). In it, <code>.</code> means "any character". Use <code>split("\\.")</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Start with <code>String email = "  Priya.Sharma@College.edu  ";</code>. Print the cleaned lower-case email. Print the part before <code>@</code>. Print if it ends with <code>.edu</code>. Then check if <code>"malayalam"</code> is a palindrome (reads the same backwards). Use <code>StringBuilder.reverse()</code>.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>For user input, use <code>strip()</code> and <code>isBlank()</code> (Java 11) instead of the older <code>trim()</code> and <code>isEmpty()</code>. They understand all Unicode whitespace. Also, <code>isBlank()</code> treats <code>"   "</code> as empty.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                String raw = "  Priya.Sharma@College.edu  ";

                // Strings are immutable: each method returns a NEW string
                String email = raw.strip().toLowerCase();
                System.out.println("Cleaned:  [" + email + "]");
                System.out.println("Original: [" + raw + "]");

                int at = email.indexOf("@");
                System.out.println("User:     " + email.substring(0, at));
                System.out.println("Domain:   " + email.substring(at + 1));
                System.out.println("Is .edu?  " + email.endsWith(".edu"));
                System.out.println("Blank?    " + "   ".isBlank());

                // equals vs ==
                String a = "java";
                String b = new String("java");
                System.out.println("a == b:      " + (a == b));
                System.out.println("a.equals(b): " + a.equals(b));

                // split and join
                String[] parts = "red,green,blue".split(",");
                System.out.println("Parts: " + parts.length + " -> " + String.join(" | ", parts));

                // StringBuilder for building and reversing
                String word = "malayalam";
                String reversed = new StringBuilder(word).reverse().toString();
                System.out.println(word + " is a palindrome? " + word.equals(reversed));

                // Formatting
                System.out.println(String.format("%-8s|%6.2f|%05d", "Ravi", 91.456, 42));
                System.out.println("%s scored %d".formatted("Meera", 95));

                // Text block (Java 15+)
                String receipt = """
                    Item      Price
                    Chai      15.00
                    Samosa    20.00
                    """;
                System.out.print(receipt);
                System.out.println("=".repeat(15));
            }
        }
      JAVA
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Conditionals and Switch Expressions</h1>
        </div>
        <p class="lc-lead">Programs make decisions with <code>if</code>/<code>else</code> and <code>switch</code>. Modern Java (14+) adds <strong>switch expressions</strong> that use arrows <code>-&gt;</code>. They return a value. They never fall through (run into the next case). They are much safer than the old <code>switch</code> statement.</p>
        <div class="lc-card">
          <h3><code>if</code>, <code>else if</code>, <code>else</code> and the Ternary Operator</h3>
          <div class="lc-code-block"><pre><code>int marks = 72;
        String grade;
        if (marks &gt;= 90) {
            grade = "A";
        } else if (marks &gt;= 75) {
            grade = "B";
        } else if (marks &gt;= 35) {
            grade = "C";
        } else {
            grade = "F";
        }
        System.out.println(grade);                               // C

        String result = marks &gt;= 35 ? "Pass" : "Fail";          // condition ? ifTrue : ifFalse
        System.out.println(result);                              // Pass</code></pre></div>
          <p>Java checks the conditions from top to bottom. It runs only the <strong>first</strong> branch that is true. So the order matters.</p>
        </div>
        <div class="lc-card">
          <h3>Enums: a Fixed Set of Values</h3>
          <div class="lc-code-block"><pre><code>enum Signal { RED, YELLOW, GREEN }

        Signal s = Signal.YELLOW;
        System.out.println(s);            // YELLOW
        System.out.println(s.ordinal());  // 1 (position, starting at 0)</code></pre></div>
          <p>An <code>enum</code> is a type with a fixed list of named values. Use it instead of loose strings like <code>"red"</code>. The compiler catches typos. A <code>switch</code> can check that you handled every value. Enums can also hold fields and methods, for example <code>Genre.SCIENCE.loanDays()</code>. You will build one in Lesson 10.</p>
        </div>
        <div class="lc-card">
          <h3>Old <code>switch</code> vs Switch Expression</h3>
          <div class="lc-code-block"><pre><code>// Old way (still valid, but easy to get wrong): forgetting break falls through
        switch (day) {
            case 6:
            case 7:
                type = "Weekend";
                break;
            default:
                type = "Weekday";
        }

        // Modern way (Java 14+): an expression that returns a value
        String type = switch (day) {
            case 6, 7 -&gt; "Weekend";
            case 1, 2, 3, 4, 5 -&gt; "Weekday";
            default -&gt; throw new IllegalArgumentException("Bad day: " + day);
        };

        // A block with yield when you need more than one statement
        int wait = switch (signal) {
            case RED -&gt; 60;
            case YELLOW -&gt; {
                System.out.println("Slow down");
                yield 5;
            }
            case GREEN -&gt; 0;
        };   // no default needed: every enum value is covered</code></pre></div>
          <table class="lc-table">
            <thead><tr><th></th><th>if / else</th><th>Old switch statement</th><th>Switch expression</th></tr></thead>
            <tbody>
              <tr><td>Best for</td><td>ranges and complex conditions</td><td>old code</td><td>one value matched against constants</td></tr>
              <tr><td>Returns a value</td><td>No</td><td>No</td><td>Yes</td></tr>
              <tr><td>Fall-through</td><td>n/a</td><td>Yes, unless you <code>break</code></td><td>Never</td></tr>
              <tr><td>Must cover all cases</td><td>No</td><td>No</td><td>Yes (the compiler checks)</td></tr>
            </tbody>
          </table>
          <p>Switch works on <code>int</code>, <code>char</code>, <code>String</code> and enums. It also works on <code>byte</code>, <code>short</code> and their wrapper classes.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Wrong order of conditions</strong>: checking <code>marks &gt;= 35</code> before <code>marks &gt;= 90</code> gives everyone a C.</li>
            <li><strong>Comparing Strings with <code>==</code></strong> in an <code>if</code>: use <code>equals</code>.</li>
            <li><strong>Missing <code>break</code></strong> in an old-style switch: use the arrow form instead. It never falls through.</li>
            <li><strong>Skipping braces</strong>: <code>if (x) a(); b();</code> runs <code>b()</code> every time. Always use <code>{ }</code>.</li>
            <li><strong>Mixing <code>:</code> and <code>-&gt;</code></strong> in one switch: a switch must use only one style.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Write a switch expression that turns a month number (1–12) into its season in India. Use 3–5 <code>"Summer"</code>, 6–9 <code>"Monsoon"</code>, 10–11 <code>"Post-monsoon"</code>, and 12, 1, 2 <code>"Winter"</code>. Throw an exception (an error) for any other number.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>If a switch expression covers every value of an enum, leave out <code>default</code>. Later, someone may add a new value. Then the compiler shows every switch that you must update.</p></div>
      HTML
      starter_code: <<~'JAVA'
        enum Signal { RED, YELLOW, GREEN }

        public class Main {
            static String grade(int marks) {
                if (marks >= 90) {
                    return "A";
                } else if (marks >= 75) {
                    return "B";
                } else if (marks >= 35) {
                    return "C";
                } else {
                    return "F";
                }
            }

            static String season(int month) {
                return switch (month) {
                    case 3, 4, 5 -> "Summer";
                    case 6, 7, 8, 9 -> "Monsoon";
                    case 10, 11 -> "Post-monsoon";
                    case 12, 1, 2 -> "Winter";
                    default -> throw new IllegalArgumentException("Bad month: " + month);
                };
            }

            public static void main(String[] args) {
                int[] allMarks = {95, 80, 50, 20};
                for (int m : allMarks) {
                    String status = m >= 35 ? "Pass" : "Fail";   // ternary
                    System.out.println(m + " -> grade " + grade(m) + " (" + status + ")");
                }

                System.out.println("Month 7 is " + season(7));
                System.out.println("Month 12 is " + season(12));

                // Switch on an enum: no default needed when all values are covered
                for (Signal s : Signal.values()) {
                    int wait = switch (s) {
                        case RED -> 60;
                        case YELLOW -> {
                            System.out.println("  (yellow: slow down)");
                            yield 5;
                        }
                        case GREEN -> 0;
                    };
                    System.out.println(s + " -> wait " + wait + "s");
                }
            }
        }
      JAVA
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Loops</h1>
        </div>
        <p class="lc-lead">Loops repeat a block of code. Java has four loops: <code>for</code>, <code>while</code>, <code>do-while</code> and the <strong>enhanced for</strong> (for-each). The right loop makes code shorter. It also helps you avoid off-by-one bugs (going one step too far or too short).</p>
        <div class="lc-card">
          <h3>The Four Loops</h3>
          <div class="lc-code-block"><pre><code>// 1. for: you know how many times
        for (int i = 1; i &lt;= 5; i++) {
            System.out.print(i + " ");          // 1 2 3 4 5
        }

        // 2. while: repeat while a condition is true
        int n = 1234, digits = 0;
        while (n &gt; 0) {
            n = n / 10;
            digits++;
        }                                       // digits = 4

        // 3. do-while: body runs at least once
        int tries = 0;
        do {
            tries++;
        } while (tries &lt; 3);                    // tries = 3

        // 4. enhanced for: visit every element
        String[] states = {"Kerala", "Goa", "Punjab"};
        for (String state : states) {
            System.out.println(state);
        }</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Loop</th><th>Use when</th><th>Checks condition</th></tr></thead>
            <tbody>
              <tr><td><code>for</code></td><td>you know the count or need the index</td><td>before each pass</td></tr>
              <tr><td><code>while</code></td><td>you repeat until something changes</td><td>before each pass (may run 0 times)</td></tr>
              <tr><td><code>do-while</code></td><td>the body must run at least once (menus, retries)</td><td>after each pass</td></tr>
              <tr><td>enhanced <code>for</code></td><td>you only need each element, not its index</td><td>n/a</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3><code>break</code>, <code>continue</code> and Labels</h3>
          <div class="lc-code-block"><pre><code>for (int i = 1; i &lt;= 10; i++) {
            if (i % 2 == 0) continue;   // skip even numbers
            if (i &gt; 7) break;           // stop the loop completely
            System.out.print(i + " ");  // 1 3 5 7
        }

        outer:
        for (int r = 1; r &lt;= 3; r++) {
            for (int c = 1; c &lt;= 3; c++) {
                if (r * c == 4) break outer;   // leaves BOTH loops
                System.out.print(r * c + " "); // 1 2 3 2
            }
        }</code></pre></div>
          <p>A plain <code>break</code> leaves only the inner loop. A labelled <code>break outer</code> leaves the loop that has that label.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Nested Loops</h3>
          <div class="lc-code-block"><pre><code>for (int row = 1; row &lt;= 4; row++) {
            System.out.println("*".repeat(row));
        }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>*
        **
        ***
        ****</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Off-by-one</strong>: <code>i &lt;= arr.length</code> goes one step too far. Use <code>i &lt; arr.length</code>.</li>
            <li><strong>Infinite loop</strong> (a loop that never stops): you forget to change the variable in a <code>while</code> loop (<code>n = n / 10</code> above).</li>
            <li><strong>Semicolon after the header</strong>: <code>for (int i = 0; i &lt; 5; i++);</code> has an empty body. So the block below runs only once.</li>
            <li><strong>Changing a collection inside for-each</strong>: if you add or remove items while looping, Java throws <code>ConcurrentModificationException</code>. See the Collections lesson.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Print the multiplication table of 7 from <code>7 x 1 = 7</code> to <code>7 x 10 = 70</code>. Then use a <code>while</code> loop to find the sum of the digits of <code>98765</code> (answer: 35).</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use the enhanced <code>for</code> when you do not need the index. It cannot go out of bounds. It works the same way for arrays and for every collection, such as <code>List</code> and <code>Set</code>.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // for: multiplication table
                System.out.println("-- Table of 7 --");
                for (int i = 1; i <= 5; i++) {
                    System.out.println("7 x " + i + " = " + (7 * i));
                }

                // while: sum of digits
                int n = 98765, sum = 0;
                while (n > 0) {
                    sum += n % 10;   // last digit
                    n /= 10;         // drop last digit
                }
                System.out.println("Digit sum of 98765 = " + sum);

                // do-while: runs at least once (simulated menu choices)
                int[] choices = {2, 1, 0};
                int step = 0, choice;
                do {
                    choice = choices[step++];
                    System.out.println("Menu choice: " + choice);
                } while (choice != 0);

                // enhanced for with continue and break
                int[] marks = {67, -1, 88, 45, 999, 72};
                int total = 0;
                for (int m : marks) {
                    if (m < 0) continue;   // skip invalid
                    if (m > 100) break;    // stop at bad data
                    total += m;
                }
                System.out.println("Total of valid marks before bad data: " + total);

                // nested loops with a labelled break
                outer:
                for (int r = 1; r <= 3; r++) {
                    for (int c = 1; c <= 3; c++) {
                        if (r * c == 6) {
                            System.out.println("Found 6 at r=" + r + ", c=" + c);
                            break outer;
                        }
                    }
                }
                for (int row = 1; row <= 4; row++) {
                    System.out.println("*".repeat(row));
                }
            }
        }
      JAVA
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Arrays</h1>
        </div>
        <p class="lc-lead">An array stores a <strong>fixed number</strong> of values of the <strong>same type</strong>, side by side. Each value has an index (its position number). Indexes start at 0. Arrays are fast and simple. <code>ArrayList</code> is built on top of them.</p>
        <div class="lc-card">
          <h3>Creating and Using Arrays</h3>
          <div class="lc-code-block"><pre><code>int[] marks = {78, 92, 65, 88};     // size 4, values given
        double[] temps = new double[7];     // size 7, all 0.0
        String[] names = new String[3];     // size 3, all null

        System.out.println(marks[0]);       // 78 (first)
        System.out.println(marks.length);   // 4  (a field, no brackets)
        marks[2] = 70;                      // change the third value
        System.out.println(marks[marks.length - 1]); // 88 (last)
        // marks[4] = 1;                    // ArrayIndexOutOfBoundsException</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Element type</th><th>Default value</th></tr></thead>
            <tbody>
              <tr><td><code>int</code>, <code>long</code>, <code>double</code> …</td><td><code>0</code> / <code>0.0</code></td></tr>
              <tr><td><code>boolean</code></td><td><code>false</code></td></tr>
              <tr><td><code>char</code></td><td><code>'\u0000'</code> (the null character)</td></tr>
              <tr><td>any object (<code>String</code> …)</td><td><code>null</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>The <code>java.util.Arrays</code> Helpers</h3>
          <div class="lc-code-block"><pre><code>import java.util.Arrays;

        int[] a = {5, 2, 9, 1};
        System.out.println(a);                    // something like [I@1b6d3586 (not the values!)
        System.out.println(Arrays.toString(a));   // [5, 2, 9, 1]
        int[] copy = Arrays.copyOf(a, a.length);  // independent copy
        Arrays.sort(copy);                        // [1, 2, 5, 9]
        System.out.println(Arrays.binarySearch(copy, 5)); // 2 (array must be sorted)
        System.out.println(Arrays.equals(a, copy));      // false
        Arrays.fill(a, 0);                        // [0, 0, 0, 0]</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Arrays Are References</h3>
          <div class="lc-code-block"><pre><code>int[] original = {1, 2, 3};
        int[] alias = original;     // NOT a copy: both names point to one array
        alias[0] = 99;
        System.out.println(original[0]);   // 99</code></pre></div>
          <p>The variable holds a <strong>reference</strong> (an address) to the array object. When you need a separate copy, use <code>Arrays.copyOf</code> or <code>clone()</code>.</p>
        </div>
        <div class="lc-card">
          <h3>2D Arrays</h3>
          <div class="lc-code-block"><pre><code>int[][] seats = {
            {1, 0, 1},
            {0, 0, 1}
        };
        System.out.println(seats.length);      // 2 rows
        System.out.println(seats[0].length);   // 3 columns
        System.out.println(seats[1][2]);       // 1
        System.out.println(Arrays.deepToString(seats)); // [[1, 0, 1], [0, 0, 1]]</code></pre></div>
          <p>A 2D array is an "array of arrays". Rows can even have different lengths. This is called a <em>jagged</em> array.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Above-Average Marks</h3>
          <div class="lc-code-block"><pre><code>int[] marks = {72, 45, 91, 60, 88};
        int sum = 0;
        for (int m : marks) sum += m;
        double avg = (double) sum / marks.length;
        int above = 0;
        for (int m : marks) if (m &gt; avg) above++;
        System.out.println("Marks:   " + Arrays.toString(marks));
        System.out.println("Average: " + avg);
        System.out.println("Above average: " + above);</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Marks:   [72, 45, 91, 60, 88]
        Average: 71.2
        Above average: 3</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong><code>length()</code> vs <code>length</code></strong>: arrays use the field <code>arr.length</code>. Strings use the method <code>s.length()</code>. Lists use <code>list.size()</code>.</li>
            <li><strong>Printing an array directly</strong>: this gives something like <code>[I@1b6d3586</code>. Use <code>Arrays.toString</code>.</li>
            <li><strong>Comparing arrays with <code>==</code> or <code>equals</code></strong>: both compare references, not contents. Use <code>Arrays.equals</code>.</li>
            <li><strong>Expecting arrays to grow</strong>: the size is fixed. If you need to add and remove items, use <code>ArrayList</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Store the daily step counts for a week in an <code>int[]</code>. Print the total, the average (as a <code>double</code>), the best day number (1–7) and the sorted steps. Do not change the original array.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In real projects, you will use <code>List</code> much more than plain arrays. But arrays still matter. <code>main(String[] args)</code> receives one. Many APIs return them. They are the fastest choice for numbers of a fixed size.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.Arrays;

        public class Main {
            public static void main(String[] args) {
                int[] steps = {6500, 8200, 4300, 10150, 7600, 12000, 5400};
                String[] days = {"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"};

                System.out.println("Steps:  " + Arrays.toString(steps));
                System.out.println("Length: " + steps.length);

                int total = 0, bestIndex = 0;
                for (int i = 0; i < steps.length; i++) {
                    total += steps[i];
                    if (steps[i] > steps[bestIndex]) {
                        bestIndex = i;
                    }
                }
                System.out.println("Total:   " + total);
                System.out.printf("Average: %.1f%n", (double) total / steps.length);
                System.out.println("Best:    " + days[bestIndex] + " (" + steps[bestIndex] + ")");

                // Sort a COPY so the original order is kept
                int[] sorted = Arrays.copyOf(steps, steps.length);
                Arrays.sort(sorted);
                System.out.println("Sorted:  " + Arrays.toString(sorted));
                System.out.println("Original still: " + Arrays.toString(steps));

                // Aliasing: two variables, one array
                int[] alias = steps;
                alias[0] = 0;
                System.out.println("steps[0] after alias change: " + steps[0]);

                // Default values
                boolean[] done = new boolean[3];
                String[] notes = new String[2];
                System.out.println("Defaults: " + Arrays.toString(done) + " " + Arrays.toString(notes));

                // 2D array: marks of 3 students in 2 subjects
                int[][] marks = {{78, 85}, {92, 88}, {60, 71}};
                for (int s = 0; s < marks.length; s++) {
                    int sum = marks[s][0] + marks[s][1];
                    System.out.println("Student " + (s + 1) + " total: " + sum);
                }
                System.out.println(Arrays.deepToString(marks));
            }
        }
      JAVA
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Methods</h1>
        </div>
        <p class="lc-lead">A method is a named block of code that you can use again and again. A good method does <strong>one job</strong>. It takes inputs as parameters and gives back a result with <code>return</code>. Small methods make a program easier to read, test and fix.</p>
        <div class="lc-card">
          <h3>Anatomy of a Method</h3>
          <div class="lc-code-block"><pre><code>//  modifiers   return type  name      parameters
        public static double    average(int a, int b) {
            return (a + b) / 2.0;          // sends a value back
        }

        static void greet(String name) {   // void = returns nothing
            System.out.println("Hello, " + name);
        }

        double avg = average(80, 91);      // 85.5
        greet("Kiran");                    // Hello, Kiran</code></pre></div>
          <p>For now, our methods are <code>static</code>. This means you call them without creating an object. In the next lessons, you will write <strong>instance methods</strong> that belong to objects.</p>
        </div>
        <div class="lc-card">
          <h3>Overloading and Varargs</h3>
          <div class="lc-code-block"><pre><code>static int area(int side)            { return side * side; }
        static int area(int w, int h)        { return w * h; }
        static double area(double radius)    { return Math.PI * radius * radius; }

        static int sum(int... nums) {        // varargs: any number of ints
            int total = 0;
            for (int n : nums) total += n;
            return total;
        }
        sum();          // 0
        sum(1, 2, 3);   // 6</code></pre></div>
          <p>Overloaded methods have the same name but <strong>different parameter lists</strong>. The compiler picks the right version from the arguments. A different return type alone is <em>not</em> enough.</p>
        </div>
        <div class="lc-card">
          <h3>Java Is Always Pass-by-Value</h3>
          <div class="lc-code-block"><pre><code>static void addBonus(int marks)  { marks += 5; }        // changes a copy
        static void addBonus(int[] marks) { marks[0] += 5; }    // copy of the reference,
                                                                // same array object
        int m = 80;
        addBonus(m);              // m is still 80
        int[] arr = {80};
        addBonus(arr);            // arr[0] is now 85</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Argument</th><th>What is copied</th><th>Can the method change the caller's data?</th></tr></thead>
            <tbody>
              <tr><td>primitive (<code>int</code>, <code>double</code> …)</td><td>the value</td><td>No</td></tr>
              <tr><td>object or array</td><td>the reference</td><td>It can change what is inside the object. It cannot make the caller's variable point to a new object.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Recursion</h3>
          <div class="lc-code-block"><pre><code>static long factorial(int n) {
            if (n &lt;= 1) return 1;          // base case: stops the recursion
            return n * factorial(n - 1);   // smaller problem
        }
        factorial(5);   // 120</code></pre></div>
          <p>A recursive method calls itself on a smaller problem. It needs a base case (a point where it stops). Without one, it never stops and ends with a <code>StackOverflowError</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Small Methods Working Together</h3>
          <div class="lc-code-block"><pre><code>static double percentage(int obtained, int total) {
            return obtained * 100.0 / total;
        }
        static String grade(double pct) {
            return pct &gt;= 75 ? "Distinction" : pct &gt;= 60 ? "First class" : pct &gt;= 35 ? "Pass" : "Fail";
        }
        static void report(String name, int obtained, int total) {
            double pct = percentage(obtained, total);
            System.out.printf("%-6s %5.1f%%  %s%n", name, pct, grade(pct));   // %% prints a % sign
        }

        report("Asha", 412, 500);
        report("Ravi", 305, 500);
        report("John", 150, 500);</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Asha    82.4%  Distinction
        Ravi    61.0%  First class
        John    30.0%  Fail</code></pre></div>
          <p>Each method has one job. So you can test and reuse each one on its own.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Missing <code>return</code> on some path</strong>: if a method returns <code>int</code>, every path through it must return a value.</li>
            <li><strong>Ignoring the result</strong>: <code>average(80, 91);</code> on its own throws the answer away.</li>
            <li><strong>Overloading only by return type</strong>: <code>int f(int x)</code> and <code>double f(int x)</code> cannot both exist.</li>
            <li><strong>Doing too much</strong>: for example, one 100-line method that reads, calculates and prints. Split it into small methods with clear names.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Write <code>static boolean isPrime(int n)</code>. Use it to print all primes up to 30. Then write two overloaded methods: <code>max(int a, int b)</code> and <code>max(int a, int b, int c)</code>. The second one should call the first.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Start method names with a verb, in <code>camelCase</code>: <code>calculateTotal</code>, <code>isValid</code>, <code>printReport</code>. Methods that return <code>boolean</code> usually start with <code>is</code>, <code>has</code> or <code>can</code>.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            static double average(int a, int b) {
                return (a + b) / 2.0;
            }
            // Overloading: same name, different parameters
            static int area(int side) { return side * side; }
            static int area(int w, int h) { return w * h; }
            // Varargs: any number of arguments
            static int sum(int... nums) {
                int total = 0;
                for (int n : nums) total += n;
                return total;
            }

            static boolean isPrime(int n) {
                if (n < 2) return false;
                for (int d = 2; d * d <= n; d++) {
                    if (n % d == 0) return false;
                }
                return true;
            }

            static long factorial(int n) {
                if (n <= 1) return 1;          // base case
                return n * factorial(n - 1);   // recursive case
            }

            static void tryToChange(int value, int[] arr) {
                value = 999;    // changes only the local copy
                arr[0] = 999;   // changes the shared array
            }

            public static void main(String[] args) {
                System.out.println("average(80, 91) = " + average(80, 91));
                System.out.println("area(4) = " + area(4) + ", area(3, 5) = " + area(3, 5));
                System.out.println("sum() = " + sum() + ", sum(1, 2, 3, 4) = " + sum(1, 2, 3, 4));

                StringBuilder primes = new StringBuilder();
                for (int i = 1; i <= 30; i++) {
                    if (isPrime(i)) primes.append(i).append(' ');
                }
                System.out.println("Primes up to 30: " + primes.toString().strip());
                System.out.println("5! = " + factorial(5) + ", 20! = " + factorial(20));

                int x = 1;
                int[] data = {1};
                tryToChange(x, data);
                System.out.println("After call: x = " + x + ", data[0] = " + data[0]);
            }
        }
      JAVA
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Classes and Objects</h1>
        </div>
        <p class="lc-lead">A <strong>class</strong> is a blueprint (a plan). An <strong>object</strong> is one thing built from that plan. A <code>Student</code> class describes what every student has (fields) and can do (methods). Each <code>new Student(...)</code> creates one real student in memory.</p>
        <div class="lc-card">
          <h3>Fields, Constructors, Methods and <code>this</code></h3>
          <div class="lc-code-block"><pre><code>class Student {
            String name;          // fields: data each object has
            int marks;

            Student(String name, int marks) {   // constructor: same name as class, no return type
                this.name = name;               // this.name = the field; name = the parameter
                this.marks = marks;
            }

            Student(String name) {
                this(name, 0);                  // call the other constructor (first statement)
            }

            boolean hasPassed() {               // instance method: uses this object's data
                return marks &gt;= 35;
            }

            @Override
            public String toString() {          // how the object prints
                return name + " (" + marks + ")";
            }
        }

        Student s1 = new Student("Anu", 82);
        Student s2 = new Student("Vikram");
        System.out.println(s1 + " passed? " + s1.hasPassed());   // Anu (82) passed? true
        System.out.println(s2);                                  // Vikram (0)</code></pre></div>
          <ul class="lc-list">
            <li>A constructor is special code that sets up a new object. If you write <strong>no</strong> constructor, Java gives you an empty one with no arguments. Once you write any constructor, that free one is gone.</li>
            <li>Fields get default values (<code>0</code>, <code>false</code>, <code>null</code>). Local variables do not.</li>
            <li>In one file, only one class can be <code>public</code> (here, <code>Main</code>). Other classes are written without <code>public</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Variables Hold References</h3>
          <div class="lc-code-block"><pre><code>Student a = new Student("Riya", 70);
        Student b = a;           // b points to the SAME object
        b.marks = 95;
        System.out.println(a.marks);   // 95

        Student c = null;        // points to nothing
        // c.hasPassed();        // NullPointerException</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Stack (variables)</th><th></th><th>Heap (objects)</th></tr></thead>
            <tbody>
              <tr><td><code>a</code></td><td>→</td><td rowspan="2">Student { name = "Riya", marks = 95 }</td></tr>
              <tr><td><code>b</code></td><td>→</td></tr>
              <tr><td><code>c</code></td><td>→</td><td><code>null</code> (no object)</td></tr>
            </tbody>
          </table>
          <p>When no variable points to an object any more, the <strong>garbage collector</strong> removes it for you.</p>
        </div>
        <div class="lc-card">
          <h3>Instance vs <code>static</code> Members</h3>
          <div class="lc-code-block"><pre><code>class Student {
            static int count = 0;    // ONE copy, shared by the whole class
            String name;             // one copy PER object

            Student(String name) {
                this.name = name;
                count++;
            }
            static int getCount() { return count; }  // called on the class
        }
        new Student("A"); new Student("B");
        System.out.println(Student.getCount());    // 2</code></pre></div>
          <p>A <code>static</code> method has no <code>this</code>. So it cannot read instance fields directly. <code>Math.sqrt</code> and <code>Integer.parseInt</code> are static methods.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>this</code></strong>: <code>name = name;</code> sets the parameter to itself. The field stays <code>null</code>.</li>
            <li><strong>Writing a return type on a constructor</strong>: <code>void Student(...)</code> is a normal method, not a constructor.</li>
            <li><strong>Using an object before <code>new</code></strong>: a field that was declared but never given an object is <code>null</code>. Using it causes <code>NullPointerException</code>.</li>
            <li><strong>Thinking <code>b = a</code> copies the object</strong>: it only copies the reference.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Create a <code>Book</code> class with <code>title</code>, <code>author</code> and <code>pages</code>. Give it two constructors. The one without pages should set pages to 100 using <code>this(...)</code>. Add a <code>isLong()</code> method (true for over 300 pages) and a <code>toString()</code>. Create three books and print them.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always add <code>@Override</code> when you write <code>toString()</code>, <code>equals()</code> or <code>hashCode()</code>. If you misspell the method name, the compiler tells you. Without it, Java quietly creates a new method.</p></div>
      HTML
      starter_code: <<~'JAVA'
        class Student {
            static int count = 0;   // shared by all students
            String name;
            int marks;
            Student(String name, int marks) {
                this.name = name;    // this.name is the field
                this.marks = marks;
                count++;
            }

            Student(String name) {
                this(name, 0);       // constructor chaining
            }

            boolean hasPassed() {
                return marks >= 35;
            }

            void addGrace(int extra) {
                marks += extra;
            }

            @Override
            public String toString() {
                return name + " (" + marks + ")";
            }
        }

        public class Main {
            public static void main(String[] args) {
                Student anu = new Student("Anu", 82);
                Student vikram = new Student("Vikram", 30);
                Student newcomer = new Student("Sara");

                System.out.println(anu + " passed? " + anu.hasPassed());
                System.out.println(vikram + " passed? " + vikram.hasPassed());
                System.out.println("Newcomer: " + newcomer);

                vikram.addGrace(5);
                System.out.println("After grace: " + vikram + " passed? " + vikram.hasPassed());

                // Two variables, ONE object
                Student same = anu;
                same.marks = 95;
                System.out.println("anu is now " + anu + "; same object? " + (same == anu));

                System.out.println("Students created: " + Student.count);
            }
        }
      JAVA
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Encapsulation, Records and Enums</h1>
        </div>
        <p class="lc-lead"><strong>Encapsulation</strong> means hiding an object's data. Changes happen only through methods that keep the data valid. <strong>Immutable</strong> objects go one step further: they never change at all. With Java 16+ <strong>records</strong>, you can write an immutable data class in one line. <strong>Enums</strong> can hold their own fields and methods.</p>
        <div class="lc-card">
          <h3>Access Modifiers</h3>
          <table class="lc-table">
            <thead><tr><th>Modifier</th><th>Same class</th><th>Same package</th><th>Subclass</th><th>Everywhere</th></tr></thead>
            <tbody>
              <tr><td><code>private</code></td><td>Yes</td><td>No</td><td>No</td><td>No</td></tr>
              <tr><td>(none) package-private</td><td>Yes</td><td>Yes</td><td>No (unless same package)</td><td>No</td></tr>
              <tr><td><code>protected</code></td><td>Yes</td><td>Yes</td><td>Yes</td><td>No</td></tr>
              <tr><td><code>public</code></td><td>Yes</td><td>Yes</td><td>Yes</td><td>Yes</td></tr>
            </tbody>
          </table>
          <p>A simple rule: make fields <code>private</code>. Make methods only as visible as they need to be.</p>
        </div>
        <div class="lc-card">
          <h3>Encapsulation: Guard Your Data</h3>
          <div class="lc-code-block"><pre><code>class BankAccount {
            private final String owner;   // set once, never changed
            private long balance;         // in paise, never negative

            BankAccount(String owner) { this.owner = owner; }

            public long getBalance() { return balance; }   // read-only access

            public void deposit(long amount) {
                if (amount &lt;= 0) {
                    throw new IllegalArgumentException("Deposit must be positive");
                }
                balance += amount;
            }
        }
        // account.balance = -500;   // compile error: balance is private</code></pre></div>
          <p>There is no <code>setBalance</code>, and this is on purpose. The only way to change the balance is <code>deposit</code>, which checks the rule. Do not add a getter and setter for every field by habit. Add only what other code really needs.</p>
        </div>
        <div class="lc-card">
          <h3>Immutable Objects</h3>
          <ul class="lc-list">
            <li>All fields are <code>private final</code>. There are no setters. The class is <code>final</code> (no other class can extend it).</li>
            <li>To "change" it, you get back a <strong>new</strong> object: <code>price.withDiscount(10)</code>.</li>
            <li>If a field is a mutable (changeable) object such as a <code>List</code>, store a copy: <code>this.items = List.copyOf(items);</code></li>
            <li>Benefits: they are safe to share and safe across threads. They also make good <code>Map</code> keys. <code>String</code>, <code>Integer</code> and <code>LocalDate</code> are all immutable.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Records (Java 16+)</h3>
          <div class="lc-code-block"><pre><code>record Point(int x, int y) { }

        Point p = new Point(3, 4);
        System.out.println(p.x());                       // 3   (accessor is x(), not getX())
        System.out.println(p);                           // Point[x=3, y=4]
        System.out.println(p.equals(new Point(3, 4)));   // true: compares values

        record Marks(String subject, int score) {
            Marks {                                      // compact constructor: validation
                if (score &lt; 0 || score &gt; 100) {
                    throw new IllegalArgumentException("Bad score: " + score);
                }
            }
            boolean passed() { return score &gt;= 35; }    // records can have methods
        }</code></pre></div>
          <p>One line gives you private final fields, a constructor, accessors (methods that read the fields), <code>equals</code>, <code>hashCode</code> and <code>toString</code>.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Normal class</th><th>Record</th></tr></thead>
            <tbody>
              <tr><td>Purpose</td><td>objects with behaviour and data that changes</td><td>simple objects that only hold data that never changes</td></tr>
              <tr><td>Fields</td><td>anything you declare</td><td>only the components in the header (all final)</td></tr>
              <tr><td><code>equals</code>/<code>hashCode</code>/<code>toString</code></td><td>write them yourself</td><td>generated</td></tr>
              <tr><td>Inheritance</td><td>can extend a class</td><td>cannot extend a class, but can implement interfaces</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Enums with Fields, Constructors and Methods</h3>
          <p>In Lesson 5, an enum was just a list of names. But an enum is really a class with a fixed set of objects. So each constant can hold data. The constants call a constructor, which is always private.</p>
          <div class="lc-code-block"><pre><code>enum Genre {
            FICTION(14, 2), SCIENCE(21, 5), HISTORY(7, 2);   // must come first, then a semicolon

            private final int loanDays;
            private final int finePerDay;

            Genre(int loanDays, int finePerDay) {             // implicitly private
                this.loanDays = loanDays;
                this.finePerDay = finePerDay;
            }
            int loanDays() { return loanDays; }
            int fineFor(int daysLate) { return daysLate * finePerDay; }
        }

        System.out.println(Genre.SCIENCE.loanDays());         // 21
        System.out.println(Genre.SCIENCE.fineFor(3));         // 15
        System.out.println(Genre.valueOf("HISTORY"));         // HISTORY
        System.out.println(Genre.HISTORY.ordinal());          // 2 (position, starting at 0)</code></pre></div>
          <p>Now the rule "science books are lent for 21 days" is kept in one place. It is not spread over <code>if</code> statements all over the program. Enum fields should be <code>final</code>. The whole program shares enum constants, so they should be immutable.</p>
          <h3>EnumMap: a Map with Enum Keys</h3>
          <p>When the keys of a map are enum constants, use <code>EnumMap</code>. It is faster and smaller than a <code>HashMap</code>. Inside, it is just an array indexed by <code>ordinal()</code>. It always keeps the keys in <strong>declaration order</strong> (the order you wrote them in the enum).</p>
          <div class="lc-code-block"><pre><code>Map&lt;Genre, Integer&gt; onLoan = new EnumMap&lt;&gt;(Genre.class);
        onLoan.put(Genre.SCIENCE, 2);
        onLoan.put(Genre.FICTION, 5);
        System.out.println(onLoan);   // {FICTION=5, SCIENCE=2}   declaration order, not insertion order</code></pre></div>
          <p>You will learn <code>Map</code> fully in Lesson 15. The capstone project uses an <code>EnumMap</code> to count books per genre.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Public fields</strong>: any code can put invalid data in them.</li>
            <li><strong>Returning an internal list</strong>: other code can change it. Return <code>List.copyOf(items)</code> or an unmodifiable view (a read-only wrapper).</li>
            <li><strong>Calling <code>getX()</code> on a record</strong>: record accessors have the same name as the component: <code>x()</code>.</li>
            <li><strong>Comparing enums with <code>equals</code> or strings</strong>: use <code>==</code> (<code>g == Genre.SCIENCE</code>). There is only ever one object for each constant. Do not store <code>ordinal()</code> in files or databases. It changes if someone reorders the constants.</li>
            <li><strong>Thinking records are fully immutable</strong>: if a record holds an <code>ArrayList</code>, that list can still change. Copy it in the compact constructor.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Create <code>record Product(String name, double price)</code>. Give it a compact constructor that rejects negative prices. Add a method <code>Product withPrice(double p)</code> that returns a new record. Show that the original has not changed. Then add a fourth constant <code>REFERENCE(0, 0)</code> to <code>Genre</code>, because reference books cannot be borrowed. Add a method <code>boolean canBorrow()</code> that returns <code>loanDays &gt; 0</code>.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Make things immutable by default. Make them mutable only when you must. Immutable objects have fewer bugs, because no other code can change them without you knowing.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.ArrayList;
        import java.util.EnumMap;
        import java.util.List;
        import java.util.Map;

        class BankAccount {
            private final String owner;
            private long balance;   // in paise, never negative
            BankAccount(String owner) { this.owner = owner; }
            public long getBalance() { return balance; }
            public String getOwner() { return owner; }
            public void deposit(long amount) {
                if (amount <= 0) throw new IllegalArgumentException("Deposit must be positive");
                balance += amount;
            }
        }

        record Product(String name, double price, List<String> tags) {
            Product {   // compact constructor: validate and copy
                if (price < 0) throw new IllegalArgumentException("Negative price");
                tags = List.copyOf(tags);   // defensive, unmodifiable copy
            }
            Product withPrice(double newPrice) { return new Product(name, newPrice, tags); }
        }

        enum Genre {
            FICTION(14, 2), SCIENCE(21, 5), HISTORY(7, 2);   // each constant calls the constructor
            private final int loanDays;
            private final int finePerDay;
            Genre(int loanDays, int finePerDay) { this.loanDays = loanDays; this.finePerDay = finePerDay; }
            int loanDays() { return loanDays; }
            int fineFor(int daysLate) { return daysLate * finePerDay; }
        }

        public class Main {
            public static void main(String[] args) {
                BankAccount acc = new BankAccount("Neha");
                acc.deposit(5000);
                System.out.println(acc.getOwner() + " balance: " + acc.getBalance());
                try { acc.deposit(-10); } catch (IllegalArgumentException e) { System.out.println("Blocked: " + e.getMessage()); }

                List<String> tags = new ArrayList<>(List.of("stationery"));
                Product pen = new Product("Pen", 20.0, tags);
                tags.add("sale");   // does NOT affect the record: it stored a copy
                System.out.println(pen + " -> " + pen.withPrice(15.0));
                System.out.println("equal? " + pen.equals(new Product("Pen", 20.0, List.of("stationery"))));

                for (Genre g : Genre.values()) {
                    System.out.println(g + " (#" + g.ordinal() + "): " + g.loanDays() + " days, fine for 3 days late: Rs " + g.fineFor(3));
                }
                System.out.println("valueOf: " + Genre.valueOf("HISTORY").loanDays());
                Map<Genre, Integer> onLoan = new EnumMap<>(Genre.class);
                onLoan.put(Genre.SCIENCE, 2);   // put out of order...
                onLoan.put(Genre.FICTION, 5);
                System.out.println("EnumMap: " + onLoan);   // ...printed in declaration order
            }
        }
      JAVA
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Inheritance and Polymorphism</h1>
        </div>
        <p class="lc-lead"><strong>Inheritance</strong> lets a new class <strong>reuse and extend</strong> an existing class. A <code>Manager</code> <em>is an</em> <code>Employee</code>. So <code>class Manager extends Employee</code> gets the fields and methods of Employee. It can also change some of them. <strong>Polymorphism</strong> ("many forms") is the reward. One variable type can refer to many kinds of objects. Each object runs <em>its own</em> version of a method. An <strong>abstract class</strong> is a parent class that you cannot use on its own. It says what every child class must do.</p>
        <div class="lc-card">
          <h3><code>extends</code>, <code>super</code> and <code>@Override</code></h3>
          <div class="lc-code-block"><pre><code>class Employee {
            protected final String name;       // protected: visible to subclasses
            protected final double salary;

            Employee(String name, double salary) {
                this.name = name;
                this.salary = salary;
            }
            double annualPay() { return salary * 12; }
            String role() { return "Employee"; }
        }

        class Manager extends Employee {
            private final double bonus;

            Manager(String name, double salary, double bonus) {
                super(name, salary);           // first statement: build the parent part
                this.bonus = bonus;
            }
            @Override
            double annualPay() { return super.annualPay() + bonus; }   // reuse parent logic
            @Override
            String role() { return "Manager"; }
        }

        Manager m = new Manager("Divya", 90000, 150000);
        System.out.println(m.role() + ": " + m.annualPay());   // Manager: 1230000.0</code></pre></div>
          <ul class="lc-list">
            <li><code>super(...)</code> calls the parent constructor. <code>super.method()</code> calls the parent's version of a method.</li>
            <li>In Java 17 to 24, <code>super(...)</code> must be the <strong>first statement</strong> in the constructor. Java 25 makes this rule a little softer. Simple code, such as argument checks, may come before it. But that code still cannot read fields or call methods on <code>this</code>.</li>
            <li><code>@Override</code> asks the compiler to check that you really are overriding a parent method.</li>
            <li>An overriding method must keep the same name and parameters. It cannot be <em>less</em> visible than the parent's method.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Rules of Inheritance in Java</h3>
          <table class="lc-table">
            <thead><tr><th>Rule</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td>Single inheritance</td><td>A class can extend only <strong>one</strong> class. It can implement many interfaces.</td></tr>
              <tr><td><code>Object</code> is the root</td><td>In the end, every class extends <code>java.lang.Object</code>. It gives every class <code>toString</code>, <code>equals</code> and <code>hashCode</code>.</td></tr>
              <tr><td>Constructors are not inherited</td><td>Each subclass writes its own and calls <code>super(...)</code>.</td></tr>
              <tr><td>Parent is built first</td><td>The parent constructor always runs before the body of the child constructor. If you do not call <code>super(...)</code> yourself, Java adds a call to the parent's no-argument constructor. So the chain always runs from the top down.</td></tr>
              <tr><td><code>final</code> stops it</td><td>A <code>final</code> class cannot be extended (<code>String</code> is final). A <code>final</code> method cannot be overridden.</td></tr>
              <tr><td><code>private</code> is hidden</td><td>Subclasses cannot access private fields of the parent directly.</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Overriding <code>equals</code>, <code>hashCode</code> and <code>toString</code></h3>
          <p>The versions you get from <code>Object</code> are rarely what you want. <code>toString()</code> prints something like <code>Student@1b6d3586</code>. <code>equals</code> works the same as <code>==</code> (same object in memory). For a normal class, you override all three yourself.</p>
          <div class="lc-code-block"><pre><code>class Student {
            private final String roll;
            private final String name;
            Student(String roll, String name) { this.roll = roll; this.name = name; }

            @Override public boolean equals(Object o) {
                if (this == o) return true;                         // same object
                if (!(o instanceof Student other)) return false;    // null or another type
                return roll.equals(other.roll);                     // equal if the roll number matches
            }
            @Override public int hashCode() { return Objects.hash(roll); }   // same fields as equals
            @Override public String toString() { return "Student[" + roll + ", " + name + "]"; }
        }

        Student a = new Student("R12", "Asha");
        Student b = new Student("R12", "Asha K");
        System.out.println(a);
        System.out.println(a == b);
        System.out.println(a.equals(b));
        System.out.println(new HashSet&lt;&gt;(List.of(a)).contains(b));</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Student[R12, Asha]
        false
        true
        true</code></pre></div>
          <p><strong>The contract (the rule):</strong> if <code>a.equals(b)</code> is true, then <code>a.hashCode() == b.hashCode()</code> must also be true. <code>HashSet</code> and <code>HashMap</code> first look in the bucket that <code>hashCode</code> picks. So if you override <code>equals</code> but forget <code>hashCode</code>, <code>contains(b)</code> usually returns <code>false</code>. Use the same fields in both methods (<code>Objects.hash</code> is in <code>java.util</code>). Records (Lesson 10) create all three for you.</p>
        </div>
        <div class="lc-card">
          <h3>Abstract Classes</h3>
          <div class="lc-code-block"><pre><code>abstract class Shape {
            private final String name;
            Shape(String name) { this.name = name; }     // abstract classes can have constructors

            abstract double area();                      // no body: every subclass MUST implement it

            String describe() {                          // normal method shared by all
                return name + " with area " + String.format("%.2f", area());
            }
        }

        class Circle extends Shape {
            private final double r;
            Circle(double r) { super("Circle"); this.r = r; }
            @Override double area() { return Math.PI * r * r; }
        }

        // Shape s = new Shape("x");   // ERROR: Shape is abstract</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Dynamic Dispatch</h3>
          <div class="lc-code-block"><pre><code>Shape[] shapes = { new Circle(1), new Rectangle(2, 3) };
        for (Shape s : shapes) {
            System.out.println(s.describe());   // each object uses its own area()
        }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Circle with area 3.14
        Rectangle with area 6.00</code></pre></div>
          <p>The variable's type (<code>Shape</code>) decides <strong>which methods you may call</strong>. The compiler checks this. The object's real class (<code>Circle</code>) decides <strong>which version runs</strong>. Java picks this while the program runs.</p>
          <table class="lc-table">
            <thead><tr><th></th><th>Overloading</th><th>Overriding</th></tr></thead>
            <tbody>
              <tr><td>Where</td><td>same class, same name</td><td>a subclass rewrites a parent method</td></tr>
              <tr><td>Parameters</td><td>must differ</td><td>must be the same</td></tr>
              <tr><td>Chosen</td><td>at compile time</td><td>at runtime (dynamic dispatch)</td></tr>
              <tr><td>Kind of polymorphism</td><td>static</td><td>dynamic</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Pattern Matching for <code>instanceof</code> (Java 16+)</h3>
          <div class="lc-code-block"><pre><code>// Old way: test, then cast by hand
        if (s instanceof Circle) {
            Circle c = (Circle) s;
            System.out.println(c.radius());
        }

        // Modern way: test and bind a variable in one step
        if (s instanceof Circle c) {
            System.out.println(c.radius());
        }

        // The variable is also usable in the rest of an &amp;&amp; condition
        if (s instanceof Circle c &amp;&amp; c.radius() &gt; 5) { ... }</code></pre></div>
          <p>A wrong manual cast such as <code>(Circle) rectangle</code> throws <code>ClassCastException</code>. Pattern matching only creates the variable when the test passes. So it cannot fail that way.</p>
        </div>
        <div class="lc-card">
          <h3>Upcasting and Downcasting</h3>
          <div class="lc-code-block"><pre><code>Shape s = new Circle(2);        // upcast: automatic and always safe
        Circle c = (Circle) s;          // downcast: works, because s really is a Circle
        Shape r = new Rectangle(1, 2);
        Circle bad = (Circle) r;        // compiles, but throws ClassCastException at runtime</code></pre></div>
          <p>Upcasting (treating a child as its parent type) loses nothing. The object does not change. But through a <code>Shape</code> variable, you can only call <code>Shape</code> methods. Downcast (treat it as the child type again) only after you check the type. Pattern matching does exactly this for you.</p>
        </div>
        <div class="lc-card">
          <h3>Inheritance vs Composition</h3>
          <div class="lc-code-block"><pre><code>// "is-a": a Car IS a Vehicle -&gt; inheritance is reasonable
        class Car extends Vehicle { }

        // "has-a": a Car HAS an Engine -&gt; composition (a field)
        class Car {
            private final Engine engine = new Engine();
        }</code></pre></div>
          <p>Use inheritance only for a true <em>is-a</em> relationship. To reuse code, <strong>prefer composition</strong> (one object holds another as a field). It keeps classes loosely connected. You can change the part without breaking a whole family of subclasses.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>super(...)</code></strong>: if the parent has no constructor without arguments, the child does not compile.</li>
            <li><strong>Overloading by mistake</strong>: writing <code>double annualPay(int x)</code> in the child creates a new method. It does not override. <code>@Override</code> catches this.</li>
            <li><strong>Calling a child-only method through a parent variable</strong>: <code>Shape s = new Circle(1); s.radius();</code> does not compile.</li>
            <li><strong>Long <code>instanceof</code> chains instead of polymorphism</strong>: if each subclass needs different behaviour, put an overridden method in each class.</li>
            <li><strong>Thinking static methods are polymorphic</strong>: static methods are not overridden. Java picks them by the variable's type.</li>
            <li><strong>Deep hierarchies, or inheriting just to reuse one method</strong>: keep hierarchies (chains of parent and child classes) short. Prefer composition.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a <code>Triangle(base, height)</code> subclass of <code>Shape</code> to the starter code. Put one in the array. Do not change either loop in <code>main</code>. It should still appear with the correct area. You add new types without changing existing code. Then run it and check the constructor messages. Which constructor prints first for the <code>Square</code>, and why?</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Ask: "Can I say <em>X is a Y</em> in every situation?" A square is a shape: yes. A stack is an <code>ArrayList</code>: no, because a stack must not allow adding items in the middle. If the answer is not always yes, use composition. Also, use the most general type you need for your variables (<code>Shape s</code>, <code>List&lt;String&gt; names</code>). Then you can switch to another implementation later.</p></div>
      HTML
      starter_code: <<~'JAVA'
        abstract class Shape {
            private final String name;
            Shape(String name) {
                System.out.println("  Shape constructor for " + name);
                this.name = name;
            }
            abstract double area();   // every concrete subclass must implement this
            String describe() { return String.format("%-9s area = %6.2f", name, area()); }
        }

        class Circle extends Shape {
            private final double radius;
            Circle(double radius) { super("Circle"); this.radius = radius; }
            double radius() { return radius; }
            @Override double area() { return Math.PI * radius * radius; }
        }

        class Rectangle extends Shape {
            protected final double w, h;   // protected: visible to subclasses
            Rectangle(String name, double w, double h) { super(name); this.w = w; this.h = h; }
            Rectangle(double w, double h) { this("Rectangle", w, h); }
            @Override double area() { return w * h; }
        }

        class Square extends Rectangle {   // a Square IS a Rectangle
            Square(double side) {
                super("Square", side, side);   // parent part is built first
                System.out.println("  Square constructor, side " + side);
            }
            @Override String describe() { return super.describe() + "  (all sides " + w + ")"; }
        }

        public class Main {
            public static void main(String[] args) {
                System.out.println("Building shapes:");
                Shape[] shapes = { new Circle(1), new Rectangle(2, 3), new Square(4) };

                System.out.println("Dynamic dispatch:");
                double total = 0;
                for (Shape s : shapes) {
                    System.out.println(s.describe());   // each object runs its own version
                    total += s.area();
                }
                System.out.printf("Total area = %.2f%n", total);

                System.out.println("Pattern matching for instanceof:");
                for (Shape s : shapes) {
                    if (s instanceof Circle c) System.out.println("  circle, radius " + c.radius());
                    else if (s instanceof Square) System.out.println("  square (also a Rectangle? " + (s instanceof Rectangle) + ")");
                    else System.out.println("  other: " + s.getClass().getSimpleName());
                }
                System.out.println("Parent of Square: " + Square.class.getSuperclass().getSimpleName()
                        + ", parent of Shape: " + Shape.class.getSuperclass().getSimpleName());
                // Shape x = new Shape("x");   // does not compile: Shape is abstract
            }
        }
      JAVA
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Interfaces and Sealed Types</h1>
        </div>
        <p class="lc-lead">An <strong>interface</strong> is a contract (a list of promises). It says: "any class that implements me promises to have these methods". A class can implement many interfaces. Java 17 adds <strong>sealed</strong> types. With a sealed type, you list exactly which classes may implement an interface.</p>
        <div class="lc-card">
          <h3>Declaring and Implementing an Interface</h3>
          <div class="lc-code-block"><pre><code>interface Payable {
            double amount();                         // abstract: implementers must provide it

            default double withGst() {               // default method (Java 8+): has a body
                return amount() * 1.18;
            }

            static Payable of(double value) {        // static helper
                return () -&gt; value;                  // a lambda (lesson 16)
            }
        }

        class Invoice implements Payable, Comparable&lt;Invoice&gt; {
            private final double total;
            Invoice(double total) { this.total = total; }

            @Override public double amount() { return total; }
            @Override public int compareTo(Invoice other) {
                return Double.compare(total, other.total);   // natural order: by total
            }
        }</code></pre></div>
          <p>Abstract and default methods in an interface are <code>public</code> automatically. So the methods that implement them must be <code>public</code> too.</p>
        </div>
        <div class="lc-card">
          <h3>Abstract Class vs Interface</h3>
          <table class="lc-table">
            <thead><tr><th></th><th>Abstract class</th><th>Interface</th></tr></thead>
            <tbody>
              <tr><td>A class can have</td><td>only one parent class</td><td>many interfaces</td></tr>
              <tr><td>Instance fields (state)</td><td>Yes</td><td>No (only constants)</td></tr>
              <tr><td>Constructors</td><td>Yes</td><td>No</td></tr>
              <tr><td>Methods with a body</td><td>Yes</td><td>Yes: <code>default</code>, <code>static</code>, <code>private</code></td></tr>
              <tr><td>Use for</td><td>closely related classes that share code and state</td><td>an ability that many unrelated classes can have</td></tr>
            </tbody>
          </table>
          <p>Well-known interfaces: <code>Comparable</code> (the normal sort order), <code>Comparator</code>, <code>Runnable</code>, <code>AutoCloseable</code>, <code>Iterable</code>, and <code>List</code>/<code>Map</code> themselves.</p>
        </div>
        <div class="lc-card">
          <h3>Sealed Interfaces (Java 17)</h3>
          <div class="lc-code-block"><pre><code>sealed interface Payment permits Upi, Card, Cash { }

        record Upi(String vpa, double amount) implements Payment { }
        record Card(String last4, double amount) implements Payment { }
        record Cash(double amount) implements Payment { }

        // class Crypto implements Payment { }   // ERROR: not in the permits list</code></pre></div>
          <ul class="lc-list">
            <li>Every allowed subtype (a class that implements it) must be <code>final</code>, <code>sealed</code> or <code>non-sealed</code>. Records are final automatically.</li>
            <li>If all the types are in the same file, you may leave out the <code>permits</code> clause.</li>
            <li>Sealed types show a <strong>closed set of choices</strong>. A payment is UPI, card or cash, and nothing else. Java uses sealed types with records to describe data like "one of these shapes".</li>
          </ul>
          <div class="lc-code-block"><pre><code>// Java 17: handle each case with instanceof patterns
        static double fee(Payment p) {
            if (p instanceof Card c) return c.amount() * 0.02;
            if (p instanceof Upi u)  return 0;
            if (p instanceof Cash c) return 0;
            throw new IllegalStateException("Unknown payment");
        }</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Java 21+: Pattern Matching in <code>switch</code> and Record Patterns</h3>
          <p><strong>Java 21+ only. This does not compile in the Java 17 editor.</strong> Java 21 finalised <code>switch</code> patterns and record patterns. With a sealed interface, the compiler knows every case. So you do not need a <code>default</code>:</p>
          <div class="lc-code-block"><pre><code>static double fee(Payment p) {
            return switch (p) {
                case Card(String last4, double amount) -&gt; amount * 0.02;   // record pattern
                case Upi u -&gt; 0;
                case Cash c -&gt; 0;
            };
        }</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Nested, Inner and Anonymous Classes</h3>
          <p>You can declare a class inside another class. Do this when it is only useful as a helper for that class.</p>
          <div class="lc-code-block"><pre><code>class Library {
            private final List&lt;String&gt; titles = new ArrayList&lt;&gt;();
            void add(String t) { titles.add(t); }

            static class Stats {                 // static nested: no link to a Library object
                final int count;
                Stats(int count) { this.count = count; }
            }
            class Shelf {                        // inner: belongs to one Library object
                String describe() { return "Shelf with " + titles.size() + " books"; }
            }
            Stats stats() { return new Stats(titles.size()); }
        }

        Library lib = new Library();
        lib.add("Godan");
        lib.add("Malgudi Days");
        Library.Stats s = lib.stats();
        Library.Shelf shelf = lib.new Shelf();   // an inner object needs an outer object
        System.out.println(s.count + " | " + shelf.describe());

        Greeter formal = new Greeter() {         // anonymous class: implement an interface on the spot
            @Override public String greet(String name) { return "Good morning, " + name; }
        };
        Greeter casual = name -&gt; "Hi " + name;   // the same idea as a lambda (Lesson 16)
        System.out.println(formal.greet("Ravi") + " / " + casual.greet("Ravi"));</code></pre></div>
          <p>Here <code>Greeter</code> is <code>interface Greeter { String greet(String name); }</code>. Output:</p>
          <div class="lc-code-block"><pre><code>2 | Shelf with 2 books
        Good morning, Ravi / Hi Ravi</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Kind</th><th>Can use the outer object's fields?</th><th>Use it for</th></tr></thead>
            <tbody>
              <tr><td><code>static</code> nested class</td><td>No</td><td>a helper type kept together with its owner (the usual choice)</td></tr>
              <tr><td>Inner class (no <code>static</code>)</td><td>Yes</td><td>objects that need their outer object, such as an iterator over it</td></tr>
              <tr><td>Anonymous class</td><td>Yes</td><td>an implementation you use only once; use a lambda instead when the interface has one method</td></tr>
            </tbody>
          </table>
          <p>Make a nested class <code>static</code> unless it really needs the outer object. Records, enums and interfaces inside a class are always static.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Sorting with <code>Comparable</code></h3>
          <div class="lc-code-block"><pre><code>List&lt;Invoice&gt; bills = new ArrayList&lt;&gt;(List.of(
                new Invoice("INV-3", 750), new Invoice("INV-1", 200), new Invoice("INV-2", 1200)));
        Collections.sort(bills);                       // uses compareTo
        System.out.println(bills);
        System.out.printf("%.2f%n", bills.get(0).withGst());   // default method from Payable</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>[INV-1=200.0, INV-3=750.0, INV-2=1200.0]
        236.00</code></pre></div>
          <p>Here <code>Invoice</code> also has a <code>toString()</code> that returns <code>id + "=" + total</code>, as in the starter code.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Reducing visibility</strong>: if you implement <code>double amount()</code> without <code>public</code>, it does not compile.</li>
            <li><strong>Writing <code>extends</code> for an interface</strong>: classes <code>implement</code> interfaces. Interfaces <code>extend</code> other interfaces.</li>
            <li><strong>Subtracting in <code>compareTo</code></strong>: <code>return a - b;</code> can overflow (go past the largest number). Use <code>Integer.compare(a, b)</code> or <code>Double.compare</code>.</li>
            <li><strong>Forgetting <code>final</code>/<code>sealed</code>/<code>non-sealed</code></strong> on a class that implements a sealed interface.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Add a fourth payment type, <code>record Wallet(String provider, double amount)</code>, to the starter code. Give it a 1% fee. Notice that you must add it to the <code>permits</code> list and to the <code>fee</code> method.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Name interfaces after an ability or a role: <code>Payable</code>, <code>Comparable</code>, <code>Repository</code>. Then the code that uses them is easy to read: <code>List&lt;Payable&gt; bills</code>.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.ArrayList;
        import java.util.Collections;
        import java.util.List;

        interface Payable {
            double amount();
            default double withGst() { return amount() * 1.18; }
        }

        class Invoice implements Payable, Comparable<Invoice> {
            private final String id;
            private final double total;
            Invoice(String id, double total) { this.id = id; this.total = total; }
            @Override public double amount() { return total; }
            @Override public int compareTo(Invoice o) { return Double.compare(total, o.total); }
            @Override public String toString() { return id + "=" + total; }
        }

        sealed interface Payment permits Upi, Card, Cash { double amount(); }
        record Upi(String vpa, double amount) implements Payment { }
        record Card(String last4, double amount) implements Payment { }
        record Cash(double amount) implements Payment { }

        public class Main {
            static double fee(Payment p) {
                if (p instanceof Card c) return c.amount() * 0.02;   // 2% card fee
                if (p instanceof Upi u) return 0;
                if (p instanceof Cash c) return 0;
                throw new IllegalStateException("Unknown payment");
            }

            public static void main(String[] args) {
                List<Invoice> bills = new ArrayList<>(List.of(
                        new Invoice("INV-3", 750), new Invoice("INV-1", 200), new Invoice("INV-2", 1200)));
                Collections.sort(bills);   // uses compareTo
                System.out.println("Sorted: " + bills);
                System.out.printf("INV-1 with GST: %.2f%n", bills.get(0).withGst());

                List<Payment> payments = List.of(
                        new Upi("asha@okbank", 500), new Card("4242", 2000), new Cash(150));
                for (Payment p : payments) {
                    System.out.printf("%-40s fee = %.2f%n", p, fee(p));
                }
            }
        }
      JAVA
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Exceptions and Error Handling</h1>
        </div>
        <p class="lc-lead">An <strong>exception</strong> is an object that tells you something went wrong. Examples are bad input, a missing file, or dividing by zero. Java makes you think about errors. You <em>must</em> handle or declare some exceptions. <strong>try-with-resources</strong> makes sure things are always closed and cleaned up.</p>
        <div class="lc-card">
          <h3>The Exception Hierarchy</h3>
          <div class="lc-code-block"><pre><code>Throwable
        ├── Error                      serious JVM problems: OutOfMemoryError, StackOverflowError
        └── Exception                  CHECKED: IOException, SQLException, your own ...
            └── RuntimeException       UNCHECKED: NullPointerException, IllegalArgumentException,
                                       ArithmeticException, ArrayIndexOutOfBoundsException</code></pre></div>
          <table class="lc-table">
            <thead><tr><th></th><th>Checked</th><th>Unchecked</th></tr></thead>
            <tbody>
              <tr><td>Extends</td><td><code>Exception</code> (not RuntimeException)</td><td><code>RuntimeException</code></td></tr>
              <tr><td>Compiler forces handling?</td><td>Yes: catch it or declare <code>throws</code></td><td>No</td></tr>
              <tr><td>Usually means</td><td>an outside problem the caller can recover from (file, network)</td><td>a bug in the code or a wrong argument</td></tr>
              <tr><td>Example</td><td><code>IOException</code></td><td><code>NullPointerException</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3><code>try</code>, <code>catch</code>, <code>finally</code></h3>
          <div class="lc-code-block"><pre><code>try {
            int qty = Integer.parseInt("12a");       // throws NumberFormatException
            System.out.println("Not reached");
        } catch (NumberFormatException e) {          // most specific first
            System.out.println("Bad number: " + e.getMessage());
        } catch (IllegalArgumentException | NullPointerException e) {  // multi-catch
            System.out.println("Other problem");
        } finally {
            System.out.println("finally always runs");
        }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Bad number: For input string: "12a"
        finally always runs</code></pre></div>
          <p>Only the first matching <code>catch</code> runs. Put specific exceptions before general ones. The compiler rejects a <code>catch</code> that can never be reached.</p>
        </div>
        <div class="lc-card">
          <h3>Throwing and Custom Exceptions</h3>
          <div class="lc-code-block"><pre><code>class InsufficientFundsException extends Exception {     // checked
            InsufficientFundsException(String message) { super(message); }
        }

        void withdraw(long amount) throws InsufficientFundsException {
            if (amount &lt;= 0) throw new IllegalArgumentException("Amount must be positive"); // unchecked
            if (amount &gt; balance) throw new InsufficientFundsException("Balance is only " + balance);
            balance -= amount;
        }</code></pre></div>
          <p>Sometimes you catch one exception and throw another. Then pass the original as the <strong>cause</strong>: <code>throw new ReportException("Could not build report", e);</code>. The stack trace then shows both.</p>
        </div>
        <div class="lc-card">
          <h3>try-with-resources (Java 7+)</h3>
          <div class="lc-code-block"><pre><code>try (var in = new BufferedReader(new FileReader("data.txt"))) {
            System.out.println(in.readLine());
        } catch (IOException e) {
            System.out.println("Could not read: " + e.getMessage());
        }   // in.close() is called automatically, even if an exception happened</code></pre></div>
          <p>You can use any class that implements <code>AutoCloseable</code> this way. If you open several resources (things like files that must be closed), Java closes them in <strong>reverse</strong> order. This replaces the old way of closing things by hand in <code>finally</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: How Exceptions Travel</h3>
          <div class="lc-code-block"><pre><code>static int parse(String s) { return Integer.parseInt(s); }          // may throw
        static int total(String a, String b) { return parse(a) + parse(b); }  // does not catch

        try {
            System.out.println(total("10", "x"));
        } catch (NumberFormatException e) {
            System.out.println("Caught in main: " + e.getMessage());
        }</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Caught in main: For input string: "x"</code></pre></div>
          <p>The exception is thrown inside <code>parseInt</code>. It passes up through <code>parse</code> and <code>total</code>. Then it is caught in <code>main</code>. If nobody catches it, the program stops. It prints a <strong>stack trace</strong> (a list of every method on the way). Read it from the top to find where the problem started.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Swallowing exceptions</strong>: an empty <code>catch (Exception e) { }</code> hides bugs. At least log the problem, or let it pass up to the caller.</li>
            <li><strong>Catching <code>Exception</code> first</strong>: the later, more specific catch blocks can never be reached. This is a compile error.</li>
            <li><strong>Using exceptions for normal flow</strong>: check <code>if (list.isEmpty())</code> instead of catching an exception.</li>
            <li><strong>Losing the cause</strong>: <code>throw new RuntimeException("failed")</code> inside a catch throws away the original error. Pass <code>e</code>.</li>
            <li><strong>Catching <code>Error</code></strong>: normal code should not handle errors like <code>OutOfMemoryError</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter code, add a method <code>static int parseAge(String s)</code>. It throws <code>IllegalArgumentException</code> if the age is below 0 or above 150. It lets <code>NumberFormatException</code> pass through for text that is not a number. Test it with <code>"25"</code>, <code>"-3"</code> and <code>"abc"</code>.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Fail fast: check arguments at the start of a method. Throw <code>IllegalArgumentException</code> with a clear message. A clear error in the right place is much easier to debug than a <code>NullPointerException</code> twenty lines later.</p></div>
      HTML
      starter_code: <<~'JAVA'
        class InsufficientFundsException extends Exception {   // checked
            InsufficientFundsException(String message) { super(message); }
        }
        class Wallet {
            private long balance = 1000;
            void pay(long amount) throws InsufficientFundsException {
                if (amount <= 0) throw new IllegalArgumentException("Amount must be positive");   // unchecked
                if (amount > balance) throw new InsufficientFundsException("Need " + amount + ", have " + balance);
                balance -= amount;
                System.out.println("  Paid " + amount + ", left " + balance);
            }
        }
        class Session implements AutoCloseable {
            private final String name;
            Session(String name) { this.name = name; System.out.println("  open " + name); }
            @Override public void close() { System.out.println("  close " + name); }
            @Override public String toString() { return name; }
        }

        public class Main {
            public static void main(String[] args) {
                for (String in : new String[] {"42", "12a", "0"}) {
                    try {
                        int n = Integer.parseInt(in);
                        System.out.println("100 / " + n + " = " + (100 / n));
                    } catch (NumberFormatException e) {
                        System.out.println("Not a number: " + e.getMessage());
                    } catch (ArithmeticException e) {
                        System.out.println("Maths error: " + e.getMessage());
                    } finally {
                        System.out.println("  (finally runs for \"" + in + "\")");
                    }
                }
                Wallet w = new Wallet();
                for (long a : new long[] {300, 5000, -5}) {
                    try {
                        w.pay(a);
                    } catch (InsufficientFundsException | IllegalArgumentException e) {
                        System.out.println("  Failed: " + e.getClass().getSimpleName() + " - " + e.getMessage());
                    }
                }
                System.out.println("try-with-resources:");
                try (Session a = new Session("A"); Session b = new Session("B")) {
                    System.out.println("  working with " + a + " and " + b);
                    throw new IllegalStateException("something broke");
                } catch (IllegalStateException e) {
                    System.out.println("  caught: " + e.getMessage());
                }
            }
        }
      JAVA
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Generics</h1>
        </div>
        <p class="lc-lead"><strong>Generics</strong> let you write a class or method once. You can then use it safely with many types. <code>List&lt;String&gt;</code> means "a list that holds only Strings". The compiler checks every <code>add</code>. You never need a cast (a type conversion) when you read.</p>
        <div class="lc-card">
          <h3>Why Generics? The Old Way vs Now</h3>
          <div class="lc-code-block"><pre><code>// Old way (raw type, before Java 5) — don't use
        List names = new ArrayList();
        names.add("Asha");
        names.add(42);                      // compiles!
        String s = (String) names.get(1);   // ClassCastException at RUNTIME

        // With generics
        List&lt;String&gt; names2 = new ArrayList&lt;&gt;();   // &lt;&gt; is the "diamond": type inferred
        names2.add("Asha");
        // names2.add(42);                  // compile error: caught early
        String first = names2.get(0);       // no cast needed</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Generic Classes, Records and Methods</h3>
          <div class="lc-code-block"><pre><code>class Box&lt;T&gt; {                          // T = type parameter
            private final T value;
            Box(T value) { this.value = value; }
            T get() { return value; }
        }

        record Pair&lt;A, B&gt;(A first, B second) { }

        static &lt;T&gt; T lastOf(List&lt;T&gt; list) {     // generic method: &lt;T&gt; before the return type
            return list.get(list.size() - 1);
        }

        Box&lt;Integer&gt; b = new Box&lt;&gt;(7);
        Pair&lt;String, Integer&gt; p = new Pair&lt;&gt;("Maths", 91);
        String last = lastOf(List.of("a", "b", "c"));   // "c"</code></pre></div>
          <p>Usual names: <code>T</code> type, <code>E</code> element, <code>K</code> key, <code>V</code> value, <code>R</code> result.</p>
        </div>
        <div class="lc-card">
          <h3>Bounded Types and Wildcards</h3>
          <div class="lc-code-block"><pre><code>// Bound: T must be Comparable to itself, so we can call compareTo
        static &lt;T extends Comparable&lt;T&gt;&gt; T max(List&lt;T&gt; items) {
            T best = items.get(0);
            for (T item : items) if (item.compareTo(best) &gt; 0) best = item;
            return best;
        }

        // ? extends: READ numbers from a list of Integer, Double, ...
        static double sum(List&lt;? extends Number&gt; nums) {
            double total = 0;
            for (Number n : nums) total += n.doubleValue();
            return total;
        }

        // ? super: WRITE Integers into a List&lt;Integer&gt;, List&lt;Number&gt; or List&lt;Object&gt;
        static void addOneToThree(List&lt;? super Integer&gt; out) {
            out.add(1); out.add(2); out.add(3);
        }</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Syntax</th><th>Meaning</th><th>You can</th></tr></thead>
            <tbody>
              <tr><td><code>List&lt;Number&gt;</code></td><td>exactly Number</td><td>read and write Numbers</td></tr>
              <tr><td><code>List&lt;? extends Number&gt;</code></td><td>Number or any subtype (child type)</td><td>read as Number (a <em>producer</em>)</td></tr>
              <tr><td><code>List&lt;? super Integer&gt;</code></td><td>Integer or any supertype (parent type)</td><td>add Integers (a <em>consumer</em>)</td></tr>
            </tbody>
          </table>
          <p>An easy way to remember, <strong>PECS</strong>: Producer <code>extends</code>, Consumer <code>super</code>. Note that a <code>List&lt;Integer&gt;</code> is <em>not</em> a <code>List&lt;Number&gt;</code>, even though an Integer is a Number.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: One Method, Many Types</h3>
          <p>Using the <code>max</code>, <code>sum</code> and <code>addOneToThree</code> methods above:</p>
          <div class="lc-code-block"><pre><code>System.out.println(max(List.of(4, 19, 7)));                   // T = Integer
        System.out.println(max(List.of("mango", "apple", "papaya")));  // T = String
        System.out.println(sum(List.of(1, 2, 3)));                     // List&lt;Integer&gt;
        System.out.println(sum(List.of(1.5, 2.5)));                    // List&lt;Double&gt;

        List&lt;Number&gt; out = new ArrayList&lt;&gt;();
        addOneToThree(out);
        out.add(0.5);
        System.out.println(out);</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>19
        papaya
        6.0
        4.0
        [1, 2, 3, 0.5]</code></pre></div>
          <p><code>max</code> works for both types because Integer and String each implement <code>Comparable</code>. Strings compare in alphabetical order, so "papaya" is the largest. <code>sum</code> returns a <code>double</code>. That is why <code>6.0</code> has a decimal point.</p>
        </div>
        <div class="lc-card">
          <h3>Limits: Type Erasure and Primitives</h3>
          <ul class="lc-list">
            <li>Generic types work only with objects. Write <code>List&lt;Integer&gt;</code>, not <code>List&lt;int&gt;</code>. Java converts between <code>int</code> and <code>Integer</code> automatically (<strong>autoboxing</strong>).</li>
            <li>The compiler checks the type arguments and then <strong>erases</strong> (removes) them. When the program runs, a <code>List&lt;String&gt;</code> is just a <code>List</code>. So you cannot write <code>new T()</code> or <code>x instanceof List&lt;String&gt;</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Raw types</strong>: <code>List list = new ArrayList();</code> turns off type checking. Always give the type argument.</li>
            <li><strong>Expecting <code>List&lt;Integer&gt;</code> to be accepted where <code>List&lt;Number&gt;</code> is required</strong>: use <code>List&lt;? extends Number&gt;</code> in the method.</li>
            <li><strong>Comparing boxed numbers with <code>==</code></strong>: compare <code>Integer</code> objects with <code>equals</code>. <code>==</code> may work for small values and fail for large ones.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Write a generic method <code>static &lt;T&gt; List&lt;T&gt; repeat(T item, int times)</code>. It returns a list that contains <code>item</code> <code>times</code> times. Call it with a String and with an Integer.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>You will <em>use</em> generics every day (<code>List&lt;String&gt;</code>, <code>Map&lt;String, Integer&gt;</code>, <code>Optional&lt;User&gt;</code>) long before you need to <em>write</em> your own. Start by learning to read generic method signatures easily.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.ArrayList;
        import java.util.List;

        class Box<T> {
            private final T value;
            Box(T value) { this.value = value; }
            T get() { return value; }
            @Override public String toString() { return "Box(" + value + ")"; }
        }
        record Pair<A, B>(A first, B second) { }
        public class Main {
            static <T extends Comparable<T>> T max(List<T> items) {
                T best = items.get(0);
                for (T item : items) {
                    if (item.compareTo(best) > 0) best = item;
                }
                return best;
            }
            static double sum(List<? extends Number> nums) {   // producer: extends
                double total = 0;
                for (Number n : nums) total += n.doubleValue();
                return total;
            }
            static void addDefaults(List<? super Integer> out) { // consumer: super
                out.add(10);
                out.add(20);
            }

            public static void main(String[] args) {
                Box<String> name = new Box<>("Asha");
                Box<Integer> age = new Box<>(21);
                System.out.println(name + " and " + age);
                System.out.println("Upper-case, no cast needed: " + name.get().toUpperCase());

                Pair<String, Integer> score = new Pair<>("Maths", 91);
                System.out.println(score.first() + " -> " + score.second());

                System.out.println("max ints:    " + max(List.of(4, 19, 7)));
                System.out.println("max strings: " + max(List.of("mango", "apple", "papaya")));

                List<Integer> ints = List.of(1, 2, 3);
                List<Double> doubles = List.of(1.5, 2.5);
                System.out.println("sum ints = " + sum(ints) + ", sum doubles = " + sum(doubles));

                List<Number> numbers = new ArrayList<>();
                addDefaults(numbers);
                numbers.add(3.14);
                System.out.println("numbers: " + numbers);
            }
        }
      JAVA
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Collections: List, Set and Map</h1>
        </div>
        <p class="lc-lead">The <strong>Collections Framework</strong> in <code>java.util</code> gives you ready-made data structures that can grow. Three interfaces cover most needs: <code>List</code> (ordered), <code>Set</code> (unique) and <code>Map</code> (key → value). Choosing the right one is a key Java skill.</p>
        <div class="lc-card">
          <h3>The Big Picture</h3>
          <div class="lc-code-block"><pre><code>Collection&lt;E&gt;
        ├── List&lt;E&gt;    ordered, duplicates allowed, index access   → ArrayList, LinkedList
        ├── Set&lt;E&gt;     no duplicates                               → HashSet, LinkedHashSet, TreeSet
        └── Queue&lt;E&gt;   process in order                            → ArrayDeque, PriorityQueue

        Map&lt;K, V&gt;      unique keys → values (not a Collection)      → HashMap, LinkedHashMap, TreeMap</code></pre></div>
          <p>Declare variables with the interface type. Create the object with a class: <code>List&lt;String&gt; names = new ArrayList&lt;&gt;();</code>. Then you can change the class later without changing other code.</p>
        </div>
        <div class="lc-card">
          <h3>List, Set and Map in Action</h3>
          <div class="lc-code-block"><pre><code>List&lt;String&gt; cart = new ArrayList&lt;&gt;();
        cart.add("pen"); cart.add("book"); cart.add("pen");
        System.out.println(cart + " " + cart.get(1) + " " + cart.size());  // [pen, book, pen] book 3

        Set&lt;String&gt; unique = new TreeSet&lt;&gt;(cart);
        System.out.println(unique);                       // [book, pen]  (sorted, no duplicates)

        Map&lt;String, Integer&gt; stock = new HashMap&lt;&gt;();
        stock.put("pen", 40);
        stock.put("book", 12);
        stock.put("pen", 35);                             // same key: value is replaced
        System.out.println(stock.get("pen"));             // 35
        System.out.println(stock.getOrDefault("bag", 0)); // 0
        stock.merge("book", 5, Integer::sum);             // add 5 to the existing value -&gt; 17
        for (Map.Entry&lt;String, Integer&gt; e : stock.entrySet()) {
            System.out.println(e.getKey() + " = " + e.getValue());
        }</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Which Collection Should I Use?</h3>
          <table class="lc-table">
            <thead><tr><th>You need…</th><th>Use</th><th>Speed of the main operation</th></tr></thead>
            <tbody>
              <tr><td>an ordered list, access by position</td><td><code>ArrayList</code></td><td><code>get(i)</code> O(1); <code>contains</code> O(n)</td></tr>
              <tr><td>fast "have I seen this?" checks</td><td><code>HashSet</code></td><td><code>contains</code> O(1) on average</td></tr>
              <tr><td>unique values, sorted</td><td><code>TreeSet</code></td><td>O(log n)</td></tr>
              <tr><td>look up a value by a key</td><td><code>HashMap</code></td><td><code>get</code> O(1) on average</td></tr>
              <tr><td>keys in insertion order</td><td><code>LinkedHashMap</code> / <code>LinkedHashSet</code></td><td>O(1) on average</td></tr>
              <tr><td>keys in sorted order</td><td><code>TreeMap</code></td><td>O(log n)</td></tr>
              <tr><td>a queue (FIFO) or a stack (LIFO)</td><td><code>ArrayDeque</code></td><td>O(1) at both ends</td></tr>
            </tbody>
          </table>
          <p><code>HashMap</code> and <code>HashSet</code> make <strong>no promise about order</strong>. The old classes <code>Vector</code>, <code>Hashtable</code> and <code>Stack</code> are legacy (old and replaced). Don't use them in new code.</p>
        </div>
        <div class="lc-card">
          <h3>Immutable Collections and Keys</h3>
          <div class="lc-code-block"><pre><code>List&lt;String&gt; days = List.of("Mon", "Tue");       // Java 9+: unmodifiable
        // days.add("Wed");                             // UnsupportedOperationException
        Map&lt;String, Integer&gt; marks = Map.of("Asha", 91, "Ravi", 84);
        List&lt;String&gt; copy = new ArrayList&lt;&gt;(days);     // a modifiable copy</code></pre></div>
          <p>Some objects are used as <code>HashMap</code> keys or in a <code>HashSet</code>. They must implement <code>equals</code> and <code>hashCode</code> so that both agree. Records do this for you. That is one reason they make great keys.</p>
        </div>
        <div class="lc-card">
          <h3>Wrapper Classes and Autoboxing</h3>
          <p>Collections hold objects, not primitives (basic types such as numbers and true/false values). Each primitive has a <strong>wrapper class</strong>: <code>int</code> → <code>Integer</code>, <code>double</code> → <code>Double</code>, <code>boolean</code> → <code>Boolean</code>, <code>char</code> → <code>Character</code>, <code>long</code> → <code>Long</code>. Java converts automatically: <strong>autoboxing</strong> (<code>int</code> → <code>Integer</code>) and <strong>unboxing</strong> (<code>Integer</code> → <code>int</code>).</p>
          <div class="lc-code-block"><pre><code>int n = Integer.parseInt("42");                  // text -&gt; number
        System.out.println(n + 1);
        System.out.println(Integer.MAX_VALUE + " " + Double.parseDouble("2.5"));

        Integer p = 1000, q = 1000;
        System.out.println(p == q);                      // compares references!
        System.out.println(p.equals(q));                 // compares values

        List&lt;Integer&gt; nums = new ArrayList&lt;&gt;(List.of(10, 20, 30));
        nums.remove(Integer.valueOf(10));                // removes the VALUE 10
        nums.remove(0);                                  // removes the element at INDEX 0
        System.out.println(nums);

        Map&lt;String, Integer&gt; stock = new HashMap&lt;&gt;();
        System.out.println(stock.getOrDefault("pen", 0));
        int left = stock.get("pen");                     // get returns null -&gt; NullPointerException</code></pre></div>
          <p>Output (the last line throws):</p>
          <div class="lc-code-block"><pre><code>43
        2147483647 2.5
        false
        true
        [30]
        0
        Exception in thread "main" java.lang.NullPointerException: Cannot invoke "java.lang.Integer.intValue()" because the return value of "java.util.Map.get(Object)" is null</code></pre></div>
          <table class="lc-table">
            <thead><tr><th></th><th><code>int</code></th><th><code>Integer</code></th></tr></thead>
            <tbody>
              <tr><td>Can be <code>null</code></td><td>No (default <code>0</code>)</td><td>Yes (default <code>null</code>)</td></tr>
              <tr><td>Allowed in <code>List</code>/<code>Map</code></td><td>No</td><td>Yes</td></tr>
              <tr><td>Compare with</td><td><code>==</code></td><td><code>equals</code> (or unbox first)</td></tr>
            </tbody>
          </table>
          <p><code>==</code> on two <code>Integer</code>s is true for small values, because -128 to 127 are cached (saved and reused). It is usually false for bigger ones. Never rely on it. The error message says exactly what went wrong: Java tried to unbox a <code>null</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Word Frequency</h3>
          <div class="lc-code-block"><pre><code>String text = "the cat and the dog and the bird";
        Map&lt;String, Integer&gt; freq = new TreeMap&lt;&gt;();     // sorted by key
        for (String w : text.split(" ")) {
            freq.merge(w, 1, Integer::sum);    // first time: put 1; afterwards: add 1
        }
        System.out.println(freq);
        System.out.println("Unique words: " + freq.keySet().size());</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>{and=2, bird=1, cat=1, dog=1, the=3}
        Unique words: 5</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Removing inside for-each</strong>: this throws <code>ConcurrentModificationException</code>. Use <code>list.removeIf(x -&gt; ...)</code>.</li>
            <li><strong><code>remove(1)</code> on a <code>List&lt;Integer&gt;</code></strong>: this removes the item at <em>index</em> 1. To remove the value 1, use <code>remove(Integer.valueOf(1))</code>.</li>
            <li><strong>Relying on HashMap order</strong>: the order can change as the map grows. Use <code>LinkedHashMap</code> or <code>TreeMap</code> when order matters.</li>
            <li><strong>Using a mutable (changeable) object as a key and then changing it</strong>: the map can no longer find it.</li>
            <li><strong><code>get</code> returning <code>null</code></strong>: <code>int n = map.get("x");</code> throws <code>NullPointerException</code> if the key is missing. Use <code>getOrDefault</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Take a sentence. Count how often each word appears (ignore case) with a <code>TreeMap&lt;String, Integer&gt;</code>. Then print the set of words that appear more than once. Finally, use an <code>ArrayDeque</code> as a stack to print the words in reverse order.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>When you are not sure, start with <code>ArrayList</code> and <code>HashMap</code>. They are the right default in most programs. Change only when you need unique values, sorting, or a specific order.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.*;

        public class Main {
            public static void main(String[] args) {
                // List: ordered, allows duplicates
                List<String> orders = new ArrayList<>(List.of("dosa", "idli", "dosa", "vada", "poha", "dosa"));
                orders.add("upma");
                System.out.println("List:  " + orders + " size=" + orders.size() + " first=" + orders.get(0));

                // Set: unique values
                System.out.println("TreeSet (sorted):       " + new TreeSet<>(orders));
                System.out.println("LinkedHashSet (in order): " + new LinkedHashSet<>(orders));

                // Map: count each item
                Map<String, Integer> counts = new TreeMap<>();
                for (String item : orders) {
                    counts.put(item, counts.getOrDefault(item, 0) + 1);
                }
                System.out.println("Counts: " + counts);
                System.out.println("pizza count: " + counts.getOrDefault("pizza", 0));
                for (Map.Entry<String, Integer> e : counts.entrySet()) {
                    if (e.getValue() > 1) System.out.println("Popular: " + e.getKey());
                }

                // Safe removal while iterating
                orders.removeIf(o -> o.equals("dosa"));
                System.out.println("Without dosa: " + orders);

                // remove(index) vs remove(value)
                List<Integer> nums = new ArrayList<>(List.of(10, 20, 30));
                nums.remove(1);                    // index 1 -> removes 20
                nums.remove(Integer.valueOf(10));  // the value 10
                System.out.println("nums: " + nums);

                // ArrayDeque as a queue and as a stack
                Deque<String> queue = new ArrayDeque<>(List.of("Token 1", "Token 2", "Token 3"));
                System.out.println("Serving " + queue.poll() + ", next " + queue.peek());
                Deque<String> stack = new ArrayDeque<>();
                stack.push("page1"); stack.push("page2"); stack.push("page3");
                System.out.println("Back button: " + stack.pop() + " -> " + stack.peek());

                // Immutable collections
                List<String> days = List.of("Mon", "Tue");
                try {
                    days.add("Wed");
                } catch (UnsupportedOperationException e) {
                    System.out.println("List.of is unmodifiable");
                }
            }
        }
      JAVA
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Lambdas and Streams</h1>
        </div>
        <p class="lc-lead">A <strong>lambda</strong> is a short function with no name that you can pass around: <code>x -&gt; x * 2</code>. <strong>Streams</strong> use lambdas to process collections as a pipeline (a chain of steps). You can filter, transform, sort and summarise in a few easy-to-read lines.</p>
        <div class="lc-card">
          <h3>Lambdas and Functional Interfaces</h3>
          <p>You can use a lambda wherever Java expects a <strong>functional interface</strong>. This is an interface with exactly one abstract method.</p>
          <table class="lc-table">
            <thead><tr><th>Interface (<code>java.util.function</code>)</th><th>Method</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>Predicate&lt;T&gt;</code></td><td><code>boolean test(T)</code></td><td><code>s -&gt; s.isBlank()</code></td></tr>
              <tr><td><code>Function&lt;T, R&gt;</code></td><td><code>R apply(T)</code></td><td><code>s -&gt; s.length()</code></td></tr>
              <tr><td><code>Consumer&lt;T&gt;</code></td><td><code>void accept(T)</code></td><td><code>s -&gt; System.out.println(s)</code></td></tr>
              <tr><td><code>Supplier&lt;T&gt;</code></td><td><code>T get()</code></td><td><code>() -&gt; new ArrayList&lt;&gt;()</code></td></tr>
              <tr><td><code>BinaryOperator&lt;T&gt;</code></td><td><code>T apply(T, T)</code></td><td><code>(a, b) -&gt; a + b</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>Predicate&lt;Integer&gt; isEven = n -&gt; n % 2 == 0;
        Function&lt;String, Integer&gt; length = String::length;   // method reference = s -&gt; s.length()
        System.out.println(isEven.test(4) + " " + length.apply("Java"));   // true 4

        names.sort(Comparator.comparing(String::length).thenComparing(Comparator.naturalOrder()));</code></pre></div>
          <p>A lambda can use local variables from outside only if they are <strong>effectively final</strong> (never given a new value).</p>
        </div>
        <div class="lc-card">
          <h3>Sorting with <code>Comparator</code></h3>
          <p><code>Comparable</code> (Lesson 12) gives a class one natural (default) order. A <code>Comparator&lt;T&gt;</code> is a separate object, usually a lambda. It describes <em>any</em> order you need, without changing the class.</p>
          <div class="lc-code-block"><pre><code>record Book(String title, int year, double price) { }
        List&lt;Book&gt; books = new ArrayList&lt;&gt;(List.of(
                new Book("Godan", 1936, 250), new Book("Train to Pakistan", 1956, 199),
                new Book("Nirmala", 1927, 250)));

        books.sort(Comparator.comparingDouble(Book::price));                  // cheapest first
        System.out.println(books.stream().map(Book::title).toList());
        books.sort(Comparator.comparingDouble(Book::price).reversed()
                             .thenComparing(Book::title));                  // dearest first, ties by title
        System.out.println(books.stream().map(Book::title).toList());
        books.sort((x, y) -&gt; Integer.compare(x.year(), y.year()));           // a hand-written lambda
        System.out.println(books.stream().map(Book::title).toList());</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>[Train to Pakistan, Godan, Nirmala]
        [Godan, Nirmala, Train to Pakistan]
        [Nirmala, Godan, Train to Pakistan]</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Helper</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><code>Comparator.comparing(key)</code></td><td>order by a key (use <code>comparingInt</code>/<code>comparingDouble</code> for numbers)</td></tr>
              <tr><td><code>.reversed()</code></td><td>flip the order</td></tr>
              <tr><td><code>.thenComparing(key)</code></td><td>break ties with a second key</td></tr>
              <tr><td><code>Comparator.naturalOrder()</code>, <code>String.CASE_INSENSITIVE_ORDER</code></td><td>ready-made orders</td></tr>
            </tbody>
          </table>
          <p>A comparator returns a negative number, zero or a positive number. Use <code>Integer.compare(a, b)</code>, not <code>a - b</code>. That form can overflow (go past the largest number) for large values.</p>
        </div>
        <div class="lc-card">
          <h3>A Stream Pipeline</h3>
          <div class="lc-flow">
            <div class="lc-flow-step">Source<br><code>list.stream()</code></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Intermediate (lazy)<br><code>filter</code>, <code>map</code>, <code>sorted</code>, <code>distinct</code>, <code>limit</code></div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Terminal (runs it)<br><code>toList</code>, <code>count</code>, <code>sum</code>, <code>collect</code>, <code>forEach</code></div>
          </div>
          <div class="lc-code-block"><pre><code>record Order(String customer, String state, double amount) { }

        List&lt;String&gt; bigSpenders = orders.stream()
                .filter(o -&gt; o.amount() &gt; 500)          // keep some
                .map(Order::customer)                    // transform each
                .distinct()
                .sorted()
                .toList();                               // Java 16+: unmodifiable list

        double revenue = orders.stream().mapToDouble(Order::amount).sum();

        Map&lt;String, Long&gt; perState = orders.stream()
                .collect(Collectors.groupingBy(Order::state, TreeMap::new, Collectors.counting()));</code></pre></div>
          <p>Nothing happens until the terminal (last) operation runs. You can use a stream <strong>only once</strong>. Create a new one for each pipeline.</p>
        </div>
        <div class="lc-card">
          <h3>Loop vs Stream</h3>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Loop</th><th>Stream</th></tr></thead>
            <tbody>
              <tr><td>Filter + transform + collect</td><td>5–8 lines with a temporary list</td><td>one easy-to-read pipeline</td></tr>
              <tr><td>Group and count</td><td>manual map updates</td><td><code>groupingBy(..., counting())</code></td></tr>
              <tr><td>Early exit with complex state</td><td>clear and simple</td><td>awkward</td></tr>
              <tr><td>Changing variables outside</td><td>fine</td><td>not allowed / bad practice</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Clean Up a List of Names</h3>
          <div class="lc-code-block"><pre><code>List&lt;String&gt; names = List.of("Ravi", "asha", "Meera", "john", "Asha");
        List&lt;String&gt; result = names.stream()
                .map(String::toLowerCase)          // ravi, asha, meera, john, asha
                .distinct()                        // ravi, asha, meera, john
                .filter(n -&gt; n.length() == 4)      // ravi, asha, john
                .sorted()
                .toList();
        System.out.println(result);
        System.out.println(names.stream().mapToInt(String::length).sum());</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>[asha, john, ravi]
        21</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting the terminal operation</strong>: <code>list.stream().filter(...)</code> alone does nothing.</li>
            <li><strong>Side effects inside streams</strong>: for example, adding to an outside list in <code>map</code> or <code>forEach</code>. Collect the result instead.</li>
            <li><strong>Modifying the result of <code>toList()</code></strong>: it is unmodifiable (cannot be changed). Use <code>collect(Collectors.toCollection(ArrayList::new))</code> if you need to change it.</li>
            <li><strong>Calling <code>.getAsDouble()</code> on an empty average</strong>: <code>average()</code> returns an <code>OptionalDouble</code>. Use <code>orElse(0)</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter code, add a pipeline that prints the <strong>total amount per state</strong>. Use <code>Collectors.groupingBy(Order::state, TreeMap::new, Collectors.summingDouble(Order::amount))</code>. Then find the customer with the single largest order using <code>max(Comparator.comparing(Order::amount))</code>.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Read a stream pipeline aloud, one line per step: "from orders, keep those over 500, take the customer, remove duplicates, sort, make a list". Put each operation on its own line, so it reads that way.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.*;
        import java.util.function.*;
        import java.util.stream.*;

        record Order(String customer, String state, double amount) { }

        public class Main {
            public static void main(String[] args) {
                List<Order> orders = List.of(
                        new Order("Asha", "Kerala", 850), new Order("Ravi", "Punjab", 120),
                        new Order("Meera", "Kerala", 430), new Order("Asha", "Kerala", 999),
                        new Order("John", "Goa", 640), new Order("Ravi", "Punjab", 75));

                // Lambdas stored in functional interfaces
                Predicate<Order> isBig = o -> o.amount() > 500;
                Function<Order, String> nameOf = Order::customer;   // method reference
                System.out.println("First order big? " + isBig.test(orders.get(0)));

                List<String> bigSpenders = orders.stream()
                        .filter(isBig)
                        .map(nameOf)
                        .distinct()
                        .sorted()
                        .toList();
                System.out.println("Big spenders: " + bigSpenders);

                double revenue = orders.stream().mapToDouble(Order::amount).sum();
                OptionalDouble avg = orders.stream().mapToDouble(Order::amount).average();
                System.out.printf("Revenue: %.0f, average: %.2f%n", revenue, avg.orElse(0));

                Map<String, Long> perState = orders.stream()
                        .collect(Collectors.groupingBy(Order::state, TreeMap::new, Collectors.counting()));
                System.out.println("Orders per state: " + perState);

                String top3 = orders.stream()
                        .sorted(Comparator.comparing(Order::amount).reversed())
                        .limit(3)
                        .map(o -> o.customer() + ":" + (int) o.amount())
                        .collect(Collectors.joining(", "));
                System.out.println("Top 3: " + top3);

                int squares = IntStream.rangeClosed(1, 5).map(n -> n * n).sum();
                System.out.println("1^2 + ... + 5^2 = " + squares);
            }
        }
      JAVA
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Optional and the java.time API</h1>
        </div>
        <p class="lc-lead">This lesson covers two parts of the modern standard library that every Java developer uses. <strong><code>Optional</code></strong> clearly shows "there might be no value", instead of returning <code>null</code>. <strong><code>java.time</code></strong> (Java 8+) is the correct way to work with dates and times.</p>
        <div class="lc-card">
          <h3><code>Optional</code>: A Box That May Be Empty</h3>
          <div class="lc-code-block"><pre><code>static Optional&lt;String&gt; findEmail(String user) {
            return Optional.ofNullable(emails.get(user));   // empty if the map returned null
        }

        String e1 = findEmail("asha").orElse("no email");             // the value, or a default
        String e2 = findEmail("ravi").map(String::toUpperCase).orElse("-");  // transform if present
        findEmail("zoya").ifPresentOrElse(
                e -&gt; System.out.println("Mail " + e),
                () -&gt; System.out.println("zoya not found"));
        String e3 = findEmail("asha").orElseThrow();                  // value, or NoSuchElementException</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Use</th></tr></thead>
            <tbody>
              <tr><td><code>Optional.of(x)</code> / <code>ofNullable(x)</code> / <code>empty()</code></td><td>create (<code>of(null)</code> throws)</td></tr>
              <tr><td><code>isPresent()</code> / <code>isEmpty()</code></td><td>check (<code>isEmpty</code> is Java 11+)</td></tr>
              <tr><td><code>orElse(v)</code> / <code>orElseGet(() -&gt; v)</code></td><td>default value (<code>orElseGet</code> works it out only when needed)</td></tr>
              <tr><td><code>orElseThrow(...)</code></td><td>value, or throw an exception you choose</td></tr>
              <tr><td><code>map</code> / <code>filter</code> / <code>ifPresent</code></td><td>work with the value without taking it out of the box</td></tr>
            </tbody>
          </table>
          <p>Use <code>Optional</code> mainly as a <strong>return type</strong> for "find" methods. Do not use it for fields or method parameters. Never return <code>null</code> from a method that returns <code>Optional</code>.</p>
        </div>
        <div class="lc-card">
          <h3>The java.time Classes</h3>
          <table class="lc-table">
            <thead><tr><th>Class</th><th>Holds</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>LocalDate</code></td><td>a date, no time or zone</td><td>2026-09-25 (birthday, due date)</td></tr>
              <tr><td><code>LocalTime</code></td><td>a time of day</td><td>09:30</td></tr>
              <tr><td><code>LocalDateTime</code></td><td>date + time, no zone</td><td>2026-09-25T09:30</td></tr>
              <tr><td><code>ZonedDateTime</code></td><td>date + time + zone</td><td>a meeting in <code>Europe/London</code></td></tr>
              <tr><td><code>Instant</code></td><td>an exact moment (UTC)</td><td>timestamps in logs and databases</td></tr>
              <tr><td><code>Period</code> / <code>Duration</code></td><td>an amount of days-months-years / hours-minutes-seconds</td><td>age; length of a lecture</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>LocalDate issued = LocalDate.of(2026, 9, 25);        // months are 1-12
        LocalDate due = issued.plusDays(14);                  // 2026-10-09 (a NEW object)
        System.out.println(issued.getDayOfWeek());            // FRIDAY
        long late = ChronoUnit.DAYS.between(due, LocalDate.parse("2026-10-15"));   // 6
        String text = due.format(DateTimeFormatter.ofPattern("dd-MM-yyyy"));        // 09-10-2026
        Period age = Period.between(LocalDate.of(2005, 8, 15), issued);            // 21 years 1 month 10 days
        ZonedDateTime meeting = ZonedDateTime.of(2026, 9, 25, 9, 30, 0, 0, ZoneId.of("Europe/London"));
        Duration lecture = Duration.ofMinutes(90);</code></pre></div>
          <p>All java.time objects are <strong>immutable</strong> (they cannot change). <code>plusDays</code> returns a new date and leaves the original unchanged. For "now", use <code>LocalDate.now()</code>. But use fixed dates in tests, so results do not change from day to day.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: The Next Exam</h3>
          <div class="lc-code-block"><pre><code>LocalDate today = LocalDate.of(2026, 9, 25);
        List&lt;LocalDate&gt; exams = List.of(
                LocalDate.of(2026, 9, 10), LocalDate.of(2026, 10, 5), LocalDate.of(2026, 11, 20));

        Optional&lt;LocalDate&gt; next = exams.stream().filter(d -&gt; d.isAfter(today)).findFirst();
        next.ifPresentOrElse(
                d -&gt; System.out.println("Next exam " + d + " in " + ChronoUnit.DAYS.between(today, d) + " days"),
                () -&gt; System.out.println("No exams left!"));</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Next exam 2026-10-05 in 10 days</code></pre></div>
          <p><code>findFirst()</code> returns an <code>Optional</code> because the stream might be empty. Optional and streams are designed to work together.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Using the old API</strong>: <code>java.util.Date</code>, <code>Calendar</code> and <code>SimpleDateFormat</code> are the old way. Don't use them in new code. They are mutable (can change), not thread-safe, and <code>Calendar</code> months start at 0.</li>
            <li><strong>Ignoring the return value</strong>: <code>date.plusDays(1);</code> alone changes nothing.</li>
            <li><strong><code>MM</code> vs <code>mm</code></strong> in patterns: <code>MM</code> is month, <code>mm</code> is minutes.</li>
            <li><strong>Calling <code>optional.get()</code> without checking</strong>: it throws on an empty Optional. Use <code>orElse</code>, <code>orElseThrow</code> or <code>map</code>.</li>
            <li><strong><code>orElse(expensiveCall())</code></strong>: the call runs even when a value is present. Use <code>orElseGet(() -&gt; expensiveCall())</code>.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Make a <code>Map&lt;String, LocalDate&gt;</code> of three friends' birthdays. Write <code>Optional&lt;String&gt; firstBornIn(Month month)</code>. It returns a friend born in that month. Print their age on 2026-09-25 using <code>Period.between</code>, or <code>"Nobody"</code> if the Optional is empty.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Store moments as <code>Instant</code> (UTC). Convert to a user's zone like <code>Europe/London</code> only when you show them. Use <code>LocalDate</code> for things that are just dates, like birthdays and due dates.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.time.*;
        import java.time.format.DateTimeFormatter;
        import java.time.temporal.ChronoUnit;
        import java.util.*;

        public class Main {
            static final Map<String, String> EMAILS = Map.of("asha", "asha@example.com", "ravi", "ravi@example.com");

            static Optional<String> findEmail(String user) {
                return Optional.ofNullable(EMAILS.get(user));
            }

            public static void main(String[] args) {
                // Optional
                System.out.println("asha: " + findEmail("asha").orElse("no email"));
                System.out.println("zoya: " + findEmail("zoya").orElse("no email"));
                System.out.println("ravi upper: " + findEmail("ravi").map(String::toUpperCase).orElse("-"));
                findEmail("zoya").ifPresentOrElse(
                        e -> System.out.println("Mail " + e),
                        () -> System.out.println("zoya not found"));
                System.out.println("zoya empty? " + findEmail("zoya").isEmpty());

                // java.time: a library loan
                LocalDate issued = LocalDate.of(2026, 9, 25);
                LocalDate due = issued.plusDays(14);   // new object; issued is unchanged
                DateTimeFormatter fmt = DateTimeFormatter.ofPattern("dd-MM-yyyy");
                System.out.println("Issued " + issued.format(fmt) + " (" + issued.getDayOfWeek() + ")");
                System.out.println("Due    " + due.format(fmt));

                LocalDate returned = LocalDate.parse("2026-10-15");
                long lateDays = ChronoUnit.DAYS.between(due, returned);
                System.out.println("Late by " + lateDays + " days, fine Rs " + lateDays * 5);

                Period age = Period.between(LocalDate.of(2005, 8, 15), issued);
                System.out.println("Age: " + age.getYears() + " years, " + age.getMonths() + " month(s), " + age.getDays() + " day(s)");

                LocalDateTime start = LocalDateTime.of(2026, 9, 25, 9, 30);
                LocalDateTime end = start.plus(Duration.ofMinutes(90));
                System.out.println("Lecture: " + start.toLocalTime() + " to " + end.toLocalTime());

                Duration workday = Duration.between(LocalTime.of(9, 30), LocalTime.of(17, 45));
                System.out.println("Workday: " + workday.toHours() + "h " + workday.toMinutesPart() + "m");
                System.out.println("2028 is a leap year? " + Year.of(2028).isLeap());
            }
        }
      JAVA
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Files and Basic Concurrency</h1>
        </div>
        <p class="lc-lead">Real programs save data to <strong>files</strong> and do several things <strong>at the same time</strong>. Modern Java reads and writes files in one line with <code>java.nio.file.Files</code> and <code>Path</code>. It runs tasks in parallel with an <code>ExecutorService</code> (a pool of threads) and <code>CompletableFuture</code> (a chain of steps that run in the background).</p>
        <div class="lc-card">
          <h3>Path and Files</h3>
          <p>A <code>Path</code> is the location of a file. The static methods of <code>Files</code> do the work. The whole-file methods below open and close the file for you.</p>
          <table class="lc-table">
            <thead><tr><th>Task</th><th>Code</th></tr></thead>
            <tbody>
              <tr><td>Make a path</td><td><code>Path p = Path.of("data", "marks.csv");</code> (Java 11+; old way: <code>Paths.get</code>)</td></tr>
              <tr><td>Write text / lines</td><td><code>Files.writeString(p, text)</code>, <code>Files.write(p, List.of("a", "b"))</code></td></tr>
              <tr><td>Read everything</td><td><code>Files.readString(p)</code>, <code>Files.readAllLines(p)</code></td></tr>
              <tr><td>Read lazily, a bit at a time (big files)</td><td><code>try (Stream&lt;String&gt; s = Files.lines(p)) { ... }</code></td></tr>
              <tr><td>Check and inspect</td><td><code>Files.exists(p)</code>, <code>Files.size(p)</code>, <code>Files.isDirectory(p)</code></td></tr>
              <tr><td>Create / delete</td><td><code>Files.createDirectories(p)</code>, <code>Files.createTempFile("pre", ".txt")</code>, <code>Files.delete(p)</code>, <code>Files.deleteIfExists(p)</code></td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>Path file = Files.createTempFile("marks", ".csv");   // new empty file in the temp folder
        Files.write(file, List.of("Asha,88", "Ben,92", "Chen,79"));
        System.out.println(Files.readAllLines(file));         // [Asha,88, Ben,92, Chen,79]
        System.out.println(Files.size(file));                 // 23  (bytes, including 3 newlines)

        try (Stream&lt;String&gt; lines = Files.lines(file)) {      // must be closed: use try-with-resources
            double avg = lines.mapToInt(l -&gt; Integer.parseInt(l.split(",")[1])).average().orElse(0);
            System.out.printf("%.1f%n", avg);                  // 86.3
        }
        Files.delete(file);
        System.out.println(Files.exists(file));               // false</code></pre></div>
          <p>All text methods use <strong>UTF-8</strong> by default, so ₹ and Hindi text are safe. File methods throw the checked <code>IOException</code> (Lesson 13). Catch it, or add <code>throws IOException</code> to the method. A missing file gives its subclass <code>NoSuchFileException</code>.</p>
        </div>
        <div class="lc-card">
          <h3>Appending and Open Options</h3>
          <p><code>writeString</code> and <code>write</code> normally <strong>replace</strong> the whole file. To change that, pass <code>StandardOpenOption</code> values:</p>
          <div class="lc-code-block"><pre><code>Files.writeString(log, "started\n");                                   // create or replace
        Files.writeString(log, "saved\n", StandardOpenOption.APPEND);          // add to the end
        System.out.print(Files.readString(log));                               // started / saved
        Files.writeString(log, "x", StandardOpenOption.CREATE_NEW);            // FileAlreadyExistsException</code></pre></div>
          <p><strong>Note for this course's editor:</strong> the in-browser Java runtime has its own small file system. It does not handle <code>APPEND</code> and <code>CREATE_NEW</code> correctly. It writes from the start of the file instead. Everything else in this lesson works there exactly as in real Java. So the starter code writes the full list of lines instead of appending. Try <code>APPEND</code> on your own computer with a JDK.</p>
        </div>
        <div class="lc-card">
          <h3>Threads and Why We Use a Pool</h3>
          <p>A <strong>thread</strong> is a separate line of work that runs inside your program. You can start one by hand. But making a new thread for each task is slow and hard to control. So real code gives tasks to an <strong>ExecutorService</strong>. This is a fixed group of worker threads that take tasks from a queue.</p>
          <div class="lc-code-block"><pre><code>Thread worker = new Thread(() -&gt; System.out.println("hello from " + Thread.currentThread().getName()), "worker-1");
        worker.start();   // runs the lambda on the new thread (calling run() would NOT start a thread)
        worker.join();    // wait for it to finish
        // hello from worker-1</code></pre></div>
          <table class="lc-table">
            <thead><tr><th></th><th><code>Runnable</code></th><th><code>Callable&lt;T&gt;</code></th></tr></thead>
            <tbody>
              <tr><td>Lambda shape</td><td><code>() -&gt; { doWork(); }</code></td><td><code>() -&gt; computeValue()</code></td></tr>
              <tr><td>Returns</td><td>nothing</td><td>a value of type <code>T</code></td></tr>
              <tr><td>May throw checked exceptions</td><td>no</td><td>yes</td></tr>
              <tr><td><code>pool.submit(...)</code> gives</td><td><code>Future&lt;?&gt;</code></td><td><code>Future&lt;T&gt;</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>ExecutorService and Future</h3>
          <div class="lc-code-block"><pre><code>ExecutorService pool = Executors.newFixedThreadPool(3);
        try {
            List&lt;Future&lt;Integer&gt;&gt; futures = new ArrayList&lt;&gt;();
            for (String t : texts) {
                futures.add(pool.submit(() -&gt; countWords(t)));   // returns at once; work runs on the pool
            }
            int total = 0;
            for (Future&lt;Integer&gt; f : futures) {
                total += f.get();                                // waits until that task is done
            }
            System.out.println("total words: " + total);         // total words: 11
        } finally {
            pool.shutdown();                                     // no new tasks; threads end when idle
        }
        pool.awaitTermination(5, TimeUnit.SECONDS);</code></pre></div>
          <ul class="lc-list">
            <li>A <code>Future</code> is a "receipt" for a result that may not exist yet. <code>get()</code> blocks (waits) until the result is ready. <code>get(1, TimeUnit.SECONDS)</code> stops waiting and throws a <code>TimeoutException</code>.</li>
            <li>If the task threw an exception, <code>get()</code> throws <code>ExecutionException</code>. The original error is <code>e.getCause()</code>.</li>
            <li>Submit <strong>all</strong> tasks first, then collect the results. Calling <code>get()</code> straight after each <code>submit</code> makes the tasks run one by one.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Shared Data Needs Care</h3>
          <p><code>count++</code> is really three steps (read, add, write). Two threads doing it at the same time can overwrite each other's update. This is a <strong>race condition</strong>. On a multi-core computer, the plain counter below may print less than 200000. It may print a different number each run. Use thread-safe tools instead:</p>
          <div class="lc-code-block"><pre><code>int[] plain = {0};                       // NOT thread-safe
        AtomicInteger safe = new AtomicInteger(); // thread-safe counter
        Runnable job = () -&gt; {
            for (int i = 0; i &lt; 100_000; i++) { plain[0]++; safe.incrementAndGet(); }
        };
        // ...run job on two threads, then join both...
        System.out.println(safe.get());          // always 200000</code></pre></div>
          <p>For shared maps, use <code>ConcurrentHashMap</code> (<code>map.merge(word, 1, Integer::sum)</code> is safe). The simplest fix is to share nothing. Let each task <strong>return</strong> its result, as <code>countWords</code> does above.</p>
        </div>
        <div class="lc-card">
          <h3>CompletableFuture: Chain Steps Without Blocking</h3>
          <div class="lc-code-block"><pre><code>CompletableFuture&lt;Integer&gt; price = CompletableFuture.supplyAsync(() -&gt; 1000);  // runs in the background
        String bill = price
                .thenApply(p -&gt; p * 118 / 100)                 // next step when the value arrives
                .thenApply(p -&gt; "Total with GST: Rs " + p)
                .join();                                        // wait for the final value
        System.out.println(bill);                               // Total with GST: Rs 1180

        CompletableFuture&lt;Integer&gt; fees = CompletableFuture.supplyAsync(() -&gt; 500);
        System.out.println(price.thenCombine(fees, Integer::sum).join());           // 1500
        System.out.println(CompletableFuture.supplyAsync(() -&gt; Integer.parseInt("?"))
                .exceptionally(e -&gt; -1).join());                                     // -1</code></pre></div>
          <table class="lc-table">
            <thead><tr><th></th><th><code>Future</code></th><th><code>CompletableFuture</code></th></tr></thead>
            <tbody>
              <tr><td>Get the result</td><td><code>get()</code> (checked exceptions)</td><td><code>join()</code> (unchecked) or <code>get()</code></td></tr>
              <tr><td>Next step</td><td>you wait, then call your code</td><td><code>thenApply</code>, <code>thenCombine</code>, <code>thenAccept</code></td></tr>
              <tr><td>Errors</td><td><code>ExecutionException</code></td><td><code>exceptionally</code>, <code>handle</code></td></tr>
            </tbody>
          </table>
          <p>Without an executor argument, <code>supplyAsync</code> uses Java's shared common pool. For slow I/O (input/output) work, pass your own pool as a second argument: <code>supplyAsync(task, pool)</code>. The editor's Java runtime runs threads on one CPU core. So you see the same results as real Java, but it is not faster. Java 21 adds cheap <strong>virtual threads</strong> (see Lesson 21).</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Forgetting <code>shutdown()</code></strong>: the pool's threads keep the JVM running, so the program never ends. Shut down in a <code>finally</code> block.</li>
            <li><strong>Calling <code>thread.run()</code> instead of <code>start()</code></strong>: <code>run()</code> just runs the code on the current thread.</li>
            <li><strong>Updating a shared variable from many threads</strong> with <code>++</code> or a plain <code>HashMap</code>. Use <code>AtomicInteger</code>, <code>ConcurrentHashMap</code>, or return results instead.</li>
            <li><strong>Not closing <code>Files.lines</code></strong>: it keeps the file open. Always use try-with-resources.</li>
            <li><strong>Ignoring the cause</strong>: print <code>e.getCause()</code> of an <code>ExecutionException</code>, not just the wrapper.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter, add a fourth sentence to <code>texts</code> and check the new word total. Then write the three word counts (one per line) to a new temp file with <code>Files.write</code>. Read it back with <code>Files.readAllLines</code>, and print the largest count. Finally, add a <code>CompletableFuture</code> step with <code>thenApply</code>. It should apply a 10% discount before GST.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use concurrency (running tasks at the same time) only when tasks are slow and independent. Examples are downloads, file processing, and calls to other services. Keep each task separate: take input, return a result, and touch no shared data. That one habit prevents most threading bugs.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.io.IOException;
        import java.nio.file.Files;
        import java.nio.file.NoSuchFileException;
        import java.nio.file.Path;
        import java.util.ArrayList;
        import java.util.List;
        import java.util.concurrent.*;
        import java.util.stream.Stream;

        public class Main {
            static int countWords(String line) { return line.isBlank() ? 0 : line.strip().split("\\s+").length; }

            public static void main(String[] args) throws IOException, InterruptedException, ExecutionException {
                System.out.println("--- Files and Path ---");
                Path file = Files.createTempFile("marks", ".csv");   // a new, empty file in the temp folder
                Files.write(file, List.of("Asha,88", "Ben,92", "Chen,79"));
                List<String> lines = Files.readAllLines(file);
                System.out.println("lines: " + lines + " | size: " + Files.size(file) + " bytes");
                try (Stream<String> stream = Files.lines(file)) {   // lazy: good for big files
                    double avg = stream.mapToInt(l -> Integer.parseInt(l.split(",")[1])).average().orElse(0);
                    System.out.printf("average: %.1f%n", avg);
                }
                Files.writeString(file, "replaced\n");   // writing again replaces the contents
                System.out.println("after writeString: " + Files.readString(file).strip());
                Files.delete(file);
                System.out.println("exists after delete? " + Files.exists(file));
                try {
                    Files.readString(Path.of("missing.txt"));
                } catch (NoSuchFileException e) {
                    System.out.println("NoSuchFileException: " + e.getMessage());
                }

                System.out.println("--- ExecutorService + Future ---");
                List<String> texts = List.of("the quick brown fox", "hello world", "java runs on the jvm");
                ExecutorService pool = Executors.newFixedThreadPool(3);
                try {
                    List<Future<Integer>> futures = new ArrayList<>();
                    for (String t : texts) futures.add(pool.submit(() -> countWords(t)));   // runs on pool threads
                    int total = 0;
                    for (Future<Integer> f : futures) total += f.get();                    // get() waits for the result
                    System.out.println("total words: " + total);

                    Future<Integer> bad = pool.submit(() -> Integer.parseInt("ten"));
                    try { bad.get(); } catch (ExecutionException e) { System.out.println("task failed: " + e.getCause()); }
                } finally {
                    pool.shutdown();   // always shut the pool down, or the program may never exit
                }
                System.out.println("finished in time? " + pool.awaitTermination(5, TimeUnit.SECONDS));

                System.out.println("--- CompletableFuture ---");
                CompletableFuture<Integer> price = CompletableFuture.supplyAsync(() -> 1000);
                CompletableFuture<String> bill = price.thenApply(p -> p * 118 / 100).thenApply(p -> "Total with GST: Rs " + p);
                System.out.println(bill.join());
                CompletableFuture<Integer> fees = CompletableFuture.supplyAsync(() -> 500);
                System.out.println("combined: " + price.thenCombine(fees, Integer::sum).join());
            }
        }
      JAVA
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Packages, Modules and Build Tools</h1>
        </div>
        <p class="lc-lead">So far every program has been one file. Real Java projects have hundreds of classes. So they are organised into <strong>packages</strong> (folders of related classes). Packages can also be grouped into <strong>modules</strong>. Projects are built with a <strong>build tool</strong> such as Maven or Gradle. It compiles, tests and packages the code, and downloads libraries for you.</p>
        <div class="lc-card">
          <h3>Packages: Folders with Names</h3>
          <p>A package is a named group of classes. The <code>package</code> line must be the <strong>first statement</strong> in the file. The folder path must match the package name.</p>
          <div class="lc-code-block"><pre><code>// File: src/in/academy/library/model/Book.java
        package in.academy.library.model;

        public record Book(String title, int year) {
            public String label() { return title + " (" + year + ")"; }
            static String secret() { return "package-private"; }   // no modifier
        }</code></pre></div>
          <ul class="lc-list">
            <li>Names are lower case. They usually start with a domain name you own, written backwards: <code>com.infosys.billing</code>, <code>in.academy.library</code>. This keeps your <code>Book</code> apart from everyone else's <code>Book</code>.</li>
            <li>The full name of the class is now <code>in.academy.library.model.Book</code>.</li>
            <li>A file with no <code>package</code> line is in the <strong>unnamed package</strong>. That is fine for the single-file programs in this editor, but never for a real project.</li>
            <li>Package-private members (no modifier, Lesson 10) are visible only inside the same package. So packages are also a way to hide helpers.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Imports</h3>
          <div class="lc-code-block"><pre><code>// File: src/in/academy/library/app/Main.java
        package in.academy.library.app;

        import in.academy.library.model.Book;   // one class
        import java.util.List;
        import static java.lang.Math.max;       // a static member: call max(...) directly

        public class Main {
            public static void main(String[] args) {
                List&lt;Book&gt; books = List.of(new Book("Godan", 1936), new Book("Nirmala", 1927));
                books.forEach(b -&gt; System.out.println(b.label()));
                System.out.println("Newest year: " + max(books.get(0).year(), books.get(1).year()));
                System.out.println("Package: " + Main.class.getPackageName());
            }
        }</code></pre></div>
          <table class="lc-table">
            <thead><tr><th>Form</th><th>Example</th><th>Notes</th></tr></thead>
            <tbody>
              <tr><td>Single-type import</td><td><code>import java.util.List;</code></td><td>the clearest; this is what IDEs write for you</td></tr>
              <tr><td>Wildcard import</td><td><code>import java.util.*;</code></td><td>all types of one package (not its sub-packages)</td></tr>
              <tr><td>Static import</td><td><code>import static java.lang.Math.max;</code></td><td>use a static method or constant without the class name</td></tr>
              <tr><td>Fully qualified name</td><td><code>java.util.Date d = new java.util.Date();</code></td><td>no import needed; useful when two packages have a class with the same name</td></tr>
              <tr><td>Automatic</td><td><code>String</code>, <code>Math</code>, <code>Integer</code></td><td><code>java.lang</code> and your own package are always imported</td></tr>
            </tbody>
          </table>
          <p>An import only saves typing. It does not copy code into your file and does not make anything slower.</p>
        </div>
        <div class="lc-card">
          <h3>Worked Example: Compile and Run a Two-Package Project</h3>
          <p>With the two files above in <code>src/</code>, run these commands in a terminal (JDK 17 or newer):</p>
          <div class="lc-code-block"><pre><code>javac -d out $(find src -name "*.java")     # Windows PowerShell: javac -d out (Get-ChildItem -Recurse src -Filter *.java).FullName
        java -cp out in.academy.library.app.Main</code></pre></div>
          <p>Output:</p>
          <div class="lc-code-block"><pre><code>Godan (1936)
        Nirmala (1927)
        Newest year: 1936
        Package: in.academy.library.app</code></pre></div>
          <p><code>-d out</code> puts the <code>.class</code> files in <code>out/in/academy/library/...</code>, in the same shape as the packages. <code>-cp out</code> (the <strong>classpath</strong>) tells the JVM where to look for classes. You start the program by its <em>full</em> class name. If <code>Main</code> calls <code>Book.secret()</code>, compilation fails:</p>
          <div class="lc-code-block"><pre><code>error: secret() is not public in Book; cannot be accessed from outside package</code></pre></div>
          <p>To share the program as one file, pack it into a <strong>JAR</strong> (a zip of class files). Then run it:</p>
          <div class="lc-code-block"><pre><code>jar --create --file library.jar --main-class in.academy.library.app.Main -C out .
        java -jar library.jar</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Modules (Java 9+)</h3>
          <p>A <strong>module</strong> is a group of packages with a <code>module-info.java</code> file at the root of the source folder. This file says which packages other code may use (<code>exports</code>). It also says which modules this one needs (<code>requires</code>). Packages that are not exported stay hidden, even their <code>public</code> classes.</p>
          <div class="lc-code-block"><pre><code>// File: src/module-info.java
        module in.academy.library {
            exports in.academy.library.model;   // Book is usable by other modules
            // in.academy.library.app is not exported: it stays internal
            // requires java.net.http;          // add a line like this for each JDK module you use beyond java.base
        }</code></pre></div>
          <p>The JDK itself is split into modules. <code>String</code>, <code>List</code> and <code>LocalDate</code> live in <code>java.base</code>, which every module gets automatically. Modules are optional. Most applications and frameworks still run on the classpath, as in the worked example. But you will see <code>module-info.java</code> in libraries and in the JDK.</p>
        </div>
        <div class="lc-card">
          <h3>Build Tools: Maven and Gradle</h3>
          <p>Nobody types <code>javac</code> commands for a real project. A build tool reads one configuration file. It downloads the libraries (<strong>dependencies</strong>) you list from <strong>Maven Central</strong>. Then it compiles, runs the tests and builds the JAR. Both tools use the same folder layout:</p>
          <div class="lc-code-block"><pre><code>library/
          pom.xml                  (Maven)   or   build.gradle.kts (Gradle)
          src/main/java/in/academy/library/model/Book.java
          src/main/java/in/academy/library/app/Main.java
          src/test/java/...        tests (next lesson)
          target/ or build/        generated output: never edit or commit</code></pre></div>
          <p>The main part of a Maven <code>pom.xml</code>:</p>
          <div class="lc-code-block"><pre><code>&lt;groupId&gt;in.academy&lt;/groupId&gt;         &lt;!-- who: usually your package prefix --&gt;
        &lt;artifactId&gt;library&lt;/artifactId&gt;      &lt;!-- what: the project name --&gt;
        &lt;version&gt;1.0.0&lt;/version&gt;
        &lt;properties&gt;
          &lt;maven.compiler.release&gt;17&lt;/maven.compiler.release&gt;   &lt;!-- same as javac --release 17 --&gt;
        &lt;/properties&gt;</code></pre></div>
          <table class="lc-table">
            <thead><tr><th></th><th>Maven</th><th>Gradle</th></tr></thead>
            <tbody>
              <tr><td>Config file</td><td><code>pom.xml</code> (XML)</td><td><code>build.gradle.kts</code> (Kotlin) or <code>build.gradle</code> (Groovy)</td></tr>
              <tr><td>Compile + test + package</td><td><code>mvn package</code></td><td><code>./gradlew build</code></td></tr>
              <tr><td>Run tests only</td><td><code>mvn test</code></td><td><code>./gradlew test</code></td></tr>
              <tr><td>Output</td><td><code>target/library-1.0.0.jar</code></td><td><code>build/libs/library-1.0.0.jar</code></td></tr>
              <tr><td>Main version (at the time of writing)</td><td>Maven 3.9 (Maven 4 is on the way; check maven.apache.org)</td><td>Gradle 9</td></tr>
              <tr><td>Common in</td><td>enterprise and Spring Boot projects</td><td>Android and many newer projects</td></tr>
            </tbody>
          </table>
          <p>Projects usually include a <strong>wrapper</strong> (<code>./mvnw</code> or <code>./gradlew</code>). It downloads the exact tool version the project needs, so everyone on the team builds the same way. IntelliJ IDEA, VS Code and Eclipse open these projects directly.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Folder does not match the package</strong>: <code>package in.academy.library.model;</code> in <code>src/Book.java</code> confuses tools and the classpath. Keep folders and packages the same.</li>
            <li><strong>Running a packaged class by its short name</strong>: <code>java -cp out Main</code> fails with "Could not find or load main class". Use the full name <code>in.academy.library.app.Main</code>.</li>
            <li><strong>Expecting <code>import java.util.*</code> to import sub-packages</strong>: it does not include <code>java.util.function</code> or <code>java.util.stream</code>. Import those separately.</li>
            <li><strong>Committing <code>target/</code>, <code>build/</code> or <code>.class</code> files</strong>: they are generated by the tools. Add them to <code>.gitignore</code>.</li>
            <li><strong>Copying JAR files into the project by hand</strong>: declare the dependency in <code>pom.xml</code> or <code>build.gradle.kts</code> instead. Then the version is recorded and everyone gets the same one.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>In the starter code, add <code>import static java.lang.Math.sqrt;</code> and print <code>sqrt(144)</code> without writing <code>Math.</code>. Then print the package and module of <code>java.util.stream.Collectors</code> using <code>getPackageName()</code> and <code>getModule().getName()</code>. Predict the answers first: which module do you expect?</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>When a project grows, organise packages by <em>feature</em> (<code>...library.loans</code>, <code>...library.members</code>). Do not organise only by layer (<code>...controllers</code>, <code>...models</code>). Then classes that change together stay together. Package-private can hide the details of each feature.</p></div>
      HTML
      starter_code: <<~'JAVA'
        // Lesson 19: packages, imports and modules, seen from inside one file.
        // The editor compiles a single file with no package line, so Main lives in
        // the "unnamed package". In a real project, line 1 would be e.g.
        // package in.academy.library.app;
        import java.time.LocalDate;           // single-type import
        import java.util.*;                   // wildcard import: every type in java.util
        import static java.lang.Math.max;     // static import: call max(...) without "Math."
        import static java.lang.Math.PI;

        class PriceRules {                    // no modifier = package-private
            static int gstPercent() { return 18; }
        }

        public class Main {
            static String pkg(Class<?> c) {
                String p = c.getPackageName();
                return p.isEmpty() ? "(unnamed package)" : p;
            }

            public static void main(String[] args) {
                System.out.println("== Packages ==");
                System.out.println("Main       -> " + pkg(Main.class));
                System.out.println("String     -> " + pkg(String.class) + " (imported automatically)");
                System.out.println("List       -> " + List.class.getName());
                System.out.println("LocalDate  -> " + LocalDate.class.getName());

                System.out.println("== Imports ==");
                java.util.Date legacy = new java.util.Date(0L);   // fully qualified name: no import needed
                System.out.println("Fully qualified java.util.Date works: " + (legacy.getTime() == 0L));
                System.out.println("Static import max(3, 7) = " + max(3, 7));
                System.out.printf("Static import PI = %.4f%n", PI);
                Map<String, Integer> stock = new TreeMap<>(Map.of("pen", 40, "book", 12));
                System.out.println("From java.util.*: " + stock);

                System.out.println("== Access ==");
                System.out.println("Package-private GST: " + PriceRules.gstPercent() + "% (same package, so allowed)");

                System.out.println("== Modules ==");
                System.out.println("String is in module " + String.class.getModule().getName());
                System.out.println("LocalDate is in module " + LocalDate.class.getModule().getName());
                System.out.println("Main is in a named module? " + Main.class.getModule().isNamed());
            }
        }
      JAVA
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Unit Testing with JUnit</h1>
        </div>
        <p class="lc-lead">Professional Java code comes with <strong>automated tests</strong>. These are small methods that call your code and check the result. <strong>JUnit</strong> is the standard testing framework. Tests find bugs before users do. They let you change code without fear.</p>
        <div class="lc-card">
          <h3>JUnit Today</h3>
          <ul class="lc-list">
            <li><strong>JUnit 6</strong> (released September 2025) is the current version and needs Java 17+. Many existing projects still use <strong>JUnit 5</strong>. Both use the same "Jupiter" API in the package <code>org.junit.jupiter.api</code>. So the code below works in both.</li>
            <li>JUnit 4 (<code>org.junit.Test</code>, <code>@Before</code>) is the old way. Don't use it in new projects.</li>
            <li>Tests live in <code>src/test/java</code>, next to your code in <code>src/main/java</code> (the project layout from Lesson 19). They run with <code>mvn test</code> or <code>./gradlew test</code>. IDEs such as IntelliJ IDEA show a green or red result for each test.</li>
          </ul>
          <p>Add JUnit to a Maven project. The example uses <code>6.0.0</code>, the first JUnit 6 release. Check Maven Central for the newest 6.x.y release and use that:</p>
          <div class="lc-code-block"><pre><code>&lt;dependency&gt;
          &lt;groupId&gt;org.junit.jupiter&lt;/groupId&gt;
          &lt;artifactId&gt;junit-jupiter&lt;/artifactId&gt;
          &lt;version&gt;6.0.0&lt;/version&gt;
          &lt;scope&gt;test&lt;/scope&gt;
        &lt;/dependency&gt;</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>A Test Class</h3>
          <div class="lc-code-block"><pre><code>// src/main/java/PriceCalculator.java
        public class PriceCalculator {
            public static double withGst(double price) {
                if (price &lt; 0) throw new IllegalArgumentException("price &lt; 0");
                return Math.round(price * 118) / 100.0;
            }
        }

        // src/test/java/PriceCalculatorTest.java
        import org.junit.jupiter.api.DisplayName;
        import org.junit.jupiter.api.Test;
        import org.junit.jupiter.params.ParameterizedTest;
        import org.junit.jupiter.params.provider.CsvSource;
        import static org.junit.jupiter.api.Assertions.*;

        class PriceCalculatorTest {
            @Test
            @DisplayName("adds 18% GST")
            void addsGst() {
                double result = PriceCalculator.withGst(100.0);   // Act
                assertEquals(118.0, result, 0.001);               // Assert (expected first!)
            }

            @Test
            void rejectsNegativePrice() {
                var ex = assertThrows(IllegalArgumentException.class,
                        () -&gt; PriceCalculator.withGst(-1));
                assertEquals("price &lt; 0", ex.getMessage());
            }

            @ParameterizedTest
            @CsvSource({"0, 0.0", "99.99, 117.99", "250, 295.0"})
            void manyPrices(double price, double expected) {
                assertEquals(expected, PriceCalculator.withGst(price), 0.001);
            }
        }</code></pre></div>
          <p>Running <code>mvn test</code> prints a summary such as:</p>
          <div class="lc-code-block"><pre><code>Tests run: 5, Failures: 0, Errors: 0, Skipped: 0</code></pre></div>
          <p>The parameterised test (one test run with many inputs) counts once per row. So 2 + 3 = 5 tests.</p>
        </div>
        <div class="lc-card">
          <h3>Most Used Annotations and Assertions</h3>
          <table class="lc-table">
            <thead><tr><th>Name</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>@Test</code></td><td>marks a test method (no need for <code>public</code>)</td></tr>
              <tr><td><code>@BeforeEach</code> / <code>@AfterEach</code></td><td>run before / after every test, for example to create a fresh object</td></tr>
              <tr><td><code>@DisplayName</code></td><td>an easy-to-read name in the report</td></tr>
              <tr><td><code>@ParameterizedTest</code> + <code>@CsvSource</code></td><td>run the same test with many inputs</td></tr>
              <tr><td><code>assertEquals(expected, actual)</code></td><td>values are equal (for doubles, pass a tolerance: the allowed small difference)</td></tr>
              <tr><td><code>assertTrue</code> / <code>assertFalse</code></td><td>a condition is true / false</td></tr>
              <tr><td><code>assertThrows(Type.class, () -&gt; ...)</code></td><td>the code throws that exception; it returns the exception</td></tr>
              <tr><td><code>assertAll(...)</code></td><td>check several things and report all failures together</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Writing Good Tests</h3>
          <ul class="lc-list">
            <li><strong>Arrange, Act, Assert</strong>: set up the data, call one method, check the result.</li>
            <li><strong>Test three kinds of input</strong>: normal cases, edge cases (0, empty list, maximum value) and error cases (wrong input should throw).</li>
            <li><strong>One behaviour per test</strong>, with a name that says what should happen: <code>rejectsNegativePrice</code>.</li>
            <li><strong>Tests must be deterministic</strong> (give the same result every time): no real clock, randomness or network. Pass fixed dates like <code>LocalDate.of(2026, 9, 25)</code>. Libraries such as Mockito help you replace slow or outside parts with fakes.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes</h3>
          <ul class="lc-list">
            <li><strong>Swapping expected and actual</strong>: <code>assertEquals(result, 118.0)</code> still passes or fails correctly. But the failure message reads backwards.</li>
            <li><strong>Comparing doubles without a tolerance</strong>: use <code>assertEquals(0.3, 0.1 + 0.2, 1e-9)</code>.</li>
            <li><strong>Tests that depend on each other</strong>: JUnit does not promise an order. Each test must set up its own data.</li>
            <li><strong>A test with no assertion</strong>: it passes even when the code is wrong.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>JUnit is not available in this browser editor. So the starter code includes a tiny home-made <code>assertEquals</code> and <code>assertThrows</code> that work the same way. Add a test for <code>discount(200, 50)</code>. Then break <code>discount</code> on purpose (for example use <code>+</code> instead of <code>-</code>) and watch the test fail.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>When you find a bug, first write a test that fails because of it. Then fix the code until the test passes. Now the bug can never come back without you noticing.</p></div>
      HTML
      starter_code: <<~'JAVA'
        class PriceCalculator {
            static double withGst(double price) {
                if (price < 0) throw new IllegalArgumentException("price < 0");
                return Math.round(price * 118) / 100.0;
            }
            static double discount(double price, int percent) {
                if (percent < 0 || percent > 100) throw new IllegalArgumentException("bad percent");
                return price - price * percent / 100.0;
            }
        }
        public class Main {
            static int passed = 0, failed = 0;

            // A tiny imitation of JUnit's assertEquals(expected, actual, delta)
            static void assertEquals(String test, double expected, double actual) {
                if (Math.abs(expected - actual) < 0.001) {
                    passed++;
                    System.out.println("PASS  " + test);
                } else {
                    failed++;
                    System.out.println("FAIL  " + test + ": expected " + expected + " but was " + actual);
                }
            }

            // A tiny imitation of JUnit's assertThrows
            static void assertThrows(String test, Class<? extends Exception> type, Runnable code) {
                try {
                    code.run();
                    failed++;
                    System.out.println("FAIL  " + test + ": nothing was thrown");
                } catch (Exception e) {
                    boolean ok = type.isInstance(e);
                    if (ok) passed++; else failed++;
                    System.out.println((ok ? "PASS  " : "FAIL  ") + test + " (" + e.getMessage() + ")");
                }
            }

            public static void main(String[] args) {
                assertEquals("adds 18% GST", 118.0, PriceCalculator.withGst(100));
                assertEquals("rounds to paise", 117.99, PriceCalculator.withGst(99.99));
                assertEquals("zero price", 0.0, PriceCalculator.withGst(0));
                assertEquals("10% discount", 90.0, PriceCalculator.discount(100, 10));
                assertEquals("no discount", 80.0, PriceCalculator.discount(80, 0));
                assertThrows("rejects negative price", IllegalArgumentException.class, () -> PriceCalculator.withGst(-1));
                assertThrows("rejects 150% discount", IllegalArgumentException.class, () -> PriceCalculator.discount(100, 150));

                System.out.println("\nTests run: " + (passed + failed) + ", passed: " + passed + ", failed: " + failed);
            }
        }
      JAVA
    },

    21 => {
      body: <<~'HTML',
        <div class="lc-header">
          <div class="lc-badge le-badge le-badge-java">Java</div>
          <h1 class="lc-title">Capstone Project: Library Management System</h1>
        </div>
        <p class="lc-lead">Now you will use everything together. You will build the main part of a college <strong>library system</strong>. It has books, members who borrow and return them, due dates, late fines, and a summary report. The starter code is a working version. Read it, run it and add to it.</p>
        <div class="lc-card">
          <h3>Requirements</h3>
          <ul class="lc-list">
            <li>Store books with an ISBN, a title and a genre (<code>FICTION</code>, <code>SCIENCE</code>, <code>HISTORY</code>).</li>
            <li>A member can borrow a book for 14 days. A book already on loan cannot be borrowed again.</li>
            <li>Borrowing an unknown ISBN or an unavailable book fails with a clear error.</li>
            <li>Returning late costs Rs 5 per day.</li>
            <li>Print a report: number of books per genre and the list of books currently on loan.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Design: Which Java Feature Does What</h3>
          <table class="lc-table">
            <thead><tr><th>Part</th><th>Java feature</th><th>Lesson</th></tr></thead>
            <tbody>
              <tr><td><code>Genre</code></td><td>enum</td><td>5, 10</td></tr>
              <tr><td><code>Book</code>, <code>Loan</code></td><td>immutable (unchangeable) records with methods</td><td>10</td></tr>
              <tr><td><code>Library</code></td><td>encapsulated class (its data is hidden) with private collections</td><td>9, 10</td></tr>
              <tr><td>books by ISBN, loans by ISBN</td><td><code>LinkedHashMap</code> (keeps insertion order)</td><td>15</td></tr>
              <tr><td><code>find</code></td><td><code>Optional&lt;Book&gt;</code></td><td>17</td></tr>
              <tr><td>due dates and fines</td><td><code>LocalDate</code>, <code>ChronoUnit.DAYS.between</code></td><td>17</td></tr>
              <tr><td>failed borrow</td><td>custom checked exception</td><td>13</td></tr>
              <tr><td>report</td><td>streams, <code>groupingBy</code> into an <code>EnumMap</code></td><td>10, 16</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-card">
          <h3>Key Pieces of the Code</h3>
          <div class="lc-code-block"><pre><code>record Loan(Book book, String member, LocalDate due) {
            long fine(LocalDate returned) {
                long late = ChronoUnit.DAYS.between(due, returned);
                return Math.max(0, late) * 5;          // never a negative fine
            }
        }

        Loan borrow(String isbn, String member, LocalDate today) throws BookNotAvailableException {
            Book b = find(isbn).orElseThrow(() -&gt; new BookNotAvailableException("No book " + isbn));
            if (loans.containsKey(isbn)) throw new BookNotAvailableException(b.title() + " is on loan");
            loans.put(isbn, new Loan(b, member, today.plusDays(14)));
            return loans.get(isbn);
        }

        long giveBack(String isbn, LocalDate returned) {    // returns the fine (0 if not on loan)
            return Optional.ofNullable(loans.remove(isbn)).map(l -&gt; l.fine(returned)).orElse(0L);
        }</code></pre></div>
          <p>Notice that <code>borrow</code> takes <code>today</code> as a parameter instead of calling <code>LocalDate.now()</code>. So the program gives the same result every time (it is deterministic) and is easy to test.</p>
          <p>Expected output of the starter code:</p>
          <div class="lc-code-block"><pre><code>Asha borrowed Wings of Fire, due 2026-10-09
        Ravi borrowed Discovery of India, due 2026-10-09
        Error: Wings of Fire is on loan
        Error: No book 999
        Books per genre: {FICTION=1, SCIENCE=2, HISTORY=1}
        On loan: [Wings of Fire, Discovery of India]
        Returned 101, fine Rs 30
        Returned 103, fine Rs 0</code></pre></div>
        </div>
        <div class="lc-card">
          <h3>Extend It (Choose Two or More)</h3>
          <ul class="lc-list">
            <li>Give <code>Genre</code> a <code>loanDays</code> field (Lesson 10), for example <code>SCIENCE(21)</code>, and use it instead of the fixed 14 days.</li>
            <li>Save the loans to a file with <code>Files.write</code>. Load them back when the program starts (Lesson 18).</li>
            <li>Limit each member to <strong>2 books</strong> at a time. Throw an exception on the third.</li>
            <li>Add a <code>sealed interface Member permits Student, Faculty</code>. Faculty get 30 days and pay no fines.</li>
            <li>Add <code>search(String word)</code>. It returns all titles that contain a word, ignoring case. Use a stream.</li>
            <li>Keep a history of returned loans and print the total fines collected per member.</li>
            <li>Move the code into a Maven or Gradle project with packages <code>...library.model</code> and <code>...library.app</code> (Lesson 19). Then write JUnit tests (Lesson 20) for <code>fine</code>: on time, one day late, and returned early.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Where Next: Java 21 and 25</h3>
          <p><strong>Java 21+ only. These do not compile in the Java 17 editor.</strong> When you move to a newer JDK, look at:</p>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Version</th><th>What it gives you</th></tr></thead>
            <tbody>
              <tr><td>Virtual threads</td><td>Java 21</td><td>very cheap threads, so a server can handle thousands of blocking (waiting) tasks at once</td></tr>
              <tr><td>Pattern matching in <code>switch</code>, record patterns</td><td>Java 21</td><td><code>case Card(String n, double amt) -&gt; ...</code> over sealed types; the compiler checks that every case is covered</td></tr>
              <tr><td>Sequenced collections</td><td>Java 21</td><td><code>list.getFirst()</code>, <code>getLast()</code>, <code>reversed()</code> on lists, deques and linked sets/maps</td></tr>
              <tr><td>Unnamed variables <code>_</code></td><td>Java 22</td><td><code>catch (Exception _)</code> for values you do not need</td></tr>
              <tr><td>Compact source files, instance <code>main</code></td><td>Java 25</td><td><code>void main() { IO.println("Hi"); }</code> with no class declaration</td></tr>
            </tbody>
          </table>
          <div class="lc-code-block"><pre><code>// Java 21+: run 10,000 tasks, each on its own virtual thread
        try (var executor = Executors.newVirtualThreadPerTaskExecutor()) {
            for (int i = 0; i &lt; 10_000; i++) {
                executor.submit(() -&gt; {
                    Thread.sleep(Duration.ofSeconds(1));   // blocking is cheap here
                    return "done";
                });
            }
        }   // close() waits for all tasks to finish</code></pre></div>
          <p>After this course, here are good next steps. Build a real Maven or Gradle project on your own computer (Lesson 19). Learn the Spring Boot framework for web APIs. Learn JDBC or JPA for databases.</p>
        </div>
        <div class="lc-card">
          <h3>Common Mistakes in Projects</h3>
          <ul class="lc-list">
            <li><strong>One giant class</strong>: split data (records), rules (the <code>Library</code> class) and output (<code>main</code>).</li>
            <li><strong>Returning internal collections</strong>: callers could change your loans map. Return copies or read-only views.</li>
            <li><strong>Calling <code>LocalDate.now()</code> deep inside logic</strong>: pass the date in, so you can test the results.</li>
            <li><strong>Using <code>null</code> for "not found"</strong>: return an <code>Optional</code> instead.</li>
          </ul>
        </div>
        <div class="lc-card">
          <h3>Try it</h3>
          <p>Run the starter code and check it against the expected output above. Then add the "2 books per member" rule. Add a line in <code>main</code> that shows it works.</p>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Put this project on GitHub with a short README. Explain your design choices in it: why records, why Optional, why a checked exception. Interviewers care about <em>why</em> you chose a feature as much as about the code itself.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.time.LocalDate;
        import java.time.temporal.ChronoUnit;
        import java.util.*;
        import java.util.stream.Collectors;
        enum Genre { FICTION, SCIENCE, HISTORY }
        record Book(String isbn, String title, Genre genre) { }
        record Loan(Book book, String member, LocalDate due) {
            long fine(LocalDate returned) { return Math.max(0, ChronoUnit.DAYS.between(due, returned)) * 5; }  // Rs 5 per late day
        }
        class BookNotAvailableException extends Exception { BookNotAvailableException(String m) { super(m); } }
        class Library {
            private final Map<String, Book> books = new LinkedHashMap<>();
            private final Map<String, Loan> loans = new LinkedHashMap<>();
            void add(Book b) { books.put(b.isbn(), b); }
            Optional<Book> find(String isbn) { return Optional.ofNullable(books.get(isbn)); }
            List<String> onLoan() { return loans.values().stream().map(l -> l.book().title()).toList(); }
            Loan borrow(String isbn, String member, LocalDate today) throws BookNotAvailableException {
                Book b = find(isbn).orElseThrow(() -> new BookNotAvailableException("No book " + isbn));
                if (loans.containsKey(isbn)) throw new BookNotAvailableException(b.title() + " is on loan");
                loans.put(isbn, new Loan(b, member, today.plusDays(14)));
                return loans.get(isbn);
            }
            long giveBack(String isbn, LocalDate returned) {   // returns the fine
                return Optional.ofNullable(loans.remove(isbn)).map(l -> l.fine(returned)).orElse(0L);
            }
            Map<Genre, Long> countByGenre() {
                return books.values().stream()
                        .collect(Collectors.groupingBy(Book::genre, () -> new EnumMap<>(Genre.class), Collectors.counting()));
            }
        }

        public class Main {
            public static void main(String[] args) {
                Library lib = new Library();
                lib.add(new Book("101", "Wings of Fire", Genre.SCIENCE));
                lib.add(new Book("102", "A Brief History of Time", Genre.SCIENCE));
                lib.add(new Book("103", "Discovery of India", Genre.HISTORY));
                lib.add(new Book("104", "Malgudi Days", Genre.FICTION));
                for (String[] r : new String[][] {{"101", "Asha"}, {"103", "Ravi"}, {"101", "Meera"}, {"999", "John"}}) {
                    try {
                        Loan loan = lib.borrow(r[0], r[1], LocalDate.of(2026, 9, 25));
                        System.out.println(r[1] + " borrowed " + loan.book().title() + ", due " + loan.due());
                    } catch (BookNotAvailableException e) { System.out.println("Error: " + e.getMessage()); }
                }
                System.out.println("Books per genre: " + lib.countByGenre());
                System.out.println("On loan: " + lib.onLoan());
                System.out.println("Returned 101, fine Rs " + lib.giveBack("101", LocalDate.of(2026, 10, 15)));
                System.out.println("Returned 103, fine Rs " + lib.giveBack("103", LocalDate.of(2026, 10, 1)));
            }
        }
      JAVA
    }
  }.freeze
end

module JavaContent
  LESSONS = {
    1 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java is one of the world's most popular programming languages, used by billions of devices from Android phones to enterprise banking systems. Created by <strong>James Gosling at Sun Microsystems in 1995</strong>, Java's famous motto is <em>"Write Once, Run Anywhere."</em></p>
        </div>
        <div class="lc-section">
          <h2>What Makes Java Special?</h2>
          <ul class="lc-list">
            <li><strong>Platform Independent</strong> — Java code compiles to bytecode that runs on any JVM (Java Virtual Machine)</li>
            <li><strong>Object-Oriented</strong> — everything is organised into classes and objects</li>
            <li><strong>Strongly Typed</strong> — every variable must have a declared type</li>
            <li><strong>Huge Ecosystem</strong> — Android development, Spring Boot, enterprise apps, big data</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>How Java Works</h2>
          <div class="lc-flow">
            <div class="lc-flow-step">You write<br><code>.java</code> file</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">Compiler creates<br><code>.class</code> bytecode</div>
            <div class="lc-flow-arrow">→</div>
            <div class="lc-flow-step">JVM runs<br>on any OS</div>
          </div>
        </div>
        <div class="lc-section">
          <h2>Your First Java Program</h2>
          <div class="lc-code-block"><pre><code>public class Main {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }
}</code></pre></div>
          <ul class="lc-list">
            <li><code>public class Main</code> — every Java file has a class matching its filename</li>
            <li><code>main(String[] args)</code> — the entry point; Java always starts here</li>
            <li><code>System.out.println()</code> — prints text with a newline</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Java is <strong>case-sensitive</strong> and requires semicolons <code>;</code> at the end of every statement. <code>system.out.println</code> (lowercase s) will fail. Precision matters in Java!</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // Your first Java program!
                System.out.println("Hello, World!");
                System.out.println("Java is powerful!");

                // Arithmetic directly in println
                System.out.println(10 + 5);
                System.out.println(100 / 4);
                System.out.println(2 * 8);

                // Print without newline, then add one
                System.out.print("Java ");
                System.out.print("is ");
                System.out.println("awesome!");

                // String concatenation with +
                String language = "Java";
                System.out.println("Welcome to " + language + "!");
            }
        }
      JAVA
    },

    2 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java is a <strong>statically typed</strong> language — every variable must be declared with its type before use. This makes programs more predictable and helps catch errors at compile time rather than at runtime.</p>
        </div>
        <div class="lc-section">
          <h2>Primitive Data Types</h2>
          <table class="lc-table">
            <thead><tr><th>Type</th><th>Size</th><th>Example</th><th>Range</th></tr></thead>
            <tbody>
              <tr><td><code>int</code></td><td>32-bit</td><td><code>int age = 21;</code></td><td>-2B to +2B</td></tr>
              <tr><td><code>long</code></td><td>64-bit</td><td><code>long pop = 8000000000L;</code></td><td>Very large</td></tr>
              <tr><td><code>double</code></td><td>64-bit</td><td><code>double pi = 3.14159;</code></td><td>Decimal numbers</td></tr>
              <tr><td><code>float</code></td><td>32-bit</td><td><code>float x = 3.14f;</code></td><td>Less precise decimal</td></tr>
              <tr><td><code>boolean</code></td><td>1-bit</td><td><code>boolean on = true;</code></td><td>true / false only</td></tr>
              <tr><td><code>char</code></td><td>16-bit</td><td><code>char grade = 'A';</code></td><td>Single character</td></tr>
              <tr><td><code>byte</code></td><td>8-bit</td><td><code>byte b = 100;</code></td><td>-128 to 127</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>String — A Reference Type</h2>
          <div class="lc-code-block"><pre><code>String name = "Alice";   // Not a primitive — it's a class!
String empty = "";
String concat = "Hello" + " " + name;  // "Hello Alice"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Type Casting</h2>
          <div class="lc-code-block"><pre><code>int x = (int) 3.99;   // 3  (explicit cast — truncates)
double d = 5;          // 5.0 (implicit widening)
String s = String.valueOf(42);  // "42"
int n = Integer.parseInt("42"); // 42</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>int</code> for whole numbers and <code>double</code> for decimals. Avoid <code>float</code> unless memory is critical — <code>double</code> is more precise and the default for decimal literals in Java.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // Primitive types
                int age = 21;
                double gpa = 3.95;
                boolean isStudent = true;
                char grade = 'A';

                // String (reference type)
                String name = "Adarsh";
                String language = "Java";

                // Output
                System.out.println("Name: " + name);
                System.out.println("Age: " + age);
                System.out.println("GPA: " + gpa);
                System.out.println("Student: " + isStudent);
                System.out.println("Grade: " + grade);

                // Arithmetic
                int score = 85;
                double average = 92.5;
                System.out.println("Score: " + score);
                System.out.println("Average: " + average);

                // Type casting
                int truncated = (int) 9.99;
                System.out.println("Truncated: " + truncated);

                double fromInt = 7;
                System.out.println("As double: " + fromInt);
            }
        }
      JAVA
    },

    3 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>In Java, <code>String</code> is a class (not a primitive) and comes with a rich set of built-in methods. Strings in Java are <strong>immutable</strong> — once created, they cannot be changed; operations always return new String objects.</p>
        </div>
        <div class="lc-section">
          <h2>Essential String Methods</h2>
          <table class="lc-table">
            <thead><tr><th>Method</th><th>Example</th><th>Result</th></tr></thead>
            <tbody>
              <tr><td><code>.length()</code></td><td><code>"hello".length()</code></td><td>5</td></tr>
              <tr><td><code>.toUpperCase()</code></td><td><code>"hello".toUpperCase()</code></td><td>"HELLO"</td></tr>
              <tr><td><code>.toLowerCase()</code></td><td><code>"HELLO".toLowerCase()</code></td><td>"hello"</td></tr>
              <tr><td><code>.trim()</code></td><td><code>"  hi  ".trim()</code></td><td>"hi"</td></tr>
              <tr><td><code>.contains(s)</code></td><td><code>"hello".contains("ell")</code></td><td>true</td></tr>
              <tr><td><code>.replace(a, b)</code></td><td><code>"cat".replace("c","b")</code></td><td>"bat"</td></tr>
              <tr><td><code>.substring(start, end)</code></td><td><code>"hello".substring(1,3)</code></td><td>"el"</td></tr>
              <tr><td><code>.charAt(i)</code></td><td><code>"hello".charAt(0)</code></td><td>'h'</td></tr>
              <tr><td><code>.startsWith(s)</code></td><td><code>"hello".startsWith("he")</code></td><td>true</td></tr>
              <tr><td><code>.split(regex)</code></td><td><code>"a,b,c".split(",")</code></td><td>["a","b","c"]</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>String.format() — Formatting Output</h2>
          <div class="lc-code-block"><pre><code>String name  = "Alice";
double score = 92.567;
int rank     = 1;

String msg = String.format("%-10s scored %.2f (Rank #%d)", name, score, rank);
System.out.println(msg);
// "Alice      scored 92.57 (Rank #1)"</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use <code>equals()</code> to compare String content, NOT <code>==</code>. The <code>==</code> operator checks if two variables point to the <em>same object in memory</em>, not whether they contain the same text. <code>"hello" == "hello"</code> may be <code>false</code>!</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                String message = "  Hello, Java World!  ";
                String name    = "ada lovelace";

                // Basic methods
                System.out.println(message.trim());
                System.out.println(message.length());
                System.out.println(name.toUpperCase());
                System.out.println(name.toLowerCase());

                // Useful checks
                String email = "adarsh@example.com";
                System.out.println(email.contains("@"));
                System.out.println(email.startsWith("adarsh"));
                System.out.println(email.endsWith(".com"));

                // Manipulation
                String sentence = "the quick brown fox";
                System.out.println(sentence.replace("fox", "cat"));
                System.out.println(sentence.substring(4, 9));

                // charAt and length
                String word = "Java";
                System.out.println("First char: " + word.charAt(0));
                System.out.println("Length: " + word.length());

                // Concatenation
                String firstName = "James";
                String lastName  = "Gosling";
                String fullName  = firstName + " " + lastName;
                System.out.println("Creator: " + fullName);

                // String comparison (use equals!)
                String a = "hello";
                String b = "hello";
                System.out.println(a.equals(b));
            }
        }
      JAVA
    },

    4 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java provides a rich set of numeric operations through built-in arithmetic operators and the <code>Math</code> class. Understanding integer vs floating-point division is especially important — it is a common source of bugs for beginners.</p>
        </div>
        <div class="lc-section">
          <h2>Arithmetic Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Example</th><th>Result</th><th>Note</th></tr></thead>
            <tbody>
              <tr><td><code>+</code></td><td><code>7 + 3</code></td><td>10</td><td></td></tr>
              <tr><td><code>-</code></td><td><code>7 - 3</code></td><td>4</td><td></td></tr>
              <tr><td><code>*</code></td><td><code>7 * 3</code></td><td>21</td><td></td></tr>
              <tr><td><code>/</code></td><td><code>7 / 2</code></td><td>3</td><td>Integer division!</td></tr>
              <tr><td><code>/</code></td><td><code>7.0 / 2</code></td><td>3.5</td><td>Use double for decimals</td></tr>
              <tr><td><code>%</code></td><td><code>7 % 3</code></td><td>1</td><td>Remainder</td></tr>
              <tr><td><code>++</code></td><td><code>i++</code></td><td>i = i + 1</td><td>Increment</td></tr>
              <tr><td><code>--</code></td><td><code>i--</code></td><td>i = i - 1</td><td>Decrement</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>The Math Class</h2>
          <div class="lc-code-block"><pre><code>Math.abs(-7)         // 7
Math.sqrt(25)        // 5.0
Math.pow(2, 8)       // 256.0
Math.max(10, 20)     // 20
Math.min(10, 20)     // 10
Math.round(3.7)      // 4
Math.floor(3.9)      // 3.0
Math.ceil(3.1)       // 4.0
Math.PI              // 3.14159…</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><strong>Integer division trap:</strong> <code>7 / 2</code> gives <code>3</code> (not 3.5) because both operands are <code>int</code>. To get <code>3.5</code>, use <code>7.0 / 2</code> or <code>(double) 7 / 2</code>. Always check your types when dividing!</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // Basic arithmetic
                System.out.println("7 + 3 = " + (7 + 3));
                System.out.println("7 - 3 = " + (7 - 3));
                System.out.println("7 * 3 = " + (7 * 3));
                System.out.println("7 / 2 = " + (7 / 2));       // Integer!
                System.out.println("7.0/2 = " + (7.0 / 2));     // Double!
                System.out.println("7 % 3 = " + (7 % 3));

                // Math class
                System.out.println("sqrt(144) = " + Math.sqrt(144));
                System.out.println("pow(2,10) = " + (int)Math.pow(2, 10));
                System.out.println("abs(-42)  = " + Math.abs(-42));
                System.out.println("max(8,13) = " + Math.max(8, 13));
                System.out.println("round(3.7)= " + Math.round(3.7));
                System.out.println("PI        = " + Math.PI);

                // Practical: compound interest
                double principal = 10000;
                double rate      = 0.08;
                int    years     = 5;
                double total     = principal * Math.pow(1 + rate, years);
                System.out.println("Investment after " + years + " years: " + Math.round(total));

                // Even / Odd check
                for (int n = 1; n <= 5; n++) {
                    String type = (n % 2 == 0) ? "even" : "odd";
                    System.out.println(n + " is " + type);
                }
            }
        }
      JAVA
    },

    5 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Arrays in Java store <strong>fixed-size collections of elements of the same type</strong>. Unlike Python lists, Java arrays cannot grow or shrink after creation. For dynamic sizing, use <code>ArrayList</code> (covered later).</p>
        </div>
        <div class="lc-section">
          <h2>Declaring and Initialising Arrays</h2>
          <div class="lc-code-block"><pre><code>// Declaration and allocation
int[] scores = new int[5];       // 5 zeros by default

// Declaration with values
int[] marks = {88, 95, 72, 61, 99};

// Access elements
System.out.println(marks[0]);    // 88  (first)
System.out.println(marks[4]);    // 99  (last)
System.out.println(marks.length); // 5</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Iterating Arrays</h2>
          <div class="lc-code-block"><pre><code>// Classic for loop
for (int i = 0; i &lt; marks.length; i++) {
    System.out.println("Mark " + i + ": " + marks[i]);
}

// Enhanced for-each (cleaner)
for (int mark : marks) {
    System.out.println(mark);
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>String Arrays</h2>
          <div class="lc-code-block"><pre><code>String[] fruits = {"Apple", "Banana", "Cherry"};

for (String fruit : fruits) {
    System.out.println("I love " + fruit + "!");
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Java arrays are <strong>zero-indexed</strong>. The first element is at index <code>[0]</code> and the last is at <code>[array.length - 1]</code>. Accessing an invalid index throws <code>ArrayIndexOutOfBoundsException</code> — the most common beginner error!</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // Integer array
                int[] scores = {88, 95, 72, 61, 99, 84};

                System.out.println("Length: " + scores.length);
                System.out.println("First: " + scores[0]);
                System.out.println("Last: " + scores[scores.length - 1]);

                // Classic for loop with index
                System.out.println("--- All Scores ---");
                for (int i = 0; i < scores.length; i++) {
                    System.out.println("Score[" + i + "] = " + scores[i]);
                }

                // Enhanced for-each loop
                System.out.println("--- Enhanced For ---");
                int total = 0;
                for (int score : scores) {
                    total += score;
                }
                System.out.println("Total: " + total);
                System.out.println("Average: " + (total / scores.length));

                // String array
                System.out.println("--- Languages ---");
                String[] languages = {"Java", "Python", "Ruby", "JavaScript"};
                for (int i = 0; i < languages.length; i++) {
                    System.out.println((i + 1) + ". " + languages[i]);
                }
            }
        }
      JAVA
    },

    6 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java uses standard <code>if/else if/else</code> for decisions and <code>switch</code> for matching a value against multiple cases. Conditions must evaluate to a <strong>boolean</strong> — unlike Python, Java does not treat 0 or empty strings as false.</p>
        </div>
        <div class="lc-section">
          <h2>if / else if / else</h2>
          <div class="lc-code-block"><pre><code>int score = 85;

if (score >= 90) {
    System.out.println("Grade: A");
} else if (score >= 80) {
    System.out.println("Grade: B");
} else if (score >= 70) {
    System.out.println("Grade: C");
} else {
    System.out.println("Grade: F");
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Ternary Operator</h2>
          <div class="lc-code-block"><pre><code>// condition ? valueIfTrue : valueIfFalse
int age = 20;
String status = (age >= 18) ? "Adult" : "Minor";
System.out.println(status);  // "Adult"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>switch Statement</h2>
          <div class="lc-code-block"><pre><code>String day = "Monday";

switch (day) {
    case "Monday":
        System.out.println("Start of week");
        break;
    case "Friday":
        System.out.println("Almost weekend!");
        break;
    default:
        System.out.println("Regular day");
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Comparison and Logical Operators</h2>
          <table class="lc-table">
            <thead><tr><th>Operator</th><th>Meaning</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>==</code></td><td>Equal (primitives)</td><td><code>x == 5</code></td></tr>
              <tr><td><code>!=</code></td><td>Not equal</td><td><code>x != 0</code></td></tr>
              <tr><td><code>&amp;&amp;</code></td><td>AND</td><td><code>x > 0 &amp;&amp; x &lt; 10</code></td></tr>
              <tr><td><code>||</code></td><td>OR</td><td><code>x == 1 || x == 2</code></td></tr>
              <tr><td><code>!</code></td><td>NOT</td><td><code>!isActive</code></td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Always add <code>break</code> in switch cases! Without it, Java "falls through" to the next case — one of the most notorious bugs in Java programming history. Java 14+ offers a cleaner <code>switch</code> expression syntax.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // Grade calculator
                int[] testScores = {95, 83, 71, 62, 45};

                for (int score : testScores) {
                    String grade;
                    if (score >= 90) {
                        grade = "A - Excellent!";
                    } else if (score >= 80) {
                        grade = "B - Good";
                    } else if (score >= 70) {
                        grade = "C - Average";
                    } else if (score >= 60) {
                        grade = "D - Below Average";
                    } else {
                        grade = "F - Failed";
                    }
                    System.out.println("Score " + score + ": " + grade);
                }

                // Ternary operator
                int temperature = 35;
                String weather = (temperature > 30) ? "Hot day!" : "Nice day!";
                System.out.println(weather);

                // Logical operators
                int age = 22;
                boolean hasID = true;
                if (age >= 18 && hasID) {
                    System.out.println("Entry allowed!");
                } else {
                    System.out.println("Cannot enter");
                }

                // switch
                String day = "Friday";
                switch (day) {
                    case "Monday":    System.out.println("Start of week"); break;
                    case "Friday":    System.out.println("Almost weekend!"); break;
                    case "Saturday":
                    case "Sunday":    System.out.println("Weekend!"); break;
                    default:          System.out.println("Regular day");
                }
            }
        }
      JAVA
    },

    7 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java provides four loop types: <code>for</code>, <code>while</code>, <code>do-while</code>, and the enhanced <code>for-each</code>. Each suits different situations — the classic <code>for</code> is most common when you need an index.</p>
        </div>
        <div class="lc-section">
          <h2>The Classic for Loop</h2>
          <div class="lc-code-block"><pre><code>// for (init; condition; update)
for (int i = 0; i &lt; 5; i++) {
    System.out.println("Count: " + i);
}
// Prints: 0, 1, 2, 3, 4</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Loop Types Comparison</h2>
          <table class="lc-table">
            <thead><tr><th>Loop</th><th>Best For</th></tr></thead>
            <tbody>
              <tr><td><code>for</code></td><td>Known number of iterations; need index</td></tr>
              <tr><td><code>while</code></td><td>Unknown iterations; test condition first</td></tr>
              <tr><td><code>do-while</code></td><td>At least one iteration guaranteed</td></tr>
              <tr><td><code>for-each</code></td><td>✅ Iterating arrays/collections cleanly</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Enhanced For-Each (Java 5+)</h2>
          <div class="lc-code-block"><pre><code>String[] fruits = {"Apple", "Banana", "Cherry"};

for (String fruit : fruits) {
    System.out.println("I love " + fruit);
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>break and continue</h2>
          <div class="lc-code-block"><pre><code>for (int i = 0; i &lt; 10; i++) {
    if (i == 3) continue;   // Skip 3
    if (i == 7) break;      // Stop at 7
    System.out.println(i);
}
// Prints: 0, 1, 2, 4, 5, 6</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use the <strong>enhanced for-each</strong> loop whenever you don't need the index. It is safer (no off-by-one errors), cleaner, and works with all Java collections — not just arrays.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {
            public static void main(String[] args) {
                // Classic for loop
                System.out.println("--- Counting ---");
                for (int i = 1; i <= 5; i++) {
                    System.out.println("Count: " + i);
                }

                // Multiplication table
                System.out.println("--- 3× Table ---");
                for (int i = 1; i <= 5; i++) {
                    System.out.println("3 x " + i + " = " + (3 * i));
                }

                // Enhanced for-each
                System.out.println("--- Fruits ---");
                String[] fruits = {"Apple", "Banana", "Cherry", "Mango"};
                for (String fruit : fruits) {
                    System.out.println("I love " + fruit + "!");
                }

                // while loop
                System.out.println("--- While ---");
                int n = 1;
                while (n <= 4) {
                    System.out.println(n + " squared = " + (n * n));
                    n++;
                }

                // Accumulator pattern
                int[] scores = {88, 95, 72, 61, 99};
                int total = 0;
                for (int score : scores) {
                    total += score;
                }
                System.out.println("Sum: " + total);
                System.out.println("Average: " + (total / scores.length));
            }
        }
      JAVA
    },

    8 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Methods in Java are <strong>named blocks of code</strong> that perform a task. Unlike Python, Java requires you to declare the return type and parameter types explicitly. The <code>static</code> keyword means the method belongs to the class, not an instance.</p>
        </div>
        <div class="lc-section">
          <h2>Method Syntax</h2>
          <div class="lc-code-block"><pre><code>// modifier returnType methodName(paramType paramName) { body }

public static int add(int a, int b) {
    return a + b;
}

public static void greet(String name) {
    System.out.println("Hello, " + name + "!");
}

// Calling methods
int result = add(5, 3);          // 8
greet("Alice");                   // "Hello, Alice!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Return Types</h2>
          <table class="lc-table">
            <thead><tr><th>Return Type</th><th>Returns</th><th>Example</th></tr></thead>
            <tbody>
              <tr><td><code>int</code></td><td>Integer value</td><td><code>return 42;</code></td></tr>
              <tr><td><code>double</code></td><td>Decimal value</td><td><code>return 3.14;</code></td></tr>
              <tr><td><code>String</code></td><td>Text</td><td><code>return "hello";</code></td></tr>
              <tr><td><code>boolean</code></td><td>true/false</td><td><code>return x > 0;</code></td></tr>
              <tr><td><code>void</code></td><td>Nothing</td><td>(no return statement)</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Method Overloading</h2>
          <div class="lc-code-block"><pre><code>// Same name, different parameters
public static int add(int a, int b) { return a + b; }
public static double add(double a, double b) { return a + b; }
public static String add(String a, String b) { return a + b; }</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Every method must declare its return type. If it returns nothing, use <code>void</code>. Java is strict — if a method declares <code>int</code> as return type and doesn't return an <code>int</code>, the code won't compile.</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {

            // Method returning int
            public static int square(int n) {
                return n * n;
            }

            // Method returning double
            public static double celsiusToFahrenheit(double c) {
                return (c * 9.0 / 5) + 32;
            }

            // Method returning String
            public static String greet(String name, String greeting) {
                return greeting + ", " + name + "!";
            }

            // Method returning boolean
            public static boolean isPassing(int score) {
                return score >= 70;
            }

            // void method (no return)
            public static void printSeparator(int count) {
                for (int i = 0; i < count; i++) {
                    System.out.print("-");
                }
                System.out.println();
            }

            public static void main(String[] args) {
                System.out.println("5² = " + square(5));
                System.out.println("12² = " + square(12));

                System.out.println("0°C = " + celsiusToFahrenheit(0) + "°F");
                System.out.println("100°C = " + celsiusToFahrenheit(100) + "°F");

                System.out.println(greet("Alice", "Hello"));
                System.out.println(greet("Bob", "Hi"));

                int[] scores = {85, 55, 92, 68, 40};
                for (int s : scores) {
                    System.out.println("Score " + s + ": " + (isPassing(s) ? "PASS" : "FAIL"));
                }

                printSeparator(20);
            }
        }
      JAVA
    },

    9 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java is a <strong>pure object-oriented language</strong>. Classes are blueprints for creating objects. Each object has <em>fields</em> (data) and <em>methods</em> (behaviour). Understanding classes is the most important skill in Java.</p>
        </div>
        <div class="lc-section">
          <h2>Defining a Class</h2>
          <div class="lc-code-block"><pre><code>public class Dog {
    // Fields (instance variables)
    String name;
    String breed;
    int    age;

    // Method
    public String bark() {
        return name + " says: Woof!";
    }

    public String describe() {
        return name + " is a " + age + "-year-old " + breed;
    }
}

// Creating objects
Dog rex = new Dog();
rex.name  = "Rex";
rex.breed = "German Shepherd";
rex.age   = 3;

System.out.println(rex.bark());
System.out.println(rex.describe());</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Key OOP Terms</h2>
          <table class="lc-table">
            <thead><tr><th>Term</th><th>Meaning</th></tr></thead>
            <tbody>
              <tr><td><strong>Class</strong></td><td>Blueprint/template (e.g., <code>Dog</code>)</td></tr>
              <tr><td><strong>Object</strong></td><td>A specific instance (<code>new Dog()</code>)</td></tr>
              <tr><td><strong>Field</strong></td><td>Data stored in an object (<code>name</code>, <code>age</code>)</td></tr>
              <tr><td><strong>Method</strong></td><td>Behaviour of an object (<code>bark()</code>)</td></tr>
              <tr><td><strong>new</strong></td><td>Keyword to create an object instance</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>In Java, classes and their source files <strong>must share the same name</strong>. If your class is <code>BankAccount</code>, the file must be <code>BankAccount.java</code>. Violating this causes a compile error.</p></div>
      HTML
      starter_code: <<~'JAVA'
        class Car {
            String make;
            String model;
            int    year;
            double price;

            public String getInfo() {
                return year + " " + make + " " + model + " - $" + price;
            }

            public boolean isAffordable(double budget) {
                return price <= budget;
            }
        }

        public class Main {
            public static void main(String[] args) {
                // Create objects
                Car car1 = new Car();
                car1.make  = "Toyota";
                car1.model = "Camry";
                car1.year  = 2023;
                car1.price = 25000;

                Car car2 = new Car();
                car2.make  = "BMW";
                car2.model = "M3";
                car2.year  = 2024;
                car2.price = 85000;

                // Use methods
                System.out.println(car1.getInfo());
                System.out.println(car2.getInfo());

                double budget = 30000;
                System.out.println("Car1 affordable: " + car1.isAffordable(budget));
                System.out.println("Car2 affordable: " + car2.isAffordable(budget));

                // Array of objects
                Car[] fleet = {car1, car2};
                System.out.println("--- Fleet ---");
                for (Car car : fleet) {
                    System.out.println(car.make + " " + car.model + " ($" + car.price + ")");
                }
            }
        }
      JAVA
    },

    10 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>A <strong>constructor</strong> is a special method that runs automatically when an object is created with <code>new</code>. It initialises the object's fields. The <code>this</code> keyword refers to the current object instance.</p>
        </div>
        <div class="lc-section">
          <h2>Constructor Syntax</h2>
          <div class="lc-code-block"><pre><code>public class Person {
    String name;
    int    age;

    // Constructor — same name as class, no return type
    public Person(String name, int age) {
        this.name = name;   // 'this.name' = field, 'name' = parameter
        this.age  = age;
    }

    public String introduce() {
        return "Hi, I'm " + this.name + " and I'm " + this.age;
    }
}

// Now you must provide arguments
Person alice = new Person("Alice", 28);
System.out.println(alice.introduce());</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Constructor Overloading</h2>
          <div class="lc-code-block"><pre><code>public class Person {
    String name;
    int    age;

    // Default constructor
    public Person() {
        this.name = "Unknown";
        this.age  = 0;
    }

    // Parameterised constructor
    public Person(String name, int age) {
        this.name = name;
        this.age  = age;
    }
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>this</code> is essential when a constructor parameter has the same name as a field. Without <code>this</code>, Java thinks you mean the parameter, not the field — <code>name = name</code> just assigns the parameter to itself and does nothing!</p></div>
      HTML
      starter_code: <<~'JAVA'
        class Student {
            String name;
            int    rollNo;
            double gpa;

            // Constructor
            public Student(String name, int rollNo, double gpa) {
                this.name   = name;
                this.rollNo = rollNo;
                this.gpa    = gpa;
            }

            // Default constructor
            public Student(String name) {
                this.name   = name;
                this.rollNo = 0;
                this.gpa    = 0.0;
            }

            public void printInfo() {
                System.out.println("Roll #" + rollNo + " | " + name + " | GPA: " + gpa);
            }

            public String getGrade() {
                if (gpa >= 3.7) return "A";
                if (gpa >= 3.3) return "B+";
                if (gpa >= 3.0) return "B";
                return "C";
            }
        }

        public class Main {
            public static void main(String[] args) {
                // Create with constructor
                Student s1 = new Student("Alice", 101, 3.9);
                Student s2 = new Student("Bob",   102, 3.4);
                Student s3 = new Student("Carol", 103, 2.8);

                // Array of Students
                Student[] students = {s1, s2, s3};

                System.out.println("=== Student Report ===");
                for (Student s : students) {
                    s.printInfo();
                    System.out.println("  Grade: " + s.getGrade());
                }
            }
        }
      JAVA
    },

    11 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Encapsulation</strong> is the practice of keeping fields <code>private</code> and providing <code>public</code> getter and setter methods to access them. This protects data integrity and is one of the four pillars of OOP.</p>
        </div>
        <div class="lc-section">
          <h2>Access Modifiers</h2>
          <table class="lc-table">
            <thead><tr><th>Modifier</th><th>Accessible From</th></tr></thead>
            <tbody>
              <tr><td><code>private</code></td><td>Same class only</td></tr>
              <tr><td><code>default</code></td><td>Same package</td></tr>
              <tr><td><code>protected</code></td><td>Same package + subclasses</td></tr>
              <tr><td><code>public</code></td><td>Everywhere</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Getters and Setters</h2>
          <div class="lc-code-block"><pre><code>public class BankAccount {
    private double balance;   // private field

    // Getter — read the value
    public double getBalance() {
        return balance;
    }

    // Setter — validate before writing
    public void deposit(double amount) {
        if (amount > 0) {
            balance += amount;
        }
    }

    public boolean withdraw(double amount) {
        if (amount > 0 &amp;&amp; amount &lt;= balance) {
            balance -= amount;
            return true;
        }
        return false;
    }
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Make fields <code>private</code> by default — it is the most important OOP habit. Setters allow you to add <strong>validation</strong> (e.g., no negative ages, no overdrafts) which direct field access cannot provide.</p></div>
      HTML
      starter_code: <<~'JAVA'
        class BankAccount {
            private String owner;
            private double balance;

            public BankAccount(String owner, double initialBalance) {
                this.owner   = owner;
                this.balance = initialBalance;
            }

            public String getOwner()   { return owner; }
            public double getBalance() { return balance; }

            public void deposit(double amount) {
                if (amount > 0) {
                    balance += amount;
                    System.out.println("Deposited $" + amount + " | Balance: $" + balance);
                } else {
                    System.out.println("Invalid deposit amount!");
                }
            }

            public void withdraw(double amount) {
                if (amount <= 0) {
                    System.out.println("Invalid amount!");
                } else if (amount > balance) {
                    System.out.println("Insufficient funds!");
                } else {
                    balance -= amount;
                    System.out.println("Withdrew $" + amount + " | Balance: $" + balance);
                }
            }

            public void printStatement() {
                System.out.println("=== " + owner + "'s Account ===");
                System.out.println("Balance: $" + balance);
            }
        }

        public class Main {
            public static void main(String[] args) {
                BankAccount alice = new BankAccount("Alice", 1000.0);
                BankAccount bob   = new BankAccount("Bob",   500.0);

                alice.deposit(500);
                alice.withdraw(200);
                alice.withdraw(5000);

                bob.deposit(300);

                alice.printStatement();
                bob.printStatement();
            }
        }
      JAVA
    },

    12 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Inheritance</strong> lets a child class inherit fields and methods from a parent class using the <code>extends</code> keyword. This promotes code reuse and models "is-a" relationships: a <code>Dog</code> IS-A <code>Animal</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Inheritance Syntax</h2>
          <div class="lc-code-block"><pre><code>class Animal {
    String name;

    public Animal(String name) {
        this.name = name;
    }

    public String speak() {
        return "...";
    }
}

class Dog extends Animal {    // Dog inherits Animal
    public Dog(String name) {
        super(name);           // Call parent constructor
    }

    @Override
    public String speak() {   // Override parent method
        return name + ": Woof!";
    }
}

Dog rex = new Dog("Rex");
System.out.println(rex.speak());  // "Rex: Woof!"</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Key Inheritance Keywords</h2>
          <table class="lc-table">
            <thead><tr><th>Keyword</th><th>Purpose</th></tr></thead>
            <tbody>
              <tr><td><code>extends</code></td><td>Inherit from a parent class</td></tr>
              <tr><td><code>super()</code></td><td>Call parent class constructor</td></tr>
              <tr><td><code>super.method()</code></td><td>Call parent class method</td></tr>
              <tr><td><code>@Override</code></td><td>Annotation — marks method as overriding parent</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Java supports <strong>single inheritance only</strong> — a class can extend only one parent. For sharing behaviour across unrelated classes, use <strong>interfaces</strong> (covered next). Java uses interfaces where other languages use multiple inheritance.</p></div>
      HTML
      starter_code: <<~'JAVA'
        class Shape {
            String color;

            public Shape(String color) {
                this.color = color;
            }

            public double area() {
                return 0;
            }

            public String describe() {
                return color + " " + getClass().getSimpleName() + " — area: " + area();
            }
        }

        class Circle extends Shape {
            double radius;

            public Circle(String color, double radius) {
                super(color);
                this.radius = radius;
            }

            @Override
            public double area() {
                return Math.PI * radius * radius;
            }
        }

        class Rectangle extends Shape {
            double width, height;

            public Rectangle(String color, double width, double height) {
                super(color);
                this.width  = width;
                this.height = height;
            }

            @Override
            public double area() {
                return width * height;
            }
        }

        public class Main {
            public static void main(String[] args) {
                Shape[] shapes = {
                    new Circle("Red", 5),
                    new Rectangle("Blue", 4, 6),
                    new Circle("Green", 3),
                    new Rectangle("Yellow", 8, 3)
                };

                double totalArea = 0;
                for (Shape s : shapes) {
                    System.out.printf("%s (area: %.2f)%n", s.describe(), s.area());
                    totalArea += s.area();
                }
                System.out.printf("Total area: %.2f%n", totalArea);
            }
        }
      JAVA
    },

    13 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Polymorphism</strong> means "many forms." In Java, a parent class reference can hold any child class object, and the correct method is called at runtime. This is the power behind frameworks, plugins, and extensible systems.</p>
        </div>
        <div class="lc-section">
          <h2>Polymorphism in Action</h2>
          <div class="lc-code-block"><pre><code>Animal[] animals = {
    new Dog("Rex"),
    new Cat("Luna"),
    new Dog("Max")
};

for (Animal a : animals) {
    System.out.println(a.speak()); // Calls Dog.speak() or Cat.speak()
}</code></pre></div>
          <p>Even though the array holds <code>Animal</code> references, Java calls the <em>actual object's</em> overridden method at runtime. This is called <strong>dynamic dispatch</strong>.</p>
        </div>
        <div class="lc-section">
          <h2>instanceof Operator</h2>
          <div class="lc-code-block"><pre><code>Animal a = new Dog("Rex");

if (a instanceof Dog) {
    Dog d = (Dog) a;    // Safe downcast
    d.fetch();           // Dog-specific method
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Method Overloading vs Overriding</h2>
          <table class="lc-table">
            <thead><tr><th></th><th>Overloading</th><th>Overriding</th></tr></thead>
            <tbody>
              <tr><td>What</td><td>Same name, different params</td><td>Child redefines parent method</td></tr>
              <tr><td>When</td><td>Compile time</td><td>Runtime</td></tr>
              <tr><td>Inheritance</td><td>Not needed</td><td>Required</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Polymorphism is the key to writing <strong>flexible, extensible code</strong>. When you write code that works with a parent type (<code>Animal</code>, <code>Shape</code>), it automatically works with any future subclass you add — without changing existing code.</p></div>
      HTML
      starter_code: <<~'JAVA'
        class Employee {
            String name;
            double baseSalary;

            public Employee(String name, double baseSalary) {
                this.name       = name;
                this.baseSalary = baseSalary;
            }

            public double calculatePay() {
                return baseSalary;
            }

            public String getRole() { return "Employee"; }
        }

        class Manager extends Employee {
            double bonus;

            public Manager(String name, double baseSalary, double bonus) {
                super(name, baseSalary);
                this.bonus = bonus;
            }

            @Override
            public double calculatePay() {
                return baseSalary + bonus;
            }

            @Override
            public String getRole() { return "Manager"; }
        }

        class Contractor extends Employee {
            int    hoursWorked;
            double hourlyRate;

            public Contractor(String name, int hoursWorked, double hourlyRate) {
                super(name, 0);
                this.hoursWorked = hoursWorked;
                this.hourlyRate  = hourlyRate;
            }

            @Override
            public double calculatePay() {
                return hoursWorked * hourlyRate;
            }

            @Override
            public String getRole() { return "Contractor"; }
        }

        public class Main {
            public static void main(String[] args) {
                Employee[] team = {
                    new Employee("Alice", 50000),
                    new Manager("Bob", 80000, 15000),
                    new Contractor("Carol", 160, 125)
                };

                double totalPayroll = 0;
                System.out.println("=== Payroll Report ===");
                for (Employee e : team) {
                    double pay = e.calculatePay();
                    totalPayroll += pay;
                    System.out.println(e.getRole() + " " + e.name + ": $" + pay);
                }
                System.out.println("Total Payroll: $" + totalPayroll);
            }
        }
      JAVA
    },

    14 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>An <strong>abstract class</strong> is a class that cannot be instantiated — it exists only to be extended. Abstract methods declare a signature without implementation, forcing every subclass to provide its own version.</p>
        </div>
        <div class="lc-section">
          <h2>Abstract Class Syntax</h2>
          <div class="lc-code-block"><pre><code>abstract class Vehicle {
    String brand;

    public Vehicle(String brand) {
        this.brand = brand;
    }

    // Abstract method — no body!
    public abstract String fuelType();

    // Concrete method — has body
    public void describe() {
        System.out.println(brand + " runs on " + fuelType());
    }
}

class ElectricCar extends Vehicle {
    public ElectricCar(String brand) {
        super(brand);
    }

    @Override
    public String fuelType() { return "electricity"; }  // Must implement!
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Abstract vs Interface</h2>
          <table class="lc-table">
            <thead><tr><th>Feature</th><th>Abstract Class</th><th>Interface</th></tr></thead>
            <tbody>
              <tr><td>Instantiate?</td><td>❌ No</td><td>❌ No</td></tr>
              <tr><td>Has fields?</td><td>✅ Yes</td><td>Only constants</td></tr>
              <tr><td>Has constructors?</td><td>✅ Yes</td><td>❌ No</td></tr>
              <tr><td>Multiple inheritance?</td><td>❌ One only</td><td>✅ Many</td></tr>
              <tr><td>Use when</td><td>Shared state + code</td><td>Contract / capabilities</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Use an <strong>abstract class</strong> when subclasses share common fields and code. Use an <strong>interface</strong> when you just want to define a contract — what methods a class must have, without sharing implementation.</p></div>
      HTML
      starter_code: <<~'JAVA'
        abstract class Animal {
            private String name;

            public Animal(String name) {
                this.name = name;
            }

            public String getName() { return name; }

            // Abstract: every subclass must implement
            public abstract String speak();
            public abstract String diet();

            // Concrete: shared by all
            public void introduce() {
                System.out.println("I am " + name + ". I eat " + diet() + ". I say: " + speak());
            }
        }

        class Dog extends Animal {
            public Dog(String name) { super(name); }

            @Override public String speak() { return "Woof!"; }
            @Override public String diet()  { return "meat"; }
        }

        class Rabbit extends Animal {
            public Rabbit(String name) { super(name); }

            @Override public String speak() { return "..."; }
            @Override public String diet()  { return "vegetables"; }
        }

        class Parrot extends Animal {
            public Parrot(String name) { super(name); }

            @Override public String speak() { return "Squawk! Pretty bird!"; }
            @Override public String diet()  { return "seeds and fruits"; }
        }

        public class Main {
            public static void main(String[] args) {
                Animal[] animals = {
                    new Dog("Rex"),
                    new Rabbit("Fluffy"),
                    new Parrot("Polly")
                };

                for (Animal a : animals) {
                    a.introduce();
                }
            }
        }
      JAVA
    },

    15 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>An <strong>interface</strong> defines a <em>contract</em> — a set of methods that any implementing class must provide. A class can implement multiple interfaces, giving Java a powerful form of multiple inheritance.</p>
        </div>
        <div class="lc-section">
          <h2>Interface Syntax</h2>
          <div class="lc-code-block"><pre><code>interface Drawable {
    void draw();                      // public abstract by default
    default String getColor() {       // Default method (Java 8+)
        return "black";
    }
}

interface Resizable {
    void resize(double factor);
}

// A class can implement multiple interfaces
class Circle implements Drawable, Resizable {
    double radius;

    @Override
    public void draw() {
        System.out.println("Drawing a circle of radius " + radius);
    }

    @Override
    public void resize(double factor) {
        radius *= factor;
    }
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Built-in Interfaces</h2>
          <table class="lc-table">
            <thead><tr><th>Interface</th><th>Method</th><th>Use Case</th></tr></thead>
            <tbody>
              <tr><td><code>Comparable&lt;T&gt;</code></td><td><code>compareTo(T)</code></td><td>Natural ordering</td></tr>
              <tr><td><code>Runnable</code></td><td><code>run()</code></td><td>Thread tasks</td></tr>
              <tr><td><code>Iterable&lt;T&gt;</code></td><td><code>iterator()</code></td><td>for-each support</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Think of interfaces as <strong>capabilities</strong> — a class can be <code>Printable</code> AND <code>Serializable</code> AND <code>Comparable</code>. This is more flexible than single inheritance and models real-world objects that can do many things.</p></div>
      HTML
      starter_code: <<~'JAVA'
        interface Printable {
            void print();
        }

        interface Saveable {
            String save();
        }

        class Document implements Printable, Saveable {
            private String title;
            private String content;

            public Document(String title, String content) {
                this.title   = title;
                this.content = content;
            }

            @Override
            public void print() {
                System.out.println("=== " + title + " ===");
                System.out.println(content);
            }

            @Override
            public String save() {
                return "Saved: " + title + " (" + content.length() + " chars)";
            }
        }

        class Report extends Document {
            private String author;

            public Report(String title, String content, String author) {
                super(title, content);
                this.author = author;
            }

            @Override
            public void print() {
                super.print();
                System.out.println("Author: " + author);
            }
        }

        public class Main {
            public static void main(String[] args) {
                Document doc = new Document("README", "This is the AI Academy platform.");
                Report   rpt = new Report("Q1 Report", "Revenue up 25%.", "Alice");

                doc.print();
                System.out.println(doc.save());

                System.out.println();

                rpt.print();
                System.out.println(rpt.save());

                // Polymorphism through interface
                Printable[] printables = {doc, rpt};
                System.out.println("--- Print All ---");
                for (Printable p : printables) {
                    p.print();
                    System.out.println();
                }
            }
        }
      JAVA
    },

    16 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java uses <code>try/catch/finally</code> for exception handling. Exceptions are objects (all extend <code>Throwable</code>) that represent error conditions. Java distinguishes between <em>checked exceptions</em> (must handle) and <em>unchecked exceptions</em> (RuntimeException subclasses).</p>
        </div>
        <div class="lc-section">
          <h2>try / catch / finally</h2>
          <div class="lc-code-block"><pre><code>try {
    int result = 10 / 0;          // Throws ArithmeticException
    System.out.println(result);
} catch (ArithmeticException e) {
    System.out.println("Error: " + e.getMessage());
} catch (Exception e) {
    System.out.println("Unknown error: " + e.getMessage());
} finally {
    System.out.println("Always runs — cleanup here");
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Common Exception Types</h2>
          <table class="lc-table">
            <thead><tr><th>Exception</th><th>Cause</th></tr></thead>
            <tbody>
              <tr><td><code>ArithmeticException</code></td><td>Division by zero</td></tr>
              <tr><td><code>NullPointerException</code></td><td>Calling method on null reference</td></tr>
              <tr><td><code>ArrayIndexOutOfBoundsException</code></td><td>Array index out of range</td></tr>
              <tr><td><code>NumberFormatException</code></td><td>Invalid numeric string</td></tr>
              <tr><td><code>ClassCastException</code></td><td>Invalid type cast</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Custom Exceptions</h2>
          <div class="lc-code-block"><pre><code>class InsufficientFundsException extends Exception {
    public InsufficientFundsException(double amount) {
        super("Need $" + amount + " more");
    }
}

// throw it
throw new InsufficientFundsException(500.0);</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Catch <strong>specific</strong> exceptions before general ones — Java checks catch blocks top-to-bottom. Catching <code>Exception</code> first would catch everything and the specific blocks would be unreachable (compile error!).</p></div>
      HTML
      starter_code: <<~'JAVA'
        public class Main {

            public static int safeDivide(int a, int b) {
                try {
                    return a / b;
                } catch (ArithmeticException e) {
                    System.out.println("Cannot divide " + a + " by " + b + ": " + e.getMessage());
                    return -1;
                }
            }

            public static int parseNumber(String s) {
                try {
                    return Integer.parseInt(s);
                } catch (NumberFormatException e) {
                    System.out.println("'" + s + "' is not a number!");
                    return 0;
                }
            }

            public static String getElement(String[] arr, int index) {
                try {
                    return arr[index];
                } catch (ArrayIndexOutOfBoundsException e) {
                    return "Index " + index + " out of bounds!";
                }
            }

            public static void main(String[] args) {
                // ArithmeticException
                System.out.println(safeDivide(10, 2));
                System.out.println(safeDivide(10, 0));

                // NumberFormatException
                System.out.println(parseNumber("42"));
                System.out.println(parseNumber("hello"));

                // ArrayIndexOutOfBoundsException
                String[] langs = {"Java", "Python", "Ruby"};
                System.out.println(getElement(langs, 1));
                System.out.println(getElement(langs, 10));

                // try-catch-finally
                System.out.println("--- finally ---");
                try {
                    System.out.println("Trying...");
                    int x = 5 / 0;
                } catch (Exception e) {
                    System.out.println("Caught: " + e.getMessage());
                } finally {
                    System.out.println("Cleanup done!");
                }
            }
        }
      JAVA
    },

    17 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java's <strong>Collections Framework</strong> provides dynamic data structures that grow and shrink automatically. <code>ArrayList</code> is the most-used list, and <code>HashMap</code> is the most-used key-value store — both are far more flexible than plain arrays.</p>
        </div>
        <div class="lc-section">
          <h2>ArrayList</h2>
          <div class="lc-code-block"><pre><code>import java.util.ArrayList;

ArrayList&lt;String&gt; names = new ArrayList&lt;&gt;();

names.add("Alice");
names.add("Bob");
names.add("Carol");

System.out.println(names.get(0));    // "Alice"
System.out.println(names.size());    // 3
names.remove("Bob");                  // Remove by value
names.remove(0);                      // Remove by index

for (String name : names) {
    System.out.println(name);
}</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>HashMap</h2>
          <div class="lc-code-block"><pre><code>import java.util.HashMap;

HashMap&lt;String, Integer&gt; scores = new HashMap&lt;&gt;();

scores.put("Alice", 92);
scores.put("Bob",   78);

System.out.println(scores.get("Alice"));      // 92
System.out.println(scores.containsKey("Bob")); // true

for (String name : scores.keySet()) {
    System.out.println(name + ": " + scores.get(name));
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>Prefer <code>ArrayList</code> over arrays for most real-world code — arrays have fixed size which causes <code>ArrayIndexOutOfBoundsException</code>. <code>ArrayList</code> grows automatically and has helpful methods like <code>contains()</code>, <code>sort()</code>, and <code>isEmpty()</code>.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.ArrayList;
        import java.util.HashMap;

        public class Main {
            public static void main(String[] args) {
                // ── ArrayList ──
                ArrayList<String> students = new ArrayList<>();
                students.add("Alice");
                students.add("Bob");
                students.add("Carol");
                students.add("Dave");

                System.out.println("Students: " + students);
                System.out.println("Size: " + students.size());
                System.out.println("First: " + students.get(0));

                students.remove("Bob");
                System.out.println("After remove: " + students);

                System.out.println("Contains Dave: " + students.contains("Dave"));

                System.out.println("--- For-each ---");
                for (String s : students) {
                    System.out.println("  " + s);
                }

                // ── HashMap ──
                System.out.println("--- Grades ---");
                HashMap<String, Integer> grades = new HashMap<>();
                grades.put("Alice", 95);
                grades.put("Carol", 88);
                grades.put("Dave",  72);

                System.out.println("Alice: " + grades.get("Alice"));
                System.out.println("Has Bob: " + grades.containsKey("Bob"));
                System.out.println("Size: " + grades.size());

                System.out.println("--- All Grades ---");
                for (String name : grades.keySet()) {
                    System.out.println(name + " -> " + grades.get(name));
                }
            }
        }
      JAVA
    },

    18 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p><strong>Generics</strong> allow you to write classes and methods that work with any data type while maintaining type safety. Without generics, you'd need separate <code>IntList</code>, <code>StringList</code>, etc. — generics solve this with <code>&lt;T&gt;</code>.</p>
        </div>
        <div class="lc-section">
          <h2>Generic Method</h2>
          <div class="lc-code-block"><pre><code>// &lt;T&gt; declares a type parameter
public static &lt;T&gt; void printArray(T[] arr) {
    for (T item : arr) {
        System.out.print(item + " ");
    }
    System.out.println();
}

// Works with any type!
printArray(new Integer[]{1, 2, 3});
printArray(new String[]{"a", "b", "c"});</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Generic Class</h2>
          <div class="lc-code-block"><pre><code>class Pair&lt;A, B&gt; {
    A first;
    B second;

    public Pair(A first, B second) {
        this.first  = first;
        this.second = second;
    }
}

Pair&lt;String, Integer&gt; p = new Pair&lt;&gt;("Alice", 92);
System.out.println(p.first + ": " + p.second);</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Bounded Type Parameters</h2>
          <div class="lc-code-block"><pre><code>// &lt;T extends Number&gt; — T must be a Number or subclass
public static &lt;T extends Number&gt; double sum(ArrayList&lt;T&gt; list) {
    double total = 0;
    for (T item : list) {
        total += item.doubleValue();
    }
    return total;
}</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p>You see generics everywhere in Java: <code>ArrayList&lt;String&gt;</code>, <code>HashMap&lt;String, Integer&gt;</code>. The <code>&lt;T&gt;</code> in these declarations is a generic type parameter — it tells Java "this collection holds objects of type T."</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.ArrayList;

        public class Main {

            // Generic method
            public static <T> void printAll(T[] arr) {
                for (T item : arr) {
                    System.out.print(item + " ");
                }
                System.out.println();
            }

            // Generic Pair class
            static class Pair<A, B> {
                A first;
                B second;

                public Pair(A first, B second) {
                    this.first  = first;
                    this.second = second;
                }

                @Override
                public String toString() {
                    return "(" + first + ", " + second + ")";
                }
            }

            // Bounded generic — only for numbers
            public static <T extends Number> double average(ArrayList<T> nums) {
                double sum = 0;
                for (T n : nums) sum += n.doubleValue();
                return sum / nums.size();
            }

            public static void main(String[] args) {
                // Generic method with different types
                Integer[] ints    = {1, 2, 3, 4, 5};
                String[]  strings = {"Java", "Python", "Ruby"};

                printAll(ints);
                printAll(strings);

                // Generic Pair
                Pair<String, Integer> p1 = new Pair<>("Alice", 92);
                Pair<String, String>  p2 = new Pair<>("Java", "2024");
                System.out.println(p1);
                System.out.println(p2);

                // Bounded generics
                ArrayList<Integer> scores = new ArrayList<>();
                scores.add(88); scores.add(95); scores.add(72);
                System.out.println("Average: " + average(scores));
            }
        }
      JAVA
    },

    19 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Java's <strong>standard library (Java SE API)</strong> is enormous — thousands of classes covering math, dates, I/O, networking, collections, and more. Here we explore the most commonly used utility classes every Java developer needs.</p>
        </div>
        <div class="lc-section">
          <h2>Key Standard Library Packages</h2>
          <table class="lc-table">
            <thead><tr><th>Package</th><th>Contains</th></tr></thead>
            <tbody>
              <tr><td><code>java.lang</code></td><td>String, Math, Integer, System (auto-imported)</td></tr>
              <tr><td><code>java.util</code></td><td>ArrayList, HashMap, Arrays, Collections, Scanner</td></tr>
              <tr><td><code>java.io</code></td><td>File reading/writing</td></tr>
              <tr><td><code>java.time</code></td><td>LocalDate, LocalDateTime (Java 8+)</td></tr>
              <tr><td><code>java.net</code></td><td>HTTP connections, URLs</td></tr>
            </tbody>
          </table>
        </div>
        <div class="lc-section">
          <h2>Arrays Utility Class</h2>
          <div class="lc-code-block"><pre><code>import java.util.Arrays;

int[] nums = {5, 2, 8, 1, 9};
Arrays.sort(nums);                    // Sort in place
System.out.println(Arrays.toString(nums));  // [1, 2, 5, 8, 9]

int[] copy = Arrays.copyOf(nums, 3);  // [1, 2, 5]
int idx     = Arrays.binarySearch(nums, 5);  // 2</code></pre></div>
        </div>
        <div class="lc-section">
          <h2>Collections Utility Class</h2>
          <div class="lc-code-block"><pre><code>import java.util.Collections;

ArrayList&lt;Integer&gt; list = new ArrayList&lt;&gt;(Arrays.asList(5, 2, 8, 1));
Collections.sort(list);          // [1, 2, 5, 8]
Collections.reverse(list);       // [8, 5, 2, 1]
int max = Collections.max(list); // 8</code></pre></div>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">💡</span><p><code>java.lang</code> is automatically imported in every Java program — that is why you can use <code>String</code>, <code>Math</code>, <code>Integer</code>, and <code>System</code> without any import statement. All other packages require explicit imports.</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.ArrayList;
        import java.util.Arrays;
        import java.util.Collections;
        import java.util.HashMap;

        public class Main {
            public static void main(String[] args) {
                // Math — java.lang (auto-imported)
                System.out.println("=== Math ===");
                System.out.println("PI:      " + Math.PI);
                System.out.println("sqrt(2): " + Math.sqrt(2));
                System.out.println("pow(2,8):" + (int)Math.pow(2, 8));
                System.out.println("abs(-7): " + Math.abs(-7));

                // String utilities
                System.out.println("=== String ===");
                String s = "Java Programming";
                System.out.println("Upper: "    + s.toUpperCase());
                System.out.println("Length: "   + s.length());
                System.out.println("Contains: " + s.contains("Prog"));

                // Arrays utility
                System.out.println("=== Arrays ===");
                int[] nums = {5, 2, 8, 1, 9, 3};
                System.out.println("Before: " + Arrays.toString(nums));
                Arrays.sort(nums);
                System.out.println("Sorted: " + Arrays.toString(nums));

                // Collections utility
                System.out.println("=== Collections ===");
                ArrayList<Integer> list = new ArrayList<>(Arrays.asList(5, 2, 8, 1, 9));
                System.out.println("Before: " + list);
                Collections.sort(list);
                System.out.println("Sorted: " + list);
                System.out.println("Max: "    + Collections.max(list));
                System.out.println("Min: "    + Collections.min(list));
            }
        }
      JAVA
    },

    20 => {
      body: <<~'HTML',
        <div class="lc-intro">
          <p>Congratulations on completing the Java course! You have learned one of the world's most widely deployed programming languages. This final lesson reviews everything and combines it into a real-world mini-project.</p>
        </div>
        <div class="lc-section">
          <h2>Java Fundamentals ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Variables with explicit types: int, double, String, boolean</li>
            <li>Arithmetic, comparison operators, and type casting</li>
            <li>if/else if/else, switch, and the ternary operator</li>
            <li>for, while, do-while, and enhanced for-each loops</li>
            <li>Methods with return types, parameters, and overloading</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Object-Oriented Programming ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Classes, objects, fields, and methods</li>
            <li>Constructors with <code>this</code> keyword</li>
            <li>Encapsulation: private fields + getters/setters</li>
            <li>Inheritance with <code>extends</code> and <code>super</code></li>
            <li>Polymorphism: method overriding and dynamic dispatch</li>
            <li>Abstract classes and interfaces</li>
          </ul>
        </div>
        <div class="lc-section">
          <h2>Advanced Java ✓</h2>
          <ul class="lc-list lc-list-check">
            <li>Exception handling: try/catch/finally/throw</li>
            <li>Collections: ArrayList and HashMap</li>
            <li>Generics: type-safe reusable code</li>
            <li>Java Standard Library: Math, Arrays, Collections</li>
          </ul>
        </div>
        <div class="lc-tip"><span class="lc-tip-icon">🎉</span><p><strong>What's Next?</strong> Build Android apps with Kotlin (compatible with Java). Learn <strong>Spring Boot</strong> — the most popular Java web framework. Explore <strong>Spring Data JPA</strong> for database operations. Java opens doors to enterprise, Android, and big data!</p></div>
      HTML
      starter_code: <<~'JAVA'
        import java.util.ArrayList;
        import java.util.HashMap;

        public class Main {

            // Student class
            static class Student implements Comparable<Student> {
                private String name;
                private ArrayList<Integer> scores;

                public Student(String name) {
                    this.name   = name;
                    this.scores = new ArrayList<>();
                }

                public void addScore(int score) {
                    scores.add(score);
                }

                public double getAverage() {
                    if (scores.isEmpty()) return 0;
                    int sum = 0;
                    for (int s : scores) sum += s;
                    return (double) sum / scores.size();
                }

                public String getGrade() {
                    double avg = getAverage();
                    if (avg >= 90) return "A";
                    if (avg >= 80) return "B";
                    if (avg >= 70) return "C";
                    return "F";
                }

                public String getName() { return name; }

                @Override
                public int compareTo(Student other) {
                    return Double.compare(other.getAverage(), this.getAverage());
                }

                @Override
                public String toString() {
                    return String.format("%-10s | Avg: %5.1f | Grade: %s",
                        name, getAverage(), getGrade());
                }
            }

            public static void main(String[] args) {
                ArrayList<Student> students = new ArrayList<>();

                // Create students
                String[][] data = {
                    {"Alice", "92", "88", "95", "90"},
                    {"Bob",   "65", "72", "68", "70"},
                    {"Carol", "98", "95", "97", "99"},
                    {"Dave",  "55", "60", "58", "62"}
                };

                for (String[] row : data) {
                    Student s = new Student(row[0]);
                    for (int i = 1; i < row.length; i++) {
                        s.addScore(Integer.parseInt(row[i]));
                    }
                    students.add(s);
                }

                // Print report
                System.out.println("=== Final Report ===");
                for (Student s : students) {
                    System.out.println(s);
                }

                // Statistics
                System.out.println("=== Stats ===");
                double classAvg = 0;
                for (Student s : students) classAvg += s.getAverage();
                classAvg /= students.size();
                System.out.printf("Class Average: %.1f%n", classAvg);

                // Grade distribution
                HashMap<String, Integer> dist = new HashMap<>();
                for (Student s : students) {
                    String g = s.getGrade();
                    dist.put(g, dist.getOrDefault(g, 0) + 1);
                }
                System.out.println("Grade Distribution: " + dist);
            }
        }
      JAVA
    }
  }.freeze
end
